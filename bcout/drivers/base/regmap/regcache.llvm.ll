; ModuleID = '../bcout/drivers/base/regmap/regcache.llvm.bc'
source_filename = "drivers/base/regmap/regcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.regcache_ops = type { i8*, i32, i32 (%struct.regmap*)*, i32 (%struct.regmap*)*, i32 (%struct.regmap*, i32, i32*)*, i32 (%struct.regmap*, i32, i32)*, i32 (%struct.regmap*, i32, i32)*, i32 (%struct.regmap*, i32, i32)* }
%struct.regmap = type { %union.anon, void (i8*)*, void (i8*)*, i8*, i32, %struct.device*, i8*, %struct.regmap_format, %struct.regmap_bus*, i8*, i8*, i8, %struct.spinlock, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, i32, i1 (%struct.device*, i32)*, i1 (%struct.device*, i32)*, i1 (%struct.device*, i32)*, i1 (%struct.device*, i32)*, i1 (%struct.device*, i32)*, i1 (%struct.device*, i32)*, %struct.regmap_access_table*, %struct.regmap_access_table*, %struct.regmap_access_table*, %struct.regmap_access_table*, %struct.regmap_access_table*, %struct.regmap_access_table*, i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32)*, i32 (i8*, i32, i32, i32)*, i8, i64, i64, i32, i32, i32, %struct.regcache_ops*, i32, i32, i32, i32, i32, i8, i8, i8, %struct.reg_default*, i8*, i8*, i8, i8, %struct.reg_sequence*, i32, i8, i8, i8, i64, i64, %struct.rb_root, i8*, %struct.hwspinlock*, i8 }
%union.anon = type { %struct.mutex }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.65, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.65 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type { %union.anon.1, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.63, %struct.list_head, %struct.list_head, %union.anon.64 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.2, i8* }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.61 }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { %struct.spinlock, i32 }
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
%struct.page = type { i64, %union.anon.4, %union.anon.53, %struct.atomic_t, [8 x i8] }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.53 = type { %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.54, i32 }
%union.anon.54 = type { %struct.kuid_t }
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
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, i32*, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { %struct.task_struct* }
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
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.cpumask = type { [1 x i64] }
%struct.sched_info = type {}
%struct.mm_struct = type { %struct.anon.17, [0 x i64] }
%struct.anon.17 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.18, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.18 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { i64, %struct.atomic64_t, %struct.rw_semaphore, %struct.ldt_struct*, i16, %struct.mutex, i8*, %struct.vdso_image*, %struct.atomic_t, i16, i16 }
%struct.ldt_struct = type opaque
%struct.vdso_image = type opaque
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.mmu_notifier_subscriptions = type opaque
%struct.uprobes_state = type {}
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
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.xarray = type { %struct.spinlock, i32, i8* }
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
%union.anon.63 = type { %struct.list_head }
%union.anon.64 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.55, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.56, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.57, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.60, i32, i32, %struct.fsnotify_mark_connector*, i8* }
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
%struct.poll_table_struct = type opaque
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
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.32 = type { %struct.callback_head }
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
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type opaque
%struct.acpi_device_id = type opaque
%struct.driver_private = type opaque
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
%struct.device_dma_parameters = type { i32, i64 }
%struct.dev_archdata = type {}
%struct.device_node = type opaque
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.regmap_format = type { i64, i64, i64, i64, void (%struct.regmap*, i32, i32)*, void (i8*, i32, i32)*, void (i8*, i32, i32)*, i32 (i8*)*, void (i8*)* }
%struct.regmap_bus = type { i8, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64, i8*, i64)*, i32 (i8*, i8*, i64, i8*, i64, %struct.regmap_async*)*, i32 (i8*, i32, i32)*, i32 (i8*, i32, i32, i32)*, i32 (i8*, i8*, i64, i8*, i64)*, i32 (i8*, i32, i32*)*, void (i8*)*, %struct.regmap_async* ()*, i8, i32, i32, i64, i64 }
%struct.regmap_async = type { %struct.list_head, %struct.regmap*, i8* }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.regmap_access_table = type { %struct.regmap_range*, i32, %struct.regmap_range*, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.reg_default = type { i32, i32 }
%struct.reg_sequence = type { i32, i32, i32 }
%struct.rb_root = type { %struct.rb_node* }
%struct.hwspinlock = type opaque
%struct.kmem_cache = type opaque
%struct.regmap_config = type { i8*, i32, i32, i32, i32, i1 (%struct.device*, i32)*, i1 (%struct.device*, i32)*, i1 (%struct.device*, i32)*, i1 (%struct.device*, i32)*, i1 (%struct.device*, i32)*, i1 (%struct.device*, i32)*, i8, void (i8*)*, void (i8*)*, i8*, i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32)*, i8, i32, %struct.regmap_access_table*, %struct.regmap_access_table*, %struct.regmap_access_table*, %struct.regmap_access_table*, %struct.regmap_access_table*, %struct.regmap_access_table*, %struct.reg_default*, i32, i32, i8*, i32, i64, i64, i8, i8, i8, i8, i32, i32, %struct.regmap_range_cfg*, i32, i8, i32, i32, i8 }
%struct.regmap_range_cfg = type { i8*, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"No cache used with register defaults set!\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Register defaults are set without the number!\0A\00", align 1
@cache_types = internal global [2 x %struct.regcache_ops*] [%struct.regcache_ops* @regcache_rbtree_ops, %struct.regcache_ops* @regcache_flat_ops], align 16, !dbg !0
@.str.2 = private unnamed_addr constant [35 x i8] c"Could not match compress type: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"drivers/base/regmap/regcache.c\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Failed to write %x = %x: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"start region\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"stop region\00", align 1
@regcache_rbtree_ops = external dso_local global %struct.regcache_ops, align 8
@regcache_flat_ops = external dso_local global %struct.regcache_ops, align 8
@.str.9 = private unnamed_addr constant [41 x i8] c"No cache defaults, reading back from HW\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"Failed to read %d: %d\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.11 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"Unable to sync register %#x. %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"Unable to sync registers %#x-%#x. %d\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @regcache_init(%struct.regmap* %map, %struct.regmap_config* %config) #0 !dbg !3764 {
entry:
  %retval = alloca i32, align 4
  %map.addr = alloca %struct.regmap*, align 8
  %config.addr = alloca %struct.regmap_config*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %tmp_buf = alloca i8*, align 8
  store %struct.regmap* %map, %struct.regmap** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.regmap** %map.addr, metadata !3829, metadata !DIExpression()), !dbg !3830
  store %struct.regmap_config* %config, %struct.regmap_config** %config.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.regmap_config** %config.addr, metadata !3831, metadata !DIExpression()), !dbg !3832
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3833, metadata !DIExpression()), !dbg !3834
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3835, metadata !DIExpression()), !dbg !3836
  call void @llvm.dbg.declare(metadata i8** %tmp_buf, metadata !3837, metadata !DIExpression()), !dbg !3838
  %0 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !3839
  %cache_type = getelementptr inbounds %struct.regmap, %struct.regmap* %0, i32 0, i32 40, !dbg !3841
  %1 = load i32, i32* %cache_type, align 8, !dbg !3841
  %cmp = icmp eq i32 %1, 0, !dbg !3842
  br i1 %cmp, label %if.then, label %if.end3, !dbg !3843

if.then:                                          ; preds = %entry
  %2 = load %struct.regmap_config*, %struct.regmap_config** %config.addr, align 8, !dbg !3844
  %reg_defaults = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %2, i32 0, i32 25, !dbg !3847
  %3 = load %struct.reg_default*, %struct.reg_default** %reg_defaults, align 8, !dbg !3847
  %tobool = icmp ne %struct.reg_default* %3, null, !dbg !3844
  br i1 %tobool, label %if.then2, label %lor.lhs.false, !dbg !3848

lor.lhs.false:                                    ; preds = %if.then
  %4 = load %struct.regmap_config*, %struct.regmap_config** %config.addr, align 8, !dbg !3849
  %num_reg_defaults_raw = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %4, i32 0, i32 29, !dbg !3850
  %5 = load i32, i32* %num_reg_defaults_raw, align 8, !dbg !3850
  %tobool1 = icmp ne i32 %5, 0, !dbg !3849
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !3851

if.then2:                                         ; preds = %lor.lhs.false, %if.then
  %6 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !3852
  %dev = getelementptr inbounds %struct.regmap, %struct.regmap* %6, i32 0, i32 5, !dbg !3852
  %7 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3852
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %7, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0)) #7, !dbg !3852
  br label %if.end, !dbg !3852

if.end:                                           ; preds = %if.then2, %lor.lhs.false
  %8 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !3853
  %cache_bypass = getelementptr inbounds %struct.regmap, %struct.regmap* %8, i32 0, i32 46, !dbg !3854
  store i8 1, i8* %cache_bypass, align 1, !dbg !3855
  store i32 0, i32* %retval, align 4, !dbg !3856
  br label %return, !dbg !3856

if.end3:                                          ; preds = %entry
  %9 = load %struct.regmap_config*, %struct.regmap_config** %config.addr, align 8, !dbg !3857
  %reg_defaults4 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %9, i32 0, i32 25, !dbg !3859
  %10 = load %struct.reg_default*, %struct.reg_default** %reg_defaults4, align 8, !dbg !3859
  %tobool5 = icmp ne %struct.reg_default* %10, null, !dbg !3857
  br i1 %tobool5, label %land.lhs.true, label %if.end9, !dbg !3860

land.lhs.true:                                    ; preds = %if.end3
  %11 = load %struct.regmap_config*, %struct.regmap_config** %config.addr, align 8, !dbg !3861
  %num_reg_defaults = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %11, i32 0, i32 26, !dbg !3862
  %12 = load i32, i32* %num_reg_defaults, align 8, !dbg !3862
  %tobool6 = icmp ne i32 %12, 0, !dbg !3861
  br i1 %tobool6, label %if.end9, label %if.then7, !dbg !3863

if.then7:                                         ; preds = %land.lhs.true
  %13 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !3864
  %dev8 = getelementptr inbounds %struct.regmap, %struct.regmap* %13, i32 0, i32 5, !dbg !3864
  %14 = load %struct.device*, %struct.device** %dev8, align 8, !dbg !3864
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %14, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !3864
  store i32 -22, i32* %retval, align 4, !dbg !3866
  br label %return, !dbg !3866

if.end9:                                          ; preds = %land.lhs.true, %if.end3
  store i32 0, i32* %i, align 4, !dbg !3867
  br label %for.cond, !dbg !3869

for.cond:                                         ; preds = %for.inc, %if.end9
  %15 = load i32, i32* %i, align 4, !dbg !3870
  %16 = load %struct.regmap_config*, %struct.regmap_config** %config.addr, align 8, !dbg !3872
  %num_reg_defaults10 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %16, i32 0, i32 26, !dbg !3873
  %17 = load i32, i32* %num_reg_defaults10, align 8, !dbg !3873
  %cmp11 = icmp ult i32 %15, %17, !dbg !3874
  br i1 %cmp11, label %for.body, label %for.end, !dbg !3875

for.body:                                         ; preds = %for.cond
  %18 = load %struct.regmap_config*, %struct.regmap_config** %config.addr, align 8, !dbg !3876
  %reg_defaults12 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %18, i32 0, i32 25, !dbg !3878
  %19 = load %struct.reg_default*, %struct.reg_default** %reg_defaults12, align 8, !dbg !3878
  %20 = load i32, i32* %i, align 4, !dbg !3879
  %idxprom = sext i32 %20 to i64, !dbg !3876
  %arrayidx = getelementptr %struct.reg_default, %struct.reg_default* %19, i64 %idxprom, !dbg !3876
  %reg = getelementptr inbounds %struct.reg_default, %struct.reg_default* %arrayidx, i32 0, i32 0, !dbg !3880
  %21 = load i32, i32* %reg, align 4, !dbg !3880
  %22 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !3881
  %reg_stride = getelementptr inbounds %struct.regmap, %struct.regmap* %22, i32 0, i32 37, !dbg !3882
  %23 = load i32, i32* %reg_stride, align 4, !dbg !3882
  %rem = urem i32 %21, %23, !dbg !3883
  %tobool13 = icmp ne i32 %rem, 0, !dbg !3883
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !3884

if.then14:                                        ; preds = %for.body
  store i32 -22, i32* %retval, align 4, !dbg !3885
  br label %return, !dbg !3885

if.end15:                                         ; preds = %for.body
  br label %for.inc, !dbg !3882

for.inc:                                          ; preds = %if.end15
  %24 = load i32, i32* %i, align 4, !dbg !3886
  %inc = add i32 %24, 1, !dbg !3886
  store i32 %inc, i32* %i, align 4, !dbg !3886
  br label %for.cond, !dbg !3887, !llvm.loop !3888

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !3890
  br label %for.cond16, !dbg !3892

for.cond16:                                       ; preds = %for.inc27, %for.end
  %25 = load i32, i32* %i, align 4, !dbg !3893
  %conv = sext i32 %25 to i64, !dbg !3893
  %cmp17 = icmp ult i64 %conv, 2, !dbg !3895
  br i1 %cmp17, label %for.body19, label %for.end29, !dbg !3896

for.body19:                                       ; preds = %for.cond16
  %26 = load i32, i32* %i, align 4, !dbg !3897
  %idxprom20 = sext i32 %26 to i64, !dbg !3899
  %arrayidx21 = getelementptr [2 x %struct.regcache_ops*], [2 x %struct.regcache_ops*]* @cache_types, i64 0, i64 %idxprom20, !dbg !3899
  %27 = load %struct.regcache_ops*, %struct.regcache_ops** %arrayidx21, align 8, !dbg !3899
  %type = getelementptr inbounds %struct.regcache_ops, %struct.regcache_ops* %27, i32 0, i32 1, !dbg !3900
  %28 = load i32, i32* %type, align 8, !dbg !3900
  %29 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !3901
  %cache_type22 = getelementptr inbounds %struct.regmap, %struct.regmap* %29, i32 0, i32 40, !dbg !3902
  %30 = load i32, i32* %cache_type22, align 8, !dbg !3902
  %cmp23 = icmp eq i32 %28, %30, !dbg !3903
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !3904

if.then25:                                        ; preds = %for.body19
  br label %for.end29, !dbg !3905

if.end26:                                         ; preds = %for.body19
  br label %for.inc27, !dbg !3902

for.inc27:                                        ; preds = %if.end26
  %31 = load i32, i32* %i, align 4, !dbg !3906
  %inc28 = add i32 %31, 1, !dbg !3906
  store i32 %inc28, i32* %i, align 4, !dbg !3906
  br label %for.cond16, !dbg !3907, !llvm.loop !3908

for.end29:                                        ; preds = %if.then25, %for.cond16
  %32 = load i32, i32* %i, align 4, !dbg !3910
  %conv30 = sext i32 %32 to i64, !dbg !3910
  %cmp31 = icmp eq i64 %conv30, 2, !dbg !3912
  br i1 %cmp31, label %if.then33, label %if.end36, !dbg !3913

if.then33:                                        ; preds = %for.end29
  %33 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !3914
  %dev34 = getelementptr inbounds %struct.regmap, %struct.regmap* %33, i32 0, i32 5, !dbg !3914
  %34 = load %struct.device*, %struct.device** %dev34, align 8, !dbg !3914
  %35 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !3914
  %cache_type35 = getelementptr inbounds %struct.regmap, %struct.regmap* %35, i32 0, i32 40, !dbg !3914
  %36 = load i32, i32* %cache_type35, align 8, !dbg !3914
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %36) #7, !dbg !3914
  store i32 -22, i32* %retval, align 4, !dbg !3916
  br label %return, !dbg !3916

if.end36:                                         ; preds = %for.end29
  %37 = load %struct.regmap_config*, %struct.regmap_config** %config.addr, align 8, !dbg !3917
  %num_reg_defaults37 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %37, i32 0, i32 26, !dbg !3918
  %38 = load i32, i32* %num_reg_defaults37, align 8, !dbg !3918
  %39 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !3919
  %num_reg_defaults38 = getelementptr inbounds %struct.regmap, %struct.regmap* %39, i32 0, i32 43, !dbg !3920
  store i32 %38, i32* %num_reg_defaults38, align 4, !dbg !3921
  %40 = load %struct.regmap_config*, %struct.regmap_config** %config.addr, align 8, !dbg !3922
  %num_reg_defaults_raw39 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %40, i32 0, i32 29, !dbg !3923
  %41 = load i32, i32* %num_reg_defaults_raw39, align 8, !dbg !3923
  %42 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !3924
  %num_reg_defaults_raw40 = getelementptr inbounds %struct.regmap, %struct.regmap* %42, i32 0, i32 44, !dbg !3925
  store i32 %41, i32* %num_reg_defaults_raw40, align 8, !dbg !3926
  %43 = load %struct.regmap_config*, %struct.regmap_config** %config.addr, align 8, !dbg !3927
  %reg_defaults_raw = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %43, i32 0, i32 28, !dbg !3928
  %44 = load i8*, i8** %reg_defaults_raw, align 8, !dbg !3928
  %45 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !3929
  %reg_defaults_raw41 = getelementptr inbounds %struct.regmap, %struct.regmap* %45, i32 0, i32 49, !dbg !3930
  store i8* %44, i8** %reg_defaults_raw41, align 8, !dbg !3931
  %46 = load %struct.regmap_config*, %struct.regmap_config** %config.addr, align 8, !dbg !3932
  %val_bits = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %46, i32 0, i32 4, !dbg !3932
  %47 = load i32, i32* %val_bits, align 4, !dbg !3932
  %add = add i32 %47, 8, !dbg !3932
  %sub = sub i32 %add, 1, !dbg !3932
  %div = sdiv i32 %sub, 8, !dbg !3932
  %48 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !3933
  %cache_word_size = getelementptr inbounds %struct.regmap, %struct.regmap* %48, i32 0, i32 42, !dbg !3934
  store i32 %div, i32* %cache_word_size, align 8, !dbg !3935
  %49 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !3936
  %cache_word_size42 = getelementptr inbounds %struct.regmap, %struct.regmap* %49, i32 0, i32 42, !dbg !3937
  %50 = load i32, i32* %cache_word_size42, align 8, !dbg !3937
  %51 = load %struct.regmap_config*, %struct.regmap_config** %config.addr, align 8, !dbg !3938
  %num_reg_defaults_raw43 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %51, i32 0, i32 29, !dbg !3939
  %52 = load i32, i32* %num_reg_defaults_raw43, align 8, !dbg !3939
  %mul = mul i32 %50, %52, !dbg !3940
  %53 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !3941
  %cache_size_raw = getelementptr inbounds %struct.regmap, %struct.regmap* %53, i32 0, i32 41, !dbg !3942
  store i32 %mul, i32* %cache_size_raw, align 4, !dbg !3943
  %54 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !3944
  %cache = getelementptr inbounds %struct.regmap, %struct.regmap* %54, i32 0, i32 50, !dbg !3945
  store i8* null, i8** %cache, align 8, !dbg !3946
  %55 = load i32, i32* %i, align 4, !dbg !3947
  %idxprom44 = sext i32 %55 to i64, !dbg !3948
  %arrayidx45 = getelementptr [2 x %struct.regcache_ops*], [2 x %struct.regcache_ops*]* @cache_types, i64 0, i64 %idxprom44, !dbg !3948
  %56 = load %struct.regcache_ops*, %struct.regcache_ops** %arrayidx45, align 8, !dbg !3948
  %57 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !3949
  %cache_ops = getelementptr inbounds %struct.regmap, %struct.regmap* %57, i32 0, i32 39, !dbg !3950
  store %struct.regcache_ops* %56, %struct.regcache_ops** %cache_ops, align 8, !dbg !3951
  %58 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !3952
  %cache_ops46 = getelementptr inbounds %struct.regmap, %struct.regmap* %58, i32 0, i32 39, !dbg !3954
  %59 = load %struct.regcache_ops*, %struct.regcache_ops** %cache_ops46, align 8, !dbg !3954
  %read = getelementptr inbounds %struct.regcache_ops, %struct.regcache_ops* %59, i32 0, i32 4, !dbg !3955
  %60 = load i32 (%struct.regmap*, i32, i32*)*, i32 (%struct.regmap*, i32, i32*)** %read, align 8, !dbg !3955
  %tobool47 = icmp ne i32 (%struct.regmap*, i32, i32*)* %60, null, !dbg !3952
  br i1 %tobool47, label %lor.lhs.false48, label %if.then54, !dbg !3956

lor.lhs.false48:                                  ; preds = %if.end36
  %61 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !3957
  %cache_ops49 = getelementptr inbounds %struct.regmap, %struct.regmap* %61, i32 0, i32 39, !dbg !3958
  %62 = load %struct.regcache_ops*, %struct.regcache_ops** %cache_ops49, align 8, !dbg !3958
  %write = getelementptr inbounds %struct.regcache_ops, %struct.regcache_ops* %62, i32 0, i32 5, !dbg !3959
  %63 = load i32 (%struct.regmap*, i32, i32)*, i32 (%struct.regmap*, i32, i32)** %write, align 8, !dbg !3959
  %tobool50 = icmp ne i32 (%struct.regmap*, i32, i32)* %63, null, !dbg !3957
  br i1 %tobool50, label %lor.lhs.false51, label %if.then54, !dbg !3960

lor.lhs.false51:                                  ; preds = %lor.lhs.false48
  %64 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !3961
  %cache_ops52 = getelementptr inbounds %struct.regmap, %struct.regmap* %64, i32 0, i32 39, !dbg !3962
  %65 = load %struct.regcache_ops*, %struct.regcache_ops** %cache_ops52, align 8, !dbg !3962
  %name = getelementptr inbounds %struct.regcache_ops, %struct.regcache_ops* %65, i32 0, i32 0, !dbg !3963
  %66 = load i8*, i8** %name, align 8, !dbg !3963
  %tobool53 = icmp ne i8* %66, null, !dbg !3961
  br i1 %tobool53, label %if.end55, label %if.then54, !dbg !3964

if.then54:                                        ; preds = %lor.lhs.false51, %lor.lhs.false48, %if.end36
  store i32 -22, i32* %retval, align 4, !dbg !3965
  br label %return, !dbg !3965

if.end55:                                         ; preds = %lor.lhs.false51
  %67 = load %struct.regmap_config*, %struct.regmap_config** %config.addr, align 8, !dbg !3966
  %reg_defaults56 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %67, i32 0, i32 25, !dbg !3968
  %68 = load %struct.reg_default*, %struct.reg_default** %reg_defaults56, align 8, !dbg !3968
  %tobool57 = icmp ne %struct.reg_default* %68, null, !dbg !3966
  br i1 %tobool57, label %if.then58, label %if.else, !dbg !3969

if.then58:                                        ; preds = %if.end55
  %69 = load %struct.regmap_config*, %struct.regmap_config** %config.addr, align 8, !dbg !3970
  %reg_defaults59 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %69, i32 0, i32 25, !dbg !3972
  %70 = load %struct.reg_default*, %struct.reg_default** %reg_defaults59, align 8, !dbg !3972
  %71 = bitcast %struct.reg_default* %70 to i8*, !dbg !3970
  %72 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !3973
  %num_reg_defaults60 = getelementptr inbounds %struct.regmap, %struct.regmap* %72, i32 0, i32 43, !dbg !3974
  %73 = load i32, i32* %num_reg_defaults60, align 4, !dbg !3974
  %conv61 = zext i32 %73 to i64, !dbg !3973
  %mul62 = mul i64 %conv61, 8, !dbg !3975
  %call = call i8* @kmemdup(i8* %71, i64 %mul62, i32 3264) #8, !dbg !3976
  store i8* %call, i8** %tmp_buf, align 8, !dbg !3977
  %74 = load i8*, i8** %tmp_buf, align 8, !dbg !3978
  %tobool63 = icmp ne i8* %74, null, !dbg !3978
  br i1 %tobool63, label %if.end65, label %if.then64, !dbg !3980

if.then64:                                        ; preds = %if.then58
  store i32 -12, i32* %retval, align 4, !dbg !3981
  br label %return, !dbg !3981

if.end65:                                         ; preds = %if.then58
  %75 = load i8*, i8** %tmp_buf, align 8, !dbg !3982
  %76 = bitcast i8* %75 to %struct.reg_default*, !dbg !3982
  %77 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !3983
  %reg_defaults66 = getelementptr inbounds %struct.regmap, %struct.regmap* %77, i32 0, i32 48, !dbg !3984
  store %struct.reg_default* %76, %struct.reg_default** %reg_defaults66, align 8, !dbg !3985
  br label %if.end80, !dbg !3986

if.else:                                          ; preds = %if.end55
  %78 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !3987
  %num_reg_defaults_raw67 = getelementptr inbounds %struct.regmap, %struct.regmap* %78, i32 0, i32 44, !dbg !3989
  %79 = load i32, i32* %num_reg_defaults_raw67, align 8, !dbg !3989
  %tobool68 = icmp ne i32 %79, 0, !dbg !3987
  br i1 %tobool68, label %if.then69, label %if.end79, !dbg !3990

if.then69:                                        ; preds = %if.else
  %80 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !3991
  %call70 = call i32 @regcache_hw_init(%struct.regmap* %80) #8, !dbg !3993
  store i32 %call70, i32* %ret, align 4, !dbg !3994
  %81 = load i32, i32* %ret, align 4, !dbg !3995
  %cmp71 = icmp slt i32 %81, 0, !dbg !3997
  br i1 %cmp71, label %if.then73, label %if.end74, !dbg !3998

if.then73:                                        ; preds = %if.then69
  %82 = load i32, i32* %ret, align 4, !dbg !3999
  store i32 %82, i32* %retval, align 4, !dbg !4000
  br label %return, !dbg !4000

if.end74:                                         ; preds = %if.then69
  %83 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4001
  %cache_bypass75 = getelementptr inbounds %struct.regmap, %struct.regmap* %83, i32 0, i32 46, !dbg !4003
  %84 = load i8, i8* %cache_bypass75, align 1, !dbg !4003
  %tobool76 = trunc i8 %84 to i1, !dbg !4003
  br i1 %tobool76, label %if.then77, label %if.end78, !dbg !4004

if.then77:                                        ; preds = %if.end74
  store i32 0, i32* %retval, align 4, !dbg !4005
  br label %return, !dbg !4005

if.end78:                                         ; preds = %if.end74
  br label %if.end79, !dbg !4006

if.end79:                                         ; preds = %if.end78, %if.else
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.end65
  %85 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4007
  %max_register = getelementptr inbounds %struct.regmap, %struct.regmap* %85, i32 0, i32 17, !dbg !4009
  %86 = load i32, i32* %max_register, align 4, !dbg !4009
  %tobool81 = icmp ne i32 %86, 0, !dbg !4007
  br i1 %tobool81, label %if.end85, label %if.then82, !dbg !4010

if.then82:                                        ; preds = %if.end80
  %87 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4011
  %num_reg_defaults_raw83 = getelementptr inbounds %struct.regmap, %struct.regmap* %87, i32 0, i32 44, !dbg !4012
  %88 = load i32, i32* %num_reg_defaults_raw83, align 8, !dbg !4012
  %89 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4013
  %max_register84 = getelementptr inbounds %struct.regmap, %struct.regmap* %89, i32 0, i32 17, !dbg !4014
  store i32 %88, i32* %max_register84, align 4, !dbg !4015
  br label %if.end85, !dbg !4013

if.end85:                                         ; preds = %if.then82, %if.end80
  %90 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4016
  %cache_ops86 = getelementptr inbounds %struct.regmap, %struct.regmap* %90, i32 0, i32 39, !dbg !4018
  %91 = load %struct.regcache_ops*, %struct.regcache_ops** %cache_ops86, align 8, !dbg !4018
  %init = getelementptr inbounds %struct.regcache_ops, %struct.regcache_ops* %91, i32 0, i32 2, !dbg !4019
  %92 = load i32 (%struct.regmap*)*, i32 (%struct.regmap*)** %init, align 8, !dbg !4019
  %tobool87 = icmp ne i32 (%struct.regmap*)* %92, null, !dbg !4016
  br i1 %tobool87, label %if.then88, label %if.end95, !dbg !4020

if.then88:                                        ; preds = %if.end85
  %93 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4021
  %cache_ops89 = getelementptr inbounds %struct.regmap, %struct.regmap* %93, i32 0, i32 39, !dbg !4023
  %94 = load %struct.regcache_ops*, %struct.regcache_ops** %cache_ops89, align 8, !dbg !4023
  %init90 = getelementptr inbounds %struct.regcache_ops, %struct.regcache_ops* %94, i32 0, i32 2, !dbg !4024
  %95 = load i32 (%struct.regmap*)*, i32 (%struct.regmap*)** %init90, align 8, !dbg !4024
  %96 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4025
  %call91 = call i32 %95(%struct.regmap* %96) #8, !dbg !4021
  store i32 %call91, i32* %ret, align 4, !dbg !4026
  %97 = load i32, i32* %ret, align 4, !dbg !4027
  %tobool92 = icmp ne i32 %97, 0, !dbg !4027
  br i1 %tobool92, label %if.then93, label %if.end94, !dbg !4029

if.then93:                                        ; preds = %if.then88
  br label %err_free, !dbg !4030

if.end94:                                         ; preds = %if.then88
  br label %if.end95, !dbg !4031

if.end95:                                         ; preds = %if.end94, %if.end85
  store i32 0, i32* %retval, align 4, !dbg !4032
  br label %return, !dbg !4032

err_free:                                         ; preds = %if.then93
  call void @llvm.dbg.label(metadata !4033), !dbg !4034
  %98 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4035
  %reg_defaults96 = getelementptr inbounds %struct.regmap, %struct.regmap* %98, i32 0, i32 48, !dbg !4036
  %99 = load %struct.reg_default*, %struct.reg_default** %reg_defaults96, align 8, !dbg !4036
  %100 = bitcast %struct.reg_default* %99 to i8*, !dbg !4035
  call void @kfree(i8* %100) #8, !dbg !4037
  %101 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4038
  %cache_free = getelementptr inbounds %struct.regmap, %struct.regmap* %101, i32 0, i32 47, !dbg !4040
  %102 = load i8, i8* %cache_free, align 2, !dbg !4040
  %tobool97 = trunc i8 %102 to i1, !dbg !4040
  br i1 %tobool97, label %if.then98, label %if.end100, !dbg !4041

if.then98:                                        ; preds = %err_free
  %103 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4042
  %reg_defaults_raw99 = getelementptr inbounds %struct.regmap, %struct.regmap* %103, i32 0, i32 49, !dbg !4043
  %104 = load i8*, i8** %reg_defaults_raw99, align 8, !dbg !4043
  call void @kfree(i8* %104) #8, !dbg !4044
  br label %if.end100, !dbg !4044

if.end100:                                        ; preds = %if.then98, %err_free
  %105 = load i32, i32* %ret, align 4, !dbg !4045
  store i32 %105, i32* %retval, align 4, !dbg !4046
  br label %return, !dbg !4046

return:                                           ; preds = %if.end100, %if.end95, %if.then77, %if.then73, %if.then64, %if.then54, %if.then33, %if.then14, %if.then7, %if.end
  %106 = load i32, i32* %retval, align 4, !dbg !4047
  ret i32 %106, !dbg !4047
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #2

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i8* @kmemdup(i8*, i64, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @regcache_hw_init(%struct.regmap* %map) #0 !dbg !4048 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4049, metadata !DIExpression()), !dbg !4053
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4063, metadata !DIExpression()), !dbg !4064
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4065, metadata !DIExpression()), !dbg !4066
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4067, metadata !DIExpression()), !dbg !4068
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4069, metadata !DIExpression()), !dbg !4073
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4075, metadata !DIExpression()), !dbg !4079
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4081, metadata !DIExpression()), !dbg !4085
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4090, metadata !DIExpression()), !dbg !4091
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4092, metadata !DIExpression()), !dbg !4093
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4094, metadata !DIExpression()), !dbg !4095
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4096, metadata !DIExpression()), !dbg !4097
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4098, metadata !DIExpression()), !dbg !4099
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4100, metadata !DIExpression()), !dbg !4101
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4102, metadata !DIExpression()), !dbg !4103
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4104, metadata !DIExpression()), !dbg !4105
  %retval = alloca i32, align 4
  %map.addr = alloca %struct.regmap*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ret = alloca i32, align 4
  %count = alloca i32, align 4
  %reg = alloca i32, align 4
  %val = alloca i32, align 4
  %tmp_buf = alloca i8*, align 8
  %cache_bypass18 = alloca i8, align 1
  %cache_bypass58 = alloca i8, align 1
  store %struct.regmap* %map, %struct.regmap** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.regmap** %map.addr, metadata !4106, metadata !DIExpression()), !dbg !4107
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4108, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.declare(metadata i32* %j, metadata !4110, metadata !DIExpression()), !dbg !4111
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4112, metadata !DIExpression()), !dbg !4113
  call void @llvm.dbg.declare(metadata i32* %count, metadata !4114, metadata !DIExpression()), !dbg !4115
  call void @llvm.dbg.declare(metadata i32* %reg, metadata !4116, metadata !DIExpression()), !dbg !4117
  call void @llvm.dbg.declare(metadata i32* %val, metadata !4118, metadata !DIExpression()), !dbg !4119
  call void @llvm.dbg.declare(metadata i8** %tmp_buf, metadata !4120, metadata !DIExpression()), !dbg !4121
  %0 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4122
  %num_reg_defaults_raw = getelementptr inbounds %struct.regmap, %struct.regmap* %0, i32 0, i32 44, !dbg !4124
  %1 = load i32, i32* %num_reg_defaults_raw, align 8, !dbg !4124
  %tobool = icmp ne i32 %1, 0, !dbg !4122
  br i1 %tobool, label %if.end, label %if.then, !dbg !4125

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4126
  br label %return, !dbg !4126

if.end:                                           ; preds = %entry
  store i32 0, i32* %count, align 4, !dbg !4127
  store i32 0, i32* %i, align 4, !dbg !4129
  br label %for.cond, !dbg !4130

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4, !dbg !4131
  %3 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4133
  %num_reg_defaults_raw1 = getelementptr inbounds %struct.regmap, %struct.regmap* %3, i32 0, i32 44, !dbg !4134
  %4 = load i32, i32* %num_reg_defaults_raw1, align 8, !dbg !4134
  %cmp = icmp ult i32 %2, %4, !dbg !4135
  br i1 %cmp, label %for.body, label %for.end, !dbg !4136

for.body:                                         ; preds = %for.cond
  %5 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4137
  %6 = load i32, i32* %i, align 4, !dbg !4139
  %7 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4140
  %reg_stride = getelementptr inbounds %struct.regmap, %struct.regmap* %7, i32 0, i32 37, !dbg !4141
  %8 = load i32, i32* %reg_stride, align 4, !dbg !4141
  %mul = mul i32 %6, %8, !dbg !4142
  %call = call zeroext i1 @regmap_readable(%struct.regmap* %5, i32 %mul) #8, !dbg !4143
  br i1 %call, label %land.lhs.true, label %if.end6, !dbg !4144

land.lhs.true:                                    ; preds = %for.body
  %9 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4145
  %10 = load i32, i32* %i, align 4, !dbg !4146
  %11 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4147
  %reg_stride2 = getelementptr inbounds %struct.regmap, %struct.regmap* %11, i32 0, i32 37, !dbg !4148
  %12 = load i32, i32* %reg_stride2, align 4, !dbg !4148
  %mul3 = mul i32 %10, %12, !dbg !4149
  %call4 = call zeroext i1 @regmap_volatile(%struct.regmap* %9, i32 %mul3) #8, !dbg !4150
  br i1 %call4, label %if.end6, label %if.then5, !dbg !4151

if.then5:                                         ; preds = %land.lhs.true
  %13 = load i32, i32* %count, align 4, !dbg !4152
  %inc = add i32 %13, 1, !dbg !4152
  store i32 %inc, i32* %count, align 4, !dbg !4152
  br label %if.end6, !dbg !4153

if.end6:                                          ; preds = %if.then5, %land.lhs.true, %for.body
  br label %for.inc, !dbg !4154

for.inc:                                          ; preds = %if.end6
  %14 = load i32, i32* %i, align 4, !dbg !4155
  %inc7 = add i32 %14, 1, !dbg !4155
  store i32 %inc7, i32* %i, align 4, !dbg !4155
  br label %for.cond, !dbg !4156, !llvm.loop !4157

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %count, align 4, !dbg !4159
  %tobool8 = icmp ne i32 %15, 0, !dbg !4159
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !4161

if.then9:                                         ; preds = %for.end
  %16 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4162
  %cache_bypass = getelementptr inbounds %struct.regmap, %struct.regmap* %16, i32 0, i32 46, !dbg !4164
  store i8 1, i8* %cache_bypass, align 1, !dbg !4165
  store i32 0, i32* %retval, align 4, !dbg !4166
  br label %return, !dbg !4166

if.end10:                                         ; preds = %for.end
  %17 = load i32, i32* %count, align 4, !dbg !4167
  %18 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4168
  %num_reg_defaults = getelementptr inbounds %struct.regmap, %struct.regmap* %18, i32 0, i32 43, !dbg !4169
  store i32 %17, i32* %num_reg_defaults, align 4, !dbg !4170
  %19 = load i32, i32* %count, align 4, !dbg !4171
  %conv = sext i32 %19 to i64, !dbg !4171
  %call11 = call i8* @kmalloc_array(i64 %conv, i64 8, i32 3264) #8, !dbg !4172
  %20 = bitcast i8* %call11 to %struct.reg_default*, !dbg !4172
  %21 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4173
  %reg_defaults = getelementptr inbounds %struct.regmap, %struct.regmap* %21, i32 0, i32 48, !dbg !4174
  store %struct.reg_default* %20, %struct.reg_default** %reg_defaults, align 8, !dbg !4175
  %22 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4176
  %reg_defaults12 = getelementptr inbounds %struct.regmap, %struct.regmap* %22, i32 0, i32 48, !dbg !4178
  %23 = load %struct.reg_default*, %struct.reg_default** %reg_defaults12, align 8, !dbg !4178
  %tobool13 = icmp ne %struct.reg_default* %23, null, !dbg !4176
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !4179

if.then14:                                        ; preds = %if.end10
  store i32 -12, i32* %retval, align 4, !dbg !4180
  br label %return, !dbg !4180

if.end15:                                         ; preds = %if.end10
  %24 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4181
  %reg_defaults_raw = getelementptr inbounds %struct.regmap, %struct.regmap* %24, i32 0, i32 49, !dbg !4182
  %25 = load i8*, i8** %reg_defaults_raw, align 8, !dbg !4182
  %tobool16 = icmp ne i8* %25, null, !dbg !4181
  br i1 %tobool16, label %if.end38, label %if.then17, !dbg !4183

if.then17:                                        ; preds = %if.end15
  call void @llvm.dbg.declare(metadata i8* %cache_bypass18, metadata !4184, metadata !DIExpression()), !dbg !4185
  %26 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4186
  %cache_bypass19 = getelementptr inbounds %struct.regmap, %struct.regmap* %26, i32 0, i32 46, !dbg !4187
  %27 = load i8, i8* %cache_bypass19, align 1, !dbg !4187
  %tobool20 = trunc i8 %27 to i1, !dbg !4187
  %frombool = zext i1 %tobool20 to i8, !dbg !4185
  store i8 %frombool, i8* %cache_bypass18, align 1, !dbg !4185
  %28 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4188
  %dev = getelementptr inbounds %struct.regmap, %struct.regmap* %28, i32 0, i32 5, !dbg !4188
  %29 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4188
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %29, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0)) #7, !dbg !4188
  %30 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4189
  %cache_bypass21 = getelementptr inbounds %struct.regmap, %struct.regmap* %30, i32 0, i32 46, !dbg !4190
  store i8 1, i8* %cache_bypass21, align 1, !dbg !4191
  %31 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4192
  %cache_size_raw = getelementptr inbounds %struct.regmap, %struct.regmap* %31, i32 0, i32 41, !dbg !4193
  %32 = load i32, i32* %cache_size_raw, align 4, !dbg !4193
  %conv22 = zext i32 %32 to i64, !dbg !4192
  store i64 %conv22, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %33 = load i64, i64* %size.addr.i, align 8, !dbg !4194
  %34 = call i1 @llvm.is.constant.i64(i64 %33) #9, !dbg !4195
  br i1 %34, label %if.then.i, label %if.end9.i, !dbg !4196

if.then.i:                                        ; preds = %if.then17
  %35 = load i64, i64* %size.addr.i, align 8, !dbg !4197
  %cmp.i = icmp ugt i64 %35, 8192, !dbg !4198
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4199

if.then1.i:                                       ; preds = %if.then.i
  %36 = load i64, i64* %size.addr.i, align 8, !dbg !4200
  %37 = load i32, i32* %flags.addr.i, align 4, !dbg !4201
  store i64 %36, i64* %size.addr.i.i, align 8
  store i32 %37, i32* %flags.addr.i.i, align 4
  %38 = load i64, i64* %size.addr.i.i, align 8, !dbg !4202
  %call.i.i = call i32 @get_order(i64 %38) #10, !dbg !4203
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4099
  %39 = load i64, i64* %size.addr.i.i, align 8, !dbg !4204
  %40 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4205
  %41 = load i32, i32* %order.i.i, align 4, !dbg !4206
  store i64 %39, i64* %size.addr.i.i.i, align 8
  store i32 %40, i32* %flags.addr.i.i.i, align 4
  store i32 %41, i32* %order.addr.i.i.i, align 4
  %42 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4207
  %43 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4208
  %44 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4209
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %42, i32 %43, i32 %44) #11, !dbg !4210
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4210
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4210
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4210
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !4210
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4211
  br label %kmalloc.exit, !dbg !4211

if.end.i:                                         ; preds = %if.then.i
  %45 = load i64, i64* %size.addr.i, align 8, !dbg !4212
  store i64 %45, i64* %size.addr.i11.i, align 8
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4213
  %tobool.i.i = icmp ne i64 %46, 0, !dbg !4213
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4215

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4216
  br label %kmalloc_index.exit.i, !dbg !4216

if.end.i.i:                                       ; preds = %if.end.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4217
  %cmp.i.i = icmp ule i64 %47, 8, !dbg !4219
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4220

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4221
  br label %kmalloc_index.exit.i, !dbg !4221

if.end2.i.i:                                      ; preds = %if.end.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4222
  %cmp3.i.i = icmp ugt i64 %48, 64, !dbg !4224
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4225

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4226
  %cmp4.i.i = icmp ule i64 %49, 96, !dbg !4227
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4228

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4229
  br label %kmalloc_index.exit.i, !dbg !4229

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4230
  %cmp7.i.i = icmp ugt i64 %50, 128, !dbg !4232
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4233

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4234
  %cmp9.i.i = icmp ule i64 %51, 192, !dbg !4235
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4236

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4237
  br label %kmalloc_index.exit.i, !dbg !4237

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4238
  %cmp12.i.i = icmp ule i64 %52, 8, !dbg !4240
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4241

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4242
  br label %kmalloc_index.exit.i, !dbg !4242

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4243
  %cmp15.i.i = icmp ule i64 %53, 16, !dbg !4245
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4246

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4247
  br label %kmalloc_index.exit.i, !dbg !4247

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4248
  %cmp18.i.i = icmp ule i64 %54, 32, !dbg !4250
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4251

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4252
  br label %kmalloc_index.exit.i, !dbg !4252

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4253
  %cmp21.i.i = icmp ule i64 %55, 64, !dbg !4255
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4256

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4257
  br label %kmalloc_index.exit.i, !dbg !4257

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4258
  %cmp24.i.i = icmp ule i64 %56, 128, !dbg !4260
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4261

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4262
  br label %kmalloc_index.exit.i, !dbg !4262

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4263
  %cmp27.i.i = icmp ule i64 %57, 256, !dbg !4265
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4266

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4267
  br label %kmalloc_index.exit.i, !dbg !4267

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4268
  %cmp30.i.i = icmp ule i64 %58, 512, !dbg !4270
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4271

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4272
  br label %kmalloc_index.exit.i, !dbg !4272

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %59 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4273
  %cmp33.i.i = icmp ule i64 %59, 1024, !dbg !4275
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4276

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4277
  br label %kmalloc_index.exit.i, !dbg !4277

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %60 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4278
  %cmp36.i.i = icmp ule i64 %60, 2048, !dbg !4280
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4281

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4282
  br label %kmalloc_index.exit.i, !dbg !4282

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %61 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4283
  %cmp39.i.i = icmp ule i64 %61, 4096, !dbg !4285
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4286

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4287
  br label %kmalloc_index.exit.i, !dbg !4287

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %62 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4288
  %cmp42.i.i = icmp ule i64 %62, 8192, !dbg !4290
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4291

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4292
  br label %kmalloc_index.exit.i, !dbg !4292

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %63 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4293
  %cmp45.i.i = icmp ule i64 %63, 16384, !dbg !4295
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4296

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4297
  br label %kmalloc_index.exit.i, !dbg !4297

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %64 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4298
  %cmp48.i.i = icmp ule i64 %64, 32768, !dbg !4300
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4301

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4302
  br label %kmalloc_index.exit.i, !dbg !4302

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %65 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4303
  %cmp51.i.i = icmp ule i64 %65, 65536, !dbg !4305
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4306

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4307
  br label %kmalloc_index.exit.i, !dbg !4307

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %66 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4308
  %cmp54.i.i = icmp ule i64 %66, 131072, !dbg !4310
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4311

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4312
  br label %kmalloc_index.exit.i, !dbg !4312

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %67 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4313
  %cmp57.i.i = icmp ule i64 %67, 262144, !dbg !4315
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4316

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4317
  br label %kmalloc_index.exit.i, !dbg !4317

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %68 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4318
  %cmp60.i.i = icmp ule i64 %68, 524288, !dbg !4320
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4321

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4322
  br label %kmalloc_index.exit.i, !dbg !4322

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %69 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4323
  %cmp63.i.i = icmp ule i64 %69, 1048576, !dbg !4325
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4326

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4327
  br label %kmalloc_index.exit.i, !dbg !4327

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %70 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4328
  %cmp66.i.i = icmp ule i64 %70, 2097152, !dbg !4330
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4331

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4332
  br label %kmalloc_index.exit.i, !dbg !4332

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %71 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4333
  %cmp69.i.i = icmp ule i64 %71, 4194304, !dbg !4335
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4336

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4337
  br label %kmalloc_index.exit.i, !dbg !4337

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %72 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4338
  %cmp72.i.i = icmp ule i64 %72, 8388608, !dbg !4340
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4341

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4342
  br label %kmalloc_index.exit.i, !dbg !4342

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %73 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4343
  %cmp75.i.i = icmp ule i64 %73, 16777216, !dbg !4345
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4346

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4347
  br label %kmalloc_index.exit.i, !dbg !4347

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %74 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4348
  %cmp78.i.i = icmp ule i64 %74, 33554432, !dbg !4350
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4351

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4352
  br label %kmalloc_index.exit.i, !dbg !4352

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %75 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4353
  %cmp81.i.i = icmp ule i64 %75, 67108864, !dbg !4355
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4356

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4357
  br label %kmalloc_index.exit.i, !dbg !4357

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !4358, !srcloc !4361
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 156) #9, !dbg !4362, !srcloc !4365
  unreachable, !dbg !4366

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %76 = load i32, i32* %retval.i.i, align 4, !dbg !4367
  store i32 %76, i32* %index.i, align 4, !dbg !4368
  %77 = load i32, i32* %index.i, align 4, !dbg !4369
  %tobool.i = icmp ne i32 %77, 0, !dbg !4369
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4371

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4372
  br label %kmalloc.exit, !dbg !4372

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %78 = load i32, i32* %flags.addr.i, align 4, !dbg !4373
  store i32 %78, i32* %flags.addr.i13.i, align 4
  %79 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4374
  %and.i.i = and i32 %79, 17, !dbg !4374
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4374
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4374
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4374
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4374
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4376

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4377
  br label %kmalloc_type.exit.i, !dbg !4377

if.end.i16.i:                                     ; preds = %if.end4.i
  %80 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4378
  %and2.i.i = and i32 %80, 1, !dbg !4379
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4378
  %81 = zext i1 %tobool3.i.i to i64, !dbg !4378
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4378
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4380
  br label %kmalloc_type.exit.i, !dbg !4380

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %82 = load i32, i32* %retval.i12.i, align 4, !dbg !4381
  %idxprom.i = zext i32 %82 to i64, !dbg !4382
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4382
  %83 = load i32, i32* %index.i, align 4, !dbg !4383
  %idxprom6.i = zext i32 %83 to i64, !dbg !4382
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4382
  %84 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4382
  %85 = load i32, i32* %flags.addr.i, align 4, !dbg !4384
  %86 = load i64, i64* %size.addr.i, align 8, !dbg !4385
  store %struct.kmem_cache* %84, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %85, i32* %flags.addr.i17.i, align 4
  store i64 %86, i64* %size.addr.i18.i, align 8
  %87 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4386
  %88 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4387
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %87, i32 %88) #11, !dbg !4388
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4388
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4388
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4388
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !4388
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4068
  %89 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4389
  %90 = load i8*, i8** %ret.i.i, align 8, !dbg !4390
  %91 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4391
  %92 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4392
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %89, i8* %90, i64 %91, i32 %92) #11, !dbg !4393
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4394
  %93 = load i8*, i8** %ret.i.i, align 8, !dbg !4395
  store i8* %93, i8** %retval.i, align 8, !dbg !4396
  br label %kmalloc.exit, !dbg !4396

if.end9.i:                                        ; preds = %if.then17
  %94 = load i64, i64* %size.addr.i, align 8, !dbg !4397
  %95 = load i32, i32* %flags.addr.i, align 4, !dbg !4398
  %call10.i = call noalias i8* @__kmalloc(i64 %94, i32 %95) #11, !dbg !4399
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4399
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4399
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4399
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !4399
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4400
  br label %kmalloc.exit, !dbg !4400

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %96 = load i8*, i8** %retval.i, align 8, !dbg !4401
  store i8* %96, i8** %tmp_buf, align 8, !dbg !4402
  %97 = load i8*, i8** %tmp_buf, align 8, !dbg !4403
  %tobool24 = icmp ne i8* %97, null, !dbg !4403
  br i1 %tobool24, label %if.end26, label %if.then25, !dbg !4405

if.then25:                                        ; preds = %kmalloc.exit
  store i32 -12, i32* %ret, align 4, !dbg !4406
  br label %err_free, !dbg !4408

if.end26:                                         ; preds = %kmalloc.exit
  %98 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4409
  %99 = load i8*, i8** %tmp_buf, align 8, !dbg !4410
  %100 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4411
  %cache_size_raw27 = getelementptr inbounds %struct.regmap, %struct.regmap* %100, i32 0, i32 41, !dbg !4412
  %101 = load i32, i32* %cache_size_raw27, align 4, !dbg !4412
  %conv28 = zext i32 %101 to i64, !dbg !4411
  %call29 = call i32 @regmap_raw_read(%struct.regmap* %98, i32 0, i8* %99, i64 %conv28) #8, !dbg !4413
  store i32 %call29, i32* %ret, align 4, !dbg !4414
  %102 = load i8, i8* %cache_bypass18, align 1, !dbg !4415
  %tobool30 = trunc i8 %102 to i1, !dbg !4415
  %103 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4416
  %cache_bypass31 = getelementptr inbounds %struct.regmap, %struct.regmap* %103, i32 0, i32 46, !dbg !4417
  %frombool32 = zext i1 %tobool30 to i8, !dbg !4418
  store i8 %frombool32, i8* %cache_bypass31, align 1, !dbg !4418
  %104 = load i32, i32* %ret, align 4, !dbg !4419
  %cmp33 = icmp eq i32 %104, 0, !dbg !4421
  br i1 %cmp33, label %if.then35, label %if.else, !dbg !4422

if.then35:                                        ; preds = %if.end26
  %105 = load i8*, i8** %tmp_buf, align 8, !dbg !4423
  %106 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4425
  %reg_defaults_raw36 = getelementptr inbounds %struct.regmap, %struct.regmap* %106, i32 0, i32 49, !dbg !4426
  store i8* %105, i8** %reg_defaults_raw36, align 8, !dbg !4427
  %107 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4428
  %cache_free = getelementptr inbounds %struct.regmap, %struct.regmap* %107, i32 0, i32 47, !dbg !4429
  store i8 1, i8* %cache_free, align 2, !dbg !4430
  br label %if.end37, !dbg !4431

if.else:                                          ; preds = %if.end26
  %108 = load i8*, i8** %tmp_buf, align 8, !dbg !4432
  call void @kfree(i8* %108) #8, !dbg !4434
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then35
  br label %if.end38, !dbg !4435

if.end38:                                         ; preds = %if.end37, %if.end15
  store i32 0, i32* %i, align 4, !dbg !4436
  store i32 0, i32* %j, align 4, !dbg !4438
  br label %for.cond39, !dbg !4439

for.cond39:                                       ; preds = %for.inc79, %if.end38
  %109 = load i32, i32* %i, align 4, !dbg !4440
  %110 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4442
  %num_reg_defaults_raw40 = getelementptr inbounds %struct.regmap, %struct.regmap* %110, i32 0, i32 44, !dbg !4443
  %111 = load i32, i32* %num_reg_defaults_raw40, align 8, !dbg !4443
  %cmp41 = icmp ult i32 %109, %111, !dbg !4444
  br i1 %cmp41, label %for.body43, label %for.end81, !dbg !4445

for.body43:                                       ; preds = %for.cond39
  %112 = load i32, i32* %i, align 4, !dbg !4446
  %113 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4448
  %reg_stride44 = getelementptr inbounds %struct.regmap, %struct.regmap* %113, i32 0, i32 37, !dbg !4449
  %114 = load i32, i32* %reg_stride44, align 4, !dbg !4449
  %mul45 = mul i32 %112, %114, !dbg !4450
  store i32 %mul45, i32* %reg, align 4, !dbg !4451
  %115 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4452
  %116 = load i32, i32* %reg, align 4, !dbg !4454
  %call46 = call zeroext i1 @regmap_readable(%struct.regmap* %115, i32 %116) #8, !dbg !4455
  br i1 %call46, label %if.end48, label %if.then47, !dbg !4456

if.then47:                                        ; preds = %for.body43
  br label %for.inc79, !dbg !4457

if.end48:                                         ; preds = %for.body43
  %117 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4458
  %118 = load i32, i32* %reg, align 4, !dbg !4460
  %call49 = call zeroext i1 @regmap_volatile(%struct.regmap* %117, i32 %118) #8, !dbg !4461
  br i1 %call49, label %if.then50, label %if.end51, !dbg !4462

if.then50:                                        ; preds = %if.end48
  br label %for.inc79, !dbg !4463

if.end51:                                         ; preds = %if.end48
  %119 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4464
  %reg_defaults_raw52 = getelementptr inbounds %struct.regmap, %struct.regmap* %119, i32 0, i32 49, !dbg !4466
  %120 = load i8*, i8** %reg_defaults_raw52, align 8, !dbg !4466
  %tobool53 = icmp ne i8* %120, null, !dbg !4464
  br i1 %tobool53, label %if.then54, label %if.else57, !dbg !4467

if.then54:                                        ; preds = %if.end51
  %121 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4468
  %122 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4470
  %reg_defaults_raw55 = getelementptr inbounds %struct.regmap, %struct.regmap* %122, i32 0, i32 49, !dbg !4471
  %123 = load i8*, i8** %reg_defaults_raw55, align 8, !dbg !4471
  %124 = load i32, i32* %i, align 4, !dbg !4472
  %call56 = call i32 @regcache_get_val(%struct.regmap* %121, i8* %123, i32 %124) #8, !dbg !4473
  store i32 %call56, i32* %val, align 4, !dbg !4474
  br label %if.end72, !dbg !4475

if.else57:                                        ; preds = %if.end51
  call void @llvm.dbg.declare(metadata i8* %cache_bypass58, metadata !4476, metadata !DIExpression()), !dbg !4478
  %125 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4479
  %cache_bypass59 = getelementptr inbounds %struct.regmap, %struct.regmap* %125, i32 0, i32 46, !dbg !4480
  %126 = load i8, i8* %cache_bypass59, align 1, !dbg !4480
  %tobool60 = trunc i8 %126 to i1, !dbg !4480
  %frombool61 = zext i1 %tobool60 to i8, !dbg !4478
  store i8 %frombool61, i8* %cache_bypass58, align 1, !dbg !4478
  %127 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4481
  %cache_bypass62 = getelementptr inbounds %struct.regmap, %struct.regmap* %127, i32 0, i32 46, !dbg !4482
  store i8 1, i8* %cache_bypass62, align 1, !dbg !4483
  %128 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4484
  %129 = load i32, i32* %reg, align 4, !dbg !4485
  %call63 = call i32 @regmap_read(%struct.regmap* %128, i32 %129, i32* %val) #8, !dbg !4486
  store i32 %call63, i32* %ret, align 4, !dbg !4487
  %130 = load i8, i8* %cache_bypass58, align 1, !dbg !4488
  %tobool64 = trunc i8 %130 to i1, !dbg !4488
  %131 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4489
  %cache_bypass65 = getelementptr inbounds %struct.regmap, %struct.regmap* %131, i32 0, i32 46, !dbg !4490
  %frombool66 = zext i1 %tobool64 to i8, !dbg !4491
  store i8 %frombool66, i8* %cache_bypass65, align 1, !dbg !4491
  %132 = load i32, i32* %ret, align 4, !dbg !4492
  %cmp67 = icmp ne i32 %132, 0, !dbg !4494
  br i1 %cmp67, label %if.then69, label %if.end71, !dbg !4495

if.then69:                                        ; preds = %if.else57
  %133 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4496
  %dev70 = getelementptr inbounds %struct.regmap, %struct.regmap* %133, i32 0, i32 5, !dbg !4496
  %134 = load %struct.device*, %struct.device** %dev70, align 8, !dbg !4496
  %135 = load i32, i32* %reg, align 4, !dbg !4496
  %136 = load i32, i32* %ret, align 4, !dbg !4496
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %134, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 %135, i32 %136) #7, !dbg !4496
  br label %err_free, !dbg !4498

if.end71:                                         ; preds = %if.else57
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.then54
  %137 = load i32, i32* %reg, align 4, !dbg !4499
  %138 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4500
  %reg_defaults73 = getelementptr inbounds %struct.regmap, %struct.regmap* %138, i32 0, i32 48, !dbg !4501
  %139 = load %struct.reg_default*, %struct.reg_default** %reg_defaults73, align 8, !dbg !4501
  %140 = load i32, i32* %j, align 4, !dbg !4502
  %idxprom = sext i32 %140 to i64, !dbg !4500
  %arrayidx = getelementptr %struct.reg_default, %struct.reg_default* %139, i64 %idxprom, !dbg !4500
  %reg74 = getelementptr inbounds %struct.reg_default, %struct.reg_default* %arrayidx, i32 0, i32 0, !dbg !4503
  store i32 %137, i32* %reg74, align 4, !dbg !4504
  %141 = load i32, i32* %val, align 4, !dbg !4505
  %142 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4506
  %reg_defaults75 = getelementptr inbounds %struct.regmap, %struct.regmap* %142, i32 0, i32 48, !dbg !4507
  %143 = load %struct.reg_default*, %struct.reg_default** %reg_defaults75, align 8, !dbg !4507
  %144 = load i32, i32* %j, align 4, !dbg !4508
  %idxprom76 = sext i32 %144 to i64, !dbg !4506
  %arrayidx77 = getelementptr %struct.reg_default, %struct.reg_default* %143, i64 %idxprom76, !dbg !4506
  %def = getelementptr inbounds %struct.reg_default, %struct.reg_default* %arrayidx77, i32 0, i32 1, !dbg !4509
  store i32 %141, i32* %def, align 4, !dbg !4510
  %145 = load i32, i32* %j, align 4, !dbg !4511
  %inc78 = add i32 %145, 1, !dbg !4511
  store i32 %inc78, i32* %j, align 4, !dbg !4511
  br label %for.inc79, !dbg !4512

for.inc79:                                        ; preds = %if.end72, %if.then50, %if.then47
  %146 = load i32, i32* %i, align 4, !dbg !4513
  %inc80 = add i32 %146, 1, !dbg !4513
  store i32 %inc80, i32* %i, align 4, !dbg !4513
  br label %for.cond39, !dbg !4514, !llvm.loop !4515

for.end81:                                        ; preds = %for.cond39
  store i32 0, i32* %retval, align 4, !dbg !4517
  br label %return, !dbg !4517

err_free:                                         ; preds = %if.then69, %if.then25
  call void @llvm.dbg.label(metadata !4518), !dbg !4519
  %147 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4520
  %reg_defaults82 = getelementptr inbounds %struct.regmap, %struct.regmap* %147, i32 0, i32 48, !dbg !4521
  %148 = load %struct.reg_default*, %struct.reg_default** %reg_defaults82, align 8, !dbg !4521
  %149 = bitcast %struct.reg_default* %148 to i8*, !dbg !4520
  call void @kfree(i8* %149) #8, !dbg !4522
  %150 = load i32, i32* %ret, align 4, !dbg !4523
  store i32 %150, i32* %retval, align 4, !dbg !4524
  br label %return, !dbg !4524

return:                                           ; preds = %err_free, %for.end81, %if.then14, %if.then9, %if.then
  %151 = load i32, i32* %retval, align 4, !dbg !4525
  ret i32 %151, !dbg !4525
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @regcache_exit(%struct.regmap* %map) #0 !dbg !4526 {
entry:
  %map.addr = alloca %struct.regmap*, align 8
  store %struct.regmap* %map, %struct.regmap** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.regmap** %map.addr, metadata !4529, metadata !DIExpression()), !dbg !4530
  %0 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4531
  %cache_type = getelementptr inbounds %struct.regmap, %struct.regmap* %0, i32 0, i32 40, !dbg !4533
  %1 = load i32, i32* %cache_type, align 8, !dbg !4533
  %cmp = icmp eq i32 %1, 0, !dbg !4534
  br i1 %cmp, label %if.then, label %if.end, !dbg !4535

if.then:                                          ; preds = %entry
  br label %if.end22, !dbg !4536

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !4537

do.body:                                          ; preds = %if.end
  %2 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4538
  %cache_ops = getelementptr inbounds %struct.regmap, %struct.regmap* %2, i32 0, i32 39, !dbg !4538
  %3 = load %struct.regcache_ops*, %struct.regcache_ops** %cache_ops, align 8, !dbg !4538
  %tobool = icmp ne %struct.regcache_ops* %3, null, !dbg !4538
  %lnot = xor i1 %tobool, true, !dbg !4538
  %lnot1 = xor i1 %lnot, true, !dbg !4538
  %lnot2 = xor i1 %lnot1, true, !dbg !4538
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4538
  %conv = sext i32 %lnot.ext to i64, !dbg !4538
  %tobool3 = icmp ne i64 %conv, 0, !dbg !4538
  br i1 %tobool3, label %if.then4, label %if.end12, !dbg !4541

if.then4:                                         ; preds = %do.body
  br label %do.body5, !dbg !4538

do.body5:                                         ; preds = %if.then4
  br label %do.body6, !dbg !4542

do.body6:                                         ; preds = %do.body5
  br label %do.end, !dbg !4544

do.end:                                           ; preds = %do.body6
  br label %do.body7, !dbg !4542

do.body7:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 211, i32 0, i64 12) #9, !dbg !4546, !srcloc !4548
  br label %do.end8, !dbg !4546

do.end8:                                          ; preds = %do.body7
  br label %do.body9, !dbg !4542

do.body9:                                         ; preds = %do.end8
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 200) #9, !dbg !4549, !srcloc !4552
  unreachable, !dbg !4553

do.end10:                                         ; No predecessors!
  br label %do.end11, !dbg !4542

do.end11:                                         ; preds = %do.end10
  br label %if.end12, !dbg !4542

if.end12:                                         ; preds = %do.end11, %do.body
  br label %do.end13, !dbg !4541

do.end13:                                         ; preds = %if.end12
  %4 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4554
  %reg_defaults = getelementptr inbounds %struct.regmap, %struct.regmap* %4, i32 0, i32 48, !dbg !4555
  %5 = load %struct.reg_default*, %struct.reg_default** %reg_defaults, align 8, !dbg !4555
  %6 = bitcast %struct.reg_default* %5 to i8*, !dbg !4554
  call void @kfree(i8* %6) #8, !dbg !4556
  %7 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4557
  %cache_free = getelementptr inbounds %struct.regmap, %struct.regmap* %7, i32 0, i32 47, !dbg !4559
  %8 = load i8, i8* %cache_free, align 2, !dbg !4559
  %tobool14 = trunc i8 %8 to i1, !dbg !4559
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !4560

if.then15:                                        ; preds = %do.end13
  %9 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4561
  %reg_defaults_raw = getelementptr inbounds %struct.regmap, %struct.regmap* %9, i32 0, i32 49, !dbg !4562
  %10 = load i8*, i8** %reg_defaults_raw, align 8, !dbg !4562
  call void @kfree(i8* %10) #8, !dbg !4563
  br label %if.end16, !dbg !4563

if.end16:                                         ; preds = %if.then15, %do.end13
  %11 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4564
  %cache_ops17 = getelementptr inbounds %struct.regmap, %struct.regmap* %11, i32 0, i32 39, !dbg !4566
  %12 = load %struct.regcache_ops*, %struct.regcache_ops** %cache_ops17, align 8, !dbg !4566
  %exit = getelementptr inbounds %struct.regcache_ops, %struct.regcache_ops* %12, i32 0, i32 3, !dbg !4567
  %13 = load i32 (%struct.regmap*)*, i32 (%struct.regmap*)** %exit, align 8, !dbg !4567
  %tobool18 = icmp ne i32 (%struct.regmap*)* %13, null, !dbg !4564
  br i1 %tobool18, label %if.then19, label %if.end22, !dbg !4568

if.then19:                                        ; preds = %if.end16
  %14 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4569
  %cache_ops20 = getelementptr inbounds %struct.regmap, %struct.regmap* %14, i32 0, i32 39, !dbg !4571
  %15 = load %struct.regcache_ops*, %struct.regcache_ops** %cache_ops20, align 8, !dbg !4571
  %exit21 = getelementptr inbounds %struct.regcache_ops, %struct.regcache_ops* %15, i32 0, i32 3, !dbg !4572
  %16 = load i32 (%struct.regmap*)*, i32 (%struct.regmap*)** %exit21, align 8, !dbg !4572
  %17 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4573
  %call = call i32 %16(%struct.regmap* %17) #8, !dbg !4569
  br label %if.end22, !dbg !4574

if.end22:                                         ; preds = %if.then, %if.then19, %if.end16
  ret void, !dbg !4575
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @regcache_read(%struct.regmap* %map, i32 %reg, i32* %value) #0 !dbg !4576 {
entry:
  %retval = alloca i32, align 4
  %map.addr = alloca %struct.regmap*, align 8
  %reg.addr = alloca i32, align 4
  %value.addr = alloca i32*, align 8
  %ret = alloca i32, align 4
  store %struct.regmap* %map, %struct.regmap** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.regmap** %map.addr, metadata !4577, metadata !DIExpression()), !dbg !4578
  store i32 %reg, i32* %reg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reg.addr, metadata !4579, metadata !DIExpression()), !dbg !4580
  store i32* %value, i32** %value.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %value.addr, metadata !4581, metadata !DIExpression()), !dbg !4582
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4583, metadata !DIExpression()), !dbg !4584
  %0 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4585
  %cache_type = getelementptr inbounds %struct.regmap, %struct.regmap* %0, i32 0, i32 40, !dbg !4587
  %1 = load i32, i32* %cache_type, align 8, !dbg !4587
  %cmp = icmp eq i32 %1, 0, !dbg !4588
  br i1 %cmp, label %if.then, label %if.end, !dbg !4589

if.then:                                          ; preds = %entry
  store i32 -38, i32* %retval, align 4, !dbg !4590
  br label %return, !dbg !4590

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !4591

do.body:                                          ; preds = %if.end
  %2 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4592
  %cache_ops = getelementptr inbounds %struct.regmap, %struct.regmap* %2, i32 0, i32 39, !dbg !4592
  %3 = load %struct.regcache_ops*, %struct.regcache_ops** %cache_ops, align 8, !dbg !4592
  %tobool = icmp ne %struct.regcache_ops* %3, null, !dbg !4592
  %lnot = xor i1 %tobool, true, !dbg !4592
  %lnot1 = xor i1 %lnot, true, !dbg !4592
  %lnot2 = xor i1 %lnot1, true, !dbg !4592
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4592
  %conv = sext i32 %lnot.ext to i64, !dbg !4592
  %tobool3 = icmp ne i64 %conv, 0, !dbg !4592
  br i1 %tobool3, label %if.then4, label %if.end12, !dbg !4595

if.then4:                                         ; preds = %do.body
  br label %do.body5, !dbg !4592

do.body5:                                         ; preds = %if.then4
  br label %do.body6, !dbg !4596

do.body6:                                         ; preds = %do.body5
  br label %do.end, !dbg !4598

do.end:                                           ; preds = %do.body6
  br label %do.body7, !dbg !4596

do.body7:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 241, i32 0, i64 12) #9, !dbg !4600, !srcloc !4602
  br label %do.end8, !dbg !4600

do.end8:                                          ; preds = %do.body7
  br label %do.body9, !dbg !4596

do.body9:                                         ; preds = %do.end8
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 201) #9, !dbg !4603, !srcloc !4606
  unreachable, !dbg !4607

do.end10:                                         ; No predecessors!
  br label %do.end11, !dbg !4596

do.end11:                                         ; preds = %do.end10
  br label %if.end12, !dbg !4596

if.end12:                                         ; preds = %do.end11, %do.body
  br label %do.end13, !dbg !4595

do.end13:                                         ; preds = %if.end12
  %4 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4608
  %5 = load i32, i32* %reg.addr, align 4, !dbg !4610
  %call = call zeroext i1 @regmap_volatile(%struct.regmap* %4, i32 %5) #8, !dbg !4611
  br i1 %call, label %if.end21, label %if.then14, !dbg !4612

if.then14:                                        ; preds = %do.end13
  %6 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4613
  %cache_ops15 = getelementptr inbounds %struct.regmap, %struct.regmap* %6, i32 0, i32 39, !dbg !4615
  %7 = load %struct.regcache_ops*, %struct.regcache_ops** %cache_ops15, align 8, !dbg !4615
  %read = getelementptr inbounds %struct.regcache_ops, %struct.regcache_ops* %7, i32 0, i32 4, !dbg !4616
  %8 = load i32 (%struct.regmap*, i32, i32*)*, i32 (%struct.regmap*, i32, i32*)** %read, align 8, !dbg !4616
  %9 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4617
  %10 = load i32, i32* %reg.addr, align 4, !dbg !4618
  %11 = load i32*, i32** %value.addr, align 8, !dbg !4619
  %call16 = call i32 %8(%struct.regmap* %9, i32 %10, i32* %11) #8, !dbg !4613
  store i32 %call16, i32* %ret, align 4, !dbg !4620
  %12 = load i32, i32* %ret, align 4, !dbg !4621
  %cmp17 = icmp eq i32 %12, 0, !dbg !4623
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !4624

if.then19:                                        ; preds = %if.then14
  %13 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4625
  %14 = load i32, i32* %reg.addr, align 4, !dbg !4626
  %15 = load i32*, i32** %value.addr, align 8, !dbg !4627
  %16 = load i32, i32* %15, align 4, !dbg !4628
  call void @trace_regmap_reg_read_cache(%struct.regmap* %13, i32 %14, i32 %16) #8, !dbg !4629
  br label %if.end20, !dbg !4629

if.end20:                                         ; preds = %if.then19, %if.then14
  %17 = load i32, i32* %ret, align 4, !dbg !4630
  store i32 %17, i32* %retval, align 4, !dbg !4631
  br label %return, !dbg !4631

if.end21:                                         ; preds = %do.end13
  store i32 -22, i32* %retval, align 4, !dbg !4632
  br label %return, !dbg !4632

return:                                           ; preds = %if.end21, %if.end20, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !4633
  ret i32 %18, !dbg !4633
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @regmap_volatile(%struct.regmap*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @trace_regmap_reg_read_cache(%struct.regmap* %map, i32 %reg, i32 %val) #0 !dbg !4634 {
entry:
  %map.addr = alloca %struct.regmap*, align 8
  %reg.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  store %struct.regmap* %map, %struct.regmap** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.regmap** %map.addr, metadata !4636, metadata !DIExpression()), !dbg !4637
  store i32 %reg, i32* %reg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reg.addr, metadata !4638, metadata !DIExpression()), !dbg !4637
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !4639, metadata !DIExpression()), !dbg !4637
  ret void, !dbg !4637
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @regcache_write(%struct.regmap* %map, i32 %reg, i32 %value) #0 !dbg !4640 {
entry:
  %retval = alloca i32, align 4
  %map.addr = alloca %struct.regmap*, align 8
  %reg.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store %struct.regmap* %map, %struct.regmap** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.regmap** %map.addr, metadata !4641, metadata !DIExpression()), !dbg !4642
  store i32 %reg, i32* %reg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reg.addr, metadata !4643, metadata !DIExpression()), !dbg !4644
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !4645, metadata !DIExpression()), !dbg !4646
  %0 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4647
  %cache_type = getelementptr inbounds %struct.regmap, %struct.regmap* %0, i32 0, i32 40, !dbg !4649
  %1 = load i32, i32* %cache_type, align 8, !dbg !4649
  %cmp = icmp eq i32 %1, 0, !dbg !4650
  br i1 %cmp, label %if.then, label %if.end, !dbg !4651

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4652
  br label %return, !dbg !4652

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !4653

do.body:                                          ; preds = %if.end
  %2 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4654
  %cache_ops = getelementptr inbounds %struct.regmap, %struct.regmap* %2, i32 0, i32 39, !dbg !4654
  %3 = load %struct.regcache_ops*, %struct.regcache_ops** %cache_ops, align 8, !dbg !4654
  %tobool = icmp ne %struct.regcache_ops* %3, null, !dbg !4654
  %lnot = xor i1 %tobool, true, !dbg !4654
  %lnot1 = xor i1 %lnot, true, !dbg !4654
  %lnot2 = xor i1 %lnot1, true, !dbg !4654
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4654
  %conv = sext i32 %lnot.ext to i64, !dbg !4654
  %tobool3 = icmp ne i64 %conv, 0, !dbg !4654
  br i1 %tobool3, label %if.then4, label %if.end12, !dbg !4657

if.then4:                                         ; preds = %do.body
  br label %do.body5, !dbg !4654

do.body5:                                         ; preds = %if.then4
  br label %do.body6, !dbg !4658

do.body6:                                         ; preds = %do.body5
  br label %do.end, !dbg !4660

do.end:                                           ; preds = %do.body6
  br label %do.body7, !dbg !4658

do.body7:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 270, i32 0, i64 12) #9, !dbg !4662, !srcloc !4664
  br label %do.end8, !dbg !4662

do.end8:                                          ; preds = %do.body7
  br label %do.body9, !dbg !4658

do.body9:                                         ; preds = %do.end8
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 202) #9, !dbg !4665, !srcloc !4668
  unreachable, !dbg !4669

do.end10:                                         ; No predecessors!
  br label %do.end11, !dbg !4658

do.end11:                                         ; preds = %do.end10
  br label %if.end12, !dbg !4658

if.end12:                                         ; preds = %do.end11, %do.body
  br label %do.end13, !dbg !4657

do.end13:                                         ; preds = %if.end12
  %4 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4670
  %5 = load i32, i32* %reg.addr, align 4, !dbg !4672
  %call = call zeroext i1 @regmap_volatile(%struct.regmap* %4, i32 %5) #8, !dbg !4673
  br i1 %call, label %if.end17, label %if.then14, !dbg !4674

if.then14:                                        ; preds = %do.end13
  %6 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4675
  %cache_ops15 = getelementptr inbounds %struct.regmap, %struct.regmap* %6, i32 0, i32 39, !dbg !4676
  %7 = load %struct.regcache_ops*, %struct.regcache_ops** %cache_ops15, align 8, !dbg !4676
  %write = getelementptr inbounds %struct.regcache_ops, %struct.regcache_ops* %7, i32 0, i32 5, !dbg !4677
  %8 = load i32 (%struct.regmap*, i32, i32)*, i32 (%struct.regmap*, i32, i32)** %write, align 8, !dbg !4677
  %9 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4678
  %10 = load i32, i32* %reg.addr, align 4, !dbg !4679
  %11 = load i32, i32* %value.addr, align 4, !dbg !4680
  %call16 = call i32 %8(%struct.regmap* %9, i32 %10, i32 %11) #8, !dbg !4675
  store i32 %call16, i32* %retval, align 4, !dbg !4681
  br label %return, !dbg !4681

if.end17:                                         ; preds = %do.end13
  store i32 0, i32* %retval, align 4, !dbg !4682
  br label %return, !dbg !4682

return:                                           ; preds = %if.end17, %if.then14, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !4683
  ret i32 %12, !dbg !4683
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @regcache_sync(%struct.regmap* %map) #0 !dbg !4684 {
entry:
  %map.addr = alloca %struct.regmap*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %name = alloca i8*, align 8
  %bypass = alloca i8, align 1
  store %struct.regmap* %map, %struct.regmap** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.regmap** %map.addr, metadata !4685, metadata !DIExpression()), !dbg !4686
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4687, metadata !DIExpression()), !dbg !4688
  store i32 0, i32* %ret, align 4, !dbg !4688
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4689, metadata !DIExpression()), !dbg !4690
  call void @llvm.dbg.declare(metadata i8** %name, metadata !4691, metadata !DIExpression()), !dbg !4692
  call void @llvm.dbg.declare(metadata i8* %bypass, metadata !4693, metadata !DIExpression()), !dbg !4694
  br label %do.body, !dbg !4695

do.body:                                          ; preds = %entry
  %0 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4696
  %cache_ops = getelementptr inbounds %struct.regmap, %struct.regmap* %0, i32 0, i32 39, !dbg !4696
  %1 = load %struct.regcache_ops*, %struct.regcache_ops** %cache_ops, align 8, !dbg !4696
  %tobool = icmp ne %struct.regcache_ops* %1, null, !dbg !4696
  %lnot = xor i1 %tobool, true, !dbg !4696
  %lnot1 = xor i1 %lnot, true, !dbg !4696
  %lnot2 = xor i1 %lnot1, true, !dbg !4696
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4696
  %conv = sext i32 %lnot.ext to i64, !dbg !4696
  %tobool3 = icmp ne i64 %conv, 0, !dbg !4696
  br i1 %tobool3, label %if.then, label %if.end, !dbg !4699

if.then:                                          ; preds = %do.body
  br label %do.body4, !dbg !4696

do.body4:                                         ; preds = %if.then
  br label %do.body5, !dbg !4700

do.body5:                                         ; preds = %do.body4
  br label %do.end, !dbg !4702

do.end:                                           ; preds = %do.body5
  br label %do.body6, !dbg !4700

do.body6:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 346, i32 0, i64 12) #9, !dbg !4704, !srcloc !4706
  br label %do.end7, !dbg !4704

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !4700

do.body8:                                         ; preds = %do.end7
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 203) #9, !dbg !4707, !srcloc !4710
  unreachable, !dbg !4711

do.end9:                                          ; No predecessors!
  br label %do.end10, !dbg !4700

do.end10:                                         ; preds = %do.end9
  br label %if.end, !dbg !4700

if.end:                                           ; preds = %do.end10, %do.body
  br label %do.end11, !dbg !4699

do.end11:                                         ; preds = %if.end
  %2 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4712
  %lock = getelementptr inbounds %struct.regmap, %struct.regmap* %2, i32 0, i32 1, !dbg !4713
  %3 = load void (i8*)*, void (i8*)** %lock, align 8, !dbg !4713
  %4 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4714
  %lock_arg = getelementptr inbounds %struct.regmap, %struct.regmap* %4, i32 0, i32 3, !dbg !4715
  %5 = load i8*, i8** %lock_arg, align 8, !dbg !4715
  call void %3(i8* %5) #8, !dbg !4712
  %6 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4716
  %cache_bypass = getelementptr inbounds %struct.regmap, %struct.regmap* %6, i32 0, i32 46, !dbg !4717
  %7 = load i8, i8* %cache_bypass, align 1, !dbg !4717
  %tobool12 = trunc i8 %7 to i1, !dbg !4717
  %frombool = zext i1 %tobool12 to i8, !dbg !4718
  store i8 %frombool, i8* %bypass, align 1, !dbg !4718
  %8 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4719
  %cache_ops13 = getelementptr inbounds %struct.regmap, %struct.regmap* %8, i32 0, i32 39, !dbg !4720
  %9 = load %struct.regcache_ops*, %struct.regcache_ops** %cache_ops13, align 8, !dbg !4720
  %name14 = getelementptr inbounds %struct.regcache_ops, %struct.regcache_ops* %9, i32 0, i32 0, !dbg !4721
  %10 = load i8*, i8** %name14, align 8, !dbg !4721
  store i8* %10, i8** %name, align 8, !dbg !4722
  %11 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4723
  %12 = load i8*, i8** %name, align 8, !dbg !4724
  call void @trace_regcache_sync(%struct.regmap* %11, i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !4725
  %13 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4726
  %cache_dirty = getelementptr inbounds %struct.regmap, %struct.regmap* %13, i32 0, i32 51, !dbg !4728
  %14 = load i8, i8* %cache_dirty, align 8, !dbg !4728
  %tobool15 = trunc i8 %14 to i1, !dbg !4728
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !4729

if.then16:                                        ; preds = %do.end11
  br label %out, !dbg !4730

if.end17:                                         ; preds = %do.end11
  %15 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4731
  %async = getelementptr inbounds %struct.regmap, %struct.regmap* %15, i32 0, i32 11, !dbg !4732
  store i8 1, i8* %async, align 8, !dbg !4733
  %16 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4734
  %cache_bypass18 = getelementptr inbounds %struct.regmap, %struct.regmap* %16, i32 0, i32 46, !dbg !4735
  store i8 1, i8* %cache_bypass18, align 1, !dbg !4736
  store i32 0, i32* %i, align 4, !dbg !4737
  br label %for.cond, !dbg !4739

for.cond:                                         ; preds = %for.inc, %if.end17
  %17 = load i32, i32* %i, align 4, !dbg !4740
  %18 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4742
  %patch_regs = getelementptr inbounds %struct.regmap, %struct.regmap* %18, i32 0, i32 54, !dbg !4743
  %19 = load i32, i32* %patch_regs, align 8, !dbg !4743
  %cmp = icmp ult i32 %17, %19, !dbg !4744
  br i1 %cmp, label %for.body, label %for.end, !dbg !4745

for.body:                                         ; preds = %for.cond
  %20 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4746
  %21 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4748
  %patch = getelementptr inbounds %struct.regmap, %struct.regmap* %21, i32 0, i32 53, !dbg !4749
  %22 = load %struct.reg_sequence*, %struct.reg_sequence** %patch, align 8, !dbg !4749
  %23 = load i32, i32* %i, align 4, !dbg !4750
  %idxprom = zext i32 %23 to i64, !dbg !4748
  %arrayidx = getelementptr %struct.reg_sequence, %struct.reg_sequence* %22, i64 %idxprom, !dbg !4748
  %reg = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %arrayidx, i32 0, i32 0, !dbg !4751
  %24 = load i32, i32* %reg, align 4, !dbg !4751
  %25 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4752
  %patch20 = getelementptr inbounds %struct.regmap, %struct.regmap* %25, i32 0, i32 53, !dbg !4753
  %26 = load %struct.reg_sequence*, %struct.reg_sequence** %patch20, align 8, !dbg !4753
  %27 = load i32, i32* %i, align 4, !dbg !4754
  %idxprom21 = zext i32 %27 to i64, !dbg !4752
  %arrayidx22 = getelementptr %struct.reg_sequence, %struct.reg_sequence* %26, i64 %idxprom21, !dbg !4752
  %def = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %arrayidx22, i32 0, i32 1, !dbg !4755
  %28 = load i32, i32* %def, align 4, !dbg !4755
  %call = call i32 @_regmap_write(%struct.regmap* %20, i32 %24, i32 %28) #8, !dbg !4756
  store i32 %call, i32* %ret, align 4, !dbg !4757
  %29 = load i32, i32* %ret, align 4, !dbg !4758
  %cmp23 = icmp ne i32 %29, 0, !dbg !4760
  br i1 %cmp23, label %if.then25, label %if.end34, !dbg !4761

if.then25:                                        ; preds = %for.body
  %30 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4762
  %dev = getelementptr inbounds %struct.regmap, %struct.regmap* %30, i32 0, i32 5, !dbg !4762
  %31 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4762
  %32 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4762
  %patch26 = getelementptr inbounds %struct.regmap, %struct.regmap* %32, i32 0, i32 53, !dbg !4762
  %33 = load %struct.reg_sequence*, %struct.reg_sequence** %patch26, align 8, !dbg !4762
  %34 = load i32, i32* %i, align 4, !dbg !4762
  %idxprom27 = zext i32 %34 to i64, !dbg !4762
  %arrayidx28 = getelementptr %struct.reg_sequence, %struct.reg_sequence* %33, i64 %idxprom27, !dbg !4762
  %reg29 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %arrayidx28, i32 0, i32 0, !dbg !4762
  %35 = load i32, i32* %reg29, align 4, !dbg !4762
  %36 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4762
  %patch30 = getelementptr inbounds %struct.regmap, %struct.regmap* %36, i32 0, i32 53, !dbg !4762
  %37 = load %struct.reg_sequence*, %struct.reg_sequence** %patch30, align 8, !dbg !4762
  %38 = load i32, i32* %i, align 4, !dbg !4762
  %idxprom31 = zext i32 %38 to i64, !dbg !4762
  %arrayidx32 = getelementptr %struct.reg_sequence, %struct.reg_sequence* %37, i64 %idxprom31, !dbg !4762
  %def33 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %arrayidx32, i32 0, i32 1, !dbg !4762
  %39 = load i32, i32* %def33, align 4, !dbg !4762
  %40 = load i32, i32* %ret, align 4, !dbg !4762
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %35, i32 %39, i32 %40) #7, !dbg !4762
  br label %out, !dbg !4764

if.end34:                                         ; preds = %for.body
  br label %for.inc, !dbg !4765

for.inc:                                          ; preds = %if.end34
  %41 = load i32, i32* %i, align 4, !dbg !4766
  %inc = add i32 %41, 1, !dbg !4766
  store i32 %inc, i32* %i, align 4, !dbg !4766
  br label %for.cond, !dbg !4767, !llvm.loop !4768

for.end:                                          ; preds = %for.cond
  %42 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4770
  %cache_bypass35 = getelementptr inbounds %struct.regmap, %struct.regmap* %42, i32 0, i32 46, !dbg !4771
  store i8 0, i8* %cache_bypass35, align 1, !dbg !4772
  %43 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4773
  %cache_ops36 = getelementptr inbounds %struct.regmap, %struct.regmap* %43, i32 0, i32 39, !dbg !4775
  %44 = load %struct.regcache_ops*, %struct.regcache_ops** %cache_ops36, align 8, !dbg !4775
  %sync = getelementptr inbounds %struct.regcache_ops, %struct.regcache_ops* %44, i32 0, i32 6, !dbg !4776
  %45 = load i32 (%struct.regmap*, i32, i32)*, i32 (%struct.regmap*, i32, i32)** %sync, align 8, !dbg !4776
  %tobool37 = icmp ne i32 (%struct.regmap*, i32, i32)* %45, null, !dbg !4773
  br i1 %tobool37, label %if.then38, label %if.else, !dbg !4777

if.then38:                                        ; preds = %for.end
  %46 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4778
  %cache_ops39 = getelementptr inbounds %struct.regmap, %struct.regmap* %46, i32 0, i32 39, !dbg !4779
  %47 = load %struct.regcache_ops*, %struct.regcache_ops** %cache_ops39, align 8, !dbg !4779
  %sync40 = getelementptr inbounds %struct.regcache_ops, %struct.regcache_ops* %47, i32 0, i32 6, !dbg !4780
  %48 = load i32 (%struct.regmap*, i32, i32)*, i32 (%struct.regmap*, i32, i32)** %sync40, align 8, !dbg !4780
  %49 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4781
  %50 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4782
  %max_register = getelementptr inbounds %struct.regmap, %struct.regmap* %50, i32 0, i32 17, !dbg !4783
  %51 = load i32, i32* %max_register, align 4, !dbg !4783
  %call41 = call i32 %48(%struct.regmap* %49, i32 0, i32 %51) #8, !dbg !4778
  store i32 %call41, i32* %ret, align 4, !dbg !4784
  br label %if.end44, !dbg !4785

if.else:                                          ; preds = %for.end
  %52 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4786
  %53 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4787
  %max_register42 = getelementptr inbounds %struct.regmap, %struct.regmap* %53, i32 0, i32 17, !dbg !4788
  %54 = load i32, i32* %max_register42, align 4, !dbg !4788
  %call43 = call i32 @regcache_default_sync(%struct.regmap* %52, i32 0, i32 %54) #8, !dbg !4789
  store i32 %call43, i32* %ret, align 4, !dbg !4790
  br label %if.end44

if.end44:                                         ; preds = %if.else, %if.then38
  %55 = load i32, i32* %ret, align 4, !dbg !4791
  %cmp45 = icmp eq i32 %55, 0, !dbg !4793
  br i1 %cmp45, label %if.then47, label %if.end49, !dbg !4794

if.then47:                                        ; preds = %if.end44
  %56 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4795
  %cache_dirty48 = getelementptr inbounds %struct.regmap, %struct.regmap* %56, i32 0, i32 51, !dbg !4796
  store i8 0, i8* %cache_dirty48, align 8, !dbg !4797
  br label %if.end49, !dbg !4795

if.end49:                                         ; preds = %if.then47, %if.end44
  br label %out, !dbg !4798

out:                                              ; preds = %if.end49, %if.then25, %if.then16
  call void @llvm.dbg.label(metadata !4799), !dbg !4800
  %57 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4801
  %async50 = getelementptr inbounds %struct.regmap, %struct.regmap* %57, i32 0, i32 11, !dbg !4802
  store i8 0, i8* %async50, align 8, !dbg !4803
  %58 = load i8, i8* %bypass, align 1, !dbg !4804
  %tobool51 = trunc i8 %58 to i1, !dbg !4804
  %59 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4805
  %cache_bypass52 = getelementptr inbounds %struct.regmap, %struct.regmap* %59, i32 0, i32 46, !dbg !4806
  %frombool53 = zext i1 %tobool51 to i8, !dbg !4807
  store i8 %frombool53, i8* %cache_bypass52, align 1, !dbg !4807
  %60 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4808
  %no_sync_defaults = getelementptr inbounds %struct.regmap, %struct.regmap* %60, i32 0, i32 52, !dbg !4809
  store i8 0, i8* %no_sync_defaults, align 1, !dbg !4810
  %61 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4811
  %unlock = getelementptr inbounds %struct.regmap, %struct.regmap* %61, i32 0, i32 2, !dbg !4812
  %62 = load void (i8*)*, void (i8*)** %unlock, align 8, !dbg !4812
  %63 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4813
  %lock_arg54 = getelementptr inbounds %struct.regmap, %struct.regmap* %63, i32 0, i32 3, !dbg !4814
  %64 = load i8*, i8** %lock_arg54, align 8, !dbg !4814
  call void %62(i8* %64) #8, !dbg !4811
  %65 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4815
  %call55 = call i32 @regmap_async_complete(%struct.regmap* %65) #8, !dbg !4816
  %66 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4817
  %67 = load i8*, i8** %name, align 8, !dbg !4818
  call void @trace_regcache_sync(%struct.regmap* %66, i8* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #8, !dbg !4819
  %68 = load i32, i32* %ret, align 4, !dbg !4820
  ret i32 %68, !dbg !4821
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @trace_regcache_sync(%struct.regmap* %map, i8* %type, i8* %status) #0 !dbg !4822 {
entry:
  %map.addr = alloca %struct.regmap*, align 8
  %type.addr = alloca i8*, align 8
  %status.addr = alloca i8*, align 8
  store %struct.regmap* %map, %struct.regmap** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.regmap** %map.addr, metadata !4825, metadata !DIExpression()), !dbg !4826
  store i8* %type, i8** %type.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %type.addr, metadata !4827, metadata !DIExpression()), !dbg !4826
  store i8* %status, i8** %status.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %status.addr, metadata !4828, metadata !DIExpression()), !dbg !4826
  ret void, !dbg !4826
}

; Function Attrs: noredzone
declare dso_local i32 @_regmap_write(%struct.regmap*, i32, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @regcache_default_sync(%struct.regmap* %map, i32 %min, i32 %max) #0 !dbg !4829 {
entry:
  %retval = alloca i32, align 4
  %map.addr = alloca %struct.regmap*, align 8
  %min.addr = alloca i32, align 4
  %max.addr = alloca i32, align 4
  %reg = alloca i32, align 4
  %val = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.regmap* %map, %struct.regmap** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.regmap** %map.addr, metadata !4830, metadata !DIExpression()), !dbg !4831
  store i32 %min, i32* %min.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %min.addr, metadata !4832, metadata !DIExpression()), !dbg !4833
  store i32 %max, i32* %max.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %max.addr, metadata !4834, metadata !DIExpression()), !dbg !4835
  call void @llvm.dbg.declare(metadata i32* %reg, metadata !4836, metadata !DIExpression()), !dbg !4837
  %0 = load i32, i32* %min.addr, align 4, !dbg !4838
  store i32 %0, i32* %reg, align 4, !dbg !4840
  br label %for.cond, !dbg !4841

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %reg, align 4, !dbg !4842
  %2 = load i32, i32* %max.addr, align 4, !dbg !4844
  %cmp = icmp ule i32 %1, %2, !dbg !4845
  br i1 %cmp, label %for.body, label %for.end, !dbg !4846

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %val, metadata !4847, metadata !DIExpression()), !dbg !4849
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4850, metadata !DIExpression()), !dbg !4851
  %3 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4852
  %4 = load i32, i32* %reg, align 4, !dbg !4854
  %call = call zeroext i1 @regmap_volatile(%struct.regmap* %3, i32 %4) #8, !dbg !4855
  br i1 %call, label %if.then, label %lor.lhs.false, !dbg !4856

lor.lhs.false:                                    ; preds = %for.body
  %5 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4857
  %6 = load i32, i32* %reg, align 4, !dbg !4858
  %call1 = call zeroext i1 @regmap_writeable(%struct.regmap* %5, i32 %6) #8, !dbg !4859
  br i1 %call1, label %if.end, label %if.then, !dbg !4860

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.inc, !dbg !4861

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4862
  %8 = load i32, i32* %reg, align 4, !dbg !4863
  %call2 = call i32 @regcache_read(%struct.regmap* %7, i32 %8, i32* %val) #8, !dbg !4864
  store i32 %call2, i32* %ret, align 4, !dbg !4865
  %9 = load i32, i32* %ret, align 4, !dbg !4866
  %tobool = icmp ne i32 %9, 0, !dbg !4866
  br i1 %tobool, label %if.then3, label %if.end4, !dbg !4868

if.then3:                                         ; preds = %if.end
  %10 = load i32, i32* %ret, align 4, !dbg !4869
  store i32 %10, i32* %retval, align 4, !dbg !4870
  br label %return, !dbg !4870

if.end4:                                          ; preds = %if.end
  %11 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4871
  %12 = load i32, i32* %reg, align 4, !dbg !4873
  %13 = load i32, i32* %val, align 4, !dbg !4874
  %call5 = call zeroext i1 @regcache_reg_needs_sync(%struct.regmap* %11, i32 %12, i32 %13) #8, !dbg !4875
  br i1 %call5, label %if.end7, label %if.then6, !dbg !4876

if.then6:                                         ; preds = %if.end4
  br label %for.inc, !dbg !4877

if.end7:                                          ; preds = %if.end4
  %14 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4878
  %cache_bypass = getelementptr inbounds %struct.regmap, %struct.regmap* %14, i32 0, i32 46, !dbg !4879
  store i8 1, i8* %cache_bypass, align 1, !dbg !4880
  %15 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4881
  %16 = load i32, i32* %reg, align 4, !dbg !4882
  %17 = load i32, i32* %val, align 4, !dbg !4883
  %call8 = call i32 @_regmap_write(%struct.regmap* %15, i32 %16, i32 %17) #8, !dbg !4884
  store i32 %call8, i32* %ret, align 4, !dbg !4885
  %18 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4886
  %cache_bypass9 = getelementptr inbounds %struct.regmap, %struct.regmap* %18, i32 0, i32 46, !dbg !4887
  store i8 0, i8* %cache_bypass9, align 1, !dbg !4888
  %19 = load i32, i32* %ret, align 4, !dbg !4889
  %tobool10 = icmp ne i32 %19, 0, !dbg !4889
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !4891

if.then11:                                        ; preds = %if.end7
  %20 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4892
  %dev = getelementptr inbounds %struct.regmap, %struct.regmap* %20, i32 0, i32 5, !dbg !4892
  %21 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4892
  %22 = load i32, i32* %reg, align 4, !dbg !4892
  %23 = load i32, i32* %ret, align 4, !dbg !4892
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i32 %22, i32 %23) #7, !dbg !4892
  %24 = load i32, i32* %ret, align 4, !dbg !4894
  store i32 %24, i32* %retval, align 4, !dbg !4895
  br label %return, !dbg !4895

if.end12:                                         ; preds = %if.end7
  br label %for.inc, !dbg !4896

for.inc:                                          ; preds = %if.end12, %if.then6, %if.then
  %25 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4897
  %reg_stride = getelementptr inbounds %struct.regmap, %struct.regmap* %25, i32 0, i32 37, !dbg !4898
  %26 = load i32, i32* %reg_stride, align 4, !dbg !4898
  %27 = load i32, i32* %reg, align 4, !dbg !4899
  %add = add i32 %27, %26, !dbg !4899
  store i32 %add, i32* %reg, align 4, !dbg !4899
  br label %for.cond, !dbg !4900, !llvm.loop !4901

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !4903
  br label %return, !dbg !4903

return:                                           ; preds = %for.end, %if.then11, %if.then3
  %28 = load i32, i32* %retval, align 4, !dbg !4904
  ret i32 %28, !dbg !4904
}

; Function Attrs: noredzone
declare dso_local i32 @regmap_async_complete(%struct.regmap*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @regcache_sync_region(%struct.regmap* %map, i32 %min, i32 %max) #0 !dbg !4905 {
entry:
  %map.addr = alloca %struct.regmap*, align 8
  %min.addr = alloca i32, align 4
  %max.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %name = alloca i8*, align 8
  %bypass = alloca i8, align 1
  store %struct.regmap* %map, %struct.regmap** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.regmap** %map.addr, metadata !4906, metadata !DIExpression()), !dbg !4907
  store i32 %min, i32* %min.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %min.addr, metadata !4908, metadata !DIExpression()), !dbg !4909
  store i32 %max, i32* %max.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %max.addr, metadata !4910, metadata !DIExpression()), !dbg !4911
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4912, metadata !DIExpression()), !dbg !4913
  store i32 0, i32* %ret, align 4, !dbg !4913
  call void @llvm.dbg.declare(metadata i8** %name, metadata !4914, metadata !DIExpression()), !dbg !4915
  call void @llvm.dbg.declare(metadata i8* %bypass, metadata !4916, metadata !DIExpression()), !dbg !4917
  br label %do.body, !dbg !4918

do.body:                                          ; preds = %entry
  %0 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4919
  %cache_ops = getelementptr inbounds %struct.regmap, %struct.regmap* %0, i32 0, i32 39, !dbg !4919
  %1 = load %struct.regcache_ops*, %struct.regcache_ops** %cache_ops, align 8, !dbg !4919
  %tobool = icmp ne %struct.regcache_ops* %1, null, !dbg !4919
  %lnot = xor i1 %tobool, true, !dbg !4919
  %lnot1 = xor i1 %lnot, true, !dbg !4919
  %lnot2 = xor i1 %lnot1, true, !dbg !4919
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4919
  %conv = sext i32 %lnot.ext to i64, !dbg !4919
  %tobool3 = icmp ne i64 %conv, 0, !dbg !4919
  br i1 %tobool3, label %if.then, label %if.end, !dbg !4922

if.then:                                          ; preds = %do.body
  br label %do.body4, !dbg !4919

do.body4:                                         ; preds = %if.then
  br label %do.body5, !dbg !4923

do.body5:                                         ; preds = %do.body4
  br label %do.end, !dbg !4925

do.end:                                           ; preds = %do.body5
  br label %do.body6, !dbg !4923

do.body6:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 415, i32 0, i64 12) #9, !dbg !4927, !srcloc !4929
  br label %do.end7, !dbg !4927

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !4923

do.body8:                                         ; preds = %do.end7
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 204) #9, !dbg !4930, !srcloc !4933
  unreachable, !dbg !4934

do.end9:                                          ; No predecessors!
  br label %do.end10, !dbg !4923

do.end10:                                         ; preds = %do.end9
  br label %if.end, !dbg !4923

if.end:                                           ; preds = %do.end10, %do.body
  br label %do.end11, !dbg !4922

do.end11:                                         ; preds = %if.end
  %2 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4935
  %lock = getelementptr inbounds %struct.regmap, %struct.regmap* %2, i32 0, i32 1, !dbg !4936
  %3 = load void (i8*)*, void (i8*)** %lock, align 8, !dbg !4936
  %4 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4937
  %lock_arg = getelementptr inbounds %struct.regmap, %struct.regmap* %4, i32 0, i32 3, !dbg !4938
  %5 = load i8*, i8** %lock_arg, align 8, !dbg !4938
  call void %3(i8* %5) #8, !dbg !4935
  %6 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4939
  %cache_bypass = getelementptr inbounds %struct.regmap, %struct.regmap* %6, i32 0, i32 46, !dbg !4940
  %7 = load i8, i8* %cache_bypass, align 1, !dbg !4940
  %tobool12 = trunc i8 %7 to i1, !dbg !4940
  %frombool = zext i1 %tobool12 to i8, !dbg !4941
  store i8 %frombool, i8* %bypass, align 1, !dbg !4941
  %8 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4942
  %cache_ops13 = getelementptr inbounds %struct.regmap, %struct.regmap* %8, i32 0, i32 39, !dbg !4943
  %9 = load %struct.regcache_ops*, %struct.regcache_ops** %cache_ops13, align 8, !dbg !4943
  %name14 = getelementptr inbounds %struct.regcache_ops, %struct.regcache_ops* %9, i32 0, i32 0, !dbg !4944
  %10 = load i8*, i8** %name14, align 8, !dbg !4944
  store i8* %10, i8** %name, align 8, !dbg !4945
  %11 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4946
  %12 = load i8*, i8** %name, align 8, !dbg !4947
  call void @trace_regcache_sync(%struct.regmap* %11, i8* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !4948
  %13 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4949
  %cache_dirty = getelementptr inbounds %struct.regmap, %struct.regmap* %13, i32 0, i32 51, !dbg !4951
  %14 = load i8, i8* %cache_dirty, align 8, !dbg !4951
  %tobool15 = trunc i8 %14 to i1, !dbg !4951
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !4952

if.then16:                                        ; preds = %do.end11
  br label %out, !dbg !4953

if.end17:                                         ; preds = %do.end11
  %15 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4954
  %async = getelementptr inbounds %struct.regmap, %struct.regmap* %15, i32 0, i32 11, !dbg !4955
  store i8 1, i8* %async, align 8, !dbg !4956
  %16 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4957
  %cache_ops18 = getelementptr inbounds %struct.regmap, %struct.regmap* %16, i32 0, i32 39, !dbg !4959
  %17 = load %struct.regcache_ops*, %struct.regcache_ops** %cache_ops18, align 8, !dbg !4959
  %sync = getelementptr inbounds %struct.regcache_ops, %struct.regcache_ops* %17, i32 0, i32 6, !dbg !4960
  %18 = load i32 (%struct.regmap*, i32, i32)*, i32 (%struct.regmap*, i32, i32)** %sync, align 8, !dbg !4960
  %tobool19 = icmp ne i32 (%struct.regmap*, i32, i32)* %18, null, !dbg !4957
  br i1 %tobool19, label %if.then20, label %if.else, !dbg !4961

if.then20:                                        ; preds = %if.end17
  %19 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4962
  %cache_ops21 = getelementptr inbounds %struct.regmap, %struct.regmap* %19, i32 0, i32 39, !dbg !4963
  %20 = load %struct.regcache_ops*, %struct.regcache_ops** %cache_ops21, align 8, !dbg !4963
  %sync22 = getelementptr inbounds %struct.regcache_ops, %struct.regcache_ops* %20, i32 0, i32 6, !dbg !4964
  %21 = load i32 (%struct.regmap*, i32, i32)*, i32 (%struct.regmap*, i32, i32)** %sync22, align 8, !dbg !4964
  %22 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4965
  %23 = load i32, i32* %min.addr, align 4, !dbg !4966
  %24 = load i32, i32* %max.addr, align 4, !dbg !4967
  %call = call i32 %21(%struct.regmap* %22, i32 %23, i32 %24) #8, !dbg !4962
  store i32 %call, i32* %ret, align 4, !dbg !4968
  br label %if.end24, !dbg !4969

if.else:                                          ; preds = %if.end17
  %25 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4970
  %26 = load i32, i32* %min.addr, align 4, !dbg !4971
  %27 = load i32, i32* %max.addr, align 4, !dbg !4972
  %call23 = call i32 @regcache_default_sync(%struct.regmap* %25, i32 %26, i32 %27) #8, !dbg !4973
  store i32 %call23, i32* %ret, align 4, !dbg !4974
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then20
  br label %out, !dbg !4960

out:                                              ; preds = %if.end24, %if.then16
  call void @llvm.dbg.label(metadata !4975), !dbg !4976
  %28 = load i8, i8* %bypass, align 1, !dbg !4977
  %tobool25 = trunc i8 %28 to i1, !dbg !4977
  %29 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4978
  %cache_bypass26 = getelementptr inbounds %struct.regmap, %struct.regmap* %29, i32 0, i32 46, !dbg !4979
  %frombool27 = zext i1 %tobool25 to i8, !dbg !4980
  store i8 %frombool27, i8* %cache_bypass26, align 1, !dbg !4980
  %30 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4981
  %async28 = getelementptr inbounds %struct.regmap, %struct.regmap* %30, i32 0, i32 11, !dbg !4982
  store i8 0, i8* %async28, align 8, !dbg !4983
  %31 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4984
  %no_sync_defaults = getelementptr inbounds %struct.regmap, %struct.regmap* %31, i32 0, i32 52, !dbg !4985
  store i8 0, i8* %no_sync_defaults, align 1, !dbg !4986
  %32 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4987
  %unlock = getelementptr inbounds %struct.regmap, %struct.regmap* %32, i32 0, i32 2, !dbg !4988
  %33 = load void (i8*)*, void (i8*)** %unlock, align 8, !dbg !4988
  %34 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4989
  %lock_arg29 = getelementptr inbounds %struct.regmap, %struct.regmap* %34, i32 0, i32 3, !dbg !4990
  %35 = load i8*, i8** %lock_arg29, align 8, !dbg !4990
  call void %33(i8* %35) #8, !dbg !4987
  %36 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4991
  %call30 = call i32 @regmap_async_complete(%struct.regmap* %36) #8, !dbg !4992
  %37 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !4993
  %38 = load i8*, i8** %name, align 8, !dbg !4994
  call void @trace_regcache_sync(%struct.regmap* %37, i8* %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0)) #8, !dbg !4995
  %39 = load i32, i32* %ret, align 4, !dbg !4996
  ret i32 %39, !dbg !4997
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @regcache_drop_region(%struct.regmap* %map, i32 %min, i32 %max) #0 !dbg !4998 {
entry:
  %retval = alloca i32, align 4
  %map.addr = alloca %struct.regmap*, align 8
  %min.addr = alloca i32, align 4
  %max.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.regmap* %map, %struct.regmap** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.regmap** %map.addr, metadata !4999, metadata !DIExpression()), !dbg !5000
  store i32 %min, i32* %min.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %min.addr, metadata !5001, metadata !DIExpression()), !dbg !5002
  store i32 %max, i32* %max.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %max.addr, metadata !5003, metadata !DIExpression()), !dbg !5004
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5005, metadata !DIExpression()), !dbg !5006
  store i32 0, i32* %ret, align 4, !dbg !5006
  %0 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5007
  %cache_ops = getelementptr inbounds %struct.regmap, %struct.regmap* %0, i32 0, i32 39, !dbg !5009
  %1 = load %struct.regcache_ops*, %struct.regcache_ops** %cache_ops, align 8, !dbg !5009
  %tobool = icmp ne %struct.regcache_ops* %1, null, !dbg !5007
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5010

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5011
  %cache_ops1 = getelementptr inbounds %struct.regmap, %struct.regmap* %2, i32 0, i32 39, !dbg !5012
  %3 = load %struct.regcache_ops*, %struct.regcache_ops** %cache_ops1, align 8, !dbg !5012
  %drop = getelementptr inbounds %struct.regcache_ops, %struct.regcache_ops* %3, i32 0, i32 7, !dbg !5013
  %4 = load i32 (%struct.regmap*, i32, i32)*, i32 (%struct.regmap*, i32, i32)** %drop, align 8, !dbg !5013
  %tobool2 = icmp ne i32 (%struct.regmap*, i32, i32)* %4, null, !dbg !5011
  br i1 %tobool2, label %if.end, label %if.then, !dbg !5014

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !5015
  br label %return, !dbg !5015

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5016
  %lock = getelementptr inbounds %struct.regmap, %struct.regmap* %5, i32 0, i32 1, !dbg !5017
  %6 = load void (i8*)*, void (i8*)** %lock, align 8, !dbg !5017
  %7 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5018
  %lock_arg = getelementptr inbounds %struct.regmap, %struct.regmap* %7, i32 0, i32 3, !dbg !5019
  %8 = load i8*, i8** %lock_arg, align 8, !dbg !5019
  call void %6(i8* %8) #8, !dbg !5016
  %9 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5020
  %10 = load i32, i32* %min.addr, align 4, !dbg !5021
  %11 = load i32, i32* %max.addr, align 4, !dbg !5022
  call void @trace_regcache_drop_region(%struct.regmap* %9, i32 %10, i32 %11) #8, !dbg !5023
  %12 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5024
  %cache_ops3 = getelementptr inbounds %struct.regmap, %struct.regmap* %12, i32 0, i32 39, !dbg !5025
  %13 = load %struct.regcache_ops*, %struct.regcache_ops** %cache_ops3, align 8, !dbg !5025
  %drop4 = getelementptr inbounds %struct.regcache_ops, %struct.regcache_ops* %13, i32 0, i32 7, !dbg !5026
  %14 = load i32 (%struct.regmap*, i32, i32)*, i32 (%struct.regmap*, i32, i32)** %drop4, align 8, !dbg !5026
  %15 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5027
  %16 = load i32, i32* %min.addr, align 4, !dbg !5028
  %17 = load i32, i32* %max.addr, align 4, !dbg !5029
  %call = call i32 %14(%struct.regmap* %15, i32 %16, i32 %17) #8, !dbg !5024
  store i32 %call, i32* %ret, align 4, !dbg !5030
  %18 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5031
  %unlock = getelementptr inbounds %struct.regmap, %struct.regmap* %18, i32 0, i32 2, !dbg !5032
  %19 = load void (i8*)*, void (i8*)** %unlock, align 8, !dbg !5032
  %20 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5033
  %lock_arg5 = getelementptr inbounds %struct.regmap, %struct.regmap* %20, i32 0, i32 3, !dbg !5034
  %21 = load i8*, i8** %lock_arg5, align 8, !dbg !5034
  call void %19(i8* %21) #8, !dbg !5031
  %22 = load i32, i32* %ret, align 4, !dbg !5035
  store i32 %22, i32* %retval, align 4, !dbg !5036
  br label %return, !dbg !5036

return:                                           ; preds = %if.end, %if.then
  %23 = load i32, i32* %retval, align 4, !dbg !5037
  ret i32 %23, !dbg !5037
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @trace_regcache_drop_region(%struct.regmap* %map, i32 %from, i32 %to) #0 !dbg !5038 {
entry:
  %map.addr = alloca %struct.regmap*, align 8
  %from.addr = alloca i32, align 4
  %to.addr = alloca i32, align 4
  store %struct.regmap* %map, %struct.regmap** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.regmap** %map.addr, metadata !5039, metadata !DIExpression()), !dbg !5040
  store i32 %from, i32* %from.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %from.addr, metadata !5041, metadata !DIExpression()), !dbg !5040
  store i32 %to, i32* %to.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %to.addr, metadata !5042, metadata !DIExpression()), !dbg !5040
  ret void, !dbg !5040
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @regcache_cache_only(%struct.regmap* %map, i1 zeroext %enable) #0 !dbg !5043 {
entry:
  %map.addr = alloca %struct.regmap*, align 8
  %enable.addr = alloca i8, align 1
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.regmap* %map, %struct.regmap** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.regmap** %map.addr, metadata !5046, metadata !DIExpression()), !dbg !5047
  %frombool = zext i1 %enable to i8
  store i8 %frombool, i8* %enable.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %enable.addr, metadata !5048, metadata !DIExpression()), !dbg !5049
  %0 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5050
  %lock = getelementptr inbounds %struct.regmap, %struct.regmap* %0, i32 0, i32 1, !dbg !5051
  %1 = load void (i8*)*, void (i8*)** %lock, align 8, !dbg !5051
  %2 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5052
  %lock_arg = getelementptr inbounds %struct.regmap, %struct.regmap* %2, i32 0, i32 3, !dbg !5053
  %3 = load i8*, i8** %lock_arg, align 8, !dbg !5053
  call void %1(i8* %3) #8, !dbg !5050
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5054, metadata !DIExpression()), !dbg !5056
  %4 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5056
  %cache_bypass = getelementptr inbounds %struct.regmap, %struct.regmap* %4, i32 0, i32 46, !dbg !5056
  %5 = load i8, i8* %cache_bypass, align 1, !dbg !5056
  %tobool = trunc i8 %5 to i1, !dbg !5056
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !5056

land.rhs:                                         ; preds = %entry
  %6 = load i8, i8* %enable.addr, align 1, !dbg !5056
  %tobool1 = trunc i8 %6 to i1, !dbg !5056
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %7 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ], !dbg !5057
  %lnot = xor i1 %7, true, !dbg !5056
  %lnot2 = xor i1 %lnot, true, !dbg !5056
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5056
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !5056
  %8 = load i32, i32* %__ret_warn_on, align 4, !dbg !5058
  %tobool3 = icmp ne i32 %8, 0, !dbg !5058
  %lnot4 = xor i1 %tobool3, true, !dbg !5058
  %lnot6 = xor i1 %lnot4, true, !dbg !5058
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !5058
  %conv = sext i32 %lnot.ext7 to i64, !dbg !5058
  %tobool8 = icmp ne i64 %conv, 0, !dbg !5058
  br i1 %tobool8, label %if.then, label %if.end, !dbg !5056

if.then:                                          ; preds = %land.end
  br label %do.body, !dbg !5058

do.body:                                          ; preds = %if.then
  br label %do.body9, !dbg !5060

do.body9:                                         ; preds = %do.body
  br label %do.end, !dbg !5062

do.end:                                           ; preds = %do.body9
  br label %do.body10, !dbg !5060

do.body10:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 498, i32 2305, i64 12) #9, !dbg !5064, !srcloc !5066
  br label %do.end11, !dbg !5064

do.end11:                                         ; preds = %do.body10
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 205) #9, !dbg !5067, !srcloc !5069
  br label %do.body12, !dbg !5060

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !5070

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !5060

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !5060

if.end:                                           ; preds = %do.end14, %land.end
  %9 = load i32, i32* %__ret_warn_on, align 4, !dbg !5056
  %tobool15 = icmp ne i32 %9, 0, !dbg !5056
  %lnot16 = xor i1 %tobool15, true, !dbg !5056
  %lnot18 = xor i1 %lnot16, true, !dbg !5056
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !5056
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !5056
  store i64 %conv20, i64* %tmp, align 8, !dbg !5058
  %10 = load i64, i64* %tmp, align 8, !dbg !5056
  %11 = load i8, i8* %enable.addr, align 1, !dbg !5072
  %tobool21 = trunc i8 %11 to i1, !dbg !5072
  %12 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5073
  %cache_only = getelementptr inbounds %struct.regmap, %struct.regmap* %12, i32 0, i32 45, !dbg !5074
  %frombool22 = zext i1 %tobool21 to i8, !dbg !5075
  store i8 %frombool22, i8* %cache_only, align 4, !dbg !5075
  %13 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5076
  %14 = load i8, i8* %enable.addr, align 1, !dbg !5077
  %tobool23 = trunc i8 %14 to i1, !dbg !5077
  call void @trace_regmap_cache_only(%struct.regmap* %13, i1 zeroext %tobool23) #8, !dbg !5078
  %15 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5079
  %unlock = getelementptr inbounds %struct.regmap, %struct.regmap* %15, i32 0, i32 2, !dbg !5080
  %16 = load void (i8*)*, void (i8*)** %unlock, align 8, !dbg !5080
  %17 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5081
  %lock_arg24 = getelementptr inbounds %struct.regmap, %struct.regmap* %17, i32 0, i32 3, !dbg !5082
  %18 = load i8*, i8** %lock_arg24, align 8, !dbg !5082
  call void %16(i8* %18) #8, !dbg !5079
  ret void, !dbg !5083
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @trace_regmap_cache_only(%struct.regmap* %map, i1 zeroext %flag) #0 !dbg !5084 {
entry:
  %map.addr = alloca %struct.regmap*, align 8
  %flag.addr = alloca i8, align 1
  store %struct.regmap* %map, %struct.regmap** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.regmap** %map.addr, metadata !5085, metadata !DIExpression()), !dbg !5086
  %frombool = zext i1 %flag to i8
  store i8 %frombool, i8* %flag.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %flag.addr, metadata !5087, metadata !DIExpression()), !dbg !5086
  ret void, !dbg !5086
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @regcache_mark_dirty(%struct.regmap* %map) #0 !dbg !5088 {
entry:
  %map.addr = alloca %struct.regmap*, align 8
  store %struct.regmap* %map, %struct.regmap** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.regmap** %map.addr, metadata !5089, metadata !DIExpression()), !dbg !5090
  %0 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5091
  %lock = getelementptr inbounds %struct.regmap, %struct.regmap* %0, i32 0, i32 1, !dbg !5092
  %1 = load void (i8*)*, void (i8*)** %lock, align 8, !dbg !5092
  %2 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5093
  %lock_arg = getelementptr inbounds %struct.regmap, %struct.regmap* %2, i32 0, i32 3, !dbg !5094
  %3 = load i8*, i8** %lock_arg, align 8, !dbg !5094
  call void %1(i8* %3) #8, !dbg !5091
  %4 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5095
  %cache_dirty = getelementptr inbounds %struct.regmap, %struct.regmap* %4, i32 0, i32 51, !dbg !5096
  store i8 1, i8* %cache_dirty, align 8, !dbg !5097
  %5 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5098
  %no_sync_defaults = getelementptr inbounds %struct.regmap, %struct.regmap* %5, i32 0, i32 52, !dbg !5099
  store i8 1, i8* %no_sync_defaults, align 1, !dbg !5100
  %6 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5101
  %unlock = getelementptr inbounds %struct.regmap, %struct.regmap* %6, i32 0, i32 2, !dbg !5102
  %7 = load void (i8*)*, void (i8*)** %unlock, align 8, !dbg !5102
  %8 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5103
  %lock_arg1 = getelementptr inbounds %struct.regmap, %struct.regmap* %8, i32 0, i32 3, !dbg !5104
  %9 = load i8*, i8** %lock_arg1, align 8, !dbg !5104
  call void %7(i8* %9) #8, !dbg !5101
  ret void, !dbg !5105
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @regcache_cache_bypass(%struct.regmap* %map, i1 zeroext %enable) #0 !dbg !5106 {
entry:
  %map.addr = alloca %struct.regmap*, align 8
  %enable.addr = alloca i8, align 1
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.regmap* %map, %struct.regmap** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.regmap** %map.addr, metadata !5107, metadata !DIExpression()), !dbg !5108
  %frombool = zext i1 %enable to i8
  store i8 %frombool, i8* %enable.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %enable.addr, metadata !5109, metadata !DIExpression()), !dbg !5110
  %0 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5111
  %lock = getelementptr inbounds %struct.regmap, %struct.regmap* %0, i32 0, i32 1, !dbg !5112
  %1 = load void (i8*)*, void (i8*)** %lock, align 8, !dbg !5112
  %2 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5113
  %lock_arg = getelementptr inbounds %struct.regmap, %struct.regmap* %2, i32 0, i32 3, !dbg !5114
  %3 = load i8*, i8** %lock_arg, align 8, !dbg !5114
  call void %1(i8* %3) #8, !dbg !5111
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5115, metadata !DIExpression()), !dbg !5117
  %4 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5117
  %cache_only = getelementptr inbounds %struct.regmap, %struct.regmap* %4, i32 0, i32 45, !dbg !5117
  %5 = load i8, i8* %cache_only, align 4, !dbg !5117
  %tobool = trunc i8 %5 to i1, !dbg !5117
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !5117

land.rhs:                                         ; preds = %entry
  %6 = load i8, i8* %enable.addr, align 1, !dbg !5117
  %tobool1 = trunc i8 %6 to i1, !dbg !5117
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %7 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ], !dbg !5118
  %lnot = xor i1 %7, true, !dbg !5117
  %lnot2 = xor i1 %lnot, true, !dbg !5117
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5117
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !5117
  %8 = load i32, i32* %__ret_warn_on, align 4, !dbg !5119
  %tobool3 = icmp ne i32 %8, 0, !dbg !5119
  %lnot4 = xor i1 %tobool3, true, !dbg !5119
  %lnot6 = xor i1 %lnot4, true, !dbg !5119
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !5119
  %conv = sext i32 %lnot.ext7 to i64, !dbg !5119
  %tobool8 = icmp ne i64 %conv, 0, !dbg !5119
  br i1 %tobool8, label %if.then, label %if.end, !dbg !5117

if.then:                                          ; preds = %land.end
  br label %do.body, !dbg !5119

do.body:                                          ; preds = %if.then
  br label %do.body9, !dbg !5121

do.body9:                                         ; preds = %do.body
  br label %do.end, !dbg !5123

do.end:                                           ; preds = %do.body9
  br label %do.body10, !dbg !5121

do.body10:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 541, i32 2305, i64 12) #9, !dbg !5125, !srcloc !5127
  br label %do.end11, !dbg !5125

do.end11:                                         ; preds = %do.body10
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 206) #9, !dbg !5128, !srcloc !5130
  br label %do.body12, !dbg !5121

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !5131

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !5121

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !5121

if.end:                                           ; preds = %do.end14, %land.end
  %9 = load i32, i32* %__ret_warn_on, align 4, !dbg !5117
  %tobool15 = icmp ne i32 %9, 0, !dbg !5117
  %lnot16 = xor i1 %tobool15, true, !dbg !5117
  %lnot18 = xor i1 %lnot16, true, !dbg !5117
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !5117
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !5117
  store i64 %conv20, i64* %tmp, align 8, !dbg !5119
  %10 = load i64, i64* %tmp, align 8, !dbg !5117
  %11 = load i8, i8* %enable.addr, align 1, !dbg !5133
  %tobool21 = trunc i8 %11 to i1, !dbg !5133
  %12 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5134
  %cache_bypass = getelementptr inbounds %struct.regmap, %struct.regmap* %12, i32 0, i32 46, !dbg !5135
  %frombool22 = zext i1 %tobool21 to i8, !dbg !5136
  store i8 %frombool22, i8* %cache_bypass, align 1, !dbg !5136
  %13 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5137
  %14 = load i8, i8* %enable.addr, align 1, !dbg !5138
  %tobool23 = trunc i8 %14 to i1, !dbg !5138
  call void @trace_regmap_cache_bypass(%struct.regmap* %13, i1 zeroext %tobool23) #8, !dbg !5139
  %15 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5140
  %unlock = getelementptr inbounds %struct.regmap, %struct.regmap* %15, i32 0, i32 2, !dbg !5141
  %16 = load void (i8*)*, void (i8*)** %unlock, align 8, !dbg !5141
  %17 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5142
  %lock_arg24 = getelementptr inbounds %struct.regmap, %struct.regmap* %17, i32 0, i32 3, !dbg !5143
  %18 = load i8*, i8** %lock_arg24, align 8, !dbg !5143
  call void %16(i8* %18) #8, !dbg !5140
  ret void, !dbg !5144
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @trace_regmap_cache_bypass(%struct.regmap* %map, i1 zeroext %flag) #0 !dbg !5145 {
entry:
  %map.addr = alloca %struct.regmap*, align 8
  %flag.addr = alloca i8, align 1
  store %struct.regmap* %map, %struct.regmap** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.regmap** %map.addr, metadata !5146, metadata !DIExpression()), !dbg !5147
  %frombool = zext i1 %flag to i8
  store i8 %frombool, i8* %flag.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %flag.addr, metadata !5148, metadata !DIExpression()), !dbg !5147
  ret void, !dbg !5147
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @regcache_set_val(%struct.regmap* %map, i8* %base, i32 %idx, i32 %val) #0 !dbg !5149 {
entry:
  %retval = alloca i1, align 1
  %map.addr = alloca %struct.regmap*, align 8
  %base.addr = alloca i8*, align 8
  %idx.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %cache = alloca i8*, align 8
  %cache7 = alloca i16*, align 8
  %cache12 = alloca i32*, align 8
  %cache16 = alloca i64*, align 8
  store %struct.regmap* %map, %struct.regmap** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.regmap** %map.addr, metadata !5152, metadata !DIExpression()), !dbg !5153
  store i8* %base, i8** %base.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %base.addr, metadata !5154, metadata !DIExpression()), !dbg !5155
  store i32 %idx, i32* %idx.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %idx.addr, metadata !5156, metadata !DIExpression()), !dbg !5157
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5158, metadata !DIExpression()), !dbg !5159
  %0 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5160
  %1 = load i8*, i8** %base.addr, align 8, !dbg !5162
  %2 = load i32, i32* %idx.addr, align 4, !dbg !5163
  %call = call i32 @regcache_get_val(%struct.regmap* %0, i8* %1, i32 %2) #8, !dbg !5164
  %3 = load i32, i32* %val.addr, align 4, !dbg !5165
  %cmp = icmp eq i32 %call, %3, !dbg !5166
  br i1 %cmp, label %if.then, label %if.end, !dbg !5167

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval, align 1, !dbg !5168
  br label %return, !dbg !5168

if.end:                                           ; preds = %entry
  %4 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5169
  %format = getelementptr inbounds %struct.regmap, %struct.regmap* %4, i32 0, i32 7, !dbg !5171
  %format_val = getelementptr inbounds %struct.regmap_format, %struct.regmap_format* %format, i32 0, i32 6, !dbg !5172
  %5 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %format_val, align 8, !dbg !5172
  %tobool = icmp ne void (i8*, i32, i32)* %5, null, !dbg !5169
  br i1 %tobool, label %if.then1, label %if.end4, !dbg !5173

if.then1:                                         ; preds = %if.end
  %6 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5174
  %format2 = getelementptr inbounds %struct.regmap, %struct.regmap* %6, i32 0, i32 7, !dbg !5176
  %format_val3 = getelementptr inbounds %struct.regmap_format, %struct.regmap_format* %format2, i32 0, i32 6, !dbg !5177
  %7 = load void (i8*, i32, i32)*, void (i8*, i32, i32)** %format_val3, align 8, !dbg !5177
  %8 = load i8*, i8** %base.addr, align 8, !dbg !5178
  %9 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5179
  %cache_word_size = getelementptr inbounds %struct.regmap, %struct.regmap* %9, i32 0, i32 42, !dbg !5180
  %10 = load i32, i32* %cache_word_size, align 8, !dbg !5180
  %11 = load i32, i32* %idx.addr, align 4, !dbg !5181
  %mul = mul i32 %10, %11, !dbg !5182
  %idx.ext = zext i32 %mul to i64, !dbg !5183
  %add.ptr = getelementptr i8, i8* %8, i64 %idx.ext, !dbg !5183
  %12 = load i32, i32* %val.addr, align 4, !dbg !5184
  call void %7(i8* %add.ptr, i32 %12, i32 0) #8, !dbg !5174
  store i1 false, i1* %retval, align 1, !dbg !5185
  br label %return, !dbg !5185

if.end4:                                          ; preds = %if.end
  %13 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5186
  %cache_word_size5 = getelementptr inbounds %struct.regmap, %struct.regmap* %13, i32 0, i32 42, !dbg !5187
  %14 = load i32, i32* %cache_word_size5, align 8, !dbg !5187
  switch i32 %14, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb6
    i32 4, label %sw.bb11
    i32 8, label %sw.bb15
  ], !dbg !5188

sw.bb:                                            ; preds = %if.end4
  call void @llvm.dbg.declare(metadata i8** %cache, metadata !5189, metadata !DIExpression()), !dbg !5193
  %15 = load i8*, i8** %base.addr, align 8, !dbg !5194
  store i8* %15, i8** %cache, align 8, !dbg !5193
  %16 = load i32, i32* %val.addr, align 4, !dbg !5195
  %conv = trunc i32 %16 to i8, !dbg !5195
  %17 = load i8*, i8** %cache, align 8, !dbg !5196
  %18 = load i32, i32* %idx.addr, align 4, !dbg !5197
  %idxprom = zext i32 %18 to i64, !dbg !5196
  %arrayidx = getelementptr i8, i8* %17, i64 %idxprom, !dbg !5196
  store i8 %conv, i8* %arrayidx, align 1, !dbg !5198
  br label %sw.epilog, !dbg !5199

sw.bb6:                                           ; preds = %if.end4
  call void @llvm.dbg.declare(metadata i16** %cache7, metadata !5200, metadata !DIExpression()), !dbg !5203
  %19 = load i8*, i8** %base.addr, align 8, !dbg !5204
  %20 = bitcast i8* %19 to i16*, !dbg !5204
  store i16* %20, i16** %cache7, align 8, !dbg !5203
  %21 = load i32, i32* %val.addr, align 4, !dbg !5205
  %conv8 = trunc i32 %21 to i16, !dbg !5205
  %22 = load i16*, i16** %cache7, align 8, !dbg !5206
  %23 = load i32, i32* %idx.addr, align 4, !dbg !5207
  %idxprom9 = zext i32 %23 to i64, !dbg !5206
  %arrayidx10 = getelementptr i16, i16* %22, i64 %idxprom9, !dbg !5206
  store i16 %conv8, i16* %arrayidx10, align 2, !dbg !5208
  br label %sw.epilog, !dbg !5209

sw.bb11:                                          ; preds = %if.end4
  call void @llvm.dbg.declare(metadata i32** %cache12, metadata !5210, metadata !DIExpression()), !dbg !5212
  %24 = load i8*, i8** %base.addr, align 8, !dbg !5213
  %25 = bitcast i8* %24 to i32*, !dbg !5213
  store i32* %25, i32** %cache12, align 8, !dbg !5212
  %26 = load i32, i32* %val.addr, align 4, !dbg !5214
  %27 = load i32*, i32** %cache12, align 8, !dbg !5215
  %28 = load i32, i32* %idx.addr, align 4, !dbg !5216
  %idxprom13 = zext i32 %28 to i64, !dbg !5215
  %arrayidx14 = getelementptr i32, i32* %27, i64 %idxprom13, !dbg !5215
  store i32 %26, i32* %arrayidx14, align 4, !dbg !5217
  br label %sw.epilog, !dbg !5218

sw.bb15:                                          ; preds = %if.end4
  call void @llvm.dbg.declare(metadata i64** %cache16, metadata !5219, metadata !DIExpression()), !dbg !5221
  %29 = load i8*, i8** %base.addr, align 8, !dbg !5222
  %30 = bitcast i8* %29 to i64*, !dbg !5222
  store i64* %30, i64** %cache16, align 8, !dbg !5221
  %31 = load i32, i32* %val.addr, align 4, !dbg !5223
  %conv17 = zext i32 %31 to i64, !dbg !5223
  %32 = load i64*, i64** %cache16, align 8, !dbg !5224
  %33 = load i32, i32* %idx.addr, align 4, !dbg !5225
  %idxprom18 = zext i32 %33 to i64, !dbg !5224
  %arrayidx19 = getelementptr i64, i64* %32, i64 %idxprom18, !dbg !5224
  store i64 %conv17, i64* %arrayidx19, align 8, !dbg !5226
  br label %sw.epilog, !dbg !5227

sw.default:                                       ; preds = %if.end4
  br label %do.body, !dbg !5228

do.body:                                          ; preds = %sw.default
  br label %do.body20, !dbg !5229

do.body20:                                        ; preds = %do.body
  br label %do.end, !dbg !5231

do.end:                                           ; preds = %do.body20
  br label %do.body21, !dbg !5229

do.body21:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 589, i32 0, i64 12) #9, !dbg !5233, !srcloc !5235
  br label %do.end22, !dbg !5233

do.end22:                                         ; preds = %do.body21
  br label %do.body23, !dbg !5229

do.body23:                                        ; preds = %do.end22
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 207) #9, !dbg !5236, !srcloc !5239
  unreachable, !dbg !5240

do.end24:                                         ; No predecessors!
  br label %do.end25, !dbg !5229

do.end25:                                         ; preds = %do.end24
  br label %sw.epilog, !dbg !5241

sw.epilog:                                        ; preds = %do.end25, %sw.bb15, %sw.bb11, %sw.bb6, %sw.bb
  store i1 false, i1* %retval, align 1, !dbg !5242
  br label %return, !dbg !5242

return:                                           ; preds = %sw.epilog, %if.then1, %if.then
  %34 = load i1, i1* %retval, align 1, !dbg !5243
  ret i1 %34, !dbg !5243
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @regcache_get_val(%struct.regmap* %map, i8* %base, i32 %idx) #0 !dbg !5244 {
entry:
  %retval = alloca i32, align 4
  %map.addr = alloca %struct.regmap*, align 8
  %base.addr = alloca i8*, align 8
  %idx.addr = alloca i32, align 4
  %cache = alloca i8*, align 8
  %cache8 = alloca i16*, align 8
  %cache13 = alloca i32*, align 8
  %cache17 = alloca i64*, align 8
  store %struct.regmap* %map, %struct.regmap** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.regmap** %map.addr, metadata !5247, metadata !DIExpression()), !dbg !5248
  store i8* %base, i8** %base.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %base.addr, metadata !5249, metadata !DIExpression()), !dbg !5250
  store i32 %idx, i32* %idx.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %idx.addr, metadata !5251, metadata !DIExpression()), !dbg !5252
  %0 = load i8*, i8** %base.addr, align 8, !dbg !5253
  %tobool = icmp ne i8* %0, null, !dbg !5253
  br i1 %tobool, label %if.end, label %if.then, !dbg !5255

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5256
  br label %return, !dbg !5256

if.end:                                           ; preds = %entry
  %1 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5257
  %format = getelementptr inbounds %struct.regmap, %struct.regmap* %1, i32 0, i32 7, !dbg !5259
  %parse_val = getelementptr inbounds %struct.regmap_format, %struct.regmap_format* %format, i32 0, i32 7, !dbg !5260
  %2 = load i32 (i8*)*, i32 (i8*)** %parse_val, align 8, !dbg !5260
  %tobool1 = icmp ne i32 (i8*)* %2, null, !dbg !5257
  br i1 %tobool1, label %if.then2, label %if.end6, !dbg !5261

if.then2:                                         ; preds = %if.end
  %3 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5262
  %format3 = getelementptr inbounds %struct.regmap, %struct.regmap* %3, i32 0, i32 7, !dbg !5263
  %parse_val4 = getelementptr inbounds %struct.regmap_format, %struct.regmap_format* %format3, i32 0, i32 7, !dbg !5264
  %4 = load i32 (i8*)*, i32 (i8*)** %parse_val4, align 8, !dbg !5264
  %5 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5265
  %6 = load i8*, i8** %base.addr, align 8, !dbg !5266
  %7 = load i32, i32* %idx.addr, align 4, !dbg !5267
  %call = call i8* @regcache_get_val_addr(%struct.regmap* %5, i8* %6, i32 %7) #8, !dbg !5268
  %call5 = call i32 %4(i8* %call) #8, !dbg !5262
  store i32 %call5, i32* %retval, align 4, !dbg !5269
  br label %return, !dbg !5269

if.end6:                                          ; preds = %if.end
  %8 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5270
  %cache_word_size = getelementptr inbounds %struct.regmap, %struct.regmap* %8, i32 0, i32 42, !dbg !5271
  %9 = load i32, i32* %cache_word_size, align 8, !dbg !5271
  switch i32 %9, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb7
    i32 4, label %sw.bb12
    i32 8, label %sw.bb16
  ], !dbg !5272

sw.bb:                                            ; preds = %if.end6
  call void @llvm.dbg.declare(metadata i8** %cache, metadata !5273, metadata !DIExpression()), !dbg !5278
  %10 = load i8*, i8** %base.addr, align 8, !dbg !5279
  store i8* %10, i8** %cache, align 8, !dbg !5278
  %11 = load i8*, i8** %cache, align 8, !dbg !5280
  %12 = load i32, i32* %idx.addr, align 4, !dbg !5281
  %idxprom = zext i32 %12 to i64, !dbg !5280
  %arrayidx = getelementptr i8, i8* %11, i64 %idxprom, !dbg !5280
  %13 = load i8, i8* %arrayidx, align 1, !dbg !5280
  %conv = zext i8 %13 to i32, !dbg !5280
  store i32 %conv, i32* %retval, align 4, !dbg !5282
  br label %return, !dbg !5282

sw.bb7:                                           ; preds = %if.end6
  call void @llvm.dbg.declare(metadata i16** %cache8, metadata !5283, metadata !DIExpression()), !dbg !5287
  %14 = load i8*, i8** %base.addr, align 8, !dbg !5288
  %15 = bitcast i8* %14 to i16*, !dbg !5288
  store i16* %15, i16** %cache8, align 8, !dbg !5287
  %16 = load i16*, i16** %cache8, align 8, !dbg !5289
  %17 = load i32, i32* %idx.addr, align 4, !dbg !5290
  %idxprom9 = zext i32 %17 to i64, !dbg !5289
  %arrayidx10 = getelementptr i16, i16* %16, i64 %idxprom9, !dbg !5289
  %18 = load i16, i16* %arrayidx10, align 2, !dbg !5289
  %conv11 = zext i16 %18 to i32, !dbg !5289
  store i32 %conv11, i32* %retval, align 4, !dbg !5291
  br label %return, !dbg !5291

sw.bb12:                                          ; preds = %if.end6
  call void @llvm.dbg.declare(metadata i32** %cache13, metadata !5292, metadata !DIExpression()), !dbg !5296
  %19 = load i8*, i8** %base.addr, align 8, !dbg !5297
  %20 = bitcast i8* %19 to i32*, !dbg !5297
  store i32* %20, i32** %cache13, align 8, !dbg !5296
  %21 = load i32*, i32** %cache13, align 8, !dbg !5298
  %22 = load i32, i32* %idx.addr, align 4, !dbg !5299
  %idxprom14 = zext i32 %22 to i64, !dbg !5298
  %arrayidx15 = getelementptr i32, i32* %21, i64 %idxprom14, !dbg !5298
  %23 = load i32, i32* %arrayidx15, align 4, !dbg !5298
  store i32 %23, i32* %retval, align 4, !dbg !5300
  br label %return, !dbg !5300

sw.bb16:                                          ; preds = %if.end6
  call void @llvm.dbg.declare(metadata i64** %cache17, metadata !5301, metadata !DIExpression()), !dbg !5305
  %24 = load i8*, i8** %base.addr, align 8, !dbg !5306
  %25 = bitcast i8* %24 to i64*, !dbg !5306
  store i64* %25, i64** %cache17, align 8, !dbg !5305
  %26 = load i64*, i64** %cache17, align 8, !dbg !5307
  %27 = load i32, i32* %idx.addr, align 4, !dbg !5308
  %idxprom18 = zext i32 %27 to i64, !dbg !5307
  %arrayidx19 = getelementptr i64, i64* %26, i64 %idxprom18, !dbg !5307
  %28 = load i64, i64* %arrayidx19, align 8, !dbg !5307
  %conv20 = trunc i64 %28 to i32, !dbg !5307
  store i32 %conv20, i32* %retval, align 4, !dbg !5309
  br label %return, !dbg !5309

sw.default:                                       ; preds = %if.end6
  br label %do.body, !dbg !5310

do.body:                                          ; preds = %sw.default
  br label %do.body21, !dbg !5311

do.body21:                                        ; preds = %do.body
  br label %do.end, !dbg !5313

do.end:                                           ; preds = %do.body21
  br label %do.body22, !dbg !5311

do.body22:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 629, i32 0, i64 12) #9, !dbg !5315, !srcloc !5317
  br label %do.end23, !dbg !5315

do.end23:                                         ; preds = %do.body22
  br label %do.body24, !dbg !5311

do.body24:                                        ; preds = %do.end23
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 208) #9, !dbg !5318, !srcloc !5321
  unreachable, !dbg !5322

do.end25:                                         ; No predecessors!
  br label %do.end26, !dbg !5311

do.end26:                                         ; preds = %do.end25
  br label %sw.epilog, !dbg !5323

sw.epilog:                                        ; preds = %do.end26
  store i32 -1, i32* %retval, align 4, !dbg !5324
  br label %return, !dbg !5324

return:                                           ; preds = %sw.epilog, %sw.bb16, %sw.bb12, %sw.bb7, %sw.bb, %if.then2, %if.then
  %29 = load i32, i32* %retval, align 4, !dbg !5325
  ret i32 %29, !dbg !5325
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @regcache_get_val_addr(%struct.regmap* %map, i8* %base, i32 %idx) #0 !dbg !5326 {
entry:
  %map.addr = alloca %struct.regmap*, align 8
  %base.addr = alloca i8*, align 8
  %idx.addr = alloca i32, align 4
  store %struct.regmap* %map, %struct.regmap** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.regmap** %map.addr, metadata !5329, metadata !DIExpression()), !dbg !5330
  store i8* %base, i8** %base.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %base.addr, metadata !5331, metadata !DIExpression()), !dbg !5332
  store i32 %idx, i32* %idx.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %idx.addr, metadata !5333, metadata !DIExpression()), !dbg !5334
  %0 = load i8*, i8** %base.addr, align 8, !dbg !5335
  %1 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5336
  %cache_word_size = getelementptr inbounds %struct.regmap, %struct.regmap* %1, i32 0, i32 42, !dbg !5337
  %2 = load i32, i32* %cache_word_size, align 8, !dbg !5337
  %3 = load i32, i32* %idx.addr, align 4, !dbg !5338
  %mul = mul i32 %2, %3, !dbg !5339
  %idx.ext = zext i32 %mul to i64, !dbg !5340
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext, !dbg !5340
  ret i8* %add.ptr, !dbg !5341
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @regcache_lookup_reg(%struct.regmap* %map, i32 %reg) #0 !dbg !5342 {
entry:
  %retval = alloca i32, align 4
  %map.addr = alloca %struct.regmap*, align 8
  %reg.addr = alloca i32, align 4
  %key = alloca %struct.reg_default, align 4
  %r = alloca %struct.reg_default*, align 8
  store %struct.regmap* %map, %struct.regmap** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.regmap** %map.addr, metadata !5345, metadata !DIExpression()), !dbg !5346
  store i32 %reg, i32* %reg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reg.addr, metadata !5347, metadata !DIExpression()), !dbg !5348
  call void @llvm.dbg.declare(metadata %struct.reg_default* %key, metadata !5349, metadata !DIExpression()), !dbg !5350
  call void @llvm.dbg.declare(metadata %struct.reg_default** %r, metadata !5351, metadata !DIExpression()), !dbg !5352
  %0 = load i32, i32* %reg.addr, align 4, !dbg !5353
  %reg1 = getelementptr inbounds %struct.reg_default, %struct.reg_default* %key, i32 0, i32 0, !dbg !5354
  store i32 %0, i32* %reg1, align 4, !dbg !5355
  %def = getelementptr inbounds %struct.reg_default, %struct.reg_default* %key, i32 0, i32 1, !dbg !5356
  store i32 0, i32* %def, align 4, !dbg !5357
  %1 = bitcast %struct.reg_default* %key to i8*, !dbg !5358
  %2 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5359
  %reg_defaults = getelementptr inbounds %struct.regmap, %struct.regmap* %2, i32 0, i32 48, !dbg !5360
  %3 = load %struct.reg_default*, %struct.reg_default** %reg_defaults, align 8, !dbg !5360
  %4 = bitcast %struct.reg_default* %3 to i8*, !dbg !5359
  %5 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5361
  %num_reg_defaults = getelementptr inbounds %struct.regmap, %struct.regmap* %5, i32 0, i32 43, !dbg !5362
  %6 = load i32, i32* %num_reg_defaults, align 4, !dbg !5362
  %conv = zext i32 %6 to i64, !dbg !5361
  %call = call i8* @bsearch(i8* %1, i8* %4, i64 %conv, i64 8, i32 (i8*, i8*)* @regcache_default_cmp) #8, !dbg !5363
  %7 = bitcast i8* %call to %struct.reg_default*, !dbg !5363
  store %struct.reg_default* %7, %struct.reg_default** %r, align 8, !dbg !5364
  %8 = load %struct.reg_default*, %struct.reg_default** %r, align 8, !dbg !5365
  %tobool = icmp ne %struct.reg_default* %8, null, !dbg !5365
  br i1 %tobool, label %if.then, label %if.else, !dbg !5367

if.then:                                          ; preds = %entry
  %9 = load %struct.reg_default*, %struct.reg_default** %r, align 8, !dbg !5368
  %10 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5369
  %reg_defaults2 = getelementptr inbounds %struct.regmap, %struct.regmap* %10, i32 0, i32 48, !dbg !5370
  %11 = load %struct.reg_default*, %struct.reg_default** %reg_defaults2, align 8, !dbg !5370
  %sub.ptr.lhs.cast = ptrtoint %struct.reg_default* %9 to i64, !dbg !5371
  %sub.ptr.rhs.cast = ptrtoint %struct.reg_default* %11 to i64, !dbg !5371
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5371
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8, !dbg !5371
  %conv3 = trunc i64 %sub.ptr.div to i32, !dbg !5368
  store i32 %conv3, i32* %retval, align 4, !dbg !5372
  br label %return, !dbg !5372

if.else:                                          ; preds = %entry
  store i32 -2, i32* %retval, align 4, !dbg !5373
  br label %return, !dbg !5373

return:                                           ; preds = %if.else, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !5374
  ret i32 %12, !dbg !5374
}

; Function Attrs: noredzone
declare dso_local i8* @bsearch(i8*, i8*, i64, i64, i32 (i8*, i8*)*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @regcache_default_cmp(i8* %a, i8* %b) #0 !dbg !5375 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %_a = alloca %struct.reg_default*, align 8
  %_b = alloca %struct.reg_default*, align 8
  store i8* %a, i8** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %a.addr, metadata !5378, metadata !DIExpression()), !dbg !5379
  store i8* %b, i8** %b.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %b.addr, metadata !5380, metadata !DIExpression()), !dbg !5381
  call void @llvm.dbg.declare(metadata %struct.reg_default** %_a, metadata !5382, metadata !DIExpression()), !dbg !5383
  %0 = load i8*, i8** %a.addr, align 8, !dbg !5384
  %1 = bitcast i8* %0 to %struct.reg_default*, !dbg !5384
  store %struct.reg_default* %1, %struct.reg_default** %_a, align 8, !dbg !5383
  call void @llvm.dbg.declare(metadata %struct.reg_default** %_b, metadata !5385, metadata !DIExpression()), !dbg !5386
  %2 = load i8*, i8** %b.addr, align 8, !dbg !5387
  %3 = bitcast i8* %2 to %struct.reg_default*, !dbg !5387
  store %struct.reg_default* %3, %struct.reg_default** %_b, align 8, !dbg !5386
  %4 = load %struct.reg_default*, %struct.reg_default** %_a, align 8, !dbg !5388
  %reg = getelementptr inbounds %struct.reg_default, %struct.reg_default* %4, i32 0, i32 0, !dbg !5389
  %5 = load i32, i32* %reg, align 4, !dbg !5389
  %6 = load %struct.reg_default*, %struct.reg_default** %_b, align 8, !dbg !5390
  %reg1 = getelementptr inbounds %struct.reg_default, %struct.reg_default* %6, i32 0, i32 0, !dbg !5391
  %7 = load i32, i32* %reg1, align 4, !dbg !5391
  %sub = sub i32 %5, %7, !dbg !5392
  ret i32 %sub, !dbg !5393
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @regcache_sync_block(%struct.regmap* %map, i8* %block, i64* %cache_present, i32 %block_base, i32 %start, i32 %end) #0 !dbg !5394 {
entry:
  %retval = alloca i32, align 4
  %map.addr = alloca %struct.regmap*, align 8
  %block.addr = alloca i8*, align 8
  %cache_present.addr = alloca i64*, align 8
  %block_base.addr = alloca i32, align 4
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  store %struct.regmap* %map, %struct.regmap** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.regmap** %map.addr, metadata !5397, metadata !DIExpression()), !dbg !5398
  store i8* %block, i8** %block.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %block.addr, metadata !5399, metadata !DIExpression()), !dbg !5400
  store i64* %cache_present, i64** %cache_present.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %cache_present.addr, metadata !5401, metadata !DIExpression()), !dbg !5402
  store i32 %block_base, i32* %block_base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %block_base.addr, metadata !5403, metadata !DIExpression()), !dbg !5404
  store i32 %start, i32* %start.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %start.addr, metadata !5405, metadata !DIExpression()), !dbg !5406
  store i32 %end, i32* %end.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %end.addr, metadata !5407, metadata !DIExpression()), !dbg !5408
  %0 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5409
  %call = call zeroext i1 @regmap_can_raw_write(%struct.regmap* %0) #8, !dbg !5411
  br i1 %call, label %land.lhs.true, label %if.else, !dbg !5412

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5413
  %use_single_write = getelementptr inbounds %struct.regmap, %struct.regmap* %1, i32 0, i32 56, !dbg !5414
  %2 = load i8, i8* %use_single_write, align 1, !dbg !5414
  %tobool = trunc i8 %2 to i1, !dbg !5414
  br i1 %tobool, label %if.else, label %if.then, !dbg !5415

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5416
  %4 = load i8*, i8** %block.addr, align 8, !dbg !5417
  %5 = load i64*, i64** %cache_present.addr, align 8, !dbg !5418
  %6 = load i32, i32* %block_base.addr, align 4, !dbg !5419
  %7 = load i32, i32* %start.addr, align 4, !dbg !5420
  %8 = load i32, i32* %end.addr, align 4, !dbg !5421
  %call1 = call i32 @regcache_sync_block_raw(%struct.regmap* %3, i8* %4, i64* %5, i32 %6, i32 %7, i32 %8) #8, !dbg !5422
  store i32 %call1, i32* %retval, align 4, !dbg !5423
  br label %return, !dbg !5423

if.else:                                          ; preds = %land.lhs.true, %entry
  %9 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5424
  %10 = load i8*, i8** %block.addr, align 8, !dbg !5425
  %11 = load i64*, i64** %cache_present.addr, align 8, !dbg !5426
  %12 = load i32, i32* %block_base.addr, align 4, !dbg !5427
  %13 = load i32, i32* %start.addr, align 4, !dbg !5428
  %14 = load i32, i32* %end.addr, align 4, !dbg !5429
  %call2 = call i32 @regcache_sync_block_single(%struct.regmap* %9, i8* %10, i64* %11, i32 %12, i32 %13, i32 %14) #8, !dbg !5430
  store i32 %call2, i32* %retval, align 4, !dbg !5431
  br label %return, !dbg !5431

return:                                           ; preds = %if.else, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !5432
  ret i32 %15, !dbg !5432
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @regmap_can_raw_write(%struct.regmap*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @regcache_sync_block_raw(%struct.regmap* %map, i8* %block, i64* %cache_present, i32 %block_base, i32 %start, i32 %end) #0 !dbg !5433 {
entry:
  %retval = alloca i32, align 4
  %map.addr = alloca %struct.regmap*, align 8
  %block.addr = alloca i8*, align 8
  %cache_present.addr = alloca i64*, align 8
  %block_base.addr = alloca i32, align 4
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %val = alloca i32, align 4
  %regtmp = alloca i32, align 4
  %base = alloca i32, align 4
  %data = alloca i8*, align 8
  %ret = alloca i32, align 4
  store %struct.regmap* %map, %struct.regmap** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.regmap** %map.addr, metadata !5434, metadata !DIExpression()), !dbg !5435
  store i8* %block, i8** %block.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %block.addr, metadata !5436, metadata !DIExpression()), !dbg !5437
  store i64* %cache_present, i64** %cache_present.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %cache_present.addr, metadata !5438, metadata !DIExpression()), !dbg !5439
  store i32 %block_base, i32* %block_base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %block_base.addr, metadata !5440, metadata !DIExpression()), !dbg !5441
  store i32 %start, i32* %start.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %start.addr, metadata !5442, metadata !DIExpression()), !dbg !5443
  store i32 %end, i32* %end.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %end.addr, metadata !5444, metadata !DIExpression()), !dbg !5445
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5446, metadata !DIExpression()), !dbg !5447
  call void @llvm.dbg.declare(metadata i32* %val, metadata !5448, metadata !DIExpression()), !dbg !5449
  call void @llvm.dbg.declare(metadata i32* %regtmp, metadata !5450, metadata !DIExpression()), !dbg !5451
  store i32 0, i32* %regtmp, align 4, !dbg !5451
  call void @llvm.dbg.declare(metadata i32* %base, metadata !5452, metadata !DIExpression()), !dbg !5453
  store i32 0, i32* %base, align 4, !dbg !5453
  call void @llvm.dbg.declare(metadata i8** %data, metadata !5454, metadata !DIExpression()), !dbg !5455
  store i8* null, i8** %data, align 8, !dbg !5455
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5456, metadata !DIExpression()), !dbg !5457
  %0 = load i32, i32* %start.addr, align 4, !dbg !5458
  store i32 %0, i32* %i, align 4, !dbg !5460
  br label %for.cond, !dbg !5461

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !5462
  %2 = load i32, i32* %end.addr, align 4, !dbg !5464
  %cmp = icmp ult i32 %1, %2, !dbg !5465
  br i1 %cmp, label %for.body, label %for.end, !dbg !5466

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %block_base.addr, align 4, !dbg !5467
  %4 = load i32, i32* %i, align 4, !dbg !5469
  %5 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5470
  %reg_stride = getelementptr inbounds %struct.regmap, %struct.regmap* %5, i32 0, i32 37, !dbg !5471
  %6 = load i32, i32* %reg_stride, align 4, !dbg !5471
  %mul = mul i32 %4, %6, !dbg !5472
  %add = add i32 %3, %mul, !dbg !5473
  store i32 %add, i32* %regtmp, align 4, !dbg !5474
  %7 = load i64*, i64** %cache_present.addr, align 8, !dbg !5475
  %8 = load i32, i32* %i, align 4, !dbg !5477
  %call = call zeroext i1 @regcache_reg_present(i64* %7, i32 %8) #8, !dbg !5478
  br i1 %call, label %lor.lhs.false, label %if.then, !dbg !5479

lor.lhs.false:                                    ; preds = %for.body
  %9 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5480
  %10 = load i32, i32* %regtmp, align 4, !dbg !5481
  %call1 = call zeroext i1 @regmap_writeable(%struct.regmap* %9, i32 %10) #8, !dbg !5482
  br i1 %call1, label %if.end5, label %if.then, !dbg !5483

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %11 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5484
  %12 = load i32, i32* %base, align 4, !dbg !5486
  %13 = load i32, i32* %regtmp, align 4, !dbg !5487
  %call2 = call i32 @regcache_sync_block_raw_flush(%struct.regmap* %11, i8** %data, i32 %12, i32 %13) #8, !dbg !5488
  store i32 %call2, i32* %ret, align 4, !dbg !5489
  %14 = load i32, i32* %ret, align 4, !dbg !5490
  %cmp3 = icmp ne i32 %14, 0, !dbg !5492
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !5493

if.then4:                                         ; preds = %if.then
  %15 = load i32, i32* %ret, align 4, !dbg !5494
  store i32 %15, i32* %retval, align 4, !dbg !5495
  br label %return, !dbg !5495

if.end:                                           ; preds = %if.then
  br label %for.inc, !dbg !5496

if.end5:                                          ; preds = %lor.lhs.false
  %16 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5497
  %17 = load i8*, i8** %block.addr, align 8, !dbg !5498
  %18 = load i32, i32* %i, align 4, !dbg !5499
  %call6 = call i32 @regcache_get_val(%struct.regmap* %16, i8* %17, i32 %18) #8, !dbg !5500
  store i32 %call6, i32* %val, align 4, !dbg !5501
  %19 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5502
  %20 = load i32, i32* %regtmp, align 4, !dbg !5504
  %21 = load i32, i32* %val, align 4, !dbg !5505
  %call7 = call zeroext i1 @regcache_reg_needs_sync(%struct.regmap* %19, i32 %20, i32 %21) #8, !dbg !5506
  br i1 %call7, label %if.end13, label %if.then8, !dbg !5507

if.then8:                                         ; preds = %if.end5
  %22 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5508
  %23 = load i32, i32* %base, align 4, !dbg !5510
  %24 = load i32, i32* %regtmp, align 4, !dbg !5511
  %call9 = call i32 @regcache_sync_block_raw_flush(%struct.regmap* %22, i8** %data, i32 %23, i32 %24) #8, !dbg !5512
  store i32 %call9, i32* %ret, align 4, !dbg !5513
  %25 = load i32, i32* %ret, align 4, !dbg !5514
  %cmp10 = icmp ne i32 %25, 0, !dbg !5516
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !5517

if.then11:                                        ; preds = %if.then8
  %26 = load i32, i32* %ret, align 4, !dbg !5518
  store i32 %26, i32* %retval, align 4, !dbg !5519
  br label %return, !dbg !5519

if.end12:                                         ; preds = %if.then8
  br label %for.inc, !dbg !5520

if.end13:                                         ; preds = %if.end5
  %27 = load i8*, i8** %data, align 8, !dbg !5521
  %tobool = icmp ne i8* %27, null, !dbg !5521
  br i1 %tobool, label %if.end16, label %if.then14, !dbg !5523

if.then14:                                        ; preds = %if.end13
  %28 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5524
  %29 = load i8*, i8** %block.addr, align 8, !dbg !5526
  %30 = load i32, i32* %i, align 4, !dbg !5527
  %call15 = call i8* @regcache_get_val_addr(%struct.regmap* %28, i8* %29, i32 %30) #8, !dbg !5528
  store i8* %call15, i8** %data, align 8, !dbg !5529
  %31 = load i32, i32* %regtmp, align 4, !dbg !5530
  store i32 %31, i32* %base, align 4, !dbg !5531
  br label %if.end16, !dbg !5532

if.end16:                                         ; preds = %if.then14, %if.end13
  br label %for.inc, !dbg !5533

for.inc:                                          ; preds = %if.end16, %if.end12, %if.end
  %32 = load i32, i32* %i, align 4, !dbg !5534
  %inc = add i32 %32, 1, !dbg !5534
  store i32 %inc, i32* %i, align 4, !dbg !5534
  br label %for.cond, !dbg !5535, !llvm.loop !5536

for.end:                                          ; preds = %for.cond
  %33 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5538
  %34 = load i32, i32* %base, align 4, !dbg !5539
  %35 = load i32, i32* %regtmp, align 4, !dbg !5540
  %36 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5541
  %reg_stride17 = getelementptr inbounds %struct.regmap, %struct.regmap* %36, i32 0, i32 37, !dbg !5542
  %37 = load i32, i32* %reg_stride17, align 4, !dbg !5542
  %add18 = add i32 %35, %37, !dbg !5543
  %call19 = call i32 @regcache_sync_block_raw_flush(%struct.regmap* %33, i8** %data, i32 %34, i32 %add18) #8, !dbg !5544
  store i32 %call19, i32* %retval, align 4, !dbg !5545
  br label %return, !dbg !5545

return:                                           ; preds = %for.end, %if.then11, %if.then4
  %38 = load i32, i32* %retval, align 4, !dbg !5546
  ret i32 %38, !dbg !5546
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @regcache_sync_block_single(%struct.regmap* %map, i8* %block, i64* %cache_present, i32 %block_base, i32 %start, i32 %end) #0 !dbg !5547 {
entry:
  %retval = alloca i32, align 4
  %map.addr = alloca %struct.regmap*, align 8
  %block.addr = alloca i8*, align 8
  %cache_present.addr = alloca i64*, align 8
  %block_base.addr = alloca i32, align 4
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %regtmp = alloca i32, align 4
  %val = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.regmap* %map, %struct.regmap** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.regmap** %map.addr, metadata !5548, metadata !DIExpression()), !dbg !5549
  store i8* %block, i8** %block.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %block.addr, metadata !5550, metadata !DIExpression()), !dbg !5551
  store i64* %cache_present, i64** %cache_present.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %cache_present.addr, metadata !5552, metadata !DIExpression()), !dbg !5553
  store i32 %block_base, i32* %block_base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %block_base.addr, metadata !5554, metadata !DIExpression()), !dbg !5555
  store i32 %start, i32* %start.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %start.addr, metadata !5556, metadata !DIExpression()), !dbg !5557
  store i32 %end, i32* %end.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %end.addr, metadata !5558, metadata !DIExpression()), !dbg !5559
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5560, metadata !DIExpression()), !dbg !5561
  call void @llvm.dbg.declare(metadata i32* %regtmp, metadata !5562, metadata !DIExpression()), !dbg !5563
  call void @llvm.dbg.declare(metadata i32* %val, metadata !5564, metadata !DIExpression()), !dbg !5565
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5566, metadata !DIExpression()), !dbg !5567
  %0 = load i32, i32* %start.addr, align 4, !dbg !5568
  store i32 %0, i32* %i, align 4, !dbg !5570
  br label %for.cond, !dbg !5571

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !5572
  %2 = load i32, i32* %end.addr, align 4, !dbg !5574
  %cmp = icmp ult i32 %1, %2, !dbg !5575
  br i1 %cmp, label %for.body, label %for.end, !dbg !5576

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %block_base.addr, align 4, !dbg !5577
  %4 = load i32, i32* %i, align 4, !dbg !5579
  %5 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5580
  %reg_stride = getelementptr inbounds %struct.regmap, %struct.regmap* %5, i32 0, i32 37, !dbg !5581
  %6 = load i32, i32* %reg_stride, align 4, !dbg !5581
  %mul = mul i32 %4, %6, !dbg !5582
  %add = add i32 %3, %mul, !dbg !5583
  store i32 %add, i32* %regtmp, align 4, !dbg !5584
  %7 = load i64*, i64** %cache_present.addr, align 8, !dbg !5585
  %8 = load i32, i32* %i, align 4, !dbg !5587
  %call = call zeroext i1 @regcache_reg_present(i64* %7, i32 %8) #8, !dbg !5588
  br i1 %call, label %lor.lhs.false, label %if.then, !dbg !5589

lor.lhs.false:                                    ; preds = %for.body
  %9 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5590
  %10 = load i32, i32* %regtmp, align 4, !dbg !5591
  %call1 = call zeroext i1 @regmap_writeable(%struct.regmap* %9, i32 %10) #8, !dbg !5592
  br i1 %call1, label %if.end, label %if.then, !dbg !5593

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.inc, !dbg !5594

if.end:                                           ; preds = %lor.lhs.false
  %11 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5595
  %12 = load i8*, i8** %block.addr, align 8, !dbg !5596
  %13 = load i32, i32* %i, align 4, !dbg !5597
  %call2 = call i32 @regcache_get_val(%struct.regmap* %11, i8* %12, i32 %13) #8, !dbg !5598
  store i32 %call2, i32* %val, align 4, !dbg !5599
  %14 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5600
  %15 = load i32, i32* %regtmp, align 4, !dbg !5602
  %16 = load i32, i32* %val, align 4, !dbg !5603
  %call3 = call zeroext i1 @regcache_reg_needs_sync(%struct.regmap* %14, i32 %15, i32 %16) #8, !dbg !5604
  br i1 %call3, label %if.end5, label %if.then4, !dbg !5605

if.then4:                                         ; preds = %if.end
  br label %for.inc, !dbg !5606

if.end5:                                          ; preds = %if.end
  %17 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5607
  %cache_bypass = getelementptr inbounds %struct.regmap, %struct.regmap* %17, i32 0, i32 46, !dbg !5608
  store i8 1, i8* %cache_bypass, align 1, !dbg !5609
  %18 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5610
  %19 = load i32, i32* %regtmp, align 4, !dbg !5611
  %20 = load i32, i32* %val, align 4, !dbg !5612
  %call6 = call i32 @_regmap_write(%struct.regmap* %18, i32 %19, i32 %20) #8, !dbg !5613
  store i32 %call6, i32* %ret, align 4, !dbg !5614
  %21 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5615
  %cache_bypass7 = getelementptr inbounds %struct.regmap, %struct.regmap* %21, i32 0, i32 46, !dbg !5616
  store i8 0, i8* %cache_bypass7, align 1, !dbg !5617
  %22 = load i32, i32* %ret, align 4, !dbg !5618
  %cmp8 = icmp ne i32 %22, 0, !dbg !5620
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !5621

if.then9:                                         ; preds = %if.end5
  %23 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5622
  %dev = getelementptr inbounds %struct.regmap, %struct.regmap* %23, i32 0, i32 5, !dbg !5622
  %24 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5622
  %25 = load i32, i32* %regtmp, align 4, !dbg !5622
  %26 = load i32, i32* %ret, align 4, !dbg !5622
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i32 %25, i32 %26) #7, !dbg !5622
  %27 = load i32, i32* %ret, align 4, !dbg !5624
  store i32 %27, i32* %retval, align 4, !dbg !5625
  br label %return, !dbg !5625

if.end10:                                         ; preds = %if.end5
  br label %for.inc, !dbg !5626

for.inc:                                          ; preds = %if.end10, %if.then4, %if.then
  %28 = load i32, i32* %i, align 4, !dbg !5627
  %inc = add i32 %28, 1, !dbg !5627
  store i32 %inc, i32* %i, align 4, !dbg !5627
  br label %for.cond, !dbg !5628, !llvm.loop !5629

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !5631
  br label %return, !dbg !5631

return:                                           ; preds = %for.end, %if.then9
  %29 = load i32, i32* %retval, align 4, !dbg !5632
  ret i32 %29, !dbg !5632
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @regmap_readable(%struct.regmap*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmalloc_array(i64 %n, i64 %size, i32 %flags) #0 !dbg !5633 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4049, metadata !DIExpression()), !dbg !5636
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4063, metadata !DIExpression()), !dbg !5640
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4065, metadata !DIExpression()), !dbg !5641
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4067, metadata !DIExpression()), !dbg !5642
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4069, metadata !DIExpression()), !dbg !5643
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4075, metadata !DIExpression()), !dbg !5645
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4081, metadata !DIExpression()), !dbg !5647
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4090, metadata !DIExpression()), !dbg !5650
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4092, metadata !DIExpression()), !dbg !5651
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4094, metadata !DIExpression()), !dbg !5652
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4096, metadata !DIExpression()), !dbg !5653
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4098, metadata !DIExpression()), !dbg !5654
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4100, metadata !DIExpression()), !dbg !5655
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4102, metadata !DIExpression()), !dbg !5656
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4104, metadata !DIExpression()), !dbg !5657
  %retval = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %__a = alloca i64, align 8
  %__b = alloca i64, align 8
  %__d = alloca i64*, align 8
  %tmp = alloca i8, align 1
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5658, metadata !DIExpression()), !dbg !5659
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5660, metadata !DIExpression()), !dbg !5661
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5662, metadata !DIExpression()), !dbg !5663
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !5664, metadata !DIExpression()), !dbg !5665
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !5666, metadata !DIExpression()), !dbg !5669
  %0 = load i64, i64* %n.addr, align 8, !dbg !5669
  store i64 %0, i64* %__a, align 8, !dbg !5669
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !5670, metadata !DIExpression()), !dbg !5669
  %1 = load i64, i64* %size.addr, align 8, !dbg !5669
  store i64 %1, i64* %__b, align 8, !dbg !5669
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !5671, metadata !DIExpression()), !dbg !5669
  store i64* %bytes, i64** %__d, align 8, !dbg !5669
  %cmp = icmp eq i64* %__a, %__b, !dbg !5669
  %conv = zext i1 %cmp to i32, !dbg !5669
  %2 = load i64*, i64** %__d, align 8, !dbg !5669
  %cmp1 = icmp eq i64* %__a, %2, !dbg !5669
  %conv2 = zext i1 %cmp1 to i32, !dbg !5669
  %3 = load i64, i64* %__a, align 8, !dbg !5669
  %4 = load i64, i64* %__b, align 8, !dbg !5669
  %5 = load i64*, i64** %__d, align 8, !dbg !5669
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !5669
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !5669
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !5669
  store i64 %8, i64* %5, align 8, !dbg !5669
  %frombool = zext i1 %7 to i8, !dbg !5669
  store i8 %frombool, i8* %tmp, align 1, !dbg !5669
  %9 = load i8, i8* %tmp, align 1, !dbg !5669
  %tobool = trunc i8 %9 to i1, !dbg !5669
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #8, !dbg !5673
  %lnot = xor i1 %call, true, !dbg !5673
  %lnot3 = xor i1 %lnot, true, !dbg !5673
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5673
  %conv4 = sext i32 %lnot.ext to i64, !dbg !5673
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !5673
  br i1 %tobool5, label %if.then, label %if.end, !dbg !5674

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !5675
  br label %return, !dbg !5675

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %n.addr, align 8, !dbg !5676
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !5677
  br i1 %11, label %land.lhs.true, label %if.end8, !dbg !5678

land.lhs.true:                                    ; preds = %if.end
  %12 = load i64, i64* %size.addr, align 8, !dbg !5679
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !5680
  br i1 %13, label %if.then6, label %if.end8, !dbg !5681

if.then6:                                         ; preds = %land.lhs.true
  %14 = load i64, i64* %bytes, align 8, !dbg !5682
  %15 = load i32, i32* %flags.addr, align 4, !dbg !5683
  store i64 %14, i64* %size.addr.i, align 8
  store i32 %15, i32* %flags.addr.i, align 4
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !5684
  %17 = call i1 @llvm.is.constant.i64(i64 %16) #9, !dbg !5685
  br i1 %17, label %if.then.i, label %if.end9.i, !dbg !5686

if.then.i:                                        ; preds = %if.then6
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !5687
  %cmp.i = icmp ugt i64 %18, 8192, !dbg !5688
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5689

if.then1.i:                                       ; preds = %if.then.i
  %19 = load i64, i64* %size.addr.i, align 8, !dbg !5690
  %20 = load i32, i32* %flags.addr.i, align 4, !dbg !5691
  store i64 %19, i64* %size.addr.i.i, align 8
  store i32 %20, i32* %flags.addr.i.i, align 4
  %21 = load i64, i64* %size.addr.i.i, align 8, !dbg !5692
  %call.i.i = call i32 @get_order(i64 %21) #10, !dbg !5693
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5654
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !5694
  %23 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5695
  %24 = load i32, i32* %order.i.i, align 4, !dbg !5696
  store i64 %22, i64* %size.addr.i.i.i, align 8
  store i32 %23, i32* %flags.addr.i.i.i, align 4
  store i32 %24, i32* %order.addr.i.i.i, align 4
  %25 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5697
  %26 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5698
  %27 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5699
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %25, i32 %26, i32 %27) #11, !dbg !5700
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5700
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5700
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5700
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !5700
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5701
  br label %kmalloc.exit, !dbg !5701

if.end.i:                                         ; preds = %if.then.i
  %28 = load i64, i64* %size.addr.i, align 8, !dbg !5702
  store i64 %28, i64* %size.addr.i11.i, align 8
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5703
  %tobool.i.i = icmp ne i64 %29, 0, !dbg !5703
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5704

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5705
  br label %kmalloc_index.exit.i, !dbg !5705

if.end.i.i:                                       ; preds = %if.end.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5706
  %cmp.i.i = icmp ule i64 %30, 8, !dbg !5707
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5708

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5709
  br label %kmalloc_index.exit.i, !dbg !5709

if.end2.i.i:                                      ; preds = %if.end.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5710
  %cmp3.i.i = icmp ugt i64 %31, 64, !dbg !5711
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5712

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5713
  %cmp4.i.i = icmp ule i64 %32, 96, !dbg !5714
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5715

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5716
  br label %kmalloc_index.exit.i, !dbg !5716

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5717
  %cmp7.i.i = icmp ugt i64 %33, 128, !dbg !5718
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5719

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5720
  %cmp9.i.i = icmp ule i64 %34, 192, !dbg !5721
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5722

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5723
  br label %kmalloc_index.exit.i, !dbg !5723

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5724
  %cmp12.i.i = icmp ule i64 %35, 8, !dbg !5725
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5726

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5727
  br label %kmalloc_index.exit.i, !dbg !5727

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5728
  %cmp15.i.i = icmp ule i64 %36, 16, !dbg !5729
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5730

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5731
  br label %kmalloc_index.exit.i, !dbg !5731

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5732
  %cmp18.i.i = icmp ule i64 %37, 32, !dbg !5733
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5734

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5735
  br label %kmalloc_index.exit.i, !dbg !5735

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5736
  %cmp21.i.i = icmp ule i64 %38, 64, !dbg !5737
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5738

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5739
  br label %kmalloc_index.exit.i, !dbg !5739

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5740
  %cmp24.i.i = icmp ule i64 %39, 128, !dbg !5741
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5742

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5743
  br label %kmalloc_index.exit.i, !dbg !5743

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5744
  %cmp27.i.i = icmp ule i64 %40, 256, !dbg !5745
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5746

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5747
  br label %kmalloc_index.exit.i, !dbg !5747

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5748
  %cmp30.i.i = icmp ule i64 %41, 512, !dbg !5749
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5750

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5751
  br label %kmalloc_index.exit.i, !dbg !5751

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5752
  %cmp33.i.i = icmp ule i64 %42, 1024, !dbg !5753
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5754

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5755
  br label %kmalloc_index.exit.i, !dbg !5755

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5756
  %cmp36.i.i = icmp ule i64 %43, 2048, !dbg !5757
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5758

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5759
  br label %kmalloc_index.exit.i, !dbg !5759

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5760
  %cmp39.i.i = icmp ule i64 %44, 4096, !dbg !5761
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5762

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5763
  br label %kmalloc_index.exit.i, !dbg !5763

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5764
  %cmp42.i.i = icmp ule i64 %45, 8192, !dbg !5765
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5766

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5767
  br label %kmalloc_index.exit.i, !dbg !5767

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5768
  %cmp45.i.i = icmp ule i64 %46, 16384, !dbg !5769
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5770

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5771
  br label %kmalloc_index.exit.i, !dbg !5771

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5772
  %cmp48.i.i = icmp ule i64 %47, 32768, !dbg !5773
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5774

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5775
  br label %kmalloc_index.exit.i, !dbg !5775

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5776
  %cmp51.i.i = icmp ule i64 %48, 65536, !dbg !5777
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5778

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5779
  br label %kmalloc_index.exit.i, !dbg !5779

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5780
  %cmp54.i.i = icmp ule i64 %49, 131072, !dbg !5781
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5782

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5783
  br label %kmalloc_index.exit.i, !dbg !5783

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5784
  %cmp57.i.i = icmp ule i64 %50, 262144, !dbg !5785
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5786

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5787
  br label %kmalloc_index.exit.i, !dbg !5787

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5788
  %cmp60.i.i = icmp ule i64 %51, 524288, !dbg !5789
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5790

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5791
  br label %kmalloc_index.exit.i, !dbg !5791

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5792
  %cmp63.i.i = icmp ule i64 %52, 1048576, !dbg !5793
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5794

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5795
  br label %kmalloc_index.exit.i, !dbg !5795

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5796
  %cmp66.i.i = icmp ule i64 %53, 2097152, !dbg !5797
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5798

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5799
  br label %kmalloc_index.exit.i, !dbg !5799

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5800
  %cmp69.i.i = icmp ule i64 %54, 4194304, !dbg !5801
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5802

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5803
  br label %kmalloc_index.exit.i, !dbg !5803

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5804
  %cmp72.i.i = icmp ule i64 %55, 8388608, !dbg !5805
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5806

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5807
  br label %kmalloc_index.exit.i, !dbg !5807

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5808
  %cmp75.i.i = icmp ule i64 %56, 16777216, !dbg !5809
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5810

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5811
  br label %kmalloc_index.exit.i, !dbg !5811

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5812
  %cmp78.i.i = icmp ule i64 %57, 33554432, !dbg !5813
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5814

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5815
  br label %kmalloc_index.exit.i, !dbg !5815

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5816
  %cmp81.i.i = icmp ule i64 %58, 67108864, !dbg !5817
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5818

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5819
  br label %kmalloc_index.exit.i, !dbg !5819

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !5820, !srcloc !4361
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 156) #9, !dbg !5821, !srcloc !4365
  unreachable, !dbg !5822

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %59 = load i32, i32* %retval.i.i, align 4, !dbg !5823
  store i32 %59, i32* %index.i, align 4, !dbg !5824
  %60 = load i32, i32* %index.i, align 4, !dbg !5825
  %tobool.i = icmp ne i32 %60, 0, !dbg !5825
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5826

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5827
  br label %kmalloc.exit, !dbg !5827

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %61 = load i32, i32* %flags.addr.i, align 4, !dbg !5828
  store i32 %61, i32* %flags.addr.i13.i, align 4
  %62 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5829
  %and.i.i = and i32 %62, 17, !dbg !5829
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5829
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5829
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5829
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5829
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5830

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5831
  br label %kmalloc_type.exit.i, !dbg !5831

if.end.i16.i:                                     ; preds = %if.end4.i
  %63 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5832
  %and2.i.i = and i32 %63, 1, !dbg !5833
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5832
  %64 = zext i1 %tobool3.i.i to i64, !dbg !5832
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5832
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5834
  br label %kmalloc_type.exit.i, !dbg !5834

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %65 = load i32, i32* %retval.i12.i, align 4, !dbg !5835
  %idxprom.i = zext i32 %65 to i64, !dbg !5836
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5836
  %66 = load i32, i32* %index.i, align 4, !dbg !5837
  %idxprom6.i = zext i32 %66 to i64, !dbg !5836
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5836
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5836
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !5838
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !5839
  store %struct.kmem_cache* %67, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %68, i32* %flags.addr.i17.i, align 4
  store i64 %69, i64* %size.addr.i18.i, align 8
  %70 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5840
  %71 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5841
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %70, i32 %71) #11, !dbg !5842
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5842
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5842
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5842
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !5842
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5642
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5843
  %73 = load i8*, i8** %ret.i.i, align 8, !dbg !5844
  %74 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5845
  %75 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5846
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %72, i8* %73, i64 %74, i32 %75) #11, !dbg !5847
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5848
  %76 = load i8*, i8** %ret.i.i, align 8, !dbg !5849
  store i8* %76, i8** %retval.i, align 8, !dbg !5850
  br label %kmalloc.exit, !dbg !5850

if.end9.i:                                        ; preds = %if.then6
  %77 = load i64, i64* %size.addr.i, align 8, !dbg !5851
  %78 = load i32, i32* %flags.addr.i, align 4, !dbg !5852
  %call10.i = call noalias i8* @__kmalloc(i64 %77, i32 %78) #11, !dbg !5853
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5853
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5853
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5853
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !5853
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5854
  br label %kmalloc.exit, !dbg !5854

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %79 = load i8*, i8** %retval.i, align 8, !dbg !5855
  store i8* %79, i8** %retval, align 8, !dbg !5856
  br label %return, !dbg !5856

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %80 = load i64, i64* %bytes, align 8, !dbg !5857
  %81 = load i32, i32* %flags.addr, align 4, !dbg !5858
  %call9 = call noalias i8* @__kmalloc(i64 %80, i32 %81) #8, !dbg !5859
  %ptrint = ptrtoint i8* %call9 to i64, !dbg !5859
  %maskedptr = and i64 %ptrint, 7, !dbg !5859
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !5859
  call void @llvm.assume(i1 %maskcond), !dbg !5859
  store i8* %call9, i8** %retval, align 8, !dbg !5860
  br label %return, !dbg !5860

return:                                           ; preds = %if.end8, %kmalloc.exit, %if.then
  %82 = load i8*, i8** %retval, align 8, !dbg !5861
  ret i8* %82, !dbg !5861
}

; Function Attrs: noredzone
declare dso_local i32 @regmap_raw_read(%struct.regmap*, i32, i8*, i64) #3

; Function Attrs: noredzone
declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #0 !dbg !5862 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !5866, metadata !DIExpression()), !dbg !5867
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !5868
  %tobool = trunc i8 %0 to i1, !dbg !5868
  %lnot = xor i1 %tobool, true, !dbg !5868
  %lnot1 = xor i1 %lnot, true, !dbg !5868
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5868
  %conv = sext i32 %lnot.ext to i64, !dbg !5868
  %tobool2 = icmp ne i64 %conv, 0, !dbg !5868
  ret i1 %tobool2, !dbg !5869
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !5870 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5874, metadata !DIExpression()), !dbg !5879
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5881, metadata !DIExpression()), !dbg !5882
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5883, metadata !DIExpression()), !dbg !5884
  %0 = load i64, i64* %size.addr, align 8, !dbg !5885
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5887
  br i1 %1, label %if.then, label %if.end447, !dbg !5888

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5889
  %tobool = icmp ne i64 %2, 0, !dbg !5889
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5892

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5893
  br label %return, !dbg !5893

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5894
  %cmp = icmp ult i64 %3, 4096, !dbg !5896
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5897

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5898
  br label %return, !dbg !5898

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub = sub i64 %4, 1, !dbg !5899
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5899
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5899

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub4 = sub i64 %6, 1, !dbg !5899
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5899
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5899

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub6 = sub i64 %8, 1, !dbg !5899
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5899
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5899

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5899

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub9 = sub i64 %9, 1, !dbg !5899
  %and = and i64 %sub9, -9223372036854775808, !dbg !5899
  %tobool10 = icmp ne i64 %and, 0, !dbg !5899
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5899

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5899

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub13 = sub i64 %10, 1, !dbg !5899
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5899
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5899
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5899

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5899

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub18 = sub i64 %11, 1, !dbg !5899
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5899
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5899
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5899

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5899

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub23 = sub i64 %12, 1, !dbg !5899
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5899
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5899
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5899

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5899

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub28 = sub i64 %13, 1, !dbg !5899
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5899
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5899
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5899

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5899

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub33 = sub i64 %14, 1, !dbg !5899
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5899
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5899
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5899

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5899

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub38 = sub i64 %15, 1, !dbg !5899
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5899
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5899
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5899

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5899

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub43 = sub i64 %16, 1, !dbg !5899
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5899
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5899
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5899

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5899

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub48 = sub i64 %17, 1, !dbg !5899
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5899
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5899
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5899

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5899

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub53 = sub i64 %18, 1, !dbg !5899
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5899
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5899
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5899

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5899

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub58 = sub i64 %19, 1, !dbg !5899
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5899
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5899
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5899

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5899

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub63 = sub i64 %20, 1, !dbg !5899
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5899
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5899
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5899

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5899

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub68 = sub i64 %21, 1, !dbg !5899
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5899
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5899
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5899

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5899

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub73 = sub i64 %22, 1, !dbg !5899
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5899
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5899
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5899

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5899

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub78 = sub i64 %23, 1, !dbg !5899
  %and79 = and i64 %sub78, 562949953421312, !dbg !5899
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5899
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5899

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5899

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub83 = sub i64 %24, 1, !dbg !5899
  %and84 = and i64 %sub83, 281474976710656, !dbg !5899
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5899
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5899

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5899

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub88 = sub i64 %25, 1, !dbg !5899
  %and89 = and i64 %sub88, 140737488355328, !dbg !5899
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5899
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5899

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5899

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub93 = sub i64 %26, 1, !dbg !5899
  %and94 = and i64 %sub93, 70368744177664, !dbg !5899
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5899
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5899

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5899

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub98 = sub i64 %27, 1, !dbg !5899
  %and99 = and i64 %sub98, 35184372088832, !dbg !5899
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5899
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5899

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5899

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub103 = sub i64 %28, 1, !dbg !5899
  %and104 = and i64 %sub103, 17592186044416, !dbg !5899
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5899
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5899

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5899

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub108 = sub i64 %29, 1, !dbg !5899
  %and109 = and i64 %sub108, 8796093022208, !dbg !5899
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5899
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5899

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5899

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub113 = sub i64 %30, 1, !dbg !5899
  %and114 = and i64 %sub113, 4398046511104, !dbg !5899
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5899
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5899

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5899

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub118 = sub i64 %31, 1, !dbg !5899
  %and119 = and i64 %sub118, 2199023255552, !dbg !5899
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5899
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5899

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5899

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub123 = sub i64 %32, 1, !dbg !5899
  %and124 = and i64 %sub123, 1099511627776, !dbg !5899
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5899
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5899

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5899

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub128 = sub i64 %33, 1, !dbg !5899
  %and129 = and i64 %sub128, 549755813888, !dbg !5899
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5899
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5899

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5899

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub133 = sub i64 %34, 1, !dbg !5899
  %and134 = and i64 %sub133, 274877906944, !dbg !5899
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5899
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5899

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5899

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub138 = sub i64 %35, 1, !dbg !5899
  %and139 = and i64 %sub138, 137438953472, !dbg !5899
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5899
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5899

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5899

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub143 = sub i64 %36, 1, !dbg !5899
  %and144 = and i64 %sub143, 68719476736, !dbg !5899
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5899
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5899

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5899

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub148 = sub i64 %37, 1, !dbg !5899
  %and149 = and i64 %sub148, 34359738368, !dbg !5899
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5899
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5899

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5899

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub153 = sub i64 %38, 1, !dbg !5899
  %and154 = and i64 %sub153, 17179869184, !dbg !5899
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5899
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5899

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5899

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub158 = sub i64 %39, 1, !dbg !5899
  %and159 = and i64 %sub158, 8589934592, !dbg !5899
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5899
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5899

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5899

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub163 = sub i64 %40, 1, !dbg !5899
  %and164 = and i64 %sub163, 4294967296, !dbg !5899
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5899
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5899

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5899

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub168 = sub i64 %41, 1, !dbg !5899
  %and169 = and i64 %sub168, 2147483648, !dbg !5899
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5899
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5899

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5899

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub173 = sub i64 %42, 1, !dbg !5899
  %and174 = and i64 %sub173, 1073741824, !dbg !5899
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5899
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5899

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5899

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub178 = sub i64 %43, 1, !dbg !5899
  %and179 = and i64 %sub178, 536870912, !dbg !5899
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5899
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5899

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5899

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub183 = sub i64 %44, 1, !dbg !5899
  %and184 = and i64 %sub183, 268435456, !dbg !5899
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5899
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5899

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5899

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub188 = sub i64 %45, 1, !dbg !5899
  %and189 = and i64 %sub188, 134217728, !dbg !5899
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5899
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5899

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5899

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub193 = sub i64 %46, 1, !dbg !5899
  %and194 = and i64 %sub193, 67108864, !dbg !5899
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5899
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5899

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5899

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub198 = sub i64 %47, 1, !dbg !5899
  %and199 = and i64 %sub198, 33554432, !dbg !5899
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5899
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5899

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5899

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub203 = sub i64 %48, 1, !dbg !5899
  %and204 = and i64 %sub203, 16777216, !dbg !5899
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5899
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5899

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5899

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub208 = sub i64 %49, 1, !dbg !5899
  %and209 = and i64 %sub208, 8388608, !dbg !5899
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5899
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5899

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5899

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub213 = sub i64 %50, 1, !dbg !5899
  %and214 = and i64 %sub213, 4194304, !dbg !5899
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5899
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5899

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5899

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub218 = sub i64 %51, 1, !dbg !5899
  %and219 = and i64 %sub218, 2097152, !dbg !5899
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5899
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5899

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5899

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub223 = sub i64 %52, 1, !dbg !5899
  %and224 = and i64 %sub223, 1048576, !dbg !5899
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5899
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5899

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5899

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub228 = sub i64 %53, 1, !dbg !5899
  %and229 = and i64 %sub228, 524288, !dbg !5899
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5899
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5899

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5899

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub233 = sub i64 %54, 1, !dbg !5899
  %and234 = and i64 %sub233, 262144, !dbg !5899
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5899
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5899

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5899

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub238 = sub i64 %55, 1, !dbg !5899
  %and239 = and i64 %sub238, 131072, !dbg !5899
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5899
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5899

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5899

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub243 = sub i64 %56, 1, !dbg !5899
  %and244 = and i64 %sub243, 65536, !dbg !5899
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5899
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5899

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5899

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub248 = sub i64 %57, 1, !dbg !5899
  %and249 = and i64 %sub248, 32768, !dbg !5899
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5899
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5899

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5899

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub253 = sub i64 %58, 1, !dbg !5899
  %and254 = and i64 %sub253, 16384, !dbg !5899
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5899
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5899

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5899

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub258 = sub i64 %59, 1, !dbg !5899
  %and259 = and i64 %sub258, 8192, !dbg !5899
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5899
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5899

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5899

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub263 = sub i64 %60, 1, !dbg !5899
  %and264 = and i64 %sub263, 4096, !dbg !5899
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5899
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5899

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5899

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub268 = sub i64 %61, 1, !dbg !5899
  %and269 = and i64 %sub268, 2048, !dbg !5899
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5899
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5899

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5899

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub273 = sub i64 %62, 1, !dbg !5899
  %and274 = and i64 %sub273, 1024, !dbg !5899
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5899
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5899

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5899

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub278 = sub i64 %63, 1, !dbg !5899
  %and279 = and i64 %sub278, 512, !dbg !5899
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5899
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5899

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5899

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub283 = sub i64 %64, 1, !dbg !5899
  %and284 = and i64 %sub283, 256, !dbg !5899
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5899
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5899

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5899

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub288 = sub i64 %65, 1, !dbg !5899
  %and289 = and i64 %sub288, 128, !dbg !5899
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5899
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5899

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5899

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub293 = sub i64 %66, 1, !dbg !5899
  %and294 = and i64 %sub293, 64, !dbg !5899
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5899
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5899

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5899

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub298 = sub i64 %67, 1, !dbg !5899
  %and299 = and i64 %sub298, 32, !dbg !5899
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5899
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5899

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5899

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub303 = sub i64 %68, 1, !dbg !5899
  %and304 = and i64 %sub303, 16, !dbg !5899
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5899
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5899

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5899

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub308 = sub i64 %69, 1, !dbg !5899
  %and309 = and i64 %sub308, 8, !dbg !5899
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5899
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5899

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5899

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub313 = sub i64 %70, 1, !dbg !5899
  %and314 = and i64 %sub313, 4, !dbg !5899
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5899
  %71 = zext i1 %tobool315 to i64, !dbg !5899
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5899
  br label %cond.end, !dbg !5899

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5899
  br label %cond.end317, !dbg !5899

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5899
  br label %cond.end319, !dbg !5899

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5899
  br label %cond.end321, !dbg !5899

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5899
  br label %cond.end323, !dbg !5899

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5899
  br label %cond.end325, !dbg !5899

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5899
  br label %cond.end327, !dbg !5899

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5899
  br label %cond.end329, !dbg !5899

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5899
  br label %cond.end331, !dbg !5899

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5899
  br label %cond.end333, !dbg !5899

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5899
  br label %cond.end335, !dbg !5899

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5899
  br label %cond.end337, !dbg !5899

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5899
  br label %cond.end339, !dbg !5899

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5899
  br label %cond.end341, !dbg !5899

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5899
  br label %cond.end343, !dbg !5899

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5899
  br label %cond.end345, !dbg !5899

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5899
  br label %cond.end347, !dbg !5899

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5899
  br label %cond.end349, !dbg !5899

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5899
  br label %cond.end351, !dbg !5899

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5899
  br label %cond.end353, !dbg !5899

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5899
  br label %cond.end355, !dbg !5899

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5899
  br label %cond.end357, !dbg !5899

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5899
  br label %cond.end359, !dbg !5899

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5899
  br label %cond.end361, !dbg !5899

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5899
  br label %cond.end363, !dbg !5899

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5899
  br label %cond.end365, !dbg !5899

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5899
  br label %cond.end367, !dbg !5899

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5899
  br label %cond.end369, !dbg !5899

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5899
  br label %cond.end371, !dbg !5899

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5899
  br label %cond.end373, !dbg !5899

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5899
  br label %cond.end375, !dbg !5899

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5899
  br label %cond.end377, !dbg !5899

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5899
  br label %cond.end379, !dbg !5899

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5899
  br label %cond.end381, !dbg !5899

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5899
  br label %cond.end383, !dbg !5899

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5899
  br label %cond.end385, !dbg !5899

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5899
  br label %cond.end387, !dbg !5899

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5899
  br label %cond.end389, !dbg !5899

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5899
  br label %cond.end391, !dbg !5899

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5899
  br label %cond.end393, !dbg !5899

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5899
  br label %cond.end395, !dbg !5899

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5899
  br label %cond.end397, !dbg !5899

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5899
  br label %cond.end399, !dbg !5899

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5899
  br label %cond.end401, !dbg !5899

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5899
  br label %cond.end403, !dbg !5899

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5899
  br label %cond.end405, !dbg !5899

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5899
  br label %cond.end407, !dbg !5899

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5899
  br label %cond.end409, !dbg !5899

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5899
  br label %cond.end411, !dbg !5899

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5899
  br label %cond.end413, !dbg !5899

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5899
  br label %cond.end415, !dbg !5899

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5899
  br label %cond.end417, !dbg !5899

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5899
  br label %cond.end419, !dbg !5899

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5899
  br label %cond.end421, !dbg !5899

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5899
  br label %cond.end423, !dbg !5899

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5899
  br label %cond.end425, !dbg !5899

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5899
  br label %cond.end427, !dbg !5899

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5899
  br label %cond.end429, !dbg !5899

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5899
  br label %cond.end431, !dbg !5899

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5899
  br label %cond.end433, !dbg !5899

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5899
  br label %cond.end435, !dbg !5899

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5899
  br label %cond.end437, !dbg !5899

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5899
  br label %cond.end440, !dbg !5899

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5899

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5899
  br label %cond.end444, !dbg !5899

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5899
  %sub443 = sub i64 %72, 1, !dbg !5899
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !5899
  br label %cond.end444, !dbg !5899

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5899
  %sub446 = sub i32 %cond445, 12, !dbg !5900
  %add = add i32 %sub446, 1, !dbg !5901
  store i32 %add, i32* %retval, align 4, !dbg !5902
  br label %return, !dbg !5902

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5903
  %dec = add i64 %73, -1, !dbg !5903
  store i64 %dec, i64* %size.addr, align 8, !dbg !5903
  %74 = load i64, i64* %size.addr, align 8, !dbg !5904
  %shr = lshr i64 %74, 12, !dbg !5904
  store i64 %shr, i64* %size.addr, align 8, !dbg !5904
  %75 = load i64, i64* %size.addr, align 8, !dbg !5905
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5882
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5906
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5907
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #12, !dbg !5906, !srcloc !5908
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5906
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5909
  %add.i = add i32 %79, 1, !dbg !5910
  store i32 %add.i, i32* %retval, align 4, !dbg !5911
  br label %return, !dbg !5911

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5912
  ret i32 %80, !dbg !5912
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !5913 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5874, metadata !DIExpression()), !dbg !5917
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5881, metadata !DIExpression()), !dbg !5919
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5920, metadata !DIExpression()), !dbg !5921
  %0 = load i64, i64* %n.addr, align 8, !dbg !5922
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5919
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5923
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5924
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #12, !dbg !5923, !srcloc !5908
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5923
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5925
  %add.i = add i32 %4, 1, !dbg !5926
  %sub = sub i32 %add.i, 1, !dbg !5927
  ret i32 %sub, !dbg !5928
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5929 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5933, metadata !DIExpression()), !dbg !5934
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5935, metadata !DIExpression()), !dbg !5936
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5937, metadata !DIExpression()), !dbg !5938
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5939, metadata !DIExpression()), !dbg !5940
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5941
  ret i8* %0, !dbg !5942
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @regmap_writeable(%struct.regmap*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @regcache_reg_needs_sync(%struct.regmap* %map, i32 %reg, i32 %val) #0 !dbg !5943 {
entry:
  %retval = alloca i1, align 1
  %map.addr = alloca %struct.regmap*, align 8
  %reg.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.regmap* %map, %struct.regmap** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.regmap** %map.addr, metadata !5946, metadata !DIExpression()), !dbg !5947
  store i32 %reg, i32* %reg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reg.addr, metadata !5948, metadata !DIExpression()), !dbg !5949
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5950, metadata !DIExpression()), !dbg !5951
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5952, metadata !DIExpression()), !dbg !5953
  %0 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5954
  %no_sync_defaults = getelementptr inbounds %struct.regmap, %struct.regmap* %0, i32 0, i32 52, !dbg !5956
  %1 = load i8, i8* %no_sync_defaults, align 1, !dbg !5956
  %tobool = trunc i8 %1 to i1, !dbg !5956
  br i1 %tobool, label %if.end, label %if.then, !dbg !5957

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval, align 1, !dbg !5958
  br label %return, !dbg !5958

if.end:                                           ; preds = %entry
  %2 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5959
  %3 = load i32, i32* %reg.addr, align 4, !dbg !5960
  %call = call i32 @regcache_lookup_reg(%struct.regmap* %2, i32 %3) #8, !dbg !5961
  store i32 %call, i32* %ret, align 4, !dbg !5962
  %4 = load i32, i32* %ret, align 4, !dbg !5963
  %cmp = icmp sge i32 %4, 0, !dbg !5965
  br i1 %cmp, label %land.lhs.true, label %if.end3, !dbg !5966

land.lhs.true:                                    ; preds = %if.end
  %5 = load i32, i32* %val.addr, align 4, !dbg !5967
  %6 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !5968
  %reg_defaults = getelementptr inbounds %struct.regmap, %struct.regmap* %6, i32 0, i32 48, !dbg !5969
  %7 = load %struct.reg_default*, %struct.reg_default** %reg_defaults, align 8, !dbg !5969
  %8 = load i32, i32* %ret, align 4, !dbg !5970
  %idxprom = sext i32 %8 to i64, !dbg !5968
  %arrayidx = getelementptr %struct.reg_default, %struct.reg_default* %7, i64 %idxprom, !dbg !5968
  %def = getelementptr inbounds %struct.reg_default, %struct.reg_default* %arrayidx, i32 0, i32 1, !dbg !5971
  %9 = load i32, i32* %def, align 4, !dbg !5971
  %cmp1 = icmp eq i32 %5, %9, !dbg !5972
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !5973

if.then2:                                         ; preds = %land.lhs.true
  store i1 false, i1* %retval, align 1, !dbg !5974
  br label %return, !dbg !5974

if.end3:                                          ; preds = %land.lhs.true, %if.end
  store i1 true, i1* %retval, align 1, !dbg !5975
  br label %return, !dbg !5975

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %10 = load i1, i1* %retval, align 1, !dbg !5976
  ret i1 %10, !dbg !5976
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @regcache_reg_present(i64* %cache_present, i32 %idx) #0 !dbg !5977 {
entry:
  %retval = alloca i1, align 1
  %cache_present.addr = alloca i64*, align 8
  %idx.addr = alloca i32, align 4
  store i64* %cache_present, i64** %cache_present.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %cache_present.addr, metadata !5980, metadata !DIExpression()), !dbg !5981
  store i32 %idx, i32* %idx.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %idx.addr, metadata !5982, metadata !DIExpression()), !dbg !5983
  %0 = load i64*, i64** %cache_present.addr, align 8, !dbg !5984
  %tobool = icmp ne i64* %0, null, !dbg !5984
  br i1 %tobool, label %if.end, label %if.then, !dbg !5986

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval, align 1, !dbg !5987
  br label %return, !dbg !5987

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %idx.addr, align 4, !dbg !5988
  %conv = zext i32 %1 to i64, !dbg !5988
  %2 = load i64*, i64** %cache_present.addr, align 8, !dbg !5989
  %call = call zeroext i1 @test_bit(i64 %conv, i64* %2) #8, !dbg !5990
  store i1 %call, i1* %retval, align 1, !dbg !5991
  br label %return, !dbg !5991

return:                                           ; preds = %if.end, %if.then
  %3 = load i1, i1* %retval, align 1, !dbg !5992
  ret i1 %3, !dbg !5992
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @regcache_sync_block_raw_flush(%struct.regmap* %map, i8** %data, i32 %base, i32 %cur) #0 !dbg !5993 {
entry:
  %retval = alloca i32, align 4
  %map.addr = alloca %struct.regmap*, align 8
  %data.addr = alloca i8**, align 8
  %base.addr = alloca i32, align 4
  %cur.addr = alloca i32, align 4
  %val_bytes = alloca i64, align 8
  %ret = alloca i32, align 4
  %count = alloca i32, align 4
  store %struct.regmap* %map, %struct.regmap** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.regmap** %map.addr, metadata !5997, metadata !DIExpression()), !dbg !5998
  store i8** %data, i8*** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %data.addr, metadata !5999, metadata !DIExpression()), !dbg !6000
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !6001, metadata !DIExpression()), !dbg !6002
  store i32 %cur, i32* %cur.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cur.addr, metadata !6003, metadata !DIExpression()), !dbg !6004
  call void @llvm.dbg.declare(metadata i64* %val_bytes, metadata !6005, metadata !DIExpression()), !dbg !6006
  %0 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !6007
  %format = getelementptr inbounds %struct.regmap, %struct.regmap* %0, i32 0, i32 7, !dbg !6008
  %val_bytes1 = getelementptr inbounds %struct.regmap_format, %struct.regmap_format* %format, i32 0, i32 3, !dbg !6009
  %1 = load i64, i64* %val_bytes1, align 8, !dbg !6009
  store i64 %1, i64* %val_bytes, align 8, !dbg !6006
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6010, metadata !DIExpression()), !dbg !6011
  call void @llvm.dbg.declare(metadata i32* %count, metadata !6012, metadata !DIExpression()), !dbg !6013
  %2 = load i8**, i8*** %data.addr, align 8, !dbg !6014
  %3 = load i8*, i8** %2, align 8, !dbg !6016
  %cmp = icmp eq i8* %3, null, !dbg !6017
  br i1 %cmp, label %if.then, label %if.end, !dbg !6018

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6019
  br label %return, !dbg !6019

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %cur.addr, align 4, !dbg !6020
  %5 = load i32, i32* %base.addr, align 4, !dbg !6021
  %sub = sub i32 %4, %5, !dbg !6022
  %6 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !6023
  %reg_stride = getelementptr inbounds %struct.regmap, %struct.regmap* %6, i32 0, i32 37, !dbg !6024
  %7 = load i32, i32* %reg_stride, align 4, !dbg !6024
  %div = udiv i32 %sub, %7, !dbg !6025
  store i32 %div, i32* %count, align 4, !dbg !6026
  %8 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !6027
  %cache_bypass = getelementptr inbounds %struct.regmap, %struct.regmap* %8, i32 0, i32 46, !dbg !6028
  store i8 1, i8* %cache_bypass, align 1, !dbg !6029
  %9 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !6030
  %10 = load i32, i32* %base.addr, align 4, !dbg !6031
  %11 = load i8**, i8*** %data.addr, align 8, !dbg !6032
  %12 = load i8*, i8** %11, align 8, !dbg !6033
  %13 = load i32, i32* %count, align 4, !dbg !6034
  %conv = sext i32 %13 to i64, !dbg !6034
  %14 = load i64, i64* %val_bytes, align 8, !dbg !6035
  %mul = mul i64 %conv, %14, !dbg !6036
  %call = call i32 @_regmap_raw_write(%struct.regmap* %9, i32 %10, i8* %12, i64 %mul, i1 zeroext false) #8, !dbg !6037
  store i32 %call, i32* %ret, align 4, !dbg !6038
  %15 = load i32, i32* %ret, align 4, !dbg !6039
  %tobool = icmp ne i32 %15, 0, !dbg !6039
  br i1 %tobool, label %if.then2, label %if.end5, !dbg !6041

if.then2:                                         ; preds = %if.end
  %16 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !6042
  %dev = getelementptr inbounds %struct.regmap, %struct.regmap* %16, i32 0, i32 5, !dbg !6042
  %17 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6042
  %18 = load i32, i32* %base.addr, align 4, !dbg !6042
  %19 = load i32, i32* %cur.addr, align 4, !dbg !6042
  %20 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !6042
  %reg_stride3 = getelementptr inbounds %struct.regmap, %struct.regmap* %20, i32 0, i32 37, !dbg !6042
  %21 = load i32, i32* %reg_stride3, align 4, !dbg !6042
  %sub4 = sub i32 %19, %21, !dbg !6042
  %22 = load i32, i32* %ret, align 4, !dbg !6042
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %17, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0), i32 %18, i32 %sub4, i32 %22) #7, !dbg !6042
  br label %if.end5, !dbg !6042

if.end5:                                          ; preds = %if.then2, %if.end
  %23 = load %struct.regmap*, %struct.regmap** %map.addr, align 8, !dbg !6043
  %cache_bypass6 = getelementptr inbounds %struct.regmap, %struct.regmap* %23, i32 0, i32 46, !dbg !6044
  store i8 0, i8* %cache_bypass6, align 1, !dbg !6045
  %24 = load i8**, i8*** %data.addr, align 8, !dbg !6046
  store i8* null, i8** %24, align 8, !dbg !6047
  %25 = load i32, i32* %ret, align 4, !dbg !6048
  store i32 %25, i32* %retval, align 4, !dbg !6049
  br label %return, !dbg !6049

return:                                           ; preds = %if.end5, %if.then
  %26 = load i32, i32* %retval, align 4, !dbg !6050
  ret i32 %26, !dbg !6050
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #0 !dbg !6051 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !6058, metadata !DIExpression()), !dbg !6060
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !6062, metadata !DIExpression()), !dbg !6063
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !6064, metadata !DIExpression()), !dbg !6065
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !6066, metadata !DIExpression()), !dbg !6068
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !6070, metadata !DIExpression()), !dbg !6071
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !6072, metadata !DIExpression()), !dbg !6080
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !6082, metadata !DIExpression()), !dbg !6083
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !6084, metadata !DIExpression()), !dbg !6085
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !6086, metadata !DIExpression()), !dbg !6087
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !6088
  %1 = load i64, i64* %nr.addr, align 8, !dbg !6089
  %div = sdiv i64 %1, 64, !dbg !6089
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !6090
  %2 = bitcast i64* %add.ptr to i8*, !dbg !6088
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !6091
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !6092
  %conv.i = trunc i64 %4 to i32, !dbg !6092
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #11, !dbg !6093
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !6094
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !6094
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #11, !dbg !6094
  %7 = load i64, i64* %nr.addr, align 8, !dbg !6095
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !6095
  br i1 %8, label %cond.true, label %cond.false, !dbg !6095

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !6095
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !6095
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !6096
  %and.i = and i64 %11, 63, !dbg !6097
  %shl.i = shl i64 1, %and.i, !dbg !6098
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !6099
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !6100
  %shr.i = ashr i64 %13, 6, !dbg !6101
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !6099
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !6099
  %and1.i = and i64 %shl.i, %14, !dbg !6102
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !6103
  %conv = zext i1 %cmp.i to i32, !dbg !6095
  br label %cond.end, !dbg !6095

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !6095
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !6095
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !6104
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !6105
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #9, !dbg !6106, !srcloc !6107
  store i8 %19, i8* %oldbit.i, align 1, !dbg !6106
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !6108
  %tobool.i = trunc i8 %20 to i1, !dbg !6108
  %conv2 = zext i1 %tobool.i to i32, !dbg !6095
  br label %cond.end, !dbg !6095

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6095
  %tobool = icmp ne i32 %cond, 0, !dbg !6095
  ret i1 %tobool, !dbg !6109
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !6110 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !6114, metadata !DIExpression()), !dbg !6115
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !6116, metadata !DIExpression()), !dbg !6117
  ret i1 true, !dbg !6118
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !6119 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !6123, metadata !DIExpression()), !dbg !6124
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6125, metadata !DIExpression()), !dbg !6126
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !6127, metadata !DIExpression()), !dbg !6128
  ret void, !dbg !6129
}

; Function Attrs: noredzone
declare dso_local i32 @_regmap_raw_write(%struct.regmap*, i32, i8*, i64, i1 zeroext) #3

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { cold noredzone }
attributes #8 = { noredzone }
attributes #9 = { nounwind }
attributes #10 = { noredzone nounwind readnone }
attributes #11 = { noredzone nounwind }
attributes #12 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3759, !3760, !3761, !3762}
!llvm.ident = !{!3763}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "cache_types", scope: !2, file: !3, line: 18, type: !113, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !105, globals: !112, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/base/regmap/regcache.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !18, !24, !30, !39, !47, !53, !59, !66, !74, !80, !87, !93, !98}
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
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "regmap_endian", file: !81, line: 184, baseType: !7, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/regmap.h", directory: "/home/lizy2001/genbc/linux")
!82 = !{!83, !84, !85, !86}
!83 = !DIEnumerator(name: "REGMAP_ENDIAN_DEFAULT", value: 0, isUnsigned: true)
!84 = !DIEnumerator(name: "REGMAP_ENDIAN_BIG", value: 1, isUnsigned: true)
!85 = !DIEnumerator(name: "REGMAP_ENDIAN_LITTLE", value: 2, isUnsigned: true)
!86 = !DIEnumerator(name: "REGMAP_ENDIAN_NATIVE", value: 3, isUnsigned: true)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "regcache_type", file: !81, line: 40, baseType: !7, size: 32, elements: !88)
!88 = !{!89, !90, !91, !92}
!89 = !DIEnumerator(name: "REGCACHE_NONE", value: 0, isUnsigned: true)
!90 = !DIEnumerator(name: "REGCACHE_RBTREE", value: 1, isUnsigned: true)
!91 = !DIEnumerator(name: "REGCACHE_COMPRESSED", value: 2, isUnsigned: true)
!92 = !DIEnumerator(name: "REGCACHE_FLAT", value: 3, isUnsigned: true)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !94, line: 10, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!95 = !{!96, !97}
!96 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!97 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !99, line: 305, baseType: !7, size: 32, elements: !100)
!99 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!100 = !{!101, !102, !103, !104}
!101 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!102 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!103 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!104 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!105 = !{!106, !107, !108, !110}
!106 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !109, line: 148, baseType: !7)
!109 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!112 = !{!0}
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 128, elements: !1411)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regcache_ops", file: !117, line: 169, size: 512, elements: !118)
!117 = !DIFile(filename: "drivers/base/regmap/internal.h", directory: "/home/lizy2001/genbc/linux")
!118 = !{!119, !123, !124, !3748, !3749, !3753, !3757, !3758}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !116, file: !117, line: 170, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!122 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !116, file: !117, line: 171, baseType: !87, size: 32, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !116, file: !117, line: 172, baseType: !125, size: 64, offset: 128)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!106, !128}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regmap", file: !117, line: 49, size: 4160, elements: !130)
!130 = !{!131, !177, !182, !184, !185, !186, !3582, !3583, !3604, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3676, !3677, !3678, !3679, !3680, !3681, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3725, !3726, !3727, !3728, !3729, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3747}
!131 = !DIDerivedType(tag: DW_TAG_member, scope: !129, file: !117, line: 50, baseType: !132, size: 192)
!132 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !129, file: !117, line: 50, size: 192, elements: !133)
!133 = !{!134, !172}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !132, file: !117, line: 51, baseType: !135, size: 192)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !136, line: 53, size: 192, elements: !137)
!136 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!137 = !{!138, !150, !166}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !135, file: !136, line: 54, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !140, line: 13, baseType: !141)
!140 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !109, line: 175, baseType: !142)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !109, line: 173, size: 64, elements: !143)
!143 = !{!144}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !142, file: !109, line: 174, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !146, line: 22, baseType: !147)
!146 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !148, line: 30, baseType: !149)
!148 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!149 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !135, file: !136, line: 55, baseType: !151, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !152, line: 83, baseType: !153)
!152 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !152, line: 71, elements: !154)
!154 = !{!155}
!155 = !DIDerivedType(tag: DW_TAG_member, scope: !153, file: !152, line: 72, baseType: !156)
!156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !153, file: !152, line: 72, elements: !157)
!157 = !{!158}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !156, file: !152, line: 73, baseType: !159)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !152, line: 20, elements: !160)
!160 = !{!161}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !159, file: !152, line: 21, baseType: !162)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !163, line: 25, baseType: !164)
!163 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !163, line: 25, elements: !165)
!165 = !{}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !135, file: !136, line: 59, baseType: !167, size: 128, offset: 64)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !109, line: 178, size: 128, elements: !168)
!168 = !{!169, !171}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !167, file: !109, line: 179, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !167, file: !109, line: 179, baseType: !170, size: 64, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, scope: !132, file: !117, line: 52, baseType: !173, size: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !132, file: !117, line: 52, size: 64, elements: !174)
!174 = !{!175, !176}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "spinlock", scope: !173, file: !117, line: 53, baseType: !151)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "spinlock_flags", scope: !173, file: !117, line: 54, baseType: !111, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !129, file: !117, line: 57, baseType: !178, size: 64, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_lock", file: !81, line: 226, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DISubroutineType(types: !181)
!181 = !{null, !107}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "unlock", scope: !129, file: !117, line: 58, baseType: !183, size: 64, offset: 256)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_unlock", file: !81, line: 227, baseType: !179)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "lock_arg", scope: !129, file: !117, line: 59, baseType: !107, size: 64, offset: 320)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_flags", scope: !129, file: !117, line: 60, baseType: !108, size: 32, offset: 384)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !129, file: !117, line: 62, baseType: !187, size: 64, offset: 448)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !60, line: 461, size: 5568, elements: !189)
!189 = !{!190, !3154, !3155, !3158, !3159, !3210, !3283, !3284, !3285, !3286, !3287, !3296, !3401, !3414, !3417, !3418, !3422, !3424, !3425, !3426, !3430, !3436, !3437, !3440, !3444, !3534, !3535, !3536, !3537, !3538, !3570, !3571, !3572, !3575, !3578, !3579, !3580, !3581}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !188, file: !60, line: 462, baseType: !191, size: 512)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !192, line: 64, size: 512, elements: !193)
!192 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!193 = !{!194, !195, !196, !198, !243, !3005, !3144, !3149, !3150, !3151, !3152, !3153}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !191, file: !192, line: 65, baseType: !120, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !191, file: !192, line: 66, baseType: !167, size: 128, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !191, file: !192, line: 67, baseType: !197, size: 64, offset: 192)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !191, file: !192, line: 68, baseType: !199, size: 64, offset: 256)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !192, line: 192, size: 704, elements: !201)
!201 = !{!202, !203, !204, !205}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !200, file: !192, line: 193, baseType: !167, size: 128)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !200, file: !192, line: 194, baseType: !151, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !200, file: !192, line: 195, baseType: !191, size: 512, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !200, file: !192, line: 196, baseType: !206, size: 64, offset: 640)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !208)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !192, line: 156, size: 192, elements: !209)
!209 = !{!210, !215, !220}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !208, file: !192, line: 157, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !212)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{!106, !199, !197}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !208, file: !192, line: 158, baseType: !216, size: 64, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!120, !199, !197}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !208, file: !192, line: 159, baseType: !221, size: 64, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!106, !199, !197, !225}
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !192, line: 148, size: 20736, elements: !227)
!227 = !{!228, !233, !237, !238, !242}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !226, file: !192, line: 149, baseType: !229, size: 192)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 192, elements: !231)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!231 = !{!232}
!232 = !DISubrange(count: 3)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !226, file: !192, line: 150, baseType: !234, size: 4096, offset: 192)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 4096, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !226, file: !192, line: 151, baseType: !106, size: 32, offset: 4288)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !226, file: !192, line: 152, baseType: !239, size: 16384, offset: 4320)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 16384, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 2048)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !226, file: !192, line: 153, baseType: !106, size: 32, offset: 20704)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !191, file: !192, line: 69, baseType: !244, size: 64, offset: 320)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !192, line: 138, size: 448, elements: !246)
!246 = !{!247, !251, !280, !282, !2967, !2995, !2999}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !245, file: !192, line: 139, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{null, !197}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !245, file: !192, line: 140, baseType: !252, size: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !254)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !255, line: 230, size: 128, elements: !256)
!255 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!256 = !{!257, !273}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !254, file: !255, line: 231, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!261, !197, !266, !230}
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !109, line: 60, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !263, line: 73, baseType: !264)
!263 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !263, line: 15, baseType: !265)
!265 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !255, line: 30, size: 128, elements: !268)
!268 = !{!269, !270}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !267, file: !255, line: 31, baseType: !120, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !267, file: !255, line: 32, baseType: !271, size: 16, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !109, line: 19, baseType: !272)
!272 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !254, file: !255, line: 232, baseType: !274, size: 64, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!261, !197, !266, !120, !277}
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !109, line: 55, baseType: !278)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !263, line: 72, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !263, line: 16, baseType: !111)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !245, file: !192, line: 141, baseType: !281, size: 64, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !245, file: !192, line: 142, baseType: !283, size: 64, offset: 192)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !286)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !255, line: 84, size: 320, elements: !287)
!287 = !{!288, !289, !293, !2964, !2965}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !286, file: !255, line: 85, baseType: !120, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !286, file: !255, line: 86, baseType: !290, size: 64, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{!271, !197, !266, !106}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !286, file: !255, line: 88, baseType: !294, size: 64, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!271, !197, !297, !106}
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !255, line: 168, size: 448, elements: !299)
!299 = !{!300, !301, !302, !303, !2959, !2960}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !298, file: !255, line: 169, baseType: !267, size: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !298, file: !255, line: 170, baseType: !277, size: 64, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !298, file: !255, line: 171, baseType: !107, size: 64, offset: 192)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !298, file: !255, line: 172, baseType: !304, size: 64, offset: 256)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!261, !307, !197, !297, !230, !481, !277}
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !31, line: 916, size: 1856, align: 32, elements: !309)
!309 = !{!310, !328, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2942, !2943, !2952, !2953, !2954, !2955, !2956, !2957, !2958}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !308, file: !31, line: 920, baseType: !311, size: 128)
!311 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !308, file: !31, line: 917, size: 128, elements: !312)
!312 = !{!313, !319}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !311, file: !31, line: 918, baseType: !314, size: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !315, line: 58, size: 64, elements: !316)
!315 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!316 = !{!317}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !314, file: !315, line: 59, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !311, file: !31, line: 919, baseType: !320, size: 128, align: 64)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !109, line: 216, size: 128, align: 64, elements: !321)
!321 = !{!322, !324}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !320, file: !109, line: 217, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !320, file: !109, line: 218, baseType: !325, size: 64, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{null, !323}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !308, file: !31, line: 921, baseType: !329, size: 128, offset: 128)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !330, line: 8, size: 128, elements: !331)
!330 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!331 = !{!332, !336}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !329, file: !330, line: 9, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !335, line: 18, flags: DIFlagFwdDecl)
!335 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!336 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !329, file: !330, line: 10, baseType: !337, size: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !335, line: 89, size: 1536, elements: !339)
!339 = !{!340, !341, !351, !359, !360, !381, !2892, !2894, !2906, !2907, !2908, !2909, !2910, !2916, !2917, !2918}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !338, file: !335, line: 91, baseType: !7, size: 32)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !338, file: !335, line: 92, baseType: !342, size: 32, offset: 32)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !343, line: 277, baseType: !344)
!343 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !343, line: 277, size: 32, elements: !345)
!345 = !{!346}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !344, file: !343, line: 277, baseType: !347, size: 32)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !343, line: 70, baseType: !348)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !343, line: 65, size: 32, elements: !349)
!349 = !{!350}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !348, file: !343, line: 66, baseType: !7, size: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !338, file: !335, line: 93, baseType: !352, size: 128, offset: 64)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !353, line: 38, size: 128, elements: !354)
!353 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!354 = !{!355, !357}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !352, file: !353, line: 39, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !352, file: !353, line: 39, baseType: !358, size: 64, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !338, file: !335, line: 94, baseType: !337, size: 64, offset: 192)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !338, file: !335, line: 95, baseType: !361, size: 128, offset: 256)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !335, line: 47, size: 128, elements: !362)
!362 = !{!363, !377}
!363 = !DIDerivedType(tag: DW_TAG_member, scope: !361, file: !335, line: 48, baseType: !364, size: 64)
!364 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !361, file: !335, line: 48, size: 64, elements: !365)
!365 = !{!366, !373}
!366 = !DIDerivedType(tag: DW_TAG_member, scope: !364, file: !335, line: 49, baseType: !367, size: 64)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !364, file: !335, line: 49, size: 64, elements: !368)
!368 = !{!369, !372}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !367, file: !335, line: 50, baseType: !370, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !146, line: 21, baseType: !371)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !148, line: 27, baseType: !7)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !367, file: !335, line: 50, baseType: !370, size: 32, offset: 32)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !364, file: !335, line: 52, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !146, line: 23, baseType: !375)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !148, line: 31, baseType: !376)
!376 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !361, file: !335, line: 54, baseType: !378, size: 64, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !380)
!380 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !338, file: !335, line: 96, baseType: !382, size: 64, offset: 384)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !31, line: 610, size: 4224, elements: !384)
!384 = !{!385, !386, !387, !395, !402, !403, !546, !2603, !2604, !2605, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2868, !2876, !2877, !2878, !2888, !2889, !2890, !2891}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !383, file: !31, line: 611, baseType: !271, size: 16)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !383, file: !31, line: 612, baseType: !272, size: 16, offset: 16)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !383, file: !31, line: 613, baseType: !388, size: 32, offset: 32)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !389, line: 23, baseType: !390)
!389 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !389, line: 21, size: 32, elements: !391)
!391 = !{!392}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !390, file: !389, line: 22, baseType: !393, size: 32)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !109, line: 32, baseType: !394)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !263, line: 49, baseType: !7)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !383, file: !31, line: 614, baseType: !396, size: 32, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !389, line: 28, baseType: !397)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !389, line: 26, size: 32, elements: !398)
!398 = !{!399}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !397, file: !389, line: 27, baseType: !400, size: 32)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !109, line: 33, baseType: !401)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !263, line: 50, baseType: !7)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !383, file: !31, line: 615, baseType: !7, size: 32, offset: 96)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !383, file: !31, line: 622, baseType: !404, size: 64, offset: 128)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !406)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !31, line: 1864, size: 1536, align: 512, elements: !407)
!407 = !{!408, !412, !422, !426, !432, !436, !442, !446, !450, !454, !458, !459, !465, !469, !493, !522, !526, !532, !537, !541, !542}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !406, file: !31, line: 1865, baseType: !409, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{!337, !382, !337, !7}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !406, file: !31, line: 1866, baseType: !413, size: 64, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DISubroutineType(types: !415)
!415 = !{!120, !337, !382, !416}
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !418, line: 10, size: 128, elements: !419)
!418 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!419 = !{!420, !421}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !417, file: !418, line: 11, baseType: !179, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !417, file: !418, line: 12, baseType: !107, size: 64, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !406, file: !31, line: 1867, baseType: !423, size: 64, offset: 128)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{!106, !382, !106}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !406, file: !31, line: 1868, baseType: !427, size: 64, offset: 192)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{!430, !382, !106}
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !31, line: 581, flags: DIFlagFwdDecl)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !406, file: !31, line: 1870, baseType: !433, size: 64, offset: 256)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DISubroutineType(types: !435)
!435 = !{!106, !337, !230, !106}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !406, file: !31, line: 1872, baseType: !437, size: 64, offset: 320)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DISubroutineType(types: !439)
!439 = !{!106, !382, !337, !271, !440}
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !109, line: 30, baseType: !441)
!441 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !406, file: !31, line: 1873, baseType: !443, size: 64, offset: 384)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DISubroutineType(types: !445)
!445 = !{!106, !337, !382, !337}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !406, file: !31, line: 1874, baseType: !447, size: 64, offset: 448)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{!106, !382, !337}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !406, file: !31, line: 1875, baseType: !451, size: 64, offset: 512)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!106, !382, !337, !120}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !406, file: !31, line: 1876, baseType: !455, size: 64, offset: 576)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{!106, !382, !337, !271}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !406, file: !31, line: 1877, baseType: !447, size: 64, offset: 640)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !406, file: !31, line: 1878, baseType: !460, size: 64, offset: 704)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!106, !382, !337, !271, !463}
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !109, line: 16, baseType: !464)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !109, line: 13, baseType: !370)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !406, file: !31, line: 1879, baseType: !466, size: 64, offset: 768)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!106, !382, !337, !382, !337, !7}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !406, file: !31, line: 1881, baseType: !470, size: 64, offset: 832)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!106, !337, !473}
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !31, line: 219, size: 640, elements: !475)
!475 = !{!476, !477, !478, !479, !480, !483, !490, !491, !492}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !474, file: !31, line: 220, baseType: !7, size: 32)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !474, file: !31, line: 221, baseType: !271, size: 16, offset: 32)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !474, file: !31, line: 222, baseType: !388, size: 32, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !474, file: !31, line: 223, baseType: !396, size: 32, offset: 96)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !474, file: !31, line: 224, baseType: !481, size: 64, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !109, line: 46, baseType: !482)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !263, line: 88, baseType: !149)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !474, file: !31, line: 225, baseType: !484, size: 128, offset: 192)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !485, line: 13, size: 128, elements: !486)
!485 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!486 = !{!487, !489}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !484, file: !485, line: 14, baseType: !488, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !485, line: 8, baseType: !147)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !484, file: !485, line: 15, baseType: !265, size: 64, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !474, file: !31, line: 226, baseType: !484, size: 128, offset: 320)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !474, file: !31, line: 227, baseType: !484, size: 128, offset: 448)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !474, file: !31, line: 234, baseType: !307, size: 64, offset: 576)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !406, file: !31, line: 1882, baseType: !494, size: 64, offset: 896)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{!106, !497, !499, !370, !7}
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !329)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !501, line: 22, size: 1152, elements: !502)
!501 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!502 = !{!503, !504, !505, !506, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !500, file: !501, line: 23, baseType: !370, size: 32)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !500, file: !501, line: 24, baseType: !271, size: 16, offset: 32)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !500, file: !501, line: 25, baseType: !7, size: 32, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !500, file: !501, line: 26, baseType: !507, size: 32, offset: 96)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !109, line: 104, baseType: !370)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !500, file: !501, line: 27, baseType: !374, size: 64, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !500, file: !501, line: 28, baseType: !374, size: 64, offset: 192)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !500, file: !501, line: 37, baseType: !374, size: 64, offset: 256)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !500, file: !501, line: 38, baseType: !463, size: 32, offset: 320)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !500, file: !501, line: 39, baseType: !463, size: 32, offset: 352)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !500, file: !501, line: 40, baseType: !388, size: 32, offset: 384)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !500, file: !501, line: 41, baseType: !396, size: 32, offset: 416)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !500, file: !501, line: 42, baseType: !481, size: 64, offset: 448)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !500, file: !501, line: 43, baseType: !484, size: 128, offset: 512)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !500, file: !501, line: 44, baseType: !484, size: 128, offset: 640)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !500, file: !501, line: 45, baseType: !484, size: 128, offset: 768)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !500, file: !501, line: 46, baseType: !484, size: 128, offset: 896)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !500, file: !501, line: 47, baseType: !374, size: 64, offset: 1024)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !500, file: !501, line: 48, baseType: !374, size: 64, offset: 1088)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !406, file: !31, line: 1883, baseType: !523, size: 64, offset: 960)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{!261, !337, !230, !277}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !406, file: !31, line: 1884, baseType: !527, size: 64, offset: 1024)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!106, !382, !530, !374, !374}
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !31, line: 50, flags: DIFlagFwdDecl)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !406, file: !31, line: 1886, baseType: !533, size: 64, offset: 1088)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!106, !382, !536, !106}
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !406, file: !31, line: 1887, baseType: !538, size: 64, offset: 1152)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!106, !382, !337, !307, !7, !271}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !406, file: !31, line: 1890, baseType: !455, size: 64, offset: 1216)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !406, file: !31, line: 1891, baseType: !543, size: 64, offset: 1280)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{!106, !382, !430, !106}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !383, file: !31, line: 623, baseType: !547, size: 64, offset: 192)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !31, line: 1416, size: 9472, elements: !549)
!549 = !{!550, !551, !552, !553, !554, !555, !605, !2210, !2292, !2375, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2391, !2395, !2396, !2399, !2400, !2403, !2404, !2405, !2446, !2473, !2474, !2475, !2476, !2477, !2478, !2481, !2483, !2490, !2491, !2493, !2494, !2495, !2554, !2555, !2570, !2571, !2572, !2573, !2574, !2577, !2578, !2579, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !548, file: !31, line: 1417, baseType: !167, size: 128)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !548, file: !31, line: 1418, baseType: !463, size: 32, offset: 128)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !548, file: !31, line: 1419, baseType: !380, size: 8, offset: 160)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !548, file: !31, line: 1420, baseType: !111, size: 64, offset: 192)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !548, file: !31, line: 1421, baseType: !481, size: 64, offset: 256)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !548, file: !31, line: 1422, baseType: !556, size: 64, offset: 320)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !31, line: 2228, size: 576, elements: !558)
!558 = !{!559, !560, !561, !568, !572, !576, !580, !584, !585, !595, !598, !599, !600, !602, !603, !604}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !557, file: !31, line: 2229, baseType: !120, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !557, file: !31, line: 2230, baseType: !106, size: 32, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !557, file: !31, line: 2238, baseType: !562, size: 64, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{!106, !565}
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !567, line: 28, flags: DIFlagFwdDecl)
!567 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!568 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !557, file: !31, line: 2239, baseType: !569, size: 64, offset: 192)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !571)
!571 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !31, line: 70, flags: DIFlagFwdDecl)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !557, file: !31, line: 2240, baseType: !573, size: 64, offset: 256)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DISubroutineType(types: !575)
!575 = !{!337, !556, !106, !120, !107}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !557, file: !31, line: 2242, baseType: !577, size: 64, offset: 320)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{null, !547}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !557, file: !31, line: 2243, baseType: !581, size: 64, offset: 384)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !583, line: 76, flags: DIFlagFwdDecl)
!583 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!584 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !557, file: !31, line: 2244, baseType: !556, size: 64, offset: 448)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !557, file: !31, line: 2245, baseType: !586, size: 64, offset: 512)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !109, line: 182, size: 64, elements: !587)
!587 = !{!588}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !586, file: !109, line: 183, baseType: !589, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !109, line: 186, size: 128, elements: !591)
!591 = !{!592, !593}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !590, file: !109, line: 187, baseType: !589, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !590, file: !109, line: 187, baseType: !594, size: 64, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !557, file: !31, line: 2247, baseType: !596, offset: 576)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !597, line: 187, elements: !165)
!597 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!598 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !557, file: !31, line: 2248, baseType: !596, offset: 576)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !557, file: !31, line: 2249, baseType: !596, offset: 576)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !557, file: !31, line: 2250, baseType: !601, offset: 576)
!601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !596, elements: !231)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !557, file: !31, line: 2252, baseType: !596, offset: 576)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !557, file: !31, line: 2253, baseType: !596, offset: 576)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !557, file: !31, line: 2254, baseType: !596, offset: 576)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !548, file: !31, line: 1423, baseType: !606, size: 64, offset: 384)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !608)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !31, line: 1935, size: 1472, elements: !609)
!609 = !{!610, !614, !618, !619, !623, !629, !633, !634, !635, !639, !643, !644, !645, !646, !652, !657, !658, !665, !666, !667, !668, !2194, !2209}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !608, file: !31, line: 1936, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{!382, !547}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !608, file: !31, line: 1937, baseType: !615, size: 64, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{null, !382}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !608, file: !31, line: 1938, baseType: !615, size: 64, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !608, file: !31, line: 1940, baseType: !620, size: 64, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{null, !382, !106}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !608, file: !31, line: 1941, baseType: !624, size: 64, offset: 256)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{!106, !382, !627}
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !31, line: 289, flags: DIFlagFwdDecl)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !608, file: !31, line: 1942, baseType: !630, size: 64, offset: 320)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!106, !382}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !608, file: !31, line: 1943, baseType: !615, size: 64, offset: 384)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !608, file: !31, line: 1944, baseType: !577, size: 64, offset: 448)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !608, file: !31, line: 1945, baseType: !636, size: 64, offset: 512)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DISubroutineType(types: !638)
!638 = !{!106, !547, !106}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !608, file: !31, line: 1946, baseType: !640, size: 64, offset: 576)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{!106, !547}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !608, file: !31, line: 1947, baseType: !640, size: 64, offset: 640)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !608, file: !31, line: 1948, baseType: !640, size: 64, offset: 704)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !608, file: !31, line: 1949, baseType: !640, size: 64, offset: 768)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !608, file: !31, line: 1950, baseType: !647, size: 64, offset: 832)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{!106, !337, !650}
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !31, line: 57, flags: DIFlagFwdDecl)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !608, file: !31, line: 1951, baseType: !653, size: 64, offset: 896)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{!106, !547, !656, !230}
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !608, file: !31, line: 1952, baseType: !577, size: 64, offset: 960)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !608, file: !31, line: 1954, baseType: !659, size: 64, offset: 1024)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{!106, !662, !337}
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !664, line: 539, flags: DIFlagFwdDecl)
!664 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!665 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !608, file: !31, line: 1955, baseType: !659, size: 64, offset: 1088)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !608, file: !31, line: 1956, baseType: !659, size: 64, offset: 1152)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !608, file: !31, line: 1957, baseType: !659, size: 64, offset: 1216)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !608, file: !31, line: 1963, baseType: !669, size: 64, offset: 1280)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{!106, !547, !672, !108}
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !674, line: 68, size: 512, align: 128, elements: !675)
!674 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!675 = !{!676, !677, !2186, !2193}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !673, file: !674, line: 69, baseType: !111, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, scope: !673, file: !674, line: 77, baseType: !678, size: 320, offset: 64)
!678 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !673, file: !674, line: 77, size: 320, elements: !679)
!679 = !{!680, !860, !865, !893, !901, !907, !2178, !2185}
!680 = !DIDerivedType(tag: DW_TAG_member, scope: !678, file: !674, line: 78, baseType: !681, size: 320)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !678, file: !674, line: 78, size: 320, elements: !682)
!682 = !{!683, !684, !858, !859}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !681, file: !674, line: 84, baseType: !167, size: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !681, file: !674, line: 86, baseType: !685, size: 64, offset: 128)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !31, line: 451, size: 1216, align: 64, elements: !687)
!687 = !{!688, !689, !696, !697, !702, !717, !726, !727, !728, !729, !851, !852, !855, !856, !857}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !686, file: !31, line: 452, baseType: !382, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !686, file: !31, line: 453, baseType: !690, size: 128, offset: 64)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !691, line: 292, size: 128, elements: !692)
!691 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!692 = !{!693, !694, !695}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !690, file: !691, line: 293, baseType: !151)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !690, file: !691, line: 295, baseType: !108, size: 32)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !690, file: !691, line: 296, baseType: !107, size: 64, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !686, file: !31, line: 454, baseType: !108, size: 32, offset: 192)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !686, file: !31, line: 455, baseType: !698, size: 32, offset: 224)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !109, line: 168, baseType: !699)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !109, line: 166, size: 32, elements: !700)
!700 = !{!701}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !699, file: !109, line: 167, baseType: !106, size: 32)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !686, file: !31, line: 460, baseType: !703, size: 128, offset: 256)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !704, line: 125, size: 128, elements: !705)
!704 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!705 = !{!706, !716}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !703, file: !704, line: 126, baseType: !707, size: 64)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !704, line: 31, size: 64, elements: !708)
!708 = !{!709}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !707, file: !704, line: 32, baseType: !710, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !704, line: 24, size: 192, align: 64, elements: !712)
!712 = !{!713, !714, !715}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !711, file: !704, line: 25, baseType: !111, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !711, file: !704, line: 26, baseType: !710, size: 64, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !711, file: !704, line: 27, baseType: !710, size: 64, offset: 128)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !703, file: !704, line: 127, baseType: !710, size: 64, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !686, file: !31, line: 461, baseType: !718, size: 256, offset: 384)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !719, line: 35, size: 256, elements: !720)
!719 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!720 = !{!721, !722, !723, !725}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !718, file: !719, line: 36, baseType: !139, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !718, file: !719, line: 42, baseType: !139, size: 64, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !718, file: !719, line: 46, baseType: !724, offset: 128)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !152, line: 29, baseType: !159)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !718, file: !719, line: 47, baseType: !167, size: 128, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !686, file: !31, line: 462, baseType: !111, size: 64, offset: 640)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !686, file: !31, line: 463, baseType: !111, size: 64, offset: 704)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !686, file: !31, line: 464, baseType: !111, size: 64, offset: 768)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !686, file: !31, line: 465, baseType: !730, size: 64, offset: 832)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !732)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !31, line: 367, size: 1408, elements: !733)
!733 = !{!734, !738, !742, !746, !750, !754, !760, !766, !770, !775, !779, !783, !787, !815, !819, !825, !826, !827, !831, !836, !840, !847}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !732, file: !31, line: 368, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{!106, !672, !627}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !732, file: !31, line: 369, baseType: !739, size: 64, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!106, !307, !672}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !732, file: !31, line: 372, baseType: !743, size: 64, offset: 128)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!106, !685, !627}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !732, file: !31, line: 375, baseType: !747, size: 64, offset: 192)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{!106, !672}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !732, file: !31, line: 381, baseType: !751, size: 64, offset: 256)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{!106, !307, !685, !170, !7}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !732, file: !31, line: 383, baseType: !755, size: 64, offset: 320)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{null, !758}
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !31, line: 290, flags: DIFlagFwdDecl)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !732, file: !31, line: 385, baseType: !761, size: 64, offset: 384)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{!106, !307, !685, !481, !7, !7, !764, !765}
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !732, file: !31, line: 388, baseType: !767, size: 64, offset: 448)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DISubroutineType(types: !769)
!769 = !{!106, !307, !685, !481, !7, !7, !672, !107}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !732, file: !31, line: 393, baseType: !771, size: 64, offset: 512)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{!774, !685, !774}
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !109, line: 125, baseType: !374)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !732, file: !31, line: 394, baseType: !776, size: 64, offset: 576)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{null, !672, !7, !7}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !732, file: !31, line: 395, baseType: !780, size: 64, offset: 640)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DISubroutineType(types: !782)
!782 = !{!106, !672, !108}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !732, file: !31, line: 396, baseType: !784, size: 64, offset: 704)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DISubroutineType(types: !786)
!786 = !{null, !672}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !732, file: !31, line: 397, baseType: !788, size: 64, offset: 768)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DISubroutineType(types: !790)
!790 = !{!261, !791, !813}
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !31, line: 320, size: 384, elements: !793)
!793 = !{!794, !795, !796, !800, !801, !802, !805, !806}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !792, file: !31, line: 321, baseType: !307, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !792, file: !31, line: 326, baseType: !481, size: 64, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !792, file: !31, line: 327, baseType: !797, size: 64, offset: 128)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{null, !791, !265, !265}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !792, file: !31, line: 328, baseType: !107, size: 64, offset: 192)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !792, file: !31, line: 329, baseType: !106, size: 32, offset: 256)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !792, file: !31, line: 330, baseType: !803, size: 16, offset: 288)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !146, line: 19, baseType: !804)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !148, line: 24, baseType: !272)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !792, file: !31, line: 331, baseType: !803, size: 16, offset: 304)
!806 = !DIDerivedType(tag: DW_TAG_member, scope: !792, file: !31, line: 332, baseType: !807, size: 64, offset: 320)
!807 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !792, file: !31, line: 332, size: 64, elements: !808)
!808 = !{!809, !810}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !807, file: !31, line: 333, baseType: !7, size: 32)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !807, file: !31, line: 334, baseType: !811, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !31, line: 334, flags: DIFlagFwdDecl)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !31, line: 64, flags: DIFlagFwdDecl)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !732, file: !31, line: 402, baseType: !816, size: 64, offset: 832)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{!106, !685, !672, !672, !5}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !732, file: !31, line: 404, baseType: !820, size: 64, offset: 896)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{!440, !672, !823}
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !824, line: 305, baseType: !7)
!824 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!825 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !732, file: !31, line: 405, baseType: !784, size: 64, offset: 960)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !732, file: !31, line: 406, baseType: !747, size: 64, offset: 1024)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !732, file: !31, line: 407, baseType: !828, size: 64, offset: 1088)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{!106, !672, !111, !111}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !732, file: !31, line: 409, baseType: !832, size: 64, offset: 1152)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DISubroutineType(types: !834)
!834 = !{null, !672, !835, !835}
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !732, file: !31, line: 410, baseType: !837, size: 64, offset: 1216)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{!106, !685, !672}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !732, file: !31, line: 413, baseType: !841, size: 64, offset: 1280)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{!106, !844, !307, !846}
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !31, line: 61, flags: DIFlagFwdDecl)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !732, file: !31, line: 415, baseType: !848, size: 64, offset: 1344)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DISubroutineType(types: !850)
!850 = !{null, !307}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !686, file: !31, line: 466, baseType: !111, size: 64, offset: 896)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !686, file: !31, line: 467, baseType: !853, size: 32, offset: 960)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !854, line: 8, baseType: !370)
!854 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!855 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !686, file: !31, line: 468, baseType: !151, offset: 992)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !686, file: !31, line: 469, baseType: !167, size: 128, offset: 1024)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !686, file: !31, line: 470, baseType: !107, size: 64, offset: 1152)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !681, file: !674, line: 87, baseType: !111, size: 64, offset: 192)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !681, file: !674, line: 94, baseType: !111, size: 64, offset: 256)
!860 = !DIDerivedType(tag: DW_TAG_member, scope: !678, file: !674, line: 96, baseType: !861, size: 64)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !678, file: !674, line: 96, size: 64, elements: !862)
!862 = !{!863}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !861, file: !674, line: 101, baseType: !864, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !109, line: 143, baseType: !374)
!865 = !DIDerivedType(tag: DW_TAG_member, scope: !678, file: !674, line: 103, baseType: !866, size: 320)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !678, file: !674, line: 103, size: 320, elements: !867)
!867 = !{!868, !878, !881, !882}
!868 = !DIDerivedType(tag: DW_TAG_member, scope: !866, file: !674, line: 104, baseType: !869, size: 128)
!869 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !866, file: !674, line: 104, size: 128, elements: !870)
!870 = !{!871, !872}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !869, file: !674, line: 105, baseType: !167, size: 128)
!872 = !DIDerivedType(tag: DW_TAG_member, scope: !869, file: !674, line: 106, baseType: !873, size: 128)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !869, file: !674, line: 106, size: 128, elements: !874)
!874 = !{!875, !876, !877}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !873, file: !674, line: 107, baseType: !672, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !873, file: !674, line: 109, baseType: !106, size: 32, offset: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !873, file: !674, line: 110, baseType: !106, size: 32, offset: 96)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !866, file: !674, line: 117, baseType: !879, size: 64, offset: 128)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !674, line: 117, flags: DIFlagFwdDecl)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !866, file: !674, line: 119, baseType: !107, size: 64, offset: 192)
!882 = !DIDerivedType(tag: DW_TAG_member, scope: !866, file: !674, line: 120, baseType: !883, size: 64, offset: 256)
!883 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !866, file: !674, line: 120, size: 64, elements: !884)
!884 = !{!885, !886, !887}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !883, file: !674, line: 121, baseType: !107, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !883, file: !674, line: 122, baseType: !111, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, scope: !883, file: !674, line: 123, baseType: !888, size: 32)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !883, file: !674, line: 123, size: 32, elements: !889)
!889 = !{!890, !891, !892}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !888, file: !674, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !888, file: !674, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !888, file: !674, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!893 = !DIDerivedType(tag: DW_TAG_member, scope: !678, file: !674, line: 130, baseType: !894, size: 192)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !678, file: !674, line: 130, size: 192, elements: !895)
!895 = !{!896, !897, !898, !899, !900}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !894, file: !674, line: 131, baseType: !111, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !894, file: !674, line: 134, baseType: !380, size: 8, offset: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !894, file: !674, line: 135, baseType: !380, size: 8, offset: 72)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !894, file: !674, line: 136, baseType: !698, size: 32, offset: 96)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !894, file: !674, line: 137, baseType: !7, size: 32, offset: 128)
!901 = !DIDerivedType(tag: DW_TAG_member, scope: !678, file: !674, line: 139, baseType: !902, size: 256)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !678, file: !674, line: 139, size: 256, elements: !903)
!903 = !{!904, !905, !906}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !902, file: !674, line: 140, baseType: !111, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !902, file: !674, line: 141, baseType: !698, size: 32, offset: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !902, file: !674, line: 143, baseType: !167, size: 128, offset: 128)
!907 = !DIDerivedType(tag: DW_TAG_member, scope: !678, file: !674, line: 145, baseType: !908, size: 256)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !678, file: !674, line: 145, size: 256, elements: !909)
!909 = !{!910, !911, !913, !914, !2177}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !908, file: !674, line: 146, baseType: !111, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !908, file: !674, line: 147, baseType: !912, size: 64, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !664, line: 509, baseType: !672)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !908, file: !674, line: 148, baseType: !111, size: 64, offset: 128)
!914 = !DIDerivedType(tag: DW_TAG_member, scope: !908, file: !674, line: 149, baseType: !915, size: 64, offset: 192)
!915 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !908, file: !674, line: 149, size: 64, elements: !916)
!916 = !{!917, !2176}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !915, file: !674, line: 150, baseType: !918, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !674, line: 388, size: 7296, elements: !920)
!920 = !{!921, !2172}
!921 = !DIDerivedType(tag: DW_TAG_member, scope: !919, file: !674, line: 389, baseType: !922, size: 7296)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !919, file: !674, line: 389, size: 7296, elements: !923)
!923 = !{!924, !962, !963, !964, !968, !969, !970, !971, !972, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1013, !1021, !1024, !1048, !1049, !2156, !2157, !2160, !2161, !2162, !2165, !2166, !2167, !2170, !2171}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !922, file: !674, line: 390, baseType: !925, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !674, line: 305, size: 1472, elements: !927)
!927 = !{!928, !929, !930, !931, !932, !933, !934, !935, !942, !943, !948, !949, !952, !956, !957, !958, !959, !960}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !926, file: !674, line: 308, baseType: !111, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !926, file: !674, line: 309, baseType: !111, size: 64, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !926, file: !674, line: 313, baseType: !925, size: 64, offset: 128)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !926, file: !674, line: 313, baseType: !925, size: 64, offset: 192)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !926, file: !674, line: 315, baseType: !711, size: 192, align: 64, offset: 256)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !926, file: !674, line: 323, baseType: !111, size: 64, offset: 448)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !926, file: !674, line: 327, baseType: !918, size: 64, offset: 512)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !926, file: !674, line: 333, baseType: !936, size: 64, offset: 576)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !664, line: 284, baseType: !937)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !664, line: 284, size: 64, elements: !938)
!938 = !{!939}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !937, file: !664, line: 284, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !941, line: 19, baseType: !111)
!941 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!942 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !926, file: !674, line: 334, baseType: !111, size: 64, offset: 640)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !926, file: !674, line: 343, baseType: !944, size: 256, offset: 704)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !926, file: !674, line: 340, size: 256, elements: !945)
!945 = !{!946, !947}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !944, file: !674, line: 341, baseType: !711, size: 192, align: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !944, file: !674, line: 342, baseType: !111, size: 64, offset: 192)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !926, file: !674, line: 351, baseType: !167, size: 128, offset: 960)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !926, file: !674, line: 353, baseType: !950, size: 64, offset: 1088)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !674, line: 353, flags: DIFlagFwdDecl)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !926, file: !674, line: 356, baseType: !953, size: 64, offset: 1152)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !955)
!955 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !674, line: 356, flags: DIFlagFwdDecl)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !926, file: !674, line: 359, baseType: !111, size: 64, offset: 1216)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !926, file: !674, line: 361, baseType: !307, size: 64, offset: 1280)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !926, file: !674, line: 362, baseType: !107, size: 64, offset: 1344)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !926, file: !674, line: 365, baseType: !139, size: 64, offset: 1408)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !926, file: !674, line: 373, baseType: !961, offset: 1472)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !674, line: 296, elements: !165)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !922, file: !674, line: 391, baseType: !707, size: 64, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !922, file: !674, line: 392, baseType: !374, size: 64, offset: 128)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !922, file: !674, line: 394, baseType: !965, size: 64, offset: 192)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DISubroutineType(types: !967)
!967 = !{!111, !307, !111, !111, !111, !111}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !922, file: !674, line: 398, baseType: !111, size: 64, offset: 256)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !922, file: !674, line: 399, baseType: !111, size: 64, offset: 320)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !922, file: !674, line: 405, baseType: !111, size: 64, offset: 384)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !922, file: !674, line: 406, baseType: !111, size: 64, offset: 448)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !922, file: !674, line: 407, baseType: !973, size: 64, offset: 512)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !664, line: 286, baseType: !975)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !664, line: 286, size: 64, elements: !976)
!976 = !{!977}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !975, file: !664, line: 286, baseType: !978, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !941, line: 18, baseType: !111)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !922, file: !674, line: 416, baseType: !698, size: 32, offset: 576)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !922, file: !674, line: 428, baseType: !698, size: 32, offset: 608)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !922, file: !674, line: 437, baseType: !698, size: 32, offset: 640)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !922, file: !674, line: 447, baseType: !698, size: 32, offset: 672)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !922, file: !674, line: 450, baseType: !139, size: 64, offset: 704)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !922, file: !674, line: 452, baseType: !106, size: 32, offset: 768)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !922, file: !674, line: 454, baseType: !151, offset: 800)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !922, file: !674, line: 457, baseType: !718, size: 256, offset: 832)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !922, file: !674, line: 459, baseType: !167, size: 128, offset: 1088)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !922, file: !674, line: 466, baseType: !111, size: 64, offset: 1216)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !922, file: !674, line: 467, baseType: !111, size: 64, offset: 1280)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !922, file: !674, line: 469, baseType: !111, size: 64, offset: 1344)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !922, file: !674, line: 470, baseType: !111, size: 64, offset: 1408)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !922, file: !674, line: 471, baseType: !141, size: 64, offset: 1472)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !922, file: !674, line: 472, baseType: !111, size: 64, offset: 1536)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !922, file: !674, line: 473, baseType: !111, size: 64, offset: 1600)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !922, file: !674, line: 474, baseType: !111, size: 64, offset: 1664)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !922, file: !674, line: 475, baseType: !111, size: 64, offset: 1728)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !922, file: !674, line: 477, baseType: !151, offset: 1792)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !922, file: !674, line: 478, baseType: !111, size: 64, offset: 1792)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !922, file: !674, line: 478, baseType: !111, size: 64, offset: 1856)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !922, file: !674, line: 478, baseType: !111, size: 64, offset: 1920)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !922, file: !674, line: 478, baseType: !111, size: 64, offset: 1984)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !922, file: !674, line: 479, baseType: !111, size: 64, offset: 2048)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !922, file: !674, line: 479, baseType: !111, size: 64, offset: 2112)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !922, file: !674, line: 479, baseType: !111, size: 64, offset: 2176)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !922, file: !674, line: 480, baseType: !111, size: 64, offset: 2240)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !922, file: !674, line: 480, baseType: !111, size: 64, offset: 2304)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !922, file: !674, line: 480, baseType: !111, size: 64, offset: 2368)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !922, file: !674, line: 480, baseType: !111, size: 64, offset: 2432)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !922, file: !674, line: 482, baseType: !1010, size: 2816, offset: 2496)
!1010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 2816, elements: !1011)
!1011 = !{!1012}
!1012 = !DISubrange(count: 44)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !922, file: !674, line: 488, baseType: !1014, size: 256, offset: 5312)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1015, line: 60, size: 256, elements: !1016)
!1015 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1016 = !{!1017}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1014, file: !1015, line: 61, baseType: !1018, size: 256)
!1018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 256, elements: !1019)
!1019 = !{!1020}
!1020 = !DISubrange(count: 4)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !922, file: !674, line: 490, baseType: !1022, size: 64, offset: 5568)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !674, line: 490, flags: DIFlagFwdDecl)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !922, file: !674, line: 493, baseType: !1025, size: 896, offset: 5632)
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1026, line: 53, baseType: !1027)
!1026 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1026, line: 13, size: 896, elements: !1028)
!1028 = !{!1029, !1030, !1031, !1032, !1035, !1036, !1037, !1038, !1042, !1043, !1044}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1027, file: !1026, line: 18, baseType: !374, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1027, file: !1026, line: 28, baseType: !141, size: 64, offset: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1027, file: !1026, line: 31, baseType: !718, size: 256, offset: 128)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1027, file: !1026, line: 32, baseType: !1033, size: 64, offset: 384)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1026, line: 32, flags: DIFlagFwdDecl)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1027, file: !1026, line: 37, baseType: !272, size: 16, offset: 448)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1027, file: !1026, line: 40, baseType: !135, size: 192, offset: 512)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1027, file: !1026, line: 41, baseType: !107, size: 64, offset: 704)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1027, file: !1026, line: 42, baseType: !1039, size: 64, offset: 768)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1041)
!1041 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1026, line: 42, flags: DIFlagFwdDecl)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1027, file: !1026, line: 44, baseType: !698, size: 32, offset: 832)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1027, file: !1026, line: 50, baseType: !803, size: 16, offset: 864)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1027, file: !1026, line: 51, baseType: !1045, size: 16, offset: 880)
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !146, line: 18, baseType: !1046)
!1046 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !148, line: 23, baseType: !1047)
!1047 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !922, file: !674, line: 495, baseType: !111, size: 64, offset: 6528)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !922, file: !674, line: 497, baseType: !1050, size: 64, offset: 6592)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !674, line: 381, size: 384, elements: !1052)
!1052 = !{!1053, !1054, !2155}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1051, file: !674, line: 382, baseType: !698, size: 32)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1051, file: !674, line: 383, baseType: !1055, size: 128, offset: 64)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !674, line: 376, size: 128, elements: !1056)
!1056 = !{!1057, !2153}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1055, file: !674, line: 377, baseType: !1058, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1060, line: 640, size: 48640, elements: !1061)
!1060 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1061 = !{!1062, !1068, !1070, !1071, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1088, !1106, !1117, !1202, !1203, !1204, !1215, !1216, !1218, !1219, !1220, !1221, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1300, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1338, !1340, !1341, !1342, !1354, !1355, !1356, !1357, !1358, !1359, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1383, !1388, !1572, !1573, !1574, !1575, !1579, !1582, !1585, !1588, !1591, !1594, !1695, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1741, !1742, !1743, !1744, !1745, !1750, !1751, !1752, !1755, !1756, !1759, !1762, !1765, !1768, !1811, !1814, !1815, !1894, !1895, !1898, !1899, !1902, !1903, !1904, !1908, !1909, !1910, !1923, !1924, !1925, !1935, !1940, !1943, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1059, file: !1060, line: 646, baseType: !1063, size: 128)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1064, line: 56, size: 128, elements: !1065)
!1064 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1065 = !{!1066, !1067}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1063, file: !1064, line: 57, baseType: !111, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1063, file: !1064, line: 58, baseType: !370, size: 32, offset: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1059, file: !1060, line: 649, baseType: !1069, size: 64, offset: 128)
!1069 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !265)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1059, file: !1060, line: 657, baseType: !107, size: 64, offset: 192)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1059, file: !1060, line: 658, baseType: !1072, size: 32, offset: 256)
!1072 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1073, line: 113, baseType: !1074)
!1073 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1073, line: 111, size: 32, elements: !1075)
!1075 = !{!1076}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1074, file: !1073, line: 112, baseType: !698, size: 32)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1059, file: !1060, line: 660, baseType: !7, size: 32, offset: 288)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1059, file: !1060, line: 661, baseType: !7, size: 32, offset: 320)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1059, file: !1060, line: 684, baseType: !106, size: 32, offset: 352)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1059, file: !1060, line: 686, baseType: !106, size: 32, offset: 384)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1059, file: !1060, line: 687, baseType: !106, size: 32, offset: 416)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1059, file: !1060, line: 688, baseType: !106, size: 32, offset: 448)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1059, file: !1060, line: 689, baseType: !7, size: 32, offset: 480)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1059, file: !1060, line: 691, baseType: !1085, size: 64, offset: 512)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1087)
!1087 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1060, line: 691, flags: DIFlagFwdDecl)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1059, file: !1060, line: 692, baseType: !1089, size: 832, offset: 576)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1060, line: 451, size: 832, elements: !1090)
!1090 = !{!1091, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1089, file: !1060, line: 453, baseType: !1092, size: 128)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1060, line: 325, size: 128, elements: !1093)
!1093 = !{!1094, !1095}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1092, file: !1060, line: 326, baseType: !111, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1092, file: !1060, line: 327, baseType: !370, size: 32, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1089, file: !1060, line: 454, baseType: !711, size: 192, align: 64, offset: 128)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1089, file: !1060, line: 455, baseType: !167, size: 128, offset: 320)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1089, file: !1060, line: 456, baseType: !7, size: 32, offset: 448)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1089, file: !1060, line: 458, baseType: !374, size: 64, offset: 512)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1089, file: !1060, line: 459, baseType: !374, size: 64, offset: 576)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1089, file: !1060, line: 460, baseType: !374, size: 64, offset: 640)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1089, file: !1060, line: 461, baseType: !374, size: 64, offset: 704)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1089, file: !1060, line: 463, baseType: !374, size: 64, offset: 768)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1089, file: !1060, line: 465, baseType: !1105, offset: 832)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1060, line: 415, elements: !165)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1059, file: !1060, line: 693, baseType: !1107, size: 384, offset: 1408)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1060, line: 489, size: 384, elements: !1108)
!1108 = !{!1109, !1110, !1111, !1112, !1113, !1114, !1115}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1107, file: !1060, line: 490, baseType: !167, size: 128)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1107, file: !1060, line: 491, baseType: !111, size: 64, offset: 128)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1107, file: !1060, line: 492, baseType: !111, size: 64, offset: 192)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1107, file: !1060, line: 493, baseType: !7, size: 32, offset: 256)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1107, file: !1060, line: 494, baseType: !272, size: 16, offset: 288)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1107, file: !1060, line: 495, baseType: !272, size: 16, offset: 304)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1107, file: !1060, line: 497, baseType: !1116, size: 64, offset: 320)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1059, file: !1060, line: 697, baseType: !1118, size: 1792, offset: 1792)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1060, line: 507, size: 1792, elements: !1119)
!1119 = !{!1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1199, !1200}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1118, file: !1060, line: 508, baseType: !711, size: 192, align: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1118, file: !1060, line: 515, baseType: !374, size: 64, offset: 192)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1118, file: !1060, line: 516, baseType: !374, size: 64, offset: 256)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1118, file: !1060, line: 517, baseType: !374, size: 64, offset: 320)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1118, file: !1060, line: 518, baseType: !374, size: 64, offset: 384)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1118, file: !1060, line: 519, baseType: !374, size: 64, offset: 448)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1118, file: !1060, line: 526, baseType: !145, size: 64, offset: 512)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1118, file: !1060, line: 527, baseType: !374, size: 64, offset: 576)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1118, file: !1060, line: 528, baseType: !7, size: 32, offset: 640)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1118, file: !1060, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1118, file: !1060, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1118, file: !1060, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1118, file: !1060, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1118, file: !1060, line: 563, baseType: !1134, size: 512, offset: 704)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !14, line: 118, size: 512, elements: !1135)
!1135 = !{!1136, !1144, !1145, !1150, !1193, !1196, !1197, !1198}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1134, file: !14, line: 119, baseType: !1137, size: 256)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1138, line: 9, size: 256, elements: !1139)
!1138 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1139 = !{!1140, !1141}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1137, file: !1138, line: 10, baseType: !711, size: 192, align: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1137, file: !1138, line: 11, baseType: !1142, size: 64, offset: 192)
!1142 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1143, line: 29, baseType: !145)
!1143 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1134, file: !14, line: 120, baseType: !1142, size: 64, offset: 256)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1134, file: !14, line: 121, baseType: !1146, size: 64, offset: 320)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!13, !1149}
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1134, file: !14, line: 122, baseType: !1151, size: 64, offset: 384)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !14, line: 159, size: 512, align: 512, elements: !1153)
!1153 = !{!1154, !1174, !1175, !1178, !1183, !1184, !1188, !1192}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1152, file: !14, line: 160, baseType: !1155, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !14, line: 214, size: 4608, align: 512, elements: !1157)
!1157 = !{!1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1156, file: !14, line: 215, baseType: !724)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1156, file: !14, line: 216, baseType: !7, size: 32)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1156, file: !14, line: 217, baseType: !7, size: 32, offset: 32)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1156, file: !14, line: 218, baseType: !7, size: 32, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1156, file: !14, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1156, file: !14, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1156, file: !14, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1156, file: !14, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1156, file: !14, line: 233, baseType: !1142, size: 64, offset: 128)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1156, file: !14, line: 234, baseType: !1149, size: 64, offset: 192)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1156, file: !14, line: 235, baseType: !1142, size: 64, offset: 256)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1156, file: !14, line: 236, baseType: !1149, size: 64, offset: 320)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1156, file: !14, line: 237, baseType: !1171, size: 4096, offset: 512)
!1171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1152, size: 4096, elements: !1172)
!1172 = !{!1173}
!1173 = !DISubrange(count: 8)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1152, file: !14, line: 161, baseType: !7, size: 32, offset: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1152, file: !14, line: 162, baseType: !1176, size: 32, offset: 96)
!1176 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !109, line: 27, baseType: !1177)
!1177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !263, line: 96, baseType: !106)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1152, file: !14, line: 163, baseType: !1179, size: 32, offset: 128)
!1179 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !343, line: 276, baseType: !1180)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !343, line: 276, size: 32, elements: !1181)
!1181 = !{!1182}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1180, file: !343, line: 276, baseType: !347, size: 32)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1152, file: !14, line: 164, baseType: !1149, size: 64, offset: 192)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1152, file: !14, line: 165, baseType: !1185, size: 128, offset: 256)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1138, line: 14, size: 128, elements: !1186)
!1186 = !{!1187}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1185, file: !1138, line: 15, baseType: !703, size: 128)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1152, file: !14, line: 166, baseType: !1189, size: 64, offset: 384)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{!1142}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1152, file: !14, line: 167, baseType: !1142, size: 64, offset: 448)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1134, file: !14, line: 123, baseType: !1194, size: 8, offset: 448)
!1194 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !146, line: 17, baseType: !1195)
!1195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !148, line: 21, baseType: !380)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1134, file: !14, line: 124, baseType: !1194, size: 8, offset: 456)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1134, file: !14, line: 125, baseType: !1194, size: 8, offset: 464)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1134, file: !14, line: 126, baseType: !1194, size: 8, offset: 472)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1118, file: !1060, line: 572, baseType: !1134, size: 512, offset: 1216)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1118, file: !1060, line: 580, baseType: !1201, size: 64, offset: 1728)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1059, file: !1060, line: 721, baseType: !7, size: 32, offset: 3584)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1059, file: !1060, line: 722, baseType: !106, size: 32, offset: 3616)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1059, file: !1060, line: 723, baseType: !1205, size: 64, offset: 3648)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1207)
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1208, line: 17, baseType: !1209)
!1208 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1208, line: 17, size: 64, elements: !1210)
!1210 = !{!1211}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1209, file: !1208, line: 17, baseType: !1212, size: 64)
!1212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 64, elements: !1213)
!1213 = !{!1214}
!1214 = !DISubrange(count: 1)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1059, file: !1060, line: 724, baseType: !1207, size: 64, offset: 3712)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1059, file: !1060, line: 749, baseType: !1217, offset: 3776)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1060, line: 290, elements: !165)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1059, file: !1060, line: 751, baseType: !167, size: 128, offset: 3776)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1059, file: !1060, line: 757, baseType: !918, size: 64, offset: 3904)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1059, file: !1060, line: 758, baseType: !918, size: 64, offset: 3968)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1059, file: !1060, line: 761, baseType: !1222, size: 320, offset: 4032)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1015, line: 34, size: 320, elements: !1223)
!1223 = !{!1224, !1225}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1222, file: !1015, line: 35, baseType: !374, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1222, file: !1015, line: 36, baseType: !1226, size: 256, offset: 64)
!1226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !925, size: 256, elements: !1019)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1059, file: !1060, line: 766, baseType: !106, size: 32, offset: 4352)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1059, file: !1060, line: 767, baseType: !106, size: 32, offset: 4384)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1059, file: !1060, line: 768, baseType: !106, size: 32, offset: 4416)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1059, file: !1060, line: 770, baseType: !106, size: 32, offset: 4448)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1059, file: !1060, line: 772, baseType: !111, size: 64, offset: 4480)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1059, file: !1060, line: 775, baseType: !7, size: 32, offset: 4544)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1059, file: !1060, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1059, file: !1060, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1059, file: !1060, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1059, file: !1060, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1059, file: !1060, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1059, file: !1060, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1059, file: !1060, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1059, file: !1060, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1059, file: !1060, line: 831, baseType: !111, size: 64, offset: 4672)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1059, file: !1060, line: 833, baseType: !1243, size: 384, offset: 4736)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !19, line: 25, size: 384, elements: !1244)
!1244 = !{!1245, !1250}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1243, file: !19, line: 26, baseType: !1246, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!265, !1249}
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, scope: !1243, file: !19, line: 27, baseType: !1251, size: 320, offset: 64)
!1251 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1243, file: !19, line: 27, size: 320, elements: !1252)
!1252 = !{!1253, !1263, !1290}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1251, file: !19, line: 36, baseType: !1254, size: 320)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1251, file: !19, line: 29, size: 320, elements: !1255)
!1255 = !{!1256, !1258, !1259, !1260, !1261, !1262}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1254, file: !19, line: 30, baseType: !1257, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1254, file: !19, line: 31, baseType: !370, size: 32, offset: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1254, file: !19, line: 32, baseType: !370, size: 32, offset: 96)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1254, file: !19, line: 33, baseType: !370, size: 32, offset: 128)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1254, file: !19, line: 34, baseType: !374, size: 64, offset: 192)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1254, file: !19, line: 35, baseType: !1257, size: 64, offset: 256)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1251, file: !19, line: 46, baseType: !1264, size: 192)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1251, file: !19, line: 38, size: 192, elements: !1265)
!1265 = !{!1266, !1267, !1268, !1289}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1264, file: !19, line: 39, baseType: !1176, size: 32)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1264, file: !19, line: 40, baseType: !18, size: 32, offset: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, scope: !1264, file: !19, line: 41, baseType: !1269, size: 64, offset: 64)
!1269 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1264, file: !19, line: 41, size: 64, elements: !1270)
!1270 = !{!1271, !1279}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1269, file: !19, line: 42, baseType: !1272, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1274, line: 7, size: 128, elements: !1275)
!1274 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1275 = !{!1276, !1278}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1273, file: !1274, line: 8, baseType: !1277, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !263, line: 93, baseType: !149)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1273, file: !1274, line: 9, baseType: !149, size: 64, offset: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1269, file: !19, line: 43, baseType: !1280, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1282, line: 7, size: 64, elements: !1283)
!1282 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1283 = !{!1284, !1288}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1281, file: !1282, line: 8, baseType: !1285, size: 32)
!1285 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1282, line: 5, baseType: !1286)
!1286 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !146, line: 20, baseType: !1287)
!1287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !148, line: 26, baseType: !106)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1281, file: !1282, line: 9, baseType: !1286, size: 32, offset: 32)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1264, file: !19, line: 45, baseType: !374, size: 64, offset: 128)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1251, file: !19, line: 54, baseType: !1291, size: 256)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1251, file: !19, line: 48, size: 256, elements: !1292)
!1292 = !{!1293, !1296, !1297, !1298, !1299}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1291, file: !19, line: 49, baseType: !1294, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !19, line: 14, flags: DIFlagFwdDecl)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1291, file: !19, line: 50, baseType: !106, size: 32, offset: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1291, file: !19, line: 51, baseType: !106, size: 32, offset: 96)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1291, file: !19, line: 52, baseType: !111, size: 64, offset: 128)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1291, file: !19, line: 53, baseType: !111, size: 64, offset: 192)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1059, file: !1060, line: 835, baseType: !1301, size: 32, offset: 5120)
!1301 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !109, line: 22, baseType: !1302)
!1302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !263, line: 28, baseType: !106)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1059, file: !1060, line: 836, baseType: !1301, size: 32, offset: 5152)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1059, file: !1060, line: 840, baseType: !111, size: 64, offset: 5184)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1059, file: !1060, line: 849, baseType: !1058, size: 64, offset: 5248)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1059, file: !1060, line: 852, baseType: !1058, size: 64, offset: 5312)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1059, file: !1060, line: 857, baseType: !167, size: 128, offset: 5376)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1059, file: !1060, line: 858, baseType: !167, size: 128, offset: 5504)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1059, file: !1060, line: 859, baseType: !1058, size: 64, offset: 5632)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1059, file: !1060, line: 867, baseType: !167, size: 128, offset: 5696)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1059, file: !1060, line: 868, baseType: !167, size: 128, offset: 5824)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1059, file: !1060, line: 871, baseType: !1313, size: 64, offset: 5952)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !40, line: 59, size: 768, elements: !1315)
!1315 = !{!1316, !1317, !1318, !1319, !1321, !1322, !1329, !1330}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1314, file: !40, line: 61, baseType: !1072, size: 32)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1314, file: !40, line: 62, baseType: !7, size: 32, offset: 32)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1314, file: !40, line: 63, baseType: !151, offset: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1314, file: !40, line: 65, baseType: !1320, size: 256, offset: 64)
!1320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !586, size: 256, elements: !1019)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1314, file: !40, line: 66, baseType: !586, size: 64, offset: 320)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1314, file: !40, line: 68, baseType: !1323, size: 128, offset: 384)
!1323 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1324, line: 40, baseType: !1325)
!1324 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1324, line: 36, size: 128, elements: !1326)
!1326 = !{!1327, !1328}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1325, file: !1324, line: 37, baseType: !151)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1325, file: !1324, line: 38, baseType: !167, size: 128)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1314, file: !40, line: 69, baseType: !320, size: 128, align: 64, offset: 512)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1314, file: !40, line: 70, baseType: !1331, size: 128, offset: 640)
!1331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1332, size: 128, elements: !1213)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !40, line: 54, size: 128, elements: !1333)
!1333 = !{!1334, !1335}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1332, file: !40, line: 55, baseType: !106, size: 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1332, file: !40, line: 56, baseType: !1336, size: 64, offset: 64)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !40, line: 56, flags: DIFlagFwdDecl)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1059, file: !1060, line: 872, baseType: !1339, size: 512, offset: 6016)
!1339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !590, size: 512, elements: !1019)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1059, file: !1060, line: 873, baseType: !167, size: 128, offset: 6528)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1059, file: !1060, line: 874, baseType: !167, size: 128, offset: 6656)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1059, file: !1060, line: 876, baseType: !1343, size: 64, offset: 6784)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1345, line: 26, size: 192, elements: !1346)
!1345 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1346 = !{!1347, !1348}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1344, file: !1345, line: 27, baseType: !7, size: 32)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1344, file: !1345, line: 28, baseType: !1349, size: 128, offset: 64)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1350, line: 43, size: 128, elements: !1351)
!1350 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1351 = !{!1352, !1353}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1349, file: !1350, line: 44, baseType: !724)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1349, file: !1350, line: 45, baseType: !167, size: 128)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1059, file: !1060, line: 879, baseType: !656, size: 64, offset: 6848)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1059, file: !1060, line: 882, baseType: !656, size: 64, offset: 6912)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1059, file: !1060, line: 884, baseType: !374, size: 64, offset: 6976)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1059, file: !1060, line: 885, baseType: !374, size: 64, offset: 7040)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1059, file: !1060, line: 890, baseType: !374, size: 64, offset: 7104)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1059, file: !1060, line: 891, baseType: !1360, size: 128, offset: 7168)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1060, line: 242, size: 128, elements: !1361)
!1361 = !{!1362, !1363, !1364}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1360, file: !1060, line: 244, baseType: !374, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1360, file: !1060, line: 245, baseType: !374, size: 64, offset: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1360, file: !1060, line: 246, baseType: !724, offset: 128)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1059, file: !1060, line: 900, baseType: !111, size: 64, offset: 7296)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1059, file: !1060, line: 901, baseType: !111, size: 64, offset: 7360)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1059, file: !1060, line: 904, baseType: !374, size: 64, offset: 7424)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1059, file: !1060, line: 907, baseType: !374, size: 64, offset: 7488)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1059, file: !1060, line: 910, baseType: !111, size: 64, offset: 7552)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1059, file: !1060, line: 911, baseType: !111, size: 64, offset: 7616)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1059, file: !1060, line: 914, baseType: !1372, size: 640, offset: 7680)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1373, line: 123, size: 640, elements: !1374)
!1373 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1374 = !{!1375, !1381, !1382}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1372, file: !1373, line: 124, baseType: !1376, size: 576)
!1376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1377, size: 576, elements: !231)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1373, line: 108, size: 192, elements: !1378)
!1378 = !{!1379, !1380}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1377, file: !1373, line: 109, baseType: !374, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1377, file: !1373, line: 110, baseType: !1185, size: 128, offset: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1372, file: !1373, line: 125, baseType: !7, size: 32, offset: 576)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1372, file: !1373, line: 126, baseType: !7, size: 32, offset: 608)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1059, file: !1060, line: 917, baseType: !1384, size: 192, offset: 8320)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1373, line: 134, size: 192, elements: !1385)
!1385 = !{!1386, !1387}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1384, file: !1373, line: 135, baseType: !320, size: 128, align: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1384, file: !1373, line: 136, baseType: !7, size: 32, offset: 128)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1059, file: !1060, line: 923, baseType: !1389, size: 64, offset: 8512)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1391)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1392, line: 111, size: 1280, elements: !1393)
!1392 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1393 = !{!1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1413, !1414, !1415, !1416, !1417, !1418, !1525, !1526, !1527, !1528, !1554, !1557, !1567}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1391, file: !1392, line: 112, baseType: !698, size: 32)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1391, file: !1392, line: 120, baseType: !388, size: 32, offset: 32)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1391, file: !1392, line: 121, baseType: !396, size: 32, offset: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1391, file: !1392, line: 122, baseType: !388, size: 32, offset: 96)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1391, file: !1392, line: 123, baseType: !396, size: 32, offset: 128)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1391, file: !1392, line: 124, baseType: !388, size: 32, offset: 160)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1391, file: !1392, line: 125, baseType: !396, size: 32, offset: 192)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1391, file: !1392, line: 126, baseType: !388, size: 32, offset: 224)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1391, file: !1392, line: 127, baseType: !396, size: 32, offset: 256)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1391, file: !1392, line: 128, baseType: !7, size: 32, offset: 288)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1391, file: !1392, line: 129, baseType: !1405, size: 64, offset: 320)
!1405 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1406, line: 26, baseType: !1407)
!1406 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1406, line: 24, size: 64, elements: !1408)
!1408 = !{!1409}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1407, file: !1406, line: 25, baseType: !1410, size: 64)
!1410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 64, elements: !1411)
!1411 = !{!1412}
!1412 = !DISubrange(count: 2)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1391, file: !1392, line: 130, baseType: !1405, size: 64, offset: 384)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1391, file: !1392, line: 131, baseType: !1405, size: 64, offset: 448)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1391, file: !1392, line: 132, baseType: !1405, size: 64, offset: 512)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1391, file: !1392, line: 133, baseType: !1405, size: 64, offset: 576)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1391, file: !1392, line: 135, baseType: !380, size: 8, offset: 640)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1391, file: !1392, line: 137, baseType: !1419, size: 64, offset: 704)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1421, line: 189, size: 1664, elements: !1422)
!1421 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1422 = !{!1423, !1424, !1427, !1432, !1433, !1436, !1437, !1442, !1443, !1444, !1445, !1447, !1448, !1449, !1450, !1451, !1489, !1510}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1420, file: !1421, line: 190, baseType: !1072, size: 32)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1420, file: !1421, line: 191, baseType: !1425, size: 32, offset: 32)
!1425 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1421, line: 28, baseType: !1426)
!1426 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !109, line: 98, baseType: !1286)
!1427 = !DIDerivedType(tag: DW_TAG_member, scope: !1420, file: !1421, line: 192, baseType: !1428, size: 192, offset: 64)
!1428 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1420, file: !1421, line: 192, size: 192, elements: !1429)
!1429 = !{!1430, !1431}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1428, file: !1421, line: 193, baseType: !167, size: 128)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1428, file: !1421, line: 194, baseType: !711, size: 192, align: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1420, file: !1421, line: 199, baseType: !718, size: 256, offset: 256)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1420, file: !1421, line: 200, baseType: !1434, size: 64, offset: 512)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1421, line: 200, flags: DIFlagFwdDecl)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1420, file: !1421, line: 201, baseType: !107, size: 64, offset: 576)
!1437 = !DIDerivedType(tag: DW_TAG_member, scope: !1420, file: !1421, line: 202, baseType: !1438, size: 64, offset: 640)
!1438 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1420, file: !1421, line: 202, size: 64, elements: !1439)
!1439 = !{!1440, !1441}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1438, file: !1421, line: 203, baseType: !488, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1438, file: !1421, line: 204, baseType: !488, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1420, file: !1421, line: 206, baseType: !488, size: 64, offset: 704)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1420, file: !1421, line: 207, baseType: !388, size: 32, offset: 768)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1420, file: !1421, line: 208, baseType: !396, size: 32, offset: 800)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1420, file: !1421, line: 209, baseType: !1446, size: 32, offset: 832)
!1446 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1421, line: 31, baseType: !507)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1420, file: !1421, line: 210, baseType: !272, size: 16, offset: 864)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1420, file: !1421, line: 211, baseType: !272, size: 16, offset: 880)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1420, file: !1421, line: 215, baseType: !1047, size: 16, offset: 896)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1420, file: !1421, line: 222, baseType: !111, size: 64, offset: 960)
!1451 = !DIDerivedType(tag: DW_TAG_member, scope: !1420, file: !1421, line: 239, baseType: !1452, size: 320, offset: 1024)
!1452 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1420, file: !1421, line: 239, size: 320, elements: !1453)
!1453 = !{!1454, !1481}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1452, file: !1421, line: 240, baseType: !1455, size: 320)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1421, line: 108, size: 320, elements: !1456)
!1456 = !{!1457, !1458, !1470, !1473, !1480}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1455, file: !1421, line: 110, baseType: !111, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, scope: !1455, file: !1421, line: 111, baseType: !1459, size: 64, offset: 64)
!1459 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1455, file: !1421, line: 111, size: 64, elements: !1460)
!1460 = !{!1461, !1469}
!1461 = !DIDerivedType(tag: DW_TAG_member, scope: !1459, file: !1421, line: 112, baseType: !1462, size: 64)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1459, file: !1421, line: 112, size: 64, elements: !1463)
!1463 = !{!1464, !1465}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1462, file: !1421, line: 114, baseType: !803, size: 16)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1462, file: !1421, line: 115, baseType: !1466, size: 48, offset: 16)
!1466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 48, elements: !1467)
!1467 = !{!1468}
!1468 = !DISubrange(count: 6)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1459, file: !1421, line: 121, baseType: !111, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1455, file: !1421, line: 123, baseType: !1471, size: 64, offset: 128)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1421, line: 96, flags: DIFlagFwdDecl)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1455, file: !1421, line: 124, baseType: !1474, size: 64, offset: 192)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1421, line: 102, size: 192, elements: !1476)
!1476 = !{!1477, !1478, !1479}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1475, file: !1421, line: 103, baseType: !320, size: 128, align: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1475, file: !1421, line: 104, baseType: !1072, size: 32, offset: 128)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1475, file: !1421, line: 105, baseType: !440, size: 8, offset: 160)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1455, file: !1421, line: 125, baseType: !120, size: 64, offset: 256)
!1481 = !DIDerivedType(tag: DW_TAG_member, scope: !1452, file: !1421, line: 241, baseType: !1482, size: 320)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1452, file: !1421, line: 241, size: 320, elements: !1483)
!1483 = !{!1484, !1485, !1486, !1487, !1488}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1482, file: !1421, line: 242, baseType: !111, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1482, file: !1421, line: 243, baseType: !111, size: 64, offset: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1482, file: !1421, line: 244, baseType: !1471, size: 64, offset: 128)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1482, file: !1421, line: 245, baseType: !1474, size: 64, offset: 192)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1482, file: !1421, line: 246, baseType: !230, size: 64, offset: 256)
!1489 = !DIDerivedType(tag: DW_TAG_member, scope: !1420, file: !1421, line: 254, baseType: !1490, size: 256, offset: 1344)
!1490 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1420, file: !1421, line: 254, size: 256, elements: !1491)
!1491 = !{!1492, !1498}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1490, file: !1421, line: 255, baseType: !1493, size: 256)
!1493 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1421, line: 128, size: 256, elements: !1494)
!1494 = !{!1495, !1496}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1493, file: !1421, line: 129, baseType: !107, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1493, file: !1421, line: 130, baseType: !1497, size: 256)
!1497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 256, elements: !1019)
!1498 = !DIDerivedType(tag: DW_TAG_member, scope: !1490, file: !1421, line: 256, baseType: !1499, size: 256)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1490, file: !1421, line: 256, size: 256, elements: !1500)
!1500 = !{!1501, !1502}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1499, file: !1421, line: 258, baseType: !167, size: 128)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1499, file: !1421, line: 259, baseType: !1503, size: 128, offset: 128)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1504, line: 22, size: 128, elements: !1505)
!1504 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1505 = !{!1506, !1509}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1503, file: !1504, line: 23, baseType: !1507, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1504, line: 23, flags: DIFlagFwdDecl)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1503, file: !1504, line: 24, baseType: !111, size: 64, offset: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1420, file: !1421, line: 274, baseType: !1511, size: 64, offset: 1600)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1421, line: 170, size: 192, elements: !1513)
!1513 = !{!1514, !1523, !1524}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1512, file: !1421, line: 171, baseType: !1515, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1421, line: 165, baseType: !1516)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!106, !1419, !1519, !1521, !1419}
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1472)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1493)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1512, file: !1421, line: 172, baseType: !1419, size: 64, offset: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1512, file: !1421, line: 173, baseType: !1471, size: 64, offset: 128)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1391, file: !1392, line: 138, baseType: !1419, size: 64, offset: 768)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1391, file: !1392, line: 139, baseType: !1419, size: 64, offset: 832)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1391, file: !1392, line: 140, baseType: !1419, size: 64, offset: 896)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1391, file: !1392, line: 145, baseType: !1529, size: 64, offset: 960)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1531, line: 13, size: 896, elements: !1532)
!1531 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1532 = !{!1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1530, file: !1531, line: 14, baseType: !1072, size: 32)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1530, file: !1531, line: 15, baseType: !698, size: 32, offset: 32)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1530, file: !1531, line: 16, baseType: !698, size: 32, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1530, file: !1531, line: 21, baseType: !139, size: 64, offset: 128)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1530, file: !1531, line: 27, baseType: !111, size: 64, offset: 192)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1530, file: !1531, line: 28, baseType: !111, size: 64, offset: 256)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1530, file: !1531, line: 29, baseType: !139, size: 64, offset: 320)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1530, file: !1531, line: 32, baseType: !590, size: 128, offset: 384)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1530, file: !1531, line: 33, baseType: !388, size: 32, offset: 512)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1530, file: !1531, line: 37, baseType: !139, size: 64, offset: 576)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1530, file: !1531, line: 44, baseType: !1544, size: 256, offset: 640)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1545, line: 15, size: 256, elements: !1546)
!1545 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1546 = !{!1547, !1548, !1549, !1550, !1551, !1552, !1553}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1544, file: !1545, line: 16, baseType: !724)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1544, file: !1545, line: 18, baseType: !106, size: 32)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1544, file: !1545, line: 19, baseType: !106, size: 32, offset: 32)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1544, file: !1545, line: 20, baseType: !106, size: 32, offset: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1544, file: !1545, line: 21, baseType: !106, size: 32, offset: 96)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1544, file: !1545, line: 22, baseType: !111, size: 64, offset: 128)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1544, file: !1545, line: 23, baseType: !111, size: 64, offset: 192)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1391, file: !1392, line: 146, baseType: !1555, size: 64, offset: 1024)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !389, line: 18, flags: DIFlagFwdDecl)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1391, file: !1392, line: 147, baseType: !1558, size: 64, offset: 1088)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1392, line: 25, size: 64, elements: !1560)
!1560 = !{!1561, !1562, !1563}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1559, file: !1392, line: 26, baseType: !698, size: 32)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1559, file: !1392, line: 27, baseType: !106, size: 32, offset: 32)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1559, file: !1392, line: 28, baseType: !1564, offset: 64)
!1564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !396, elements: !1565)
!1565 = !{!1566}
!1566 = !DISubrange(count: 0)
!1567 = !DIDerivedType(tag: DW_TAG_member, scope: !1391, file: !1392, line: 149, baseType: !1568, size: 128, offset: 1152)
!1568 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1391, file: !1392, line: 149, size: 128, elements: !1569)
!1569 = !{!1570, !1571}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1568, file: !1392, line: 150, baseType: !106, size: 32)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1568, file: !1392, line: 151, baseType: !320, size: 128, align: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1059, file: !1060, line: 926, baseType: !1389, size: 64, offset: 8576)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1059, file: !1060, line: 929, baseType: !1389, size: 64, offset: 8640)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1059, file: !1060, line: 933, baseType: !1419, size: 64, offset: 8704)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1059, file: !1060, line: 943, baseType: !1576, size: 128, offset: 8768)
!1576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 128, elements: !1577)
!1577 = !{!1578}
!1578 = !DISubrange(count: 16)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1059, file: !1060, line: 945, baseType: !1580, size: 64, offset: 8896)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1060, line: 49, flags: DIFlagFwdDecl)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1059, file: !1060, line: 956, baseType: !1583, size: 64, offset: 8960)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1060, line: 45, flags: DIFlagFwdDecl)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1059, file: !1060, line: 959, baseType: !1586, size: 64, offset: 9024)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1060, line: 959, flags: DIFlagFwdDecl)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1059, file: !1060, line: 962, baseType: !1589, size: 64, offset: 9088)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1060, line: 66, flags: DIFlagFwdDecl)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1059, file: !1060, line: 966, baseType: !1592, size: 64, offset: 9152)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1060, line: 50, flags: DIFlagFwdDecl)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1059, file: !1060, line: 969, baseType: !1595, size: 64, offset: 9216)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1597, line: 82, size: 7296, elements: !1598)
!1597 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1598 = !{!1599, !1600, !1601, !1602, !1603, !1604, !1605, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1634, !1643, !1644, !1646, !1647, !1648, !1651, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1681, !1682, !1689, !1690, !1691, !1692, !1693, !1694}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1596, file: !1597, line: 83, baseType: !1072, size: 32)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1596, file: !1597, line: 84, baseType: !698, size: 32, offset: 32)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1596, file: !1597, line: 85, baseType: !106, size: 32, offset: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1596, file: !1597, line: 86, baseType: !167, size: 128, offset: 128)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1596, file: !1597, line: 88, baseType: !1323, size: 128, offset: 256)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1596, file: !1597, line: 91, baseType: !1058, size: 64, offset: 384)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1596, file: !1597, line: 94, baseType: !1606, size: 192, offset: 448)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1607, line: 30, size: 192, elements: !1608)
!1607 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1608 = !{!1609, !1610}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1606, file: !1607, line: 31, baseType: !167, size: 128)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1606, file: !1607, line: 32, baseType: !1611, size: 64, offset: 128)
!1611 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1612, line: 25, baseType: !1613)
!1612 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1612, line: 23, size: 64, elements: !1614)
!1614 = !{!1615}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1613, file: !1612, line: 24, baseType: !1212, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1596, file: !1597, line: 97, baseType: !586, size: 64, offset: 640)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1596, file: !1597, line: 100, baseType: !106, size: 32, offset: 704)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1596, file: !1597, line: 106, baseType: !106, size: 32, offset: 736)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1596, file: !1597, line: 107, baseType: !1058, size: 64, offset: 768)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1596, file: !1597, line: 110, baseType: !106, size: 32, offset: 832)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1596, file: !1597, line: 111, baseType: !7, size: 32, offset: 864)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1596, file: !1597, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1596, file: !1597, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1596, file: !1597, line: 128, baseType: !106, size: 32, offset: 928)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1596, file: !1597, line: 129, baseType: !167, size: 128, offset: 960)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1596, file: !1597, line: 132, baseType: !1134, size: 512, offset: 1088)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1596, file: !1597, line: 133, baseType: !1142, size: 64, offset: 1600)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1596, file: !1597, line: 140, baseType: !1629, size: 256, offset: 1664)
!1629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1630, size: 256, elements: !1411)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1597, line: 38, size: 128, elements: !1631)
!1631 = !{!1632, !1633}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1630, file: !1597, line: 39, baseType: !374, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1630, file: !1597, line: 40, baseType: !374, size: 64, offset: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1596, file: !1597, line: 146, baseType: !1635, size: 192, offset: 1920)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1597, line: 66, size: 192, elements: !1636)
!1636 = !{!1637}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1635, file: !1597, line: 67, baseType: !1638, size: 192)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1597, line: 47, size: 192, elements: !1639)
!1639 = !{!1640, !1641, !1642}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1638, file: !1597, line: 48, baseType: !141, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1638, file: !1597, line: 49, baseType: !141, size: 64, offset: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1638, file: !1597, line: 50, baseType: !141, size: 64, offset: 128)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1596, file: !1597, line: 150, baseType: !1372, size: 640, offset: 2112)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1596, file: !1597, line: 153, baseType: !1645, size: 256, offset: 2752)
!1645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1313, size: 256, elements: !1019)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1596, file: !1597, line: 159, baseType: !1313, size: 64, offset: 3008)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1596, file: !1597, line: 162, baseType: !106, size: 32, offset: 3072)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1596, file: !1597, line: 164, baseType: !1649, size: 64, offset: 3136)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1597, line: 164, flags: DIFlagFwdDecl)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1596, file: !1597, line: 175, baseType: !1652, size: 32, offset: 3200)
!1652 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !343, line: 805, baseType: !1653)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !343, line: 798, size: 32, elements: !1654)
!1654 = !{!1655, !1656}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1653, file: !343, line: 803, baseType: !342, size: 32)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1653, file: !343, line: 804, baseType: !151, offset: 32)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1596, file: !1597, line: 176, baseType: !374, size: 64, offset: 3264)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1596, file: !1597, line: 176, baseType: !374, size: 64, offset: 3328)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1596, file: !1597, line: 176, baseType: !374, size: 64, offset: 3392)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1596, file: !1597, line: 176, baseType: !374, size: 64, offset: 3456)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1596, file: !1597, line: 177, baseType: !374, size: 64, offset: 3520)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1596, file: !1597, line: 178, baseType: !374, size: 64, offset: 3584)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1596, file: !1597, line: 179, baseType: !1360, size: 128, offset: 3648)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1596, file: !1597, line: 180, baseType: !111, size: 64, offset: 3776)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1596, file: !1597, line: 180, baseType: !111, size: 64, offset: 3840)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1596, file: !1597, line: 180, baseType: !111, size: 64, offset: 3904)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1596, file: !1597, line: 180, baseType: !111, size: 64, offset: 3968)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1596, file: !1597, line: 181, baseType: !111, size: 64, offset: 4032)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1596, file: !1597, line: 181, baseType: !111, size: 64, offset: 4096)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1596, file: !1597, line: 181, baseType: !111, size: 64, offset: 4160)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1596, file: !1597, line: 181, baseType: !111, size: 64, offset: 4224)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1596, file: !1597, line: 182, baseType: !111, size: 64, offset: 4288)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1596, file: !1597, line: 182, baseType: !111, size: 64, offset: 4352)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1596, file: !1597, line: 182, baseType: !111, size: 64, offset: 4416)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1596, file: !1597, line: 182, baseType: !111, size: 64, offset: 4480)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1596, file: !1597, line: 183, baseType: !111, size: 64, offset: 4544)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1596, file: !1597, line: 183, baseType: !111, size: 64, offset: 4608)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1596, file: !1597, line: 184, baseType: !1679, offset: 4672)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1680, line: 12, elements: !165)
!1680 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1596, file: !1597, line: 192, baseType: !376, size: 64, offset: 4672)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1596, file: !1597, line: 203, baseType: !1683, size: 2048, offset: 4736)
!1683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1684, size: 2048, elements: !1577)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1685, line: 43, size: 128, elements: !1686)
!1685 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1686 = !{!1687, !1688}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1684, file: !1685, line: 44, baseType: !279, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1684, file: !1685, line: 45, baseType: !279, size: 64, offset: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1596, file: !1597, line: 220, baseType: !440, size: 8, offset: 6784)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1596, file: !1597, line: 221, baseType: !1047, size: 16, offset: 6800)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1596, file: !1597, line: 222, baseType: !1047, size: 16, offset: 6816)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1596, file: !1597, line: 224, baseType: !918, size: 64, offset: 6848)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1596, file: !1597, line: 227, baseType: !135, size: 192, offset: 6912)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1596, file: !1597, line: 233, baseType: !135, size: 192, offset: 7104)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1059, file: !1060, line: 970, baseType: !1696, size: 64, offset: 9280)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1597, line: 20, size: 16576, elements: !1698)
!1698 = !{!1699, !1700, !1701, !1702}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1697, file: !1597, line: 21, baseType: !151)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1697, file: !1597, line: 22, baseType: !1072, size: 32)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1697, file: !1597, line: 23, baseType: !1323, size: 128, offset: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1697, file: !1597, line: 24, baseType: !1703, size: 16384, offset: 192)
!1703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1704, size: 16384, elements: !235)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1607, line: 49, size: 256, elements: !1705)
!1705 = !{!1706}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1704, file: !1607, line: 50, baseType: !1707, size: 256)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1607, line: 35, size: 256, elements: !1708)
!1708 = !{!1709, !1716, !1717, !1723}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1707, file: !1607, line: 37, baseType: !1710, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1711, line: 19, baseType: !1712)
!1711 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1711, line: 18, baseType: !1714)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{null, !106}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1707, file: !1607, line: 38, baseType: !111, size: 64, offset: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1707, file: !1607, line: 44, baseType: !1718, size: 64, offset: 128)
!1718 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1711, line: 22, baseType: !1719)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1711, line: 21, baseType: !1721)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{null}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1707, file: !1607, line: 46, baseType: !1611, size: 64, offset: 192)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1059, file: !1060, line: 971, baseType: !1611, size: 64, offset: 9344)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1059, file: !1060, line: 972, baseType: !1611, size: 64, offset: 9408)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1059, file: !1060, line: 974, baseType: !1611, size: 64, offset: 9472)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1059, file: !1060, line: 975, baseType: !1606, size: 192, offset: 9536)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1059, file: !1060, line: 976, baseType: !111, size: 64, offset: 9728)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1059, file: !1060, line: 977, baseType: !277, size: 64, offset: 9792)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1059, file: !1060, line: 978, baseType: !7, size: 32, offset: 9856)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1059, file: !1060, line: 980, baseType: !323, size: 64, offset: 9920)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1059, file: !1060, line: 989, baseType: !1733, size: 128, offset: 9984)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1734, line: 35, size: 128, elements: !1735)
!1734 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1735 = !{!1736, !1737, !1738}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1733, file: !1734, line: 36, baseType: !106, size: 32)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1733, file: !1734, line: 37, baseType: !698, size: 32, offset: 32)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1733, file: !1734, line: 38, baseType: !1739, size: 64, offset: 64)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1734, line: 23, flags: DIFlagFwdDecl)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1059, file: !1060, line: 992, baseType: !374, size: 64, offset: 10112)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1059, file: !1060, line: 993, baseType: !374, size: 64, offset: 10176)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1059, file: !1060, line: 996, baseType: !151, offset: 10240)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1059, file: !1060, line: 999, baseType: !724, offset: 10240)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1059, file: !1060, line: 1001, baseType: !1746, size: 64, offset: 10240)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1060, line: 636, size: 64, elements: !1747)
!1747 = !{!1748}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1746, file: !1060, line: 637, baseType: !1749, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1059, file: !1060, line: 1005, baseType: !703, size: 128, offset: 10304)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1059, file: !1060, line: 1007, baseType: !1058, size: 64, offset: 10432)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1059, file: !1060, line: 1009, baseType: !1753, size: 64, offset: 10496)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1060, line: 1009, flags: DIFlagFwdDecl)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1059, file: !1060, line: 1043, baseType: !107, size: 64, offset: 10560)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1059, file: !1060, line: 1046, baseType: !1757, size: 64, offset: 10624)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1060, line: 41, flags: DIFlagFwdDecl)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1059, file: !1060, line: 1050, baseType: !1760, size: 64, offset: 10688)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1060, line: 42, flags: DIFlagFwdDecl)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1059, file: !1060, line: 1054, baseType: !1763, size: 64, offset: 10752)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1060, line: 55, flags: DIFlagFwdDecl)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1059, file: !1060, line: 1056, baseType: !1766, size: 64, offset: 10816)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1060, line: 40, flags: DIFlagFwdDecl)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1059, file: !1060, line: 1058, baseType: !1769, size: 64, offset: 10880)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1771, line: 99, size: 704, elements: !1772)
!1771 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1772 = !{!1773, !1774, !1775, !1776, !1777, !1778, !1779, !1798, !1799}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1770, file: !1771, line: 100, baseType: !139, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1770, file: !1771, line: 101, baseType: !698, size: 32, offset: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1770, file: !1771, line: 102, baseType: !698, size: 32, offset: 96)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1770, file: !1771, line: 105, baseType: !151, offset: 128)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1770, file: !1771, line: 107, baseType: !272, size: 16, offset: 128)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1770, file: !1771, line: 109, baseType: !690, size: 128, offset: 192)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1770, file: !1771, line: 110, baseType: !1780, size: 64, offset: 320)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1771, line: 73, size: 448, elements: !1782)
!1782 = !{!1783, !1786, !1787, !1792, !1797}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1781, file: !1771, line: 74, baseType: !1784, size: 64)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1771, line: 74, flags: DIFlagFwdDecl)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1781, file: !1771, line: 75, baseType: !1769, size: 64, offset: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, scope: !1781, file: !1771, line: 83, baseType: !1788, size: 128, offset: 128)
!1788 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1781, file: !1771, line: 83, size: 128, elements: !1789)
!1789 = !{!1790, !1791}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1788, file: !1771, line: 84, baseType: !167, size: 128)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1788, file: !1771, line: 85, baseType: !879, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, scope: !1781, file: !1771, line: 87, baseType: !1793, size: 128, offset: 256)
!1793 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1781, file: !1771, line: 87, size: 128, elements: !1794)
!1794 = !{!1795, !1796}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1793, file: !1771, line: 88, baseType: !590, size: 128)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1793, file: !1771, line: 89, baseType: !320, size: 128, align: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1781, file: !1771, line: 92, baseType: !7, size: 32, offset: 384)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1770, file: !1771, line: 111, baseType: !586, size: 64, offset: 384)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1770, file: !1771, line: 113, baseType: !1800, size: 256, offset: 448)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1801, line: 102, size: 256, elements: !1802)
!1801 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1802 = !{!1803, !1804, !1805}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1800, file: !1801, line: 103, baseType: !139, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1800, file: !1801, line: 104, baseType: !167, size: 128, offset: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1800, file: !1801, line: 105, baseType: !1806, size: 64, offset: 192)
!1806 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1801, line: 21, baseType: !1807)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DISubroutineType(types: !1809)
!1809 = !{null, !1810}
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1059, file: !1060, line: 1061, baseType: !1812, size: 64, offset: 10944)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1060, line: 43, flags: DIFlagFwdDecl)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1059, file: !1060, line: 1064, baseType: !111, size: 64, offset: 11008)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1059, file: !1060, line: 1065, baseType: !1816, size: 64, offset: 11072)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1607, line: 14, baseType: !1818)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1607, line: 12, size: 384, elements: !1819)
!1819 = !{!1820}
!1820 = !DIDerivedType(tag: DW_TAG_member, scope: !1818, file: !1607, line: 13, baseType: !1821, size: 384)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1818, file: !1607, line: 13, size: 384, elements: !1822)
!1822 = !{!1823, !1824, !1825, !1826}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1821, file: !1607, line: 13, baseType: !106, size: 32)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1821, file: !1607, line: 13, baseType: !106, size: 32, offset: 32)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1821, file: !1607, line: 13, baseType: !106, size: 32, offset: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1821, file: !1607, line: 13, baseType: !1827, size: 256, offset: 128)
!1827 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1828, line: 32, size: 256, elements: !1829)
!1828 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1829 = !{!1830, !1835, !1848, !1854, !1863, !1883, !1888}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1827, file: !1828, line: 37, baseType: !1831, size: 64)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1827, file: !1828, line: 34, size: 64, elements: !1832)
!1832 = !{!1833, !1834}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1831, file: !1828, line: 35, baseType: !1302, size: 32)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1831, file: !1828, line: 36, baseType: !394, size: 32, offset: 32)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1827, file: !1828, line: 45, baseType: !1836, size: 192)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1827, file: !1828, line: 40, size: 192, elements: !1837)
!1837 = !{!1838, !1840, !1841, !1847}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1836, file: !1828, line: 41, baseType: !1839, size: 32)
!1839 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !263, line: 95, baseType: !106)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1836, file: !1828, line: 42, baseType: !106, size: 32, offset: 32)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1836, file: !1828, line: 43, baseType: !1842, size: 64, offset: 64)
!1842 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1828, line: 11, baseType: !1843)
!1843 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1828, line: 8, size: 64, elements: !1844)
!1844 = !{!1845, !1846}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1843, file: !1828, line: 9, baseType: !106, size: 32)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1843, file: !1828, line: 10, baseType: !107, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1836, file: !1828, line: 44, baseType: !106, size: 32, offset: 128)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1827, file: !1828, line: 52, baseType: !1849, size: 128)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1827, file: !1828, line: 48, size: 128, elements: !1850)
!1850 = !{!1851, !1852, !1853}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1849, file: !1828, line: 49, baseType: !1302, size: 32)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1849, file: !1828, line: 50, baseType: !394, size: 32, offset: 32)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1849, file: !1828, line: 51, baseType: !1842, size: 64, offset: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1827, file: !1828, line: 61, baseType: !1855, size: 256)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1827, file: !1828, line: 55, size: 256, elements: !1856)
!1856 = !{!1857, !1858, !1859, !1860, !1862}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1855, file: !1828, line: 56, baseType: !1302, size: 32)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1855, file: !1828, line: 57, baseType: !394, size: 32, offset: 32)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1855, file: !1828, line: 58, baseType: !106, size: 32, offset: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1855, file: !1828, line: 59, baseType: !1861, size: 64, offset: 128)
!1861 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !263, line: 94, baseType: !264)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1855, file: !1828, line: 60, baseType: !1861, size: 64, offset: 192)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1827, file: !1828, line: 95, baseType: !1864, size: 256)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1827, file: !1828, line: 64, size: 256, elements: !1865)
!1865 = !{!1866, !1867}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1864, file: !1828, line: 65, baseType: !107, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, scope: !1864, file: !1828, line: 77, baseType: !1868, size: 192, offset: 64)
!1868 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1864, file: !1828, line: 77, size: 192, elements: !1869)
!1869 = !{!1870, !1871, !1878}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1868, file: !1828, line: 82, baseType: !1047, size: 16)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1868, file: !1828, line: 88, baseType: !1872, size: 192)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1868, file: !1828, line: 84, size: 192, elements: !1873)
!1873 = !{!1874, !1876, !1877}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1872, file: !1828, line: 85, baseType: !1875, size: 64)
!1875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 64, elements: !1172)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1872, file: !1828, line: 86, baseType: !107, size: 64, offset: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1872, file: !1828, line: 87, baseType: !107, size: 64, offset: 128)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1868, file: !1828, line: 93, baseType: !1879, size: 96)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1868, file: !1828, line: 90, size: 96, elements: !1880)
!1880 = !{!1881, !1882}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1879, file: !1828, line: 91, baseType: !1875, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1879, file: !1828, line: 92, baseType: !371, size: 32, offset: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1827, file: !1828, line: 101, baseType: !1884, size: 128)
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1827, file: !1828, line: 98, size: 128, elements: !1885)
!1885 = !{!1886, !1887}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1884, file: !1828, line: 99, baseType: !265, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1884, file: !1828, line: 100, baseType: !106, size: 32, offset: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1827, file: !1828, line: 108, baseType: !1889, size: 128)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1827, file: !1828, line: 104, size: 128, elements: !1890)
!1890 = !{!1891, !1892, !1893}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1889, file: !1828, line: 105, baseType: !107, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1889, file: !1828, line: 106, baseType: !106, size: 32, offset: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1889, file: !1828, line: 107, baseType: !7, size: 32, offset: 96)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1059, file: !1060, line: 1067, baseType: !1679, offset: 11136)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1059, file: !1060, line: 1099, baseType: !1896, size: 64, offset: 11136)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1060, line: 56, flags: DIFlagFwdDecl)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1059, file: !1060, line: 1103, baseType: !167, size: 128, offset: 11200)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1059, file: !1060, line: 1104, baseType: !1900, size: 64, offset: 11328)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1060, line: 46, flags: DIFlagFwdDecl)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1059, file: !1060, line: 1105, baseType: !135, size: 192, offset: 11392)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1059, file: !1060, line: 1106, baseType: !7, size: 32, offset: 11584)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1059, file: !1060, line: 1109, baseType: !1905, size: 128, offset: 11648)
!1905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1906, size: 128, elements: !1411)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1060, line: 51, flags: DIFlagFwdDecl)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1059, file: !1060, line: 1110, baseType: !135, size: 192, offset: 11776)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1059, file: !1060, line: 1111, baseType: !167, size: 128, offset: 11968)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1059, file: !1060, line: 1173, baseType: !1911, size: 64, offset: 12096)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1913, line: 62, size: 256, align: 256, elements: !1914)
!1913 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1914 = !{!1915, !1916, !1917, !1922}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1912, file: !1913, line: 75, baseType: !371, size: 32)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1912, file: !1913, line: 90, baseType: !371, size: 32, offset: 32)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1912, file: !1913, line: 124, baseType: !1918, size: 64, offset: 64)
!1918 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1912, file: !1913, line: 109, size: 64, elements: !1919)
!1919 = !{!1920, !1921}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1918, file: !1913, line: 110, baseType: !375, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1918, file: !1913, line: 112, baseType: !375, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1912, file: !1913, line: 144, baseType: !371, size: 32, offset: 128)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1059, file: !1060, line: 1174, baseType: !370, size: 32, offset: 12160)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1059, file: !1060, line: 1179, baseType: !111, size: 64, offset: 12224)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1059, file: !1060, line: 1182, baseType: !1926, size: 128, offset: 12288)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1015, line: 76, size: 128, elements: !1927)
!1927 = !{!1928, !1933, !1934}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1926, file: !1015, line: 85, baseType: !1929, size: 64)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1930, line: 7, size: 64, elements: !1931)
!1930 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1931 = !{!1932}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1929, file: !1930, line: 12, baseType: !1209, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1926, file: !1015, line: 88, baseType: !440, size: 8, offset: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1926, file: !1015, line: 95, baseType: !440, size: 8, offset: 72)
!1935 = !DIDerivedType(tag: DW_TAG_member, scope: !1059, file: !1060, line: 1184, baseType: !1936, size: 128, offset: 12416)
!1936 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1059, file: !1060, line: 1184, size: 128, elements: !1937)
!1937 = !{!1938, !1939}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1936, file: !1060, line: 1185, baseType: !1072, size: 32)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1936, file: !1060, line: 1186, baseType: !320, size: 128, align: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1059, file: !1060, line: 1190, baseType: !1941, size: 64, offset: 12544)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1060, line: 53, flags: DIFlagFwdDecl)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1059, file: !1060, line: 1192, baseType: !1944, size: 128, offset: 12608)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1015, line: 64, size: 128, elements: !1945)
!1945 = !{!1946, !1947, !1948}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1944, file: !1015, line: 65, baseType: !672, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1944, file: !1015, line: 67, baseType: !371, size: 32, offset: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1944, file: !1015, line: 68, baseType: !371, size: 32, offset: 96)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1059, file: !1060, line: 1206, baseType: !106, size: 32, offset: 12736)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1059, file: !1060, line: 1207, baseType: !106, size: 32, offset: 12768)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1059, file: !1060, line: 1209, baseType: !111, size: 64, offset: 12800)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1059, file: !1060, line: 1219, baseType: !374, size: 64, offset: 12864)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1059, file: !1060, line: 1220, baseType: !374, size: 64, offset: 12928)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1059, file: !1060, line: 1317, baseType: !106, size: 32, offset: 12992)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1059, file: !1060, line: 1319, baseType: !1058, size: 64, offset: 13056)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1059, file: !1060, line: 1322, baseType: !1957, size: 64, offset: 13120)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1959, line: 56, size: 512, elements: !1960)
!1959 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1960 = !{!1961, !1962, !1963, !1964, !1965, !1966, !1967, !1969}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1958, file: !1959, line: 57, baseType: !1957, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1958, file: !1959, line: 58, baseType: !107, size: 64, offset: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1958, file: !1959, line: 59, baseType: !111, size: 64, offset: 128)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1958, file: !1959, line: 60, baseType: !111, size: 64, offset: 192)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1958, file: !1959, line: 61, baseType: !764, size: 64, offset: 256)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1958, file: !1959, line: 62, baseType: !7, size: 32, offset: 320)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1958, file: !1959, line: 63, baseType: !1968, size: 64, offset: 384)
!1968 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !109, line: 153, baseType: !374)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1958, file: !1959, line: 64, baseType: !1970, size: 64, offset: 448)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1059, file: !1060, line: 1326, baseType: !1072, size: 32, offset: 13184)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1059, file: !1060, line: 1342, baseType: !107, size: 64, offset: 13248)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1059, file: !1060, line: 1343, baseType: !375, size: 64, offset: 13312)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1059, file: !1060, line: 1344, baseType: !374, size: 64, offset: 13376)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1059, file: !1060, line: 1345, baseType: !375, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1059, file: !1060, line: 1346, baseType: !375, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1059, file: !1060, line: 1347, baseType: !375, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1059, file: !1060, line: 1348, baseType: !320, size: 128, align: 64, offset: 13504)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1059, file: !1060, line: 1358, baseType: !1981, size: 34816, offset: 13824)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1982, line: 485, size: 34816, elements: !1983)
!1982 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1983 = !{!1984, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2013, !2014, !2015, !2016, !2017, !2018, !2021, !2022, !2023}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1981, file: !1982, line: 487, baseType: !1985, size: 192)
!1985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1986, size: 192, elements: !231)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1987, line: 16, size: 64, elements: !1988)
!1987 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1988 = !{!1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1986, file: !1987, line: 17, baseType: !803, size: 16)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1986, file: !1987, line: 18, baseType: !803, size: 16, offset: 16)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1986, file: !1987, line: 19, baseType: !803, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1986, file: !1987, line: 19, baseType: !803, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1986, file: !1987, line: 19, baseType: !803, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1986, file: !1987, line: 19, baseType: !803, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1986, file: !1987, line: 19, baseType: !803, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1986, file: !1987, line: 20, baseType: !803, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1986, file: !1987, line: 20, baseType: !803, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1986, file: !1987, line: 20, baseType: !803, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1986, file: !1987, line: 20, baseType: !803, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1986, file: !1987, line: 20, baseType: !803, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1986, file: !1987, line: 20, baseType: !803, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1981, file: !1982, line: 491, baseType: !111, size: 64, offset: 192)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1981, file: !1982, line: 495, baseType: !272, size: 16, offset: 256)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1981, file: !1982, line: 496, baseType: !272, size: 16, offset: 272)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1981, file: !1982, line: 497, baseType: !272, size: 16, offset: 288)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1981, file: !1982, line: 498, baseType: !272, size: 16, offset: 304)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1981, file: !1982, line: 502, baseType: !111, size: 64, offset: 320)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1981, file: !1982, line: 503, baseType: !111, size: 64, offset: 384)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1981, file: !1982, line: 514, baseType: !2010, size: 256, offset: 448)
!2010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2011, size: 256, elements: !1019)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1982, line: 483, flags: DIFlagFwdDecl)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1981, file: !1982, line: 516, baseType: !111, size: 64, offset: 704)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1981, file: !1982, line: 518, baseType: !111, size: 64, offset: 768)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1981, file: !1982, line: 520, baseType: !111, size: 64, offset: 832)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1981, file: !1982, line: 521, baseType: !111, size: 64, offset: 896)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1981, file: !1982, line: 522, baseType: !111, size: 64, offset: 960)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1981, file: !1982, line: 528, baseType: !2019, size: 64, offset: 1024)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1982, line: 10, flags: DIFlagFwdDecl)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1981, file: !1982, line: 535, baseType: !111, size: 64, offset: 1088)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1981, file: !1982, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1981, file: !1982, line: 540, baseType: !2024, size: 33280, offset: 1536)
!2024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2025, line: 317, size: 33280, elements: !2026)
!2025 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2026 = !{!2027, !2028, !2029}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2024, file: !2025, line: 330, baseType: !7, size: 32)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2024, file: !2025, line: 337, baseType: !111, size: 64, offset: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2024, file: !2025, line: 348, baseType: !2030, size: 32768, offset: 512)
!2030 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2025, line: 304, size: 32768, elements: !2031)
!2031 = !{!2032, !2047, !2086, !2136, !2149}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2030, file: !2025, line: 305, baseType: !2033, size: 896)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2025, line: 12, size: 896, elements: !2034)
!2034 = !{!2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2046}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2033, file: !2025, line: 13, baseType: !370, size: 32)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2033, file: !2025, line: 14, baseType: !370, size: 32, offset: 32)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2033, file: !2025, line: 15, baseType: !370, size: 32, offset: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2033, file: !2025, line: 16, baseType: !370, size: 32, offset: 96)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2033, file: !2025, line: 17, baseType: !370, size: 32, offset: 128)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2033, file: !2025, line: 18, baseType: !370, size: 32, offset: 160)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2033, file: !2025, line: 19, baseType: !370, size: 32, offset: 192)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2033, file: !2025, line: 22, baseType: !2043, size: 640, offset: 224)
!2043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 640, elements: !2044)
!2044 = !{!2045}
!2045 = !DISubrange(count: 20)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2033, file: !2025, line: 25, baseType: !370, size: 32, offset: 864)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2030, file: !2025, line: 306, baseType: !2048, size: 4096, align: 128)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2025, line: 34, size: 4096, align: 128, elements: !2049)
!2049 = !{!2050, !2051, !2052, !2053, !2054, !2069, !2070, !2071, !2075, !2077, !2081}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2048, file: !2025, line: 35, baseType: !803, size: 16)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2048, file: !2025, line: 36, baseType: !803, size: 16, offset: 16)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2048, file: !2025, line: 37, baseType: !803, size: 16, offset: 32)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2048, file: !2025, line: 38, baseType: !803, size: 16, offset: 48)
!2054 = !DIDerivedType(tag: DW_TAG_member, scope: !2048, file: !2025, line: 39, baseType: !2055, size: 128, offset: 64)
!2055 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2048, file: !2025, line: 39, size: 128, elements: !2056)
!2056 = !{!2057, !2062}
!2057 = !DIDerivedType(tag: DW_TAG_member, scope: !2055, file: !2025, line: 40, baseType: !2058, size: 128)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2055, file: !2025, line: 40, size: 128, elements: !2059)
!2059 = !{!2060, !2061}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2058, file: !2025, line: 41, baseType: !374, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2058, file: !2025, line: 42, baseType: !374, size: 64, offset: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, scope: !2055, file: !2025, line: 44, baseType: !2063, size: 128)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2055, file: !2025, line: 44, size: 128, elements: !2064)
!2064 = !{!2065, !2066, !2067, !2068}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2063, file: !2025, line: 45, baseType: !370, size: 32)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2063, file: !2025, line: 46, baseType: !370, size: 32, offset: 32)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2063, file: !2025, line: 47, baseType: !370, size: 32, offset: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2063, file: !2025, line: 48, baseType: !370, size: 32, offset: 96)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2048, file: !2025, line: 51, baseType: !370, size: 32, offset: 192)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2048, file: !2025, line: 52, baseType: !370, size: 32, offset: 224)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2048, file: !2025, line: 55, baseType: !2072, size: 1024, offset: 256)
!2072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 1024, elements: !2073)
!2073 = !{!2074}
!2074 = !DISubrange(count: 32)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2048, file: !2025, line: 58, baseType: !2076, size: 2048, offset: 1280)
!2076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 2048, elements: !235)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2048, file: !2025, line: 60, baseType: !2078, size: 384, offset: 3328)
!2078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 384, elements: !2079)
!2079 = !{!2080}
!2080 = !DISubrange(count: 12)
!2081 = !DIDerivedType(tag: DW_TAG_member, scope: !2048, file: !2025, line: 62, baseType: !2082, size: 384, offset: 3712)
!2082 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2048, file: !2025, line: 62, size: 384, elements: !2083)
!2083 = !{!2084, !2085}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2082, file: !2025, line: 63, baseType: !2078, size: 384)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2082, file: !2025, line: 64, baseType: !2078, size: 384)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2030, file: !2025, line: 307, baseType: !2087, size: 1088)
!2087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2025, line: 79, size: 1088, elements: !2088)
!2088 = !{!2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2135}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2087, file: !2025, line: 80, baseType: !370, size: 32)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2087, file: !2025, line: 81, baseType: !370, size: 32, offset: 32)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2087, file: !2025, line: 82, baseType: !370, size: 32, offset: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2087, file: !2025, line: 83, baseType: !370, size: 32, offset: 96)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2087, file: !2025, line: 84, baseType: !370, size: 32, offset: 128)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2087, file: !2025, line: 85, baseType: !370, size: 32, offset: 160)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2087, file: !2025, line: 86, baseType: !370, size: 32, offset: 192)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2087, file: !2025, line: 88, baseType: !2043, size: 640, offset: 224)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2087, file: !2025, line: 89, baseType: !1194, size: 8, offset: 864)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2087, file: !2025, line: 90, baseType: !1194, size: 8, offset: 872)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2087, file: !2025, line: 91, baseType: !1194, size: 8, offset: 880)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2087, file: !2025, line: 92, baseType: !1194, size: 8, offset: 888)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2087, file: !2025, line: 93, baseType: !1194, size: 8, offset: 896)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2087, file: !2025, line: 94, baseType: !1194, size: 8, offset: 904)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2087, file: !2025, line: 95, baseType: !2104, size: 64, offset: 960)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2106, line: 11, size: 128, elements: !2107)
!2106 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2107 = !{!2108, !2109}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2105, file: !2106, line: 12, baseType: !265, size: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2105, file: !2106, line: 13, baseType: !2110, size: 64, offset: 64)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2112, line: 56, size: 1344, elements: !2113)
!2112 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2113 = !{!2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2111, file: !2112, line: 61, baseType: !111, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2111, file: !2112, line: 62, baseType: !111, size: 64, offset: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2111, file: !2112, line: 63, baseType: !111, size: 64, offset: 128)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2111, file: !2112, line: 64, baseType: !111, size: 64, offset: 192)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2111, file: !2112, line: 65, baseType: !111, size: 64, offset: 256)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2111, file: !2112, line: 66, baseType: !111, size: 64, offset: 320)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2111, file: !2112, line: 68, baseType: !111, size: 64, offset: 384)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2111, file: !2112, line: 69, baseType: !111, size: 64, offset: 448)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2111, file: !2112, line: 70, baseType: !111, size: 64, offset: 512)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2111, file: !2112, line: 71, baseType: !111, size: 64, offset: 576)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2111, file: !2112, line: 72, baseType: !111, size: 64, offset: 640)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2111, file: !2112, line: 73, baseType: !111, size: 64, offset: 704)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2111, file: !2112, line: 74, baseType: !111, size: 64, offset: 768)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2111, file: !2112, line: 75, baseType: !111, size: 64, offset: 832)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2111, file: !2112, line: 76, baseType: !111, size: 64, offset: 896)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2111, file: !2112, line: 81, baseType: !111, size: 64, offset: 960)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2111, file: !2112, line: 83, baseType: !111, size: 64, offset: 1024)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2111, file: !2112, line: 84, baseType: !111, size: 64, offset: 1088)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2111, file: !2112, line: 85, baseType: !111, size: 64, offset: 1152)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2111, file: !2112, line: 86, baseType: !111, size: 64, offset: 1216)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2111, file: !2112, line: 87, baseType: !111, size: 64, offset: 1280)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2087, file: !2025, line: 96, baseType: !370, size: 32, offset: 1024)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2030, file: !2025, line: 308, baseType: !2137, size: 4608, align: 512)
!2137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2025, line: 289, size: 4608, align: 512, elements: !2138)
!2138 = !{!2139, !2140, !2147}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2137, file: !2025, line: 290, baseType: !2048, size: 4096, align: 128)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2137, file: !2025, line: 291, baseType: !2141, size: 512, offset: 4096)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2025, line: 268, size: 512, elements: !2142)
!2142 = !{!2143, !2144, !2145}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2141, file: !2025, line: 269, baseType: !374, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2141, file: !2025, line: 270, baseType: !374, size: 64, offset: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2141, file: !2025, line: 271, baseType: !2146, size: 384, offset: 128)
!2146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !374, size: 384, elements: !1467)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2137, file: !2025, line: 292, baseType: !2148, offset: 4608)
!2148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1194, elements: !1565)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2030, file: !2025, line: 309, baseType: !2150, size: 32768)
!2150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1194, size: 32768, elements: !2151)
!2151 = !{!2152}
!2152 = !DISubrange(count: 4096)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1055, file: !674, line: 378, baseType: !2154, size: 64, offset: 64)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1051, file: !674, line: 384, baseType: !1344, size: 192, offset: 192)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !922, file: !674, line: 500, baseType: !151, offset: 6656)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !922, file: !674, line: 501, baseType: !2158, size: 64, offset: 6656)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !674, line: 387, flags: DIFlagFwdDecl)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !922, file: !674, line: 516, baseType: !1555, size: 64, offset: 6720)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !922, file: !674, line: 519, baseType: !307, size: 64, offset: 6784)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !922, file: !674, line: 521, baseType: !2163, size: 64, offset: 6848)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !674, line: 521, flags: DIFlagFwdDecl)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !922, file: !674, line: 545, baseType: !698, size: 32, offset: 6912)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !922, file: !674, line: 548, baseType: !440, size: 8, offset: 6944)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !922, file: !674, line: 550, baseType: !2168, offset: 6952)
!2168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2169, line: 142, elements: !165)
!2169 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !922, file: !674, line: 554, baseType: !1800, size: 256, offset: 6976)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !922, file: !674, line: 557, baseType: !370, size: 32, offset: 7232)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !919, file: !674, line: 565, baseType: !2173, offset: 7296)
!2173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, elements: !2174)
!2174 = !{!2175}
!2175 = !DISubrange(count: -1)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !915, file: !674, line: 151, baseType: !698, size: 32)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !908, file: !674, line: 156, baseType: !151, offset: 256)
!2178 = !DIDerivedType(tag: DW_TAG_member, scope: !678, file: !674, line: 159, baseType: !2179, size: 128)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !678, file: !674, line: 159, size: 128, elements: !2180)
!2180 = !{!2181, !2184}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2179, file: !674, line: 161, baseType: !2182, size: 64)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !674, line: 161, flags: DIFlagFwdDecl)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2179, file: !674, line: 162, baseType: !107, size: 64, offset: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !678, file: !674, line: 176, baseType: !320, size: 128, align: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, scope: !673, file: !674, line: 179, baseType: !2187, size: 32, offset: 384)
!2187 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !673, file: !674, line: 179, size: 32, elements: !2188)
!2188 = !{!2189, !2190, !2191, !2192}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2187, file: !674, line: 184, baseType: !698, size: 32)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2187, file: !674, line: 192, baseType: !7, size: 32)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2187, file: !674, line: 194, baseType: !7, size: 32)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2187, file: !674, line: 195, baseType: !106, size: 32)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !673, file: !674, line: 199, baseType: !698, size: 32, offset: 416)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !608, file: !31, line: 1964, baseType: !2195, size: 64, offset: 1344)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!265, !547, !2198}
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2200, line: 12, size: 256, elements: !2201)
!2200 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2201 = !{!2202, !2203, !2204, !2205, !2206}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2199, file: !2200, line: 13, baseType: !108, size: 32)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2199, file: !2200, line: 16, baseType: !106, size: 32, offset: 32)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2199, file: !2200, line: 23, baseType: !111, size: 64, offset: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2199, file: !2200, line: 30, baseType: !111, size: 64, offset: 128)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2199, file: !2200, line: 33, baseType: !2207, size: 64, offset: 192)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !674, line: 27, flags: DIFlagFwdDecl)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !608, file: !31, line: 1966, baseType: !2195, size: 64, offset: 1408)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !548, file: !31, line: 1424, baseType: !2211, size: 64, offset: 448)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2213)
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !25, line: 322, size: 704, elements: !2214)
!2214 = !{!2215, !2261, !2265, !2269, !2270, !2271, !2272, !2273, !2278, !2283, !2287}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2213, file: !25, line: 323, baseType: !2216, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!106, !2219}
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !25, line: 294, size: 1600, elements: !2221)
!2221 = !{!2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2246, !2247, !2248}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2220, file: !25, line: 295, baseType: !590, size: 128)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2220, file: !25, line: 296, baseType: !167, size: 128, offset: 128)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2220, file: !25, line: 297, baseType: !167, size: 128, offset: 256)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2220, file: !25, line: 298, baseType: !167, size: 128, offset: 384)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2220, file: !25, line: 299, baseType: !135, size: 192, offset: 512)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2220, file: !25, line: 300, baseType: !151, offset: 704)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2220, file: !25, line: 301, baseType: !698, size: 32, offset: 704)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2220, file: !25, line: 302, baseType: !547, size: 64, offset: 768)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2220, file: !25, line: 303, baseType: !2231, size: 64, offset: 832)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !25, line: 68, size: 64, elements: !2232)
!2232 = !{!2233, !2245}
!2233 = !DIDerivedType(tag: DW_TAG_member, scope: !2231, file: !25, line: 69, baseType: !2234, size: 32)
!2234 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2231, file: !25, line: 69, size: 32, elements: !2235)
!2235 = !{!2236, !2237, !2238}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2234, file: !25, line: 70, baseType: !388, size: 32)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2234, file: !25, line: 71, baseType: !396, size: 32)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2234, file: !25, line: 72, baseType: !2239, size: 32)
!2239 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2240, line: 24, baseType: !2241)
!2240 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2241 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2240, line: 22, size: 32, elements: !2242)
!2242 = !{!2243}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2241, file: !2240, line: 23, baseType: !2244, size: 32)
!2244 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2240, line: 20, baseType: !394)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2231, file: !25, line: 74, baseType: !24, size: 32, offset: 32)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2220, file: !25, line: 304, baseType: !481, size: 64, offset: 896)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2220, file: !25, line: 305, baseType: !111, size: 64, offset: 960)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2220, file: !25, line: 306, baseType: !2249, size: 576, offset: 1024)
!2249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !25, line: 205, size: 576, elements: !2250)
!2250 = !{!2251, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2249, file: !25, line: 206, baseType: !2252, size: 64)
!2252 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !25, line: 66, baseType: !149)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2249, file: !25, line: 207, baseType: !2252, size: 64, offset: 64)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2249, file: !25, line: 208, baseType: !2252, size: 64, offset: 128)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2249, file: !25, line: 209, baseType: !2252, size: 64, offset: 192)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2249, file: !25, line: 210, baseType: !2252, size: 64, offset: 256)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2249, file: !25, line: 211, baseType: !2252, size: 64, offset: 320)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2249, file: !25, line: 212, baseType: !2252, size: 64, offset: 384)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2249, file: !25, line: 213, baseType: !488, size: 64, offset: 448)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2249, file: !25, line: 214, baseType: !488, size: 64, offset: 512)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2213, file: !25, line: 324, baseType: !2262, size: 64, offset: 64)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{!2219, !547, !106}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2213, file: !25, line: 325, baseType: !2266, size: 64, offset: 128)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = !DISubroutineType(types: !2268)
!2268 = !{null, !2219}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2213, file: !25, line: 326, baseType: !2216, size: 64, offset: 192)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2213, file: !25, line: 327, baseType: !2216, size: 64, offset: 256)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2213, file: !25, line: 328, baseType: !2216, size: 64, offset: 320)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2213, file: !25, line: 329, baseType: !636, size: 64, offset: 384)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2213, file: !25, line: 332, baseType: !2274, size: 64, offset: 448)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{!2277, !382}
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2213, file: !25, line: 333, baseType: !2279, size: 64, offset: 512)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!106, !382, !2282}
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2213, file: !25, line: 335, baseType: !2284, size: 64, offset: 576)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!106, !382, !2277}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2213, file: !25, line: 337, baseType: !2288, size: 64, offset: 640)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{!106, !547, !2291}
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !548, file: !31, line: 1425, baseType: !2293, size: 64, offset: 512)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2295)
!2295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !25, line: 428, size: 704, elements: !2296)
!2296 = !{!2297, !2301, !2302, !2306, !2307, !2308, !2323, !2346, !2350, !2351, !2374}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2295, file: !25, line: 429, baseType: !2298, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!106, !547, !106, !106, !497}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2295, file: !25, line: 430, baseType: !636, size: 64, offset: 64)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2295, file: !25, line: 431, baseType: !2303, size: 64, offset: 128)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{!106, !547, !7}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2295, file: !25, line: 432, baseType: !2303, size: 64, offset: 192)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2295, file: !25, line: 433, baseType: !636, size: 64, offset: 256)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2295, file: !25, line: 434, baseType: !2309, size: 64, offset: 320)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{!106, !547, !106, !2312}
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !25, line: 415, size: 256, elements: !2314)
!2314 = !{!2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2313, file: !25, line: 416, baseType: !106, size: 32)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2313, file: !25, line: 417, baseType: !7, size: 32, offset: 32)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2313, file: !25, line: 418, baseType: !7, size: 32, offset: 64)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2313, file: !25, line: 420, baseType: !7, size: 32, offset: 96)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2313, file: !25, line: 421, baseType: !7, size: 32, offset: 128)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2313, file: !25, line: 422, baseType: !7, size: 32, offset: 160)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2313, file: !25, line: 423, baseType: !7, size: 32, offset: 192)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2313, file: !25, line: 424, baseType: !7, size: 32, offset: 224)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2295, file: !25, line: 435, baseType: !2324, size: 64, offset: 384)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{!106, !547, !2231, !2327}
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !25, line: 343, size: 960, elements: !2329)
!2329 = !{!2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2328, file: !25, line: 344, baseType: !106, size: 32)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2328, file: !25, line: 345, baseType: !374, size: 64, offset: 64)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2328, file: !25, line: 346, baseType: !374, size: 64, offset: 128)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2328, file: !25, line: 347, baseType: !374, size: 64, offset: 192)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2328, file: !25, line: 348, baseType: !374, size: 64, offset: 256)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2328, file: !25, line: 349, baseType: !374, size: 64, offset: 320)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2328, file: !25, line: 350, baseType: !374, size: 64, offset: 384)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2328, file: !25, line: 351, baseType: !145, size: 64, offset: 448)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2328, file: !25, line: 353, baseType: !145, size: 64, offset: 512)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2328, file: !25, line: 354, baseType: !106, size: 32, offset: 576)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2328, file: !25, line: 355, baseType: !106, size: 32, offset: 608)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2328, file: !25, line: 356, baseType: !374, size: 64, offset: 640)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2328, file: !25, line: 357, baseType: !374, size: 64, offset: 704)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2328, file: !25, line: 358, baseType: !374, size: 64, offset: 768)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2328, file: !25, line: 359, baseType: !145, size: 64, offset: 832)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2328, file: !25, line: 360, baseType: !106, size: 32, offset: 896)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2295, file: !25, line: 436, baseType: !2347, size: 64, offset: 448)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = !DISubroutineType(types: !2349)
!2349 = !{!106, !547, !2291, !2327}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2295, file: !25, line: 438, baseType: !2324, size: 64, offset: 512)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2295, file: !25, line: 439, baseType: !2352, size: 64, offset: 576)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!106, !547, !2355}
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !25, line: 409, size: 1408, elements: !2357)
!2357 = !{!2358, !2359}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2356, file: !25, line: 410, baseType: !7, size: 32)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2356, file: !25, line: 411, baseType: !2360, size: 1344, offset: 64)
!2360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2361, size: 1344, elements: !231)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !25, line: 395, size: 448, elements: !2362)
!2362 = !{!2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2373}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2361, file: !25, line: 396, baseType: !7, size: 32)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2361, file: !25, line: 397, baseType: !7, size: 32, offset: 32)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2361, file: !25, line: 399, baseType: !7, size: 32, offset: 64)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2361, file: !25, line: 400, baseType: !7, size: 32, offset: 96)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2361, file: !25, line: 401, baseType: !7, size: 32, offset: 128)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2361, file: !25, line: 402, baseType: !7, size: 32, offset: 160)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2361, file: !25, line: 403, baseType: !7, size: 32, offset: 192)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2361, file: !25, line: 404, baseType: !376, size: 64, offset: 256)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2361, file: !25, line: 405, baseType: !2372, size: 64, offset: 320)
!2372 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !109, line: 126, baseType: !374)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2361, file: !25, line: 406, baseType: !2372, size: 64, offset: 384)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2295, file: !25, line: 440, baseType: !2303, size: 64, offset: 640)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !548, file: !31, line: 1426, baseType: !2376, size: 64, offset: 576)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2378)
!2378 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !31, line: 49, flags: DIFlagFwdDecl)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !548, file: !31, line: 1427, baseType: !111, size: 64, offset: 640)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !548, file: !31, line: 1428, baseType: !111, size: 64, offset: 704)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !548, file: !31, line: 1429, baseType: !111, size: 64, offset: 768)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !548, file: !31, line: 1430, baseType: !337, size: 64, offset: 832)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !548, file: !31, line: 1431, baseType: !718, size: 256, offset: 896)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !548, file: !31, line: 1432, baseType: !106, size: 32, offset: 1152)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !548, file: !31, line: 1433, baseType: !698, size: 32, offset: 1184)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !548, file: !31, line: 1437, baseType: !2387, size: 64, offset: 1216)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2390)
!2390 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !31, line: 1437, flags: DIFlagFwdDecl)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !548, file: !31, line: 1449, baseType: !2392, size: 64, offset: 1280)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !353, line: 34, size: 64, elements: !2393)
!2393 = !{!2394}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2392, file: !353, line: 35, baseType: !356, size: 64)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !548, file: !31, line: 1450, baseType: !167, size: 128, offset: 1344)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !548, file: !31, line: 1451, baseType: !2397, size: 64, offset: 1472)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !31, line: 699, flags: DIFlagFwdDecl)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !548, file: !31, line: 1452, baseType: !1766, size: 64, offset: 1536)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !548, file: !31, line: 1453, baseType: !2401, size: 64, offset: 1600)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !31, line: 1453, flags: DIFlagFwdDecl)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !548, file: !31, line: 1454, baseType: !590, size: 128, offset: 1664)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !548, file: !31, line: 1455, baseType: !7, size: 32, offset: 1792)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !548, file: !31, line: 1456, baseType: !2406, size: 2432, offset: 1856)
!2406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !25, line: 518, size: 2432, elements: !2407)
!2407 = !{!2408, !2409, !2410, !2412, !2444}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2406, file: !25, line: 519, baseType: !7, size: 32)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2406, file: !25, line: 520, baseType: !718, size: 256, offset: 64)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2406, file: !25, line: 521, baseType: !2411, size: 192, offset: 320)
!2411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 192, elements: !231)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2406, file: !25, line: 522, baseType: !2413, size: 1728, offset: 512)
!2413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2414, size: 1728, elements: !231)
!2414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !25, line: 222, size: 576, elements: !2415)
!2415 = !{!2416, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2414, file: !25, line: 223, baseType: !2417, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !25, line: 443, size: 256, elements: !2419)
!2419 = !{!2420, !2421, !2434, !2435}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2418, file: !25, line: 444, baseType: !106, size: 32)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2418, file: !25, line: 445, baseType: !2422, size: 64, offset: 64)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2424)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !25, line: 310, size: 512, elements: !2425)
!2425 = !{!2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2424, file: !25, line: 311, baseType: !636, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2424, file: !25, line: 312, baseType: !636, size: 64, offset: 64)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2424, file: !25, line: 313, baseType: !636, size: 64, offset: 128)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2424, file: !25, line: 314, baseType: !636, size: 64, offset: 192)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2424, file: !25, line: 315, baseType: !2216, size: 64, offset: 256)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2424, file: !25, line: 316, baseType: !2216, size: 64, offset: 320)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2424, file: !25, line: 317, baseType: !2216, size: 64, offset: 384)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2424, file: !25, line: 318, baseType: !2288, size: 64, offset: 448)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2418, file: !25, line: 446, baseType: !581, size: 64, offset: 128)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2418, file: !25, line: 447, baseType: !2417, size: 64, offset: 192)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2414, file: !25, line: 224, baseType: !106, size: 32, offset: 64)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2414, file: !25, line: 226, baseType: !167, size: 128, offset: 128)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2414, file: !25, line: 227, baseType: !111, size: 64, offset: 256)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2414, file: !25, line: 228, baseType: !7, size: 32, offset: 320)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2414, file: !25, line: 229, baseType: !7, size: 32, offset: 352)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2414, file: !25, line: 230, baseType: !2252, size: 64, offset: 384)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2414, file: !25, line: 231, baseType: !2252, size: 64, offset: 448)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2414, file: !25, line: 232, baseType: !107, size: 64, offset: 512)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2406, file: !25, line: 523, baseType: !2445, size: 192, offset: 2240)
!2445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2422, size: 192, elements: !231)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !548, file: !31, line: 1458, baseType: !2447, size: 2112, offset: 4288)
!2447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !31, line: 1410, size: 2112, elements: !2448)
!2448 = !{!2449, !2450, !2451}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2447, file: !31, line: 1411, baseType: !106, size: 32)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2447, file: !31, line: 1412, baseType: !1323, size: 128, offset: 64)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2447, file: !31, line: 1413, baseType: !2452, size: 1920, offset: 192)
!2452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2453, size: 1920, elements: !231)
!2453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2454, line: 12, size: 640, elements: !2455)
!2454 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2455 = !{!2456, !2464, !2466, !2471, !2472}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2453, file: !2454, line: 13, baseType: !2457, size: 320)
!2457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2458, line: 17, size: 320, elements: !2459)
!2458 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2459 = !{!2460, !2461, !2462, !2463}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2457, file: !2458, line: 18, baseType: !106, size: 32)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2457, file: !2458, line: 19, baseType: !106, size: 32, offset: 32)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2457, file: !2458, line: 20, baseType: !1323, size: 128, offset: 64)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2457, file: !2458, line: 22, baseType: !320, size: 128, align: 64, offset: 192)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2453, file: !2454, line: 14, baseType: !2465, size: 64, offset: 320)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2453, file: !2454, line: 15, baseType: !2467, size: 64, offset: 384)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2468, line: 16, size: 64, elements: !2469)
!2468 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2469 = !{!2470}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2467, file: !2468, line: 17, baseType: !1058, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2453, file: !2454, line: 16, baseType: !1323, size: 128, offset: 448)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2453, file: !2454, line: 17, baseType: !698, size: 32, offset: 576)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !548, file: !31, line: 1465, baseType: !107, size: 64, offset: 6400)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !548, file: !31, line: 1468, baseType: !370, size: 32, offset: 6464)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !548, file: !31, line: 1470, baseType: !488, size: 64, offset: 6528)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !548, file: !31, line: 1471, baseType: !488, size: 64, offset: 6592)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !548, file: !31, line: 1473, baseType: !371, size: 32, offset: 6656)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !548, file: !31, line: 1474, baseType: !2479, size: 64, offset: 6720)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !31, line: 603, flags: DIFlagFwdDecl)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !548, file: !31, line: 1477, baseType: !2482, size: 256, offset: 6784)
!2482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 256, elements: !2073)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !548, file: !31, line: 1478, baseType: !2484, size: 128, offset: 7040)
!2484 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2485, line: 18, baseType: !2486)
!2485 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2485, line: 16, size: 128, elements: !2487)
!2487 = !{!2488}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2486, file: !2485, line: 17, baseType: !2489, size: 128)
!2489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1195, size: 128, elements: !1577)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !548, file: !31, line: 1480, baseType: !7, size: 32, offset: 7168)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !548, file: !31, line: 1481, baseType: !2492, size: 32, offset: 7200)
!2492 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !109, line: 150, baseType: !7)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !548, file: !31, line: 1487, baseType: !135, size: 192, offset: 7232)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !548, file: !31, line: 1493, baseType: !120, size: 64, offset: 7424)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !548, file: !31, line: 1495, baseType: !2496, size: 64, offset: 7488)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2498)
!2498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !335, line: 135, size: 1024, align: 512, elements: !2499)
!2499 = !{!2500, !2504, !2505, !2512, !2518, !2522, !2526, !2530, !2531, !2535, !2539, !2544, !2548}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2498, file: !335, line: 136, baseType: !2501, size: 64)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!106, !337, !7}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2498, file: !335, line: 137, baseType: !2501, size: 64, offset: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2498, file: !335, line: 138, baseType: !2506, size: 64, offset: 128)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{!106, !2509, !2511}
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2498, file: !335, line: 139, baseType: !2513, size: 64, offset: 192)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!106, !2509, !7, !120, !2516}
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !361)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2498, file: !335, line: 141, baseType: !2519, size: 64, offset: 256)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = !DISubroutineType(types: !2521)
!2521 = !{!106, !2509}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2498, file: !335, line: 142, baseType: !2523, size: 64, offset: 320)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{!106, !337}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2498, file: !335, line: 143, baseType: !2527, size: 64, offset: 384)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{null, !337}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2498, file: !335, line: 144, baseType: !2527, size: 64, offset: 448)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2498, file: !335, line: 145, baseType: !2532, size: 64, offset: 512)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{null, !337, !382}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2498, file: !335, line: 146, baseType: !2536, size: 64, offset: 576)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!230, !337, !230, !106}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2498, file: !335, line: 147, baseType: !2540, size: 64, offset: 640)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!333, !2543}
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2498, file: !335, line: 148, baseType: !2545, size: 64, offset: 704)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!106, !497, !440}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2498, file: !335, line: 149, baseType: !2549, size: 64, offset: 768)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{!337, !337, !2552}
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !383)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !548, file: !31, line: 1500, baseType: !106, size: 32, offset: 7552)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !548, file: !31, line: 1502, baseType: !2556, size: 448, offset: 7616)
!2556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2200, line: 60, size: 448, elements: !2557)
!2557 = !{!2558, !2563, !2564, !2565, !2566, !2567, !2568}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2556, file: !2200, line: 61, baseType: !2559, size: 64)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!111, !2562, !2198}
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2556, file: !2200, line: 63, baseType: !2559, size: 64, offset: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2556, file: !2200, line: 66, baseType: !265, size: 64, offset: 128)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2556, file: !2200, line: 67, baseType: !106, size: 32, offset: 192)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2556, file: !2200, line: 68, baseType: !7, size: 32, offset: 224)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2556, file: !2200, line: 71, baseType: !167, size: 128, offset: 256)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2556, file: !2200, line: 77, baseType: !2569, size: 64, offset: 384)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !548, file: !31, line: 1505, baseType: !139, size: 64, offset: 8064)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !548, file: !31, line: 1508, baseType: !139, size: 64, offset: 8128)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !548, file: !31, line: 1511, baseType: !106, size: 32, offset: 8192)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !548, file: !31, line: 1514, baseType: !853, size: 32, offset: 8224)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !548, file: !31, line: 1517, baseType: !2575, size: 64, offset: 8256)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1801, line: 18, flags: DIFlagFwdDecl)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !548, file: !31, line: 1518, baseType: !586, size: 64, offset: 8320)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !548, file: !31, line: 1525, baseType: !1555, size: 64, offset: 8384)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !548, file: !31, line: 1532, baseType: !2580, size: 64, offset: 8448)
!2580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2581, line: 52, size: 64, elements: !2582)
!2581 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2582 = !{!2583}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2580, file: !2581, line: 53, baseType: !2584, size: 64)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2581, line: 40, size: 256, elements: !2586)
!2586 = !{!2587, !2588, !2593}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2585, file: !2581, line: 42, baseType: !151)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2585, file: !2581, line: 44, baseType: !2589, size: 192)
!2589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2581, line: 28, size: 192, elements: !2590)
!2590 = !{!2591, !2592}
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2589, file: !2581, line: 29, baseType: !167, size: 128)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2589, file: !2581, line: 31, baseType: !265, size: 64, offset: 128)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2585, file: !2581, line: 49, baseType: !265, size: 64, offset: 192)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !548, file: !31, line: 1533, baseType: !2580, size: 64, offset: 8512)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !548, file: !31, line: 1534, baseType: !320, size: 128, align: 64, offset: 8576)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !548, file: !31, line: 1535, baseType: !1800, size: 256, offset: 8704)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !548, file: !31, line: 1537, baseType: !135, size: 192, offset: 8960)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !548, file: !31, line: 1542, baseType: !106, size: 32, offset: 9152)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !548, file: !31, line: 1545, baseType: !151, offset: 9184)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !548, file: !31, line: 1546, baseType: !167, size: 128, offset: 9216)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !548, file: !31, line: 1548, baseType: !151, offset: 9344)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !548, file: !31, line: 1549, baseType: !167, size: 128, offset: 9344)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !383, file: !31, line: 624, baseType: !685, size: 64, offset: 256)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !383, file: !31, line: 631, baseType: !111, size: 64, offset: 320)
!2605 = !DIDerivedType(tag: DW_TAG_member, scope: !383, file: !31, line: 639, baseType: !2606, size: 32, offset: 384)
!2606 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !383, file: !31, line: 639, size: 32, elements: !2607)
!2607 = !{!2608, !2610}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2606, file: !31, line: 640, baseType: !2609, size: 32)
!2609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2606, file: !31, line: 641, baseType: !7, size: 32)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !383, file: !31, line: 643, baseType: !463, size: 32, offset: 416)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !383, file: !31, line: 644, baseType: !481, size: 64, offset: 448)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !383, file: !31, line: 645, baseType: !484, size: 128, offset: 512)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !383, file: !31, line: 646, baseType: !484, size: 128, offset: 640)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !383, file: !31, line: 647, baseType: !484, size: 128, offset: 768)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !383, file: !31, line: 648, baseType: !151, offset: 896)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !383, file: !31, line: 649, baseType: !272, size: 16, offset: 896)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !383, file: !31, line: 650, baseType: !1194, size: 8, offset: 912)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !383, file: !31, line: 651, baseType: !1194, size: 8, offset: 920)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !383, file: !31, line: 652, baseType: !2372, size: 64, offset: 960)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !383, file: !31, line: 659, baseType: !111, size: 64, offset: 1024)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !383, file: !31, line: 660, baseType: !718, size: 256, offset: 1088)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !383, file: !31, line: 662, baseType: !111, size: 64, offset: 1344)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !383, file: !31, line: 663, baseType: !111, size: 64, offset: 1408)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !383, file: !31, line: 665, baseType: !590, size: 128, offset: 1472)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !383, file: !31, line: 666, baseType: !167, size: 128, offset: 1600)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !383, file: !31, line: 675, baseType: !167, size: 128, offset: 1728)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !383, file: !31, line: 676, baseType: !167, size: 128, offset: 1856)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !383, file: !31, line: 677, baseType: !167, size: 128, offset: 1984)
!2630 = !DIDerivedType(tag: DW_TAG_member, scope: !383, file: !31, line: 678, baseType: !2631, size: 128, offset: 2112)
!2631 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !383, file: !31, line: 678, size: 128, elements: !2632)
!2632 = !{!2633, !2634}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2631, file: !31, line: 679, baseType: !586, size: 64)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2631, file: !31, line: 680, baseType: !320, size: 128, align: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !383, file: !31, line: 682, baseType: !141, size: 64, offset: 2240)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !383, file: !31, line: 683, baseType: !141, size: 64, offset: 2304)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !383, file: !31, line: 684, baseType: !698, size: 32, offset: 2368)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !383, file: !31, line: 685, baseType: !698, size: 32, offset: 2400)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !383, file: !31, line: 686, baseType: !698, size: 32, offset: 2432)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !383, file: !31, line: 688, baseType: !698, size: 32, offset: 2464)
!2641 = !DIDerivedType(tag: DW_TAG_member, scope: !383, file: !31, line: 690, baseType: !2642, size: 64, offset: 2496)
!2642 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !383, file: !31, line: 690, size: 64, elements: !2643)
!2643 = !{!2644, !2867}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2642, file: !31, line: 691, baseType: !2645, size: 64)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2647)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !31, line: 1822, size: 2048, elements: !2648)
!2648 = !{!2649, !2650, !2654, !2659, !2663, !2664, !2665, !2669, !2682, !2683, !2691, !2695, !2696, !2700, !2701, !2705, !2710, !2711, !2715, !2719, !2827, !2831, !2832, !2836, !2837, !2841, !2845, !2850, !2854, !2858, !2862, !2866}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2647, file: !31, line: 1823, baseType: !581, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2647, file: !31, line: 1824, baseType: !2651, size: 64, offset: 64)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = !DISubroutineType(types: !2653)
!2653 = !{!481, !307, !481, !106}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2647, file: !31, line: 1825, baseType: !2655, size: 64, offset: 128)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = !DISubroutineType(types: !2657)
!2657 = !{!261, !307, !230, !277, !2658}
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2647, file: !31, line: 1826, baseType: !2660, size: 64, offset: 192)
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = !DISubroutineType(types: !2662)
!2662 = !{!261, !307, !120, !277, !2658}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2647, file: !31, line: 1827, baseType: !788, size: 64, offset: 256)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2647, file: !31, line: 1828, baseType: !788, size: 64, offset: 320)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2647, file: !31, line: 1829, baseType: !2666, size: 64, offset: 384)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{!106, !791, !440}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2647, file: !31, line: 1830, baseType: !2670, size: 64, offset: 448)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = !DISubroutineType(types: !2672)
!2672 = !{!106, !307, !2673}
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !31, line: 1776, size: 128, elements: !2675)
!2675 = !{!2676, !2681}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2674, file: !31, line: 1777, baseType: !2677, size: 64)
!2677 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !31, line: 1773, baseType: !2678)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!106, !2673, !120, !106, !481, !374, !7}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2674, file: !31, line: 1778, baseType: !481, size: 64, offset: 64)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2647, file: !31, line: 1831, baseType: !2670, size: 64, offset: 512)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2647, file: !31, line: 1832, baseType: !2684, size: 64, offset: 576)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!2687, !307, !2689}
!2687 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2688, line: 52, baseType: !7)
!2688 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !567, line: 27, flags: DIFlagFwdDecl)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2647, file: !31, line: 1833, baseType: !2692, size: 64, offset: 640)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{!265, !307, !7, !111}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2647, file: !31, line: 1834, baseType: !2692, size: 64, offset: 704)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2647, file: !31, line: 1835, baseType: !2697, size: 64, offset: 768)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!106, !307, !925}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2647, file: !31, line: 1836, baseType: !111, size: 64, offset: 832)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2647, file: !31, line: 1837, baseType: !2702, size: 64, offset: 896)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!106, !382, !307}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2647, file: !31, line: 1838, baseType: !2706, size: 64, offset: 960)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = !DISubroutineType(types: !2708)
!2708 = !{!106, !307, !2709}
!2709 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !31, line: 1007, baseType: !107)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2647, file: !31, line: 1839, baseType: !2702, size: 64, offset: 1024)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2647, file: !31, line: 1840, baseType: !2712, size: 64, offset: 1088)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{!106, !307, !481, !481, !106}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2647, file: !31, line: 1841, baseType: !2716, size: 64, offset: 1152)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{!106, !106, !307, !106}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2647, file: !31, line: 1842, baseType: !2720, size: 64, offset: 1216)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{!106, !307, !106, !2723}
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !31, line: 1062, size: 1664, elements: !2725)
!2725 = !{!2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2757, !2758, !2759, !2772, !2803}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2724, file: !31, line: 1063, baseType: !2723, size: 64)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2724, file: !31, line: 1064, baseType: !167, size: 128, offset: 64)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2724, file: !31, line: 1065, baseType: !590, size: 128, offset: 192)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2724, file: !31, line: 1066, baseType: !167, size: 128, offset: 320)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2724, file: !31, line: 1069, baseType: !167, size: 128, offset: 448)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2724, file: !31, line: 1072, baseType: !2709, size: 64, offset: 576)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2724, file: !31, line: 1073, baseType: !7, size: 32, offset: 640)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2724, file: !31, line: 1074, baseType: !380, size: 8, offset: 672)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2724, file: !31, line: 1075, baseType: !7, size: 32, offset: 704)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2724, file: !31, line: 1076, baseType: !106, size: 32, offset: 736)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2724, file: !31, line: 1077, baseType: !1323, size: 128, offset: 768)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2724, file: !31, line: 1078, baseType: !307, size: 64, offset: 896)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2724, file: !31, line: 1079, baseType: !481, size: 64, offset: 960)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2724, file: !31, line: 1080, baseType: !481, size: 64, offset: 1024)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2724, file: !31, line: 1082, baseType: !2741, size: 64, offset: 1088)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !31, line: 1314, size: 320, elements: !2743)
!2743 = !{!2744, !2752, !2753, !2754, !2755, !2756}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2742, file: !31, line: 1315, baseType: !2745)
!2745 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2746, line: 20, baseType: !2747)
!2746 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2747 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2746, line: 11, elements: !2748)
!2748 = !{!2749}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2747, file: !2746, line: 12, baseType: !2750)
!2750 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !163, line: 33, baseType: !2751)
!2751 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !163, line: 31, elements: !165)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2742, file: !31, line: 1316, baseType: !106, size: 32)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2742, file: !31, line: 1317, baseType: !106, size: 32, offset: 32)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2742, file: !31, line: 1318, baseType: !2741, size: 64, offset: 64)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2742, file: !31, line: 1319, baseType: !307, size: 64, offset: 128)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2742, file: !31, line: 1320, baseType: !320, size: 128, align: 64, offset: 192)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2724, file: !31, line: 1084, baseType: !111, size: 64, offset: 1152)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2724, file: !31, line: 1085, baseType: !111, size: 64, offset: 1216)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2724, file: !31, line: 1087, baseType: !2760, size: 64, offset: 1280)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2762)
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !31, line: 1011, size: 128, elements: !2763)
!2763 = !{!2764, !2768}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2762, file: !31, line: 1012, baseType: !2765, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{null, !2723, !2723}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2762, file: !31, line: 1013, baseType: !2769, size: 64, offset: 64)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{null, !2723}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2724, file: !31, line: 1088, baseType: !2773, size: 64, offset: 1344)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2775)
!2775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !31, line: 1016, size: 512, elements: !2776)
!2776 = !{!2777, !2781, !2785, !2786, !2790, !2794, !2798, !2802}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2775, file: !31, line: 1017, baseType: !2778, size: 64)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DISubroutineType(types: !2780)
!2780 = !{!2709, !2709}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2775, file: !31, line: 1018, baseType: !2782, size: 64, offset: 64)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = !DISubroutineType(types: !2784)
!2784 = !{null, !2709}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2775, file: !31, line: 1019, baseType: !2769, size: 64, offset: 128)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2775, file: !31, line: 1020, baseType: !2787, size: 64, offset: 192)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{!106, !2723, !106}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2775, file: !31, line: 1021, baseType: !2791, size: 64, offset: 256)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{!440, !2723}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2775, file: !31, line: 1022, baseType: !2795, size: 64, offset: 320)
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2796, size: 64)
!2796 = !DISubroutineType(types: !2797)
!2797 = !{!106, !2723, !106, !170}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2775, file: !31, line: 1023, baseType: !2799, size: 64, offset: 384)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DISubroutineType(types: !2801)
!2801 = !{null, !2723, !765}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2775, file: !31, line: 1024, baseType: !2791, size: 64, offset: 448)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2724, file: !31, line: 1097, baseType: !2804, size: 256, offset: 1408)
!2804 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2724, file: !31, line: 1089, size: 256, elements: !2805)
!2805 = !{!2806, !2815, !2821}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2804, file: !31, line: 1090, baseType: !2807, size: 256)
!2807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2808, line: 10, size: 256, elements: !2809)
!2808 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2809 = !{!2810, !2811, !2814}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2807, file: !2808, line: 11, baseType: !370, size: 32)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2807, file: !2808, line: 12, baseType: !2812, size: 64, offset: 64)
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2808, line: 5, flags: DIFlagFwdDecl)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2807, file: !2808, line: 13, baseType: !167, size: 128, offset: 128)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2804, file: !31, line: 1091, baseType: !2816, size: 64)
!2816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2808, line: 17, size: 64, elements: !2817)
!2817 = !{!2818}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2816, file: !2808, line: 18, baseType: !2819, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2808, line: 16, flags: DIFlagFwdDecl)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2804, file: !31, line: 1096, baseType: !2822, size: 192)
!2822 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2804, file: !31, line: 1092, size: 192, elements: !2823)
!2823 = !{!2824, !2825, !2826}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2822, file: !31, line: 1093, baseType: !167, size: 128)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2822, file: !31, line: 1094, baseType: !106, size: 32, offset: 128)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2822, file: !31, line: 1095, baseType: !7, size: 32, offset: 160)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2647, file: !31, line: 1843, baseType: !2828, size: 64, offset: 1280)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = !DISubroutineType(types: !2830)
!2830 = !{!261, !307, !672, !106, !277, !2658, !106}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2647, file: !31, line: 1844, baseType: !965, size: 64, offset: 1344)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2647, file: !31, line: 1845, baseType: !2833, size: 64, offset: 1408)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{!106, !106}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2647, file: !31, line: 1846, baseType: !2720, size: 64, offset: 1472)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2647, file: !31, line: 1847, baseType: !2838, size: 64, offset: 1536)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{!261, !1941, !307, !2658, !277, !7}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2647, file: !31, line: 1848, baseType: !2842, size: 64, offset: 1600)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = !DISubroutineType(types: !2844)
!2844 = !{!261, !307, !2658, !1941, !277, !7}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2647, file: !31, line: 1849, baseType: !2846, size: 64, offset: 1664)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = !DISubroutineType(types: !2848)
!2848 = !{!106, !307, !265, !2849, !765}
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2647, file: !31, line: 1850, baseType: !2851, size: 64, offset: 1728)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{!265, !307, !106, !481, !481}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2647, file: !31, line: 1852, baseType: !2855, size: 64, offset: 1792)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{null, !662, !307}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2647, file: !31, line: 1856, baseType: !2859, size: 64, offset: 1856)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{!261, !307, !481, !307, !481, !277, !7}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2647, file: !31, line: 1858, baseType: !2863, size: 64, offset: 1920)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{!481, !307, !481, !307, !481, !481, !7}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2647, file: !31, line: 1861, baseType: !2712, size: 64, offset: 1984)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2642, file: !31, line: 692, baseType: !615, size: 64)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !383, file: !31, line: 694, baseType: !2869, size: 64, offset: 2560)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !31, line: 1100, size: 384, elements: !2871)
!2871 = !{!2872, !2873, !2874, !2875}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2870, file: !31, line: 1101, baseType: !151)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2870, file: !31, line: 1102, baseType: !167, size: 128)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2870, file: !31, line: 1103, baseType: !167, size: 128, offset: 128)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2870, file: !31, line: 1104, baseType: !167, size: 128, offset: 256)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !383, file: !31, line: 695, baseType: !686, size: 1216, align: 64, offset: 2624)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !383, file: !31, line: 696, baseType: !167, size: 128, offset: 3840)
!2878 = !DIDerivedType(tag: DW_TAG_member, scope: !383, file: !31, line: 697, baseType: !2879, size: 64, offset: 3968)
!2879 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !383, file: !31, line: 697, size: 64, elements: !2880)
!2880 = !{!2881, !2882, !2883, !2886, !2887}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2879, file: !31, line: 698, baseType: !1941, size: 64)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2879, file: !31, line: 699, baseType: !2397, size: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2879, file: !31, line: 700, baseType: !2884, size: 64)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !31, line: 700, flags: DIFlagFwdDecl)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2879, file: !31, line: 701, baseType: !230, size: 64)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2879, file: !31, line: 702, baseType: !7, size: 32)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !383, file: !31, line: 705, baseType: !371, size: 32, offset: 4032)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !383, file: !31, line: 708, baseType: !371, size: 32, offset: 4064)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !383, file: !31, line: 709, baseType: !2479, size: 64, offset: 4096)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !383, file: !31, line: 720, baseType: !107, size: 64, offset: 4160)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !338, file: !335, line: 98, baseType: !2893, size: 256, offset: 448)
!2893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 256, elements: !2073)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !338, file: !335, line: 101, baseType: !2895, size: 32, offset: 704)
!2895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2896, line: 25, size: 32, elements: !2897)
!2896 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2897 = !{!2898}
!2898 = !DIDerivedType(tag: DW_TAG_member, scope: !2895, file: !2896, line: 26, baseType: !2899, size: 32)
!2899 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2895, file: !2896, line: 26, size: 32, elements: !2900)
!2900 = !{!2901}
!2901 = !DIDerivedType(tag: DW_TAG_member, scope: !2899, file: !2896, line: 30, baseType: !2902, size: 32)
!2902 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2899, file: !2896, line: 30, size: 32, elements: !2903)
!2903 = !{!2904, !2905}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2902, file: !2896, line: 31, baseType: !151)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2902, file: !2896, line: 32, baseType: !106, size: 32)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !338, file: !335, line: 102, baseType: !2496, size: 64, offset: 768)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !338, file: !335, line: 103, baseType: !547, size: 64, offset: 832)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !338, file: !335, line: 104, baseType: !111, size: 64, offset: 896)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !338, file: !335, line: 105, baseType: !107, size: 64, offset: 960)
!2910 = !DIDerivedType(tag: DW_TAG_member, scope: !338, file: !335, line: 107, baseType: !2911, size: 128, offset: 1024)
!2911 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !338, file: !335, line: 107, size: 128, elements: !2912)
!2912 = !{!2913, !2914}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2911, file: !335, line: 108, baseType: !167, size: 128)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2911, file: !335, line: 109, baseType: !2915, size: 64)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !338, file: !335, line: 111, baseType: !167, size: 128, offset: 1152)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !338, file: !335, line: 112, baseType: !167, size: 128, offset: 1280)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !338, file: !335, line: 120, baseType: !2919, size: 128, offset: 1408)
!2919 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !338, file: !335, line: 116, size: 128, elements: !2920)
!2920 = !{!2921, !2922, !2923}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2919, file: !335, line: 117, baseType: !590, size: 128)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2919, file: !335, line: 118, baseType: !352, size: 128)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2919, file: !335, line: 119, baseType: !320, size: 128, align: 64)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !308, file: !31, line: 922, baseType: !382, size: 64, offset: 256)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !308, file: !31, line: 923, baseType: !2645, size: 64, offset: 320)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !308, file: !31, line: 929, baseType: !151, offset: 384)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !308, file: !31, line: 930, baseType: !30, size: 32, offset: 384)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !308, file: !31, line: 931, baseType: !139, size: 64, offset: 448)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !308, file: !31, line: 932, baseType: !7, size: 32, offset: 512)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !308, file: !31, line: 933, baseType: !2492, size: 32, offset: 544)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !308, file: !31, line: 934, baseType: !135, size: 192, offset: 576)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !308, file: !31, line: 935, baseType: !481, size: 64, offset: 768)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !308, file: !31, line: 936, baseType: !2934, size: 192, offset: 832)
!2934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !31, line: 885, size: 192, elements: !2935)
!2935 = !{!2936, !2937, !2938, !2939, !2940, !2941}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2934, file: !31, line: 886, baseType: !2745)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2934, file: !31, line: 887, baseType: !1313, size: 64)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2934, file: !31, line: 888, baseType: !39, size: 32, offset: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2934, file: !31, line: 889, baseType: !388, size: 32, offset: 96)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2934, file: !31, line: 889, baseType: !388, size: 32, offset: 128)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2934, file: !31, line: 890, baseType: !106, size: 32, offset: 160)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !308, file: !31, line: 937, baseType: !1389, size: 64, offset: 1024)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !308, file: !31, line: 938, baseType: !2944, size: 256, offset: 1088)
!2944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !31, line: 896, size: 256, elements: !2945)
!2945 = !{!2946, !2947, !2948, !2949, !2950, !2951}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2944, file: !31, line: 897, baseType: !111, size: 64)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2944, file: !31, line: 898, baseType: !7, size: 32, offset: 64)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2944, file: !31, line: 899, baseType: !7, size: 32, offset: 96)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2944, file: !31, line: 902, baseType: !7, size: 32, offset: 128)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2944, file: !31, line: 903, baseType: !7, size: 32, offset: 160)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2944, file: !31, line: 904, baseType: !481, size: 64, offset: 192)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !308, file: !31, line: 940, baseType: !374, size: 64, offset: 1344)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !308, file: !31, line: 945, baseType: !107, size: 64, offset: 1408)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !308, file: !31, line: 949, baseType: !167, size: 128, offset: 1472)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !308, file: !31, line: 950, baseType: !167, size: 128, offset: 1600)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !308, file: !31, line: 952, baseType: !685, size: 64, offset: 1728)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !308, file: !31, line: 953, baseType: !853, size: 32, offset: 1792)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !308, file: !31, line: 954, baseType: !853, size: 32, offset: 1824)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !298, file: !255, line: 174, baseType: !304, size: 64, offset: 320)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !298, file: !255, line: 176, baseType: !2961, size: 64, offset: 384)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{!106, !307, !197, !297, !925}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !286, file: !255, line: 90, baseType: !281, size: 64, offset: 192)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !286, file: !255, line: 91, baseType: !2966, size: 64, offset: 256)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !245, file: !192, line: 143, baseType: !2968, size: 64, offset: 256)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = !DISubroutineType(types: !2970)
!2970 = !{!2971, !197}
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2973)
!2973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !48, line: 39, size: 384, elements: !2974)
!2974 = !{!2975, !2976, !2980, !2984, !2990, !2994}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2973, file: !48, line: 40, baseType: !47, size: 32)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2973, file: !48, line: 41, baseType: !2977, size: 64, offset: 64)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!440}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2973, file: !48, line: 42, baseType: !2981, size: 64, offset: 128)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!107}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2973, file: !48, line: 43, baseType: !2985, size: 64, offset: 192)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DISubroutineType(types: !2987)
!2987 = !{!1970, !2988}
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !48, line: 19, flags: DIFlagFwdDecl)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2973, file: !48, line: 44, baseType: !2991, size: 64, offset: 256)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = !DISubroutineType(types: !2993)
!2993 = !{!1970}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2973, file: !48, line: 45, baseType: !179, size: 64, offset: 320)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !245, file: !192, line: 144, baseType: !2996, size: 64, offset: 320)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{!1970, !197}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !245, file: !192, line: 145, baseType: !3000, size: 64, offset: 384)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{null, !197, !3003, !3004}
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !191, file: !192, line: 70, baseType: !3006, size: 64, offset: 384)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !567, line: 123, size: 1024, elements: !3008)
!3008 = !{!3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3137, !3138, !3139, !3140, !3141}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3007, file: !567, line: 124, baseType: !698, size: 32)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3007, file: !567, line: 125, baseType: !698, size: 32, offset: 32)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3007, file: !567, line: 135, baseType: !3006, size: 64, offset: 64)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3007, file: !567, line: 136, baseType: !120, size: 64, offset: 128)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3007, file: !567, line: 138, baseType: !711, size: 192, align: 64, offset: 192)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3007, file: !567, line: 140, baseType: !1970, size: 64, offset: 384)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3007, file: !567, line: 141, baseType: !7, size: 32, offset: 448)
!3016 = !DIDerivedType(tag: DW_TAG_member, scope: !3007, file: !567, line: 142, baseType: !3017, size: 256, offset: 512)
!3017 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3007, file: !567, line: 142, size: 256, elements: !3018)
!3018 = !{!3019, !3065, !3069}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3017, file: !567, line: 143, baseType: !3020, size: 192)
!3020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !567, line: 91, size: 192, elements: !3021)
!3021 = !{!3022, !3023, !3024}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3020, file: !567, line: 92, baseType: !111, size: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3020, file: !567, line: 94, baseType: !707, size: 64, offset: 64)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3020, file: !567, line: 100, baseType: !3025, size: 64, offset: 128)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !567, line: 180, size: 704, elements: !3027)
!3027 = !{!3028, !3029, !3030, !3037, !3038, !3039, !3063, !3064}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3026, file: !567, line: 182, baseType: !3006, size: 64)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3026, file: !567, line: 183, baseType: !7, size: 32, offset: 64)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3026, file: !567, line: 186, baseType: !3031, size: 192, offset: 128)
!3031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3032, line: 19, size: 192, elements: !3033)
!3032 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3033 = !{!3034, !3035, !3036}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3031, file: !3032, line: 20, baseType: !690, size: 128)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3031, file: !3032, line: 21, baseType: !7, size: 32, offset: 128)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3031, file: !3032, line: 22, baseType: !7, size: 32, offset: 160)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3026, file: !567, line: 187, baseType: !370, size: 32, offset: 320)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3026, file: !567, line: 188, baseType: !370, size: 32, offset: 352)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3026, file: !567, line: 189, baseType: !3040, size: 64, offset: 384)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !567, line: 168, size: 320, elements: !3042)
!3042 = !{!3043, !3047, !3051, !3055, !3059}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3041, file: !567, line: 169, baseType: !3044, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!106, !662, !3025}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3041, file: !567, line: 171, baseType: !3048, size: 64, offset: 64)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{!106, !3006, !120, !271}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3041, file: !567, line: 173, baseType: !3052, size: 64, offset: 128)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!106, !3006}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3041, file: !567, line: 174, baseType: !3056, size: 64, offset: 192)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{!106, !3006, !3006, !120}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3041, file: !567, line: 176, baseType: !3060, size: 64, offset: 256)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!106, !662, !3006, !3025}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3026, file: !567, line: 192, baseType: !167, size: 128, offset: 448)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3026, file: !567, line: 194, baseType: !1323, size: 128, offset: 576)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3017, file: !567, line: 144, baseType: !3066, size: 64)
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !567, line: 103, size: 64, elements: !3067)
!3067 = !{!3068}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3066, file: !567, line: 104, baseType: !3006, size: 64)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3017, file: !567, line: 145, baseType: !3070, size: 256)
!3070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !567, line: 107, size: 256, elements: !3071)
!3071 = !{!3072, !3132, !3135, !3136}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3070, file: !567, line: 108, baseType: !3073, size: 64)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3075)
!3075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !567, line: 217, size: 768, elements: !3076)
!3076 = !{!3077, !3097, !3101, !3105, !3109, !3113, !3117, !3121, !3122, !3123, !3124, !3128}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3075, file: !567, line: 222, baseType: !3078, size: 64)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{!106, !3081}
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !567, line: 197, size: 1088, elements: !3083)
!3083 = !{!3084, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3096}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3082, file: !567, line: 199, baseType: !3006, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3082, file: !567, line: 200, baseType: !307, size: 64, offset: 64)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3082, file: !567, line: 201, baseType: !662, size: 64, offset: 128)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3082, file: !567, line: 202, baseType: !107, size: 64, offset: 192)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3082, file: !567, line: 205, baseType: !135, size: 192, offset: 256)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3082, file: !567, line: 206, baseType: !135, size: 192, offset: 448)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3082, file: !567, line: 207, baseType: !106, size: 32, offset: 640)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3082, file: !567, line: 208, baseType: !167, size: 128, offset: 704)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3082, file: !567, line: 209, baseType: !230, size: 64, offset: 832)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3082, file: !567, line: 211, baseType: !277, size: 64, offset: 896)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3082, file: !567, line: 212, baseType: !440, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3082, file: !567, line: 213, baseType: !440, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3082, file: !567, line: 214, baseType: !953, size: 64, offset: 1024)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3075, file: !567, line: 223, baseType: !3098, size: 64, offset: 64)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{null, !3081}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3075, file: !567, line: 236, baseType: !3102, size: 64, offset: 128)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{!106, !662, !107}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3075, file: !567, line: 238, baseType: !3106, size: 64, offset: 192)
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3107, size: 64)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{!107, !662, !2658}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3075, file: !567, line: 239, baseType: !3110, size: 64, offset: 256)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!107, !662, !107, !2658}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3075, file: !567, line: 240, baseType: !3114, size: 64, offset: 320)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{null, !662, !107}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3075, file: !567, line: 242, baseType: !3118, size: 64, offset: 384)
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3119, size: 64)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{!261, !3081, !230, !277, !481}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3075, file: !567, line: 252, baseType: !277, size: 64, offset: 448)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3075, file: !567, line: 259, baseType: !440, size: 8, offset: 512)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3075, file: !567, line: 260, baseType: !3118, size: 64, offset: 576)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3075, file: !567, line: 263, baseType: !3125, size: 64, offset: 640)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{!2687, !3081, !2689}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3075, file: !567, line: 266, baseType: !3129, size: 64, offset: 704)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{!106, !3081, !925}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3070, file: !567, line: 109, baseType: !3133, size: 64, offset: 64)
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !567, line: 31, flags: DIFlagFwdDecl)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3070, file: !567, line: 110, baseType: !481, size: 64, offset: 128)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3070, file: !567, line: 111, baseType: !3006, size: 64, offset: 192)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3007, file: !567, line: 148, baseType: !107, size: 64, offset: 768)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3007, file: !567, line: 154, baseType: !374, size: 64, offset: 832)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3007, file: !567, line: 156, baseType: !272, size: 16, offset: 896)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3007, file: !567, line: 157, baseType: !271, size: 16, offset: 912)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3007, file: !567, line: 158, baseType: !3142, size: 64, offset: 960)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !567, line: 32, flags: DIFlagFwdDecl)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !191, file: !192, line: 71, baseType: !3145, size: 32, offset: 448)
!3145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3146, line: 19, size: 32, elements: !3147)
!3146 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3147 = !{!3148}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3145, file: !3146, line: 20, baseType: !1072, size: 32)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !191, file: !192, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !191, file: !192, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !191, file: !192, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !191, file: !192, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !191, file: !192, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !188, file: !60, line: 463, baseType: !187, size: 64, offset: 512)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !188, file: !60, line: 465, baseType: !3156, size: 64, offset: 576)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !60, line: 36, flags: DIFlagFwdDecl)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !188, file: !60, line: 467, baseType: !120, size: 64, offset: 640)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !188, file: !60, line: 468, baseType: !3160, size: 64, offset: 704)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3162)
!3162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !60, line: 87, size: 384, elements: !3163)
!3163 = !{!3164, !3165, !3166, !3170, !3175, !3179}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3162, file: !60, line: 88, baseType: !120, size: 64)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3162, file: !60, line: 89, baseType: !283, size: 64, offset: 64)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3162, file: !60, line: 90, baseType: !3167, size: 64, offset: 128)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!106, !187, !225}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3162, file: !60, line: 91, baseType: !3171, size: 64, offset: 192)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DISubroutineType(types: !3173)
!3173 = !{!230, !187, !3174, !3003, !3004}
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3162, file: !60, line: 93, baseType: !3176, size: 64, offset: 256)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DISubroutineType(types: !3178)
!3178 = !{null, !187}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3162, file: !60, line: 95, baseType: !3180, size: 64, offset: 320)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3182)
!3182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !67, line: 278, size: 1472, elements: !3183)
!3183 = !{!3184, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3182, file: !67, line: 279, baseType: !3185, size: 64)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{!106, !187}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3182, file: !67, line: 280, baseType: !3176, size: 64, offset: 64)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3182, file: !67, line: 281, baseType: !3185, size: 64, offset: 128)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3182, file: !67, line: 282, baseType: !3185, size: 64, offset: 192)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3182, file: !67, line: 283, baseType: !3185, size: 64, offset: 256)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3182, file: !67, line: 284, baseType: !3185, size: 64, offset: 320)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3182, file: !67, line: 285, baseType: !3185, size: 64, offset: 384)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3182, file: !67, line: 286, baseType: !3185, size: 64, offset: 448)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3182, file: !67, line: 287, baseType: !3185, size: 64, offset: 512)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3182, file: !67, line: 288, baseType: !3185, size: 64, offset: 576)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3182, file: !67, line: 289, baseType: !3185, size: 64, offset: 640)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3182, file: !67, line: 290, baseType: !3185, size: 64, offset: 704)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3182, file: !67, line: 291, baseType: !3185, size: 64, offset: 768)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3182, file: !67, line: 292, baseType: !3185, size: 64, offset: 832)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3182, file: !67, line: 293, baseType: !3185, size: 64, offset: 896)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3182, file: !67, line: 294, baseType: !3185, size: 64, offset: 960)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3182, file: !67, line: 295, baseType: !3185, size: 64, offset: 1024)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3182, file: !67, line: 296, baseType: !3185, size: 64, offset: 1088)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3182, file: !67, line: 297, baseType: !3185, size: 64, offset: 1152)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3182, file: !67, line: 298, baseType: !3185, size: 64, offset: 1216)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3182, file: !67, line: 299, baseType: !3185, size: 64, offset: 1280)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3182, file: !67, line: 300, baseType: !3185, size: 64, offset: 1344)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3182, file: !67, line: 301, baseType: !3185, size: 64, offset: 1408)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !188, file: !60, line: 470, baseType: !3211, size: 64, offset: 768)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3213, line: 82, size: 1408, elements: !3214)
!3213 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3214 = !{!3215, !3216, !3217, !3218, !3219, !3220, !3221, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3278, !3281, !3282}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3212, file: !3213, line: 83, baseType: !120, size: 64)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3212, file: !3213, line: 84, baseType: !120, size: 64, offset: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3212, file: !3213, line: 85, baseType: !187, size: 64, offset: 128)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3212, file: !3213, line: 86, baseType: !283, size: 64, offset: 192)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3212, file: !3213, line: 87, baseType: !283, size: 64, offset: 256)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3212, file: !3213, line: 88, baseType: !283, size: 64, offset: 320)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3212, file: !3213, line: 90, baseType: !3222, size: 64, offset: 384)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{!106, !187, !3225}
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !54, line: 95, size: 1152, elements: !3227)
!3227 = !{!3228, !3229, !3230, !3231, !3232, !3233, !3234, !3238, !3242, !3243, !3244, !3245, !3246, !3254, !3255, !3256, !3257, !3258, !3259}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3226, file: !54, line: 96, baseType: !120, size: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3226, file: !54, line: 97, baseType: !3211, size: 64, offset: 64)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3226, file: !54, line: 99, baseType: !581, size: 64, offset: 128)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3226, file: !54, line: 100, baseType: !120, size: 64, offset: 192)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3226, file: !54, line: 102, baseType: !440, size: 8, offset: 256)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3226, file: !54, line: 103, baseType: !53, size: 32, offset: 288)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3226, file: !54, line: 105, baseType: !3235, size: 64, offset: 320)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3237)
!3237 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !54, line: 105, flags: DIFlagFwdDecl)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3226, file: !54, line: 106, baseType: !3239, size: 64, offset: 384)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3241)
!3241 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !54, line: 106, flags: DIFlagFwdDecl)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3226, file: !54, line: 108, baseType: !3185, size: 64, offset: 448)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3226, file: !54, line: 109, baseType: !3176, size: 64, offset: 512)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3226, file: !54, line: 110, baseType: !3185, size: 64, offset: 576)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3226, file: !54, line: 111, baseType: !3176, size: 64, offset: 640)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3226, file: !54, line: 112, baseType: !3247, size: 64, offset: 704)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{!106, !187, !3250}
!3250 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !67, line: 52, baseType: !3251)
!3251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !67, line: 50, size: 32, elements: !3252)
!3252 = !{!3253}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3251, file: !67, line: 51, baseType: !106, size: 32)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3226, file: !54, line: 113, baseType: !3185, size: 64, offset: 768)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3226, file: !54, line: 114, baseType: !283, size: 64, offset: 832)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3226, file: !54, line: 115, baseType: !283, size: 64, offset: 896)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3226, file: !54, line: 117, baseType: !3180, size: 64, offset: 960)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3226, file: !54, line: 118, baseType: !3176, size: 64, offset: 1024)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3226, file: !54, line: 120, baseType: !3260, size: 64, offset: 1088)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !54, line: 120, flags: DIFlagFwdDecl)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3212, file: !3213, line: 91, baseType: !3167, size: 64, offset: 448)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3212, file: !3213, line: 92, baseType: !3185, size: 64, offset: 512)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3212, file: !3213, line: 93, baseType: !3176, size: 64, offset: 576)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3212, file: !3213, line: 94, baseType: !3185, size: 64, offset: 640)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3212, file: !3213, line: 95, baseType: !3176, size: 64, offset: 704)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3212, file: !3213, line: 97, baseType: !3185, size: 64, offset: 768)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3212, file: !3213, line: 98, baseType: !3185, size: 64, offset: 832)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3212, file: !3213, line: 100, baseType: !3247, size: 64, offset: 896)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3212, file: !3213, line: 101, baseType: !3185, size: 64, offset: 960)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3212, file: !3213, line: 103, baseType: !3185, size: 64, offset: 1024)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3212, file: !3213, line: 105, baseType: !3185, size: 64, offset: 1088)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3212, file: !3213, line: 107, baseType: !3180, size: 64, offset: 1152)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3212, file: !3213, line: 109, baseType: !3275, size: 64, offset: 1216)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3277)
!3277 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3213, line: 109, flags: DIFlagFwdDecl)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3212, file: !3213, line: 111, baseType: !3279, size: 64, offset: 1280)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3213, line: 111, flags: DIFlagFwdDecl)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3212, file: !3213, line: 112, baseType: !596, offset: 1344)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3212, file: !3213, line: 114, baseType: !440, size: 8, offset: 1344)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !188, file: !60, line: 471, baseType: !3225, size: 64, offset: 832)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !188, file: !60, line: 473, baseType: !107, size: 64, offset: 896)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !188, file: !60, line: 475, baseType: !107, size: 64, offset: 960)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !188, file: !60, line: 480, baseType: !135, size: 192, offset: 1024)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !188, file: !60, line: 484, baseType: !3288, size: 576, offset: 1216)
!3288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !60, line: 361, size: 576, elements: !3289)
!3289 = !{!3290, !3291, !3292, !3293, !3294, !3295}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3288, file: !60, line: 362, baseType: !167, size: 128)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3288, file: !60, line: 363, baseType: !167, size: 128, offset: 128)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3288, file: !60, line: 364, baseType: !167, size: 128, offset: 256)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3288, file: !60, line: 365, baseType: !167, size: 128, offset: 384)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3288, file: !60, line: 366, baseType: !440, size: 8, offset: 512)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3288, file: !60, line: 367, baseType: !59, size: 32, offset: 544)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !188, file: !60, line: 485, baseType: !3297, size: 2304, offset: 1792)
!3297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !67, line: 565, size: 2304, elements: !3298)
!3298 = !{!3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3394, !3398}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3297, file: !67, line: 566, baseType: !3250, size: 32)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3297, file: !67, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3297, file: !67, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3297, file: !67, line: 569, baseType: !440, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3297, file: !67, line: 570, baseType: !440, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3297, file: !67, line: 571, baseType: !440, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3297, file: !67, line: 572, baseType: !440, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3297, file: !67, line: 573, baseType: !440, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3297, file: !67, line: 574, baseType: !440, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3297, file: !67, line: 575, baseType: !440, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3297, file: !67, line: 576, baseType: !440, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3297, file: !67, line: 577, baseType: !370, size: 32, offset: 64)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3297, file: !67, line: 578, baseType: !151, offset: 96)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3297, file: !67, line: 580, baseType: !167, size: 128, offset: 128)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3297, file: !67, line: 581, baseType: !1344, size: 192, offset: 256)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3297, file: !67, line: 582, baseType: !3315, size: 64, offset: 448)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3317, line: 43, size: 1472, elements: !3318)
!3317 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3318 = !{!3319, !3320, !3321, !3322, !3323, !3326, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3316, file: !3317, line: 44, baseType: !120, size: 64)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3316, file: !3317, line: 45, baseType: !106, size: 32, offset: 64)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3316, file: !3317, line: 46, baseType: !167, size: 128, offset: 128)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3316, file: !3317, line: 47, baseType: !151, offset: 256)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3316, file: !3317, line: 48, baseType: !3324, size: 64, offset: 256)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !67, line: 533, flags: DIFlagFwdDecl)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3316, file: !3317, line: 49, baseType: !3327, size: 320, offset: 320)
!3327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3328, line: 11, size: 320, elements: !3329)
!3328 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3329 = !{!3330, !3331, !3332, !3337}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3327, file: !3328, line: 16, baseType: !590, size: 128)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3327, file: !3328, line: 17, baseType: !111, size: 64, offset: 128)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3327, file: !3328, line: 18, baseType: !3333, size: 64, offset: 192)
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = !DISubroutineType(types: !3335)
!3335 = !{null, !3336}
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3327, file: !3328, line: 19, baseType: !370, size: 32, offset: 256)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3316, file: !3317, line: 50, baseType: !111, size: 64, offset: 640)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3316, file: !3317, line: 51, baseType: !1142, size: 64, offset: 704)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3316, file: !3317, line: 52, baseType: !1142, size: 64, offset: 768)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3316, file: !3317, line: 53, baseType: !1142, size: 64, offset: 832)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3316, file: !3317, line: 54, baseType: !1142, size: 64, offset: 896)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3316, file: !3317, line: 55, baseType: !1142, size: 64, offset: 960)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3316, file: !3317, line: 56, baseType: !111, size: 64, offset: 1024)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3316, file: !3317, line: 57, baseType: !111, size: 64, offset: 1088)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3316, file: !3317, line: 58, baseType: !111, size: 64, offset: 1152)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3316, file: !3317, line: 59, baseType: !111, size: 64, offset: 1216)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3316, file: !3317, line: 60, baseType: !111, size: 64, offset: 1280)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3316, file: !3317, line: 61, baseType: !187, size: 64, offset: 1344)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3316, file: !3317, line: 62, baseType: !440, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3316, file: !3317, line: 63, baseType: !440, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3297, file: !67, line: 583, baseType: !440, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3297, file: !67, line: 584, baseType: !440, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3297, file: !67, line: 585, baseType: !440, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3297, file: !67, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3297, file: !67, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3297, file: !67, line: 592, baseType: !1134, size: 512, offset: 576)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3297, file: !67, line: 593, baseType: !374, size: 64, offset: 1088)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3297, file: !67, line: 594, baseType: !1800, size: 256, offset: 1152)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3297, file: !67, line: 595, baseType: !1323, size: 128, offset: 1408)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3297, file: !67, line: 596, baseType: !3324, size: 64, offset: 1536)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3297, file: !67, line: 597, baseType: !698, size: 32, offset: 1600)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3297, file: !67, line: 598, baseType: !698, size: 32, offset: 1632)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3297, file: !67, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3297, file: !67, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3297, file: !67, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3297, file: !67, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3297, file: !67, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3297, file: !67, line: 604, baseType: !440, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3297, file: !67, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3297, file: !67, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3297, file: !67, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3297, file: !67, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3297, file: !67, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3297, file: !67, line: 610, baseType: !7, size: 32, offset: 1696)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3297, file: !67, line: 611, baseType: !66, size: 32, offset: 1728)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3297, file: !67, line: 612, baseType: !74, size: 32, offset: 1760)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3297, file: !67, line: 613, baseType: !106, size: 32, offset: 1792)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3297, file: !67, line: 614, baseType: !106, size: 32, offset: 1824)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3297, file: !67, line: 615, baseType: !374, size: 64, offset: 1856)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3297, file: !67, line: 616, baseType: !374, size: 64, offset: 1920)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3297, file: !67, line: 617, baseType: !374, size: 64, offset: 1984)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3297, file: !67, line: 618, baseType: !374, size: 64, offset: 2048)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3297, file: !67, line: 620, baseType: !3385, size: 64, offset: 2112)
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !67, line: 536, size: 256, elements: !3387)
!3387 = !{!3388, !3389, !3390, !3391}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3386, file: !67, line: 537, baseType: !151)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3386, file: !67, line: 538, baseType: !7, size: 32)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3386, file: !67, line: 540, baseType: !167, size: 128, offset: 64)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3386, file: !67, line: 543, baseType: !3392, size: 64, offset: 192)
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !67, line: 534, flags: DIFlagFwdDecl)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3297, file: !67, line: 621, baseType: !3395, size: 64, offset: 2176)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{null, !187, !1286}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3297, file: !67, line: 622, baseType: !3399, size: 64, offset: 2240)
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !67, line: 622, flags: DIFlagFwdDecl)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !188, file: !60, line: 486, baseType: !3402, size: 64, offset: 4096)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !67, line: 642, size: 1792, elements: !3404)
!3404 = !{!3405, !3406, !3407, !3411, !3412, !3413}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3403, file: !67, line: 643, baseType: !3182, size: 1472)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3403, file: !67, line: 644, baseType: !3185, size: 64, offset: 1472)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3403, file: !67, line: 645, baseType: !3408, size: 64, offset: 1536)
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = !DISubroutineType(types: !3410)
!3410 = !{null, !187, !440}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3403, file: !67, line: 646, baseType: !3185, size: 64, offset: 1600)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3403, file: !67, line: 647, baseType: !3176, size: 64, offset: 1664)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3403, file: !67, line: 648, baseType: !3176, size: 64, offset: 1728)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !188, file: !60, line: 493, baseType: !3415, size: 64, offset: 4160)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !60, line: 493, flags: DIFlagFwdDecl)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !188, file: !60, line: 499, baseType: !167, size: 128, offset: 4224)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !188, file: !60, line: 502, baseType: !3419, size: 64, offset: 4352)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3421)
!3421 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !60, line: 502, flags: DIFlagFwdDecl)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !188, file: !60, line: 504, baseType: !3423, size: 64, offset: 4416)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !188, file: !60, line: 505, baseType: !374, size: 64, offset: 4480)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !188, file: !60, line: 510, baseType: !374, size: 64, offset: 4544)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !188, file: !60, line: 511, baseType: !3427, size: 64, offset: 4608)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3429)
!3429 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !60, line: 511, flags: DIFlagFwdDecl)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !188, file: !60, line: 513, baseType: !3431, size: 64, offset: 4672)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !60, line: 288, size: 128, elements: !3433)
!3433 = !{!3434, !3435}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3432, file: !60, line: 293, baseType: !7, size: 32)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3432, file: !60, line: 294, baseType: !111, size: 64, offset: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !188, file: !60, line: 515, baseType: !167, size: 128, offset: 4736)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !188, file: !60, line: 526, baseType: !3438, offset: 4864)
!3438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3439, line: 5, elements: !165)
!3439 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !188, file: !60, line: 528, baseType: !3441, size: 64, offset: 4864)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3443, line: 14, flags: DIFlagFwdDecl)
!3443 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !188, file: !60, line: 529, baseType: !3445, size: 64, offset: 4928)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3447, line: 17, size: 192, elements: !3448)
!3447 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3448 = !{!3449, !3450, !3533}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3446, file: !3447, line: 18, baseType: !3445, size: 64)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3446, file: !3447, line: 19, baseType: !3451, size: 64, offset: 64)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3453)
!3453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3447, line: 110, size: 1152, elements: !3454)
!3454 = !{!3455, !3459, !3463, !3469, !3475, !3479, !3483, !3488, !3492, !3493, !3497, !3501, !3505, !3516, !3517, !3518, !3519, !3529}
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3453, file: !3447, line: 111, baseType: !3456, size: 64)
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3457, size: 64)
!3457 = !DISubroutineType(types: !3458)
!3458 = !{!3445, !3445}
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3453, file: !3447, line: 112, baseType: !3460, size: 64, offset: 64)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{null, !3445}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3453, file: !3447, line: 113, baseType: !3464, size: 64, offset: 128)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = !DISubroutineType(types: !3466)
!3466 = !{!440, !3467}
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3446)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3453, file: !3447, line: 114, baseType: !3470, size: 64, offset: 192)
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3471, size: 64)
!3471 = !DISubroutineType(types: !3472)
!3472 = !{!1970, !3467, !3473}
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3453, file: !3447, line: 116, baseType: !3476, size: 64, offset: 256)
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3477 = !DISubroutineType(types: !3478)
!3478 = !{!440, !3467, !120}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3453, file: !3447, line: 118, baseType: !3480, size: 64, offset: 320)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DISubroutineType(types: !3482)
!3482 = !{!106, !3467, !120, !7, !107, !277}
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3453, file: !3447, line: 123, baseType: !3484, size: 64, offset: 384)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DISubroutineType(types: !3486)
!3486 = !{!106, !3467, !120, !3487, !277}
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3453, file: !3447, line: 126, baseType: !3489, size: 64, offset: 448)
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{!120, !3467}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3453, file: !3447, line: 127, baseType: !3489, size: 64, offset: 512)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3453, file: !3447, line: 128, baseType: !3494, size: 64, offset: 576)
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3495 = !DISubroutineType(types: !3496)
!3496 = !{!3445, !3467}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3453, file: !3447, line: 130, baseType: !3498, size: 64, offset: 640)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = !DISubroutineType(types: !3500)
!3500 = !{!3445, !3467, !3445}
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3453, file: !3447, line: 133, baseType: !3502, size: 64, offset: 704)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = !DISubroutineType(types: !3504)
!3504 = !{!3445, !3467, !120}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3453, file: !3447, line: 135, baseType: !3506, size: 64, offset: 768)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!106, !3467, !120, !120, !7, !7, !3509}
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3447, line: 43, size: 640, elements: !3511)
!3511 = !{!3512, !3513, !3514}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3510, file: !3447, line: 44, baseType: !3445, size: 64)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3510, file: !3447, line: 45, baseType: !7, size: 32, offset: 64)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3510, file: !3447, line: 46, baseType: !3515, size: 512, offset: 128)
!3515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !374, size: 512, elements: !1172)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3453, file: !3447, line: 140, baseType: !3498, size: 64, offset: 832)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3453, file: !3447, line: 143, baseType: !3494, size: 64, offset: 896)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3453, file: !3447, line: 145, baseType: !3456, size: 64, offset: 960)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3453, file: !3447, line: 146, baseType: !3520, size: 64, offset: 1024)
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = !DISubroutineType(types: !3522)
!3522 = !{!106, !3467, !3523}
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3524, size: 64)
!3524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3447, line: 29, size: 128, elements: !3525)
!3525 = !{!3526, !3527, !3528}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3524, file: !3447, line: 30, baseType: !7, size: 32)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3524, file: !3447, line: 31, baseType: !7, size: 32, offset: 32)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3524, file: !3447, line: 32, baseType: !3467, size: 64, offset: 64)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3453, file: !3447, line: 148, baseType: !3530, size: 64, offset: 1088)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = !DISubroutineType(types: !3532)
!3532 = !{!106, !3467, !187}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3446, file: !3447, line: 20, baseType: !187, size: 64, offset: 128)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !188, file: !60, line: 534, baseType: !463, size: 32, offset: 4992)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !188, file: !60, line: 535, baseType: !370, size: 32, offset: 5024)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !188, file: !60, line: 537, baseType: !151, offset: 5056)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !188, file: !60, line: 538, baseType: !167, size: 128, offset: 5056)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !188, file: !60, line: 540, baseType: !3539, size: 64, offset: 5184)
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3541, line: 54, size: 960, elements: !3542)
!3541 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3542 = !{!3543, !3544, !3545, !3546, !3547, !3548, !3549, !3553, !3557, !3558, !3559, !3560, !3564, !3568, !3569}
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3540, file: !3541, line: 55, baseType: !120, size: 64)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3540, file: !3541, line: 56, baseType: !581, size: 64, offset: 64)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3540, file: !3541, line: 58, baseType: !283, size: 64, offset: 128)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3540, file: !3541, line: 59, baseType: !283, size: 64, offset: 192)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3540, file: !3541, line: 60, baseType: !197, size: 64, offset: 256)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3540, file: !3541, line: 62, baseType: !3167, size: 64, offset: 320)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3540, file: !3541, line: 63, baseType: !3550, size: 64, offset: 384)
!3550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3551, size: 64)
!3551 = !DISubroutineType(types: !3552)
!3552 = !{!230, !187, !3174}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3540, file: !3541, line: 65, baseType: !3554, size: 64, offset: 448)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = !DISubroutineType(types: !3556)
!3556 = !{null, !3539}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3540, file: !3541, line: 66, baseType: !3176, size: 64, offset: 512)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3540, file: !3541, line: 68, baseType: !3185, size: 64, offset: 576)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3540, file: !3541, line: 70, baseType: !2971, size: 64, offset: 640)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3540, file: !3541, line: 71, baseType: !3561, size: 64, offset: 704)
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = !DISubroutineType(types: !3563)
!3563 = !{!1970, !187}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3540, file: !3541, line: 73, baseType: !3565, size: 64, offset: 768)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{null, !187, !3003, !3004}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3540, file: !3541, line: 75, baseType: !3180, size: 64, offset: 832)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3540, file: !3541, line: 77, baseType: !3279, size: 64, offset: 896)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !188, file: !60, line: 541, baseType: !283, size: 64, offset: 5248)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !188, file: !60, line: 543, baseType: !3176, size: 64, offset: 5312)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !188, file: !60, line: 544, baseType: !3573, size: 64, offset: 5376)
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64)
!3574 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !60, line: 45, flags: DIFlagFwdDecl)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !188, file: !60, line: 545, baseType: !3576, size: 64, offset: 5440)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !60, line: 47, flags: DIFlagFwdDecl)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !188, file: !60, line: 547, baseType: !440, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !188, file: !60, line: 548, baseType: !440, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !188, file: !60, line: 549, baseType: !440, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !188, file: !60, line: 550, baseType: !440, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "work_buf", scope: !129, file: !117, line: 63, baseType: !107, size: 64, offset: 512)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !129, file: !117, line: 64, baseType: !3584, size: 576, offset: 576)
!3584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regmap_format", file: !117, line: 30, size: 576, elements: !3585)
!3585 = !{!3586, !3587, !3588, !3589, !3590, !3594, !3598, !3599, !3603}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !3584, file: !117, line: 31, baseType: !277, size: 64)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "reg_bytes", scope: !3584, file: !117, line: 32, baseType: !277, size: 64, offset: 64)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "pad_bytes", scope: !3584, file: !117, line: 33, baseType: !277, size: 64, offset: 128)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "val_bytes", scope: !3584, file: !117, line: 34, baseType: !277, size: 64, offset: 192)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "format_write", scope: !3584, file: !117, line: 35, baseType: !3591, size: 64, offset: 256)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = !DISubroutineType(types: !3593)
!3593 = !{null, !128, !7, !7}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "format_reg", scope: !3584, file: !117, line: 37, baseType: !3595, size: 64, offset: 320)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{null, !107, !7, !7}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "format_val", scope: !3584, file: !117, line: 38, baseType: !3595, size: 64, offset: 384)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "parse_val", scope: !3584, file: !117, line: 39, baseType: !3600, size: 64, offset: 448)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = !DISubroutineType(types: !3602)
!3602 = !{!7, !1970}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "parse_inplace", scope: !3584, file: !117, line: 40, baseType: !179, size: 64, offset: 512)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !129, file: !117, line: 65, baseType: !3605, size: 64, offset: 1152)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3607)
!3607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regmap_bus", file: !81, line: 501, size: 896, elements: !3608)
!3608 = !{!3609, !3610, !3615, !3620, !3631, !3636, !3641, !3646, !3651, !3653, !3658, !3659, !3660, !3661, !3662}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "fast_io", scope: !3607, file: !81, line: 502, baseType: !440, size: 8)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3607, file: !81, line: 503, baseType: !3611, size: 64, offset: 64)
!3611 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_hw_write", file: !81, line: 445, baseType: !3612)
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3613, size: 64)
!3613 = !DISubroutineType(types: !3614)
!3614 = !{!106, !107, !1970, !277}
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "gather_write", scope: !3607, file: !81, line: 504, baseType: !3616, size: 64, offset: 128)
!3616 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_hw_gather_write", file: !81, line: 447, baseType: !3617)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = !DISubroutineType(types: !3619)
!3619 = !{!106, !107, !1970, !277, !1970, !277}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "async_write", scope: !3607, file: !81, line: 505, baseType: !3621, size: 64, offset: 192)
!3621 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_hw_async_write", file: !81, line: 450, baseType: !3622)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = !DISubroutineType(types: !3624)
!3624 = !{!106, !107, !1970, !277, !1970, !277, !3625}
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regmap_async", file: !117, line: 43, size: 256, elements: !3627)
!3627 = !{!3628, !3629, !3630}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3626, file: !117, line: 44, baseType: !167, size: 128)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3626, file: !117, line: 45, baseType: !128, size: 64, offset: 128)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "work_buf", scope: !3626, file: !117, line: 46, baseType: !107, size: 64, offset: 192)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "reg_write", scope: !3607, file: !81, line: 506, baseType: !3632, size: 64, offset: 256)
!3632 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_hw_reg_write", file: !81, line: 459, baseType: !3633)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{!106, !107, !7, !7}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "reg_update_bits", scope: !3607, file: !81, line: 507, baseType: !3637, size: 64, offset: 320)
!3637 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_hw_reg_update_bits", file: !81, line: 461, baseType: !3638)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DISubroutineType(types: !3640)
!3640 = !{!106, !107, !7, !7, !7}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3607, file: !81, line: 508, baseType: !3642, size: 64, offset: 384)
!3642 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_hw_read", file: !81, line: 454, baseType: !3643)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = !DISubroutineType(types: !3645)
!3645 = !{!106, !107, !1970, !277, !107, !277}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "reg_read", scope: !3607, file: !81, line: 509, baseType: !3647, size: 64, offset: 448)
!3647 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_hw_reg_read", file: !81, line: 457, baseType: !3648)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = !DISubroutineType(types: !3650)
!3650 = !{!106, !107, !7, !2465}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "free_context", scope: !3607, file: !81, line: 510, baseType: !3652, size: 64, offset: 512)
!3652 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_hw_free_context", file: !81, line: 464, baseType: !179)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "async_alloc", scope: !3607, file: !81, line: 511, baseType: !3654, size: 64, offset: 576)
!3654 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_hw_async_alloc", file: !81, line: 463, baseType: !3655)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DISubroutineType(types: !3657)
!3657 = !{!3625}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "read_flag_mask", scope: !3607, file: !81, line: 512, baseType: !1194, size: 8, offset: 640)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "reg_format_endian_default", scope: !3607, file: !81, line: 513, baseType: !80, size: 32, offset: 672)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "val_format_endian_default", scope: !3607, file: !81, line: 514, baseType: !80, size: 32, offset: 704)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "max_raw_read", scope: !3607, file: !81, line: 515, baseType: !277, size: 64, offset: 768)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "max_raw_write", scope: !3607, file: !81, line: 516, baseType: !277, size: 64, offset: 832)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "bus_context", scope: !129, file: !117, line: 66, baseType: !107, size: 64, offset: 1216)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !129, file: !117, line: 67, baseType: !120, size: 64, offset: 1280)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "async", scope: !129, file: !117, line: 69, baseType: !440, size: 8, offset: 1344)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "async_lock", scope: !129, file: !117, line: 70, baseType: !151, offset: 1352)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "async_waitq", scope: !129, file: !117, line: 71, baseType: !1323, size: 128, offset: 1408)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "async_list", scope: !129, file: !117, line: 72, baseType: !167, size: 128, offset: 1536)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "async_free", scope: !129, file: !117, line: 73, baseType: !167, size: 128, offset: 1664)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "async_ret", scope: !129, file: !117, line: 74, baseType: !106, size: 32, offset: 1792)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "max_register", scope: !129, file: !117, line: 89, baseType: !7, size: 32, offset: 1824)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "writeable_reg", scope: !129, file: !117, line: 90, baseType: !3673, size: 64, offset: 1856)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{!440, !187, !7}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "readable_reg", scope: !129, file: !117, line: 91, baseType: !3673, size: 64, offset: 1920)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_reg", scope: !129, file: !117, line: 92, baseType: !3673, size: 64, offset: 1984)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "precious_reg", scope: !129, file: !117, line: 93, baseType: !3673, size: 64, offset: 2048)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "writeable_noinc_reg", scope: !129, file: !117, line: 94, baseType: !3673, size: 64, offset: 2112)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "readable_noinc_reg", scope: !129, file: !117, line: 95, baseType: !3673, size: 64, offset: 2176)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "wr_table", scope: !129, file: !117, line: 96, baseType: !3682, size: 64, offset: 2240)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3684)
!3684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regmap_access_table", file: !81, line: 219, size: 256, elements: !3685)
!3685 = !{!3686, !3693, !3694, !3695}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "yes_ranges", scope: !3684, file: !81, line: 220, baseType: !3687, size: 64)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3689)
!3689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regmap_range", file: !81, line: 199, size: 64, elements: !3690)
!3690 = !{!3691, !3692}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "range_min", scope: !3689, file: !81, line: 200, baseType: !7, size: 32)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "range_max", scope: !3689, file: !81, line: 201, baseType: !7, size: 32, offset: 32)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "n_yes_ranges", scope: !3684, file: !81, line: 221, baseType: !7, size: 32, offset: 64)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "no_ranges", scope: !3684, file: !81, line: 222, baseType: !3687, size: 64, offset: 128)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "n_no_ranges", scope: !3684, file: !81, line: 223, baseType: !7, size: 32, offset: 192)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "rd_table", scope: !129, file: !117, line: 97, baseType: !3682, size: 64, offset: 2304)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_table", scope: !129, file: !117, line: 98, baseType: !3682, size: 64, offset: 2368)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "precious_table", scope: !129, file: !117, line: 99, baseType: !3682, size: 64, offset: 2432)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "wr_noinc_table", scope: !129, file: !117, line: 100, baseType: !3682, size: 64, offset: 2496)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "rd_noinc_table", scope: !129, file: !117, line: 101, baseType: !3682, size: 64, offset: 2560)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "reg_read", scope: !129, file: !117, line: 103, baseType: !3648, size: 64, offset: 2624)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "reg_write", scope: !129, file: !117, line: 104, baseType: !3633, size: 64, offset: 2688)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "reg_update_bits", scope: !129, file: !117, line: 105, baseType: !3638, size: 64, offset: 2752)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "defer_caching", scope: !129, file: !117, line: 108, baseType: !440, size: 8, offset: 2816)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "read_flag_mask", scope: !129, file: !117, line: 110, baseType: !111, size: 64, offset: 2880)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "write_flag_mask", scope: !129, file: !117, line: 111, baseType: !111, size: 64, offset: 2944)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "reg_shift", scope: !129, file: !117, line: 114, baseType: !106, size: 32, offset: 3008)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "reg_stride", scope: !129, file: !117, line: 115, baseType: !106, size: 32, offset: 3040)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "reg_stride_order", scope: !129, file: !117, line: 116, baseType: !106, size: 32, offset: 3072)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "cache_ops", scope: !129, file: !117, line: 119, baseType: !114, size: 64, offset: 3136)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "cache_type", scope: !129, file: !117, line: 120, baseType: !87, size: 32, offset: 3200)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "cache_size_raw", scope: !129, file: !117, line: 123, baseType: !7, size: 32, offset: 3232)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "cache_word_size", scope: !129, file: !117, line: 125, baseType: !7, size: 32, offset: 3264)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "num_reg_defaults", scope: !129, file: !117, line: 127, baseType: !7, size: 32, offset: 3296)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "num_reg_defaults_raw", scope: !129, file: !117, line: 129, baseType: !7, size: 32, offset: 3328)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "cache_only", scope: !129, file: !117, line: 132, baseType: !440, size: 8, offset: 3360)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "cache_bypass", scope: !129, file: !117, line: 134, baseType: !440, size: 8, offset: 3368)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "cache_free", scope: !129, file: !117, line: 136, baseType: !440, size: 8, offset: 3376)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "reg_defaults", scope: !129, file: !117, line: 138, baseType: !3720, size: 64, offset: 3392)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_default", file: !81, line: 56, size: 64, elements: !3722)
!3722 = !{!3723, !3724}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !3721, file: !81, line: 57, baseType: !7, size: 32)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !3721, file: !81, line: 58, baseType: !7, size: 32, offset: 32)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "reg_defaults_raw", scope: !129, file: !117, line: 139, baseType: !1970, size: 64, offset: 3456)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !129, file: !117, line: 140, baseType: !107, size: 64, offset: 3520)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "cache_dirty", scope: !129, file: !117, line: 142, baseType: !440, size: 8, offset: 3584)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "no_sync_defaults", scope: !129, file: !117, line: 144, baseType: !440, size: 8, offset: 3592)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "patch", scope: !129, file: !117, line: 146, baseType: !3730, size: 64, offset: 3648)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_sequence", file: !81, line: 71, size: 96, elements: !3732)
!3732 = !{!3733, !3734, !3735}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !3731, file: !81, line: 72, baseType: !7, size: 32)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !3731, file: !81, line: 73, baseType: !7, size: 32, offset: 32)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "delay_us", scope: !3731, file: !81, line: 74, baseType: !7, size: 32, offset: 64)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "patch_regs", scope: !129, file: !117, line: 147, baseType: !106, size: 32, offset: 3712)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "use_single_read", scope: !129, file: !117, line: 150, baseType: !440, size: 8, offset: 3744)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "use_single_write", scope: !129, file: !117, line: 152, baseType: !440, size: 8, offset: 3752)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "can_multi_write", scope: !129, file: !117, line: 154, baseType: !440, size: 8, offset: 3760)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "max_raw_read", scope: !129, file: !117, line: 157, baseType: !277, size: 64, offset: 3776)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "max_raw_write", scope: !129, file: !117, line: 158, baseType: !277, size: 64, offset: 3840)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "range_tree", scope: !129, file: !117, line: 160, baseType: !707, size: 64, offset: 3904)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "selector_work_buf", scope: !129, file: !117, line: 161, baseType: !107, size: 64, offset: 3968)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "hwlock", scope: !129, file: !117, line: 163, baseType: !3745, size: 64, offset: 4032)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = !DICompositeType(tag: DW_TAG_structure_type, name: "hwspinlock", file: !117, line: 163, flags: DIFlagFwdDecl)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "can_sleep", scope: !129, file: !117, line: 166, baseType: !440, size: 8, offset: 4096)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !116, file: !117, line: 173, baseType: !125, size: 64, offset: 192)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !116, file: !117, line: 177, baseType: !3750, size: 64, offset: 256)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DISubroutineType(types: !3752)
!3752 = !{!106, !128, !7, !2465}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !116, file: !117, line: 178, baseType: !3754, size: 64, offset: 320)
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = !DISubroutineType(types: !3756)
!3756 = !{!106, !128, !7, !7}
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !116, file: !117, line: 179, baseType: !3754, size: 64, offset: 384)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "drop", scope: !116, file: !117, line: 180, baseType: !3754, size: 64, offset: 448)
!3759 = !{i32 7, !"Dwarf Version", i32 4}
!3760 = !{i32 2, !"Debug Info Version", i32 3}
!3761 = !{i32 1, !"wchar_size", i32 2}
!3762 = !{i32 1, !"Code Model", i32 2}
!3763 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!3764 = distinct !DISubprogram(name: "regcache_init", scope: !3, file: !3, line: 115, type: !3765, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !165)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!106, !128, !3767}
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3769)
!3769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regmap_config", file: !81, line: 347, size: 2176, elements: !3770)
!3770 = !{!3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3824, !3825, !3826, !3827, !3828}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3769, file: !81, line: 348, baseType: !120, size: 64)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "reg_bits", scope: !3769, file: !81, line: 350, baseType: !106, size: 32, offset: 64)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "reg_stride", scope: !3769, file: !81, line: 351, baseType: !106, size: 32, offset: 96)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "pad_bits", scope: !3769, file: !81, line: 352, baseType: !106, size: 32, offset: 128)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "val_bits", scope: !3769, file: !81, line: 353, baseType: !106, size: 32, offset: 160)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "writeable_reg", scope: !3769, file: !81, line: 355, baseType: !3673, size: 64, offset: 192)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "readable_reg", scope: !3769, file: !81, line: 356, baseType: !3673, size: 64, offset: 256)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_reg", scope: !3769, file: !81, line: 357, baseType: !3673, size: 64, offset: 320)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "precious_reg", scope: !3769, file: !81, line: 358, baseType: !3673, size: 64, offset: 384)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "writeable_noinc_reg", scope: !3769, file: !81, line: 359, baseType: !3673, size: 64, offset: 448)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "readable_noinc_reg", scope: !3769, file: !81, line: 360, baseType: !3673, size: 64, offset: 512)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "disable_locking", scope: !3769, file: !81, line: 362, baseType: !440, size: 8, offset: 576)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3769, file: !81, line: 363, baseType: !178, size: 64, offset: 640)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "unlock", scope: !3769, file: !81, line: 364, baseType: !183, size: 64, offset: 704)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "lock_arg", scope: !3769, file: !81, line: 365, baseType: !107, size: 64, offset: 768)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "reg_read", scope: !3769, file: !81, line: 367, baseType: !3648, size: 64, offset: 832)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "reg_write", scope: !3769, file: !81, line: 368, baseType: !3633, size: 64, offset: 896)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "fast_io", scope: !3769, file: !81, line: 370, baseType: !440, size: 8, offset: 960)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "max_register", scope: !3769, file: !81, line: 372, baseType: !7, size: 32, offset: 992)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "wr_table", scope: !3769, file: !81, line: 373, baseType: !3682, size: 64, offset: 1024)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "rd_table", scope: !3769, file: !81, line: 374, baseType: !3682, size: 64, offset: 1088)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_table", scope: !3769, file: !81, line: 375, baseType: !3682, size: 64, offset: 1152)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "precious_table", scope: !3769, file: !81, line: 376, baseType: !3682, size: 64, offset: 1216)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "wr_noinc_table", scope: !3769, file: !81, line: 377, baseType: !3682, size: 64, offset: 1280)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "rd_noinc_table", scope: !3769, file: !81, line: 378, baseType: !3682, size: 64, offset: 1344)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "reg_defaults", scope: !3769, file: !81, line: 379, baseType: !3797, size: 64, offset: 1408)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3721)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "num_reg_defaults", scope: !3769, file: !81, line: 380, baseType: !7, size: 32, offset: 1472)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "cache_type", scope: !3769, file: !81, line: 381, baseType: !87, size: 32, offset: 1504)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "reg_defaults_raw", scope: !3769, file: !81, line: 382, baseType: !1970, size: 64, offset: 1536)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "num_reg_defaults_raw", scope: !3769, file: !81, line: 383, baseType: !7, size: 32, offset: 1600)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "read_flag_mask", scope: !3769, file: !81, line: 385, baseType: !111, size: 64, offset: 1664)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "write_flag_mask", scope: !3769, file: !81, line: 386, baseType: !111, size: 64, offset: 1728)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "zero_flag_mask", scope: !3769, file: !81, line: 387, baseType: !440, size: 8, offset: 1792)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "use_single_read", scope: !3769, file: !81, line: 389, baseType: !440, size: 8, offset: 1800)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "use_single_write", scope: !3769, file: !81, line: 390, baseType: !440, size: 8, offset: 1808)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "can_multi_write", scope: !3769, file: !81, line: 391, baseType: !440, size: 8, offset: 1816)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "reg_format_endian", scope: !3769, file: !81, line: 393, baseType: !80, size: 32, offset: 1824)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "val_format_endian", scope: !3769, file: !81, line: 394, baseType: !80, size: 32, offset: 1856)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !3769, file: !81, line: 396, baseType: !3812, size: 64, offset: 1920)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3814)
!3814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regmap_range_cfg", file: !81, line: 426, size: 320, elements: !3815)
!3815 = !{!3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3814, file: !81, line: 427, baseType: !120, size: 64)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "range_min", scope: !3814, file: !81, line: 430, baseType: !7, size: 32, offset: 64)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "range_max", scope: !3814, file: !81, line: 431, baseType: !7, size: 32, offset: 96)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "selector_reg", scope: !3814, file: !81, line: 434, baseType: !7, size: 32, offset: 128)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "selector_mask", scope: !3814, file: !81, line: 435, baseType: !7, size: 32, offset: 160)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "selector_shift", scope: !3814, file: !81, line: 436, baseType: !106, size: 32, offset: 192)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "window_start", scope: !3814, file: !81, line: 439, baseType: !7, size: 32, offset: 224)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "window_len", scope: !3814, file: !81, line: 440, baseType: !7, size: 32, offset: 256)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "num_ranges", scope: !3769, file: !81, line: 397, baseType: !7, size: 32, offset: 1984)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "use_hwlock", scope: !3769, file: !81, line: 399, baseType: !440, size: 8, offset: 2016)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "hwlock_id", scope: !3769, file: !81, line: 400, baseType: !7, size: 32, offset: 2048)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "hwlock_mode", scope: !3769, file: !81, line: 401, baseType: !7, size: 32, offset: 2080)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "can_sleep", scope: !3769, file: !81, line: 403, baseType: !440, size: 8, offset: 2112)
!3829 = !DILocalVariable(name: "map", arg: 1, scope: !3764, file: !3, line: 115, type: !128)
!3830 = !DILocation(line: 115, column: 34, scope: !3764)
!3831 = !DILocalVariable(name: "config", arg: 2, scope: !3764, file: !3, line: 115, type: !3767)
!3832 = !DILocation(line: 115, column: 67, scope: !3764)
!3833 = !DILocalVariable(name: "ret", scope: !3764, file: !3, line: 117, type: !106)
!3834 = !DILocation(line: 117, column: 6, scope: !3764)
!3835 = !DILocalVariable(name: "i", scope: !3764, file: !3, line: 118, type: !106)
!3836 = !DILocation(line: 118, column: 6, scope: !3764)
!3837 = !DILocalVariable(name: "tmp_buf", scope: !3764, file: !3, line: 119, type: !107)
!3838 = !DILocation(line: 119, column: 8, scope: !3764)
!3839 = !DILocation(line: 121, column: 6, scope: !3840)
!3840 = distinct !DILexicalBlock(scope: !3764, file: !3, line: 121, column: 6)
!3841 = !DILocation(line: 121, column: 11, scope: !3840)
!3842 = !DILocation(line: 121, column: 22, scope: !3840)
!3843 = !DILocation(line: 121, column: 6, scope: !3764)
!3844 = !DILocation(line: 122, column: 7, scope: !3845)
!3845 = distinct !DILexicalBlock(scope: !3846, file: !3, line: 122, column: 7)
!3846 = distinct !DILexicalBlock(scope: !3840, file: !3, line: 121, column: 40)
!3847 = !DILocation(line: 122, column: 15, scope: !3845)
!3848 = !DILocation(line: 122, column: 28, scope: !3845)
!3849 = !DILocation(line: 122, column: 31, scope: !3845)
!3850 = !DILocation(line: 122, column: 39, scope: !3845)
!3851 = !DILocation(line: 122, column: 7, scope: !3846)
!3852 = !DILocation(line: 123, column: 4, scope: !3845)
!3853 = !DILocation(line: 126, column: 3, scope: !3846)
!3854 = !DILocation(line: 126, column: 8, scope: !3846)
!3855 = !DILocation(line: 126, column: 21, scope: !3846)
!3856 = !DILocation(line: 127, column: 3, scope: !3846)
!3857 = !DILocation(line: 130, column: 6, scope: !3858)
!3858 = distinct !DILexicalBlock(scope: !3764, file: !3, line: 130, column: 6)
!3859 = !DILocation(line: 130, column: 14, scope: !3858)
!3860 = !DILocation(line: 130, column: 27, scope: !3858)
!3861 = !DILocation(line: 130, column: 31, scope: !3858)
!3862 = !DILocation(line: 130, column: 39, scope: !3858)
!3863 = !DILocation(line: 130, column: 6, scope: !3764)
!3864 = !DILocation(line: 131, column: 3, scope: !3865)
!3865 = distinct !DILexicalBlock(scope: !3858, file: !3, line: 130, column: 57)
!3866 = !DILocation(line: 133, column: 3, scope: !3865)
!3867 = !DILocation(line: 136, column: 9, scope: !3868)
!3868 = distinct !DILexicalBlock(scope: !3764, file: !3, line: 136, column: 2)
!3869 = !DILocation(line: 136, column: 7, scope: !3868)
!3870 = !DILocation(line: 136, column: 14, scope: !3871)
!3871 = distinct !DILexicalBlock(scope: !3868, file: !3, line: 136, column: 2)
!3872 = !DILocation(line: 136, column: 18, scope: !3871)
!3873 = !DILocation(line: 136, column: 26, scope: !3871)
!3874 = !DILocation(line: 136, column: 16, scope: !3871)
!3875 = !DILocation(line: 136, column: 2, scope: !3868)
!3876 = !DILocation(line: 137, column: 7, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3871, file: !3, line: 137, column: 7)
!3878 = !DILocation(line: 137, column: 15, scope: !3877)
!3879 = !DILocation(line: 137, column: 28, scope: !3877)
!3880 = !DILocation(line: 137, column: 31, scope: !3877)
!3881 = !DILocation(line: 137, column: 37, scope: !3877)
!3882 = !DILocation(line: 137, column: 42, scope: !3877)
!3883 = !DILocation(line: 137, column: 35, scope: !3877)
!3884 = !DILocation(line: 137, column: 7, scope: !3871)
!3885 = !DILocation(line: 138, column: 4, scope: !3877)
!3886 = !DILocation(line: 136, column: 45, scope: !3871)
!3887 = !DILocation(line: 136, column: 2, scope: !3871)
!3888 = distinct !{!3888, !3875, !3889}
!3889 = !DILocation(line: 138, column: 12, scope: !3868)
!3890 = !DILocation(line: 140, column: 9, scope: !3891)
!3891 = distinct !DILexicalBlock(scope: !3764, file: !3, line: 140, column: 2)
!3892 = !DILocation(line: 140, column: 7, scope: !3891)
!3893 = !DILocation(line: 140, column: 14, scope: !3894)
!3894 = distinct !DILexicalBlock(scope: !3891, file: !3, line: 140, column: 2)
!3895 = !DILocation(line: 140, column: 16, scope: !3894)
!3896 = !DILocation(line: 140, column: 2, scope: !3891)
!3897 = !DILocation(line: 141, column: 19, scope: !3898)
!3898 = distinct !DILexicalBlock(scope: !3894, file: !3, line: 141, column: 7)
!3899 = !DILocation(line: 141, column: 7, scope: !3898)
!3900 = !DILocation(line: 141, column: 23, scope: !3898)
!3901 = !DILocation(line: 141, column: 31, scope: !3898)
!3902 = !DILocation(line: 141, column: 36, scope: !3898)
!3903 = !DILocation(line: 141, column: 28, scope: !3898)
!3904 = !DILocation(line: 141, column: 7, scope: !3894)
!3905 = !DILocation(line: 142, column: 4, scope: !3898)
!3906 = !DILocation(line: 140, column: 44, scope: !3894)
!3907 = !DILocation(line: 140, column: 2, scope: !3894)
!3908 = distinct !{!3908, !3896, !3909}
!3909 = !DILocation(line: 142, column: 4, scope: !3891)
!3910 = !DILocation(line: 144, column: 6, scope: !3911)
!3911 = distinct !DILexicalBlock(scope: !3764, file: !3, line: 144, column: 6)
!3912 = !DILocation(line: 144, column: 8, scope: !3911)
!3913 = !DILocation(line: 144, column: 6, scope: !3764)
!3914 = !DILocation(line: 145, column: 3, scope: !3915)
!3915 = distinct !DILexicalBlock(scope: !3911, file: !3, line: 144, column: 36)
!3916 = !DILocation(line: 147, column: 3, scope: !3915)
!3917 = !DILocation(line: 150, column: 26, scope: !3764)
!3918 = !DILocation(line: 150, column: 34, scope: !3764)
!3919 = !DILocation(line: 150, column: 2, scope: !3764)
!3920 = !DILocation(line: 150, column: 7, scope: !3764)
!3921 = !DILocation(line: 150, column: 24, scope: !3764)
!3922 = !DILocation(line: 151, column: 30, scope: !3764)
!3923 = !DILocation(line: 151, column: 38, scope: !3764)
!3924 = !DILocation(line: 151, column: 2, scope: !3764)
!3925 = !DILocation(line: 151, column: 7, scope: !3764)
!3926 = !DILocation(line: 151, column: 28, scope: !3764)
!3927 = !DILocation(line: 152, column: 26, scope: !3764)
!3928 = !DILocation(line: 152, column: 34, scope: !3764)
!3929 = !DILocation(line: 152, column: 2, scope: !3764)
!3930 = !DILocation(line: 152, column: 7, scope: !3764)
!3931 = !DILocation(line: 152, column: 24, scope: !3764)
!3932 = !DILocation(line: 153, column: 25, scope: !3764)
!3933 = !DILocation(line: 153, column: 2, scope: !3764)
!3934 = !DILocation(line: 153, column: 7, scope: !3764)
!3935 = !DILocation(line: 153, column: 23, scope: !3764)
!3936 = !DILocation(line: 154, column: 24, scope: !3764)
!3937 = !DILocation(line: 154, column: 29, scope: !3764)
!3938 = !DILocation(line: 154, column: 47, scope: !3764)
!3939 = !DILocation(line: 154, column: 55, scope: !3764)
!3940 = !DILocation(line: 154, column: 45, scope: !3764)
!3941 = !DILocation(line: 154, column: 2, scope: !3764)
!3942 = !DILocation(line: 154, column: 7, scope: !3764)
!3943 = !DILocation(line: 154, column: 22, scope: !3764)
!3944 = !DILocation(line: 156, column: 2, scope: !3764)
!3945 = !DILocation(line: 156, column: 7, scope: !3764)
!3946 = !DILocation(line: 156, column: 13, scope: !3764)
!3947 = !DILocation(line: 157, column: 31, scope: !3764)
!3948 = !DILocation(line: 157, column: 19, scope: !3764)
!3949 = !DILocation(line: 157, column: 2, scope: !3764)
!3950 = !DILocation(line: 157, column: 7, scope: !3764)
!3951 = !DILocation(line: 157, column: 17, scope: !3764)
!3952 = !DILocation(line: 159, column: 7, scope: !3953)
!3953 = distinct !DILexicalBlock(scope: !3764, file: !3, line: 159, column: 6)
!3954 = !DILocation(line: 159, column: 12, scope: !3953)
!3955 = !DILocation(line: 159, column: 23, scope: !3953)
!3956 = !DILocation(line: 159, column: 28, scope: !3953)
!3957 = !DILocation(line: 160, column: 7, scope: !3953)
!3958 = !DILocation(line: 160, column: 12, scope: !3953)
!3959 = !DILocation(line: 160, column: 23, scope: !3953)
!3960 = !DILocation(line: 160, column: 29, scope: !3953)
!3961 = !DILocation(line: 161, column: 7, scope: !3953)
!3962 = !DILocation(line: 161, column: 12, scope: !3953)
!3963 = !DILocation(line: 161, column: 23, scope: !3953)
!3964 = !DILocation(line: 159, column: 6, scope: !3764)
!3965 = !DILocation(line: 162, column: 3, scope: !3953)
!3966 = !DILocation(line: 168, column: 6, scope: !3967)
!3967 = distinct !DILexicalBlock(scope: !3764, file: !3, line: 168, column: 6)
!3968 = !DILocation(line: 168, column: 14, scope: !3967)
!3969 = !DILocation(line: 168, column: 6, scope: !3764)
!3970 = !DILocation(line: 169, column: 21, scope: !3971)
!3971 = distinct !DILexicalBlock(scope: !3967, file: !3, line: 168, column: 28)
!3972 = !DILocation(line: 169, column: 29, scope: !3971)
!3973 = !DILocation(line: 169, column: 43, scope: !3971)
!3974 = !DILocation(line: 169, column: 48, scope: !3971)
!3975 = !DILocation(line: 169, column: 65, scope: !3971)
!3976 = !DILocation(line: 169, column: 13, scope: !3971)
!3977 = !DILocation(line: 169, column: 11, scope: !3971)
!3978 = !DILocation(line: 171, column: 8, scope: !3979)
!3979 = distinct !DILexicalBlock(scope: !3971, file: !3, line: 171, column: 7)
!3980 = !DILocation(line: 171, column: 7, scope: !3971)
!3981 = !DILocation(line: 172, column: 4, scope: !3979)
!3982 = !DILocation(line: 173, column: 23, scope: !3971)
!3983 = !DILocation(line: 173, column: 3, scope: !3971)
!3984 = !DILocation(line: 173, column: 8, scope: !3971)
!3985 = !DILocation(line: 173, column: 21, scope: !3971)
!3986 = !DILocation(line: 174, column: 2, scope: !3971)
!3987 = !DILocation(line: 174, column: 13, scope: !3988)
!3988 = distinct !DILexicalBlock(scope: !3967, file: !3, line: 174, column: 13)
!3989 = !DILocation(line: 174, column: 18, scope: !3988)
!3990 = !DILocation(line: 174, column: 13, scope: !3967)
!3991 = !DILocation(line: 179, column: 26, scope: !3992)
!3992 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 174, column: 40)
!3993 = !DILocation(line: 179, column: 9, scope: !3992)
!3994 = !DILocation(line: 179, column: 7, scope: !3992)
!3995 = !DILocation(line: 180, column: 7, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3992, file: !3, line: 180, column: 7)
!3997 = !DILocation(line: 180, column: 11, scope: !3996)
!3998 = !DILocation(line: 180, column: 7, scope: !3992)
!3999 = !DILocation(line: 181, column: 11, scope: !3996)
!4000 = !DILocation(line: 181, column: 4, scope: !3996)
!4001 = !DILocation(line: 182, column: 7, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !3992, file: !3, line: 182, column: 7)
!4003 = !DILocation(line: 182, column: 12, scope: !4002)
!4004 = !DILocation(line: 182, column: 7, scope: !3992)
!4005 = !DILocation(line: 183, column: 4, scope: !4002)
!4006 = !DILocation(line: 184, column: 2, scope: !3992)
!4007 = !DILocation(line: 186, column: 7, scope: !4008)
!4008 = distinct !DILexicalBlock(scope: !3764, file: !3, line: 186, column: 6)
!4009 = !DILocation(line: 186, column: 12, scope: !4008)
!4010 = !DILocation(line: 186, column: 6, scope: !3764)
!4011 = !DILocation(line: 187, column: 23, scope: !4008)
!4012 = !DILocation(line: 187, column: 28, scope: !4008)
!4013 = !DILocation(line: 187, column: 3, scope: !4008)
!4014 = !DILocation(line: 187, column: 8, scope: !4008)
!4015 = !DILocation(line: 187, column: 21, scope: !4008)
!4016 = !DILocation(line: 189, column: 6, scope: !4017)
!4017 = distinct !DILexicalBlock(scope: !3764, file: !3, line: 189, column: 6)
!4018 = !DILocation(line: 189, column: 11, scope: !4017)
!4019 = !DILocation(line: 189, column: 22, scope: !4017)
!4020 = !DILocation(line: 189, column: 6, scope: !3764)
!4021 = !DILocation(line: 192, column: 9, scope: !4022)
!4022 = distinct !DILexicalBlock(scope: !4017, file: !3, line: 189, column: 28)
!4023 = !DILocation(line: 192, column: 14, scope: !4022)
!4024 = !DILocation(line: 192, column: 25, scope: !4022)
!4025 = !DILocation(line: 192, column: 30, scope: !4022)
!4026 = !DILocation(line: 192, column: 7, scope: !4022)
!4027 = !DILocation(line: 193, column: 7, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !4022, file: !3, line: 193, column: 7)
!4029 = !DILocation(line: 193, column: 7, scope: !4022)
!4030 = !DILocation(line: 194, column: 4, scope: !4028)
!4031 = !DILocation(line: 195, column: 2, scope: !4022)
!4032 = !DILocation(line: 196, column: 2, scope: !3764)
!4033 = !DILabel(scope: !3764, name: "err_free", file: !3, line: 198)
!4034 = !DILocation(line: 198, column: 1, scope: !3764)
!4035 = !DILocation(line: 199, column: 8, scope: !3764)
!4036 = !DILocation(line: 199, column: 13, scope: !3764)
!4037 = !DILocation(line: 199, column: 2, scope: !3764)
!4038 = !DILocation(line: 200, column: 6, scope: !4039)
!4039 = distinct !DILexicalBlock(scope: !3764, file: !3, line: 200, column: 6)
!4040 = !DILocation(line: 200, column: 11, scope: !4039)
!4041 = !DILocation(line: 200, column: 6, scope: !3764)
!4042 = !DILocation(line: 201, column: 9, scope: !4039)
!4043 = !DILocation(line: 201, column: 14, scope: !4039)
!4044 = !DILocation(line: 201, column: 3, scope: !4039)
!4045 = !DILocation(line: 203, column: 9, scope: !3764)
!4046 = !DILocation(line: 203, column: 2, scope: !3764)
!4047 = !DILocation(line: 204, column: 1, scope: !3764)
!4048 = distinct !DISubprogram(name: "regcache_hw_init", scope: !3, file: !3, line: 26, type: !126, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!4049 = !DILocalVariable(name: "s", arg: 1, scope: !4050, file: !99, line: 445, type: !879)
!4050 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !99, file: !99, line: 445, type: !4051, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!4051 = !DISubroutineType(types: !4052)
!4052 = !{!107, !879, !108, !277}
!4053 = !DILocation(line: 445, column: 72, scope: !4050, inlinedAt: !4054)
!4054 = distinct !DILocation(line: 552, column: 10, scope: !4055, inlinedAt: !4060)
!4055 = distinct !DILexicalBlock(scope: !4056, file: !99, line: 540, column: 34)
!4056 = distinct !DILexicalBlock(scope: !4057, file: !99, line: 540, column: 6)
!4057 = distinct !DISubprogram(name: "kmalloc", scope: !99, file: !99, line: 538, type: !4058, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{!107, !277, !108}
!4060 = distinct !DILocation(line: 61, column: 13, scope: !4061)
!4061 = distinct !DILexicalBlock(scope: !4062, file: !3, line: 55, column: 30)
!4062 = distinct !DILexicalBlock(scope: !4048, file: !3, line: 55, column: 6)
!4063 = !DILocalVariable(name: "flags", arg: 2, scope: !4050, file: !99, line: 446, type: !108)
!4064 = !DILocation(line: 446, column: 9, scope: !4050, inlinedAt: !4054)
!4065 = !DILocalVariable(name: "size", arg: 3, scope: !4050, file: !99, line: 446, type: !277)
!4066 = !DILocation(line: 446, column: 23, scope: !4050, inlinedAt: !4054)
!4067 = !DILocalVariable(name: "ret", scope: !4050, file: !99, line: 448, type: !107)
!4068 = !DILocation(line: 448, column: 8, scope: !4050, inlinedAt: !4054)
!4069 = !DILocalVariable(name: "flags", arg: 1, scope: !4070, file: !99, line: 318, type: !108)
!4070 = distinct !DISubprogram(name: "kmalloc_type", scope: !99, file: !99, line: 318, type: !4071, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!4071 = !DISubroutineType(types: !4072)
!4072 = !{!98, !108}
!4073 = !DILocation(line: 318, column: 67, scope: !4070, inlinedAt: !4074)
!4074 = distinct !DILocation(line: 553, column: 20, scope: !4055, inlinedAt: !4060)
!4075 = !DILocalVariable(name: "size", arg: 1, scope: !4076, file: !99, line: 346, type: !277)
!4076 = distinct !DISubprogram(name: "kmalloc_index", scope: !99, file: !99, line: 346, type: !4077, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!4077 = !DISubroutineType(types: !4078)
!4078 = !{!7, !277}
!4079 = !DILocation(line: 346, column: 58, scope: !4076, inlinedAt: !4080)
!4080 = distinct !DILocation(line: 547, column: 11, scope: !4055, inlinedAt: !4060)
!4081 = !DILocalVariable(name: "size", arg: 1, scope: !4082, file: !99, line: 472, type: !277)
!4082 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !99, file: !99, line: 472, type: !4083, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!4083 = !DISubroutineType(types: !4084)
!4084 = !{!107, !277, !108, !7}
!4085 = !DILocation(line: 472, column: 28, scope: !4082, inlinedAt: !4086)
!4086 = distinct !DILocation(line: 481, column: 9, scope: !4087, inlinedAt: !4088)
!4087 = distinct !DISubprogram(name: "kmalloc_large", scope: !99, file: !99, line: 478, type: !4058, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!4088 = distinct !DILocation(line: 545, column: 11, scope: !4089, inlinedAt: !4060)
!4089 = distinct !DILexicalBlock(scope: !4055, file: !99, line: 544, column: 7)
!4090 = !DILocalVariable(name: "flags", arg: 2, scope: !4082, file: !99, line: 472, type: !108)
!4091 = !DILocation(line: 472, column: 40, scope: !4082, inlinedAt: !4086)
!4092 = !DILocalVariable(name: "order", arg: 3, scope: !4082, file: !99, line: 472, type: !7)
!4093 = !DILocation(line: 472, column: 60, scope: !4082, inlinedAt: !4086)
!4094 = !DILocalVariable(name: "size", arg: 1, scope: !4087, file: !99, line: 478, type: !277)
!4095 = !DILocation(line: 478, column: 51, scope: !4087, inlinedAt: !4088)
!4096 = !DILocalVariable(name: "flags", arg: 2, scope: !4087, file: !99, line: 478, type: !108)
!4097 = !DILocation(line: 478, column: 63, scope: !4087, inlinedAt: !4088)
!4098 = !DILocalVariable(name: "order", scope: !4087, file: !99, line: 480, type: !7)
!4099 = !DILocation(line: 480, column: 15, scope: !4087, inlinedAt: !4088)
!4100 = !DILocalVariable(name: "size", arg: 1, scope: !4057, file: !99, line: 538, type: !277)
!4101 = !DILocation(line: 538, column: 45, scope: !4057, inlinedAt: !4060)
!4102 = !DILocalVariable(name: "flags", arg: 2, scope: !4057, file: !99, line: 538, type: !108)
!4103 = !DILocation(line: 538, column: 57, scope: !4057, inlinedAt: !4060)
!4104 = !DILocalVariable(name: "index", scope: !4055, file: !99, line: 542, type: !7)
!4105 = !DILocation(line: 542, column: 16, scope: !4055, inlinedAt: !4060)
!4106 = !DILocalVariable(name: "map", arg: 1, scope: !4048, file: !3, line: 26, type: !128)
!4107 = !DILocation(line: 26, column: 44, scope: !4048)
!4108 = !DILocalVariable(name: "i", scope: !4048, file: !3, line: 28, type: !106)
!4109 = !DILocation(line: 28, column: 6, scope: !4048)
!4110 = !DILocalVariable(name: "j", scope: !4048, file: !3, line: 28, type: !106)
!4111 = !DILocation(line: 28, column: 9, scope: !4048)
!4112 = !DILocalVariable(name: "ret", scope: !4048, file: !3, line: 29, type: !106)
!4113 = !DILocation(line: 29, column: 6, scope: !4048)
!4114 = !DILocalVariable(name: "count", scope: !4048, file: !3, line: 30, type: !106)
!4115 = !DILocation(line: 30, column: 6, scope: !4048)
!4116 = !DILocalVariable(name: "reg", scope: !4048, file: !3, line: 31, type: !7)
!4117 = !DILocation(line: 31, column: 15, scope: !4048)
!4118 = !DILocalVariable(name: "val", scope: !4048, file: !3, line: 31, type: !7)
!4119 = !DILocation(line: 31, column: 20, scope: !4048)
!4120 = !DILocalVariable(name: "tmp_buf", scope: !4048, file: !3, line: 32, type: !107)
!4121 = !DILocation(line: 32, column: 8, scope: !4048)
!4122 = !DILocation(line: 34, column: 7, scope: !4123)
!4123 = distinct !DILexicalBlock(scope: !4048, file: !3, line: 34, column: 6)
!4124 = !DILocation(line: 34, column: 12, scope: !4123)
!4125 = !DILocation(line: 34, column: 6, scope: !4048)
!4126 = !DILocation(line: 35, column: 3, scope: !4123)
!4127 = !DILocation(line: 38, column: 13, scope: !4128)
!4128 = distinct !DILexicalBlock(scope: !4048, file: !3, line: 38, column: 2)
!4129 = !DILocation(line: 38, column: 20, scope: !4128)
!4130 = !DILocation(line: 38, column: 7, scope: !4128)
!4131 = !DILocation(line: 38, column: 25, scope: !4132)
!4132 = distinct !DILexicalBlock(scope: !4128, file: !3, line: 38, column: 2)
!4133 = !DILocation(line: 38, column: 29, scope: !4132)
!4134 = !DILocation(line: 38, column: 34, scope: !4132)
!4135 = !DILocation(line: 38, column: 27, scope: !4132)
!4136 = !DILocation(line: 38, column: 2, scope: !4128)
!4137 = !DILocation(line: 39, column: 23, scope: !4138)
!4138 = distinct !DILexicalBlock(scope: !4132, file: !3, line: 39, column: 7)
!4139 = !DILocation(line: 39, column: 28, scope: !4138)
!4140 = !DILocation(line: 39, column: 32, scope: !4138)
!4141 = !DILocation(line: 39, column: 37, scope: !4138)
!4142 = !DILocation(line: 39, column: 30, scope: !4138)
!4143 = !DILocation(line: 39, column: 7, scope: !4138)
!4144 = !DILocation(line: 39, column: 49, scope: !4138)
!4145 = !DILocation(line: 40, column: 24, scope: !4138)
!4146 = !DILocation(line: 40, column: 29, scope: !4138)
!4147 = !DILocation(line: 40, column: 33, scope: !4138)
!4148 = !DILocation(line: 40, column: 38, scope: !4138)
!4149 = !DILocation(line: 40, column: 31, scope: !4138)
!4150 = !DILocation(line: 40, column: 8, scope: !4138)
!4151 = !DILocation(line: 39, column: 7, scope: !4132)
!4152 = !DILocation(line: 41, column: 9, scope: !4138)
!4153 = !DILocation(line: 41, column: 4, scope: !4138)
!4154 = !DILocation(line: 40, column: 48, scope: !4138)
!4155 = !DILocation(line: 38, column: 57, scope: !4132)
!4156 = !DILocation(line: 38, column: 2, scope: !4132)
!4157 = distinct !{!4157, !4136, !4158}
!4158 = !DILocation(line: 41, column: 9, scope: !4128)
!4159 = !DILocation(line: 44, column: 7, scope: !4160)
!4160 = distinct !DILexicalBlock(scope: !4048, file: !3, line: 44, column: 6)
!4161 = !DILocation(line: 44, column: 6, scope: !4048)
!4162 = !DILocation(line: 45, column: 3, scope: !4163)
!4163 = distinct !DILexicalBlock(scope: !4160, file: !3, line: 44, column: 14)
!4164 = !DILocation(line: 45, column: 8, scope: !4163)
!4165 = !DILocation(line: 45, column: 21, scope: !4163)
!4166 = !DILocation(line: 46, column: 3, scope: !4163)
!4167 = !DILocation(line: 49, column: 26, scope: !4048)
!4168 = !DILocation(line: 49, column: 2, scope: !4048)
!4169 = !DILocation(line: 49, column: 7, scope: !4048)
!4170 = !DILocation(line: 49, column: 24, scope: !4048)
!4171 = !DILocation(line: 50, column: 36, scope: !4048)
!4172 = !DILocation(line: 50, column: 22, scope: !4048)
!4173 = !DILocation(line: 50, column: 2, scope: !4048)
!4174 = !DILocation(line: 50, column: 7, scope: !4048)
!4175 = !DILocation(line: 50, column: 20, scope: !4048)
!4176 = !DILocation(line: 52, column: 7, scope: !4177)
!4177 = distinct !DILexicalBlock(scope: !4048, file: !3, line: 52, column: 6)
!4178 = !DILocation(line: 52, column: 12, scope: !4177)
!4179 = !DILocation(line: 52, column: 6, scope: !4048)
!4180 = !DILocation(line: 53, column: 3, scope: !4177)
!4181 = !DILocation(line: 55, column: 7, scope: !4062)
!4182 = !DILocation(line: 55, column: 12, scope: !4062)
!4183 = !DILocation(line: 55, column: 6, scope: !4048)
!4184 = !DILocalVariable(name: "cache_bypass", scope: !4061, file: !3, line: 56, type: !440)
!4185 = !DILocation(line: 56, column: 8, scope: !4061)
!4186 = !DILocation(line: 56, column: 23, scope: !4061)
!4187 = !DILocation(line: 56, column: 28, scope: !4061)
!4188 = !DILocation(line: 57, column: 3, scope: !4061)
!4189 = !DILocation(line: 60, column: 3, scope: !4061)
!4190 = !DILocation(line: 60, column: 8, scope: !4061)
!4191 = !DILocation(line: 60, column: 21, scope: !4061)
!4192 = !DILocation(line: 61, column: 21, scope: !4061)
!4193 = !DILocation(line: 61, column: 26, scope: !4061)
!4194 = !DILocation(line: 540, column: 27, scope: !4056, inlinedAt: !4060)
!4195 = !DILocation(line: 540, column: 6, scope: !4056, inlinedAt: !4060)
!4196 = !DILocation(line: 540, column: 6, scope: !4057, inlinedAt: !4060)
!4197 = !DILocation(line: 544, column: 7, scope: !4089, inlinedAt: !4060)
!4198 = !DILocation(line: 544, column: 12, scope: !4089, inlinedAt: !4060)
!4199 = !DILocation(line: 544, column: 7, scope: !4055, inlinedAt: !4060)
!4200 = !DILocation(line: 545, column: 25, scope: !4089, inlinedAt: !4060)
!4201 = !DILocation(line: 545, column: 31, scope: !4089, inlinedAt: !4060)
!4202 = !DILocation(line: 480, column: 33, scope: !4087, inlinedAt: !4088)
!4203 = !DILocation(line: 480, column: 23, scope: !4087, inlinedAt: !4088)
!4204 = !DILocation(line: 481, column: 29, scope: !4087, inlinedAt: !4088)
!4205 = !DILocation(line: 481, column: 35, scope: !4087, inlinedAt: !4088)
!4206 = !DILocation(line: 481, column: 42, scope: !4087, inlinedAt: !4088)
!4207 = !DILocation(line: 474, column: 23, scope: !4082, inlinedAt: !4086)
!4208 = !DILocation(line: 474, column: 29, scope: !4082, inlinedAt: !4086)
!4209 = !DILocation(line: 474, column: 36, scope: !4082, inlinedAt: !4086)
!4210 = !DILocation(line: 474, column: 9, scope: !4082, inlinedAt: !4086)
!4211 = !DILocation(line: 545, column: 4, scope: !4089, inlinedAt: !4060)
!4212 = !DILocation(line: 547, column: 25, scope: !4055, inlinedAt: !4060)
!4213 = !DILocation(line: 348, column: 7, scope: !4214, inlinedAt: !4080)
!4214 = distinct !DILexicalBlock(scope: !4076, file: !99, line: 348, column: 6)
!4215 = !DILocation(line: 348, column: 6, scope: !4076, inlinedAt: !4080)
!4216 = !DILocation(line: 349, column: 3, scope: !4214, inlinedAt: !4080)
!4217 = !DILocation(line: 351, column: 6, scope: !4218, inlinedAt: !4080)
!4218 = distinct !DILexicalBlock(scope: !4076, file: !99, line: 351, column: 6)
!4219 = !DILocation(line: 351, column: 11, scope: !4218, inlinedAt: !4080)
!4220 = !DILocation(line: 351, column: 6, scope: !4076, inlinedAt: !4080)
!4221 = !DILocation(line: 352, column: 3, scope: !4218, inlinedAt: !4080)
!4222 = !DILocation(line: 354, column: 32, scope: !4223, inlinedAt: !4080)
!4223 = distinct !DILexicalBlock(scope: !4076, file: !99, line: 354, column: 6)
!4224 = !DILocation(line: 354, column: 37, scope: !4223, inlinedAt: !4080)
!4225 = !DILocation(line: 354, column: 42, scope: !4223, inlinedAt: !4080)
!4226 = !DILocation(line: 354, column: 45, scope: !4223, inlinedAt: !4080)
!4227 = !DILocation(line: 354, column: 50, scope: !4223, inlinedAt: !4080)
!4228 = !DILocation(line: 354, column: 6, scope: !4076, inlinedAt: !4080)
!4229 = !DILocation(line: 355, column: 3, scope: !4223, inlinedAt: !4080)
!4230 = !DILocation(line: 356, column: 32, scope: !4231, inlinedAt: !4080)
!4231 = distinct !DILexicalBlock(scope: !4076, file: !99, line: 356, column: 6)
!4232 = !DILocation(line: 356, column: 37, scope: !4231, inlinedAt: !4080)
!4233 = !DILocation(line: 356, column: 43, scope: !4231, inlinedAt: !4080)
!4234 = !DILocation(line: 356, column: 46, scope: !4231, inlinedAt: !4080)
!4235 = !DILocation(line: 356, column: 51, scope: !4231, inlinedAt: !4080)
!4236 = !DILocation(line: 356, column: 6, scope: !4076, inlinedAt: !4080)
!4237 = !DILocation(line: 357, column: 3, scope: !4231, inlinedAt: !4080)
!4238 = !DILocation(line: 358, column: 6, scope: !4239, inlinedAt: !4080)
!4239 = distinct !DILexicalBlock(scope: !4076, file: !99, line: 358, column: 6)
!4240 = !DILocation(line: 358, column: 11, scope: !4239, inlinedAt: !4080)
!4241 = !DILocation(line: 358, column: 6, scope: !4076, inlinedAt: !4080)
!4242 = !DILocation(line: 358, column: 26, scope: !4239, inlinedAt: !4080)
!4243 = !DILocation(line: 359, column: 6, scope: !4244, inlinedAt: !4080)
!4244 = distinct !DILexicalBlock(scope: !4076, file: !99, line: 359, column: 6)
!4245 = !DILocation(line: 359, column: 11, scope: !4244, inlinedAt: !4080)
!4246 = !DILocation(line: 359, column: 6, scope: !4076, inlinedAt: !4080)
!4247 = !DILocation(line: 359, column: 26, scope: !4244, inlinedAt: !4080)
!4248 = !DILocation(line: 360, column: 6, scope: !4249, inlinedAt: !4080)
!4249 = distinct !DILexicalBlock(scope: !4076, file: !99, line: 360, column: 6)
!4250 = !DILocation(line: 360, column: 11, scope: !4249, inlinedAt: !4080)
!4251 = !DILocation(line: 360, column: 6, scope: !4076, inlinedAt: !4080)
!4252 = !DILocation(line: 360, column: 26, scope: !4249, inlinedAt: !4080)
!4253 = !DILocation(line: 361, column: 6, scope: !4254, inlinedAt: !4080)
!4254 = distinct !DILexicalBlock(scope: !4076, file: !99, line: 361, column: 6)
!4255 = !DILocation(line: 361, column: 11, scope: !4254, inlinedAt: !4080)
!4256 = !DILocation(line: 361, column: 6, scope: !4076, inlinedAt: !4080)
!4257 = !DILocation(line: 361, column: 26, scope: !4254, inlinedAt: !4080)
!4258 = !DILocation(line: 362, column: 6, scope: !4259, inlinedAt: !4080)
!4259 = distinct !DILexicalBlock(scope: !4076, file: !99, line: 362, column: 6)
!4260 = !DILocation(line: 362, column: 11, scope: !4259, inlinedAt: !4080)
!4261 = !DILocation(line: 362, column: 6, scope: !4076, inlinedAt: !4080)
!4262 = !DILocation(line: 362, column: 26, scope: !4259, inlinedAt: !4080)
!4263 = !DILocation(line: 363, column: 6, scope: !4264, inlinedAt: !4080)
!4264 = distinct !DILexicalBlock(scope: !4076, file: !99, line: 363, column: 6)
!4265 = !DILocation(line: 363, column: 11, scope: !4264, inlinedAt: !4080)
!4266 = !DILocation(line: 363, column: 6, scope: !4076, inlinedAt: !4080)
!4267 = !DILocation(line: 363, column: 26, scope: !4264, inlinedAt: !4080)
!4268 = !DILocation(line: 364, column: 6, scope: !4269, inlinedAt: !4080)
!4269 = distinct !DILexicalBlock(scope: !4076, file: !99, line: 364, column: 6)
!4270 = !DILocation(line: 364, column: 11, scope: !4269, inlinedAt: !4080)
!4271 = !DILocation(line: 364, column: 6, scope: !4076, inlinedAt: !4080)
!4272 = !DILocation(line: 364, column: 26, scope: !4269, inlinedAt: !4080)
!4273 = !DILocation(line: 365, column: 6, scope: !4274, inlinedAt: !4080)
!4274 = distinct !DILexicalBlock(scope: !4076, file: !99, line: 365, column: 6)
!4275 = !DILocation(line: 365, column: 11, scope: !4274, inlinedAt: !4080)
!4276 = !DILocation(line: 365, column: 6, scope: !4076, inlinedAt: !4080)
!4277 = !DILocation(line: 365, column: 26, scope: !4274, inlinedAt: !4080)
!4278 = !DILocation(line: 366, column: 6, scope: !4279, inlinedAt: !4080)
!4279 = distinct !DILexicalBlock(scope: !4076, file: !99, line: 366, column: 6)
!4280 = !DILocation(line: 366, column: 11, scope: !4279, inlinedAt: !4080)
!4281 = !DILocation(line: 366, column: 6, scope: !4076, inlinedAt: !4080)
!4282 = !DILocation(line: 366, column: 26, scope: !4279, inlinedAt: !4080)
!4283 = !DILocation(line: 367, column: 6, scope: !4284, inlinedAt: !4080)
!4284 = distinct !DILexicalBlock(scope: !4076, file: !99, line: 367, column: 6)
!4285 = !DILocation(line: 367, column: 11, scope: !4284, inlinedAt: !4080)
!4286 = !DILocation(line: 367, column: 6, scope: !4076, inlinedAt: !4080)
!4287 = !DILocation(line: 367, column: 26, scope: !4284, inlinedAt: !4080)
!4288 = !DILocation(line: 368, column: 6, scope: !4289, inlinedAt: !4080)
!4289 = distinct !DILexicalBlock(scope: !4076, file: !99, line: 368, column: 6)
!4290 = !DILocation(line: 368, column: 11, scope: !4289, inlinedAt: !4080)
!4291 = !DILocation(line: 368, column: 6, scope: !4076, inlinedAt: !4080)
!4292 = !DILocation(line: 368, column: 26, scope: !4289, inlinedAt: !4080)
!4293 = !DILocation(line: 369, column: 6, scope: !4294, inlinedAt: !4080)
!4294 = distinct !DILexicalBlock(scope: !4076, file: !99, line: 369, column: 6)
!4295 = !DILocation(line: 369, column: 11, scope: !4294, inlinedAt: !4080)
!4296 = !DILocation(line: 369, column: 6, scope: !4076, inlinedAt: !4080)
!4297 = !DILocation(line: 369, column: 26, scope: !4294, inlinedAt: !4080)
!4298 = !DILocation(line: 370, column: 6, scope: !4299, inlinedAt: !4080)
!4299 = distinct !DILexicalBlock(scope: !4076, file: !99, line: 370, column: 6)
!4300 = !DILocation(line: 370, column: 11, scope: !4299, inlinedAt: !4080)
!4301 = !DILocation(line: 370, column: 6, scope: !4076, inlinedAt: !4080)
!4302 = !DILocation(line: 370, column: 26, scope: !4299, inlinedAt: !4080)
!4303 = !DILocation(line: 371, column: 6, scope: !4304, inlinedAt: !4080)
!4304 = distinct !DILexicalBlock(scope: !4076, file: !99, line: 371, column: 6)
!4305 = !DILocation(line: 371, column: 11, scope: !4304, inlinedAt: !4080)
!4306 = !DILocation(line: 371, column: 6, scope: !4076, inlinedAt: !4080)
!4307 = !DILocation(line: 371, column: 26, scope: !4304, inlinedAt: !4080)
!4308 = !DILocation(line: 372, column: 6, scope: !4309, inlinedAt: !4080)
!4309 = distinct !DILexicalBlock(scope: !4076, file: !99, line: 372, column: 6)
!4310 = !DILocation(line: 372, column: 11, scope: !4309, inlinedAt: !4080)
!4311 = !DILocation(line: 372, column: 6, scope: !4076, inlinedAt: !4080)
!4312 = !DILocation(line: 372, column: 26, scope: !4309, inlinedAt: !4080)
!4313 = !DILocation(line: 373, column: 6, scope: !4314, inlinedAt: !4080)
!4314 = distinct !DILexicalBlock(scope: !4076, file: !99, line: 373, column: 6)
!4315 = !DILocation(line: 373, column: 11, scope: !4314, inlinedAt: !4080)
!4316 = !DILocation(line: 373, column: 6, scope: !4076, inlinedAt: !4080)
!4317 = !DILocation(line: 373, column: 26, scope: !4314, inlinedAt: !4080)
!4318 = !DILocation(line: 374, column: 6, scope: !4319, inlinedAt: !4080)
!4319 = distinct !DILexicalBlock(scope: !4076, file: !99, line: 374, column: 6)
!4320 = !DILocation(line: 374, column: 11, scope: !4319, inlinedAt: !4080)
!4321 = !DILocation(line: 374, column: 6, scope: !4076, inlinedAt: !4080)
!4322 = !DILocation(line: 374, column: 26, scope: !4319, inlinedAt: !4080)
!4323 = !DILocation(line: 375, column: 6, scope: !4324, inlinedAt: !4080)
!4324 = distinct !DILexicalBlock(scope: !4076, file: !99, line: 375, column: 6)
!4325 = !DILocation(line: 375, column: 11, scope: !4324, inlinedAt: !4080)
!4326 = !DILocation(line: 375, column: 6, scope: !4076, inlinedAt: !4080)
!4327 = !DILocation(line: 375, column: 27, scope: !4324, inlinedAt: !4080)
!4328 = !DILocation(line: 376, column: 6, scope: !4329, inlinedAt: !4080)
!4329 = distinct !DILexicalBlock(scope: !4076, file: !99, line: 376, column: 6)
!4330 = !DILocation(line: 376, column: 11, scope: !4329, inlinedAt: !4080)
!4331 = !DILocation(line: 376, column: 6, scope: !4076, inlinedAt: !4080)
!4332 = !DILocation(line: 376, column: 32, scope: !4329, inlinedAt: !4080)
!4333 = !DILocation(line: 377, column: 6, scope: !4334, inlinedAt: !4080)
!4334 = distinct !DILexicalBlock(scope: !4076, file: !99, line: 377, column: 6)
!4335 = !DILocation(line: 377, column: 11, scope: !4334, inlinedAt: !4080)
!4336 = !DILocation(line: 377, column: 6, scope: !4076, inlinedAt: !4080)
!4337 = !DILocation(line: 377, column: 32, scope: !4334, inlinedAt: !4080)
!4338 = !DILocation(line: 378, column: 6, scope: !4339, inlinedAt: !4080)
!4339 = distinct !DILexicalBlock(scope: !4076, file: !99, line: 378, column: 6)
!4340 = !DILocation(line: 378, column: 11, scope: !4339, inlinedAt: !4080)
!4341 = !DILocation(line: 378, column: 6, scope: !4076, inlinedAt: !4080)
!4342 = !DILocation(line: 378, column: 32, scope: !4339, inlinedAt: !4080)
!4343 = !DILocation(line: 379, column: 6, scope: !4344, inlinedAt: !4080)
!4344 = distinct !DILexicalBlock(scope: !4076, file: !99, line: 379, column: 6)
!4345 = !DILocation(line: 379, column: 11, scope: !4344, inlinedAt: !4080)
!4346 = !DILocation(line: 379, column: 6, scope: !4076, inlinedAt: !4080)
!4347 = !DILocation(line: 379, column: 33, scope: !4344, inlinedAt: !4080)
!4348 = !DILocation(line: 380, column: 6, scope: !4349, inlinedAt: !4080)
!4349 = distinct !DILexicalBlock(scope: !4076, file: !99, line: 380, column: 6)
!4350 = !DILocation(line: 380, column: 11, scope: !4349, inlinedAt: !4080)
!4351 = !DILocation(line: 380, column: 6, scope: !4076, inlinedAt: !4080)
!4352 = !DILocation(line: 380, column: 33, scope: !4349, inlinedAt: !4080)
!4353 = !DILocation(line: 381, column: 6, scope: !4354, inlinedAt: !4080)
!4354 = distinct !DILexicalBlock(scope: !4076, file: !99, line: 381, column: 6)
!4355 = !DILocation(line: 381, column: 11, scope: !4354, inlinedAt: !4080)
!4356 = !DILocation(line: 381, column: 6, scope: !4076, inlinedAt: !4080)
!4357 = !DILocation(line: 381, column: 33, scope: !4354, inlinedAt: !4080)
!4358 = !DILocation(line: 382, column: 2, scope: !4359, inlinedAt: !4080)
!4359 = distinct !DILexicalBlock(scope: !4360, file: !99, line: 382, column: 2)
!4360 = distinct !DILexicalBlock(scope: !4076, file: !99, line: 382, column: 2)
!4361 = !{i32 -2143720083, i32 -2143720054, i32 -2143720008, i32 -2143719950, i32 -2143719896, i32 -2143719842, i32 -2143719787, i32 -2143719756}
!4362 = !DILocation(line: 382, column: 2, scope: !4363, inlinedAt: !4080)
!4363 = distinct !DILexicalBlock(scope: !4364, file: !99, line: 382, column: 2)
!4364 = distinct !DILexicalBlock(scope: !4360, file: !99, line: 382, column: 2)
!4365 = !{i32 -2143719313, i32 -2143719306, i32 -2143719252, i32 -2143719221, i32 -2143719191}
!4366 = !DILocation(line: 382, column: 2, scope: !4364, inlinedAt: !4080)
!4367 = !DILocation(line: 386, column: 1, scope: !4076, inlinedAt: !4080)
!4368 = !DILocation(line: 547, column: 9, scope: !4055, inlinedAt: !4060)
!4369 = !DILocation(line: 549, column: 8, scope: !4370, inlinedAt: !4060)
!4370 = distinct !DILexicalBlock(scope: !4055, file: !99, line: 549, column: 7)
!4371 = !DILocation(line: 549, column: 7, scope: !4055, inlinedAt: !4060)
!4372 = !DILocation(line: 550, column: 4, scope: !4370, inlinedAt: !4060)
!4373 = !DILocation(line: 553, column: 33, scope: !4055, inlinedAt: !4060)
!4374 = !DILocation(line: 325, column: 6, scope: !4375, inlinedAt: !4074)
!4375 = distinct !DILexicalBlock(scope: !4070, file: !99, line: 325, column: 6)
!4376 = !DILocation(line: 325, column: 6, scope: !4070, inlinedAt: !4074)
!4377 = !DILocation(line: 326, column: 3, scope: !4375, inlinedAt: !4074)
!4378 = !DILocation(line: 332, column: 9, scope: !4070, inlinedAt: !4074)
!4379 = !DILocation(line: 332, column: 15, scope: !4070, inlinedAt: !4074)
!4380 = !DILocation(line: 332, column: 2, scope: !4070, inlinedAt: !4074)
!4381 = !DILocation(line: 336, column: 1, scope: !4070, inlinedAt: !4074)
!4382 = !DILocation(line: 553, column: 5, scope: !4055, inlinedAt: !4060)
!4383 = !DILocation(line: 553, column: 41, scope: !4055, inlinedAt: !4060)
!4384 = !DILocation(line: 554, column: 5, scope: !4055, inlinedAt: !4060)
!4385 = !DILocation(line: 554, column: 12, scope: !4055, inlinedAt: !4060)
!4386 = !DILocation(line: 448, column: 31, scope: !4050, inlinedAt: !4054)
!4387 = !DILocation(line: 448, column: 34, scope: !4050, inlinedAt: !4054)
!4388 = !DILocation(line: 448, column: 14, scope: !4050, inlinedAt: !4054)
!4389 = !DILocation(line: 450, column: 22, scope: !4050, inlinedAt: !4054)
!4390 = !DILocation(line: 450, column: 25, scope: !4050, inlinedAt: !4054)
!4391 = !DILocation(line: 450, column: 30, scope: !4050, inlinedAt: !4054)
!4392 = !DILocation(line: 450, column: 36, scope: !4050, inlinedAt: !4054)
!4393 = !DILocation(line: 450, column: 8, scope: !4050, inlinedAt: !4054)
!4394 = !DILocation(line: 450, column: 6, scope: !4050, inlinedAt: !4054)
!4395 = !DILocation(line: 451, column: 9, scope: !4050, inlinedAt: !4054)
!4396 = !DILocation(line: 552, column: 3, scope: !4055, inlinedAt: !4060)
!4397 = !DILocation(line: 557, column: 19, scope: !4057, inlinedAt: !4060)
!4398 = !DILocation(line: 557, column: 25, scope: !4057, inlinedAt: !4060)
!4399 = !DILocation(line: 557, column: 9, scope: !4057, inlinedAt: !4060)
!4400 = !DILocation(line: 557, column: 2, scope: !4057, inlinedAt: !4060)
!4401 = !DILocation(line: 558, column: 1, scope: !4057, inlinedAt: !4060)
!4402 = !DILocation(line: 61, column: 11, scope: !4061)
!4403 = !DILocation(line: 62, column: 8, scope: !4404)
!4404 = distinct !DILexicalBlock(scope: !4061, file: !3, line: 62, column: 7)
!4405 = !DILocation(line: 62, column: 7, scope: !4061)
!4406 = !DILocation(line: 63, column: 8, scope: !4407)
!4407 = distinct !DILexicalBlock(scope: !4404, file: !3, line: 62, column: 17)
!4408 = !DILocation(line: 64, column: 4, scope: !4407)
!4409 = !DILocation(line: 66, column: 25, scope: !4061)
!4410 = !DILocation(line: 66, column: 33, scope: !4061)
!4411 = !DILocation(line: 67, column: 11, scope: !4061)
!4412 = !DILocation(line: 67, column: 16, scope: !4061)
!4413 = !DILocation(line: 66, column: 9, scope: !4061)
!4414 = !DILocation(line: 66, column: 7, scope: !4061)
!4415 = !DILocation(line: 68, column: 23, scope: !4061)
!4416 = !DILocation(line: 68, column: 3, scope: !4061)
!4417 = !DILocation(line: 68, column: 8, scope: !4061)
!4418 = !DILocation(line: 68, column: 21, scope: !4061)
!4419 = !DILocation(line: 69, column: 7, scope: !4420)
!4420 = distinct !DILexicalBlock(scope: !4061, file: !3, line: 69, column: 7)
!4421 = !DILocation(line: 69, column: 11, scope: !4420)
!4422 = !DILocation(line: 69, column: 7, scope: !4061)
!4423 = !DILocation(line: 70, column: 28, scope: !4424)
!4424 = distinct !DILexicalBlock(scope: !4420, file: !3, line: 69, column: 17)
!4425 = !DILocation(line: 70, column: 4, scope: !4424)
!4426 = !DILocation(line: 70, column: 9, scope: !4424)
!4427 = !DILocation(line: 70, column: 26, scope: !4424)
!4428 = !DILocation(line: 71, column: 4, scope: !4424)
!4429 = !DILocation(line: 71, column: 9, scope: !4424)
!4430 = !DILocation(line: 71, column: 20, scope: !4424)
!4431 = !DILocation(line: 72, column: 3, scope: !4424)
!4432 = !DILocation(line: 73, column: 10, scope: !4433)
!4433 = distinct !DILexicalBlock(scope: !4420, file: !3, line: 72, column: 10)
!4434 = !DILocation(line: 73, column: 4, scope: !4433)
!4435 = !DILocation(line: 75, column: 2, scope: !4061)
!4436 = !DILocation(line: 78, column: 9, scope: !4437)
!4437 = distinct !DILexicalBlock(scope: !4048, file: !3, line: 78, column: 2)
!4438 = !DILocation(line: 78, column: 16, scope: !4437)
!4439 = !DILocation(line: 78, column: 7, scope: !4437)
!4440 = !DILocation(line: 78, column: 21, scope: !4441)
!4441 = distinct !DILexicalBlock(scope: !4437, file: !3, line: 78, column: 2)
!4442 = !DILocation(line: 78, column: 25, scope: !4441)
!4443 = !DILocation(line: 78, column: 30, scope: !4441)
!4444 = !DILocation(line: 78, column: 23, scope: !4441)
!4445 = !DILocation(line: 78, column: 2, scope: !4437)
!4446 = !DILocation(line: 79, column: 9, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4441, file: !3, line: 78, column: 57)
!4448 = !DILocation(line: 79, column: 13, scope: !4447)
!4449 = !DILocation(line: 79, column: 18, scope: !4447)
!4450 = !DILocation(line: 79, column: 11, scope: !4447)
!4451 = !DILocation(line: 79, column: 7, scope: !4447)
!4452 = !DILocation(line: 81, column: 24, scope: !4453)
!4453 = distinct !DILexicalBlock(scope: !4447, file: !3, line: 81, column: 7)
!4454 = !DILocation(line: 81, column: 29, scope: !4453)
!4455 = !DILocation(line: 81, column: 8, scope: !4453)
!4456 = !DILocation(line: 81, column: 7, scope: !4447)
!4457 = !DILocation(line: 82, column: 4, scope: !4453)
!4458 = !DILocation(line: 84, column: 23, scope: !4459)
!4459 = distinct !DILexicalBlock(scope: !4447, file: !3, line: 84, column: 7)
!4460 = !DILocation(line: 84, column: 28, scope: !4459)
!4461 = !DILocation(line: 84, column: 7, scope: !4459)
!4462 = !DILocation(line: 84, column: 7, scope: !4447)
!4463 = !DILocation(line: 85, column: 4, scope: !4459)
!4464 = !DILocation(line: 87, column: 7, scope: !4465)
!4465 = distinct !DILexicalBlock(scope: !4447, file: !3, line: 87, column: 7)
!4466 = !DILocation(line: 87, column: 12, scope: !4465)
!4467 = !DILocation(line: 87, column: 7, scope: !4447)
!4468 = !DILocation(line: 88, column: 27, scope: !4469)
!4469 = distinct !DILexicalBlock(scope: !4465, file: !3, line: 87, column: 30)
!4470 = !DILocation(line: 88, column: 32, scope: !4469)
!4471 = !DILocation(line: 88, column: 37, scope: !4469)
!4472 = !DILocation(line: 88, column: 55, scope: !4469)
!4473 = !DILocation(line: 88, column: 10, scope: !4469)
!4474 = !DILocation(line: 88, column: 8, scope: !4469)
!4475 = !DILocation(line: 89, column: 3, scope: !4469)
!4476 = !DILocalVariable(name: "cache_bypass", scope: !4477, file: !3, line: 90, type: !440)
!4477 = distinct !DILexicalBlock(scope: !4465, file: !3, line: 89, column: 10)
!4478 = !DILocation(line: 90, column: 9, scope: !4477)
!4479 = !DILocation(line: 90, column: 24, scope: !4477)
!4480 = !DILocation(line: 90, column: 29, scope: !4477)
!4481 = !DILocation(line: 92, column: 4, scope: !4477)
!4482 = !DILocation(line: 92, column: 9, scope: !4477)
!4483 = !DILocation(line: 92, column: 22, scope: !4477)
!4484 = !DILocation(line: 93, column: 22, scope: !4477)
!4485 = !DILocation(line: 93, column: 27, scope: !4477)
!4486 = !DILocation(line: 93, column: 10, scope: !4477)
!4487 = !DILocation(line: 93, column: 8, scope: !4477)
!4488 = !DILocation(line: 94, column: 24, scope: !4477)
!4489 = !DILocation(line: 94, column: 4, scope: !4477)
!4490 = !DILocation(line: 94, column: 9, scope: !4477)
!4491 = !DILocation(line: 94, column: 22, scope: !4477)
!4492 = !DILocation(line: 95, column: 8, scope: !4493)
!4493 = distinct !DILexicalBlock(scope: !4477, file: !3, line: 95, column: 8)
!4494 = !DILocation(line: 95, column: 12, scope: !4493)
!4495 = !DILocation(line: 95, column: 8, scope: !4477)
!4496 = !DILocation(line: 96, column: 5, scope: !4497)
!4497 = distinct !DILexicalBlock(scope: !4493, file: !3, line: 95, column: 18)
!4498 = !DILocation(line: 98, column: 5, scope: !4497)
!4499 = !DILocation(line: 102, column: 30, scope: !4447)
!4500 = !DILocation(line: 102, column: 3, scope: !4447)
!4501 = !DILocation(line: 102, column: 8, scope: !4447)
!4502 = !DILocation(line: 102, column: 21, scope: !4447)
!4503 = !DILocation(line: 102, column: 24, scope: !4447)
!4504 = !DILocation(line: 102, column: 28, scope: !4447)
!4505 = !DILocation(line: 103, column: 30, scope: !4447)
!4506 = !DILocation(line: 103, column: 3, scope: !4447)
!4507 = !DILocation(line: 103, column: 8, scope: !4447)
!4508 = !DILocation(line: 103, column: 21, scope: !4447)
!4509 = !DILocation(line: 103, column: 24, scope: !4447)
!4510 = !DILocation(line: 103, column: 28, scope: !4447)
!4511 = !DILocation(line: 104, column: 4, scope: !4447)
!4512 = !DILocation(line: 105, column: 2, scope: !4447)
!4513 = !DILocation(line: 78, column: 53, scope: !4441)
!4514 = !DILocation(line: 78, column: 2, scope: !4441)
!4515 = distinct !{!4515, !4445, !4516}
!4516 = !DILocation(line: 105, column: 2, scope: !4437)
!4517 = !DILocation(line: 107, column: 2, scope: !4048)
!4518 = !DILabel(scope: !4048, name: "err_free", file: !3, line: 109)
!4519 = !DILocation(line: 109, column: 1, scope: !4048)
!4520 = !DILocation(line: 110, column: 8, scope: !4048)
!4521 = !DILocation(line: 110, column: 13, scope: !4048)
!4522 = !DILocation(line: 110, column: 2, scope: !4048)
!4523 = !DILocation(line: 112, column: 9, scope: !4048)
!4524 = !DILocation(line: 112, column: 2, scope: !4048)
!4525 = !DILocation(line: 113, column: 1, scope: !4048)
!4526 = distinct !DISubprogram(name: "regcache_exit", scope: !3, file: !3, line: 206, type: !4527, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !165)
!4527 = !DISubroutineType(types: !4528)
!4528 = !{null, !128}
!4529 = !DILocalVariable(name: "map", arg: 1, scope: !4526, file: !3, line: 206, type: !128)
!4530 = !DILocation(line: 206, column: 35, scope: !4526)
!4531 = !DILocation(line: 208, column: 6, scope: !4532)
!4532 = distinct !DILexicalBlock(scope: !4526, file: !3, line: 208, column: 6)
!4533 = !DILocation(line: 208, column: 11, scope: !4532)
!4534 = !DILocation(line: 208, column: 22, scope: !4532)
!4535 = !DILocation(line: 208, column: 6, scope: !4526)
!4536 = !DILocation(line: 209, column: 3, scope: !4532)
!4537 = !DILocation(line: 211, column: 2, scope: !4526)
!4538 = !DILocation(line: 211, column: 2, scope: !4539)
!4539 = distinct !DILexicalBlock(scope: !4540, file: !3, line: 211, column: 2)
!4540 = distinct !DILexicalBlock(scope: !4526, file: !3, line: 211, column: 2)
!4541 = !DILocation(line: 211, column: 2, scope: !4540)
!4542 = !DILocation(line: 211, column: 2, scope: !4543)
!4543 = distinct !DILexicalBlock(scope: !4539, file: !3, line: 211, column: 2)
!4544 = !DILocation(line: 211, column: 2, scope: !4545)
!4545 = distinct !DILexicalBlock(scope: !4543, file: !3, line: 211, column: 2)
!4546 = !DILocation(line: 211, column: 2, scope: !4547)
!4547 = distinct !DILexicalBlock(scope: !4543, file: !3, line: 211, column: 2)
!4548 = !{i32 -2142725089, i32 -2142725060, i32 -2142725014, i32 -2142724956, i32 -2142724902, i32 -2142724848, i32 -2142724793, i32 -2142724762}
!4549 = !DILocation(line: 211, column: 2, scope: !4550)
!4550 = distinct !DILexicalBlock(scope: !4551, file: !3, line: 211, column: 2)
!4551 = distinct !DILexicalBlock(scope: !4543, file: !3, line: 211, column: 2)
!4552 = !{i32 -2142724309, i32 -2142724302, i32 -2142724248, i32 -2142724217, i32 -2142724187}
!4553 = !DILocation(line: 211, column: 2, scope: !4551)
!4554 = !DILocation(line: 213, column: 8, scope: !4526)
!4555 = !DILocation(line: 213, column: 13, scope: !4526)
!4556 = !DILocation(line: 213, column: 2, scope: !4526)
!4557 = !DILocation(line: 214, column: 6, scope: !4558)
!4558 = distinct !DILexicalBlock(scope: !4526, file: !3, line: 214, column: 6)
!4559 = !DILocation(line: 214, column: 11, scope: !4558)
!4560 = !DILocation(line: 214, column: 6, scope: !4526)
!4561 = !DILocation(line: 215, column: 9, scope: !4558)
!4562 = !DILocation(line: 215, column: 14, scope: !4558)
!4563 = !DILocation(line: 215, column: 3, scope: !4558)
!4564 = !DILocation(line: 217, column: 6, scope: !4565)
!4565 = distinct !DILexicalBlock(scope: !4526, file: !3, line: 217, column: 6)
!4566 = !DILocation(line: 217, column: 11, scope: !4565)
!4567 = !DILocation(line: 217, column: 22, scope: !4565)
!4568 = !DILocation(line: 217, column: 6, scope: !4526)
!4569 = !DILocation(line: 220, column: 3, scope: !4570)
!4570 = distinct !DILexicalBlock(scope: !4565, file: !3, line: 217, column: 28)
!4571 = !DILocation(line: 220, column: 8, scope: !4570)
!4572 = !DILocation(line: 220, column: 19, scope: !4570)
!4573 = !DILocation(line: 220, column: 24, scope: !4570)
!4574 = !DILocation(line: 221, column: 2, scope: !4570)
!4575 = !DILocation(line: 222, column: 1, scope: !4526)
!4576 = distinct !DISubprogram(name: "regcache_read", scope: !3, file: !3, line: 233, type: !3751, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !165)
!4577 = !DILocalVariable(name: "map", arg: 1, scope: !4576, file: !3, line: 233, type: !128)
!4578 = !DILocation(line: 233, column: 34, scope: !4576)
!4579 = !DILocalVariable(name: "reg", arg: 2, scope: !4576, file: !3, line: 234, type: !7)
!4580 = !DILocation(line: 234, column: 18, scope: !4576)
!4581 = !DILocalVariable(name: "value", arg: 3, scope: !4576, file: !3, line: 234, type: !2465)
!4582 = !DILocation(line: 234, column: 37, scope: !4576)
!4583 = !DILocalVariable(name: "ret", scope: !4576, file: !3, line: 236, type: !106)
!4584 = !DILocation(line: 236, column: 6, scope: !4576)
!4585 = !DILocation(line: 238, column: 6, scope: !4586)
!4586 = distinct !DILexicalBlock(scope: !4576, file: !3, line: 238, column: 6)
!4587 = !DILocation(line: 238, column: 11, scope: !4586)
!4588 = !DILocation(line: 238, column: 22, scope: !4586)
!4589 = !DILocation(line: 238, column: 6, scope: !4576)
!4590 = !DILocation(line: 239, column: 3, scope: !4586)
!4591 = !DILocation(line: 241, column: 2, scope: !4576)
!4592 = !DILocation(line: 241, column: 2, scope: !4593)
!4593 = distinct !DILexicalBlock(scope: !4594, file: !3, line: 241, column: 2)
!4594 = distinct !DILexicalBlock(scope: !4576, file: !3, line: 241, column: 2)
!4595 = !DILocation(line: 241, column: 2, scope: !4594)
!4596 = !DILocation(line: 241, column: 2, scope: !4597)
!4597 = distinct !DILexicalBlock(scope: !4593, file: !3, line: 241, column: 2)
!4598 = !DILocation(line: 241, column: 2, scope: !4599)
!4599 = distinct !DILexicalBlock(scope: !4597, file: !3, line: 241, column: 2)
!4600 = !DILocation(line: 241, column: 2, scope: !4601)
!4601 = distinct !DILexicalBlock(scope: !4597, file: !3, line: 241, column: 2)
!4602 = !{i32 -2142723672, i32 -2142723643, i32 -2142723597, i32 -2142723539, i32 -2142723485, i32 -2142723431, i32 -2142723376, i32 -2142723345}
!4603 = !DILocation(line: 241, column: 2, scope: !4604)
!4604 = distinct !DILexicalBlock(scope: !4605, file: !3, line: 241, column: 2)
!4605 = distinct !DILexicalBlock(scope: !4597, file: !3, line: 241, column: 2)
!4606 = !{i32 -2142722892, i32 -2142722885, i32 -2142722831, i32 -2142722800, i32 -2142722770}
!4607 = !DILocation(line: 241, column: 2, scope: !4605)
!4608 = !DILocation(line: 243, column: 23, scope: !4609)
!4609 = distinct !DILexicalBlock(scope: !4576, file: !3, line: 243, column: 6)
!4610 = !DILocation(line: 243, column: 28, scope: !4609)
!4611 = !DILocation(line: 243, column: 7, scope: !4609)
!4612 = !DILocation(line: 243, column: 6, scope: !4576)
!4613 = !DILocation(line: 244, column: 9, scope: !4614)
!4614 = distinct !DILexicalBlock(scope: !4609, file: !3, line: 243, column: 34)
!4615 = !DILocation(line: 244, column: 14, scope: !4614)
!4616 = !DILocation(line: 244, column: 25, scope: !4614)
!4617 = !DILocation(line: 244, column: 30, scope: !4614)
!4618 = !DILocation(line: 244, column: 35, scope: !4614)
!4619 = !DILocation(line: 244, column: 40, scope: !4614)
!4620 = !DILocation(line: 244, column: 7, scope: !4614)
!4621 = !DILocation(line: 246, column: 7, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !4614, file: !3, line: 246, column: 7)
!4623 = !DILocation(line: 246, column: 11, scope: !4622)
!4624 = !DILocation(line: 246, column: 7, scope: !4614)
!4625 = !DILocation(line: 247, column: 32, scope: !4622)
!4626 = !DILocation(line: 247, column: 37, scope: !4622)
!4627 = !DILocation(line: 247, column: 43, scope: !4622)
!4628 = !DILocation(line: 247, column: 42, scope: !4622)
!4629 = !DILocation(line: 247, column: 4, scope: !4622)
!4630 = !DILocation(line: 249, column: 10, scope: !4614)
!4631 = !DILocation(line: 249, column: 3, scope: !4614)
!4632 = !DILocation(line: 252, column: 2, scope: !4576)
!4633 = !DILocation(line: 253, column: 1, scope: !4576)
!4634 = distinct !DISubprogram(name: "trace_regmap_reg_read_cache", scope: !4635, file: !4635, line: 58, type: !3592, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!4635 = !DIFile(filename: "drivers/base/regmap/trace.h", directory: "/home/lizy2001/genbc/linux")
!4636 = !DILocalVariable(name: "map", arg: 1, scope: !4634, file: !4635, line: 58, type: !128)
!4637 = !DILocation(line: 58, column: 1, scope: !4634)
!4638 = !DILocalVariable(name: "reg", arg: 2, scope: !4634, file: !4635, line: 58, type: !7)
!4639 = !DILocalVariable(name: "val", arg: 3, scope: !4634, file: !4635, line: 58, type: !7)
!4640 = distinct !DISubprogram(name: "regcache_write", scope: !3, file: !3, line: 264, type: !3755, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !165)
!4641 = !DILocalVariable(name: "map", arg: 1, scope: !4640, file: !3, line: 264, type: !128)
!4642 = !DILocation(line: 264, column: 35, scope: !4640)
!4643 = !DILocalVariable(name: "reg", arg: 2, scope: !4640, file: !3, line: 265, type: !7)
!4644 = !DILocation(line: 265, column: 19, scope: !4640)
!4645 = !DILocalVariable(name: "value", arg: 3, scope: !4640, file: !3, line: 265, type: !7)
!4646 = !DILocation(line: 265, column: 37, scope: !4640)
!4647 = !DILocation(line: 267, column: 6, scope: !4648)
!4648 = distinct !DILexicalBlock(scope: !4640, file: !3, line: 267, column: 6)
!4649 = !DILocation(line: 267, column: 11, scope: !4648)
!4650 = !DILocation(line: 267, column: 22, scope: !4648)
!4651 = !DILocation(line: 267, column: 6, scope: !4640)
!4652 = !DILocation(line: 268, column: 3, scope: !4648)
!4653 = !DILocation(line: 270, column: 2, scope: !4640)
!4654 = !DILocation(line: 270, column: 2, scope: !4655)
!4655 = distinct !DILexicalBlock(scope: !4656, file: !3, line: 270, column: 2)
!4656 = distinct !DILexicalBlock(scope: !4640, file: !3, line: 270, column: 2)
!4657 = !DILocation(line: 270, column: 2, scope: !4656)
!4658 = !DILocation(line: 270, column: 2, scope: !4659)
!4659 = distinct !DILexicalBlock(scope: !4655, file: !3, line: 270, column: 2)
!4660 = !DILocation(line: 270, column: 2, scope: !4661)
!4661 = distinct !DILexicalBlock(scope: !4659, file: !3, line: 270, column: 2)
!4662 = !DILocation(line: 270, column: 2, scope: !4663)
!4663 = distinct !DILexicalBlock(scope: !4659, file: !3, line: 270, column: 2)
!4664 = !{i32 -2142722454, i32 -2142722425, i32 -2142722379, i32 -2142722321, i32 -2142722267, i32 -2142722213, i32 -2142722158, i32 -2142722127}
!4665 = !DILocation(line: 270, column: 2, scope: !4666)
!4666 = distinct !DILexicalBlock(scope: !4667, file: !3, line: 270, column: 2)
!4667 = distinct !DILexicalBlock(scope: !4659, file: !3, line: 270, column: 2)
!4668 = !{i32 -2142721674, i32 -2142721667, i32 -2142721613, i32 -2142721582, i32 -2142721552}
!4669 = !DILocation(line: 270, column: 2, scope: !4667)
!4670 = !DILocation(line: 272, column: 23, scope: !4671)
!4671 = distinct !DILexicalBlock(scope: !4640, file: !3, line: 272, column: 6)
!4672 = !DILocation(line: 272, column: 28, scope: !4671)
!4673 = !DILocation(line: 272, column: 7, scope: !4671)
!4674 = !DILocation(line: 272, column: 6, scope: !4640)
!4675 = !DILocation(line: 273, column: 10, scope: !4671)
!4676 = !DILocation(line: 273, column: 15, scope: !4671)
!4677 = !DILocation(line: 273, column: 26, scope: !4671)
!4678 = !DILocation(line: 273, column: 32, scope: !4671)
!4679 = !DILocation(line: 273, column: 37, scope: !4671)
!4680 = !DILocation(line: 273, column: 42, scope: !4671)
!4681 = !DILocation(line: 273, column: 3, scope: !4671)
!4682 = !DILocation(line: 275, column: 2, scope: !4640)
!4683 = !DILocation(line: 276, column: 1, scope: !4640)
!4684 = distinct !DISubprogram(name: "regcache_sync", scope: !3, file: !3, line: 339, type: !126, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !165)
!4685 = !DILocalVariable(name: "map", arg: 1, scope: !4684, file: !3, line: 339, type: !128)
!4686 = !DILocation(line: 339, column: 34, scope: !4684)
!4687 = !DILocalVariable(name: "ret", scope: !4684, file: !3, line: 341, type: !106)
!4688 = !DILocation(line: 341, column: 6, scope: !4684)
!4689 = !DILocalVariable(name: "i", scope: !4684, file: !3, line: 342, type: !7)
!4690 = !DILocation(line: 342, column: 15, scope: !4684)
!4691 = !DILocalVariable(name: "name", scope: !4684, file: !3, line: 343, type: !120)
!4692 = !DILocation(line: 343, column: 14, scope: !4684)
!4693 = !DILocalVariable(name: "bypass", scope: !4684, file: !3, line: 344, type: !440)
!4694 = !DILocation(line: 344, column: 7, scope: !4684)
!4695 = !DILocation(line: 346, column: 2, scope: !4684)
!4696 = !DILocation(line: 346, column: 2, scope: !4697)
!4697 = distinct !DILexicalBlock(scope: !4698, file: !3, line: 346, column: 2)
!4698 = distinct !DILexicalBlock(scope: !4684, file: !3, line: 346, column: 2)
!4699 = !DILocation(line: 346, column: 2, scope: !4698)
!4700 = !DILocation(line: 346, column: 2, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !4697, file: !3, line: 346, column: 2)
!4702 = !DILocation(line: 346, column: 2, scope: !4703)
!4703 = distinct !DILexicalBlock(scope: !4701, file: !3, line: 346, column: 2)
!4704 = !DILocation(line: 346, column: 2, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !4701, file: !3, line: 346, column: 2)
!4706 = !{i32 -2142720893, i32 -2142720864, i32 -2142720818, i32 -2142720760, i32 -2142720706, i32 -2142720652, i32 -2142720597, i32 -2142720566}
!4707 = !DILocation(line: 346, column: 2, scope: !4708)
!4708 = distinct !DILexicalBlock(scope: !4709, file: !3, line: 346, column: 2)
!4709 = distinct !DILexicalBlock(scope: !4701, file: !3, line: 346, column: 2)
!4710 = !{i32 -2142720113, i32 -2142720106, i32 -2142720052, i32 -2142720021, i32 -2142719991}
!4711 = !DILocation(line: 346, column: 2, scope: !4709)
!4712 = !DILocation(line: 348, column: 2, scope: !4684)
!4713 = !DILocation(line: 348, column: 7, scope: !4684)
!4714 = !DILocation(line: 348, column: 12, scope: !4684)
!4715 = !DILocation(line: 348, column: 17, scope: !4684)
!4716 = !DILocation(line: 350, column: 11, scope: !4684)
!4717 = !DILocation(line: 350, column: 16, scope: !4684)
!4718 = !DILocation(line: 350, column: 9, scope: !4684)
!4719 = !DILocation(line: 353, column: 9, scope: !4684)
!4720 = !DILocation(line: 353, column: 14, scope: !4684)
!4721 = !DILocation(line: 353, column: 25, scope: !4684)
!4722 = !DILocation(line: 353, column: 7, scope: !4684)
!4723 = !DILocation(line: 354, column: 22, scope: !4684)
!4724 = !DILocation(line: 354, column: 27, scope: !4684)
!4725 = !DILocation(line: 354, column: 2, scope: !4684)
!4726 = !DILocation(line: 356, column: 7, scope: !4727)
!4727 = distinct !DILexicalBlock(scope: !4684, file: !3, line: 356, column: 6)
!4728 = !DILocation(line: 356, column: 12, scope: !4727)
!4729 = !DILocation(line: 356, column: 6, scope: !4684)
!4730 = !DILocation(line: 357, column: 3, scope: !4727)
!4731 = !DILocation(line: 359, column: 2, scope: !4684)
!4732 = !DILocation(line: 359, column: 7, scope: !4684)
!4733 = !DILocation(line: 359, column: 13, scope: !4684)
!4734 = !DILocation(line: 362, column: 2, scope: !4684)
!4735 = !DILocation(line: 362, column: 7, scope: !4684)
!4736 = !DILocation(line: 362, column: 20, scope: !4684)
!4737 = !DILocation(line: 363, column: 9, scope: !4738)
!4738 = distinct !DILexicalBlock(scope: !4684, file: !3, line: 363, column: 2)
!4739 = !DILocation(line: 363, column: 7, scope: !4738)
!4740 = !DILocation(line: 363, column: 14, scope: !4741)
!4741 = distinct !DILexicalBlock(scope: !4738, file: !3, line: 363, column: 2)
!4742 = !DILocation(line: 363, column: 18, scope: !4741)
!4743 = !DILocation(line: 363, column: 23, scope: !4741)
!4744 = !DILocation(line: 363, column: 16, scope: !4741)
!4745 = !DILocation(line: 363, column: 2, scope: !4738)
!4746 = !DILocation(line: 364, column: 23, scope: !4747)
!4747 = distinct !DILexicalBlock(scope: !4741, file: !3, line: 363, column: 40)
!4748 = !DILocation(line: 364, column: 28, scope: !4747)
!4749 = !DILocation(line: 364, column: 33, scope: !4747)
!4750 = !DILocation(line: 364, column: 39, scope: !4747)
!4751 = !DILocation(line: 364, column: 42, scope: !4747)
!4752 = !DILocation(line: 364, column: 47, scope: !4747)
!4753 = !DILocation(line: 364, column: 52, scope: !4747)
!4754 = !DILocation(line: 364, column: 58, scope: !4747)
!4755 = !DILocation(line: 364, column: 61, scope: !4747)
!4756 = !DILocation(line: 364, column: 9, scope: !4747)
!4757 = !DILocation(line: 364, column: 7, scope: !4747)
!4758 = !DILocation(line: 365, column: 7, scope: !4759)
!4759 = distinct !DILexicalBlock(scope: !4747, file: !3, line: 365, column: 7)
!4760 = !DILocation(line: 365, column: 11, scope: !4759)
!4761 = !DILocation(line: 365, column: 7, scope: !4747)
!4762 = !DILocation(line: 366, column: 4, scope: !4763)
!4763 = distinct !DILexicalBlock(scope: !4759, file: !3, line: 365, column: 17)
!4764 = !DILocation(line: 368, column: 4, scope: !4763)
!4765 = !DILocation(line: 370, column: 2, scope: !4747)
!4766 = !DILocation(line: 363, column: 36, scope: !4741)
!4767 = !DILocation(line: 363, column: 2, scope: !4741)
!4768 = distinct !{!4768, !4745, !4769}
!4769 = !DILocation(line: 370, column: 2, scope: !4738)
!4770 = !DILocation(line: 371, column: 2, scope: !4684)
!4771 = !DILocation(line: 371, column: 7, scope: !4684)
!4772 = !DILocation(line: 371, column: 20, scope: !4684)
!4773 = !DILocation(line: 373, column: 6, scope: !4774)
!4774 = distinct !DILexicalBlock(scope: !4684, file: !3, line: 373, column: 6)
!4775 = !DILocation(line: 373, column: 11, scope: !4774)
!4776 = !DILocation(line: 373, column: 22, scope: !4774)
!4777 = !DILocation(line: 373, column: 6, scope: !4684)
!4778 = !DILocation(line: 374, column: 9, scope: !4774)
!4779 = !DILocation(line: 374, column: 14, scope: !4774)
!4780 = !DILocation(line: 374, column: 25, scope: !4774)
!4781 = !DILocation(line: 374, column: 30, scope: !4774)
!4782 = !DILocation(line: 374, column: 38, scope: !4774)
!4783 = !DILocation(line: 374, column: 43, scope: !4774)
!4784 = !DILocation(line: 374, column: 7, scope: !4774)
!4785 = !DILocation(line: 374, column: 3, scope: !4774)
!4786 = !DILocation(line: 376, column: 31, scope: !4774)
!4787 = !DILocation(line: 376, column: 39, scope: !4774)
!4788 = !DILocation(line: 376, column: 44, scope: !4774)
!4789 = !DILocation(line: 376, column: 9, scope: !4774)
!4790 = !DILocation(line: 376, column: 7, scope: !4774)
!4791 = !DILocation(line: 378, column: 6, scope: !4792)
!4792 = distinct !DILexicalBlock(scope: !4684, file: !3, line: 378, column: 6)
!4793 = !DILocation(line: 378, column: 10, scope: !4792)
!4794 = !DILocation(line: 378, column: 6, scope: !4684)
!4795 = !DILocation(line: 379, column: 3, scope: !4792)
!4796 = !DILocation(line: 379, column: 8, scope: !4792)
!4797 = !DILocation(line: 379, column: 20, scope: !4792)
!4798 = !DILocation(line: 378, column: 13, scope: !4792)
!4799 = !DILabel(scope: !4684, name: "out", file: !3, line: 381)
!4800 = !DILocation(line: 381, column: 1, scope: !4684)
!4801 = !DILocation(line: 383, column: 2, scope: !4684)
!4802 = !DILocation(line: 383, column: 7, scope: !4684)
!4803 = !DILocation(line: 383, column: 13, scope: !4684)
!4804 = !DILocation(line: 384, column: 22, scope: !4684)
!4805 = !DILocation(line: 384, column: 2, scope: !4684)
!4806 = !DILocation(line: 384, column: 7, scope: !4684)
!4807 = !DILocation(line: 384, column: 20, scope: !4684)
!4808 = !DILocation(line: 385, column: 2, scope: !4684)
!4809 = !DILocation(line: 385, column: 7, scope: !4684)
!4810 = !DILocation(line: 385, column: 24, scope: !4684)
!4811 = !DILocation(line: 386, column: 2, scope: !4684)
!4812 = !DILocation(line: 386, column: 7, scope: !4684)
!4813 = !DILocation(line: 386, column: 14, scope: !4684)
!4814 = !DILocation(line: 386, column: 19, scope: !4684)
!4815 = !DILocation(line: 388, column: 24, scope: !4684)
!4816 = !DILocation(line: 388, column: 2, scope: !4684)
!4817 = !DILocation(line: 390, column: 22, scope: !4684)
!4818 = !DILocation(line: 390, column: 27, scope: !4684)
!4819 = !DILocation(line: 390, column: 2, scope: !4684)
!4820 = !DILocation(line: 392, column: 9, scope: !4684)
!4821 = !DILocation(line: 392, column: 2, scope: !4684)
!4822 = distinct !DISubprogram(name: "trace_regcache_sync", scope: !4635, file: !4635, line: 118, type: !4823, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!4823 = !DISubroutineType(types: !4824)
!4824 = !{null, !128, !120, !120}
!4825 = !DILocalVariable(name: "map", arg: 1, scope: !4822, file: !4635, line: 118, type: !128)
!4826 = !DILocation(line: 118, column: 1, scope: !4822)
!4827 = !DILocalVariable(name: "type", arg: 2, scope: !4822, file: !4635, line: 118, type: !120)
!4828 = !DILocalVariable(name: "status", arg: 3, scope: !4822, file: !4635, line: 118, type: !120)
!4829 = distinct !DISubprogram(name: "regcache_default_sync", scope: !3, file: !3, line: 294, type: !3755, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!4830 = !DILocalVariable(name: "map", arg: 1, scope: !4829, file: !3, line: 294, type: !128)
!4831 = !DILocation(line: 294, column: 49, scope: !4829)
!4832 = !DILocalVariable(name: "min", arg: 2, scope: !4829, file: !3, line: 294, type: !7)
!4833 = !DILocation(line: 294, column: 67, scope: !4829)
!4834 = !DILocalVariable(name: "max", arg: 3, scope: !4829, file: !3, line: 295, type: !7)
!4835 = !DILocation(line: 295, column: 19, scope: !4829)
!4836 = !DILocalVariable(name: "reg", scope: !4829, file: !3, line: 297, type: !7)
!4837 = !DILocation(line: 297, column: 15, scope: !4829)
!4838 = !DILocation(line: 299, column: 13, scope: !4839)
!4839 = distinct !DILexicalBlock(scope: !4829, file: !3, line: 299, column: 2)
!4840 = !DILocation(line: 299, column: 11, scope: !4839)
!4841 = !DILocation(line: 299, column: 7, scope: !4839)
!4842 = !DILocation(line: 299, column: 18, scope: !4843)
!4843 = distinct !DILexicalBlock(scope: !4839, file: !3, line: 299, column: 2)
!4844 = !DILocation(line: 299, column: 25, scope: !4843)
!4845 = !DILocation(line: 299, column: 22, scope: !4843)
!4846 = !DILocation(line: 299, column: 2, scope: !4839)
!4847 = !DILocalVariable(name: "val", scope: !4848, file: !3, line: 300, type: !7)
!4848 = distinct !DILexicalBlock(scope: !4843, file: !3, line: 299, column: 54)
!4849 = !DILocation(line: 300, column: 16, scope: !4848)
!4850 = !DILocalVariable(name: "ret", scope: !4848, file: !3, line: 301, type: !106)
!4851 = !DILocation(line: 301, column: 7, scope: !4848)
!4852 = !DILocation(line: 303, column: 23, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4848, file: !3, line: 303, column: 7)
!4854 = !DILocation(line: 303, column: 28, scope: !4853)
!4855 = !DILocation(line: 303, column: 7, scope: !4853)
!4856 = !DILocation(line: 303, column: 33, scope: !4853)
!4857 = !DILocation(line: 304, column: 25, scope: !4853)
!4858 = !DILocation(line: 304, column: 30, scope: !4853)
!4859 = !DILocation(line: 304, column: 8, scope: !4853)
!4860 = !DILocation(line: 303, column: 7, scope: !4848)
!4861 = !DILocation(line: 305, column: 4, scope: !4853)
!4862 = !DILocation(line: 307, column: 23, scope: !4848)
!4863 = !DILocation(line: 307, column: 28, scope: !4848)
!4864 = !DILocation(line: 307, column: 9, scope: !4848)
!4865 = !DILocation(line: 307, column: 7, scope: !4848)
!4866 = !DILocation(line: 308, column: 7, scope: !4867)
!4867 = distinct !DILexicalBlock(scope: !4848, file: !3, line: 308, column: 7)
!4868 = !DILocation(line: 308, column: 7, scope: !4848)
!4869 = !DILocation(line: 309, column: 11, scope: !4867)
!4870 = !DILocation(line: 309, column: 4, scope: !4867)
!4871 = !DILocation(line: 311, column: 32, scope: !4872)
!4872 = distinct !DILexicalBlock(scope: !4848, file: !3, line: 311, column: 7)
!4873 = !DILocation(line: 311, column: 37, scope: !4872)
!4874 = !DILocation(line: 311, column: 42, scope: !4872)
!4875 = !DILocation(line: 311, column: 8, scope: !4872)
!4876 = !DILocation(line: 311, column: 7, scope: !4848)
!4877 = !DILocation(line: 312, column: 4, scope: !4872)
!4878 = !DILocation(line: 314, column: 3, scope: !4848)
!4879 = !DILocation(line: 314, column: 8, scope: !4848)
!4880 = !DILocation(line: 314, column: 21, scope: !4848)
!4881 = !DILocation(line: 315, column: 23, scope: !4848)
!4882 = !DILocation(line: 315, column: 28, scope: !4848)
!4883 = !DILocation(line: 315, column: 33, scope: !4848)
!4884 = !DILocation(line: 315, column: 9, scope: !4848)
!4885 = !DILocation(line: 315, column: 7, scope: !4848)
!4886 = !DILocation(line: 316, column: 3, scope: !4848)
!4887 = !DILocation(line: 316, column: 8, scope: !4848)
!4888 = !DILocation(line: 316, column: 21, scope: !4848)
!4889 = !DILocation(line: 317, column: 7, scope: !4890)
!4890 = distinct !DILexicalBlock(scope: !4848, file: !3, line: 317, column: 7)
!4891 = !DILocation(line: 317, column: 7, scope: !4848)
!4892 = !DILocation(line: 318, column: 4, scope: !4893)
!4893 = distinct !DILexicalBlock(scope: !4890, file: !3, line: 317, column: 12)
!4894 = !DILocation(line: 320, column: 11, scope: !4893)
!4895 = !DILocation(line: 320, column: 4, scope: !4893)
!4896 = !DILocation(line: 323, column: 2, scope: !4848)
!4897 = !DILocation(line: 299, column: 37, scope: !4843)
!4898 = !DILocation(line: 299, column: 42, scope: !4843)
!4899 = !DILocation(line: 299, column: 34, scope: !4843)
!4900 = !DILocation(line: 299, column: 2, scope: !4843)
!4901 = distinct !{!4901, !4846, !4902}
!4902 = !DILocation(line: 323, column: 2, scope: !4839)
!4903 = !DILocation(line: 325, column: 2, scope: !4829)
!4904 = !DILocation(line: 326, column: 1, scope: !4829)
!4905 = distinct !DISubprogram(name: "regcache_sync_region", scope: !3, file: !3, line: 408, type: !3755, scopeLine: 410, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !165)
!4906 = !DILocalVariable(name: "map", arg: 1, scope: !4905, file: !3, line: 408, type: !128)
!4907 = !DILocation(line: 408, column: 41, scope: !4905)
!4908 = !DILocalVariable(name: "min", arg: 2, scope: !4905, file: !3, line: 408, type: !7)
!4909 = !DILocation(line: 408, column: 59, scope: !4905)
!4910 = !DILocalVariable(name: "max", arg: 3, scope: !4905, file: !3, line: 409, type: !7)
!4911 = !DILocation(line: 409, column: 18, scope: !4905)
!4912 = !DILocalVariable(name: "ret", scope: !4905, file: !3, line: 411, type: !106)
!4913 = !DILocation(line: 411, column: 6, scope: !4905)
!4914 = !DILocalVariable(name: "name", scope: !4905, file: !3, line: 412, type: !120)
!4915 = !DILocation(line: 412, column: 14, scope: !4905)
!4916 = !DILocalVariable(name: "bypass", scope: !4905, file: !3, line: 413, type: !440)
!4917 = !DILocation(line: 413, column: 7, scope: !4905)
!4918 = !DILocation(line: 415, column: 2, scope: !4905)
!4919 = !DILocation(line: 415, column: 2, scope: !4920)
!4920 = distinct !DILexicalBlock(scope: !4921, file: !3, line: 415, column: 2)
!4921 = distinct !DILexicalBlock(scope: !4905, file: !3, line: 415, column: 2)
!4922 = !DILocation(line: 415, column: 2, scope: !4921)
!4923 = !DILocation(line: 415, column: 2, scope: !4924)
!4924 = distinct !DILexicalBlock(scope: !4920, file: !3, line: 415, column: 2)
!4925 = !DILocation(line: 415, column: 2, scope: !4926)
!4926 = distinct !DILexicalBlock(scope: !4924, file: !3, line: 415, column: 2)
!4927 = !DILocation(line: 415, column: 2, scope: !4928)
!4928 = distinct !DILexicalBlock(scope: !4924, file: !3, line: 415, column: 2)
!4929 = !{i32 -2142719230, i32 -2142719201, i32 -2142719155, i32 -2142719097, i32 -2142719043, i32 -2142718989, i32 -2142718934, i32 -2142718903}
!4930 = !DILocation(line: 415, column: 2, scope: !4931)
!4931 = distinct !DILexicalBlock(scope: !4932, file: !3, line: 415, column: 2)
!4932 = distinct !DILexicalBlock(scope: !4924, file: !3, line: 415, column: 2)
!4933 = !{i32 -2142714389, i32 -2142714382, i32 -2142714328, i32 -2142714297, i32 -2142714267}
!4934 = !DILocation(line: 415, column: 2, scope: !4932)
!4935 = !DILocation(line: 417, column: 2, scope: !4905)
!4936 = !DILocation(line: 417, column: 7, scope: !4905)
!4937 = !DILocation(line: 417, column: 12, scope: !4905)
!4938 = !DILocation(line: 417, column: 17, scope: !4905)
!4939 = !DILocation(line: 420, column: 11, scope: !4905)
!4940 = !DILocation(line: 420, column: 16, scope: !4905)
!4941 = !DILocation(line: 420, column: 9, scope: !4905)
!4942 = !DILocation(line: 422, column: 9, scope: !4905)
!4943 = !DILocation(line: 422, column: 14, scope: !4905)
!4944 = !DILocation(line: 422, column: 25, scope: !4905)
!4945 = !DILocation(line: 422, column: 7, scope: !4905)
!4946 = !DILocation(line: 425, column: 22, scope: !4905)
!4947 = !DILocation(line: 425, column: 27, scope: !4905)
!4948 = !DILocation(line: 425, column: 2, scope: !4905)
!4949 = !DILocation(line: 427, column: 7, scope: !4950)
!4950 = distinct !DILexicalBlock(scope: !4905, file: !3, line: 427, column: 6)
!4951 = !DILocation(line: 427, column: 12, scope: !4950)
!4952 = !DILocation(line: 427, column: 6, scope: !4905)
!4953 = !DILocation(line: 428, column: 3, scope: !4950)
!4954 = !DILocation(line: 430, column: 2, scope: !4905)
!4955 = !DILocation(line: 430, column: 7, scope: !4905)
!4956 = !DILocation(line: 430, column: 13, scope: !4905)
!4957 = !DILocation(line: 432, column: 6, scope: !4958)
!4958 = distinct !DILexicalBlock(scope: !4905, file: !3, line: 432, column: 6)
!4959 = !DILocation(line: 432, column: 11, scope: !4958)
!4960 = !DILocation(line: 432, column: 22, scope: !4958)
!4961 = !DILocation(line: 432, column: 6, scope: !4905)
!4962 = !DILocation(line: 433, column: 9, scope: !4958)
!4963 = !DILocation(line: 433, column: 14, scope: !4958)
!4964 = !DILocation(line: 433, column: 25, scope: !4958)
!4965 = !DILocation(line: 433, column: 30, scope: !4958)
!4966 = !DILocation(line: 433, column: 35, scope: !4958)
!4967 = !DILocation(line: 433, column: 40, scope: !4958)
!4968 = !DILocation(line: 433, column: 7, scope: !4958)
!4969 = !DILocation(line: 433, column: 3, scope: !4958)
!4970 = !DILocation(line: 435, column: 31, scope: !4958)
!4971 = !DILocation(line: 435, column: 36, scope: !4958)
!4972 = !DILocation(line: 435, column: 41, scope: !4958)
!4973 = !DILocation(line: 435, column: 9, scope: !4958)
!4974 = !DILocation(line: 435, column: 7, scope: !4958)
!4975 = !DILabel(scope: !4905, name: "out", file: !3, line: 437)
!4976 = !DILocation(line: 437, column: 1, scope: !4905)
!4977 = !DILocation(line: 439, column: 22, scope: !4905)
!4978 = !DILocation(line: 439, column: 2, scope: !4905)
!4979 = !DILocation(line: 439, column: 7, scope: !4905)
!4980 = !DILocation(line: 439, column: 20, scope: !4905)
!4981 = !DILocation(line: 440, column: 2, scope: !4905)
!4982 = !DILocation(line: 440, column: 7, scope: !4905)
!4983 = !DILocation(line: 440, column: 13, scope: !4905)
!4984 = !DILocation(line: 441, column: 2, scope: !4905)
!4985 = !DILocation(line: 441, column: 7, scope: !4905)
!4986 = !DILocation(line: 441, column: 24, scope: !4905)
!4987 = !DILocation(line: 442, column: 2, scope: !4905)
!4988 = !DILocation(line: 442, column: 7, scope: !4905)
!4989 = !DILocation(line: 442, column: 14, scope: !4905)
!4990 = !DILocation(line: 442, column: 19, scope: !4905)
!4991 = !DILocation(line: 444, column: 24, scope: !4905)
!4992 = !DILocation(line: 444, column: 2, scope: !4905)
!4993 = !DILocation(line: 446, column: 22, scope: !4905)
!4994 = !DILocation(line: 446, column: 27, scope: !4905)
!4995 = !DILocation(line: 446, column: 2, scope: !4905)
!4996 = !DILocation(line: 448, column: 9, scope: !4905)
!4997 = !DILocation(line: 448, column: 2, scope: !4905)
!4998 = distinct !DISubprogram(name: "regcache_drop_region", scope: !3, file: !3, line: 463, type: !3755, scopeLine: 465, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !165)
!4999 = !DILocalVariable(name: "map", arg: 1, scope: !4998, file: !3, line: 463, type: !128)
!5000 = !DILocation(line: 463, column: 41, scope: !4998)
!5001 = !DILocalVariable(name: "min", arg: 2, scope: !4998, file: !3, line: 463, type: !7)
!5002 = !DILocation(line: 463, column: 59, scope: !4998)
!5003 = !DILocalVariable(name: "max", arg: 3, scope: !4998, file: !3, line: 464, type: !7)
!5004 = !DILocation(line: 464, column: 18, scope: !4998)
!5005 = !DILocalVariable(name: "ret", scope: !4998, file: !3, line: 466, type: !106)
!5006 = !DILocation(line: 466, column: 6, scope: !4998)
!5007 = !DILocation(line: 468, column: 7, scope: !5008)
!5008 = distinct !DILexicalBlock(scope: !4998, file: !3, line: 468, column: 6)
!5009 = !DILocation(line: 468, column: 12, scope: !5008)
!5010 = !DILocation(line: 468, column: 22, scope: !5008)
!5011 = !DILocation(line: 468, column: 26, scope: !5008)
!5012 = !DILocation(line: 468, column: 31, scope: !5008)
!5013 = !DILocation(line: 468, column: 42, scope: !5008)
!5014 = !DILocation(line: 468, column: 6, scope: !4998)
!5015 = !DILocation(line: 469, column: 3, scope: !5008)
!5016 = !DILocation(line: 471, column: 2, scope: !4998)
!5017 = !DILocation(line: 471, column: 7, scope: !4998)
!5018 = !DILocation(line: 471, column: 12, scope: !4998)
!5019 = !DILocation(line: 471, column: 17, scope: !4998)
!5020 = !DILocation(line: 473, column: 29, scope: !4998)
!5021 = !DILocation(line: 473, column: 34, scope: !4998)
!5022 = !DILocation(line: 473, column: 39, scope: !4998)
!5023 = !DILocation(line: 473, column: 2, scope: !4998)
!5024 = !DILocation(line: 475, column: 8, scope: !4998)
!5025 = !DILocation(line: 475, column: 13, scope: !4998)
!5026 = !DILocation(line: 475, column: 24, scope: !4998)
!5027 = !DILocation(line: 475, column: 29, scope: !4998)
!5028 = !DILocation(line: 475, column: 34, scope: !4998)
!5029 = !DILocation(line: 475, column: 39, scope: !4998)
!5030 = !DILocation(line: 475, column: 6, scope: !4998)
!5031 = !DILocation(line: 477, column: 2, scope: !4998)
!5032 = !DILocation(line: 477, column: 7, scope: !4998)
!5033 = !DILocation(line: 477, column: 14, scope: !4998)
!5034 = !DILocation(line: 477, column: 19, scope: !4998)
!5035 = !DILocation(line: 479, column: 9, scope: !4998)
!5036 = !DILocation(line: 479, column: 2, scope: !4998)
!5037 = !DILocation(line: 480, column: 1, scope: !4998)
!5038 = distinct !DISubprogram(name: "trace_regcache_drop_region", scope: !4635, file: !4635, line: 226, type: !3592, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!5039 = !DILocalVariable(name: "map", arg: 1, scope: !5038, file: !4635, line: 226, type: !128)
!5040 = !DILocation(line: 226, column: 1, scope: !5038)
!5041 = !DILocalVariable(name: "from", arg: 2, scope: !5038, file: !4635, line: 226, type: !7)
!5042 = !DILocalVariable(name: "to", arg: 3, scope: !5038, file: !4635, line: 226, type: !7)
!5043 = distinct !DISubprogram(name: "regcache_cache_only", scope: !3, file: !3, line: 495, type: !5044, scopeLine: 496, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !165)
!5044 = !DISubroutineType(types: !5045)
!5045 = !{null, !128, !440}
!5046 = !DILocalVariable(name: "map", arg: 1, scope: !5043, file: !3, line: 495, type: !128)
!5047 = !DILocation(line: 495, column: 41, scope: !5043)
!5048 = !DILocalVariable(name: "enable", arg: 2, scope: !5043, file: !3, line: 495, type: !440)
!5049 = !DILocation(line: 495, column: 51, scope: !5043)
!5050 = !DILocation(line: 497, column: 2, scope: !5043)
!5051 = !DILocation(line: 497, column: 7, scope: !5043)
!5052 = !DILocation(line: 497, column: 12, scope: !5043)
!5053 = !DILocation(line: 497, column: 17, scope: !5043)
!5054 = !DILocalVariable(name: "__ret_warn_on", scope: !5055, file: !3, line: 498, type: !106)
!5055 = distinct !DILexicalBlock(scope: !5043, file: !3, line: 498, column: 2)
!5056 = !DILocation(line: 498, column: 2, scope: !5055)
!5057 = !DILocation(line: 0, scope: !5055)
!5058 = !DILocation(line: 498, column: 2, scope: !5059)
!5059 = distinct !DILexicalBlock(scope: !5055, file: !3, line: 498, column: 2)
!5060 = !DILocation(line: 498, column: 2, scope: !5061)
!5061 = distinct !DILexicalBlock(scope: !5059, file: !3, line: 498, column: 2)
!5062 = !DILocation(line: 498, column: 2, scope: !5063)
!5063 = distinct !DILexicalBlock(scope: !5061, file: !3, line: 498, column: 2)
!5064 = !DILocation(line: 498, column: 2, scope: !5065)
!5065 = distinct !DILexicalBlock(scope: !5061, file: !3, line: 498, column: 2)
!5066 = !{i32 -2142713299, i32 -2142713270, i32 -2142713224, i32 -2142713166, i32 -2142713112, i32 -2142713058, i32 -2142713003, i32 -2142712972}
!5067 = !DILocation(line: 498, column: 2, scope: !5068)
!5068 = distinct !DILexicalBlock(scope: !5061, file: !3, line: 498, column: 2)
!5069 = !{i32 -2142712560, i32 -2142712553, i32 -2142712501, i32 -2142712470, i32 -2142712440}
!5070 = !DILocation(line: 498, column: 2, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !5061, file: !3, line: 498, column: 2)
!5072 = !DILocation(line: 499, column: 20, scope: !5043)
!5073 = !DILocation(line: 499, column: 2, scope: !5043)
!5074 = !DILocation(line: 499, column: 7, scope: !5043)
!5075 = !DILocation(line: 499, column: 18, scope: !5043)
!5076 = !DILocation(line: 500, column: 26, scope: !5043)
!5077 = !DILocation(line: 500, column: 31, scope: !5043)
!5078 = !DILocation(line: 500, column: 2, scope: !5043)
!5079 = !DILocation(line: 501, column: 2, scope: !5043)
!5080 = !DILocation(line: 501, column: 7, scope: !5043)
!5081 = !DILocation(line: 501, column: 14, scope: !5043)
!5082 = !DILocation(line: 501, column: 19, scope: !5043)
!5083 = !DILocation(line: 502, column: 1, scope: !5043)
!5084 = distinct !DISubprogram(name: "trace_regmap_cache_only", scope: !4635, file: !4635, line: 162, type: !5044, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!5085 = !DILocalVariable(name: "map", arg: 1, scope: !5084, file: !4635, line: 162, type: !128)
!5086 = !DILocation(line: 162, column: 1, scope: !5084)
!5087 = !DILocalVariable(name: "flag", arg: 2, scope: !5084, file: !4635, line: 162, type: !440)
!5088 = distinct !DISubprogram(name: "regcache_mark_dirty", scope: !3, file: !3, line: 518, type: !4527, scopeLine: 519, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !165)
!5089 = !DILocalVariable(name: "map", arg: 1, scope: !5088, file: !3, line: 518, type: !128)
!5090 = !DILocation(line: 518, column: 41, scope: !5088)
!5091 = !DILocation(line: 520, column: 2, scope: !5088)
!5092 = !DILocation(line: 520, column: 7, scope: !5088)
!5093 = !DILocation(line: 520, column: 12, scope: !5088)
!5094 = !DILocation(line: 520, column: 17, scope: !5088)
!5095 = !DILocation(line: 521, column: 2, scope: !5088)
!5096 = !DILocation(line: 521, column: 7, scope: !5088)
!5097 = !DILocation(line: 521, column: 19, scope: !5088)
!5098 = !DILocation(line: 522, column: 2, scope: !5088)
!5099 = !DILocation(line: 522, column: 7, scope: !5088)
!5100 = !DILocation(line: 522, column: 24, scope: !5088)
!5101 = !DILocation(line: 523, column: 2, scope: !5088)
!5102 = !DILocation(line: 523, column: 7, scope: !5088)
!5103 = !DILocation(line: 523, column: 14, scope: !5088)
!5104 = !DILocation(line: 523, column: 19, scope: !5088)
!5105 = !DILocation(line: 524, column: 1, scope: !5088)
!5106 = distinct !DISubprogram(name: "regcache_cache_bypass", scope: !3, file: !3, line: 538, type: !5044, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !165)
!5107 = !DILocalVariable(name: "map", arg: 1, scope: !5106, file: !3, line: 538, type: !128)
!5108 = !DILocation(line: 538, column: 43, scope: !5106)
!5109 = !DILocalVariable(name: "enable", arg: 2, scope: !5106, file: !3, line: 538, type: !440)
!5110 = !DILocation(line: 538, column: 53, scope: !5106)
!5111 = !DILocation(line: 540, column: 2, scope: !5106)
!5112 = !DILocation(line: 540, column: 7, scope: !5106)
!5113 = !DILocation(line: 540, column: 12, scope: !5106)
!5114 = !DILocation(line: 540, column: 17, scope: !5106)
!5115 = !DILocalVariable(name: "__ret_warn_on", scope: !5116, file: !3, line: 541, type: !106)
!5116 = distinct !DILexicalBlock(scope: !5106, file: !3, line: 541, column: 2)
!5117 = !DILocation(line: 541, column: 2, scope: !5116)
!5118 = !DILocation(line: 0, scope: !5116)
!5119 = !DILocation(line: 541, column: 2, scope: !5120)
!5120 = distinct !DILexicalBlock(scope: !5116, file: !3, line: 541, column: 2)
!5121 = !DILocation(line: 541, column: 2, scope: !5122)
!5122 = distinct !DILexicalBlock(scope: !5120, file: !3, line: 541, column: 2)
!5123 = !DILocation(line: 541, column: 2, scope: !5124)
!5124 = distinct !DILexicalBlock(scope: !5122, file: !3, line: 541, column: 2)
!5125 = !DILocation(line: 541, column: 2, scope: !5126)
!5126 = distinct !DILexicalBlock(scope: !5122, file: !3, line: 541, column: 2)
!5127 = !{i32 -2142711633, i32 -2142711604, i32 -2142711558, i32 -2142711500, i32 -2142711446, i32 -2142711392, i32 -2142711337, i32 -2142711306}
!5128 = !DILocation(line: 541, column: 2, scope: !5129)
!5129 = distinct !DILexicalBlock(scope: !5122, file: !3, line: 541, column: 2)
!5130 = !{i32 -2142710894, i32 -2142710887, i32 -2142710835, i32 -2142710804, i32 -2142710774}
!5131 = !DILocation(line: 541, column: 2, scope: !5132)
!5132 = distinct !DILexicalBlock(scope: !5122, file: !3, line: 541, column: 2)
!5133 = !DILocation(line: 542, column: 22, scope: !5106)
!5134 = !DILocation(line: 542, column: 2, scope: !5106)
!5135 = !DILocation(line: 542, column: 7, scope: !5106)
!5136 = !DILocation(line: 542, column: 20, scope: !5106)
!5137 = !DILocation(line: 543, column: 28, scope: !5106)
!5138 = !DILocation(line: 543, column: 33, scope: !5106)
!5139 = !DILocation(line: 543, column: 2, scope: !5106)
!5140 = !DILocation(line: 544, column: 2, scope: !5106)
!5141 = !DILocation(line: 544, column: 7, scope: !5106)
!5142 = !DILocation(line: 544, column: 14, scope: !5106)
!5143 = !DILocation(line: 544, column: 19, scope: !5106)
!5144 = !DILocation(line: 545, column: 1, scope: !5106)
!5145 = distinct !DISubprogram(name: "trace_regmap_cache_bypass", scope: !4635, file: !4635, line: 170, type: !5044, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!5146 = !DILocalVariable(name: "map", arg: 1, scope: !5145, file: !4635, line: 170, type: !128)
!5147 = !DILocation(line: 170, column: 1, scope: !5145)
!5148 = !DILocalVariable(name: "flag", arg: 2, scope: !5145, file: !4635, line: 170, type: !440)
!5149 = distinct !DISubprogram(name: "regcache_set_val", scope: !3, file: !3, line: 548, type: !5150, scopeLine: 550, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !165)
!5150 = !DISubroutineType(types: !5151)
!5151 = !{!440, !128, !107, !7, !7}
!5152 = !DILocalVariable(name: "map", arg: 1, scope: !5149, file: !3, line: 548, type: !128)
!5153 = !DILocation(line: 548, column: 38, scope: !5149)
!5154 = !DILocalVariable(name: "base", arg: 2, scope: !5149, file: !3, line: 548, type: !107)
!5155 = !DILocation(line: 548, column: 49, scope: !5149)
!5156 = !DILocalVariable(name: "idx", arg: 3, scope: !5149, file: !3, line: 548, type: !7)
!5157 = !DILocation(line: 548, column: 68, scope: !5149)
!5158 = !DILocalVariable(name: "val", arg: 4, scope: !5149, file: !3, line: 549, type: !7)
!5159 = !DILocation(line: 549, column: 22, scope: !5149)
!5160 = !DILocation(line: 551, column: 23, scope: !5161)
!5161 = distinct !DILexicalBlock(scope: !5149, file: !3, line: 551, column: 6)
!5162 = !DILocation(line: 551, column: 28, scope: !5161)
!5163 = !DILocation(line: 551, column: 34, scope: !5161)
!5164 = !DILocation(line: 551, column: 6, scope: !5161)
!5165 = !DILocation(line: 551, column: 42, scope: !5161)
!5166 = !DILocation(line: 551, column: 39, scope: !5161)
!5167 = !DILocation(line: 551, column: 6, scope: !5149)
!5168 = !DILocation(line: 552, column: 3, scope: !5161)
!5169 = !DILocation(line: 555, column: 6, scope: !5170)
!5170 = distinct !DILexicalBlock(scope: !5149, file: !3, line: 555, column: 6)
!5171 = !DILocation(line: 555, column: 11, scope: !5170)
!5172 = !DILocation(line: 555, column: 18, scope: !5170)
!5173 = !DILocation(line: 555, column: 6, scope: !5149)
!5174 = !DILocation(line: 556, column: 3, scope: !5175)
!5175 = distinct !DILexicalBlock(scope: !5170, file: !3, line: 555, column: 30)
!5176 = !DILocation(line: 556, column: 8, scope: !5175)
!5177 = !DILocation(line: 556, column: 15, scope: !5175)
!5178 = !DILocation(line: 556, column: 26, scope: !5175)
!5179 = !DILocation(line: 556, column: 34, scope: !5175)
!5180 = !DILocation(line: 556, column: 39, scope: !5175)
!5181 = !DILocation(line: 556, column: 57, scope: !5175)
!5182 = !DILocation(line: 556, column: 55, scope: !5175)
!5183 = !DILocation(line: 556, column: 31, scope: !5175)
!5184 = !DILocation(line: 557, column: 12, scope: !5175)
!5185 = !DILocation(line: 558, column: 3, scope: !5175)
!5186 = !DILocation(line: 561, column: 10, scope: !5149)
!5187 = !DILocation(line: 561, column: 15, scope: !5149)
!5188 = !DILocation(line: 561, column: 2, scope: !5149)
!5189 = !DILocalVariable(name: "cache", scope: !5190, file: !3, line: 563, type: !5192)
!5190 = distinct !DILexicalBlock(scope: !5191, file: !3, line: 562, column: 10)
!5191 = distinct !DILexicalBlock(scope: !5149, file: !3, line: 561, column: 32)
!5192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!5193 = !DILocation(line: 563, column: 7, scope: !5190)
!5194 = !DILocation(line: 563, column: 15, scope: !5190)
!5195 = !DILocation(line: 565, column: 16, scope: !5190)
!5196 = !DILocation(line: 565, column: 3, scope: !5190)
!5197 = !DILocation(line: 565, column: 9, scope: !5190)
!5198 = !DILocation(line: 565, column: 14, scope: !5190)
!5199 = !DILocation(line: 566, column: 3, scope: !5190)
!5200 = !DILocalVariable(name: "cache", scope: !5201, file: !3, line: 569, type: !5202)
!5201 = distinct !DILexicalBlock(scope: !5191, file: !3, line: 568, column: 10)
!5202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!5203 = !DILocation(line: 569, column: 8, scope: !5201)
!5204 = !DILocation(line: 569, column: 16, scope: !5201)
!5205 = !DILocation(line: 571, column: 16, scope: !5201)
!5206 = !DILocation(line: 571, column: 3, scope: !5201)
!5207 = !DILocation(line: 571, column: 9, scope: !5201)
!5208 = !DILocation(line: 571, column: 14, scope: !5201)
!5209 = !DILocation(line: 572, column: 3, scope: !5201)
!5210 = !DILocalVariable(name: "cache", scope: !5211, file: !3, line: 575, type: !1257)
!5211 = distinct !DILexicalBlock(scope: !5191, file: !3, line: 574, column: 10)
!5212 = !DILocation(line: 575, column: 8, scope: !5211)
!5213 = !DILocation(line: 575, column: 16, scope: !5211)
!5214 = !DILocation(line: 577, column: 16, scope: !5211)
!5215 = !DILocation(line: 577, column: 3, scope: !5211)
!5216 = !DILocation(line: 577, column: 9, scope: !5211)
!5217 = !DILocation(line: 577, column: 14, scope: !5211)
!5218 = !DILocation(line: 578, column: 3, scope: !5211)
!5219 = !DILocalVariable(name: "cache", scope: !5220, file: !3, line: 582, type: !3423)
!5220 = distinct !DILexicalBlock(scope: !5191, file: !3, line: 581, column: 10)
!5221 = !DILocation(line: 582, column: 8, scope: !5220)
!5222 = !DILocation(line: 582, column: 16, scope: !5220)
!5223 = !DILocation(line: 584, column: 16, scope: !5220)
!5224 = !DILocation(line: 584, column: 3, scope: !5220)
!5225 = !DILocation(line: 584, column: 9, scope: !5220)
!5226 = !DILocation(line: 584, column: 14, scope: !5220)
!5227 = !DILocation(line: 585, column: 3, scope: !5220)
!5228 = !DILocation(line: 589, column: 3, scope: !5191)
!5229 = !DILocation(line: 589, column: 3, scope: !5230)
!5230 = distinct !DILexicalBlock(scope: !5191, file: !3, line: 589, column: 3)
!5231 = !DILocation(line: 589, column: 3, scope: !5232)
!5232 = distinct !DILexicalBlock(scope: !5230, file: !3, line: 589, column: 3)
!5233 = !DILocation(line: 589, column: 3, scope: !5234)
!5234 = distinct !DILexicalBlock(scope: !5230, file: !3, line: 589, column: 3)
!5235 = !{i32 -2142710403, i32 -2142710374, i32 -2142710328, i32 -2142710270, i32 -2142710216, i32 -2142710162, i32 -2142710107, i32 -2142710076}
!5236 = !DILocation(line: 589, column: 3, scope: !5237)
!5237 = distinct !DILexicalBlock(scope: !5238, file: !3, line: 589, column: 3)
!5238 = distinct !DILexicalBlock(scope: !5230, file: !3, line: 589, column: 3)
!5239 = !{i32 -2142709623, i32 -2142709616, i32 -2142709562, i32 -2142709531, i32 -2142709501}
!5240 = !DILocation(line: 589, column: 3, scope: !5238)
!5241 = !DILocation(line: 590, column: 2, scope: !5191)
!5242 = !DILocation(line: 591, column: 2, scope: !5149)
!5243 = !DILocation(line: 592, column: 1, scope: !5149)
!5244 = distinct !DISubprogram(name: "regcache_get_val", scope: !3, file: !3, line: 594, type: !5245, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !165)
!5245 = !DISubroutineType(types: !5246)
!5246 = !{!7, !128, !1970, !7}
!5247 = !DILocalVariable(name: "map", arg: 1, scope: !5244, file: !3, line: 594, type: !128)
!5248 = !DILocation(line: 594, column: 46, scope: !5244)
!5249 = !DILocalVariable(name: "base", arg: 2, scope: !5244, file: !3, line: 594, type: !1970)
!5250 = !DILocation(line: 594, column: 63, scope: !5244)
!5251 = !DILocalVariable(name: "idx", arg: 3, scope: !5244, file: !3, line: 595, type: !7)
!5252 = !DILocation(line: 595, column: 23, scope: !5244)
!5253 = !DILocation(line: 597, column: 7, scope: !5254)
!5254 = distinct !DILexicalBlock(scope: !5244, file: !3, line: 597, column: 6)
!5255 = !DILocation(line: 597, column: 6, scope: !5244)
!5256 = !DILocation(line: 598, column: 3, scope: !5254)
!5257 = !DILocation(line: 601, column: 6, scope: !5258)
!5258 = distinct !DILexicalBlock(scope: !5244, file: !3, line: 601, column: 6)
!5259 = !DILocation(line: 601, column: 11, scope: !5258)
!5260 = !DILocation(line: 601, column: 18, scope: !5258)
!5261 = !DILocation(line: 601, column: 6, scope: !5244)
!5262 = !DILocation(line: 602, column: 10, scope: !5258)
!5263 = !DILocation(line: 602, column: 15, scope: !5258)
!5264 = !DILocation(line: 602, column: 22, scope: !5258)
!5265 = !DILocation(line: 602, column: 54, scope: !5258)
!5266 = !DILocation(line: 602, column: 59, scope: !5258)
!5267 = !DILocation(line: 603, column: 12, scope: !5258)
!5268 = !DILocation(line: 602, column: 32, scope: !5258)
!5269 = !DILocation(line: 602, column: 3, scope: !5258)
!5270 = !DILocation(line: 605, column: 10, scope: !5244)
!5271 = !DILocation(line: 605, column: 15, scope: !5244)
!5272 = !DILocation(line: 605, column: 2, scope: !5244)
!5273 = !DILocalVariable(name: "cache", scope: !5274, file: !3, line: 607, type: !5276)
!5274 = distinct !DILexicalBlock(scope: !5275, file: !3, line: 606, column: 10)
!5275 = distinct !DILexicalBlock(scope: !5244, file: !3, line: 605, column: 32)
!5276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5277, size: 64)
!5277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1194)
!5278 = !DILocation(line: 607, column: 13, scope: !5274)
!5279 = !DILocation(line: 607, column: 21, scope: !5274)
!5280 = !DILocation(line: 609, column: 10, scope: !5274)
!5281 = !DILocation(line: 609, column: 16, scope: !5274)
!5282 = !DILocation(line: 609, column: 3, scope: !5274)
!5283 = !DILocalVariable(name: "cache", scope: !5284, file: !3, line: 612, type: !5285)
!5284 = distinct !DILexicalBlock(scope: !5275, file: !3, line: 611, column: 10)
!5285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5286, size: 64)
!5286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !803)
!5287 = !DILocation(line: 612, column: 14, scope: !5284)
!5288 = !DILocation(line: 612, column: 22, scope: !5284)
!5289 = !DILocation(line: 614, column: 10, scope: !5284)
!5290 = !DILocation(line: 614, column: 16, scope: !5284)
!5291 = !DILocation(line: 614, column: 3, scope: !5284)
!5292 = !DILocalVariable(name: "cache", scope: !5293, file: !3, line: 617, type: !5294)
!5293 = distinct !DILexicalBlock(scope: !5275, file: !3, line: 616, column: 10)
!5294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5295, size: 64)
!5295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !370)
!5296 = !DILocation(line: 617, column: 14, scope: !5293)
!5297 = !DILocation(line: 617, column: 22, scope: !5293)
!5298 = !DILocation(line: 619, column: 10, scope: !5293)
!5299 = !DILocation(line: 619, column: 16, scope: !5293)
!5300 = !DILocation(line: 619, column: 3, scope: !5293)
!5301 = !DILocalVariable(name: "cache", scope: !5302, file: !3, line: 623, type: !5303)
!5302 = distinct !DILexicalBlock(scope: !5275, file: !3, line: 622, column: 10)
!5303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5304, size: 64)
!5304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !374)
!5305 = !DILocation(line: 623, column: 14, scope: !5302)
!5306 = !DILocation(line: 623, column: 22, scope: !5302)
!5307 = !DILocation(line: 625, column: 10, scope: !5302)
!5308 = !DILocation(line: 625, column: 16, scope: !5302)
!5309 = !DILocation(line: 625, column: 3, scope: !5302)
!5310 = !DILocation(line: 629, column: 3, scope: !5275)
!5311 = !DILocation(line: 629, column: 3, scope: !5312)
!5312 = distinct !DILexicalBlock(scope: !5275, file: !3, line: 629, column: 3)
!5313 = !DILocation(line: 629, column: 3, scope: !5314)
!5314 = distinct !DILexicalBlock(scope: !5312, file: !3, line: 629, column: 3)
!5315 = !DILocation(line: 629, column: 3, scope: !5316)
!5316 = distinct !DILexicalBlock(scope: !5312, file: !3, line: 629, column: 3)
!5317 = !{i32 -2142709293, i32 -2142709264, i32 -2142709218, i32 -2142709160, i32 -2142709106, i32 -2142709052, i32 -2142708997, i32 -2142708966}
!5318 = !DILocation(line: 629, column: 3, scope: !5319)
!5319 = distinct !DILexicalBlock(scope: !5320, file: !3, line: 629, column: 3)
!5320 = distinct !DILexicalBlock(scope: !5312, file: !3, line: 629, column: 3)
!5321 = !{i32 -2142708513, i32 -2142708506, i32 -2142708452, i32 -2142708421, i32 -2142708391}
!5322 = !DILocation(line: 629, column: 3, scope: !5320)
!5323 = !DILocation(line: 630, column: 2, scope: !5275)
!5324 = !DILocation(line: 632, column: 2, scope: !5244)
!5325 = !DILocation(line: 633, column: 1, scope: !5244)
!5326 = distinct !DISubprogram(name: "regcache_get_val_addr", scope: !117, file: !117, line: 251, type: !5327, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!5327 = !DISubroutineType(types: !5328)
!5328 = !{!1970, !128, !1970, !7}
!5329 = !DILocalVariable(name: "map", arg: 1, scope: !5326, file: !117, line: 251, type: !128)
!5330 = !DILocation(line: 251, column: 64, scope: !5326)
!5331 = !DILocalVariable(name: "base", arg: 2, scope: !5326, file: !117, line: 252, type: !1970)
!5332 = !DILocation(line: 252, column: 19, scope: !5326)
!5333 = !DILocalVariable(name: "idx", arg: 3, scope: !5326, file: !117, line: 253, type: !7)
!5334 = !DILocation(line: 253, column: 20, scope: !5326)
!5335 = !DILocation(line: 255, column: 9, scope: !5326)
!5336 = !DILocation(line: 255, column: 17, scope: !5326)
!5337 = !DILocation(line: 255, column: 22, scope: !5326)
!5338 = !DILocation(line: 255, column: 40, scope: !5326)
!5339 = !DILocation(line: 255, column: 38, scope: !5326)
!5340 = !DILocation(line: 255, column: 14, scope: !5326)
!5341 = !DILocation(line: 255, column: 2, scope: !5326)
!5342 = distinct !DISubprogram(name: "regcache_lookup_reg", scope: !3, file: !3, line: 643, type: !5343, scopeLine: 644, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !165)
!5343 = !DISubroutineType(types: !5344)
!5344 = !{!106, !128, !7}
!5345 = !DILocalVariable(name: "map", arg: 1, scope: !5342, file: !3, line: 643, type: !128)
!5346 = !DILocation(line: 643, column: 40, scope: !5342)
!5347 = !DILocalVariable(name: "reg", arg: 2, scope: !5342, file: !3, line: 643, type: !7)
!5348 = !DILocation(line: 643, column: 58, scope: !5342)
!5349 = !DILocalVariable(name: "key", scope: !5342, file: !3, line: 645, type: !3721)
!5350 = !DILocation(line: 645, column: 21, scope: !5342)
!5351 = !DILocalVariable(name: "r", scope: !5342, file: !3, line: 646, type: !3720)
!5352 = !DILocation(line: 646, column: 22, scope: !5342)
!5353 = !DILocation(line: 648, column: 12, scope: !5342)
!5354 = !DILocation(line: 648, column: 6, scope: !5342)
!5355 = !DILocation(line: 648, column: 10, scope: !5342)
!5356 = !DILocation(line: 649, column: 6, scope: !5342)
!5357 = !DILocation(line: 649, column: 10, scope: !5342)
!5358 = !DILocation(line: 651, column: 14, scope: !5342)
!5359 = !DILocation(line: 651, column: 20, scope: !5342)
!5360 = !DILocation(line: 651, column: 25, scope: !5342)
!5361 = !DILocation(line: 651, column: 39, scope: !5342)
!5362 = !DILocation(line: 651, column: 44, scope: !5342)
!5363 = !DILocation(line: 651, column: 6, scope: !5342)
!5364 = !DILocation(line: 651, column: 4, scope: !5342)
!5365 = !DILocation(line: 654, column: 6, scope: !5366)
!5366 = distinct !DILexicalBlock(scope: !5342, file: !3, line: 654, column: 6)
!5367 = !DILocation(line: 654, column: 6, scope: !5342)
!5368 = !DILocation(line: 655, column: 10, scope: !5366)
!5369 = !DILocation(line: 655, column: 14, scope: !5366)
!5370 = !DILocation(line: 655, column: 19, scope: !5366)
!5371 = !DILocation(line: 655, column: 12, scope: !5366)
!5372 = !DILocation(line: 655, column: 3, scope: !5366)
!5373 = !DILocation(line: 657, column: 3, scope: !5366)
!5374 = !DILocation(line: 658, column: 1, scope: !5342)
!5375 = distinct !DISubprogram(name: "regcache_default_cmp", scope: !3, file: !3, line: 635, type: !5376, scopeLine: 636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!5376 = !DISubroutineType(types: !5377)
!5377 = !{!106, !1970, !1970}
!5378 = !DILocalVariable(name: "a", arg: 1, scope: !5375, file: !3, line: 635, type: !1970)
!5379 = !DILocation(line: 635, column: 45, scope: !5375)
!5380 = !DILocalVariable(name: "b", arg: 2, scope: !5375, file: !3, line: 635, type: !1970)
!5381 = !DILocation(line: 635, column: 60, scope: !5375)
!5382 = !DILocalVariable(name: "_a", scope: !5375, file: !3, line: 637, type: !3797)
!5383 = !DILocation(line: 637, column: 28, scope: !5375)
!5384 = !DILocation(line: 637, column: 33, scope: !5375)
!5385 = !DILocalVariable(name: "_b", scope: !5375, file: !3, line: 638, type: !3797)
!5386 = !DILocation(line: 638, column: 28, scope: !5375)
!5387 = !DILocation(line: 638, column: 33, scope: !5375)
!5388 = !DILocation(line: 640, column: 9, scope: !5375)
!5389 = !DILocation(line: 640, column: 13, scope: !5375)
!5390 = !DILocation(line: 640, column: 19, scope: !5375)
!5391 = !DILocation(line: 640, column: 23, scope: !5375)
!5392 = !DILocation(line: 640, column: 17, scope: !5375)
!5393 = !DILocation(line: 640, column: 2, scope: !5375)
!5394 = distinct !DISubprogram(name: "regcache_sync_block", scope: !3, file: !3, line: 774, type: !5395, scopeLine: 778, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !165)
!5395 = !DISubroutineType(types: !5396)
!5396 = !{!106, !128, !107, !110, !7, !7, !7}
!5397 = !DILocalVariable(name: "map", arg: 1, scope: !5394, file: !3, line: 774, type: !128)
!5398 = !DILocation(line: 774, column: 40, scope: !5394)
!5399 = !DILocalVariable(name: "block", arg: 2, scope: !5394, file: !3, line: 774, type: !107)
!5400 = !DILocation(line: 774, column: 51, scope: !5394)
!5401 = !DILocalVariable(name: "cache_present", arg: 3, scope: !5394, file: !3, line: 775, type: !110)
!5402 = !DILocation(line: 775, column: 19, scope: !5394)
!5403 = !DILocalVariable(name: "block_base", arg: 4, scope: !5394, file: !3, line: 776, type: !7)
!5404 = !DILocation(line: 776, column: 17, scope: !5394)
!5405 = !DILocalVariable(name: "start", arg: 5, scope: !5394, file: !3, line: 776, type: !7)
!5406 = !DILocation(line: 776, column: 42, scope: !5394)
!5407 = !DILocalVariable(name: "end", arg: 6, scope: !5394, file: !3, line: 777, type: !7)
!5408 = !DILocation(line: 777, column: 17, scope: !5394)
!5409 = !DILocation(line: 779, column: 27, scope: !5410)
!5410 = distinct !DILexicalBlock(scope: !5394, file: !3, line: 779, column: 6)
!5411 = !DILocation(line: 779, column: 6, scope: !5410)
!5412 = !DILocation(line: 779, column: 32, scope: !5410)
!5413 = !DILocation(line: 779, column: 36, scope: !5410)
!5414 = !DILocation(line: 779, column: 41, scope: !5410)
!5415 = !DILocation(line: 779, column: 6, scope: !5394)
!5416 = !DILocation(line: 780, column: 34, scope: !5410)
!5417 = !DILocation(line: 780, column: 39, scope: !5410)
!5418 = !DILocation(line: 780, column: 46, scope: !5410)
!5419 = !DILocation(line: 781, column: 13, scope: !5410)
!5420 = !DILocation(line: 781, column: 25, scope: !5410)
!5421 = !DILocation(line: 781, column: 32, scope: !5410)
!5422 = !DILocation(line: 780, column: 10, scope: !5410)
!5423 = !DILocation(line: 780, column: 3, scope: !5410)
!5424 = !DILocation(line: 783, column: 37, scope: !5410)
!5425 = !DILocation(line: 783, column: 42, scope: !5410)
!5426 = !DILocation(line: 783, column: 49, scope: !5410)
!5427 = !DILocation(line: 784, column: 9, scope: !5410)
!5428 = !DILocation(line: 784, column: 21, scope: !5410)
!5429 = !DILocation(line: 784, column: 28, scope: !5410)
!5430 = !DILocation(line: 783, column: 10, scope: !5410)
!5431 = !DILocation(line: 783, column: 3, scope: !5410)
!5432 = !DILocation(line: 785, column: 1, scope: !5394)
!5433 = distinct !DISubprogram(name: "regcache_sync_block_raw", scope: !3, file: !3, line: 732, type: !5395, scopeLine: 736, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!5434 = !DILocalVariable(name: "map", arg: 1, scope: !5433, file: !3, line: 732, type: !128)
!5435 = !DILocation(line: 732, column: 51, scope: !5433)
!5436 = !DILocalVariable(name: "block", arg: 2, scope: !5433, file: !3, line: 732, type: !107)
!5437 = !DILocation(line: 732, column: 62, scope: !5433)
!5438 = !DILocalVariable(name: "cache_present", arg: 3, scope: !5433, file: !3, line: 733, type: !110)
!5439 = !DILocation(line: 733, column: 23, scope: !5433)
!5440 = !DILocalVariable(name: "block_base", arg: 4, scope: !5433, file: !3, line: 734, type: !7)
!5441 = !DILocation(line: 734, column: 21, scope: !5433)
!5442 = !DILocalVariable(name: "start", arg: 5, scope: !5433, file: !3, line: 734, type: !7)
!5443 = !DILocation(line: 734, column: 46, scope: !5433)
!5444 = !DILocalVariable(name: "end", arg: 6, scope: !5433, file: !3, line: 735, type: !7)
!5445 = !DILocation(line: 735, column: 21, scope: !5433)
!5446 = !DILocalVariable(name: "i", scope: !5433, file: !3, line: 737, type: !7)
!5447 = !DILocation(line: 737, column: 15, scope: !5433)
!5448 = !DILocalVariable(name: "val", scope: !5433, file: !3, line: 737, type: !7)
!5449 = !DILocation(line: 737, column: 18, scope: !5433)
!5450 = !DILocalVariable(name: "regtmp", scope: !5433, file: !3, line: 738, type: !7)
!5451 = !DILocation(line: 738, column: 15, scope: !5433)
!5452 = !DILocalVariable(name: "base", scope: !5433, file: !3, line: 739, type: !7)
!5453 = !DILocation(line: 739, column: 15, scope: !5433)
!5454 = !DILocalVariable(name: "data", scope: !5433, file: !3, line: 740, type: !1970)
!5455 = !DILocation(line: 740, column: 14, scope: !5433)
!5456 = !DILocalVariable(name: "ret", scope: !5433, file: !3, line: 741, type: !106)
!5457 = !DILocation(line: 741, column: 6, scope: !5433)
!5458 = !DILocation(line: 743, column: 11, scope: !5459)
!5459 = distinct !DILexicalBlock(scope: !5433, file: !3, line: 743, column: 2)
!5460 = !DILocation(line: 743, column: 9, scope: !5459)
!5461 = !DILocation(line: 743, column: 7, scope: !5459)
!5462 = !DILocation(line: 743, column: 18, scope: !5463)
!5463 = distinct !DILexicalBlock(scope: !5459, file: !3, line: 743, column: 2)
!5464 = !DILocation(line: 743, column: 22, scope: !5463)
!5465 = !DILocation(line: 743, column: 20, scope: !5463)
!5466 = !DILocation(line: 743, column: 2, scope: !5459)
!5467 = !DILocation(line: 744, column: 12, scope: !5468)
!5468 = distinct !DILexicalBlock(scope: !5463, file: !3, line: 743, column: 32)
!5469 = !DILocation(line: 744, column: 26, scope: !5468)
!5470 = !DILocation(line: 744, column: 30, scope: !5468)
!5471 = !DILocation(line: 744, column: 35, scope: !5468)
!5472 = !DILocation(line: 744, column: 28, scope: !5468)
!5473 = !DILocation(line: 744, column: 23, scope: !5468)
!5474 = !DILocation(line: 744, column: 10, scope: !5468)
!5475 = !DILocation(line: 746, column: 29, scope: !5476)
!5476 = distinct !DILexicalBlock(scope: !5468, file: !3, line: 746, column: 7)
!5477 = !DILocation(line: 746, column: 44, scope: !5476)
!5478 = !DILocation(line: 746, column: 8, scope: !5476)
!5479 = !DILocation(line: 746, column: 47, scope: !5476)
!5480 = !DILocation(line: 747, column: 25, scope: !5476)
!5481 = !DILocation(line: 747, column: 30, scope: !5476)
!5482 = !DILocation(line: 747, column: 8, scope: !5476)
!5483 = !DILocation(line: 746, column: 7, scope: !5468)
!5484 = !DILocation(line: 748, column: 40, scope: !5485)
!5485 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 747, column: 39)
!5486 = !DILocation(line: 749, column: 12, scope: !5485)
!5487 = !DILocation(line: 749, column: 18, scope: !5485)
!5488 = !DILocation(line: 748, column: 10, scope: !5485)
!5489 = !DILocation(line: 748, column: 8, scope: !5485)
!5490 = !DILocation(line: 750, column: 8, scope: !5491)
!5491 = distinct !DILexicalBlock(scope: !5485, file: !3, line: 750, column: 8)
!5492 = !DILocation(line: 750, column: 12, scope: !5491)
!5493 = !DILocation(line: 750, column: 8, scope: !5485)
!5494 = !DILocation(line: 751, column: 12, scope: !5491)
!5495 = !DILocation(line: 751, column: 5, scope: !5491)
!5496 = !DILocation(line: 752, column: 4, scope: !5485)
!5497 = !DILocation(line: 755, column: 26, scope: !5468)
!5498 = !DILocation(line: 755, column: 31, scope: !5468)
!5499 = !DILocation(line: 755, column: 38, scope: !5468)
!5500 = !DILocation(line: 755, column: 9, scope: !5468)
!5501 = !DILocation(line: 755, column: 7, scope: !5468)
!5502 = !DILocation(line: 756, column: 32, scope: !5503)
!5503 = distinct !DILexicalBlock(scope: !5468, file: !3, line: 756, column: 7)
!5504 = !DILocation(line: 756, column: 37, scope: !5503)
!5505 = !DILocation(line: 756, column: 45, scope: !5503)
!5506 = !DILocation(line: 756, column: 8, scope: !5503)
!5507 = !DILocation(line: 756, column: 7, scope: !5468)
!5508 = !DILocation(line: 757, column: 40, scope: !5509)
!5509 = distinct !DILexicalBlock(scope: !5503, file: !3, line: 756, column: 51)
!5510 = !DILocation(line: 758, column: 12, scope: !5509)
!5511 = !DILocation(line: 758, column: 18, scope: !5509)
!5512 = !DILocation(line: 757, column: 10, scope: !5509)
!5513 = !DILocation(line: 757, column: 8, scope: !5509)
!5514 = !DILocation(line: 759, column: 8, scope: !5515)
!5515 = distinct !DILexicalBlock(scope: !5509, file: !3, line: 759, column: 8)
!5516 = !DILocation(line: 759, column: 12, scope: !5515)
!5517 = !DILocation(line: 759, column: 8, scope: !5509)
!5518 = !DILocation(line: 760, column: 12, scope: !5515)
!5519 = !DILocation(line: 760, column: 5, scope: !5515)
!5520 = !DILocation(line: 761, column: 4, scope: !5509)
!5521 = !DILocation(line: 764, column: 8, scope: !5522)
!5522 = distinct !DILexicalBlock(scope: !5468, file: !3, line: 764, column: 7)
!5523 = !DILocation(line: 764, column: 7, scope: !5468)
!5524 = !DILocation(line: 765, column: 33, scope: !5525)
!5525 = distinct !DILexicalBlock(scope: !5522, file: !3, line: 764, column: 14)
!5526 = !DILocation(line: 765, column: 38, scope: !5525)
!5527 = !DILocation(line: 765, column: 45, scope: !5525)
!5528 = !DILocation(line: 765, column: 11, scope: !5525)
!5529 = !DILocation(line: 765, column: 9, scope: !5525)
!5530 = !DILocation(line: 766, column: 11, scope: !5525)
!5531 = !DILocation(line: 766, column: 9, scope: !5525)
!5532 = !DILocation(line: 767, column: 3, scope: !5525)
!5533 = !DILocation(line: 768, column: 2, scope: !5468)
!5534 = !DILocation(line: 743, column: 28, scope: !5463)
!5535 = !DILocation(line: 743, column: 2, scope: !5463)
!5536 = distinct !{!5536, !5466, !5537}
!5537 = !DILocation(line: 768, column: 2, scope: !5459)
!5538 = !DILocation(line: 770, column: 39, scope: !5433)
!5539 = !DILocation(line: 770, column: 51, scope: !5433)
!5540 = !DILocation(line: 770, column: 57, scope: !5433)
!5541 = !DILocation(line: 771, column: 4, scope: !5433)
!5542 = !DILocation(line: 771, column: 9, scope: !5433)
!5543 = !DILocation(line: 770, column: 64, scope: !5433)
!5544 = !DILocation(line: 770, column: 9, scope: !5433)
!5545 = !DILocation(line: 770, column: 2, scope: !5433)
!5546 = !DILocation(line: 772, column: 1, scope: !5433)
!5547 = distinct !DISubprogram(name: "regcache_sync_block_single", scope: !3, file: !3, line: 668, type: !5395, scopeLine: 672, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!5548 = !DILocalVariable(name: "map", arg: 1, scope: !5547, file: !3, line: 668, type: !128)
!5549 = !DILocation(line: 668, column: 54, scope: !5547)
!5550 = !DILocalVariable(name: "block", arg: 2, scope: !5547, file: !3, line: 668, type: !107)
!5551 = !DILocation(line: 668, column: 65, scope: !5547)
!5552 = !DILocalVariable(name: "cache_present", arg: 3, scope: !5547, file: !3, line: 669, type: !110)
!5553 = !DILocation(line: 669, column: 26, scope: !5547)
!5554 = !DILocalVariable(name: "block_base", arg: 4, scope: !5547, file: !3, line: 670, type: !7)
!5555 = !DILocation(line: 670, column: 24, scope: !5547)
!5556 = !DILocalVariable(name: "start", arg: 5, scope: !5547, file: !3, line: 671, type: !7)
!5557 = !DILocation(line: 671, column: 24, scope: !5547)
!5558 = !DILocalVariable(name: "end", arg: 6, scope: !5547, file: !3, line: 671, type: !7)
!5559 = !DILocation(line: 671, column: 44, scope: !5547)
!5560 = !DILocalVariable(name: "i", scope: !5547, file: !3, line: 673, type: !7)
!5561 = !DILocation(line: 673, column: 15, scope: !5547)
!5562 = !DILocalVariable(name: "regtmp", scope: !5547, file: !3, line: 673, type: !7)
!5563 = !DILocation(line: 673, column: 18, scope: !5547)
!5564 = !DILocalVariable(name: "val", scope: !5547, file: !3, line: 673, type: !7)
!5565 = !DILocation(line: 673, column: 26, scope: !5547)
!5566 = !DILocalVariable(name: "ret", scope: !5547, file: !3, line: 674, type: !106)
!5567 = !DILocation(line: 674, column: 6, scope: !5547)
!5568 = !DILocation(line: 676, column: 11, scope: !5569)
!5569 = distinct !DILexicalBlock(scope: !5547, file: !3, line: 676, column: 2)
!5570 = !DILocation(line: 676, column: 9, scope: !5569)
!5571 = !DILocation(line: 676, column: 7, scope: !5569)
!5572 = !DILocation(line: 676, column: 18, scope: !5573)
!5573 = distinct !DILexicalBlock(scope: !5569, file: !3, line: 676, column: 2)
!5574 = !DILocation(line: 676, column: 22, scope: !5573)
!5575 = !DILocation(line: 676, column: 20, scope: !5573)
!5576 = !DILocation(line: 676, column: 2, scope: !5569)
!5577 = !DILocation(line: 677, column: 12, scope: !5578)
!5578 = distinct !DILexicalBlock(scope: !5573, file: !3, line: 676, column: 32)
!5579 = !DILocation(line: 677, column: 26, scope: !5578)
!5580 = !DILocation(line: 677, column: 30, scope: !5578)
!5581 = !DILocation(line: 677, column: 35, scope: !5578)
!5582 = !DILocation(line: 677, column: 28, scope: !5578)
!5583 = !DILocation(line: 677, column: 23, scope: !5578)
!5584 = !DILocation(line: 677, column: 10, scope: !5578)
!5585 = !DILocation(line: 679, column: 29, scope: !5586)
!5586 = distinct !DILexicalBlock(scope: !5578, file: !3, line: 679, column: 7)
!5587 = !DILocation(line: 679, column: 44, scope: !5586)
!5588 = !DILocation(line: 679, column: 8, scope: !5586)
!5589 = !DILocation(line: 679, column: 47, scope: !5586)
!5590 = !DILocation(line: 680, column: 25, scope: !5586)
!5591 = !DILocation(line: 680, column: 30, scope: !5586)
!5592 = !DILocation(line: 680, column: 8, scope: !5586)
!5593 = !DILocation(line: 679, column: 7, scope: !5578)
!5594 = !DILocation(line: 681, column: 4, scope: !5586)
!5595 = !DILocation(line: 683, column: 26, scope: !5578)
!5596 = !DILocation(line: 683, column: 31, scope: !5578)
!5597 = !DILocation(line: 683, column: 38, scope: !5578)
!5598 = !DILocation(line: 683, column: 9, scope: !5578)
!5599 = !DILocation(line: 683, column: 7, scope: !5578)
!5600 = !DILocation(line: 684, column: 32, scope: !5601)
!5601 = distinct !DILexicalBlock(scope: !5578, file: !3, line: 684, column: 7)
!5602 = !DILocation(line: 684, column: 37, scope: !5601)
!5603 = !DILocation(line: 684, column: 45, scope: !5601)
!5604 = !DILocation(line: 684, column: 8, scope: !5601)
!5605 = !DILocation(line: 684, column: 7, scope: !5578)
!5606 = !DILocation(line: 685, column: 4, scope: !5601)
!5607 = !DILocation(line: 687, column: 3, scope: !5578)
!5608 = !DILocation(line: 687, column: 8, scope: !5578)
!5609 = !DILocation(line: 687, column: 21, scope: !5578)
!5610 = !DILocation(line: 689, column: 23, scope: !5578)
!5611 = !DILocation(line: 689, column: 28, scope: !5578)
!5612 = !DILocation(line: 689, column: 36, scope: !5578)
!5613 = !DILocation(line: 689, column: 9, scope: !5578)
!5614 = !DILocation(line: 689, column: 7, scope: !5578)
!5615 = !DILocation(line: 691, column: 3, scope: !5578)
!5616 = !DILocation(line: 691, column: 8, scope: !5578)
!5617 = !DILocation(line: 691, column: 21, scope: !5578)
!5618 = !DILocation(line: 692, column: 7, scope: !5619)
!5619 = distinct !DILexicalBlock(scope: !5578, file: !3, line: 692, column: 7)
!5620 = !DILocation(line: 692, column: 11, scope: !5619)
!5621 = !DILocation(line: 692, column: 7, scope: !5578)
!5622 = !DILocation(line: 693, column: 4, scope: !5623)
!5623 = distinct !DILexicalBlock(scope: !5619, file: !3, line: 692, column: 17)
!5624 = !DILocation(line: 695, column: 11, scope: !5623)
!5625 = !DILocation(line: 695, column: 4, scope: !5623)
!5626 = !DILocation(line: 699, column: 2, scope: !5578)
!5627 = !DILocation(line: 676, column: 28, scope: !5573)
!5628 = !DILocation(line: 676, column: 2, scope: !5573)
!5629 = distinct !{!5629, !5576, !5630}
!5630 = !DILocation(line: 699, column: 2, scope: !5569)
!5631 = !DILocation(line: 701, column: 2, scope: !5547)
!5632 = !DILocation(line: 702, column: 1, scope: !5547)
!5633 = distinct !DISubprogram(name: "kmalloc_array", scope: !99, file: !99, line: 584, type: !5634, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!5634 = !DISubroutineType(types: !5635)
!5635 = !{!107, !277, !277, !108}
!5636 = !DILocation(line: 445, column: 72, scope: !4050, inlinedAt: !5637)
!5637 = distinct !DILocation(line: 552, column: 10, scope: !4055, inlinedAt: !5638)
!5638 = distinct !DILocation(line: 591, column: 10, scope: !5639)
!5639 = distinct !DILexicalBlock(scope: !5633, file: !99, line: 590, column: 6)
!5640 = !DILocation(line: 446, column: 9, scope: !4050, inlinedAt: !5637)
!5641 = !DILocation(line: 446, column: 23, scope: !4050, inlinedAt: !5637)
!5642 = !DILocation(line: 448, column: 8, scope: !4050, inlinedAt: !5637)
!5643 = !DILocation(line: 318, column: 67, scope: !4070, inlinedAt: !5644)
!5644 = distinct !DILocation(line: 553, column: 20, scope: !4055, inlinedAt: !5638)
!5645 = !DILocation(line: 346, column: 58, scope: !4076, inlinedAt: !5646)
!5646 = distinct !DILocation(line: 547, column: 11, scope: !4055, inlinedAt: !5638)
!5647 = !DILocation(line: 472, column: 28, scope: !4082, inlinedAt: !5648)
!5648 = distinct !DILocation(line: 481, column: 9, scope: !4087, inlinedAt: !5649)
!5649 = distinct !DILocation(line: 545, column: 11, scope: !4089, inlinedAt: !5638)
!5650 = !DILocation(line: 472, column: 40, scope: !4082, inlinedAt: !5648)
!5651 = !DILocation(line: 472, column: 60, scope: !4082, inlinedAt: !5648)
!5652 = !DILocation(line: 478, column: 51, scope: !4087, inlinedAt: !5649)
!5653 = !DILocation(line: 478, column: 63, scope: !4087, inlinedAt: !5649)
!5654 = !DILocation(line: 480, column: 15, scope: !4087, inlinedAt: !5649)
!5655 = !DILocation(line: 538, column: 45, scope: !4057, inlinedAt: !5638)
!5656 = !DILocation(line: 538, column: 57, scope: !4057, inlinedAt: !5638)
!5657 = !DILocation(line: 542, column: 16, scope: !4055, inlinedAt: !5638)
!5658 = !DILocalVariable(name: "n", arg: 1, scope: !5633, file: !99, line: 584, type: !277)
!5659 = !DILocation(line: 584, column: 42, scope: !5633)
!5660 = !DILocalVariable(name: "size", arg: 2, scope: !5633, file: !99, line: 584, type: !277)
!5661 = !DILocation(line: 584, column: 52, scope: !5633)
!5662 = !DILocalVariable(name: "flags", arg: 3, scope: !5633, file: !99, line: 584, type: !108)
!5663 = !DILocation(line: 584, column: 64, scope: !5633)
!5664 = !DILocalVariable(name: "bytes", scope: !5633, file: !99, line: 586, type: !277)
!5665 = !DILocation(line: 586, column: 9, scope: !5633)
!5666 = !DILocalVariable(name: "__a", scope: !5667, file: !99, line: 588, type: !277)
!5667 = distinct !DILexicalBlock(scope: !5668, file: !99, line: 588, column: 6)
!5668 = distinct !DILexicalBlock(scope: !5633, file: !99, line: 588, column: 6)
!5669 = !DILocation(line: 588, column: 6, scope: !5667)
!5670 = !DILocalVariable(name: "__b", scope: !5667, file: !99, line: 588, type: !277)
!5671 = !DILocalVariable(name: "__d", scope: !5667, file: !99, line: 588, type: !5672)
!5672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!5673 = !DILocation(line: 588, column: 6, scope: !5668)
!5674 = !DILocation(line: 588, column: 6, scope: !5633)
!5675 = !DILocation(line: 589, column: 3, scope: !5668)
!5676 = !DILocation(line: 590, column: 27, scope: !5639)
!5677 = !DILocation(line: 590, column: 6, scope: !5639)
!5678 = !DILocation(line: 590, column: 30, scope: !5639)
!5679 = !DILocation(line: 590, column: 54, scope: !5639)
!5680 = !DILocation(line: 590, column: 33, scope: !5639)
!5681 = !DILocation(line: 590, column: 6, scope: !5633)
!5682 = !DILocation(line: 591, column: 18, scope: !5639)
!5683 = !DILocation(line: 591, column: 25, scope: !5639)
!5684 = !DILocation(line: 540, column: 27, scope: !4056, inlinedAt: !5638)
!5685 = !DILocation(line: 540, column: 6, scope: !4056, inlinedAt: !5638)
!5686 = !DILocation(line: 540, column: 6, scope: !4057, inlinedAt: !5638)
!5687 = !DILocation(line: 544, column: 7, scope: !4089, inlinedAt: !5638)
!5688 = !DILocation(line: 544, column: 12, scope: !4089, inlinedAt: !5638)
!5689 = !DILocation(line: 544, column: 7, scope: !4055, inlinedAt: !5638)
!5690 = !DILocation(line: 545, column: 25, scope: !4089, inlinedAt: !5638)
!5691 = !DILocation(line: 545, column: 31, scope: !4089, inlinedAt: !5638)
!5692 = !DILocation(line: 480, column: 33, scope: !4087, inlinedAt: !5649)
!5693 = !DILocation(line: 480, column: 23, scope: !4087, inlinedAt: !5649)
!5694 = !DILocation(line: 481, column: 29, scope: !4087, inlinedAt: !5649)
!5695 = !DILocation(line: 481, column: 35, scope: !4087, inlinedAt: !5649)
!5696 = !DILocation(line: 481, column: 42, scope: !4087, inlinedAt: !5649)
!5697 = !DILocation(line: 474, column: 23, scope: !4082, inlinedAt: !5648)
!5698 = !DILocation(line: 474, column: 29, scope: !4082, inlinedAt: !5648)
!5699 = !DILocation(line: 474, column: 36, scope: !4082, inlinedAt: !5648)
!5700 = !DILocation(line: 474, column: 9, scope: !4082, inlinedAt: !5648)
!5701 = !DILocation(line: 545, column: 4, scope: !4089, inlinedAt: !5638)
!5702 = !DILocation(line: 547, column: 25, scope: !4055, inlinedAt: !5638)
!5703 = !DILocation(line: 348, column: 7, scope: !4214, inlinedAt: !5646)
!5704 = !DILocation(line: 348, column: 6, scope: !4076, inlinedAt: !5646)
!5705 = !DILocation(line: 349, column: 3, scope: !4214, inlinedAt: !5646)
!5706 = !DILocation(line: 351, column: 6, scope: !4218, inlinedAt: !5646)
!5707 = !DILocation(line: 351, column: 11, scope: !4218, inlinedAt: !5646)
!5708 = !DILocation(line: 351, column: 6, scope: !4076, inlinedAt: !5646)
!5709 = !DILocation(line: 352, column: 3, scope: !4218, inlinedAt: !5646)
!5710 = !DILocation(line: 354, column: 32, scope: !4223, inlinedAt: !5646)
!5711 = !DILocation(line: 354, column: 37, scope: !4223, inlinedAt: !5646)
!5712 = !DILocation(line: 354, column: 42, scope: !4223, inlinedAt: !5646)
!5713 = !DILocation(line: 354, column: 45, scope: !4223, inlinedAt: !5646)
!5714 = !DILocation(line: 354, column: 50, scope: !4223, inlinedAt: !5646)
!5715 = !DILocation(line: 354, column: 6, scope: !4076, inlinedAt: !5646)
!5716 = !DILocation(line: 355, column: 3, scope: !4223, inlinedAt: !5646)
!5717 = !DILocation(line: 356, column: 32, scope: !4231, inlinedAt: !5646)
!5718 = !DILocation(line: 356, column: 37, scope: !4231, inlinedAt: !5646)
!5719 = !DILocation(line: 356, column: 43, scope: !4231, inlinedAt: !5646)
!5720 = !DILocation(line: 356, column: 46, scope: !4231, inlinedAt: !5646)
!5721 = !DILocation(line: 356, column: 51, scope: !4231, inlinedAt: !5646)
!5722 = !DILocation(line: 356, column: 6, scope: !4076, inlinedAt: !5646)
!5723 = !DILocation(line: 357, column: 3, scope: !4231, inlinedAt: !5646)
!5724 = !DILocation(line: 358, column: 6, scope: !4239, inlinedAt: !5646)
!5725 = !DILocation(line: 358, column: 11, scope: !4239, inlinedAt: !5646)
!5726 = !DILocation(line: 358, column: 6, scope: !4076, inlinedAt: !5646)
!5727 = !DILocation(line: 358, column: 26, scope: !4239, inlinedAt: !5646)
!5728 = !DILocation(line: 359, column: 6, scope: !4244, inlinedAt: !5646)
!5729 = !DILocation(line: 359, column: 11, scope: !4244, inlinedAt: !5646)
!5730 = !DILocation(line: 359, column: 6, scope: !4076, inlinedAt: !5646)
!5731 = !DILocation(line: 359, column: 26, scope: !4244, inlinedAt: !5646)
!5732 = !DILocation(line: 360, column: 6, scope: !4249, inlinedAt: !5646)
!5733 = !DILocation(line: 360, column: 11, scope: !4249, inlinedAt: !5646)
!5734 = !DILocation(line: 360, column: 6, scope: !4076, inlinedAt: !5646)
!5735 = !DILocation(line: 360, column: 26, scope: !4249, inlinedAt: !5646)
!5736 = !DILocation(line: 361, column: 6, scope: !4254, inlinedAt: !5646)
!5737 = !DILocation(line: 361, column: 11, scope: !4254, inlinedAt: !5646)
!5738 = !DILocation(line: 361, column: 6, scope: !4076, inlinedAt: !5646)
!5739 = !DILocation(line: 361, column: 26, scope: !4254, inlinedAt: !5646)
!5740 = !DILocation(line: 362, column: 6, scope: !4259, inlinedAt: !5646)
!5741 = !DILocation(line: 362, column: 11, scope: !4259, inlinedAt: !5646)
!5742 = !DILocation(line: 362, column: 6, scope: !4076, inlinedAt: !5646)
!5743 = !DILocation(line: 362, column: 26, scope: !4259, inlinedAt: !5646)
!5744 = !DILocation(line: 363, column: 6, scope: !4264, inlinedAt: !5646)
!5745 = !DILocation(line: 363, column: 11, scope: !4264, inlinedAt: !5646)
!5746 = !DILocation(line: 363, column: 6, scope: !4076, inlinedAt: !5646)
!5747 = !DILocation(line: 363, column: 26, scope: !4264, inlinedAt: !5646)
!5748 = !DILocation(line: 364, column: 6, scope: !4269, inlinedAt: !5646)
!5749 = !DILocation(line: 364, column: 11, scope: !4269, inlinedAt: !5646)
!5750 = !DILocation(line: 364, column: 6, scope: !4076, inlinedAt: !5646)
!5751 = !DILocation(line: 364, column: 26, scope: !4269, inlinedAt: !5646)
!5752 = !DILocation(line: 365, column: 6, scope: !4274, inlinedAt: !5646)
!5753 = !DILocation(line: 365, column: 11, scope: !4274, inlinedAt: !5646)
!5754 = !DILocation(line: 365, column: 6, scope: !4076, inlinedAt: !5646)
!5755 = !DILocation(line: 365, column: 26, scope: !4274, inlinedAt: !5646)
!5756 = !DILocation(line: 366, column: 6, scope: !4279, inlinedAt: !5646)
!5757 = !DILocation(line: 366, column: 11, scope: !4279, inlinedAt: !5646)
!5758 = !DILocation(line: 366, column: 6, scope: !4076, inlinedAt: !5646)
!5759 = !DILocation(line: 366, column: 26, scope: !4279, inlinedAt: !5646)
!5760 = !DILocation(line: 367, column: 6, scope: !4284, inlinedAt: !5646)
!5761 = !DILocation(line: 367, column: 11, scope: !4284, inlinedAt: !5646)
!5762 = !DILocation(line: 367, column: 6, scope: !4076, inlinedAt: !5646)
!5763 = !DILocation(line: 367, column: 26, scope: !4284, inlinedAt: !5646)
!5764 = !DILocation(line: 368, column: 6, scope: !4289, inlinedAt: !5646)
!5765 = !DILocation(line: 368, column: 11, scope: !4289, inlinedAt: !5646)
!5766 = !DILocation(line: 368, column: 6, scope: !4076, inlinedAt: !5646)
!5767 = !DILocation(line: 368, column: 26, scope: !4289, inlinedAt: !5646)
!5768 = !DILocation(line: 369, column: 6, scope: !4294, inlinedAt: !5646)
!5769 = !DILocation(line: 369, column: 11, scope: !4294, inlinedAt: !5646)
!5770 = !DILocation(line: 369, column: 6, scope: !4076, inlinedAt: !5646)
!5771 = !DILocation(line: 369, column: 26, scope: !4294, inlinedAt: !5646)
!5772 = !DILocation(line: 370, column: 6, scope: !4299, inlinedAt: !5646)
!5773 = !DILocation(line: 370, column: 11, scope: !4299, inlinedAt: !5646)
!5774 = !DILocation(line: 370, column: 6, scope: !4076, inlinedAt: !5646)
!5775 = !DILocation(line: 370, column: 26, scope: !4299, inlinedAt: !5646)
!5776 = !DILocation(line: 371, column: 6, scope: !4304, inlinedAt: !5646)
!5777 = !DILocation(line: 371, column: 11, scope: !4304, inlinedAt: !5646)
!5778 = !DILocation(line: 371, column: 6, scope: !4076, inlinedAt: !5646)
!5779 = !DILocation(line: 371, column: 26, scope: !4304, inlinedAt: !5646)
!5780 = !DILocation(line: 372, column: 6, scope: !4309, inlinedAt: !5646)
!5781 = !DILocation(line: 372, column: 11, scope: !4309, inlinedAt: !5646)
!5782 = !DILocation(line: 372, column: 6, scope: !4076, inlinedAt: !5646)
!5783 = !DILocation(line: 372, column: 26, scope: !4309, inlinedAt: !5646)
!5784 = !DILocation(line: 373, column: 6, scope: !4314, inlinedAt: !5646)
!5785 = !DILocation(line: 373, column: 11, scope: !4314, inlinedAt: !5646)
!5786 = !DILocation(line: 373, column: 6, scope: !4076, inlinedAt: !5646)
!5787 = !DILocation(line: 373, column: 26, scope: !4314, inlinedAt: !5646)
!5788 = !DILocation(line: 374, column: 6, scope: !4319, inlinedAt: !5646)
!5789 = !DILocation(line: 374, column: 11, scope: !4319, inlinedAt: !5646)
!5790 = !DILocation(line: 374, column: 6, scope: !4076, inlinedAt: !5646)
!5791 = !DILocation(line: 374, column: 26, scope: !4319, inlinedAt: !5646)
!5792 = !DILocation(line: 375, column: 6, scope: !4324, inlinedAt: !5646)
!5793 = !DILocation(line: 375, column: 11, scope: !4324, inlinedAt: !5646)
!5794 = !DILocation(line: 375, column: 6, scope: !4076, inlinedAt: !5646)
!5795 = !DILocation(line: 375, column: 27, scope: !4324, inlinedAt: !5646)
!5796 = !DILocation(line: 376, column: 6, scope: !4329, inlinedAt: !5646)
!5797 = !DILocation(line: 376, column: 11, scope: !4329, inlinedAt: !5646)
!5798 = !DILocation(line: 376, column: 6, scope: !4076, inlinedAt: !5646)
!5799 = !DILocation(line: 376, column: 32, scope: !4329, inlinedAt: !5646)
!5800 = !DILocation(line: 377, column: 6, scope: !4334, inlinedAt: !5646)
!5801 = !DILocation(line: 377, column: 11, scope: !4334, inlinedAt: !5646)
!5802 = !DILocation(line: 377, column: 6, scope: !4076, inlinedAt: !5646)
!5803 = !DILocation(line: 377, column: 32, scope: !4334, inlinedAt: !5646)
!5804 = !DILocation(line: 378, column: 6, scope: !4339, inlinedAt: !5646)
!5805 = !DILocation(line: 378, column: 11, scope: !4339, inlinedAt: !5646)
!5806 = !DILocation(line: 378, column: 6, scope: !4076, inlinedAt: !5646)
!5807 = !DILocation(line: 378, column: 32, scope: !4339, inlinedAt: !5646)
!5808 = !DILocation(line: 379, column: 6, scope: !4344, inlinedAt: !5646)
!5809 = !DILocation(line: 379, column: 11, scope: !4344, inlinedAt: !5646)
!5810 = !DILocation(line: 379, column: 6, scope: !4076, inlinedAt: !5646)
!5811 = !DILocation(line: 379, column: 33, scope: !4344, inlinedAt: !5646)
!5812 = !DILocation(line: 380, column: 6, scope: !4349, inlinedAt: !5646)
!5813 = !DILocation(line: 380, column: 11, scope: !4349, inlinedAt: !5646)
!5814 = !DILocation(line: 380, column: 6, scope: !4076, inlinedAt: !5646)
!5815 = !DILocation(line: 380, column: 33, scope: !4349, inlinedAt: !5646)
!5816 = !DILocation(line: 381, column: 6, scope: !4354, inlinedAt: !5646)
!5817 = !DILocation(line: 381, column: 11, scope: !4354, inlinedAt: !5646)
!5818 = !DILocation(line: 381, column: 6, scope: !4076, inlinedAt: !5646)
!5819 = !DILocation(line: 381, column: 33, scope: !4354, inlinedAt: !5646)
!5820 = !DILocation(line: 382, column: 2, scope: !4359, inlinedAt: !5646)
!5821 = !DILocation(line: 382, column: 2, scope: !4363, inlinedAt: !5646)
!5822 = !DILocation(line: 382, column: 2, scope: !4364, inlinedAt: !5646)
!5823 = !DILocation(line: 386, column: 1, scope: !4076, inlinedAt: !5646)
!5824 = !DILocation(line: 547, column: 9, scope: !4055, inlinedAt: !5638)
!5825 = !DILocation(line: 549, column: 8, scope: !4370, inlinedAt: !5638)
!5826 = !DILocation(line: 549, column: 7, scope: !4055, inlinedAt: !5638)
!5827 = !DILocation(line: 550, column: 4, scope: !4370, inlinedAt: !5638)
!5828 = !DILocation(line: 553, column: 33, scope: !4055, inlinedAt: !5638)
!5829 = !DILocation(line: 325, column: 6, scope: !4375, inlinedAt: !5644)
!5830 = !DILocation(line: 325, column: 6, scope: !4070, inlinedAt: !5644)
!5831 = !DILocation(line: 326, column: 3, scope: !4375, inlinedAt: !5644)
!5832 = !DILocation(line: 332, column: 9, scope: !4070, inlinedAt: !5644)
!5833 = !DILocation(line: 332, column: 15, scope: !4070, inlinedAt: !5644)
!5834 = !DILocation(line: 332, column: 2, scope: !4070, inlinedAt: !5644)
!5835 = !DILocation(line: 336, column: 1, scope: !4070, inlinedAt: !5644)
!5836 = !DILocation(line: 553, column: 5, scope: !4055, inlinedAt: !5638)
!5837 = !DILocation(line: 553, column: 41, scope: !4055, inlinedAt: !5638)
!5838 = !DILocation(line: 554, column: 5, scope: !4055, inlinedAt: !5638)
!5839 = !DILocation(line: 554, column: 12, scope: !4055, inlinedAt: !5638)
!5840 = !DILocation(line: 448, column: 31, scope: !4050, inlinedAt: !5637)
!5841 = !DILocation(line: 448, column: 34, scope: !4050, inlinedAt: !5637)
!5842 = !DILocation(line: 448, column: 14, scope: !4050, inlinedAt: !5637)
!5843 = !DILocation(line: 450, column: 22, scope: !4050, inlinedAt: !5637)
!5844 = !DILocation(line: 450, column: 25, scope: !4050, inlinedAt: !5637)
!5845 = !DILocation(line: 450, column: 30, scope: !4050, inlinedAt: !5637)
!5846 = !DILocation(line: 450, column: 36, scope: !4050, inlinedAt: !5637)
!5847 = !DILocation(line: 450, column: 8, scope: !4050, inlinedAt: !5637)
!5848 = !DILocation(line: 450, column: 6, scope: !4050, inlinedAt: !5637)
!5849 = !DILocation(line: 451, column: 9, scope: !4050, inlinedAt: !5637)
!5850 = !DILocation(line: 552, column: 3, scope: !4055, inlinedAt: !5638)
!5851 = !DILocation(line: 557, column: 19, scope: !4057, inlinedAt: !5638)
!5852 = !DILocation(line: 557, column: 25, scope: !4057, inlinedAt: !5638)
!5853 = !DILocation(line: 557, column: 9, scope: !4057, inlinedAt: !5638)
!5854 = !DILocation(line: 557, column: 2, scope: !4057, inlinedAt: !5638)
!5855 = !DILocation(line: 558, column: 1, scope: !4057, inlinedAt: !5638)
!5856 = !DILocation(line: 591, column: 3, scope: !5639)
!5857 = !DILocation(line: 592, column: 19, scope: !5633)
!5858 = !DILocation(line: 592, column: 26, scope: !5633)
!5859 = !DILocation(line: 592, column: 9, scope: !5633)
!5860 = !DILocation(line: 592, column: 2, scope: !5633)
!5861 = !DILocation(line: 593, column: 1, scope: !5633)
!5862 = distinct !DISubprogram(name: "__must_check_overflow", scope: !5863, file: !5863, line: 52, type: !5864, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!5863 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!5864 = !DISubroutineType(types: !5865)
!5865 = !{!440, !440}
!5866 = !DILocalVariable(name: "overflow", arg: 1, scope: !5862, file: !5863, line: 52, type: !440)
!5867 = !DILocation(line: 52, column: 60, scope: !5862)
!5868 = !DILocation(line: 54, column: 9, scope: !5862)
!5869 = !DILocation(line: 54, column: 2, scope: !5862)
!5870 = distinct !DISubprogram(name: "get_order", scope: !5871, file: !5871, line: 29, type: !5872, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!5871 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5872 = !DISubroutineType(types: !5873)
!5873 = !{!106, !111}
!5874 = !DILocalVariable(name: "x", arg: 1, scope: !5875, file: !5876, line: 366, type: !375)
!5875 = distinct !DISubprogram(name: "fls64", scope: !5876, file: !5876, line: 366, type: !5877, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!5876 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5877 = !DISubroutineType(types: !5878)
!5878 = !{!106, !375}
!5879 = !DILocation(line: 366, column: 40, scope: !5875, inlinedAt: !5880)
!5880 = distinct !DILocation(line: 46, column: 9, scope: !5870)
!5881 = !DILocalVariable(name: "bitpos", scope: !5875, file: !5876, line: 368, type: !106)
!5882 = !DILocation(line: 368, column: 6, scope: !5875, inlinedAt: !5880)
!5883 = !DILocalVariable(name: "size", arg: 1, scope: !5870, file: !5871, line: 29, type: !111)
!5884 = !DILocation(line: 29, column: 63, scope: !5870)
!5885 = !DILocation(line: 31, column: 27, scope: !5886)
!5886 = distinct !DILexicalBlock(scope: !5870, file: !5871, line: 31, column: 6)
!5887 = !DILocation(line: 31, column: 6, scope: !5886)
!5888 = !DILocation(line: 31, column: 6, scope: !5870)
!5889 = !DILocation(line: 32, column: 8, scope: !5890)
!5890 = distinct !DILexicalBlock(scope: !5891, file: !5871, line: 32, column: 7)
!5891 = distinct !DILexicalBlock(scope: !5886, file: !5871, line: 31, column: 34)
!5892 = !DILocation(line: 32, column: 7, scope: !5891)
!5893 = !DILocation(line: 33, column: 4, scope: !5890)
!5894 = !DILocation(line: 35, column: 7, scope: !5895)
!5895 = distinct !DILexicalBlock(scope: !5891, file: !5871, line: 35, column: 7)
!5896 = !DILocation(line: 35, column: 12, scope: !5895)
!5897 = !DILocation(line: 35, column: 7, scope: !5891)
!5898 = !DILocation(line: 36, column: 4, scope: !5895)
!5899 = !DILocation(line: 38, column: 10, scope: !5891)
!5900 = !DILocation(line: 38, column: 28, scope: !5891)
!5901 = !DILocation(line: 38, column: 41, scope: !5891)
!5902 = !DILocation(line: 38, column: 3, scope: !5891)
!5903 = !DILocation(line: 41, column: 6, scope: !5870)
!5904 = !DILocation(line: 42, column: 7, scope: !5870)
!5905 = !DILocation(line: 46, column: 15, scope: !5870)
!5906 = !DILocation(line: 374, column: 2, scope: !5875, inlinedAt: !5880)
!5907 = !DILocation(line: 376, column: 14, scope: !5875, inlinedAt: !5880)
!5908 = !{i32 393816}
!5909 = !DILocation(line: 377, column: 9, scope: !5875, inlinedAt: !5880)
!5910 = !DILocation(line: 377, column: 16, scope: !5875, inlinedAt: !5880)
!5911 = !DILocation(line: 46, column: 2, scope: !5870)
!5912 = !DILocation(line: 48, column: 1, scope: !5870)
!5913 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5914, file: !5914, line: 30, type: !5915, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!5914 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5915 = !DISubroutineType(types: !5916)
!5916 = !{!106, !374}
!5917 = !DILocation(line: 366, column: 40, scope: !5875, inlinedAt: !5918)
!5918 = distinct !DILocation(line: 32, column: 9, scope: !5913)
!5919 = !DILocation(line: 368, column: 6, scope: !5875, inlinedAt: !5918)
!5920 = !DILocalVariable(name: "n", arg: 1, scope: !5913, file: !5914, line: 30, type: !374)
!5921 = !DILocation(line: 30, column: 21, scope: !5913)
!5922 = !DILocation(line: 32, column: 15, scope: !5913)
!5923 = !DILocation(line: 374, column: 2, scope: !5875, inlinedAt: !5918)
!5924 = !DILocation(line: 376, column: 14, scope: !5875, inlinedAt: !5918)
!5925 = !DILocation(line: 377, column: 9, scope: !5875, inlinedAt: !5918)
!5926 = !DILocation(line: 377, column: 16, scope: !5875, inlinedAt: !5918)
!5927 = !DILocation(line: 32, column: 18, scope: !5913)
!5928 = !DILocation(line: 32, column: 2, scope: !5913)
!5929 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5930, file: !5930, line: 137, type: !5931, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!5930 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5931 = !DISubroutineType(types: !5932)
!5932 = !{!107, !879, !1970, !277, !108}
!5933 = !DILocalVariable(name: "s", arg: 1, scope: !5929, file: !5930, line: 137, type: !879)
!5934 = !DILocation(line: 137, column: 54, scope: !5929)
!5935 = !DILocalVariable(name: "object", arg: 2, scope: !5929, file: !5930, line: 137, type: !1970)
!5936 = !DILocation(line: 137, column: 69, scope: !5929)
!5937 = !DILocalVariable(name: "size", arg: 3, scope: !5929, file: !5930, line: 138, type: !277)
!5938 = !DILocation(line: 138, column: 12, scope: !5929)
!5939 = !DILocalVariable(name: "flags", arg: 4, scope: !5929, file: !5930, line: 138, type: !108)
!5940 = !DILocation(line: 138, column: 24, scope: !5929)
!5941 = !DILocation(line: 140, column: 17, scope: !5929)
!5942 = !DILocation(line: 140, column: 2, scope: !5929)
!5943 = distinct !DISubprogram(name: "regcache_reg_needs_sync", scope: !3, file: !3, line: 278, type: !5944, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!5944 = !DISubroutineType(types: !5945)
!5945 = !{!440, !128, !7, !7}
!5946 = !DILocalVariable(name: "map", arg: 1, scope: !5943, file: !3, line: 278, type: !128)
!5947 = !DILocation(line: 278, column: 52, scope: !5943)
!5948 = !DILocalVariable(name: "reg", arg: 2, scope: !5943, file: !3, line: 278, type: !7)
!5949 = !DILocation(line: 278, column: 70, scope: !5943)
!5950 = !DILocalVariable(name: "val", arg: 3, scope: !5943, file: !3, line: 279, type: !7)
!5951 = !DILocation(line: 279, column: 22, scope: !5943)
!5952 = !DILocalVariable(name: "ret", scope: !5943, file: !3, line: 281, type: !106)
!5953 = !DILocation(line: 281, column: 6, scope: !5943)
!5954 = !DILocation(line: 284, column: 7, scope: !5955)
!5955 = distinct !DILexicalBlock(scope: !5943, file: !3, line: 284, column: 6)
!5956 = !DILocation(line: 284, column: 12, scope: !5955)
!5957 = !DILocation(line: 284, column: 6, scope: !5943)
!5958 = !DILocation(line: 285, column: 3, scope: !5955)
!5959 = !DILocation(line: 288, column: 28, scope: !5943)
!5960 = !DILocation(line: 288, column: 33, scope: !5943)
!5961 = !DILocation(line: 288, column: 8, scope: !5943)
!5962 = !DILocation(line: 288, column: 6, scope: !5943)
!5963 = !DILocation(line: 289, column: 6, scope: !5964)
!5964 = distinct !DILexicalBlock(scope: !5943, file: !3, line: 289, column: 6)
!5965 = !DILocation(line: 289, column: 10, scope: !5964)
!5966 = !DILocation(line: 289, column: 15, scope: !5964)
!5967 = !DILocation(line: 289, column: 18, scope: !5964)
!5968 = !DILocation(line: 289, column: 25, scope: !5964)
!5969 = !DILocation(line: 289, column: 30, scope: !5964)
!5970 = !DILocation(line: 289, column: 43, scope: !5964)
!5971 = !DILocation(line: 289, column: 48, scope: !5964)
!5972 = !DILocation(line: 289, column: 22, scope: !5964)
!5973 = !DILocation(line: 289, column: 6, scope: !5943)
!5974 = !DILocation(line: 290, column: 3, scope: !5964)
!5975 = !DILocation(line: 291, column: 2, scope: !5943)
!5976 = !DILocation(line: 292, column: 1, scope: !5943)
!5977 = distinct !DISubprogram(name: "regcache_reg_present", scope: !3, file: !3, line: 660, type: !5978, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!5978 = !DISubroutineType(types: !5979)
!5979 = !{!440, !110, !7}
!5980 = !DILocalVariable(name: "cache_present", arg: 1, scope: !5977, file: !3, line: 660, type: !110)
!5981 = !DILocation(line: 660, column: 49, scope: !5977)
!5982 = !DILocalVariable(name: "idx", arg: 2, scope: !5977, file: !3, line: 660, type: !7)
!5983 = !DILocation(line: 660, column: 77, scope: !5977)
!5984 = !DILocation(line: 662, column: 7, scope: !5985)
!5985 = distinct !DILexicalBlock(scope: !5977, file: !3, line: 662, column: 6)
!5986 = !DILocation(line: 662, column: 6, scope: !5977)
!5987 = !DILocation(line: 663, column: 3, scope: !5985)
!5988 = !DILocation(line: 665, column: 18, scope: !5977)
!5989 = !DILocation(line: 665, column: 23, scope: !5977)
!5990 = !DILocation(line: 665, column: 9, scope: !5977)
!5991 = !DILocation(line: 665, column: 2, scope: !5977)
!5992 = !DILocation(line: 666, column: 1, scope: !5977)
!5993 = distinct !DISubprogram(name: "regcache_sync_block_raw_flush", scope: !3, file: !3, line: 704, type: !5994, scopeLine: 706, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!5994 = !DISubroutineType(types: !5995)
!5995 = !{!106, !128, !5996, !7, !7}
!5996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!5997 = !DILocalVariable(name: "map", arg: 1, scope: !5993, file: !3, line: 704, type: !128)
!5998 = !DILocation(line: 704, column: 57, scope: !5993)
!5999 = !DILocalVariable(name: "data", arg: 2, scope: !5993, file: !3, line: 704, type: !5996)
!6000 = !DILocation(line: 704, column: 75, scope: !5993)
!6001 = !DILocalVariable(name: "base", arg: 3, scope: !5993, file: !3, line: 705, type: !7)
!6002 = !DILocation(line: 705, column: 20, scope: !5993)
!6003 = !DILocalVariable(name: "cur", arg: 4, scope: !5993, file: !3, line: 705, type: !7)
!6004 = !DILocation(line: 705, column: 39, scope: !5993)
!6005 = !DILocalVariable(name: "val_bytes", scope: !5993, file: !3, line: 707, type: !277)
!6006 = !DILocation(line: 707, column: 9, scope: !5993)
!6007 = !DILocation(line: 707, column: 21, scope: !5993)
!6008 = !DILocation(line: 707, column: 26, scope: !5993)
!6009 = !DILocation(line: 707, column: 33, scope: !5993)
!6010 = !DILocalVariable(name: "ret", scope: !5993, file: !3, line: 708, type: !106)
!6011 = !DILocation(line: 708, column: 6, scope: !5993)
!6012 = !DILocalVariable(name: "count", scope: !5993, file: !3, line: 708, type: !106)
!6013 = !DILocation(line: 708, column: 11, scope: !5993)
!6014 = !DILocation(line: 710, column: 7, scope: !6015)
!6015 = distinct !DILexicalBlock(scope: !5993, file: !3, line: 710, column: 6)
!6016 = !DILocation(line: 710, column: 6, scope: !6015)
!6017 = !DILocation(line: 710, column: 12, scope: !6015)
!6018 = !DILocation(line: 710, column: 6, scope: !5993)
!6019 = !DILocation(line: 711, column: 3, scope: !6015)
!6020 = !DILocation(line: 713, column: 11, scope: !5993)
!6021 = !DILocation(line: 713, column: 17, scope: !5993)
!6022 = !DILocation(line: 713, column: 15, scope: !5993)
!6023 = !DILocation(line: 713, column: 25, scope: !5993)
!6024 = !DILocation(line: 713, column: 30, scope: !5993)
!6025 = !DILocation(line: 713, column: 23, scope: !5993)
!6026 = !DILocation(line: 713, column: 8, scope: !5993)
!6027 = !DILocation(line: 718, column: 2, scope: !5993)
!6028 = !DILocation(line: 718, column: 7, scope: !5993)
!6029 = !DILocation(line: 718, column: 20, scope: !5993)
!6030 = !DILocation(line: 720, column: 26, scope: !5993)
!6031 = !DILocation(line: 720, column: 31, scope: !5993)
!6032 = !DILocation(line: 720, column: 38, scope: !5993)
!6033 = !DILocation(line: 720, column: 37, scope: !5993)
!6034 = !DILocation(line: 720, column: 44, scope: !5993)
!6035 = !DILocation(line: 720, column: 52, scope: !5993)
!6036 = !DILocation(line: 720, column: 50, scope: !5993)
!6037 = !DILocation(line: 720, column: 8, scope: !5993)
!6038 = !DILocation(line: 720, column: 6, scope: !5993)
!6039 = !DILocation(line: 721, column: 6, scope: !6040)
!6040 = distinct !DILexicalBlock(scope: !5993, file: !3, line: 721, column: 6)
!6041 = !DILocation(line: 721, column: 6, scope: !5993)
!6042 = !DILocation(line: 722, column: 3, scope: !6040)
!6043 = !DILocation(line: 725, column: 2, scope: !5993)
!6044 = !DILocation(line: 725, column: 7, scope: !5993)
!6045 = !DILocation(line: 725, column: 20, scope: !5993)
!6046 = !DILocation(line: 727, column: 3, scope: !5993)
!6047 = !DILocation(line: 727, column: 8, scope: !5993)
!6048 = !DILocation(line: 729, column: 9, scope: !5993)
!6049 = !DILocation(line: 729, column: 2, scope: !5993)
!6050 = !DILocation(line: 730, column: 1, scope: !5993)
!6051 = distinct !DISubprogram(name: "test_bit", scope: !6052, file: !6052, line: 132, type: !6053, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!6052 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!6053 = !DISubroutineType(types: !6054)
!6054 = !{!440, !265, !6055}
!6055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6056, size: 64)
!6056 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6057)
!6057 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !111)
!6058 = !DILocalVariable(name: "nr", arg: 1, scope: !6059, file: !5876, line: 210, type: !265)
!6059 = distinct !DISubprogram(name: "variable_test_bit", scope: !5876, file: !5876, line: 210, type: !6053, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!6060 = !DILocation(line: 210, column: 52, scope: !6059, inlinedAt: !6061)
!6061 = distinct !DILocation(line: 135, column: 9, scope: !6051)
!6062 = !DILocalVariable(name: "addr", arg: 2, scope: !6059, file: !5876, line: 210, type: !6055)
!6063 = !DILocation(line: 210, column: 86, scope: !6059, inlinedAt: !6061)
!6064 = !DILocalVariable(name: "oldbit", scope: !6059, file: !5876, line: 212, type: !440)
!6065 = !DILocation(line: 212, column: 7, scope: !6059, inlinedAt: !6061)
!6066 = !DILocalVariable(name: "nr", arg: 1, scope: !6067, file: !5876, line: 204, type: !265)
!6067 = distinct !DISubprogram(name: "constant_test_bit", scope: !5876, file: !5876, line: 204, type: !6053, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!6068 = !DILocation(line: 204, column: 52, scope: !6067, inlinedAt: !6069)
!6069 = distinct !DILocation(line: 135, column: 9, scope: !6051)
!6070 = !DILocalVariable(name: "addr", arg: 2, scope: !6067, file: !5876, line: 204, type: !6055)
!6071 = !DILocation(line: 204, column: 86, scope: !6067, inlinedAt: !6069)
!6072 = !DILocalVariable(name: "v", arg: 1, scope: !6073, file: !6074, line: 69, type: !6077)
!6073 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6074, file: !6074, line: 69, type: !6075, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!6074 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!6075 = !DISubroutineType(types: !6076)
!6076 = !{null, !6077, !277}
!6077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6078, size: 64)
!6078 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6079)
!6079 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6080 = !DILocation(line: 69, column: 73, scope: !6073, inlinedAt: !6081)
!6081 = distinct !DILocation(line: 134, column: 2, scope: !6051)
!6082 = !DILocalVariable(name: "size", arg: 2, scope: !6073, file: !6074, line: 69, type: !277)
!6083 = !DILocation(line: 69, column: 83, scope: !6073, inlinedAt: !6081)
!6084 = !DILocalVariable(name: "nr", arg: 1, scope: !6051, file: !6052, line: 132, type: !265)
!6085 = !DILocation(line: 132, column: 34, scope: !6051)
!6086 = !DILocalVariable(name: "addr", arg: 2, scope: !6051, file: !6052, line: 132, type: !6055)
!6087 = !DILocation(line: 132, column: 68, scope: !6051)
!6088 = !DILocation(line: 134, column: 25, scope: !6051)
!6089 = !DILocation(line: 134, column: 32, scope: !6051)
!6090 = !DILocation(line: 134, column: 30, scope: !6051)
!6091 = !DILocation(line: 71, column: 19, scope: !6073, inlinedAt: !6081)
!6092 = !DILocation(line: 71, column: 22, scope: !6073, inlinedAt: !6081)
!6093 = !DILocation(line: 71, column: 2, scope: !6073, inlinedAt: !6081)
!6094 = !DILocation(line: 72, column: 2, scope: !6073, inlinedAt: !6081)
!6095 = !DILocation(line: 135, column: 9, scope: !6051)
!6096 = !DILocation(line: 206, column: 19, scope: !6067, inlinedAt: !6069)
!6097 = !DILocation(line: 206, column: 22, scope: !6067, inlinedAt: !6069)
!6098 = !DILocation(line: 206, column: 15, scope: !6067, inlinedAt: !6069)
!6099 = !DILocation(line: 207, column: 4, scope: !6067, inlinedAt: !6069)
!6100 = !DILocation(line: 207, column: 9, scope: !6067, inlinedAt: !6069)
!6101 = !DILocation(line: 207, column: 12, scope: !6067, inlinedAt: !6069)
!6102 = !DILocation(line: 206, column: 44, scope: !6067, inlinedAt: !6069)
!6103 = !DILocation(line: 207, column: 37, scope: !6067, inlinedAt: !6069)
!6104 = !DILocation(line: 217, column: 33, scope: !6059, inlinedAt: !6061)
!6105 = !DILocation(line: 217, column: 46, scope: !6059, inlinedAt: !6061)
!6106 = !DILocation(line: 214, column: 2, scope: !6059, inlinedAt: !6061)
!6107 = !{i32 -2147049157, i32 -2147049097}
!6108 = !DILocation(line: 219, column: 9, scope: !6059, inlinedAt: !6061)
!6109 = !DILocation(line: 135, column: 2, scope: !6051)
!6110 = distinct !DISubprogram(name: "kasan_check_read", scope: !6111, file: !6111, line: 34, type: !6112, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!6111 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!6112 = !DISubroutineType(types: !6113)
!6113 = !{!440, !6077, !7}
!6114 = !DILocalVariable(name: "p", arg: 1, scope: !6110, file: !6111, line: 34, type: !6077)
!6115 = !DILocation(line: 34, column: 58, scope: !6110)
!6116 = !DILocalVariable(name: "size", arg: 2, scope: !6110, file: !6111, line: 34, type: !7)
!6117 = !DILocation(line: 34, column: 74, scope: !6110)
!6118 = !DILocation(line: 36, column: 2, scope: !6110)
!6119 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6120, file: !6120, line: 178, type: !6121, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!6120 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!6121 = !DISubroutineType(types: !6122)
!6122 = !{null, !6077, !277, !106}
!6123 = !DILocalVariable(name: "ptr", arg: 1, scope: !6119, file: !6120, line: 178, type: !6077)
!6124 = !DILocation(line: 178, column: 60, scope: !6119)
!6125 = !DILocalVariable(name: "size", arg: 2, scope: !6119, file: !6120, line: 178, type: !277)
!6126 = !DILocation(line: 178, column: 72, scope: !6119)
!6127 = !DILocalVariable(name: "type", arg: 3, scope: !6119, file: !6120, line: 179, type: !106)
!6128 = !DILocation(line: 179, column: 15, scope: !6119)
!6129 = !DILocation(line: 179, column: 23, scope: !6119)
