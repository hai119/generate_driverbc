; ModuleID = '../bcout/drivers/thermal/intel/int340x_thermal/processor_thermal_device.llvm.bc'
source_filename = "drivers/thermal/intel/int340x_thermal/processor_thermal_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_proc_thermal_init6:\09\09\09"
module asm ".long\09proc_thermal_init - .\09\09\09"
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
%struct.pci_driver = type { %struct.list_head, i8*, %struct.pci_device_id*, i32 (%struct.pci_dev*, %struct.pci_device_id*)*, void (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)*, %struct.pci_error_handlers*, %struct.attribute_group**, %struct.device_driver, %struct.pci_dynids }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.pci_dev = type <{ %struct.list_head, %struct.pci_bus*, %struct.pci_bus*, i8*, %struct.proc_dir_entry*, %struct.pci_slot*, i32, i16, i16, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, [6 x i8], i64*, %struct.pci_driver*, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, [4 x i8], %struct.pcie_link_state*, i8, [3 x i8], i32, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], [4 x i8], %struct.hlist_head, %struct.bin_attribute*, i32, [4 x i8], [17 x %struct.bin_attribute*], [17 x %struct.bin_attribute*], %struct.attribute_group**, %struct.pci_vpd*, %union.anon.65, i16, i8, i8, i16, [2 x i8], i64, i64, i8*, i64 }>
%struct.pci_bus = type { %struct.list_head, %struct.pci_bus*, %struct.list_head, %struct.list_head, %struct.pci_dev*, %struct.list_head, [4 x %struct.resource*], %struct.list_head, %struct.resource, %struct.pci_ops*, %struct.msi_controller*, i8*, %struct.proc_dir_entry*, i8, i8, i8, i8, [48 x i8], i16, i16, %struct.device*, %struct.device, %struct.bin_attribute*, %struct.bin_attribute*, i8 }
%struct.pci_ops = type { i32 (%struct.pci_bus*)*, void (%struct.pci_bus*)*, i8* (%struct.pci_bus*, i32, i32)*, i32 (%struct.pci_bus*, i32, i32, i32, i32*)*, i32 (%struct.pci_bus*, i32, i32, i32, i32)* }
%struct.msi_controller = type opaque
%struct.proc_dir_entry = type opaque
%struct.pci_slot = type { %struct.pci_bus*, %struct.list_head, %struct.hotplug_slot*, i8, %struct.kobject }
%struct.hotplug_slot = type opaque
%struct.pcie_link_state = type opaque
%struct.pci_vpd = type opaque
%union.anon.65 = type { %struct.pci_sriov* }
%struct.pci_sriov = type opaque
%struct.pci_error_handlers = type { i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)* }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.thermal_zone_device_ops = type { i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)*, i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)*, i32 (%struct.thermal_zone_device*, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32)*, i32 (%struct.thermal_zone_device*, i32)*, i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32)*, i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32)*, i32 (%struct.thermal_zone_device*, i32*)*, i32 (%struct.thermal_zone_device*, i32)*, i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32)* }
%struct.thermal_zone_device = type { i32, [20 x i8], %struct.device, %struct.attribute_group, %struct.thermal_attr*, %struct.thermal_attr*, %struct.thermal_attr*, i32, i8*, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.thermal_zone_device_ops*, %struct.thermal_zone_params*, %struct.thermal_governor*, i8*, %struct.list_head, %struct.ida, %struct.mutex, %struct.list_head, %struct.delayed_work, i32 }
%struct.thermal_attr = type opaque
%struct.thermal_zone_params = type { [20 x i8], i8, i32, %struct.thermal_bind_params*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thermal_bind_params = type { %struct.thermal_cooling_device*, i32, i32, i64*, i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)* }
%struct.thermal_governor = type { [20 x i8], i32 (%struct.thermal_zone_device*)*, void (%struct.thermal_zone_device*)*, i32 (%struct.thermal_zone_device*, i32)*, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.thermal_cooling_device = type { i32, [20 x i8], %struct.device, %struct.device_node*, i8*, i8*, %struct.thermal_cooling_device_ops*, i8, %struct.mutex, %struct.list_head, %struct.list_head }
%struct.thermal_cooling_device_ops = type { i32 (%struct.thermal_cooling_device*, i64*)*, i32 (%struct.thermal_cooling_device*, i64*)*, i32 (%struct.thermal_cooling_device*, i64)*, i32 (%struct.thermal_cooling_device*, i32*)*, i32 (%struct.thermal_cooling_device*, i64, i32*)*, i32 (%struct.thermal_cooling_device*, i32, i64*)* }
%struct.acpi_buffer = type { i64, i8* }
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
%struct.rapl_mmio_regs = type { i64, [5 x [6 x i64]], [5 x i32] }
%struct.proc_thermal_device = type { %struct.device*, %struct.acpi_device*, [2 x %struct.power_config], %struct.int34x_thermal_zone*, %struct.intel_soc_dts_sensors*, i8* }
%struct.acpi_device = type { i32, i8*, %struct.fwnode_handle, %struct.acpi_device*, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.acpi_device_status, %struct.acpi_device_flags, %struct.acpi_device_pnp, %struct.acpi_device_power, %struct.acpi_device_wakeup, %struct.acpi_device_perf, %struct.acpi_device_dir, %struct.acpi_device_data, %struct.acpi_scan_handler*, %struct.acpi_hotplug_context*, %struct.acpi_driver*, %struct.acpi_gpio_mapping*, i8*, %struct.device, i32, i32, %struct.list_head, %struct.mutex, void (%struct.acpi_device*)* }
%struct.acpi_device_status = type { i32 }
%struct.acpi_device_flags = type { i32 }
%struct.acpi_device_pnp = type { [8 x i8], %struct.acpi_pnp_type, i64, i8*, %struct.list_head, [40 x i8], [20 x i8], %union.acpi_object* }
%struct.acpi_pnp_type = type { i32 }
%union.acpi_object = type { %struct.anon.71 }
%struct.anon.71 = type { i32, i32, i64, i32 }
%struct.acpi_device_power = type { i32, %struct.acpi_device_power_flags, [5 x %struct.acpi_device_power_state] }
%struct.acpi_device_power_flags = type { i32 }
%struct.acpi_device_power_state = type { %struct.anon.73, i32, i32, %struct.list_head }
%struct.anon.73 = type { i8 }
%struct.acpi_device_wakeup = type { i8*, i64, i64, %struct.list_head, %struct.acpi_device_wakeup_flags, %struct.acpi_device_wakeup_context, %struct.wakeup_source*, i32, i32 }
%struct.acpi_device_wakeup_flags = type { i8 }
%struct.acpi_device_wakeup_context = type { void (%struct.acpi_device_wakeup_context*)*, %struct.device* }
%struct.acpi_device_perf = type { i32, %struct.acpi_device_perf_flags, i32, %struct.acpi_device_perf_state* }
%struct.acpi_device_perf_flags = type { i8 }
%struct.acpi_device_perf_state = type { %struct.anon.74, i8, i8, i32 }
%struct.anon.74 = type { i8 }
%struct.acpi_device_dir = type { %struct.proc_dir_entry* }
%struct.acpi_device_data = type { %union.acpi_object*, %struct.list_head, %union.acpi_object*, %struct.list_head }
%struct.acpi_scan_handler = type { %struct.acpi_device_id*, %struct.list_head, i1 (i8*, %struct.acpi_device_id**)*, i32 (%struct.acpi_device*, %struct.acpi_device_id*)*, void (%struct.acpi_device*)*, void (%struct.device*)*, void (%struct.device*)*, %struct.acpi_hotplug_profile }
%struct.acpi_hotplug_profile = type { %struct.kobject, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*)*, i8 }
%struct.acpi_hotplug_context = type { %struct.acpi_device*, i32 (%struct.acpi_device*, i32)*, void (%struct.acpi_device*, i32)*, void (%struct.acpi_device*)* }
%struct.acpi_driver = type { [80 x i8], [80 x i8], %struct.acpi_device_id*, i32, %struct.acpi_device_ops, %struct.device_driver, %struct.module* }
%struct.acpi_device_ops = type { i32 (%struct.acpi_device*)*, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*, i32)* }
%struct.acpi_gpio_mapping = type opaque
%struct.power_config = type { i32, i32, i32, i32, i32, i32 }
%struct.int34x_thermal_zone = type { %struct.acpi_device*, [10 x %struct.active_trip], i64*, i32, i32, i32, i32, i32, i32, i32, %struct.thermal_zone_device*, %struct.thermal_zone_device_ops*, i8*, %struct.acpi_lpat_conversion_table* }
%struct.active_trip = type { i32, i32, i8 }
%struct.acpi_lpat_conversion_table = type { %struct.acpi_lpat*, i32 }
%struct.acpi_lpat = type { i32, i32 }
%struct.intel_soc_dts_sensors = type { i32, %struct.spinlock, %struct.mutex, i32, [2 x %struct.intel_soc_dts_sensor_entry] }
%struct.intel_soc_dts_sensor_entry = type { i32, i32, i32, i32, [2 x i32], %struct.thermal_zone_device*, %struct.intel_soc_dts_sensors* }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%struct.anon.69 = type { i32, i32, %union.acpi_object* }
%struct.anon.66 = type { i32, i64 }

@int3401_driver = internal global %struct.platform_driver { i32 (%struct.platform_device*)* @int3401_add, i32 (%struct.platform_device*)* @int3401_remove, void (%struct.platform_device*)* null, i32 (%struct.platform_device*, i32)* null, i32 (%struct.platform_device*)* null, %struct.device_driver { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), %struct.bus_type* null, %struct.module* null, i8* null, i8 0, i32 0, %struct.of_device_id* null, %struct.acpi_device_id* getelementptr inbounds ([2 x %struct.acpi_device_id], [2 x %struct.acpi_device_id]* @int3401_device_ids, i32 0, i32 0), i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* @proc_thermal_pm, void (%struct.device*)* null, %struct.driver_private* null }, %struct.platform_device_id* null, i8 0 }, align 8, !dbg !0
@proc_thermal_pci_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), %struct.pci_device_id* getelementptr inbounds ([15 x %struct.pci_device_id], [15 x %struct.pci_device_id]* @proc_thermal_pci_ids, i32 0, i32 0), i32 (%struct.pci_dev*, %struct.pci_device_id*)* @proc_thermal_pci_probe, void (%struct.pci_dev*)* @proc_thermal_pci_remove, i32 (%struct.pci_dev*, i32)* null, i32 (%struct.pci_dev*)* null, void (%struct.pci_dev*)* null, i32 (%struct.pci_dev*, i32)* null, %struct.pci_error_handlers* null, %struct.attribute_group** null, %struct.device_driver { i8* null, %struct.bus_type* null, %struct.module* null, i8* null, i8 0, i32 0, %struct.of_device_id* null, %struct.acpi_device_id* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* @proc_thermal_pm, void (%struct.device*)* null, %struct.driver_private* null }, %struct.pci_dynids zeroinitializer }, align 8, !dbg !4417
@__UNIQUE_ID___addressable_proc_thermal_init241 = internal global i8* bitcast (i32 ()* @proc_thermal_init to i8*), section ".discard.addressable", align 8, !dbg !4171
@__exitcall_proc_thermal_exit = internal global void ()* @proc_thermal_exit, section ".exitcall.exit", align 8, !dbg !4173
@__UNIQUE_ID_author242 = internal constant [90 x i8] c"processor_thermal_device.author=Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>\00", section ".modinfo", align 1, !dbg !4178
@__UNIQUE_ID_description243 = internal constant [79 x i8] c"processor_thermal_device.description=Processor Thermal Reporting Device Driver\00", section ".modinfo", align 1, !dbg !4183
@__UNIQUE_ID_file244 = internal constant [93 x i8] c"processor_thermal_device.file=drivers/thermal/intel/int340x_thermal/processor_thermal_device\00", section ".modinfo", align 1, !dbg !4188
@__UNIQUE_ID_license245 = internal constant [40 x i8] c"processor_thermal_device.license=GPL v2\00", section ".modinfo", align 1, !dbg !4193
@.str = private unnamed_addr constant [16 x i8] c"int3401 thermal\00", align 1
@int3401_device_ids = internal constant [2 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"INT3401\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], align 16, !dbg !4412
@proc_thermal_pm = internal constant %struct.dev_pm_ops { i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* @proc_thermal_resume, i32 (%struct.device*)* null, i32 (%struct.device*)* @proc_thermal_resume, i32 (%struct.device*)* null, i32 (%struct.device*)* @proc_thermal_resume, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null }, align 8, !dbg !4415
@proc_thermal_emum_mode = internal global i32 0, align 4, !dbg !4196
@.str.1 = private unnamed_addr constant [30 x i8] c"error: enumerated as PCI dev\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Creating sysfs group for PROC_THERMAL_PLATFORM_DEV\0A\00", align 1
@dev_attr_tcc_offset_degree_celsius = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @tcc_offset_degree_celsius_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @tcc_offset_degree_celsius_store }, align 8, !dbg !4369
@power_limit_attribute_group = internal constant %struct.attribute_group { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([11 x %struct.attribute*], [11 x %struct.attribute*]* @power_limit_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !4385
@.str.3 = private unnamed_addr constant [5 x i8] c"_TMP\00", align 1
@stored_tjmax = internal global i32 0, align 4, !dbg !4198
@proc_thermal_local_ops = internal global %struct.thermal_zone_device_ops { i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)* null, i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)* null, i32 (%struct.thermal_zone_device*, i32*)* @proc_thermal_get_zone_temp, i32 (%struct.thermal_zone_device*, i32, i32)* null, i32 (%struct.thermal_zone_device*, i32)* null, i32 (%struct.thermal_zone_device*, i32, i32*)* null, i32 (%struct.thermal_zone_device*, i32, i32*)* null, i32 (%struct.thermal_zone_device*, i32, i32)* null, i32 (%struct.thermal_zone_device*, i32, i32*)* null, i32 (%struct.thermal_zone_device*, i32, i32)* null, i32 (%struct.thermal_zone_device*, i32*)* null, i32 (%struct.thermal_zone_device*, i32)* null, i32 (%struct.thermal_zone_device*, i32, i32*)* null, i32 (%struct.thermal_zone_device*, i32, i32)* null }, align 8, !dbg !4200
@__const.proc_thermal_read_ppcc.buf = private unnamed_addr constant %struct.acpi_buffer { i64 -1, i8* null }, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"PPCC\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Invalid PPCC data\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Invalid PPCC package size\0A\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@.str.7 = private unnamed_addr constant [26 x i8] c"tcc_offset_degree_celsius\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@tcc_offset_save = internal global i32 0, align 4, !dbg !4383
@.str.9 = private unnamed_addr constant [13 x i8] c"power_limits\00", align 1
@power_limit_attrs = internal global [11 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_power_limit_0_min_uw, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_power_limit_1_min_uw, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_power_limit_0_max_uw, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_power_limit_1_max_uw, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_power_limit_0_step_uw, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_power_limit_1_step_uw, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_power_limit_0_tmin_us, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_power_limit_1_tmin_us, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_power_limit_0_tmax_us, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_power_limit_1_tmax_us, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !4387
@dev_attr_power_limit_0_min_uw = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @power_limit_0_min_uw_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !4392
@dev_attr_power_limit_1_min_uw = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @power_limit_1_min_uw_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !4394
@dev_attr_power_limit_0_max_uw = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @power_limit_0_max_uw_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !4396
@dev_attr_power_limit_1_max_uw = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @power_limit_1_max_uw_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !4398
@dev_attr_power_limit_0_step_uw = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @power_limit_0_step_uw_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !4400
@dev_attr_power_limit_1_step_uw = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @power_limit_1_step_uw_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !4402
@dev_attr_power_limit_0_tmin_us = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @power_limit_0_tmin_us_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !4404
@dev_attr_power_limit_1_tmin_us = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @power_limit_1_tmin_us_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !4406
@dev_attr_power_limit_0_tmax_us = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @power_limit_0_tmax_us_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !4408
@dev_attr_power_limit_1_tmax_us = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @power_limit_1_tmax_us_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !4410
@.str.10 = private unnamed_addr constant [21 x i8] c"power_limit_0_min_uw\00", align 1
@.str.11 = private unnamed_addr constant [61 x i8] c"Attempted to get power limit before device was initialized!\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"power_limit_1_min_uw\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"power_limit_0_max_uw\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"power_limit_1_max_uw\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"power_limit_0_step_uw\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"power_limit_1_step_uw\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"power_limit_0_tmin_us\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"power_limit_1_tmin_us\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"power_limit_0_tmax_us\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"power_limit_1_tmax_us\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"proc_thermal\00", align 1
@proc_thermal_pci_ids = internal constant [15 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 5635, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 32902, i32 2563, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 32902, i32 6403, i32 -1, i32 -1, i32 0, i32 0, i64 ptrtoint (%struct.rapl_mmio_regs* @rapl_mmio_hsw to i64) }, %struct.pci_device_id { i32 32902, i32 8924, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 32902, i32 2700, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 32902, i32 6796, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 32902, i32 19084, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 32902, i32 23180, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 32902, i32 23043, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 32902, i32 16003, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 32902, i32 12684, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 32902, i32 35331, i32 -1, i32 -1, i32 0, i32 0, i64 ptrtoint (%struct.rapl_mmio_regs* @rapl_mmio_hsw to i64) }, %struct.pci_device_id { i32 32902, i32 19971, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 32902, i32 39427, i32 -1, i32 -1, i32 0, i32 0, i64 ptrtoint (%struct.rapl_mmio_regs* @rapl_mmio_hsw to i64) }, %struct.pci_device_id zeroinitializer], align 16, !dbg !4693
@rapl_mmio_hsw = internal constant %struct.rapl_mmio_regs zeroinitializer, align 8, !dbg !4698
@.str.23 = private unnamed_addr constant [35 x i8] c"error: enumerated as platform dev\0A\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"error: could not enable device\0A\00", align 1
@.str.25 = private unnamed_addr constant [35 x i8] c"failed to add RAPL MMIO interface\0A\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"No auxiliary DTSs enabled\0A\00", align 1
@.str.27 = private unnamed_addr constant [43 x i8] c"Creating sysfs group for PROC_THERMAL_PCI\0A\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"processor_thermal_device\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (void ()* @proc_thermal_exit to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_proc_thermal_init241 to i8*), i8* bitcast (void ()** @__exitcall_proc_thermal_exit to i8*), i8* getelementptr inbounds ([90 x i8], [90 x i8]* @__UNIQUE_ID_author242, i32 0, i32 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__UNIQUE_ID_description243, i32 0, i32 0), i8* getelementptr inbounds ([93 x i8], [93 x i8]* @__UNIQUE_ID_file244, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__UNIQUE_ID_license245, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @proc_thermal_exit() #0 section ".exit.text" !dbg !4751 {
entry:
  call void @platform_driver_unregister(%struct.platform_driver* @int3401_driver) #8, !dbg !4752
  call void @pci_unregister_driver(%struct.pci_driver* @proc_thermal_pci_driver) #8, !dbg !4753
  ret void, !dbg !4754
}

; Function Attrs: noredzone
declare dso_local void @platform_driver_unregister(%struct.platform_driver*) #1

; Function Attrs: noredzone
declare dso_local void @pci_unregister_driver(%struct.pci_driver*) #1

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @proc_thermal_init() #0 section ".init.text" !dbg !4755 {
entry:
  %retval = alloca i32, align 4
  %ret = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4758, metadata !DIExpression()), !dbg !4759
  %call = call i32 @__platform_driver_register(%struct.platform_driver* @int3401_driver, %struct.module* null) #8, !dbg !4760
  store i32 %call, i32* %ret, align 4, !dbg !4761
  %0 = load i32, i32* %ret, align 4, !dbg !4762
  %tobool = icmp ne i32 %0, 0, !dbg !4762
  br i1 %tobool, label %if.then, label %if.end, !dbg !4764

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %ret, align 4, !dbg !4765
  store i32 %1, i32* %retval, align 4, !dbg !4766
  br label %return, !dbg !4766

if.end:                                           ; preds = %entry
  %call1 = call i32 @__pci_register_driver(%struct.pci_driver* @proc_thermal_pci_driver, %struct.module* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i64 0, i64 0)) #8, !dbg !4767
  store i32 %call1, i32* %ret, align 4, !dbg !4768
  %2 = load i32, i32* %ret, align 4, !dbg !4769
  store i32 %2, i32* %retval, align 4, !dbg !4770
  br label %return, !dbg !4770

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !4771
  ret i32 %3, !dbg !4771
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @int3401_add(%struct.platform_device* %pdev) #2 !dbg !4772 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.platform_device*, align 8
  %proc_priv = alloca %struct.proc_thermal_device*, align 8
  %ret = alloca i32, align 4
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !4773, metadata !DIExpression()), !dbg !4774
  call void @llvm.dbg.declare(metadata %struct.proc_thermal_device** %proc_priv, metadata !4775, metadata !DIExpression()), !dbg !4850
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4851, metadata !DIExpression()), !dbg !4852
  %0 = load i32, i32* @proc_thermal_emum_mode, align 4, !dbg !4853
  %cmp = icmp eq i32 %0, 1, !dbg !4855
  br i1 %cmp, label %if.then, label %if.end, !dbg !4856

if.then:                                          ; preds = %entry
  %1 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4857
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %1, i32 0, i32 3, !dbg !4857
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !4857
  store i32 -19, i32* %retval, align 4, !dbg !4859
  br label %return, !dbg !4859

if.end:                                           ; preds = %entry
  %2 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4860
  %dev1 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %2, i32 0, i32 3, !dbg !4861
  %call = call i32 @proc_thermal_add(%struct.device* %dev1, %struct.proc_thermal_device** %proc_priv) #8, !dbg !4862
  store i32 %call, i32* %ret, align 4, !dbg !4863
  %3 = load i32, i32* %ret, align 4, !dbg !4864
  %tobool = icmp ne i32 %3, 0, !dbg !4864
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !4866

if.then2:                                         ; preds = %if.end
  %4 = load i32, i32* %ret, align 4, !dbg !4867
  store i32 %4, i32* %retval, align 4, !dbg !4868
  br label %return, !dbg !4868

if.end3:                                          ; preds = %if.end
  %5 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4869
  %6 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %proc_priv, align 8, !dbg !4870
  %7 = bitcast %struct.proc_thermal_device* %6 to i8*, !dbg !4870
  call void @platform_set_drvdata(%struct.platform_device* %5, i8* %7) #8, !dbg !4871
  store i32 2, i32* @proc_thermal_emum_mode, align 4, !dbg !4872
  %8 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4873
  %dev4 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 3, !dbg !4873
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev4, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !4873
  %9 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4874
  %dev5 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 3, !dbg !4875
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev5, i32 0, i32 0, !dbg !4876
  %call6 = call i32 @sysfs_create_file(%struct.kobject* %kobj, %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_tcc_offset_degree_celsius, i32 0, i32 0)) #8, !dbg !4877
  store i32 %call6, i32* %ret, align 4, !dbg !4878
  %10 = load i32, i32* %ret, align 4, !dbg !4879
  %tobool7 = icmp ne i32 %10, 0, !dbg !4879
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !4881

if.then8:                                         ; preds = %if.end3
  %11 = load i32, i32* %ret, align 4, !dbg !4882
  store i32 %11, i32* %retval, align 4, !dbg !4883
  br label %return, !dbg !4883

if.end9:                                          ; preds = %if.end3
  %12 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4884
  %dev10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 3, !dbg !4885
  %kobj11 = getelementptr inbounds %struct.device, %struct.device* %dev10, i32 0, i32 0, !dbg !4886
  %call12 = call i32 @sysfs_create_group(%struct.kobject* %kobj11, %struct.attribute_group* @power_limit_attribute_group) #8, !dbg !4887
  store i32 %call12, i32* %ret, align 4, !dbg !4888
  %13 = load i32, i32* %ret, align 4, !dbg !4889
  %tobool13 = icmp ne i32 %13, 0, !dbg !4889
  br i1 %tobool13, label %if.then14, label %if.end17, !dbg !4891

if.then14:                                        ; preds = %if.end9
  %14 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4892
  %dev15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 3, !dbg !4893
  %kobj16 = getelementptr inbounds %struct.device, %struct.device* %dev15, i32 0, i32 0, !dbg !4894
  call void @sysfs_remove_file(%struct.kobject* %kobj16, %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_tcc_offset_degree_celsius, i32 0, i32 0)) #8, !dbg !4895
  br label %if.end17, !dbg !4895

if.end17:                                         ; preds = %if.then14, %if.end9
  %15 = load i32, i32* %ret, align 4, !dbg !4896
  store i32 %15, i32* %retval, align 4, !dbg !4897
  br label %return, !dbg !4897

return:                                           ; preds = %if.end17, %if.then8, %if.then2, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !4898
  ret i32 %16, !dbg !4898
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @int3401_remove(%struct.platform_device* %pdev) #2 !dbg !4899 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !4900, metadata !DIExpression()), !dbg !4901
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4902
  %call = call i8* @platform_get_drvdata(%struct.platform_device* %0) #8, !dbg !4903
  %1 = bitcast i8* %call to %struct.proc_thermal_device*, !dbg !4903
  call void @proc_thermal_remove(%struct.proc_thermal_device* %1) #8, !dbg !4904
  ret i32 0, !dbg !4905
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @proc_thermal_add(%struct.device* %dev, %struct.proc_thermal_device** %priv) #2 !dbg !4906 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %priv.addr = alloca %struct.proc_thermal_device**, align 8
  %proc_priv = alloca %struct.proc_thermal_device*, align 8
  %adev = alloca %struct.acpi_device*, align 8
  %status = alloca i32, align 4
  %tmp = alloca i64, align 8
  %ops = alloca %struct.thermal_zone_device_ops*, align 8
  %ret = alloca i32, align 4
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp1 = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp2 = alloca %struct.acpi_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4910, metadata !DIExpression()), !dbg !4911
  store %struct.proc_thermal_device** %priv, %struct.proc_thermal_device*** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.proc_thermal_device*** %priv.addr, metadata !4912, metadata !DIExpression()), !dbg !4913
  call void @llvm.dbg.declare(metadata %struct.proc_thermal_device** %proc_priv, metadata !4914, metadata !DIExpression()), !dbg !4915
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev, metadata !4916, metadata !DIExpression()), !dbg !4917
  call void @llvm.dbg.declare(metadata i32* %status, metadata !4918, metadata !DIExpression()), !dbg !4920
  call void @llvm.dbg.declare(metadata i64* %tmp, metadata !4921, metadata !DIExpression()), !dbg !4922
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device_ops** %ops, metadata !4923, metadata !DIExpression()), !dbg !4924
  store %struct.thermal_zone_device_ops* null, %struct.thermal_zone_device_ops** %ops, align 8, !dbg !4924
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4925, metadata !DIExpression()), !dbg !4926
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !4927, metadata !DIExpression()), !dbg !4929
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4929
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 24, !dbg !4929
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !4929
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !4929
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !4929
  %call = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %2) #8, !dbg !4929
  br i1 %call, label %cond.true, label %cond.false, !dbg !4929

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4930, metadata !DIExpression()), !dbg !4932
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !4932
  %4 = bitcast %struct.fwnode_handle* %3 to i8*, !dbg !4932
  store i8* %4, i8** %__mptr, align 8, !dbg !4932
  br label %do.body, !dbg !4932

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !4933

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !4932
  %add.ptr = getelementptr i8, i8* %5, i64 -16, !dbg !4932
  %6 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !4932
  store %struct.acpi_device* %6, %struct.acpi_device** %tmp2, align 8, !dbg !4933
  %7 = load %struct.acpi_device*, %struct.acpi_device** %tmp2, align 8, !dbg !4932
  br label %cond.end, !dbg !4929

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4929

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %7, %do.end ], [ null, %cond.false ], !dbg !4929
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp1, align 8, !dbg !4929
  %8 = load %struct.acpi_device*, %struct.acpi_device** %tmp1, align 8, !dbg !4929
  store %struct.acpi_device* %8, %struct.acpi_device** %adev, align 8, !dbg !4935
  %9 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !4936
  %tobool = icmp ne %struct.acpi_device* %9, null, !dbg !4936
  br i1 %tobool, label %if.end, label %if.then, !dbg !4938

if.then:                                          ; preds = %cond.end
  store i32 -19, i32* %retval, align 4, !dbg !4939
  br label %return, !dbg !4939

if.end:                                           ; preds = %cond.end
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4940
  %call3 = call i8* @devm_kzalloc(%struct.device* %10, i64 88, i32 3264) #8, !dbg !4941
  %11 = bitcast i8* %call3 to %struct.proc_thermal_device*, !dbg !4941
  store %struct.proc_thermal_device* %11, %struct.proc_thermal_device** %proc_priv, align 8, !dbg !4942
  %12 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %proc_priv, align 8, !dbg !4943
  %tobool4 = icmp ne %struct.proc_thermal_device* %12, null, !dbg !4943
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !4945

if.then5:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !4946
  br label %return, !dbg !4946

if.end6:                                          ; preds = %if.end
  %13 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4947
  %14 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %proc_priv, align 8, !dbg !4948
  %dev7 = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %14, i32 0, i32 0, !dbg !4949
  store %struct.device* %13, %struct.device** %dev7, align 8, !dbg !4950
  %15 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !4951
  %16 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %proc_priv, align 8, !dbg !4952
  %adev8 = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %16, i32 0, i32 1, !dbg !4953
  store %struct.acpi_device* %15, %struct.acpi_device** %adev8, align 8, !dbg !4954
  %17 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %proc_priv, align 8, !dbg !4955
  %18 = load %struct.proc_thermal_device**, %struct.proc_thermal_device*** %priv.addr, align 8, !dbg !4956
  store %struct.proc_thermal_device* %17, %struct.proc_thermal_device** %18, align 8, !dbg !4957
  %19 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %proc_priv, align 8, !dbg !4958
  %call9 = call i32 @proc_thermal_read_ppcc(%struct.proc_thermal_device* %19) #8, !dbg !4959
  store i32 %call9, i32* %ret, align 4, !dbg !4960
  %20 = load i32, i32* %ret, align 4, !dbg !4961
  %tobool10 = icmp ne i32 %20, 0, !dbg !4961
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !4963

if.then11:                                        ; preds = %if.end6
  %21 = load i32, i32* %ret, align 4, !dbg !4964
  store i32 %21, i32* %retval, align 4, !dbg !4965
  br label %return, !dbg !4965

if.end12:                                         ; preds = %if.end6
  %22 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !4966
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %22, i32 0, i32 1, !dbg !4967
  %23 = load i8*, i8** %handle, align 8, !dbg !4967
  %call13 = call i32 @acpi_evaluate_integer(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %struct.acpi_object_list* null, i64* %tmp) #8, !dbg !4968
  store i32 %call13, i32* %status, align 4, !dbg !4969
  %24 = load i32, i32* %status, align 4, !dbg !4970
  %tobool14 = icmp ne i32 %24, 0, !dbg !4970
  br i1 %tobool14, label %if.then15, label %if.end19, !dbg !4972

if.then15:                                        ; preds = %if.end12
  %call16 = call i32 @get_tjmax() #8, !dbg !4973
  store i32 %call16, i32* @stored_tjmax, align 4, !dbg !4975
  %25 = load i32, i32* @stored_tjmax, align 4, !dbg !4976
  %cmp = icmp sgt i32 %25, 0, !dbg !4978
  br i1 %cmp, label %if.then17, label %if.end18, !dbg !4979

if.then17:                                        ; preds = %if.then15
  store %struct.thermal_zone_device_ops* @proc_thermal_local_ops, %struct.thermal_zone_device_ops** %ops, align 8, !dbg !4980
  br label %if.end18, !dbg !4981

if.end18:                                         ; preds = %if.then17, %if.then15
  br label %if.end19, !dbg !4982

if.end19:                                         ; preds = %if.end18, %if.end12
  %26 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !4983
  %27 = load %struct.thermal_zone_device_ops*, %struct.thermal_zone_device_ops** %ops, align 8, !dbg !4984
  %call20 = call %struct.int34x_thermal_zone* @int340x_thermal_zone_add(%struct.acpi_device* %26, %struct.thermal_zone_device_ops* %27) #8, !dbg !4985
  %28 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %proc_priv, align 8, !dbg !4986
  %int340x_zone = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %28, i32 0, i32 3, !dbg !4987
  store %struct.int34x_thermal_zone* %call20, %struct.int34x_thermal_zone** %int340x_zone, align 8, !dbg !4988
  %29 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %proc_priv, align 8, !dbg !4989
  %int340x_zone21 = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %29, i32 0, i32 3, !dbg !4991
  %30 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %int340x_zone21, align 8, !dbg !4991
  %31 = bitcast %struct.int34x_thermal_zone* %30 to i8*, !dbg !4989
  %call22 = call zeroext i1 @IS_ERR(i8* %31) #8, !dbg !4992
  br i1 %call22, label %if.then23, label %if.else, !dbg !4993

if.then23:                                        ; preds = %if.end19
  %32 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %proc_priv, align 8, !dbg !4994
  %int340x_zone24 = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %32, i32 0, i32 3, !dbg !4996
  %33 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %int340x_zone24, align 8, !dbg !4996
  %34 = bitcast %struct.int34x_thermal_zone* %33 to i8*, !dbg !4994
  %call25 = call i64 @PTR_ERR(i8* %34) #8, !dbg !4997
  %conv = trunc i64 %call25 to i32, !dbg !4997
  store i32 %conv, i32* %retval, align 4, !dbg !4998
  br label %return, !dbg !4998

if.else:                                          ; preds = %if.end19
  store i32 0, i32* %ret, align 4, !dbg !4999
  br label %if.end26

if.end26:                                         ; preds = %if.else
  %35 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !5000
  %handle27 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %35, i32 0, i32 1, !dbg !5001
  %36 = load i8*, i8** %handle27, align 8, !dbg !5001
  %37 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %proc_priv, align 8, !dbg !5002
  %38 = bitcast %struct.proc_thermal_device* %37 to i8*, !dbg !5003
  %call28 = call i32 @acpi_install_notify_handler(i8* %36, i32 2, void (i8*, i32, i8*)* @proc_thermal_notify, i8* %38) #8, !dbg !5004
  store i32 %call28, i32* %ret, align 4, !dbg !5005
  %39 = load i32, i32* %ret, align 4, !dbg !5006
  %tobool29 = icmp ne i32 %39, 0, !dbg !5006
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !5008

if.then30:                                        ; preds = %if.end26
  br label %remove_zone, !dbg !5009

if.end31:                                         ; preds = %if.end26
  store i32 0, i32* %retval, align 4, !dbg !5010
  br label %return, !dbg !5010

remove_zone:                                      ; preds = %if.then30
  call void @llvm.dbg.label(metadata !5011), !dbg !5012
  %40 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %proc_priv, align 8, !dbg !5013
  %int340x_zone32 = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %40, i32 0, i32 3, !dbg !5014
  %41 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %int340x_zone32, align 8, !dbg !5014
  call void @int340x_thermal_zone_remove(%struct.int34x_thermal_zone* %41) #8, !dbg !5015
  %42 = load i32, i32* %ret, align 4, !dbg !5016
  store i32 %42, i32* %retval, align 4, !dbg !5017
  br label %return, !dbg !5017

return:                                           ; preds = %remove_zone, %if.end31, %if.then23, %if.then11, %if.then5, %if.then
  %43 = load i32, i32* %retval, align 4, !dbg !5018
  ret i32 %43, !dbg !5018
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @platform_set_drvdata(%struct.platform_device* %pdev, i8* %data) #2 !dbg !5019 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !5022, metadata !DIExpression()), !dbg !5023
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5024, metadata !DIExpression()), !dbg !5025
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !5026
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !5027
  %1 = load i8*, i8** %data.addr, align 8, !dbg !5028
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #8, !dbg !5029
  ret void, !dbg !5030
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sysfs_create_file(%struct.kobject* %kobj, %struct.attribute* %attr) #2 !dbg !5031 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %attr.addr = alloca %struct.attribute*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !5036, metadata !DIExpression()), !dbg !5037
  store %struct.attribute* %attr, %struct.attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute** %attr.addr, metadata !5038, metadata !DIExpression()), !dbg !5039
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !5040
  %1 = load %struct.attribute*, %struct.attribute** %attr.addr, align 8, !dbg !5041
  %call = call i32 @sysfs_create_file_ns(%struct.kobject* %0, %struct.attribute* %1, i8* null) #8, !dbg !5042
  ret i32 %call, !dbg !5043
}

; Function Attrs: noredzone
declare dso_local i32 @sysfs_create_group(%struct.kobject*, %struct.attribute_group*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @sysfs_remove_file(%struct.kobject* %kobj, %struct.attribute* %attr) #2 !dbg !5044 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %attr.addr = alloca %struct.attribute*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !5047, metadata !DIExpression()), !dbg !5048
  store %struct.attribute* %attr, %struct.attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute** %attr.addr, metadata !5049, metadata !DIExpression()), !dbg !5050
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !5051
  %1 = load %struct.attribute*, %struct.attribute** %attr.addr, align 8, !dbg !5052
  call void @sysfs_remove_file_ns(%struct.kobject* %0, %struct.attribute* %1, i8* null) #8, !dbg !5053
  ret void, !dbg !5054
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @is_acpi_device_node(%struct.fwnode_handle*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kzalloc(%struct.device* %dev, i64 %size, i32 %gfp) #2 !dbg !5055 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5058, metadata !DIExpression()), !dbg !5059
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5060, metadata !DIExpression()), !dbg !5061
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !5062, metadata !DIExpression()), !dbg !5063
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5064
  %1 = load i64, i64* %size.addr, align 8, !dbg !5065
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !5066
  %or = or i32 %2, 256, !dbg !5067
  %call = call noalias i8* @devm_kmalloc(%struct.device* %0, i64 %1, i32 %or) #8, !dbg !5068
  ret i8* %call, !dbg !5069
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @proc_thermal_read_ppcc(%struct.proc_thermal_device* %proc_priv) #2 !dbg !5070 {
entry:
  %retval = alloca i32, align 4
  %proc_priv.addr = alloca %struct.proc_thermal_device*, align 8
  %i = alloca i32, align 4
  %status = alloca i32, align 4
  %buf = alloca %struct.acpi_buffer, align 8
  %elements = alloca %union.acpi_object*, align 8
  %ppcc = alloca %union.acpi_object*, align 8
  %p = alloca %union.acpi_object*, align 8
  %ret = alloca i32, align 4
  %__UNIQUE_ID___x238 = alloca i32, align 4
  %__UNIQUE_ID___y239 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.proc_thermal_device* %proc_priv, %struct.proc_thermal_device** %proc_priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.proc_thermal_device** %proc_priv.addr, metadata !5073, metadata !DIExpression()), !dbg !5074
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5075, metadata !DIExpression()), !dbg !5076
  call void @llvm.dbg.declare(metadata i32* %status, metadata !5077, metadata !DIExpression()), !dbg !5078
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %buf, metadata !5079, metadata !DIExpression()), !dbg !5085
  %0 = bitcast %struct.acpi_buffer* %buf to i8*, !dbg !5085
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%struct.acpi_buffer* @__const.proc_thermal_read_ppcc.buf to i8*), i64 16, i1 false), !dbg !5085
  call void @llvm.dbg.declare(metadata %union.acpi_object** %elements, metadata !5086, metadata !DIExpression()), !dbg !5087
  call void @llvm.dbg.declare(metadata %union.acpi_object** %ppcc, metadata !5088, metadata !DIExpression()), !dbg !5089
  call void @llvm.dbg.declare(metadata %union.acpi_object** %p, metadata !5090, metadata !DIExpression()), !dbg !5091
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5092, metadata !DIExpression()), !dbg !5093
  store i32 0, i32* %ret, align 4, !dbg !5093
  %1 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %proc_priv.addr, align 8, !dbg !5094
  %adev = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %1, i32 0, i32 1, !dbg !5095
  %2 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !5095
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %2, i32 0, i32 1, !dbg !5096
  %3 = load i8*, i8** %handle, align 8, !dbg !5096
  %call = call i32 @acpi_evaluate_object(i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %struct.acpi_object_list* null, %struct.acpi_buffer* %buf) #8, !dbg !5097
  store i32 %call, i32* %status, align 4, !dbg !5098
  %4 = load i32, i32* %status, align 4, !dbg !5099
  %tobool = icmp ne i32 %4, 0, !dbg !5099
  br i1 %tobool, label %if.then, label %if.end, !dbg !5101

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !5102
  br label %return, !dbg !5102

if.end:                                           ; preds = %entry
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buf, i32 0, i32 1, !dbg !5103
  %5 = load i8*, i8** %pointer, align 8, !dbg !5103
  %6 = bitcast i8* %5 to %union.acpi_object*, !dbg !5104
  store %union.acpi_object* %6, %union.acpi_object** %p, align 8, !dbg !5105
  %7 = load %union.acpi_object*, %union.acpi_object** %p, align 8, !dbg !5106
  %tobool1 = icmp ne %union.acpi_object* %7, null, !dbg !5106
  br i1 %tobool1, label %lor.lhs.false, label %if.then2, !dbg !5108

lor.lhs.false:                                    ; preds = %if.end
  %8 = load %union.acpi_object*, %union.acpi_object** %p, align 8, !dbg !5109
  %type = bitcast %union.acpi_object* %8 to i32*, !dbg !5110
  %9 = load i32, i32* %type, align 8, !dbg !5110
  %cmp = icmp ne i32 %9, 4, !dbg !5111
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5112

if.then2:                                         ; preds = %lor.lhs.false, %if.end
  %10 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %proc_priv.addr, align 8, !dbg !5113
  %dev = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %10, i32 0, i32 0, !dbg !5113
  %11 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5113
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0)) #9, !dbg !5113
  store i32 -14, i32* %ret, align 4, !dbg !5115
  br label %free_buffer, !dbg !5116

if.end3:                                          ; preds = %lor.lhs.false
  %12 = load %union.acpi_object*, %union.acpi_object** %p, align 8, !dbg !5117
  %package = bitcast %union.acpi_object* %12 to %struct.anon.69*, !dbg !5119
  %count = getelementptr inbounds %struct.anon.69, %struct.anon.69* %package, i32 0, i32 1, !dbg !5120
  %13 = load i32, i32* %count, align 4, !dbg !5120
  %tobool4 = icmp ne i32 %13, 0, !dbg !5117
  br i1 %tobool4, label %if.end7, label %if.then5, !dbg !5121

if.then5:                                         ; preds = %if.end3
  %14 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %proc_priv.addr, align 8, !dbg !5122
  %dev6 = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %14, i32 0, i32 0, !dbg !5122
  %15 = load %struct.device*, %struct.device** %dev6, align 8, !dbg !5122
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !5122
  store i32 -14, i32* %ret, align 4, !dbg !5124
  br label %free_buffer, !dbg !5125

if.end7:                                          ; preds = %if.end3
  store i32 0, i32* %i, align 4, !dbg !5126
  br label %for.cond, !dbg !5128

for.cond:                                         ; preds = %for.inc, %if.end7
  %16 = load i32, i32* %i, align 4, !dbg !5129
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x238, metadata !5131, metadata !DIExpression()), !dbg !5133
  %17 = load %union.acpi_object*, %union.acpi_object** %p, align 8, !dbg !5133
  %package8 = bitcast %union.acpi_object* %17 to %struct.anon.69*, !dbg !5133
  %count9 = getelementptr inbounds %struct.anon.69, %struct.anon.69* %package8, i32 0, i32 1, !dbg !5133
  %18 = load i32, i32* %count9, align 4, !dbg !5133
  %sub = sub i32 %18, 1, !dbg !5133
  store i32 %sub, i32* %__UNIQUE_ID___x238, align 4, !dbg !5133
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y239, metadata !5134, metadata !DIExpression()), !dbg !5133
  store i32 2, i32* %__UNIQUE_ID___y239, align 4, !dbg !5133
  %19 = load i32, i32* %__UNIQUE_ID___x238, align 4, !dbg !5133
  %20 = load i32, i32* %__UNIQUE_ID___y239, align 4, !dbg !5133
  %cmp10 = icmp slt i32 %19, %20, !dbg !5133
  br i1 %cmp10, label %cond.true, label %cond.false, !dbg !5133

cond.true:                                        ; preds = %for.cond
  %21 = load i32, i32* %__UNIQUE_ID___x238, align 4, !dbg !5133
  br label %cond.end, !dbg !5133

cond.false:                                       ; preds = %for.cond
  %22 = load i32, i32* %__UNIQUE_ID___y239, align 4, !dbg !5133
  br label %cond.end, !dbg !5133

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %21, %cond.true ], [ %22, %cond.false ], !dbg !5133
  store i32 %cond, i32* %tmp, align 4, !dbg !5133
  %23 = load i32, i32* %tmp, align 4, !dbg !5133
  %cmp11 = icmp slt i32 %16, %23, !dbg !5135
  br i1 %cmp11, label %for.body, label %for.end, !dbg !5136

for.body:                                         ; preds = %cond.end
  %24 = load %union.acpi_object*, %union.acpi_object** %p, align 8, !dbg !5137
  %package12 = bitcast %union.acpi_object* %24 to %struct.anon.69*, !dbg !5139
  %elements13 = getelementptr inbounds %struct.anon.69, %struct.anon.69* %package12, i32 0, i32 2, !dbg !5140
  %25 = load %union.acpi_object*, %union.acpi_object** %elements13, align 8, !dbg !5140
  %26 = load i32, i32* %i, align 4, !dbg !5141
  %add = add i32 %26, 1, !dbg !5142
  %idxprom = sext i32 %add to i64, !dbg !5137
  %arrayidx = getelementptr %union.acpi_object, %union.acpi_object* %25, i64 %idxprom, !dbg !5137
  store %union.acpi_object* %arrayidx, %union.acpi_object** %elements, align 8, !dbg !5143
  %27 = load %union.acpi_object*, %union.acpi_object** %elements, align 8, !dbg !5144
  %type14 = bitcast %union.acpi_object* %27 to i32*, !dbg !5146
  %28 = load i32, i32* %type14, align 8, !dbg !5146
  %cmp15 = icmp ne i32 %28, 4, !dbg !5147
  br i1 %cmp15, label %if.then20, label %lor.lhs.false16, !dbg !5148

lor.lhs.false16:                                  ; preds = %for.body
  %29 = load %union.acpi_object*, %union.acpi_object** %elements, align 8, !dbg !5149
  %package17 = bitcast %union.acpi_object* %29 to %struct.anon.69*, !dbg !5150
  %count18 = getelementptr inbounds %struct.anon.69, %struct.anon.69* %package17, i32 0, i32 1, !dbg !5151
  %30 = load i32, i32* %count18, align 4, !dbg !5151
  %cmp19 = icmp ne i32 %30, 6, !dbg !5152
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !5153

if.then20:                                        ; preds = %lor.lhs.false16, %for.body
  store i32 -14, i32* %ret, align 4, !dbg !5154
  br label %free_buffer, !dbg !5156

if.end21:                                         ; preds = %lor.lhs.false16
  %31 = load %union.acpi_object*, %union.acpi_object** %elements, align 8, !dbg !5157
  %package22 = bitcast %union.acpi_object* %31 to %struct.anon.69*, !dbg !5158
  %elements23 = getelementptr inbounds %struct.anon.69, %struct.anon.69* %package22, i32 0, i32 2, !dbg !5159
  %32 = load %union.acpi_object*, %union.acpi_object** %elements23, align 8, !dbg !5159
  store %union.acpi_object* %32, %union.acpi_object** %ppcc, align 8, !dbg !5160
  %33 = load %union.acpi_object*, %union.acpi_object** %ppcc, align 8, !dbg !5161
  %arrayidx24 = getelementptr %union.acpi_object, %union.acpi_object* %33, i64 0, !dbg !5161
  %integer = bitcast %union.acpi_object* %arrayidx24 to %struct.anon.66*, !dbg !5162
  %value = getelementptr inbounds %struct.anon.66, %struct.anon.66* %integer, i32 0, i32 1, !dbg !5163
  %34 = load i64, i64* %value, align 8, !dbg !5163
  %conv = trunc i64 %34 to i32, !dbg !5161
  %35 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %proc_priv.addr, align 8, !dbg !5164
  %power_limits = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %35, i32 0, i32 2, !dbg !5165
  %36 = load i32, i32* %i, align 4, !dbg !5166
  %idxprom25 = sext i32 %36 to i64, !dbg !5164
  %arrayidx26 = getelementptr [2 x %struct.power_config], [2 x %struct.power_config]* %power_limits, i64 0, i64 %idxprom25, !dbg !5164
  %index = getelementptr inbounds %struct.power_config, %struct.power_config* %arrayidx26, i32 0, i32 0, !dbg !5167
  store i32 %conv, i32* %index, align 8, !dbg !5168
  %37 = load %union.acpi_object*, %union.acpi_object** %ppcc, align 8, !dbg !5169
  %arrayidx27 = getelementptr %union.acpi_object, %union.acpi_object* %37, i64 1, !dbg !5169
  %integer28 = bitcast %union.acpi_object* %arrayidx27 to %struct.anon.66*, !dbg !5170
  %value29 = getelementptr inbounds %struct.anon.66, %struct.anon.66* %integer28, i32 0, i32 1, !dbg !5171
  %38 = load i64, i64* %value29, align 8, !dbg !5171
  %conv30 = trunc i64 %38 to i32, !dbg !5169
  %39 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %proc_priv.addr, align 8, !dbg !5172
  %power_limits31 = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %39, i32 0, i32 2, !dbg !5173
  %40 = load i32, i32* %i, align 4, !dbg !5174
  %idxprom32 = sext i32 %40 to i64, !dbg !5172
  %arrayidx33 = getelementptr [2 x %struct.power_config], [2 x %struct.power_config]* %power_limits31, i64 0, i64 %idxprom32, !dbg !5172
  %min_uw = getelementptr inbounds %struct.power_config, %struct.power_config* %arrayidx33, i32 0, i32 1, !dbg !5175
  store i32 %conv30, i32* %min_uw, align 4, !dbg !5176
  %41 = load %union.acpi_object*, %union.acpi_object** %ppcc, align 8, !dbg !5177
  %arrayidx34 = getelementptr %union.acpi_object, %union.acpi_object* %41, i64 2, !dbg !5177
  %integer35 = bitcast %union.acpi_object* %arrayidx34 to %struct.anon.66*, !dbg !5178
  %value36 = getelementptr inbounds %struct.anon.66, %struct.anon.66* %integer35, i32 0, i32 1, !dbg !5179
  %42 = load i64, i64* %value36, align 8, !dbg !5179
  %conv37 = trunc i64 %42 to i32, !dbg !5177
  %43 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %proc_priv.addr, align 8, !dbg !5180
  %power_limits38 = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %43, i32 0, i32 2, !dbg !5181
  %44 = load i32, i32* %i, align 4, !dbg !5182
  %idxprom39 = sext i32 %44 to i64, !dbg !5180
  %arrayidx40 = getelementptr [2 x %struct.power_config], [2 x %struct.power_config]* %power_limits38, i64 0, i64 %idxprom39, !dbg !5180
  %max_uw = getelementptr inbounds %struct.power_config, %struct.power_config* %arrayidx40, i32 0, i32 2, !dbg !5183
  store i32 %conv37, i32* %max_uw, align 8, !dbg !5184
  %45 = load %union.acpi_object*, %union.acpi_object** %ppcc, align 8, !dbg !5185
  %arrayidx41 = getelementptr %union.acpi_object, %union.acpi_object* %45, i64 3, !dbg !5185
  %integer42 = bitcast %union.acpi_object* %arrayidx41 to %struct.anon.66*, !dbg !5186
  %value43 = getelementptr inbounds %struct.anon.66, %struct.anon.66* %integer42, i32 0, i32 1, !dbg !5187
  %46 = load i64, i64* %value43, align 8, !dbg !5187
  %conv44 = trunc i64 %46 to i32, !dbg !5185
  %47 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %proc_priv.addr, align 8, !dbg !5188
  %power_limits45 = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %47, i32 0, i32 2, !dbg !5189
  %48 = load i32, i32* %i, align 4, !dbg !5190
  %idxprom46 = sext i32 %48 to i64, !dbg !5188
  %arrayidx47 = getelementptr [2 x %struct.power_config], [2 x %struct.power_config]* %power_limits45, i64 0, i64 %idxprom46, !dbg !5188
  %tmin_us = getelementptr inbounds %struct.power_config, %struct.power_config* %arrayidx47, i32 0, i32 3, !dbg !5191
  store i32 %conv44, i32* %tmin_us, align 4, !dbg !5192
  %49 = load %union.acpi_object*, %union.acpi_object** %ppcc, align 8, !dbg !5193
  %arrayidx48 = getelementptr %union.acpi_object, %union.acpi_object* %49, i64 4, !dbg !5193
  %integer49 = bitcast %union.acpi_object* %arrayidx48 to %struct.anon.66*, !dbg !5194
  %value50 = getelementptr inbounds %struct.anon.66, %struct.anon.66* %integer49, i32 0, i32 1, !dbg !5195
  %50 = load i64, i64* %value50, align 8, !dbg !5195
  %conv51 = trunc i64 %50 to i32, !dbg !5193
  %51 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %proc_priv.addr, align 8, !dbg !5196
  %power_limits52 = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %51, i32 0, i32 2, !dbg !5197
  %52 = load i32, i32* %i, align 4, !dbg !5198
  %idxprom53 = sext i32 %52 to i64, !dbg !5196
  %arrayidx54 = getelementptr [2 x %struct.power_config], [2 x %struct.power_config]* %power_limits52, i64 0, i64 %idxprom53, !dbg !5196
  %tmax_us = getelementptr inbounds %struct.power_config, %struct.power_config* %arrayidx54, i32 0, i32 4, !dbg !5199
  store i32 %conv51, i32* %tmax_us, align 8, !dbg !5200
  %53 = load %union.acpi_object*, %union.acpi_object** %ppcc, align 8, !dbg !5201
  %arrayidx55 = getelementptr %union.acpi_object, %union.acpi_object* %53, i64 5, !dbg !5201
  %integer56 = bitcast %union.acpi_object* %arrayidx55 to %struct.anon.66*, !dbg !5202
  %value57 = getelementptr inbounds %struct.anon.66, %struct.anon.66* %integer56, i32 0, i32 1, !dbg !5203
  %54 = load i64, i64* %value57, align 8, !dbg !5203
  %conv58 = trunc i64 %54 to i32, !dbg !5201
  %55 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %proc_priv.addr, align 8, !dbg !5204
  %power_limits59 = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %55, i32 0, i32 2, !dbg !5205
  %56 = load i32, i32* %i, align 4, !dbg !5206
  %idxprom60 = sext i32 %56 to i64, !dbg !5204
  %arrayidx61 = getelementptr [2 x %struct.power_config], [2 x %struct.power_config]* %power_limits59, i64 0, i64 %idxprom60, !dbg !5204
  %step_uw = getelementptr inbounds %struct.power_config, %struct.power_config* %arrayidx61, i32 0, i32 5, !dbg !5207
  store i32 %conv58, i32* %step_uw, align 4, !dbg !5208
  br label %for.inc, !dbg !5209

for.inc:                                          ; preds = %if.end21
  %57 = load i32, i32* %i, align 4, !dbg !5210
  %inc = add i32 %57, 1, !dbg !5210
  store i32 %inc, i32* %i, align 4, !dbg !5210
  br label %for.cond, !dbg !5211, !llvm.loop !5212

for.end:                                          ; preds = %cond.end
  br label %free_buffer, !dbg !5213

free_buffer:                                      ; preds = %for.end, %if.then20, %if.then5, %if.then2
  call void @llvm.dbg.label(metadata !5214), !dbg !5215
  %pointer62 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buf, i32 0, i32 1, !dbg !5216
  %58 = load i8*, i8** %pointer62, align 8, !dbg !5216
  call void @kfree(i8* %58) #8, !dbg !5217
  %59 = load i32, i32* %ret, align 4, !dbg !5218
  store i32 %59, i32* %retval, align 4, !dbg !5219
  br label %return, !dbg !5219

return:                                           ; preds = %free_buffer, %if.then
  %60 = load i32, i32* %retval, align 4, !dbg !5220
  ret i32 %60, !dbg !5220
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_evaluate_integer(i8*, i8*, %struct.acpi_object_list*, i64*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @get_tjmax() #2 !dbg !5221 {
entry:
  %retval = alloca i32, align 4
  %eax = alloca i32, align 4
  %edx = alloca i32, align 4
  %val = alloca i32, align 4
  %err = alloca i32, align 4
  %_err = alloca i32, align 4
  %_l = alloca i64, align 8
  %tmp = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %eax, metadata !5222, metadata !DIExpression()), !dbg !5223
  call void @llvm.dbg.declare(metadata i32* %edx, metadata !5224, metadata !DIExpression()), !dbg !5225
  call void @llvm.dbg.declare(metadata i32* %val, metadata !5226, metadata !DIExpression()), !dbg !5227
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5228, metadata !DIExpression()), !dbg !5229
  call void @llvm.dbg.declare(metadata i32* %_err, metadata !5230, metadata !DIExpression()), !dbg !5232
  call void @llvm.dbg.declare(metadata i64* %_l, metadata !5233, metadata !DIExpression()), !dbg !5232
  %call = call i64 @paravirt_read_msr_safe(i32 418, i32* %_err) #8, !dbg !5232
  store i64 %call, i64* %_l, align 8, !dbg !5232
  %0 = load i64, i64* %_l, align 8, !dbg !5232
  %conv = trunc i64 %0 to i32, !dbg !5232
  store i32 %conv, i32* %eax, align 4, !dbg !5232
  %1 = load i64, i64* %_l, align 8, !dbg !5232
  %shr = lshr i64 %1, 32, !dbg !5232
  %conv1 = trunc i64 %shr to i32, !dbg !5232
  store i32 %conv1, i32* %edx, align 4, !dbg !5232
  %2 = load i32, i32* %_err, align 4, !dbg !5232
  store i32 %2, i32* %tmp, align 4, !dbg !5232
  %3 = load i32, i32* %tmp, align 4, !dbg !5232
  store i32 %3, i32* %err, align 4, !dbg !5234
  %4 = load i32, i32* %err, align 4, !dbg !5235
  %tobool = icmp ne i32 %4, 0, !dbg !5235
  br i1 %tobool, label %if.then, label %if.end, !dbg !5237

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %err, align 4, !dbg !5238
  store i32 %5, i32* %retval, align 4, !dbg !5239
  br label %return, !dbg !5239

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %eax, align 4, !dbg !5240
  %shr2 = lshr i32 %6, 16, !dbg !5241
  %and = and i32 %shr2, 255, !dbg !5242
  store i32 %and, i32* %val, align 4, !dbg !5243
  %7 = load i32, i32* %val, align 4, !dbg !5244
  %tobool3 = icmp ne i32 %7, 0, !dbg !5244
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5246

if.then4:                                         ; preds = %if.end
  %8 = load i32, i32* %val, align 4, !dbg !5247
  store i32 %8, i32* %retval, align 4, !dbg !5248
  br label %return, !dbg !5248

if.end5:                                          ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !5249
  br label %return, !dbg !5249

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !5250
  ret i32 %9, !dbg !5250
}

; Function Attrs: noredzone
declare dso_local %struct.int34x_thermal_zone* @int340x_thermal_zone_add(%struct.acpi_device*, %struct.thermal_zone_device_ops*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #2 !dbg !5251 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5255, metadata !DIExpression()), !dbg !5256
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5257
  %1 = ptrtoint i8* %0 to i64, !dbg !5257
  %2 = inttoptr i64 %1 to i8*, !dbg !5257
  %3 = ptrtoint i8* %2 to i64, !dbg !5257
  %cmp = icmp uge i64 %3, -4095, !dbg !5257
  %lnot = xor i1 %cmp, true, !dbg !5257
  %lnot1 = xor i1 %lnot, true, !dbg !5257
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5257
  %conv = sext i32 %lnot.ext to i64, !dbg !5257
  %tobool = icmp ne i64 %conv, 0, !dbg !5257
  ret i1 %tobool, !dbg !5258
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #2 !dbg !5259 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5262, metadata !DIExpression()), !dbg !5263
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5264
  %1 = ptrtoint i8* %0 to i64, !dbg !5265
  ret i64 %1, !dbg !5266
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_install_notify_handler(i8*, i32, void (i8*, i32, i8*)*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @proc_thermal_notify(i8* %handle, i32 %event, i8* %data) #2 !dbg !5267 {
entry:
  %handle.addr = alloca i8*, align 8
  %event.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %proc_priv = alloca %struct.proc_thermal_device*, align 8
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !5270, metadata !DIExpression()), !dbg !5271
  store i32 %event, i32* %event.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %event.addr, metadata !5272, metadata !DIExpression()), !dbg !5273
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5274, metadata !DIExpression()), !dbg !5275
  call void @llvm.dbg.declare(metadata %struct.proc_thermal_device** %proc_priv, metadata !5276, metadata !DIExpression()), !dbg !5277
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5278
  %1 = bitcast i8* %0 to %struct.proc_thermal_device*, !dbg !5278
  store %struct.proc_thermal_device* %1, %struct.proc_thermal_device** %proc_priv, align 8, !dbg !5277
  %2 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %proc_priv, align 8, !dbg !5279
  %tobool = icmp ne %struct.proc_thermal_device* %2, null, !dbg !5279
  br i1 %tobool, label %if.end, label %if.then, !dbg !5281

if.then:                                          ; preds = %entry
  br label %sw.epilog, !dbg !5282

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %event.addr, align 4, !dbg !5283
  switch i32 %3, label %sw.default [
    i32 131, label %sw.bb
  ], !dbg !5284

sw.bb:                                            ; preds = %if.end
  %4 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %proc_priv, align 8, !dbg !5285
  %call = call i32 @proc_thermal_read_ppcc(%struct.proc_thermal_device* %4) #8, !dbg !5287
  %5 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %proc_priv, align 8, !dbg !5288
  %int340x_zone = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %5, i32 0, i32 3, !dbg !5289
  %6 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %int340x_zone, align 8, !dbg !5289
  call void @int340x_thermal_zone_device_update(%struct.int34x_thermal_zone* %6, i32 6) #8, !dbg !5290
  br label %sw.epilog, !dbg !5291

sw.default:                                       ; preds = %if.end
  br label %sw.epilog, !dbg !5292

sw.epilog:                                        ; preds = %if.then, %sw.default, %sw.bb
  ret void, !dbg !5293
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone
declare dso_local void @int340x_thermal_zone_remove(%struct.int34x_thermal_zone*) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @devm_kmalloc(%struct.device*, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noredzone
declare dso_local i32 @acpi_evaluate_object(i8*, i8*, %struct.acpi_object_list*, %struct.acpi_buffer*) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @paravirt_read_msr_safe(i32 %msr, i32* %err) #2 !dbg !5294 {
entry:
  %msr.addr = alloca i32, align 4
  %err.addr = alloca i32*, align 8
  %__ret = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  %__mask = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp6 = alloca i64, align 8
  store i32 %msr, i32* %msr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %msr.addr, metadata !5298, metadata !DIExpression()), !dbg !5299
  store i32* %err, i32** %err.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %err.addr, metadata !5300, metadata !DIExpression()), !dbg !5301
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !5302, metadata !DIExpression()), !dbg !5304
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5305, metadata !DIExpression()), !dbg !5304
  %0 = load i64, i64* %__edi, align 8, !dbg !5304
  store i64 %0, i64* %__edi, align 8, !dbg !5304
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5306, metadata !DIExpression()), !dbg !5304
  %1 = load i64, i64* %__esi, align 8, !dbg !5304
  store i64 %1, i64* %__esi, align 8, !dbg !5304
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5307, metadata !DIExpression()), !dbg !5304
  %2 = load i64, i64* %__edx, align 8, !dbg !5304
  store i64 %2, i64* %__edx, align 8, !dbg !5304
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5308, metadata !DIExpression()), !dbg !5304
  %3 = load i64, i64* %__ecx, align 8, !dbg !5304
  store i64 %3, i64* %__ecx, align 8, !dbg !5304
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5309, metadata !DIExpression()), !dbg !5304
  %4 = load i64, i64* %__eax, align 8, !dbg !5304
  store i64 %4, i64* %__eax, align 8, !dbg !5304
  %5 = load i64 (i32, i32*)*, i64 (i32, i32*)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 25), align 8, !dbg !5304
  %6 = call i64 @llvm.read_register.i64(metadata !4745), !dbg !5310
  %7 = load i32, i32* %msr.addr, align 4, !dbg !5310
  %conv = zext i32 %7 to i64, !dbg !5310
  %8 = load i32*, i32** %err.addr, align 8, !dbg !5310
  %9 = ptrtoint i32* %8 to i64, !dbg !5310
  %10 = call { i64, i64, i64, i64, i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${7:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${6:c}\0A  .byte 772b-771b\0A  .short ${8:c}\0A.popsection\0A", "={di},={si},={dx},={cx},={ax},={rsp},i,i,i,{di},{si},5,~{memory},~{cc},~{r8},~{r9},~{r10},~{r11},~{dirflag},~{fpsr},~{flags}"(i64 28, i64 (i32, i32*)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 25), i32 511, i64 %conv, i64 %9, i64 %6) #7, !dbg !5310, !srcloc !5313
  %asmresult = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 0, !dbg !5310
  %asmresult1 = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 1, !dbg !5310
  %asmresult2 = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 2, !dbg !5310
  %asmresult3 = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 3, !dbg !5310
  %asmresult4 = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 4, !dbg !5310
  %asmresult5 = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 5, !dbg !5310
  store i64 %asmresult, i64* %__edi, align 8, !dbg !5310
  store i64 %asmresult1, i64* %__esi, align 8, !dbg !5310
  store i64 %asmresult2, i64* %__edx, align 8, !dbg !5310
  store i64 %asmresult3, i64* %__ecx, align 8, !dbg !5310
  store i64 %asmresult4, i64* %__eax, align 8, !dbg !5310
  call void @llvm.write_register.i64(metadata !4745, i64 %asmresult5), !dbg !5310
  %11 = load i64, i64* %__eax, align 8, !dbg !5310
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !5314, metadata !DIExpression()), !dbg !5316
  store i64 -1, i64* %__mask, align 8, !dbg !5316
  %12 = load i64, i64* %__mask, align 8, !dbg !5316
  store i64 %12, i64* %tmp, align 8, !dbg !5316
  %13 = load i64, i64* %tmp, align 8, !dbg !5316
  %and = and i64 %11, %13, !dbg !5310
  store i64 %and, i64* %__ret, align 8, !dbg !5310
  %14 = load i64, i64* %__ret, align 8, !dbg !5304
  store i64 %14, i64* %tmp6, align 8, !dbg !5317
  %15 = load i64, i64* %tmp6, align 8, !dbg !5304
  ret i64 %15, !dbg !5318
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @proc_thermal_get_zone_temp(%struct.thermal_zone_device* %zone, i32* %temp) #2 !dbg !5319 {
entry:
  %zone.addr = alloca %struct.thermal_zone_device*, align 8
  %temp.addr = alloca i32*, align 8
  %ret = alloca i32, align 4
  store %struct.thermal_zone_device* %zone, %struct.thermal_zone_device** %zone.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %zone.addr, metadata !5320, metadata !DIExpression()), !dbg !5321
  store i32* %temp, i32** %temp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %temp.addr, metadata !5322, metadata !DIExpression()), !dbg !5323
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5324, metadata !DIExpression()), !dbg !5325
  %0 = load i32*, i32** %temp.addr, align 8, !dbg !5326
  %call = call i32 @read_temp_msr(i32* %0) #8, !dbg !5327
  store i32 %call, i32* %ret, align 4, !dbg !5328
  %1 = load i32, i32* %ret, align 4, !dbg !5329
  %tobool = icmp ne i32 %1, 0, !dbg !5329
  br i1 %tobool, label %if.end, label %if.then, !dbg !5331

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @stored_tjmax, align 4, !dbg !5332
  %3 = load i32*, i32** %temp.addr, align 8, !dbg !5333
  %4 = load i32, i32* %3, align 4, !dbg !5334
  %sub = sub i32 %2, %4, !dbg !5335
  %mul = mul i32 %sub, 1000, !dbg !5336
  %5 = load i32*, i32** %temp.addr, align 8, !dbg !5337
  store i32 %mul, i32* %5, align 4, !dbg !5338
  br label %if.end, !dbg !5339

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %ret, align 4, !dbg !5340
  ret i32 %6, !dbg !5341
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @read_temp_msr(i32* %temp) #2 !dbg !5342 {
entry:
  %retval = alloca i32, align 4
  %temp.addr = alloca i32*, align 8
  %cpu = alloca i32, align 4
  %eax = alloca i32, align 4
  %edx = alloca i32, align 4
  %err = alloca i32, align 4
  %curr_temp_off = alloca i64, align 8
  store i32* %temp, i32** %temp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %temp.addr, metadata !5345, metadata !DIExpression()), !dbg !5346
  call void @llvm.dbg.declare(metadata i32* %cpu, metadata !5347, metadata !DIExpression()), !dbg !5348
  call void @llvm.dbg.declare(metadata i32* %eax, metadata !5349, metadata !DIExpression()), !dbg !5350
  call void @llvm.dbg.declare(metadata i32* %edx, metadata !5351, metadata !DIExpression()), !dbg !5352
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5353, metadata !DIExpression()), !dbg !5354
  call void @llvm.dbg.declare(metadata i64* %curr_temp_off, metadata !5355, metadata !DIExpression()), !dbg !5356
  store i64 0, i64* %curr_temp_off, align 8, !dbg !5356
  %0 = load i32*, i32** %temp.addr, align 8, !dbg !5357
  store i32 0, i32* %0, align 4, !dbg !5358
  store i32 0, i32* %cpu, align 4, !dbg !5359
  br label %for.cond, !dbg !5359

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %cpu, align 4, !dbg !5361
  %cmp = icmp slt i32 %1, 1, !dbg !5361
  br i1 %cmp, label %for.body, label %for.end, !dbg !5359

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %cpu, align 4, !dbg !5363
  %call = call i32 @rdmsr_safe_on_cpu(i32 %2, i32 412, i32* %eax, i32* %edx) #8, !dbg !5365
  store i32 %call, i32* %err, align 4, !dbg !5366
  %3 = load i32, i32* %err, align 4, !dbg !5367
  %tobool = icmp ne i32 %3, 0, !dbg !5367
  br i1 %tobool, label %if.then, label %if.else, !dbg !5369

if.then:                                          ; preds = %for.body
  br label %err_ret, !dbg !5370

if.else:                                          ; preds = %for.body
  %4 = load i32, i32* %eax, align 4, !dbg !5371
  %and = and i32 %4, -2147483648, !dbg !5374
  %tobool1 = icmp ne i32 %and, 0, !dbg !5374
  br i1 %tobool1, label %if.then2, label %if.else10, !dbg !5375

if.then2:                                         ; preds = %if.else
  %5 = load i32, i32* %eax, align 4, !dbg !5376
  %shr = lshr i32 %5, 16, !dbg !5378
  %and3 = and i32 %shr, 127, !dbg !5379
  %conv = zext i32 %and3 to i64, !dbg !5380
  store i64 %conv, i64* %curr_temp_off, align 8, !dbg !5381
  %6 = load i32*, i32** %temp.addr, align 8, !dbg !5382
  %7 = load i32, i32* %6, align 4, !dbg !5384
  %tobool4 = icmp ne i32 %7, 0, !dbg !5384
  br i1 %tobool4, label %lor.lhs.false, label %if.then8, !dbg !5385

lor.lhs.false:                                    ; preds = %if.then2
  %8 = load i64, i64* %curr_temp_off, align 8, !dbg !5386
  %9 = load i32*, i32** %temp.addr, align 8, !dbg !5387
  %10 = load i32, i32* %9, align 4, !dbg !5388
  %conv5 = sext i32 %10 to i64, !dbg !5388
  %cmp6 = icmp ult i64 %8, %conv5, !dbg !5389
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !5390

if.then8:                                         ; preds = %lor.lhs.false, %if.then2
  %11 = load i64, i64* %curr_temp_off, align 8, !dbg !5391
  %conv9 = trunc i64 %11 to i32, !dbg !5391
  %12 = load i32*, i32** %temp.addr, align 8, !dbg !5392
  store i32 %conv9, i32* %12, align 4, !dbg !5393
  br label %if.end, !dbg !5394

if.end:                                           ; preds = %if.then8, %lor.lhs.false
  br label %if.end11, !dbg !5395

if.else10:                                        ; preds = %if.else
  store i32 -22, i32* %err, align 4, !dbg !5396
  br label %err_ret, !dbg !5398

if.end11:                                         ; preds = %if.end
  br label %if.end12

if.end12:                                         ; preds = %if.end11
  br label %for.inc, !dbg !5399

for.inc:                                          ; preds = %if.end12
  %13 = load i32, i32* %cpu, align 4, !dbg !5361
  %inc = add i32 %13, 1, !dbg !5361
  store i32 %inc, i32* %cpu, align 4, !dbg !5361
  br label %for.cond, !dbg !5361, !llvm.loop !5400

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !5402
  br label %return, !dbg !5402

err_ret:                                          ; preds = %if.else10, %if.then
  call void @llvm.dbg.label(metadata !5403), !dbg !5404
  %14 = load i32, i32* %err, align 4, !dbg !5405
  store i32 %14, i32* %retval, align 4, !dbg !5406
  br label %return, !dbg !5406

return:                                           ; preds = %err_ret, %for.end
  %15 = load i32, i32* %retval, align 4, !dbg !5407
  ret i32 %15, !dbg !5407
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rdmsr_safe_on_cpu(i32 %cpu, i32 %msr_no, i32* %l, i32* %h) #2 !dbg !5408 {
entry:
  %cpu.addr = alloca i32, align 4
  %msr_no.addr = alloca i32, align 4
  %l.addr = alloca i32*, align 8
  %h.addr = alloca i32*, align 8
  %_err = alloca i32, align 4
  %_l = alloca i64, align 8
  %tmp = alloca i32, align 4
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !5412, metadata !DIExpression()), !dbg !5413
  store i32 %msr_no, i32* %msr_no.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %msr_no.addr, metadata !5414, metadata !DIExpression()), !dbg !5415
  store i32* %l, i32** %l.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %l.addr, metadata !5416, metadata !DIExpression()), !dbg !5417
  store i32* %h, i32** %h.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %h.addr, metadata !5418, metadata !DIExpression()), !dbg !5419
  call void @llvm.dbg.declare(metadata i32* %_err, metadata !5420, metadata !DIExpression()), !dbg !5422
  call void @llvm.dbg.declare(metadata i64* %_l, metadata !5423, metadata !DIExpression()), !dbg !5422
  %0 = load i32, i32* %msr_no.addr, align 4, !dbg !5422
  %call = call i64 @paravirt_read_msr_safe(i32 %0, i32* %_err) #8, !dbg !5422
  store i64 %call, i64* %_l, align 8, !dbg !5422
  %1 = load i64, i64* %_l, align 8, !dbg !5422
  %conv = trunc i64 %1 to i32, !dbg !5422
  %2 = load i32*, i32** %l.addr, align 8, !dbg !5422
  store i32 %conv, i32* %2, align 4, !dbg !5422
  %3 = load i64, i64* %_l, align 8, !dbg !5422
  %shr = lshr i64 %3, 32, !dbg !5422
  %conv1 = trunc i64 %shr to i32, !dbg !5422
  %4 = load i32*, i32** %h.addr, align 8, !dbg !5422
  store i32 %conv1, i32* %4, align 4, !dbg !5422
  %5 = load i32, i32* %_err, align 4, !dbg !5422
  store i32 %5, i32* %tmp, align 4, !dbg !5422
  %6 = load i32, i32* %tmp, align 4, !dbg !5422
  ret i32 %6, !dbg !5424
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @int340x_thermal_zone_device_update(%struct.int34x_thermal_zone* %tzone, i32 %event) #2 !dbg !5425 {
entry:
  %tzone.addr = alloca %struct.int34x_thermal_zone*, align 8
  %event.addr = alloca i32, align 4
  store %struct.int34x_thermal_zone* %tzone, %struct.int34x_thermal_zone** %tzone.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.int34x_thermal_zone** %tzone.addr, metadata !5428, metadata !DIExpression()), !dbg !5429
  store i32 %event, i32* %event.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %event.addr, metadata !5430, metadata !DIExpression()), !dbg !5431
  %0 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %tzone.addr, align 8, !dbg !5432
  %zone = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %0, i32 0, i32 10, !dbg !5433
  %1 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %zone, align 8, !dbg !5433
  %2 = load i32, i32* %event.addr, align 4, !dbg !5434
  call void @thermal_zone_device_update(%struct.thermal_zone_device* %1, i32 %2) #8, !dbg !5435
  ret void, !dbg !5436
}

; Function Attrs: noredzone
declare dso_local void @thermal_zone_device_update(%struct.thermal_zone_device*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !5437 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5440, metadata !DIExpression()), !dbg !5441
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5442, metadata !DIExpression()), !dbg !5443
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5444
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5445
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !5446
  store i8* %0, i8** %driver_data, align 8, !dbg !5447
  ret void, !dbg !5448
}

; Function Attrs: noredzone
declare dso_local i32 @sysfs_create_file_ns(%struct.kobject*, %struct.attribute*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @tcc_offset_degree_celsius_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #2 !dbg !5449 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %val = alloca i64, align 8
  %err = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5450, metadata !DIExpression()), !dbg !5451
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5452, metadata !DIExpression()), !dbg !5453
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5454, metadata !DIExpression()), !dbg !5455
  call void @llvm.dbg.declare(metadata i64* %val, metadata !5456, metadata !DIExpression()), !dbg !5457
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5458, metadata !DIExpression()), !dbg !5459
  %call = call i32 @rdmsrl_safe(i32 418, i64* %val) #8, !dbg !5460
  store i32 %call, i32* %err, align 4, !dbg !5461
  %0 = load i32, i32* %err, align 4, !dbg !5462
  %tobool = icmp ne i32 %0, 0, !dbg !5462
  br i1 %tobool, label %if.then, label %if.end, !dbg !5464

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %err, align 4, !dbg !5465
  %conv = sext i32 %1 to i64, !dbg !5465
  store i64 %conv, i64* %retval, align 8, !dbg !5466
  br label %return, !dbg !5466

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %val, align 8, !dbg !5467
  %shr = lshr i64 %2, 24, !dbg !5468
  %and = and i64 %shr, 255, !dbg !5469
  store i64 %and, i64* %val, align 8, !dbg !5470
  %3 = load i8*, i8** %buf.addr, align 8, !dbg !5471
  %4 = load i64, i64* %val, align 8, !dbg !5472
  %conv1 = trunc i64 %4 to i32, !dbg !5473
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %conv1) #8, !dbg !5474
  %conv3 = sext i32 %call2 to i64, !dbg !5474
  store i64 %conv3, i64* %retval, align 8, !dbg !5475
  br label %return, !dbg !5475

return:                                           ; preds = %if.end, %if.then
  %5 = load i64, i64* %retval, align 8, !dbg !5476
  ret i64 %5, !dbg !5476
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @tcc_offset_degree_celsius_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %count) #2 !dbg !5477 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %tcc = alloca i32, align 4
  %err = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5478, metadata !DIExpression()), !dbg !5479
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5480, metadata !DIExpression()), !dbg !5481
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5482, metadata !DIExpression()), !dbg !5483
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5484, metadata !DIExpression()), !dbg !5485
  call void @llvm.dbg.declare(metadata i64* %val, metadata !5486, metadata !DIExpression()), !dbg !5487
  call void @llvm.dbg.declare(metadata i32* %tcc, metadata !5488, metadata !DIExpression()), !dbg !5489
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5490, metadata !DIExpression()), !dbg !5491
  %call = call i32 @rdmsrl_safe(i32 206, i64* %val) #8, !dbg !5492
  store i32 %call, i32* %err, align 4, !dbg !5493
  %0 = load i32, i32* %err, align 4, !dbg !5494
  %tobool = icmp ne i32 %0, 0, !dbg !5494
  br i1 %tobool, label %if.then, label %if.end, !dbg !5496

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %err, align 4, !dbg !5497
  %conv = sext i32 %1 to i64, !dbg !5497
  store i64 %conv, i64* %retval, align 8, !dbg !5498
  br label %return, !dbg !5498

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %val, align 8, !dbg !5499
  %and = and i64 %2, 1073741824, !dbg !5501
  %tobool1 = icmp ne i64 %and, 0, !dbg !5501
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !5502

if.then2:                                         ; preds = %if.end
  store i64 -13, i64* %retval, align 8, !dbg !5503
  br label %return, !dbg !5503

if.end3:                                          ; preds = %if.end
  %3 = load i8*, i8** %buf.addr, align 8, !dbg !5504
  %call4 = call i32 @kstrtoint(i8* %3, i32 0, i32* %tcc) #8, !dbg !5506
  %tobool5 = icmp ne i32 %call4, 0, !dbg !5506
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !5507

if.then6:                                         ; preds = %if.end3
  store i64 -22, i64* %retval, align 8, !dbg !5508
  br label %return, !dbg !5508

if.end7:                                          ; preds = %if.end3
  %4 = load i32, i32* %tcc, align 4, !dbg !5509
  %call8 = call i32 @tcc_offset_update(i32 %4) #8, !dbg !5510
  store i32 %call8, i32* %err, align 4, !dbg !5511
  %5 = load i32, i32* %err, align 4, !dbg !5512
  %tobool9 = icmp ne i32 %5, 0, !dbg !5512
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !5514

if.then10:                                        ; preds = %if.end7
  %6 = load i32, i32* %err, align 4, !dbg !5515
  %conv11 = sext i32 %6 to i64, !dbg !5515
  store i64 %conv11, i64* %retval, align 8, !dbg !5516
  br label %return, !dbg !5516

if.end12:                                         ; preds = %if.end7
  %7 = load i32, i32* %tcc, align 4, !dbg !5517
  store i32 %7, i32* @tcc_offset_save, align 4, !dbg !5518
  %8 = load i64, i64* %count.addr, align 8, !dbg !5519
  store i64 %8, i64* %retval, align 8, !dbg !5520
  br label %return, !dbg !5520

return:                                           ; preds = %if.end12, %if.then10, %if.then6, %if.then2, %if.then
  %9 = load i64, i64* %retval, align 8, !dbg !5521
  ret i64 %9, !dbg !5521
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rdmsrl_safe(i32 %msr, i64* %p) #2 !dbg !5522 {
entry:
  %msr.addr = alloca i32, align 4
  %p.addr = alloca i64*, align 8
  %err = alloca i32, align 4
  store i32 %msr, i32* %msr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %msr.addr, metadata !5526, metadata !DIExpression()), !dbg !5527
  store i64* %p, i64** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %p.addr, metadata !5528, metadata !DIExpression()), !dbg !5529
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5530, metadata !DIExpression()), !dbg !5531
  %0 = load i32, i32* %msr.addr, align 4, !dbg !5532
  %call = call i64 @paravirt_read_msr_safe(i32 %0, i32* %err) #8, !dbg !5533
  %1 = load i64*, i64** %p.addr, align 8, !dbg !5534
  store i64 %call, i64* %1, align 8, !dbg !5535
  %2 = load i32, i32* %err, align 4, !dbg !5536
  ret i32 %2, !dbg !5537
}

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: noredzone
declare dso_local i32 @kstrtoint(i8*, i32, i32*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tcc_offset_update(i32 %tcc) #2 !dbg !5538 {
entry:
  %retval = alloca i32, align 4
  %tcc.addr = alloca i32, align 4
  %val = alloca i64, align 8
  %err = alloca i32, align 4
  store i32 %tcc, i32* %tcc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %tcc.addr, metadata !5539, metadata !DIExpression()), !dbg !5540
  call void @llvm.dbg.declare(metadata i64* %val, metadata !5541, metadata !DIExpression()), !dbg !5542
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5543, metadata !DIExpression()), !dbg !5544
  %0 = load i32, i32* %tcc.addr, align 4, !dbg !5545
  %tobool = icmp ne i32 %0, 0, !dbg !5545
  br i1 %tobool, label %if.end, label %if.then, !dbg !5547

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5548
  br label %return, !dbg !5548

if.end:                                           ; preds = %entry
  %call = call i32 @rdmsrl_safe(i32 418, i64* %val) #8, !dbg !5549
  store i32 %call, i32* %err, align 4, !dbg !5550
  %1 = load i32, i32* %err, align 4, !dbg !5551
  %tobool1 = icmp ne i32 %1, 0, !dbg !5551
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !5553

if.then2:                                         ; preds = %if.end
  %2 = load i32, i32* %err, align 4, !dbg !5554
  store i32 %2, i32* %retval, align 4, !dbg !5555
  br label %return, !dbg !5555

if.end3:                                          ; preds = %if.end
  %3 = load i64, i64* %val, align 8, !dbg !5556
  %and = and i64 %3, -4278190081, !dbg !5556
  store i64 %and, i64* %val, align 8, !dbg !5556
  %4 = load i32, i32* %tcc.addr, align 4, !dbg !5557
  %and4 = and i32 %4, 255, !dbg !5558
  %shl = shl i32 %and4, 24, !dbg !5559
  %conv = sext i32 %shl to i64, !dbg !5560
  %5 = load i64, i64* %val, align 8, !dbg !5561
  %or = or i64 %5, %conv, !dbg !5561
  store i64 %or, i64* %val, align 8, !dbg !5561
  %6 = load i64, i64* %val, align 8, !dbg !5562
  %call5 = call i32 @wrmsrl_safe(i32 418, i64 %6) #8, !dbg !5563
  store i32 %call5, i32* %err, align 4, !dbg !5564
  %7 = load i32, i32* %err, align 4, !dbg !5565
  %tobool6 = icmp ne i32 %7, 0, !dbg !5565
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !5567

if.then7:                                         ; preds = %if.end3
  %8 = load i32, i32* %err, align 4, !dbg !5568
  store i32 %8, i32* %retval, align 4, !dbg !5569
  br label %return, !dbg !5569

if.end8:                                          ; preds = %if.end3
  store i32 0, i32* %retval, align 4, !dbg !5570
  br label %return, !dbg !5570

return:                                           ; preds = %if.end8, %if.then7, %if.then2, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !5571
  ret i32 %9, !dbg !5571
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @wrmsrl_safe(i32 %msr, i64 %val) #2 !dbg !5572 {
entry:
  %msr.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  store i32 %msr, i32* %msr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %msr.addr, metadata !5575, metadata !DIExpression()), !dbg !5576
  store i64 %val, i64* %val.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %val.addr, metadata !5577, metadata !DIExpression()), !dbg !5578
  %0 = load i32, i32* %msr.addr, align 4, !dbg !5579
  %1 = load i64, i64* %val.addr, align 8, !dbg !5579
  %conv = trunc i64 %1 to i32, !dbg !5579
  %2 = load i64, i64* %val.addr, align 8, !dbg !5579
  %shr = lshr i64 %2, 32, !dbg !5579
  %conv1 = trunc i64 %shr to i32, !dbg !5579
  %call = call i32 @paravirt_write_msr_safe(i32 %0, i32 %conv, i32 %conv1) #8, !dbg !5579
  ret i32 %call, !dbg !5580
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @paravirt_write_msr_safe(i32 %msr, i32 %low, i32 %high) #2 !dbg !5581 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  %__ret = alloca i32, align 4
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  %__mask = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store i32 %msr, i32* %msr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %msr.addr, metadata !5584, metadata !DIExpression()), !dbg !5585
  store i32 %low, i32* %low.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %low.addr, metadata !5586, metadata !DIExpression()), !dbg !5587
  store i32 %high, i32* %high.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %high.addr, metadata !5588, metadata !DIExpression()), !dbg !5589
  call void @llvm.dbg.declare(metadata i32* %__ret, metadata !5590, metadata !DIExpression()), !dbg !5592
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5593, metadata !DIExpression()), !dbg !5592
  %0 = load i64, i64* %__edi, align 8, !dbg !5592
  store i64 %0, i64* %__edi, align 8, !dbg !5592
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5594, metadata !DIExpression()), !dbg !5592
  %1 = load i64, i64* %__esi, align 8, !dbg !5592
  store i64 %1, i64* %__esi, align 8, !dbg !5592
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5595, metadata !DIExpression()), !dbg !5592
  %2 = load i64, i64* %__edx, align 8, !dbg !5592
  store i64 %2, i64* %__edx, align 8, !dbg !5592
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5596, metadata !DIExpression()), !dbg !5592
  %3 = load i64, i64* %__ecx, align 8, !dbg !5592
  store i64 %3, i64* %__ecx, align 8, !dbg !5592
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5597, metadata !DIExpression()), !dbg !5592
  %4 = load i64, i64* %__eax, align 8, !dbg !5592
  store i64 %4, i64* %__eax, align 8, !dbg !5592
  %5 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 26), align 8, !dbg !5592
  %6 = call i64 @llvm.read_register.i64(metadata !4745), !dbg !5598
  %7 = load i32, i32* %msr.addr, align 4, !dbg !5598
  %conv = zext i32 %7 to i64, !dbg !5598
  %8 = load i32, i32* %low.addr, align 4, !dbg !5598
  %conv1 = zext i32 %8 to i64, !dbg !5598
  %9 = load i32, i32* %high.addr, align 4, !dbg !5598
  %conv2 = zext i32 %9 to i64, !dbg !5598
  %10 = call { i64, i64, i64, i64, i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${7:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${6:c}\0A  .byte 772b-771b\0A  .short ${8:c}\0A.popsection\0A", "={di},={si},={dx},={cx},={ax},={rsp},i,i,i,{di},{si},{dx},5,~{memory},~{cc},~{r8},~{r9},~{r10},~{r11},~{dirflag},~{fpsr},~{flags}"(i64 29, i32 (i32, i32, i32)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 26), i32 511, i64 %conv, i64 %conv1, i64 %conv2, i64 %6) #7, !dbg !5598, !srcloc !5601
  %asmresult = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 0, !dbg !5598
  %asmresult3 = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 1, !dbg !5598
  %asmresult4 = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 2, !dbg !5598
  %asmresult5 = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 3, !dbg !5598
  %asmresult6 = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 4, !dbg !5598
  %asmresult7 = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 5, !dbg !5598
  store i64 %asmresult, i64* %__edi, align 8, !dbg !5598
  store i64 %asmresult3, i64* %__esi, align 8, !dbg !5598
  store i64 %asmresult4, i64* %__edx, align 8, !dbg !5598
  store i64 %asmresult5, i64* %__ecx, align 8, !dbg !5598
  store i64 %asmresult6, i64* %__eax, align 8, !dbg !5598
  call void @llvm.write_register.i64(metadata !4745, i64 %asmresult7), !dbg !5598
  %11 = load i64, i64* %__eax, align 8, !dbg !5598
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !5602, metadata !DIExpression()), !dbg !5604
  store i64 -1, i64* %__mask, align 8, !dbg !5604
  store i64 4294967295, i64* %__mask, align 8, !dbg !5604
  %12 = load i64, i64* %__mask, align 8, !dbg !5604
  store i64 %12, i64* %tmp, align 8, !dbg !5604
  %13 = load i64, i64* %tmp, align 8, !dbg !5604
  %and = and i64 %11, %13, !dbg !5598
  %conv8 = trunc i64 %and to i32, !dbg !5598
  store i32 %conv8, i32* %__ret, align 4, !dbg !5598
  %14 = load i32, i32* %__ret, align 4, !dbg !5592
  store i32 %14, i32* %tmp9, align 4, !dbg !5605
  %15 = load i32, i32* %tmp9, align 4, !dbg !5592
  ret i32 %15, !dbg !5606
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @power_limit_0_min_uw_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #2 !dbg !5607 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %proc_dev = alloca %struct.proc_thermal_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5608, metadata !DIExpression()), !dbg !5609
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5610, metadata !DIExpression()), !dbg !5609
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5611, metadata !DIExpression()), !dbg !5609
  call void @llvm.dbg.declare(metadata %struct.proc_thermal_device** %proc_dev, metadata !5612, metadata !DIExpression()), !dbg !5609
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5609
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #8, !dbg !5609
  %1 = bitcast i8* %call to %struct.proc_thermal_device*, !dbg !5609
  store %struct.proc_thermal_device* %1, %struct.proc_thermal_device** %proc_dev, align 8, !dbg !5609
  %2 = load i32, i32* @proc_thermal_emum_mode, align 4, !dbg !5613
  %cmp = icmp eq i32 %2, 0, !dbg !5613
  br i1 %cmp, label %if.then, label %if.end, !dbg !5609

if.then:                                          ; preds = %entry
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5615
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %3, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.11, i64 0, i64 0)) #9, !dbg !5615
  store i64 0, i64* %retval, align 8, !dbg !5615
  br label %return, !dbg !5615

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %buf.addr, align 8, !dbg !5609
  %5 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %proc_dev, align 8, !dbg !5609
  %power_limits = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %5, i32 0, i32 2, !dbg !5609
  %arrayidx = getelementptr [2 x %struct.power_config], [2 x %struct.power_config]* %power_limits, i64 0, i64 0, !dbg !5609
  %min_uw = getelementptr inbounds %struct.power_config, %struct.power_config* %arrayidx, i32 0, i32 1, !dbg !5609
  %6 = load i32, i32* %min_uw, align 4, !dbg !5609
  %conv = zext i32 %6 to i64, !dbg !5609
  %mul = mul i64 %conv, 1000, !dbg !5609
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i64 %mul) #8, !dbg !5609
  %conv2 = sext i32 %call1 to i64, !dbg !5609
  store i64 %conv2, i64* %retval, align 8, !dbg !5609
  br label %return, !dbg !5609

return:                                           ; preds = %if.end, %if.then
  %7 = load i64, i64* %retval, align 8, !dbg !5609
  ret i64 %7, !dbg !5609
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !5617 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5620, metadata !DIExpression()), !dbg !5621
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5622
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !5623
  %1 = load i8*, i8** %driver_data, align 8, !dbg !5623
  ret i8* %1, !dbg !5624
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @power_limit_1_min_uw_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #2 !dbg !5625 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %proc_dev = alloca %struct.proc_thermal_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5626, metadata !DIExpression()), !dbg !5627
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5628, metadata !DIExpression()), !dbg !5627
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5629, metadata !DIExpression()), !dbg !5627
  call void @llvm.dbg.declare(metadata %struct.proc_thermal_device** %proc_dev, metadata !5630, metadata !DIExpression()), !dbg !5627
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5627
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #8, !dbg !5627
  %1 = bitcast i8* %call to %struct.proc_thermal_device*, !dbg !5627
  store %struct.proc_thermal_device* %1, %struct.proc_thermal_device** %proc_dev, align 8, !dbg !5627
  %2 = load i32, i32* @proc_thermal_emum_mode, align 4, !dbg !5631
  %cmp = icmp eq i32 %2, 0, !dbg !5631
  br i1 %cmp, label %if.then, label %if.end, !dbg !5627

if.then:                                          ; preds = %entry
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5633
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %3, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.11, i64 0, i64 0)) #9, !dbg !5633
  store i64 0, i64* %retval, align 8, !dbg !5633
  br label %return, !dbg !5633

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %buf.addr, align 8, !dbg !5627
  %5 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %proc_dev, align 8, !dbg !5627
  %power_limits = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %5, i32 0, i32 2, !dbg !5627
  %arrayidx = getelementptr [2 x %struct.power_config], [2 x %struct.power_config]* %power_limits, i64 0, i64 1, !dbg !5627
  %min_uw = getelementptr inbounds %struct.power_config, %struct.power_config* %arrayidx, i32 0, i32 1, !dbg !5627
  %6 = load i32, i32* %min_uw, align 4, !dbg !5627
  %conv = zext i32 %6 to i64, !dbg !5627
  %mul = mul i64 %conv, 1000, !dbg !5627
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i64 %mul) #8, !dbg !5627
  %conv2 = sext i32 %call1 to i64, !dbg !5627
  store i64 %conv2, i64* %retval, align 8, !dbg !5627
  br label %return, !dbg !5627

return:                                           ; preds = %if.end, %if.then
  %7 = load i64, i64* %retval, align 8, !dbg !5627
  ret i64 %7, !dbg !5627
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @power_limit_0_max_uw_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #2 !dbg !5635 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %proc_dev = alloca %struct.proc_thermal_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5636, metadata !DIExpression()), !dbg !5637
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5638, metadata !DIExpression()), !dbg !5637
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5639, metadata !DIExpression()), !dbg !5637
  call void @llvm.dbg.declare(metadata %struct.proc_thermal_device** %proc_dev, metadata !5640, metadata !DIExpression()), !dbg !5637
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5637
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #8, !dbg !5637
  %1 = bitcast i8* %call to %struct.proc_thermal_device*, !dbg !5637
  store %struct.proc_thermal_device* %1, %struct.proc_thermal_device** %proc_dev, align 8, !dbg !5637
  %2 = load i32, i32* @proc_thermal_emum_mode, align 4, !dbg !5641
  %cmp = icmp eq i32 %2, 0, !dbg !5641
  br i1 %cmp, label %if.then, label %if.end, !dbg !5637

if.then:                                          ; preds = %entry
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5643
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %3, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.11, i64 0, i64 0)) #9, !dbg !5643
  store i64 0, i64* %retval, align 8, !dbg !5643
  br label %return, !dbg !5643

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %buf.addr, align 8, !dbg !5637
  %5 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %proc_dev, align 8, !dbg !5637
  %power_limits = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %5, i32 0, i32 2, !dbg !5637
  %arrayidx = getelementptr [2 x %struct.power_config], [2 x %struct.power_config]* %power_limits, i64 0, i64 0, !dbg !5637
  %max_uw = getelementptr inbounds %struct.power_config, %struct.power_config* %arrayidx, i32 0, i32 2, !dbg !5637
  %6 = load i32, i32* %max_uw, align 8, !dbg !5637
  %conv = zext i32 %6 to i64, !dbg !5637
  %mul = mul i64 %conv, 1000, !dbg !5637
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i64 %mul) #8, !dbg !5637
  %conv2 = sext i32 %call1 to i64, !dbg !5637
  store i64 %conv2, i64* %retval, align 8, !dbg !5637
  br label %return, !dbg !5637

return:                                           ; preds = %if.end, %if.then
  %7 = load i64, i64* %retval, align 8, !dbg !5637
  ret i64 %7, !dbg !5637
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @power_limit_1_max_uw_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #2 !dbg !5645 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %proc_dev = alloca %struct.proc_thermal_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5646, metadata !DIExpression()), !dbg !5647
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5648, metadata !DIExpression()), !dbg !5647
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5649, metadata !DIExpression()), !dbg !5647
  call void @llvm.dbg.declare(metadata %struct.proc_thermal_device** %proc_dev, metadata !5650, metadata !DIExpression()), !dbg !5647
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5647
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #8, !dbg !5647
  %1 = bitcast i8* %call to %struct.proc_thermal_device*, !dbg !5647
  store %struct.proc_thermal_device* %1, %struct.proc_thermal_device** %proc_dev, align 8, !dbg !5647
  %2 = load i32, i32* @proc_thermal_emum_mode, align 4, !dbg !5651
  %cmp = icmp eq i32 %2, 0, !dbg !5651
  br i1 %cmp, label %if.then, label %if.end, !dbg !5647

if.then:                                          ; preds = %entry
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5653
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %3, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.11, i64 0, i64 0)) #9, !dbg !5653
  store i64 0, i64* %retval, align 8, !dbg !5653
  br label %return, !dbg !5653

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %buf.addr, align 8, !dbg !5647
  %5 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %proc_dev, align 8, !dbg !5647
  %power_limits = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %5, i32 0, i32 2, !dbg !5647
  %arrayidx = getelementptr [2 x %struct.power_config], [2 x %struct.power_config]* %power_limits, i64 0, i64 1, !dbg !5647
  %max_uw = getelementptr inbounds %struct.power_config, %struct.power_config* %arrayidx, i32 0, i32 2, !dbg !5647
  %6 = load i32, i32* %max_uw, align 8, !dbg !5647
  %conv = zext i32 %6 to i64, !dbg !5647
  %mul = mul i64 %conv, 1000, !dbg !5647
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i64 %mul) #8, !dbg !5647
  %conv2 = sext i32 %call1 to i64, !dbg !5647
  store i64 %conv2, i64* %retval, align 8, !dbg !5647
  br label %return, !dbg !5647

return:                                           ; preds = %if.end, %if.then
  %7 = load i64, i64* %retval, align 8, !dbg !5647
  ret i64 %7, !dbg !5647
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @power_limit_0_step_uw_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #2 !dbg !5655 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %proc_dev = alloca %struct.proc_thermal_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5656, metadata !DIExpression()), !dbg !5657
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5658, metadata !DIExpression()), !dbg !5657
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5659, metadata !DIExpression()), !dbg !5657
  call void @llvm.dbg.declare(metadata %struct.proc_thermal_device** %proc_dev, metadata !5660, metadata !DIExpression()), !dbg !5657
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5657
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #8, !dbg !5657
  %1 = bitcast i8* %call to %struct.proc_thermal_device*, !dbg !5657
  store %struct.proc_thermal_device* %1, %struct.proc_thermal_device** %proc_dev, align 8, !dbg !5657
  %2 = load i32, i32* @proc_thermal_emum_mode, align 4, !dbg !5661
  %cmp = icmp eq i32 %2, 0, !dbg !5661
  br i1 %cmp, label %if.then, label %if.end, !dbg !5657

if.then:                                          ; preds = %entry
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5663
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %3, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.11, i64 0, i64 0)) #9, !dbg !5663
  store i64 0, i64* %retval, align 8, !dbg !5663
  br label %return, !dbg !5663

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %buf.addr, align 8, !dbg !5657
  %5 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %proc_dev, align 8, !dbg !5657
  %power_limits = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %5, i32 0, i32 2, !dbg !5657
  %arrayidx = getelementptr [2 x %struct.power_config], [2 x %struct.power_config]* %power_limits, i64 0, i64 0, !dbg !5657
  %step_uw = getelementptr inbounds %struct.power_config, %struct.power_config* %arrayidx, i32 0, i32 5, !dbg !5657
  %6 = load i32, i32* %step_uw, align 4, !dbg !5657
  %conv = zext i32 %6 to i64, !dbg !5657
  %mul = mul i64 %conv, 1000, !dbg !5657
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i64 %mul) #8, !dbg !5657
  %conv2 = sext i32 %call1 to i64, !dbg !5657
  store i64 %conv2, i64* %retval, align 8, !dbg !5657
  br label %return, !dbg !5657

return:                                           ; preds = %if.end, %if.then
  %7 = load i64, i64* %retval, align 8, !dbg !5657
  ret i64 %7, !dbg !5657
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @power_limit_1_step_uw_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #2 !dbg !5665 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %proc_dev = alloca %struct.proc_thermal_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5666, metadata !DIExpression()), !dbg !5667
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5668, metadata !DIExpression()), !dbg !5667
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5669, metadata !DIExpression()), !dbg !5667
  call void @llvm.dbg.declare(metadata %struct.proc_thermal_device** %proc_dev, metadata !5670, metadata !DIExpression()), !dbg !5667
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5667
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #8, !dbg !5667
  %1 = bitcast i8* %call to %struct.proc_thermal_device*, !dbg !5667
  store %struct.proc_thermal_device* %1, %struct.proc_thermal_device** %proc_dev, align 8, !dbg !5667
  %2 = load i32, i32* @proc_thermal_emum_mode, align 4, !dbg !5671
  %cmp = icmp eq i32 %2, 0, !dbg !5671
  br i1 %cmp, label %if.then, label %if.end, !dbg !5667

if.then:                                          ; preds = %entry
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5673
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %3, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.11, i64 0, i64 0)) #9, !dbg !5673
  store i64 0, i64* %retval, align 8, !dbg !5673
  br label %return, !dbg !5673

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %buf.addr, align 8, !dbg !5667
  %5 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %proc_dev, align 8, !dbg !5667
  %power_limits = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %5, i32 0, i32 2, !dbg !5667
  %arrayidx = getelementptr [2 x %struct.power_config], [2 x %struct.power_config]* %power_limits, i64 0, i64 1, !dbg !5667
  %step_uw = getelementptr inbounds %struct.power_config, %struct.power_config* %arrayidx, i32 0, i32 5, !dbg !5667
  %6 = load i32, i32* %step_uw, align 4, !dbg !5667
  %conv = zext i32 %6 to i64, !dbg !5667
  %mul = mul i64 %conv, 1000, !dbg !5667
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i64 %mul) #8, !dbg !5667
  %conv2 = sext i32 %call1 to i64, !dbg !5667
  store i64 %conv2, i64* %retval, align 8, !dbg !5667
  br label %return, !dbg !5667

return:                                           ; preds = %if.end, %if.then
  %7 = load i64, i64* %retval, align 8, !dbg !5667
  ret i64 %7, !dbg !5667
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @power_limit_0_tmin_us_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #2 !dbg !5675 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %proc_dev = alloca %struct.proc_thermal_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5676, metadata !DIExpression()), !dbg !5677
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5678, metadata !DIExpression()), !dbg !5677
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5679, metadata !DIExpression()), !dbg !5677
  call void @llvm.dbg.declare(metadata %struct.proc_thermal_device** %proc_dev, metadata !5680, metadata !DIExpression()), !dbg !5677
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5677
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #8, !dbg !5677
  %1 = bitcast i8* %call to %struct.proc_thermal_device*, !dbg !5677
  store %struct.proc_thermal_device* %1, %struct.proc_thermal_device** %proc_dev, align 8, !dbg !5677
  %2 = load i32, i32* @proc_thermal_emum_mode, align 4, !dbg !5681
  %cmp = icmp eq i32 %2, 0, !dbg !5681
  br i1 %cmp, label %if.then, label %if.end, !dbg !5677

if.then:                                          ; preds = %entry
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5683
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %3, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.11, i64 0, i64 0)) #9, !dbg !5683
  store i64 0, i64* %retval, align 8, !dbg !5683
  br label %return, !dbg !5683

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %buf.addr, align 8, !dbg !5677
  %5 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %proc_dev, align 8, !dbg !5677
  %power_limits = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %5, i32 0, i32 2, !dbg !5677
  %arrayidx = getelementptr [2 x %struct.power_config], [2 x %struct.power_config]* %power_limits, i64 0, i64 0, !dbg !5677
  %tmin_us = getelementptr inbounds %struct.power_config, %struct.power_config* %arrayidx, i32 0, i32 3, !dbg !5677
  %6 = load i32, i32* %tmin_us, align 4, !dbg !5677
  %conv = zext i32 %6 to i64, !dbg !5677
  %mul = mul i64 %conv, 1000, !dbg !5677
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i64 %mul) #8, !dbg !5677
  %conv2 = sext i32 %call1 to i64, !dbg !5677
  store i64 %conv2, i64* %retval, align 8, !dbg !5677
  br label %return, !dbg !5677

return:                                           ; preds = %if.end, %if.then
  %7 = load i64, i64* %retval, align 8, !dbg !5677
  ret i64 %7, !dbg !5677
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @power_limit_1_tmin_us_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #2 !dbg !5685 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %proc_dev = alloca %struct.proc_thermal_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5686, metadata !DIExpression()), !dbg !5687
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5688, metadata !DIExpression()), !dbg !5687
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5689, metadata !DIExpression()), !dbg !5687
  call void @llvm.dbg.declare(metadata %struct.proc_thermal_device** %proc_dev, metadata !5690, metadata !DIExpression()), !dbg !5687
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5687
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #8, !dbg !5687
  %1 = bitcast i8* %call to %struct.proc_thermal_device*, !dbg !5687
  store %struct.proc_thermal_device* %1, %struct.proc_thermal_device** %proc_dev, align 8, !dbg !5687
  %2 = load i32, i32* @proc_thermal_emum_mode, align 4, !dbg !5691
  %cmp = icmp eq i32 %2, 0, !dbg !5691
  br i1 %cmp, label %if.then, label %if.end, !dbg !5687

if.then:                                          ; preds = %entry
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5693
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %3, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.11, i64 0, i64 0)) #9, !dbg !5693
  store i64 0, i64* %retval, align 8, !dbg !5693
  br label %return, !dbg !5693

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %buf.addr, align 8, !dbg !5687
  %5 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %proc_dev, align 8, !dbg !5687
  %power_limits = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %5, i32 0, i32 2, !dbg !5687
  %arrayidx = getelementptr [2 x %struct.power_config], [2 x %struct.power_config]* %power_limits, i64 0, i64 1, !dbg !5687
  %tmin_us = getelementptr inbounds %struct.power_config, %struct.power_config* %arrayidx, i32 0, i32 3, !dbg !5687
  %6 = load i32, i32* %tmin_us, align 4, !dbg !5687
  %conv = zext i32 %6 to i64, !dbg !5687
  %mul = mul i64 %conv, 1000, !dbg !5687
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i64 %mul) #8, !dbg !5687
  %conv2 = sext i32 %call1 to i64, !dbg !5687
  store i64 %conv2, i64* %retval, align 8, !dbg !5687
  br label %return, !dbg !5687

return:                                           ; preds = %if.end, %if.then
  %7 = load i64, i64* %retval, align 8, !dbg !5687
  ret i64 %7, !dbg !5687
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @power_limit_0_tmax_us_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #2 !dbg !5695 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %proc_dev = alloca %struct.proc_thermal_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5696, metadata !DIExpression()), !dbg !5697
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5698, metadata !DIExpression()), !dbg !5697
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5699, metadata !DIExpression()), !dbg !5697
  call void @llvm.dbg.declare(metadata %struct.proc_thermal_device** %proc_dev, metadata !5700, metadata !DIExpression()), !dbg !5697
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5697
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #8, !dbg !5697
  %1 = bitcast i8* %call to %struct.proc_thermal_device*, !dbg !5697
  store %struct.proc_thermal_device* %1, %struct.proc_thermal_device** %proc_dev, align 8, !dbg !5697
  %2 = load i32, i32* @proc_thermal_emum_mode, align 4, !dbg !5701
  %cmp = icmp eq i32 %2, 0, !dbg !5701
  br i1 %cmp, label %if.then, label %if.end, !dbg !5697

if.then:                                          ; preds = %entry
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5703
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %3, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.11, i64 0, i64 0)) #9, !dbg !5703
  store i64 0, i64* %retval, align 8, !dbg !5703
  br label %return, !dbg !5703

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %buf.addr, align 8, !dbg !5697
  %5 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %proc_dev, align 8, !dbg !5697
  %power_limits = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %5, i32 0, i32 2, !dbg !5697
  %arrayidx = getelementptr [2 x %struct.power_config], [2 x %struct.power_config]* %power_limits, i64 0, i64 0, !dbg !5697
  %tmax_us = getelementptr inbounds %struct.power_config, %struct.power_config* %arrayidx, i32 0, i32 4, !dbg !5697
  %6 = load i32, i32* %tmax_us, align 8, !dbg !5697
  %conv = zext i32 %6 to i64, !dbg !5697
  %mul = mul i64 %conv, 1000, !dbg !5697
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i64 %mul) #8, !dbg !5697
  %conv2 = sext i32 %call1 to i64, !dbg !5697
  store i64 %conv2, i64* %retval, align 8, !dbg !5697
  br label %return, !dbg !5697

return:                                           ; preds = %if.end, %if.then
  %7 = load i64, i64* %retval, align 8, !dbg !5697
  ret i64 %7, !dbg !5697
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @power_limit_1_tmax_us_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #2 !dbg !5705 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %proc_dev = alloca %struct.proc_thermal_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5706, metadata !DIExpression()), !dbg !5707
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5708, metadata !DIExpression()), !dbg !5707
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5709, metadata !DIExpression()), !dbg !5707
  call void @llvm.dbg.declare(metadata %struct.proc_thermal_device** %proc_dev, metadata !5710, metadata !DIExpression()), !dbg !5707
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5707
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #8, !dbg !5707
  %1 = bitcast i8* %call to %struct.proc_thermal_device*, !dbg !5707
  store %struct.proc_thermal_device* %1, %struct.proc_thermal_device** %proc_dev, align 8, !dbg !5707
  %2 = load i32, i32* @proc_thermal_emum_mode, align 4, !dbg !5711
  %cmp = icmp eq i32 %2, 0, !dbg !5711
  br i1 %cmp, label %if.then, label %if.end, !dbg !5707

if.then:                                          ; preds = %entry
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5713
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %3, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.11, i64 0, i64 0)) #9, !dbg !5713
  store i64 0, i64* %retval, align 8, !dbg !5713
  br label %return, !dbg !5713

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %buf.addr, align 8, !dbg !5707
  %5 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %proc_dev, align 8, !dbg !5707
  %power_limits = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %5, i32 0, i32 2, !dbg !5707
  %arrayidx = getelementptr [2 x %struct.power_config], [2 x %struct.power_config]* %power_limits, i64 0, i64 1, !dbg !5707
  %tmax_us = getelementptr inbounds %struct.power_config, %struct.power_config* %arrayidx, i32 0, i32 4, !dbg !5707
  %6 = load i32, i32* %tmax_us, align 8, !dbg !5707
  %conv = zext i32 %6 to i64, !dbg !5707
  %mul = mul i64 %conv, 1000, !dbg !5707
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i64 %mul) #8, !dbg !5707
  %conv2 = sext i32 %call1 to i64, !dbg !5707
  store i64 %conv2, i64* %retval, align 8, !dbg !5707
  br label %return, !dbg !5707

return:                                           ; preds = %if.end, %if.then
  %7 = load i64, i64* %retval, align 8, !dbg !5707
  ret i64 %7, !dbg !5707
}

; Function Attrs: noredzone
declare dso_local void @sysfs_remove_file_ns(%struct.kobject*, %struct.attribute*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @proc_thermal_remove(%struct.proc_thermal_device* %proc_priv) #2 !dbg !5715 {
entry:
  %proc_priv.addr = alloca %struct.proc_thermal_device*, align 8
  store %struct.proc_thermal_device* %proc_priv, %struct.proc_thermal_device** %proc_priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.proc_thermal_device** %proc_priv.addr, metadata !5718, metadata !DIExpression()), !dbg !5719
  %0 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %proc_priv.addr, align 8, !dbg !5720
  %adev = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %0, i32 0, i32 1, !dbg !5721
  %1 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !5721
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %1, i32 0, i32 1, !dbg !5722
  %2 = load i8*, i8** %handle, align 8, !dbg !5722
  %call = call i32 @acpi_remove_notify_handler(i8* %2, i32 2, void (i8*, i32, i8*)* @proc_thermal_notify) #8, !dbg !5723
  %3 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %proc_priv.addr, align 8, !dbg !5724
  %int340x_zone = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %3, i32 0, i32 3, !dbg !5725
  %4 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %int340x_zone, align 8, !dbg !5725
  call void @int340x_thermal_zone_remove(%struct.int34x_thermal_zone* %4) #8, !dbg !5726
  %5 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %proc_priv.addr, align 8, !dbg !5727
  %dev = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %5, i32 0, i32 0, !dbg !5728
  %6 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5728
  %kobj = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 0, !dbg !5729
  call void @sysfs_remove_file(%struct.kobject* %kobj, %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_tcc_offset_degree_celsius, i32 0, i32 0)) #8, !dbg !5730
  %7 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %proc_priv.addr, align 8, !dbg !5731
  %dev1 = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %7, i32 0, i32 0, !dbg !5732
  %8 = load %struct.device*, %struct.device** %dev1, align 8, !dbg !5732
  %kobj2 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0, !dbg !5733
  call void @sysfs_remove_group(%struct.kobject* %kobj2, %struct.attribute_group* @power_limit_attribute_group) #8, !dbg !5734
  ret void, !dbg !5735
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @platform_get_drvdata(%struct.platform_device* %pdev) #2 !dbg !5736 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !5741, metadata !DIExpression()), !dbg !5742
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !5743
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !5744
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #8, !dbg !5745
  ret i8* %call, !dbg !5746
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_remove_notify_handler(i8*, i32, void (i8*, i32, i8*)*) #1

; Function Attrs: noredzone
declare dso_local void @sysfs_remove_group(%struct.kobject*, %struct.attribute_group*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @proc_thermal_resume(%struct.device* %dev) #2 !dbg !5747 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %proc_dev = alloca %struct.proc_thermal_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5748, metadata !DIExpression()), !dbg !5749
  call void @llvm.dbg.declare(metadata %struct.proc_thermal_device** %proc_dev, metadata !5750, metadata !DIExpression()), !dbg !5751
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5752
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #8, !dbg !5753
  %1 = bitcast i8* %call to %struct.proc_thermal_device*, !dbg !5753
  store %struct.proc_thermal_device* %1, %struct.proc_thermal_device** %proc_dev, align 8, !dbg !5754
  %2 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %proc_dev, align 8, !dbg !5755
  %call1 = call i32 @proc_thermal_read_ppcc(%struct.proc_thermal_device* %2) #8, !dbg !5756
  %3 = load i32, i32* @tcc_offset_save, align 4, !dbg !5757
  %call2 = call i32 @tcc_offset_update(i32 %3) #8, !dbg !5758
  ret i32 0, !dbg !5759
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @proc_thermal_pci_probe(%struct.pci_dev* %pdev, %struct.pci_device_id* %id) #2 !dbg !5760 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %id.addr = alloca %struct.pci_device_id*, align 8
  %proc_priv = alloca %struct.proc_thermal_device*, align 8
  %ret = alloca i32, align 4
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !5761, metadata !DIExpression()), !dbg !5762
  store %struct.pci_device_id* %id, %struct.pci_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_device_id** %id.addr, metadata !5763, metadata !DIExpression()), !dbg !5764
  call void @llvm.dbg.declare(metadata %struct.proc_thermal_device** %proc_priv, metadata !5765, metadata !DIExpression()), !dbg !5766
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5767, metadata !DIExpression()), !dbg !5768
  %0 = load i32, i32* @proc_thermal_emum_mode, align 4, !dbg !5769
  %cmp = icmp eq i32 %0, 2, !dbg !5771
  br i1 %cmp, label %if.then, label %if.end, !dbg !5772

if.then:                                          ; preds = %entry
  %1 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5773
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %1, i32 0, i32 41, !dbg !5773
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.23, i64 0, i64 0)) #9, !dbg !5773
  store i32 -19, i32* %retval, align 4, !dbg !5775
  br label %return, !dbg !5775

if.end:                                           ; preds = %entry
  %2 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5776
  %call = call i32 @pcim_enable_device(%struct.pci_dev* %2) #8, !dbg !5777
  store i32 %call, i32* %ret, align 4, !dbg !5778
  %3 = load i32, i32* %ret, align 4, !dbg !5779
  %cmp1 = icmp slt i32 %3, 0, !dbg !5781
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !5782

if.then2:                                         ; preds = %if.end
  %4 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5783
  %dev3 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 41, !dbg !5783
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i64 0, i64 0)) #9, !dbg !5783
  %5 = load i32, i32* %ret, align 4, !dbg !5785
  store i32 %5, i32* %retval, align 4, !dbg !5786
  br label %return, !dbg !5786

if.end4:                                          ; preds = %if.end
  %6 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5787
  %dev5 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 41, !dbg !5788
  %call6 = call i32 @proc_thermal_add(%struct.device* %dev5, %struct.proc_thermal_device** %proc_priv) #8, !dbg !5789
  store i32 %call6, i32* %ret, align 4, !dbg !5790
  %7 = load i32, i32* %ret, align 4, !dbg !5791
  %tobool = icmp ne i32 %7, 0, !dbg !5791
  br i1 %tobool, label %if.then7, label %if.end8, !dbg !5793

if.then7:                                         ; preds = %if.end4
  %8 = load i32, i32* %ret, align 4, !dbg !5794
  store i32 %8, i32* %retval, align 4, !dbg !5795
  br label %return, !dbg !5795

if.end8:                                          ; preds = %if.end4
  %9 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5796
  %10 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %proc_priv, align 8, !dbg !5797
  %11 = load %struct.pci_device_id*, %struct.pci_device_id** %id.addr, align 8, !dbg !5798
  %driver_data = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %11, i32 0, i32 6, !dbg !5799
  %12 = load i64, i64* %driver_data, align 8, !dbg !5799
  %13 = inttoptr i64 %12 to %struct.rapl_mmio_regs*, !dbg !5800
  %call9 = call i32 @proc_thermal_rapl_add(%struct.pci_dev* %9, %struct.proc_thermal_device* %10, %struct.rapl_mmio_regs* %13) #8, !dbg !5801
  store i32 %call9, i32* %ret, align 4, !dbg !5802
  %14 = load i32, i32* %ret, align 4, !dbg !5803
  %tobool10 = icmp ne i32 %14, 0, !dbg !5803
  br i1 %tobool10, label %if.then11, label %if.end13, !dbg !5805

if.then11:                                        ; preds = %if.end8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5806
  %dev12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 41, !dbg !5806
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev12, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.25, i64 0, i64 0)) #9, !dbg !5806
  %16 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %proc_priv, align 8, !dbg !5808
  call void @proc_thermal_remove(%struct.proc_thermal_device* %16) #8, !dbg !5809
  %17 = load i32, i32* %ret, align 4, !dbg !5810
  store i32 %17, i32* %retval, align 4, !dbg !5811
  br label %return, !dbg !5811

if.end13:                                         ; preds = %if.end8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5812
  %19 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %proc_priv, align 8, !dbg !5813
  %20 = bitcast %struct.proc_thermal_device* %19 to i8*, !dbg !5813
  call void @pci_set_drvdata(%struct.pci_dev* %18, i8* %20) #8, !dbg !5814
  store i32 1, i32* @proc_thermal_emum_mode, align 4, !dbg !5815
  %21 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5816
  %device = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 8, !dbg !5818
  %22 = load i16, i16* %device, align 2, !dbg !5818
  %conv = zext i16 %22 to i32, !dbg !5816
  %cmp14 = icmp eq i32 %conv, 8924, !dbg !5819
  br i1 %cmp14, label %if.then16, label %if.end35, !dbg !5820

if.then16:                                        ; preds = %if.end13
  %call17 = call %struct.intel_soc_dts_sensors* @intel_soc_dts_iosf_init(i32 2, i32 2, i32 0) #8, !dbg !5821
  %23 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %proc_priv, align 8, !dbg !5823
  %soc_dts = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %23, i32 0, i32 4, !dbg !5824
  store %struct.intel_soc_dts_sensors* %call17, %struct.intel_soc_dts_sensors** %soc_dts, align 8, !dbg !5825
  %24 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %proc_priv, align 8, !dbg !5826
  %soc_dts18 = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %24, i32 0, i32 4, !dbg !5828
  %25 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %soc_dts18, align 8, !dbg !5828
  %26 = bitcast %struct.intel_soc_dts_sensors* %25 to i8*, !dbg !5826
  %call19 = call zeroext i1 @IS_ERR(i8* %26) #8, !dbg !5829
  br i1 %call19, label %if.else, label %land.lhs.true, !dbg !5830

land.lhs.true:                                    ; preds = %if.then16
  %27 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5831
  %irq = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 43, !dbg !5832
  %28 = load i32, i32* %irq, align 4, !dbg !5832
  %tobool20 = icmp ne i32 %28, 0, !dbg !5831
  br i1 %tobool20, label %if.then21, label %if.else, !dbg !5833

if.then21:                                        ; preds = %land.lhs.true
  %29 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5834
  %call22 = call i32 @pci_enable_msi(%struct.pci_dev* %29) #8, !dbg !5836
  store i32 %call22, i32* %ret, align 4, !dbg !5837
  %30 = load i32, i32* %ret, align 4, !dbg !5838
  %tobool23 = icmp ne i32 %30, 0, !dbg !5838
  br i1 %tobool23, label %if.end32, label %if.then24, !dbg !5840

if.then24:                                        ; preds = %if.then21
  %31 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5841
  %irq25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 43, !dbg !5843
  %32 = load i32, i32* %irq25, align 4, !dbg !5843
  %33 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5844
  %34 = bitcast %struct.pci_dev* %33 to i8*, !dbg !5844
  %call26 = call i32 @request_threaded_irq(i32 %32, i32 (i32, i8*)* null, i32 (i32, i8*)* @proc_thermal_pci_msi_irq, i64 8192, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), i8* %34) #8, !dbg !5845
  store i32 %call26, i32* %ret, align 4, !dbg !5846
  %35 = load i32, i32* %ret, align 4, !dbg !5847
  %tobool27 = icmp ne i32 %35, 0, !dbg !5847
  br i1 %tobool27, label %if.then28, label %if.end31, !dbg !5849

if.then28:                                        ; preds = %if.then24
  %36 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %proc_priv, align 8, !dbg !5850
  %soc_dts29 = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %36, i32 0, i32 4, !dbg !5852
  %37 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %soc_dts29, align 8, !dbg !5852
  call void @intel_soc_dts_iosf_exit(%struct.intel_soc_dts_sensors* %37) #8, !dbg !5853
  %38 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5854
  call void @pci_disable_msi(%struct.pci_dev* %38) #8, !dbg !5855
  %39 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %proc_priv, align 8, !dbg !5856
  %soc_dts30 = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %39, i32 0, i32 4, !dbg !5857
  store %struct.intel_soc_dts_sensors* null, %struct.intel_soc_dts_sensors** %soc_dts30, align 8, !dbg !5858
  br label %if.end31, !dbg !5859

if.end31:                                         ; preds = %if.then28, %if.then24
  br label %if.end32, !dbg !5860

if.end32:                                         ; preds = %if.end31, %if.then21
  br label %if.end34, !dbg !5861

if.else:                                          ; preds = %land.lhs.true, %if.then16
  %40 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5862
  %dev33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 41, !dbg !5862
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0)) #9, !dbg !5862
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.end32
  br label %if.end35, !dbg !5863

if.end35:                                         ; preds = %if.end34, %if.end13
  %41 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5864
  %dev36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 41, !dbg !5864
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev36, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.27, i64 0, i64 0)) #9, !dbg !5864
  %42 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5865
  %dev37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 41, !dbg !5866
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev37, i32 0, i32 0, !dbg !5867
  %call38 = call i32 @sysfs_create_file(%struct.kobject* %kobj, %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_tcc_offset_degree_celsius, i32 0, i32 0)) #8, !dbg !5868
  store i32 %call38, i32* %ret, align 4, !dbg !5869
  %43 = load i32, i32* %ret, align 4, !dbg !5870
  %tobool39 = icmp ne i32 %43, 0, !dbg !5870
  br i1 %tobool39, label %if.then40, label %if.end41, !dbg !5872

if.then40:                                        ; preds = %if.end35
  %44 = load i32, i32* %ret, align 4, !dbg !5873
  store i32 %44, i32* %retval, align 4, !dbg !5874
  br label %return, !dbg !5874

if.end41:                                         ; preds = %if.end35
  %45 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5875
  %dev42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %45, i32 0, i32 41, !dbg !5876
  %kobj43 = getelementptr inbounds %struct.device, %struct.device* %dev42, i32 0, i32 0, !dbg !5877
  %call44 = call i32 @sysfs_create_group(%struct.kobject* %kobj43, %struct.attribute_group* @power_limit_attribute_group) #8, !dbg !5878
  store i32 %call44, i32* %ret, align 4, !dbg !5879
  %46 = load i32, i32* %ret, align 4, !dbg !5880
  %tobool45 = icmp ne i32 %46, 0, !dbg !5880
  br i1 %tobool45, label %if.then46, label %if.end49, !dbg !5882

if.then46:                                        ; preds = %if.end41
  %47 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5883
  %dev47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 41, !dbg !5884
  %kobj48 = getelementptr inbounds %struct.device, %struct.device* %dev47, i32 0, i32 0, !dbg !5885
  call void @sysfs_remove_file(%struct.kobject* %kobj48, %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_tcc_offset_degree_celsius, i32 0, i32 0)) #8, !dbg !5886
  br label %if.end49, !dbg !5886

if.end49:                                         ; preds = %if.then46, %if.end41
  %48 = load i32, i32* %ret, align 4, !dbg !5887
  store i32 %48, i32* %retval, align 4, !dbg !5888
  br label %return, !dbg !5888

return:                                           ; preds = %if.end49, %if.then40, %if.then11, %if.then7, %if.then2, %if.then
  %49 = load i32, i32* %retval, align 4, !dbg !5889
  ret i32 %49, !dbg !5889
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @proc_thermal_pci_remove(%struct.pci_dev* %pdev) #2 !dbg !5890 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %proc_priv = alloca %struct.proc_thermal_device*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !5891, metadata !DIExpression()), !dbg !5892
  call void @llvm.dbg.declare(metadata %struct.proc_thermal_device** %proc_priv, metadata !5893, metadata !DIExpression()), !dbg !5894
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5895
  %call = call i8* @pci_get_drvdata(%struct.pci_dev* %0) #8, !dbg !5896
  %1 = bitcast i8* %call to %struct.proc_thermal_device*, !dbg !5896
  store %struct.proc_thermal_device* %1, %struct.proc_thermal_device** %proc_priv, align 8, !dbg !5894
  %2 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %proc_priv, align 8, !dbg !5897
  %soc_dts = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %2, i32 0, i32 4, !dbg !5899
  %3 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %soc_dts, align 8, !dbg !5899
  %tobool = icmp ne %struct.intel_soc_dts_sensors* %3, null, !dbg !5897
  br i1 %tobool, label %if.then, label %if.end6, !dbg !5900

if.then:                                          ; preds = %entry
  %4 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %proc_priv, align 8, !dbg !5901
  %soc_dts1 = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %4, i32 0, i32 4, !dbg !5903
  %5 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %soc_dts1, align 8, !dbg !5903
  call void @intel_soc_dts_iosf_exit(%struct.intel_soc_dts_sensors* %5) #8, !dbg !5904
  %6 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5905
  %irq = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 43, !dbg !5907
  %7 = load i32, i32* %irq, align 4, !dbg !5907
  %tobool2 = icmp ne i32 %7, 0, !dbg !5905
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !5908

if.then3:                                         ; preds = %if.then
  %8 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5909
  %irq4 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 43, !dbg !5911
  %9 = load i32, i32* %irq4, align 4, !dbg !5911
  %10 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5912
  %11 = bitcast %struct.pci_dev* %10 to i8*, !dbg !5912
  %call5 = call i8* @free_irq(i32 %9, i8* %11) #8, !dbg !5913
  %12 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5914
  call void @pci_disable_msi(%struct.pci_dev* %12) #8, !dbg !5915
  br label %if.end, !dbg !5916

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end6, !dbg !5917

if.end6:                                          ; preds = %if.end, %entry
  call void @proc_thermal_rapl_remove() #8, !dbg !5918
  %13 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %proc_priv, align 8, !dbg !5919
  call void @proc_thermal_remove(%struct.proc_thermal_device* %13) #8, !dbg !5920
  ret void, !dbg !5921
}

; Function Attrs: noredzone
declare dso_local i32 @pcim_enable_device(%struct.pci_dev*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @proc_thermal_rapl_add(%struct.pci_dev* %pdev, %struct.proc_thermal_device* %proc_priv, %struct.rapl_mmio_regs* %rapl_regs) #2 !dbg !5922 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %proc_priv.addr = alloca %struct.proc_thermal_device*, align 8
  %rapl_regs.addr = alloca %struct.rapl_mmio_regs*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !5925, metadata !DIExpression()), !dbg !5926
  store %struct.proc_thermal_device* %proc_priv, %struct.proc_thermal_device** %proc_priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.proc_thermal_device** %proc_priv.addr, metadata !5927, metadata !DIExpression()), !dbg !5928
  store %struct.rapl_mmio_regs* %rapl_regs, %struct.rapl_mmio_regs** %rapl_regs.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rapl_mmio_regs** %rapl_regs.addr, metadata !5929, metadata !DIExpression()), !dbg !5930
  ret i32 0, !dbg !5931
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pci_set_drvdata(%struct.pci_dev* %pdev, i8* %data) #2 !dbg !5932 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !5935, metadata !DIExpression()), !dbg !5936
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5937, metadata !DIExpression()), !dbg !5938
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5939
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 41, !dbg !5940
  %1 = load i8*, i8** %data.addr, align 8, !dbg !5941
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #8, !dbg !5942
  ret void, !dbg !5943
}

; Function Attrs: noredzone
declare dso_local %struct.intel_soc_dts_sensors* @intel_soc_dts_iosf_init(i32, i32, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @pci_enable_msi(%struct.pci_dev*) #1

; Function Attrs: noredzone
declare dso_local i32 @request_threaded_irq(i32, i32 (i32, i8*)*, i32 (i32, i8*)*, i64, i8*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @proc_thermal_pci_msi_irq(i32 %irq, i8* %devid) #2 !dbg !5944 {
entry:
  %irq.addr = alloca i32, align 4
  %devid.addr = alloca i8*, align 8
  %proc_priv = alloca %struct.proc_thermal_device*, align 8
  %pdev = alloca %struct.pci_dev*, align 8
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !5948, metadata !DIExpression()), !dbg !5949
  store i8* %devid, i8** %devid.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %devid.addr, metadata !5950, metadata !DIExpression()), !dbg !5951
  call void @llvm.dbg.declare(metadata %struct.proc_thermal_device** %proc_priv, metadata !5952, metadata !DIExpression()), !dbg !5953
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev, metadata !5954, metadata !DIExpression()), !dbg !5955
  %0 = load i8*, i8** %devid.addr, align 8, !dbg !5956
  %1 = bitcast i8* %0 to %struct.pci_dev*, !dbg !5956
  store %struct.pci_dev* %1, %struct.pci_dev** %pdev, align 8, !dbg !5955
  %2 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !5957
  %call = call i8* @pci_get_drvdata(%struct.pci_dev* %2) #8, !dbg !5958
  %3 = bitcast i8* %call to %struct.proc_thermal_device*, !dbg !5958
  store %struct.proc_thermal_device* %3, %struct.proc_thermal_device** %proc_priv, align 8, !dbg !5959
  %4 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %proc_priv, align 8, !dbg !5960
  %soc_dts = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %4, i32 0, i32 4, !dbg !5961
  %5 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %soc_dts, align 8, !dbg !5961
  call void @intel_soc_dts_iosf_interrupt_handler(%struct.intel_soc_dts_sensors* %5) #8, !dbg !5962
  ret i32 1, !dbg !5963
}

; Function Attrs: noredzone
declare dso_local void @intel_soc_dts_iosf_exit(%struct.intel_soc_dts_sensors*) #1

; Function Attrs: noredzone
declare dso_local void @pci_disable_msi(%struct.pci_dev*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @pci_get_drvdata(%struct.pci_dev* %pdev) #2 !dbg !5964 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !5967, metadata !DIExpression()), !dbg !5968
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5969
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 41, !dbg !5970
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #8, !dbg !5971
  ret i8* %call, !dbg !5972
}

; Function Attrs: noredzone
declare dso_local void @intel_soc_dts_iosf_interrupt_handler(%struct.intel_soc_dts_sensors*) #1

; Function Attrs: noredzone
declare dso_local i8* @free_irq(i32, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @proc_thermal_rapl_remove() #2 !dbg !5973 {
entry:
  ret void, !dbg !5974
}

; Function Attrs: noredzone
declare dso_local i32 @__platform_driver_register(%struct.platform_driver*, %struct.module*) #1

; Function Attrs: noredzone
declare dso_local i32 @__pci_register_driver(%struct.pci_driver*, %struct.module*, i8*) #1

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { noredzone }
attributes #9 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4745}
!llvm.module.flags = !{!4746, !4747, !4748, !4749}
!llvm.ident = !{!4750}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "int3401_driver", scope: !2, file: !3, line: 755, type: !4701, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !156, globals: !4170, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/thermal/intel/int340x_thermal/processor_thermal_device.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !107, !112, !118, !126, !137, !145, !150}
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
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_device_mode", file: !108, line: 7, baseType: !7, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/uapi/linux/thermal.h", directory: "/home/lizy2001/genbc/linux")
!109 = !{!110, !111}
!110 = !DIEnumerator(name: "THERMAL_DEVICE_DISABLED", value: 0, isUnsigned: true)
!111 = !DIEnumerator(name: "THERMAL_DEVICE_ENABLED", value: 1, isUnsigned: true)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_trip_type", file: !108, line: 12, baseType: !7, size: 32, elements: !113)
!113 = !{!114, !115, !116, !117}
!114 = !DIEnumerator(name: "THERMAL_TRIP_ACTIVE", value: 0, isUnsigned: true)
!115 = !DIEnumerator(name: "THERMAL_TRIP_PASSIVE", value: 1, isUnsigned: true)
!116 = !DIEnumerator(name: "THERMAL_TRIP_HOT", value: 2, isUnsigned: true)
!117 = !DIEnumerator(name: "THERMAL_TRIP_CRITICAL", value: 3, isUnsigned: true)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_trend", file: !119, line: 40, baseType: !7, size: 32, elements: !120)
!119 = !DIFile(filename: "./include/linux/thermal.h", directory: "/home/lizy2001/genbc/linux")
!120 = !{!121, !122, !123, !124, !125}
!121 = !DIEnumerator(name: "THERMAL_TREND_STABLE", value: 0, isUnsigned: true)
!122 = !DIEnumerator(name: "THERMAL_TREND_RAISING", value: 1, isUnsigned: true)
!123 = !DIEnumerator(name: "THERMAL_TREND_DROPPING", value: 2, isUnsigned: true)
!124 = !DIEnumerator(name: "THERMAL_TREND_RAISE_FULL", value: 3, isUnsigned: true)
!125 = !DIEnumerator(name: "THERMAL_TREND_DROP_FULL", value: 4, isUnsigned: true)
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_notify_event", file: !119, line: 49, baseType: !7, size: 32, elements: !127)
!127 = !{!128, !129, !130, !131, !132, !133, !134, !135, !136}
!128 = !DIEnumerator(name: "THERMAL_EVENT_UNSPECIFIED", value: 0, isUnsigned: true)
!129 = !DIEnumerator(name: "THERMAL_EVENT_TEMP_SAMPLE", value: 1, isUnsigned: true)
!130 = !DIEnumerator(name: "THERMAL_TRIP_VIOLATED", value: 2, isUnsigned: true)
!131 = !DIEnumerator(name: "THERMAL_TRIP_CHANGED", value: 3, isUnsigned: true)
!132 = !DIEnumerator(name: "THERMAL_DEVICE_DOWN", value: 4, isUnsigned: true)
!133 = !DIEnumerator(name: "THERMAL_DEVICE_UP", value: 5, isUnsigned: true)
!134 = !DIEnumerator(name: "THERMAL_DEVICE_POWER_CAPABILITY_CHANGED", value: 6, isUnsigned: true)
!135 = !DIEnumerator(name: "THERMAL_TABLE_CHANGED", value: 7, isUnsigned: true)
!136 = !DIEnumerator(name: "THERMAL_EVENT_KEEP_ALIVE", value: 8, isUnsigned: true)
!137 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "intel_soc_dts_interrupt_type", file: !138, line: 15, baseType: !7, size: 32, elements: !139)
!138 = !DIFile(filename: "drivers/thermal/intel/int340x_thermal/../intel_soc_dts_iosf.h", directory: "/home/lizy2001/genbc/linux")
!139 = !{!140, !141, !142, !143, !144}
!140 = !DIEnumerator(name: "INTEL_SOC_DTS_INTERRUPT_NONE", value: 0, isUnsigned: true)
!141 = !DIEnumerator(name: "INTEL_SOC_DTS_INTERRUPT_APIC", value: 1, isUnsigned: true)
!142 = !DIEnumerator(name: "INTEL_SOC_DTS_INTERRUPT_MSI", value: 2, isUnsigned: true)
!143 = !DIEnumerator(name: "INTEL_SOC_DTS_INTERRUPT_SCI", value: 3, isUnsigned: true)
!144 = !DIEnumerator(name: "INTEL_SOC_DTS_INTERRUPT_SMI", value: 4, isUnsigned: true)
!145 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "proc_thermal_emum_mode_type", file: !3, line: 71, baseType: !7, size: 32, elements: !146)
!146 = !{!147, !148, !149}
!147 = !DIEnumerator(name: "PROC_THERMAL_NONE", value: 0, isUnsigned: true)
!148 = !DIEnumerator(name: "PROC_THERMAL_PCI", value: 1, isUnsigned: true)
!149 = !DIEnumerator(name: "PROC_THERMAL_PLATFORM_DEV", value: 2, isUnsigned: true)
!150 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !151, line: 11, baseType: !7, size: 32, elements: !152)
!151 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!152 = !{!153, !154, !155}
!153 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!154 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!155 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!156 = !{!157, !158, !739, !163, !409, !318, !415, !4159, !303, !4161, !625}
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !160, line: 351, size: 10880, elements: !161)
!160 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/lizy2001/genbc/linux")
!161 = !{!162, !164, !167, !3885, !3886, !3887, !3888, !3889, !3890, !3899, !3916, !3990, !4019, !4043, !4064, !4071, !4080, !4112, !4126, !4148, !4152, !4153, !4154, !4155, !4156, !4157, !4158}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !159, file: !160, line: 352, baseType: !163, size: 32)
!163 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !159, file: !160, line: 353, baseType: !165, size: 64, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !166, line: 424, baseType: !157)
!166 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!167 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !159, file: !160, line: 354, baseType: !168, size: 192, offset: 128)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !169, line: 17, size: 192, elements: !170)
!169 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!170 = !{!171, !173, !3884}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !168, file: !169, line: 18, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !168, file: !169, line: 19, baseType: !174, size: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !169, line: 110, size: 1152, elements: !177)
!177 = !{!178, !182, !186, !195, !3826, !3830, !3834, !3839, !3843, !3844, !3848, !3852, !3856, !3867, !3868, !3869, !3870, !3880}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !176, file: !169, line: 111, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DISubroutineType(types: !181)
!181 = !{!172, !172}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !176, file: !169, line: 112, baseType: !183, size: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{null, !172}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !176, file: !169, line: 113, baseType: !187, size: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{!190, !193}
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !191, line: 30, baseType: !192)
!191 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!192 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !176, file: !169, line: 114, baseType: !196, size: 64, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!199, !193, !201}
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !203)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !204)
!204 = !{!205, !3368, !3370, !3373, !3374, !3425, !3516, !3517, !3518, !3519, !3520, !3529, !3634, !3647, !3753, !3754, !3758, !3760, !3761, !3762, !3766, !3772, !3773, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3814, !3815, !3816, !3819, !3822, !3823, !3824, !3825}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !203, file: !73, line: 462, baseType: !206, size: 512)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !207, line: 64, size: 512, elements: !208)
!207 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!208 = !{!209, !213, !219, !221, !281, !3219, !3358, !3363, !3364, !3365, !3366, !3367}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !206, file: !207, line: 65, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !212)
!212 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !206, file: !207, line: 66, baseType: !214, size: 128, offset: 64)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !191, line: 178, size: 128, elements: !215)
!215 = !{!216, !218}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !214, file: !191, line: 179, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !214, file: !191, line: 179, baseType: !217, size: 64, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !206, file: !207, line: 67, baseType: !220, size: 64, offset: 192)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !206, file: !207, line: 68, baseType: !222, size: 64, offset: 256)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !207, line: 192, size: 704, elements: !224)
!224 = !{!225, !226, !242, !243}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !223, file: !207, line: 193, baseType: !214, size: 128)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !223, file: !207, line: 194, baseType: !227, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !228, line: 83, baseType: !229)
!228 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !228, line: 71, elements: !230)
!230 = !{!231}
!231 = !DIDerivedType(tag: DW_TAG_member, scope: !229, file: !228, line: 72, baseType: !232)
!232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !229, file: !228, line: 72, elements: !233)
!233 = !{!234}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !232, file: !228, line: 73, baseType: !235)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !228, line: 20, elements: !236)
!236 = !{!237}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !235, file: !228, line: 21, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !239, line: 25, baseType: !240)
!239 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !239, line: 25, elements: !241)
!241 = !{}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !223, file: !207, line: 195, baseType: !206, size: 512, offset: 128)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !223, file: !207, line: 196, baseType: !244, size: 64, offset: 640)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !246)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !207, line: 156, size: 192, elements: !247)
!247 = !{!248, !253, !258}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !246, file: !207, line: 157, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DISubroutineType(types: !252)
!252 = !{!163, !222, !220}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !246, file: !207, line: 158, baseType: !254, size: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !255)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{!210, !222, !220}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !246, file: !207, line: 159, baseType: !259, size: 64, offset: 128)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!163, !222, !220, !263}
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !207, line: 148, size: 20736, elements: !265)
!265 = !{!266, !271, !275, !276, !280}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !264, file: !207, line: 149, baseType: !267, size: 192)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 192, elements: !269)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!269 = !{!270}
!270 = !DISubrange(count: 3)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !264, file: !207, line: 150, baseType: !272, size: 4096, offset: 192)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 4096, elements: !273)
!273 = !{!274}
!274 = !DISubrange(count: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !264, file: !207, line: 151, baseType: !163, size: 32, offset: 4288)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !264, file: !207, line: 152, baseType: !277, size: 16384, offset: 4320)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 16384, elements: !278)
!278 = !{!279}
!279 = !DISubrange(count: 2048)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !264, file: !207, line: 153, baseType: !163, size: 32, offset: 20704)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !206, file: !207, line: 69, baseType: !282, size: 64, offset: 320)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !207, line: 138, size: 448, elements: !284)
!284 = !{!285, !289, !319, !321, !3181, !3209, !3213}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !283, file: !207, line: 139, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !220}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !283, file: !207, line: 140, baseType: !290, size: 64, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !292)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !293, line: 230, size: 128, elements: !294)
!293 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!294 = !{!295, !311}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !292, file: !293, line: 231, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!299, !220, !304, !268}
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !191, line: 60, baseType: !300)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !301, line: 73, baseType: !302)
!301 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !301, line: 15, baseType: !303)
!303 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !293, line: 30, size: 128, elements: !306)
!306 = !{!307, !308}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !305, file: !293, line: 31, baseType: !210, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !305, file: !293, line: 32, baseType: !309, size: 16, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !191, line: 19, baseType: !310)
!310 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !292, file: !293, line: 232, baseType: !312, size: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{!299, !220, !304, !210, !315}
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !191, line: 55, baseType: !316)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !301, line: 72, baseType: !317)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !301, line: 16, baseType: !318)
!318 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !283, file: !207, line: 141, baseType: !320, size: 64, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !283, file: !207, line: 142, baseType: !322, size: 64, offset: 192)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !325)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !293, line: 84, size: 320, elements: !326)
!326 = !{!327, !328, !332, !3178, !3179}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !325, file: !293, line: 85, baseType: !210, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !325, file: !293, line: 86, baseType: !329, size: 64, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{!309, !220, !304, !163}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !325, file: !293, line: 88, baseType: !333, size: 64, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{!309, !220, !336, !163}
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !293, line: 168, size: 448, elements: !338)
!338 = !{!339, !340, !341, !342, !3173, !3174}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !337, file: !293, line: 169, baseType: !305, size: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !337, file: !293, line: 170, baseType: !315, size: 64, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !337, file: !293, line: 171, baseType: !157, size: 64, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !337, file: !293, line: 172, baseType: !343, size: 64, offset: 256)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{!299, !346, !220, !336, !268, !523, !315}
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !348)
!348 = !{!349, !367, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3156, !3157, !3166, !3167, !3168, !3169, !3170, !3171, !3172}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !347, file: !44, line: 920, baseType: !350, size: 128)
!350 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !347, file: !44, line: 917, size: 128, elements: !351)
!351 = !{!352, !358}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !350, file: !44, line: 918, baseType: !353, size: 64)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !354, line: 58, size: 64, elements: !355)
!354 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!355 = !{!356}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !353, file: !354, line: 59, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !350, file: !44, line: 919, baseType: !359, size: 128, align: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !191, line: 216, size: 128, align: 64, elements: !360)
!360 = !{!361, !363}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !359, file: !191, line: 217, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !359, file: !191, line: 218, baseType: !364, size: 64, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !362}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !347, file: !44, line: 921, baseType: !368, size: 128, offset: 128)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !369, line: 8, size: 128, elements: !370)
!369 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!370 = !{!371, !375}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !368, file: !369, line: 9, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !374, line: 18, flags: DIFlagFwdDecl)
!374 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!375 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !368, file: !369, line: 10, baseType: !376, size: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !374, line: 89, size: 1536, elements: !378)
!378 = !{!379, !380, !390, !398, !399, !422, !3106, !3108, !3120, !3121, !3122, !3123, !3124, !3130, !3131, !3132}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !377, file: !374, line: 91, baseType: !7, size: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !377, file: !374, line: 92, baseType: !381, size: 32, offset: 32)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !382, line: 277, baseType: !383)
!382 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !382, line: 277, size: 32, elements: !384)
!384 = !{!385}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !383, file: !382, line: 277, baseType: !386, size: 32)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !382, line: 70, baseType: !387)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !382, line: 65, size: 32, elements: !388)
!388 = !{!389}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !387, file: !382, line: 66, baseType: !7, size: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !377, file: !374, line: 93, baseType: !391, size: 128, offset: 64)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !392, line: 38, size: 128, elements: !393)
!392 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!393 = !{!394, !396}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !391, file: !392, line: 39, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !391, file: !392, line: 39, baseType: !397, size: 64, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !377, file: !374, line: 94, baseType: !376, size: 64, offset: 192)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !377, file: !374, line: 95, baseType: !400, size: 128, offset: 256)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !374, line: 47, size: 128, elements: !401)
!401 = !{!402, !418}
!402 = !DIDerivedType(tag: DW_TAG_member, scope: !400, file: !374, line: 48, baseType: !403, size: 64)
!403 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !400, file: !374, line: 48, size: 64, elements: !404)
!404 = !{!405, !414}
!405 = !DIDerivedType(tag: DW_TAG_member, scope: !403, file: !374, line: 49, baseType: !406, size: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !403, file: !374, line: 49, size: 64, elements: !407)
!407 = !{!408, !413}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !406, file: !374, line: 50, baseType: !409, size: 32)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !410, line: 21, baseType: !411)
!410 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !412, line: 27, baseType: !7)
!412 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!413 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !406, file: !374, line: 50, baseType: !409, size: 32, offset: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !403, file: !374, line: 52, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !410, line: 23, baseType: !416)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !412, line: 31, baseType: !417)
!417 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !400, file: !374, line: 54, baseType: !419, size: 64, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !421)
!421 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !377, file: !374, line: 96, baseType: !423, size: 64, offset: 384)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !425)
!425 = !{!426, !427, !428, !436, !443, !444, !590, !2817, !2818, !2819, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !3082, !3090, !3091, !3092, !3102, !3103, !3104, !3105}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !424, file: !44, line: 611, baseType: !309, size: 16)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !424, file: !44, line: 612, baseType: !310, size: 16, offset: 16)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !424, file: !44, line: 613, baseType: !429, size: 32, offset: 32)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !430, line: 23, baseType: !431)
!430 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !430, line: 21, size: 32, elements: !432)
!432 = !{!433}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !431, file: !430, line: 22, baseType: !434, size: 32)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !191, line: 32, baseType: !435)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !301, line: 49, baseType: !7)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !424, file: !44, line: 614, baseType: !437, size: 32, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !430, line: 28, baseType: !438)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !430, line: 26, size: 32, elements: !439)
!439 = !{!440}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !438, file: !430, line: 27, baseType: !441, size: 32)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !191, line: 33, baseType: !442)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !301, line: 50, baseType: !7)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !424, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !424, file: !44, line: 622, baseType: !445, size: 64, offset: 128)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !447)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !448)
!448 = !{!449, !453, !466, !470, !476, !480, !484, !488, !492, !496, !500, !501, !507, !511, !537, !566, !570, !576, !581, !585, !586}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !447, file: !44, line: 1865, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!376, !423, !376, !7}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !447, file: !44, line: 1866, baseType: !454, size: 64, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{!210, !376, !423, !457}
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !459, line: 10, size: 128, elements: !460)
!459 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!460 = !{!461, !465}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !458, file: !459, line: 11, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{null, !157}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !458, file: !459, line: 12, baseType: !157, size: 64, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !447, file: !44, line: 1867, baseType: !467, size: 64, offset: 128)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!163, !423, !163}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !447, file: !44, line: 1868, baseType: !471, size: 64, offset: 192)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{!474, !423, !163}
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !447, file: !44, line: 1870, baseType: !477, size: 64, offset: 256)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{!163, !376, !268, !163}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !447, file: !44, line: 1872, baseType: !481, size: 64, offset: 320)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!163, !423, !376, !309, !190}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !447, file: !44, line: 1873, baseType: !485, size: 64, offset: 384)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!163, !376, !423, !376}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !447, file: !44, line: 1874, baseType: !489, size: 64, offset: 448)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{!163, !423, !376}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !447, file: !44, line: 1875, baseType: !493, size: 64, offset: 512)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!163, !423, !376, !210}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !447, file: !44, line: 1876, baseType: !497, size: 64, offset: 576)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{!163, !423, !376, !309}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !447, file: !44, line: 1877, baseType: !489, size: 64, offset: 640)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !447, file: !44, line: 1878, baseType: !502, size: 64, offset: 704)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{!163, !423, !376, !309, !505}
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !191, line: 16, baseType: !506)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !191, line: 13, baseType: !409)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !447, file: !44, line: 1879, baseType: !508, size: 64, offset: 768)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!163, !423, !376, !423, !376, !7}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !447, file: !44, line: 1881, baseType: !512, size: 64, offset: 832)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!163, !376, !515}
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !517)
!517 = !{!518, !519, !520, !521, !522, !526, !534, !535, !536}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !516, file: !44, line: 220, baseType: !7, size: 32)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !516, file: !44, line: 221, baseType: !309, size: 16, offset: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !516, file: !44, line: 222, baseType: !429, size: 32, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !516, file: !44, line: 223, baseType: !437, size: 32, offset: 96)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !516, file: !44, line: 224, baseType: !523, size: 64, offset: 128)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !191, line: 46, baseType: !524)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !301, line: 88, baseType: !525)
!525 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !516, file: !44, line: 225, baseType: !527, size: 128, offset: 192)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !528, line: 13, size: 128, elements: !529)
!528 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!529 = !{!530, !533}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !527, file: !528, line: 14, baseType: !531, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !528, line: 8, baseType: !532)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !412, line: 30, baseType: !525)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !527, file: !528, line: 15, baseType: !303, size: 64, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !516, file: !44, line: 226, baseType: !527, size: 128, offset: 320)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !516, file: !44, line: 227, baseType: !527, size: 128, offset: 448)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !516, file: !44, line: 234, baseType: !346, size: 64, offset: 576)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !447, file: !44, line: 1882, baseType: !538, size: 64, offset: 896)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!163, !541, !543, !409, !7}
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !368)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !545, line: 22, size: 1152, elements: !546)
!545 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!546 = !{!547, !548, !549, !550, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !544, file: !545, line: 23, baseType: !409, size: 32)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !544, file: !545, line: 24, baseType: !309, size: 16, offset: 32)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !544, file: !545, line: 25, baseType: !7, size: 32, offset: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !544, file: !545, line: 26, baseType: !551, size: 32, offset: 96)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !191, line: 104, baseType: !409)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !544, file: !545, line: 27, baseType: !415, size: 64, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !544, file: !545, line: 28, baseType: !415, size: 64, offset: 192)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !544, file: !545, line: 37, baseType: !415, size: 64, offset: 256)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !544, file: !545, line: 38, baseType: !505, size: 32, offset: 320)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !544, file: !545, line: 39, baseType: !505, size: 32, offset: 352)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !544, file: !545, line: 40, baseType: !429, size: 32, offset: 384)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !544, file: !545, line: 41, baseType: !437, size: 32, offset: 416)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !544, file: !545, line: 42, baseType: !523, size: 64, offset: 448)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !544, file: !545, line: 43, baseType: !527, size: 128, offset: 512)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !544, file: !545, line: 44, baseType: !527, size: 128, offset: 640)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !544, file: !545, line: 45, baseType: !527, size: 128, offset: 768)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !544, file: !545, line: 46, baseType: !527, size: 128, offset: 896)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !544, file: !545, line: 47, baseType: !415, size: 64, offset: 1024)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !544, file: !545, line: 48, baseType: !415, size: 64, offset: 1088)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !447, file: !44, line: 1883, baseType: !567, size: 64, offset: 960)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{!299, !376, !268, !315}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !447, file: !44, line: 1884, baseType: !571, size: 64, offset: 1024)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!163, !423, !574, !415, !415}
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !447, file: !44, line: 1886, baseType: !577, size: 64, offset: 1088)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!163, !423, !580, !163}
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !447, file: !44, line: 1887, baseType: !582, size: 64, offset: 1152)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{!163, !423, !376, !346, !7, !309}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !447, file: !44, line: 1890, baseType: !497, size: 64, offset: 1216)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !447, file: !44, line: 1891, baseType: !587, size: 64, offset: 1280)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{!163, !423, !474, !163}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !424, file: !44, line: 623, baseType: !591, size: 64, offset: 192)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !593)
!593 = !{!594, !595, !596, !597, !598, !599, !649, !2424, !2506, !2589, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2605, !2609, !2610, !2613, !2614, !2617, !2618, !2619, !2660, !2687, !2688, !2689, !2690, !2691, !2692, !2695, !2697, !2704, !2705, !2707, !2708, !2709, !2768, !2769, !2784, !2785, !2786, !2787, !2788, !2791, !2792, !2793, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !592, file: !44, line: 1417, baseType: !214, size: 128)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !592, file: !44, line: 1418, baseType: !505, size: 32, offset: 128)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !592, file: !44, line: 1419, baseType: !421, size: 8, offset: 160)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !592, file: !44, line: 1420, baseType: !318, size: 64, offset: 192)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !592, file: !44, line: 1421, baseType: !523, size: 64, offset: 256)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !592, file: !44, line: 1422, baseType: !600, size: 64, offset: 320)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !602)
!602 = !{!603, !604, !605, !612, !616, !620, !624, !628, !629, !639, !642, !643, !644, !646, !647, !648}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !601, file: !44, line: 2229, baseType: !210, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !601, file: !44, line: 2230, baseType: !163, size: 32, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !601, file: !44, line: 2238, baseType: !606, size: 64, offset: 128)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{!163, !609}
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !611, line: 28, flags: DIFlagFwdDecl)
!611 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!612 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !601, file: !44, line: 2239, baseType: !613, size: 64, offset: 192)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !615)
!615 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !601, file: !44, line: 2240, baseType: !617, size: 64, offset: 256)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{!376, !600, !163, !210, !157}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !601, file: !44, line: 2242, baseType: !621, size: 64, offset: 320)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{null, !591}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !601, file: !44, line: 2243, baseType: !625, size: 64, offset: 384)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !627, line: 76, flags: DIFlagFwdDecl)
!627 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!628 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !601, file: !44, line: 2244, baseType: !600, size: 64, offset: 448)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !601, file: !44, line: 2245, baseType: !630, size: 64, offset: 512)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !191, line: 182, size: 64, elements: !631)
!631 = !{!632}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !630, file: !191, line: 183, baseType: !633, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !191, line: 186, size: 128, elements: !635)
!635 = !{!636, !637}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !634, file: !191, line: 187, baseType: !633, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !634, file: !191, line: 187, baseType: !638, size: 64, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !601, file: !44, line: 2247, baseType: !640, offset: 576)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !641, line: 187, elements: !241)
!641 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!642 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !601, file: !44, line: 2248, baseType: !640, offset: 576)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !601, file: !44, line: 2249, baseType: !640, offset: 576)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !601, file: !44, line: 2250, baseType: !645, offset: 576)
!645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !640, elements: !269)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !601, file: !44, line: 2252, baseType: !640, offset: 576)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !601, file: !44, line: 2253, baseType: !640, offset: 576)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !601, file: !44, line: 2254, baseType: !640, offset: 576)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !592, file: !44, line: 1423, baseType: !650, size: 64, offset: 384)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !652)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !653)
!653 = !{!654, !658, !662, !663, !667, !673, !677, !678, !679, !683, !687, !688, !689, !690, !696, !701, !702, !709, !710, !711, !712, !2408, !2423}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !652, file: !44, line: 1936, baseType: !655, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{!423, !591}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !652, file: !44, line: 1937, baseType: !659, size: 64, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{null, !423}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !652, file: !44, line: 1938, baseType: !659, size: 64, offset: 128)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !652, file: !44, line: 1940, baseType: !664, size: 64, offset: 192)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{null, !423, !163}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !652, file: !44, line: 1941, baseType: !668, size: 64, offset: 256)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DISubroutineType(types: !670)
!670 = !{!163, !423, !671}
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !652, file: !44, line: 1942, baseType: !674, size: 64, offset: 320)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{!163, !423}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !652, file: !44, line: 1943, baseType: !659, size: 64, offset: 384)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !652, file: !44, line: 1944, baseType: !621, size: 64, offset: 448)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !652, file: !44, line: 1945, baseType: !680, size: 64, offset: 512)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{!163, !591, !163}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !652, file: !44, line: 1946, baseType: !684, size: 64, offset: 576)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DISubroutineType(types: !686)
!686 = !{!163, !591}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !652, file: !44, line: 1947, baseType: !684, size: 64, offset: 640)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !652, file: !44, line: 1948, baseType: !684, size: 64, offset: 704)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !652, file: !44, line: 1949, baseType: !684, size: 64, offset: 768)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !652, file: !44, line: 1950, baseType: !691, size: 64, offset: 832)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DISubroutineType(types: !693)
!693 = !{!163, !376, !694}
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !652, file: !44, line: 1951, baseType: !697, size: 64, offset: 896)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DISubroutineType(types: !699)
!699 = !{!163, !591, !700, !268}
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !652, file: !44, line: 1952, baseType: !621, size: 64, offset: 960)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !652, file: !44, line: 1954, baseType: !703, size: 64, offset: 1024)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DISubroutineType(types: !705)
!705 = !{!163, !706, !376}
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !708, line: 539, flags: DIFlagFwdDecl)
!708 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!709 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !652, file: !44, line: 1955, baseType: !703, size: 64, offset: 1088)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !652, file: !44, line: 1956, baseType: !703, size: 64, offset: 1152)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !652, file: !44, line: 1957, baseType: !703, size: 64, offset: 1216)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !652, file: !44, line: 1963, baseType: !713, size: 64, offset: 1280)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{!163, !591, !716, !739}
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !718, line: 68, size: 512, align: 128, elements: !719)
!718 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!719 = !{!720, !721, !2400, !2407}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !717, file: !718, line: 69, baseType: !318, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, scope: !717, file: !718, line: 77, baseType: !722, size: 320, offset: 64)
!722 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !717, file: !718, line: 77, size: 320, elements: !723)
!723 = !{!724, !912, !917, !945, !953, !959, !2331, !2399}
!724 = !DIDerivedType(tag: DW_TAG_member, scope: !722, file: !718, line: 78, baseType: !725, size: 320)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !722, file: !718, line: 78, size: 320, elements: !726)
!726 = !{!727, !728, !910, !911}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !725, file: !718, line: 84, baseType: !214, size: 128)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !725, file: !718, line: 86, baseType: !729, size: 64, offset: 128)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !731)
!731 = !{!732, !733, !741, !742, !747, !762, !778, !779, !780, !781, !903, !904, !907, !908, !909}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !730, file: !44, line: 452, baseType: !423, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !730, file: !44, line: 453, baseType: !734, size: 128, offset: 64)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !735, line: 292, size: 128, elements: !736)
!735 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!736 = !{!737, !738, !740}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !734, file: !735, line: 293, baseType: !227)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !734, file: !735, line: 295, baseType: !739, size: 32)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !191, line: 148, baseType: !7)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !734, file: !735, line: 296, baseType: !157, size: 64, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !730, file: !44, line: 454, baseType: !739, size: 32, offset: 192)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !730, file: !44, line: 455, baseType: !743, size: 32, offset: 224)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !191, line: 168, baseType: !744)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !191, line: 166, size: 32, elements: !745)
!745 = !{!746}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !744, file: !191, line: 167, baseType: !163, size: 32)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !730, file: !44, line: 460, baseType: !748, size: 128, offset: 256)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !749, line: 125, size: 128, elements: !750)
!749 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!750 = !{!751, !761}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !748, file: !749, line: 126, baseType: !752, size: 64)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !749, line: 31, size: 64, elements: !753)
!753 = !{!754}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !752, file: !749, line: 32, baseType: !755, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !749, line: 24, size: 192, align: 64, elements: !757)
!757 = !{!758, !759, !760}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !756, file: !749, line: 25, baseType: !318, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !756, file: !749, line: 26, baseType: !755, size: 64, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !756, file: !749, line: 27, baseType: !755, size: 64, offset: 128)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !748, file: !749, line: 127, baseType: !755, size: 64, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !730, file: !44, line: 461, baseType: !763, size: 256, offset: 384)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !764, line: 35, size: 256, elements: !765)
!764 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!765 = !{!766, !774, !775, !777}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !763, file: !764, line: 36, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !768, line: 13, baseType: !769)
!768 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !191, line: 175, baseType: !770)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !191, line: 173, size: 64, elements: !771)
!771 = !{!772}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !770, file: !191, line: 174, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !410, line: 22, baseType: !532)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !763, file: !764, line: 42, baseType: !767, size: 64, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !763, file: !764, line: 46, baseType: !776, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !228, line: 29, baseType: !235)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !763, file: !764, line: 47, baseType: !214, size: 128, offset: 128)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !730, file: !44, line: 462, baseType: !318, size: 64, offset: 640)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !730, file: !44, line: 463, baseType: !318, size: 64, offset: 704)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !730, file: !44, line: 464, baseType: !318, size: 64, offset: 768)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !730, file: !44, line: 465, baseType: !782, size: 64, offset: 832)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !784)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !785)
!785 = !{!786, !790, !794, !798, !802, !806, !812, !818, !822, !827, !831, !835, !839, !867, !871, !877, !878, !879, !883, !888, !892, !899}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !784, file: !44, line: 368, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DISubroutineType(types: !789)
!789 = !{!163, !716, !671}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !784, file: !44, line: 369, baseType: !791, size: 64, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{!163, !346, !716}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !784, file: !44, line: 372, baseType: !795, size: 64, offset: 128)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DISubroutineType(types: !797)
!797 = !{!163, !729, !671}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !784, file: !44, line: 375, baseType: !799, size: 64, offset: 192)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DISubroutineType(types: !801)
!801 = !{!163, !716}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !784, file: !44, line: 381, baseType: !803, size: 64, offset: 256)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{!163, !346, !729, !217, !7}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !784, file: !44, line: 383, baseType: !807, size: 64, offset: 320)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DISubroutineType(types: !809)
!809 = !{null, !810}
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !784, file: !44, line: 385, baseType: !813, size: 64, offset: 384)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{!163, !346, !729, !523, !7, !7, !816, !817}
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !784, file: !44, line: 388, baseType: !819, size: 64, offset: 448)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DISubroutineType(types: !821)
!821 = !{!163, !346, !729, !523, !7, !7, !716, !157}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !784, file: !44, line: 393, baseType: !823, size: 64, offset: 512)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DISubroutineType(types: !825)
!825 = !{!826, !729, !826}
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !191, line: 125, baseType: !415)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !784, file: !44, line: 394, baseType: !828, size: 64, offset: 576)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{null, !716, !7, !7}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !784, file: !44, line: 395, baseType: !832, size: 64, offset: 640)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DISubroutineType(types: !834)
!834 = !{!163, !716, !739}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !784, file: !44, line: 396, baseType: !836, size: 64, offset: 704)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{null, !716}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !784, file: !44, line: 397, baseType: !840, size: 64, offset: 768)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{!299, !843, !865}
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !845)
!845 = !{!846, !847, !848, !852, !853, !854, !857, !858}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !844, file: !44, line: 321, baseType: !346, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !844, file: !44, line: 326, baseType: !523, size: 64, offset: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !844, file: !44, line: 327, baseType: !849, size: 64, offset: 128)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{null, !843, !303, !303}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !844, file: !44, line: 328, baseType: !157, size: 64, offset: 192)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !844, file: !44, line: 329, baseType: !163, size: 32, offset: 256)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !844, file: !44, line: 330, baseType: !855, size: 16, offset: 288)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !410, line: 19, baseType: !856)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !412, line: 24, baseType: !310)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !844, file: !44, line: 331, baseType: !855, size: 16, offset: 304)
!858 = !DIDerivedType(tag: DW_TAG_member, scope: !844, file: !44, line: 332, baseType: !859, size: 64, offset: 320)
!859 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !844, file: !44, line: 332, size: 64, elements: !860)
!860 = !{!861, !862}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !859, file: !44, line: 333, baseType: !7, size: 32)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !859, file: !44, line: 334, baseType: !863, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !784, file: !44, line: 402, baseType: !868, size: 64, offset: 832)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DISubroutineType(types: !870)
!870 = !{!163, !729, !716, !716, !5}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !784, file: !44, line: 404, baseType: !872, size: 64, offset: 896)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DISubroutineType(types: !874)
!874 = !{!190, !716, !875}
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !876, line: 305, baseType: !7)
!876 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!877 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !784, file: !44, line: 405, baseType: !836, size: 64, offset: 960)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !784, file: !44, line: 406, baseType: !799, size: 64, offset: 1024)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !784, file: !44, line: 407, baseType: !880, size: 64, offset: 1088)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DISubroutineType(types: !882)
!882 = !{!163, !716, !318, !318}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !784, file: !44, line: 409, baseType: !884, size: 64, offset: 1152)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DISubroutineType(types: !886)
!886 = !{null, !716, !887, !887}
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !784, file: !44, line: 410, baseType: !889, size: 64, offset: 1216)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DISubroutineType(types: !891)
!891 = !{!163, !729, !716}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !784, file: !44, line: 413, baseType: !893, size: 64, offset: 1280)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DISubroutineType(types: !895)
!895 = !{!163, !896, !346, !898}
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !784, file: !44, line: 415, baseType: !900, size: 64, offset: 1344)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DISubroutineType(types: !902)
!902 = !{null, !346}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !730, file: !44, line: 466, baseType: !318, size: 64, offset: 896)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !730, file: !44, line: 467, baseType: !905, size: 32, offset: 960)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !906, line: 8, baseType: !409)
!906 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!907 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !730, file: !44, line: 468, baseType: !227, offset: 992)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !730, file: !44, line: 469, baseType: !214, size: 128, offset: 1024)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !730, file: !44, line: 470, baseType: !157, size: 64, offset: 1152)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !725, file: !718, line: 87, baseType: !318, size: 64, offset: 192)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !725, file: !718, line: 94, baseType: !318, size: 64, offset: 256)
!912 = !DIDerivedType(tag: DW_TAG_member, scope: !722, file: !718, line: 96, baseType: !913, size: 64)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !722, file: !718, line: 96, size: 64, elements: !914)
!914 = !{!915}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !913, file: !718, line: 101, baseType: !916, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !191, line: 143, baseType: !415)
!917 = !DIDerivedType(tag: DW_TAG_member, scope: !722, file: !718, line: 103, baseType: !918, size: 320)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !722, file: !718, line: 103, size: 320, elements: !919)
!919 = !{!920, !930, !933, !934}
!920 = !DIDerivedType(tag: DW_TAG_member, scope: !918, file: !718, line: 104, baseType: !921, size: 128)
!921 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !918, file: !718, line: 104, size: 128, elements: !922)
!922 = !{!923, !924}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !921, file: !718, line: 105, baseType: !214, size: 128)
!924 = !DIDerivedType(tag: DW_TAG_member, scope: !921, file: !718, line: 106, baseType: !925, size: 128)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !921, file: !718, line: 106, size: 128, elements: !926)
!926 = !{!927, !928, !929}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !925, file: !718, line: 107, baseType: !716, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !925, file: !718, line: 109, baseType: !163, size: 32, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !925, file: !718, line: 110, baseType: !163, size: 32, offset: 96)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !918, file: !718, line: 117, baseType: !931, size: 64, offset: 128)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !718, line: 117, flags: DIFlagFwdDecl)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !918, file: !718, line: 119, baseType: !157, size: 64, offset: 192)
!934 = !DIDerivedType(tag: DW_TAG_member, scope: !918, file: !718, line: 120, baseType: !935, size: 64, offset: 256)
!935 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !918, file: !718, line: 120, size: 64, elements: !936)
!936 = !{!937, !938, !939}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !935, file: !718, line: 121, baseType: !157, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !935, file: !718, line: 122, baseType: !318, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, scope: !935, file: !718, line: 123, baseType: !940, size: 32)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !935, file: !718, line: 123, size: 32, elements: !941)
!941 = !{!942, !943, !944}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !940, file: !718, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !940, file: !718, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !940, file: !718, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!945 = !DIDerivedType(tag: DW_TAG_member, scope: !722, file: !718, line: 130, baseType: !946, size: 192)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !722, file: !718, line: 130, size: 192, elements: !947)
!947 = !{!948, !949, !950, !951, !952}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !946, file: !718, line: 131, baseType: !318, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !946, file: !718, line: 134, baseType: !421, size: 8, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !946, file: !718, line: 135, baseType: !421, size: 8, offset: 72)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !946, file: !718, line: 136, baseType: !743, size: 32, offset: 96)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !946, file: !718, line: 137, baseType: !7, size: 32, offset: 128)
!953 = !DIDerivedType(tag: DW_TAG_member, scope: !722, file: !718, line: 139, baseType: !954, size: 256)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !722, file: !718, line: 139, size: 256, elements: !955)
!955 = !{!956, !957, !958}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !954, file: !718, line: 140, baseType: !318, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !954, file: !718, line: 141, baseType: !743, size: 32, offset: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !954, file: !718, line: 143, baseType: !214, size: 128, offset: 128)
!959 = !DIDerivedType(tag: DW_TAG_member, scope: !722, file: !718, line: 145, baseType: !960, size: 256)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !722, file: !718, line: 145, size: 256, elements: !961)
!961 = !{!962, !963, !965, !966, !2330}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !960, file: !718, line: 146, baseType: !318, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !960, file: !718, line: 147, baseType: !964, size: 64, offset: 64)
!964 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !708, line: 509, baseType: !716)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !960, file: !718, line: 148, baseType: !318, size: 64, offset: 128)
!966 = !DIDerivedType(tag: DW_TAG_member, scope: !960, file: !718, line: 149, baseType: !967, size: 64, offset: 192)
!967 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !960, file: !718, line: 149, size: 64, elements: !968)
!968 = !{!969, !2329}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !967, file: !718, line: 150, baseType: !970, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !718, line: 388, size: 7296, elements: !972)
!972 = !{!973, !2325}
!973 = !DIDerivedType(tag: DW_TAG_member, scope: !971, file: !718, line: 389, baseType: !974, size: 7296)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !971, file: !718, line: 389, size: 7296, elements: !975)
!975 = !{!976, !1094, !1095, !1096, !1100, !1101, !1102, !1103, !1104, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1145, !1153, !1156, !1202, !1203, !2309, !2310, !2313, !2314, !2315, !2318, !2319, !2320, !2323, !2324}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !974, file: !718, line: 390, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !718, line: 305, size: 1472, elements: !979)
!979 = !{!980, !981, !982, !983, !984, !985, !986, !987, !994, !995, !1000, !1001, !1004, !1088, !1089, !1090, !1091, !1092}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !978, file: !718, line: 308, baseType: !318, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !978, file: !718, line: 309, baseType: !318, size: 64, offset: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !978, file: !718, line: 313, baseType: !977, size: 64, offset: 128)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !978, file: !718, line: 313, baseType: !977, size: 64, offset: 192)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !978, file: !718, line: 315, baseType: !756, size: 192, align: 64, offset: 256)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !978, file: !718, line: 323, baseType: !318, size: 64, offset: 448)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !978, file: !718, line: 327, baseType: !970, size: 64, offset: 512)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !978, file: !718, line: 333, baseType: !988, size: 64, offset: 576)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !708, line: 284, baseType: !989)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !708, line: 284, size: 64, elements: !990)
!990 = !{!991}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !989, file: !708, line: 284, baseType: !992, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !993, line: 19, baseType: !318)
!993 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!994 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !978, file: !718, line: 334, baseType: !318, size: 64, offset: 640)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !978, file: !718, line: 343, baseType: !996, size: 256, offset: 704)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !978, file: !718, line: 340, size: 256, elements: !997)
!997 = !{!998, !999}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !996, file: !718, line: 341, baseType: !756, size: 192, align: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !996, file: !718, line: 342, baseType: !318, size: 64, offset: 192)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !978, file: !718, line: 351, baseType: !214, size: 128, offset: 960)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !978, file: !718, line: 353, baseType: !1002, size: 64, offset: 1088)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !718, line: 353, flags: DIFlagFwdDecl)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !978, file: !718, line: 356, baseType: !1005, size: 64, offset: 1152)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1007)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1008)
!1008 = !{!1009, !1013, !1014, !1018, !1022, !1062, !1066, !1070, !1074, !1075, !1076, !1080, !1084}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1007, file: !14, line: 558, baseType: !1010, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{null, !977}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1007, file: !14, line: 559, baseType: !1010, size: 64, offset: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1007, file: !14, line: 560, baseType: !1015, size: 64, offset: 128)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!163, !977, !318}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1007, file: !14, line: 561, baseType: !1019, size: 64, offset: 192)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!163, !977}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1007, file: !14, line: 562, baseType: !1023, size: 64, offset: 256)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!1026, !1027}
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !718, line: 682, baseType: !7)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1029)
!1029 = !{!1030, !1031, !1032, !1033, !1034, !1035, !1042, !1049, !1055, !1056, !1057, !1059, !1061}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1028, file: !14, line: 509, baseType: !977, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1028, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1028, file: !14, line: 511, baseType: !739, size: 32, offset: 96)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1028, file: !14, line: 512, baseType: !318, size: 64, offset: 128)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1028, file: !14, line: 513, baseType: !318, size: 64, offset: 192)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1028, file: !14, line: 514, baseType: !1036, size: 64, offset: 256)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !708, line: 385, baseType: !1038)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !708, line: 385, size: 64, elements: !1039)
!1039 = !{!1040}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1038, file: !708, line: 385, baseType: !1041, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !993, line: 15, baseType: !318)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1028, file: !14, line: 516, baseType: !1043, size: 64, offset: 320)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !708, line: 359, baseType: !1045)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !708, line: 359, size: 64, elements: !1046)
!1046 = !{!1047}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1045, file: !708, line: 359, baseType: !1048, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !993, line: 16, baseType: !318)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1028, file: !14, line: 519, baseType: !1050, size: 64, offset: 384)
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !993, line: 21, baseType: !1051)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !993, line: 21, size: 64, elements: !1052)
!1052 = !{!1053}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1051, file: !993, line: 21, baseType: !1054, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !993, line: 14, baseType: !318)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1028, file: !14, line: 521, baseType: !716, size: 64, offset: 448)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1028, file: !14, line: 522, baseType: !716, size: 64, offset: 512)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1028, file: !14, line: 528, baseType: !1058, size: 64, offset: 576)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1028, file: !14, line: 532, baseType: !1060, size: 64, offset: 640)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1028, file: !14, line: 536, baseType: !964, size: 64, offset: 704)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1007, file: !14, line: 563, baseType: !1063, size: 64, offset: 320)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!1026, !1027, !13}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1007, file: !14, line: 565, baseType: !1067, size: 64, offset: 384)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{null, !1027, !318, !318}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1007, file: !14, line: 567, baseType: !1071, size: 64, offset: 448)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!318, !977}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1007, file: !14, line: 571, baseType: !1023, size: 64, offset: 512)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1007, file: !14, line: 574, baseType: !1023, size: 64, offset: 576)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1007, file: !14, line: 579, baseType: !1077, size: 64, offset: 640)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!163, !977, !318, !157, !163, !163}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1007, file: !14, line: 585, baseType: !1081, size: 64, offset: 704)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!210, !977}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1007, file: !14, line: 615, baseType: !1085, size: 64, offset: 768)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!716, !977, !318}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !978, file: !718, line: 359, baseType: !318, size: 64, offset: 1216)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !978, file: !718, line: 361, baseType: !346, size: 64, offset: 1280)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !978, file: !718, line: 362, baseType: !157, size: 64, offset: 1344)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !978, file: !718, line: 365, baseType: !767, size: 64, offset: 1408)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !978, file: !718, line: 373, baseType: !1093, offset: 1472)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !718, line: 296, elements: !241)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !974, file: !718, line: 391, baseType: !752, size: 64, offset: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !974, file: !718, line: 392, baseType: !415, size: 64, offset: 128)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !974, file: !718, line: 394, baseType: !1097, size: 64, offset: 192)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!318, !346, !318, !318, !318, !318}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !974, file: !718, line: 398, baseType: !318, size: 64, offset: 256)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !974, file: !718, line: 399, baseType: !318, size: 64, offset: 320)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !974, file: !718, line: 405, baseType: !318, size: 64, offset: 384)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !974, file: !718, line: 406, baseType: !318, size: 64, offset: 448)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !974, file: !718, line: 407, baseType: !1105, size: 64, offset: 512)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !708, line: 286, baseType: !1107)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !708, line: 286, size: 64, elements: !1108)
!1108 = !{!1109}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1107, file: !708, line: 286, baseType: !1110, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !993, line: 18, baseType: !318)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !974, file: !718, line: 416, baseType: !743, size: 32, offset: 576)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !974, file: !718, line: 428, baseType: !743, size: 32, offset: 608)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !974, file: !718, line: 437, baseType: !743, size: 32, offset: 640)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !974, file: !718, line: 447, baseType: !743, size: 32, offset: 672)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !974, file: !718, line: 450, baseType: !767, size: 64, offset: 704)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !974, file: !718, line: 452, baseType: !163, size: 32, offset: 768)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !974, file: !718, line: 454, baseType: !227, offset: 800)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !974, file: !718, line: 457, baseType: !763, size: 256, offset: 832)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !974, file: !718, line: 459, baseType: !214, size: 128, offset: 1088)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !974, file: !718, line: 466, baseType: !318, size: 64, offset: 1216)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !974, file: !718, line: 467, baseType: !318, size: 64, offset: 1280)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !974, file: !718, line: 469, baseType: !318, size: 64, offset: 1344)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !974, file: !718, line: 470, baseType: !318, size: 64, offset: 1408)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !974, file: !718, line: 471, baseType: !769, size: 64, offset: 1472)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !974, file: !718, line: 472, baseType: !318, size: 64, offset: 1536)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !974, file: !718, line: 473, baseType: !318, size: 64, offset: 1600)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !974, file: !718, line: 474, baseType: !318, size: 64, offset: 1664)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !974, file: !718, line: 475, baseType: !318, size: 64, offset: 1728)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !974, file: !718, line: 477, baseType: !227, offset: 1792)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !974, file: !718, line: 478, baseType: !318, size: 64, offset: 1792)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !974, file: !718, line: 478, baseType: !318, size: 64, offset: 1856)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !974, file: !718, line: 478, baseType: !318, size: 64, offset: 1920)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !974, file: !718, line: 478, baseType: !318, size: 64, offset: 1984)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !974, file: !718, line: 479, baseType: !318, size: 64, offset: 2048)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !974, file: !718, line: 479, baseType: !318, size: 64, offset: 2112)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !974, file: !718, line: 479, baseType: !318, size: 64, offset: 2176)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !974, file: !718, line: 480, baseType: !318, size: 64, offset: 2240)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !974, file: !718, line: 480, baseType: !318, size: 64, offset: 2304)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !974, file: !718, line: 480, baseType: !318, size: 64, offset: 2368)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !974, file: !718, line: 480, baseType: !318, size: 64, offset: 2432)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !974, file: !718, line: 482, baseType: !1142, size: 2816, offset: 2496)
!1142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 2816, elements: !1143)
!1143 = !{!1144}
!1144 = !DISubrange(count: 44)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !974, file: !718, line: 488, baseType: !1146, size: 256, offset: 5312)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1147, line: 60, size: 256, elements: !1148)
!1147 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1148 = !{!1149}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1146, file: !1147, line: 61, baseType: !1150, size: 256)
!1150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !767, size: 256, elements: !1151)
!1151 = !{!1152}
!1152 = !DISubrange(count: 4)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !974, file: !718, line: 490, baseType: !1154, size: 64, offset: 5568)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !718, line: 490, flags: DIFlagFwdDecl)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !974, file: !718, line: 493, baseType: !1157, size: 896, offset: 5632)
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1158, line: 53, baseType: !1159)
!1158 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1158, line: 13, size: 896, elements: !1160)
!1160 = !{!1161, !1162, !1163, !1164, !1167, !1168, !1175, !1176, !1196, !1197, !1198}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1159, file: !1158, line: 18, baseType: !415, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1159, file: !1158, line: 28, baseType: !769, size: 64, offset: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1159, file: !1158, line: 31, baseType: !763, size: 256, offset: 128)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1159, file: !1158, line: 32, baseType: !1165, size: 64, offset: 384)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1158, line: 32, flags: DIFlagFwdDecl)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1159, file: !1158, line: 37, baseType: !310, size: 16, offset: 448)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1159, file: !1158, line: 40, baseType: !1169, size: 192, offset: 512)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1170, line: 53, size: 192, elements: !1171)
!1170 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1171 = !{!1172, !1173, !1174}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1169, file: !1170, line: 54, baseType: !767, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1169, file: !1170, line: 55, baseType: !227, offset: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1169, file: !1170, line: 59, baseType: !214, size: 128, offset: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1159, file: !1158, line: 41, baseType: !157, size: 64, offset: 704)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1159, file: !1158, line: 42, baseType: !1177, size: 64, offset: 768)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1179)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1180, line: 13, size: 896, elements: !1181)
!1180 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1181 = !{!1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1179, file: !1180, line: 14, baseType: !157, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1179, file: !1180, line: 15, baseType: !318, size: 64, offset: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1179, file: !1180, line: 17, baseType: !318, size: 64, offset: 128)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1179, file: !1180, line: 17, baseType: !318, size: 64, offset: 192)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1179, file: !1180, line: 19, baseType: !303, size: 64, offset: 256)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1179, file: !1180, line: 21, baseType: !303, size: 64, offset: 320)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1179, file: !1180, line: 22, baseType: !303, size: 64, offset: 384)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1179, file: !1180, line: 23, baseType: !303, size: 64, offset: 448)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1179, file: !1180, line: 24, baseType: !303, size: 64, offset: 512)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1179, file: !1180, line: 25, baseType: !303, size: 64, offset: 576)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1179, file: !1180, line: 26, baseType: !303, size: 64, offset: 640)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1179, file: !1180, line: 27, baseType: !303, size: 64, offset: 704)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1179, file: !1180, line: 28, baseType: !303, size: 64, offset: 768)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1179, file: !1180, line: 29, baseType: !303, size: 64, offset: 832)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1159, file: !1158, line: 44, baseType: !743, size: 32, offset: 832)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1159, file: !1158, line: 50, baseType: !855, size: 16, offset: 864)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1159, file: !1158, line: 51, baseType: !1199, size: 16, offset: 880)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !410, line: 18, baseType: !1200)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !412, line: 23, baseType: !1201)
!1201 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !974, file: !718, line: 495, baseType: !318, size: 64, offset: 6528)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !974, file: !718, line: 497, baseType: !1204, size: 64, offset: 6592)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !718, line: 381, size: 384, elements: !1206)
!1206 = !{!1207, !1208, !2308}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1205, file: !718, line: 382, baseType: !743, size: 32)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1205, file: !718, line: 383, baseType: !1209, size: 128, offset: 64)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !718, line: 376, size: 128, elements: !1210)
!1210 = !{!1211, !2306}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1209, file: !718, line: 377, baseType: !1212, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1214, line: 640, size: 48640, elements: !1215)
!1214 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1215 = !{!1216, !1222, !1224, !1225, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1242, !1260, !1271, !1356, !1357, !1358, !1369, !1370, !1372, !1373, !1374, !1375, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1454, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1492, !1494, !1495, !1496, !1508, !1509, !1510, !1511, !1512, !1513, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1537, !1542, !1726, !1727, !1728, !1729, !1733, !1736, !1739, !1742, !1745, !1749, !1850, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1896, !1897, !1898, !1899, !1900, !1905, !1906, !1907, !1910, !1911, !1914, !1917, !1920, !1923, !1966, !1969, !1970, !2049, !2050, !2053, !2054, !2057, !2058, !2059, !2063, !2064, !2065, !2078, !2079, !2080, !2090, !2095, !2098, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1213, file: !1214, line: 646, baseType: !1217, size: 128)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1218, line: 56, size: 128, elements: !1219)
!1218 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1219 = !{!1220, !1221}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1217, file: !1218, line: 57, baseType: !318, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1217, file: !1218, line: 58, baseType: !409, size: 32, offset: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1213, file: !1214, line: 649, baseType: !1223, size: 64, offset: 128)
!1223 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !303)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1213, file: !1214, line: 657, baseType: !157, size: 64, offset: 192)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1213, file: !1214, line: 658, baseType: !1226, size: 32, offset: 256)
!1226 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1227, line: 113, baseType: !1228)
!1227 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1227, line: 111, size: 32, elements: !1229)
!1229 = !{!1230}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1228, file: !1227, line: 112, baseType: !743, size: 32)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1213, file: !1214, line: 660, baseType: !7, size: 32, offset: 288)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1213, file: !1214, line: 661, baseType: !7, size: 32, offset: 320)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1213, file: !1214, line: 684, baseType: !163, size: 32, offset: 352)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1213, file: !1214, line: 686, baseType: !163, size: 32, offset: 384)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1213, file: !1214, line: 687, baseType: !163, size: 32, offset: 416)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1213, file: !1214, line: 688, baseType: !163, size: 32, offset: 448)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1213, file: !1214, line: 689, baseType: !7, size: 32, offset: 480)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1213, file: !1214, line: 691, baseType: !1239, size: 64, offset: 512)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1241)
!1241 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1214, line: 691, flags: DIFlagFwdDecl)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1213, file: !1214, line: 692, baseType: !1243, size: 832, offset: 576)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1214, line: 451, size: 832, elements: !1244)
!1244 = !{!1245, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1243, file: !1214, line: 453, baseType: !1246, size: 128)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1214, line: 325, size: 128, elements: !1247)
!1247 = !{!1248, !1249}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1246, file: !1214, line: 326, baseType: !318, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1246, file: !1214, line: 327, baseType: !409, size: 32, offset: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1243, file: !1214, line: 454, baseType: !756, size: 192, align: 64, offset: 128)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1243, file: !1214, line: 455, baseType: !214, size: 128, offset: 320)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1243, file: !1214, line: 456, baseType: !7, size: 32, offset: 448)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1243, file: !1214, line: 458, baseType: !415, size: 64, offset: 512)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1243, file: !1214, line: 459, baseType: !415, size: 64, offset: 576)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1243, file: !1214, line: 460, baseType: !415, size: 64, offset: 640)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1243, file: !1214, line: 461, baseType: !415, size: 64, offset: 704)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1243, file: !1214, line: 463, baseType: !415, size: 64, offset: 768)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1243, file: !1214, line: 465, baseType: !1259, offset: 832)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1214, line: 415, elements: !241)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1213, file: !1214, line: 693, baseType: !1261, size: 384, offset: 1408)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1214, line: 489, size: 384, elements: !1262)
!1262 = !{!1263, !1264, !1265, !1266, !1267, !1268, !1269}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1261, file: !1214, line: 490, baseType: !214, size: 128)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1261, file: !1214, line: 491, baseType: !318, size: 64, offset: 128)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1261, file: !1214, line: 492, baseType: !318, size: 64, offset: 192)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1261, file: !1214, line: 493, baseType: !7, size: 32, offset: 256)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1261, file: !1214, line: 494, baseType: !310, size: 16, offset: 288)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1261, file: !1214, line: 495, baseType: !310, size: 16, offset: 304)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1261, file: !1214, line: 497, baseType: !1270, size: 64, offset: 320)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1213, file: !1214, line: 697, baseType: !1272, size: 1792, offset: 1792)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1214, line: 507, size: 1792, elements: !1273)
!1273 = !{!1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1353, !1354}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1272, file: !1214, line: 508, baseType: !756, size: 192, align: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1272, file: !1214, line: 515, baseType: !415, size: 64, offset: 192)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1272, file: !1214, line: 516, baseType: !415, size: 64, offset: 256)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1272, file: !1214, line: 517, baseType: !415, size: 64, offset: 320)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1272, file: !1214, line: 518, baseType: !415, size: 64, offset: 384)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1272, file: !1214, line: 519, baseType: !415, size: 64, offset: 448)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1272, file: !1214, line: 526, baseType: !773, size: 64, offset: 512)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1272, file: !1214, line: 527, baseType: !415, size: 64, offset: 576)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1272, file: !1214, line: 528, baseType: !7, size: 32, offset: 640)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1272, file: !1214, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1272, file: !1214, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1272, file: !1214, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1272, file: !1214, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1272, file: !1214, line: 563, baseType: !1288, size: 512, offset: 704)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1289)
!1289 = !{!1290, !1298, !1299, !1304, !1347, !1350, !1351, !1352}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1288, file: !20, line: 119, baseType: !1291, size: 256)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1292, line: 9, size: 256, elements: !1293)
!1292 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1293 = !{!1294, !1295}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1291, file: !1292, line: 10, baseType: !756, size: 192, align: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1291, file: !1292, line: 11, baseType: !1296, size: 64, offset: 192)
!1296 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1297, line: 29, baseType: !773)
!1297 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1288, file: !20, line: 120, baseType: !1296, size: 64, offset: 256)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1288, file: !20, line: 121, baseType: !1300, size: 64, offset: 320)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!19, !1303}
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1288, file: !20, line: 122, baseType: !1305, size: 64, offset: 384)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1307)
!1307 = !{!1308, !1328, !1329, !1332, !1337, !1338, !1342, !1346}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1306, file: !20, line: 160, baseType: !1309, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1311)
!1311 = !{!1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1310, file: !20, line: 215, baseType: !776)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1310, file: !20, line: 216, baseType: !7, size: 32)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1310, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1310, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1310, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1310, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1310, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1310, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1310, file: !20, line: 233, baseType: !1296, size: 64, offset: 128)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1310, file: !20, line: 234, baseType: !1303, size: 64, offset: 192)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1310, file: !20, line: 235, baseType: !1296, size: 64, offset: 256)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1310, file: !20, line: 236, baseType: !1303, size: 64, offset: 320)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1310, file: !20, line: 237, baseType: !1325, size: 4096, offset: 512)
!1325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1306, size: 4096, elements: !1326)
!1326 = !{!1327}
!1327 = !DISubrange(count: 8)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1306, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1306, file: !20, line: 162, baseType: !1330, size: 32, offset: 96)
!1330 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !191, line: 27, baseType: !1331)
!1331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !301, line: 96, baseType: !163)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1306, file: !20, line: 163, baseType: !1333, size: 32, offset: 128)
!1333 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !382, line: 276, baseType: !1334)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !382, line: 276, size: 32, elements: !1335)
!1335 = !{!1336}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1334, file: !382, line: 276, baseType: !386, size: 32)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1306, file: !20, line: 164, baseType: !1303, size: 64, offset: 192)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1306, file: !20, line: 165, baseType: !1339, size: 128, offset: 256)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1292, line: 14, size: 128, elements: !1340)
!1340 = !{!1341}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1339, file: !1292, line: 15, baseType: !748, size: 128)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1306, file: !20, line: 166, baseType: !1343, size: 64, offset: 384)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!1296}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1306, file: !20, line: 167, baseType: !1296, size: 64, offset: 448)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1288, file: !20, line: 123, baseType: !1348, size: 8, offset: 448)
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !410, line: 17, baseType: !1349)
!1349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !412, line: 21, baseType: !421)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1288, file: !20, line: 124, baseType: !1348, size: 8, offset: 456)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1288, file: !20, line: 125, baseType: !1348, size: 8, offset: 464)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1288, file: !20, line: 126, baseType: !1348, size: 8, offset: 472)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1272, file: !1214, line: 572, baseType: !1288, size: 512, offset: 1216)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1272, file: !1214, line: 580, baseType: !1355, size: 64, offset: 1728)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1213, file: !1214, line: 721, baseType: !7, size: 32, offset: 3584)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1213, file: !1214, line: 722, baseType: !163, size: 32, offset: 3616)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1213, file: !1214, line: 723, baseType: !1359, size: 64, offset: 3648)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1361)
!1361 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1362, line: 17, baseType: !1363)
!1362 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1362, line: 17, size: 64, elements: !1364)
!1364 = !{!1365}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1363, file: !1362, line: 17, baseType: !1366, size: 64)
!1366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 64, elements: !1367)
!1367 = !{!1368}
!1368 = !DISubrange(count: 1)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1213, file: !1214, line: 724, baseType: !1361, size: 64, offset: 3712)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1213, file: !1214, line: 749, baseType: !1371, offset: 3776)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1214, line: 290, elements: !241)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1213, file: !1214, line: 751, baseType: !214, size: 128, offset: 3776)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1213, file: !1214, line: 757, baseType: !970, size: 64, offset: 3904)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1213, file: !1214, line: 758, baseType: !970, size: 64, offset: 3968)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1213, file: !1214, line: 761, baseType: !1376, size: 320, offset: 4032)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1147, line: 34, size: 320, elements: !1377)
!1377 = !{!1378, !1379}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1376, file: !1147, line: 35, baseType: !415, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1376, file: !1147, line: 36, baseType: !1380, size: 256, offset: 64)
!1380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !977, size: 256, elements: !1151)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1213, file: !1214, line: 766, baseType: !163, size: 32, offset: 4352)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1213, file: !1214, line: 767, baseType: !163, size: 32, offset: 4384)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1213, file: !1214, line: 768, baseType: !163, size: 32, offset: 4416)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1213, file: !1214, line: 770, baseType: !163, size: 32, offset: 4448)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1213, file: !1214, line: 772, baseType: !318, size: 64, offset: 4480)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1213, file: !1214, line: 775, baseType: !7, size: 32, offset: 4544)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1213, file: !1214, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1213, file: !1214, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1213, file: !1214, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1213, file: !1214, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1213, file: !1214, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1213, file: !1214, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1213, file: !1214, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1213, file: !1214, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1213, file: !1214, line: 831, baseType: !318, size: 64, offset: 4672)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1213, file: !1214, line: 833, baseType: !1397, size: 384, offset: 4736)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1398)
!1398 = !{!1399, !1404}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1397, file: !25, line: 26, baseType: !1400, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!303, !1403}
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, scope: !1397, file: !25, line: 27, baseType: !1405, size: 320, offset: 64)
!1405 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1397, file: !25, line: 27, size: 320, elements: !1406)
!1406 = !{!1407, !1417, !1444}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1405, file: !25, line: 36, baseType: !1408, size: 320)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1405, file: !25, line: 29, size: 320, elements: !1409)
!1409 = !{!1410, !1412, !1413, !1414, !1415, !1416}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1408, file: !25, line: 30, baseType: !1411, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1408, file: !25, line: 31, baseType: !409, size: 32, offset: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1408, file: !25, line: 32, baseType: !409, size: 32, offset: 96)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1408, file: !25, line: 33, baseType: !409, size: 32, offset: 128)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1408, file: !25, line: 34, baseType: !415, size: 64, offset: 192)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1408, file: !25, line: 35, baseType: !1411, size: 64, offset: 256)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1405, file: !25, line: 46, baseType: !1418, size: 192)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1405, file: !25, line: 38, size: 192, elements: !1419)
!1419 = !{!1420, !1421, !1422, !1443}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1418, file: !25, line: 39, baseType: !1330, size: 32)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1418, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1422 = !DIDerivedType(tag: DW_TAG_member, scope: !1418, file: !25, line: 41, baseType: !1423, size: 64, offset: 64)
!1423 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1418, file: !25, line: 41, size: 64, elements: !1424)
!1424 = !{!1425, !1433}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1423, file: !25, line: 42, baseType: !1426, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1428, line: 7, size: 128, elements: !1429)
!1428 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1429 = !{!1430, !1432}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1427, file: !1428, line: 8, baseType: !1431, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !301, line: 93, baseType: !525)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1427, file: !1428, line: 9, baseType: !525, size: 64, offset: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1423, file: !25, line: 43, baseType: !1434, size: 64)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1436, line: 7, size: 64, elements: !1437)
!1436 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1437 = !{!1438, !1442}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1435, file: !1436, line: 8, baseType: !1439, size: 32)
!1439 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1436, line: 5, baseType: !1440)
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !410, line: 20, baseType: !1441)
!1441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !412, line: 26, baseType: !163)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1435, file: !1436, line: 9, baseType: !1440, size: 32, offset: 32)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1418, file: !25, line: 45, baseType: !415, size: 64, offset: 128)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1405, file: !25, line: 54, baseType: !1445, size: 256)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1405, file: !25, line: 48, size: 256, elements: !1446)
!1446 = !{!1447, !1450, !1451, !1452, !1453}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1445, file: !25, line: 49, baseType: !1448, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1445, file: !25, line: 50, baseType: !163, size: 32, offset: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1445, file: !25, line: 51, baseType: !163, size: 32, offset: 96)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1445, file: !25, line: 52, baseType: !318, size: 64, offset: 128)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1445, file: !25, line: 53, baseType: !318, size: 64, offset: 192)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1213, file: !1214, line: 835, baseType: !1455, size: 32, offset: 5120)
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !191, line: 22, baseType: !1456)
!1456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !301, line: 28, baseType: !163)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1213, file: !1214, line: 836, baseType: !1455, size: 32, offset: 5152)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1213, file: !1214, line: 840, baseType: !318, size: 64, offset: 5184)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1213, file: !1214, line: 849, baseType: !1212, size: 64, offset: 5248)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1213, file: !1214, line: 852, baseType: !1212, size: 64, offset: 5312)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1213, file: !1214, line: 857, baseType: !214, size: 128, offset: 5376)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1213, file: !1214, line: 858, baseType: !214, size: 128, offset: 5504)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1213, file: !1214, line: 859, baseType: !1212, size: 64, offset: 5632)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1213, file: !1214, line: 867, baseType: !214, size: 128, offset: 5696)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1213, file: !1214, line: 868, baseType: !214, size: 128, offset: 5824)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1213, file: !1214, line: 871, baseType: !1467, size: 64, offset: 5952)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1469)
!1469 = !{!1470, !1471, !1472, !1473, !1475, !1476, !1483, !1484}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1468, file: !53, line: 61, baseType: !1226, size: 32)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1468, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1468, file: !53, line: 63, baseType: !227, offset: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1468, file: !53, line: 65, baseType: !1474, size: 256, offset: 64)
!1474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !630, size: 256, elements: !1151)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1468, file: !53, line: 66, baseType: !630, size: 64, offset: 320)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1468, file: !53, line: 68, baseType: !1477, size: 128, offset: 384)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1478, line: 40, baseType: !1479)
!1478 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1478, line: 36, size: 128, elements: !1480)
!1480 = !{!1481, !1482}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1479, file: !1478, line: 37, baseType: !227)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1479, file: !1478, line: 38, baseType: !214, size: 128)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1468, file: !53, line: 69, baseType: !359, size: 128, align: 64, offset: 512)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1468, file: !53, line: 70, baseType: !1485, size: 128, offset: 640)
!1485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1486, size: 128, elements: !1367)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1487)
!1487 = !{!1488, !1489}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1486, file: !53, line: 55, baseType: !163, size: 32)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1486, file: !53, line: 56, baseType: !1490, size: 64, offset: 64)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1213, file: !1214, line: 872, baseType: !1493, size: 512, offset: 6016)
!1493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !634, size: 512, elements: !1151)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1213, file: !1214, line: 873, baseType: !214, size: 128, offset: 6528)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1213, file: !1214, line: 874, baseType: !214, size: 128, offset: 6656)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1213, file: !1214, line: 876, baseType: !1497, size: 64, offset: 6784)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1499, line: 26, size: 192, elements: !1500)
!1499 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1500 = !{!1501, !1502}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1498, file: !1499, line: 27, baseType: !7, size: 32)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1498, file: !1499, line: 28, baseType: !1503, size: 128, offset: 64)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1504, line: 43, size: 128, elements: !1505)
!1504 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1505 = !{!1506, !1507}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1503, file: !1504, line: 44, baseType: !776)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1503, file: !1504, line: 45, baseType: !214, size: 128)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1213, file: !1214, line: 879, baseType: !700, size: 64, offset: 6848)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1213, file: !1214, line: 882, baseType: !700, size: 64, offset: 6912)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1213, file: !1214, line: 884, baseType: !415, size: 64, offset: 6976)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1213, file: !1214, line: 885, baseType: !415, size: 64, offset: 7040)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1213, file: !1214, line: 890, baseType: !415, size: 64, offset: 7104)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1213, file: !1214, line: 891, baseType: !1514, size: 128, offset: 7168)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1214, line: 242, size: 128, elements: !1515)
!1515 = !{!1516, !1517, !1518}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1514, file: !1214, line: 244, baseType: !415, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1514, file: !1214, line: 245, baseType: !415, size: 64, offset: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1514, file: !1214, line: 246, baseType: !776, offset: 128)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1213, file: !1214, line: 900, baseType: !318, size: 64, offset: 7296)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1213, file: !1214, line: 901, baseType: !318, size: 64, offset: 7360)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1213, file: !1214, line: 904, baseType: !415, size: 64, offset: 7424)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1213, file: !1214, line: 907, baseType: !415, size: 64, offset: 7488)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1213, file: !1214, line: 910, baseType: !318, size: 64, offset: 7552)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1213, file: !1214, line: 911, baseType: !318, size: 64, offset: 7616)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1213, file: !1214, line: 914, baseType: !1526, size: 640, offset: 7680)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1527, line: 123, size: 640, elements: !1528)
!1527 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1528 = !{!1529, !1535, !1536}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1526, file: !1527, line: 124, baseType: !1530, size: 576)
!1530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1531, size: 576, elements: !269)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1527, line: 108, size: 192, elements: !1532)
!1532 = !{!1533, !1534}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1531, file: !1527, line: 109, baseType: !415, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1531, file: !1527, line: 110, baseType: !1339, size: 128, offset: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1526, file: !1527, line: 125, baseType: !7, size: 32, offset: 576)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1526, file: !1527, line: 126, baseType: !7, size: 32, offset: 608)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1213, file: !1214, line: 917, baseType: !1538, size: 192, offset: 8320)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1527, line: 134, size: 192, elements: !1539)
!1539 = !{!1540, !1541}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1538, file: !1527, line: 135, baseType: !359, size: 128, align: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1538, file: !1527, line: 136, baseType: !7, size: 32, offset: 128)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1213, file: !1214, line: 923, baseType: !1543, size: 64, offset: 8512)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1545)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1546, line: 111, size: 1280, elements: !1547)
!1546 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1547 = !{!1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1567, !1568, !1569, !1570, !1571, !1572, !1679, !1680, !1681, !1682, !1708, !1711, !1721}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1545, file: !1546, line: 112, baseType: !743, size: 32)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1545, file: !1546, line: 120, baseType: !429, size: 32, offset: 32)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1545, file: !1546, line: 121, baseType: !437, size: 32, offset: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1545, file: !1546, line: 122, baseType: !429, size: 32, offset: 96)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1545, file: !1546, line: 123, baseType: !437, size: 32, offset: 128)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1545, file: !1546, line: 124, baseType: !429, size: 32, offset: 160)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1545, file: !1546, line: 125, baseType: !437, size: 32, offset: 192)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1545, file: !1546, line: 126, baseType: !429, size: 32, offset: 224)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1545, file: !1546, line: 127, baseType: !437, size: 32, offset: 256)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1545, file: !1546, line: 128, baseType: !7, size: 32, offset: 288)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1545, file: !1546, line: 129, baseType: !1559, size: 64, offset: 320)
!1559 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1560, line: 26, baseType: !1561)
!1560 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1560, line: 24, size: 64, elements: !1562)
!1562 = !{!1563}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1561, file: !1560, line: 25, baseType: !1564, size: 64)
!1564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !411, size: 64, elements: !1565)
!1565 = !{!1566}
!1566 = !DISubrange(count: 2)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1545, file: !1546, line: 130, baseType: !1559, size: 64, offset: 384)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1545, file: !1546, line: 131, baseType: !1559, size: 64, offset: 448)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1545, file: !1546, line: 132, baseType: !1559, size: 64, offset: 512)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1545, file: !1546, line: 133, baseType: !1559, size: 64, offset: 576)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1545, file: !1546, line: 135, baseType: !421, size: 8, offset: 640)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1545, file: !1546, line: 137, baseType: !1573, size: 64, offset: 704)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1575, line: 189, size: 1664, elements: !1576)
!1575 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1576 = !{!1577, !1578, !1581, !1586, !1587, !1590, !1591, !1596, !1597, !1598, !1599, !1601, !1602, !1603, !1604, !1605, !1643, !1664}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1574, file: !1575, line: 190, baseType: !1226, size: 32)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1574, file: !1575, line: 191, baseType: !1579, size: 32, offset: 32)
!1579 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1575, line: 28, baseType: !1580)
!1580 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !191, line: 98, baseType: !1440)
!1581 = !DIDerivedType(tag: DW_TAG_member, scope: !1574, file: !1575, line: 192, baseType: !1582, size: 192, offset: 64)
!1582 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1574, file: !1575, line: 192, size: 192, elements: !1583)
!1583 = !{!1584, !1585}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1582, file: !1575, line: 193, baseType: !214, size: 128)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1582, file: !1575, line: 194, baseType: !756, size: 192, align: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1574, file: !1575, line: 199, baseType: !763, size: 256, offset: 256)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1574, file: !1575, line: 200, baseType: !1588, size: 64, offset: 512)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1575, line: 200, flags: DIFlagFwdDecl)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1574, file: !1575, line: 201, baseType: !157, size: 64, offset: 576)
!1591 = !DIDerivedType(tag: DW_TAG_member, scope: !1574, file: !1575, line: 202, baseType: !1592, size: 64, offset: 640)
!1592 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1574, file: !1575, line: 202, size: 64, elements: !1593)
!1593 = !{!1594, !1595}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1592, file: !1575, line: 203, baseType: !531, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1592, file: !1575, line: 204, baseType: !531, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1574, file: !1575, line: 206, baseType: !531, size: 64, offset: 704)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1574, file: !1575, line: 207, baseType: !429, size: 32, offset: 768)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1574, file: !1575, line: 208, baseType: !437, size: 32, offset: 800)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1574, file: !1575, line: 209, baseType: !1600, size: 32, offset: 832)
!1600 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1575, line: 31, baseType: !551)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1574, file: !1575, line: 210, baseType: !310, size: 16, offset: 864)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1574, file: !1575, line: 211, baseType: !310, size: 16, offset: 880)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1574, file: !1575, line: 215, baseType: !1201, size: 16, offset: 896)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1574, file: !1575, line: 222, baseType: !318, size: 64, offset: 960)
!1605 = !DIDerivedType(tag: DW_TAG_member, scope: !1574, file: !1575, line: 239, baseType: !1606, size: 320, offset: 1024)
!1606 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1574, file: !1575, line: 239, size: 320, elements: !1607)
!1607 = !{!1608, !1635}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1606, file: !1575, line: 240, baseType: !1609, size: 320)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1575, line: 108, size: 320, elements: !1610)
!1610 = !{!1611, !1612, !1624, !1627, !1634}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1609, file: !1575, line: 110, baseType: !318, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, scope: !1609, file: !1575, line: 111, baseType: !1613, size: 64, offset: 64)
!1613 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1609, file: !1575, line: 111, size: 64, elements: !1614)
!1614 = !{!1615, !1623}
!1615 = !DIDerivedType(tag: DW_TAG_member, scope: !1613, file: !1575, line: 112, baseType: !1616, size: 64)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1613, file: !1575, line: 112, size: 64, elements: !1617)
!1617 = !{!1618, !1619}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1616, file: !1575, line: 114, baseType: !855, size: 16)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1616, file: !1575, line: 115, baseType: !1620, size: 48, offset: 16)
!1620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 48, elements: !1621)
!1621 = !{!1622}
!1622 = !DISubrange(count: 6)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1613, file: !1575, line: 121, baseType: !318, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1609, file: !1575, line: 123, baseType: !1625, size: 64, offset: 128)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1575, line: 96, flags: DIFlagFwdDecl)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1609, file: !1575, line: 124, baseType: !1628, size: 64, offset: 192)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1575, line: 102, size: 192, elements: !1630)
!1630 = !{!1631, !1632, !1633}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1629, file: !1575, line: 103, baseType: !359, size: 128, align: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1629, file: !1575, line: 104, baseType: !1226, size: 32, offset: 128)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1629, file: !1575, line: 105, baseType: !190, size: 8, offset: 160)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1609, file: !1575, line: 125, baseType: !210, size: 64, offset: 256)
!1635 = !DIDerivedType(tag: DW_TAG_member, scope: !1606, file: !1575, line: 241, baseType: !1636, size: 320)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1606, file: !1575, line: 241, size: 320, elements: !1637)
!1637 = !{!1638, !1639, !1640, !1641, !1642}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1636, file: !1575, line: 242, baseType: !318, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1636, file: !1575, line: 243, baseType: !318, size: 64, offset: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1636, file: !1575, line: 244, baseType: !1625, size: 64, offset: 128)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1636, file: !1575, line: 245, baseType: !1628, size: 64, offset: 192)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1636, file: !1575, line: 246, baseType: !268, size: 64, offset: 256)
!1643 = !DIDerivedType(tag: DW_TAG_member, scope: !1574, file: !1575, line: 254, baseType: !1644, size: 256, offset: 1344)
!1644 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1574, file: !1575, line: 254, size: 256, elements: !1645)
!1645 = !{!1646, !1652}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1644, file: !1575, line: 255, baseType: !1647, size: 256)
!1647 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1575, line: 128, size: 256, elements: !1648)
!1648 = !{!1649, !1650}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1647, file: !1575, line: 129, baseType: !157, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1647, file: !1575, line: 130, baseType: !1651, size: 256)
!1651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 256, elements: !1151)
!1652 = !DIDerivedType(tag: DW_TAG_member, scope: !1644, file: !1575, line: 256, baseType: !1653, size: 256)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1644, file: !1575, line: 256, size: 256, elements: !1654)
!1654 = !{!1655, !1656}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1653, file: !1575, line: 258, baseType: !214, size: 128)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1653, file: !1575, line: 259, baseType: !1657, size: 128, offset: 128)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1658, line: 22, size: 128, elements: !1659)
!1658 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1659 = !{!1660, !1663}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1657, file: !1658, line: 23, baseType: !1661, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1658, line: 23, flags: DIFlagFwdDecl)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1657, file: !1658, line: 24, baseType: !318, size: 64, offset: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1574, file: !1575, line: 274, baseType: !1665, size: 64, offset: 1600)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1575, line: 170, size: 192, elements: !1667)
!1667 = !{!1668, !1677, !1678}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1666, file: !1575, line: 171, baseType: !1669, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1575, line: 165, baseType: !1670)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!163, !1573, !1673, !1675, !1573}
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1626)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1647)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1666, file: !1575, line: 172, baseType: !1573, size: 64, offset: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1666, file: !1575, line: 173, baseType: !1625, size: 64, offset: 128)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1545, file: !1546, line: 138, baseType: !1573, size: 64, offset: 768)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1545, file: !1546, line: 139, baseType: !1573, size: 64, offset: 832)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1545, file: !1546, line: 140, baseType: !1573, size: 64, offset: 896)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1545, file: !1546, line: 145, baseType: !1683, size: 64, offset: 960)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1685, line: 13, size: 896, elements: !1686)
!1685 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1686 = !{!1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1684, file: !1685, line: 14, baseType: !1226, size: 32)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1684, file: !1685, line: 15, baseType: !743, size: 32, offset: 32)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1684, file: !1685, line: 16, baseType: !743, size: 32, offset: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1684, file: !1685, line: 21, baseType: !767, size: 64, offset: 128)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1684, file: !1685, line: 27, baseType: !318, size: 64, offset: 192)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1684, file: !1685, line: 28, baseType: !318, size: 64, offset: 256)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1684, file: !1685, line: 29, baseType: !767, size: 64, offset: 320)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1684, file: !1685, line: 32, baseType: !634, size: 128, offset: 384)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1684, file: !1685, line: 33, baseType: !429, size: 32, offset: 512)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1684, file: !1685, line: 37, baseType: !767, size: 64, offset: 576)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1684, file: !1685, line: 44, baseType: !1698, size: 256, offset: 640)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1699, line: 15, size: 256, elements: !1700)
!1699 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1700 = !{!1701, !1702, !1703, !1704, !1705, !1706, !1707}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1698, file: !1699, line: 16, baseType: !776)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1698, file: !1699, line: 18, baseType: !163, size: 32)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1698, file: !1699, line: 19, baseType: !163, size: 32, offset: 32)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1698, file: !1699, line: 20, baseType: !163, size: 32, offset: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1698, file: !1699, line: 21, baseType: !163, size: 32, offset: 96)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1698, file: !1699, line: 22, baseType: !318, size: 64, offset: 128)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1698, file: !1699, line: 23, baseType: !318, size: 64, offset: 192)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1545, file: !1546, line: 146, baseType: !1709, size: 64, offset: 1024)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !430, line: 18, flags: DIFlagFwdDecl)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1545, file: !1546, line: 147, baseType: !1712, size: 64, offset: 1088)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1546, line: 25, size: 64, elements: !1714)
!1714 = !{!1715, !1716, !1717}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1713, file: !1546, line: 26, baseType: !743, size: 32)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1713, file: !1546, line: 27, baseType: !163, size: 32, offset: 32)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1713, file: !1546, line: 28, baseType: !1718, offset: 64)
!1718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !437, elements: !1719)
!1719 = !{!1720}
!1720 = !DISubrange(count: 0)
!1721 = !DIDerivedType(tag: DW_TAG_member, scope: !1545, file: !1546, line: 149, baseType: !1722, size: 128, offset: 1152)
!1722 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1545, file: !1546, line: 149, size: 128, elements: !1723)
!1723 = !{!1724, !1725}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1722, file: !1546, line: 150, baseType: !163, size: 32)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1722, file: !1546, line: 151, baseType: !359, size: 128, align: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1213, file: !1214, line: 926, baseType: !1543, size: 64, offset: 8576)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1213, file: !1214, line: 929, baseType: !1543, size: 64, offset: 8640)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1213, file: !1214, line: 933, baseType: !1573, size: 64, offset: 8704)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1213, file: !1214, line: 943, baseType: !1730, size: 128, offset: 8768)
!1730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 128, elements: !1731)
!1731 = !{!1732}
!1732 = !DISubrange(count: 16)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1213, file: !1214, line: 945, baseType: !1734, size: 64, offset: 8896)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1214, line: 49, flags: DIFlagFwdDecl)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1213, file: !1214, line: 956, baseType: !1737, size: 64, offset: 8960)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1214, line: 45, flags: DIFlagFwdDecl)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1213, file: !1214, line: 959, baseType: !1740, size: 64, offset: 9024)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1214, line: 959, flags: DIFlagFwdDecl)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1213, file: !1214, line: 962, baseType: !1743, size: 64, offset: 9088)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1214, line: 66, flags: DIFlagFwdDecl)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1213, file: !1214, line: 966, baseType: !1746, size: 64, offset: 9152)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1748, line: 35, flags: DIFlagFwdDecl)
!1748 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1213, file: !1214, line: 969, baseType: !1750, size: 64, offset: 9216)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1752, line: 82, size: 7296, elements: !1753)
!1752 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1753 = !{!1754, !1755, !1756, !1757, !1758, !1759, !1760, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1789, !1798, !1799, !1801, !1802, !1803, !1806, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1836, !1837, !1844, !1845, !1846, !1847, !1848, !1849}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1751, file: !1752, line: 83, baseType: !1226, size: 32)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1751, file: !1752, line: 84, baseType: !743, size: 32, offset: 32)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1751, file: !1752, line: 85, baseType: !163, size: 32, offset: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1751, file: !1752, line: 86, baseType: !214, size: 128, offset: 128)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1751, file: !1752, line: 88, baseType: !1477, size: 128, offset: 256)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1751, file: !1752, line: 91, baseType: !1212, size: 64, offset: 384)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1751, file: !1752, line: 94, baseType: !1761, size: 192, offset: 448)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1762, line: 30, size: 192, elements: !1763)
!1762 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1763 = !{!1764, !1765}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1761, file: !1762, line: 31, baseType: !214, size: 128)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1761, file: !1762, line: 32, baseType: !1766, size: 64, offset: 128)
!1766 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1767, line: 25, baseType: !1768)
!1767 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1767, line: 23, size: 64, elements: !1769)
!1769 = !{!1770}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1768, file: !1767, line: 24, baseType: !1366, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1751, file: !1752, line: 97, baseType: !630, size: 64, offset: 640)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1751, file: !1752, line: 100, baseType: !163, size: 32, offset: 704)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1751, file: !1752, line: 106, baseType: !163, size: 32, offset: 736)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1751, file: !1752, line: 107, baseType: !1212, size: 64, offset: 768)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1751, file: !1752, line: 110, baseType: !163, size: 32, offset: 832)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1751, file: !1752, line: 111, baseType: !7, size: 32, offset: 864)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1751, file: !1752, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1751, file: !1752, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1751, file: !1752, line: 128, baseType: !163, size: 32, offset: 928)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1751, file: !1752, line: 129, baseType: !214, size: 128, offset: 960)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1751, file: !1752, line: 132, baseType: !1288, size: 512, offset: 1088)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1751, file: !1752, line: 133, baseType: !1296, size: 64, offset: 1600)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1751, file: !1752, line: 140, baseType: !1784, size: 256, offset: 1664)
!1784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1785, size: 256, elements: !1565)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1752, line: 38, size: 128, elements: !1786)
!1786 = !{!1787, !1788}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1785, file: !1752, line: 39, baseType: !415, size: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1785, file: !1752, line: 40, baseType: !415, size: 64, offset: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1751, file: !1752, line: 146, baseType: !1790, size: 192, offset: 1920)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1752, line: 66, size: 192, elements: !1791)
!1791 = !{!1792}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1790, file: !1752, line: 67, baseType: !1793, size: 192)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1752, line: 47, size: 192, elements: !1794)
!1794 = !{!1795, !1796, !1797}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1793, file: !1752, line: 48, baseType: !769, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1793, file: !1752, line: 49, baseType: !769, size: 64, offset: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1793, file: !1752, line: 50, baseType: !769, size: 64, offset: 128)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1751, file: !1752, line: 150, baseType: !1526, size: 640, offset: 2112)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1751, file: !1752, line: 153, baseType: !1800, size: 256, offset: 2752)
!1800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1467, size: 256, elements: !1151)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1751, file: !1752, line: 159, baseType: !1467, size: 64, offset: 3008)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1751, file: !1752, line: 162, baseType: !163, size: 32, offset: 3072)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1751, file: !1752, line: 164, baseType: !1804, size: 64, offset: 3136)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1752, line: 164, flags: DIFlagFwdDecl)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1751, file: !1752, line: 175, baseType: !1807, size: 32, offset: 3200)
!1807 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !382, line: 805, baseType: !1808)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !382, line: 798, size: 32, elements: !1809)
!1809 = !{!1810, !1811}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1808, file: !382, line: 803, baseType: !381, size: 32)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1808, file: !382, line: 804, baseType: !227, offset: 32)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1751, file: !1752, line: 176, baseType: !415, size: 64, offset: 3264)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1751, file: !1752, line: 176, baseType: !415, size: 64, offset: 3328)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1751, file: !1752, line: 176, baseType: !415, size: 64, offset: 3392)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1751, file: !1752, line: 176, baseType: !415, size: 64, offset: 3456)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1751, file: !1752, line: 177, baseType: !415, size: 64, offset: 3520)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1751, file: !1752, line: 178, baseType: !415, size: 64, offset: 3584)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1751, file: !1752, line: 179, baseType: !1514, size: 128, offset: 3648)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1751, file: !1752, line: 180, baseType: !318, size: 64, offset: 3776)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1751, file: !1752, line: 180, baseType: !318, size: 64, offset: 3840)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1751, file: !1752, line: 180, baseType: !318, size: 64, offset: 3904)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1751, file: !1752, line: 180, baseType: !318, size: 64, offset: 3968)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1751, file: !1752, line: 181, baseType: !318, size: 64, offset: 4032)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1751, file: !1752, line: 181, baseType: !318, size: 64, offset: 4096)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1751, file: !1752, line: 181, baseType: !318, size: 64, offset: 4160)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1751, file: !1752, line: 181, baseType: !318, size: 64, offset: 4224)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1751, file: !1752, line: 182, baseType: !318, size: 64, offset: 4288)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1751, file: !1752, line: 182, baseType: !318, size: 64, offset: 4352)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1751, file: !1752, line: 182, baseType: !318, size: 64, offset: 4416)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1751, file: !1752, line: 182, baseType: !318, size: 64, offset: 4480)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1751, file: !1752, line: 183, baseType: !318, size: 64, offset: 4544)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1751, file: !1752, line: 183, baseType: !318, size: 64, offset: 4608)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1751, file: !1752, line: 184, baseType: !1834, offset: 4672)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1835, line: 12, elements: !241)
!1835 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1751, file: !1752, line: 192, baseType: !417, size: 64, offset: 4672)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1751, file: !1752, line: 203, baseType: !1838, size: 2048, offset: 4736)
!1838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1839, size: 2048, elements: !1731)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1840, line: 43, size: 128, elements: !1841)
!1840 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1841 = !{!1842, !1843}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1839, file: !1840, line: 44, baseType: !317, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1839, file: !1840, line: 45, baseType: !317, size: 64, offset: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1751, file: !1752, line: 220, baseType: !190, size: 8, offset: 6784)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1751, file: !1752, line: 221, baseType: !1201, size: 16, offset: 6800)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1751, file: !1752, line: 222, baseType: !1201, size: 16, offset: 6816)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1751, file: !1752, line: 224, baseType: !970, size: 64, offset: 6848)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1751, file: !1752, line: 227, baseType: !1169, size: 192, offset: 6912)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1751, file: !1752, line: 233, baseType: !1169, size: 192, offset: 7104)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1213, file: !1214, line: 970, baseType: !1851, size: 64, offset: 9280)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1752, line: 20, size: 16576, elements: !1853)
!1853 = !{!1854, !1855, !1856, !1857}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1852, file: !1752, line: 21, baseType: !227)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1852, file: !1752, line: 22, baseType: !1226, size: 32)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1852, file: !1752, line: 23, baseType: !1477, size: 128, offset: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1852, file: !1752, line: 24, baseType: !1858, size: 16384, offset: 192)
!1858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1859, size: 16384, elements: !273)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1762, line: 49, size: 256, elements: !1860)
!1860 = !{!1861}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1859, file: !1762, line: 50, baseType: !1862, size: 256)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1762, line: 35, size: 256, elements: !1863)
!1863 = !{!1864, !1871, !1872, !1878}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1862, file: !1762, line: 37, baseType: !1865, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1866, line: 19, baseType: !1867)
!1866 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1866, line: 18, baseType: !1869)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{null, !163}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1862, file: !1762, line: 38, baseType: !318, size: 64, offset: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1862, file: !1762, line: 44, baseType: !1873, size: 64, offset: 128)
!1873 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1866, line: 22, baseType: !1874)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1866, line: 21, baseType: !1876)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{null}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1862, file: !1762, line: 46, baseType: !1766, size: 64, offset: 192)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1213, file: !1214, line: 971, baseType: !1766, size: 64, offset: 9344)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1213, file: !1214, line: 972, baseType: !1766, size: 64, offset: 9408)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1213, file: !1214, line: 974, baseType: !1766, size: 64, offset: 9472)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1213, file: !1214, line: 975, baseType: !1761, size: 192, offset: 9536)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1213, file: !1214, line: 976, baseType: !318, size: 64, offset: 9728)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1213, file: !1214, line: 977, baseType: !315, size: 64, offset: 9792)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1213, file: !1214, line: 978, baseType: !7, size: 32, offset: 9856)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1213, file: !1214, line: 980, baseType: !362, size: 64, offset: 9920)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1213, file: !1214, line: 989, baseType: !1888, size: 128, offset: 9984)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1889, line: 35, size: 128, elements: !1890)
!1889 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1890 = !{!1891, !1892, !1893}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1888, file: !1889, line: 36, baseType: !163, size: 32)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1888, file: !1889, line: 37, baseType: !743, size: 32, offset: 32)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1888, file: !1889, line: 38, baseType: !1894, size: 64, offset: 64)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1889, line: 23, flags: DIFlagFwdDecl)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1213, file: !1214, line: 992, baseType: !415, size: 64, offset: 10112)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1213, file: !1214, line: 993, baseType: !415, size: 64, offset: 10176)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1213, file: !1214, line: 996, baseType: !227, offset: 10240)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1213, file: !1214, line: 999, baseType: !776, offset: 10240)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1213, file: !1214, line: 1001, baseType: !1901, size: 64, offset: 10240)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1214, line: 636, size: 64, elements: !1902)
!1902 = !{!1903}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1901, file: !1214, line: 637, baseType: !1904, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1213, file: !1214, line: 1005, baseType: !748, size: 128, offset: 10304)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1213, file: !1214, line: 1007, baseType: !1212, size: 64, offset: 10432)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1213, file: !1214, line: 1009, baseType: !1908, size: 64, offset: 10496)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1214, line: 1009, flags: DIFlagFwdDecl)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1213, file: !1214, line: 1043, baseType: !157, size: 64, offset: 10560)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1213, file: !1214, line: 1046, baseType: !1912, size: 64, offset: 10624)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1214, line: 41, flags: DIFlagFwdDecl)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1213, file: !1214, line: 1050, baseType: !1915, size: 64, offset: 10688)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1214, line: 42, flags: DIFlagFwdDecl)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1213, file: !1214, line: 1054, baseType: !1918, size: 64, offset: 10752)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1214, line: 55, flags: DIFlagFwdDecl)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1213, file: !1214, line: 1056, baseType: !1921, size: 64, offset: 10816)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1214, line: 40, flags: DIFlagFwdDecl)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1213, file: !1214, line: 1058, baseType: !1924, size: 64, offset: 10880)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1926, line: 99, size: 704, elements: !1927)
!1926 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1927 = !{!1928, !1929, !1930, !1931, !1932, !1933, !1934, !1953, !1954}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1925, file: !1926, line: 100, baseType: !767, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1925, file: !1926, line: 101, baseType: !743, size: 32, offset: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1925, file: !1926, line: 102, baseType: !743, size: 32, offset: 96)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1925, file: !1926, line: 105, baseType: !227, offset: 128)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1925, file: !1926, line: 107, baseType: !310, size: 16, offset: 128)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1925, file: !1926, line: 109, baseType: !734, size: 128, offset: 192)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1925, file: !1926, line: 110, baseType: !1935, size: 64, offset: 320)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1926, line: 73, size: 448, elements: !1937)
!1937 = !{!1938, !1941, !1942, !1947, !1952}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1936, file: !1926, line: 74, baseType: !1939, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1926, line: 74, flags: DIFlagFwdDecl)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1936, file: !1926, line: 75, baseType: !1924, size: 64, offset: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, scope: !1936, file: !1926, line: 83, baseType: !1943, size: 128, offset: 128)
!1943 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1936, file: !1926, line: 83, size: 128, elements: !1944)
!1944 = !{!1945, !1946}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1943, file: !1926, line: 84, baseType: !214, size: 128)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1943, file: !1926, line: 85, baseType: !931, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, scope: !1936, file: !1926, line: 87, baseType: !1948, size: 128, offset: 256)
!1948 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1936, file: !1926, line: 87, size: 128, elements: !1949)
!1949 = !{!1950, !1951}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1948, file: !1926, line: 88, baseType: !634, size: 128)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1948, file: !1926, line: 89, baseType: !359, size: 128, align: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1936, file: !1926, line: 92, baseType: !7, size: 32, offset: 384)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1925, file: !1926, line: 111, baseType: !630, size: 64, offset: 384)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1925, file: !1926, line: 113, baseType: !1955, size: 256, offset: 448)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1956, line: 102, size: 256, elements: !1957)
!1956 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1957 = !{!1958, !1959, !1960}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1955, file: !1956, line: 103, baseType: !767, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1955, file: !1956, line: 104, baseType: !214, size: 128, offset: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1955, file: !1956, line: 105, baseType: !1961, size: 64, offset: 192)
!1961 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1956, line: 21, baseType: !1962)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{null, !1965}
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1213, file: !1214, line: 1061, baseType: !1967, size: 64, offset: 10944)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1214, line: 43, flags: DIFlagFwdDecl)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1213, file: !1214, line: 1064, baseType: !318, size: 64, offset: 11008)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1213, file: !1214, line: 1065, baseType: !1971, size: 64, offset: 11072)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1762, line: 14, baseType: !1973)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1762, line: 12, size: 384, elements: !1974)
!1974 = !{!1975}
!1975 = !DIDerivedType(tag: DW_TAG_member, scope: !1973, file: !1762, line: 13, baseType: !1976, size: 384)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1973, file: !1762, line: 13, size: 384, elements: !1977)
!1977 = !{!1978, !1979, !1980, !1981}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1976, file: !1762, line: 13, baseType: !163, size: 32)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1976, file: !1762, line: 13, baseType: !163, size: 32, offset: 32)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1976, file: !1762, line: 13, baseType: !163, size: 32, offset: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1976, file: !1762, line: 13, baseType: !1982, size: 256, offset: 128)
!1982 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1983, line: 32, size: 256, elements: !1984)
!1983 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1984 = !{!1985, !1990, !2003, !2009, !2018, !2038, !2043}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1982, file: !1983, line: 37, baseType: !1986, size: 64)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1982, file: !1983, line: 34, size: 64, elements: !1987)
!1987 = !{!1988, !1989}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1986, file: !1983, line: 35, baseType: !1456, size: 32)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1986, file: !1983, line: 36, baseType: !435, size: 32, offset: 32)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1982, file: !1983, line: 45, baseType: !1991, size: 192)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1982, file: !1983, line: 40, size: 192, elements: !1992)
!1992 = !{!1993, !1995, !1996, !2002}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1991, file: !1983, line: 41, baseType: !1994, size: 32)
!1994 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !301, line: 95, baseType: !163)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1991, file: !1983, line: 42, baseType: !163, size: 32, offset: 32)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1991, file: !1983, line: 43, baseType: !1997, size: 64, offset: 64)
!1997 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1983, line: 11, baseType: !1998)
!1998 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1983, line: 8, size: 64, elements: !1999)
!1999 = !{!2000, !2001}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1998, file: !1983, line: 9, baseType: !163, size: 32)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1998, file: !1983, line: 10, baseType: !157, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1991, file: !1983, line: 44, baseType: !163, size: 32, offset: 128)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1982, file: !1983, line: 52, baseType: !2004, size: 128)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1982, file: !1983, line: 48, size: 128, elements: !2005)
!2005 = !{!2006, !2007, !2008}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2004, file: !1983, line: 49, baseType: !1456, size: 32)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2004, file: !1983, line: 50, baseType: !435, size: 32, offset: 32)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2004, file: !1983, line: 51, baseType: !1997, size: 64, offset: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1982, file: !1983, line: 61, baseType: !2010, size: 256)
!2010 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1982, file: !1983, line: 55, size: 256, elements: !2011)
!2011 = !{!2012, !2013, !2014, !2015, !2017}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2010, file: !1983, line: 56, baseType: !1456, size: 32)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2010, file: !1983, line: 57, baseType: !435, size: 32, offset: 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2010, file: !1983, line: 58, baseType: !163, size: 32, offset: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2010, file: !1983, line: 59, baseType: !2016, size: 64, offset: 128)
!2016 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !301, line: 94, baseType: !302)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2010, file: !1983, line: 60, baseType: !2016, size: 64, offset: 192)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1982, file: !1983, line: 95, baseType: !2019, size: 256)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1982, file: !1983, line: 64, size: 256, elements: !2020)
!2020 = !{!2021, !2022}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2019, file: !1983, line: 65, baseType: !157, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, scope: !2019, file: !1983, line: 77, baseType: !2023, size: 192, offset: 64)
!2023 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2019, file: !1983, line: 77, size: 192, elements: !2024)
!2024 = !{!2025, !2026, !2033}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2023, file: !1983, line: 82, baseType: !1201, size: 16)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2023, file: !1983, line: 88, baseType: !2027, size: 192)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2023, file: !1983, line: 84, size: 192, elements: !2028)
!2028 = !{!2029, !2031, !2032}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2027, file: !1983, line: 85, baseType: !2030, size: 64)
!2030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 64, elements: !1326)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2027, file: !1983, line: 86, baseType: !157, size: 64, offset: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2027, file: !1983, line: 87, baseType: !157, size: 64, offset: 128)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2023, file: !1983, line: 93, baseType: !2034, size: 96)
!2034 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2023, file: !1983, line: 90, size: 96, elements: !2035)
!2035 = !{!2036, !2037}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2034, file: !1983, line: 91, baseType: !2030, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2034, file: !1983, line: 92, baseType: !411, size: 32, offset: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1982, file: !1983, line: 101, baseType: !2039, size: 128)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1982, file: !1983, line: 98, size: 128, elements: !2040)
!2040 = !{!2041, !2042}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2039, file: !1983, line: 99, baseType: !303, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2039, file: !1983, line: 100, baseType: !163, size: 32, offset: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1982, file: !1983, line: 108, baseType: !2044, size: 128)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1982, file: !1983, line: 104, size: 128, elements: !2045)
!2045 = !{!2046, !2047, !2048}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2044, file: !1983, line: 105, baseType: !157, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2044, file: !1983, line: 106, baseType: !163, size: 32, offset: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2044, file: !1983, line: 107, baseType: !7, size: 32, offset: 96)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1213, file: !1214, line: 1067, baseType: !1834, offset: 11136)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1213, file: !1214, line: 1099, baseType: !2051, size: 64, offset: 11136)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1214, line: 56, flags: DIFlagFwdDecl)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1213, file: !1214, line: 1103, baseType: !214, size: 128, offset: 11200)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1213, file: !1214, line: 1104, baseType: !2055, size: 64, offset: 11328)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1214, line: 46, flags: DIFlagFwdDecl)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1213, file: !1214, line: 1105, baseType: !1169, size: 192, offset: 11392)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1213, file: !1214, line: 1106, baseType: !7, size: 32, offset: 11584)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1213, file: !1214, line: 1109, baseType: !2060, size: 128, offset: 11648)
!2060 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2061, size: 128, elements: !1565)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1214, line: 51, flags: DIFlagFwdDecl)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1213, file: !1214, line: 1110, baseType: !1169, size: 192, offset: 11776)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1213, file: !1214, line: 1111, baseType: !214, size: 128, offset: 11968)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1213, file: !1214, line: 1173, baseType: !2066, size: 64, offset: 12096)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2068, line: 62, size: 256, align: 256, elements: !2069)
!2068 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2069 = !{!2070, !2071, !2072, !2077}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2067, file: !2068, line: 75, baseType: !411, size: 32)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2067, file: !2068, line: 90, baseType: !411, size: 32, offset: 32)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2067, file: !2068, line: 124, baseType: !2073, size: 64, offset: 64)
!2073 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2067, file: !2068, line: 109, size: 64, elements: !2074)
!2074 = !{!2075, !2076}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2073, file: !2068, line: 110, baseType: !416, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2073, file: !2068, line: 112, baseType: !416, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2067, file: !2068, line: 144, baseType: !411, size: 32, offset: 128)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1213, file: !1214, line: 1174, baseType: !409, size: 32, offset: 12160)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1213, file: !1214, line: 1179, baseType: !318, size: 64, offset: 12224)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1213, file: !1214, line: 1182, baseType: !2081, size: 128, offset: 12288)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1147, line: 76, size: 128, elements: !2082)
!2082 = !{!2083, !2088, !2089}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2081, file: !1147, line: 85, baseType: !2084, size: 64)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2085, line: 7, size: 64, elements: !2086)
!2085 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2086 = !{!2087}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2084, file: !2085, line: 12, baseType: !1363, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2081, file: !1147, line: 88, baseType: !190, size: 8, offset: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2081, file: !1147, line: 95, baseType: !190, size: 8, offset: 72)
!2090 = !DIDerivedType(tag: DW_TAG_member, scope: !1213, file: !1214, line: 1184, baseType: !2091, size: 128, offset: 12416)
!2091 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1213, file: !1214, line: 1184, size: 128, elements: !2092)
!2092 = !{!2093, !2094}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2091, file: !1214, line: 1185, baseType: !1226, size: 32)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2091, file: !1214, line: 1186, baseType: !359, size: 128, align: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1213, file: !1214, line: 1190, baseType: !2096, size: 64, offset: 12544)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1214, line: 53, flags: DIFlagFwdDecl)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1213, file: !1214, line: 1192, baseType: !2099, size: 128, offset: 12608)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1147, line: 64, size: 128, elements: !2100)
!2100 = !{!2101, !2102, !2103}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2099, file: !1147, line: 65, baseType: !716, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2099, file: !1147, line: 67, baseType: !411, size: 32, offset: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2099, file: !1147, line: 68, baseType: !411, size: 32, offset: 96)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1213, file: !1214, line: 1206, baseType: !163, size: 32, offset: 12736)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1213, file: !1214, line: 1207, baseType: !163, size: 32, offset: 12768)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1213, file: !1214, line: 1209, baseType: !318, size: 64, offset: 12800)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1213, file: !1214, line: 1219, baseType: !415, size: 64, offset: 12864)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1213, file: !1214, line: 1220, baseType: !415, size: 64, offset: 12928)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1213, file: !1214, line: 1317, baseType: !163, size: 32, offset: 12992)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1213, file: !1214, line: 1319, baseType: !1212, size: 64, offset: 13056)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1213, file: !1214, line: 1322, baseType: !2112, size: 64, offset: 13120)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2114, line: 56, size: 512, elements: !2115)
!2114 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2115 = !{!2116, !2117, !2118, !2119, !2120, !2121, !2122, !2124}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2113, file: !2114, line: 57, baseType: !2112, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2113, file: !2114, line: 58, baseType: !157, size: 64, offset: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2113, file: !2114, line: 59, baseType: !318, size: 64, offset: 128)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2113, file: !2114, line: 60, baseType: !318, size: 64, offset: 192)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2113, file: !2114, line: 61, baseType: !816, size: 64, offset: 256)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2113, file: !2114, line: 62, baseType: !7, size: 32, offset: 320)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2113, file: !2114, line: 63, baseType: !2123, size: 64, offset: 384)
!2123 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !191, line: 153, baseType: !415)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2113, file: !2114, line: 64, baseType: !199, size: 64, offset: 448)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1213, file: !1214, line: 1326, baseType: !1226, size: 32, offset: 13184)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1213, file: !1214, line: 1342, baseType: !157, size: 64, offset: 13248)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1213, file: !1214, line: 1343, baseType: !416, size: 64, offset: 13312)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1213, file: !1214, line: 1344, baseType: !415, size: 64, offset: 13376)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1213, file: !1214, line: 1345, baseType: !416, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1213, file: !1214, line: 1346, baseType: !416, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1213, file: !1214, line: 1347, baseType: !416, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1213, file: !1214, line: 1348, baseType: !359, size: 128, align: 64, offset: 13504)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1213, file: !1214, line: 1358, baseType: !2134, size: 34816, offset: 13824)
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2135, line: 485, size: 34816, elements: !2136)
!2135 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2136 = !{!2137, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2166, !2167, !2168, !2169, !2170, !2171, !2174, !2175, !2176}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2134, file: !2135, line: 487, baseType: !2138, size: 192)
!2138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2139, size: 192, elements: !269)
!2139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2140, line: 16, size: 64, elements: !2141)
!2140 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2141 = !{!2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2139, file: !2140, line: 17, baseType: !855, size: 16)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2139, file: !2140, line: 18, baseType: !855, size: 16, offset: 16)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2139, file: !2140, line: 19, baseType: !855, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2139, file: !2140, line: 19, baseType: !855, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2139, file: !2140, line: 19, baseType: !855, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2139, file: !2140, line: 19, baseType: !855, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2139, file: !2140, line: 19, baseType: !855, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2139, file: !2140, line: 20, baseType: !855, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2139, file: !2140, line: 20, baseType: !855, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2139, file: !2140, line: 20, baseType: !855, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2139, file: !2140, line: 20, baseType: !855, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2139, file: !2140, line: 20, baseType: !855, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2139, file: !2140, line: 20, baseType: !855, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2134, file: !2135, line: 491, baseType: !318, size: 64, offset: 192)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2134, file: !2135, line: 495, baseType: !310, size: 16, offset: 256)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2134, file: !2135, line: 496, baseType: !310, size: 16, offset: 272)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2134, file: !2135, line: 497, baseType: !310, size: 16, offset: 288)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2134, file: !2135, line: 498, baseType: !310, size: 16, offset: 304)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2134, file: !2135, line: 502, baseType: !318, size: 64, offset: 320)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2134, file: !2135, line: 503, baseType: !318, size: 64, offset: 384)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2134, file: !2135, line: 514, baseType: !2163, size: 256, offset: 448)
!2163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2164, size: 256, elements: !1151)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2135, line: 483, flags: DIFlagFwdDecl)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2134, file: !2135, line: 516, baseType: !318, size: 64, offset: 704)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2134, file: !2135, line: 518, baseType: !318, size: 64, offset: 768)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2134, file: !2135, line: 520, baseType: !318, size: 64, offset: 832)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2134, file: !2135, line: 521, baseType: !318, size: 64, offset: 896)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2134, file: !2135, line: 522, baseType: !318, size: 64, offset: 960)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2134, file: !2135, line: 528, baseType: !2172, size: 64, offset: 1024)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2135, line: 10, flags: DIFlagFwdDecl)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2134, file: !2135, line: 535, baseType: !318, size: 64, offset: 1088)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2134, file: !2135, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2134, file: !2135, line: 540, baseType: !2177, size: 33280, offset: 1536)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2178, line: 317, size: 33280, elements: !2179)
!2178 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2179 = !{!2180, !2181, !2182}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2177, file: !2178, line: 330, baseType: !7, size: 32)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2177, file: !2178, line: 337, baseType: !318, size: 64, offset: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2177, file: !2178, line: 348, baseType: !2183, size: 32768, offset: 512)
!2183 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2178, line: 304, size: 32768, elements: !2184)
!2184 = !{!2185, !2200, !2239, !2289, !2302}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2183, file: !2178, line: 305, baseType: !2186, size: 896)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2178, line: 12, size: 896, elements: !2187)
!2187 = !{!2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2199}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2186, file: !2178, line: 13, baseType: !409, size: 32)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2186, file: !2178, line: 14, baseType: !409, size: 32, offset: 32)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2186, file: !2178, line: 15, baseType: !409, size: 32, offset: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2186, file: !2178, line: 16, baseType: !409, size: 32, offset: 96)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2186, file: !2178, line: 17, baseType: !409, size: 32, offset: 128)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2186, file: !2178, line: 18, baseType: !409, size: 32, offset: 160)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2186, file: !2178, line: 19, baseType: !409, size: 32, offset: 192)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2186, file: !2178, line: 22, baseType: !2196, size: 640, offset: 224)
!2196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, size: 640, elements: !2197)
!2197 = !{!2198}
!2198 = !DISubrange(count: 20)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2186, file: !2178, line: 25, baseType: !409, size: 32, offset: 864)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2183, file: !2178, line: 306, baseType: !2201, size: 4096, align: 128)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2178, line: 34, size: 4096, align: 128, elements: !2202)
!2202 = !{!2203, !2204, !2205, !2206, !2207, !2222, !2223, !2224, !2228, !2230, !2234}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2201, file: !2178, line: 35, baseType: !855, size: 16)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2201, file: !2178, line: 36, baseType: !855, size: 16, offset: 16)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2201, file: !2178, line: 37, baseType: !855, size: 16, offset: 32)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2201, file: !2178, line: 38, baseType: !855, size: 16, offset: 48)
!2207 = !DIDerivedType(tag: DW_TAG_member, scope: !2201, file: !2178, line: 39, baseType: !2208, size: 128, offset: 64)
!2208 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2201, file: !2178, line: 39, size: 128, elements: !2209)
!2209 = !{!2210, !2215}
!2210 = !DIDerivedType(tag: DW_TAG_member, scope: !2208, file: !2178, line: 40, baseType: !2211, size: 128)
!2211 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2208, file: !2178, line: 40, size: 128, elements: !2212)
!2212 = !{!2213, !2214}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2211, file: !2178, line: 41, baseType: !415, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2211, file: !2178, line: 42, baseType: !415, size: 64, offset: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, scope: !2208, file: !2178, line: 44, baseType: !2216, size: 128)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2208, file: !2178, line: 44, size: 128, elements: !2217)
!2217 = !{!2218, !2219, !2220, !2221}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2216, file: !2178, line: 45, baseType: !409, size: 32)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2216, file: !2178, line: 46, baseType: !409, size: 32, offset: 32)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2216, file: !2178, line: 47, baseType: !409, size: 32, offset: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2216, file: !2178, line: 48, baseType: !409, size: 32, offset: 96)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2201, file: !2178, line: 51, baseType: !409, size: 32, offset: 192)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2201, file: !2178, line: 52, baseType: !409, size: 32, offset: 224)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2201, file: !2178, line: 55, baseType: !2225, size: 1024, offset: 256)
!2225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, size: 1024, elements: !2226)
!2226 = !{!2227}
!2227 = !DISubrange(count: 32)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2201, file: !2178, line: 58, baseType: !2229, size: 2048, offset: 1280)
!2229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, size: 2048, elements: !273)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2201, file: !2178, line: 60, baseType: !2231, size: 384, offset: 3328)
!2231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, size: 384, elements: !2232)
!2232 = !{!2233}
!2233 = !DISubrange(count: 12)
!2234 = !DIDerivedType(tag: DW_TAG_member, scope: !2201, file: !2178, line: 62, baseType: !2235, size: 384, offset: 3712)
!2235 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2201, file: !2178, line: 62, size: 384, elements: !2236)
!2236 = !{!2237, !2238}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2235, file: !2178, line: 63, baseType: !2231, size: 384)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2235, file: !2178, line: 64, baseType: !2231, size: 384)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2183, file: !2178, line: 307, baseType: !2240, size: 1088)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2178, line: 79, size: 1088, elements: !2241)
!2241 = !{!2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2288}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2240, file: !2178, line: 80, baseType: !409, size: 32)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2240, file: !2178, line: 81, baseType: !409, size: 32, offset: 32)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2240, file: !2178, line: 82, baseType: !409, size: 32, offset: 64)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2240, file: !2178, line: 83, baseType: !409, size: 32, offset: 96)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2240, file: !2178, line: 84, baseType: !409, size: 32, offset: 128)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2240, file: !2178, line: 85, baseType: !409, size: 32, offset: 160)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2240, file: !2178, line: 86, baseType: !409, size: 32, offset: 192)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2240, file: !2178, line: 88, baseType: !2196, size: 640, offset: 224)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2240, file: !2178, line: 89, baseType: !1348, size: 8, offset: 864)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2240, file: !2178, line: 90, baseType: !1348, size: 8, offset: 872)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2240, file: !2178, line: 91, baseType: !1348, size: 8, offset: 880)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2240, file: !2178, line: 92, baseType: !1348, size: 8, offset: 888)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2240, file: !2178, line: 93, baseType: !1348, size: 8, offset: 896)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2240, file: !2178, line: 94, baseType: !1348, size: 8, offset: 904)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2240, file: !2178, line: 95, baseType: !2257, size: 64, offset: 960)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2259, line: 11, size: 128, elements: !2260)
!2259 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2260 = !{!2261, !2262}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2258, file: !2259, line: 12, baseType: !303, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2258, file: !2259, line: 13, baseType: !2263, size: 64, offset: 64)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2265, line: 56, size: 1344, elements: !2266)
!2265 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2266 = !{!2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2264, file: !2265, line: 61, baseType: !318, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2264, file: !2265, line: 62, baseType: !318, size: 64, offset: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2264, file: !2265, line: 63, baseType: !318, size: 64, offset: 128)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2264, file: !2265, line: 64, baseType: !318, size: 64, offset: 192)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2264, file: !2265, line: 65, baseType: !318, size: 64, offset: 256)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2264, file: !2265, line: 66, baseType: !318, size: 64, offset: 320)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2264, file: !2265, line: 68, baseType: !318, size: 64, offset: 384)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2264, file: !2265, line: 69, baseType: !318, size: 64, offset: 448)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2264, file: !2265, line: 70, baseType: !318, size: 64, offset: 512)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2264, file: !2265, line: 71, baseType: !318, size: 64, offset: 576)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2264, file: !2265, line: 72, baseType: !318, size: 64, offset: 640)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2264, file: !2265, line: 73, baseType: !318, size: 64, offset: 704)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2264, file: !2265, line: 74, baseType: !318, size: 64, offset: 768)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2264, file: !2265, line: 75, baseType: !318, size: 64, offset: 832)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2264, file: !2265, line: 76, baseType: !318, size: 64, offset: 896)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2264, file: !2265, line: 81, baseType: !318, size: 64, offset: 960)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2264, file: !2265, line: 83, baseType: !318, size: 64, offset: 1024)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2264, file: !2265, line: 84, baseType: !318, size: 64, offset: 1088)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2264, file: !2265, line: 85, baseType: !318, size: 64, offset: 1152)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2264, file: !2265, line: 86, baseType: !318, size: 64, offset: 1216)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2264, file: !2265, line: 87, baseType: !318, size: 64, offset: 1280)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2240, file: !2178, line: 96, baseType: !409, size: 32, offset: 1024)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2183, file: !2178, line: 308, baseType: !2290, size: 4608, align: 512)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2178, line: 289, size: 4608, align: 512, elements: !2291)
!2291 = !{!2292, !2293, !2300}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2290, file: !2178, line: 290, baseType: !2201, size: 4096, align: 128)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2290, file: !2178, line: 291, baseType: !2294, size: 512, offset: 4096)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2178, line: 268, size: 512, elements: !2295)
!2295 = !{!2296, !2297, !2298}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2294, file: !2178, line: 269, baseType: !415, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2294, file: !2178, line: 270, baseType: !415, size: 64, offset: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2294, file: !2178, line: 271, baseType: !2299, size: 384, offset: 128)
!2299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !415, size: 384, elements: !1621)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2290, file: !2178, line: 292, baseType: !2301, offset: 4608)
!2301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1348, elements: !1719)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2183, file: !2178, line: 309, baseType: !2303, size: 32768)
!2303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1348, size: 32768, elements: !2304)
!2304 = !{!2305}
!2305 = !DISubrange(count: 4096)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1209, file: !718, line: 378, baseType: !2307, size: 64, offset: 64)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1205, file: !718, line: 384, baseType: !1498, size: 192, offset: 192)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !974, file: !718, line: 500, baseType: !227, offset: 6656)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !974, file: !718, line: 501, baseType: !2311, size: 64, offset: 6656)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !718, line: 387, flags: DIFlagFwdDecl)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !974, file: !718, line: 516, baseType: !1709, size: 64, offset: 6720)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !974, file: !718, line: 519, baseType: !346, size: 64, offset: 6784)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !974, file: !718, line: 521, baseType: !2316, size: 64, offset: 6848)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !718, line: 521, flags: DIFlagFwdDecl)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !974, file: !718, line: 545, baseType: !743, size: 32, offset: 6912)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !974, file: !718, line: 548, baseType: !190, size: 8, offset: 6944)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !974, file: !718, line: 550, baseType: !2321, offset: 6952)
!2321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2322, line: 142, elements: !241)
!2322 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !974, file: !718, line: 554, baseType: !1955, size: 256, offset: 6976)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !974, file: !718, line: 557, baseType: !409, size: 32, offset: 7232)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !971, file: !718, line: 565, baseType: !2326, offset: 7296)
!2326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, elements: !2327)
!2327 = !{!2328}
!2328 = !DISubrange(count: -1)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !967, file: !718, line: 151, baseType: !743, size: 32)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !960, file: !718, line: 156, baseType: !227, offset: 256)
!2331 = !DIDerivedType(tag: DW_TAG_member, scope: !722, file: !718, line: 159, baseType: !2332, size: 128)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !722, file: !718, line: 159, size: 128, elements: !2333)
!2333 = !{!2334, !2398}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2332, file: !718, line: 161, baseType: !2335, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2337)
!2337 = !{!2338, !2348, !2369, !2370, !2371, !2372, !2373, !2385, !2386, !2387}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2336, file: !31, line: 111, baseType: !2339, size: 384)
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2340)
!2340 = !{!2341, !2343, !2344, !2345, !2346, !2347}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2339, file: !31, line: 20, baseType: !2342, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !318)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2339, file: !31, line: 21, baseType: !2342, size: 64, offset: 64)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2339, file: !31, line: 22, baseType: !2342, size: 64, offset: 128)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2339, file: !31, line: 23, baseType: !318, size: 64, offset: 192)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2339, file: !31, line: 24, baseType: !318, size: 64, offset: 256)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2339, file: !31, line: 25, baseType: !318, size: 64, offset: 320)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2336, file: !31, line: 112, baseType: !2349, size: 64, offset: 384)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2351, line: 105, size: 128, elements: !2352)
!2351 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2352 = !{!2353, !2354}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2350, file: !2351, line: 110, baseType: !318, size: 64)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2350, file: !2351, line: 118, baseType: !2355, size: 64, offset: 64)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2351, line: 95, size: 448, elements: !2357)
!2357 = !{!2358, !2359, !2364, !2365, !2366, !2367, !2368}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2356, file: !2351, line: 96, baseType: !767, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2356, file: !2351, line: 97, baseType: !2360, size: 64, offset: 64)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2351, line: 60, baseType: !2362)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{null, !2349}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2356, file: !2351, line: 98, baseType: !2360, size: 64, offset: 128)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2356, file: !2351, line: 99, baseType: !190, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2356, file: !2351, line: 100, baseType: !190, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2356, file: !2351, line: 101, baseType: !359, size: 128, align: 64, offset: 256)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2356, file: !2351, line: 102, baseType: !2349, size: 64, offset: 384)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2336, file: !31, line: 113, baseType: !2350, size: 128, offset: 448)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2336, file: !31, line: 114, baseType: !1498, size: 192, offset: 576)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2336, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2336, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2336, file: !31, line: 117, baseType: !2374, size: 64, offset: 832)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2376)
!2376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2377)
!2377 = !{!2378, !2379, !2383, !2384}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2376, file: !31, line: 73, baseType: !836, size: 64)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2376, file: !31, line: 78, baseType: !2380, size: 64, offset: 64)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{null, !2335}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2376, file: !31, line: 83, baseType: !2380, size: 64, offset: 128)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2376, file: !31, line: 89, baseType: !1023, size: 64, offset: 192)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2336, file: !31, line: 118, baseType: !157, size: 64, offset: 896)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2336, file: !31, line: 119, baseType: !163, size: 32, offset: 960)
!2387 = !DIDerivedType(tag: DW_TAG_member, scope: !2336, file: !31, line: 120, baseType: !2388, size: 128, offset: 1024)
!2388 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2336, file: !31, line: 120, size: 128, elements: !2389)
!2389 = !{!2390, !2396}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2388, file: !31, line: 121, baseType: !2391, size: 128)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2392, line: 6, size: 128, elements: !2393)
!2392 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2393 = !{!2394, !2395}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2391, file: !2392, line: 7, baseType: !415, size: 64)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2391, file: !2392, line: 8, baseType: !415, size: 64, offset: 64)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2388, file: !31, line: 122, baseType: !2397)
!2397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2391, elements: !1719)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2332, file: !718, line: 162, baseType: !157, size: 64, offset: 64)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !722, file: !718, line: 176, baseType: !359, size: 128, align: 64)
!2400 = !DIDerivedType(tag: DW_TAG_member, scope: !717, file: !718, line: 179, baseType: !2401, size: 32, offset: 384)
!2401 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !717, file: !718, line: 179, size: 32, elements: !2402)
!2402 = !{!2403, !2404, !2405, !2406}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2401, file: !718, line: 184, baseType: !743, size: 32)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2401, file: !718, line: 192, baseType: !7, size: 32)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2401, file: !718, line: 194, baseType: !7, size: 32)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2401, file: !718, line: 195, baseType: !163, size: 32)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !717, file: !718, line: 199, baseType: !743, size: 32, offset: 416)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !652, file: !44, line: 1964, baseType: !2409, size: 64, offset: 1344)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!303, !591, !2412}
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2414, line: 12, size: 256, elements: !2415)
!2414 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2415 = !{!2416, !2417, !2418, !2419, !2420}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2413, file: !2414, line: 13, baseType: !739, size: 32)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2413, file: !2414, line: 16, baseType: !163, size: 32, offset: 32)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2413, file: !2414, line: 23, baseType: !318, size: 64, offset: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2413, file: !2414, line: 30, baseType: !318, size: 64, offset: 128)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2413, file: !2414, line: 33, baseType: !2421, size: 64, offset: 192)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !718, line: 27, flags: DIFlagFwdDecl)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !652, file: !44, line: 1966, baseType: !2409, size: 64, offset: 1408)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !592, file: !44, line: 1424, baseType: !2425, size: 64, offset: 448)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2427)
!2427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2428)
!2428 = !{!2429, !2475, !2479, !2483, !2484, !2485, !2486, !2487, !2492, !2497, !2501}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2427, file: !38, line: 323, baseType: !2430, size: 64)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!163, !2433}
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2435)
!2435 = !{!2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2460, !2461, !2462}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2434, file: !38, line: 295, baseType: !634, size: 128)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2434, file: !38, line: 296, baseType: !214, size: 128, offset: 128)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2434, file: !38, line: 297, baseType: !214, size: 128, offset: 256)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2434, file: !38, line: 298, baseType: !214, size: 128, offset: 384)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2434, file: !38, line: 299, baseType: !1169, size: 192, offset: 512)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2434, file: !38, line: 300, baseType: !227, offset: 704)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2434, file: !38, line: 301, baseType: !743, size: 32, offset: 704)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2434, file: !38, line: 302, baseType: !591, size: 64, offset: 768)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2434, file: !38, line: 303, baseType: !2445, size: 64, offset: 832)
!2445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2446)
!2446 = !{!2447, !2459}
!2447 = !DIDerivedType(tag: DW_TAG_member, scope: !2445, file: !38, line: 69, baseType: !2448, size: 32)
!2448 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2445, file: !38, line: 69, size: 32, elements: !2449)
!2449 = !{!2450, !2451, !2452}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2448, file: !38, line: 70, baseType: !429, size: 32)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2448, file: !38, line: 71, baseType: !437, size: 32)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2448, file: !38, line: 72, baseType: !2453, size: 32)
!2453 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2454, line: 24, baseType: !2455)
!2454 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2455 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2454, line: 22, size: 32, elements: !2456)
!2456 = !{!2457}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2455, file: !2454, line: 23, baseType: !2458, size: 32)
!2458 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2454, line: 20, baseType: !435)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2445, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2434, file: !38, line: 304, baseType: !523, size: 64, offset: 896)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2434, file: !38, line: 305, baseType: !318, size: 64, offset: 960)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2434, file: !38, line: 306, baseType: !2463, size: 576, offset: 1024)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2464)
!2464 = !{!2465, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2463, file: !38, line: 206, baseType: !2466, size: 64)
!2466 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !525)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2463, file: !38, line: 207, baseType: !2466, size: 64, offset: 64)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2463, file: !38, line: 208, baseType: !2466, size: 64, offset: 128)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2463, file: !38, line: 209, baseType: !2466, size: 64, offset: 192)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2463, file: !38, line: 210, baseType: !2466, size: 64, offset: 256)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2463, file: !38, line: 211, baseType: !2466, size: 64, offset: 320)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2463, file: !38, line: 212, baseType: !2466, size: 64, offset: 384)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2463, file: !38, line: 213, baseType: !531, size: 64, offset: 448)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2463, file: !38, line: 214, baseType: !531, size: 64, offset: 512)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2427, file: !38, line: 324, baseType: !2476, size: 64, offset: 64)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!2433, !591, !163}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2427, file: !38, line: 325, baseType: !2480, size: 64, offset: 128)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{null, !2433}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2427, file: !38, line: 326, baseType: !2430, size: 64, offset: 192)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2427, file: !38, line: 327, baseType: !2430, size: 64, offset: 256)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2427, file: !38, line: 328, baseType: !2430, size: 64, offset: 320)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2427, file: !38, line: 329, baseType: !680, size: 64, offset: 384)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2427, file: !38, line: 332, baseType: !2488, size: 64, offset: 448)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{!2491, !423}
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2427, file: !38, line: 333, baseType: !2493, size: 64, offset: 512)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DISubroutineType(types: !2495)
!2495 = !{!163, !423, !2496}
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2427, file: !38, line: 335, baseType: !2498, size: 64, offset: 576)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!163, !423, !2491}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2427, file: !38, line: 337, baseType: !2502, size: 64, offset: 640)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{!163, !591, !2505}
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !592, file: !44, line: 1425, baseType: !2507, size: 64, offset: 512)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2509)
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2510)
!2510 = !{!2511, !2515, !2516, !2520, !2521, !2522, !2537, !2560, !2564, !2565, !2588}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2509, file: !38, line: 429, baseType: !2512, size: 64)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!163, !591, !163, !163, !541}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2509, file: !38, line: 430, baseType: !680, size: 64, offset: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2509, file: !38, line: 431, baseType: !2517, size: 64, offset: 128)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!163, !591, !7}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2509, file: !38, line: 432, baseType: !2517, size: 64, offset: 192)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2509, file: !38, line: 433, baseType: !680, size: 64, offset: 256)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2509, file: !38, line: 434, baseType: !2523, size: 64, offset: 320)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{!163, !591, !163, !2526}
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2528)
!2528 = !{!2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2527, file: !38, line: 416, baseType: !163, size: 32)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2527, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2527, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2527, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2527, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2527, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2527, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2527, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2509, file: !38, line: 435, baseType: !2538, size: 64, offset: 384)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{!163, !591, !2445, !2541}
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2543)
!2543 = !{!2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2542, file: !38, line: 344, baseType: !163, size: 32)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2542, file: !38, line: 345, baseType: !415, size: 64, offset: 64)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2542, file: !38, line: 346, baseType: !415, size: 64, offset: 128)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2542, file: !38, line: 347, baseType: !415, size: 64, offset: 192)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2542, file: !38, line: 348, baseType: !415, size: 64, offset: 256)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2542, file: !38, line: 349, baseType: !415, size: 64, offset: 320)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2542, file: !38, line: 350, baseType: !415, size: 64, offset: 384)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2542, file: !38, line: 351, baseType: !773, size: 64, offset: 448)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2542, file: !38, line: 353, baseType: !773, size: 64, offset: 512)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2542, file: !38, line: 354, baseType: !163, size: 32, offset: 576)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2542, file: !38, line: 355, baseType: !163, size: 32, offset: 608)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2542, file: !38, line: 356, baseType: !415, size: 64, offset: 640)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2542, file: !38, line: 357, baseType: !415, size: 64, offset: 704)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2542, file: !38, line: 358, baseType: !415, size: 64, offset: 768)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2542, file: !38, line: 359, baseType: !773, size: 64, offset: 832)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2542, file: !38, line: 360, baseType: !163, size: 32, offset: 896)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2509, file: !38, line: 436, baseType: !2561, size: 64, offset: 448)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DISubroutineType(types: !2563)
!2563 = !{!163, !591, !2505, !2541}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2509, file: !38, line: 438, baseType: !2538, size: 64, offset: 512)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2509, file: !38, line: 439, baseType: !2566, size: 64, offset: 576)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!163, !591, !2569}
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2571)
!2571 = !{!2572, !2573}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2570, file: !38, line: 410, baseType: !7, size: 32)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2570, file: !38, line: 411, baseType: !2574, size: 1344, offset: 64)
!2574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2575, size: 1344, elements: !269)
!2575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2576)
!2576 = !{!2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2587}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2575, file: !38, line: 396, baseType: !7, size: 32)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2575, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2575, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2575, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2575, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2575, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2575, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2575, file: !38, line: 404, baseType: !417, size: 64, offset: 256)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2575, file: !38, line: 405, baseType: !2586, size: 64, offset: 320)
!2586 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !191, line: 126, baseType: !415)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2575, file: !38, line: 406, baseType: !2586, size: 64, offset: 384)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2509, file: !38, line: 440, baseType: !2517, size: 64, offset: 640)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !592, file: !44, line: 1426, baseType: !2590, size: 64, offset: 576)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2592)
!2592 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !592, file: !44, line: 1427, baseType: !318, size: 64, offset: 640)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !592, file: !44, line: 1428, baseType: !318, size: 64, offset: 704)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !592, file: !44, line: 1429, baseType: !318, size: 64, offset: 768)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !592, file: !44, line: 1430, baseType: !376, size: 64, offset: 832)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !592, file: !44, line: 1431, baseType: !763, size: 256, offset: 896)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !592, file: !44, line: 1432, baseType: !163, size: 32, offset: 1152)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !592, file: !44, line: 1433, baseType: !743, size: 32, offset: 1184)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !592, file: !44, line: 1437, baseType: !2601, size: 64, offset: 1216)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2604)
!2604 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !592, file: !44, line: 1449, baseType: !2606, size: 64, offset: 1280)
!2606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !392, line: 34, size: 64, elements: !2607)
!2607 = !{!2608}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2606, file: !392, line: 35, baseType: !395, size: 64)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !592, file: !44, line: 1450, baseType: !214, size: 128, offset: 1344)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !592, file: !44, line: 1451, baseType: !2611, size: 64, offset: 1472)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !592, file: !44, line: 1452, baseType: !1921, size: 64, offset: 1536)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !592, file: !44, line: 1453, baseType: !2615, size: 64, offset: 1600)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !592, file: !44, line: 1454, baseType: !634, size: 128, offset: 1664)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !592, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !592, file: !44, line: 1456, baseType: !2620, size: 2432, offset: 1856)
!2620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2621)
!2621 = !{!2622, !2623, !2624, !2626, !2658}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2620, file: !38, line: 519, baseType: !7, size: 32)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2620, file: !38, line: 520, baseType: !763, size: 256, offset: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2620, file: !38, line: 521, baseType: !2625, size: 192, offset: 320)
!2625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 192, elements: !269)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2620, file: !38, line: 522, baseType: !2627, size: 1728, offset: 512)
!2627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2628, size: 1728, elements: !269)
!2628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2629)
!2629 = !{!2630, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2628, file: !38, line: 223, baseType: !2631, size: 64)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2633)
!2633 = !{!2634, !2635, !2648, !2649}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2632, file: !38, line: 444, baseType: !163, size: 32)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2632, file: !38, line: 445, baseType: !2636, size: 64, offset: 64)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2638)
!2638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2639)
!2639 = !{!2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2638, file: !38, line: 311, baseType: !680, size: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2638, file: !38, line: 312, baseType: !680, size: 64, offset: 64)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2638, file: !38, line: 313, baseType: !680, size: 64, offset: 128)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2638, file: !38, line: 314, baseType: !680, size: 64, offset: 192)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2638, file: !38, line: 315, baseType: !2430, size: 64, offset: 256)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2638, file: !38, line: 316, baseType: !2430, size: 64, offset: 320)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2638, file: !38, line: 317, baseType: !2430, size: 64, offset: 384)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2638, file: !38, line: 318, baseType: !2502, size: 64, offset: 448)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2632, file: !38, line: 446, baseType: !625, size: 64, offset: 128)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2632, file: !38, line: 447, baseType: !2631, size: 64, offset: 192)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2628, file: !38, line: 224, baseType: !163, size: 32, offset: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2628, file: !38, line: 226, baseType: !214, size: 128, offset: 128)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2628, file: !38, line: 227, baseType: !318, size: 64, offset: 256)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2628, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2628, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2628, file: !38, line: 230, baseType: !2466, size: 64, offset: 384)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2628, file: !38, line: 231, baseType: !2466, size: 64, offset: 448)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2628, file: !38, line: 232, baseType: !157, size: 64, offset: 512)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2620, file: !38, line: 523, baseType: !2659, size: 192, offset: 2240)
!2659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2636, size: 192, elements: !269)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !592, file: !44, line: 1458, baseType: !2661, size: 2112, offset: 4288)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2662)
!2662 = !{!2663, !2664, !2665}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2661, file: !44, line: 1411, baseType: !163, size: 32)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2661, file: !44, line: 1412, baseType: !1477, size: 128, offset: 64)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2661, file: !44, line: 1413, baseType: !2666, size: 1920, offset: 192)
!2666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2667, size: 1920, elements: !269)
!2667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2668, line: 12, size: 640, elements: !2669)
!2668 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2669 = !{!2670, !2678, !2680, !2685, !2686}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2667, file: !2668, line: 13, baseType: !2671, size: 320)
!2671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2672, line: 17, size: 320, elements: !2673)
!2672 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2673 = !{!2674, !2675, !2676, !2677}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2671, file: !2672, line: 18, baseType: !163, size: 32)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2671, file: !2672, line: 19, baseType: !163, size: 32, offset: 32)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2671, file: !2672, line: 20, baseType: !1477, size: 128, offset: 64)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2671, file: !2672, line: 22, baseType: !359, size: 128, align: 64, offset: 192)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2667, file: !2668, line: 14, baseType: !2679, size: 64, offset: 320)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2667, file: !2668, line: 15, baseType: !2681, size: 64, offset: 384)
!2681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2682, line: 16, size: 64, elements: !2683)
!2682 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2683 = !{!2684}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2681, file: !2682, line: 17, baseType: !1212, size: 64)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2667, file: !2668, line: 16, baseType: !1477, size: 128, offset: 448)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2667, file: !2668, line: 17, baseType: !743, size: 32, offset: 576)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !592, file: !44, line: 1465, baseType: !157, size: 64, offset: 6400)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !592, file: !44, line: 1468, baseType: !409, size: 32, offset: 6464)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !592, file: !44, line: 1470, baseType: !531, size: 64, offset: 6528)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !592, file: !44, line: 1471, baseType: !531, size: 64, offset: 6592)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !592, file: !44, line: 1473, baseType: !411, size: 32, offset: 6656)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !592, file: !44, line: 1474, baseType: !2693, size: 64, offset: 6720)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !592, file: !44, line: 1477, baseType: !2696, size: 256, offset: 6784)
!2696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 256, elements: !2226)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !592, file: !44, line: 1478, baseType: !2698, size: 128, offset: 7040)
!2698 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2699, line: 18, baseType: !2700)
!2699 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2700 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2699, line: 16, size: 128, elements: !2701)
!2701 = !{!2702}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2700, file: !2699, line: 17, baseType: !2703, size: 128)
!2703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1349, size: 128, elements: !1731)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !592, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !592, file: !44, line: 1481, baseType: !2706, size: 32, offset: 7200)
!2706 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !191, line: 150, baseType: !7)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !592, file: !44, line: 1487, baseType: !1169, size: 192, offset: 7232)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !592, file: !44, line: 1493, baseType: !210, size: 64, offset: 7424)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !592, file: !44, line: 1495, baseType: !2710, size: 64, offset: 7488)
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2712)
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !374, line: 135, size: 1024, align: 512, elements: !2713)
!2713 = !{!2714, !2718, !2719, !2726, !2732, !2736, !2740, !2744, !2745, !2749, !2753, !2758, !2762}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2712, file: !374, line: 136, baseType: !2715, size: 64)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!163, !376, !7}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2712, file: !374, line: 137, baseType: !2715, size: 64, offset: 64)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2712, file: !374, line: 138, baseType: !2720, size: 64, offset: 128)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{!163, !2723, !2725}
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !377)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2712, file: !374, line: 139, baseType: !2727, size: 64, offset: 192)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{!163, !2723, !7, !210, !2730}
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !400)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2712, file: !374, line: 141, baseType: !2733, size: 64, offset: 256)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = !DISubroutineType(types: !2735)
!2735 = !{!163, !2723}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2712, file: !374, line: 142, baseType: !2737, size: 64, offset: 320)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!163, !376}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2712, file: !374, line: 143, baseType: !2741, size: 64, offset: 384)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = !DISubroutineType(types: !2743)
!2743 = !{null, !376}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2712, file: !374, line: 144, baseType: !2741, size: 64, offset: 448)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2712, file: !374, line: 145, baseType: !2746, size: 64, offset: 512)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{null, !376, !423}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2712, file: !374, line: 146, baseType: !2750, size: 64, offset: 576)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{!268, !376, !268, !163}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2712, file: !374, line: 147, baseType: !2754, size: 64, offset: 640)
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{!372, !2757}
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2712, file: !374, line: 148, baseType: !2759, size: 64, offset: 704)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{!163, !541, !190}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2712, file: !374, line: 149, baseType: !2763, size: 64, offset: 768)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!376, !376, !2766}
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !424)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !592, file: !44, line: 1500, baseType: !163, size: 32, offset: 7552)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !592, file: !44, line: 1502, baseType: !2770, size: 448, offset: 7616)
!2770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2414, line: 60, size: 448, elements: !2771)
!2771 = !{!2772, !2777, !2778, !2779, !2780, !2781, !2782}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2770, file: !2414, line: 61, baseType: !2773, size: 64)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DISubroutineType(types: !2775)
!2775 = !{!318, !2776, !2412}
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2770, file: !2414, line: 63, baseType: !2773, size: 64, offset: 64)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2770, file: !2414, line: 66, baseType: !303, size: 64, offset: 128)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2770, file: !2414, line: 67, baseType: !163, size: 32, offset: 192)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2770, file: !2414, line: 68, baseType: !7, size: 32, offset: 224)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2770, file: !2414, line: 71, baseType: !214, size: 128, offset: 256)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2770, file: !2414, line: 77, baseType: !2783, size: 64, offset: 384)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !592, file: !44, line: 1505, baseType: !767, size: 64, offset: 8064)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !592, file: !44, line: 1508, baseType: !767, size: 64, offset: 8128)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !592, file: !44, line: 1511, baseType: !163, size: 32, offset: 8192)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !592, file: !44, line: 1514, baseType: !905, size: 32, offset: 8224)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !592, file: !44, line: 1517, baseType: !2789, size: 64, offset: 8256)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1956, line: 18, flags: DIFlagFwdDecl)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !592, file: !44, line: 1518, baseType: !630, size: 64, offset: 8320)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !592, file: !44, line: 1525, baseType: !1709, size: 64, offset: 8384)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !592, file: !44, line: 1532, baseType: !2794, size: 64, offset: 8448)
!2794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2795, line: 52, size: 64, elements: !2796)
!2795 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2796 = !{!2797}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2794, file: !2795, line: 53, baseType: !2798, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2795, line: 40, size: 256, elements: !2800)
!2800 = !{!2801, !2802, !2807}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2799, file: !2795, line: 42, baseType: !227)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2799, file: !2795, line: 44, baseType: !2803, size: 192)
!2803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2795, line: 28, size: 192, elements: !2804)
!2804 = !{!2805, !2806}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2803, file: !2795, line: 29, baseType: !214, size: 128)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2803, file: !2795, line: 31, baseType: !303, size: 64, offset: 128)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2799, file: !2795, line: 49, baseType: !303, size: 64, offset: 192)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !592, file: !44, line: 1533, baseType: !2794, size: 64, offset: 8512)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !592, file: !44, line: 1534, baseType: !359, size: 128, align: 64, offset: 8576)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !592, file: !44, line: 1535, baseType: !1955, size: 256, offset: 8704)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !592, file: !44, line: 1537, baseType: !1169, size: 192, offset: 8960)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !592, file: !44, line: 1542, baseType: !163, size: 32, offset: 9152)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !592, file: !44, line: 1545, baseType: !227, offset: 9184)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !592, file: !44, line: 1546, baseType: !214, size: 128, offset: 9216)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !592, file: !44, line: 1548, baseType: !227, offset: 9344)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !592, file: !44, line: 1549, baseType: !214, size: 128, offset: 9344)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !424, file: !44, line: 624, baseType: !729, size: 64, offset: 256)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !424, file: !44, line: 631, baseType: !318, size: 64, offset: 320)
!2819 = !DIDerivedType(tag: DW_TAG_member, scope: !424, file: !44, line: 639, baseType: !2820, size: 32, offset: 384)
!2820 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !424, file: !44, line: 639, size: 32, elements: !2821)
!2821 = !{!2822, !2824}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2820, file: !44, line: 640, baseType: !2823, size: 32)
!2823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2820, file: !44, line: 641, baseType: !7, size: 32)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !424, file: !44, line: 643, baseType: !505, size: 32, offset: 416)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !424, file: !44, line: 644, baseType: !523, size: 64, offset: 448)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !424, file: !44, line: 645, baseType: !527, size: 128, offset: 512)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !424, file: !44, line: 646, baseType: !527, size: 128, offset: 640)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !424, file: !44, line: 647, baseType: !527, size: 128, offset: 768)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !424, file: !44, line: 648, baseType: !227, offset: 896)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !424, file: !44, line: 649, baseType: !310, size: 16, offset: 896)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !424, file: !44, line: 650, baseType: !1348, size: 8, offset: 912)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !424, file: !44, line: 651, baseType: !1348, size: 8, offset: 920)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !424, file: !44, line: 652, baseType: !2586, size: 64, offset: 960)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !424, file: !44, line: 659, baseType: !318, size: 64, offset: 1024)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !424, file: !44, line: 660, baseType: !763, size: 256, offset: 1088)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !424, file: !44, line: 662, baseType: !318, size: 64, offset: 1344)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !424, file: !44, line: 663, baseType: !318, size: 64, offset: 1408)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !424, file: !44, line: 665, baseType: !634, size: 128, offset: 1472)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !424, file: !44, line: 666, baseType: !214, size: 128, offset: 1600)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !424, file: !44, line: 675, baseType: !214, size: 128, offset: 1728)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !424, file: !44, line: 676, baseType: !214, size: 128, offset: 1856)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !424, file: !44, line: 677, baseType: !214, size: 128, offset: 1984)
!2844 = !DIDerivedType(tag: DW_TAG_member, scope: !424, file: !44, line: 678, baseType: !2845, size: 128, offset: 2112)
!2845 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !424, file: !44, line: 678, size: 128, elements: !2846)
!2846 = !{!2847, !2848}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2845, file: !44, line: 679, baseType: !630, size: 64)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2845, file: !44, line: 680, baseType: !359, size: 128, align: 64)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !424, file: !44, line: 682, baseType: !769, size: 64, offset: 2240)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !424, file: !44, line: 683, baseType: !769, size: 64, offset: 2304)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !424, file: !44, line: 684, baseType: !743, size: 32, offset: 2368)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !424, file: !44, line: 685, baseType: !743, size: 32, offset: 2400)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !424, file: !44, line: 686, baseType: !743, size: 32, offset: 2432)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !424, file: !44, line: 688, baseType: !743, size: 32, offset: 2464)
!2855 = !DIDerivedType(tag: DW_TAG_member, scope: !424, file: !44, line: 690, baseType: !2856, size: 64, offset: 2496)
!2856 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !424, file: !44, line: 690, size: 64, elements: !2857)
!2857 = !{!2858, !3081}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2856, file: !44, line: 691, baseType: !2859, size: 64)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2861)
!2861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2862)
!2862 = !{!2863, !2864, !2868, !2873, !2877, !2878, !2879, !2883, !2896, !2897, !2905, !2909, !2910, !2914, !2915, !2919, !2924, !2925, !2929, !2933, !3041, !3045, !3046, !3050, !3051, !3055, !3059, !3064, !3068, !3072, !3076, !3080}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2861, file: !44, line: 1823, baseType: !625, size: 64)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2861, file: !44, line: 1824, baseType: !2865, size: 64, offset: 64)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{!523, !346, !523, !163}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2861, file: !44, line: 1825, baseType: !2869, size: 64, offset: 128)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{!299, !346, !268, !315, !2872}
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2861, file: !44, line: 1826, baseType: !2874, size: 64, offset: 192)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{!299, !346, !210, !315, !2872}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2861, file: !44, line: 1827, baseType: !840, size: 64, offset: 256)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2861, file: !44, line: 1828, baseType: !840, size: 64, offset: 320)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2861, file: !44, line: 1829, baseType: !2880, size: 64, offset: 384)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{!163, !843, !190}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2861, file: !44, line: 1830, baseType: !2884, size: 64, offset: 448)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DISubroutineType(types: !2886)
!2886 = !{!163, !346, !2887}
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2889)
!2889 = !{!2890, !2895}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2888, file: !44, line: 1777, baseType: !2891, size: 64)
!2891 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2892)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{!163, !2887, !210, !163, !523, !415, !7}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2888, file: !44, line: 1778, baseType: !523, size: 64, offset: 64)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2861, file: !44, line: 1831, baseType: !2884, size: 64, offset: 512)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2861, file: !44, line: 1832, baseType: !2898, size: 64, offset: 576)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{!2901, !346, !2903}
!2901 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2902, line: 52, baseType: !7)
!2902 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !611, line: 27, flags: DIFlagFwdDecl)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2861, file: !44, line: 1833, baseType: !2906, size: 64, offset: 640)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{!303, !346, !7, !318}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2861, file: !44, line: 1834, baseType: !2906, size: 64, offset: 704)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2861, file: !44, line: 1835, baseType: !2911, size: 64, offset: 768)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{!163, !346, !977}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2861, file: !44, line: 1836, baseType: !318, size: 64, offset: 832)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2861, file: !44, line: 1837, baseType: !2916, size: 64, offset: 896)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!163, !423, !346}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2861, file: !44, line: 1838, baseType: !2920, size: 64, offset: 960)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{!163, !346, !2923}
!2923 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !157)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2861, file: !44, line: 1839, baseType: !2916, size: 64, offset: 1024)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2861, file: !44, line: 1840, baseType: !2926, size: 64, offset: 1088)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{!163, !346, !523, !523, !163}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2861, file: !44, line: 1841, baseType: !2930, size: 64, offset: 1152)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!163, !163, !346, !163}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2861, file: !44, line: 1842, baseType: !2934, size: 64, offset: 1216)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{!163, !346, !163, !2937}
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2939)
!2939 = !{!2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2971, !2972, !2973, !2986, !3017}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2938, file: !44, line: 1063, baseType: !2937, size: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2938, file: !44, line: 1064, baseType: !214, size: 128, offset: 64)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2938, file: !44, line: 1065, baseType: !634, size: 128, offset: 192)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2938, file: !44, line: 1066, baseType: !214, size: 128, offset: 320)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2938, file: !44, line: 1069, baseType: !214, size: 128, offset: 448)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2938, file: !44, line: 1072, baseType: !2923, size: 64, offset: 576)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2938, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2938, file: !44, line: 1074, baseType: !421, size: 8, offset: 672)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2938, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2938, file: !44, line: 1076, baseType: !163, size: 32, offset: 736)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2938, file: !44, line: 1077, baseType: !1477, size: 128, offset: 768)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2938, file: !44, line: 1078, baseType: !346, size: 64, offset: 896)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2938, file: !44, line: 1079, baseType: !523, size: 64, offset: 960)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2938, file: !44, line: 1080, baseType: !523, size: 64, offset: 1024)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2938, file: !44, line: 1082, baseType: !2955, size: 64, offset: 1088)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2957)
!2957 = !{!2958, !2966, !2967, !2968, !2969, !2970}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2956, file: !44, line: 1315, baseType: !2959)
!2959 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2960, line: 20, baseType: !2961)
!2960 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2961 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2960, line: 11, elements: !2962)
!2962 = !{!2963}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2961, file: !2960, line: 12, baseType: !2964)
!2964 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !239, line: 33, baseType: !2965)
!2965 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !239, line: 31, elements: !241)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2956, file: !44, line: 1316, baseType: !163, size: 32)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2956, file: !44, line: 1317, baseType: !163, size: 32, offset: 32)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2956, file: !44, line: 1318, baseType: !2955, size: 64, offset: 64)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2956, file: !44, line: 1319, baseType: !346, size: 64, offset: 128)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2956, file: !44, line: 1320, baseType: !359, size: 128, align: 64, offset: 192)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2938, file: !44, line: 1084, baseType: !318, size: 64, offset: 1152)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2938, file: !44, line: 1085, baseType: !318, size: 64, offset: 1216)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2938, file: !44, line: 1087, baseType: !2974, size: 64, offset: 1280)
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2975 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2976)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !2977)
!2977 = !{!2978, !2982}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2976, file: !44, line: 1012, baseType: !2979, size: 64)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{null, !2937, !2937}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2976, file: !44, line: 1013, baseType: !2983, size: 64, offset: 64)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{null, !2937}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2938, file: !44, line: 1088, baseType: !2987, size: 64, offset: 1344)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2989)
!2989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !2990)
!2990 = !{!2991, !2995, !2999, !3000, !3004, !3008, !3012, !3016}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2989, file: !44, line: 1017, baseType: !2992, size: 64)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{!2923, !2923}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2989, file: !44, line: 1018, baseType: !2996, size: 64, offset: 64)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{null, !2923}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2989, file: !44, line: 1019, baseType: !2983, size: 64, offset: 128)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2989, file: !44, line: 1020, baseType: !3001, size: 64, offset: 192)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!163, !2937, !163}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2989, file: !44, line: 1021, baseType: !3005, size: 64, offset: 256)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!190, !2937}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2989, file: !44, line: 1022, baseType: !3009, size: 64, offset: 320)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{!163, !2937, !163, !217}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2989, file: !44, line: 1023, baseType: !3013, size: 64, offset: 384)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{null, !2937, !817}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2989, file: !44, line: 1024, baseType: !3005, size: 64, offset: 448)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2938, file: !44, line: 1097, baseType: !3018, size: 256, offset: 1408)
!3018 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2938, file: !44, line: 1089, size: 256, elements: !3019)
!3019 = !{!3020, !3029, !3035}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3018, file: !44, line: 1090, baseType: !3021, size: 256)
!3021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3022, line: 10, size: 256, elements: !3023)
!3022 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3023 = !{!3024, !3025, !3028}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3021, file: !3022, line: 11, baseType: !409, size: 32)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3021, file: !3022, line: 12, baseType: !3026, size: 64, offset: 64)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3022, line: 5, flags: DIFlagFwdDecl)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3021, file: !3022, line: 13, baseType: !214, size: 128, offset: 128)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3018, file: !44, line: 1091, baseType: !3030, size: 64)
!3030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3022, line: 17, size: 64, elements: !3031)
!3031 = !{!3032}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3030, file: !3022, line: 18, baseType: !3033, size: 64)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3022, line: 16, flags: DIFlagFwdDecl)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3018, file: !44, line: 1096, baseType: !3036, size: 192)
!3036 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3018, file: !44, line: 1092, size: 192, elements: !3037)
!3037 = !{!3038, !3039, !3040}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3036, file: !44, line: 1093, baseType: !214, size: 128)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3036, file: !44, line: 1094, baseType: !163, size: 32, offset: 128)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3036, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2861, file: !44, line: 1843, baseType: !3042, size: 64, offset: 1280)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3043 = !DISubroutineType(types: !3044)
!3044 = !{!299, !346, !716, !163, !315, !2872, !163}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2861, file: !44, line: 1844, baseType: !1097, size: 64, offset: 1344)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2861, file: !44, line: 1845, baseType: !3047, size: 64, offset: 1408)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{!163, !163}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2861, file: !44, line: 1846, baseType: !2934, size: 64, offset: 1472)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2861, file: !44, line: 1847, baseType: !3052, size: 64, offset: 1536)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!299, !2096, !346, !2872, !315, !7}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2861, file: !44, line: 1848, baseType: !3056, size: 64, offset: 1600)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{!299, !346, !2872, !2096, !315, !7}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2861, file: !44, line: 1849, baseType: !3060, size: 64, offset: 1664)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!163, !346, !303, !3063, !817}
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2861, file: !44, line: 1850, baseType: !3065, size: 64, offset: 1728)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{!303, !346, !163, !523, !523}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2861, file: !44, line: 1852, baseType: !3069, size: 64, offset: 1792)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = !DISubroutineType(types: !3071)
!3071 = !{null, !706, !346}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2861, file: !44, line: 1856, baseType: !3073, size: 64, offset: 1856)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{!299, !346, !523, !346, !523, !315, !7}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2861, file: !44, line: 1858, baseType: !3077, size: 64, offset: 1920)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{!523, !346, !523, !346, !523, !523, !7}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2861, file: !44, line: 1861, baseType: !2926, size: 64, offset: 1984)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2856, file: !44, line: 692, baseType: !659, size: 64)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !424, file: !44, line: 694, baseType: !3083, size: 64, offset: 2560)
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3085)
!3085 = !{!3086, !3087, !3088, !3089}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3084, file: !44, line: 1101, baseType: !227)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3084, file: !44, line: 1102, baseType: !214, size: 128)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3084, file: !44, line: 1103, baseType: !214, size: 128, offset: 128)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3084, file: !44, line: 1104, baseType: !214, size: 128, offset: 256)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !424, file: !44, line: 695, baseType: !730, size: 1216, align: 64, offset: 2624)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !424, file: !44, line: 696, baseType: !214, size: 128, offset: 3840)
!3092 = !DIDerivedType(tag: DW_TAG_member, scope: !424, file: !44, line: 697, baseType: !3093, size: 64, offset: 3968)
!3093 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !424, file: !44, line: 697, size: 64, elements: !3094)
!3094 = !{!3095, !3096, !3097, !3100, !3101}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3093, file: !44, line: 698, baseType: !2096, size: 64)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3093, file: !44, line: 699, baseType: !2611, size: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3093, file: !44, line: 700, baseType: !3098, size: 64)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3093, file: !44, line: 701, baseType: !268, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3093, file: !44, line: 702, baseType: !7, size: 32)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !424, file: !44, line: 705, baseType: !411, size: 32, offset: 4032)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !424, file: !44, line: 708, baseType: !411, size: 32, offset: 4064)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !424, file: !44, line: 709, baseType: !2693, size: 64, offset: 4096)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !424, file: !44, line: 720, baseType: !157, size: 64, offset: 4160)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !377, file: !374, line: 98, baseType: !3107, size: 256, offset: 448)
!3107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !421, size: 256, elements: !2226)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !377, file: !374, line: 101, baseType: !3109, size: 32, offset: 704)
!3109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3110, line: 25, size: 32, elements: !3111)
!3110 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3111 = !{!3112}
!3112 = !DIDerivedType(tag: DW_TAG_member, scope: !3109, file: !3110, line: 26, baseType: !3113, size: 32)
!3113 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3109, file: !3110, line: 26, size: 32, elements: !3114)
!3114 = !{!3115}
!3115 = !DIDerivedType(tag: DW_TAG_member, scope: !3113, file: !3110, line: 30, baseType: !3116, size: 32)
!3116 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3113, file: !3110, line: 30, size: 32, elements: !3117)
!3117 = !{!3118, !3119}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3116, file: !3110, line: 31, baseType: !227)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3116, file: !3110, line: 32, baseType: !163, size: 32)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !377, file: !374, line: 102, baseType: !2710, size: 64, offset: 768)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !377, file: !374, line: 103, baseType: !591, size: 64, offset: 832)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !377, file: !374, line: 104, baseType: !318, size: 64, offset: 896)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !377, file: !374, line: 105, baseType: !157, size: 64, offset: 960)
!3124 = !DIDerivedType(tag: DW_TAG_member, scope: !377, file: !374, line: 107, baseType: !3125, size: 128, offset: 1024)
!3125 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !377, file: !374, line: 107, size: 128, elements: !3126)
!3126 = !{!3127, !3128}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3125, file: !374, line: 108, baseType: !214, size: 128)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3125, file: !374, line: 109, baseType: !3129, size: 64)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !377, file: !374, line: 111, baseType: !214, size: 128, offset: 1152)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !377, file: !374, line: 112, baseType: !214, size: 128, offset: 1280)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !377, file: !374, line: 120, baseType: !3133, size: 128, offset: 1408)
!3133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !377, file: !374, line: 116, size: 128, elements: !3134)
!3134 = !{!3135, !3136, !3137}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3133, file: !374, line: 117, baseType: !634, size: 128)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3133, file: !374, line: 118, baseType: !391, size: 128)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3133, file: !374, line: 119, baseType: !359, size: 128, align: 64)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !347, file: !44, line: 922, baseType: !423, size: 64, offset: 256)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !347, file: !44, line: 923, baseType: !2859, size: 64, offset: 320)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !347, file: !44, line: 929, baseType: !227, offset: 384)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !347, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !347, file: !44, line: 931, baseType: !767, size: 64, offset: 448)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !347, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !347, file: !44, line: 933, baseType: !2706, size: 32, offset: 544)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !347, file: !44, line: 934, baseType: !1169, size: 192, offset: 576)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !347, file: !44, line: 935, baseType: !523, size: 64, offset: 768)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !347, file: !44, line: 936, baseType: !3148, size: 192, offset: 832)
!3148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3149)
!3149 = !{!3150, !3151, !3152, !3153, !3154, !3155}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3148, file: !44, line: 886, baseType: !2959)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3148, file: !44, line: 887, baseType: !1467, size: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3148, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3148, file: !44, line: 889, baseType: !429, size: 32, offset: 96)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3148, file: !44, line: 889, baseType: !429, size: 32, offset: 128)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3148, file: !44, line: 890, baseType: !163, size: 32, offset: 160)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !347, file: !44, line: 937, baseType: !1543, size: 64, offset: 1024)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !347, file: !44, line: 938, baseType: !3158, size: 256, offset: 1088)
!3158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3159)
!3159 = !{!3160, !3161, !3162, !3163, !3164, !3165}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3158, file: !44, line: 897, baseType: !318, size: 64)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3158, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3158, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3158, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3158, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3158, file: !44, line: 904, baseType: !523, size: 64, offset: 192)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !347, file: !44, line: 940, baseType: !415, size: 64, offset: 1344)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !347, file: !44, line: 945, baseType: !157, size: 64, offset: 1408)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !347, file: !44, line: 949, baseType: !214, size: 128, offset: 1472)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !347, file: !44, line: 950, baseType: !214, size: 128, offset: 1600)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !347, file: !44, line: 952, baseType: !729, size: 64, offset: 1728)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !347, file: !44, line: 953, baseType: !905, size: 32, offset: 1792)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !347, file: !44, line: 954, baseType: !905, size: 32, offset: 1824)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !337, file: !293, line: 174, baseType: !343, size: 64, offset: 320)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !337, file: !293, line: 176, baseType: !3175, size: 64, offset: 384)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{!163, !346, !220, !336, !977}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !325, file: !293, line: 90, baseType: !320, size: 64, offset: 192)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !325, file: !293, line: 91, baseType: !3180, size: 64, offset: 256)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !283, file: !207, line: 143, baseType: !3182, size: 64, offset: 256)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!3185, !220}
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3187)
!3187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3188)
!3188 = !{!3189, !3190, !3194, !3198, !3204, !3208}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3187, file: !61, line: 40, baseType: !60, size: 32)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3187, file: !61, line: 41, baseType: !3191, size: 64, offset: 64)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!190}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3187, file: !61, line: 42, baseType: !3195, size: 64, offset: 128)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{!157}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3187, file: !61, line: 43, baseType: !3199, size: 64, offset: 192)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!199, !3202}
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3187, file: !61, line: 44, baseType: !3205, size: 64, offset: 256)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!199}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3187, file: !61, line: 45, baseType: !462, size: 64, offset: 320)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !283, file: !207, line: 144, baseType: !3210, size: 64, offset: 320)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{!199, !220}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !283, file: !207, line: 145, baseType: !3214, size: 64, offset: 384)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{null, !220, !3217, !3218}
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !206, file: !207, line: 70, baseType: !3220, size: 64, offset: 384)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !611, line: 123, size: 1024, elements: !3222)
!3222 = !{!3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3351, !3352, !3353, !3354, !3355}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3221, file: !611, line: 124, baseType: !743, size: 32)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3221, file: !611, line: 125, baseType: !743, size: 32, offset: 32)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3221, file: !611, line: 135, baseType: !3220, size: 64, offset: 64)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3221, file: !611, line: 136, baseType: !210, size: 64, offset: 128)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3221, file: !611, line: 138, baseType: !756, size: 192, align: 64, offset: 192)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3221, file: !611, line: 140, baseType: !199, size: 64, offset: 384)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3221, file: !611, line: 141, baseType: !7, size: 32, offset: 448)
!3230 = !DIDerivedType(tag: DW_TAG_member, scope: !3221, file: !611, line: 142, baseType: !3231, size: 256, offset: 512)
!3231 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3221, file: !611, line: 142, size: 256, elements: !3232)
!3232 = !{!3233, !3279, !3283}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3231, file: !611, line: 143, baseType: !3234, size: 192)
!3234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !611, line: 91, size: 192, elements: !3235)
!3235 = !{!3236, !3237, !3238}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3234, file: !611, line: 92, baseType: !318, size: 64)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3234, file: !611, line: 94, baseType: !752, size: 64, offset: 64)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3234, file: !611, line: 100, baseType: !3239, size: 64, offset: 128)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !611, line: 180, size: 704, elements: !3241)
!3241 = !{!3242, !3243, !3244, !3251, !3252, !3253, !3277, !3278}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3240, file: !611, line: 182, baseType: !3220, size: 64)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3240, file: !611, line: 183, baseType: !7, size: 32, offset: 64)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3240, file: !611, line: 186, baseType: !3245, size: 192, offset: 128)
!3245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3246, line: 19, size: 192, elements: !3247)
!3246 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3247 = !{!3248, !3249, !3250}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3245, file: !3246, line: 20, baseType: !734, size: 128)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3245, file: !3246, line: 21, baseType: !7, size: 32, offset: 128)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3245, file: !3246, line: 22, baseType: !7, size: 32, offset: 160)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3240, file: !611, line: 187, baseType: !409, size: 32, offset: 320)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3240, file: !611, line: 188, baseType: !409, size: 32, offset: 352)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3240, file: !611, line: 189, baseType: !3254, size: 64, offset: 384)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !611, line: 168, size: 320, elements: !3256)
!3256 = !{!3257, !3261, !3265, !3269, !3273}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3255, file: !611, line: 169, baseType: !3258, size: 64)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{!163, !706, !3239}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3255, file: !611, line: 171, baseType: !3262, size: 64, offset: 64)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = !DISubroutineType(types: !3264)
!3264 = !{!163, !3220, !210, !309}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3255, file: !611, line: 173, baseType: !3266, size: 64, offset: 128)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = !DISubroutineType(types: !3268)
!3268 = !{!163, !3220}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3255, file: !611, line: 174, baseType: !3270, size: 64, offset: 192)
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = !DISubroutineType(types: !3272)
!3272 = !{!163, !3220, !3220, !210}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3255, file: !611, line: 176, baseType: !3274, size: 64, offset: 256)
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3275 = !DISubroutineType(types: !3276)
!3276 = !{!163, !706, !3220, !3239}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3240, file: !611, line: 192, baseType: !214, size: 128, offset: 448)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3240, file: !611, line: 194, baseType: !1477, size: 128, offset: 576)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3231, file: !611, line: 144, baseType: !3280, size: 64)
!3280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !611, line: 103, size: 64, elements: !3281)
!3281 = !{!3282}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3280, file: !611, line: 104, baseType: !3220, size: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3231, file: !611, line: 145, baseType: !3284, size: 256)
!3284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !611, line: 107, size: 256, elements: !3285)
!3285 = !{!3286, !3346, !3349, !3350}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3284, file: !611, line: 108, baseType: !3287, size: 64)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3289)
!3289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !611, line: 217, size: 768, elements: !3290)
!3290 = !{!3291, !3311, !3315, !3319, !3323, !3327, !3331, !3335, !3336, !3337, !3338, !3342}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3289, file: !611, line: 222, baseType: !3292, size: 64)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{!163, !3295}
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !611, line: 197, size: 1088, elements: !3297)
!3297 = !{!3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3296, file: !611, line: 199, baseType: !3220, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3296, file: !611, line: 200, baseType: !346, size: 64, offset: 64)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3296, file: !611, line: 201, baseType: !706, size: 64, offset: 128)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3296, file: !611, line: 202, baseType: !157, size: 64, offset: 192)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3296, file: !611, line: 205, baseType: !1169, size: 192, offset: 256)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3296, file: !611, line: 206, baseType: !1169, size: 192, offset: 448)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3296, file: !611, line: 207, baseType: !163, size: 32, offset: 640)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3296, file: !611, line: 208, baseType: !214, size: 128, offset: 704)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3296, file: !611, line: 209, baseType: !268, size: 64, offset: 832)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3296, file: !611, line: 211, baseType: !315, size: 64, offset: 896)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3296, file: !611, line: 212, baseType: !190, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3296, file: !611, line: 213, baseType: !190, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3296, file: !611, line: 214, baseType: !1005, size: 64, offset: 1024)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3289, file: !611, line: 223, baseType: !3312, size: 64, offset: 64)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DISubroutineType(types: !3314)
!3314 = !{null, !3295}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3289, file: !611, line: 236, baseType: !3316, size: 64, offset: 128)
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = !DISubroutineType(types: !3318)
!3318 = !{!163, !706, !157}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3289, file: !611, line: 238, baseType: !3320, size: 64, offset: 192)
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{!157, !706, !2872}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3289, file: !611, line: 239, baseType: !3324, size: 64, offset: 256)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{!157, !706, !157, !2872}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3289, file: !611, line: 240, baseType: !3328, size: 64, offset: 320)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{null, !706, !157}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3289, file: !611, line: 242, baseType: !3332, size: 64, offset: 384)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = !DISubroutineType(types: !3334)
!3334 = !{!299, !3295, !268, !315, !523}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3289, file: !611, line: 252, baseType: !315, size: 64, offset: 448)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3289, file: !611, line: 259, baseType: !190, size: 8, offset: 512)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3289, file: !611, line: 260, baseType: !3332, size: 64, offset: 576)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3289, file: !611, line: 263, baseType: !3339, size: 64, offset: 640)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!2901, !3295, !2903}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3289, file: !611, line: 266, baseType: !3343, size: 64, offset: 704)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!163, !3295, !977}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3284, file: !611, line: 109, baseType: !3347, size: 64, offset: 64)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !611, line: 31, flags: DIFlagFwdDecl)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3284, file: !611, line: 110, baseType: !523, size: 64, offset: 128)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3284, file: !611, line: 111, baseType: !3220, size: 64, offset: 192)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3221, file: !611, line: 148, baseType: !157, size: 64, offset: 768)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3221, file: !611, line: 154, baseType: !415, size: 64, offset: 832)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3221, file: !611, line: 156, baseType: !310, size: 16, offset: 896)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3221, file: !611, line: 157, baseType: !309, size: 16, offset: 912)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3221, file: !611, line: 158, baseType: !3356, size: 64, offset: 960)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !611, line: 32, flags: DIFlagFwdDecl)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !206, file: !207, line: 71, baseType: !3359, size: 32, offset: 448)
!3359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3360, line: 19, size: 32, elements: !3361)
!3360 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3361 = !{!3362}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3359, file: !3360, line: 20, baseType: !1226, size: 32)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !206, file: !207, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !206, file: !207, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !206, file: !207, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !206, file: !207, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !206, file: !207, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !203, file: !73, line: 463, baseType: !3369, size: 64, offset: 512)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !203, file: !73, line: 465, baseType: !3371, size: 64, offset: 576)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !203, file: !73, line: 467, baseType: !210, size: 64, offset: 640)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !203, file: !73, line: 468, baseType: !3375, size: 64, offset: 704)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3377)
!3377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3378)
!3378 = !{!3379, !3380, !3381, !3385, !3390, !3394}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3377, file: !73, line: 88, baseType: !210, size: 64)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3377, file: !73, line: 89, baseType: !322, size: 64, offset: 64)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3377, file: !73, line: 90, baseType: !3382, size: 64, offset: 128)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!163, !3369, !263}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3377, file: !73, line: 91, baseType: !3386, size: 64, offset: 192)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!268, !3369, !3389, !3217, !3218}
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3377, file: !73, line: 93, baseType: !3391, size: 64, offset: 256)
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{null, !3369}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3377, file: !73, line: 95, baseType: !3395, size: 64, offset: 320)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3397)
!3397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3398)
!3398 = !{!3399, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3397, file: !80, line: 279, baseType: !3400, size: 64)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = !DISubroutineType(types: !3402)
!3402 = !{!163, !3369}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3397, file: !80, line: 280, baseType: !3391, size: 64, offset: 64)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3397, file: !80, line: 281, baseType: !3400, size: 64, offset: 128)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3397, file: !80, line: 282, baseType: !3400, size: 64, offset: 192)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3397, file: !80, line: 283, baseType: !3400, size: 64, offset: 256)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3397, file: !80, line: 284, baseType: !3400, size: 64, offset: 320)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3397, file: !80, line: 285, baseType: !3400, size: 64, offset: 384)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3397, file: !80, line: 286, baseType: !3400, size: 64, offset: 448)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3397, file: !80, line: 287, baseType: !3400, size: 64, offset: 512)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3397, file: !80, line: 288, baseType: !3400, size: 64, offset: 576)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3397, file: !80, line: 289, baseType: !3400, size: 64, offset: 640)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3397, file: !80, line: 290, baseType: !3400, size: 64, offset: 704)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3397, file: !80, line: 291, baseType: !3400, size: 64, offset: 768)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3397, file: !80, line: 292, baseType: !3400, size: 64, offset: 832)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3397, file: !80, line: 293, baseType: !3400, size: 64, offset: 896)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3397, file: !80, line: 294, baseType: !3400, size: 64, offset: 960)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3397, file: !80, line: 295, baseType: !3400, size: 64, offset: 1024)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3397, file: !80, line: 296, baseType: !3400, size: 64, offset: 1088)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3397, file: !80, line: 297, baseType: !3400, size: 64, offset: 1152)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3397, file: !80, line: 298, baseType: !3400, size: 64, offset: 1216)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3397, file: !80, line: 299, baseType: !3400, size: 64, offset: 1280)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3397, file: !80, line: 300, baseType: !3400, size: 64, offset: 1344)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3397, file: !80, line: 301, baseType: !3400, size: 64, offset: 1408)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !203, file: !73, line: 470, baseType: !3426, size: 64, offset: 768)
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3428, line: 82, size: 1408, elements: !3429)
!3428 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3429 = !{!3430, !3431, !3432, !3433, !3434, !3435, !3436, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3511, !3514, !3515}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3427, file: !3428, line: 83, baseType: !210, size: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3427, file: !3428, line: 84, baseType: !210, size: 64, offset: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3427, file: !3428, line: 85, baseType: !3369, size: 64, offset: 128)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3427, file: !3428, line: 86, baseType: !322, size: 64, offset: 192)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3427, file: !3428, line: 87, baseType: !322, size: 64, offset: 256)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3427, file: !3428, line: 88, baseType: !322, size: 64, offset: 320)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3427, file: !3428, line: 90, baseType: !3437, size: 64, offset: 384)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{!163, !3369, !3440}
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3442)
!3442 = !{!3443, !3444, !3445, !3446, !3447, !3448, !3449, !3462, !3475, !3476, !3477, !3478, !3479, !3487, !3488, !3489, !3490, !3491, !3492}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3441, file: !67, line: 96, baseType: !210, size: 64)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3441, file: !67, line: 97, baseType: !3426, size: 64, offset: 64)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3441, file: !67, line: 99, baseType: !625, size: 64, offset: 128)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3441, file: !67, line: 100, baseType: !210, size: 64, offset: 192)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3441, file: !67, line: 102, baseType: !190, size: 8, offset: 256)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3441, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3441, file: !67, line: 105, baseType: !3450, size: 64, offset: 320)
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3452)
!3452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3453, line: 262, size: 1600, elements: !3454)
!3453 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3454 = !{!3455, !3456, !3457, !3461}
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3452, file: !3453, line: 263, baseType: !2696, size: 256)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3452, file: !3453, line: 264, baseType: !2696, size: 256, offset: 256)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3452, file: !3453, line: 265, baseType: !3458, size: 1024, offset: 512)
!3458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 1024, elements: !3459)
!3459 = !{!3460}
!3460 = !DISubrange(count: 128)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3452, file: !3453, line: 266, baseType: !199, size: 64, offset: 1536)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3441, file: !67, line: 106, baseType: !3463, size: 64, offset: 384)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3465)
!3465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3453, line: 210, size: 256, elements: !3466)
!3466 = !{!3467, !3471, !3473, !3474}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3465, file: !3453, line: 211, baseType: !3468, size: 72)
!3468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1349, size: 72, elements: !3469)
!3469 = !{!3470}
!3470 = !DISubrange(count: 9)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3465, file: !3453, line: 212, baseType: !3472, size: 64, offset: 128)
!3472 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3453, line: 14, baseType: !318)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3465, file: !3453, line: 213, baseType: !411, size: 32, offset: 192)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3465, file: !3453, line: 214, baseType: !411, size: 32, offset: 224)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3441, file: !67, line: 108, baseType: !3400, size: 64, offset: 448)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3441, file: !67, line: 109, baseType: !3391, size: 64, offset: 512)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3441, file: !67, line: 110, baseType: !3400, size: 64, offset: 576)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3441, file: !67, line: 111, baseType: !3391, size: 64, offset: 640)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3441, file: !67, line: 112, baseType: !3480, size: 64, offset: 704)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DISubroutineType(types: !3482)
!3482 = !{!163, !3369, !3483}
!3483 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3484)
!3484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3485)
!3485 = !{!3486}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3484, file: !80, line: 51, baseType: !163, size: 32)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3441, file: !67, line: 113, baseType: !3400, size: 64, offset: 768)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3441, file: !67, line: 114, baseType: !322, size: 64, offset: 832)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3441, file: !67, line: 115, baseType: !322, size: 64, offset: 896)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3441, file: !67, line: 117, baseType: !3395, size: 64, offset: 960)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3441, file: !67, line: 118, baseType: !3391, size: 64, offset: 1024)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3441, file: !67, line: 120, baseType: !3493, size: 64, offset: 1088)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3427, file: !3428, line: 91, baseType: !3382, size: 64, offset: 448)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3427, file: !3428, line: 92, baseType: !3400, size: 64, offset: 512)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3427, file: !3428, line: 93, baseType: !3391, size: 64, offset: 576)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3427, file: !3428, line: 94, baseType: !3400, size: 64, offset: 640)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3427, file: !3428, line: 95, baseType: !3391, size: 64, offset: 704)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3427, file: !3428, line: 97, baseType: !3400, size: 64, offset: 768)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3427, file: !3428, line: 98, baseType: !3400, size: 64, offset: 832)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3427, file: !3428, line: 100, baseType: !3480, size: 64, offset: 896)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3427, file: !3428, line: 101, baseType: !3400, size: 64, offset: 960)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3427, file: !3428, line: 103, baseType: !3400, size: 64, offset: 1024)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3427, file: !3428, line: 105, baseType: !3400, size: 64, offset: 1088)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3427, file: !3428, line: 107, baseType: !3395, size: 64, offset: 1152)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3427, file: !3428, line: 109, baseType: !3508, size: 64, offset: 1216)
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3509, size: 64)
!3509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3510)
!3510 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3428, line: 109, flags: DIFlagFwdDecl)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3427, file: !3428, line: 111, baseType: !3512, size: 64, offset: 1280)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3428, line: 111, flags: DIFlagFwdDecl)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3427, file: !3428, line: 112, baseType: !640, offset: 1344)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3427, file: !3428, line: 114, baseType: !190, size: 8, offset: 1344)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !203, file: !73, line: 471, baseType: !3440, size: 64, offset: 832)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !203, file: !73, line: 473, baseType: !157, size: 64, offset: 896)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !203, file: !73, line: 475, baseType: !157, size: 64, offset: 960)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !203, file: !73, line: 480, baseType: !1169, size: 192, offset: 1024)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !203, file: !73, line: 484, baseType: !3521, size: 576, offset: 1216)
!3521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3522)
!3522 = !{!3523, !3524, !3525, !3526, !3527, !3528}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3521, file: !73, line: 362, baseType: !214, size: 128)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3521, file: !73, line: 363, baseType: !214, size: 128, offset: 128)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3521, file: !73, line: 364, baseType: !214, size: 128, offset: 256)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3521, file: !73, line: 365, baseType: !214, size: 128, offset: 384)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3521, file: !73, line: 366, baseType: !190, size: 8, offset: 512)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3521, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !203, file: !73, line: 485, baseType: !3530, size: 2304, offset: 1792)
!3530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3531)
!3531 = !{!3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3627, !3631}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3530, file: !80, line: 566, baseType: !3483, size: 32)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3530, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3530, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3530, file: !80, line: 569, baseType: !190, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3530, file: !80, line: 570, baseType: !190, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3530, file: !80, line: 571, baseType: !190, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3530, file: !80, line: 572, baseType: !190, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3530, file: !80, line: 573, baseType: !190, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3530, file: !80, line: 574, baseType: !190, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3530, file: !80, line: 575, baseType: !190, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3530, file: !80, line: 576, baseType: !190, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3530, file: !80, line: 577, baseType: !409, size: 32, offset: 64)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3530, file: !80, line: 578, baseType: !227, offset: 96)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3530, file: !80, line: 580, baseType: !214, size: 128, offset: 128)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3530, file: !80, line: 581, baseType: !1498, size: 192, offset: 256)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3530, file: !80, line: 582, baseType: !3548, size: 64, offset: 448)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3550, line: 43, size: 1472, elements: !3551)
!3550 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3551 = !{!3552, !3553, !3554, !3555, !3556, !3559, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584}
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3549, file: !3550, line: 44, baseType: !210, size: 64)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3549, file: !3550, line: 45, baseType: !163, size: 32, offset: 64)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3549, file: !3550, line: 46, baseType: !214, size: 128, offset: 128)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3549, file: !3550, line: 47, baseType: !227, offset: 256)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3549, file: !3550, line: 48, baseType: !3557, size: 64, offset: 256)
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3549, file: !3550, line: 49, baseType: !3560, size: 320, offset: 320)
!3560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3561, line: 11, size: 320, elements: !3562)
!3561 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3562 = !{!3563, !3564, !3565, !3570}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3560, file: !3561, line: 16, baseType: !634, size: 128)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3560, file: !3561, line: 17, baseType: !318, size: 64, offset: 128)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3560, file: !3561, line: 18, baseType: !3566, size: 64, offset: 192)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = !DISubroutineType(types: !3568)
!3568 = !{null, !3569}
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3560, file: !3561, line: 19, baseType: !409, size: 32, offset: 256)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3549, file: !3550, line: 50, baseType: !318, size: 64, offset: 640)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3549, file: !3550, line: 51, baseType: !1296, size: 64, offset: 704)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3549, file: !3550, line: 52, baseType: !1296, size: 64, offset: 768)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3549, file: !3550, line: 53, baseType: !1296, size: 64, offset: 832)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3549, file: !3550, line: 54, baseType: !1296, size: 64, offset: 896)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3549, file: !3550, line: 55, baseType: !1296, size: 64, offset: 960)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3549, file: !3550, line: 56, baseType: !318, size: 64, offset: 1024)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3549, file: !3550, line: 57, baseType: !318, size: 64, offset: 1088)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3549, file: !3550, line: 58, baseType: !318, size: 64, offset: 1152)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3549, file: !3550, line: 59, baseType: !318, size: 64, offset: 1216)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3549, file: !3550, line: 60, baseType: !318, size: 64, offset: 1280)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3549, file: !3550, line: 61, baseType: !3369, size: 64, offset: 1344)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3549, file: !3550, line: 62, baseType: !190, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3549, file: !3550, line: 63, baseType: !190, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3530, file: !80, line: 583, baseType: !190, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3530, file: !80, line: 584, baseType: !190, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3530, file: !80, line: 585, baseType: !190, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3530, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3530, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3530, file: !80, line: 592, baseType: !1288, size: 512, offset: 576)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3530, file: !80, line: 593, baseType: !415, size: 64, offset: 1088)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3530, file: !80, line: 594, baseType: !1955, size: 256, offset: 1152)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3530, file: !80, line: 595, baseType: !1477, size: 128, offset: 1408)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3530, file: !80, line: 596, baseType: !3557, size: 64, offset: 1536)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3530, file: !80, line: 597, baseType: !743, size: 32, offset: 1600)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3530, file: !80, line: 598, baseType: !743, size: 32, offset: 1632)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3530, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3530, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3530, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3530, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3530, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3530, file: !80, line: 604, baseType: !190, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3530, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3530, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3530, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3530, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3530, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3530, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3530, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3530, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3530, file: !80, line: 613, baseType: !163, size: 32, offset: 1792)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3530, file: !80, line: 614, baseType: !163, size: 32, offset: 1824)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3530, file: !80, line: 615, baseType: !415, size: 64, offset: 1856)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3530, file: !80, line: 616, baseType: !415, size: 64, offset: 1920)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3530, file: !80, line: 617, baseType: !415, size: 64, offset: 1984)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3530, file: !80, line: 618, baseType: !415, size: 64, offset: 2048)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3530, file: !80, line: 620, baseType: !3618, size: 64, offset: 2112)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3620)
!3620 = !{!3621, !3622, !3623, !3624}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3619, file: !80, line: 537, baseType: !227)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3619, file: !80, line: 538, baseType: !7, size: 32)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3619, file: !80, line: 540, baseType: !214, size: 128, offset: 64)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3619, file: !80, line: 543, baseType: !3625, size: 64, offset: 192)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3530, file: !80, line: 621, baseType: !3628, size: 64, offset: 2176)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = !DISubroutineType(types: !3630)
!3630 = !{null, !3369, !1440}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3530, file: !80, line: 622, baseType: !3632, size: 64, offset: 2240)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !203, file: !73, line: 486, baseType: !3635, size: 64, offset: 4096)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3637)
!3637 = !{!3638, !3639, !3640, !3644, !3645, !3646}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3636, file: !80, line: 643, baseType: !3397, size: 1472)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3636, file: !80, line: 644, baseType: !3400, size: 64, offset: 1472)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3636, file: !80, line: 645, baseType: !3641, size: 64, offset: 1536)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = !DISubroutineType(types: !3643)
!3643 = !{null, !3369, !190}
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3636, file: !80, line: 646, baseType: !3400, size: 64, offset: 1600)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3636, file: !80, line: 647, baseType: !3391, size: 64, offset: 1664)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3636, file: !80, line: 648, baseType: !3391, size: 64, offset: 1728)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !203, file: !73, line: 493, baseType: !3648, size: 64, offset: 4160)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !94, line: 162, size: 1088, elements: !3650)
!3650 = !{!3651, !3652, !3653, !3737, !3738, !3739, !3740, !3741, !3742, !3745, !3746, !3747, !3748, !3749, !3750, !3751}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3649, file: !94, line: 163, baseType: !214, size: 128)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3649, file: !94, line: 164, baseType: !210, size: 64, offset: 128)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3649, file: !94, line: 165, baseType: !3654, size: 64, offset: 192)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3656)
!3656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !94, line: 105, size: 640, elements: !3657)
!3657 = !{!3658, !3687, !3698, !3703, !3707, !3714, !3718, !3722, !3729, !3733}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3656, file: !94, line: 106, baseType: !3659, size: 64)
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = !DISubroutineType(types: !3661)
!3661 = !{!163, !3648, !3662, !93}
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3664, line: 51, size: 1344, elements: !3665)
!3664 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3665 = !{!3666, !3667, !3669, !3670, !3671, !3680, !3681, !3682, !3683, !3684, !3685, !3686}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3663, file: !3664, line: 52, baseType: !210, size: 64)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3663, file: !3664, line: 53, baseType: !3668, size: 32, offset: 64)
!3668 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3664, line: 28, baseType: !409)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3663, file: !3664, line: 54, baseType: !210, size: 64, offset: 128)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3663, file: !3664, line: 55, baseType: !168, size: 192, offset: 192)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3663, file: !3664, line: 57, baseType: !3672, size: 64, offset: 384)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3664, line: 31, size: 704, elements: !3674)
!3674 = !{!3675, !3676, !3677, !3678, !3679}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3673, file: !3664, line: 32, baseType: !268, size: 64)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3673, file: !3664, line: 33, baseType: !163, size: 32, offset: 64)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3673, file: !3664, line: 34, baseType: !157, size: 64, offset: 128)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3673, file: !3664, line: 35, baseType: !3672, size: 64, offset: 192)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3673, file: !3664, line: 43, baseType: !337, size: 448, offset: 256)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3663, file: !3664, line: 58, baseType: !3672, size: 64, offset: 448)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3663, file: !3664, line: 59, baseType: !3662, size: 64, offset: 512)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3663, file: !3664, line: 60, baseType: !3662, size: 64, offset: 576)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3663, file: !3664, line: 61, baseType: !3662, size: 64, offset: 640)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3663, file: !3664, line: 63, baseType: !206, size: 512, offset: 704)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3663, file: !3664, line: 65, baseType: !318, size: 64, offset: 1216)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3663, file: !3664, line: 66, baseType: !157, size: 64, offset: 1280)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3656, file: !94, line: 108, baseType: !3688, size: 64, offset: 64)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{!163, !3648, !3691, !93}
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !94, line: 63, size: 640, elements: !3693)
!3693 = !{!3694, !3695, !3696}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3692, file: !94, line: 64, baseType: !172, size: 64)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3692, file: !94, line: 65, baseType: !163, size: 32, offset: 64)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3692, file: !94, line: 66, baseType: !3697, size: 512, offset: 96)
!3697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, size: 512, elements: !1731)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3656, file: !94, line: 110, baseType: !3699, size: 64, offset: 128)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = !DISubroutineType(types: !3701)
!3701 = !{!163, !3648, !7, !3702}
!3702 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !191, line: 164, baseType: !318)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3656, file: !94, line: 111, baseType: !3704, size: 64, offset: 192)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = !DISubroutineType(types: !3706)
!3706 = !{null, !3648, !7}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3656, file: !94, line: 112, baseType: !3708, size: 64, offset: 256)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DISubroutineType(types: !3710)
!3710 = !{!163, !3648, !3662, !3711, !7, !3713, !2679}
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !409)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3656, file: !94, line: 117, baseType: !3715, size: 64, offset: 320)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!163, !3648, !7, !7, !157}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3656, file: !94, line: 119, baseType: !3719, size: 64, offset: 384)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{null, !3648, !7, !7}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3656, file: !94, line: 121, baseType: !3723, size: 64, offset: 448)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!163, !3648, !3726, !190}
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3728, line: 11, flags: DIFlagFwdDecl)
!3728 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3656, file: !94, line: 122, baseType: !3730, size: 64, offset: 512)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{null, !3648, !3726}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3656, file: !94, line: 123, baseType: !3734, size: 64, offset: 576)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{!163, !3648, !3691, !3713, !2679}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3649, file: !94, line: 166, baseType: !157, size: 64, offset: 256)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3649, file: !94, line: 167, baseType: !7, size: 32, offset: 320)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3649, file: !94, line: 168, baseType: !7, size: 32, offset: 352)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3649, file: !94, line: 171, baseType: !172, size: 64, offset: 384)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3649, file: !94, line: 172, baseType: !93, size: 32, offset: 448)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3649, file: !94, line: 173, baseType: !3743, size: 64, offset: 512)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !94, line: 134, flags: DIFlagFwdDecl)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3649, file: !94, line: 175, baseType: !3648, size: 64, offset: 576)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3649, file: !94, line: 182, baseType: !3702, size: 64, offset: 640)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3649, file: !94, line: 183, baseType: !7, size: 32, offset: 704)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3649, file: !94, line: 184, baseType: !7, size: 32, offset: 736)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3649, file: !94, line: 185, baseType: !734, size: 128, offset: 768)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3649, file: !94, line: 186, baseType: !1169, size: 192, offset: 896)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3649, file: !94, line: 187, baseType: !3752, offset: 1088)
!3752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2327)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !203, file: !73, line: 499, baseType: !214, size: 128, offset: 4224)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !203, file: !73, line: 502, baseType: !3755, size: 64, offset: 4352)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3757)
!3757 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !203, file: !73, line: 504, baseType: !3759, size: 64, offset: 4416)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !203, file: !73, line: 505, baseType: !415, size: 64, offset: 4480)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !203, file: !73, line: 510, baseType: !415, size: 64, offset: 4544)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !203, file: !73, line: 511, baseType: !3763, size: 64, offset: 4608)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3765)
!3765 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !203, file: !73, line: 513, baseType: !3767, size: 64, offset: 4672)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3769)
!3769 = !{!3770, !3771}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3768, file: !73, line: 293, baseType: !7, size: 32)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3768, file: !73, line: 294, baseType: !318, size: 64, offset: 64)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !203, file: !73, line: 515, baseType: !214, size: 128, offset: 4736)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !203, file: !73, line: 526, baseType: !3774, offset: 4864)
!3774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3775, line: 5, elements: !241)
!3775 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !203, file: !73, line: 528, baseType: !3662, size: 64, offset: 4864)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !203, file: !73, line: 529, baseType: !172, size: 64, offset: 4928)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !203, file: !73, line: 534, baseType: !505, size: 32, offset: 4992)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !203, file: !73, line: 535, baseType: !409, size: 32, offset: 5024)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !203, file: !73, line: 537, baseType: !227, offset: 5056)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !203, file: !73, line: 538, baseType: !214, size: 128, offset: 5056)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !203, file: !73, line: 540, baseType: !3783, size: 64, offset: 5184)
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3785, line: 54, size: 960, elements: !3786)
!3785 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3786 = !{!3787, !3788, !3789, !3790, !3791, !3792, !3793, !3797, !3801, !3802, !3803, !3804, !3808, !3812, !3813}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3784, file: !3785, line: 55, baseType: !210, size: 64)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3784, file: !3785, line: 56, baseType: !625, size: 64, offset: 64)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3784, file: !3785, line: 58, baseType: !322, size: 64, offset: 128)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3784, file: !3785, line: 59, baseType: !322, size: 64, offset: 192)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3784, file: !3785, line: 60, baseType: !220, size: 64, offset: 256)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3784, file: !3785, line: 62, baseType: !3382, size: 64, offset: 320)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3784, file: !3785, line: 63, baseType: !3794, size: 64, offset: 384)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!268, !3369, !3389}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3784, file: !3785, line: 65, baseType: !3798, size: 64, offset: 448)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{null, !3783}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3784, file: !3785, line: 66, baseType: !3391, size: 64, offset: 512)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3784, file: !3785, line: 68, baseType: !3400, size: 64, offset: 576)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3784, file: !3785, line: 70, baseType: !3185, size: 64, offset: 640)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3784, file: !3785, line: 71, baseType: !3805, size: 64, offset: 704)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!199, !3369}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3784, file: !3785, line: 73, baseType: !3809, size: 64, offset: 768)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{null, !3369, !3217, !3218}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3784, file: !3785, line: 75, baseType: !3395, size: 64, offset: 832)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3784, file: !3785, line: 77, baseType: !3512, size: 64, offset: 896)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !203, file: !73, line: 541, baseType: !322, size: 64, offset: 5248)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !203, file: !73, line: 543, baseType: !3391, size: 64, offset: 5312)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !203, file: !73, line: 544, baseType: !3817, size: 64, offset: 5376)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !203, file: !73, line: 545, baseType: !3820, size: 64, offset: 5440)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !203, file: !73, line: 547, baseType: !190, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !203, file: !73, line: 548, baseType: !190, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !203, file: !73, line: 549, baseType: !190, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !203, file: !73, line: 550, baseType: !190, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !176, file: !169, line: 116, baseType: !3827, size: 64, offset: 256)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DISubroutineType(types: !3829)
!3829 = !{!190, !193, !210}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !176, file: !169, line: 118, baseType: !3831, size: 64, offset: 320)
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = !DISubroutineType(types: !3833)
!3833 = !{!163, !193, !210, !7, !157, !315}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !176, file: !169, line: 123, baseType: !3835, size: 64, offset: 384)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{!163, !193, !210, !3838, !315}
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !176, file: !169, line: 126, baseType: !3840, size: 64, offset: 448)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = !DISubroutineType(types: !3842)
!3842 = !{!210, !193}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !176, file: !169, line: 127, baseType: !3840, size: 64, offset: 512)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !176, file: !169, line: 128, baseType: !3845, size: 64, offset: 576)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DISubroutineType(types: !3847)
!3847 = !{!172, !193}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !176, file: !169, line: 130, baseType: !3849, size: 64, offset: 640)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!172, !193, !172}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !176, file: !169, line: 133, baseType: !3853, size: 64, offset: 704)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{!172, !193, !210}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !176, file: !169, line: 135, baseType: !3857, size: 64, offset: 768)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = !DISubroutineType(types: !3859)
!3859 = !{!163, !193, !210, !210, !7, !7, !3860}
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !169, line: 43, size: 640, elements: !3862)
!3862 = !{!3863, !3864, !3865}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3861, file: !169, line: 44, baseType: !172, size: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3861, file: !169, line: 45, baseType: !7, size: 32, offset: 64)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3861, file: !169, line: 46, baseType: !3866, size: 512, offset: 128)
!3866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !415, size: 512, elements: !1326)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !176, file: !169, line: 140, baseType: !3849, size: 64, offset: 832)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !176, file: !169, line: 143, baseType: !3845, size: 64, offset: 896)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !176, file: !169, line: 145, baseType: !179, size: 64, offset: 960)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !176, file: !169, line: 146, baseType: !3871, size: 64, offset: 1024)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DISubroutineType(types: !3873)
!3873 = !{!163, !193, !3874}
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !169, line: 29, size: 128, elements: !3876)
!3876 = !{!3877, !3878, !3879}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3875, file: !169, line: 30, baseType: !7, size: 32)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3875, file: !169, line: 31, baseType: !7, size: 32, offset: 32)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3875, file: !169, line: 32, baseType: !193, size: 64, offset: 64)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !176, file: !169, line: 148, baseType: !3881, size: 64, offset: 1088)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = !DISubroutineType(types: !3883)
!3883 = !{!163, !193, !3369}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !168, file: !169, line: 20, baseType: !3369, size: 64, offset: 128)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !159, file: !160, line: 355, baseType: !158, size: 64, offset: 320)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !159, file: !160, line: 356, baseType: !214, size: 128, offset: 384)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !159, file: !160, line: 357, baseType: !214, size: 128, offset: 512)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !159, file: !160, line: 358, baseType: !214, size: 128, offset: 640)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !159, file: !160, line: 359, baseType: !214, size: 128, offset: 768)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !159, file: !160, line: 360, baseType: !3891, size: 32, offset: 896)
!3891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !160, line: 179, size: 32, elements: !3892)
!3892 = !{!3893, !3894, !3895, !3896, !3897, !3898}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !3891, file: !160, line: 180, baseType: !409, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3891, file: !160, line: 181, baseType: !409, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !3891, file: !160, line: 182, baseType: !409, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !3891, file: !160, line: 183, baseType: !409, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !3891, file: !160, line: 184, baseType: !409, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3891, file: !160, line: 185, baseType: !409, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !159, file: !160, line: 361, baseType: !3900, size: 32, offset: 928)
!3900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !160, line: 190, size: 32, elements: !3901)
!3901 = !{!3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !3900, file: !160, line: 191, baseType: !409, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !3900, file: !160, line: 192, baseType: !409, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !3900, file: !160, line: 193, baseType: !409, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !3900, file: !160, line: 194, baseType: !409, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !3900, file: !160, line: 195, baseType: !409, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !3900, file: !160, line: 196, baseType: !409, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !3900, file: !160, line: 197, baseType: !409, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !3900, file: !160, line: 198, baseType: !409, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !3900, file: !160, line: 199, baseType: !409, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !3900, file: !160, line: 200, baseType: !409, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !3900, file: !160, line: 201, baseType: !409, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !3900, file: !160, line: 202, baseType: !409, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !3900, file: !160, line: 203, baseType: !409, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3900, file: !160, line: 204, baseType: !409, size: 19, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !159, file: !160, line: 362, baseType: !3917, size: 960, offset: 960)
!3917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !160, line: 234, size: 960, elements: !3918)
!3918 = !{!3919, !3921, !3928, !3930, !3931, !3932, !3937, !3940}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !3917, file: !160, line: 235, baseType: !3920, size: 64)
!3920 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !160, line: 217, baseType: !2030)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3917, file: !160, line: 236, baseType: !3922, size: 32, offset: 64)
!3922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !160, line: 227, size: 32, elements: !3923)
!3923 = !{!3924, !3925, !3926, !3927}
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !3922, file: !160, line: 228, baseType: !409, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !3922, file: !160, line: 229, baseType: !409, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !3922, file: !160, line: 230, baseType: !409, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3922, file: !160, line: 231, baseType: !409, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !3917, file: !160, line: 237, baseType: !3929, size: 64, offset: 128)
!3929 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !160, line: 218, baseType: !415)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !3917, file: !160, line: 238, baseType: !268, size: 64, offset: 192)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !3917, file: !160, line: 239, baseType: !214, size: 128, offset: 256)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !3917, file: !160, line: 240, baseType: !3933, size: 320, offset: 384)
!3933 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !160, line: 219, baseType: !3934)
!3934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 320, elements: !3935)
!3935 = !{!3936}
!3936 = !DISubrange(count: 40)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !3917, file: !160, line: 241, baseType: !3938, size: 160, offset: 704)
!3938 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !160, line: 220, baseType: !3939)
!3939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 160, elements: !2197)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !3917, file: !160, line: 242, baseType: !3941, size: 64, offset: 896)
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3942 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !166, line: 899, size: 192, elements: !3943)
!3943 = !{!3944, !3946, !3951, !3957, !3964, !3970, !3976, !3984}
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3942, file: !166, line: 900, baseType: !3945, size: 32)
!3945 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !166, line: 635, baseType: !409)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !3942, file: !166, line: 904, baseType: !3947, size: 128)
!3947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3942, file: !166, line: 901, size: 128, elements: !3948)
!3948 = !{!3949, !3950}
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3947, file: !166, line: 902, baseType: !3945, size: 32)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3947, file: !166, line: 903, baseType: !415, size: 64, offset: 64)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3942, file: !166, line: 910, baseType: !3952, size: 128)
!3952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3942, file: !166, line: 906, size: 128, elements: !3953)
!3953 = !{!3954, !3955, !3956}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3952, file: !166, line: 907, baseType: !3945, size: 32)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3952, file: !166, line: 908, baseType: !409, size: 32, offset: 32)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !3952, file: !166, line: 909, baseType: !268, size: 64, offset: 64)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3942, file: !166, line: 916, baseType: !3958, size: 128)
!3958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3942, file: !166, line: 912, size: 128, elements: !3959)
!3959 = !{!3960, !3961, !3962}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3958, file: !166, line: 913, baseType: !3945, size: 32)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3958, file: !166, line: 914, baseType: !409, size: 32, offset: 32)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !3958, file: !166, line: 915, baseType: !3963, size: 64, offset: 64)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !3942, file: !166, line: 922, baseType: !3965, size: 128)
!3965 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3942, file: !166, line: 918, size: 128, elements: !3966)
!3966 = !{!3967, !3968, !3969}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3965, file: !166, line: 919, baseType: !3945, size: 32)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3965, file: !166, line: 920, baseType: !409, size: 32, offset: 32)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !3965, file: !166, line: 921, baseType: !3941, size: 64, offset: 64)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !3942, file: !166, line: 928, baseType: !3971, size: 128)
!3971 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3942, file: !166, line: 924, size: 128, elements: !3972)
!3972 = !{!3973, !3974, !3975}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3971, file: !166, line: 925, baseType: !3945, size: 32)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !3971, file: !166, line: 926, baseType: !3945, size: 32, offset: 32)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !3971, file: !166, line: 927, baseType: !165, size: 64, offset: 64)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !3942, file: !166, line: 935, baseType: !3977, size: 192)
!3977 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3942, file: !166, line: 930, size: 192, elements: !3978)
!3978 = !{!3979, !3980, !3981, !3983}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3977, file: !166, line: 931, baseType: !3945, size: 32)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !3977, file: !166, line: 932, baseType: !409, size: 32, offset: 32)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !3977, file: !166, line: 933, baseType: !3982, size: 64, offset: 64)
!3982 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !166, line: 128, baseType: !415)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !3977, file: !166, line: 934, baseType: !409, size: 32, offset: 128)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !3942, file: !166, line: 941, baseType: !3985, size: 96)
!3985 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3942, file: !166, line: 937, size: 96, elements: !3986)
!3986 = !{!3987, !3988, !3989}
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3985, file: !166, line: 938, baseType: !3945, size: 32)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !3985, file: !166, line: 939, baseType: !409, size: 32, offset: 32)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !3985, file: !166, line: 940, baseType: !409, size: 32, offset: 64)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !159, file: !160, line: 363, baseType: !3991, size: 1344, offset: 1920)
!3991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !160, line: 275, size: 1344, elements: !3992)
!3992 = !{!3993, !3994, !4004}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3991, file: !160, line: 276, baseType: !163, size: 32)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3991, file: !160, line: 277, baseType: !3995, size: 32, offset: 32)
!3995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !160, line: 254, size: 32, elements: !3996)
!3996 = !{!3997, !3998, !3999, !4000, !4001, !4002, !4003}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !3995, file: !160, line: 255, baseType: !409, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !3995, file: !160, line: 256, baseType: !409, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !3995, file: !160, line: 257, baseType: !409, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !3995, file: !160, line: 258, baseType: !409, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !3995, file: !160, line: 259, baseType: !409, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !3995, file: !160, line: 260, baseType: !409, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3995, file: !160, line: 261, baseType: !409, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !3991, file: !160, line: 278, baseType: !4005, size: 1280, offset: 64)
!4005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4006, size: 1280, elements: !4017)
!4006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !160, line: 264, size: 256, elements: !4007)
!4007 = !{!4008, !4014, !4015, !4016}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4006, file: !160, line: 269, baseType: !4009, size: 8)
!4009 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4006, file: !160, line: 265, size: 8, elements: !4010)
!4010 = !{!4011, !4012, !4013}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !4009, file: !160, line: 266, baseType: !1348, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !4009, file: !160, line: 267, baseType: !1348, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4009, file: !160, line: 268, baseType: !1348, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4006, file: !160, line: 270, baseType: !163, size: 32, offset: 32)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !4006, file: !160, line: 271, baseType: !163, size: 32, offset: 64)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4006, file: !160, line: 272, baseType: !214, size: 128, offset: 128)
!4017 = !{!4018}
!4018 = !DISubrange(count: 5)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !159, file: !160, line: 364, baseType: !4020, size: 640, offset: 3264)
!4020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !160, line: 315, size: 640, elements: !4021)
!4021 = !{!4022, !4023, !4024, !4025, !4026, !4031, !4040, !4041, !4042}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !4020, file: !160, line: 316, baseType: !165, size: 64)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !4020, file: !160, line: 317, baseType: !415, size: 64, offset: 64)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !4020, file: !160, line: 318, baseType: !415, size: 64, offset: 128)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4020, file: !160, line: 319, baseType: !214, size: 128, offset: 192)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4020, file: !160, line: 320, baseType: !4027, size: 8, offset: 320)
!4027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !160, line: 305, size: 8, elements: !4028)
!4028 = !{!4029, !4030}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !4027, file: !160, line: 306, baseType: !1348, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !4027, file: !160, line: 307, baseType: !1348, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !4020, file: !160, line: 321, baseType: !4032, size: 128, offset: 384)
!4032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !160, line: 310, size: 128, elements: !4033)
!4033 = !{!4034, !4039}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4032, file: !160, line: 311, baseType: !4035, size: 64)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{null, !4038}
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4032, file: !160, line: 312, baseType: !3369, size: 64, offset: 64)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !4020, file: !160, line: 322, baseType: !3548, size: 64, offset: 512)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !4020, file: !160, line: 323, baseType: !163, size: 32, offset: 576)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !4020, file: !160, line: 324, baseType: !163, size: 32, offset: 608)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !159, file: !160, line: 365, baseType: !4044, size: 192, offset: 3904)
!4044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !160, line: 297, size: 192, elements: !4045)
!4045 = !{!4046, !4047, !4051, !4052}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4044, file: !160, line: 298, baseType: !163, size: 32)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4044, file: !160, line: 299, baseType: !4048, size: 8, offset: 32)
!4048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !160, line: 283, size: 8, elements: !4049)
!4049 = !{!4050}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4048, file: !160, line: 284, baseType: !1348, size: 8, flags: DIFlagBitField, extraData: i64 0)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !4044, file: !160, line: 300, baseType: !163, size: 32, offset: 64)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !4044, file: !160, line: 301, baseType: !4053, size: 64, offset: 128)
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !160, line: 287, size: 64, elements: !4055)
!4055 = !{!4056, !4061, !4062, !4063}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4054, file: !160, line: 291, baseType: !4057, size: 8)
!4057 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4054, file: !160, line: 288, size: 8, elements: !4058)
!4058 = !{!4059, !4060}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !4057, file: !160, line: 289, baseType: !1348, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4057, file: !160, line: 290, baseType: !1348, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4054, file: !160, line: 292, baseType: !1348, size: 8, offset: 8)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !4054, file: !160, line: 293, baseType: !1348, size: 8, offset: 16)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !4054, file: !160, line: 294, baseType: !163, size: 32, offset: 32)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !159, file: !160, line: 366, baseType: !4065, size: 64, offset: 4096)
!4065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !160, line: 209, size: 64, elements: !4066)
!4066 = !{!4067}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4065, file: !160, line: 210, baseType: !4068, size: 64)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4070, line: 123, flags: DIFlagFwdDecl)
!4070 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !159, file: !160, line: 367, baseType: !4072, size: 384, offset: 4160)
!4072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !160, line: 341, size: 384, elements: !4073)
!4073 = !{!4074, !4077, !4078, !4079}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !4072, file: !160, line: 342, baseType: !4075, size: 64)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3942)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4072, file: !160, line: 343, baseType: !214, size: 128, offset: 64)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !4072, file: !160, line: 344, baseType: !4075, size: 64, offset: 192)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !4072, file: !160, line: 345, baseType: !214, size: 128, offset: 256)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !159, file: !160, line: 368, baseType: !4081, size: 64, offset: 4544)
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !160, line: 122, size: 1216, elements: !4083)
!4083 = !{!4084, !4085, !4086, !4091, !4095, !4099, !4100, !4101}
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !4082, file: !160, line: 123, baseType: !3463, size: 64)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !4082, file: !160, line: 124, baseType: !214, size: 128, offset: 64)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4082, file: !160, line: 125, baseType: !4087, size: 64, offset: 192)
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4088, size: 64)
!4088 = !DISubroutineType(types: !4089)
!4089 = !{!190, !210, !4090}
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !4082, file: !160, line: 126, baseType: !4092, size: 64, offset: 256)
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4093, size: 64)
!4093 = !DISubroutineType(types: !4094)
!4094 = !{!163, !158, !3463}
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4082, file: !160, line: 127, baseType: !4096, size: 64, offset: 320)
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4097 = !DISubroutineType(types: !4098)
!4098 = !{null, !158}
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !4082, file: !160, line: 128, baseType: !3391, size: 64, offset: 384)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !4082, file: !160, line: 129, baseType: !3391, size: 64, offset: 448)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4082, file: !160, line: 130, baseType: !4102, size: 704, offset: 512)
!4102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !160, line: 108, size: 704, elements: !4103)
!4103 = !{!4104, !4105, !4109, !4110, !4111}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4102, file: !160, line: 109, baseType: !206, size: 512)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !4102, file: !160, line: 110, baseType: !4106, size: 64, offset: 512)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = !DISubroutineType(types: !4108)
!4108 = !{!163, !158}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !4102, file: !160, line: 111, baseType: !4096, size: 64, offset: 576)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4102, file: !160, line: 112, baseType: !190, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !4102, file: !160, line: 113, baseType: !190, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !159, file: !160, line: 369, baseType: !4113, size: 64, offset: 4608)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !160, line: 138, size: 256, elements: !4115)
!4115 = !{!4116, !4117, !4121, !4125}
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4114, file: !160, line: 139, baseType: !158, size: 64)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !4114, file: !160, line: 140, baseType: !4118, size: 64, offset: 64)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DISubroutineType(types: !4120)
!4120 = !{!163, !158, !409}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4114, file: !160, line: 141, baseType: !4122, size: 64, offset: 128)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = !DISubroutineType(types: !4124)
!4124 = !{null, !158, !409}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !4114, file: !160, line: 142, baseType: !4096, size: 64, offset: 192)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !159, file: !160, line: 370, baseType: !4127, size: 64, offset: 4672)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_driver", file: !160, line: 162, size: 2816, elements: !4129)
!4129 = !{!4130, !4134, !4135, !4136, !4137, !4146, !4147}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4128, file: !160, line: 163, baseType: !4131, size: 640)
!4131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 640, elements: !4132)
!4132 = !{!4133}
!4133 = !DISubrange(count: 80)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4128, file: !160, line: 164, baseType: !4131, size: 640, offset: 640)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !4128, file: !160, line: 165, baseType: !3463, size: 64, offset: 1280)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4128, file: !160, line: 166, baseType: !7, size: 32, offset: 1344)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4128, file: !160, line: 167, baseType: !4138, size: 192, offset: 1408)
!4138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_ops", file: !160, line: 154, size: 192, elements: !4139)
!4139 = !{!4140, !4142, !4144}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !4138, file: !160, line: 155, baseType: !4141, size: 64)
!4141 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_add", file: !160, line: 150, baseType: !4106)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4138, file: !160, line: 156, baseType: !4143, size: 64, offset: 64)
!4143 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_remove", file: !160, line: 151, baseType: !4106)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !4138, file: !160, line: 157, baseType: !4145, size: 64, offset: 128)
!4145 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_notify", file: !160, line: 152, baseType: !4122)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !4128, file: !160, line: 168, baseType: !3441, size: 1152, offset: 1600)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4128, file: !160, line: 169, baseType: !625, size: 64, offset: 2752)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !159, file: !160, line: 371, baseType: !4149, size: 64, offset: 4736)
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4151)
!4151 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !160, line: 348, flags: DIFlagFwdDecl)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !159, file: !160, line: 372, baseType: !157, size: 64, offset: 4800)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !159, file: !160, line: 373, baseType: !203, size: 5568, offset: 4864)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !159, file: !160, line: 374, baseType: !7, size: 32, offset: 10432)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !159, file: !160, line: 375, baseType: !7, size: 32, offset: 10464)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !159, file: !160, line: 376, baseType: !214, size: 128, offset: 10496)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !159, file: !160, line: 377, baseType: !1169, size: 192, offset: 10624)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !159, file: !160, line: 378, baseType: !4096, size: 64, offset: 10816)
!4159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4160, size: 64)
!4160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1363)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rapl_mmio_regs", file: !3, line: 77, size: 2176, elements: !4163)
!4163 = !{!4164, !4165, !4168}
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "reg_unit", scope: !4162, file: !3, line: 78, baseType: !415, size: 64)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4162, file: !3, line: 79, baseType: !4166, size: 1920, offset: 64)
!4166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !415, size: 1920, elements: !4167)
!4167 = !{!4018, !1622}
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !4162, file: !3, line: 80, baseType: !4169, size: 160, offset: 1984)
!4169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 160, elements: !4017)
!4170 = !{!4171, !4173, !4178, !4183, !4188, !4193, !0, !4196, !4198, !4200, !4369, !4383, !4385, !4387, !4392, !4394, !4396, !4398, !4400, !4402, !4404, !4406, !4408, !4410, !4412, !4415, !4417, !4693, !4698}
!4171 = !DIGlobalVariableExpression(var: !4172, expr: !DIExpression())
!4172 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_proc_thermal_init241", scope: !2, file: !3, line: 784, type: !157, isLocal: true, isDefinition: true)
!4173 = !DIGlobalVariableExpression(var: !4174, expr: !DIExpression())
!4174 = distinct !DIGlobalVariable(name: "__exitcall_proc_thermal_exit", scope: !2, file: !3, line: 785, type: !4175, isLocal: true, isDefinition: true)
!4175 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !4176, line: 117, baseType: !4177)
!4176 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!4178 = !DIGlobalVariableExpression(var: !4179, expr: !DIExpression())
!4179 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author242", scope: !2, file: !3, line: 787, type: !4180, isLocal: true, isDefinition: true, align: 8)
!4180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 720, elements: !4181)
!4181 = !{!4182}
!4182 = !DISubrange(count: 90)
!4183 = !DIGlobalVariableExpression(var: !4184, expr: !DIExpression())
!4184 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description243", scope: !2, file: !3, line: 788, type: !4185, isLocal: true, isDefinition: true, align: 8)
!4185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 632, elements: !4186)
!4186 = !{!4187}
!4187 = !DISubrange(count: 79)
!4188 = !DIGlobalVariableExpression(var: !4189, expr: !DIExpression())
!4189 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file244", scope: !2, file: !3, line: 789, type: !4190, isLocal: true, isDefinition: true, align: 8)
!4190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 744, elements: !4191)
!4191 = !{!4192}
!4192 = !DISubrange(count: 93)
!4193 = !DIGlobalVariableExpression(var: !4194, expr: !DIExpression())
!4194 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license245", scope: !2, file: !3, line: 789, type: !4195, isLocal: true, isDefinition: true, align: 8)
!4195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 320, elements: !3935)
!4196 = !DIGlobalVariableExpression(var: !4197, expr: !DIExpression())
!4197 = distinct !DIGlobalVariable(name: "proc_thermal_emum_mode", scope: !2, file: !3, line: 87, type: !145, isLocal: true, isDefinition: true)
!4198 = !DIGlobalVariableExpression(var: !4199, expr: !DIExpression())
!4199 = distinct !DIGlobalVariable(name: "stored_tjmax", scope: !2, file: !3, line: 215, type: !163, isLocal: true, isDefinition: true)
!4200 = !DIGlobalVariableExpression(var: !4201, expr: !DIExpression())
!4201 = distinct !DIGlobalVariable(name: "proc_thermal_local_ops", scope: !2, file: !3, line: 277, type: !4202, isLocal: true, isDefinition: true)
!4202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_device_ops", file: !119, line: 61, size: 896, elements: !4203)
!4203 = !{!4204, !4333, !4334, !4338, !4342, !4346, !4351, !4355, !4356, !4357, !4358, !4359, !4360, !4365}
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !4202, file: !119, line: 62, baseType: !4205, size: 64)
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = !DISubroutineType(types: !4207)
!4207 = !{!163, !4208, !4248}
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_device", file: !119, line: 150, size: 8448, elements: !4210)
!4210 = !{!4211, !4212, !4213, !4214, !4215, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4236, !4299, !4317, !4318, !4319, !4323, !4324, !4325, !4332}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4209, file: !119, line: 151, baseType: !163, size: 32)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4209, file: !119, line: 152, baseType: !3939, size: 160, offset: 32)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4209, file: !119, line: 153, baseType: !203, size: 5568, offset: 192)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "trips_attribute_group", scope: !4209, file: !119, line: 154, baseType: !325, size: 320, offset: 5760)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "trip_temp_attrs", scope: !4209, file: !119, line: 155, baseType: !4216, size: 64, offset: 6080)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_attr", file: !119, line: 38, flags: DIFlagFwdDecl)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "trip_type_attrs", scope: !4209, file: !119, line: 156, baseType: !4216, size: 64, offset: 6144)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "trip_hyst_attrs", scope: !4209, file: !119, line: 157, baseType: !4216, size: 64, offset: 6208)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4209, file: !119, line: 158, baseType: !107, size: 32, offset: 6272)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "devdata", scope: !4209, file: !119, line: 159, baseType: !157, size: 64, offset: 6336)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "trips", scope: !4209, file: !119, line: 160, baseType: !163, size: 32, offset: 6400)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "trips_disabled", scope: !4209, file: !119, line: 161, baseType: !318, size: 64, offset: 6464)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "passive_delay", scope: !4209, file: !119, line: 162, baseType: !163, size: 32, offset: 6528)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "polling_delay", scope: !4209, file: !119, line: 163, baseType: !163, size: 32, offset: 6560)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "temperature", scope: !4209, file: !119, line: 164, baseType: !163, size: 32, offset: 6592)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "last_temperature", scope: !4209, file: !119, line: 165, baseType: !163, size: 32, offset: 6624)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "emul_temperature", scope: !4209, file: !119, line: 166, baseType: !163, size: 32, offset: 6656)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "passive", scope: !4209, file: !119, line: 167, baseType: !163, size: 32, offset: 6688)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "prev_low_trip", scope: !4209, file: !119, line: 168, baseType: !163, size: 32, offset: 6720)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "prev_high_trip", scope: !4209, file: !119, line: 169, baseType: !163, size: 32, offset: 6752)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "forced_passive", scope: !4209, file: !119, line: 170, baseType: !7, size: 32, offset: 6784)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "need_update", scope: !4209, file: !119, line: 171, baseType: !743, size: 32, offset: 6816)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4209, file: !119, line: 172, baseType: !4235, size: 64, offset: 6848)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4202, size: 64)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "tzp", scope: !4209, file: !119, line: 173, baseType: !4237, size: 64, offset: 6912)
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_params", file: !119, line: 240, size: 576, elements: !4239)
!4239 = !{!4240, !4241, !4242, !4243, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298}
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "governor_name", scope: !4238, file: !119, line: 241, baseType: !3939, size: 160)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "no_hwmon", scope: !4238, file: !119, line: 248, baseType: !190, size: 8, offset: 160)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "num_tbps", scope: !4238, file: !119, line: 250, baseType: !163, size: 32, offset: 192)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "tbp", scope: !4238, file: !119, line: 251, baseType: !4244, size: 64, offset: 256)
!4244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4245, size: 64)
!4245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_bind_params", file: !119, line: 205, size: 256, elements: !4246)
!4246 = !{!4247, !4287, !4288, !4289, !4290}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !4245, file: !119, line: 206, baseType: !4248, size: 64)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device", file: !119, line: 93, size: 6528, elements: !4250)
!4250 = !{!4251, !4252, !4253, !4254, !4255, !4256, !4257, !4283, !4284, !4285, !4286}
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4249, file: !119, line: 94, baseType: !163, size: 32)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4249, file: !119, line: 95, baseType: !3939, size: 160, offset: 32)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4249, file: !119, line: 96, baseType: !203, size: 5568, offset: 192)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !4249, file: !119, line: 97, baseType: !3662, size: 64, offset: 5760)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "devdata", scope: !4249, file: !119, line: 98, baseType: !157, size: 64, offset: 5824)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !4249, file: !119, line: 99, baseType: !157, size: 64, offset: 5888)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4249, file: !119, line: 100, baseType: !4258, size: 64, offset: 5952)
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4259, size: 64)
!4259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4260)
!4260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device_ops", file: !119, line: 84, size: 384, elements: !4261)
!4261 = !{!4262, !4266, !4267, !4271, !4275, !4279}
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "get_max_state", scope: !4260, file: !119, line: 85, baseType: !4263, size: 64)
!4263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4264, size: 64)
!4264 = !DISubroutineType(types: !4265)
!4265 = !{!163, !4248, !3713}
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "get_cur_state", scope: !4260, file: !119, line: 86, baseType: !4263, size: 64, offset: 64)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "set_cur_state", scope: !4260, file: !119, line: 87, baseType: !4268, size: 64, offset: 128)
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4269, size: 64)
!4269 = !DISubroutineType(types: !4270)
!4270 = !{!163, !4248, !318}
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "get_requested_power", scope: !4260, file: !119, line: 88, baseType: !4272, size: 64, offset: 192)
!4272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4273, size: 64)
!4273 = !DISubroutineType(types: !4274)
!4274 = !{!163, !4248, !1411}
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "state2power", scope: !4260, file: !119, line: 89, baseType: !4276, size: 64, offset: 256)
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4277, size: 64)
!4277 = !DISubroutineType(types: !4278)
!4278 = !{!163, !4248, !318, !1411}
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "power2state", scope: !4260, file: !119, line: 90, baseType: !4280, size: 64, offset: 320)
!4280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4281, size: 64)
!4281 = !DISubroutineType(types: !4282)
!4282 = !{!163, !4248, !409, !3713}
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "updated", scope: !4249, file: !119, line: 101, baseType: !190, size: 8, offset: 6016)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4249, file: !119, line: 102, baseType: !1169, size: 192, offset: 6080)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_instances", scope: !4249, file: !119, line: 103, baseType: !214, size: 128, offset: 6272)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4249, file: !119, line: 104, baseType: !214, size: 128, offset: 6400)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !4245, file: !119, line: 217, baseType: !163, size: 32, offset: 64)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "trip_mask", scope: !4245, file: !119, line: 224, baseType: !163, size: 32, offset: 96)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "binding_limits", scope: !4245, file: !119, line: 234, baseType: !3713, size: 64, offset: 128)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4245, file: !119, line: 235, baseType: !4205, size: 64, offset: 192)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "sustainable_power", scope: !4238, file: !119, line: 257, baseType: !409, size: 32, offset: 320)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "k_po", scope: !4238, file: !119, line: 263, baseType: !1440, size: 32, offset: 352)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "k_pu", scope: !4238, file: !119, line: 269, baseType: !1440, size: 32, offset: 384)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "k_i", scope: !4238, file: !119, line: 272, baseType: !1440, size: 32, offset: 416)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "k_d", scope: !4238, file: !119, line: 275, baseType: !1440, size: 32, offset: 448)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "integral_cutoff", scope: !4238, file: !119, line: 278, baseType: !1440, size: 32, offset: 480)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "slope", scope: !4238, file: !119, line: 284, baseType: !163, size: 32, offset: 512)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4238, file: !119, line: 289, baseType: !163, size: 32, offset: 544)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "governor", scope: !4209, file: !119, line: 174, baseType: !4300, size: 64, offset: 6976)
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_governor", file: !119, line: 196, size: 512, elements: !4302)
!4302 = !{!4303, !4304, !4308, !4312, !4316}
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4301, file: !119, line: 197, baseType: !3939, size: 160)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "bind_to_tz", scope: !4301, file: !119, line: 198, baseType: !4305, size: 64, offset: 192)
!4305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4306, size: 64)
!4306 = !DISubroutineType(types: !4307)
!4307 = !{!163, !4208}
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "unbind_from_tz", scope: !4301, file: !119, line: 199, baseType: !4309, size: 64, offset: 256)
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4310, size: 64)
!4310 = !DISubroutineType(types: !4311)
!4311 = !{null, !4208}
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !4301, file: !119, line: 200, baseType: !4313, size: 64, offset: 320)
!4313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4314, size: 64)
!4314 = !DISubroutineType(types: !4315)
!4315 = !{!163, !4208, !163}
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "governor_list", scope: !4301, file: !119, line: 201, baseType: !214, size: 128, offset: 384)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "governor_data", scope: !4209, file: !119, line: 175, baseType: !157, size: 64, offset: 7040)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_instances", scope: !4209, file: !119, line: 176, baseType: !214, size: 128, offset: 7104)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "ida", scope: !4209, file: !119, line: 177, baseType: !4320, size: 128, offset: 7232)
!4320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !3246, line: 244, size: 128, elements: !4321)
!4321 = !{!4322}
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4320, file: !3246, line: 245, baseType: !734, size: 128)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4209, file: !119, line: 178, baseType: !1169, size: 192, offset: 7360)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4209, file: !119, line: 179, baseType: !214, size: 128, offset: 7552)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "poll_queue", scope: !4209, file: !119, line: 180, baseType: !4326, size: 704, offset: 7680)
!4326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1956, line: 115, size: 704, elements: !4327)
!4327 = !{!4328, !4329, !4330, !4331}
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4326, file: !1956, line: 116, baseType: !1955, size: 256)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4326, file: !1956, line: 117, baseType: !3560, size: 320, offset: 256)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4326, file: !1956, line: 120, baseType: !2789, size: 64, offset: 576)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4326, file: !1956, line: 121, baseType: !163, size: 32, offset: 640)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "notify_event", scope: !4209, file: !119, line: 181, baseType: !126, size: 32, offset: 8384)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !4202, file: !119, line: 64, baseType: !4205, size: 64, offset: 64)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "get_temp", scope: !4202, file: !119, line: 66, baseType: !4335, size: 64, offset: 128)
!4335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4336, size: 64)
!4336 = !DISubroutineType(types: !4337)
!4337 = !{!163, !4208, !700}
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "set_trips", scope: !4202, file: !119, line: 67, baseType: !4339, size: 64, offset: 192)
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = !DISubroutineType(types: !4341)
!4341 = !{!163, !4208, !163, !163}
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "change_mode", scope: !4202, file: !119, line: 68, baseType: !4343, size: 64, offset: 256)
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4344, size: 64)
!4344 = !DISubroutineType(types: !4345)
!4345 = !{!163, !4208, !107}
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "get_trip_type", scope: !4202, file: !119, line: 70, baseType: !4347, size: 64, offset: 320)
!4347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4348, size: 64)
!4348 = !DISubroutineType(types: !4349)
!4349 = !{!163, !4208, !163, !4350}
!4350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "get_trip_temp", scope: !4202, file: !119, line: 72, baseType: !4352, size: 64, offset: 384)
!4352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4353, size: 64)
!4353 = !DISubroutineType(types: !4354)
!4354 = !{!163, !4208, !163, !700}
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "set_trip_temp", scope: !4202, file: !119, line: 73, baseType: !4339, size: 64, offset: 448)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "get_trip_hyst", scope: !4202, file: !119, line: 74, baseType: !4352, size: 64, offset: 512)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "set_trip_hyst", scope: !4202, file: !119, line: 75, baseType: !4339, size: 64, offset: 576)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "get_crit_temp", scope: !4202, file: !119, line: 76, baseType: !4335, size: 64, offset: 640)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "set_emul_temp", scope: !4202, file: !119, line: 77, baseType: !4313, size: 64, offset: 704)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "get_trend", scope: !4202, file: !119, line: 78, baseType: !4361, size: 64, offset: 768)
!4361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4362, size: 64)
!4362 = !DISubroutineType(types: !4363)
!4363 = !{!163, !4208, !163, !4364}
!4364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !4202, file: !119, line: 80, baseType: !4366, size: 64, offset: 832)
!4366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4367, size: 64)
!4367 = !DISubroutineType(types: !4368)
!4368 = !{!163, !4208, !163, !112}
!4369 = !DIGlobalVariableExpression(var: !4370, expr: !DIExpression())
!4370 = distinct !DIGlobalVariable(name: "dev_attr_tcc_offset_degree_celsius", scope: !2, file: !3, line: 213, type: !4371, isLocal: true, isDefinition: true)
!4371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !73, line: 99, size: 256, elements: !4372)
!4372 = !{!4373, !4374, !4379}
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4371, file: !73, line: 100, baseType: !305, size: 128)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4371, file: !73, line: 101, baseType: !4375, size: 64, offset: 128)
!4375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4376, size: 64)
!4376 = !DISubroutineType(types: !4377)
!4377 = !{!299, !3369, !4378, !268}
!4378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4371, size: 64)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4371, file: !73, line: 103, baseType: !4380, size: 64, offset: 192)
!4380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4381, size: 64)
!4381 = !DISubroutineType(types: !4382)
!4382 = !{!299, !3369, !4378, !210, !315}
!4383 = !DIGlobalVariableExpression(var: !4384, expr: !DIExpression())
!4384 = distinct !DIGlobalVariable(name: "tcc_offset_save", scope: !2, file: !3, line: 185, type: !163, isLocal: true, isDefinition: true)
!4385 = !DIGlobalVariableExpression(var: !4386, expr: !DIExpression())
!4386 = distinct !DIGlobalVariable(name: "power_limit_attribute_group", scope: !2, file: !3, line: 144, type: !324, isLocal: true, isDefinition: true)
!4387 = !DIGlobalVariableExpression(var: !4388, expr: !DIExpression())
!4388 = distinct !DIGlobalVariable(name: "power_limit_attrs", scope: !2, file: !3, line: 130, type: !4389, isLocal: true, isDefinition: true)
!4389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 704, elements: !4390)
!4390 = !{!4391}
!4391 = !DISubrange(count: 11)
!4392 = !DIGlobalVariableExpression(var: !4393, expr: !DIExpression())
!4393 = distinct !DIGlobalVariable(name: "dev_attr_power_limit_0_min_uw", scope: !2, file: !3, line: 118, type: !4371, isLocal: true, isDefinition: true)
!4394 = !DIGlobalVariableExpression(var: !4395, expr: !DIExpression())
!4395 = distinct !DIGlobalVariable(name: "dev_attr_power_limit_1_min_uw", scope: !2, file: !3, line: 124, type: !4371, isLocal: true, isDefinition: true)
!4396 = !DIGlobalVariableExpression(var: !4397, expr: !DIExpression())
!4397 = distinct !DIGlobalVariable(name: "dev_attr_power_limit_0_max_uw", scope: !2, file: !3, line: 119, type: !4371, isLocal: true, isDefinition: true)
!4398 = !DIGlobalVariableExpression(var: !4399, expr: !DIExpression())
!4399 = distinct !DIGlobalVariable(name: "dev_attr_power_limit_1_max_uw", scope: !2, file: !3, line: 125, type: !4371, isLocal: true, isDefinition: true)
!4400 = !DIGlobalVariableExpression(var: !4401, expr: !DIExpression())
!4401 = distinct !DIGlobalVariable(name: "dev_attr_power_limit_0_step_uw", scope: !2, file: !3, line: 120, type: !4371, isLocal: true, isDefinition: true)
!4402 = !DIGlobalVariableExpression(var: !4403, expr: !DIExpression())
!4403 = distinct !DIGlobalVariable(name: "dev_attr_power_limit_1_step_uw", scope: !2, file: !3, line: 126, type: !4371, isLocal: true, isDefinition: true)
!4404 = !DIGlobalVariableExpression(var: !4405, expr: !DIExpression())
!4405 = distinct !DIGlobalVariable(name: "dev_attr_power_limit_0_tmin_us", scope: !2, file: !3, line: 121, type: !4371, isLocal: true, isDefinition: true)
!4406 = !DIGlobalVariableExpression(var: !4407, expr: !DIExpression())
!4407 = distinct !DIGlobalVariable(name: "dev_attr_power_limit_1_tmin_us", scope: !2, file: !3, line: 127, type: !4371, isLocal: true, isDefinition: true)
!4408 = !DIGlobalVariableExpression(var: !4409, expr: !DIExpression())
!4409 = distinct !DIGlobalVariable(name: "dev_attr_power_limit_0_tmax_us", scope: !2, file: !3, line: 122, type: !4371, isLocal: true, isDefinition: true)
!4410 = !DIGlobalVariableExpression(var: !4411, expr: !DIExpression())
!4411 = distinct !DIGlobalVariable(name: "dev_attr_power_limit_1_tmax_us", scope: !2, file: !3, line: 128, type: !4371, isLocal: true, isDefinition: true)
!4412 = !DIGlobalVariableExpression(var: !4413, expr: !DIExpression())
!4413 = distinct !DIGlobalVariable(name: "int3401_device_ids", scope: !2, file: !3, line: 749, type: !4414, isLocal: true, isDefinition: true)
!4414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3464, size: 512, elements: !1565)
!4415 = !DIGlobalVariableExpression(var: !4416, expr: !DIExpression())
!4416 = distinct !DIGlobalVariable(name: "proc_thermal_pm", scope: !2, file: !3, line: 716, type: !3396, isLocal: true, isDefinition: true)
!4417 = !DIGlobalVariableExpression(var: !4418, expr: !DIExpression())
!4418 = distinct !DIGlobalVariable(name: "proc_thermal_pci_driver", scope: !2, file: !3, line: 741, type: !4419, isLocal: true, isDefinition: true)
!4419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !4420, line: 858, size: 2048, elements: !4421)
!4420 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!4421 = !{!4422, !4423, !4424, !4436, !4651, !4655, !4659, !4663, !4664, !4668, !4686, !4687, !4688}
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4419, file: !4420, line: 859, baseType: !214, size: 128)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4419, file: !4420, line: 860, baseType: !210, size: 64, offset: 128)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4419, file: !4420, line: 861, baseType: !4425, size: 64, offset: 192)
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4427)
!4427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3453, line: 38, size: 256, elements: !4428)
!4428 = !{!4429, !4430, !4431, !4432, !4433, !4434, !4435}
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4427, file: !3453, line: 39, baseType: !411, size: 32)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4427, file: !3453, line: 39, baseType: !411, size: 32, offset: 32)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4427, file: !3453, line: 40, baseType: !411, size: 32, offset: 64)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4427, file: !3453, line: 40, baseType: !411, size: 32, offset: 96)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4427, file: !3453, line: 41, baseType: !411, size: 32, offset: 128)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4427, file: !3453, line: 41, baseType: !411, size: 32, offset: 160)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4427, file: !3453, line: 42, baseType: !3472, size: 64, offset: 192)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4419, file: !4420, line: 862, baseType: !4437, size: 64, offset: 256)
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4438, size: 64)
!4438 = !DISubroutineType(types: !4439)
!4439 = !{!163, !4440, !4425}
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !4420, line: 309, size: 19264, elements: !4442)
!4442 = !{!4443, !4444, !4516, !4517, !4518, !4519, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545, !4546, !4548, !4549, !4550, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4574, !4575, !4576, !4577, !4579, !4580, !4581, !4582, !4586, !4587, !4588, !4589, !4590, !4591, !4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4623, !4625, !4626, !4627, !4628, !4629, !4630, !4632, !4633, !4634, !4637, !4644, !4645, !4646, !4647, !4648, !4649, !4650}
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !4441, file: !4420, line: 310, baseType: !214, size: 128)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4441, file: !4420, line: 311, baseType: !4445, size: 64, offset: 128)
!4445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4446, size: 64)
!4446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !4420, line: 605, size: 8064, elements: !4447)
!4447 = !{!4448, !4449, !4450, !4451, !4452, !4453, !4454, !4469, !4470, !4471, !4495, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4508, !4509, !4511, !4512, !4513, !4514, !4515}
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4446, file: !4420, line: 606, baseType: !214, size: 128)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4446, file: !4420, line: 607, baseType: !4445, size: 64, offset: 128)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4446, file: !4420, line: 608, baseType: !214, size: 128, offset: 192)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4446, file: !4420, line: 609, baseType: !214, size: 128, offset: 320)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4446, file: !4420, line: 610, baseType: !4440, size: 64, offset: 448)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !4446, file: !4420, line: 611, baseType: !214, size: 128, offset: 512)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4446, file: !4420, line: 613, baseType: !4455, size: 256, offset: 640)
!4455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4456, size: 256, elements: !1151)
!4456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4457, size: 64)
!4457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4458, line: 20, size: 512, elements: !4459)
!4458 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!4459 = !{!4460, !4462, !4463, !4464, !4465, !4466, !4467, !4468}
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4457, file: !4458, line: 21, baseType: !4461, size: 64)
!4461 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !191, line: 158, baseType: !2123)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4457, file: !4458, line: 22, baseType: !4461, size: 64, offset: 64)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4457, file: !4458, line: 23, baseType: !210, size: 64, offset: 128)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4457, file: !4458, line: 24, baseType: !318, size: 64, offset: 192)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4457, file: !4458, line: 25, baseType: !318, size: 64, offset: 256)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4457, file: !4458, line: 26, baseType: !4456, size: 64, offset: 320)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4457, file: !4458, line: 26, baseType: !4456, size: 64, offset: 384)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4457, file: !4458, line: 26, baseType: !4456, size: 64, offset: 448)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4446, file: !4420, line: 614, baseType: !214, size: 128, offset: 896)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !4446, file: !4420, line: 615, baseType: !4457, size: 512, offset: 1024)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4446, file: !4420, line: 617, baseType: !4472, size: 64, offset: 1536)
!4472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4473, size: 64)
!4473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !4420, line: 731, size: 320, elements: !4474)
!4474 = !{!4475, !4479, !4483, !4487, !4491}
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !4473, file: !4420, line: 732, baseType: !4476, size: 64)
!4476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4477, size: 64)
!4477 = !DISubroutineType(types: !4478)
!4478 = !{!163, !4445}
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !4473, file: !4420, line: 733, baseType: !4480, size: 64, offset: 64)
!4480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4481, size: 64)
!4481 = !DISubroutineType(types: !4482)
!4482 = !{null, !4445}
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !4473, file: !4420, line: 734, baseType: !4484, size: 64, offset: 128)
!4484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4485, size: 64)
!4485 = !DISubroutineType(types: !4486)
!4486 = !{!157, !4445, !7, !163}
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4473, file: !4420, line: 735, baseType: !4488, size: 64, offset: 192)
!4488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4489, size: 64)
!4489 = !DISubroutineType(types: !4490)
!4490 = !{!163, !4445, !7, !163, !163, !1411}
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4473, file: !4420, line: 736, baseType: !4492, size: 64, offset: 256)
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4493, size: 64)
!4493 = !DISubroutineType(types: !4494)
!4494 = !{!163, !4445, !7, !163, !163, !409}
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4446, file: !4420, line: 618, baseType: !4496, size: 64, offset: 1600)
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4497 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !4420, line: 537, flags: DIFlagFwdDecl)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4446, file: !4420, line: 619, baseType: !157, size: 64, offset: 1664)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !4446, file: !4420, line: 620, baseType: !4068, size: 64, offset: 1728)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4446, file: !4420, line: 622, baseType: !421, size: 8, offset: 1792)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4446, file: !4420, line: 623, baseType: !421, size: 8, offset: 1800)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !4446, file: !4420, line: 624, baseType: !421, size: 8, offset: 1808)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !4446, file: !4420, line: 625, baseType: !421, size: 8, offset: 1816)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4446, file: !4420, line: 630, baseType: !4505, size: 384, offset: 1824)
!4505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 384, elements: !4506)
!4506 = !{!4507}
!4507 = !DISubrange(count: 48)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !4446, file: !4420, line: 632, baseType: !310, size: 16, offset: 2208)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !4446, file: !4420, line: 633, baseType: !4510, size: 16, offset: 2224)
!4510 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !4420, line: 237, baseType: !310)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !4446, file: !4420, line: 634, baseType: !3369, size: 64, offset: 2240)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4446, file: !4420, line: 635, baseType: !203, size: 5568, offset: 2304)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !4446, file: !4420, line: 636, baseType: !336, size: 64, offset: 7872)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !4446, file: !4420, line: 637, baseType: !336, size: 64, offset: 7936)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !4446, file: !4420, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !4441, file: !4420, line: 312, baseType: !4445, size: 64, offset: 192)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4441, file: !4420, line: 314, baseType: !157, size: 64, offset: 256)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !4441, file: !4420, line: 315, baseType: !4068, size: 64, offset: 320)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4441, file: !4420, line: 316, baseType: !4520, size: 64, offset: 384)
!4520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4521, size: 64)
!4521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !4420, line: 69, size: 832, elements: !4522)
!4522 = !{!4523, !4524, !4525, !4528, !4529}
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4521, file: !4420, line: 70, baseType: !4445, size: 64)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4521, file: !4420, line: 71, baseType: !214, size: 128, offset: 64)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4521, file: !4420, line: 72, baseType: !4526, size: 64, offset: 192)
!4526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4527, size: 64)
!4527 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !4420, line: 72, flags: DIFlagFwdDecl)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4521, file: !4420, line: 73, baseType: !421, size: 8, offset: 256)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4521, file: !4420, line: 74, baseType: !206, size: 512, offset: 320)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !4441, file: !4420, line: 318, baseType: !7, size: 32, offset: 448)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4441, file: !4420, line: 319, baseType: !310, size: 16, offset: 480)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4441, file: !4420, line: 320, baseType: !310, size: 16, offset: 496)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4441, file: !4420, line: 321, baseType: !310, size: 16, offset: 512)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4441, file: !4420, line: 322, baseType: !310, size: 16, offset: 528)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4441, file: !4420, line: 323, baseType: !7, size: 32, offset: 544)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4441, file: !4420, line: 324, baseType: !1348, size: 8, offset: 576)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4441, file: !4420, line: 325, baseType: !1348, size: 8, offset: 584)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !4441, file: !4420, line: 330, baseType: !1348, size: 8, offset: 592)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !4441, file: !4420, line: 331, baseType: !1348, size: 8, offset: 600)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !4441, file: !4420, line: 332, baseType: !1348, size: 8, offset: 608)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !4441, file: !4420, line: 333, baseType: !1348, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !4441, file: !4420, line: 334, baseType: !1348, size: 8, offset: 624)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4441, file: !4420, line: 335, baseType: !1348, size: 8, offset: 632)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !4441, file: !4420, line: 336, baseType: !855, size: 16, offset: 640)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !4441, file: !4420, line: 337, baseType: !3713, size: 64, offset: 704)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4441, file: !4420, line: 339, baseType: !4547, size: 64, offset: 768)
!4547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4419, size: 64)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4441, file: !4420, line: 340, baseType: !415, size: 64, offset: 832)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4441, file: !4420, line: 346, baseType: !3768, size: 128, offset: 896)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !4441, file: !4420, line: 348, baseType: !4551, size: 32, offset: 1024)
!4551 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !4420, line: 155, baseType: !163)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !4441, file: !4420, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !4441, file: !4420, line: 352, baseType: !1348, size: 8, offset: 1064)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !4441, file: !4420, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !4441, file: !4420, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !4441, file: !4420, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !4441, file: !4420, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !4441, file: !4420, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !4441, file: !4420, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !4441, file: !4420, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !4441, file: !4420, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !4441, file: !4420, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !4441, file: !4420, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !4441, file: !4420, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !4441, file: !4420, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !4441, file: !4420, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !4441, file: !4420, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !4441, file: !4420, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !4441, file: !4420, line: 376, baseType: !7, size: 32, offset: 1120)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !4441, file: !4420, line: 377, baseType: !7, size: 32, offset: 1152)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !4441, file: !4420, line: 380, baseType: !4572, size: 64, offset: 1216)
!4572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4573, size: 64)
!4573 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !4420, line: 303, flags: DIFlagFwdDecl)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !4441, file: !4420, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !4441, file: !4420, line: 383, baseType: !163, size: 32, offset: 1312)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !4441, file: !4420, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !4441, file: !4420, line: 387, baseType: !4578, size: 32, offset: 1376)
!4578 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !4420, line: 180, baseType: !7)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4441, file: !4420, line: 388, baseType: !203, size: 5568, offset: 1408)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !4441, file: !4420, line: 390, baseType: !163, size: 32, offset: 6976)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4441, file: !4420, line: 396, baseType: !7, size: 32, offset: 7008)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4441, file: !4420, line: 397, baseType: !4583, size: 8704, offset: 7040)
!4583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4457, size: 8704, elements: !4584)
!4584 = !{!4585}
!4585 = !DISubrange(count: 17)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4441, file: !4420, line: 399, baseType: !190, size: 8, offset: 15744)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !4441, file: !4420, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !4441, file: !4420, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !4441, file: !4420, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !4441, file: !4420, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !4441, file: !4420, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !4441, file: !4420, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !4441, file: !4420, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !4441, file: !4420, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !4441, file: !4420, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !4441, file: !4420, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !4441, file: !4420, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !4441, file: !4420, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !4441, file: !4420, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !4441, file: !4420, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !4441, file: !4420, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !4441, file: !4420, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !4441, file: !4420, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !4441, file: !4420, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !4441, file: !4420, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !4441, file: !4420, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !4441, file: !4420, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !4441, file: !4420, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !4441, file: !4420, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !4441, file: !4420, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !4441, file: !4420, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !4441, file: !4420, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !4441, file: !4420, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !4441, file: !4420, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !4441, file: !4420, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !4441, file: !4420, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !4441, file: !4420, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !4441, file: !4420, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !4441, file: !4420, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !4441, file: !4420, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !4441, file: !4420, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !4441, file: !4420, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !4441, file: !4420, line: 450, baseType: !4624, size: 16, offset: 15792)
!4624 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !4420, line: 206, baseType: !310)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !4441, file: !4420, line: 451, baseType: !743, size: 32, offset: 15808)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !4441, file: !4420, line: 453, baseType: !3697, size: 512, offset: 15840)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !4441, file: !4420, line: 454, baseType: !630, size: 64, offset: 16384)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !4441, file: !4420, line: 455, baseType: !336, size: 64, offset: 16448)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !4441, file: !4420, line: 456, baseType: !163, size: 32, offset: 16512)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !4441, file: !4420, line: 457, baseType: !4631, size: 1088, offset: 16576)
!4631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, size: 1088, elements: !4584)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !4441, file: !4420, line: 458, baseType: !4631, size: 1088, offset: 17664)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !4441, file: !4420, line: 469, baseType: !322, size: 64, offset: 18752)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !4441, file: !4420, line: 471, baseType: !4635, size: 64, offset: 18816)
!4635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4636, size: 64)
!4636 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !4420, line: 304, flags: DIFlagFwdDecl)
!4637 = !DIDerivedType(tag: DW_TAG_member, scope: !4441, file: !4420, line: 478, baseType: !4638, size: 64, offset: 18880)
!4638 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4441, file: !4420, line: 478, size: 64, elements: !4639)
!4639 = !{!4640, !4643}
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4638, file: !4420, line: 479, baseType: !4641, size: 64)
!4641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4642, size: 64)
!4642 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !4420, line: 305, flags: DIFlagFwdDecl)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4638, file: !4420, line: 480, baseType: !4440, size: 64)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !4441, file: !4420, line: 482, baseType: !855, size: 16, offset: 18944)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !4441, file: !4420, line: 483, baseType: !1348, size: 8, offset: 18960)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !4441, file: !4420, line: 497, baseType: !855, size: 16, offset: 18976)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !4441, file: !4420, line: 498, baseType: !2123, size: 64, offset: 19008)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !4441, file: !4420, line: 499, baseType: !315, size: 64, offset: 19072)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !4441, file: !4420, line: 500, baseType: !268, size: 64, offset: 19136)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !4441, file: !4420, line: 502, baseType: !318, size: 64, offset: 19200)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4419, file: !4420, line: 863, baseType: !4652, size: 64, offset: 320)
!4652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4653, size: 64)
!4653 = !DISubroutineType(types: !4654)
!4654 = !{null, !4440}
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4419, file: !4420, line: 864, baseType: !4656, size: 64, offset: 384)
!4656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4657, size: 64)
!4657 = !DISubroutineType(types: !4658)
!4658 = !{!163, !4440, !3483}
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4419, file: !4420, line: 865, baseType: !4660, size: 64, offset: 448)
!4660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4661, size: 64)
!4661 = !DISubroutineType(types: !4662)
!4662 = !{!163, !4440}
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4419, file: !4420, line: 866, baseType: !4652, size: 64, offset: 512)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4419, file: !4420, line: 867, baseType: !4665, size: 64, offset: 576)
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4666, size: 64)
!4666 = !DISubroutineType(types: !4667)
!4667 = !{!163, !4440, !163}
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4419, file: !4420, line: 868, baseType: !4669, size: 64, offset: 640)
!4669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4670, size: 64)
!4670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4671)
!4671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !4420, line: 795, size: 384, elements: !4672)
!4672 = !{!4673, !4678, !4682, !4683, !4684, !4685}
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4671, file: !4420, line: 797, baseType: !4674, size: 64)
!4674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4675, size: 64)
!4675 = !DISubroutineType(types: !4676)
!4676 = !{!4677, !4440, !4578}
!4677 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !4420, line: 772, baseType: !7)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4671, file: !4420, line: 801, baseType: !4679, size: 64, offset: 64)
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = !DISubroutineType(types: !4681)
!4681 = !{!4677, !4440}
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4671, file: !4420, line: 804, baseType: !4679, size: 64, offset: 128)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4671, file: !4420, line: 807, baseType: !4652, size: 64, offset: 192)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4671, file: !4420, line: 808, baseType: !4652, size: 64, offset: 256)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4671, file: !4420, line: 811, baseType: !4652, size: 64, offset: 320)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4419, file: !4420, line: 869, baseType: !322, size: 64, offset: 704)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4419, file: !4420, line: 870, baseType: !3441, size: 1152, offset: 768)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4419, file: !4420, line: 871, baseType: !4689, size: 128, offset: 1920)
!4689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !4420, line: 759, size: 128, elements: !4690)
!4690 = !{!4691, !4692}
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4689, file: !4420, line: 760, baseType: !227)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4689, file: !4420, line: 761, baseType: !214, size: 128)
!4693 = !DIGlobalVariableExpression(var: !4694, expr: !DIExpression())
!4694 = distinct !DIGlobalVariable(name: "proc_thermal_pci_ids", scope: !2, file: !3, line: 718, type: !4695, isLocal: true, isDefinition: true)
!4695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4426, size: 3840, elements: !4696)
!4696 = !{!4697}
!4697 = !DISubrange(count: 15)
!4698 = !DIGlobalVariableExpression(var: !4699, expr: !DIExpression())
!4699 = distinct !DIGlobalVariable(name: "rapl_mmio_hsw", scope: !2, file: !3, line: 607, type: !4700, isLocal: true, isDefinition: true)
!4700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4162)
!4701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_driver", file: !4702, line: 200, size: 1600, elements: !4703)
!4702 = !DIFile(filename: "./include/linux/platform_device.h", directory: "/home/lizy2001/genbc/linux")
!4703 = !{!4704, !4732, !4733, !4737, !4741, !4742, !4743, !4744}
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4701, file: !4702, line: 201, baseType: !4705, size: 64)
!4705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4706, size: 64)
!4706 = !DISubroutineType(types: !4707)
!4707 = !{!163, !4708}
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4709, size: 64)
!4709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device", file: !4702, line: 22, size: 6208, elements: !4710)
!4710 = !{!4711, !4712, !4713, !4714, !4715, !4716, !4717, !4718, !4719, !4726, !4727, !4730}
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4709, file: !4702, line: 23, baseType: !210, size: 64)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4709, file: !4702, line: 24, baseType: !163, size: 32, offset: 64)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "id_auto", scope: !4709, file: !4702, line: 25, baseType: !190, size: 8, offset: 96)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4709, file: !4702, line: 26, baseType: !203, size: 5568, offset: 128)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "platform_dma_mask", scope: !4709, file: !4702, line: 27, baseType: !415, size: 64, offset: 5696)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4709, file: !4702, line: 28, baseType: !3768, size: 128, offset: 5760)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !4709, file: !4702, line: 29, baseType: !409, size: 32, offset: 5888)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4709, file: !4702, line: 30, baseType: !4456, size: 64, offset: 5952)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "id_entry", scope: !4709, file: !4702, line: 32, baseType: !4720, size: 64, offset: 6016)
!4720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4721, size: 64)
!4721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4722)
!4722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device_id", file: !3453, line: 586, size: 256, elements: !4723)
!4723 = !{!4724, !4725}
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4722, file: !3453, line: 587, baseType: !3939, size: 160)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4722, file: !3453, line: 588, baseType: !3472, size: 64, offset: 192)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !4709, file: !4702, line: 33, baseType: !268, size: 64, offset: 6080)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "mfd_cell", scope: !4709, file: !4702, line: 36, baseType: !4728, size: 64, offset: 6144)
!4728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4729, size: 64)
!4729 = !DICompositeType(tag: DW_TAG_structure_type, name: "mfd_cell", file: !4702, line: 18, flags: DIFlagFwdDecl)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4709, file: !4702, line: 39, baseType: !4731, offset: 6208)
!4731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdev_archdata", file: !3775, line: 8, elements: !241)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4701, file: !4702, line: 202, baseType: !4705, size: 64, offset: 64)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4701, file: !4702, line: 203, baseType: !4734, size: 64, offset: 128)
!4734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4735, size: 64)
!4735 = !DISubroutineType(types: !4736)
!4736 = !{null, !4708}
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4701, file: !4702, line: 204, baseType: !4738, size: 64, offset: 192)
!4738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4739, size: 64)
!4739 = !DISubroutineType(types: !4740)
!4740 = !{!163, !4708, !3483}
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4701, file: !4702, line: 205, baseType: !4705, size: 64, offset: 256)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4701, file: !4702, line: 206, baseType: !3441, size: 1152, offset: 320)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4701, file: !4702, line: 207, baseType: !4720, size: 64, offset: 1472)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_deferred_probe", scope: !4701, file: !4702, line: 208, baseType: !190, size: 8, offset: 1536)
!4745 = !{!"rsp"}
!4746 = !{i32 7, !"Dwarf Version", i32 4}
!4747 = !{i32 2, !"Debug Info Version", i32 3}
!4748 = !{i32 1, !"wchar_size", i32 2}
!4749 = !{i32 1, !"Code Model", i32 2}
!4750 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4751 = distinct !DISubprogram(name: "proc_thermal_exit", scope: !3, file: !3, line: 778, type: !1876, scopeLine: 779, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!4752 = !DILocation(line: 780, column: 2, scope: !4751)
!4753 = !DILocation(line: 781, column: 2, scope: !4751)
!4754 = !DILocation(line: 782, column: 1, scope: !4751)
!4755 = distinct !DISubprogram(name: "proc_thermal_init", scope: !3, file: !3, line: 765, type: !4756, scopeLine: 766, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!4756 = !DISubroutineType(types: !4757)
!4757 = !{!163}
!4758 = !DILocalVariable(name: "ret", scope: !4755, file: !3, line: 767, type: !163)
!4759 = !DILocation(line: 767, column: 6, scope: !4755)
!4760 = !DILocation(line: 769, column: 8, scope: !4755)
!4761 = !DILocation(line: 769, column: 6, scope: !4755)
!4762 = !DILocation(line: 770, column: 6, scope: !4763)
!4763 = distinct !DILexicalBlock(scope: !4755, file: !3, line: 770, column: 6)
!4764 = !DILocation(line: 770, column: 6, scope: !4755)
!4765 = !DILocation(line: 771, column: 10, scope: !4763)
!4766 = !DILocation(line: 771, column: 3, scope: !4763)
!4767 = !DILocation(line: 773, column: 8, scope: !4755)
!4768 = !DILocation(line: 773, column: 6, scope: !4755)
!4769 = !DILocation(line: 775, column: 9, scope: !4755)
!4770 = !DILocation(line: 775, column: 2, scope: !4755)
!4771 = !DILocation(line: 776, column: 1, scope: !4755)
!4772 = distinct !DISubprogram(name: "int3401_add", scope: !3, file: !3, line: 415, type: !4706, scopeLine: 416, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!4773 = !DILocalVariable(name: "pdev", arg: 1, scope: !4772, file: !3, line: 415, type: !4708)
!4774 = !DILocation(line: 415, column: 48, scope: !4772)
!4775 = !DILocalVariable(name: "proc_priv", scope: !4772, file: !3, line: 417, type: !4776)
!4776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4777, size: 64)
!4777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proc_thermal_device", file: !3, line: 62, size: 704, elements: !4778)
!4778 = !{!4779, !4780, !4781, !4791, !4829, !4849}
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4777, file: !3, line: 63, baseType: !3369, size: 64)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "adev", scope: !4777, file: !3, line: 64, baseType: !158, size: 64, offset: 64)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "power_limits", scope: !4777, file: !3, line: 65, baseType: !4782, size: 384, offset: 128)
!4782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4783, size: 384, elements: !1565)
!4783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "power_config", file: !3, line: 53, size: 192, elements: !4784)
!4784 = !{!4785, !4786, !4787, !4788, !4789, !4790}
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4783, file: !3, line: 54, baseType: !409, size: 32)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "min_uw", scope: !4783, file: !3, line: 55, baseType: !409, size: 32, offset: 32)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "max_uw", scope: !4783, file: !3, line: 56, baseType: !409, size: 32, offset: 64)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "tmin_us", scope: !4783, file: !3, line: 57, baseType: !409, size: 32, offset: 96)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "tmax_us", scope: !4783, file: !3, line: 58, baseType: !409, size: 32, offset: 128)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "step_uw", scope: !4783, file: !3, line: 59, baseType: !409, size: 32, offset: 160)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "int340x_zone", scope: !4777, file: !3, line: 66, baseType: !4792, size: 64, offset: 512)
!4792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4793, size: 64)
!4793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int34x_thermal_zone", file: !4794, line: 20, size: 1600, elements: !4795)
!4794 = !DIFile(filename: "drivers/thermal/intel/int340x_thermal/int340x_thermal_zone.h", directory: "/home/lizy2001/genbc/linux")
!4795 = !{!4796, !4797, !4806, !4807, !4808, !4809, !4810, !4811, !4812, !4813, !4814, !4815, !4816, !4817}
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "adev", scope: !4793, file: !4794, line: 21, baseType: !158, size: 64)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "act_trips", scope: !4793, file: !4794, line: 22, baseType: !4798, size: 960, offset: 64)
!4798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4799, size: 960, elements: !4804)
!4799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "active_trip", file: !4794, line: 14, size: 96, elements: !4800)
!4800 = !{!4801, !4802, !4803}
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !4799, file: !4794, line: 15, baseType: !163, size: 32)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4799, file: !4794, line: 16, baseType: !163, size: 32, offset: 32)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !4799, file: !4794, line: 17, baseType: !190, size: 8, offset: 64)
!4804 = !{!4805}
!4805 = !DISubrange(count: 10)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "aux_trips", scope: !4793, file: !4794, line: 23, baseType: !3713, size: 64, offset: 1024)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "aux_trip_nr", scope: !4793, file: !4794, line: 24, baseType: !163, size: 32, offset: 1088)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "psv_temp", scope: !4793, file: !4794, line: 25, baseType: !163, size: 32, offset: 1120)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "psv_trip_id", scope: !4793, file: !4794, line: 26, baseType: !163, size: 32, offset: 1152)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "crt_temp", scope: !4793, file: !4794, line: 27, baseType: !163, size: 32, offset: 1184)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "crt_trip_id", scope: !4793, file: !4794, line: 28, baseType: !163, size: 32, offset: 1216)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "hot_temp", scope: !4793, file: !4794, line: 29, baseType: !163, size: 32, offset: 1248)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "hot_trip_id", scope: !4793, file: !4794, line: 30, baseType: !163, size: 32, offset: 1280)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "zone", scope: !4793, file: !4794, line: 31, baseType: !4208, size: 64, offset: 1344)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "override_ops", scope: !4793, file: !4794, line: 32, baseType: !4235, size: 64, offset: 1408)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "priv_data", scope: !4793, file: !4794, line: 33, baseType: !157, size: 64, offset: 1472)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "lpat_table", scope: !4793, file: !4794, line: 34, baseType: !4818, size: 64, offset: 1536)
!4818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4819, size: 64)
!4819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_lpat_conversion_table", file: !4820, line: 16, size: 128, elements: !4821)
!4820 = !DIFile(filename: "./include/acpi/acpi_lpat.h", directory: "/home/lizy2001/genbc/linux")
!4821 = !{!4822, !4828}
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "lpat", scope: !4819, file: !4820, line: 17, baseType: !4823, size: 64)
!4823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4824, size: 64)
!4824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_lpat", file: !4820, line: 11, size: 64, elements: !4825)
!4825 = !{!4826, !4827}
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !4824, file: !4820, line: 12, baseType: !163, size: 32)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !4824, file: !4820, line: 13, baseType: !163, size: 32, offset: 32)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "lpat_count", scope: !4819, file: !4820, line: 18, baseType: !163, size: 32, offset: 64)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "soc_dts", scope: !4777, file: !3, line: 67, baseType: !4830, size: 64, offset: 576)
!4830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4831, size: 64)
!4831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "intel_soc_dts_sensors", file: !138, line: 35, size: 960, elements: !4832)
!4832 = !{!4833, !4834, !4835, !4836, !4837}
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "tj_max", scope: !4831, file: !138, line: 36, baseType: !409, size: 32)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "intr_notify_lock", scope: !4831, file: !138, line: 37, baseType: !227, offset: 32)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "dts_update_lock", scope: !4831, file: !138, line: 38, baseType: !1169, size: 192, offset: 64)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "intr_type", scope: !4831, file: !138, line: 39, baseType: !137, size: 32, offset: 256)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "soc_dts", scope: !4831, file: !138, line: 40, baseType: !4838, size: 640, offset: 320)
!4838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4839, size: 640, elements: !1565)
!4839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "intel_soc_dts_sensor_entry", file: !138, line: 25, size: 320, elements: !4840)
!4840 = !{!4841, !4842, !4843, !4844, !4845, !4847, !4848}
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4839, file: !138, line: 26, baseType: !163, size: 32)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "store_status", scope: !4839, file: !138, line: 27, baseType: !409, size: 32, offset: 32)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "trip_mask", scope: !4839, file: !138, line: 28, baseType: !409, size: 32, offset: 64)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "trip_count", scope: !4839, file: !138, line: 29, baseType: !409, size: 32, offset: 96)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "trip_types", scope: !4839, file: !138, line: 30, baseType: !4846, size: 64, offset: 128)
!4846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 64, elements: !1565)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "tzone", scope: !4839, file: !138, line: 31, baseType: !4208, size: 64, offset: 192)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "sensors", scope: !4839, file: !138, line: 32, baseType: !4830, size: 64, offset: 256)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_base", scope: !4777, file: !3, line: 68, baseType: !157, size: 64, offset: 640)
!4850 = !DILocation(line: 417, column: 30, scope: !4772)
!4851 = !DILocalVariable(name: "ret", scope: !4772, file: !3, line: 418, type: !163)
!4852 = !DILocation(line: 418, column: 6, scope: !4772)
!4853 = !DILocation(line: 420, column: 6, scope: !4854)
!4854 = distinct !DILexicalBlock(scope: !4772, file: !3, line: 420, column: 6)
!4855 = !DILocation(line: 420, column: 29, scope: !4854)
!4856 = !DILocation(line: 420, column: 6, scope: !4772)
!4857 = !DILocation(line: 421, column: 3, scope: !4858)
!4858 = distinct !DILexicalBlock(scope: !4854, file: !3, line: 420, column: 50)
!4859 = !DILocation(line: 422, column: 3, scope: !4858)
!4860 = !DILocation(line: 425, column: 26, scope: !4772)
!4861 = !DILocation(line: 425, column: 32, scope: !4772)
!4862 = !DILocation(line: 425, column: 8, scope: !4772)
!4863 = !DILocation(line: 425, column: 6, scope: !4772)
!4864 = !DILocation(line: 426, column: 6, scope: !4865)
!4865 = distinct !DILexicalBlock(scope: !4772, file: !3, line: 426, column: 6)
!4866 = !DILocation(line: 426, column: 6, scope: !4772)
!4867 = !DILocation(line: 427, column: 10, scope: !4865)
!4868 = !DILocation(line: 427, column: 3, scope: !4865)
!4869 = !DILocation(line: 429, column: 23, scope: !4772)
!4870 = !DILocation(line: 429, column: 29, scope: !4772)
!4871 = !DILocation(line: 429, column: 2, scope: !4772)
!4872 = !DILocation(line: 430, column: 25, scope: !4772)
!4873 = !DILocation(line: 432, column: 2, scope: !4772)
!4874 = !DILocation(line: 434, column: 27, scope: !4772)
!4875 = !DILocation(line: 434, column: 33, scope: !4772)
!4876 = !DILocation(line: 434, column: 37, scope: !4772)
!4877 = !DILocation(line: 434, column: 8, scope: !4772)
!4878 = !DILocation(line: 434, column: 6, scope: !4772)
!4879 = !DILocation(line: 435, column: 6, scope: !4880)
!4880 = distinct !DILexicalBlock(scope: !4772, file: !3, line: 435, column: 6)
!4881 = !DILocation(line: 435, column: 6, scope: !4772)
!4882 = !DILocation(line: 436, column: 10, scope: !4880)
!4883 = !DILocation(line: 436, column: 3, scope: !4880)
!4884 = !DILocation(line: 438, column: 28, scope: !4772)
!4885 = !DILocation(line: 438, column: 34, scope: !4772)
!4886 = !DILocation(line: 438, column: 38, scope: !4772)
!4887 = !DILocation(line: 438, column: 8, scope: !4772)
!4888 = !DILocation(line: 438, column: 6, scope: !4772)
!4889 = !DILocation(line: 439, column: 6, scope: !4890)
!4890 = distinct !DILexicalBlock(scope: !4772, file: !3, line: 439, column: 6)
!4891 = !DILocation(line: 439, column: 6, scope: !4772)
!4892 = !DILocation(line: 440, column: 22, scope: !4890)
!4893 = !DILocation(line: 440, column: 28, scope: !4890)
!4894 = !DILocation(line: 440, column: 32, scope: !4890)
!4895 = !DILocation(line: 440, column: 3, scope: !4890)
!4896 = !DILocation(line: 442, column: 9, scope: !4772)
!4897 = !DILocation(line: 442, column: 2, scope: !4772)
!4898 = !DILocation(line: 443, column: 1, scope: !4772)
!4899 = distinct !DISubprogram(name: "int3401_remove", scope: !3, file: !3, line: 445, type: !4706, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!4900 = !DILocalVariable(name: "pdev", arg: 1, scope: !4899, file: !3, line: 445, type: !4708)
!4901 = !DILocation(line: 445, column: 51, scope: !4899)
!4902 = !DILocation(line: 447, column: 43, scope: !4899)
!4903 = !DILocation(line: 447, column: 22, scope: !4899)
!4904 = !DILocation(line: 447, column: 2, scope: !4899)
!4905 = !DILocation(line: 449, column: 2, scope: !4899)
!4906 = distinct !DISubprogram(name: "proc_thermal_add", scope: !3, file: !3, line: 351, type: !4907, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!4907 = !DISubroutineType(types: !4908)
!4908 = !{!163, !3369, !4909}
!4909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4776, size: 64)
!4910 = !DILocalVariable(name: "dev", arg: 1, scope: !4906, file: !3, line: 351, type: !3369)
!4911 = !DILocation(line: 351, column: 44, scope: !4906)
!4912 = !DILocalVariable(name: "priv", arg: 2, scope: !4906, file: !3, line: 352, type: !4909)
!4913 = !DILocation(line: 352, column: 37, scope: !4906)
!4914 = !DILocalVariable(name: "proc_priv", scope: !4906, file: !3, line: 354, type: !4776)
!4915 = !DILocation(line: 354, column: 30, scope: !4906)
!4916 = !DILocalVariable(name: "adev", scope: !4906, file: !3, line: 355, type: !158)
!4917 = !DILocation(line: 355, column: 22, scope: !4906)
!4918 = !DILocalVariable(name: "status", scope: !4906, file: !3, line: 356, type: !4919)
!4919 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !166, line: 421, baseType: !409)
!4920 = !DILocation(line: 356, column: 14, scope: !4906)
!4921 = !DILocalVariable(name: "tmp", scope: !4906, file: !3, line: 357, type: !417)
!4922 = !DILocation(line: 357, column: 21, scope: !4906)
!4923 = !DILocalVariable(name: "ops", scope: !4906, file: !3, line: 358, type: !4235)
!4924 = !DILocation(line: 358, column: 34, scope: !4906)
!4925 = !DILocalVariable(name: "ret", scope: !4906, file: !3, line: 359, type: !163)
!4926 = !DILocation(line: 359, column: 6, scope: !4906)
!4927 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !4928, file: !3, line: 361, type: !172)
!4928 = distinct !DILexicalBlock(scope: !4906, file: !3, line: 361, column: 9)
!4929 = !DILocation(line: 361, column: 9, scope: !4928)
!4930 = !DILocalVariable(name: "__mptr", scope: !4931, file: !3, line: 361, type: !157)
!4931 = distinct !DILexicalBlock(scope: !4928, file: !3, line: 361, column: 9)
!4932 = !DILocation(line: 361, column: 9, scope: !4931)
!4933 = !DILocation(line: 361, column: 9, scope: !4934)
!4934 = distinct !DILexicalBlock(scope: !4931, file: !3, line: 361, column: 9)
!4935 = !DILocation(line: 361, column: 7, scope: !4906)
!4936 = !DILocation(line: 362, column: 7, scope: !4937)
!4937 = distinct !DILexicalBlock(scope: !4906, file: !3, line: 362, column: 6)
!4938 = !DILocation(line: 362, column: 6, scope: !4906)
!4939 = !DILocation(line: 363, column: 3, scope: !4937)
!4940 = !DILocation(line: 365, column: 27, scope: !4906)
!4941 = !DILocation(line: 365, column: 14, scope: !4906)
!4942 = !DILocation(line: 365, column: 12, scope: !4906)
!4943 = !DILocation(line: 366, column: 7, scope: !4944)
!4944 = distinct !DILexicalBlock(scope: !4906, file: !3, line: 366, column: 6)
!4945 = !DILocation(line: 366, column: 6, scope: !4906)
!4946 = !DILocation(line: 367, column: 3, scope: !4944)
!4947 = !DILocation(line: 369, column: 19, scope: !4906)
!4948 = !DILocation(line: 369, column: 2, scope: !4906)
!4949 = !DILocation(line: 369, column: 13, scope: !4906)
!4950 = !DILocation(line: 369, column: 17, scope: !4906)
!4951 = !DILocation(line: 370, column: 20, scope: !4906)
!4952 = !DILocation(line: 370, column: 2, scope: !4906)
!4953 = !DILocation(line: 370, column: 13, scope: !4906)
!4954 = !DILocation(line: 370, column: 18, scope: !4906)
!4955 = !DILocation(line: 371, column: 10, scope: !4906)
!4956 = !DILocation(line: 371, column: 3, scope: !4906)
!4957 = !DILocation(line: 371, column: 8, scope: !4906)
!4958 = !DILocation(line: 373, column: 31, scope: !4906)
!4959 = !DILocation(line: 373, column: 8, scope: !4906)
!4960 = !DILocation(line: 373, column: 6, scope: !4906)
!4961 = !DILocation(line: 374, column: 6, scope: !4962)
!4962 = distinct !DILexicalBlock(scope: !4906, file: !3, line: 374, column: 6)
!4963 = !DILocation(line: 374, column: 6, scope: !4906)
!4964 = !DILocation(line: 375, column: 10, scope: !4962)
!4965 = !DILocation(line: 375, column: 3, scope: !4962)
!4966 = !DILocation(line: 377, column: 33, scope: !4906)
!4967 = !DILocation(line: 377, column: 39, scope: !4906)
!4968 = !DILocation(line: 377, column: 11, scope: !4906)
!4969 = !DILocation(line: 377, column: 9, scope: !4906)
!4970 = !DILocation(line: 378, column: 6, scope: !4971)
!4971 = distinct !DILexicalBlock(scope: !4906, file: !3, line: 378, column: 6)
!4972 = !DILocation(line: 378, column: 6, scope: !4906)
!4973 = !DILocation(line: 380, column: 18, scope: !4974)
!4974 = distinct !DILexicalBlock(scope: !4971, file: !3, line: 378, column: 28)
!4975 = !DILocation(line: 380, column: 16, scope: !4974)
!4976 = !DILocation(line: 381, column: 7, scope: !4977)
!4977 = distinct !DILexicalBlock(scope: !4974, file: !3, line: 381, column: 7)
!4978 = !DILocation(line: 381, column: 20, scope: !4977)
!4979 = !DILocation(line: 381, column: 7, scope: !4974)
!4980 = !DILocation(line: 382, column: 8, scope: !4977)
!4981 = !DILocation(line: 382, column: 4, scope: !4977)
!4982 = !DILocation(line: 383, column: 2, scope: !4974)
!4983 = !DILocation(line: 385, column: 53, scope: !4906)
!4984 = !DILocation(line: 385, column: 59, scope: !4906)
!4985 = !DILocation(line: 385, column: 28, scope: !4906)
!4986 = !DILocation(line: 385, column: 2, scope: !4906)
!4987 = !DILocation(line: 385, column: 13, scope: !4906)
!4988 = !DILocation(line: 385, column: 26, scope: !4906)
!4989 = !DILocation(line: 386, column: 13, scope: !4990)
!4990 = distinct !DILexicalBlock(scope: !4906, file: !3, line: 386, column: 6)
!4991 = !DILocation(line: 386, column: 24, scope: !4990)
!4992 = !DILocation(line: 386, column: 6, scope: !4990)
!4993 = !DILocation(line: 386, column: 6, scope: !4906)
!4994 = !DILocation(line: 387, column: 18, scope: !4995)
!4995 = distinct !DILexicalBlock(scope: !4990, file: !3, line: 386, column: 39)
!4996 = !DILocation(line: 387, column: 29, scope: !4995)
!4997 = !DILocation(line: 387, column: 10, scope: !4995)
!4998 = !DILocation(line: 387, column: 3, scope: !4995)
!4999 = !DILocation(line: 389, column: 7, scope: !4990)
!5000 = !DILocation(line: 391, column: 36, scope: !4906)
!5001 = !DILocation(line: 391, column: 42, scope: !4906)
!5002 = !DILocation(line: 393, column: 16, scope: !4906)
!5003 = !DILocation(line: 393, column: 8, scope: !4906)
!5004 = !DILocation(line: 391, column: 8, scope: !4906)
!5005 = !DILocation(line: 391, column: 6, scope: !4906)
!5006 = !DILocation(line: 394, column: 6, scope: !5007)
!5007 = distinct !DILexicalBlock(scope: !4906, file: !3, line: 394, column: 6)
!5008 = !DILocation(line: 394, column: 6, scope: !4906)
!5009 = !DILocation(line: 395, column: 3, scope: !5007)
!5010 = !DILocation(line: 397, column: 2, scope: !4906)
!5011 = !DILabel(scope: !4906, name: "remove_zone", file: !3, line: 399)
!5012 = !DILocation(line: 399, column: 1, scope: !4906)
!5013 = !DILocation(line: 400, column: 30, scope: !4906)
!5014 = !DILocation(line: 400, column: 41, scope: !4906)
!5015 = !DILocation(line: 400, column: 2, scope: !4906)
!5016 = !DILocation(line: 402, column: 9, scope: !4906)
!5017 = !DILocation(line: 402, column: 2, scope: !4906)
!5018 = !DILocation(line: 403, column: 1, scope: !4906)
!5019 = distinct !DISubprogram(name: "platform_set_drvdata", scope: !4702, file: !4702, line: 236, type: !5020, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!5020 = !DISubroutineType(types: !5021)
!5021 = !{null, !4708, !157}
!5022 = !DILocalVariable(name: "pdev", arg: 1, scope: !5019, file: !4702, line: 236, type: !4708)
!5023 = !DILocation(line: 236, column: 65, scope: !5019)
!5024 = !DILocalVariable(name: "data", arg: 2, scope: !5019, file: !4702, line: 237, type: !157)
!5025 = !DILocation(line: 237, column: 12, scope: !5019)
!5026 = !DILocation(line: 239, column: 19, scope: !5019)
!5027 = !DILocation(line: 239, column: 25, scope: !5019)
!5028 = !DILocation(line: 239, column: 30, scope: !5019)
!5029 = !DILocation(line: 239, column: 2, scope: !5019)
!5030 = !DILocation(line: 240, column: 1, scope: !5019)
!5031 = distinct !DISubprogram(name: "sysfs_create_file", scope: !293, file: !293, line: 596, type: !5032, scopeLine: 598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!5032 = !DISubroutineType(types: !5033)
!5033 = !{!163, !220, !5034}
!5034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5035, size: 64)
!5035 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !305)
!5036 = !DILocalVariable(name: "kobj", arg: 1, scope: !5031, file: !293, line: 596, type: !220)
!5037 = !DILocation(line: 596, column: 66, scope: !5031)
!5038 = !DILocalVariable(name: "attr", arg: 2, scope: !5031, file: !293, line: 597, type: !5034)
!5039 = !DILocation(line: 597, column: 32, scope: !5031)
!5040 = !DILocation(line: 599, column: 30, scope: !5031)
!5041 = !DILocation(line: 599, column: 36, scope: !5031)
!5042 = !DILocation(line: 599, column: 9, scope: !5031)
!5043 = !DILocation(line: 599, column: 2, scope: !5031)
!5044 = distinct !DISubprogram(name: "sysfs_remove_file", scope: !293, file: !293, line: 602, type: !5045, scopeLine: 604, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!5045 = !DISubroutineType(types: !5046)
!5046 = !{null, !220, !5034}
!5047 = !DILocalVariable(name: "kobj", arg: 1, scope: !5044, file: !293, line: 602, type: !220)
!5048 = !DILocation(line: 602, column: 54, scope: !5044)
!5049 = !DILocalVariable(name: "attr", arg: 2, scope: !5044, file: !293, line: 603, type: !5034)
!5050 = !DILocation(line: 603, column: 34, scope: !5044)
!5051 = !DILocation(line: 605, column: 23, scope: !5044)
!5052 = !DILocation(line: 605, column: 29, scope: !5044)
!5053 = !DILocation(line: 605, column: 2, scope: !5044)
!5054 = !DILocation(line: 606, column: 1, scope: !5044)
!5055 = distinct !DISubprogram(name: "devm_kzalloc", scope: !73, file: !73, line: 215, type: !5056, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!5056 = !DISubroutineType(types: !5057)
!5057 = !{!157, !3369, !315, !739}
!5058 = !DILocalVariable(name: "dev", arg: 1, scope: !5055, file: !73, line: 215, type: !3369)
!5059 = !DILocation(line: 215, column: 49, scope: !5055)
!5060 = !DILocalVariable(name: "size", arg: 2, scope: !5055, file: !73, line: 215, type: !315)
!5061 = !DILocation(line: 215, column: 61, scope: !5055)
!5062 = !DILocalVariable(name: "gfp", arg: 3, scope: !5055, file: !73, line: 215, type: !739)
!5063 = !DILocation(line: 215, column: 73, scope: !5055)
!5064 = !DILocation(line: 217, column: 22, scope: !5055)
!5065 = !DILocation(line: 217, column: 27, scope: !5055)
!5066 = !DILocation(line: 217, column: 33, scope: !5055)
!5067 = !DILocation(line: 217, column: 37, scope: !5055)
!5068 = !DILocation(line: 217, column: 9, scope: !5055)
!5069 = !DILocation(line: 217, column: 2, scope: !5055)
!5070 = distinct !DISubprogram(name: "proc_thermal_read_ppcc", scope: !3, file: !3, line: 281, type: !5071, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!5071 = !DISubroutineType(types: !5072)
!5072 = !{!163, !4776}
!5073 = !DILocalVariable(name: "proc_priv", arg: 1, scope: !5070, file: !3, line: 281, type: !4776)
!5074 = !DILocation(line: 281, column: 63, scope: !5070)
!5075 = !DILocalVariable(name: "i", scope: !5070, file: !3, line: 283, type: !163)
!5076 = !DILocation(line: 283, column: 6, scope: !5070)
!5077 = !DILocalVariable(name: "status", scope: !5070, file: !3, line: 284, type: !4919)
!5078 = !DILocation(line: 284, column: 14, scope: !5070)
!5079 = !DILocalVariable(name: "buf", scope: !5070, file: !3, line: 285, type: !5080)
!5080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !166, line: 969, size: 128, elements: !5081)
!5081 = !{!5082, !5084}
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5080, file: !166, line: 970, baseType: !5083, size: 64)
!5083 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !166, line: 127, baseType: !415)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !5080, file: !166, line: 971, baseType: !157, size: 64, offset: 64)
!5085 = !DILocation(line: 285, column: 21, scope: !5070)
!5086 = !DILocalVariable(name: "elements", scope: !5070, file: !3, line: 286, type: !3941)
!5087 = !DILocation(line: 286, column: 21, scope: !5070)
!5088 = !DILocalVariable(name: "ppcc", scope: !5070, file: !3, line: 286, type: !3941)
!5089 = !DILocation(line: 286, column: 32, scope: !5070)
!5090 = !DILocalVariable(name: "p", scope: !5070, file: !3, line: 287, type: !3941)
!5091 = !DILocation(line: 287, column: 21, scope: !5070)
!5092 = !DILocalVariable(name: "ret", scope: !5070, file: !3, line: 288, type: !163)
!5093 = !DILocation(line: 288, column: 6, scope: !5070)
!5094 = !DILocation(line: 290, column: 32, scope: !5070)
!5095 = !DILocation(line: 290, column: 43, scope: !5070)
!5096 = !DILocation(line: 290, column: 49, scope: !5070)
!5097 = !DILocation(line: 290, column: 11, scope: !5070)
!5098 = !DILocation(line: 290, column: 9, scope: !5070)
!5099 = !DILocation(line: 292, column: 6, scope: !5100)
!5100 = distinct !DILexicalBlock(scope: !5070, file: !3, line: 292, column: 6)
!5101 = !DILocation(line: 292, column: 6, scope: !5070)
!5102 = !DILocation(line: 293, column: 3, scope: !5100)
!5103 = !DILocation(line: 295, column: 10, scope: !5070)
!5104 = !DILocation(line: 295, column: 6, scope: !5070)
!5105 = !DILocation(line: 295, column: 4, scope: !5070)
!5106 = !DILocation(line: 296, column: 7, scope: !5107)
!5107 = distinct !DILexicalBlock(scope: !5070, file: !3, line: 296, column: 6)
!5108 = !DILocation(line: 296, column: 9, scope: !5107)
!5109 = !DILocation(line: 296, column: 13, scope: !5107)
!5110 = !DILocation(line: 296, column: 16, scope: !5107)
!5111 = !DILocation(line: 296, column: 21, scope: !5107)
!5112 = !DILocation(line: 296, column: 6, scope: !5070)
!5113 = !DILocation(line: 297, column: 3, scope: !5114)
!5114 = distinct !DILexicalBlock(scope: !5107, file: !3, line: 296, column: 44)
!5115 = !DILocation(line: 298, column: 7, scope: !5114)
!5116 = !DILocation(line: 299, column: 3, scope: !5114)
!5117 = !DILocation(line: 302, column: 7, scope: !5118)
!5118 = distinct !DILexicalBlock(scope: !5070, file: !3, line: 302, column: 6)
!5119 = !DILocation(line: 302, column: 10, scope: !5118)
!5120 = !DILocation(line: 302, column: 18, scope: !5118)
!5121 = !DILocation(line: 302, column: 6, scope: !5070)
!5122 = !DILocation(line: 303, column: 3, scope: !5123)
!5123 = distinct !DILexicalBlock(scope: !5118, file: !3, line: 302, column: 25)
!5124 = !DILocation(line: 304, column: 7, scope: !5123)
!5125 = !DILocation(line: 305, column: 3, scope: !5123)
!5126 = !DILocation(line: 308, column: 9, scope: !5127)
!5127 = distinct !DILexicalBlock(scope: !5070, file: !3, line: 308, column: 2)
!5128 = !DILocation(line: 308, column: 7, scope: !5127)
!5129 = !DILocation(line: 308, column: 14, scope: !5130)
!5130 = distinct !DILexicalBlock(scope: !5127, file: !3, line: 308, column: 2)
!5131 = !DILocalVariable(name: "__UNIQUE_ID___x238", scope: !5132, file: !3, line: 308, type: !163)
!5132 = distinct !DILexicalBlock(scope: !5130, file: !3, line: 308, column: 18)
!5133 = !DILocation(line: 308, column: 18, scope: !5132)
!5134 = !DILocalVariable(name: "__UNIQUE_ID___y239", scope: !5132, file: !3, line: 308, type: !163)
!5135 = !DILocation(line: 308, column: 16, scope: !5130)
!5136 = !DILocation(line: 308, column: 2, scope: !5127)
!5137 = !DILocation(line: 309, column: 16, scope: !5138)
!5138 = distinct !DILexicalBlock(scope: !5130, file: !3, line: 308, column: 58)
!5139 = !DILocation(line: 309, column: 19, scope: !5138)
!5140 = !DILocation(line: 309, column: 27, scope: !5138)
!5141 = !DILocation(line: 309, column: 36, scope: !5138)
!5142 = !DILocation(line: 309, column: 37, scope: !5138)
!5143 = !DILocation(line: 309, column: 12, scope: !5138)
!5144 = !DILocation(line: 310, column: 7, scope: !5145)
!5145 = distinct !DILexicalBlock(scope: !5138, file: !3, line: 310, column: 7)
!5146 = !DILocation(line: 310, column: 17, scope: !5145)
!5147 = !DILocation(line: 310, column: 22, scope: !5145)
!5148 = !DILocation(line: 310, column: 43, scope: !5145)
!5149 = !DILocation(line: 311, column: 7, scope: !5145)
!5150 = !DILocation(line: 311, column: 17, scope: !5145)
!5151 = !DILocation(line: 311, column: 25, scope: !5145)
!5152 = !DILocation(line: 311, column: 31, scope: !5145)
!5153 = !DILocation(line: 310, column: 7, scope: !5138)
!5154 = !DILocation(line: 312, column: 8, scope: !5155)
!5155 = distinct !DILexicalBlock(scope: !5145, file: !3, line: 311, column: 37)
!5156 = !DILocation(line: 313, column: 4, scope: !5155)
!5157 = !DILocation(line: 315, column: 10, scope: !5138)
!5158 = !DILocation(line: 315, column: 20, scope: !5138)
!5159 = !DILocation(line: 315, column: 28, scope: !5138)
!5160 = !DILocation(line: 315, column: 8, scope: !5138)
!5161 = !DILocation(line: 316, column: 38, scope: !5138)
!5162 = !DILocation(line: 316, column: 46, scope: !5138)
!5163 = !DILocation(line: 316, column: 54, scope: !5138)
!5164 = !DILocation(line: 316, column: 3, scope: !5138)
!5165 = !DILocation(line: 316, column: 14, scope: !5138)
!5166 = !DILocation(line: 316, column: 27, scope: !5138)
!5167 = !DILocation(line: 316, column: 30, scope: !5138)
!5168 = !DILocation(line: 316, column: 36, scope: !5138)
!5169 = !DILocation(line: 317, column: 39, scope: !5138)
!5170 = !DILocation(line: 317, column: 47, scope: !5138)
!5171 = !DILocation(line: 317, column: 55, scope: !5138)
!5172 = !DILocation(line: 317, column: 3, scope: !5138)
!5173 = !DILocation(line: 317, column: 14, scope: !5138)
!5174 = !DILocation(line: 317, column: 27, scope: !5138)
!5175 = !DILocation(line: 317, column: 30, scope: !5138)
!5176 = !DILocation(line: 317, column: 37, scope: !5138)
!5177 = !DILocation(line: 318, column: 39, scope: !5138)
!5178 = !DILocation(line: 318, column: 47, scope: !5138)
!5179 = !DILocation(line: 318, column: 55, scope: !5138)
!5180 = !DILocation(line: 318, column: 3, scope: !5138)
!5181 = !DILocation(line: 318, column: 14, scope: !5138)
!5182 = !DILocation(line: 318, column: 27, scope: !5138)
!5183 = !DILocation(line: 318, column: 30, scope: !5138)
!5184 = !DILocation(line: 318, column: 37, scope: !5138)
!5185 = !DILocation(line: 319, column: 40, scope: !5138)
!5186 = !DILocation(line: 319, column: 48, scope: !5138)
!5187 = !DILocation(line: 319, column: 56, scope: !5138)
!5188 = !DILocation(line: 319, column: 3, scope: !5138)
!5189 = !DILocation(line: 319, column: 14, scope: !5138)
!5190 = !DILocation(line: 319, column: 27, scope: !5138)
!5191 = !DILocation(line: 319, column: 30, scope: !5138)
!5192 = !DILocation(line: 319, column: 38, scope: !5138)
!5193 = !DILocation(line: 320, column: 40, scope: !5138)
!5194 = !DILocation(line: 320, column: 48, scope: !5138)
!5195 = !DILocation(line: 320, column: 56, scope: !5138)
!5196 = !DILocation(line: 320, column: 3, scope: !5138)
!5197 = !DILocation(line: 320, column: 14, scope: !5138)
!5198 = !DILocation(line: 320, column: 27, scope: !5138)
!5199 = !DILocation(line: 320, column: 30, scope: !5138)
!5200 = !DILocation(line: 320, column: 38, scope: !5138)
!5201 = !DILocation(line: 321, column: 40, scope: !5138)
!5202 = !DILocation(line: 321, column: 48, scope: !5138)
!5203 = !DILocation(line: 321, column: 56, scope: !5138)
!5204 = !DILocation(line: 321, column: 3, scope: !5138)
!5205 = !DILocation(line: 321, column: 14, scope: !5138)
!5206 = !DILocation(line: 321, column: 27, scope: !5138)
!5207 = !DILocation(line: 321, column: 30, scope: !5138)
!5208 = !DILocation(line: 321, column: 38, scope: !5138)
!5209 = !DILocation(line: 322, column: 2, scope: !5138)
!5210 = !DILocation(line: 308, column: 53, scope: !5130)
!5211 = !DILocation(line: 308, column: 2, scope: !5130)
!5212 = distinct !{!5212, !5136, !5213}
!5213 = !DILocation(line: 322, column: 2, scope: !5127)
!5214 = !DILabel(scope: !5070, name: "free_buffer", file: !3, line: 324)
!5215 = !DILocation(line: 324, column: 1, scope: !5070)
!5216 = !DILocation(line: 325, column: 12, scope: !5070)
!5217 = !DILocation(line: 325, column: 2, scope: !5070)
!5218 = !DILocation(line: 327, column: 9, scope: !5070)
!5219 = !DILocation(line: 327, column: 2, scope: !5070)
!5220 = !DILocation(line: 328, column: 1, scope: !5070)
!5221 = distinct !DISubprogram(name: "get_tjmax", scope: !3, file: !3, line: 217, type: !4756, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!5222 = !DILocalVariable(name: "eax", scope: !5221, file: !3, line: 219, type: !409)
!5223 = !DILocation(line: 219, column: 6, scope: !5221)
!5224 = !DILocalVariable(name: "edx", scope: !5221, file: !3, line: 219, type: !409)
!5225 = !DILocation(line: 219, column: 11, scope: !5221)
!5226 = !DILocalVariable(name: "val", scope: !5221, file: !3, line: 220, type: !409)
!5227 = !DILocation(line: 220, column: 6, scope: !5221)
!5228 = !DILocalVariable(name: "err", scope: !5221, file: !3, line: 221, type: !163)
!5229 = !DILocation(line: 221, column: 6, scope: !5221)
!5230 = !DILocalVariable(name: "_err", scope: !5231, file: !3, line: 223, type: !163)
!5231 = distinct !DILexicalBlock(scope: !5221, file: !3, line: 223, column: 8)
!5232 = !DILocation(line: 223, column: 8, scope: !5231)
!5233 = !DILocalVariable(name: "_l", scope: !5231, file: !3, line: 223, type: !415)
!5234 = !DILocation(line: 223, column: 6, scope: !5221)
!5235 = !DILocation(line: 224, column: 6, scope: !5236)
!5236 = distinct !DILexicalBlock(scope: !5221, file: !3, line: 224, column: 6)
!5237 = !DILocation(line: 224, column: 6, scope: !5221)
!5238 = !DILocation(line: 225, column: 10, scope: !5236)
!5239 = !DILocation(line: 225, column: 3, scope: !5236)
!5240 = !DILocation(line: 227, column: 9, scope: !5221)
!5241 = !DILocation(line: 227, column: 13, scope: !5221)
!5242 = !DILocation(line: 227, column: 20, scope: !5221)
!5243 = !DILocation(line: 227, column: 6, scope: !5221)
!5244 = !DILocation(line: 228, column: 6, scope: !5245)
!5245 = distinct !DILexicalBlock(scope: !5221, file: !3, line: 228, column: 6)
!5246 = !DILocation(line: 228, column: 6, scope: !5221)
!5247 = !DILocation(line: 229, column: 10, scope: !5245)
!5248 = !DILocation(line: 229, column: 3, scope: !5245)
!5249 = !DILocation(line: 231, column: 2, scope: !5221)
!5250 = !DILocation(line: 232, column: 1, scope: !5221)
!5251 = distinct !DISubprogram(name: "IS_ERR", scope: !5252, file: !5252, line: 34, type: !5253, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!5252 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!5253 = !DISubroutineType(types: !5254)
!5254 = !{!190, !199}
!5255 = !DILocalVariable(name: "ptr", arg: 1, scope: !5251, file: !5252, line: 34, type: !199)
!5256 = !DILocation(line: 34, column: 60, scope: !5251)
!5257 = !DILocation(line: 36, column: 9, scope: !5251)
!5258 = !DILocation(line: 36, column: 2, scope: !5251)
!5259 = distinct !DISubprogram(name: "PTR_ERR", scope: !5252, file: !5252, line: 29, type: !5260, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!5260 = !DISubroutineType(types: !5261)
!5261 = !{!303, !199}
!5262 = !DILocalVariable(name: "ptr", arg: 1, scope: !5259, file: !5252, line: 29, type: !199)
!5263 = !DILocation(line: 29, column: 61, scope: !5259)
!5264 = !DILocation(line: 31, column: 16, scope: !5259)
!5265 = !DILocation(line: 31, column: 9, scope: !5259)
!5266 = !DILocation(line: 31, column: 2, scope: !5259)
!5267 = distinct !DISubprogram(name: "proc_thermal_notify", scope: !3, file: !3, line: 331, type: !5268, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!5268 = !DISubroutineType(types: !5269)
!5269 = !{null, !165, !409, !157}
!5270 = !DILocalVariable(name: "handle", arg: 1, scope: !5267, file: !3, line: 331, type: !165)
!5271 = !DILocation(line: 331, column: 45, scope: !5267)
!5272 = !DILocalVariable(name: "event", arg: 2, scope: !5267, file: !3, line: 331, type: !409)
!5273 = !DILocation(line: 331, column: 57, scope: !5267)
!5274 = !DILocalVariable(name: "data", arg: 3, scope: !5267, file: !3, line: 331, type: !157)
!5275 = !DILocation(line: 331, column: 70, scope: !5267)
!5276 = !DILocalVariable(name: "proc_priv", scope: !5267, file: !3, line: 333, type: !4776)
!5277 = !DILocation(line: 333, column: 30, scope: !5267)
!5278 = !DILocation(line: 333, column: 42, scope: !5267)
!5279 = !DILocation(line: 335, column: 7, scope: !5280)
!5280 = distinct !DILexicalBlock(scope: !5267, file: !3, line: 335, column: 6)
!5281 = !DILocation(line: 335, column: 6, scope: !5267)
!5282 = !DILocation(line: 336, column: 3, scope: !5280)
!5283 = !DILocation(line: 338, column: 10, scope: !5267)
!5284 = !DILocation(line: 338, column: 2, scope: !5267)
!5285 = !DILocation(line: 340, column: 26, scope: !5286)
!5286 = distinct !DILexicalBlock(scope: !5267, file: !3, line: 338, column: 17)
!5287 = !DILocation(line: 340, column: 3, scope: !5286)
!5288 = !DILocation(line: 341, column: 38, scope: !5286)
!5289 = !DILocation(line: 341, column: 49, scope: !5286)
!5290 = !DILocation(line: 341, column: 3, scope: !5286)
!5291 = !DILocation(line: 343, column: 3, scope: !5286)
!5292 = !DILocation(line: 346, column: 3, scope: !5286)
!5293 = !DILocation(line: 348, column: 1, scope: !5267)
!5294 = distinct !DISubprogram(name: "paravirt_read_msr_safe", scope: !5295, file: !5295, line: 174, type: !5296, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!5295 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!5296 = !DISubroutineType(types: !5297)
!5297 = !{!415, !7, !700}
!5298 = !DILocalVariable(name: "msr", arg: 1, scope: !5294, file: !5295, line: 174, type: !7)
!5299 = !DILocation(line: 174, column: 51, scope: !5294)
!5300 = !DILocalVariable(name: "err", arg: 2, scope: !5294, file: !5295, line: 174, type: !700)
!5301 = !DILocation(line: 174, column: 61, scope: !5294)
!5302 = !DILocalVariable(name: "__ret", scope: !5303, file: !5295, line: 176, type: !415)
!5303 = distinct !DILexicalBlock(scope: !5294, file: !5295, line: 176, column: 9)
!5304 = !DILocation(line: 176, column: 9, scope: !5303)
!5305 = !DILocalVariable(name: "__edi", scope: !5303, file: !5295, line: 176, type: !318)
!5306 = !DILocalVariable(name: "__esi", scope: !5303, file: !5295, line: 176, type: !318)
!5307 = !DILocalVariable(name: "__edx", scope: !5303, file: !5295, line: 176, type: !318)
!5308 = !DILocalVariable(name: "__ecx", scope: !5303, file: !5295, line: 176, type: !318)
!5309 = !DILocalVariable(name: "__eax", scope: !5303, file: !5295, line: 176, type: !318)
!5310 = !DILocation(line: 176, column: 9, scope: !5311)
!5311 = distinct !DILexicalBlock(scope: !5312, file: !5295, line: 176, column: 9)
!5312 = distinct !DILexicalBlock(scope: !5303, file: !5295, line: 176, column: 9)
!5313 = !{i32 -2145959983, i32 -2145957472, i32 -2145957238, i32 -2145957187, i32 -2145957159, i32 -2145957134, i32 -2145957450, i32 -2145957437, i32 -2145956999, i32 -2145956880, i32 -2145957345, i32 -2145957318, i32 -2145957290, i32 -2145957260}
!5314 = !DILocalVariable(name: "__mask", scope: !5315, file: !5295, line: 176, type: !318)
!5315 = distinct !DILexicalBlock(scope: !5311, file: !5295, line: 176, column: 9)
!5316 = !DILocation(line: 176, column: 9, scope: !5315)
!5317 = !DILocation(line: 176, column: 9, scope: !5312)
!5318 = !DILocation(line: 176, column: 2, scope: !5294)
!5319 = distinct !DISubprogram(name: "proc_thermal_get_zone_temp", scope: !3, file: !3, line: 265, type: !4336, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!5320 = !DILocalVariable(name: "zone", arg: 1, scope: !5319, file: !3, line: 265, type: !4208)
!5321 = !DILocation(line: 265, column: 67, scope: !5319)
!5322 = !DILocalVariable(name: "temp", arg: 2, scope: !5319, file: !3, line: 266, type: !700)
!5323 = !DILocation(line: 266, column: 12, scope: !5319)
!5324 = !DILocalVariable(name: "ret", scope: !5319, file: !3, line: 268, type: !163)
!5325 = !DILocation(line: 268, column: 6, scope: !5319)
!5326 = !DILocation(line: 270, column: 22, scope: !5319)
!5327 = !DILocation(line: 270, column: 8, scope: !5319)
!5328 = !DILocation(line: 270, column: 6, scope: !5319)
!5329 = !DILocation(line: 271, column: 7, scope: !5330)
!5330 = distinct !DILexicalBlock(scope: !5319, file: !3, line: 271, column: 6)
!5331 = !DILocation(line: 271, column: 6, scope: !5319)
!5332 = !DILocation(line: 272, column: 12, scope: !5330)
!5333 = !DILocation(line: 272, column: 28, scope: !5330)
!5334 = !DILocation(line: 272, column: 27, scope: !5330)
!5335 = !DILocation(line: 272, column: 25, scope: !5330)
!5336 = !DILocation(line: 272, column: 34, scope: !5330)
!5337 = !DILocation(line: 272, column: 4, scope: !5330)
!5338 = !DILocation(line: 272, column: 9, scope: !5330)
!5339 = !DILocation(line: 272, column: 3, scope: !5330)
!5340 = !DILocation(line: 274, column: 9, scope: !5319)
!5341 = !DILocation(line: 274, column: 2, scope: !5319)
!5342 = distinct !DISubprogram(name: "read_temp_msr", scope: !3, file: !3, line: 234, type: !5343, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!5343 = !DISubroutineType(types: !5344)
!5344 = !{!163, !700}
!5345 = !DILocalVariable(name: "temp", arg: 1, scope: !5342, file: !3, line: 234, type: !700)
!5346 = !DILocation(line: 234, column: 31, scope: !5342)
!5347 = !DILocalVariable(name: "cpu", scope: !5342, file: !3, line: 236, type: !163)
!5348 = !DILocation(line: 236, column: 6, scope: !5342)
!5349 = !DILocalVariable(name: "eax", scope: !5342, file: !3, line: 237, type: !409)
!5350 = !DILocation(line: 237, column: 6, scope: !5342)
!5351 = !DILocalVariable(name: "edx", scope: !5342, file: !3, line: 237, type: !409)
!5352 = !DILocation(line: 237, column: 11, scope: !5342)
!5353 = !DILocalVariable(name: "err", scope: !5342, file: !3, line: 238, type: !163)
!5354 = !DILocation(line: 238, column: 6, scope: !5342)
!5355 = !DILocalVariable(name: "curr_temp_off", scope: !5342, file: !3, line: 239, type: !318)
!5356 = !DILocation(line: 239, column: 16, scope: !5342)
!5357 = !DILocation(line: 241, column: 3, scope: !5342)
!5358 = !DILocation(line: 241, column: 8, scope: !5342)
!5359 = !DILocation(line: 243, column: 2, scope: !5360)
!5360 = distinct !DILexicalBlock(scope: !5342, file: !3, line: 243, column: 2)
!5361 = !DILocation(line: 243, column: 2, scope: !5362)
!5362 = distinct !DILexicalBlock(scope: !5360, file: !3, line: 243, column: 2)
!5363 = !DILocation(line: 244, column: 27, scope: !5364)
!5364 = distinct !DILexicalBlock(scope: !5362, file: !3, line: 243, column: 27)
!5365 = !DILocation(line: 244, column: 9, scope: !5364)
!5366 = !DILocation(line: 244, column: 7, scope: !5364)
!5367 = !DILocation(line: 246, column: 7, scope: !5368)
!5368 = distinct !DILexicalBlock(scope: !5364, file: !3, line: 246, column: 7)
!5369 = !DILocation(line: 246, column: 7, scope: !5364)
!5370 = !DILocation(line: 247, column: 4, scope: !5368)
!5371 = !DILocation(line: 249, column: 8, scope: !5372)
!5372 = distinct !DILexicalBlock(scope: !5373, file: !3, line: 249, column: 8)
!5373 = distinct !DILexicalBlock(scope: !5368, file: !3, line: 248, column: 8)
!5374 = !DILocation(line: 249, column: 12, scope: !5372)
!5375 = !DILocation(line: 249, column: 8, scope: !5373)
!5376 = !DILocation(line: 250, column: 22, scope: !5377)
!5377 = distinct !DILexicalBlock(scope: !5372, file: !3, line: 249, column: 26)
!5378 = !DILocation(line: 250, column: 26, scope: !5377)
!5379 = !DILocation(line: 250, column: 33, scope: !5377)
!5380 = !DILocation(line: 250, column: 21, scope: !5377)
!5381 = !DILocation(line: 250, column: 19, scope: !5377)
!5382 = !DILocation(line: 251, column: 11, scope: !5383)
!5383 = distinct !DILexicalBlock(scope: !5377, file: !3, line: 251, column: 9)
!5384 = !DILocation(line: 251, column: 10, scope: !5383)
!5385 = !DILocation(line: 251, column: 16, scope: !5383)
!5386 = !DILocation(line: 251, column: 19, scope: !5383)
!5387 = !DILocation(line: 251, column: 36, scope: !5383)
!5388 = !DILocation(line: 251, column: 35, scope: !5383)
!5389 = !DILocation(line: 251, column: 33, scope: !5383)
!5390 = !DILocation(line: 251, column: 9, scope: !5377)
!5391 = !DILocation(line: 252, column: 14, scope: !5383)
!5392 = !DILocation(line: 252, column: 7, scope: !5383)
!5393 = !DILocation(line: 252, column: 12, scope: !5383)
!5394 = !DILocation(line: 252, column: 6, scope: !5383)
!5395 = !DILocation(line: 253, column: 4, scope: !5377)
!5396 = !DILocation(line: 254, column: 9, scope: !5397)
!5397 = distinct !DILexicalBlock(scope: !5372, file: !3, line: 253, column: 11)
!5398 = !DILocation(line: 255, column: 5, scope: !5397)
!5399 = !DILocation(line: 258, column: 2, scope: !5364)
!5400 = distinct !{!5400, !5359, !5401}
!5401 = !DILocation(line: 258, column: 2, scope: !5360)
!5402 = !DILocation(line: 260, column: 2, scope: !5342)
!5403 = !DILabel(scope: !5342, name: "err_ret", file: !3, line: 261)
!5404 = !DILocation(line: 261, column: 1, scope: !5342)
!5405 = !DILocation(line: 262, column: 9, scope: !5342)
!5406 = !DILocation(line: 262, column: 2, scope: !5342)
!5407 = !DILocation(line: 263, column: 1, scope: !5342)
!5408 = distinct !DISubprogram(name: "rdmsr_safe_on_cpu", scope: !5409, file: !5409, line: 380, type: !5410, scopeLine: 382, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!5409 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/lizy2001/genbc/linux")
!5410 = !DISubroutineType(types: !5411)
!5411 = !{!163, !7, !409, !1411, !1411}
!5412 = !DILocalVariable(name: "cpu", arg: 1, scope: !5408, file: !5409, line: 380, type: !7)
!5413 = !DILocation(line: 380, column: 50, scope: !5408)
!5414 = !DILocalVariable(name: "msr_no", arg: 2, scope: !5408, file: !5409, line: 380, type: !409)
!5415 = !DILocation(line: 380, column: 59, scope: !5408)
!5416 = !DILocalVariable(name: "l", arg: 3, scope: !5408, file: !5409, line: 381, type: !1411)
!5417 = !DILocation(line: 381, column: 14, scope: !5408)
!5418 = !DILocalVariable(name: "h", arg: 4, scope: !5408, file: !5409, line: 381, type: !1411)
!5419 = !DILocation(line: 381, column: 22, scope: !5408)
!5420 = !DILocalVariable(name: "_err", scope: !5421, file: !5409, line: 383, type: !163)
!5421 = distinct !DILexicalBlock(scope: !5408, file: !5409, line: 383, column: 9)
!5422 = !DILocation(line: 383, column: 9, scope: !5421)
!5423 = !DILocalVariable(name: "_l", scope: !5421, file: !5409, line: 383, type: !415)
!5424 = !DILocation(line: 383, column: 2, scope: !5408)
!5425 = distinct !DISubprogram(name: "int340x_thermal_zone_device_update", scope: !4794, file: !4794, line: 54, type: !5426, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!5426 = !DISubroutineType(types: !5427)
!5427 = !{null, !4792, !126}
!5428 = !DILocalVariable(name: "tzone", arg: 1, scope: !5425, file: !4794, line: 55, type: !4792)
!5429 = !DILocation(line: 55, column: 34, scope: !5425)
!5430 = !DILocalVariable(name: "event", arg: 2, scope: !5425, file: !4794, line: 56, type: !126)
!5431 = !DILocation(line: 56, column: 32, scope: !5425)
!5432 = !DILocation(line: 58, column: 29, scope: !5425)
!5433 = !DILocation(line: 58, column: 36, scope: !5425)
!5434 = !DILocation(line: 58, column: 42, scope: !5425)
!5435 = !DILocation(line: 58, column: 2, scope: !5425)
!5436 = !DILocation(line: 59, column: 1, scope: !5425)
!5437 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !73, file: !73, line: 660, type: !5438, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!5438 = !DISubroutineType(types: !5439)
!5439 = !{null, !3369, !157}
!5440 = !DILocalVariable(name: "dev", arg: 1, scope: !5437, file: !73, line: 660, type: !3369)
!5441 = !DILocation(line: 660, column: 51, scope: !5437)
!5442 = !DILocalVariable(name: "data", arg: 2, scope: !5437, file: !73, line: 660, type: !157)
!5443 = !DILocation(line: 660, column: 62, scope: !5437)
!5444 = !DILocation(line: 662, column: 21, scope: !5437)
!5445 = !DILocation(line: 662, column: 2, scope: !5437)
!5446 = !DILocation(line: 662, column: 7, scope: !5437)
!5447 = !DILocation(line: 662, column: 19, scope: !5437)
!5448 = !DILocation(line: 663, column: 1, scope: !5437)
!5449 = distinct !DISubprogram(name: "tcc_offset_degree_celsius_show", scope: !3, file: !3, line: 149, type: !4376, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!5450 = !DILocalVariable(name: "dev", arg: 1, scope: !5449, file: !3, line: 149, type: !3369)
!5451 = !DILocation(line: 149, column: 62, scope: !5449)
!5452 = !DILocalVariable(name: "attr", arg: 2, scope: !5449, file: !3, line: 150, type: !4378)
!5453 = !DILocation(line: 150, column: 36, scope: !5449)
!5454 = !DILocalVariable(name: "buf", arg: 3, scope: !5449, file: !3, line: 150, type: !268)
!5455 = !DILocation(line: 150, column: 48, scope: !5449)
!5456 = !DILocalVariable(name: "val", scope: !5449, file: !3, line: 152, type: !415)
!5457 = !DILocation(line: 152, column: 6, scope: !5449)
!5458 = !DILocalVariable(name: "err", scope: !5449, file: !3, line: 153, type: !163)
!5459 = !DILocation(line: 153, column: 6, scope: !5449)
!5460 = !DILocation(line: 155, column: 8, scope: !5449)
!5461 = !DILocation(line: 155, column: 6, scope: !5449)
!5462 = !DILocation(line: 156, column: 6, scope: !5463)
!5463 = distinct !DILexicalBlock(scope: !5449, file: !3, line: 156, column: 6)
!5464 = !DILocation(line: 156, column: 6, scope: !5449)
!5465 = !DILocation(line: 157, column: 10, scope: !5463)
!5466 = !DILocation(line: 157, column: 3, scope: !5463)
!5467 = !DILocation(line: 159, column: 9, scope: !5449)
!5468 = !DILocation(line: 159, column: 13, scope: !5449)
!5469 = !DILocation(line: 159, column: 20, scope: !5449)
!5470 = !DILocation(line: 159, column: 6, scope: !5449)
!5471 = !DILocation(line: 160, column: 17, scope: !5449)
!5472 = !DILocation(line: 160, column: 35, scope: !5449)
!5473 = !DILocation(line: 160, column: 30, scope: !5449)
!5474 = !DILocation(line: 160, column: 9, scope: !5449)
!5475 = !DILocation(line: 160, column: 2, scope: !5449)
!5476 = !DILocation(line: 161, column: 1, scope: !5449)
!5477 = distinct !DISubprogram(name: "tcc_offset_degree_celsius_store", scope: !3, file: !3, line: 187, type: !4381, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!5478 = !DILocalVariable(name: "dev", arg: 1, scope: !5477, file: !3, line: 187, type: !3369)
!5479 = !DILocation(line: 187, column: 63, scope: !5477)
!5480 = !DILocalVariable(name: "attr", arg: 2, scope: !5477, file: !3, line: 188, type: !4378)
!5481 = !DILocation(line: 188, column: 30, scope: !5477)
!5482 = !DILocalVariable(name: "buf", arg: 3, scope: !5477, file: !3, line: 188, type: !210)
!5483 = !DILocation(line: 188, column: 48, scope: !5477)
!5484 = !DILocalVariable(name: "count", arg: 4, scope: !5477, file: !3, line: 189, type: !315)
!5485 = !DILocation(line: 189, column: 12, scope: !5477)
!5486 = !DILocalVariable(name: "val", scope: !5477, file: !3, line: 191, type: !415)
!5487 = !DILocation(line: 191, column: 6, scope: !5477)
!5488 = !DILocalVariable(name: "tcc", scope: !5477, file: !3, line: 192, type: !163)
!5489 = !DILocation(line: 192, column: 6, scope: !5477)
!5490 = !DILocalVariable(name: "err", scope: !5477, file: !3, line: 192, type: !163)
!5491 = !DILocation(line: 192, column: 11, scope: !5477)
!5492 = !DILocation(line: 194, column: 8, scope: !5477)
!5493 = !DILocation(line: 194, column: 6, scope: !5477)
!5494 = !DILocation(line: 195, column: 6, scope: !5495)
!5495 = distinct !DILexicalBlock(scope: !5477, file: !3, line: 195, column: 6)
!5496 = !DILocation(line: 195, column: 6, scope: !5477)
!5497 = !DILocation(line: 196, column: 10, scope: !5495)
!5498 = !DILocation(line: 196, column: 3, scope: !5495)
!5499 = !DILocation(line: 198, column: 8, scope: !5500)
!5500 = distinct !DILexicalBlock(scope: !5477, file: !3, line: 198, column: 6)
!5501 = !DILocation(line: 198, column: 12, scope: !5500)
!5502 = !DILocation(line: 198, column: 6, scope: !5477)
!5503 = !DILocation(line: 199, column: 3, scope: !5500)
!5504 = !DILocation(line: 201, column: 16, scope: !5505)
!5505 = distinct !DILexicalBlock(scope: !5477, file: !3, line: 201, column: 6)
!5506 = !DILocation(line: 201, column: 6, scope: !5505)
!5507 = !DILocation(line: 201, column: 6, scope: !5477)
!5508 = !DILocation(line: 202, column: 3, scope: !5505)
!5509 = !DILocation(line: 204, column: 26, scope: !5477)
!5510 = !DILocation(line: 204, column: 8, scope: !5477)
!5511 = !DILocation(line: 204, column: 6, scope: !5477)
!5512 = !DILocation(line: 205, column: 6, scope: !5513)
!5513 = distinct !DILexicalBlock(scope: !5477, file: !3, line: 205, column: 6)
!5514 = !DILocation(line: 205, column: 6, scope: !5477)
!5515 = !DILocation(line: 206, column: 10, scope: !5513)
!5516 = !DILocation(line: 206, column: 3, scope: !5513)
!5517 = !DILocation(line: 208, column: 20, scope: !5477)
!5518 = !DILocation(line: 208, column: 18, scope: !5477)
!5519 = !DILocation(line: 210, column: 9, scope: !5477)
!5520 = !DILocation(line: 210, column: 2, scope: !5477)
!5521 = !DILocation(line: 211, column: 1, scope: !5477)
!5522 = distinct !DISubprogram(name: "rdmsrl_safe", scope: !5295, file: !5295, line: 219, type: !5523, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!5523 = !DISubroutineType(types: !5524)
!5524 = !{!163, !7, !5525}
!5525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!5526 = !DILocalVariable(name: "msr", arg: 1, scope: !5522, file: !5295, line: 219, type: !7)
!5527 = !DILocation(line: 219, column: 40, scope: !5522)
!5528 = !DILocalVariable(name: "p", arg: 2, scope: !5522, file: !5295, line: 219, type: !5525)
!5529 = !DILocation(line: 219, column: 65, scope: !5522)
!5530 = !DILocalVariable(name: "err", scope: !5522, file: !5295, line: 221, type: !163)
!5531 = !DILocation(line: 221, column: 6, scope: !5522)
!5532 = !DILocation(line: 223, column: 30, scope: !5522)
!5533 = !DILocation(line: 223, column: 7, scope: !5522)
!5534 = !DILocation(line: 223, column: 3, scope: !5522)
!5535 = !DILocation(line: 223, column: 5, scope: !5522)
!5536 = !DILocation(line: 224, column: 9, scope: !5522)
!5537 = !DILocation(line: 224, column: 2, scope: !5522)
!5538 = distinct !DISubprogram(name: "tcc_offset_update", scope: !3, file: !3, line: 163, type: !3048, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!5539 = !DILocalVariable(name: "tcc", arg: 1, scope: !5538, file: !3, line: 163, type: !163)
!5540 = !DILocation(line: 163, column: 34, scope: !5538)
!5541 = !DILocalVariable(name: "val", scope: !5538, file: !3, line: 165, type: !415)
!5542 = !DILocation(line: 165, column: 6, scope: !5538)
!5543 = !DILocalVariable(name: "err", scope: !5538, file: !3, line: 166, type: !163)
!5544 = !DILocation(line: 166, column: 6, scope: !5538)
!5545 = !DILocation(line: 168, column: 7, scope: !5546)
!5546 = distinct !DILexicalBlock(scope: !5538, file: !3, line: 168, column: 6)
!5547 = !DILocation(line: 168, column: 6, scope: !5538)
!5548 = !DILocation(line: 169, column: 3, scope: !5546)
!5549 = !DILocation(line: 171, column: 8, scope: !5538)
!5550 = !DILocation(line: 171, column: 6, scope: !5538)
!5551 = !DILocation(line: 172, column: 6, scope: !5552)
!5552 = distinct !DILexicalBlock(scope: !5538, file: !3, line: 172, column: 6)
!5553 = !DILocation(line: 172, column: 6, scope: !5538)
!5554 = !DILocation(line: 173, column: 10, scope: !5552)
!5555 = !DILocation(line: 173, column: 3, scope: !5552)
!5556 = !DILocation(line: 175, column: 6, scope: !5538)
!5557 = !DILocation(line: 176, column: 10, scope: !5538)
!5558 = !DILocation(line: 176, column: 14, scope: !5538)
!5559 = !DILocation(line: 176, column: 22, scope: !5538)
!5560 = !DILocation(line: 176, column: 9, scope: !5538)
!5561 = !DILocation(line: 176, column: 6, scope: !5538)
!5562 = !DILocation(line: 178, column: 49, scope: !5538)
!5563 = !DILocation(line: 178, column: 8, scope: !5538)
!5564 = !DILocation(line: 178, column: 6, scope: !5538)
!5565 = !DILocation(line: 179, column: 6, scope: !5566)
!5566 = distinct !DILexicalBlock(scope: !5538, file: !3, line: 179, column: 6)
!5567 = !DILocation(line: 179, column: 6, scope: !5538)
!5568 = !DILocation(line: 180, column: 10, scope: !5566)
!5569 = !DILocation(line: 180, column: 3, scope: !5566)
!5570 = !DILocation(line: 182, column: 2, scope: !5538)
!5571 = !DILocation(line: 183, column: 1, scope: !5538)
!5572 = distinct !DISubprogram(name: "wrmsrl_safe", scope: !5409, file: !5409, line: 322, type: !5573, scopeLine: 323, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!5573 = !DISubroutineType(types: !5574)
!5574 = !{!163, !409, !415}
!5575 = !DILocalVariable(name: "msr", arg: 1, scope: !5572, file: !5409, line: 322, type: !409)
!5576 = !DILocation(line: 322, column: 35, scope: !5572)
!5577 = !DILocalVariable(name: "val", arg: 2, scope: !5572, file: !5409, line: 322, type: !415)
!5578 = !DILocation(line: 322, column: 44, scope: !5572)
!5579 = !DILocation(line: 324, column: 9, scope: !5572)
!5580 = !DILocation(line: 324, column: 2, scope: !5572)
!5581 = distinct !DISubprogram(name: "paravirt_write_msr_safe", scope: !5295, file: !5295, line: 179, type: !5582, scopeLine: 181, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!5582 = !DISubroutineType(types: !5583)
!5583 = !{!163, !7, !7, !7}
!5584 = !DILocalVariable(name: "msr", arg: 1, scope: !5581, file: !5295, line: 179, type: !7)
!5585 = !DILocation(line: 179, column: 52, scope: !5581)
!5586 = !DILocalVariable(name: "low", arg: 2, scope: !5581, file: !5295, line: 180, type: !7)
!5587 = !DILocation(line: 180, column: 17, scope: !5581)
!5588 = !DILocalVariable(name: "high", arg: 3, scope: !5581, file: !5295, line: 180, type: !7)
!5589 = !DILocation(line: 180, column: 31, scope: !5581)
!5590 = !DILocalVariable(name: "__ret", scope: !5591, file: !5295, line: 182, type: !163)
!5591 = distinct !DILexicalBlock(scope: !5581, file: !5295, line: 182, column: 9)
!5592 = !DILocation(line: 182, column: 9, scope: !5591)
!5593 = !DILocalVariable(name: "__edi", scope: !5591, file: !5295, line: 182, type: !318)
!5594 = !DILocalVariable(name: "__esi", scope: !5591, file: !5295, line: 182, type: !318)
!5595 = !DILocalVariable(name: "__edx", scope: !5591, file: !5295, line: 182, type: !318)
!5596 = !DILocalVariable(name: "__ecx", scope: !5591, file: !5295, line: 182, type: !318)
!5597 = !DILocalVariable(name: "__eax", scope: !5591, file: !5295, line: 182, type: !318)
!5598 = !DILocation(line: 182, column: 9, scope: !5599)
!5599 = distinct !DILexicalBlock(scope: !5600, file: !5295, line: 182, column: 9)
!5600 = distinct !DILexicalBlock(scope: !5591, file: !5295, line: 182, column: 9)
!5601 = !{i32 -2145954183, i32 -2145951611, i32 -2145951377, i32 -2145951326, i32 -2145951298, i32 -2145951273, i32 -2145951589, i32 -2145951576, i32 -2145951138, i32 -2145951019, i32 -2145951484, i32 -2145951457, i32 -2145951429, i32 -2145951399}
!5602 = !DILocalVariable(name: "__mask", scope: !5603, file: !5295, line: 182, type: !318)
!5603 = distinct !DILexicalBlock(scope: !5599, file: !5295, line: 182, column: 9)
!5604 = !DILocation(line: 182, column: 9, scope: !5603)
!5605 = !DILocation(line: 182, column: 9, scope: !5600)
!5606 = !DILocation(line: 182, column: 2, scope: !5581)
!5607 = distinct !DISubprogram(name: "power_limit_0_min_uw_show", scope: !3, file: !3, line: 106, type: !4376, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!5608 = !DILocalVariable(name: "dev", arg: 1, scope: !5607, file: !3, line: 106, type: !3369)
!5609 = !DILocation(line: 106, column: 1, scope: !5607)
!5610 = !DILocalVariable(name: "attr", arg: 2, scope: !5607, file: !3, line: 106, type: !4378)
!5611 = !DILocalVariable(name: "buf", arg: 3, scope: !5607, file: !3, line: 106, type: !268)
!5612 = !DILocalVariable(name: "proc_dev", scope: !5607, file: !3, line: 106, type: !4776)
!5613 = !DILocation(line: 106, column: 1, scope: !5614)
!5614 = distinct !DILexicalBlock(scope: !5607, file: !3, line: 106, column: 1)
!5615 = !DILocation(line: 106, column: 1, scope: !5616)
!5616 = distinct !DILexicalBlock(scope: !5614, file: !3, line: 106, column: 1)
!5617 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !73, file: !73, line: 655, type: !5618, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!5618 = !DISubroutineType(types: !5619)
!5619 = !{!157, !201}
!5620 = !DILocalVariable(name: "dev", arg: 1, scope: !5617, file: !73, line: 655, type: !201)
!5621 = !DILocation(line: 655, column: 58, scope: !5617)
!5622 = !DILocation(line: 657, column: 9, scope: !5617)
!5623 = !DILocation(line: 657, column: 14, scope: !5617)
!5624 = !DILocation(line: 657, column: 2, scope: !5617)
!5625 = distinct !DISubprogram(name: "power_limit_1_min_uw_show", scope: !3, file: !3, line: 112, type: !4376, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!5626 = !DILocalVariable(name: "dev", arg: 1, scope: !5625, file: !3, line: 112, type: !3369)
!5627 = !DILocation(line: 112, column: 1, scope: !5625)
!5628 = !DILocalVariable(name: "attr", arg: 2, scope: !5625, file: !3, line: 112, type: !4378)
!5629 = !DILocalVariable(name: "buf", arg: 3, scope: !5625, file: !3, line: 112, type: !268)
!5630 = !DILocalVariable(name: "proc_dev", scope: !5625, file: !3, line: 112, type: !4776)
!5631 = !DILocation(line: 112, column: 1, scope: !5632)
!5632 = distinct !DILexicalBlock(scope: !5625, file: !3, line: 112, column: 1)
!5633 = !DILocation(line: 112, column: 1, scope: !5634)
!5634 = distinct !DILexicalBlock(scope: !5632, file: !3, line: 112, column: 1)
!5635 = distinct !DISubprogram(name: "power_limit_0_max_uw_show", scope: !3, file: !3, line: 107, type: !4376, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!5636 = !DILocalVariable(name: "dev", arg: 1, scope: !5635, file: !3, line: 107, type: !3369)
!5637 = !DILocation(line: 107, column: 1, scope: !5635)
!5638 = !DILocalVariable(name: "attr", arg: 2, scope: !5635, file: !3, line: 107, type: !4378)
!5639 = !DILocalVariable(name: "buf", arg: 3, scope: !5635, file: !3, line: 107, type: !268)
!5640 = !DILocalVariable(name: "proc_dev", scope: !5635, file: !3, line: 107, type: !4776)
!5641 = !DILocation(line: 107, column: 1, scope: !5642)
!5642 = distinct !DILexicalBlock(scope: !5635, file: !3, line: 107, column: 1)
!5643 = !DILocation(line: 107, column: 1, scope: !5644)
!5644 = distinct !DILexicalBlock(scope: !5642, file: !3, line: 107, column: 1)
!5645 = distinct !DISubprogram(name: "power_limit_1_max_uw_show", scope: !3, file: !3, line: 113, type: !4376, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!5646 = !DILocalVariable(name: "dev", arg: 1, scope: !5645, file: !3, line: 113, type: !3369)
!5647 = !DILocation(line: 113, column: 1, scope: !5645)
!5648 = !DILocalVariable(name: "attr", arg: 2, scope: !5645, file: !3, line: 113, type: !4378)
!5649 = !DILocalVariable(name: "buf", arg: 3, scope: !5645, file: !3, line: 113, type: !268)
!5650 = !DILocalVariable(name: "proc_dev", scope: !5645, file: !3, line: 113, type: !4776)
!5651 = !DILocation(line: 113, column: 1, scope: !5652)
!5652 = distinct !DILexicalBlock(scope: !5645, file: !3, line: 113, column: 1)
!5653 = !DILocation(line: 113, column: 1, scope: !5654)
!5654 = distinct !DILexicalBlock(scope: !5652, file: !3, line: 113, column: 1)
!5655 = distinct !DISubprogram(name: "power_limit_0_step_uw_show", scope: !3, file: !3, line: 108, type: !4376, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!5656 = !DILocalVariable(name: "dev", arg: 1, scope: !5655, file: !3, line: 108, type: !3369)
!5657 = !DILocation(line: 108, column: 1, scope: !5655)
!5658 = !DILocalVariable(name: "attr", arg: 2, scope: !5655, file: !3, line: 108, type: !4378)
!5659 = !DILocalVariable(name: "buf", arg: 3, scope: !5655, file: !3, line: 108, type: !268)
!5660 = !DILocalVariable(name: "proc_dev", scope: !5655, file: !3, line: 108, type: !4776)
!5661 = !DILocation(line: 108, column: 1, scope: !5662)
!5662 = distinct !DILexicalBlock(scope: !5655, file: !3, line: 108, column: 1)
!5663 = !DILocation(line: 108, column: 1, scope: !5664)
!5664 = distinct !DILexicalBlock(scope: !5662, file: !3, line: 108, column: 1)
!5665 = distinct !DISubprogram(name: "power_limit_1_step_uw_show", scope: !3, file: !3, line: 114, type: !4376, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!5666 = !DILocalVariable(name: "dev", arg: 1, scope: !5665, file: !3, line: 114, type: !3369)
!5667 = !DILocation(line: 114, column: 1, scope: !5665)
!5668 = !DILocalVariable(name: "attr", arg: 2, scope: !5665, file: !3, line: 114, type: !4378)
!5669 = !DILocalVariable(name: "buf", arg: 3, scope: !5665, file: !3, line: 114, type: !268)
!5670 = !DILocalVariable(name: "proc_dev", scope: !5665, file: !3, line: 114, type: !4776)
!5671 = !DILocation(line: 114, column: 1, scope: !5672)
!5672 = distinct !DILexicalBlock(scope: !5665, file: !3, line: 114, column: 1)
!5673 = !DILocation(line: 114, column: 1, scope: !5674)
!5674 = distinct !DILexicalBlock(scope: !5672, file: !3, line: 114, column: 1)
!5675 = distinct !DISubprogram(name: "power_limit_0_tmin_us_show", scope: !3, file: !3, line: 109, type: !4376, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!5676 = !DILocalVariable(name: "dev", arg: 1, scope: !5675, file: !3, line: 109, type: !3369)
!5677 = !DILocation(line: 109, column: 1, scope: !5675)
!5678 = !DILocalVariable(name: "attr", arg: 2, scope: !5675, file: !3, line: 109, type: !4378)
!5679 = !DILocalVariable(name: "buf", arg: 3, scope: !5675, file: !3, line: 109, type: !268)
!5680 = !DILocalVariable(name: "proc_dev", scope: !5675, file: !3, line: 109, type: !4776)
!5681 = !DILocation(line: 109, column: 1, scope: !5682)
!5682 = distinct !DILexicalBlock(scope: !5675, file: !3, line: 109, column: 1)
!5683 = !DILocation(line: 109, column: 1, scope: !5684)
!5684 = distinct !DILexicalBlock(scope: !5682, file: !3, line: 109, column: 1)
!5685 = distinct !DISubprogram(name: "power_limit_1_tmin_us_show", scope: !3, file: !3, line: 115, type: !4376, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!5686 = !DILocalVariable(name: "dev", arg: 1, scope: !5685, file: !3, line: 115, type: !3369)
!5687 = !DILocation(line: 115, column: 1, scope: !5685)
!5688 = !DILocalVariable(name: "attr", arg: 2, scope: !5685, file: !3, line: 115, type: !4378)
!5689 = !DILocalVariable(name: "buf", arg: 3, scope: !5685, file: !3, line: 115, type: !268)
!5690 = !DILocalVariable(name: "proc_dev", scope: !5685, file: !3, line: 115, type: !4776)
!5691 = !DILocation(line: 115, column: 1, scope: !5692)
!5692 = distinct !DILexicalBlock(scope: !5685, file: !3, line: 115, column: 1)
!5693 = !DILocation(line: 115, column: 1, scope: !5694)
!5694 = distinct !DILexicalBlock(scope: !5692, file: !3, line: 115, column: 1)
!5695 = distinct !DISubprogram(name: "power_limit_0_tmax_us_show", scope: !3, file: !3, line: 110, type: !4376, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!5696 = !DILocalVariable(name: "dev", arg: 1, scope: !5695, file: !3, line: 110, type: !3369)
!5697 = !DILocation(line: 110, column: 1, scope: !5695)
!5698 = !DILocalVariable(name: "attr", arg: 2, scope: !5695, file: !3, line: 110, type: !4378)
!5699 = !DILocalVariable(name: "buf", arg: 3, scope: !5695, file: !3, line: 110, type: !268)
!5700 = !DILocalVariable(name: "proc_dev", scope: !5695, file: !3, line: 110, type: !4776)
!5701 = !DILocation(line: 110, column: 1, scope: !5702)
!5702 = distinct !DILexicalBlock(scope: !5695, file: !3, line: 110, column: 1)
!5703 = !DILocation(line: 110, column: 1, scope: !5704)
!5704 = distinct !DILexicalBlock(scope: !5702, file: !3, line: 110, column: 1)
!5705 = distinct !DISubprogram(name: "power_limit_1_tmax_us_show", scope: !3, file: !3, line: 116, type: !4376, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!5706 = !DILocalVariable(name: "dev", arg: 1, scope: !5705, file: !3, line: 116, type: !3369)
!5707 = !DILocation(line: 116, column: 1, scope: !5705)
!5708 = !DILocalVariable(name: "attr", arg: 2, scope: !5705, file: !3, line: 116, type: !4378)
!5709 = !DILocalVariable(name: "buf", arg: 3, scope: !5705, file: !3, line: 116, type: !268)
!5710 = !DILocalVariable(name: "proc_dev", scope: !5705, file: !3, line: 116, type: !4776)
!5711 = !DILocation(line: 116, column: 1, scope: !5712)
!5712 = distinct !DILexicalBlock(scope: !5705, file: !3, line: 116, column: 1)
!5713 = !DILocation(line: 116, column: 1, scope: !5714)
!5714 = distinct !DILexicalBlock(scope: !5712, file: !3, line: 116, column: 1)
!5715 = distinct !DISubprogram(name: "proc_thermal_remove", scope: !3, file: !3, line: 405, type: !5716, scopeLine: 406, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!5716 = !DISubroutineType(types: !5717)
!5717 = !{null, !4776}
!5718 = !DILocalVariable(name: "proc_priv", arg: 1, scope: !5715, file: !3, line: 405, type: !4776)
!5719 = !DILocation(line: 405, column: 61, scope: !5715)
!5720 = !DILocation(line: 407, column: 29, scope: !5715)
!5721 = !DILocation(line: 407, column: 40, scope: !5715)
!5722 = !DILocation(line: 407, column: 46, scope: !5715)
!5723 = !DILocation(line: 407, column: 2, scope: !5715)
!5724 = !DILocation(line: 409, column: 30, scope: !5715)
!5725 = !DILocation(line: 409, column: 41, scope: !5715)
!5726 = !DILocation(line: 409, column: 2, scope: !5715)
!5727 = !DILocation(line: 410, column: 21, scope: !5715)
!5728 = !DILocation(line: 410, column: 32, scope: !5715)
!5729 = !DILocation(line: 410, column: 37, scope: !5715)
!5730 = !DILocation(line: 410, column: 2, scope: !5715)
!5731 = !DILocation(line: 411, column: 22, scope: !5715)
!5732 = !DILocation(line: 411, column: 33, scope: !5715)
!5733 = !DILocation(line: 411, column: 38, scope: !5715)
!5734 = !DILocation(line: 411, column: 2, scope: !5715)
!5735 = !DILocation(line: 413, column: 1, scope: !5715)
!5736 = distinct !DISubprogram(name: "platform_get_drvdata", scope: !4702, file: !4702, line: 231, type: !5737, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!5737 = !DISubroutineType(types: !5738)
!5738 = !{!157, !5739}
!5739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5740, size: 64)
!5740 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4709)
!5741 = !DILocalVariable(name: "pdev", arg: 1, scope: !5736, file: !4702, line: 231, type: !5739)
!5742 = !DILocation(line: 231, column: 72, scope: !5736)
!5743 = !DILocation(line: 233, column: 26, scope: !5736)
!5744 = !DILocation(line: 233, column: 32, scope: !5736)
!5745 = !DILocation(line: 233, column: 9, scope: !5736)
!5746 = !DILocation(line: 233, column: 2, scope: !5736)
!5747 = distinct !DISubprogram(name: "proc_thermal_resume", scope: !3, file: !3, line: 701, type: !3401, scopeLine: 702, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!5748 = !DILocalVariable(name: "dev", arg: 1, scope: !5747, file: !3, line: 701, type: !3369)
!5749 = !DILocation(line: 701, column: 47, scope: !5747)
!5750 = !DILocalVariable(name: "proc_dev", scope: !5747, file: !3, line: 703, type: !4776)
!5751 = !DILocation(line: 703, column: 30, scope: !5747)
!5752 = !DILocation(line: 705, column: 29, scope: !5747)
!5753 = !DILocation(line: 705, column: 13, scope: !5747)
!5754 = !DILocation(line: 705, column: 11, scope: !5747)
!5755 = !DILocation(line: 706, column: 25, scope: !5747)
!5756 = !DILocation(line: 706, column: 2, scope: !5747)
!5757 = !DILocation(line: 708, column: 20, scope: !5747)
!5758 = !DILocation(line: 708, column: 2, scope: !5747)
!5759 = !DILocation(line: 710, column: 2, scope: !5747)
!5760 = distinct !DISubprogram(name: "proc_thermal_pci_probe", scope: !3, file: !3, line: 611, type: !4438, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!5761 = !DILocalVariable(name: "pdev", arg: 1, scope: !5760, file: !3, line: 611, type: !4440)
!5762 = !DILocation(line: 611, column: 52, scope: !5760)
!5763 = !DILocalVariable(name: "id", arg: 2, scope: !5760, file: !3, line: 612, type: !4425)
!5764 = !DILocation(line: 612, column: 36, scope: !5760)
!5765 = !DILocalVariable(name: "proc_priv", scope: !5760, file: !3, line: 614, type: !4776)
!5766 = !DILocation(line: 614, column: 30, scope: !5760)
!5767 = !DILocalVariable(name: "ret", scope: !5760, file: !3, line: 615, type: !163)
!5768 = !DILocation(line: 615, column: 6, scope: !5760)
!5769 = !DILocation(line: 617, column: 6, scope: !5770)
!5770 = distinct !DILexicalBlock(scope: !5760, file: !3, line: 617, column: 6)
!5771 = !DILocation(line: 617, column: 29, scope: !5770)
!5772 = !DILocation(line: 617, column: 6, scope: !5760)
!5773 = !DILocation(line: 618, column: 3, scope: !5774)
!5774 = distinct !DILexicalBlock(scope: !5770, file: !3, line: 617, column: 59)
!5775 = !DILocation(line: 619, column: 3, scope: !5774)
!5776 = !DILocation(line: 622, column: 27, scope: !5760)
!5777 = !DILocation(line: 622, column: 8, scope: !5760)
!5778 = !DILocation(line: 622, column: 6, scope: !5760)
!5779 = !DILocation(line: 623, column: 6, scope: !5780)
!5780 = distinct !DILexicalBlock(scope: !5760, file: !3, line: 623, column: 6)
!5781 = !DILocation(line: 623, column: 10, scope: !5780)
!5782 = !DILocation(line: 623, column: 6, scope: !5760)
!5783 = !DILocation(line: 624, column: 3, scope: !5784)
!5784 = distinct !DILexicalBlock(scope: !5780, file: !3, line: 623, column: 15)
!5785 = !DILocation(line: 625, column: 10, scope: !5784)
!5786 = !DILocation(line: 625, column: 3, scope: !5784)
!5787 = !DILocation(line: 628, column: 26, scope: !5760)
!5788 = !DILocation(line: 628, column: 32, scope: !5760)
!5789 = !DILocation(line: 628, column: 8, scope: !5760)
!5790 = !DILocation(line: 628, column: 6, scope: !5760)
!5791 = !DILocation(line: 629, column: 6, scope: !5792)
!5792 = distinct !DILexicalBlock(scope: !5760, file: !3, line: 629, column: 6)
!5793 = !DILocation(line: 629, column: 6, scope: !5760)
!5794 = !DILocation(line: 630, column: 10, scope: !5792)
!5795 = !DILocation(line: 630, column: 3, scope: !5792)
!5796 = !DILocation(line: 632, column: 30, scope: !5760)
!5797 = !DILocation(line: 632, column: 36, scope: !5760)
!5798 = !DILocation(line: 633, column: 30, scope: !5760)
!5799 = !DILocation(line: 633, column: 34, scope: !5760)
!5800 = !DILocation(line: 633, column: 5, scope: !5760)
!5801 = !DILocation(line: 632, column: 8, scope: !5760)
!5802 = !DILocation(line: 632, column: 6, scope: !5760)
!5803 = !DILocation(line: 634, column: 6, scope: !5804)
!5804 = distinct !DILexicalBlock(scope: !5760, file: !3, line: 634, column: 6)
!5805 = !DILocation(line: 634, column: 6, scope: !5760)
!5806 = !DILocation(line: 635, column: 3, scope: !5807)
!5807 = distinct !DILexicalBlock(scope: !5804, file: !3, line: 634, column: 11)
!5808 = !DILocation(line: 636, column: 23, scope: !5807)
!5809 = !DILocation(line: 636, column: 3, scope: !5807)
!5810 = !DILocation(line: 637, column: 10, scope: !5807)
!5811 = !DILocation(line: 637, column: 3, scope: !5807)
!5812 = !DILocation(line: 640, column: 18, scope: !5760)
!5813 = !DILocation(line: 640, column: 24, scope: !5760)
!5814 = !DILocation(line: 640, column: 2, scope: !5760)
!5815 = !DILocation(line: 641, column: 25, scope: !5760)
!5816 = !DILocation(line: 643, column: 6, scope: !5817)
!5817 = distinct !DILexicalBlock(scope: !5760, file: !3, line: 643, column: 6)
!5818 = !DILocation(line: 643, column: 12, scope: !5817)
!5819 = !DILocation(line: 643, column: 19, scope: !5817)
!5820 = !DILocation(line: 643, column: 6, scope: !5760)
!5821 = !DILocation(line: 651, column: 24, scope: !5822)
!5822 = distinct !DILexicalBlock(scope: !5817, file: !3, line: 643, column: 54)
!5823 = !DILocation(line: 651, column: 3, scope: !5822)
!5824 = !DILocation(line: 651, column: 14, scope: !5822)
!5825 = !DILocation(line: 651, column: 22, scope: !5822)
!5826 = !DILocation(line: 654, column: 15, scope: !5827)
!5827 = distinct !DILexicalBlock(scope: !5822, file: !3, line: 654, column: 7)
!5828 = !DILocation(line: 654, column: 26, scope: !5827)
!5829 = !DILocation(line: 654, column: 8, scope: !5827)
!5830 = !DILocation(line: 654, column: 35, scope: !5827)
!5831 = !DILocation(line: 654, column: 38, scope: !5827)
!5832 = !DILocation(line: 654, column: 44, scope: !5827)
!5833 = !DILocation(line: 654, column: 7, scope: !5822)
!5834 = !DILocation(line: 655, column: 25, scope: !5835)
!5835 = distinct !DILexicalBlock(scope: !5827, file: !3, line: 654, column: 49)
!5836 = !DILocation(line: 655, column: 10, scope: !5835)
!5837 = !DILocation(line: 655, column: 8, scope: !5835)
!5838 = !DILocation(line: 656, column: 9, scope: !5839)
!5839 = distinct !DILexicalBlock(scope: !5835, file: !3, line: 656, column: 8)
!5840 = !DILocation(line: 656, column: 8, scope: !5835)
!5841 = !DILocation(line: 657, column: 32, scope: !5842)
!5842 = distinct !DILexicalBlock(scope: !5839, file: !3, line: 656, column: 14)
!5843 = !DILocation(line: 657, column: 38, scope: !5842)
!5844 = !DILocation(line: 660, column: 7, scope: !5842)
!5845 = !DILocation(line: 657, column: 11, scope: !5842)
!5846 = !DILocation(line: 657, column: 9, scope: !5842)
!5847 = !DILocation(line: 661, column: 9, scope: !5848)
!5848 = distinct !DILexicalBlock(scope: !5842, file: !3, line: 661, column: 9)
!5849 = !DILocation(line: 661, column: 9, scope: !5842)
!5850 = !DILocation(line: 663, column: 8, scope: !5851)
!5851 = distinct !DILexicalBlock(scope: !5848, file: !3, line: 661, column: 14)
!5852 = !DILocation(line: 663, column: 19, scope: !5851)
!5853 = !DILocation(line: 662, column: 6, scope: !5851)
!5854 = !DILocation(line: 664, column: 22, scope: !5851)
!5855 = !DILocation(line: 664, column: 6, scope: !5851)
!5856 = !DILocation(line: 665, column: 6, scope: !5851)
!5857 = !DILocation(line: 665, column: 17, scope: !5851)
!5858 = !DILocation(line: 665, column: 25, scope: !5851)
!5859 = !DILocation(line: 666, column: 5, scope: !5851)
!5860 = !DILocation(line: 667, column: 4, scope: !5842)
!5861 = !DILocation(line: 668, column: 3, scope: !5835)
!5862 = !DILocation(line: 669, column: 4, scope: !5827)
!5863 = !DILocation(line: 670, column: 2, scope: !5822)
!5864 = !DILocation(line: 672, column: 2, scope: !5760)
!5865 = !DILocation(line: 674, column: 27, scope: !5760)
!5866 = !DILocation(line: 674, column: 33, scope: !5760)
!5867 = !DILocation(line: 674, column: 37, scope: !5760)
!5868 = !DILocation(line: 674, column: 8, scope: !5760)
!5869 = !DILocation(line: 674, column: 6, scope: !5760)
!5870 = !DILocation(line: 675, column: 6, scope: !5871)
!5871 = distinct !DILexicalBlock(scope: !5760, file: !3, line: 675, column: 6)
!5872 = !DILocation(line: 675, column: 6, scope: !5760)
!5873 = !DILocation(line: 676, column: 10, scope: !5871)
!5874 = !DILocation(line: 676, column: 3, scope: !5871)
!5875 = !DILocation(line: 678, column: 28, scope: !5760)
!5876 = !DILocation(line: 678, column: 34, scope: !5760)
!5877 = !DILocation(line: 678, column: 38, scope: !5760)
!5878 = !DILocation(line: 678, column: 8, scope: !5760)
!5879 = !DILocation(line: 678, column: 6, scope: !5760)
!5880 = !DILocation(line: 679, column: 6, scope: !5881)
!5881 = distinct !DILexicalBlock(scope: !5760, file: !3, line: 679, column: 6)
!5882 = !DILocation(line: 679, column: 6, scope: !5760)
!5883 = !DILocation(line: 680, column: 22, scope: !5881)
!5884 = !DILocation(line: 680, column: 28, scope: !5881)
!5885 = !DILocation(line: 680, column: 32, scope: !5881)
!5886 = !DILocation(line: 680, column: 3, scope: !5881)
!5887 = !DILocation(line: 682, column: 9, scope: !5760)
!5888 = !DILocation(line: 682, column: 2, scope: !5760)
!5889 = !DILocation(line: 683, column: 1, scope: !5760)
!5890 = distinct !DISubprogram(name: "proc_thermal_pci_remove", scope: !3, file: !3, line: 685, type: !4653, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!5891 = !DILocalVariable(name: "pdev", arg: 1, scope: !5890, file: !3, line: 685, type: !4440)
!5892 = !DILocation(line: 685, column: 54, scope: !5890)
!5893 = !DILocalVariable(name: "proc_priv", scope: !5890, file: !3, line: 687, type: !4776)
!5894 = !DILocation(line: 687, column: 30, scope: !5890)
!5895 = !DILocation(line: 687, column: 58, scope: !5890)
!5896 = !DILocation(line: 687, column: 42, scope: !5890)
!5897 = !DILocation(line: 689, column: 6, scope: !5898)
!5898 = distinct !DILexicalBlock(scope: !5890, file: !3, line: 689, column: 6)
!5899 = !DILocation(line: 689, column: 17, scope: !5898)
!5900 = !DILocation(line: 689, column: 6, scope: !5890)
!5901 = !DILocation(line: 690, column: 27, scope: !5902)
!5902 = distinct !DILexicalBlock(scope: !5898, file: !3, line: 689, column: 26)
!5903 = !DILocation(line: 690, column: 38, scope: !5902)
!5904 = !DILocation(line: 690, column: 3, scope: !5902)
!5905 = !DILocation(line: 691, column: 7, scope: !5906)
!5906 = distinct !DILexicalBlock(scope: !5902, file: !3, line: 691, column: 7)
!5907 = !DILocation(line: 691, column: 13, scope: !5906)
!5908 = !DILocation(line: 691, column: 7, scope: !5902)
!5909 = !DILocation(line: 692, column: 13, scope: !5910)
!5910 = distinct !DILexicalBlock(scope: !5906, file: !3, line: 691, column: 18)
!5911 = !DILocation(line: 692, column: 19, scope: !5910)
!5912 = !DILocation(line: 692, column: 24, scope: !5910)
!5913 = !DILocation(line: 692, column: 4, scope: !5910)
!5914 = !DILocation(line: 693, column: 20, scope: !5910)
!5915 = !DILocation(line: 693, column: 4, scope: !5910)
!5916 = !DILocation(line: 694, column: 3, scope: !5910)
!5917 = !DILocation(line: 695, column: 2, scope: !5902)
!5918 = !DILocation(line: 696, column: 2, scope: !5890)
!5919 = !DILocation(line: 697, column: 22, scope: !5890)
!5920 = !DILocation(line: 697, column: 2, scope: !5890)
!5921 = !DILocation(line: 698, column: 1, scope: !5890)
!5922 = distinct !DISubprogram(name: "proc_thermal_rapl_add", scope: !3, file: !3, line: 600, type: !5923, scopeLine: 603, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!5923 = !DISubroutineType(types: !5924)
!5924 = !{!163, !4440, !4776, !4161}
!5925 = !DILocalVariable(name: "pdev", arg: 1, scope: !5922, file: !3, line: 600, type: !4440)
!5926 = !DILocation(line: 600, column: 50, scope: !5922)
!5927 = !DILocalVariable(name: "proc_priv", arg: 2, scope: !5922, file: !3, line: 601, type: !4776)
!5928 = !DILocation(line: 601, column: 34, scope: !5922)
!5929 = !DILocalVariable(name: "rapl_regs", arg: 3, scope: !5922, file: !3, line: 602, type: !4161)
!5930 = !DILocation(line: 602, column: 29, scope: !5922)
!5931 = !DILocation(line: 604, column: 2, scope: !5922)
!5932 = distinct !DISubprogram(name: "pci_set_drvdata", scope: !4420, file: !4420, line: 1870, type: !5933, scopeLine: 1871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!5933 = !DISubroutineType(types: !5934)
!5934 = !{null, !4440, !157}
!5935 = !DILocalVariable(name: "pdev", arg: 1, scope: !5932, file: !4420, line: 1870, type: !4440)
!5936 = !DILocation(line: 1870, column: 52, scope: !5932)
!5937 = !DILocalVariable(name: "data", arg: 2, scope: !5932, file: !4420, line: 1870, type: !157)
!5938 = !DILocation(line: 1870, column: 64, scope: !5932)
!5939 = !DILocation(line: 1872, column: 19, scope: !5932)
!5940 = !DILocation(line: 1872, column: 25, scope: !5932)
!5941 = !DILocation(line: 1872, column: 30, scope: !5932)
!5942 = !DILocation(line: 1872, column: 2, scope: !5932)
!5943 = !DILocation(line: 1873, column: 1, scope: !5932)
!5944 = distinct !DISubprogram(name: "proc_thermal_pci_msi_irq", scope: !3, file: !3, line: 452, type: !5945, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!5945 = !DISubroutineType(types: !5946)
!5946 = !{!5947, !163, !157}
!5947 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !151, line: 17, baseType: !150)
!5948 = !DILocalVariable(name: "irq", arg: 1, scope: !5944, file: !3, line: 452, type: !163)
!5949 = !DILocation(line: 452, column: 49, scope: !5944)
!5950 = !DILocalVariable(name: "devid", arg: 2, scope: !5944, file: !3, line: 452, type: !157)
!5951 = !DILocation(line: 452, column: 60, scope: !5944)
!5952 = !DILocalVariable(name: "proc_priv", scope: !5944, file: !3, line: 454, type: !4776)
!5953 = !DILocation(line: 454, column: 30, scope: !5944)
!5954 = !DILocalVariable(name: "pdev", scope: !5944, file: !3, line: 455, type: !4440)
!5955 = !DILocation(line: 455, column: 18, scope: !5944)
!5956 = !DILocation(line: 455, column: 25, scope: !5944)
!5957 = !DILocation(line: 457, column: 30, scope: !5944)
!5958 = !DILocation(line: 457, column: 14, scope: !5944)
!5959 = !DILocation(line: 457, column: 12, scope: !5944)
!5960 = !DILocation(line: 459, column: 39, scope: !5944)
!5961 = !DILocation(line: 459, column: 50, scope: !5944)
!5962 = !DILocation(line: 459, column: 2, scope: !5944)
!5963 = !DILocation(line: 461, column: 2, scope: !5944)
!5964 = distinct !DISubprogram(name: "pci_get_drvdata", scope: !4420, file: !4420, line: 1865, type: !5965, scopeLine: 1866, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!5965 = !DISubroutineType(types: !5966)
!5966 = !{!157, !4440}
!5967 = !DILocalVariable(name: "pdev", arg: 1, scope: !5964, file: !4420, line: 1865, type: !4440)
!5968 = !DILocation(line: 1865, column: 53, scope: !5964)
!5969 = !DILocation(line: 1867, column: 26, scope: !5964)
!5970 = !DILocation(line: 1867, column: 32, scope: !5964)
!5971 = !DILocation(line: 1867, column: 9, scope: !5964)
!5972 = !DILocation(line: 1867, column: 2, scope: !5964)
!5973 = distinct !DISubprogram(name: "proc_thermal_rapl_remove", scope: !3, file: !3, line: 606, type: !1876, scopeLine: 606, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!5974 = !DILocation(line: 606, column: 45, scope: !5973)
