; ModuleID = '../bcout/drivers/acpi/acpi_platform.llvm.bc'
source_filename = "drivers/acpi/acpi_platform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.kmem_cache = type opaque
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
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
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.driver_private = type opaque
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
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.irq_domain = type { %struct.list_head, i8*, %struct.irq_domain_ops*, i8*, i32, i32, %struct.fwnode_handle*, i32, %struct.irq_domain_chip_generic*, %struct.irq_domain*, i64, i32, i32, %struct.xarray, %struct.mutex, [0 x i32] }
%struct.irq_domain_ops = type { i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, i32, i64)*, void (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, i32, i32, i8*)*, void (%struct.irq_domain*, i32, i32)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, void (%struct.irq_domain*, %struct.irq_data*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.irq_fwspec = type { %struct.fwnode_handle*, i32, [16 x i32] }
%struct.irq_data = type opaque
%struct.irq_domain_chip_generic = type opaque
%struct.dma_map_ops = type opaque
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i64 }
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
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
%struct.platform_device = type { i8*, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, %struct.resource*, %struct.platform_device_id*, i8*, %struct.mfd_cell*, %struct.pdev_archdata }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.platform_device_id = type { [20 x i8], i64 }
%struct.mfd_cell = type opaque
%struct.pdev_archdata = type {}
%struct.acpi_device = type { i32, i8*, %struct.fwnode_handle, %struct.acpi_device*, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.acpi_device_status, %struct.acpi_device_flags, %struct.acpi_device_pnp, %struct.acpi_device_power, %struct.acpi_device_wakeup, %struct.acpi_device_perf, %struct.acpi_device_dir, %struct.acpi_device_data, %struct.acpi_scan_handler*, %struct.acpi_hotplug_context*, %struct.acpi_driver*, %struct.acpi_gpio_mapping*, i8*, %struct.device, i32, i32, %struct.list_head, %struct.mutex, void (%struct.acpi_device*)* }
%struct.acpi_device_status = type { i32 }
%struct.acpi_device_flags = type { i32 }
%struct.acpi_device_pnp = type { [8 x i8], %struct.acpi_pnp_type, i64, i8*, %struct.list_head, [40 x i8], [20 x i8], %union.acpi_object* }
%struct.acpi_pnp_type = type { i32 }
%union.acpi_object = type { %struct.anon.70 }
%struct.anon.70 = type { i32, i32, i64, i32 }
%struct.acpi_device_power = type { i32, %struct.acpi_device_power_flags, [5 x %struct.acpi_device_power_state] }
%struct.acpi_device_power_flags = type { i32 }
%struct.acpi_device_power_state = type { %struct.anon.72, i32, i32, %struct.list_head }
%struct.anon.72 = type { i8 }
%struct.acpi_device_wakeup = type { i8*, i64, i64, %struct.list_head, %struct.acpi_device_wakeup_flags, %struct.acpi_device_wakeup_context, %struct.wakeup_source*, i32, i32 }
%struct.acpi_device_wakeup_flags = type { i8 }
%struct.acpi_device_wakeup_context = type { void (%struct.acpi_device_wakeup_context*)*, %struct.device* }
%struct.acpi_device_perf = type { i32, %struct.acpi_device_perf_flags, i32, %struct.acpi_device_perf_state* }
%struct.acpi_device_perf_flags = type { i8 }
%struct.acpi_device_perf_state = type { %struct.anon.73, i8, i8, i32 }
%struct.anon.73 = type { i8 }
%struct.acpi_device_dir = type { %struct.proc_dir_entry* }
%struct.proc_dir_entry = type opaque
%struct.acpi_device_data = type { %union.acpi_object*, %struct.list_head, %union.acpi_object*, %struct.list_head }
%struct.acpi_scan_handler = type { %struct.acpi_device_id*, %struct.list_head, i1 (i8*, %struct.acpi_device_id**)*, i32 (%struct.acpi_device*, %struct.acpi_device_id*)*, void (%struct.acpi_device*)*, void (%struct.device*)*, void (%struct.device*)*, %struct.acpi_hotplug_profile }
%struct.acpi_hotplug_profile = type { %struct.kobject, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*)*, i8 }
%struct.acpi_hotplug_context = type { %struct.acpi_device*, i32 (%struct.acpi_device*, i32)*, void (%struct.acpi_device*, i32)*, void (%struct.acpi_device*)* }
%struct.acpi_driver = type { [80 x i8], [80 x i8], %struct.acpi_device_id*, i32, %struct.acpi_device_ops, %struct.device_driver, %struct.module* }
%struct.acpi_device_ops = type { i32 (%struct.acpi_device*)*, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*, i32)* }
%struct.acpi_gpio_mapping = type opaque
%struct.property_entry = type { i8*, i64, i8, i32, %union.anon.74 }
%union.anon.74 = type { i8* }
%struct.platform_device_info = type { %struct.device*, %struct.fwnode_handle*, i8, i8*, i32, %struct.resource*, i32, i8*, i64, i64, %struct.property_entry* }
%struct.resource_entry = type { %struct.list_head, %struct.resource*, i64, %struct.resource }
%struct.acpi_resource = type { i32, i32, %union.acpi_resource_data }
%union.acpi_resource_data = type { %struct.acpi_resource_vendor_typed, [40 x i8] }
%struct.acpi_resource_vendor_typed = type { i16, i8, [16 x i8], [1 x i8] }
%struct.pci_dev = type <{ %struct.list_head, %struct.pci_bus*, %struct.pci_bus*, i8*, %struct.proc_dir_entry*, %struct.pci_slot*, i32, i16, i16, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, [6 x i8], i64*, %struct.pci_driver*, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, [4 x i8], %struct.pcie_link_state*, i8, [3 x i8], i32, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], [4 x i8], %struct.hlist_head, %struct.bin_attribute*, i32, [4 x i8], [17 x %struct.bin_attribute*], [17 x %struct.bin_attribute*], %struct.attribute_group**, %struct.pci_vpd*, %union.anon.76, i16, i8, i8, i16, [2 x i8], i64, i64, i8*, i64 }>
%struct.pci_bus = type { %struct.list_head, %struct.pci_bus*, %struct.list_head, %struct.list_head, %struct.pci_dev*, %struct.list_head, [4 x %struct.resource*], %struct.list_head, %struct.resource, %struct.pci_ops*, %struct.msi_controller*, i8*, %struct.proc_dir_entry*, i8, i8, i8, i8, [48 x i8], i16, i16, %struct.device*, %struct.device, %struct.bin_attribute*, %struct.bin_attribute*, i8 }
%struct.pci_ops = type { i32 (%struct.pci_bus*)*, void (%struct.pci_bus*)*, i8* (%struct.pci_bus*, i32, i32)*, i32 (%struct.pci_bus*, i32, i32, i32, i32*)*, i32 (%struct.pci_bus*, i32, i32, i32, i32)* }
%struct.msi_controller = type opaque
%struct.pci_slot = type { %struct.pci_bus*, %struct.list_head, %struct.hotplug_slot*, i8, %struct.kobject }
%struct.hotplug_slot = type opaque
%struct.pci_driver = type { %struct.list_head, i8*, %struct.pci_device_id*, i32 (%struct.pci_dev*, %struct.pci_device_id*)*, void (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)*, %struct.pci_error_handlers*, %struct.attribute_group**, %struct.device_driver, %struct.pci_dynids }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.pci_error_handlers = type { i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)* }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.pcie_link_state = type opaque
%struct.pci_vpd = type opaque
%union.anon.76 = type { %struct.pci_sriov* }
%struct.pci_sriov = type opaque

@forbidden_id_list = internal constant [7 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"PNP0000\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"PNP0100\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"PNP0200\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ACPI0009\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ACPI000A\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"SMB0001\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], align 16, !dbg !0
@.str = private unnamed_addr constant [25 x i8] c"No memory for resources\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"platform device creation failed: %ld\0A\00", align 1
@acpi_platform_notifier = internal global %struct.notifier_block { i32 (%struct.notifier_block*, i64, i8*)* @acpi_platform_device_remove_notify, %struct.notifier_block* null, i32 0 }, align 8, !dbg !4156
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pci_bus_type = external dso_local global %struct.bus_type, align 8
@platform_bus_type = external dso_local global %struct.bus_type, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.platform_device* @acpi_create_platform_device(%struct.acpi_device* %adev, %struct.property_entry* %properties) #0 !dbg !4177 {
entry:
  %retval = alloca %struct.platform_device*, align 8
  %adev.addr = alloca %struct.acpi_device*, align 8
  %properties.addr = alloca %struct.property_entry*, align 8
  %pdev = alloca %struct.platform_device*, align 8
  %pdevinfo = alloca %struct.platform_device_info, align 8
  %rentry = alloca %struct.resource_entry*, align 8
  %resource_list = alloca %struct.list_head, align 8
  %resources = alloca %struct.resource*, align 8
  %count = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.resource_entry*, align 8
  %__mptr16 = alloca i8*, align 8
  %tmp21 = alloca %struct.resource_entry*, align 8
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !4482, metadata !DIExpression()), !dbg !4483
  store %struct.property_entry* %properties, %struct.property_entry** %properties.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.property_entry** %properties.addr, metadata !4484, metadata !DIExpression()), !dbg !4485
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev, metadata !4486, metadata !DIExpression()), !dbg !4487
  store %struct.platform_device* null, %struct.platform_device** %pdev, align 8, !dbg !4487
  call void @llvm.dbg.declare(metadata %struct.platform_device_info* %pdevinfo, metadata !4488, metadata !DIExpression()), !dbg !4506
  call void @llvm.dbg.declare(metadata %struct.resource_entry** %rentry, metadata !4507, metadata !DIExpression()), !dbg !4508
  call void @llvm.dbg.declare(metadata %struct.list_head* %resource_list, metadata !4509, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.declare(metadata %struct.resource** %resources, metadata !4511, metadata !DIExpression()), !dbg !4512
  store %struct.resource* null, %struct.resource** %resources, align 8, !dbg !4512
  call void @llvm.dbg.declare(metadata i32* %count, metadata !4513, metadata !DIExpression()), !dbg !4514
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4515
  %physical_node_count = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %0, i32 0, i32 22, !dbg !4517
  %1 = load i32, i32* %physical_node_count, align 8, !dbg !4517
  %tobool = icmp ne i32 %1, 0, !dbg !4515
  br i1 %tobool, label %if.then, label %if.end, !dbg !4518

if.then:                                          ; preds = %entry
  store %struct.platform_device* null, %struct.platform_device** %retval, align 8, !dbg !4519
  br label %return, !dbg !4519

if.end:                                           ; preds = %entry
  %2 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4520
  %call = call i32 @acpi_match_device_ids(%struct.acpi_device* %2, %struct.acpi_device_id* getelementptr inbounds ([7 x %struct.acpi_device_id], [7 x %struct.acpi_device_id]* @forbidden_id_list, i64 0, i64 0)) #9, !dbg !4522
  %tobool1 = icmp ne i32 %call, 0, !dbg !4522
  br i1 %tobool1, label %if.end4, label %if.then2, !dbg !4523

if.then2:                                         ; preds = %if.end
  %call3 = call i8* @ERR_PTR(i64 -22) #9, !dbg !4524
  %3 = bitcast i8* %call3 to %struct.platform_device*, !dbg !4524
  store %struct.platform_device* %3, %struct.platform_device** %retval, align 8, !dbg !4525
  br label %return, !dbg !4525

if.end4:                                          ; preds = %if.end
  call void @INIT_LIST_HEAD(%struct.list_head* %resource_list) #9, !dbg !4526
  %4 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4527
  %call5 = call i32 @acpi_dev_get_resources(%struct.acpi_device* %4, %struct.list_head* %resource_list, i32 (%struct.acpi_resource*, i8*)* null, i8* null) #9, !dbg !4528
  store i32 %call5, i32* %count, align 4, !dbg !4529
  %5 = load i32, i32* %count, align 4, !dbg !4530
  %cmp = icmp slt i32 %5, 0, !dbg !4532
  br i1 %cmp, label %if.then6, label %if.else, !dbg !4533

if.then6:                                         ; preds = %if.end4
  store %struct.platform_device* null, %struct.platform_device** %retval, align 8, !dbg !4534
  br label %return, !dbg !4534

if.else:                                          ; preds = %if.end4
  %6 = load i32, i32* %count, align 4, !dbg !4536
  %cmp7 = icmp sgt i32 %6, 0, !dbg !4538
  br i1 %cmp7, label %if.then8, label %if.end23, !dbg !4539

if.then8:                                         ; preds = %if.else
  %7 = load i32, i32* %count, align 4, !dbg !4540
  %conv = sext i32 %7 to i64, !dbg !4540
  %call9 = call i8* @kcalloc(i64 %conv, i64 64, i32 3264) #9, !dbg !4542
  %8 = bitcast i8* %call9 to %struct.resource*, !dbg !4542
  store %struct.resource* %8, %struct.resource** %resources, align 8, !dbg !4543
  %9 = load %struct.resource*, %struct.resource** %resources, align 8, !dbg !4544
  %tobool10 = icmp ne %struct.resource* %9, null, !dbg !4544
  br i1 %tobool10, label %if.end13, label %if.then11, !dbg !4546

if.then11:                                        ; preds = %if.then8
  %10 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4547
  %dev = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %10, i32 0, i32 21, !dbg !4547
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0)) #10, !dbg !4547
  call void @acpi_dev_free_resource_list(%struct.list_head* %resource_list) #9, !dbg !4549
  %call12 = call i8* @ERR_PTR(i64 -12) #9, !dbg !4550
  %11 = bitcast i8* %call12 to %struct.platform_device*, !dbg !4550
  store %struct.platform_device* %11, %struct.platform_device** %retval, align 8, !dbg !4551
  br label %return, !dbg !4551

if.end13:                                         ; preds = %if.then8
  store i32 0, i32* %count, align 4, !dbg !4552
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4553, metadata !DIExpression()), !dbg !4556
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %resource_list, i32 0, i32 0, !dbg !4556
  %12 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4556
  %13 = bitcast %struct.list_head* %12 to i8*, !dbg !4556
  store i8* %13, i8** %__mptr, align 8, !dbg !4556
  br label %do.body, !dbg !4556

do.body:                                          ; preds = %if.end13
  br label %do.end, !dbg !4557

do.end:                                           ; preds = %do.body
  %14 = load i8*, i8** %__mptr, align 8, !dbg !4556
  %add.ptr = getelementptr i8, i8* %14, i64 0, !dbg !4556
  %15 = bitcast i8* %add.ptr to %struct.resource_entry*, !dbg !4556
  store %struct.resource_entry* %15, %struct.resource_entry** %tmp, align 8, !dbg !4557
  %16 = load %struct.resource_entry*, %struct.resource_entry** %tmp, align 8, !dbg !4556
  store %struct.resource_entry* %16, %struct.resource_entry** %rentry, align 8, !dbg !4559
  br label %for.cond, !dbg !4559

for.cond:                                         ; preds = %do.end20, %do.end
  %17 = load %struct.resource_entry*, %struct.resource_entry** %rentry, align 8, !dbg !4560
  %node = getelementptr inbounds %struct.resource_entry, %struct.resource_entry* %17, i32 0, i32 0, !dbg !4560
  %cmp14 = icmp eq %struct.list_head* %node, %resource_list, !dbg !4560
  %lnot = xor i1 %cmp14, true, !dbg !4560
  br i1 %lnot, label %for.body, label %for.end, !dbg !4559

for.body:                                         ; preds = %for.cond
  %18 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4562
  %19 = load %struct.resource_entry*, %struct.resource_entry** %rentry, align 8, !dbg !4563
  %res = getelementptr inbounds %struct.resource_entry, %struct.resource_entry* %19, i32 0, i32 1, !dbg !4564
  %20 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4564
  %21 = load %struct.resource*, %struct.resource** %resources, align 8, !dbg !4565
  %22 = load i32, i32* %count, align 4, !dbg !4566
  %inc = add i32 %22, 1, !dbg !4566
  store i32 %inc, i32* %count, align 4, !dbg !4566
  %idxprom = sext i32 %22 to i64, !dbg !4565
  %arrayidx = getelementptr %struct.resource, %struct.resource* %21, i64 %idxprom, !dbg !4565
  call void @acpi_platform_fill_resource(%struct.acpi_device* %18, %struct.resource* %20, %struct.resource* %arrayidx) #9, !dbg !4567
  br label %for.inc, !dbg !4567

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.declare(metadata i8** %__mptr16, metadata !4568, metadata !DIExpression()), !dbg !4570
  %23 = load %struct.resource_entry*, %struct.resource_entry** %rentry, align 8, !dbg !4570
  %node17 = getelementptr inbounds %struct.resource_entry, %struct.resource_entry* %23, i32 0, i32 0, !dbg !4570
  %next18 = getelementptr inbounds %struct.list_head, %struct.list_head* %node17, i32 0, i32 0, !dbg !4570
  %24 = load %struct.list_head*, %struct.list_head** %next18, align 8, !dbg !4570
  %25 = bitcast %struct.list_head* %24 to i8*, !dbg !4570
  store i8* %25, i8** %__mptr16, align 8, !dbg !4570
  br label %do.body19, !dbg !4570

do.body19:                                        ; preds = %for.inc
  br label %do.end20, !dbg !4571

do.end20:                                         ; preds = %do.body19
  %26 = load i8*, i8** %__mptr16, align 8, !dbg !4570
  %add.ptr22 = getelementptr i8, i8* %26, i64 0, !dbg !4570
  %27 = bitcast i8* %add.ptr22 to %struct.resource_entry*, !dbg !4570
  store %struct.resource_entry* %27, %struct.resource_entry** %tmp21, align 8, !dbg !4571
  %28 = load %struct.resource_entry*, %struct.resource_entry** %tmp21, align 8, !dbg !4570
  store %struct.resource_entry* %28, %struct.resource_entry** %rentry, align 8, !dbg !4560
  br label %for.cond, !dbg !4560, !llvm.loop !4573

for.end:                                          ; preds = %for.cond
  call void @acpi_dev_free_resource_list(%struct.list_head* %resource_list) #9, !dbg !4575
  br label %if.end23, !dbg !4576

if.end23:                                         ; preds = %for.end, %if.else
  br label %if.end24

if.end24:                                         ; preds = %if.end23
  %29 = bitcast %struct.platform_device_info* %pdevinfo to i8*, !dbg !4577
  call void @llvm.memset.p0i8.i64(i8* align 8 %29, i8 0, i64 88, i1 false), !dbg !4577
  %30 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4578
  %parent = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %30, i32 0, i32 3, !dbg !4579
  %31 = load %struct.acpi_device*, %struct.acpi_device** %parent, align 8, !dbg !4579
  %tobool25 = icmp ne %struct.acpi_device* %31, null, !dbg !4578
  br i1 %tobool25, label %cond.true, label %cond.false, !dbg !4578

cond.true:                                        ; preds = %if.end24
  %32 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4580
  %parent26 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %32, i32 0, i32 3, !dbg !4581
  %33 = load %struct.acpi_device*, %struct.acpi_device** %parent26, align 8, !dbg !4581
  %call27 = call %struct.device* @acpi_get_first_physical_node(%struct.acpi_device* %33) #9, !dbg !4582
  br label %cond.end, !dbg !4578

cond.false:                                       ; preds = %if.end24
  br label %cond.end, !dbg !4578

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.device* [ %call27, %cond.true ], [ null, %cond.false ], !dbg !4578
  %parent28 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %pdevinfo, i32 0, i32 0, !dbg !4583
  store %struct.device* %cond, %struct.device** %parent28, align 8, !dbg !4584
  %34 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4585
  %dev29 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %34, i32 0, i32 21, !dbg !4586
  %call30 = call i8* @dev_name(%struct.device* %dev29) #9, !dbg !4587
  %name = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %pdevinfo, i32 0, i32 3, !dbg !4588
  store i8* %call30, i8** %name, align 8, !dbg !4589
  %id = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %pdevinfo, i32 0, i32 4, !dbg !4590
  store i32 -1, i32* %id, align 8, !dbg !4591
  %35 = load %struct.resource*, %struct.resource** %resources, align 8, !dbg !4592
  %res31 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %pdevinfo, i32 0, i32 5, !dbg !4593
  store %struct.resource* %35, %struct.resource** %res31, align 8, !dbg !4594
  %36 = load i32, i32* %count, align 4, !dbg !4595
  %num_res = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %pdevinfo, i32 0, i32 6, !dbg !4596
  store i32 %36, i32* %num_res, align 8, !dbg !4597
  %37 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4598
  %call32 = call %struct.fwnode_handle* @acpi_fwnode_handle(%struct.acpi_device* %37) #9, !dbg !4599
  %fwnode = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %pdevinfo, i32 0, i32 1, !dbg !4600
  store %struct.fwnode_handle* %call32, %struct.fwnode_handle** %fwnode, align 8, !dbg !4601
  %38 = load %struct.property_entry*, %struct.property_entry** %properties.addr, align 8, !dbg !4602
  %properties33 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %pdevinfo, i32 0, i32 10, !dbg !4603
  store %struct.property_entry* %38, %struct.property_entry** %properties33, align 8, !dbg !4604
  %39 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4605
  %call34 = call zeroext i1 @acpi_dma_supported(%struct.acpi_device* %39) #9, !dbg !4607
  br i1 %call34, label %if.then35, label %if.else36, !dbg !4608

if.then35:                                        ; preds = %cond.end
  %dma_mask = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %pdevinfo, i32 0, i32 9, !dbg !4609
  store i64 4294967295, i64* %dma_mask, align 8, !dbg !4610
  br label %if.end38, !dbg !4611

if.else36:                                        ; preds = %cond.end
  %dma_mask37 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %pdevinfo, i32 0, i32 9, !dbg !4612
  store i64 0, i64* %dma_mask37, align 8, !dbg !4613
  br label %if.end38

if.end38:                                         ; preds = %if.else36, %if.then35
  %call39 = call %struct.platform_device* @platform_device_register_full(%struct.platform_device_info* %pdevinfo) #9, !dbg !4614
  store %struct.platform_device* %call39, %struct.platform_device** %pdev, align 8, !dbg !4615
  %40 = load %struct.platform_device*, %struct.platform_device** %pdev, align 8, !dbg !4616
  %41 = bitcast %struct.platform_device* %40 to i8*, !dbg !4616
  %call40 = call zeroext i1 @IS_ERR(i8* %41) #9, !dbg !4618
  br i1 %call40, label %if.then41, label %if.else44, !dbg !4619

if.then41:                                        ; preds = %if.end38
  %42 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4620
  %dev42 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %42, i32 0, i32 21, !dbg !4620
  %43 = load %struct.platform_device*, %struct.platform_device** %pdev, align 8, !dbg !4620
  %44 = bitcast %struct.platform_device* %43 to i8*, !dbg !4620
  %call43 = call i64 @PTR_ERR(i8* %44) #9, !dbg !4620
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev42, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %call43) #10, !dbg !4620
  br label %if.end47, !dbg !4620

if.else44:                                        ; preds = %if.end38
  %45 = load %struct.platform_device*, %struct.platform_device** %pdev, align 8, !dbg !4621
  %dev45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 3, !dbg !4623
  %46 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4624
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %46, i32 0, i32 1, !dbg !4625
  %47 = load i8*, i8** %handle, align 8, !dbg !4625
  %call46 = call i32 @acpi_get_node(i8* %47) #9, !dbg !4626
  call void @set_dev_node(%struct.device* %dev45, i32 %call46) #9, !dbg !4627
  br label %if.end47

if.end47:                                         ; preds = %if.else44, %if.then41
  %48 = load %struct.resource*, %struct.resource** %resources, align 8, !dbg !4628
  %49 = bitcast %struct.resource* %48 to i8*, !dbg !4628
  call void @kfree(i8* %49) #9, !dbg !4629
  %50 = load %struct.platform_device*, %struct.platform_device** %pdev, align 8, !dbg !4630
  store %struct.platform_device* %50, %struct.platform_device** %retval, align 8, !dbg !4631
  br label %return, !dbg !4631

return:                                           ; preds = %if.end47, %if.then11, %if.then6, %if.then2, %if.then
  %51 = load %struct.platform_device*, %struct.platform_device** %retval, align 8, !dbg !4632
  ret %struct.platform_device* %51, !dbg !4632
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_match_device_ids(%struct.acpi_device*, %struct.acpi_device_id*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !4633 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !4637, metadata !DIExpression()), !dbg !4638
  %0 = load i64, i64* %error.addr, align 8, !dbg !4639
  %1 = inttoptr i64 %0 to i8*, !dbg !4640
  ret i8* %1, !dbg !4641
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !4642 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !4646, metadata !DIExpression()), !dbg !4647
  br label %do.body, !dbg !4648

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4649

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !4651

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !4649

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4653
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4653
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !4653
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !4653
  br label %do.end3, !dbg !4653

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !4649

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4655
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4656
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !4657
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !4658
  ret void, !dbg !4659
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_dev_get_resources(%struct.acpi_device*, %struct.list_head*, i32 (%struct.acpi_resource*, i8*)*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kcalloc(i64 %n, i64 %size, i32 %flags) #0 !dbg !4660 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4663, metadata !DIExpression()), !dbg !4664
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4665, metadata !DIExpression()), !dbg !4666
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4667, metadata !DIExpression()), !dbg !4668
  %0 = load i64, i64* %n.addr, align 8, !dbg !4669
  %1 = load i64, i64* %size.addr, align 8, !dbg !4670
  %2 = load i32, i32* %flags.addr, align 4, !dbg !4671
  %or = or i32 %2, 256, !dbg !4672
  %call = call i8* @kmalloc_array(i64 %0, i64 %1, i32 %or) #9, !dbg !4673
  ret i8* %call, !dbg !4674
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #3

; Function Attrs: noredzone
declare dso_local void @acpi_dev_free_resource_list(%struct.list_head*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_platform_fill_resource(%struct.acpi_device* %adev, %struct.resource* %src, %struct.resource* %dest) #0 !dbg !4675 {
entry:
  %adev.addr = alloca %struct.acpi_device*, align 8
  %src.addr = alloca %struct.resource*, align 8
  %dest.addr = alloca %struct.resource*, align 8
  %parent = alloca %struct.device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pci_dev*, align 8
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !4678, metadata !DIExpression()), !dbg !4679
  store %struct.resource* %src, %struct.resource** %src.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %src.addr, metadata !4680, metadata !DIExpression()), !dbg !4681
  store %struct.resource* %dest, %struct.resource** %dest.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %dest.addr, metadata !4682, metadata !DIExpression()), !dbg !4683
  call void @llvm.dbg.declare(metadata %struct.device** %parent, metadata !4684, metadata !DIExpression()), !dbg !4685
  %0 = load %struct.resource*, %struct.resource** %dest.addr, align 8, !dbg !4686
  %1 = load %struct.resource*, %struct.resource** %src.addr, align 8, !dbg !4687
  %2 = bitcast %struct.resource* %0 to i8*, !dbg !4688
  %3 = bitcast %struct.resource* %1 to i8*, !dbg !4688
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 %3, i64 64, i1 false), !dbg !4688
  %4 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4689
  %parent1 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %4, i32 0, i32 3, !dbg !4690
  %5 = load %struct.acpi_device*, %struct.acpi_device** %parent1, align 8, !dbg !4690
  %call = call %struct.device* @acpi_get_first_physical_node(%struct.acpi_device* %5) #9, !dbg !4691
  store %struct.device* %call, %struct.device** %parent, align 8, !dbg !4692
  %6 = load %struct.device*, %struct.device** %parent, align 8, !dbg !4693
  %tobool = icmp ne %struct.device* %6, null, !dbg !4693
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4695

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct.device*, %struct.device** %parent, align 8, !dbg !4696
  %bus = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 5, !dbg !4696
  %8 = load %struct.bus_type*, %struct.bus_type** %bus, align 8, !dbg !4696
  %cmp = icmp eq %struct.bus_type* %8, @pci_bus_type, !dbg !4696
  br i1 %cmp, label %if.then, label %if.end, !dbg !4697

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4698, metadata !DIExpression()), !dbg !4700
  %9 = load %struct.device*, %struct.device** %parent, align 8, !dbg !4700
  %10 = bitcast %struct.device* %9 to i8*, !dbg !4700
  store i8* %10, i8** %__mptr, align 8, !dbg !4700
  br label %do.body, !dbg !4700

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !4701

do.end:                                           ; preds = %do.body
  %11 = load i8*, i8** %__mptr, align 8, !dbg !4700
  %add.ptr = getelementptr i8, i8* %11, i64 -176, !dbg !4700
  %12 = bitcast i8* %add.ptr to %struct.pci_dev*, !dbg !4700
  store %struct.pci_dev* %12, %struct.pci_dev** %tmp, align 8, !dbg !4701
  %13 = load %struct.pci_dev*, %struct.pci_dev** %tmp, align 8, !dbg !4700
  %14 = load %struct.resource*, %struct.resource** %dest.addr, align 8, !dbg !4703
  %call2 = call %struct.resource* @pci_find_resource(%struct.pci_dev* %13, %struct.resource* %14) #9, !dbg !4704
  %15 = load %struct.resource*, %struct.resource** %dest.addr, align 8, !dbg !4705
  %parent3 = getelementptr inbounds %struct.resource, %struct.resource* %15, i32 0, i32 5, !dbg !4706
  store %struct.resource* %call2, %struct.resource** %parent3, align 8, !dbg !4707
  br label %if.end, !dbg !4705

if.end:                                           ; preds = %do.end, %land.lhs.true, %entry
  ret void, !dbg !4708
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noredzone
declare dso_local %struct.device* @acpi_get_first_physical_node(%struct.acpi_device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #0 !dbg !4709 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4712, metadata !DIExpression()), !dbg !4713
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4714
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !4716
  %1 = load i8*, i8** %init_name, align 8, !dbg !4716
  %tobool = icmp ne i8* %1, null, !dbg !4714
  br i1 %tobool, label %if.then, label %if.end, !dbg !4717

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4718
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !4719
  %3 = load i8*, i8** %init_name1, align 8, !dbg !4719
  store i8* %3, i8** %retval, align 8, !dbg !4720
  br label %return, !dbg !4720

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4721
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !4722
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #9, !dbg !4723
  store i8* %call, i8** %retval, align 8, !dbg !4724
  br label %return, !dbg !4724

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !4725
  ret i8* %5, !dbg !4725
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.fwnode_handle* @acpi_fwnode_handle(%struct.acpi_device* %adev) #0 !dbg !4726 {
entry:
  %adev.addr = alloca %struct.acpi_device*, align 8
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !4729, metadata !DIExpression()), !dbg !4730
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4731
  %fwnode = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %0, i32 0, i32 2, !dbg !4732
  ret %struct.fwnode_handle* %fwnode, !dbg !4733
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @acpi_dma_supported(%struct.acpi_device*) #2

; Function Attrs: noredzone
declare dso_local %struct.platform_device* @platform_device_register_full(%struct.platform_device_info*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !4734 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4737, metadata !DIExpression()), !dbg !4738
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4739
  %1 = ptrtoint i8* %0 to i64, !dbg !4739
  %2 = inttoptr i64 %1 to i8*, !dbg !4739
  %3 = ptrtoint i8* %2 to i64, !dbg !4739
  %cmp = icmp uge i64 %3, -4095, !dbg !4739
  %lnot = xor i1 %cmp, true, !dbg !4739
  %lnot1 = xor i1 %lnot, true, !dbg !4739
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4739
  %conv = sext i32 %lnot.ext to i64, !dbg !4739
  %tobool = icmp ne i64 %conv, 0, !dbg !4739
  ret i1 %tobool, !dbg !4740
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !4741 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4744, metadata !DIExpression()), !dbg !4745
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4746
  %1 = ptrtoint i8* %0 to i64, !dbg !4747
  ret i64 %1, !dbg !4748
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_dev_node(%struct.device* %dev, i32 %node) #0 !dbg !4749 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %node.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4752, metadata !DIExpression()), !dbg !4753
  store i32 %node, i32* %node.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %node.addr, metadata !4754, metadata !DIExpression()), !dbg !4755
  ret void, !dbg !4756
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_get_node(i8* %handle) #0 !dbg !4757 {
entry:
  %handle.addr = alloca i8*, align 8
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !4761, metadata !DIExpression()), !dbg !4762
  ret i32 0, !dbg !4763
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_platform_init() #5 section ".init.text" !dbg !4764 {
entry:
  %call = call i32 @acpi_reconfig_notifier_register(%struct.notifier_block* @acpi_platform_notifier) #9, !dbg !4765
  ret void, !dbg !4766
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_reconfig_notifier_register(%struct.notifier_block*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmalloc_array(i64 %n, i64 %size, i32 %flags) #0 !dbg !4767 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4768, metadata !DIExpression()), !dbg !4772
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4781, metadata !DIExpression()), !dbg !4782
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4783, metadata !DIExpression()), !dbg !4784
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4785, metadata !DIExpression()), !dbg !4786
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4787, metadata !DIExpression()), !dbg !4791
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4793, metadata !DIExpression()), !dbg !4797
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4799, metadata !DIExpression()), !dbg !4803
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4808, metadata !DIExpression()), !dbg !4809
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4810, metadata !DIExpression()), !dbg !4811
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4812, metadata !DIExpression()), !dbg !4813
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4814, metadata !DIExpression()), !dbg !4815
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4816, metadata !DIExpression()), !dbg !4817
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4818, metadata !DIExpression()), !dbg !4819
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4820, metadata !DIExpression()), !dbg !4821
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4822, metadata !DIExpression()), !dbg !4823
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
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4824, metadata !DIExpression()), !dbg !4825
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4826, metadata !DIExpression()), !dbg !4827
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4828, metadata !DIExpression()), !dbg !4829
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !4830, metadata !DIExpression()), !dbg !4831
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !4832, metadata !DIExpression()), !dbg !4835
  %0 = load i64, i64* %n.addr, align 8, !dbg !4835
  store i64 %0, i64* %__a, align 8, !dbg !4835
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !4836, metadata !DIExpression()), !dbg !4835
  %1 = load i64, i64* %size.addr, align 8, !dbg !4835
  store i64 %1, i64* %__b, align 8, !dbg !4835
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !4837, metadata !DIExpression()), !dbg !4835
  store i64* %bytes, i64** %__d, align 8, !dbg !4835
  %cmp = icmp eq i64* %__a, %__b, !dbg !4835
  %conv = zext i1 %cmp to i32, !dbg !4835
  %2 = load i64*, i64** %__d, align 8, !dbg !4835
  %cmp1 = icmp eq i64* %__a, %2, !dbg !4835
  %conv2 = zext i1 %cmp1 to i32, !dbg !4835
  %3 = load i64, i64* %__a, align 8, !dbg !4835
  %4 = load i64, i64* %__b, align 8, !dbg !4835
  %5 = load i64*, i64** %__d, align 8, !dbg !4835
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !4835
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4835
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !4835
  store i64 %8, i64* %5, align 8, !dbg !4835
  %frombool = zext i1 %7 to i8, !dbg !4835
  store i8 %frombool, i8* %tmp, align 1, !dbg !4835
  %9 = load i8, i8* %tmp, align 1, !dbg !4835
  %tobool = trunc i8 %9 to i1, !dbg !4835
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #9, !dbg !4839
  %lnot = xor i1 %call, true, !dbg !4839
  %lnot3 = xor i1 %lnot, true, !dbg !4839
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4839
  %conv4 = sext i32 %lnot.ext to i64, !dbg !4839
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !4839
  br i1 %tobool5, label %if.then, label %if.end, !dbg !4840

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !4841
  br label %return, !dbg !4841

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %n.addr, align 8, !dbg !4842
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !4843
  br i1 %11, label %land.lhs.true, label %if.end8, !dbg !4844

land.lhs.true:                                    ; preds = %if.end
  %12 = load i64, i64* %size.addr, align 8, !dbg !4845
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !4846
  br i1 %13, label %if.then6, label %if.end8, !dbg !4847

if.then6:                                         ; preds = %land.lhs.true
  %14 = load i64, i64* %bytes, align 8, !dbg !4848
  %15 = load i32, i32* %flags.addr, align 4, !dbg !4849
  store i64 %14, i64* %size.addr.i, align 8
  store i32 %15, i32* %flags.addr.i, align 4
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !4850
  %17 = call i1 @llvm.is.constant.i64(i64 %16) #11, !dbg !4851
  br i1 %17, label %if.then.i, label %if.end9.i, !dbg !4852

if.then.i:                                        ; preds = %if.then6
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !4853
  %cmp.i = icmp ugt i64 %18, 8192, !dbg !4854
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4855

if.then1.i:                                       ; preds = %if.then.i
  %19 = load i64, i64* %size.addr.i, align 8, !dbg !4856
  %20 = load i32, i32* %flags.addr.i, align 4, !dbg !4857
  store i64 %19, i64* %size.addr.i.i, align 8
  store i32 %20, i32* %flags.addr.i.i, align 4
  %21 = load i64, i64* %size.addr.i.i, align 8, !dbg !4858
  %call.i.i = call i32 @get_order(i64 %21) #12, !dbg !4859
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4817
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !4860
  %23 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4861
  %24 = load i32, i32* %order.i.i, align 4, !dbg !4862
  store i64 %22, i64* %size.addr.i.i.i, align 8
  store i32 %23, i32* %flags.addr.i.i.i, align 4
  store i32 %24, i32* %order.addr.i.i.i, align 4
  %25 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4863
  %26 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4864
  %27 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4865
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %25, i32 %26, i32 %27) #13, !dbg !4866
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4866
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4866
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4866
  call void @llvm.assume(i1 %maskcond.i.i.i) #11, !dbg !4866
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4867
  br label %kmalloc.exit, !dbg !4867

if.end.i:                                         ; preds = %if.then.i
  %28 = load i64, i64* %size.addr.i, align 8, !dbg !4868
  store i64 %28, i64* %size.addr.i11.i, align 8
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4869
  %tobool.i.i = icmp ne i64 %29, 0, !dbg !4869
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4871

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4872
  br label %kmalloc_index.exit.i, !dbg !4872

if.end.i.i:                                       ; preds = %if.end.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4873
  %cmp.i.i = icmp ule i64 %30, 8, !dbg !4875
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4876

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4877
  br label %kmalloc_index.exit.i, !dbg !4877

if.end2.i.i:                                      ; preds = %if.end.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4878
  %cmp3.i.i = icmp ugt i64 %31, 64, !dbg !4880
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4881

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4882
  %cmp4.i.i = icmp ule i64 %32, 96, !dbg !4883
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4884

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4885
  br label %kmalloc_index.exit.i, !dbg !4885

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4886
  %cmp7.i.i = icmp ugt i64 %33, 128, !dbg !4888
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4889

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4890
  %cmp9.i.i = icmp ule i64 %34, 192, !dbg !4891
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4892

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4893
  br label %kmalloc_index.exit.i, !dbg !4893

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4894
  %cmp12.i.i = icmp ule i64 %35, 8, !dbg !4896
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4897

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4898
  br label %kmalloc_index.exit.i, !dbg !4898

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4899
  %cmp15.i.i = icmp ule i64 %36, 16, !dbg !4901
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4902

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4903
  br label %kmalloc_index.exit.i, !dbg !4903

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4904
  %cmp18.i.i = icmp ule i64 %37, 32, !dbg !4906
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4907

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4908
  br label %kmalloc_index.exit.i, !dbg !4908

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4909
  %cmp21.i.i = icmp ule i64 %38, 64, !dbg !4911
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4912

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4913
  br label %kmalloc_index.exit.i, !dbg !4913

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4914
  %cmp24.i.i = icmp ule i64 %39, 128, !dbg !4916
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4917

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4918
  br label %kmalloc_index.exit.i, !dbg !4918

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4919
  %cmp27.i.i = icmp ule i64 %40, 256, !dbg !4921
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4922

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4923
  br label %kmalloc_index.exit.i, !dbg !4923

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4924
  %cmp30.i.i = icmp ule i64 %41, 512, !dbg !4926
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4927

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4928
  br label %kmalloc_index.exit.i, !dbg !4928

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4929
  %cmp33.i.i = icmp ule i64 %42, 1024, !dbg !4931
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4932

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4933
  br label %kmalloc_index.exit.i, !dbg !4933

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4934
  %cmp36.i.i = icmp ule i64 %43, 2048, !dbg !4936
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4937

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4938
  br label %kmalloc_index.exit.i, !dbg !4938

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4939
  %cmp39.i.i = icmp ule i64 %44, 4096, !dbg !4941
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4942

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4943
  br label %kmalloc_index.exit.i, !dbg !4943

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4944
  %cmp42.i.i = icmp ule i64 %45, 8192, !dbg !4946
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4947

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4948
  br label %kmalloc_index.exit.i, !dbg !4948

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4949
  %cmp45.i.i = icmp ule i64 %46, 16384, !dbg !4951
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4952

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4953
  br label %kmalloc_index.exit.i, !dbg !4953

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4954
  %cmp48.i.i = icmp ule i64 %47, 32768, !dbg !4956
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4957

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4958
  br label %kmalloc_index.exit.i, !dbg !4958

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4959
  %cmp51.i.i = icmp ule i64 %48, 65536, !dbg !4961
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4962

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4963
  br label %kmalloc_index.exit.i, !dbg !4963

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4964
  %cmp54.i.i = icmp ule i64 %49, 131072, !dbg !4966
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4967

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4968
  br label %kmalloc_index.exit.i, !dbg !4968

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4969
  %cmp57.i.i = icmp ule i64 %50, 262144, !dbg !4971
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4972

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4973
  br label %kmalloc_index.exit.i, !dbg !4973

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4974
  %cmp60.i.i = icmp ule i64 %51, 524288, !dbg !4976
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4977

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4978
  br label %kmalloc_index.exit.i, !dbg !4978

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4979
  %cmp63.i.i = icmp ule i64 %52, 1048576, !dbg !4981
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4982

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4983
  br label %kmalloc_index.exit.i, !dbg !4983

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4984
  %cmp66.i.i = icmp ule i64 %53, 2097152, !dbg !4986
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4987

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4988
  br label %kmalloc_index.exit.i, !dbg !4988

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4989
  %cmp69.i.i = icmp ule i64 %54, 4194304, !dbg !4991
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4992

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4993
  br label %kmalloc_index.exit.i, !dbg !4993

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4994
  %cmp72.i.i = icmp ule i64 %55, 8388608, !dbg !4996
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4997

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4998
  br label %kmalloc_index.exit.i, !dbg !4998

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4999
  %cmp75.i.i = icmp ule i64 %56, 16777216, !dbg !5001
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5002

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5003
  br label %kmalloc_index.exit.i, !dbg !5003

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5004
  %cmp78.i.i = icmp ule i64 %57, 33554432, !dbg !5006
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5007

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5008
  br label %kmalloc_index.exit.i, !dbg !5008

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5009
  %cmp81.i.i = icmp ule i64 %58, 67108864, !dbg !5011
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5012

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5013
  br label %kmalloc_index.exit.i, !dbg !5013

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 382, i32 0, i64 12) #11, !dbg !5014, !srcloc !5017
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 102) #11, !dbg !5018, !srcloc !5021
  unreachable, !dbg !5022

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %59 = load i32, i32* %retval.i.i, align 4, !dbg !5023
  store i32 %59, i32* %index.i, align 4, !dbg !5024
  %60 = load i32, i32* %index.i, align 4, !dbg !5025
  %tobool.i = icmp ne i32 %60, 0, !dbg !5025
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5027

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5028
  br label %kmalloc.exit, !dbg !5028

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %61 = load i32, i32* %flags.addr.i, align 4, !dbg !5029
  store i32 %61, i32* %flags.addr.i13.i, align 4
  %62 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5030
  %and.i.i = and i32 %62, 17, !dbg !5030
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5030
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5030
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5030
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5030
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5032

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5033
  br label %kmalloc_type.exit.i, !dbg !5033

if.end.i16.i:                                     ; preds = %if.end4.i
  %63 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5034
  %and2.i.i = and i32 %63, 1, !dbg !5035
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5034
  %64 = zext i1 %tobool3.i.i to i64, !dbg !5034
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5034
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5036
  br label %kmalloc_type.exit.i, !dbg !5036

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %65 = load i32, i32* %retval.i12.i, align 4, !dbg !5037
  %idxprom.i = zext i32 %65 to i64, !dbg !5038
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5038
  %66 = load i32, i32* %index.i, align 4, !dbg !5039
  %idxprom6.i = zext i32 %66 to i64, !dbg !5038
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5038
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5038
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !5040
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !5041
  store %struct.kmem_cache* %67, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %68, i32* %flags.addr.i17.i, align 4
  store i64 %69, i64* %size.addr.i18.i, align 8
  %70 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5042
  %71 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5043
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %70, i32 %71) #13, !dbg !5044
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5044
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5044
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5044
  call void @llvm.assume(i1 %maskcond.i.i) #11, !dbg !5044
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4786
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5045
  %73 = load i8*, i8** %ret.i.i, align 8, !dbg !5046
  %74 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5047
  %75 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5048
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %72, i8* %73, i64 %74, i32 %75) #13, !dbg !5049
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5050
  %76 = load i8*, i8** %ret.i.i, align 8, !dbg !5051
  store i8* %76, i8** %retval.i, align 8, !dbg !5052
  br label %kmalloc.exit, !dbg !5052

if.end9.i:                                        ; preds = %if.then6
  %77 = load i64, i64* %size.addr.i, align 8, !dbg !5053
  %78 = load i32, i32* %flags.addr.i, align 4, !dbg !5054
  %call10.i = call noalias i8* @__kmalloc(i64 %77, i32 %78) #13, !dbg !5055
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5055
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5055
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5055
  call void @llvm.assume(i1 %maskcond.i) #11, !dbg !5055
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5056
  br label %kmalloc.exit, !dbg !5056

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %79 = load i8*, i8** %retval.i, align 8, !dbg !5057
  store i8* %79, i8** %retval, align 8, !dbg !5058
  br label %return, !dbg !5058

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %80 = load i64, i64* %bytes, align 8, !dbg !5059
  %81 = load i32, i32* %flags.addr, align 4, !dbg !5060
  %call9 = call noalias i8* @__kmalloc(i64 %80, i32 %81) #9, !dbg !5061
  %ptrint = ptrtoint i8* %call9 to i64, !dbg !5061
  %maskedptr = and i64 %ptrint, 7, !dbg !5061
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !5061
  call void @llvm.assume(i1 %maskcond), !dbg !5061
  store i8* %call9, i8** %retval, align 8, !dbg !5062
  br label %return, !dbg !5062

return:                                           ; preds = %if.end8, %kmalloc.exit, %if.then
  %82 = load i8*, i8** %retval, align 8, !dbg !5063
  ret i8* %82, !dbg !5063
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #0 !dbg !5064 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !5068, metadata !DIExpression()), !dbg !5069
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !5070
  %tobool = trunc i8 %0 to i1, !dbg !5070
  %lnot = xor i1 %tobool, true, !dbg !5070
  %lnot1 = xor i1 %lnot, true, !dbg !5070
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5070
  %conv = sext i32 %lnot.ext to i64, !dbg !5070
  %tobool2 = icmp ne i64 %conv, 0, !dbg !5070
  ret i1 %tobool2, !dbg !5071
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #7

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #8 !dbg !5072 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5076, metadata !DIExpression()), !dbg !5081
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5083, metadata !DIExpression()), !dbg !5084
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5085, metadata !DIExpression()), !dbg !5086
  %0 = load i64, i64* %size.addr, align 8, !dbg !5087
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5089
  br i1 %1, label %if.then, label %if.end447, !dbg !5090

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5091
  %tobool = icmp ne i64 %2, 0, !dbg !5091
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5094

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5095
  br label %return, !dbg !5095

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5096
  %cmp = icmp ult i64 %3, 4096, !dbg !5098
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5099

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5100
  br label %return, !dbg !5100

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub = sub i64 %4, 1, !dbg !5101
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5101
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5101

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub4 = sub i64 %6, 1, !dbg !5101
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5101
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5101

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub6 = sub i64 %8, 1, !dbg !5101
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5101
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5101

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5101

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub9 = sub i64 %9, 1, !dbg !5101
  %and = and i64 %sub9, -9223372036854775808, !dbg !5101
  %tobool10 = icmp ne i64 %and, 0, !dbg !5101
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5101

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5101

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub13 = sub i64 %10, 1, !dbg !5101
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5101
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5101
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5101

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5101

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub18 = sub i64 %11, 1, !dbg !5101
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5101
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5101
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5101

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5101

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub23 = sub i64 %12, 1, !dbg !5101
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5101
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5101
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5101

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5101

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub28 = sub i64 %13, 1, !dbg !5101
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5101
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5101
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5101

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5101

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub33 = sub i64 %14, 1, !dbg !5101
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5101
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5101
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5101

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5101

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub38 = sub i64 %15, 1, !dbg !5101
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5101
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5101
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5101

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5101

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub43 = sub i64 %16, 1, !dbg !5101
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5101
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5101
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5101

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5101

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub48 = sub i64 %17, 1, !dbg !5101
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5101
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5101
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5101

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5101

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub53 = sub i64 %18, 1, !dbg !5101
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5101
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5101
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5101

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5101

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub58 = sub i64 %19, 1, !dbg !5101
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5101
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5101
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5101

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5101

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub63 = sub i64 %20, 1, !dbg !5101
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5101
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5101
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5101

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5101

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub68 = sub i64 %21, 1, !dbg !5101
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5101
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5101
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5101

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5101

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub73 = sub i64 %22, 1, !dbg !5101
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5101
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5101
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5101

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5101

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub78 = sub i64 %23, 1, !dbg !5101
  %and79 = and i64 %sub78, 562949953421312, !dbg !5101
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5101
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5101

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5101

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub83 = sub i64 %24, 1, !dbg !5101
  %and84 = and i64 %sub83, 281474976710656, !dbg !5101
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5101
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5101

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5101

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub88 = sub i64 %25, 1, !dbg !5101
  %and89 = and i64 %sub88, 140737488355328, !dbg !5101
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5101
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5101

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5101

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub93 = sub i64 %26, 1, !dbg !5101
  %and94 = and i64 %sub93, 70368744177664, !dbg !5101
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5101
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5101

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5101

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub98 = sub i64 %27, 1, !dbg !5101
  %and99 = and i64 %sub98, 35184372088832, !dbg !5101
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5101
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5101

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5101

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub103 = sub i64 %28, 1, !dbg !5101
  %and104 = and i64 %sub103, 17592186044416, !dbg !5101
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5101
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5101

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5101

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub108 = sub i64 %29, 1, !dbg !5101
  %and109 = and i64 %sub108, 8796093022208, !dbg !5101
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5101
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5101

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5101

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub113 = sub i64 %30, 1, !dbg !5101
  %and114 = and i64 %sub113, 4398046511104, !dbg !5101
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5101
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5101

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5101

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub118 = sub i64 %31, 1, !dbg !5101
  %and119 = and i64 %sub118, 2199023255552, !dbg !5101
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5101
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5101

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5101

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub123 = sub i64 %32, 1, !dbg !5101
  %and124 = and i64 %sub123, 1099511627776, !dbg !5101
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5101
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5101

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5101

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub128 = sub i64 %33, 1, !dbg !5101
  %and129 = and i64 %sub128, 549755813888, !dbg !5101
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5101
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5101

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5101

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub133 = sub i64 %34, 1, !dbg !5101
  %and134 = and i64 %sub133, 274877906944, !dbg !5101
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5101
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5101

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5101

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub138 = sub i64 %35, 1, !dbg !5101
  %and139 = and i64 %sub138, 137438953472, !dbg !5101
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5101
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5101

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5101

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub143 = sub i64 %36, 1, !dbg !5101
  %and144 = and i64 %sub143, 68719476736, !dbg !5101
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5101
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5101

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5101

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub148 = sub i64 %37, 1, !dbg !5101
  %and149 = and i64 %sub148, 34359738368, !dbg !5101
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5101
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5101

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5101

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub153 = sub i64 %38, 1, !dbg !5101
  %and154 = and i64 %sub153, 17179869184, !dbg !5101
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5101
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5101

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5101

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub158 = sub i64 %39, 1, !dbg !5101
  %and159 = and i64 %sub158, 8589934592, !dbg !5101
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5101
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5101

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5101

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub163 = sub i64 %40, 1, !dbg !5101
  %and164 = and i64 %sub163, 4294967296, !dbg !5101
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5101
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5101

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5101

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub168 = sub i64 %41, 1, !dbg !5101
  %and169 = and i64 %sub168, 2147483648, !dbg !5101
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5101
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5101

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5101

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub173 = sub i64 %42, 1, !dbg !5101
  %and174 = and i64 %sub173, 1073741824, !dbg !5101
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5101
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5101

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5101

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub178 = sub i64 %43, 1, !dbg !5101
  %and179 = and i64 %sub178, 536870912, !dbg !5101
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5101
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5101

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5101

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub183 = sub i64 %44, 1, !dbg !5101
  %and184 = and i64 %sub183, 268435456, !dbg !5101
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5101
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5101

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5101

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub188 = sub i64 %45, 1, !dbg !5101
  %and189 = and i64 %sub188, 134217728, !dbg !5101
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5101
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5101

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5101

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub193 = sub i64 %46, 1, !dbg !5101
  %and194 = and i64 %sub193, 67108864, !dbg !5101
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5101
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5101

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5101

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub198 = sub i64 %47, 1, !dbg !5101
  %and199 = and i64 %sub198, 33554432, !dbg !5101
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5101
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5101

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5101

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub203 = sub i64 %48, 1, !dbg !5101
  %and204 = and i64 %sub203, 16777216, !dbg !5101
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5101
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5101

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5101

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub208 = sub i64 %49, 1, !dbg !5101
  %and209 = and i64 %sub208, 8388608, !dbg !5101
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5101
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5101

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5101

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub213 = sub i64 %50, 1, !dbg !5101
  %and214 = and i64 %sub213, 4194304, !dbg !5101
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5101
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5101

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5101

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub218 = sub i64 %51, 1, !dbg !5101
  %and219 = and i64 %sub218, 2097152, !dbg !5101
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5101
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5101

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5101

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub223 = sub i64 %52, 1, !dbg !5101
  %and224 = and i64 %sub223, 1048576, !dbg !5101
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5101
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5101

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5101

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub228 = sub i64 %53, 1, !dbg !5101
  %and229 = and i64 %sub228, 524288, !dbg !5101
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5101
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5101

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5101

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub233 = sub i64 %54, 1, !dbg !5101
  %and234 = and i64 %sub233, 262144, !dbg !5101
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5101
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5101

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5101

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub238 = sub i64 %55, 1, !dbg !5101
  %and239 = and i64 %sub238, 131072, !dbg !5101
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5101
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5101

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5101

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub243 = sub i64 %56, 1, !dbg !5101
  %and244 = and i64 %sub243, 65536, !dbg !5101
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5101
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5101

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5101

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub248 = sub i64 %57, 1, !dbg !5101
  %and249 = and i64 %sub248, 32768, !dbg !5101
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5101
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5101

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5101

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub253 = sub i64 %58, 1, !dbg !5101
  %and254 = and i64 %sub253, 16384, !dbg !5101
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5101
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5101

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5101

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub258 = sub i64 %59, 1, !dbg !5101
  %and259 = and i64 %sub258, 8192, !dbg !5101
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5101
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5101

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5101

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub263 = sub i64 %60, 1, !dbg !5101
  %and264 = and i64 %sub263, 4096, !dbg !5101
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5101
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5101

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5101

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub268 = sub i64 %61, 1, !dbg !5101
  %and269 = and i64 %sub268, 2048, !dbg !5101
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5101
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5101

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5101

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub273 = sub i64 %62, 1, !dbg !5101
  %and274 = and i64 %sub273, 1024, !dbg !5101
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5101
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5101

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5101

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub278 = sub i64 %63, 1, !dbg !5101
  %and279 = and i64 %sub278, 512, !dbg !5101
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5101
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5101

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5101

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub283 = sub i64 %64, 1, !dbg !5101
  %and284 = and i64 %sub283, 256, !dbg !5101
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5101
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5101

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5101

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub288 = sub i64 %65, 1, !dbg !5101
  %and289 = and i64 %sub288, 128, !dbg !5101
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5101
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5101

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5101

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub293 = sub i64 %66, 1, !dbg !5101
  %and294 = and i64 %sub293, 64, !dbg !5101
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5101
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5101

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5101

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub298 = sub i64 %67, 1, !dbg !5101
  %and299 = and i64 %sub298, 32, !dbg !5101
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5101
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5101

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5101

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub303 = sub i64 %68, 1, !dbg !5101
  %and304 = and i64 %sub303, 16, !dbg !5101
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5101
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5101

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5101

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub308 = sub i64 %69, 1, !dbg !5101
  %and309 = and i64 %sub308, 8, !dbg !5101
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5101
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5101

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5101

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub313 = sub i64 %70, 1, !dbg !5101
  %and314 = and i64 %sub313, 4, !dbg !5101
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5101
  %71 = zext i1 %tobool315 to i64, !dbg !5101
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5101
  br label %cond.end, !dbg !5101

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5101
  br label %cond.end317, !dbg !5101

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5101
  br label %cond.end319, !dbg !5101

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5101
  br label %cond.end321, !dbg !5101

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5101
  br label %cond.end323, !dbg !5101

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5101
  br label %cond.end325, !dbg !5101

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5101
  br label %cond.end327, !dbg !5101

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5101
  br label %cond.end329, !dbg !5101

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5101
  br label %cond.end331, !dbg !5101

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5101
  br label %cond.end333, !dbg !5101

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5101
  br label %cond.end335, !dbg !5101

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5101
  br label %cond.end337, !dbg !5101

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5101
  br label %cond.end339, !dbg !5101

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5101
  br label %cond.end341, !dbg !5101

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5101
  br label %cond.end343, !dbg !5101

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5101
  br label %cond.end345, !dbg !5101

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5101
  br label %cond.end347, !dbg !5101

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5101
  br label %cond.end349, !dbg !5101

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5101
  br label %cond.end351, !dbg !5101

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5101
  br label %cond.end353, !dbg !5101

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5101
  br label %cond.end355, !dbg !5101

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5101
  br label %cond.end357, !dbg !5101

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5101
  br label %cond.end359, !dbg !5101

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5101
  br label %cond.end361, !dbg !5101

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5101
  br label %cond.end363, !dbg !5101

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5101
  br label %cond.end365, !dbg !5101

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5101
  br label %cond.end367, !dbg !5101

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5101
  br label %cond.end369, !dbg !5101

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5101
  br label %cond.end371, !dbg !5101

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5101
  br label %cond.end373, !dbg !5101

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5101
  br label %cond.end375, !dbg !5101

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5101
  br label %cond.end377, !dbg !5101

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5101
  br label %cond.end379, !dbg !5101

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5101
  br label %cond.end381, !dbg !5101

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5101
  br label %cond.end383, !dbg !5101

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5101
  br label %cond.end385, !dbg !5101

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5101
  br label %cond.end387, !dbg !5101

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5101
  br label %cond.end389, !dbg !5101

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5101
  br label %cond.end391, !dbg !5101

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5101
  br label %cond.end393, !dbg !5101

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5101
  br label %cond.end395, !dbg !5101

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5101
  br label %cond.end397, !dbg !5101

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5101
  br label %cond.end399, !dbg !5101

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5101
  br label %cond.end401, !dbg !5101

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5101
  br label %cond.end403, !dbg !5101

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5101
  br label %cond.end405, !dbg !5101

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5101
  br label %cond.end407, !dbg !5101

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5101
  br label %cond.end409, !dbg !5101

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5101
  br label %cond.end411, !dbg !5101

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5101
  br label %cond.end413, !dbg !5101

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5101
  br label %cond.end415, !dbg !5101

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5101
  br label %cond.end417, !dbg !5101

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5101
  br label %cond.end419, !dbg !5101

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5101
  br label %cond.end421, !dbg !5101

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5101
  br label %cond.end423, !dbg !5101

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5101
  br label %cond.end425, !dbg !5101

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5101
  br label %cond.end427, !dbg !5101

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5101
  br label %cond.end429, !dbg !5101

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5101
  br label %cond.end431, !dbg !5101

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5101
  br label %cond.end433, !dbg !5101

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5101
  br label %cond.end435, !dbg !5101

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5101
  br label %cond.end437, !dbg !5101

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5101
  br label %cond.end440, !dbg !5101

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5101

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5101
  br label %cond.end444, !dbg !5101

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub443 = sub i64 %72, 1, !dbg !5101
  %call = call i32 @__ilog2_u64(i64 %sub443) #12, !dbg !5101
  br label %cond.end444, !dbg !5101

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5101
  %sub446 = sub i32 %cond445, 12, !dbg !5102
  %add = add i32 %sub446, 1, !dbg !5103
  store i32 %add, i32* %retval, align 4, !dbg !5104
  br label %return, !dbg !5104

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5105
  %dec = add i64 %73, -1, !dbg !5105
  store i64 %dec, i64* %size.addr, align 8, !dbg !5105
  %74 = load i64, i64* %size.addr, align 8, !dbg !5106
  %shr = lshr i64 %74, 12, !dbg !5106
  store i64 %shr, i64* %size.addr, align 8, !dbg !5106
  %75 = load i64, i64* %size.addr, align 8, !dbg !5107
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5084
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5108
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5109
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #14, !dbg !5108, !srcloc !5110
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5108
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5111
  %add.i = add i32 %79, 1, !dbg !5112
  store i32 %add.i, i32* %retval, align 4, !dbg !5113
  br label %return, !dbg !5113

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5114
  ret i32 %80, !dbg !5114
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #8 !dbg !5115 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5076, metadata !DIExpression()), !dbg !5119
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5083, metadata !DIExpression()), !dbg !5121
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5122, metadata !DIExpression()), !dbg !5123
  %0 = load i64, i64* %n.addr, align 8, !dbg !5124
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5121
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5125
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5126
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #14, !dbg !5125, !srcloc !5110
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5125
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5127
  %add.i = add i32 %4, 1, !dbg !5128
  %sub = sub i32 %add.i, 1, !dbg !5129
  ret i32 %sub, !dbg !5130
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5131 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5135, metadata !DIExpression()), !dbg !5136
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5137, metadata !DIExpression()), !dbg !5138
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5139, metadata !DIExpression()), !dbg !5140
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5141, metadata !DIExpression()), !dbg !5142
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5143
  ret i8* %0, !dbg !5144
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noredzone
declare dso_local %struct.resource* @pci_find_resource(%struct.pci_dev*, %struct.resource*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #0 !dbg !5145 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !5150, metadata !DIExpression()), !dbg !5151
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !5152
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !5153
  %1 = load i8*, i8** %name, align 8, !dbg !5153
  ret i8* %1, !dbg !5154
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_platform_device_remove_notify(%struct.notifier_block* %nb, i64 %value, i8* %arg) #0 !dbg !5155 {
entry:
  %nb.addr = alloca %struct.notifier_block*, align 8
  %value.addr = alloca i64, align 8
  %arg.addr = alloca i8*, align 8
  %adev = alloca %struct.acpi_device*, align 8
  %pdev = alloca %struct.platform_device*, align 8
  store %struct.notifier_block* %nb, %struct.notifier_block** %nb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.notifier_block** %nb.addr, metadata !5156, metadata !DIExpression()), !dbg !5157
  store i64 %value, i64* %value.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %value.addr, metadata !5158, metadata !DIExpression()), !dbg !5159
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !5160, metadata !DIExpression()), !dbg !5161
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev, metadata !5162, metadata !DIExpression()), !dbg !5163
  %0 = load i8*, i8** %arg.addr, align 8, !dbg !5164
  %1 = bitcast i8* %0 to %struct.acpi_device*, !dbg !5164
  store %struct.acpi_device* %1, %struct.acpi_device** %adev, align 8, !dbg !5163
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev, metadata !5165, metadata !DIExpression()), !dbg !5166
  %2 = load i64, i64* %value.addr, align 8, !dbg !5167
  switch i64 %2, label %sw.epilog [
    i64 0, label %sw.bb
    i64 1, label %sw.bb1
  ], !dbg !5168

sw.bb:                                            ; preds = %entry
  br label %sw.epilog, !dbg !5169

sw.bb1:                                           ; preds = %entry
  %3 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !5171
  %call = call zeroext i1 @acpi_device_enumerated(%struct.acpi_device* %3) #9, !dbg !5173
  br i1 %call, label %if.end, label %if.then, !dbg !5174

if.then:                                          ; preds = %sw.bb1
  br label %sw.epilog, !dbg !5175

if.end:                                           ; preds = %sw.bb1
  %4 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !5176
  %call2 = call %struct.platform_device* @acpi_platform_device_find_by_companion(%struct.acpi_device* %4) #9, !dbg !5177
  store %struct.platform_device* %call2, %struct.platform_device** %pdev, align 8, !dbg !5178
  %5 = load %struct.platform_device*, %struct.platform_device** %pdev, align 8, !dbg !5179
  %tobool = icmp ne %struct.platform_device* %5, null, !dbg !5179
  br i1 %tobool, label %if.end4, label %if.then3, !dbg !5181

if.then3:                                         ; preds = %if.end
  br label %sw.epilog, !dbg !5182

if.end4:                                          ; preds = %if.end
  %6 = load %struct.platform_device*, %struct.platform_device** %pdev, align 8, !dbg !5183
  call void @platform_device_unregister(%struct.platform_device* %6) #9, !dbg !5184
  %7 = load %struct.platform_device*, %struct.platform_device** %pdev, align 8, !dbg !5185
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 3, !dbg !5186
  call void @put_device(%struct.device* %dev) #9, !dbg !5187
  br label %sw.epilog, !dbg !5188

sw.epilog:                                        ; preds = %entry, %if.end4, %if.then3, %if.then, %sw.bb
  ret i32 1, !dbg !5189
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @acpi_device_enumerated(%struct.acpi_device* %adev) #0 !dbg !5190 {
entry:
  %adev.addr = alloca %struct.acpi_device*, align 8
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !5193, metadata !DIExpression()), !dbg !5194
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !5195
  %tobool = icmp ne %struct.acpi_device* %0, null, !dbg !5195
  br i1 %tobool, label %land.lhs.true, label %land.end, !dbg !5196

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !5197
  %flags = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %1, i32 0, i32 9, !dbg !5198
  %2 = bitcast %struct.acpi_device_flags* %flags to i32*, !dbg !5199
  %bf.load = load i32, i32* %2, align 4, !dbg !5199
  %bf.lshr = lshr i32 %bf.load, 5, !dbg !5199
  %bf.clear = and i32 %bf.lshr, 1, !dbg !5199
  %tobool1 = icmp ne i32 %bf.clear, 0, !dbg !5197
  br i1 %tobool1, label %land.rhs, label %land.end, !dbg !5200

land.rhs:                                         ; preds = %land.lhs.true
  %3 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !5201
  %flags2 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %3, i32 0, i32 9, !dbg !5202
  %4 = bitcast %struct.acpi_device_flags* %flags2 to i32*, !dbg !5203
  %bf.load3 = load i32, i32* %4, align 4, !dbg !5203
  %bf.lshr4 = lshr i32 %bf.load3, 6, !dbg !5203
  %bf.clear5 = and i32 %bf.lshr4, 1, !dbg !5203
  %tobool6 = icmp ne i32 %bf.clear5, 0, !dbg !5200
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %5 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %tobool6, %land.rhs ], !dbg !5204
  ret i1 %5, !dbg !5205
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.platform_device* @acpi_platform_device_find_by_companion(%struct.acpi_device* %adev) #0 !dbg !5206 {
entry:
  %adev.addr = alloca %struct.acpi_device*, align 8
  %dev = alloca %struct.device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.platform_device*, align 8
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !5209, metadata !DIExpression()), !dbg !5210
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !5211, metadata !DIExpression()), !dbg !5212
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !5213
  %call = call %struct.device* @bus_find_device_by_acpi_dev(%struct.bus_type* @platform_bus_type, %struct.acpi_device* %0) #9, !dbg !5214
  store %struct.device* %call, %struct.device** %dev, align 8, !dbg !5215
  %1 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5216
  %tobool = icmp ne %struct.device* %1, null, !dbg !5216
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5216

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5217, metadata !DIExpression()), !dbg !5219
  %2 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5219
  %3 = bitcast %struct.device* %2 to i8*, !dbg !5219
  store i8* %3, i8** %__mptr, align 8, !dbg !5219
  br label %do.body, !dbg !5219

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !5220

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !5219
  %add.ptr = getelementptr i8, i8* %4, i64 -16, !dbg !5219
  %5 = bitcast i8* %add.ptr to %struct.platform_device*, !dbg !5219
  store %struct.platform_device* %5, %struct.platform_device** %tmp, align 8, !dbg !5220
  %6 = load %struct.platform_device*, %struct.platform_device** %tmp, align 8, !dbg !5219
  br label %cond.end, !dbg !5216

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5216

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.platform_device* [ %6, %do.end ], [ null, %cond.false ], !dbg !5216
  ret %struct.platform_device* %cond, !dbg !5222
}

; Function Attrs: noredzone
declare dso_local void @platform_device_unregister(%struct.platform_device*) #2

; Function Attrs: noredzone
declare dso_local void @put_device(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device* @bus_find_device_by_acpi_dev(%struct.bus_type* %bus, %struct.acpi_device* %adev) #0 !dbg !5223 {
entry:
  %bus.addr = alloca %struct.bus_type*, align 8
  %adev.addr = alloca %struct.acpi_device*, align 8
  store %struct.bus_type* %bus, %struct.bus_type** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bus_type** %bus.addr, metadata !5228, metadata !DIExpression()), !dbg !5229
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !5230, metadata !DIExpression()), !dbg !5231
  %0 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !5232
  %1 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !5233
  %2 = bitcast %struct.acpi_device* %1 to i8*, !dbg !5233
  %call = call %struct.device* @bus_find_device(%struct.bus_type* %0, %struct.device* null, i8* %2, i32 (%struct.device*, i8*)* @device_match_acpi_dev) #9, !dbg !5234
  ret %struct.device* %call, !dbg !5235
}

; Function Attrs: noredzone
declare dso_local %struct.device* @bus_find_device(%struct.bus_type*, %struct.device*, i8*, i32 (%struct.device*, i8*)*) #2

; Function Attrs: noredzone
declare dso_local i32 @device_match_acpi_dev(%struct.device*, i8*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!llvm.module.flags = !{!4172, !4173, !4174, !4175}
!llvm.ident = !{!4176}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "forbidden_id_list", scope: !2, file: !3, line: 22, type: !4169, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !123, globals: !4155, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpi_platform.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !107, !116}
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
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_prop_type", file: !108, line: 19, baseType: !7, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/linux/property.h", directory: "/home/lizy2001/genbc/linux")
!109 = !{!110, !111, !112, !113, !114, !115}
!110 = !DIEnumerator(name: "DEV_PROP_U8", value: 0, isUnsigned: true)
!111 = !DIEnumerator(name: "DEV_PROP_U16", value: 1, isUnsigned: true)
!112 = !DIEnumerator(name: "DEV_PROP_U32", value: 2, isUnsigned: true)
!113 = !DIEnumerator(name: "DEV_PROP_U64", value: 3, isUnsigned: true)
!114 = !DIEnumerator(name: "DEV_PROP_STRING", value: 4, isUnsigned: true)
!115 = !DIEnumerator(name: "DEV_PROP_REF", value: 5, isUnsigned: true)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !117, line: 305, baseType: !7, size: 32, elements: !118)
!117 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!118 = !{!119, !120, !121, !122}
!119 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!120 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!121 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!122 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!123 = !{!124, !125, !127, !163, !165, !156, !329, !4129}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !126, line: 148, baseType: !7)
!126 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource_entry", file: !129, line: 23, size: 768, elements: !130)
!129 = !DIFile(filename: "./include/linux/resource_ext.h", directory: "/home/lizy2001/genbc/linux")
!130 = !{!131, !137, !161, !162}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !128, file: !129, line: 24, baseType: !132, size: 128)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !126, line: 178, size: 128, elements: !133)
!133 = !{!134, !136}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !132, file: !126, line: 179, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !132, file: !126, line: 179, baseType: !135, size: 64, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !128, file: !129, line: 25, baseType: !138, size: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !140, line: 20, size: 512, elements: !141)
!140 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!141 = !{!142, !150, !151, !155, !157, !158, !159, !160}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !139, file: !140, line: 21, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !126, line: 158, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !126, line: 153, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !146, line: 23, baseType: !147)
!146 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !148, line: 31, baseType: !149)
!148 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!149 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !139, file: !140, line: 22, baseType: !143, size: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !139, file: !140, line: 23, baseType: !152, size: 64, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!154 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !139, file: !140, line: 24, baseType: !156, size: 64, offset: 192)
!156 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !139, file: !140, line: 25, baseType: !156, size: 64, offset: 256)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !139, file: !140, line: 26, baseType: !138, size: 64, offset: 320)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !139, file: !140, line: 26, baseType: !138, size: 64, offset: 384)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !139, file: !140, line: 26, baseType: !138, size: 64, offset: 448)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !128, file: !129, line: 26, baseType: !143, size: 64, offset: 192)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "__res", scope: !128, file: !129, line: 27, baseType: !139, size: 512, offset: 256)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !135)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !167, line: 309, size: 19264, elements: !168)
!167 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!168 = !{!169, !170, !3932, !3933, !3934, !3935, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !4027, !4028, !4029, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4103, !4104, !4105, !4106, !4107, !4108, !4110, !4111, !4112, !4115, !4122, !4123, !4124, !4125, !4126, !4127, !4128}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !166, file: !167, line: 310, baseType: !132, size: 128)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !166, file: !167, line: 311, baseType: !171, size: 64, offset: 128)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !167, line: 605, size: 8064, elements: !173)
!173 = !{!174, !175, !176, !177, !178, !179, !180, !184, !185, !186, !214, !217, !218, !222, !224, !225, !226, !227, !231, !233, !235, !3928, !3929, !3930, !3931}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !172, file: !167, line: 606, baseType: !132, size: 128)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !172, file: !167, line: 607, baseType: !171, size: 64, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !172, file: !167, line: 608, baseType: !132, size: 128, offset: 192)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !172, file: !167, line: 609, baseType: !132, size: 128, offset: 320)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !172, file: !167, line: 610, baseType: !165, size: 64, offset: 448)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !172, file: !167, line: 611, baseType: !132, size: 128, offset: 512)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !172, file: !167, line: 613, baseType: !181, size: 256, offset: 640)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 256, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 4)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !172, file: !167, line: 614, baseType: !132, size: 128, offset: 896)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !172, file: !167, line: 615, baseType: !139, size: 512, offset: 1024)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !172, file: !167, line: 617, baseType: !187, size: 64, offset: 1536)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !167, line: 731, size: 320, elements: !189)
!189 = !{!190, !195, !199, !203, !210}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !188, file: !167, line: 732, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{!194, !171}
!194 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !188, file: !167, line: 733, baseType: !196, size: 64, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{null, !171}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !188, file: !167, line: 734, baseType: !200, size: 64, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{!124, !171, !7, !194}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !188, file: !167, line: 735, baseType: !204, size: 64, offset: 192)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!194, !171, !7, !194, !194, !207}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !146, line: 21, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !148, line: 27, baseType: !7)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !188, file: !167, line: 736, baseType: !211, size: 64, offset: 256)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{!194, !171, !7, !194, !194, !208}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !172, file: !167, line: 618, baseType: !215, size: 64, offset: 1600)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !167, line: 537, flags: DIFlagFwdDecl)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !172, file: !167, line: 619, baseType: !124, size: 64, offset: 1664)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !172, file: !167, line: 620, baseType: !219, size: 64, offset: 1728)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !221, line: 84, flags: DIFlagFwdDecl)
!221 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/lizy2001/genbc/linux")
!222 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !172, file: !167, line: 622, baseType: !223, size: 8, offset: 1792)
!223 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !172, file: !167, line: 623, baseType: !223, size: 8, offset: 1800)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !172, file: !167, line: 624, baseType: !223, size: 8, offset: 1808)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !172, file: !167, line: 625, baseType: !223, size: 8, offset: 1816)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !172, file: !167, line: 630, baseType: !228, size: 384, offset: 1824)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 384, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 48)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !172, file: !167, line: 632, baseType: !232, size: 16, offset: 2208)
!232 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !172, file: !167, line: 633, baseType: !234, size: 16, offset: 2224)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !167, line: 237, baseType: !232)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !172, file: !167, line: 634, baseType: !236, size: 64, offset: 2240)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !238)
!238 = !{!239, !3382, !3383, !3386, !3387, !3438, !3529, !3530, !3531, !3532, !3533, !3542, !3647, !3660, !3855, !3856, !3860, !3862, !3863, !3864, !3868, !3874, !3875, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3916, !3917, !3918, !3921, !3924, !3925, !3926, !3927}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !237, file: !73, line: 462, baseType: !240, size: 512)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !241, line: 64, size: 512, elements: !242)
!241 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!242 = !{!243, !244, !245, !247, !307, !3233, !3372, !3377, !3378, !3379, !3380, !3381}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !240, file: !241, line: 65, baseType: !152, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !240, file: !241, line: 66, baseType: !132, size: 128, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !240, file: !241, line: 67, baseType: !246, size: 64, offset: 192)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !240, file: !241, line: 68, baseType: !248, size: 64, offset: 256)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !241, line: 192, size: 704, elements: !250)
!250 = !{!251, !252, !268, !269}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !249, file: !241, line: 193, baseType: !132, size: 128)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !249, file: !241, line: 194, baseType: !253, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !254, line: 83, baseType: !255)
!254 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !254, line: 71, elements: !256)
!256 = !{!257}
!257 = !DIDerivedType(tag: DW_TAG_member, scope: !255, file: !254, line: 72, baseType: !258)
!258 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !255, file: !254, line: 72, elements: !259)
!259 = !{!260}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !258, file: !254, line: 73, baseType: !261)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !254, line: 20, elements: !262)
!262 = !{!263}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !261, file: !254, line: 21, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !265, line: 25, baseType: !266)
!265 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !265, line: 25, elements: !267)
!267 = !{}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !249, file: !241, line: 195, baseType: !240, size: 512, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !249, file: !241, line: 196, baseType: !270, size: 64, offset: 640)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !241, line: 156, size: 192, elements: !273)
!273 = !{!274, !279, !284}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !272, file: !241, line: 157, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!194, !248, !246}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !272, file: !241, line: 158, baseType: !280, size: 64, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!152, !248, !246}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !272, file: !241, line: 159, baseType: !285, size: 64, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !286)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{!194, !248, !246, !289}
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !241, line: 148, size: 20736, elements: !291)
!291 = !{!292, !297, !301, !302, !306}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !290, file: !241, line: 149, baseType: !293, size: 192)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 192, elements: !295)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!295 = !{!296}
!296 = !DISubrange(count: 3)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !290, file: !241, line: 150, baseType: !298, size: 4096, offset: 192)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 4096, elements: !299)
!299 = !{!300}
!300 = !DISubrange(count: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !290, file: !241, line: 151, baseType: !194, size: 32, offset: 4288)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !290, file: !241, line: 152, baseType: !303, size: 16384, offset: 4320)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 16384, elements: !304)
!304 = !{!305}
!305 = !DISubrange(count: 2048)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !290, file: !241, line: 153, baseType: !194, size: 32, offset: 20704)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !240, file: !241, line: 69, baseType: !308, size: 64, offset: 320)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !241, line: 138, size: 448, elements: !310)
!310 = !{!311, !315, !343, !345, !3195, !3223, !3227}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !309, file: !241, line: 139, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{null, !246}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !309, file: !241, line: 140, baseType: !316, size: 64, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !318)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !319, line: 230, size: 128, elements: !320)
!319 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!320 = !{!321, !336}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !318, file: !319, line: 231, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!325, !246, !330, !294}
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !126, line: 60, baseType: !326)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !327, line: 73, baseType: !328)
!327 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !327, line: 15, baseType: !329)
!329 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !319, line: 30, size: 128, elements: !332)
!332 = !{!333, !334}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !331, file: !319, line: 31, baseType: !152, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !331, file: !319, line: 32, baseType: !335, size: 16, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !126, line: 19, baseType: !232)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !318, file: !319, line: 232, baseType: !337, size: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{!325, !246, !330, !152, !340}
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !126, line: 55, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !327, line: 72, baseType: !342)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !327, line: 16, baseType: !156)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !309, file: !241, line: 141, baseType: !344, size: 64, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !309, file: !241, line: 142, baseType: !346, size: 64, offset: 192)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !349)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !319, line: 84, size: 320, elements: !350)
!350 = !{!351, !352, !356, !3192, !3193}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !349, file: !319, line: 85, baseType: !152, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !349, file: !319, line: 86, baseType: !353, size: 64, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{!335, !246, !330, !194}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !349, file: !319, line: 88, baseType: !357, size: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!335, !246, !360, !194}
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !319, line: 168, size: 448, elements: !362)
!362 = !{!363, !364, !365, !366, !3187, !3188}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !361, file: !319, line: 169, baseType: !331, size: 128)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !361, file: !319, line: 170, baseType: !340, size: 64, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !361, file: !319, line: 171, baseType: !124, size: 64, offset: 192)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !361, file: !319, line: 172, baseType: !367, size: 64, offset: 256)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DISubroutineType(types: !369)
!369 = !{!325, !370, !246, !360, !294, !541, !340}
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !372)
!372 = !{!373, !391, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3170, !3171, !3180, !3181, !3182, !3183, !3184, !3185, !3186}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !371, file: !44, line: 920, baseType: !374, size: 128)
!374 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !371, file: !44, line: 917, size: 128, elements: !375)
!375 = !{!376, !382}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !374, file: !44, line: 918, baseType: !377, size: 64)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !378, line: 58, size: 64, elements: !379)
!378 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!379 = !{!380}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !377, file: !378, line: 59, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !374, file: !44, line: 919, baseType: !383, size: 128, align: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !126, line: 216, size: 128, align: 64, elements: !384)
!384 = !{!385, !387}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !383, file: !126, line: 217, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !383, file: !126, line: 218, baseType: !388, size: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DISubroutineType(types: !390)
!390 = !{null, !386}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !371, file: !44, line: 921, baseType: !392, size: 128, offset: 128)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !393, line: 8, size: 128, elements: !394)
!393 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!394 = !{!395, !399}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !392, file: !393, line: 9, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !398, line: 18, flags: DIFlagFwdDecl)
!398 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!399 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !392, file: !393, line: 10, baseType: !400, size: 64, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !398, line: 89, size: 1536, elements: !402)
!402 = !{!403, !404, !414, !422, !423, !438, !3120, !3122, !3134, !3135, !3136, !3137, !3138, !3144, !3145, !3146}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !401, file: !398, line: 91, baseType: !7, size: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !401, file: !398, line: 92, baseType: !405, size: 32, offset: 32)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !406, line: 277, baseType: !407)
!406 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !406, line: 277, size: 32, elements: !408)
!408 = !{!409}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !407, file: !406, line: 277, baseType: !410, size: 32)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !406, line: 70, baseType: !411)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !406, line: 65, size: 32, elements: !412)
!412 = !{!413}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !411, file: !406, line: 66, baseType: !7, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !401, file: !398, line: 93, baseType: !415, size: 128, offset: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !416, line: 38, size: 128, elements: !417)
!416 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!417 = !{!418, !420}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !415, file: !416, line: 39, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !415, file: !416, line: 39, baseType: !421, size: 64, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !401, file: !398, line: 94, baseType: !400, size: 64, offset: 192)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !401, file: !398, line: 95, baseType: !424, size: 128, offset: 256)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !398, line: 47, size: 128, elements: !425)
!425 = !{!426, !435}
!426 = !DIDerivedType(tag: DW_TAG_member, scope: !424, file: !398, line: 48, baseType: !427, size: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !424, file: !398, line: 48, size: 64, elements: !428)
!428 = !{!429, !434}
!429 = !DIDerivedType(tag: DW_TAG_member, scope: !427, file: !398, line: 49, baseType: !430, size: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !427, file: !398, line: 49, size: 64, elements: !431)
!431 = !{!432, !433}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !430, file: !398, line: 50, baseType: !208, size: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !430, file: !398, line: 50, baseType: !208, size: 32, offset: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !427, file: !398, line: 52, baseType: !145, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !424, file: !398, line: 54, baseType: !436, size: 64, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !223)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !401, file: !398, line: 96, baseType: !439, size: 64, offset: 384)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !441)
!441 = !{!442, !443, !444, !452, !459, !460, !608, !2831, !2832, !2833, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !3096, !3104, !3105, !3106, !3116, !3117, !3118, !3119}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !440, file: !44, line: 611, baseType: !335, size: 16)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !440, file: !44, line: 612, baseType: !232, size: 16, offset: 16)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !440, file: !44, line: 613, baseType: !445, size: 32, offset: 32)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !446, line: 23, baseType: !447)
!446 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !446, line: 21, size: 32, elements: !448)
!448 = !{!449}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !447, file: !446, line: 22, baseType: !450, size: 32)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !126, line: 32, baseType: !451)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !327, line: 49, baseType: !7)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !440, file: !44, line: 614, baseType: !453, size: 32, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !446, line: 28, baseType: !454)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !446, line: 26, size: 32, elements: !455)
!455 = !{!456}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !454, file: !446, line: 27, baseType: !457, size: 32)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !126, line: 33, baseType: !458)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !327, line: 50, baseType: !7)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !440, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !440, file: !44, line: 622, baseType: !461, size: 64, offset: 128)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !463)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !464)
!464 = !{!465, !469, !482, !486, !492, !496, !502, !506, !510, !514, !518, !519, !525, !529, !555, !584, !588, !594, !599, !603, !604}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !463, file: !44, line: 1865, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!400, !439, !400, !7}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !463, file: !44, line: 1866, baseType: !470, size: 64, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!152, !400, !439, !473}
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !475, line: 10, size: 128, elements: !476)
!475 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!476 = !{!477, !481}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !474, file: !475, line: 11, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DISubroutineType(types: !480)
!480 = !{null, !124}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !474, file: !475, line: 12, baseType: !124, size: 64, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !463, file: !44, line: 1867, baseType: !483, size: 64, offset: 128)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{!194, !439, !194}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !463, file: !44, line: 1868, baseType: !487, size: 64, offset: 192)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!490, !439, !194}
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !463, file: !44, line: 1870, baseType: !493, size: 64, offset: 256)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!194, !400, !294, !194}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !463, file: !44, line: 1872, baseType: !497, size: 64, offset: 320)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{!194, !439, !400, !335, !500}
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !126, line: 30, baseType: !501)
!501 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !463, file: !44, line: 1873, baseType: !503, size: 64, offset: 384)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!194, !400, !439, !400}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !463, file: !44, line: 1874, baseType: !507, size: 64, offset: 448)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{!194, !439, !400}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !463, file: !44, line: 1875, baseType: !511, size: 64, offset: 512)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DISubroutineType(types: !513)
!513 = !{!194, !439, !400, !152}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !463, file: !44, line: 1876, baseType: !515, size: 64, offset: 576)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{!194, !439, !400, !335}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !463, file: !44, line: 1877, baseType: !507, size: 64, offset: 640)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !463, file: !44, line: 1878, baseType: !520, size: 64, offset: 704)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!194, !439, !400, !335, !523}
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !126, line: 16, baseType: !524)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !126, line: 13, baseType: !208)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !463, file: !44, line: 1879, baseType: !526, size: 64, offset: 768)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DISubroutineType(types: !528)
!528 = !{!194, !439, !400, !439, !400, !7}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !463, file: !44, line: 1881, baseType: !530, size: 64, offset: 832)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DISubroutineType(types: !532)
!532 = !{!194, !400, !533}
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !535)
!535 = !{!536, !537, !538, !539, !540, !544, !552, !553, !554}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !534, file: !44, line: 220, baseType: !7, size: 32)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !534, file: !44, line: 221, baseType: !335, size: 16, offset: 32)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !534, file: !44, line: 222, baseType: !445, size: 32, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !534, file: !44, line: 223, baseType: !453, size: 32, offset: 96)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !534, file: !44, line: 224, baseType: !541, size: 64, offset: 128)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !126, line: 46, baseType: !542)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !327, line: 88, baseType: !543)
!543 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !534, file: !44, line: 225, baseType: !545, size: 128, offset: 192)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !546, line: 13, size: 128, elements: !547)
!546 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!547 = !{!548, !551}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !545, file: !546, line: 14, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !546, line: 8, baseType: !550)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !148, line: 30, baseType: !543)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !545, file: !546, line: 15, baseType: !329, size: 64, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !534, file: !44, line: 226, baseType: !545, size: 128, offset: 320)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !534, file: !44, line: 227, baseType: !545, size: 128, offset: 448)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !534, file: !44, line: 234, baseType: !370, size: 64, offset: 576)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !463, file: !44, line: 1882, baseType: !556, size: 64, offset: 896)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!194, !559, !561, !208, !7}
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !392)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !563, line: 22, size: 1152, elements: !564)
!563 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!564 = !{!565, !566, !567, !568, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !562, file: !563, line: 23, baseType: !208, size: 32)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !562, file: !563, line: 24, baseType: !335, size: 16, offset: 32)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !562, file: !563, line: 25, baseType: !7, size: 32, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !562, file: !563, line: 26, baseType: !569, size: 32, offset: 96)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !126, line: 104, baseType: !208)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !562, file: !563, line: 27, baseType: !145, size: 64, offset: 128)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !562, file: !563, line: 28, baseType: !145, size: 64, offset: 192)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !562, file: !563, line: 37, baseType: !145, size: 64, offset: 256)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !562, file: !563, line: 38, baseType: !523, size: 32, offset: 320)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !562, file: !563, line: 39, baseType: !523, size: 32, offset: 352)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !562, file: !563, line: 40, baseType: !445, size: 32, offset: 384)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !562, file: !563, line: 41, baseType: !453, size: 32, offset: 416)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !562, file: !563, line: 42, baseType: !541, size: 64, offset: 448)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !562, file: !563, line: 43, baseType: !545, size: 128, offset: 512)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !562, file: !563, line: 44, baseType: !545, size: 128, offset: 640)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !562, file: !563, line: 45, baseType: !545, size: 128, offset: 768)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !562, file: !563, line: 46, baseType: !545, size: 128, offset: 896)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !562, file: !563, line: 47, baseType: !145, size: 64, offset: 1024)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !562, file: !563, line: 48, baseType: !145, size: 64, offset: 1088)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !463, file: !44, line: 1883, baseType: !585, size: 64, offset: 960)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{!325, !400, !294, !340}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !463, file: !44, line: 1884, baseType: !589, size: 64, offset: 1024)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!194, !439, !592, !145, !145}
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !463, file: !44, line: 1886, baseType: !595, size: 64, offset: 1088)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{!194, !439, !598, !194}
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !463, file: !44, line: 1887, baseType: !600, size: 64, offset: 1152)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DISubroutineType(types: !602)
!602 = !{!194, !439, !400, !370, !7, !335}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !463, file: !44, line: 1890, baseType: !515, size: 64, offset: 1216)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !463, file: !44, line: 1891, baseType: !605, size: 64, offset: 1280)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!194, !439, !490, !194}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !440, file: !44, line: 623, baseType: !609, size: 64, offset: 192)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !611)
!611 = !{!612, !613, !614, !615, !616, !617, !667, !2438, !2520, !2603, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2619, !2623, !2624, !2627, !2628, !2631, !2632, !2633, !2674, !2701, !2702, !2703, !2704, !2705, !2706, !2709, !2711, !2718, !2719, !2721, !2722, !2723, !2782, !2783, !2798, !2799, !2800, !2801, !2802, !2805, !2806, !2807, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !610, file: !44, line: 1417, baseType: !132, size: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !610, file: !44, line: 1418, baseType: !523, size: 32, offset: 128)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !610, file: !44, line: 1419, baseType: !223, size: 8, offset: 160)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !610, file: !44, line: 1420, baseType: !156, size: 64, offset: 192)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !610, file: !44, line: 1421, baseType: !541, size: 64, offset: 256)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !610, file: !44, line: 1422, baseType: !618, size: 64, offset: 320)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !620)
!620 = !{!621, !622, !623, !630, !634, !638, !642, !646, !647, !657, !660, !661, !662, !664, !665, !666}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !619, file: !44, line: 2229, baseType: !152, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !619, file: !44, line: 2230, baseType: !194, size: 32, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !619, file: !44, line: 2238, baseType: !624, size: 64, offset: 128)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{!194, !627}
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !629, line: 28, flags: DIFlagFwdDecl)
!629 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!630 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !619, file: !44, line: 2239, baseType: !631, size: 64, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !633)
!633 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !619, file: !44, line: 2240, baseType: !635, size: 64, offset: 256)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!400, !618, !194, !152, !124}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !619, file: !44, line: 2242, baseType: !639, size: 64, offset: 320)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{null, !609}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !619, file: !44, line: 2243, baseType: !643, size: 64, offset: 384)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !645, line: 76, flags: DIFlagFwdDecl)
!645 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!646 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !619, file: !44, line: 2244, baseType: !618, size: 64, offset: 448)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !619, file: !44, line: 2245, baseType: !648, size: 64, offset: 512)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !126, line: 182, size: 64, elements: !649)
!649 = !{!650}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !648, file: !126, line: 183, baseType: !651, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !126, line: 186, size: 128, elements: !653)
!653 = !{!654, !655}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !652, file: !126, line: 187, baseType: !651, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !652, file: !126, line: 187, baseType: !656, size: 64, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !619, file: !44, line: 2247, baseType: !658, offset: 576)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !659, line: 187, elements: !267)
!659 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!660 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !619, file: !44, line: 2248, baseType: !658, offset: 576)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !619, file: !44, line: 2249, baseType: !658, offset: 576)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !619, file: !44, line: 2250, baseType: !663, offset: 576)
!663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !658, elements: !295)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !619, file: !44, line: 2252, baseType: !658, offset: 576)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !619, file: !44, line: 2253, baseType: !658, offset: 576)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !619, file: !44, line: 2254, baseType: !658, offset: 576)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !610, file: !44, line: 1423, baseType: !668, size: 64, offset: 384)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !670)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !671)
!671 = !{!672, !676, !680, !681, !685, !691, !695, !696, !697, !701, !705, !706, !707, !708, !714, !719, !720, !727, !728, !729, !730, !2422, !2437}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !670, file: !44, line: 1936, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DISubroutineType(types: !675)
!675 = !{!439, !609}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !670, file: !44, line: 1937, baseType: !677, size: 64, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{null, !439}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !670, file: !44, line: 1938, baseType: !677, size: 64, offset: 128)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !670, file: !44, line: 1940, baseType: !682, size: 64, offset: 192)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{null, !439, !194}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !670, file: !44, line: 1941, baseType: !686, size: 64, offset: 256)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DISubroutineType(types: !688)
!688 = !{!194, !439, !689}
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !670, file: !44, line: 1942, baseType: !692, size: 64, offset: 320)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DISubroutineType(types: !694)
!694 = !{!194, !439}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !670, file: !44, line: 1943, baseType: !677, size: 64, offset: 384)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !670, file: !44, line: 1944, baseType: !639, size: 64, offset: 448)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !670, file: !44, line: 1945, baseType: !698, size: 64, offset: 512)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{!194, !609, !194}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !670, file: !44, line: 1946, baseType: !702, size: 64, offset: 576)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DISubroutineType(types: !704)
!704 = !{!194, !609}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !670, file: !44, line: 1947, baseType: !702, size: 64, offset: 640)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !670, file: !44, line: 1948, baseType: !702, size: 64, offset: 704)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !670, file: !44, line: 1949, baseType: !702, size: 64, offset: 768)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !670, file: !44, line: 1950, baseType: !709, size: 64, offset: 832)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{!194, !400, !712}
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !670, file: !44, line: 1951, baseType: !715, size: 64, offset: 896)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DISubroutineType(types: !717)
!717 = !{!194, !609, !718, !294}
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !670, file: !44, line: 1952, baseType: !639, size: 64, offset: 960)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !670, file: !44, line: 1954, baseType: !721, size: 64, offset: 1024)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{!194, !724, !400}
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !726, line: 539, flags: DIFlagFwdDecl)
!726 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!727 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !670, file: !44, line: 1955, baseType: !721, size: 64, offset: 1088)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !670, file: !44, line: 1956, baseType: !721, size: 64, offset: 1152)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !670, file: !44, line: 1957, baseType: !721, size: 64, offset: 1216)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !670, file: !44, line: 1963, baseType: !731, size: 64, offset: 1280)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{!194, !609, !734, !125}
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !736, line: 68, size: 512, align: 128, elements: !737)
!736 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!737 = !{!738, !739, !2414, !2421}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !735, file: !736, line: 69, baseType: !156, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, scope: !735, file: !736, line: 77, baseType: !740, size: 320, offset: 64)
!740 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !735, file: !736, line: 77, size: 320, elements: !741)
!741 = !{!742, !929, !934, !962, !970, !976, !2345, !2413}
!742 = !DIDerivedType(tag: DW_TAG_member, scope: !740, file: !736, line: 78, baseType: !743, size: 320)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !740, file: !736, line: 78, size: 320, elements: !744)
!744 = !{!745, !746, !927, !928}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !743, file: !736, line: 84, baseType: !132, size: 128)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !743, file: !736, line: 86, baseType: !747, size: 64, offset: 128)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !749)
!749 = !{!750, !751, !758, !759, !764, !779, !795, !796, !797, !798, !920, !921, !924, !925, !926}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !748, file: !44, line: 452, baseType: !439, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !748, file: !44, line: 453, baseType: !752, size: 128, offset: 64)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !753, line: 292, size: 128, elements: !754)
!753 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!754 = !{!755, !756, !757}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !752, file: !753, line: 293, baseType: !253)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !752, file: !753, line: 295, baseType: !125, size: 32)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !752, file: !753, line: 296, baseType: !124, size: 64, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !748, file: !44, line: 454, baseType: !125, size: 32, offset: 192)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !748, file: !44, line: 455, baseType: !760, size: 32, offset: 224)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !126, line: 168, baseType: !761)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !126, line: 166, size: 32, elements: !762)
!762 = !{!763}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !761, file: !126, line: 167, baseType: !194, size: 32)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !748, file: !44, line: 460, baseType: !765, size: 128, offset: 256)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !766, line: 125, size: 128, elements: !767)
!766 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!767 = !{!768, !778}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !765, file: !766, line: 126, baseType: !769, size: 64)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !766, line: 31, size: 64, elements: !770)
!770 = !{!771}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !769, file: !766, line: 32, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !766, line: 24, size: 192, align: 64, elements: !774)
!774 = !{!775, !776, !777}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !773, file: !766, line: 25, baseType: !156, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !773, file: !766, line: 26, baseType: !772, size: 64, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !773, file: !766, line: 27, baseType: !772, size: 64, offset: 128)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !765, file: !766, line: 127, baseType: !772, size: 64, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !748, file: !44, line: 461, baseType: !780, size: 256, offset: 384)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !781, line: 35, size: 256, elements: !782)
!781 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!782 = !{!783, !791, !792, !794}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !780, file: !781, line: 36, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !785, line: 13, baseType: !786)
!785 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !126, line: 175, baseType: !787)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !126, line: 173, size: 64, elements: !788)
!788 = !{!789}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !787, file: !126, line: 174, baseType: !790, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !146, line: 22, baseType: !550)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !780, file: !781, line: 42, baseType: !784, size: 64, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !780, file: !781, line: 46, baseType: !793, offset: 128)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !254, line: 29, baseType: !261)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !780, file: !781, line: 47, baseType: !132, size: 128, offset: 128)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !748, file: !44, line: 462, baseType: !156, size: 64, offset: 640)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !748, file: !44, line: 463, baseType: !156, size: 64, offset: 704)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !748, file: !44, line: 464, baseType: !156, size: 64, offset: 768)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !748, file: !44, line: 465, baseType: !799, size: 64, offset: 832)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !801)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !802)
!802 = !{!803, !807, !811, !815, !819, !823, !829, !835, !839, !844, !848, !852, !856, !884, !888, !894, !895, !896, !900, !905, !909, !916}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !801, file: !44, line: 368, baseType: !804, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DISubroutineType(types: !806)
!806 = !{!194, !734, !689}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !801, file: !44, line: 369, baseType: !808, size: 64, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{!194, !370, !734}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !801, file: !44, line: 372, baseType: !812, size: 64, offset: 128)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{!194, !747, !689}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !801, file: !44, line: 375, baseType: !816, size: 64, offset: 192)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{!194, !734}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !801, file: !44, line: 381, baseType: !820, size: 64, offset: 256)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{!194, !370, !747, !135, !7}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !801, file: !44, line: 383, baseType: !824, size: 64, offset: 320)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{null, !827}
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !801, file: !44, line: 385, baseType: !830, size: 64, offset: 384)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{!194, !370, !747, !541, !7, !7, !833, !834}
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !801, file: !44, line: 388, baseType: !836, size: 64, offset: 448)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{!194, !370, !747, !541, !7, !7, !734, !124}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !801, file: !44, line: 393, baseType: !840, size: 64, offset: 512)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{!843, !747, !843}
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !126, line: 125, baseType: !145)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !801, file: !44, line: 394, baseType: !845, size: 64, offset: 576)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{null, !734, !7, !7}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !801, file: !44, line: 395, baseType: !849, size: 64, offset: 640)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{!194, !734, !125}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !801, file: !44, line: 396, baseType: !853, size: 64, offset: 704)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{null, !734}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !801, file: !44, line: 397, baseType: !857, size: 64, offset: 768)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{!325, !860, !882}
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !862)
!862 = !{!863, !864, !865, !869, !870, !871, !874, !875}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !861, file: !44, line: 321, baseType: !370, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !861, file: !44, line: 326, baseType: !541, size: 64, offset: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !861, file: !44, line: 327, baseType: !866, size: 64, offset: 128)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{null, !860, !329, !329}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !861, file: !44, line: 328, baseType: !124, size: 64, offset: 192)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !861, file: !44, line: 329, baseType: !194, size: 32, offset: 256)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !861, file: !44, line: 330, baseType: !872, size: 16, offset: 288)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !146, line: 19, baseType: !873)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !148, line: 24, baseType: !232)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !861, file: !44, line: 331, baseType: !872, size: 16, offset: 304)
!875 = !DIDerivedType(tag: DW_TAG_member, scope: !861, file: !44, line: 332, baseType: !876, size: 64, offset: 320)
!876 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !861, file: !44, line: 332, size: 64, elements: !877)
!877 = !{!878, !879}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !876, file: !44, line: 333, baseType: !7, size: 32)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !876, file: !44, line: 334, baseType: !880, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !801, file: !44, line: 402, baseType: !885, size: 64, offset: 832)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DISubroutineType(types: !887)
!887 = !{!194, !747, !734, !734, !5}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !801, file: !44, line: 404, baseType: !889, size: 64, offset: 896)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DISubroutineType(types: !891)
!891 = !{!500, !734, !892}
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !893, line: 305, baseType: !7)
!893 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!894 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !801, file: !44, line: 405, baseType: !853, size: 64, offset: 960)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !801, file: !44, line: 406, baseType: !816, size: 64, offset: 1024)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !801, file: !44, line: 407, baseType: !897, size: 64, offset: 1088)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DISubroutineType(types: !899)
!899 = !{!194, !734, !156, !156}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !801, file: !44, line: 409, baseType: !901, size: 64, offset: 1152)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DISubroutineType(types: !903)
!903 = !{null, !734, !904, !904}
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !801, file: !44, line: 410, baseType: !906, size: 64, offset: 1216)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DISubroutineType(types: !908)
!908 = !{!194, !747, !734}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !801, file: !44, line: 413, baseType: !910, size: 64, offset: 1280)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DISubroutineType(types: !912)
!912 = !{!194, !913, !370, !915}
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !801, file: !44, line: 415, baseType: !917, size: 64, offset: 1344)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DISubroutineType(types: !919)
!919 = !{null, !370}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !748, file: !44, line: 466, baseType: !156, size: 64, offset: 896)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !748, file: !44, line: 467, baseType: !922, size: 32, offset: 960)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !923, line: 8, baseType: !208)
!923 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!924 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !748, file: !44, line: 468, baseType: !253, offset: 992)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !748, file: !44, line: 469, baseType: !132, size: 128, offset: 1024)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !748, file: !44, line: 470, baseType: !124, size: 64, offset: 1152)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !743, file: !736, line: 87, baseType: !156, size: 64, offset: 192)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !743, file: !736, line: 94, baseType: !156, size: 64, offset: 256)
!929 = !DIDerivedType(tag: DW_TAG_member, scope: !740, file: !736, line: 96, baseType: !930, size: 64)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !740, file: !736, line: 96, size: 64, elements: !931)
!931 = !{!932}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !930, file: !736, line: 101, baseType: !933, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !126, line: 143, baseType: !145)
!934 = !DIDerivedType(tag: DW_TAG_member, scope: !740, file: !736, line: 103, baseType: !935, size: 320)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !740, file: !736, line: 103, size: 320, elements: !936)
!936 = !{!937, !947, !950, !951}
!937 = !DIDerivedType(tag: DW_TAG_member, scope: !935, file: !736, line: 104, baseType: !938, size: 128)
!938 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !935, file: !736, line: 104, size: 128, elements: !939)
!939 = !{!940, !941}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !938, file: !736, line: 105, baseType: !132, size: 128)
!941 = !DIDerivedType(tag: DW_TAG_member, scope: !938, file: !736, line: 106, baseType: !942, size: 128)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !938, file: !736, line: 106, size: 128, elements: !943)
!943 = !{!944, !945, !946}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !942, file: !736, line: 107, baseType: !734, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !942, file: !736, line: 109, baseType: !194, size: 32, offset: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !942, file: !736, line: 110, baseType: !194, size: 32, offset: 96)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !935, file: !736, line: 117, baseType: !948, size: 64, offset: 128)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !736, line: 117, flags: DIFlagFwdDecl)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !935, file: !736, line: 119, baseType: !124, size: 64, offset: 192)
!951 = !DIDerivedType(tag: DW_TAG_member, scope: !935, file: !736, line: 120, baseType: !952, size: 64, offset: 256)
!952 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !935, file: !736, line: 120, size: 64, elements: !953)
!953 = !{!954, !955, !956}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !952, file: !736, line: 121, baseType: !124, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !952, file: !736, line: 122, baseType: !156, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, scope: !952, file: !736, line: 123, baseType: !957, size: 32)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !952, file: !736, line: 123, size: 32, elements: !958)
!958 = !{!959, !960, !961}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !957, file: !736, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !957, file: !736, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !957, file: !736, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!962 = !DIDerivedType(tag: DW_TAG_member, scope: !740, file: !736, line: 130, baseType: !963, size: 192)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !740, file: !736, line: 130, size: 192, elements: !964)
!964 = !{!965, !966, !967, !968, !969}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !963, file: !736, line: 131, baseType: !156, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !963, file: !736, line: 134, baseType: !223, size: 8, offset: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !963, file: !736, line: 135, baseType: !223, size: 8, offset: 72)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !963, file: !736, line: 136, baseType: !760, size: 32, offset: 96)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !963, file: !736, line: 137, baseType: !7, size: 32, offset: 128)
!970 = !DIDerivedType(tag: DW_TAG_member, scope: !740, file: !736, line: 139, baseType: !971, size: 256)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !740, file: !736, line: 139, size: 256, elements: !972)
!972 = !{!973, !974, !975}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !971, file: !736, line: 140, baseType: !156, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !971, file: !736, line: 141, baseType: !760, size: 32, offset: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !971, file: !736, line: 143, baseType: !132, size: 128, offset: 128)
!976 = !DIDerivedType(tag: DW_TAG_member, scope: !740, file: !736, line: 145, baseType: !977, size: 256)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !740, file: !736, line: 145, size: 256, elements: !978)
!978 = !{!979, !980, !982, !983, !2344}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !977, file: !736, line: 146, baseType: !156, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !977, file: !736, line: 147, baseType: !981, size: 64, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !726, line: 509, baseType: !734)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !977, file: !736, line: 148, baseType: !156, size: 64, offset: 128)
!983 = !DIDerivedType(tag: DW_TAG_member, scope: !977, file: !736, line: 149, baseType: !984, size: 64, offset: 192)
!984 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !977, file: !736, line: 149, size: 64, elements: !985)
!985 = !{!986, !2343}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !984, file: !736, line: 150, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !736, line: 388, size: 7296, elements: !989)
!989 = !{!990, !2339}
!990 = !DIDerivedType(tag: DW_TAG_member, scope: !988, file: !736, line: 389, baseType: !991, size: 7296)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !988, file: !736, line: 389, size: 7296, elements: !992)
!992 = !{!993, !1111, !1112, !1113, !1117, !1118, !1119, !1120, !1121, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1162, !1168, !1171, !1217, !1218, !2323, !2324, !2327, !2328, !2329, !2332, !2333, !2334, !2337, !2338}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !991, file: !736, line: 390, baseType: !994, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !736, line: 305, size: 1472, elements: !996)
!996 = !{!997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1011, !1012, !1017, !1018, !1021, !1105, !1106, !1107, !1108, !1109}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !995, file: !736, line: 308, baseType: !156, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !995, file: !736, line: 309, baseType: !156, size: 64, offset: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !995, file: !736, line: 313, baseType: !994, size: 64, offset: 128)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !995, file: !736, line: 313, baseType: !994, size: 64, offset: 192)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !995, file: !736, line: 315, baseType: !773, size: 192, align: 64, offset: 256)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !995, file: !736, line: 323, baseType: !156, size: 64, offset: 448)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !995, file: !736, line: 327, baseType: !987, size: 64, offset: 512)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !995, file: !736, line: 333, baseType: !1005, size: 64, offset: 576)
!1005 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !726, line: 284, baseType: !1006)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !726, line: 284, size: 64, elements: !1007)
!1007 = !{!1008}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1006, file: !726, line: 284, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1010, line: 19, baseType: !156)
!1010 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !995, file: !736, line: 334, baseType: !156, size: 64, offset: 640)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !995, file: !736, line: 343, baseType: !1013, size: 256, offset: 704)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !995, file: !736, line: 340, size: 256, elements: !1014)
!1014 = !{!1015, !1016}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1013, file: !736, line: 341, baseType: !773, size: 192, align: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1013, file: !736, line: 342, baseType: !156, size: 64, offset: 192)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !995, file: !736, line: 351, baseType: !132, size: 128, offset: 960)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !995, file: !736, line: 353, baseType: !1019, size: 64, offset: 1088)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !736, line: 353, flags: DIFlagFwdDecl)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !995, file: !736, line: 356, baseType: !1022, size: 64, offset: 1152)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1024)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1025)
!1025 = !{!1026, !1030, !1031, !1035, !1039, !1079, !1083, !1087, !1091, !1092, !1093, !1097, !1101}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1024, file: !14, line: 558, baseType: !1027, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{null, !994}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1024, file: !14, line: 559, baseType: !1027, size: 64, offset: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1024, file: !14, line: 560, baseType: !1032, size: 64, offset: 128)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!194, !994, !156}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1024, file: !14, line: 561, baseType: !1036, size: 64, offset: 192)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!194, !994}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1024, file: !14, line: 562, baseType: !1040, size: 64, offset: 256)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!1043, !1044}
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !736, line: 682, baseType: !7)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1046)
!1046 = !{!1047, !1048, !1049, !1050, !1051, !1052, !1059, !1066, !1072, !1073, !1074, !1076, !1078}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1045, file: !14, line: 509, baseType: !994, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1045, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1045, file: !14, line: 511, baseType: !125, size: 32, offset: 96)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1045, file: !14, line: 512, baseType: !156, size: 64, offset: 128)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1045, file: !14, line: 513, baseType: !156, size: 64, offset: 192)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1045, file: !14, line: 514, baseType: !1053, size: 64, offset: 256)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !726, line: 385, baseType: !1055)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !726, line: 385, size: 64, elements: !1056)
!1056 = !{!1057}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1055, file: !726, line: 385, baseType: !1058, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1010, line: 15, baseType: !156)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1045, file: !14, line: 516, baseType: !1060, size: 64, offset: 320)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !726, line: 359, baseType: !1062)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !726, line: 359, size: 64, elements: !1063)
!1063 = !{!1064}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1062, file: !726, line: 359, baseType: !1065, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1010, line: 16, baseType: !156)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1045, file: !14, line: 519, baseType: !1067, size: 64, offset: 384)
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1010, line: 21, baseType: !1068)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1010, line: 21, size: 64, elements: !1069)
!1069 = !{!1070}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1068, file: !1010, line: 21, baseType: !1071, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1010, line: 14, baseType: !156)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1045, file: !14, line: 521, baseType: !734, size: 64, offset: 448)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1045, file: !14, line: 522, baseType: !734, size: 64, offset: 512)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1045, file: !14, line: 528, baseType: !1075, size: 64, offset: 576)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1045, file: !14, line: 532, baseType: !1077, size: 64, offset: 640)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1045, file: !14, line: 536, baseType: !981, size: 64, offset: 704)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1024, file: !14, line: 563, baseType: !1080, size: 64, offset: 320)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!1043, !1044, !13}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1024, file: !14, line: 565, baseType: !1084, size: 64, offset: 384)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{null, !1044, !156, !156}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1024, file: !14, line: 567, baseType: !1088, size: 64, offset: 448)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!156, !994}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1024, file: !14, line: 571, baseType: !1040, size: 64, offset: 512)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1024, file: !14, line: 574, baseType: !1040, size: 64, offset: 576)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1024, file: !14, line: 579, baseType: !1094, size: 64, offset: 640)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!194, !994, !156, !124, !194, !194}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1024, file: !14, line: 585, baseType: !1098, size: 64, offset: 704)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!152, !994}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1024, file: !14, line: 615, baseType: !1102, size: 64, offset: 768)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!734, !994, !156}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !995, file: !736, line: 359, baseType: !156, size: 64, offset: 1216)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !995, file: !736, line: 361, baseType: !370, size: 64, offset: 1280)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !995, file: !736, line: 362, baseType: !124, size: 64, offset: 1344)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !995, file: !736, line: 365, baseType: !784, size: 64, offset: 1408)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !995, file: !736, line: 373, baseType: !1110, offset: 1472)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !736, line: 296, elements: !267)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !991, file: !736, line: 391, baseType: !769, size: 64, offset: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !991, file: !736, line: 392, baseType: !145, size: 64, offset: 128)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !991, file: !736, line: 394, baseType: !1114, size: 64, offset: 192)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!156, !370, !156, !156, !156, !156}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !991, file: !736, line: 398, baseType: !156, size: 64, offset: 256)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !991, file: !736, line: 399, baseType: !156, size: 64, offset: 320)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !991, file: !736, line: 405, baseType: !156, size: 64, offset: 384)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !991, file: !736, line: 406, baseType: !156, size: 64, offset: 448)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !991, file: !736, line: 407, baseType: !1122, size: 64, offset: 512)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !726, line: 286, baseType: !1124)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !726, line: 286, size: 64, elements: !1125)
!1125 = !{!1126}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1124, file: !726, line: 286, baseType: !1127, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1010, line: 18, baseType: !156)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !991, file: !736, line: 416, baseType: !760, size: 32, offset: 576)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !991, file: !736, line: 428, baseType: !760, size: 32, offset: 608)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !991, file: !736, line: 437, baseType: !760, size: 32, offset: 640)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !991, file: !736, line: 447, baseType: !760, size: 32, offset: 672)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !991, file: !736, line: 450, baseType: !784, size: 64, offset: 704)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !991, file: !736, line: 452, baseType: !194, size: 32, offset: 768)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !991, file: !736, line: 454, baseType: !253, offset: 800)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !991, file: !736, line: 457, baseType: !780, size: 256, offset: 832)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !991, file: !736, line: 459, baseType: !132, size: 128, offset: 1088)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !991, file: !736, line: 466, baseType: !156, size: 64, offset: 1216)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !991, file: !736, line: 467, baseType: !156, size: 64, offset: 1280)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !991, file: !736, line: 469, baseType: !156, size: 64, offset: 1344)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !991, file: !736, line: 470, baseType: !156, size: 64, offset: 1408)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !991, file: !736, line: 471, baseType: !786, size: 64, offset: 1472)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !991, file: !736, line: 472, baseType: !156, size: 64, offset: 1536)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !991, file: !736, line: 473, baseType: !156, size: 64, offset: 1600)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !991, file: !736, line: 474, baseType: !156, size: 64, offset: 1664)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !991, file: !736, line: 475, baseType: !156, size: 64, offset: 1728)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !991, file: !736, line: 477, baseType: !253, offset: 1792)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !991, file: !736, line: 478, baseType: !156, size: 64, offset: 1792)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !991, file: !736, line: 478, baseType: !156, size: 64, offset: 1856)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !991, file: !736, line: 478, baseType: !156, size: 64, offset: 1920)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !991, file: !736, line: 478, baseType: !156, size: 64, offset: 1984)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !991, file: !736, line: 479, baseType: !156, size: 64, offset: 2048)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !991, file: !736, line: 479, baseType: !156, size: 64, offset: 2112)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !991, file: !736, line: 479, baseType: !156, size: 64, offset: 2176)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !991, file: !736, line: 480, baseType: !156, size: 64, offset: 2240)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !991, file: !736, line: 480, baseType: !156, size: 64, offset: 2304)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !991, file: !736, line: 480, baseType: !156, size: 64, offset: 2368)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !991, file: !736, line: 480, baseType: !156, size: 64, offset: 2432)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !991, file: !736, line: 482, baseType: !1159, size: 2816, offset: 2496)
!1159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 2816, elements: !1160)
!1160 = !{!1161}
!1161 = !DISubrange(count: 44)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !991, file: !736, line: 488, baseType: !1163, size: 256, offset: 5312)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1164, line: 60, size: 256, elements: !1165)
!1164 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1165 = !{!1166}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1163, file: !1164, line: 61, baseType: !1167, size: 256)
!1167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !784, size: 256, elements: !182)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !991, file: !736, line: 490, baseType: !1169, size: 64, offset: 5568)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !736, line: 490, flags: DIFlagFwdDecl)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !991, file: !736, line: 493, baseType: !1172, size: 896, offset: 5632)
!1172 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1173, line: 53, baseType: !1174)
!1173 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1173, line: 13, size: 896, elements: !1175)
!1175 = !{!1176, !1177, !1178, !1179, !1182, !1183, !1190, !1191, !1211, !1212, !1213}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1174, file: !1173, line: 18, baseType: !145, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1174, file: !1173, line: 28, baseType: !786, size: 64, offset: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1174, file: !1173, line: 31, baseType: !780, size: 256, offset: 128)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1174, file: !1173, line: 32, baseType: !1180, size: 64, offset: 384)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1173, line: 32, flags: DIFlagFwdDecl)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1174, file: !1173, line: 37, baseType: !232, size: 16, offset: 448)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1174, file: !1173, line: 40, baseType: !1184, size: 192, offset: 512)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1185, line: 53, size: 192, elements: !1186)
!1185 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1186 = !{!1187, !1188, !1189}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1184, file: !1185, line: 54, baseType: !784, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1184, file: !1185, line: 55, baseType: !253, offset: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1184, file: !1185, line: 59, baseType: !132, size: 128, offset: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1174, file: !1173, line: 41, baseType: !124, size: 64, offset: 704)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1174, file: !1173, line: 42, baseType: !1192, size: 64, offset: 768)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1194)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1195, line: 13, size: 896, elements: !1196)
!1195 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1196 = !{!1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1194, file: !1195, line: 14, baseType: !124, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1194, file: !1195, line: 15, baseType: !156, size: 64, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1194, file: !1195, line: 17, baseType: !156, size: 64, offset: 128)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1194, file: !1195, line: 17, baseType: !156, size: 64, offset: 192)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1194, file: !1195, line: 19, baseType: !329, size: 64, offset: 256)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1194, file: !1195, line: 21, baseType: !329, size: 64, offset: 320)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1194, file: !1195, line: 22, baseType: !329, size: 64, offset: 384)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1194, file: !1195, line: 23, baseType: !329, size: 64, offset: 448)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1194, file: !1195, line: 24, baseType: !329, size: 64, offset: 512)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1194, file: !1195, line: 25, baseType: !329, size: 64, offset: 576)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1194, file: !1195, line: 26, baseType: !329, size: 64, offset: 640)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1194, file: !1195, line: 27, baseType: !329, size: 64, offset: 704)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1194, file: !1195, line: 28, baseType: !329, size: 64, offset: 768)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1194, file: !1195, line: 29, baseType: !329, size: 64, offset: 832)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1174, file: !1173, line: 44, baseType: !760, size: 32, offset: 832)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1174, file: !1173, line: 50, baseType: !872, size: 16, offset: 864)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1174, file: !1173, line: 51, baseType: !1214, size: 16, offset: 880)
!1214 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !146, line: 18, baseType: !1215)
!1215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !148, line: 23, baseType: !1216)
!1216 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !991, file: !736, line: 495, baseType: !156, size: 64, offset: 6528)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !991, file: !736, line: 497, baseType: !1219, size: 64, offset: 6592)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !736, line: 381, size: 384, elements: !1221)
!1221 = !{!1222, !1223, !2322}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1220, file: !736, line: 382, baseType: !760, size: 32)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1220, file: !736, line: 383, baseType: !1224, size: 128, offset: 64)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !736, line: 376, size: 128, elements: !1225)
!1225 = !{!1226, !2320}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1224, file: !736, line: 377, baseType: !1227, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1229, line: 640, size: 48640, elements: !1230)
!1229 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1230 = !{!1231, !1237, !1239, !1240, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1257, !1275, !1286, !1371, !1372, !1373, !1384, !1385, !1387, !1388, !1389, !1390, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1468, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1506, !1508, !1509, !1510, !1522, !1523, !1524, !1525, !1526, !1527, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1551, !1556, !1740, !1741, !1742, !1743, !1747, !1750, !1753, !1756, !1759, !1762, !1863, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1909, !1910, !1911, !1912, !1913, !1918, !1919, !1920, !1923, !1924, !1927, !1930, !1933, !1936, !1979, !1982, !1983, !2062, !2063, !2066, !2067, !2070, !2071, !2072, !2076, !2077, !2078, !2091, !2092, !2093, !2103, !2108, !2111, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1228, file: !1229, line: 646, baseType: !1232, size: 128)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1233, line: 56, size: 128, elements: !1234)
!1233 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1234 = !{!1235, !1236}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1232, file: !1233, line: 57, baseType: !156, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1232, file: !1233, line: 58, baseType: !208, size: 32, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1228, file: !1229, line: 649, baseType: !1238, size: 64, offset: 128)
!1238 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !329)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1228, file: !1229, line: 657, baseType: !124, size: 64, offset: 192)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1228, file: !1229, line: 658, baseType: !1241, size: 32, offset: 256)
!1241 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1242, line: 113, baseType: !1243)
!1242 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1242, line: 111, size: 32, elements: !1244)
!1244 = !{!1245}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1243, file: !1242, line: 112, baseType: !760, size: 32)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1228, file: !1229, line: 660, baseType: !7, size: 32, offset: 288)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1228, file: !1229, line: 661, baseType: !7, size: 32, offset: 320)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1228, file: !1229, line: 684, baseType: !194, size: 32, offset: 352)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1228, file: !1229, line: 686, baseType: !194, size: 32, offset: 384)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1228, file: !1229, line: 687, baseType: !194, size: 32, offset: 416)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1228, file: !1229, line: 688, baseType: !194, size: 32, offset: 448)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1228, file: !1229, line: 689, baseType: !7, size: 32, offset: 480)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1228, file: !1229, line: 691, baseType: !1254, size: 64, offset: 512)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1256)
!1256 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1229, line: 691, flags: DIFlagFwdDecl)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1228, file: !1229, line: 692, baseType: !1258, size: 832, offset: 576)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1229, line: 451, size: 832, elements: !1259)
!1259 = !{!1260, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1258, file: !1229, line: 453, baseType: !1261, size: 128)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1229, line: 325, size: 128, elements: !1262)
!1262 = !{!1263, !1264}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1261, file: !1229, line: 326, baseType: !156, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1261, file: !1229, line: 327, baseType: !208, size: 32, offset: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1258, file: !1229, line: 454, baseType: !773, size: 192, align: 64, offset: 128)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1258, file: !1229, line: 455, baseType: !132, size: 128, offset: 320)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1258, file: !1229, line: 456, baseType: !7, size: 32, offset: 448)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1258, file: !1229, line: 458, baseType: !145, size: 64, offset: 512)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1258, file: !1229, line: 459, baseType: !145, size: 64, offset: 576)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1258, file: !1229, line: 460, baseType: !145, size: 64, offset: 640)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1258, file: !1229, line: 461, baseType: !145, size: 64, offset: 704)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1258, file: !1229, line: 463, baseType: !145, size: 64, offset: 768)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1258, file: !1229, line: 465, baseType: !1274, offset: 832)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1229, line: 415, elements: !267)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1228, file: !1229, line: 693, baseType: !1276, size: 384, offset: 1408)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1229, line: 489, size: 384, elements: !1277)
!1277 = !{!1278, !1279, !1280, !1281, !1282, !1283, !1284}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1276, file: !1229, line: 490, baseType: !132, size: 128)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1276, file: !1229, line: 491, baseType: !156, size: 64, offset: 128)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1276, file: !1229, line: 492, baseType: !156, size: 64, offset: 192)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1276, file: !1229, line: 493, baseType: !7, size: 32, offset: 256)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1276, file: !1229, line: 494, baseType: !232, size: 16, offset: 288)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1276, file: !1229, line: 495, baseType: !232, size: 16, offset: 304)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1276, file: !1229, line: 497, baseType: !1285, size: 64, offset: 320)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1228, file: !1229, line: 697, baseType: !1287, size: 1792, offset: 1792)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1229, line: 507, size: 1792, elements: !1288)
!1288 = !{!1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1368, !1369}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1287, file: !1229, line: 508, baseType: !773, size: 192, align: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1287, file: !1229, line: 515, baseType: !145, size: 64, offset: 192)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1287, file: !1229, line: 516, baseType: !145, size: 64, offset: 256)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1287, file: !1229, line: 517, baseType: !145, size: 64, offset: 320)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1287, file: !1229, line: 518, baseType: !145, size: 64, offset: 384)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1287, file: !1229, line: 519, baseType: !145, size: 64, offset: 448)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1287, file: !1229, line: 526, baseType: !790, size: 64, offset: 512)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1287, file: !1229, line: 527, baseType: !145, size: 64, offset: 576)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1287, file: !1229, line: 528, baseType: !7, size: 32, offset: 640)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1287, file: !1229, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1287, file: !1229, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1287, file: !1229, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1287, file: !1229, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1287, file: !1229, line: 563, baseType: !1303, size: 512, offset: 704)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1304)
!1304 = !{!1305, !1313, !1314, !1319, !1362, !1365, !1366, !1367}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1303, file: !20, line: 119, baseType: !1306, size: 256)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1307, line: 9, size: 256, elements: !1308)
!1307 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1308 = !{!1309, !1310}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1306, file: !1307, line: 10, baseType: !773, size: 192, align: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1306, file: !1307, line: 11, baseType: !1311, size: 64, offset: 192)
!1311 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1312, line: 29, baseType: !790)
!1312 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1303, file: !20, line: 120, baseType: !1311, size: 64, offset: 256)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1303, file: !20, line: 121, baseType: !1315, size: 64, offset: 320)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!19, !1318}
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1303, file: !20, line: 122, baseType: !1320, size: 64, offset: 384)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1322)
!1322 = !{!1323, !1343, !1344, !1347, !1352, !1353, !1357, !1361}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1321, file: !20, line: 160, baseType: !1324, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1326)
!1326 = !{!1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1325, file: !20, line: 215, baseType: !793)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1325, file: !20, line: 216, baseType: !7, size: 32)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1325, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1325, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1325, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1325, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1325, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1325, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1325, file: !20, line: 233, baseType: !1311, size: 64, offset: 128)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1325, file: !20, line: 234, baseType: !1318, size: 64, offset: 192)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1325, file: !20, line: 235, baseType: !1311, size: 64, offset: 256)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1325, file: !20, line: 236, baseType: !1318, size: 64, offset: 320)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1325, file: !20, line: 237, baseType: !1340, size: 4096, offset: 512)
!1340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1321, size: 4096, elements: !1341)
!1341 = !{!1342}
!1342 = !DISubrange(count: 8)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1321, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1321, file: !20, line: 162, baseType: !1345, size: 32, offset: 96)
!1345 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !126, line: 27, baseType: !1346)
!1346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !327, line: 96, baseType: !194)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1321, file: !20, line: 163, baseType: !1348, size: 32, offset: 128)
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !406, line: 276, baseType: !1349)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !406, line: 276, size: 32, elements: !1350)
!1350 = !{!1351}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1349, file: !406, line: 276, baseType: !410, size: 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1321, file: !20, line: 164, baseType: !1318, size: 64, offset: 192)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1321, file: !20, line: 165, baseType: !1354, size: 128, offset: 256)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1307, line: 14, size: 128, elements: !1355)
!1355 = !{!1356}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1354, file: !1307, line: 15, baseType: !765, size: 128)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1321, file: !20, line: 166, baseType: !1358, size: 64, offset: 384)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!1311}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1321, file: !20, line: 167, baseType: !1311, size: 64, offset: 448)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1303, file: !20, line: 123, baseType: !1363, size: 8, offset: 448)
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !146, line: 17, baseType: !1364)
!1364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !148, line: 21, baseType: !223)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1303, file: !20, line: 124, baseType: !1363, size: 8, offset: 456)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1303, file: !20, line: 125, baseType: !1363, size: 8, offset: 464)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1303, file: !20, line: 126, baseType: !1363, size: 8, offset: 472)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1287, file: !1229, line: 572, baseType: !1303, size: 512, offset: 1216)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1287, file: !1229, line: 580, baseType: !1370, size: 64, offset: 1728)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1228, file: !1229, line: 721, baseType: !7, size: 32, offset: 3584)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1228, file: !1229, line: 722, baseType: !194, size: 32, offset: 3616)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1228, file: !1229, line: 723, baseType: !1374, size: 64, offset: 3648)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1376)
!1376 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1377, line: 17, baseType: !1378)
!1377 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1377, line: 17, size: 64, elements: !1379)
!1379 = !{!1380}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1378, file: !1377, line: 17, baseType: !1381, size: 64)
!1381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 64, elements: !1382)
!1382 = !{!1383}
!1383 = !DISubrange(count: 1)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1228, file: !1229, line: 724, baseType: !1376, size: 64, offset: 3712)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1228, file: !1229, line: 749, baseType: !1386, offset: 3776)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1229, line: 290, elements: !267)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1228, file: !1229, line: 751, baseType: !132, size: 128, offset: 3776)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1228, file: !1229, line: 757, baseType: !987, size: 64, offset: 3904)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1228, file: !1229, line: 758, baseType: !987, size: 64, offset: 3968)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1228, file: !1229, line: 761, baseType: !1391, size: 320, offset: 4032)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1164, line: 34, size: 320, elements: !1392)
!1392 = !{!1393, !1394}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1391, file: !1164, line: 35, baseType: !145, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1391, file: !1164, line: 36, baseType: !1395, size: 256, offset: 64)
!1395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !994, size: 256, elements: !182)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1228, file: !1229, line: 766, baseType: !194, size: 32, offset: 4352)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1228, file: !1229, line: 767, baseType: !194, size: 32, offset: 4384)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1228, file: !1229, line: 768, baseType: !194, size: 32, offset: 4416)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1228, file: !1229, line: 770, baseType: !194, size: 32, offset: 4448)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1228, file: !1229, line: 772, baseType: !156, size: 64, offset: 4480)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1228, file: !1229, line: 775, baseType: !7, size: 32, offset: 4544)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1228, file: !1229, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1228, file: !1229, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1228, file: !1229, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1228, file: !1229, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1228, file: !1229, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1228, file: !1229, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1228, file: !1229, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1228, file: !1229, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1228, file: !1229, line: 831, baseType: !156, size: 64, offset: 4672)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1228, file: !1229, line: 833, baseType: !1412, size: 384, offset: 4736)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1413)
!1413 = !{!1414, !1419}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1412, file: !25, line: 26, baseType: !1415, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!329, !1418}
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, scope: !1412, file: !25, line: 27, baseType: !1420, size: 320, offset: 64)
!1420 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1412, file: !25, line: 27, size: 320, elements: !1421)
!1421 = !{!1422, !1431, !1458}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1420, file: !25, line: 36, baseType: !1423, size: 320)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1420, file: !25, line: 29, size: 320, elements: !1424)
!1424 = !{!1425, !1426, !1427, !1428, !1429, !1430}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1423, file: !25, line: 30, baseType: !207, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1423, file: !25, line: 31, baseType: !208, size: 32, offset: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1423, file: !25, line: 32, baseType: !208, size: 32, offset: 96)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1423, file: !25, line: 33, baseType: !208, size: 32, offset: 128)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1423, file: !25, line: 34, baseType: !145, size: 64, offset: 192)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1423, file: !25, line: 35, baseType: !207, size: 64, offset: 256)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1420, file: !25, line: 46, baseType: !1432, size: 192)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1420, file: !25, line: 38, size: 192, elements: !1433)
!1433 = !{!1434, !1435, !1436, !1457}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1432, file: !25, line: 39, baseType: !1345, size: 32)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1432, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1436 = !DIDerivedType(tag: DW_TAG_member, scope: !1432, file: !25, line: 41, baseType: !1437, size: 64, offset: 64)
!1437 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1432, file: !25, line: 41, size: 64, elements: !1438)
!1438 = !{!1439, !1447}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1437, file: !25, line: 42, baseType: !1440, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1442, line: 7, size: 128, elements: !1443)
!1442 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1443 = !{!1444, !1446}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1441, file: !1442, line: 8, baseType: !1445, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !327, line: 93, baseType: !543)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1441, file: !1442, line: 9, baseType: !543, size: 64, offset: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1437, file: !25, line: 43, baseType: !1448, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1450, line: 7, size: 64, elements: !1451)
!1450 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1451 = !{!1452, !1456}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1449, file: !1450, line: 8, baseType: !1453, size: 32)
!1453 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1450, line: 5, baseType: !1454)
!1454 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !146, line: 20, baseType: !1455)
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !148, line: 26, baseType: !194)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1449, file: !1450, line: 9, baseType: !1454, size: 32, offset: 32)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1432, file: !25, line: 45, baseType: !145, size: 64, offset: 128)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1420, file: !25, line: 54, baseType: !1459, size: 256)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1420, file: !25, line: 48, size: 256, elements: !1460)
!1460 = !{!1461, !1464, !1465, !1466, !1467}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1459, file: !25, line: 49, baseType: !1462, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1459, file: !25, line: 50, baseType: !194, size: 32, offset: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1459, file: !25, line: 51, baseType: !194, size: 32, offset: 96)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1459, file: !25, line: 52, baseType: !156, size: 64, offset: 128)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1459, file: !25, line: 53, baseType: !156, size: 64, offset: 192)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1228, file: !1229, line: 835, baseType: !1469, size: 32, offset: 5120)
!1469 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !126, line: 22, baseType: !1470)
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !327, line: 28, baseType: !194)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1228, file: !1229, line: 836, baseType: !1469, size: 32, offset: 5152)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1228, file: !1229, line: 840, baseType: !156, size: 64, offset: 5184)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1228, file: !1229, line: 849, baseType: !1227, size: 64, offset: 5248)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1228, file: !1229, line: 852, baseType: !1227, size: 64, offset: 5312)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1228, file: !1229, line: 857, baseType: !132, size: 128, offset: 5376)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1228, file: !1229, line: 858, baseType: !132, size: 128, offset: 5504)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1228, file: !1229, line: 859, baseType: !1227, size: 64, offset: 5632)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1228, file: !1229, line: 867, baseType: !132, size: 128, offset: 5696)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1228, file: !1229, line: 868, baseType: !132, size: 128, offset: 5824)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1228, file: !1229, line: 871, baseType: !1481, size: 64, offset: 5952)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1483)
!1483 = !{!1484, !1485, !1486, !1487, !1489, !1490, !1497, !1498}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1482, file: !53, line: 61, baseType: !1241, size: 32)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1482, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1482, file: !53, line: 63, baseType: !253, offset: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1482, file: !53, line: 65, baseType: !1488, size: 256, offset: 64)
!1488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !648, size: 256, elements: !182)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1482, file: !53, line: 66, baseType: !648, size: 64, offset: 320)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1482, file: !53, line: 68, baseType: !1491, size: 128, offset: 384)
!1491 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1492, line: 40, baseType: !1493)
!1492 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1492, line: 36, size: 128, elements: !1494)
!1494 = !{!1495, !1496}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1493, file: !1492, line: 37, baseType: !253)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1493, file: !1492, line: 38, baseType: !132, size: 128)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1482, file: !53, line: 69, baseType: !383, size: 128, align: 64, offset: 512)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1482, file: !53, line: 70, baseType: !1499, size: 128, offset: 640)
!1499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1500, size: 128, elements: !1382)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1501)
!1501 = !{!1502, !1503}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1500, file: !53, line: 55, baseType: !194, size: 32)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1500, file: !53, line: 56, baseType: !1504, size: 64, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1228, file: !1229, line: 872, baseType: !1507, size: 512, offset: 6016)
!1507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !652, size: 512, elements: !182)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1228, file: !1229, line: 873, baseType: !132, size: 128, offset: 6528)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1228, file: !1229, line: 874, baseType: !132, size: 128, offset: 6656)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1228, file: !1229, line: 876, baseType: !1511, size: 64, offset: 6784)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1513, line: 26, size: 192, elements: !1514)
!1513 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1514 = !{!1515, !1516}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1512, file: !1513, line: 27, baseType: !7, size: 32)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1512, file: !1513, line: 28, baseType: !1517, size: 128, offset: 64)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1518, line: 43, size: 128, elements: !1519)
!1518 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1519 = !{!1520, !1521}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1517, file: !1518, line: 44, baseType: !793)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1517, file: !1518, line: 45, baseType: !132, size: 128)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1228, file: !1229, line: 879, baseType: !718, size: 64, offset: 6848)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1228, file: !1229, line: 882, baseType: !718, size: 64, offset: 6912)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1228, file: !1229, line: 884, baseType: !145, size: 64, offset: 6976)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1228, file: !1229, line: 885, baseType: !145, size: 64, offset: 7040)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1228, file: !1229, line: 890, baseType: !145, size: 64, offset: 7104)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1228, file: !1229, line: 891, baseType: !1528, size: 128, offset: 7168)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1229, line: 242, size: 128, elements: !1529)
!1529 = !{!1530, !1531, !1532}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1528, file: !1229, line: 244, baseType: !145, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1528, file: !1229, line: 245, baseType: !145, size: 64, offset: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1528, file: !1229, line: 246, baseType: !793, offset: 128)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1228, file: !1229, line: 900, baseType: !156, size: 64, offset: 7296)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1228, file: !1229, line: 901, baseType: !156, size: 64, offset: 7360)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1228, file: !1229, line: 904, baseType: !145, size: 64, offset: 7424)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1228, file: !1229, line: 907, baseType: !145, size: 64, offset: 7488)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1228, file: !1229, line: 910, baseType: !156, size: 64, offset: 7552)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1228, file: !1229, line: 911, baseType: !156, size: 64, offset: 7616)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1228, file: !1229, line: 914, baseType: !1540, size: 640, offset: 7680)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1541, line: 123, size: 640, elements: !1542)
!1541 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1542 = !{!1543, !1549, !1550}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1540, file: !1541, line: 124, baseType: !1544, size: 576)
!1544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1545, size: 576, elements: !295)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1541, line: 108, size: 192, elements: !1546)
!1546 = !{!1547, !1548}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1545, file: !1541, line: 109, baseType: !145, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1545, file: !1541, line: 110, baseType: !1354, size: 128, offset: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1540, file: !1541, line: 125, baseType: !7, size: 32, offset: 576)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1540, file: !1541, line: 126, baseType: !7, size: 32, offset: 608)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1228, file: !1229, line: 917, baseType: !1552, size: 192, offset: 8320)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1541, line: 134, size: 192, elements: !1553)
!1553 = !{!1554, !1555}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1552, file: !1541, line: 135, baseType: !383, size: 128, align: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1552, file: !1541, line: 136, baseType: !7, size: 32, offset: 128)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1228, file: !1229, line: 923, baseType: !1557, size: 64, offset: 8512)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1559)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1560, line: 111, size: 1280, elements: !1561)
!1560 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1561 = !{!1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1581, !1582, !1583, !1584, !1585, !1586, !1693, !1694, !1695, !1696, !1722, !1725, !1735}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1559, file: !1560, line: 112, baseType: !760, size: 32)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1559, file: !1560, line: 120, baseType: !445, size: 32, offset: 32)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1559, file: !1560, line: 121, baseType: !453, size: 32, offset: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1559, file: !1560, line: 122, baseType: !445, size: 32, offset: 96)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1559, file: !1560, line: 123, baseType: !453, size: 32, offset: 128)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1559, file: !1560, line: 124, baseType: !445, size: 32, offset: 160)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1559, file: !1560, line: 125, baseType: !453, size: 32, offset: 192)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1559, file: !1560, line: 126, baseType: !445, size: 32, offset: 224)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1559, file: !1560, line: 127, baseType: !453, size: 32, offset: 256)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1559, file: !1560, line: 128, baseType: !7, size: 32, offset: 288)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1559, file: !1560, line: 129, baseType: !1573, size: 64, offset: 320)
!1573 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1574, line: 26, baseType: !1575)
!1574 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1574, line: 24, size: 64, elements: !1576)
!1576 = !{!1577}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1575, file: !1574, line: 25, baseType: !1578, size: 64)
!1578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 64, elements: !1579)
!1579 = !{!1580}
!1580 = !DISubrange(count: 2)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1559, file: !1560, line: 130, baseType: !1573, size: 64, offset: 384)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1559, file: !1560, line: 131, baseType: !1573, size: 64, offset: 448)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1559, file: !1560, line: 132, baseType: !1573, size: 64, offset: 512)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1559, file: !1560, line: 133, baseType: !1573, size: 64, offset: 576)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1559, file: !1560, line: 135, baseType: !223, size: 8, offset: 640)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1559, file: !1560, line: 137, baseType: !1587, size: 64, offset: 704)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1589, line: 189, size: 1664, elements: !1590)
!1589 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1590 = !{!1591, !1592, !1595, !1600, !1601, !1604, !1605, !1610, !1611, !1612, !1613, !1615, !1616, !1617, !1618, !1619, !1657, !1678}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1588, file: !1589, line: 190, baseType: !1241, size: 32)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1588, file: !1589, line: 191, baseType: !1593, size: 32, offset: 32)
!1593 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1589, line: 28, baseType: !1594)
!1594 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !126, line: 98, baseType: !1454)
!1595 = !DIDerivedType(tag: DW_TAG_member, scope: !1588, file: !1589, line: 192, baseType: !1596, size: 192, offset: 64)
!1596 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1588, file: !1589, line: 192, size: 192, elements: !1597)
!1597 = !{!1598, !1599}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1596, file: !1589, line: 193, baseType: !132, size: 128)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1596, file: !1589, line: 194, baseType: !773, size: 192, align: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1588, file: !1589, line: 199, baseType: !780, size: 256, offset: 256)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1588, file: !1589, line: 200, baseType: !1602, size: 64, offset: 512)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1589, line: 200, flags: DIFlagFwdDecl)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1588, file: !1589, line: 201, baseType: !124, size: 64, offset: 576)
!1605 = !DIDerivedType(tag: DW_TAG_member, scope: !1588, file: !1589, line: 202, baseType: !1606, size: 64, offset: 640)
!1606 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1588, file: !1589, line: 202, size: 64, elements: !1607)
!1607 = !{!1608, !1609}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1606, file: !1589, line: 203, baseType: !549, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1606, file: !1589, line: 204, baseType: !549, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1588, file: !1589, line: 206, baseType: !549, size: 64, offset: 704)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1588, file: !1589, line: 207, baseType: !445, size: 32, offset: 768)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1588, file: !1589, line: 208, baseType: !453, size: 32, offset: 800)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1588, file: !1589, line: 209, baseType: !1614, size: 32, offset: 832)
!1614 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1589, line: 31, baseType: !569)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1588, file: !1589, line: 210, baseType: !232, size: 16, offset: 864)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1588, file: !1589, line: 211, baseType: !232, size: 16, offset: 880)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1588, file: !1589, line: 215, baseType: !1216, size: 16, offset: 896)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1588, file: !1589, line: 222, baseType: !156, size: 64, offset: 960)
!1619 = !DIDerivedType(tag: DW_TAG_member, scope: !1588, file: !1589, line: 239, baseType: !1620, size: 320, offset: 1024)
!1620 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1588, file: !1589, line: 239, size: 320, elements: !1621)
!1621 = !{!1622, !1649}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1620, file: !1589, line: 240, baseType: !1623, size: 320)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1589, line: 108, size: 320, elements: !1624)
!1624 = !{!1625, !1626, !1638, !1641, !1648}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1623, file: !1589, line: 110, baseType: !156, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, scope: !1623, file: !1589, line: 111, baseType: !1627, size: 64, offset: 64)
!1627 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1623, file: !1589, line: 111, size: 64, elements: !1628)
!1628 = !{!1629, !1637}
!1629 = !DIDerivedType(tag: DW_TAG_member, scope: !1627, file: !1589, line: 112, baseType: !1630, size: 64)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1627, file: !1589, line: 112, size: 64, elements: !1631)
!1631 = !{!1632, !1633}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1630, file: !1589, line: 114, baseType: !872, size: 16)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1630, file: !1589, line: 115, baseType: !1634, size: 48, offset: 16)
!1634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 48, elements: !1635)
!1635 = !{!1636}
!1636 = !DISubrange(count: 6)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1627, file: !1589, line: 121, baseType: !156, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1623, file: !1589, line: 123, baseType: !1639, size: 64, offset: 128)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1589, line: 96, flags: DIFlagFwdDecl)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1623, file: !1589, line: 124, baseType: !1642, size: 64, offset: 192)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1589, line: 102, size: 192, elements: !1644)
!1644 = !{!1645, !1646, !1647}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1643, file: !1589, line: 103, baseType: !383, size: 128, align: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1643, file: !1589, line: 104, baseType: !1241, size: 32, offset: 128)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1643, file: !1589, line: 105, baseType: !500, size: 8, offset: 160)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1623, file: !1589, line: 125, baseType: !152, size: 64, offset: 256)
!1649 = !DIDerivedType(tag: DW_TAG_member, scope: !1620, file: !1589, line: 241, baseType: !1650, size: 320)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1620, file: !1589, line: 241, size: 320, elements: !1651)
!1651 = !{!1652, !1653, !1654, !1655, !1656}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1650, file: !1589, line: 242, baseType: !156, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1650, file: !1589, line: 243, baseType: !156, size: 64, offset: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1650, file: !1589, line: 244, baseType: !1639, size: 64, offset: 128)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1650, file: !1589, line: 245, baseType: !1642, size: 64, offset: 192)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1650, file: !1589, line: 246, baseType: !294, size: 64, offset: 256)
!1657 = !DIDerivedType(tag: DW_TAG_member, scope: !1588, file: !1589, line: 254, baseType: !1658, size: 256, offset: 1344)
!1658 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1588, file: !1589, line: 254, size: 256, elements: !1659)
!1659 = !{!1660, !1666}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1658, file: !1589, line: 255, baseType: !1661, size: 256)
!1661 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1589, line: 128, size: 256, elements: !1662)
!1662 = !{!1663, !1664}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1661, file: !1589, line: 129, baseType: !124, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1661, file: !1589, line: 130, baseType: !1665, size: 256)
!1665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 256, elements: !182)
!1666 = !DIDerivedType(tag: DW_TAG_member, scope: !1658, file: !1589, line: 256, baseType: !1667, size: 256)
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1658, file: !1589, line: 256, size: 256, elements: !1668)
!1668 = !{!1669, !1670}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1667, file: !1589, line: 258, baseType: !132, size: 128)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1667, file: !1589, line: 259, baseType: !1671, size: 128, offset: 128)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1672, line: 22, size: 128, elements: !1673)
!1672 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1673 = !{!1674, !1677}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1671, file: !1672, line: 23, baseType: !1675, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1672, line: 23, flags: DIFlagFwdDecl)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1671, file: !1672, line: 24, baseType: !156, size: 64, offset: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1588, file: !1589, line: 274, baseType: !1679, size: 64, offset: 1600)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1589, line: 170, size: 192, elements: !1681)
!1681 = !{!1682, !1691, !1692}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1680, file: !1589, line: 171, baseType: !1683, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1589, line: 165, baseType: !1684)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!194, !1587, !1687, !1689, !1587}
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1640)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1661)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1680, file: !1589, line: 172, baseType: !1587, size: 64, offset: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1680, file: !1589, line: 173, baseType: !1639, size: 64, offset: 128)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1559, file: !1560, line: 138, baseType: !1587, size: 64, offset: 768)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1559, file: !1560, line: 139, baseType: !1587, size: 64, offset: 832)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1559, file: !1560, line: 140, baseType: !1587, size: 64, offset: 896)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1559, file: !1560, line: 145, baseType: !1697, size: 64, offset: 960)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1699, line: 13, size: 896, elements: !1700)
!1699 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1700 = !{!1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1698, file: !1699, line: 14, baseType: !1241, size: 32)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1698, file: !1699, line: 15, baseType: !760, size: 32, offset: 32)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1698, file: !1699, line: 16, baseType: !760, size: 32, offset: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1698, file: !1699, line: 21, baseType: !784, size: 64, offset: 128)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1698, file: !1699, line: 27, baseType: !156, size: 64, offset: 192)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1698, file: !1699, line: 28, baseType: !156, size: 64, offset: 256)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1698, file: !1699, line: 29, baseType: !784, size: 64, offset: 320)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1698, file: !1699, line: 32, baseType: !652, size: 128, offset: 384)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1698, file: !1699, line: 33, baseType: !445, size: 32, offset: 512)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1698, file: !1699, line: 37, baseType: !784, size: 64, offset: 576)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1698, file: !1699, line: 44, baseType: !1712, size: 256, offset: 640)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1713, line: 15, size: 256, elements: !1714)
!1713 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1714 = !{!1715, !1716, !1717, !1718, !1719, !1720, !1721}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1712, file: !1713, line: 16, baseType: !793)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1712, file: !1713, line: 18, baseType: !194, size: 32)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1712, file: !1713, line: 19, baseType: !194, size: 32, offset: 32)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1712, file: !1713, line: 20, baseType: !194, size: 32, offset: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1712, file: !1713, line: 21, baseType: !194, size: 32, offset: 96)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1712, file: !1713, line: 22, baseType: !156, size: 64, offset: 128)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1712, file: !1713, line: 23, baseType: !156, size: 64, offset: 192)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1559, file: !1560, line: 146, baseType: !1723, size: 64, offset: 1024)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !736, line: 516, flags: DIFlagFwdDecl)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1559, file: !1560, line: 147, baseType: !1726, size: 64, offset: 1088)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1560, line: 25, size: 64, elements: !1728)
!1728 = !{!1729, !1730, !1731}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1727, file: !1560, line: 26, baseType: !760, size: 32)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1727, file: !1560, line: 27, baseType: !194, size: 32, offset: 32)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1727, file: !1560, line: 28, baseType: !1732, offset: 64)
!1732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !453, elements: !1733)
!1733 = !{!1734}
!1734 = !DISubrange(count: 0)
!1735 = !DIDerivedType(tag: DW_TAG_member, scope: !1559, file: !1560, line: 149, baseType: !1736, size: 128, offset: 1152)
!1736 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1559, file: !1560, line: 149, size: 128, elements: !1737)
!1737 = !{!1738, !1739}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1736, file: !1560, line: 150, baseType: !194, size: 32)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1736, file: !1560, line: 151, baseType: !383, size: 128, align: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1228, file: !1229, line: 926, baseType: !1557, size: 64, offset: 8576)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1228, file: !1229, line: 929, baseType: !1557, size: 64, offset: 8640)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1228, file: !1229, line: 933, baseType: !1587, size: 64, offset: 8704)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1228, file: !1229, line: 943, baseType: !1744, size: 128, offset: 8768)
!1744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 128, elements: !1745)
!1745 = !{!1746}
!1746 = !DISubrange(count: 16)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1228, file: !1229, line: 945, baseType: !1748, size: 64, offset: 8896)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1229, line: 49, flags: DIFlagFwdDecl)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1228, file: !1229, line: 956, baseType: !1751, size: 64, offset: 8960)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1229, line: 45, flags: DIFlagFwdDecl)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1228, file: !1229, line: 959, baseType: !1754, size: 64, offset: 9024)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1229, line: 959, flags: DIFlagFwdDecl)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1228, file: !1229, line: 962, baseType: !1757, size: 64, offset: 9088)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1229, line: 66, flags: DIFlagFwdDecl)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1228, file: !1229, line: 966, baseType: !1760, size: 64, offset: 9152)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1229, line: 50, flags: DIFlagFwdDecl)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1228, file: !1229, line: 969, baseType: !1763, size: 64, offset: 9216)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1765, line: 82, size: 7296, elements: !1766)
!1765 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1766 = !{!1767, !1768, !1769, !1770, !1771, !1772, !1773, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1802, !1811, !1812, !1814, !1815, !1816, !1819, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1849, !1850, !1857, !1858, !1859, !1860, !1861, !1862}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1764, file: !1765, line: 83, baseType: !1241, size: 32)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1764, file: !1765, line: 84, baseType: !760, size: 32, offset: 32)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1764, file: !1765, line: 85, baseType: !194, size: 32, offset: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1764, file: !1765, line: 86, baseType: !132, size: 128, offset: 128)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1764, file: !1765, line: 88, baseType: !1491, size: 128, offset: 256)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1764, file: !1765, line: 91, baseType: !1227, size: 64, offset: 384)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1764, file: !1765, line: 94, baseType: !1774, size: 192, offset: 448)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1775, line: 30, size: 192, elements: !1776)
!1775 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1776 = !{!1777, !1778}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1774, file: !1775, line: 31, baseType: !132, size: 128)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1774, file: !1775, line: 32, baseType: !1779, size: 64, offset: 128)
!1779 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1780, line: 25, baseType: !1781)
!1780 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1780, line: 23, size: 64, elements: !1782)
!1782 = !{!1783}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1781, file: !1780, line: 24, baseType: !1381, size: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1764, file: !1765, line: 97, baseType: !648, size: 64, offset: 640)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1764, file: !1765, line: 100, baseType: !194, size: 32, offset: 704)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1764, file: !1765, line: 106, baseType: !194, size: 32, offset: 736)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1764, file: !1765, line: 107, baseType: !1227, size: 64, offset: 768)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1764, file: !1765, line: 110, baseType: !194, size: 32, offset: 832)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1764, file: !1765, line: 111, baseType: !7, size: 32, offset: 864)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1764, file: !1765, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1764, file: !1765, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1764, file: !1765, line: 128, baseType: !194, size: 32, offset: 928)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1764, file: !1765, line: 129, baseType: !132, size: 128, offset: 960)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1764, file: !1765, line: 132, baseType: !1303, size: 512, offset: 1088)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1764, file: !1765, line: 133, baseType: !1311, size: 64, offset: 1600)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1764, file: !1765, line: 140, baseType: !1797, size: 256, offset: 1664)
!1797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1798, size: 256, elements: !1579)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1765, line: 38, size: 128, elements: !1799)
!1799 = !{!1800, !1801}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1798, file: !1765, line: 39, baseType: !145, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1798, file: !1765, line: 40, baseType: !145, size: 64, offset: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1764, file: !1765, line: 146, baseType: !1803, size: 192, offset: 1920)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1765, line: 66, size: 192, elements: !1804)
!1804 = !{!1805}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1803, file: !1765, line: 67, baseType: !1806, size: 192)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1765, line: 47, size: 192, elements: !1807)
!1807 = !{!1808, !1809, !1810}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1806, file: !1765, line: 48, baseType: !786, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1806, file: !1765, line: 49, baseType: !786, size: 64, offset: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1806, file: !1765, line: 50, baseType: !786, size: 64, offset: 128)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1764, file: !1765, line: 150, baseType: !1540, size: 640, offset: 2112)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1764, file: !1765, line: 153, baseType: !1813, size: 256, offset: 2752)
!1813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1481, size: 256, elements: !182)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1764, file: !1765, line: 159, baseType: !1481, size: 64, offset: 3008)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1764, file: !1765, line: 162, baseType: !194, size: 32, offset: 3072)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1764, file: !1765, line: 164, baseType: !1817, size: 64, offset: 3136)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1765, line: 164, flags: DIFlagFwdDecl)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1764, file: !1765, line: 175, baseType: !1820, size: 32, offset: 3200)
!1820 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !406, line: 805, baseType: !1821)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !406, line: 798, size: 32, elements: !1822)
!1822 = !{!1823, !1824}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1821, file: !406, line: 803, baseType: !405, size: 32)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1821, file: !406, line: 804, baseType: !253, offset: 32)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1764, file: !1765, line: 176, baseType: !145, size: 64, offset: 3264)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1764, file: !1765, line: 176, baseType: !145, size: 64, offset: 3328)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1764, file: !1765, line: 176, baseType: !145, size: 64, offset: 3392)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1764, file: !1765, line: 176, baseType: !145, size: 64, offset: 3456)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1764, file: !1765, line: 177, baseType: !145, size: 64, offset: 3520)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1764, file: !1765, line: 178, baseType: !145, size: 64, offset: 3584)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1764, file: !1765, line: 179, baseType: !1528, size: 128, offset: 3648)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1764, file: !1765, line: 180, baseType: !156, size: 64, offset: 3776)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1764, file: !1765, line: 180, baseType: !156, size: 64, offset: 3840)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1764, file: !1765, line: 180, baseType: !156, size: 64, offset: 3904)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1764, file: !1765, line: 180, baseType: !156, size: 64, offset: 3968)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1764, file: !1765, line: 181, baseType: !156, size: 64, offset: 4032)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1764, file: !1765, line: 181, baseType: !156, size: 64, offset: 4096)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1764, file: !1765, line: 181, baseType: !156, size: 64, offset: 4160)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1764, file: !1765, line: 181, baseType: !156, size: 64, offset: 4224)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1764, file: !1765, line: 182, baseType: !156, size: 64, offset: 4288)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1764, file: !1765, line: 182, baseType: !156, size: 64, offset: 4352)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1764, file: !1765, line: 182, baseType: !156, size: 64, offset: 4416)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1764, file: !1765, line: 182, baseType: !156, size: 64, offset: 4480)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1764, file: !1765, line: 183, baseType: !156, size: 64, offset: 4544)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1764, file: !1765, line: 183, baseType: !156, size: 64, offset: 4608)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1764, file: !1765, line: 184, baseType: !1847, offset: 4672)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1848, line: 12, elements: !267)
!1848 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1764, file: !1765, line: 192, baseType: !149, size: 64, offset: 4672)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1764, file: !1765, line: 203, baseType: !1851, size: 2048, offset: 4736)
!1851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1852, size: 2048, elements: !1745)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1853, line: 43, size: 128, elements: !1854)
!1853 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1854 = !{!1855, !1856}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1852, file: !1853, line: 44, baseType: !342, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1852, file: !1853, line: 45, baseType: !342, size: 64, offset: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1764, file: !1765, line: 220, baseType: !500, size: 8, offset: 6784)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1764, file: !1765, line: 221, baseType: !1216, size: 16, offset: 6800)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1764, file: !1765, line: 222, baseType: !1216, size: 16, offset: 6816)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1764, file: !1765, line: 224, baseType: !987, size: 64, offset: 6848)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1764, file: !1765, line: 227, baseType: !1184, size: 192, offset: 6912)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1764, file: !1765, line: 233, baseType: !1184, size: 192, offset: 7104)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1228, file: !1229, line: 970, baseType: !1864, size: 64, offset: 9280)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1765, line: 20, size: 16576, elements: !1866)
!1866 = !{!1867, !1868, !1869, !1870}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1865, file: !1765, line: 21, baseType: !253)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1865, file: !1765, line: 22, baseType: !1241, size: 32)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1865, file: !1765, line: 23, baseType: !1491, size: 128, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1865, file: !1765, line: 24, baseType: !1871, size: 16384, offset: 192)
!1871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1872, size: 16384, elements: !299)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1775, line: 49, size: 256, elements: !1873)
!1873 = !{!1874}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1872, file: !1775, line: 50, baseType: !1875, size: 256)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1775, line: 35, size: 256, elements: !1876)
!1876 = !{!1877, !1884, !1885, !1891}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1875, file: !1775, line: 37, baseType: !1878, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1879, line: 19, baseType: !1880)
!1879 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1879, line: 18, baseType: !1882)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{null, !194}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1875, file: !1775, line: 38, baseType: !156, size: 64, offset: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1875, file: !1775, line: 44, baseType: !1886, size: 64, offset: 128)
!1886 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1879, line: 22, baseType: !1887)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1879, line: 21, baseType: !1889)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{null}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1875, file: !1775, line: 46, baseType: !1779, size: 64, offset: 192)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1228, file: !1229, line: 971, baseType: !1779, size: 64, offset: 9344)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1228, file: !1229, line: 972, baseType: !1779, size: 64, offset: 9408)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1228, file: !1229, line: 974, baseType: !1779, size: 64, offset: 9472)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1228, file: !1229, line: 975, baseType: !1774, size: 192, offset: 9536)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1228, file: !1229, line: 976, baseType: !156, size: 64, offset: 9728)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1228, file: !1229, line: 977, baseType: !340, size: 64, offset: 9792)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1228, file: !1229, line: 978, baseType: !7, size: 32, offset: 9856)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1228, file: !1229, line: 980, baseType: !386, size: 64, offset: 9920)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1228, file: !1229, line: 989, baseType: !1901, size: 128, offset: 9984)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1902, line: 35, size: 128, elements: !1903)
!1902 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1903 = !{!1904, !1905, !1906}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1901, file: !1902, line: 36, baseType: !194, size: 32)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1901, file: !1902, line: 37, baseType: !760, size: 32, offset: 32)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1901, file: !1902, line: 38, baseType: !1907, size: 64, offset: 64)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1902, line: 23, flags: DIFlagFwdDecl)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1228, file: !1229, line: 992, baseType: !145, size: 64, offset: 10112)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1228, file: !1229, line: 993, baseType: !145, size: 64, offset: 10176)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1228, file: !1229, line: 996, baseType: !253, offset: 10240)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1228, file: !1229, line: 999, baseType: !793, offset: 10240)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1228, file: !1229, line: 1001, baseType: !1914, size: 64, offset: 10240)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1229, line: 636, size: 64, elements: !1915)
!1915 = !{!1916}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1914, file: !1229, line: 637, baseType: !1917, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1228, file: !1229, line: 1005, baseType: !765, size: 128, offset: 10304)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1228, file: !1229, line: 1007, baseType: !1227, size: 64, offset: 10432)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1228, file: !1229, line: 1009, baseType: !1921, size: 64, offset: 10496)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1229, line: 1009, flags: DIFlagFwdDecl)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1228, file: !1229, line: 1043, baseType: !124, size: 64, offset: 10560)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1228, file: !1229, line: 1046, baseType: !1925, size: 64, offset: 10624)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1229, line: 41, flags: DIFlagFwdDecl)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1228, file: !1229, line: 1050, baseType: !1928, size: 64, offset: 10688)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1229, line: 42, flags: DIFlagFwdDecl)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1228, file: !1229, line: 1054, baseType: !1931, size: 64, offset: 10752)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1229, line: 55, flags: DIFlagFwdDecl)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1228, file: !1229, line: 1056, baseType: !1934, size: 64, offset: 10816)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1229, line: 40, flags: DIFlagFwdDecl)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1228, file: !1229, line: 1058, baseType: !1937, size: 64, offset: 10880)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1939, line: 99, size: 704, elements: !1940)
!1939 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1940 = !{!1941, !1942, !1943, !1944, !1945, !1946, !1947, !1966, !1967}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1938, file: !1939, line: 100, baseType: !784, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1938, file: !1939, line: 101, baseType: !760, size: 32, offset: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1938, file: !1939, line: 102, baseType: !760, size: 32, offset: 96)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1938, file: !1939, line: 105, baseType: !253, offset: 128)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1938, file: !1939, line: 107, baseType: !232, size: 16, offset: 128)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1938, file: !1939, line: 109, baseType: !752, size: 128, offset: 192)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1938, file: !1939, line: 110, baseType: !1948, size: 64, offset: 320)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1939, line: 73, size: 448, elements: !1950)
!1950 = !{!1951, !1954, !1955, !1960, !1965}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1949, file: !1939, line: 74, baseType: !1952, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1939, line: 74, flags: DIFlagFwdDecl)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1949, file: !1939, line: 75, baseType: !1937, size: 64, offset: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, scope: !1949, file: !1939, line: 83, baseType: !1956, size: 128, offset: 128)
!1956 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1949, file: !1939, line: 83, size: 128, elements: !1957)
!1957 = !{!1958, !1959}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1956, file: !1939, line: 84, baseType: !132, size: 128)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1956, file: !1939, line: 85, baseType: !948, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, scope: !1949, file: !1939, line: 87, baseType: !1961, size: 128, offset: 256)
!1961 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1949, file: !1939, line: 87, size: 128, elements: !1962)
!1962 = !{!1963, !1964}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1961, file: !1939, line: 88, baseType: !652, size: 128)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1961, file: !1939, line: 89, baseType: !383, size: 128, align: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1949, file: !1939, line: 92, baseType: !7, size: 32, offset: 384)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1938, file: !1939, line: 111, baseType: !648, size: 64, offset: 384)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1938, file: !1939, line: 113, baseType: !1968, size: 256, offset: 448)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1969, line: 102, size: 256, elements: !1970)
!1969 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1970 = !{!1971, !1972, !1973}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1968, file: !1969, line: 103, baseType: !784, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1968, file: !1969, line: 104, baseType: !132, size: 128, offset: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1968, file: !1969, line: 105, baseType: !1974, size: 64, offset: 192)
!1974 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1969, line: 21, baseType: !1975)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{null, !1978}
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1228, file: !1229, line: 1061, baseType: !1980, size: 64, offset: 10944)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1229, line: 43, flags: DIFlagFwdDecl)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1228, file: !1229, line: 1064, baseType: !156, size: 64, offset: 11008)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1228, file: !1229, line: 1065, baseType: !1984, size: 64, offset: 11072)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1775, line: 14, baseType: !1986)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1775, line: 12, size: 384, elements: !1987)
!1987 = !{!1988}
!1988 = !DIDerivedType(tag: DW_TAG_member, scope: !1986, file: !1775, line: 13, baseType: !1989, size: 384)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1986, file: !1775, line: 13, size: 384, elements: !1990)
!1990 = !{!1991, !1992, !1993, !1994}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1989, file: !1775, line: 13, baseType: !194, size: 32)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1989, file: !1775, line: 13, baseType: !194, size: 32, offset: 32)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1989, file: !1775, line: 13, baseType: !194, size: 32, offset: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1989, file: !1775, line: 13, baseType: !1995, size: 256, offset: 128)
!1995 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1996, line: 32, size: 256, elements: !1997)
!1996 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1997 = !{!1998, !2003, !2016, !2022, !2031, !2051, !2056}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1995, file: !1996, line: 37, baseType: !1999, size: 64)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1995, file: !1996, line: 34, size: 64, elements: !2000)
!2000 = !{!2001, !2002}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1999, file: !1996, line: 35, baseType: !1470, size: 32)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1999, file: !1996, line: 36, baseType: !451, size: 32, offset: 32)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1995, file: !1996, line: 45, baseType: !2004, size: 192)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1995, file: !1996, line: 40, size: 192, elements: !2005)
!2005 = !{!2006, !2008, !2009, !2015}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2004, file: !1996, line: 41, baseType: !2007, size: 32)
!2007 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !327, line: 95, baseType: !194)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2004, file: !1996, line: 42, baseType: !194, size: 32, offset: 32)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2004, file: !1996, line: 43, baseType: !2010, size: 64, offset: 64)
!2010 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1996, line: 11, baseType: !2011)
!2011 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1996, line: 8, size: 64, elements: !2012)
!2012 = !{!2013, !2014}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2011, file: !1996, line: 9, baseType: !194, size: 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2011, file: !1996, line: 10, baseType: !124, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2004, file: !1996, line: 44, baseType: !194, size: 32, offset: 128)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1995, file: !1996, line: 52, baseType: !2017, size: 128)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1995, file: !1996, line: 48, size: 128, elements: !2018)
!2018 = !{!2019, !2020, !2021}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2017, file: !1996, line: 49, baseType: !1470, size: 32)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2017, file: !1996, line: 50, baseType: !451, size: 32, offset: 32)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2017, file: !1996, line: 51, baseType: !2010, size: 64, offset: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1995, file: !1996, line: 61, baseType: !2023, size: 256)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1995, file: !1996, line: 55, size: 256, elements: !2024)
!2024 = !{!2025, !2026, !2027, !2028, !2030}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2023, file: !1996, line: 56, baseType: !1470, size: 32)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2023, file: !1996, line: 57, baseType: !451, size: 32, offset: 32)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2023, file: !1996, line: 58, baseType: !194, size: 32, offset: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2023, file: !1996, line: 59, baseType: !2029, size: 64, offset: 128)
!2029 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !327, line: 94, baseType: !328)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2023, file: !1996, line: 60, baseType: !2029, size: 64, offset: 192)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1995, file: !1996, line: 95, baseType: !2032, size: 256)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1995, file: !1996, line: 64, size: 256, elements: !2033)
!2033 = !{!2034, !2035}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2032, file: !1996, line: 65, baseType: !124, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, scope: !2032, file: !1996, line: 77, baseType: !2036, size: 192, offset: 64)
!2036 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2032, file: !1996, line: 77, size: 192, elements: !2037)
!2037 = !{!2038, !2039, !2046}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2036, file: !1996, line: 82, baseType: !1216, size: 16)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2036, file: !1996, line: 88, baseType: !2040, size: 192)
!2040 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2036, file: !1996, line: 84, size: 192, elements: !2041)
!2041 = !{!2042, !2044, !2045}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2040, file: !1996, line: 85, baseType: !2043, size: 64)
!2043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 64, elements: !1341)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2040, file: !1996, line: 86, baseType: !124, size: 64, offset: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2040, file: !1996, line: 87, baseType: !124, size: 64, offset: 128)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2036, file: !1996, line: 93, baseType: !2047, size: 96)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2036, file: !1996, line: 90, size: 96, elements: !2048)
!2048 = !{!2049, !2050}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2047, file: !1996, line: 91, baseType: !2043, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2047, file: !1996, line: 92, baseType: !209, size: 32, offset: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1995, file: !1996, line: 101, baseType: !2052, size: 128)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1995, file: !1996, line: 98, size: 128, elements: !2053)
!2053 = !{!2054, !2055}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2052, file: !1996, line: 99, baseType: !329, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2052, file: !1996, line: 100, baseType: !194, size: 32, offset: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1995, file: !1996, line: 108, baseType: !2057, size: 128)
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1995, file: !1996, line: 104, size: 128, elements: !2058)
!2058 = !{!2059, !2060, !2061}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2057, file: !1996, line: 105, baseType: !124, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2057, file: !1996, line: 106, baseType: !194, size: 32, offset: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2057, file: !1996, line: 107, baseType: !7, size: 32, offset: 96)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1228, file: !1229, line: 1067, baseType: !1847, offset: 11136)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1228, file: !1229, line: 1099, baseType: !2064, size: 64, offset: 11136)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1229, line: 56, flags: DIFlagFwdDecl)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1228, file: !1229, line: 1103, baseType: !132, size: 128, offset: 11200)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1228, file: !1229, line: 1104, baseType: !2068, size: 64, offset: 11328)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1229, line: 46, flags: DIFlagFwdDecl)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1228, file: !1229, line: 1105, baseType: !1184, size: 192, offset: 11392)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1228, file: !1229, line: 1106, baseType: !7, size: 32, offset: 11584)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1228, file: !1229, line: 1109, baseType: !2073, size: 128, offset: 11648)
!2073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2074, size: 128, elements: !1579)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1229, line: 51, flags: DIFlagFwdDecl)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1228, file: !1229, line: 1110, baseType: !1184, size: 192, offset: 11776)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1228, file: !1229, line: 1111, baseType: !132, size: 128, offset: 11968)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1228, file: !1229, line: 1173, baseType: !2079, size: 64, offset: 12096)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2081, line: 62, size: 256, align: 256, elements: !2082)
!2081 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2082 = !{!2083, !2084, !2085, !2090}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2080, file: !2081, line: 75, baseType: !209, size: 32)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2080, file: !2081, line: 90, baseType: !209, size: 32, offset: 32)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2080, file: !2081, line: 124, baseType: !2086, size: 64, offset: 64)
!2086 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2080, file: !2081, line: 109, size: 64, elements: !2087)
!2087 = !{!2088, !2089}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2086, file: !2081, line: 110, baseType: !147, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2086, file: !2081, line: 112, baseType: !147, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2080, file: !2081, line: 144, baseType: !209, size: 32, offset: 128)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1228, file: !1229, line: 1174, baseType: !208, size: 32, offset: 12160)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1228, file: !1229, line: 1179, baseType: !156, size: 64, offset: 12224)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1228, file: !1229, line: 1182, baseType: !2094, size: 128, offset: 12288)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1164, line: 76, size: 128, elements: !2095)
!2095 = !{!2096, !2101, !2102}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2094, file: !1164, line: 85, baseType: !2097, size: 64)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2098, line: 7, size: 64, elements: !2099)
!2098 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2099 = !{!2100}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2097, file: !2098, line: 12, baseType: !1378, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2094, file: !1164, line: 88, baseType: !500, size: 8, offset: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2094, file: !1164, line: 95, baseType: !500, size: 8, offset: 72)
!2103 = !DIDerivedType(tag: DW_TAG_member, scope: !1228, file: !1229, line: 1184, baseType: !2104, size: 128, offset: 12416)
!2104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1228, file: !1229, line: 1184, size: 128, elements: !2105)
!2105 = !{!2106, !2107}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2104, file: !1229, line: 1185, baseType: !1241, size: 32)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2104, file: !1229, line: 1186, baseType: !383, size: 128, align: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1228, file: !1229, line: 1190, baseType: !2109, size: 64, offset: 12544)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1229, line: 53, flags: DIFlagFwdDecl)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1228, file: !1229, line: 1192, baseType: !2112, size: 128, offset: 12608)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1164, line: 64, size: 128, elements: !2113)
!2113 = !{!2114, !2115, !2116}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2112, file: !1164, line: 65, baseType: !734, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2112, file: !1164, line: 67, baseType: !209, size: 32, offset: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2112, file: !1164, line: 68, baseType: !209, size: 32, offset: 96)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1228, file: !1229, line: 1206, baseType: !194, size: 32, offset: 12736)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1228, file: !1229, line: 1207, baseType: !194, size: 32, offset: 12768)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1228, file: !1229, line: 1209, baseType: !156, size: 64, offset: 12800)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1228, file: !1229, line: 1219, baseType: !145, size: 64, offset: 12864)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1228, file: !1229, line: 1220, baseType: !145, size: 64, offset: 12928)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1228, file: !1229, line: 1317, baseType: !194, size: 32, offset: 12992)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1228, file: !1229, line: 1319, baseType: !1227, size: 64, offset: 13056)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1228, file: !1229, line: 1322, baseType: !2125, size: 64, offset: 13120)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2127, line: 56, size: 512, elements: !2128)
!2127 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2128 = !{!2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2126, file: !2127, line: 57, baseType: !2125, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2126, file: !2127, line: 58, baseType: !124, size: 64, offset: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2126, file: !2127, line: 59, baseType: !156, size: 64, offset: 128)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2126, file: !2127, line: 60, baseType: !156, size: 64, offset: 192)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2126, file: !2127, line: 61, baseType: !833, size: 64, offset: 256)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2126, file: !2127, line: 62, baseType: !7, size: 32, offset: 320)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2126, file: !2127, line: 63, baseType: !144, size: 64, offset: 384)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2126, file: !2127, line: 64, baseType: !2137, size: 64, offset: 448)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1228, file: !1229, line: 1326, baseType: !1241, size: 32, offset: 13184)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1228, file: !1229, line: 1342, baseType: !124, size: 64, offset: 13248)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1228, file: !1229, line: 1343, baseType: !147, size: 64, offset: 13312)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1228, file: !1229, line: 1344, baseType: !145, size: 64, offset: 13376)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1228, file: !1229, line: 1345, baseType: !147, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1228, file: !1229, line: 1346, baseType: !147, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1228, file: !1229, line: 1347, baseType: !147, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1228, file: !1229, line: 1348, baseType: !383, size: 128, align: 64, offset: 13504)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1228, file: !1229, line: 1358, baseType: !2148, size: 34816, offset: 13824)
!2148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2149, line: 485, size: 34816, elements: !2150)
!2149 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2150 = !{!2151, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2180, !2181, !2182, !2183, !2184, !2185, !2188, !2189, !2190}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2148, file: !2149, line: 487, baseType: !2152, size: 192)
!2152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2153, size: 192, elements: !295)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2154, line: 16, size: 64, elements: !2155)
!2154 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2155 = !{!2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2153, file: !2154, line: 17, baseType: !872, size: 16)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2153, file: !2154, line: 18, baseType: !872, size: 16, offset: 16)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2153, file: !2154, line: 19, baseType: !872, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2153, file: !2154, line: 19, baseType: !872, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2153, file: !2154, line: 19, baseType: !872, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2153, file: !2154, line: 19, baseType: !872, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2153, file: !2154, line: 19, baseType: !872, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2153, file: !2154, line: 20, baseType: !872, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2153, file: !2154, line: 20, baseType: !872, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2153, file: !2154, line: 20, baseType: !872, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2153, file: !2154, line: 20, baseType: !872, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2153, file: !2154, line: 20, baseType: !872, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2153, file: !2154, line: 20, baseType: !872, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2148, file: !2149, line: 491, baseType: !156, size: 64, offset: 192)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2148, file: !2149, line: 495, baseType: !232, size: 16, offset: 256)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2148, file: !2149, line: 496, baseType: !232, size: 16, offset: 272)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2148, file: !2149, line: 497, baseType: !232, size: 16, offset: 288)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2148, file: !2149, line: 498, baseType: !232, size: 16, offset: 304)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2148, file: !2149, line: 502, baseType: !156, size: 64, offset: 320)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2148, file: !2149, line: 503, baseType: !156, size: 64, offset: 384)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2148, file: !2149, line: 514, baseType: !2177, size: 256, offset: 448)
!2177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2178, size: 256, elements: !182)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2149, line: 483, flags: DIFlagFwdDecl)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2148, file: !2149, line: 516, baseType: !156, size: 64, offset: 704)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2148, file: !2149, line: 518, baseType: !156, size: 64, offset: 768)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2148, file: !2149, line: 520, baseType: !156, size: 64, offset: 832)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2148, file: !2149, line: 521, baseType: !156, size: 64, offset: 896)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2148, file: !2149, line: 522, baseType: !156, size: 64, offset: 960)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2148, file: !2149, line: 528, baseType: !2186, size: 64, offset: 1024)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2149, line: 10, flags: DIFlagFwdDecl)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2148, file: !2149, line: 535, baseType: !156, size: 64, offset: 1088)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2148, file: !2149, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2148, file: !2149, line: 540, baseType: !2191, size: 33280, offset: 1536)
!2191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2192, line: 317, size: 33280, elements: !2193)
!2192 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2193 = !{!2194, !2195, !2196}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2191, file: !2192, line: 330, baseType: !7, size: 32)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2191, file: !2192, line: 337, baseType: !156, size: 64, offset: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2191, file: !2192, line: 348, baseType: !2197, size: 32768, offset: 512)
!2197 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2192, line: 304, size: 32768, elements: !2198)
!2198 = !{!2199, !2214, !2253, !2303, !2316}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2197, file: !2192, line: 305, baseType: !2200, size: 896)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2192, line: 12, size: 896, elements: !2201)
!2201 = !{!2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2213}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2200, file: !2192, line: 13, baseType: !208, size: 32)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2200, file: !2192, line: 14, baseType: !208, size: 32, offset: 32)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2200, file: !2192, line: 15, baseType: !208, size: 32, offset: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2200, file: !2192, line: 16, baseType: !208, size: 32, offset: 96)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2200, file: !2192, line: 17, baseType: !208, size: 32, offset: 128)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2200, file: !2192, line: 18, baseType: !208, size: 32, offset: 160)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2200, file: !2192, line: 19, baseType: !208, size: 32, offset: 192)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2200, file: !2192, line: 22, baseType: !2210, size: 640, offset: 224)
!2210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 640, elements: !2211)
!2211 = !{!2212}
!2212 = !DISubrange(count: 20)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2200, file: !2192, line: 25, baseType: !208, size: 32, offset: 864)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2197, file: !2192, line: 306, baseType: !2215, size: 4096, align: 128)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2192, line: 34, size: 4096, align: 128, elements: !2216)
!2216 = !{!2217, !2218, !2219, !2220, !2221, !2236, !2237, !2238, !2242, !2244, !2248}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2215, file: !2192, line: 35, baseType: !872, size: 16)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2215, file: !2192, line: 36, baseType: !872, size: 16, offset: 16)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2215, file: !2192, line: 37, baseType: !872, size: 16, offset: 32)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2215, file: !2192, line: 38, baseType: !872, size: 16, offset: 48)
!2221 = !DIDerivedType(tag: DW_TAG_member, scope: !2215, file: !2192, line: 39, baseType: !2222, size: 128, offset: 64)
!2222 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2215, file: !2192, line: 39, size: 128, elements: !2223)
!2223 = !{!2224, !2229}
!2224 = !DIDerivedType(tag: DW_TAG_member, scope: !2222, file: !2192, line: 40, baseType: !2225, size: 128)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2222, file: !2192, line: 40, size: 128, elements: !2226)
!2226 = !{!2227, !2228}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2225, file: !2192, line: 41, baseType: !145, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2225, file: !2192, line: 42, baseType: !145, size: 64, offset: 64)
!2229 = !DIDerivedType(tag: DW_TAG_member, scope: !2222, file: !2192, line: 44, baseType: !2230, size: 128)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2222, file: !2192, line: 44, size: 128, elements: !2231)
!2231 = !{!2232, !2233, !2234, !2235}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2230, file: !2192, line: 45, baseType: !208, size: 32)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2230, file: !2192, line: 46, baseType: !208, size: 32, offset: 32)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2230, file: !2192, line: 47, baseType: !208, size: 32, offset: 64)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2230, file: !2192, line: 48, baseType: !208, size: 32, offset: 96)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2215, file: !2192, line: 51, baseType: !208, size: 32, offset: 192)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2215, file: !2192, line: 52, baseType: !208, size: 32, offset: 224)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2215, file: !2192, line: 55, baseType: !2239, size: 1024, offset: 256)
!2239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 1024, elements: !2240)
!2240 = !{!2241}
!2241 = !DISubrange(count: 32)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2215, file: !2192, line: 58, baseType: !2243, size: 2048, offset: 1280)
!2243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 2048, elements: !299)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2215, file: !2192, line: 60, baseType: !2245, size: 384, offset: 3328)
!2245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 384, elements: !2246)
!2246 = !{!2247}
!2247 = !DISubrange(count: 12)
!2248 = !DIDerivedType(tag: DW_TAG_member, scope: !2215, file: !2192, line: 62, baseType: !2249, size: 384, offset: 3712)
!2249 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2215, file: !2192, line: 62, size: 384, elements: !2250)
!2250 = !{!2251, !2252}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2249, file: !2192, line: 63, baseType: !2245, size: 384)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2249, file: !2192, line: 64, baseType: !2245, size: 384)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2197, file: !2192, line: 307, baseType: !2254, size: 1088)
!2254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2192, line: 79, size: 1088, elements: !2255)
!2255 = !{!2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2302}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2254, file: !2192, line: 80, baseType: !208, size: 32)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2254, file: !2192, line: 81, baseType: !208, size: 32, offset: 32)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2254, file: !2192, line: 82, baseType: !208, size: 32, offset: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2254, file: !2192, line: 83, baseType: !208, size: 32, offset: 96)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2254, file: !2192, line: 84, baseType: !208, size: 32, offset: 128)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2254, file: !2192, line: 85, baseType: !208, size: 32, offset: 160)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2254, file: !2192, line: 86, baseType: !208, size: 32, offset: 192)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2254, file: !2192, line: 88, baseType: !2210, size: 640, offset: 224)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2254, file: !2192, line: 89, baseType: !1363, size: 8, offset: 864)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2254, file: !2192, line: 90, baseType: !1363, size: 8, offset: 872)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2254, file: !2192, line: 91, baseType: !1363, size: 8, offset: 880)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2254, file: !2192, line: 92, baseType: !1363, size: 8, offset: 888)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2254, file: !2192, line: 93, baseType: !1363, size: 8, offset: 896)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2254, file: !2192, line: 94, baseType: !1363, size: 8, offset: 904)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2254, file: !2192, line: 95, baseType: !2271, size: 64, offset: 960)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2273, line: 11, size: 128, elements: !2274)
!2273 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2274 = !{!2275, !2276}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2272, file: !2273, line: 12, baseType: !329, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2272, file: !2273, line: 13, baseType: !2277, size: 64, offset: 64)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2279, line: 56, size: 1344, elements: !2280)
!2279 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2280 = !{!2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2278, file: !2279, line: 61, baseType: !156, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2278, file: !2279, line: 62, baseType: !156, size: 64, offset: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2278, file: !2279, line: 63, baseType: !156, size: 64, offset: 128)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2278, file: !2279, line: 64, baseType: !156, size: 64, offset: 192)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2278, file: !2279, line: 65, baseType: !156, size: 64, offset: 256)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2278, file: !2279, line: 66, baseType: !156, size: 64, offset: 320)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2278, file: !2279, line: 68, baseType: !156, size: 64, offset: 384)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2278, file: !2279, line: 69, baseType: !156, size: 64, offset: 448)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2278, file: !2279, line: 70, baseType: !156, size: 64, offset: 512)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2278, file: !2279, line: 71, baseType: !156, size: 64, offset: 576)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2278, file: !2279, line: 72, baseType: !156, size: 64, offset: 640)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2278, file: !2279, line: 73, baseType: !156, size: 64, offset: 704)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2278, file: !2279, line: 74, baseType: !156, size: 64, offset: 768)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2278, file: !2279, line: 75, baseType: !156, size: 64, offset: 832)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2278, file: !2279, line: 76, baseType: !156, size: 64, offset: 896)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2278, file: !2279, line: 81, baseType: !156, size: 64, offset: 960)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2278, file: !2279, line: 83, baseType: !156, size: 64, offset: 1024)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2278, file: !2279, line: 84, baseType: !156, size: 64, offset: 1088)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2278, file: !2279, line: 85, baseType: !156, size: 64, offset: 1152)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2278, file: !2279, line: 86, baseType: !156, size: 64, offset: 1216)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2278, file: !2279, line: 87, baseType: !156, size: 64, offset: 1280)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2254, file: !2192, line: 96, baseType: !208, size: 32, offset: 1024)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2197, file: !2192, line: 308, baseType: !2304, size: 4608, align: 512)
!2304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2192, line: 289, size: 4608, align: 512, elements: !2305)
!2305 = !{!2306, !2307, !2314}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2304, file: !2192, line: 290, baseType: !2215, size: 4096, align: 128)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2304, file: !2192, line: 291, baseType: !2308, size: 512, offset: 4096)
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2192, line: 268, size: 512, elements: !2309)
!2309 = !{!2310, !2311, !2312}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2308, file: !2192, line: 269, baseType: !145, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2308, file: !2192, line: 270, baseType: !145, size: 64, offset: 64)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2308, file: !2192, line: 271, baseType: !2313, size: 384, offset: 128)
!2313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 384, elements: !1635)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2304, file: !2192, line: 292, baseType: !2315, offset: 4608)
!2315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1363, elements: !1733)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2197, file: !2192, line: 309, baseType: !2317, size: 32768)
!2317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1363, size: 32768, elements: !2318)
!2318 = !{!2319}
!2319 = !DISubrange(count: 4096)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1224, file: !736, line: 378, baseType: !2321, size: 64, offset: 64)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1220, file: !736, line: 384, baseType: !1512, size: 192, offset: 192)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !991, file: !736, line: 500, baseType: !253, offset: 6656)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !991, file: !736, line: 501, baseType: !2325, size: 64, offset: 6656)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !736, line: 387, flags: DIFlagFwdDecl)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !991, file: !736, line: 516, baseType: !1723, size: 64, offset: 6720)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !991, file: !736, line: 519, baseType: !370, size: 64, offset: 6784)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !991, file: !736, line: 521, baseType: !2330, size: 64, offset: 6848)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !736, line: 521, flags: DIFlagFwdDecl)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !991, file: !736, line: 545, baseType: !760, size: 32, offset: 6912)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !991, file: !736, line: 548, baseType: !500, size: 8, offset: 6944)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !991, file: !736, line: 550, baseType: !2335, offset: 6952)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2336, line: 142, elements: !267)
!2336 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !991, file: !736, line: 554, baseType: !1968, size: 256, offset: 6976)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !991, file: !736, line: 557, baseType: !208, size: 32, offset: 7232)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !988, file: !736, line: 565, baseType: !2340, offset: 7296)
!2340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, elements: !2341)
!2341 = !{!2342}
!2342 = !DISubrange(count: -1)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !984, file: !736, line: 151, baseType: !760, size: 32)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !977, file: !736, line: 156, baseType: !253, offset: 256)
!2345 = !DIDerivedType(tag: DW_TAG_member, scope: !740, file: !736, line: 159, baseType: !2346, size: 128)
!2346 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !740, file: !736, line: 159, size: 128, elements: !2347)
!2347 = !{!2348, !2412}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2346, file: !736, line: 161, baseType: !2349, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2351)
!2351 = !{!2352, !2362, !2383, !2384, !2385, !2386, !2387, !2399, !2400, !2401}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2350, file: !31, line: 111, baseType: !2353, size: 384)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2354)
!2354 = !{!2355, !2357, !2358, !2359, !2360, !2361}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2353, file: !31, line: 20, baseType: !2356, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2353, file: !31, line: 21, baseType: !2356, size: 64, offset: 64)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2353, file: !31, line: 22, baseType: !2356, size: 64, offset: 128)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2353, file: !31, line: 23, baseType: !156, size: 64, offset: 192)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2353, file: !31, line: 24, baseType: !156, size: 64, offset: 256)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2353, file: !31, line: 25, baseType: !156, size: 64, offset: 320)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2350, file: !31, line: 112, baseType: !2363, size: 64, offset: 384)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2365, line: 105, size: 128, elements: !2366)
!2365 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2366 = !{!2367, !2368}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2364, file: !2365, line: 110, baseType: !156, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2364, file: !2365, line: 118, baseType: !2369, size: 64, offset: 64)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2365, line: 95, size: 448, elements: !2371)
!2371 = !{!2372, !2373, !2378, !2379, !2380, !2381, !2382}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2370, file: !2365, line: 96, baseType: !784, size: 64)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2370, file: !2365, line: 97, baseType: !2374, size: 64, offset: 64)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2365, line: 60, baseType: !2376)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{null, !2363}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2370, file: !2365, line: 98, baseType: !2374, size: 64, offset: 128)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2370, file: !2365, line: 99, baseType: !500, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2370, file: !2365, line: 100, baseType: !500, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2370, file: !2365, line: 101, baseType: !383, size: 128, align: 64, offset: 256)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2370, file: !2365, line: 102, baseType: !2363, size: 64, offset: 384)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2350, file: !31, line: 113, baseType: !2364, size: 128, offset: 448)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2350, file: !31, line: 114, baseType: !1512, size: 192, offset: 576)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2350, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2350, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2350, file: !31, line: 117, baseType: !2388, size: 64, offset: 832)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2390)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2391)
!2391 = !{!2392, !2393, !2397, !2398}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2390, file: !31, line: 73, baseType: !853, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2390, file: !31, line: 78, baseType: !2394, size: 64, offset: 64)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{null, !2349}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2390, file: !31, line: 83, baseType: !2394, size: 64, offset: 128)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2390, file: !31, line: 89, baseType: !1040, size: 64, offset: 192)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2350, file: !31, line: 118, baseType: !124, size: 64, offset: 896)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2350, file: !31, line: 119, baseType: !194, size: 32, offset: 960)
!2401 = !DIDerivedType(tag: DW_TAG_member, scope: !2350, file: !31, line: 120, baseType: !2402, size: 128, offset: 1024)
!2402 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2350, file: !31, line: 120, size: 128, elements: !2403)
!2403 = !{!2404, !2410}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2402, file: !31, line: 121, baseType: !2405, size: 128)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2406, line: 6, size: 128, elements: !2407)
!2406 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2407 = !{!2408, !2409}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2405, file: !2406, line: 7, baseType: !145, size: 64)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2405, file: !2406, line: 8, baseType: !145, size: 64, offset: 64)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2402, file: !31, line: 122, baseType: !2411)
!2411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2405, elements: !1733)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2346, file: !736, line: 162, baseType: !124, size: 64, offset: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !740, file: !736, line: 176, baseType: !383, size: 128, align: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, scope: !735, file: !736, line: 179, baseType: !2415, size: 32, offset: 384)
!2415 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !735, file: !736, line: 179, size: 32, elements: !2416)
!2416 = !{!2417, !2418, !2419, !2420}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2415, file: !736, line: 184, baseType: !760, size: 32)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2415, file: !736, line: 192, baseType: !7, size: 32)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2415, file: !736, line: 194, baseType: !7, size: 32)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2415, file: !736, line: 195, baseType: !194, size: 32)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !735, file: !736, line: 199, baseType: !760, size: 32, offset: 416)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !670, file: !44, line: 1964, baseType: !2423, size: 64, offset: 1344)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!329, !609, !2426}
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2428, line: 12, size: 256, elements: !2429)
!2428 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2429 = !{!2430, !2431, !2432, !2433, !2434}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2427, file: !2428, line: 13, baseType: !125, size: 32)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2427, file: !2428, line: 16, baseType: !194, size: 32, offset: 32)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2427, file: !2428, line: 23, baseType: !156, size: 64, offset: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2427, file: !2428, line: 30, baseType: !156, size: 64, offset: 128)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2427, file: !2428, line: 33, baseType: !2435, size: 64, offset: 192)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !736, line: 27, flags: DIFlagFwdDecl)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !670, file: !44, line: 1966, baseType: !2423, size: 64, offset: 1408)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !610, file: !44, line: 1424, baseType: !2439, size: 64, offset: 448)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2441)
!2441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2442)
!2442 = !{!2443, !2489, !2493, !2497, !2498, !2499, !2500, !2501, !2506, !2511, !2515}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2441, file: !38, line: 323, baseType: !2444, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!194, !2447}
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2449)
!2449 = !{!2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2474, !2475, !2476}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2448, file: !38, line: 295, baseType: !652, size: 128)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2448, file: !38, line: 296, baseType: !132, size: 128, offset: 128)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2448, file: !38, line: 297, baseType: !132, size: 128, offset: 256)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2448, file: !38, line: 298, baseType: !132, size: 128, offset: 384)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2448, file: !38, line: 299, baseType: !1184, size: 192, offset: 512)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2448, file: !38, line: 300, baseType: !253, offset: 704)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2448, file: !38, line: 301, baseType: !760, size: 32, offset: 704)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2448, file: !38, line: 302, baseType: !609, size: 64, offset: 768)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2448, file: !38, line: 303, baseType: !2459, size: 64, offset: 832)
!2459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2460)
!2460 = !{!2461, !2473}
!2461 = !DIDerivedType(tag: DW_TAG_member, scope: !2459, file: !38, line: 69, baseType: !2462, size: 32)
!2462 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2459, file: !38, line: 69, size: 32, elements: !2463)
!2463 = !{!2464, !2465, !2466}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2462, file: !38, line: 70, baseType: !445, size: 32)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2462, file: !38, line: 71, baseType: !453, size: 32)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2462, file: !38, line: 72, baseType: !2467, size: 32)
!2467 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2468, line: 24, baseType: !2469)
!2468 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2469 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2468, line: 22, size: 32, elements: !2470)
!2470 = !{!2471}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2469, file: !2468, line: 23, baseType: !2472, size: 32)
!2472 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2468, line: 20, baseType: !451)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2459, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2448, file: !38, line: 304, baseType: !541, size: 64, offset: 896)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2448, file: !38, line: 305, baseType: !156, size: 64, offset: 960)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2448, file: !38, line: 306, baseType: !2477, size: 576, offset: 1024)
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2478)
!2478 = !{!2479, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2477, file: !38, line: 206, baseType: !2480, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !543)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2477, file: !38, line: 207, baseType: !2480, size: 64, offset: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2477, file: !38, line: 208, baseType: !2480, size: 64, offset: 128)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2477, file: !38, line: 209, baseType: !2480, size: 64, offset: 192)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2477, file: !38, line: 210, baseType: !2480, size: 64, offset: 256)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2477, file: !38, line: 211, baseType: !2480, size: 64, offset: 320)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2477, file: !38, line: 212, baseType: !2480, size: 64, offset: 384)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2477, file: !38, line: 213, baseType: !549, size: 64, offset: 448)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2477, file: !38, line: 214, baseType: !549, size: 64, offset: 512)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2441, file: !38, line: 324, baseType: !2490, size: 64, offset: 64)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{!2447, !609, !194}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2441, file: !38, line: 325, baseType: !2494, size: 64, offset: 128)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = !DISubroutineType(types: !2496)
!2496 = !{null, !2447}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2441, file: !38, line: 326, baseType: !2444, size: 64, offset: 192)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2441, file: !38, line: 327, baseType: !2444, size: 64, offset: 256)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2441, file: !38, line: 328, baseType: !2444, size: 64, offset: 320)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2441, file: !38, line: 329, baseType: !698, size: 64, offset: 384)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2441, file: !38, line: 332, baseType: !2502, size: 64, offset: 448)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{!2505, !439}
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2441, file: !38, line: 333, baseType: !2507, size: 64, offset: 512)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DISubroutineType(types: !2509)
!2509 = !{!194, !439, !2510}
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2441, file: !38, line: 335, baseType: !2512, size: 64, offset: 576)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!194, !439, !2505}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2441, file: !38, line: 337, baseType: !2516, size: 64, offset: 640)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{!194, !609, !2519}
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !610, file: !44, line: 1425, baseType: !2521, size: 64, offset: 512)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2523)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2524)
!2524 = !{!2525, !2529, !2530, !2534, !2535, !2536, !2551, !2574, !2578, !2579, !2602}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2523, file: !38, line: 429, baseType: !2526, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!194, !609, !194, !194, !559}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2523, file: !38, line: 430, baseType: !698, size: 64, offset: 64)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2523, file: !38, line: 431, baseType: !2531, size: 64, offset: 128)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!194, !609, !7}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2523, file: !38, line: 432, baseType: !2531, size: 64, offset: 192)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2523, file: !38, line: 433, baseType: !698, size: 64, offset: 256)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2523, file: !38, line: 434, baseType: !2537, size: 64, offset: 320)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!194, !609, !194, !2540}
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2542)
!2542 = !{!2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2541, file: !38, line: 416, baseType: !194, size: 32)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2541, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2541, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2541, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2541, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2541, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2541, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2541, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2523, file: !38, line: 435, baseType: !2552, size: 64, offset: 384)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!194, !609, !2459, !2555}
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2557)
!2557 = !{!2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2556, file: !38, line: 344, baseType: !194, size: 32)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2556, file: !38, line: 345, baseType: !145, size: 64, offset: 64)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2556, file: !38, line: 346, baseType: !145, size: 64, offset: 128)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2556, file: !38, line: 347, baseType: !145, size: 64, offset: 192)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2556, file: !38, line: 348, baseType: !145, size: 64, offset: 256)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2556, file: !38, line: 349, baseType: !145, size: 64, offset: 320)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2556, file: !38, line: 350, baseType: !145, size: 64, offset: 384)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2556, file: !38, line: 351, baseType: !790, size: 64, offset: 448)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2556, file: !38, line: 353, baseType: !790, size: 64, offset: 512)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2556, file: !38, line: 354, baseType: !194, size: 32, offset: 576)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2556, file: !38, line: 355, baseType: !194, size: 32, offset: 608)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2556, file: !38, line: 356, baseType: !145, size: 64, offset: 640)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2556, file: !38, line: 357, baseType: !145, size: 64, offset: 704)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2556, file: !38, line: 358, baseType: !145, size: 64, offset: 768)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2556, file: !38, line: 359, baseType: !790, size: 64, offset: 832)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2556, file: !38, line: 360, baseType: !194, size: 32, offset: 896)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2523, file: !38, line: 436, baseType: !2575, size: 64, offset: 448)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = !DISubroutineType(types: !2577)
!2577 = !{!194, !609, !2519, !2555}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2523, file: !38, line: 438, baseType: !2552, size: 64, offset: 512)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2523, file: !38, line: 439, baseType: !2580, size: 64, offset: 576)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{!194, !609, !2583}
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2585)
!2585 = !{!2586, !2587}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2584, file: !38, line: 410, baseType: !7, size: 32)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2584, file: !38, line: 411, baseType: !2588, size: 1344, offset: 64)
!2588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2589, size: 1344, elements: !295)
!2589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2590)
!2590 = !{!2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2601}
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2589, file: !38, line: 396, baseType: !7, size: 32)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2589, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2589, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2589, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2589, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2589, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2589, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2589, file: !38, line: 404, baseType: !149, size: 64, offset: 256)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2589, file: !38, line: 405, baseType: !2600, size: 64, offset: 320)
!2600 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !126, line: 126, baseType: !145)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2589, file: !38, line: 406, baseType: !2600, size: 64, offset: 384)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2523, file: !38, line: 440, baseType: !2531, size: 64, offset: 640)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !610, file: !44, line: 1426, baseType: !2604, size: 64, offset: 576)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2606)
!2606 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !610, file: !44, line: 1427, baseType: !156, size: 64, offset: 640)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !610, file: !44, line: 1428, baseType: !156, size: 64, offset: 704)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !610, file: !44, line: 1429, baseType: !156, size: 64, offset: 768)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !610, file: !44, line: 1430, baseType: !400, size: 64, offset: 832)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !610, file: !44, line: 1431, baseType: !780, size: 256, offset: 896)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !610, file: !44, line: 1432, baseType: !194, size: 32, offset: 1152)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !610, file: !44, line: 1433, baseType: !760, size: 32, offset: 1184)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !610, file: !44, line: 1437, baseType: !2615, size: 64, offset: 1216)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2618)
!2618 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !610, file: !44, line: 1449, baseType: !2620, size: 64, offset: 1280)
!2620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !416, line: 34, size: 64, elements: !2621)
!2621 = !{!2622}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2620, file: !416, line: 35, baseType: !419, size: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !610, file: !44, line: 1450, baseType: !132, size: 128, offset: 1344)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !610, file: !44, line: 1451, baseType: !2625, size: 64, offset: 1472)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !610, file: !44, line: 1452, baseType: !1934, size: 64, offset: 1536)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !610, file: !44, line: 1453, baseType: !2629, size: 64, offset: 1600)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !610, file: !44, line: 1454, baseType: !652, size: 128, offset: 1664)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !610, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !610, file: !44, line: 1456, baseType: !2634, size: 2432, offset: 1856)
!2634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2635)
!2635 = !{!2636, !2637, !2638, !2640, !2672}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2634, file: !38, line: 519, baseType: !7, size: 32)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2634, file: !38, line: 520, baseType: !780, size: 256, offset: 64)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2634, file: !38, line: 521, baseType: !2639, size: 192, offset: 320)
!2639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 192, elements: !295)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2634, file: !38, line: 522, baseType: !2641, size: 1728, offset: 512)
!2641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2642, size: 1728, elements: !295)
!2642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2643)
!2643 = !{!2644, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2642, file: !38, line: 223, baseType: !2645, size: 64)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2647)
!2647 = !{!2648, !2649, !2662, !2663}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2646, file: !38, line: 444, baseType: !194, size: 32)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2646, file: !38, line: 445, baseType: !2650, size: 64, offset: 64)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2652)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2653)
!2653 = !{!2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2652, file: !38, line: 311, baseType: !698, size: 64)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2652, file: !38, line: 312, baseType: !698, size: 64, offset: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2652, file: !38, line: 313, baseType: !698, size: 64, offset: 128)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2652, file: !38, line: 314, baseType: !698, size: 64, offset: 192)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2652, file: !38, line: 315, baseType: !2444, size: 64, offset: 256)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2652, file: !38, line: 316, baseType: !2444, size: 64, offset: 320)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2652, file: !38, line: 317, baseType: !2444, size: 64, offset: 384)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2652, file: !38, line: 318, baseType: !2516, size: 64, offset: 448)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2646, file: !38, line: 446, baseType: !643, size: 64, offset: 128)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2646, file: !38, line: 447, baseType: !2645, size: 64, offset: 192)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2642, file: !38, line: 224, baseType: !194, size: 32, offset: 64)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2642, file: !38, line: 226, baseType: !132, size: 128, offset: 128)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2642, file: !38, line: 227, baseType: !156, size: 64, offset: 256)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2642, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2642, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2642, file: !38, line: 230, baseType: !2480, size: 64, offset: 384)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2642, file: !38, line: 231, baseType: !2480, size: 64, offset: 448)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2642, file: !38, line: 232, baseType: !124, size: 64, offset: 512)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2634, file: !38, line: 523, baseType: !2673, size: 192, offset: 2240)
!2673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2650, size: 192, elements: !295)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !610, file: !44, line: 1458, baseType: !2675, size: 2112, offset: 4288)
!2675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2676)
!2676 = !{!2677, !2678, !2679}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2675, file: !44, line: 1411, baseType: !194, size: 32)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2675, file: !44, line: 1412, baseType: !1491, size: 128, offset: 64)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2675, file: !44, line: 1413, baseType: !2680, size: 1920, offset: 192)
!2680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2681, size: 1920, elements: !295)
!2681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2682, line: 12, size: 640, elements: !2683)
!2682 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2683 = !{!2684, !2692, !2694, !2699, !2700}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2681, file: !2682, line: 13, baseType: !2685, size: 320)
!2685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2686, line: 17, size: 320, elements: !2687)
!2686 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2687 = !{!2688, !2689, !2690, !2691}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2685, file: !2686, line: 18, baseType: !194, size: 32)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2685, file: !2686, line: 19, baseType: !194, size: 32, offset: 32)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2685, file: !2686, line: 20, baseType: !1491, size: 128, offset: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2685, file: !2686, line: 22, baseType: !383, size: 128, align: 64, offset: 192)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2681, file: !2682, line: 14, baseType: !2693, size: 64, offset: 320)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2681, file: !2682, line: 15, baseType: !2695, size: 64, offset: 384)
!2695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2696, line: 16, size: 64, elements: !2697)
!2696 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2697 = !{!2698}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2695, file: !2696, line: 17, baseType: !1227, size: 64)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2681, file: !2682, line: 16, baseType: !1491, size: 128, offset: 448)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2681, file: !2682, line: 17, baseType: !760, size: 32, offset: 576)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !610, file: !44, line: 1465, baseType: !124, size: 64, offset: 6400)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !610, file: !44, line: 1468, baseType: !208, size: 32, offset: 6464)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !610, file: !44, line: 1470, baseType: !549, size: 64, offset: 6528)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !610, file: !44, line: 1471, baseType: !549, size: 64, offset: 6592)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !610, file: !44, line: 1473, baseType: !209, size: 32, offset: 6656)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !610, file: !44, line: 1474, baseType: !2707, size: 64, offset: 6720)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !610, file: !44, line: 1477, baseType: !2710, size: 256, offset: 6784)
!2710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 256, elements: !2240)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !610, file: !44, line: 1478, baseType: !2712, size: 128, offset: 7040)
!2712 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2713, line: 18, baseType: !2714)
!2713 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2714 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2713, line: 16, size: 128, elements: !2715)
!2715 = !{!2716}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2714, file: !2713, line: 17, baseType: !2717, size: 128)
!2717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1364, size: 128, elements: !1745)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !610, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !610, file: !44, line: 1481, baseType: !2720, size: 32, offset: 7200)
!2720 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !126, line: 150, baseType: !7)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !610, file: !44, line: 1487, baseType: !1184, size: 192, offset: 7232)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !610, file: !44, line: 1493, baseType: !152, size: 64, offset: 7424)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !610, file: !44, line: 1495, baseType: !2724, size: 64, offset: 7488)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2726)
!2726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !398, line: 135, size: 1024, align: 512, elements: !2727)
!2727 = !{!2728, !2732, !2733, !2740, !2746, !2750, !2754, !2758, !2759, !2763, !2767, !2772, !2776}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2726, file: !398, line: 136, baseType: !2729, size: 64)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{!194, !400, !7}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2726, file: !398, line: 137, baseType: !2729, size: 64, offset: 64)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2726, file: !398, line: 138, baseType: !2734, size: 64, offset: 128)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{!194, !2737, !2739}
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !401)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2726, file: !398, line: 139, baseType: !2741, size: 64, offset: 192)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = !DISubroutineType(types: !2743)
!2743 = !{!194, !2737, !7, !152, !2744}
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !424)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2726, file: !398, line: 141, baseType: !2747, size: 64, offset: 256)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{!194, !2737}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2726, file: !398, line: 142, baseType: !2751, size: 64, offset: 320)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2752 = !DISubroutineType(types: !2753)
!2753 = !{!194, !400}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2726, file: !398, line: 143, baseType: !2755, size: 64, offset: 384)
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = !DISubroutineType(types: !2757)
!2757 = !{null, !400}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2726, file: !398, line: 144, baseType: !2755, size: 64, offset: 448)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2726, file: !398, line: 145, baseType: !2760, size: 64, offset: 512)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{null, !400, !439}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2726, file: !398, line: 146, baseType: !2764, size: 64, offset: 576)
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2765 = !DISubroutineType(types: !2766)
!2766 = !{!294, !400, !294, !194}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2726, file: !398, line: 147, baseType: !2768, size: 64, offset: 640)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = !DISubroutineType(types: !2770)
!2770 = !{!396, !2771}
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2726, file: !398, line: 148, baseType: !2773, size: 64, offset: 704)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DISubroutineType(types: !2775)
!2775 = !{!194, !559, !500}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2726, file: !398, line: 149, baseType: !2777, size: 64, offset: 768)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{!400, !400, !2780}
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !440)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !610, file: !44, line: 1500, baseType: !194, size: 32, offset: 7552)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !610, file: !44, line: 1502, baseType: !2784, size: 448, offset: 7616)
!2784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2428, line: 60, size: 448, elements: !2785)
!2785 = !{!2786, !2791, !2792, !2793, !2794, !2795, !2796}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2784, file: !2428, line: 61, baseType: !2787, size: 64)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{!156, !2790, !2426}
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2784, file: !2428, line: 63, baseType: !2787, size: 64, offset: 64)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2784, file: !2428, line: 66, baseType: !329, size: 64, offset: 128)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2784, file: !2428, line: 67, baseType: !194, size: 32, offset: 192)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2784, file: !2428, line: 68, baseType: !7, size: 32, offset: 224)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2784, file: !2428, line: 71, baseType: !132, size: 128, offset: 256)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2784, file: !2428, line: 77, baseType: !2797, size: 64, offset: 384)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !610, file: !44, line: 1505, baseType: !784, size: 64, offset: 8064)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !610, file: !44, line: 1508, baseType: !784, size: 64, offset: 8128)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !610, file: !44, line: 1511, baseType: !194, size: 32, offset: 8192)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !610, file: !44, line: 1514, baseType: !922, size: 32, offset: 8224)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !610, file: !44, line: 1517, baseType: !2803, size: 64, offset: 8256)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1969, line: 18, flags: DIFlagFwdDecl)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !610, file: !44, line: 1518, baseType: !648, size: 64, offset: 8320)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !610, file: !44, line: 1525, baseType: !1723, size: 64, offset: 8384)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !610, file: !44, line: 1532, baseType: !2808, size: 64, offset: 8448)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2809, line: 52, size: 64, elements: !2810)
!2809 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2810 = !{!2811}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2808, file: !2809, line: 53, baseType: !2812, size: 64)
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2809, line: 40, size: 256, elements: !2814)
!2814 = !{!2815, !2816, !2821}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2813, file: !2809, line: 42, baseType: !253)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2813, file: !2809, line: 44, baseType: !2817, size: 192)
!2817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2809, line: 28, size: 192, elements: !2818)
!2818 = !{!2819, !2820}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2817, file: !2809, line: 29, baseType: !132, size: 128)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2817, file: !2809, line: 31, baseType: !329, size: 64, offset: 128)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2813, file: !2809, line: 49, baseType: !329, size: 64, offset: 192)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !610, file: !44, line: 1533, baseType: !2808, size: 64, offset: 8512)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !610, file: !44, line: 1534, baseType: !383, size: 128, align: 64, offset: 8576)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !610, file: !44, line: 1535, baseType: !1968, size: 256, offset: 8704)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !610, file: !44, line: 1537, baseType: !1184, size: 192, offset: 8960)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !610, file: !44, line: 1542, baseType: !194, size: 32, offset: 9152)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !610, file: !44, line: 1545, baseType: !253, offset: 9184)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !610, file: !44, line: 1546, baseType: !132, size: 128, offset: 9216)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !610, file: !44, line: 1548, baseType: !253, offset: 9344)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !610, file: !44, line: 1549, baseType: !132, size: 128, offset: 9344)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !440, file: !44, line: 624, baseType: !747, size: 64, offset: 256)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !440, file: !44, line: 631, baseType: !156, size: 64, offset: 320)
!2833 = !DIDerivedType(tag: DW_TAG_member, scope: !440, file: !44, line: 639, baseType: !2834, size: 32, offset: 384)
!2834 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !440, file: !44, line: 639, size: 32, elements: !2835)
!2835 = !{!2836, !2838}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2834, file: !44, line: 640, baseType: !2837, size: 32)
!2837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2834, file: !44, line: 641, baseType: !7, size: 32)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !440, file: !44, line: 643, baseType: !523, size: 32, offset: 416)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !440, file: !44, line: 644, baseType: !541, size: 64, offset: 448)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !440, file: !44, line: 645, baseType: !545, size: 128, offset: 512)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !440, file: !44, line: 646, baseType: !545, size: 128, offset: 640)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !440, file: !44, line: 647, baseType: !545, size: 128, offset: 768)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !440, file: !44, line: 648, baseType: !253, offset: 896)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !440, file: !44, line: 649, baseType: !232, size: 16, offset: 896)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !440, file: !44, line: 650, baseType: !1363, size: 8, offset: 912)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !440, file: !44, line: 651, baseType: !1363, size: 8, offset: 920)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !440, file: !44, line: 652, baseType: !2600, size: 64, offset: 960)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !440, file: !44, line: 659, baseType: !156, size: 64, offset: 1024)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !440, file: !44, line: 660, baseType: !780, size: 256, offset: 1088)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !440, file: !44, line: 662, baseType: !156, size: 64, offset: 1344)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !440, file: !44, line: 663, baseType: !156, size: 64, offset: 1408)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !440, file: !44, line: 665, baseType: !652, size: 128, offset: 1472)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !440, file: !44, line: 666, baseType: !132, size: 128, offset: 1600)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !440, file: !44, line: 675, baseType: !132, size: 128, offset: 1728)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !440, file: !44, line: 676, baseType: !132, size: 128, offset: 1856)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !440, file: !44, line: 677, baseType: !132, size: 128, offset: 1984)
!2858 = !DIDerivedType(tag: DW_TAG_member, scope: !440, file: !44, line: 678, baseType: !2859, size: 128, offset: 2112)
!2859 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !440, file: !44, line: 678, size: 128, elements: !2860)
!2860 = !{!2861, !2862}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2859, file: !44, line: 679, baseType: !648, size: 64)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2859, file: !44, line: 680, baseType: !383, size: 128, align: 64)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !440, file: !44, line: 682, baseType: !786, size: 64, offset: 2240)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !440, file: !44, line: 683, baseType: !786, size: 64, offset: 2304)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !440, file: !44, line: 684, baseType: !760, size: 32, offset: 2368)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !440, file: !44, line: 685, baseType: !760, size: 32, offset: 2400)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !440, file: !44, line: 686, baseType: !760, size: 32, offset: 2432)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !440, file: !44, line: 688, baseType: !760, size: 32, offset: 2464)
!2869 = !DIDerivedType(tag: DW_TAG_member, scope: !440, file: !44, line: 690, baseType: !2870, size: 64, offset: 2496)
!2870 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !440, file: !44, line: 690, size: 64, elements: !2871)
!2871 = !{!2872, !3095}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2870, file: !44, line: 691, baseType: !2873, size: 64)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2875)
!2875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2876)
!2876 = !{!2877, !2878, !2882, !2887, !2891, !2892, !2893, !2897, !2910, !2911, !2919, !2923, !2924, !2928, !2929, !2933, !2938, !2939, !2943, !2947, !3055, !3059, !3060, !3064, !3065, !3069, !3073, !3078, !3082, !3086, !3090, !3094}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2875, file: !44, line: 1823, baseType: !643, size: 64)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2875, file: !44, line: 1824, baseType: !2879, size: 64, offset: 64)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!541, !370, !541, !194}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2875, file: !44, line: 1825, baseType: !2883, size: 64, offset: 128)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{!325, !370, !294, !340, !2886}
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2875, file: !44, line: 1826, baseType: !2888, size: 64, offset: 192)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{!325, !370, !152, !340, !2886}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2875, file: !44, line: 1827, baseType: !857, size: 64, offset: 256)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2875, file: !44, line: 1828, baseType: !857, size: 64, offset: 320)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2875, file: !44, line: 1829, baseType: !2894, size: 64, offset: 384)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!194, !860, !500}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2875, file: !44, line: 1830, baseType: !2898, size: 64, offset: 448)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{!194, !370, !2901}
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2903)
!2903 = !{!2904, !2909}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2902, file: !44, line: 1777, baseType: !2905, size: 64)
!2905 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2906)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{!194, !2901, !152, !194, !541, !145, !7}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2902, file: !44, line: 1778, baseType: !541, size: 64, offset: 64)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2875, file: !44, line: 1831, baseType: !2898, size: 64, offset: 512)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2875, file: !44, line: 1832, baseType: !2912, size: 64, offset: 576)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!2915, !370, !2917}
!2915 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2916, line: 52, baseType: !7)
!2916 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !629, line: 27, flags: DIFlagFwdDecl)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2875, file: !44, line: 1833, baseType: !2920, size: 64, offset: 640)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{!329, !370, !7, !156}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2875, file: !44, line: 1834, baseType: !2920, size: 64, offset: 704)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2875, file: !44, line: 1835, baseType: !2925, size: 64, offset: 768)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!194, !370, !994}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2875, file: !44, line: 1836, baseType: !156, size: 64, offset: 832)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2875, file: !44, line: 1837, baseType: !2930, size: 64, offset: 896)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!194, !439, !370}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2875, file: !44, line: 1838, baseType: !2934, size: 64, offset: 960)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{!194, !370, !2937}
!2937 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !124)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2875, file: !44, line: 1839, baseType: !2930, size: 64, offset: 1024)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2875, file: !44, line: 1840, baseType: !2940, size: 64, offset: 1088)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!194, !370, !541, !541, !194}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2875, file: !44, line: 1841, baseType: !2944, size: 64, offset: 1152)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{!194, !194, !370, !194}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2875, file: !44, line: 1842, baseType: !2948, size: 64, offset: 1216)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{!194, !370, !194, !2951}
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2953)
!2953 = !{!2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2985, !2986, !2987, !3000, !3031}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2952, file: !44, line: 1063, baseType: !2951, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2952, file: !44, line: 1064, baseType: !132, size: 128, offset: 64)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2952, file: !44, line: 1065, baseType: !652, size: 128, offset: 192)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2952, file: !44, line: 1066, baseType: !132, size: 128, offset: 320)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2952, file: !44, line: 1069, baseType: !132, size: 128, offset: 448)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2952, file: !44, line: 1072, baseType: !2937, size: 64, offset: 576)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2952, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2952, file: !44, line: 1074, baseType: !223, size: 8, offset: 672)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2952, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2952, file: !44, line: 1076, baseType: !194, size: 32, offset: 736)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2952, file: !44, line: 1077, baseType: !1491, size: 128, offset: 768)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2952, file: !44, line: 1078, baseType: !370, size: 64, offset: 896)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2952, file: !44, line: 1079, baseType: !541, size: 64, offset: 960)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2952, file: !44, line: 1080, baseType: !541, size: 64, offset: 1024)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2952, file: !44, line: 1082, baseType: !2969, size: 64, offset: 1088)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2971)
!2971 = !{!2972, !2980, !2981, !2982, !2983, !2984}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2970, file: !44, line: 1315, baseType: !2973)
!2973 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2974, line: 20, baseType: !2975)
!2974 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2975 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2974, line: 11, elements: !2976)
!2976 = !{!2977}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2975, file: !2974, line: 12, baseType: !2978)
!2978 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !265, line: 33, baseType: !2979)
!2979 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !265, line: 31, elements: !267)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2970, file: !44, line: 1316, baseType: !194, size: 32)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2970, file: !44, line: 1317, baseType: !194, size: 32, offset: 32)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2970, file: !44, line: 1318, baseType: !2969, size: 64, offset: 64)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2970, file: !44, line: 1319, baseType: !370, size: 64, offset: 128)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2970, file: !44, line: 1320, baseType: !383, size: 128, align: 64, offset: 192)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2952, file: !44, line: 1084, baseType: !156, size: 64, offset: 1152)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2952, file: !44, line: 1085, baseType: !156, size: 64, offset: 1216)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2952, file: !44, line: 1087, baseType: !2988, size: 64, offset: 1280)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2990)
!2990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !2991)
!2991 = !{!2992, !2996}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2990, file: !44, line: 1012, baseType: !2993, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{null, !2951, !2951}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2990, file: !44, line: 1013, baseType: !2997, size: 64, offset: 64)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{null, !2951}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2952, file: !44, line: 1088, baseType: !3001, size: 64, offset: 1344)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3003)
!3003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !3004)
!3004 = !{!3005, !3009, !3013, !3014, !3018, !3022, !3026, !3030}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3003, file: !44, line: 1017, baseType: !3006, size: 64)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{!2937, !2937}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3003, file: !44, line: 1018, baseType: !3010, size: 64, offset: 64)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{null, !2937}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3003, file: !44, line: 1019, baseType: !2997, size: 64, offset: 128)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3003, file: !44, line: 1020, baseType: !3015, size: 64, offset: 192)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{!194, !2951, !194}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3003, file: !44, line: 1021, baseType: !3019, size: 64, offset: 256)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!500, !2951}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3003, file: !44, line: 1022, baseType: !3023, size: 64, offset: 320)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!194, !2951, !194, !135}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3003, file: !44, line: 1023, baseType: !3027, size: 64, offset: 384)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{null, !2951, !834}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3003, file: !44, line: 1024, baseType: !3019, size: 64, offset: 448)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2952, file: !44, line: 1097, baseType: !3032, size: 256, offset: 1408)
!3032 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2952, file: !44, line: 1089, size: 256, elements: !3033)
!3033 = !{!3034, !3043, !3049}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3032, file: !44, line: 1090, baseType: !3035, size: 256)
!3035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3036, line: 10, size: 256, elements: !3037)
!3036 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3037 = !{!3038, !3039, !3042}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3035, file: !3036, line: 11, baseType: !208, size: 32)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3035, file: !3036, line: 12, baseType: !3040, size: 64, offset: 64)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3036, line: 5, flags: DIFlagFwdDecl)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3035, file: !3036, line: 13, baseType: !132, size: 128, offset: 128)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3032, file: !44, line: 1091, baseType: !3044, size: 64)
!3044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3036, line: 17, size: 64, elements: !3045)
!3045 = !{!3046}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3044, file: !3036, line: 18, baseType: !3047, size: 64)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3036, line: 16, flags: DIFlagFwdDecl)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3032, file: !44, line: 1096, baseType: !3050, size: 192)
!3050 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3032, file: !44, line: 1092, size: 192, elements: !3051)
!3051 = !{!3052, !3053, !3054}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3050, file: !44, line: 1093, baseType: !132, size: 128)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3050, file: !44, line: 1094, baseType: !194, size: 32, offset: 128)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3050, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2875, file: !44, line: 1843, baseType: !3056, size: 64, offset: 1280)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{!325, !370, !734, !194, !340, !2886, !194}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2875, file: !44, line: 1844, baseType: !1114, size: 64, offset: 1344)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2875, file: !44, line: 1845, baseType: !3061, size: 64, offset: 1408)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{!194, !194}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2875, file: !44, line: 1846, baseType: !2948, size: 64, offset: 1472)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2875, file: !44, line: 1847, baseType: !3066, size: 64, offset: 1536)
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{!325, !2109, !370, !2886, !340, !7}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2875, file: !44, line: 1848, baseType: !3070, size: 64, offset: 1600)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{!325, !370, !2886, !2109, !340, !7}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2875, file: !44, line: 1849, baseType: !3074, size: 64, offset: 1664)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{!194, !370, !329, !3077, !834}
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2875, file: !44, line: 1850, baseType: !3079, size: 64, offset: 1728)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{!329, !370, !194, !541, !541}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2875, file: !44, line: 1852, baseType: !3083, size: 64, offset: 1792)
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{null, !724, !370}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2875, file: !44, line: 1856, baseType: !3087, size: 64, offset: 1856)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!325, !370, !541, !370, !541, !340, !7}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2875, file: !44, line: 1858, baseType: !3091, size: 64, offset: 1920)
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3092, size: 64)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{!541, !370, !541, !370, !541, !541, !7}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2875, file: !44, line: 1861, baseType: !2940, size: 64, offset: 1984)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2870, file: !44, line: 692, baseType: !677, size: 64)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !440, file: !44, line: 694, baseType: !3097, size: 64, offset: 2560)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3099)
!3099 = !{!3100, !3101, !3102, !3103}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3098, file: !44, line: 1101, baseType: !253)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3098, file: !44, line: 1102, baseType: !132, size: 128)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3098, file: !44, line: 1103, baseType: !132, size: 128, offset: 128)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3098, file: !44, line: 1104, baseType: !132, size: 128, offset: 256)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !440, file: !44, line: 695, baseType: !748, size: 1216, align: 64, offset: 2624)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !440, file: !44, line: 696, baseType: !132, size: 128, offset: 3840)
!3106 = !DIDerivedType(tag: DW_TAG_member, scope: !440, file: !44, line: 697, baseType: !3107, size: 64, offset: 3968)
!3107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !440, file: !44, line: 697, size: 64, elements: !3108)
!3108 = !{!3109, !3110, !3111, !3114, !3115}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3107, file: !44, line: 698, baseType: !2109, size: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3107, file: !44, line: 699, baseType: !2625, size: 64)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3107, file: !44, line: 700, baseType: !3112, size: 64)
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3113 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3107, file: !44, line: 701, baseType: !294, size: 64)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3107, file: !44, line: 702, baseType: !7, size: 32)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !440, file: !44, line: 705, baseType: !209, size: 32, offset: 4032)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !440, file: !44, line: 708, baseType: !209, size: 32, offset: 4064)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !440, file: !44, line: 709, baseType: !2707, size: 64, offset: 4096)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !440, file: !44, line: 720, baseType: !124, size: 64, offset: 4160)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !401, file: !398, line: 98, baseType: !3121, size: 256, offset: 448)
!3121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 256, elements: !2240)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !401, file: !398, line: 101, baseType: !3123, size: 32, offset: 704)
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3124, line: 25, size: 32, elements: !3125)
!3124 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3125 = !{!3126}
!3126 = !DIDerivedType(tag: DW_TAG_member, scope: !3123, file: !3124, line: 26, baseType: !3127, size: 32)
!3127 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3123, file: !3124, line: 26, size: 32, elements: !3128)
!3128 = !{!3129}
!3129 = !DIDerivedType(tag: DW_TAG_member, scope: !3127, file: !3124, line: 30, baseType: !3130, size: 32)
!3130 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3127, file: !3124, line: 30, size: 32, elements: !3131)
!3131 = !{!3132, !3133}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3130, file: !3124, line: 31, baseType: !253)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3130, file: !3124, line: 32, baseType: !194, size: 32)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !401, file: !398, line: 102, baseType: !2724, size: 64, offset: 768)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !401, file: !398, line: 103, baseType: !609, size: 64, offset: 832)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !401, file: !398, line: 104, baseType: !156, size: 64, offset: 896)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !401, file: !398, line: 105, baseType: !124, size: 64, offset: 960)
!3138 = !DIDerivedType(tag: DW_TAG_member, scope: !401, file: !398, line: 107, baseType: !3139, size: 128, offset: 1024)
!3139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !401, file: !398, line: 107, size: 128, elements: !3140)
!3140 = !{!3141, !3142}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3139, file: !398, line: 108, baseType: !132, size: 128)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3139, file: !398, line: 109, baseType: !3143, size: 64)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !401, file: !398, line: 111, baseType: !132, size: 128, offset: 1152)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !401, file: !398, line: 112, baseType: !132, size: 128, offset: 1280)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !401, file: !398, line: 120, baseType: !3147, size: 128, offset: 1408)
!3147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !401, file: !398, line: 116, size: 128, elements: !3148)
!3148 = !{!3149, !3150, !3151}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3147, file: !398, line: 117, baseType: !652, size: 128)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3147, file: !398, line: 118, baseType: !415, size: 128)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3147, file: !398, line: 119, baseType: !383, size: 128, align: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !371, file: !44, line: 922, baseType: !439, size: 64, offset: 256)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !371, file: !44, line: 923, baseType: !2873, size: 64, offset: 320)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !371, file: !44, line: 929, baseType: !253, offset: 384)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !371, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !371, file: !44, line: 931, baseType: !784, size: 64, offset: 448)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !371, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !371, file: !44, line: 933, baseType: !2720, size: 32, offset: 544)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !371, file: !44, line: 934, baseType: !1184, size: 192, offset: 576)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !371, file: !44, line: 935, baseType: !541, size: 64, offset: 768)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !371, file: !44, line: 936, baseType: !3162, size: 192, offset: 832)
!3162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3163)
!3163 = !{!3164, !3165, !3166, !3167, !3168, !3169}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3162, file: !44, line: 886, baseType: !2973)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3162, file: !44, line: 887, baseType: !1481, size: 64)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3162, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3162, file: !44, line: 889, baseType: !445, size: 32, offset: 96)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3162, file: !44, line: 889, baseType: !445, size: 32, offset: 128)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3162, file: !44, line: 890, baseType: !194, size: 32, offset: 160)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !371, file: !44, line: 937, baseType: !1557, size: 64, offset: 1024)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !371, file: !44, line: 938, baseType: !3172, size: 256, offset: 1088)
!3172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3173)
!3173 = !{!3174, !3175, !3176, !3177, !3178, !3179}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3172, file: !44, line: 897, baseType: !156, size: 64)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3172, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3172, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3172, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3172, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3172, file: !44, line: 904, baseType: !541, size: 64, offset: 192)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !371, file: !44, line: 940, baseType: !145, size: 64, offset: 1344)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !371, file: !44, line: 945, baseType: !124, size: 64, offset: 1408)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !371, file: !44, line: 949, baseType: !132, size: 128, offset: 1472)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !371, file: !44, line: 950, baseType: !132, size: 128, offset: 1600)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !371, file: !44, line: 952, baseType: !747, size: 64, offset: 1728)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !371, file: !44, line: 953, baseType: !922, size: 32, offset: 1792)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !371, file: !44, line: 954, baseType: !922, size: 32, offset: 1824)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !361, file: !319, line: 174, baseType: !367, size: 64, offset: 320)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !361, file: !319, line: 176, baseType: !3189, size: 64, offset: 384)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{!194, !370, !246, !360, !994}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !349, file: !319, line: 90, baseType: !344, size: 64, offset: 192)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !349, file: !319, line: 91, baseType: !3194, size: 64, offset: 256)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !309, file: !241, line: 143, baseType: !3196, size: 64, offset: 256)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{!3199, !246}
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3201)
!3201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3202)
!3202 = !{!3203, !3204, !3208, !3212, !3218, !3222}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3201, file: !61, line: 40, baseType: !60, size: 32)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3201, file: !61, line: 41, baseType: !3205, size: 64, offset: 64)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!500}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3201, file: !61, line: 42, baseType: !3209, size: 64, offset: 128)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!124}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3201, file: !61, line: 43, baseType: !3213, size: 64, offset: 192)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!2137, !3216}
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3201, file: !61, line: 44, baseType: !3219, size: 64, offset: 256)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{!2137}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3201, file: !61, line: 45, baseType: !478, size: 64, offset: 320)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !309, file: !241, line: 144, baseType: !3224, size: 64, offset: 320)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!2137, !246}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !309, file: !241, line: 145, baseType: !3228, size: 64, offset: 384)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{null, !246, !3231, !3232}
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !240, file: !241, line: 70, baseType: !3234, size: 64, offset: 384)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !629, line: 123, size: 1024, elements: !3236)
!3236 = !{!3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3365, !3366, !3367, !3368, !3369}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3235, file: !629, line: 124, baseType: !760, size: 32)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3235, file: !629, line: 125, baseType: !760, size: 32, offset: 32)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3235, file: !629, line: 135, baseType: !3234, size: 64, offset: 64)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3235, file: !629, line: 136, baseType: !152, size: 64, offset: 128)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3235, file: !629, line: 138, baseType: !773, size: 192, align: 64, offset: 192)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3235, file: !629, line: 140, baseType: !2137, size: 64, offset: 384)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3235, file: !629, line: 141, baseType: !7, size: 32, offset: 448)
!3244 = !DIDerivedType(tag: DW_TAG_member, scope: !3235, file: !629, line: 142, baseType: !3245, size: 256, offset: 512)
!3245 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3235, file: !629, line: 142, size: 256, elements: !3246)
!3246 = !{!3247, !3293, !3297}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3245, file: !629, line: 143, baseType: !3248, size: 192)
!3248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !629, line: 91, size: 192, elements: !3249)
!3249 = !{!3250, !3251, !3252}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3248, file: !629, line: 92, baseType: !156, size: 64)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3248, file: !629, line: 94, baseType: !769, size: 64, offset: 64)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3248, file: !629, line: 100, baseType: !3253, size: 64, offset: 128)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !629, line: 180, size: 704, elements: !3255)
!3255 = !{!3256, !3257, !3258, !3265, !3266, !3267, !3291, !3292}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3254, file: !629, line: 182, baseType: !3234, size: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3254, file: !629, line: 183, baseType: !7, size: 32, offset: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3254, file: !629, line: 186, baseType: !3259, size: 192, offset: 128)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3260, line: 19, size: 192, elements: !3261)
!3260 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3261 = !{!3262, !3263, !3264}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3259, file: !3260, line: 20, baseType: !752, size: 128)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3259, file: !3260, line: 21, baseType: !7, size: 32, offset: 128)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3259, file: !3260, line: 22, baseType: !7, size: 32, offset: 160)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3254, file: !629, line: 187, baseType: !208, size: 32, offset: 320)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3254, file: !629, line: 188, baseType: !208, size: 32, offset: 352)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3254, file: !629, line: 189, baseType: !3268, size: 64, offset: 384)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !629, line: 168, size: 320, elements: !3270)
!3270 = !{!3271, !3275, !3279, !3283, !3287}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3269, file: !629, line: 169, baseType: !3272, size: 64)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{!194, !724, !3253}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3269, file: !629, line: 171, baseType: !3276, size: 64, offset: 64)
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{!194, !3234, !152, !335}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3269, file: !629, line: 173, baseType: !3280, size: 64, offset: 128)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = !DISubroutineType(types: !3282)
!3282 = !{!194, !3234}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3269, file: !629, line: 174, baseType: !3284, size: 64, offset: 192)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = !DISubroutineType(types: !3286)
!3286 = !{!194, !3234, !3234, !152}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3269, file: !629, line: 176, baseType: !3288, size: 64, offset: 256)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = !DISubroutineType(types: !3290)
!3290 = !{!194, !724, !3234, !3253}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3254, file: !629, line: 192, baseType: !132, size: 128, offset: 448)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3254, file: !629, line: 194, baseType: !1491, size: 128, offset: 576)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3245, file: !629, line: 144, baseType: !3294, size: 64)
!3294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !629, line: 103, size: 64, elements: !3295)
!3295 = !{!3296}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3294, file: !629, line: 104, baseType: !3234, size: 64)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3245, file: !629, line: 145, baseType: !3298, size: 256)
!3298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !629, line: 107, size: 256, elements: !3299)
!3299 = !{!3300, !3360, !3363, !3364}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3298, file: !629, line: 108, baseType: !3301, size: 64)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3303)
!3303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !629, line: 217, size: 768, elements: !3304)
!3304 = !{!3305, !3325, !3329, !3333, !3337, !3341, !3345, !3349, !3350, !3351, !3352, !3356}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3303, file: !629, line: 222, baseType: !3306, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!194, !3309}
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !629, line: 197, size: 1088, elements: !3311)
!3311 = !{!3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3310, file: !629, line: 199, baseType: !3234, size: 64)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3310, file: !629, line: 200, baseType: !370, size: 64, offset: 64)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3310, file: !629, line: 201, baseType: !724, size: 64, offset: 128)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3310, file: !629, line: 202, baseType: !124, size: 64, offset: 192)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3310, file: !629, line: 205, baseType: !1184, size: 192, offset: 256)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3310, file: !629, line: 206, baseType: !1184, size: 192, offset: 448)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3310, file: !629, line: 207, baseType: !194, size: 32, offset: 640)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3310, file: !629, line: 208, baseType: !132, size: 128, offset: 704)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3310, file: !629, line: 209, baseType: !294, size: 64, offset: 832)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3310, file: !629, line: 211, baseType: !340, size: 64, offset: 896)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3310, file: !629, line: 212, baseType: !500, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3310, file: !629, line: 213, baseType: !500, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3310, file: !629, line: 214, baseType: !1022, size: 64, offset: 1024)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3303, file: !629, line: 223, baseType: !3326, size: 64, offset: 64)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DISubroutineType(types: !3328)
!3328 = !{null, !3309}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3303, file: !629, line: 236, baseType: !3330, size: 64, offset: 128)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!194, !724, !124}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3303, file: !629, line: 238, baseType: !3334, size: 64, offset: 192)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{!124, !724, !2886}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3303, file: !629, line: 239, baseType: !3338, size: 64, offset: 256)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DISubroutineType(types: !3340)
!3340 = !{!124, !724, !124, !2886}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3303, file: !629, line: 240, baseType: !3342, size: 64, offset: 320)
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3343 = !DISubroutineType(types: !3344)
!3344 = !{null, !724, !124}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3303, file: !629, line: 242, baseType: !3346, size: 64, offset: 384)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = !DISubroutineType(types: !3348)
!3348 = !{!325, !3309, !294, !340, !541}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3303, file: !629, line: 252, baseType: !340, size: 64, offset: 448)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3303, file: !629, line: 259, baseType: !500, size: 8, offset: 512)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3303, file: !629, line: 260, baseType: !3346, size: 64, offset: 576)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3303, file: !629, line: 263, baseType: !3353, size: 64, offset: 640)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DISubroutineType(types: !3355)
!3355 = !{!2915, !3309, !2917}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3303, file: !629, line: 266, baseType: !3357, size: 64, offset: 704)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{!194, !3309, !994}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3298, file: !629, line: 109, baseType: !3361, size: 64, offset: 64)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !629, line: 31, flags: DIFlagFwdDecl)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3298, file: !629, line: 110, baseType: !541, size: 64, offset: 128)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3298, file: !629, line: 111, baseType: !3234, size: 64, offset: 192)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3235, file: !629, line: 148, baseType: !124, size: 64, offset: 768)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3235, file: !629, line: 154, baseType: !145, size: 64, offset: 832)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3235, file: !629, line: 156, baseType: !232, size: 16, offset: 896)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3235, file: !629, line: 157, baseType: !335, size: 16, offset: 912)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3235, file: !629, line: 158, baseType: !3370, size: 64, offset: 960)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !629, line: 32, flags: DIFlagFwdDecl)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !240, file: !241, line: 71, baseType: !3373, size: 32, offset: 448)
!3373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3374, line: 19, size: 32, elements: !3375)
!3374 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3375 = !{!3376}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3373, file: !3374, line: 20, baseType: !1241, size: 32)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !240, file: !241, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !240, file: !241, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !240, file: !241, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !240, file: !241, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !240, file: !241, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !237, file: !73, line: 463, baseType: !236, size: 64, offset: 512)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !237, file: !73, line: 465, baseType: !3384, size: 64, offset: 576)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !237, file: !73, line: 467, baseType: !152, size: 64, offset: 640)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !237, file: !73, line: 468, baseType: !3388, size: 64, offset: 704)
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3390)
!3390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3391)
!3391 = !{!3392, !3393, !3394, !3398, !3403, !3407}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3390, file: !73, line: 88, baseType: !152, size: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3390, file: !73, line: 89, baseType: !346, size: 64, offset: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3390, file: !73, line: 90, baseType: !3395, size: 64, offset: 128)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{!194, !236, !289}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3390, file: !73, line: 91, baseType: !3399, size: 64, offset: 192)
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = !DISubroutineType(types: !3401)
!3401 = !{!294, !236, !3402, !3231, !3232}
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3390, file: !73, line: 93, baseType: !3404, size: 64, offset: 256)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{null, !236}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3390, file: !73, line: 95, baseType: !3408, size: 64, offset: 320)
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3410)
!3410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3411)
!3411 = !{!3412, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3410, file: !80, line: 279, baseType: !3413, size: 64)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = !DISubroutineType(types: !3415)
!3415 = !{!194, !236}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3410, file: !80, line: 280, baseType: !3404, size: 64, offset: 64)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3410, file: !80, line: 281, baseType: !3413, size: 64, offset: 128)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3410, file: !80, line: 282, baseType: !3413, size: 64, offset: 192)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3410, file: !80, line: 283, baseType: !3413, size: 64, offset: 256)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3410, file: !80, line: 284, baseType: !3413, size: 64, offset: 320)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3410, file: !80, line: 285, baseType: !3413, size: 64, offset: 384)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3410, file: !80, line: 286, baseType: !3413, size: 64, offset: 448)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3410, file: !80, line: 287, baseType: !3413, size: 64, offset: 512)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3410, file: !80, line: 288, baseType: !3413, size: 64, offset: 576)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3410, file: !80, line: 289, baseType: !3413, size: 64, offset: 640)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3410, file: !80, line: 290, baseType: !3413, size: 64, offset: 704)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3410, file: !80, line: 291, baseType: !3413, size: 64, offset: 768)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3410, file: !80, line: 292, baseType: !3413, size: 64, offset: 832)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3410, file: !80, line: 293, baseType: !3413, size: 64, offset: 896)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3410, file: !80, line: 294, baseType: !3413, size: 64, offset: 960)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3410, file: !80, line: 295, baseType: !3413, size: 64, offset: 1024)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3410, file: !80, line: 296, baseType: !3413, size: 64, offset: 1088)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3410, file: !80, line: 297, baseType: !3413, size: 64, offset: 1152)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3410, file: !80, line: 298, baseType: !3413, size: 64, offset: 1216)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3410, file: !80, line: 299, baseType: !3413, size: 64, offset: 1280)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3410, file: !80, line: 300, baseType: !3413, size: 64, offset: 1344)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3410, file: !80, line: 301, baseType: !3413, size: 64, offset: 1408)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !237, file: !73, line: 470, baseType: !3439, size: 64, offset: 768)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3441, line: 82, size: 1408, elements: !3442)
!3441 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3442 = !{!3443, !3444, !3445, !3446, !3447, !3448, !3449, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3524, !3527, !3528}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3440, file: !3441, line: 83, baseType: !152, size: 64)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3440, file: !3441, line: 84, baseType: !152, size: 64, offset: 64)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3440, file: !3441, line: 85, baseType: !236, size: 64, offset: 128)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3440, file: !3441, line: 86, baseType: !346, size: 64, offset: 192)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3440, file: !3441, line: 87, baseType: !346, size: 64, offset: 256)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3440, file: !3441, line: 88, baseType: !346, size: 64, offset: 320)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3440, file: !3441, line: 90, baseType: !3450, size: 64, offset: 384)
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{!194, !236, !3453}
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3455)
!3455 = !{!3456, !3457, !3458, !3459, !3460, !3461, !3462, !3475, !3488, !3489, !3490, !3491, !3492, !3500, !3501, !3502, !3503, !3504, !3505}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3454, file: !67, line: 96, baseType: !152, size: 64)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3454, file: !67, line: 97, baseType: !3439, size: 64, offset: 64)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3454, file: !67, line: 99, baseType: !643, size: 64, offset: 128)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3454, file: !67, line: 100, baseType: !152, size: 64, offset: 192)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3454, file: !67, line: 102, baseType: !500, size: 8, offset: 256)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3454, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3454, file: !67, line: 105, baseType: !3463, size: 64, offset: 320)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3465)
!3465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3466, line: 262, size: 1600, elements: !3467)
!3466 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3467 = !{!3468, !3469, !3470, !3474}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3465, file: !3466, line: 263, baseType: !2710, size: 256)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3465, file: !3466, line: 264, baseType: !2710, size: 256, offset: 256)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3465, file: !3466, line: 265, baseType: !3471, size: 1024, offset: 512)
!3471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 1024, elements: !3472)
!3472 = !{!3473}
!3473 = !DISubrange(count: 128)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3465, file: !3466, line: 266, baseType: !2137, size: 64, offset: 1536)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3454, file: !67, line: 106, baseType: !3476, size: 64, offset: 384)
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3478)
!3478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3466, line: 210, size: 256, elements: !3479)
!3479 = !{!3480, !3484, !3486, !3487}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3478, file: !3466, line: 211, baseType: !3481, size: 72)
!3481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1364, size: 72, elements: !3482)
!3482 = !{!3483}
!3483 = !DISubrange(count: 9)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3478, file: !3466, line: 212, baseType: !3485, size: 64, offset: 128)
!3485 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3466, line: 14, baseType: !156)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3478, file: !3466, line: 213, baseType: !209, size: 32, offset: 192)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3478, file: !3466, line: 214, baseType: !209, size: 32, offset: 224)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3454, file: !67, line: 108, baseType: !3413, size: 64, offset: 448)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3454, file: !67, line: 109, baseType: !3404, size: 64, offset: 512)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3454, file: !67, line: 110, baseType: !3413, size: 64, offset: 576)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3454, file: !67, line: 111, baseType: !3404, size: 64, offset: 640)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3454, file: !67, line: 112, baseType: !3493, size: 64, offset: 704)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = !DISubroutineType(types: !3495)
!3495 = !{!194, !236, !3496}
!3496 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3497)
!3497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3498)
!3498 = !{!3499}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3497, file: !80, line: 51, baseType: !194, size: 32)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3454, file: !67, line: 113, baseType: !3413, size: 64, offset: 768)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3454, file: !67, line: 114, baseType: !346, size: 64, offset: 832)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3454, file: !67, line: 115, baseType: !346, size: 64, offset: 896)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3454, file: !67, line: 117, baseType: !3408, size: 64, offset: 960)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3454, file: !67, line: 118, baseType: !3404, size: 64, offset: 1024)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3454, file: !67, line: 120, baseType: !3506, size: 64, offset: 1088)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3440, file: !3441, line: 91, baseType: !3395, size: 64, offset: 448)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3440, file: !3441, line: 92, baseType: !3413, size: 64, offset: 512)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3440, file: !3441, line: 93, baseType: !3404, size: 64, offset: 576)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3440, file: !3441, line: 94, baseType: !3413, size: 64, offset: 640)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3440, file: !3441, line: 95, baseType: !3404, size: 64, offset: 704)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3440, file: !3441, line: 97, baseType: !3413, size: 64, offset: 768)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3440, file: !3441, line: 98, baseType: !3413, size: 64, offset: 832)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3440, file: !3441, line: 100, baseType: !3493, size: 64, offset: 896)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3440, file: !3441, line: 101, baseType: !3413, size: 64, offset: 960)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3440, file: !3441, line: 103, baseType: !3413, size: 64, offset: 1024)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3440, file: !3441, line: 105, baseType: !3413, size: 64, offset: 1088)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3440, file: !3441, line: 107, baseType: !3408, size: 64, offset: 1152)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3440, file: !3441, line: 109, baseType: !3521, size: 64, offset: 1216)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3523)
!3523 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3441, line: 109, flags: DIFlagFwdDecl)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3440, file: !3441, line: 111, baseType: !3525, size: 64, offset: 1280)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3441, line: 111, flags: DIFlagFwdDecl)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3440, file: !3441, line: 112, baseType: !658, offset: 1344)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3440, file: !3441, line: 114, baseType: !500, size: 8, offset: 1344)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !237, file: !73, line: 471, baseType: !3453, size: 64, offset: 832)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !237, file: !73, line: 473, baseType: !124, size: 64, offset: 896)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !237, file: !73, line: 475, baseType: !124, size: 64, offset: 960)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !237, file: !73, line: 480, baseType: !1184, size: 192, offset: 1024)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !237, file: !73, line: 484, baseType: !3534, size: 576, offset: 1216)
!3534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3535)
!3535 = !{!3536, !3537, !3538, !3539, !3540, !3541}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3534, file: !73, line: 362, baseType: !132, size: 128)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3534, file: !73, line: 363, baseType: !132, size: 128, offset: 128)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3534, file: !73, line: 364, baseType: !132, size: 128, offset: 256)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3534, file: !73, line: 365, baseType: !132, size: 128, offset: 384)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3534, file: !73, line: 366, baseType: !500, size: 8, offset: 512)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3534, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !237, file: !73, line: 485, baseType: !3543, size: 2304, offset: 1792)
!3543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3544)
!3544 = !{!3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3640, !3644}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3543, file: !80, line: 566, baseType: !3496, size: 32)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3543, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3543, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3543, file: !80, line: 569, baseType: !500, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3543, file: !80, line: 570, baseType: !500, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3543, file: !80, line: 571, baseType: !500, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3543, file: !80, line: 572, baseType: !500, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3543, file: !80, line: 573, baseType: !500, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3543, file: !80, line: 574, baseType: !500, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3543, file: !80, line: 575, baseType: !500, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3543, file: !80, line: 576, baseType: !500, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3543, file: !80, line: 577, baseType: !208, size: 32, offset: 64)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3543, file: !80, line: 578, baseType: !253, offset: 96)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3543, file: !80, line: 580, baseType: !132, size: 128, offset: 128)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3543, file: !80, line: 581, baseType: !1512, size: 192, offset: 256)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3543, file: !80, line: 582, baseType: !3561, size: 64, offset: 448)
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3563, line: 43, size: 1472, elements: !3564)
!3563 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3564 = !{!3565, !3566, !3567, !3568, !3569, !3572, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3562, file: !3563, line: 44, baseType: !152, size: 64)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3562, file: !3563, line: 45, baseType: !194, size: 32, offset: 64)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3562, file: !3563, line: 46, baseType: !132, size: 128, offset: 128)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3562, file: !3563, line: 47, baseType: !253, offset: 256)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3562, file: !3563, line: 48, baseType: !3570, size: 64, offset: 256)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3562, file: !3563, line: 49, baseType: !3573, size: 320, offset: 320)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3574, line: 11, size: 320, elements: !3575)
!3574 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3575 = !{!3576, !3577, !3578, !3583}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3573, file: !3574, line: 16, baseType: !652, size: 128)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3573, file: !3574, line: 17, baseType: !156, size: 64, offset: 128)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3573, file: !3574, line: 18, baseType: !3579, size: 64, offset: 192)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3580 = !DISubroutineType(types: !3581)
!3581 = !{null, !3582}
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3573, file: !3574, line: 19, baseType: !208, size: 32, offset: 256)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3562, file: !3563, line: 50, baseType: !156, size: 64, offset: 640)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3562, file: !3563, line: 51, baseType: !1311, size: 64, offset: 704)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3562, file: !3563, line: 52, baseType: !1311, size: 64, offset: 768)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3562, file: !3563, line: 53, baseType: !1311, size: 64, offset: 832)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3562, file: !3563, line: 54, baseType: !1311, size: 64, offset: 896)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3562, file: !3563, line: 55, baseType: !1311, size: 64, offset: 960)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3562, file: !3563, line: 56, baseType: !156, size: 64, offset: 1024)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3562, file: !3563, line: 57, baseType: !156, size: 64, offset: 1088)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3562, file: !3563, line: 58, baseType: !156, size: 64, offset: 1152)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3562, file: !3563, line: 59, baseType: !156, size: 64, offset: 1216)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3562, file: !3563, line: 60, baseType: !156, size: 64, offset: 1280)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3562, file: !3563, line: 61, baseType: !236, size: 64, offset: 1344)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3562, file: !3563, line: 62, baseType: !500, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3562, file: !3563, line: 63, baseType: !500, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3543, file: !80, line: 583, baseType: !500, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3543, file: !80, line: 584, baseType: !500, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3543, file: !80, line: 585, baseType: !500, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3543, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3543, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3543, file: !80, line: 592, baseType: !1303, size: 512, offset: 576)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3543, file: !80, line: 593, baseType: !145, size: 64, offset: 1088)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3543, file: !80, line: 594, baseType: !1968, size: 256, offset: 1152)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3543, file: !80, line: 595, baseType: !1491, size: 128, offset: 1408)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3543, file: !80, line: 596, baseType: !3570, size: 64, offset: 1536)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3543, file: !80, line: 597, baseType: !760, size: 32, offset: 1600)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3543, file: !80, line: 598, baseType: !760, size: 32, offset: 1632)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3543, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3543, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3543, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3543, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3543, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3543, file: !80, line: 604, baseType: !500, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3543, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3543, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3543, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3543, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3543, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3543, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3543, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3543, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3543, file: !80, line: 613, baseType: !194, size: 32, offset: 1792)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3543, file: !80, line: 614, baseType: !194, size: 32, offset: 1824)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3543, file: !80, line: 615, baseType: !145, size: 64, offset: 1856)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3543, file: !80, line: 616, baseType: !145, size: 64, offset: 1920)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3543, file: !80, line: 617, baseType: !145, size: 64, offset: 1984)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3543, file: !80, line: 618, baseType: !145, size: 64, offset: 2048)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3543, file: !80, line: 620, baseType: !3631, size: 64, offset: 2112)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3633)
!3633 = !{!3634, !3635, !3636, !3637}
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3632, file: !80, line: 537, baseType: !253)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3632, file: !80, line: 538, baseType: !7, size: 32)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3632, file: !80, line: 540, baseType: !132, size: 128, offset: 64)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3632, file: !80, line: 543, baseType: !3638, size: 64, offset: 192)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3543, file: !80, line: 621, baseType: !3641, size: 64, offset: 2176)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = !DISubroutineType(types: !3643)
!3643 = !{null, !236, !1454}
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3543, file: !80, line: 622, baseType: !3645, size: 64, offset: 2240)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !237, file: !73, line: 486, baseType: !3648, size: 64, offset: 4096)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3650)
!3650 = !{!3651, !3652, !3653, !3657, !3658, !3659}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3649, file: !80, line: 643, baseType: !3410, size: 1472)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3649, file: !80, line: 644, baseType: !3413, size: 64, offset: 1472)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3649, file: !80, line: 645, baseType: !3654, size: 64, offset: 1536)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = !DISubroutineType(types: !3656)
!3656 = !{null, !236, !500}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3649, file: !80, line: 646, baseType: !3413, size: 64, offset: 1600)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3649, file: !80, line: 647, baseType: !3404, size: 64, offset: 1664)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3649, file: !80, line: 648, baseType: !3404, size: 64, offset: 1728)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !237, file: !73, line: 493, baseType: !3661, size: 64, offset: 4160)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !94, line: 162, size: 1088, elements: !3663)
!3663 = !{!3664, !3665, !3666, !3839, !3840, !3841, !3842, !3843, !3844, !3847, !3848, !3849, !3850, !3851, !3852, !3853}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3662, file: !94, line: 163, baseType: !132, size: 128)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3662, file: !94, line: 164, baseType: !152, size: 64, offset: 128)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3662, file: !94, line: 165, baseType: !3667, size: 64, offset: 192)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3669)
!3669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !94, line: 105, size: 640, elements: !3670)
!3670 = !{!3671, !3789, !3800, !3805, !3809, !3816, !3820, !3824, !3831, !3835}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3669, file: !94, line: 106, baseType: !3672, size: 64)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!194, !3661, !3675, !93}
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3677, line: 51, size: 1344, elements: !3678)
!3677 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3678 = !{!3679, !3680, !3682, !3683, !3773, !3782, !3783, !3784, !3785, !3786, !3787, !3788}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3676, file: !3677, line: 52, baseType: !152, size: 64)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3676, file: !3677, line: 53, baseType: !3681, size: 32, offset: 64)
!3681 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3677, line: 28, baseType: !208)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3676, file: !3677, line: 54, baseType: !152, size: 64, offset: 128)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3676, file: !3677, line: 55, baseType: !3684, size: 192, offset: 192)
!3684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3685, line: 17, size: 192, elements: !3686)
!3685 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3686 = !{!3687, !3689, !3772}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3684, file: !3685, line: 18, baseType: !3688, size: 64)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3684, file: !3685, line: 19, baseType: !3690, size: 64, offset: 64)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3692)
!3692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3685, line: 110, size: 1152, elements: !3693)
!3693 = !{!3694, !3698, !3702, !3708, !3714, !3718, !3722, !3727, !3731, !3732, !3736, !3740, !3744, !3755, !3756, !3757, !3758, !3768}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3692, file: !3685, line: 111, baseType: !3695, size: 64)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{!3688, !3688}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3692, file: !3685, line: 112, baseType: !3699, size: 64, offset: 64)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = !DISubroutineType(types: !3701)
!3701 = !{null, !3688}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3692, file: !3685, line: 113, baseType: !3703, size: 64, offset: 128)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!500, !3706}
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3684)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3692, file: !3685, line: 114, baseType: !3709, size: 64, offset: 192)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{!2137, !3706, !3712}
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !237)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3692, file: !3685, line: 116, baseType: !3715, size: 64, offset: 256)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!500, !3706, !152}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3692, file: !3685, line: 118, baseType: !3719, size: 64, offset: 320)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!194, !3706, !152, !7, !124, !340}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3692, file: !3685, line: 123, baseType: !3723, size: 64, offset: 384)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!194, !3706, !152, !3726, !340}
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3692, file: !3685, line: 126, baseType: !3728, size: 64, offset: 448)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{!152, !3706}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3692, file: !3685, line: 127, baseType: !3728, size: 64, offset: 512)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3692, file: !3685, line: 128, baseType: !3733, size: 64, offset: 576)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!3688, !3706}
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3692, file: !3685, line: 130, baseType: !3737, size: 64, offset: 640)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{!3688, !3706, !3688}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3692, file: !3685, line: 133, baseType: !3741, size: 64, offset: 704)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!3688, !3706, !152}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3692, file: !3685, line: 135, baseType: !3745, size: 64, offset: 768)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{!194, !3706, !152, !152, !7, !7, !3748}
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3685, line: 43, size: 640, elements: !3750)
!3750 = !{!3751, !3752, !3753}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3749, file: !3685, line: 44, baseType: !3688, size: 64)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3749, file: !3685, line: 45, baseType: !7, size: 32, offset: 64)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3749, file: !3685, line: 46, baseType: !3754, size: 512, offset: 128)
!3754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 512, elements: !1341)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3692, file: !3685, line: 140, baseType: !3737, size: 64, offset: 832)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3692, file: !3685, line: 143, baseType: !3733, size: 64, offset: 896)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3692, file: !3685, line: 145, baseType: !3695, size: 64, offset: 960)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3692, file: !3685, line: 146, baseType: !3759, size: 64, offset: 1024)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{!194, !3706, !3762}
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3685, line: 29, size: 128, elements: !3764)
!3764 = !{!3765, !3766, !3767}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3763, file: !3685, line: 30, baseType: !7, size: 32)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3763, file: !3685, line: 31, baseType: !7, size: 32, offset: 32)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3763, file: !3685, line: 32, baseType: !3706, size: 64, offset: 64)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3692, file: !3685, line: 148, baseType: !3769, size: 64, offset: 1088)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!194, !3706, !236}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3684, file: !3685, line: 20, baseType: !236, size: 64, offset: 128)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3676, file: !3677, line: 57, baseType: !3774, size: 64, offset: 384)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3677, line: 31, size: 704, elements: !3776)
!3776 = !{!3777, !3778, !3779, !3780, !3781}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3775, file: !3677, line: 32, baseType: !294, size: 64)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3775, file: !3677, line: 33, baseType: !194, size: 32, offset: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3775, file: !3677, line: 34, baseType: !124, size: 64, offset: 128)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3775, file: !3677, line: 35, baseType: !3774, size: 64, offset: 192)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3775, file: !3677, line: 43, baseType: !361, size: 448, offset: 256)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3676, file: !3677, line: 58, baseType: !3774, size: 64, offset: 448)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3676, file: !3677, line: 59, baseType: !3675, size: 64, offset: 512)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3676, file: !3677, line: 60, baseType: !3675, size: 64, offset: 576)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3676, file: !3677, line: 61, baseType: !3675, size: 64, offset: 640)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3676, file: !3677, line: 63, baseType: !240, size: 512, offset: 704)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3676, file: !3677, line: 65, baseType: !156, size: 64, offset: 1216)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3676, file: !3677, line: 66, baseType: !124, size: 64, offset: 1280)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3669, file: !94, line: 108, baseType: !3790, size: 64, offset: 64)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = !DISubroutineType(types: !3792)
!3792 = !{!194, !3661, !3793, !93}
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !94, line: 63, size: 640, elements: !3795)
!3795 = !{!3796, !3797, !3798}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3794, file: !94, line: 64, baseType: !3688, size: 64)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3794, file: !94, line: 65, baseType: !194, size: 32, offset: 64)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3794, file: !94, line: 66, baseType: !3799, size: 512, offset: 96)
!3799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 512, elements: !1745)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3669, file: !94, line: 110, baseType: !3801, size: 64, offset: 128)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!194, !3661, !7, !3804}
!3804 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !126, line: 164, baseType: !156)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3669, file: !94, line: 111, baseType: !3806, size: 64, offset: 192)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{null, !3661, !7}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3669, file: !94, line: 112, baseType: !3810, size: 64, offset: 256)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{!194, !3661, !3675, !3813, !7, !3815, !2693}
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !208)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3669, file: !94, line: 117, baseType: !3817, size: 64, offset: 320)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!194, !3661, !7, !7, !124}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3669, file: !94, line: 119, baseType: !3821, size: 64, offset: 384)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DISubroutineType(types: !3823)
!3823 = !{null, !3661, !7, !7}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3669, file: !94, line: 121, baseType: !3825, size: 64, offset: 448)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = !DISubroutineType(types: !3827)
!3827 = !{!194, !3661, !3828, !500}
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3830, line: 11, flags: DIFlagFwdDecl)
!3830 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3669, file: !94, line: 122, baseType: !3832, size: 64, offset: 512)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{null, !3661, !3828}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3669, file: !94, line: 123, baseType: !3836, size: 64, offset: 576)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{!194, !3661, !3793, !3815, !2693}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3662, file: !94, line: 166, baseType: !124, size: 64, offset: 256)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3662, file: !94, line: 167, baseType: !7, size: 32, offset: 320)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3662, file: !94, line: 168, baseType: !7, size: 32, offset: 352)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3662, file: !94, line: 171, baseType: !3688, size: 64, offset: 384)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3662, file: !94, line: 172, baseType: !93, size: 32, offset: 448)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3662, file: !94, line: 173, baseType: !3845, size: 64, offset: 512)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !94, line: 134, flags: DIFlagFwdDecl)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3662, file: !94, line: 175, baseType: !3661, size: 64, offset: 576)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3662, file: !94, line: 182, baseType: !3804, size: 64, offset: 640)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3662, file: !94, line: 183, baseType: !7, size: 32, offset: 704)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3662, file: !94, line: 184, baseType: !7, size: 32, offset: 736)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3662, file: !94, line: 185, baseType: !752, size: 128, offset: 768)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3662, file: !94, line: 186, baseType: !1184, size: 192, offset: 896)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3662, file: !94, line: 187, baseType: !3854, offset: 1088)
!3854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2341)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !237, file: !73, line: 499, baseType: !132, size: 128, offset: 4224)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !237, file: !73, line: 502, baseType: !3857, size: 64, offset: 4352)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3859)
!3859 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !237, file: !73, line: 504, baseType: !3861, size: 64, offset: 4416)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !237, file: !73, line: 505, baseType: !145, size: 64, offset: 4480)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !237, file: !73, line: 510, baseType: !145, size: 64, offset: 4544)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !237, file: !73, line: 511, baseType: !3865, size: 64, offset: 4608)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3867)
!3867 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !237, file: !73, line: 513, baseType: !3869, size: 64, offset: 4672)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3871)
!3871 = !{!3872, !3873}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3870, file: !73, line: 293, baseType: !7, size: 32)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3870, file: !73, line: 294, baseType: !156, size: 64, offset: 64)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !237, file: !73, line: 515, baseType: !132, size: 128, offset: 4736)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !237, file: !73, line: 526, baseType: !3876, offset: 4864)
!3876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3877, line: 5, elements: !267)
!3877 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !237, file: !73, line: 528, baseType: !3675, size: 64, offset: 4864)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !237, file: !73, line: 529, baseType: !3688, size: 64, offset: 4928)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !237, file: !73, line: 534, baseType: !523, size: 32, offset: 4992)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !237, file: !73, line: 535, baseType: !208, size: 32, offset: 5024)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !237, file: !73, line: 537, baseType: !253, offset: 5056)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !237, file: !73, line: 538, baseType: !132, size: 128, offset: 5056)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !237, file: !73, line: 540, baseType: !3885, size: 64, offset: 5184)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3887, line: 54, size: 960, elements: !3888)
!3887 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3888 = !{!3889, !3890, !3891, !3892, !3893, !3894, !3895, !3899, !3903, !3904, !3905, !3906, !3910, !3914, !3915}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3886, file: !3887, line: 55, baseType: !152, size: 64)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3886, file: !3887, line: 56, baseType: !643, size: 64, offset: 64)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3886, file: !3887, line: 58, baseType: !346, size: 64, offset: 128)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3886, file: !3887, line: 59, baseType: !346, size: 64, offset: 192)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3886, file: !3887, line: 60, baseType: !246, size: 64, offset: 256)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3886, file: !3887, line: 62, baseType: !3395, size: 64, offset: 320)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3886, file: !3887, line: 63, baseType: !3896, size: 64, offset: 384)
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3897, size: 64)
!3897 = !DISubroutineType(types: !3898)
!3898 = !{!294, !236, !3402}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3886, file: !3887, line: 65, baseType: !3900, size: 64, offset: 448)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = !DISubroutineType(types: !3902)
!3902 = !{null, !3885}
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3886, file: !3887, line: 66, baseType: !3404, size: 64, offset: 512)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3886, file: !3887, line: 68, baseType: !3413, size: 64, offset: 576)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3886, file: !3887, line: 70, baseType: !3199, size: 64, offset: 640)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3886, file: !3887, line: 71, baseType: !3907, size: 64, offset: 704)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = !DISubroutineType(types: !3909)
!3909 = !{!2137, !236}
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3886, file: !3887, line: 73, baseType: !3911, size: 64, offset: 768)
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = !DISubroutineType(types: !3913)
!3913 = !{null, !236, !3231, !3232}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3886, file: !3887, line: 75, baseType: !3408, size: 64, offset: 832)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3886, file: !3887, line: 77, baseType: !3525, size: 64, offset: 896)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !237, file: !73, line: 541, baseType: !346, size: 64, offset: 5248)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !237, file: !73, line: 543, baseType: !3404, size: 64, offset: 5312)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !237, file: !73, line: 544, baseType: !3919, size: 64, offset: 5376)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !237, file: !73, line: 545, baseType: !3922, size: 64, offset: 5440)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !237, file: !73, line: 547, baseType: !500, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !237, file: !73, line: 548, baseType: !500, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !237, file: !73, line: 549, baseType: !500, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !237, file: !73, line: 550, baseType: !500, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !172, file: !167, line: 635, baseType: !237, size: 5568, offset: 2304)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !172, file: !167, line: 636, baseType: !360, size: 64, offset: 7872)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !172, file: !167, line: 637, baseType: !360, size: 64, offset: 7936)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !172, file: !167, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !166, file: !167, line: 312, baseType: !171, size: 64, offset: 192)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !166, file: !167, line: 314, baseType: !124, size: 64, offset: 256)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !166, file: !167, line: 315, baseType: !219, size: 64, offset: 320)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !166, file: !167, line: 316, baseType: !3936, size: 64, offset: 384)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !167, line: 69, size: 832, elements: !3938)
!3938 = !{!3939, !3940, !3941, !3944, !3945}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3937, file: !167, line: 70, baseType: !171, size: 64)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3937, file: !167, line: 71, baseType: !132, size: 128, offset: 64)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !3937, file: !167, line: 72, baseType: !3942, size: 64, offset: 192)
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3943, size: 64)
!3943 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !167, line: 72, flags: DIFlagFwdDecl)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !3937, file: !167, line: 73, baseType: !223, size: 8, offset: 256)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3937, file: !167, line: 74, baseType: !240, size: 512, offset: 320)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !166, file: !167, line: 318, baseType: !7, size: 32, offset: 448)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !166, file: !167, line: 319, baseType: !232, size: 16, offset: 480)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !166, file: !167, line: 320, baseType: !232, size: 16, offset: 496)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !166, file: !167, line: 321, baseType: !232, size: 16, offset: 512)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !166, file: !167, line: 322, baseType: !232, size: 16, offset: 528)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !166, file: !167, line: 323, baseType: !7, size: 32, offset: 544)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !166, file: !167, line: 324, baseType: !1363, size: 8, offset: 576)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !166, file: !167, line: 325, baseType: !1363, size: 8, offset: 584)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !166, file: !167, line: 330, baseType: !1363, size: 8, offset: 592)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !166, file: !167, line: 331, baseType: !1363, size: 8, offset: 600)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !166, file: !167, line: 332, baseType: !1363, size: 8, offset: 608)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !166, file: !167, line: 333, baseType: !1363, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !166, file: !167, line: 334, baseType: !1363, size: 8, offset: 624)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !166, file: !167, line: 335, baseType: !1363, size: 8, offset: 632)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !166, file: !167, line: 336, baseType: !872, size: 16, offset: 640)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !166, file: !167, line: 337, baseType: !3815, size: 64, offset: 704)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !166, file: !167, line: 339, baseType: !3963, size: 64, offset: 768)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !167, line: 858, size: 2048, elements: !3965)
!3965 = !{!3966, !3967, !3968, !3980, !3984, !3988, !3992, !3996, !3997, !4001, !4020, !4021, !4022}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3964, file: !167, line: 859, baseType: !132, size: 128)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3964, file: !167, line: 860, baseType: !152, size: 64, offset: 128)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3964, file: !167, line: 861, baseType: !3969, size: 64, offset: 192)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3971)
!3971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3466, line: 38, size: 256, elements: !3972)
!3972 = !{!3973, !3974, !3975, !3976, !3977, !3978, !3979}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3971, file: !3466, line: 39, baseType: !209, size: 32)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3971, file: !3466, line: 39, baseType: !209, size: 32, offset: 32)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !3971, file: !3466, line: 40, baseType: !209, size: 32, offset: 64)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !3971, file: !3466, line: 40, baseType: !209, size: 32, offset: 96)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3971, file: !3466, line: 41, baseType: !209, size: 32, offset: 128)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !3971, file: !3466, line: 41, baseType: !209, size: 32, offset: 160)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3971, file: !3466, line: 42, baseType: !3485, size: 64, offset: 192)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3964, file: !167, line: 862, baseType: !3981, size: 64, offset: 256)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = !DISubroutineType(types: !3983)
!3983 = !{!194, !165, !3969}
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3964, file: !167, line: 863, baseType: !3985, size: 64, offset: 320)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{null, !165}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3964, file: !167, line: 864, baseType: !3989, size: 64, offset: 384)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{!194, !165, !3496}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3964, file: !167, line: 865, baseType: !3993, size: 64, offset: 448)
!3993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3994, size: 64)
!3994 = !DISubroutineType(types: !3995)
!3995 = !{!194, !165}
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3964, file: !167, line: 866, baseType: !3985, size: 64, offset: 512)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !3964, file: !167, line: 867, baseType: !3998, size: 64, offset: 576)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{!194, !165, !194}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !3964, file: !167, line: 868, baseType: !4002, size: 64, offset: 640)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4004)
!4004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !167, line: 795, size: 384, elements: !4005)
!4005 = !{!4006, !4012, !4016, !4017, !4018, !4019}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4004, file: !167, line: 797, baseType: !4007, size: 64)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = !DISubroutineType(types: !4009)
!4009 = !{!4010, !165, !4011}
!4010 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !167, line: 772, baseType: !7)
!4011 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !167, line: 180, baseType: !7)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4004, file: !167, line: 801, baseType: !4013, size: 64, offset: 64)
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{!4010, !165}
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4004, file: !167, line: 804, baseType: !4013, size: 64, offset: 128)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4004, file: !167, line: 807, baseType: !3985, size: 64, offset: 192)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4004, file: !167, line: 808, baseType: !3985, size: 64, offset: 256)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4004, file: !167, line: 811, baseType: !3985, size: 64, offset: 320)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3964, file: !167, line: 869, baseType: !346, size: 64, offset: 704)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3964, file: !167, line: 870, baseType: !3454, size: 1152, offset: 768)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !3964, file: !167, line: 871, baseType: !4023, size: 128, offset: 1920)
!4023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !167, line: 759, size: 128, elements: !4024)
!4024 = !{!4025, !4026}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4023, file: !167, line: 760, baseType: !253)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4023, file: !167, line: 761, baseType: !132, size: 128)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !166, file: !167, line: 340, baseType: !145, size: 64, offset: 832)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !166, file: !167, line: 346, baseType: !3870, size: 128, offset: 896)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !166, file: !167, line: 348, baseType: !4030, size: 32, offset: 1024)
!4030 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !167, line: 155, baseType: !194)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !166, file: !167, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !166, file: !167, line: 352, baseType: !1363, size: 8, offset: 1064)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !166, file: !167, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !166, file: !167, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !166, file: !167, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !166, file: !167, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !166, file: !167, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !166, file: !167, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !166, file: !167, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !166, file: !167, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !166, file: !167, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !166, file: !167, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !166, file: !167, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !166, file: !167, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !166, file: !167, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !166, file: !167, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !166, file: !167, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !166, file: !167, line: 376, baseType: !7, size: 32, offset: 1120)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !166, file: !167, line: 377, baseType: !7, size: 32, offset: 1152)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !166, file: !167, line: 380, baseType: !4051, size: 64, offset: 1216)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !167, line: 303, flags: DIFlagFwdDecl)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !166, file: !167, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !166, file: !167, line: 383, baseType: !194, size: 32, offset: 1312)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !166, file: !167, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !166, file: !167, line: 387, baseType: !4011, size: 32, offset: 1376)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !166, file: !167, line: 388, baseType: !237, size: 5568, offset: 1408)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !166, file: !167, line: 390, baseType: !194, size: 32, offset: 6976)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !166, file: !167, line: 396, baseType: !7, size: 32, offset: 7008)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !166, file: !167, line: 397, baseType: !4061, size: 8704, offset: 7040)
!4061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 8704, elements: !4062)
!4062 = !{!4063}
!4063 = !DISubrange(count: 17)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !166, file: !167, line: 399, baseType: !500, size: 8, offset: 15744)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !166, file: !167, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !166, file: !167, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !166, file: !167, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !166, file: !167, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !166, file: !167, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !166, file: !167, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !166, file: !167, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !166, file: !167, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !166, file: !167, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !166, file: !167, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !166, file: !167, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !166, file: !167, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !166, file: !167, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !166, file: !167, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !166, file: !167, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !166, file: !167, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !166, file: !167, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !166, file: !167, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !166, file: !167, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !166, file: !167, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !166, file: !167, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !166, file: !167, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !166, file: !167, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !166, file: !167, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !166, file: !167, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !166, file: !167, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !166, file: !167, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !166, file: !167, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !166, file: !167, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !166, file: !167, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !166, file: !167, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !166, file: !167, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !166, file: !167, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !166, file: !167, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !166, file: !167, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !166, file: !167, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !166, file: !167, line: 450, baseType: !4102, size: 16, offset: 15792)
!4102 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !167, line: 206, baseType: !232)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !166, file: !167, line: 451, baseType: !760, size: 32, offset: 15808)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !166, file: !167, line: 453, baseType: !3799, size: 512, offset: 15840)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !166, file: !167, line: 454, baseType: !648, size: 64, offset: 16384)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !166, file: !167, line: 455, baseType: !360, size: 64, offset: 16448)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !166, file: !167, line: 456, baseType: !194, size: 32, offset: 16512)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !166, file: !167, line: 457, baseType: !4109, size: 1088, offset: 16576)
!4109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 1088, elements: !4062)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !166, file: !167, line: 458, baseType: !4109, size: 1088, offset: 17664)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !166, file: !167, line: 469, baseType: !346, size: 64, offset: 18752)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !166, file: !167, line: 471, baseType: !4113, size: 64, offset: 18816)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !167, line: 304, flags: DIFlagFwdDecl)
!4115 = !DIDerivedType(tag: DW_TAG_member, scope: !166, file: !167, line: 478, baseType: !4116, size: 64, offset: 18880)
!4116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !166, file: !167, line: 478, size: 64, elements: !4117)
!4117 = !{!4118, !4121}
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4116, file: !167, line: 479, baseType: !4119, size: 64)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !167, line: 305, flags: DIFlagFwdDecl)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4116, file: !167, line: 480, baseType: !165, size: 64)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !166, file: !167, line: 482, baseType: !872, size: 16, offset: 18944)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !166, file: !167, line: 483, baseType: !1363, size: 8, offset: 18960)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !166, file: !167, line: 497, baseType: !872, size: 16, offset: 18976)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !166, file: !167, line: 498, baseType: !144, size: 64, offset: 19008)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !166, file: !167, line: 499, baseType: !340, size: 64, offset: 19072)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !166, file: !167, line: 500, baseType: !294, size: 64, offset: 19136)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !166, file: !167, line: 502, baseType: !156, size: 64, offset: 19200)
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device", file: !4131, line: 22, size: 6208, elements: !4132)
!4131 = !DIFile(filename: "./include/linux/platform_device.h", directory: "/home/lizy2001/genbc/linux")
!4132 = !{!4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4149, !4150, !4153}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4130, file: !4131, line: 23, baseType: !152, size: 64)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4130, file: !4131, line: 24, baseType: !194, size: 32, offset: 64)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "id_auto", scope: !4130, file: !4131, line: 25, baseType: !500, size: 8, offset: 96)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4130, file: !4131, line: 26, baseType: !237, size: 5568, offset: 128)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "platform_dma_mask", scope: !4130, file: !4131, line: 27, baseType: !145, size: 64, offset: 5696)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4130, file: !4131, line: 28, baseType: !3870, size: 128, offset: 5760)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !4130, file: !4131, line: 29, baseType: !208, size: 32, offset: 5888)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4130, file: !4131, line: 30, baseType: !138, size: 64, offset: 5952)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "id_entry", scope: !4130, file: !4131, line: 32, baseType: !4142, size: 64, offset: 6016)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4144)
!4144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device_id", file: !3466, line: 586, size: 256, elements: !4145)
!4145 = !{!4146, !4148}
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4144, file: !3466, line: 587, baseType: !4147, size: 160)
!4147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 160, elements: !2211)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4144, file: !3466, line: 588, baseType: !3485, size: 64, offset: 192)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !4130, file: !4131, line: 33, baseType: !294, size: 64, offset: 6080)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "mfd_cell", scope: !4130, file: !4131, line: 36, baseType: !4151, size: 64, offset: 6144)
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4152 = !DICompositeType(tag: DW_TAG_structure_type, name: "mfd_cell", file: !4131, line: 18, flags: DIFlagFwdDecl)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4130, file: !4131, line: 39, baseType: !4154, offset: 6208)
!4154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdev_archdata", file: !3877, line: 8, elements: !267)
!4155 = !{!0, !4156}
!4156 = !DIGlobalVariableExpression(var: !4157, expr: !DIExpression())
!4157 = distinct !DIGlobalVariable(name: "acpi_platform_notifier", scope: !2, file: !3, line: 66, type: !4158, isLocal: true, isDefinition: true)
!4158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !4159, line: 54, size: 192, elements: !4160)
!4159 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!4160 = !{!4161, !4167, !4168}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !4158, file: !4159, line: 55, baseType: !4162, size: 64)
!4162 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !4159, line: 51, baseType: !4163)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = !DISubroutineType(types: !4165)
!4165 = !{!194, !4166, !156, !124}
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4158, size: 64)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4158, file: !4159, line: 56, baseType: !4166, size: 64, offset: 64)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !4158, file: !4159, line: 57, baseType: !194, size: 32, offset: 128)
!4169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3477, size: 1792, elements: !4170)
!4170 = !{!4171}
!4171 = !DISubrange(count: 7)
!4172 = !{i32 7, !"Dwarf Version", i32 4}
!4173 = !{i32 2, !"Debug Info Version", i32 3}
!4174 = !{i32 1, !"wchar_size", i32 2}
!4175 = !{i32 1, !"Code Model", i32 2}
!4176 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4177 = distinct !DISubprogram(name: "acpi_create_platform_device", scope: !3, file: !3, line: 97, type: !4178, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !267)
!4178 = !DISubroutineType(types: !4179)
!4179 = !{!4129, !4180, !4458}
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4181, size: 64)
!4181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !221, line: 351, size: 10880, elements: !4182)
!4182 = !{!4183, !4184, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4202, !4219, !4292, !4321, !4345, !4366, !4370, !4379, !4411, !4425, !4447, !4451, !4452, !4453, !4454, !4455, !4456, !4457}
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !4181, file: !221, line: 352, baseType: !194, size: 32)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !4181, file: !221, line: 353, baseType: !4185, size: 64, offset: 64)
!4185 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !4186, line: 424, baseType: !124)
!4186 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4181, file: !221, line: 354, baseType: !3684, size: 192, offset: 128)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4181, file: !221, line: 355, baseType: !4180, size: 64, offset: 320)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4181, file: !221, line: 356, baseType: !132, size: 128, offset: 384)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4181, file: !221, line: 357, baseType: !132, size: 128, offset: 512)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !4181, file: !221, line: 358, baseType: !132, size: 128, offset: 640)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !4181, file: !221, line: 359, baseType: !132, size: 128, offset: 768)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4181, file: !221, line: 360, baseType: !4194, size: 32, offset: 896)
!4194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !221, line: 179, size: 32, elements: !4195)
!4195 = !{!4196, !4197, !4198, !4199, !4200, !4201}
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !4194, file: !221, line: 180, baseType: !208, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4194, file: !221, line: 181, baseType: !208, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !4194, file: !221, line: 182, baseType: !208, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !4194, file: !221, line: 183, baseType: !208, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !4194, file: !221, line: 184, baseType: !208, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4194, file: !221, line: 185, baseType: !208, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4181, file: !221, line: 361, baseType: !4203, size: 32, offset: 928)
!4203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !221, line: 190, size: 32, elements: !4204)
!4204 = !{!4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218}
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !4203, file: !221, line: 191, baseType: !208, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4203, file: !221, line: 192, baseType: !208, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !4203, file: !221, line: 193, baseType: !208, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !4203, file: !221, line: 194, baseType: !208, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4203, file: !221, line: 195, baseType: !208, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !4203, file: !221, line: 196, baseType: !208, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !4203, file: !221, line: 197, baseType: !208, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !4203, file: !221, line: 198, baseType: !208, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !4203, file: !221, line: 199, baseType: !208, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !4203, file: !221, line: 200, baseType: !208, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !4203, file: !221, line: 201, baseType: !208, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !4203, file: !221, line: 202, baseType: !208, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !4203, file: !221, line: 203, baseType: !208, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4203, file: !221, line: 204, baseType: !208, size: 19, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !4181, file: !221, line: 362, baseType: !4220, size: 960, offset: 960)
!4220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !221, line: 234, size: 960, elements: !4221)
!4221 = !{!4222, !4224, !4231, !4233, !4234, !4235, !4240, !4242}
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !4220, file: !221, line: 235, baseType: !4223, size: 64)
!4223 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !221, line: 217, baseType: !2043)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4220, file: !221, line: 236, baseType: !4225, size: 32, offset: 64)
!4225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !221, line: 227, size: 32, elements: !4226)
!4226 = !{!4227, !4228, !4229, !4230}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !4225, file: !221, line: 228, baseType: !208, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !4225, file: !221, line: 229, baseType: !208, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !4225, file: !221, line: 230, baseType: !208, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4225, file: !221, line: 231, baseType: !208, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !4220, file: !221, line: 237, baseType: !4232, size: 64, offset: 128)
!4232 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !221, line: 218, baseType: !145)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !4220, file: !221, line: 238, baseType: !294, size: 64, offset: 192)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !4220, file: !221, line: 239, baseType: !132, size: 128, offset: 256)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !4220, file: !221, line: 240, baseType: !4236, size: 320, offset: 384)
!4236 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !221, line: 219, baseType: !4237)
!4237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 320, elements: !4238)
!4238 = !{!4239}
!4239 = !DISubrange(count: 40)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !4220, file: !221, line: 241, baseType: !4241, size: 160, offset: 704)
!4241 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !221, line: 220, baseType: !4147)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !4220, file: !221, line: 242, baseType: !4243, size: 64, offset: 896)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !4186, line: 899, size: 192, elements: !4245)
!4245 = !{!4246, !4248, !4253, !4259, !4266, !4272, !4278, !4286}
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4244, file: !4186, line: 900, baseType: !4247, size: 32)
!4247 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !4186, line: 635, baseType: !208)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !4244, file: !4186, line: 904, baseType: !4249, size: 128)
!4249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4244, file: !4186, line: 901, size: 128, elements: !4250)
!4250 = !{!4251, !4252}
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4249, file: !4186, line: 902, baseType: !4247, size: 32)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4249, file: !4186, line: 903, baseType: !145, size: 64, offset: 64)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4244, file: !4186, line: 910, baseType: !4254, size: 128)
!4254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4244, file: !4186, line: 906, size: 128, elements: !4255)
!4255 = !{!4256, !4257, !4258}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4254, file: !4186, line: 907, baseType: !4247, size: 32)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4254, file: !4186, line: 908, baseType: !208, size: 32, offset: 32)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !4254, file: !4186, line: 909, baseType: !294, size: 64, offset: 64)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !4244, file: !4186, line: 916, baseType: !4260, size: 128)
!4260 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4244, file: !4186, line: 912, size: 128, elements: !4261)
!4261 = !{!4262, !4263, !4264}
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4260, file: !4186, line: 913, baseType: !4247, size: 32)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4260, file: !4186, line: 914, baseType: !208, size: 32, offset: 32)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !4260, file: !4186, line: 915, baseType: !4265, size: 64, offset: 64)
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !4244, file: !4186, line: 922, baseType: !4267, size: 128)
!4267 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4244, file: !4186, line: 918, size: 128, elements: !4268)
!4268 = !{!4269, !4270, !4271}
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4267, file: !4186, line: 919, baseType: !4247, size: 32)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4267, file: !4186, line: 920, baseType: !208, size: 32, offset: 32)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !4267, file: !4186, line: 921, baseType: !4243, size: 64, offset: 64)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !4244, file: !4186, line: 928, baseType: !4273, size: 128)
!4273 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4244, file: !4186, line: 924, size: 128, elements: !4274)
!4274 = !{!4275, !4276, !4277}
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4273, file: !4186, line: 925, baseType: !4247, size: 32)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !4273, file: !4186, line: 926, baseType: !4247, size: 32, offset: 32)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !4273, file: !4186, line: 927, baseType: !4185, size: 64, offset: 64)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !4244, file: !4186, line: 935, baseType: !4279, size: 192)
!4279 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4244, file: !4186, line: 930, size: 192, elements: !4280)
!4280 = !{!4281, !4282, !4283, !4285}
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4279, file: !4186, line: 931, baseType: !4247, size: 32)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !4279, file: !4186, line: 932, baseType: !208, size: 32, offset: 32)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !4279, file: !4186, line: 933, baseType: !4284, size: 64, offset: 64)
!4284 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !4186, line: 128, baseType: !145)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !4279, file: !4186, line: 934, baseType: !208, size: 32, offset: 128)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !4244, file: !4186, line: 941, baseType: !4287, size: 96)
!4287 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4244, file: !4186, line: 937, size: 96, elements: !4288)
!4288 = !{!4289, !4290, !4291}
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4287, file: !4186, line: 938, baseType: !4247, size: 32)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !4287, file: !4186, line: 939, baseType: !208, size: 32, offset: 32)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !4287, file: !4186, line: 940, baseType: !208, size: 32, offset: 64)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4181, file: !221, line: 363, baseType: !4293, size: 1344, offset: 1920)
!4293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !221, line: 275, size: 1344, elements: !4294)
!4294 = !{!4295, !4296, !4306}
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4293, file: !221, line: 276, baseType: !194, size: 32)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4293, file: !221, line: 277, baseType: !4297, size: 32, offset: 32)
!4297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !221, line: 254, size: 32, elements: !4298)
!4298 = !{!4299, !4300, !4301, !4302, !4303, !4304, !4305}
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !4297, file: !221, line: 255, baseType: !208, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !4297, file: !221, line: 256, baseType: !208, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !4297, file: !221, line: 257, baseType: !208, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !4297, file: !221, line: 258, baseType: !208, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !4297, file: !221, line: 259, baseType: !208, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !4297, file: !221, line: 260, baseType: !208, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4297, file: !221, line: 261, baseType: !208, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !4293, file: !221, line: 278, baseType: !4307, size: 1280, offset: 64)
!4307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4308, size: 1280, elements: !4319)
!4308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !221, line: 264, size: 256, elements: !4309)
!4309 = !{!4310, !4316, !4317, !4318}
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4308, file: !221, line: 269, baseType: !4311, size: 8)
!4311 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4308, file: !221, line: 265, size: 8, elements: !4312)
!4312 = !{!4313, !4314, !4315}
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !4311, file: !221, line: 266, baseType: !1363, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !4311, file: !221, line: 267, baseType: !1363, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4311, file: !221, line: 268, baseType: !1363, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4308, file: !221, line: 270, baseType: !194, size: 32, offset: 32)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !4308, file: !221, line: 271, baseType: !194, size: 32, offset: 64)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4308, file: !221, line: 272, baseType: !132, size: 128, offset: 128)
!4319 = !{!4320}
!4320 = !DISubrange(count: 5)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4181, file: !221, line: 364, baseType: !4322, size: 640, offset: 3264)
!4322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !221, line: 315, size: 640, elements: !4323)
!4323 = !{!4324, !4325, !4326, !4327, !4328, !4333, !4342, !4343, !4344}
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !4322, file: !221, line: 316, baseType: !4185, size: 64)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !4322, file: !221, line: 317, baseType: !145, size: 64, offset: 64)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !4322, file: !221, line: 318, baseType: !145, size: 64, offset: 128)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4322, file: !221, line: 319, baseType: !132, size: 128, offset: 192)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4322, file: !221, line: 320, baseType: !4329, size: 8, offset: 320)
!4329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !221, line: 305, size: 8, elements: !4330)
!4330 = !{!4331, !4332}
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !4329, file: !221, line: 306, baseType: !1363, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !4329, file: !221, line: 307, baseType: !1363, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !4322, file: !221, line: 321, baseType: !4334, size: 128, offset: 384)
!4334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !221, line: 310, size: 128, elements: !4335)
!4335 = !{!4336, !4341}
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4334, file: !221, line: 311, baseType: !4337, size: 64)
!4337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4338, size: 64)
!4338 = !DISubroutineType(types: !4339)
!4339 = !{null, !4340}
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4334, size: 64)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4334, file: !221, line: 312, baseType: !236, size: 64, offset: 64)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !4322, file: !221, line: 322, baseType: !3561, size: 64, offset: 512)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !4322, file: !221, line: 323, baseType: !194, size: 32, offset: 576)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !4322, file: !221, line: 324, baseType: !194, size: 32, offset: 608)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !4181, file: !221, line: 365, baseType: !4346, size: 192, offset: 3904)
!4346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !221, line: 297, size: 192, elements: !4347)
!4347 = !{!4348, !4349, !4353, !4354}
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4346, file: !221, line: 298, baseType: !194, size: 32)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4346, file: !221, line: 299, baseType: !4350, size: 8, offset: 32)
!4350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !221, line: 283, size: 8, elements: !4351)
!4351 = !{!4352}
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4350, file: !221, line: 284, baseType: !1363, size: 8, flags: DIFlagBitField, extraData: i64 0)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !4346, file: !221, line: 300, baseType: !194, size: 32, offset: 64)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !4346, file: !221, line: 301, baseType: !4355, size: 64, offset: 128)
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4356, size: 64)
!4356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !221, line: 287, size: 64, elements: !4357)
!4357 = !{!4358, !4363, !4364, !4365}
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4356, file: !221, line: 291, baseType: !4359, size: 8)
!4359 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4356, file: !221, line: 288, size: 8, elements: !4360)
!4360 = !{!4361, !4362}
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !4359, file: !221, line: 289, baseType: !1363, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4359, file: !221, line: 290, baseType: !1363, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4356, file: !221, line: 292, baseType: !1363, size: 8, offset: 8)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !4356, file: !221, line: 293, baseType: !1363, size: 8, offset: 16)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !4356, file: !221, line: 294, baseType: !194, size: 32, offset: 32)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4181, file: !221, line: 366, baseType: !4367, size: 64, offset: 4096)
!4367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !221, line: 209, size: 64, elements: !4368)
!4368 = !{!4369}
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4367, file: !221, line: 210, baseType: !219, size: 64)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4181, file: !221, line: 367, baseType: !4371, size: 384, offset: 4160)
!4371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !221, line: 341, size: 384, elements: !4372)
!4372 = !{!4373, !4376, !4377, !4378}
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !4371, file: !221, line: 342, baseType: !4374, size: 64)
!4374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4375, size: 64)
!4375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4244)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4371, file: !221, line: 343, baseType: !132, size: 128, offset: 64)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !4371, file: !221, line: 344, baseType: !4374, size: 64, offset: 192)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !4371, file: !221, line: 345, baseType: !132, size: 128, offset: 256)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4181, file: !221, line: 368, baseType: !4380, size: 64, offset: 4544)
!4380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4381, size: 64)
!4381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !221, line: 122, size: 1216, elements: !4382)
!4382 = !{!4383, !4384, !4385, !4390, !4394, !4398, !4399, !4400}
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !4381, file: !221, line: 123, baseType: !3476, size: 64)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !4381, file: !221, line: 124, baseType: !132, size: 128, offset: 64)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4381, file: !221, line: 125, baseType: !4386, size: 64, offset: 192)
!4386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4387, size: 64)
!4387 = !DISubroutineType(types: !4388)
!4388 = !{!500, !152, !4389}
!4389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !4381, file: !221, line: 126, baseType: !4391, size: 64, offset: 256)
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4392 = !DISubroutineType(types: !4393)
!4393 = !{!194, !4180, !3476}
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4381, file: !221, line: 127, baseType: !4395, size: 64, offset: 320)
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4396, size: 64)
!4396 = !DISubroutineType(types: !4397)
!4397 = !{null, !4180}
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !4381, file: !221, line: 128, baseType: !3404, size: 64, offset: 384)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !4381, file: !221, line: 129, baseType: !3404, size: 64, offset: 448)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4381, file: !221, line: 130, baseType: !4401, size: 704, offset: 512)
!4401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !221, line: 108, size: 704, elements: !4402)
!4402 = !{!4403, !4404, !4408, !4409, !4410}
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4401, file: !221, line: 109, baseType: !240, size: 512)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !4401, file: !221, line: 110, baseType: !4405, size: 64, offset: 512)
!4405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4406, size: 64)
!4406 = !DISubroutineType(types: !4407)
!4407 = !{!194, !4180}
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !4401, file: !221, line: 111, baseType: !4395, size: 64, offset: 576)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4401, file: !221, line: 112, baseType: !500, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !4401, file: !221, line: 113, baseType: !500, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !4181, file: !221, line: 369, baseType: !4412, size: 64, offset: 4608)
!4412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4413, size: 64)
!4413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !221, line: 138, size: 256, elements: !4414)
!4414 = !{!4415, !4416, !4420, !4424}
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4413, file: !221, line: 139, baseType: !4180, size: 64)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !4413, file: !221, line: 140, baseType: !4417, size: 64, offset: 64)
!4417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4418, size: 64)
!4418 = !DISubroutineType(types: !4419)
!4419 = !{!194, !4180, !208}
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4413, file: !221, line: 141, baseType: !4421, size: 64, offset: 128)
!4421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4422, size: 64)
!4422 = !DISubroutineType(types: !4423)
!4423 = !{null, !4180, !208}
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !4413, file: !221, line: 142, baseType: !4395, size: 64, offset: 192)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4181, file: !221, line: 370, baseType: !4426, size: 64, offset: 4672)
!4426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4427, size: 64)
!4427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_driver", file: !221, line: 162, size: 2816, elements: !4428)
!4428 = !{!4429, !4433, !4434, !4435, !4436, !4445, !4446}
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4427, file: !221, line: 163, baseType: !4430, size: 640)
!4430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 640, elements: !4431)
!4431 = !{!4432}
!4432 = !DISubrange(count: 80)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4427, file: !221, line: 164, baseType: !4430, size: 640, offset: 640)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !4427, file: !221, line: 165, baseType: !3476, size: 64, offset: 1280)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4427, file: !221, line: 166, baseType: !7, size: 32, offset: 1344)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4427, file: !221, line: 167, baseType: !4437, size: 192, offset: 1408)
!4437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_ops", file: !221, line: 154, size: 192, elements: !4438)
!4438 = !{!4439, !4441, !4443}
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !4437, file: !221, line: 155, baseType: !4440, size: 64)
!4440 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_add", file: !221, line: 150, baseType: !4405)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4437, file: !221, line: 156, baseType: !4442, size: 64, offset: 64)
!4442 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_remove", file: !221, line: 151, baseType: !4405)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !4437, file: !221, line: 157, baseType: !4444, size: 64, offset: 128)
!4444 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_notify", file: !221, line: 152, baseType: !4421)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !4427, file: !221, line: 168, baseType: !3454, size: 1152, offset: 1600)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4427, file: !221, line: 169, baseType: !643, size: 64, offset: 2752)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !4181, file: !221, line: 371, baseType: !4448, size: 64, offset: 4736)
!4448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4449, size: 64)
!4449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4450)
!4450 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !221, line: 348, flags: DIFlagFwdDecl)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4181, file: !221, line: 372, baseType: !124, size: 64, offset: 4800)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4181, file: !221, line: 373, baseType: !237, size: 5568, offset: 4864)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !4181, file: !221, line: 374, baseType: !7, size: 32, offset: 10432)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !4181, file: !221, line: 375, baseType: !7, size: 32, offset: 10464)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !4181, file: !221, line: 376, baseType: !132, size: 128, offset: 10496)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !4181, file: !221, line: 377, baseType: !1184, size: 192, offset: 10624)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4181, file: !221, line: 378, baseType: !4395, size: 64, offset: 10816)
!4458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4459, size: 64)
!4459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property_entry", file: !108, line: 263, size: 256, elements: !4460)
!4460 = !{!4461, !4462, !4463, !4464, !4465}
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4459, file: !108, line: 264, baseType: !152, size: 64)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4459, file: !108, line: 265, baseType: !340, size: 64, offset: 64)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "is_inline", scope: !4459, file: !108, line: 266, baseType: !500, size: 8, offset: 128)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4459, file: !108, line: 267, baseType: !107, size: 32, offset: 160)
!4465 = !DIDerivedType(tag: DW_TAG_member, scope: !4459, file: !108, line: 268, baseType: !4466, size: 64, offset: 192)
!4466 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4459, file: !108, line: 268, size: 64, elements: !4467)
!4467 = !{!4468, !4469}
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !4466, file: !108, line: 269, baseType: !2137, size: 64)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4466, file: !108, line: 276, baseType: !4470, size: 64)
!4470 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4466, file: !108, line: 270, size: 64, elements: !4471)
!4471 = !{!4472, !4474, !4476, !4478, !4480}
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "u8_data", scope: !4470, file: !108, line: 271, baseType: !4473, size: 64)
!4473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1363, size: 64, elements: !1341)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "u16_data", scope: !4470, file: !108, line: 272, baseType: !4475, size: 64)
!4475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !872, size: 64, elements: !182)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "u32_data", scope: !4470, file: !108, line: 273, baseType: !4477, size: 64)
!4477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 64, elements: !1579)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "u64_data", scope: !4470, file: !108, line: 274, baseType: !4479, size: 64)
!4479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 64, elements: !1382)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4470, file: !108, line: 275, baseType: !4481, size: 64)
!4481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 64, elements: !1382)
!4482 = !DILocalVariable(name: "adev", arg: 1, scope: !4177, file: !3, line: 97, type: !4180)
!4483 = !DILocation(line: 97, column: 73, scope: !4177)
!4484 = !DILocalVariable(name: "properties", arg: 2, scope: !4177, file: !3, line: 98, type: !4458)
!4485 = !DILocation(line: 98, column: 29, scope: !4177)
!4486 = !DILocalVariable(name: "pdev", scope: !4177, file: !3, line: 100, type: !4129)
!4487 = !DILocation(line: 100, column: 26, scope: !4177)
!4488 = !DILocalVariable(name: "pdevinfo", scope: !4177, file: !3, line: 101, type: !4489)
!4489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device_info", file: !4131, line: 81, size: 704, elements: !4490)
!4490 = !{!4491, !4492, !4493, !4494, !4495, !4496, !4499, !4500, !4501, !4502, !4503}
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4489, file: !4131, line: 82, baseType: !236, size: 64)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4489, file: !4131, line: 83, baseType: !3688, size: 64, offset: 64)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4489, file: !4131, line: 84, baseType: !500, size: 8, offset: 128)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4489, file: !4131, line: 86, baseType: !152, size: 64, offset: 192)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4489, file: !4131, line: 87, baseType: !194, size: 32, offset: 256)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !4489, file: !4131, line: 89, baseType: !4497, size: 64, offset: 320)
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "num_res", scope: !4489, file: !4131, line: 90, baseType: !7, size: 32, offset: 384)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4489, file: !4131, line: 92, baseType: !2137, size: 64, offset: 448)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "size_data", scope: !4489, file: !4131, line: 93, baseType: !340, size: 64, offset: 512)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4489, file: !4131, line: 94, baseType: !145, size: 64, offset: 576)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4489, file: !4131, line: 96, baseType: !4504, size: 64, offset: 640)
!4504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4505, size: 64)
!4505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4459)
!4506 = !DILocation(line: 101, column: 30, scope: !4177)
!4507 = !DILocalVariable(name: "rentry", scope: !4177, file: !3, line: 102, type: !127)
!4508 = !DILocation(line: 102, column: 25, scope: !4177)
!4509 = !DILocalVariable(name: "resource_list", scope: !4177, file: !3, line: 103, type: !132)
!4510 = !DILocation(line: 103, column: 19, scope: !4177)
!4511 = !DILocalVariable(name: "resources", scope: !4177, file: !3, line: 104, type: !138)
!4512 = !DILocation(line: 104, column: 19, scope: !4177)
!4513 = !DILocalVariable(name: "count", scope: !4177, file: !3, line: 105, type: !194)
!4514 = !DILocation(line: 105, column: 6, scope: !4177)
!4515 = !DILocation(line: 108, column: 6, scope: !4516)
!4516 = distinct !DILexicalBlock(scope: !4177, file: !3, line: 108, column: 6)
!4517 = !DILocation(line: 108, column: 12, scope: !4516)
!4518 = !DILocation(line: 108, column: 6, scope: !4177)
!4519 = !DILocation(line: 109, column: 3, scope: !4516)
!4520 = !DILocation(line: 111, column: 29, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !4177, file: !3, line: 111, column: 6)
!4522 = !DILocation(line: 111, column: 7, scope: !4521)
!4523 = !DILocation(line: 111, column: 6, scope: !4177)
!4524 = !DILocation(line: 112, column: 10, scope: !4521)
!4525 = !DILocation(line: 112, column: 3, scope: !4521)
!4526 = !DILocation(line: 114, column: 2, scope: !4177)
!4527 = !DILocation(line: 115, column: 33, scope: !4177)
!4528 = !DILocation(line: 115, column: 10, scope: !4177)
!4529 = !DILocation(line: 115, column: 8, scope: !4177)
!4530 = !DILocation(line: 116, column: 6, scope: !4531)
!4531 = distinct !DILexicalBlock(scope: !4177, file: !3, line: 116, column: 6)
!4532 = !DILocation(line: 116, column: 12, scope: !4531)
!4533 = !DILocation(line: 116, column: 6, scope: !4177)
!4534 = !DILocation(line: 117, column: 3, scope: !4535)
!4535 = distinct !DILexicalBlock(scope: !4531, file: !3, line: 116, column: 17)
!4536 = !DILocation(line: 118, column: 13, scope: !4537)
!4537 = distinct !DILexicalBlock(scope: !4531, file: !3, line: 118, column: 13)
!4538 = !DILocation(line: 118, column: 19, scope: !4537)
!4539 = !DILocation(line: 118, column: 13, scope: !4531)
!4540 = !DILocation(line: 119, column: 23, scope: !4541)
!4541 = distinct !DILexicalBlock(scope: !4537, file: !3, line: 118, column: 24)
!4542 = !DILocation(line: 119, column: 15, scope: !4541)
!4543 = !DILocation(line: 119, column: 13, scope: !4541)
!4544 = !DILocation(line: 121, column: 8, scope: !4545)
!4545 = distinct !DILexicalBlock(scope: !4541, file: !3, line: 121, column: 7)
!4546 = !DILocation(line: 121, column: 7, scope: !4541)
!4547 = !DILocation(line: 122, column: 4, scope: !4548)
!4548 = distinct !DILexicalBlock(scope: !4545, file: !3, line: 121, column: 19)
!4549 = !DILocation(line: 123, column: 4, scope: !4548)
!4550 = !DILocation(line: 124, column: 11, scope: !4548)
!4551 = !DILocation(line: 124, column: 4, scope: !4548)
!4552 = !DILocation(line: 126, column: 9, scope: !4541)
!4553 = !DILocalVariable(name: "__mptr", scope: !4554, file: !3, line: 127, type: !124)
!4554 = distinct !DILexicalBlock(scope: !4555, file: !3, line: 127, column: 3)
!4555 = distinct !DILexicalBlock(scope: !4541, file: !3, line: 127, column: 3)
!4556 = !DILocation(line: 127, column: 3, scope: !4554)
!4557 = !DILocation(line: 127, column: 3, scope: !4558)
!4558 = distinct !DILexicalBlock(scope: !4554, file: !3, line: 127, column: 3)
!4559 = !DILocation(line: 127, column: 3, scope: !4555)
!4560 = !DILocation(line: 127, column: 3, scope: !4561)
!4561 = distinct !DILexicalBlock(scope: !4555, file: !3, line: 127, column: 3)
!4562 = !DILocation(line: 128, column: 32, scope: !4561)
!4563 = !DILocation(line: 128, column: 38, scope: !4561)
!4564 = !DILocation(line: 128, column: 46, scope: !4561)
!4565 = !DILocation(line: 129, column: 12, scope: !4561)
!4566 = !DILocation(line: 129, column: 27, scope: !4561)
!4567 = !DILocation(line: 128, column: 4, scope: !4561)
!4568 = !DILocalVariable(name: "__mptr", scope: !4569, file: !3, line: 127, type: !124)
!4569 = distinct !DILexicalBlock(scope: !4561, file: !3, line: 127, column: 3)
!4570 = !DILocation(line: 127, column: 3, scope: !4569)
!4571 = !DILocation(line: 127, column: 3, scope: !4572)
!4572 = distinct !DILexicalBlock(scope: !4569, file: !3, line: 127, column: 3)
!4573 = distinct !{!4573, !4559, !4574}
!4574 = !DILocation(line: 129, column: 30, scope: !4555)
!4575 = !DILocation(line: 131, column: 3, scope: !4541)
!4576 = !DILocation(line: 132, column: 2, scope: !4541)
!4577 = !DILocation(line: 134, column: 2, scope: !4177)
!4578 = !DILocation(line: 140, column: 20, scope: !4177)
!4579 = !DILocation(line: 140, column: 26, scope: !4177)
!4580 = !DILocation(line: 141, column: 32, scope: !4177)
!4581 = !DILocation(line: 141, column: 38, scope: !4177)
!4582 = !DILocation(line: 141, column: 3, scope: !4177)
!4583 = !DILocation(line: 140, column: 11, scope: !4177)
!4584 = !DILocation(line: 140, column: 18, scope: !4177)
!4585 = !DILocation(line: 142, column: 28, scope: !4177)
!4586 = !DILocation(line: 142, column: 34, scope: !4177)
!4587 = !DILocation(line: 142, column: 18, scope: !4177)
!4588 = !DILocation(line: 142, column: 11, scope: !4177)
!4589 = !DILocation(line: 142, column: 16, scope: !4177)
!4590 = !DILocation(line: 143, column: 11, scope: !4177)
!4591 = !DILocation(line: 143, column: 14, scope: !4177)
!4592 = !DILocation(line: 144, column: 17, scope: !4177)
!4593 = !DILocation(line: 144, column: 11, scope: !4177)
!4594 = !DILocation(line: 144, column: 15, scope: !4177)
!4595 = !DILocation(line: 145, column: 21, scope: !4177)
!4596 = !DILocation(line: 145, column: 11, scope: !4177)
!4597 = !DILocation(line: 145, column: 19, scope: !4177)
!4598 = !DILocation(line: 146, column: 39, scope: !4177)
!4599 = !DILocation(line: 146, column: 20, scope: !4177)
!4600 = !DILocation(line: 146, column: 11, scope: !4177)
!4601 = !DILocation(line: 146, column: 18, scope: !4177)
!4602 = !DILocation(line: 147, column: 24, scope: !4177)
!4603 = !DILocation(line: 147, column: 11, scope: !4177)
!4604 = !DILocation(line: 147, column: 22, scope: !4177)
!4605 = !DILocation(line: 149, column: 25, scope: !4606)
!4606 = distinct !DILexicalBlock(scope: !4177, file: !3, line: 149, column: 6)
!4607 = !DILocation(line: 149, column: 6, scope: !4606)
!4608 = !DILocation(line: 149, column: 6, scope: !4177)
!4609 = !DILocation(line: 150, column: 12, scope: !4606)
!4610 = !DILocation(line: 150, column: 21, scope: !4606)
!4611 = !DILocation(line: 150, column: 3, scope: !4606)
!4612 = !DILocation(line: 152, column: 12, scope: !4606)
!4613 = !DILocation(line: 152, column: 21, scope: !4606)
!4614 = !DILocation(line: 154, column: 9, scope: !4177)
!4615 = !DILocation(line: 154, column: 7, scope: !4177)
!4616 = !DILocation(line: 155, column: 13, scope: !4617)
!4617 = distinct !DILexicalBlock(scope: !4177, file: !3, line: 155, column: 6)
!4618 = !DILocation(line: 155, column: 6, scope: !4617)
!4619 = !DILocation(line: 155, column: 6, scope: !4177)
!4620 = !DILocation(line: 156, column: 3, scope: !4617)
!4621 = !DILocation(line: 159, column: 17, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !4617, file: !3, line: 158, column: 7)
!4623 = !DILocation(line: 159, column: 23, scope: !4622)
!4624 = !DILocation(line: 159, column: 42, scope: !4622)
!4625 = !DILocation(line: 159, column: 48, scope: !4622)
!4626 = !DILocation(line: 159, column: 28, scope: !4622)
!4627 = !DILocation(line: 159, column: 3, scope: !4622)
!4628 = !DILocation(line: 164, column: 8, scope: !4177)
!4629 = !DILocation(line: 164, column: 2, scope: !4177)
!4630 = !DILocation(line: 166, column: 9, scope: !4177)
!4631 = !DILocation(line: 166, column: 2, scope: !4177)
!4632 = !DILocation(line: 167, column: 1, scope: !4177)
!4633 = distinct !DISubprogram(name: "ERR_PTR", scope: !4634, file: !4634, line: 24, type: !4635, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !267)
!4634 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!4635 = !DISubroutineType(types: !4636)
!4636 = !{!124, !329}
!4637 = !DILocalVariable(name: "error", arg: 1, scope: !4633, file: !4634, line: 24, type: !329)
!4638 = !DILocation(line: 24, column: 48, scope: !4633)
!4639 = !DILocation(line: 26, column: 18, scope: !4633)
!4640 = !DILocation(line: 26, column: 9, scope: !4633)
!4641 = !DILocation(line: 26, column: 2, scope: !4633)
!4642 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !4643, file: !4643, line: 33, type: !4644, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !267)
!4643 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!4644 = !DISubroutineType(types: !4645)
!4645 = !{null, !135}
!4646 = !DILocalVariable(name: "list", arg: 1, scope: !4642, file: !4643, line: 33, type: !135)
!4647 = !DILocation(line: 33, column: 53, scope: !4642)
!4648 = !DILocation(line: 35, column: 2, scope: !4642)
!4649 = !DILocation(line: 35, column: 2, scope: !4650)
!4650 = distinct !DILexicalBlock(scope: !4642, file: !4643, line: 35, column: 2)
!4651 = !DILocation(line: 35, column: 2, scope: !4652)
!4652 = distinct !DILexicalBlock(scope: !4650, file: !4643, line: 35, column: 2)
!4653 = !DILocation(line: 35, column: 2, scope: !4654)
!4654 = distinct !DILexicalBlock(scope: !4650, file: !4643, line: 35, column: 2)
!4655 = !DILocation(line: 36, column: 15, scope: !4642)
!4656 = !DILocation(line: 36, column: 2, scope: !4642)
!4657 = !DILocation(line: 36, column: 8, scope: !4642)
!4658 = !DILocation(line: 36, column: 13, scope: !4642)
!4659 = !DILocation(line: 37, column: 1, scope: !4642)
!4660 = distinct !DISubprogram(name: "kcalloc", scope: !117, file: !117, line: 601, type: !4661, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !267)
!4661 = !DISubroutineType(types: !4662)
!4662 = !{!124, !340, !340, !125}
!4663 = !DILocalVariable(name: "n", arg: 1, scope: !4660, file: !117, line: 601, type: !340)
!4664 = !DILocation(line: 601, column: 36, scope: !4660)
!4665 = !DILocalVariable(name: "size", arg: 2, scope: !4660, file: !117, line: 601, type: !340)
!4666 = !DILocation(line: 601, column: 46, scope: !4660)
!4667 = !DILocalVariable(name: "flags", arg: 3, scope: !4660, file: !117, line: 601, type: !125)
!4668 = !DILocation(line: 601, column: 58, scope: !4660)
!4669 = !DILocation(line: 603, column: 23, scope: !4660)
!4670 = !DILocation(line: 603, column: 26, scope: !4660)
!4671 = !DILocation(line: 603, column: 32, scope: !4660)
!4672 = !DILocation(line: 603, column: 38, scope: !4660)
!4673 = !DILocation(line: 603, column: 9, scope: !4660)
!4674 = !DILocation(line: 603, column: 2, scope: !4660)
!4675 = distinct !DISubprogram(name: "acpi_platform_fill_resource", scope: !3, file: !3, line: 70, type: !4676, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !267)
!4676 = !DISubroutineType(types: !4677)
!4677 = !{null, !4180, !4497, !138}
!4678 = !DILocalVariable(name: "adev", arg: 1, scope: !4675, file: !3, line: 70, type: !4180)
!4679 = !DILocation(line: 70, column: 61, scope: !4675)
!4680 = !DILocalVariable(name: "src", arg: 2, scope: !4675, file: !3, line: 71, type: !4497)
!4681 = !DILocation(line: 71, column: 25, scope: !4675)
!4682 = !DILocalVariable(name: "dest", arg: 3, scope: !4675, file: !3, line: 71, type: !138)
!4683 = !DILocation(line: 71, column: 47, scope: !4675)
!4684 = !DILocalVariable(name: "parent", scope: !4675, file: !3, line: 73, type: !236)
!4685 = !DILocation(line: 73, column: 17, scope: !4675)
!4686 = !DILocation(line: 75, column: 3, scope: !4675)
!4687 = !DILocation(line: 75, column: 11, scope: !4675)
!4688 = !DILocation(line: 75, column: 10, scope: !4675)
!4689 = !DILocation(line: 81, column: 40, scope: !4675)
!4690 = !DILocation(line: 81, column: 46, scope: !4675)
!4691 = !DILocation(line: 81, column: 11, scope: !4675)
!4692 = !DILocation(line: 81, column: 9, scope: !4675)
!4693 = !DILocation(line: 82, column: 6, scope: !4694)
!4694 = distinct !DILexicalBlock(scope: !4675, file: !3, line: 82, column: 6)
!4695 = !DILocation(line: 82, column: 13, scope: !4694)
!4696 = !DILocation(line: 82, column: 16, scope: !4694)
!4697 = !DILocation(line: 82, column: 6, scope: !4675)
!4698 = !DILocalVariable(name: "__mptr", scope: !4699, file: !3, line: 83, type: !124)
!4699 = distinct !DILexicalBlock(scope: !4694, file: !3, line: 83, column: 36)
!4700 = !DILocation(line: 83, column: 36, scope: !4699)
!4701 = !DILocation(line: 83, column: 36, scope: !4702)
!4702 = distinct !DILexicalBlock(scope: !4699, file: !3, line: 83, column: 36)
!4703 = !DILocation(line: 83, column: 56, scope: !4694)
!4704 = !DILocation(line: 83, column: 18, scope: !4694)
!4705 = !DILocation(line: 83, column: 3, scope: !4694)
!4706 = !DILocation(line: 83, column: 9, scope: !4694)
!4707 = !DILocation(line: 83, column: 16, scope: !4694)
!4708 = !DILocation(line: 84, column: 1, scope: !4675)
!4709 = distinct !DISubprogram(name: "dev_name", scope: !73, file: !73, line: 609, type: !4710, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !267)
!4710 = !DISubroutineType(types: !4711)
!4711 = !{!152, !3712}
!4712 = !DILocalVariable(name: "dev", arg: 1, scope: !4709, file: !73, line: 609, type: !3712)
!4713 = !DILocation(line: 609, column: 57, scope: !4709)
!4714 = !DILocation(line: 612, column: 6, scope: !4715)
!4715 = distinct !DILexicalBlock(scope: !4709, file: !73, line: 612, column: 6)
!4716 = !DILocation(line: 612, column: 11, scope: !4715)
!4717 = !DILocation(line: 612, column: 6, scope: !4709)
!4718 = !DILocation(line: 613, column: 10, scope: !4715)
!4719 = !DILocation(line: 613, column: 15, scope: !4715)
!4720 = !DILocation(line: 613, column: 3, scope: !4715)
!4721 = !DILocation(line: 615, column: 23, scope: !4709)
!4722 = !DILocation(line: 615, column: 28, scope: !4709)
!4723 = !DILocation(line: 615, column: 9, scope: !4709)
!4724 = !DILocation(line: 615, column: 2, scope: !4709)
!4725 = !DILocation(line: 616, column: 1, scope: !4709)
!4726 = distinct !DISubprogram(name: "acpi_fwnode_handle", scope: !221, file: !221, line: 438, type: !4727, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !267)
!4727 = !DISubroutineType(types: !4728)
!4728 = !{!3688, !4180}
!4729 = !DILocalVariable(name: "adev", arg: 1, scope: !4726, file: !221, line: 438, type: !4180)
!4730 = !DILocation(line: 438, column: 76, scope: !4726)
!4731 = !DILocation(line: 440, column: 10, scope: !4726)
!4732 = !DILocation(line: 440, column: 16, scope: !4726)
!4733 = !DILocation(line: 440, column: 2, scope: !4726)
!4734 = distinct !DISubprogram(name: "IS_ERR", scope: !4634, file: !4634, line: 34, type: !4735, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !267)
!4735 = !DISubroutineType(types: !4736)
!4736 = !{!500, !2137}
!4737 = !DILocalVariable(name: "ptr", arg: 1, scope: !4734, file: !4634, line: 34, type: !2137)
!4738 = !DILocation(line: 34, column: 60, scope: !4734)
!4739 = !DILocation(line: 36, column: 9, scope: !4734)
!4740 = !DILocation(line: 36, column: 2, scope: !4734)
!4741 = distinct !DISubprogram(name: "PTR_ERR", scope: !4634, file: !4634, line: 29, type: !4742, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !267)
!4742 = !DISubroutineType(types: !4743)
!4743 = !{!329, !2137}
!4744 = !DILocalVariable(name: "ptr", arg: 1, scope: !4741, file: !4634, line: 29, type: !2137)
!4745 = !DILocation(line: 29, column: 61, scope: !4741)
!4746 = !DILocation(line: 31, column: 16, scope: !4741)
!4747 = !DILocation(line: 31, column: 9, scope: !4741)
!4748 = !DILocation(line: 31, column: 2, scope: !4741)
!4749 = distinct !DISubprogram(name: "set_dev_node", scope: !73, file: !73, line: 634, type: !4750, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !267)
!4750 = !DISubroutineType(types: !4751)
!4751 = !{null, !236, !194}
!4752 = !DILocalVariable(name: "dev", arg: 1, scope: !4749, file: !73, line: 634, type: !236)
!4753 = !DILocation(line: 634, column: 48, scope: !4749)
!4754 = !DILocalVariable(name: "node", arg: 2, scope: !4749, file: !73, line: 634, type: !194)
!4755 = !DILocation(line: 634, column: 57, scope: !4749)
!4756 = !DILocation(line: 636, column: 1, scope: !4749)
!4757 = distinct !DISubprogram(name: "acpi_get_node", scope: !4758, file: !4758, line: 451, type: !4759, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !267)
!4758 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/lizy2001/genbc/linux")
!4759 = !DISubroutineType(types: !4760)
!4760 = !{!194, !4185}
!4761 = !DILocalVariable(name: "handle", arg: 1, scope: !4757, file: !4758, line: 451, type: !4185)
!4762 = !DILocation(line: 451, column: 45, scope: !4757)
!4763 = !DILocation(line: 453, column: 2, scope: !4757)
!4764 = distinct !DISubprogram(name: "acpi_platform_init", scope: !3, file: !3, line: 170, type: !1889, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !267)
!4765 = !DILocation(line: 172, column: 2, scope: !4764)
!4766 = !DILocation(line: 173, column: 1, scope: !4764)
!4767 = distinct !DISubprogram(name: "kmalloc_array", scope: !117, file: !117, line: 584, type: !4661, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !267)
!4768 = !DILocalVariable(name: "s", arg: 1, scope: !4769, file: !117, line: 445, type: !948)
!4769 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !117, file: !117, line: 445, type: !4770, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !267)
!4770 = !DISubroutineType(types: !4771)
!4771 = !{!124, !948, !125, !340}
!4772 = !DILocation(line: 445, column: 72, scope: !4769, inlinedAt: !4773)
!4773 = distinct !DILocation(line: 552, column: 10, scope: !4774, inlinedAt: !4779)
!4774 = distinct !DILexicalBlock(scope: !4775, file: !117, line: 540, column: 34)
!4775 = distinct !DILexicalBlock(scope: !4776, file: !117, line: 540, column: 6)
!4776 = distinct !DISubprogram(name: "kmalloc", scope: !117, file: !117, line: 538, type: !4777, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !267)
!4777 = !DISubroutineType(types: !4778)
!4778 = !{!124, !340, !125}
!4779 = distinct !DILocation(line: 591, column: 10, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !4767, file: !117, line: 590, column: 6)
!4781 = !DILocalVariable(name: "flags", arg: 2, scope: !4769, file: !117, line: 446, type: !125)
!4782 = !DILocation(line: 446, column: 9, scope: !4769, inlinedAt: !4773)
!4783 = !DILocalVariable(name: "size", arg: 3, scope: !4769, file: !117, line: 446, type: !340)
!4784 = !DILocation(line: 446, column: 23, scope: !4769, inlinedAt: !4773)
!4785 = !DILocalVariable(name: "ret", scope: !4769, file: !117, line: 448, type: !124)
!4786 = !DILocation(line: 448, column: 8, scope: !4769, inlinedAt: !4773)
!4787 = !DILocalVariable(name: "flags", arg: 1, scope: !4788, file: !117, line: 318, type: !125)
!4788 = distinct !DISubprogram(name: "kmalloc_type", scope: !117, file: !117, line: 318, type: !4789, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !267)
!4789 = !DISubroutineType(types: !4790)
!4790 = !{!116, !125}
!4791 = !DILocation(line: 318, column: 67, scope: !4788, inlinedAt: !4792)
!4792 = distinct !DILocation(line: 553, column: 20, scope: !4774, inlinedAt: !4779)
!4793 = !DILocalVariable(name: "size", arg: 1, scope: !4794, file: !117, line: 346, type: !340)
!4794 = distinct !DISubprogram(name: "kmalloc_index", scope: !117, file: !117, line: 346, type: !4795, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !267)
!4795 = !DISubroutineType(types: !4796)
!4796 = !{!7, !340}
!4797 = !DILocation(line: 346, column: 58, scope: !4794, inlinedAt: !4798)
!4798 = distinct !DILocation(line: 547, column: 11, scope: !4774, inlinedAt: !4779)
!4799 = !DILocalVariable(name: "size", arg: 1, scope: !4800, file: !117, line: 472, type: !340)
!4800 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !117, file: !117, line: 472, type: !4801, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !267)
!4801 = !DISubroutineType(types: !4802)
!4802 = !{!124, !340, !125, !7}
!4803 = !DILocation(line: 472, column: 28, scope: !4800, inlinedAt: !4804)
!4804 = distinct !DILocation(line: 481, column: 9, scope: !4805, inlinedAt: !4806)
!4805 = distinct !DISubprogram(name: "kmalloc_large", scope: !117, file: !117, line: 478, type: !4777, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !267)
!4806 = distinct !DILocation(line: 545, column: 11, scope: !4807, inlinedAt: !4779)
!4807 = distinct !DILexicalBlock(scope: !4774, file: !117, line: 544, column: 7)
!4808 = !DILocalVariable(name: "flags", arg: 2, scope: !4800, file: !117, line: 472, type: !125)
!4809 = !DILocation(line: 472, column: 40, scope: !4800, inlinedAt: !4804)
!4810 = !DILocalVariable(name: "order", arg: 3, scope: !4800, file: !117, line: 472, type: !7)
!4811 = !DILocation(line: 472, column: 60, scope: !4800, inlinedAt: !4804)
!4812 = !DILocalVariable(name: "size", arg: 1, scope: !4805, file: !117, line: 478, type: !340)
!4813 = !DILocation(line: 478, column: 51, scope: !4805, inlinedAt: !4806)
!4814 = !DILocalVariable(name: "flags", arg: 2, scope: !4805, file: !117, line: 478, type: !125)
!4815 = !DILocation(line: 478, column: 63, scope: !4805, inlinedAt: !4806)
!4816 = !DILocalVariable(name: "order", scope: !4805, file: !117, line: 480, type: !7)
!4817 = !DILocation(line: 480, column: 15, scope: !4805, inlinedAt: !4806)
!4818 = !DILocalVariable(name: "size", arg: 1, scope: !4776, file: !117, line: 538, type: !340)
!4819 = !DILocation(line: 538, column: 45, scope: !4776, inlinedAt: !4779)
!4820 = !DILocalVariable(name: "flags", arg: 2, scope: !4776, file: !117, line: 538, type: !125)
!4821 = !DILocation(line: 538, column: 57, scope: !4776, inlinedAt: !4779)
!4822 = !DILocalVariable(name: "index", scope: !4774, file: !117, line: 542, type: !7)
!4823 = !DILocation(line: 542, column: 16, scope: !4774, inlinedAt: !4779)
!4824 = !DILocalVariable(name: "n", arg: 1, scope: !4767, file: !117, line: 584, type: !340)
!4825 = !DILocation(line: 584, column: 42, scope: !4767)
!4826 = !DILocalVariable(name: "size", arg: 2, scope: !4767, file: !117, line: 584, type: !340)
!4827 = !DILocation(line: 584, column: 52, scope: !4767)
!4828 = !DILocalVariable(name: "flags", arg: 3, scope: !4767, file: !117, line: 584, type: !125)
!4829 = !DILocation(line: 584, column: 64, scope: !4767)
!4830 = !DILocalVariable(name: "bytes", scope: !4767, file: !117, line: 586, type: !340)
!4831 = !DILocation(line: 586, column: 9, scope: !4767)
!4832 = !DILocalVariable(name: "__a", scope: !4833, file: !117, line: 588, type: !340)
!4833 = distinct !DILexicalBlock(scope: !4834, file: !117, line: 588, column: 6)
!4834 = distinct !DILexicalBlock(scope: !4767, file: !117, line: 588, column: 6)
!4835 = !DILocation(line: 588, column: 6, scope: !4833)
!4836 = !DILocalVariable(name: "__b", scope: !4833, file: !117, line: 588, type: !340)
!4837 = !DILocalVariable(name: "__d", scope: !4833, file: !117, line: 588, type: !4838)
!4838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!4839 = !DILocation(line: 588, column: 6, scope: !4834)
!4840 = !DILocation(line: 588, column: 6, scope: !4767)
!4841 = !DILocation(line: 589, column: 3, scope: !4834)
!4842 = !DILocation(line: 590, column: 27, scope: !4780)
!4843 = !DILocation(line: 590, column: 6, scope: !4780)
!4844 = !DILocation(line: 590, column: 30, scope: !4780)
!4845 = !DILocation(line: 590, column: 54, scope: !4780)
!4846 = !DILocation(line: 590, column: 33, scope: !4780)
!4847 = !DILocation(line: 590, column: 6, scope: !4767)
!4848 = !DILocation(line: 591, column: 18, scope: !4780)
!4849 = !DILocation(line: 591, column: 25, scope: !4780)
!4850 = !DILocation(line: 540, column: 27, scope: !4775, inlinedAt: !4779)
!4851 = !DILocation(line: 540, column: 6, scope: !4775, inlinedAt: !4779)
!4852 = !DILocation(line: 540, column: 6, scope: !4776, inlinedAt: !4779)
!4853 = !DILocation(line: 544, column: 7, scope: !4807, inlinedAt: !4779)
!4854 = !DILocation(line: 544, column: 12, scope: !4807, inlinedAt: !4779)
!4855 = !DILocation(line: 544, column: 7, scope: !4774, inlinedAt: !4779)
!4856 = !DILocation(line: 545, column: 25, scope: !4807, inlinedAt: !4779)
!4857 = !DILocation(line: 545, column: 31, scope: !4807, inlinedAt: !4779)
!4858 = !DILocation(line: 480, column: 33, scope: !4805, inlinedAt: !4806)
!4859 = !DILocation(line: 480, column: 23, scope: !4805, inlinedAt: !4806)
!4860 = !DILocation(line: 481, column: 29, scope: !4805, inlinedAt: !4806)
!4861 = !DILocation(line: 481, column: 35, scope: !4805, inlinedAt: !4806)
!4862 = !DILocation(line: 481, column: 42, scope: !4805, inlinedAt: !4806)
!4863 = !DILocation(line: 474, column: 23, scope: !4800, inlinedAt: !4804)
!4864 = !DILocation(line: 474, column: 29, scope: !4800, inlinedAt: !4804)
!4865 = !DILocation(line: 474, column: 36, scope: !4800, inlinedAt: !4804)
!4866 = !DILocation(line: 474, column: 9, scope: !4800, inlinedAt: !4804)
!4867 = !DILocation(line: 545, column: 4, scope: !4807, inlinedAt: !4779)
!4868 = !DILocation(line: 547, column: 25, scope: !4774, inlinedAt: !4779)
!4869 = !DILocation(line: 348, column: 7, scope: !4870, inlinedAt: !4798)
!4870 = distinct !DILexicalBlock(scope: !4794, file: !117, line: 348, column: 6)
!4871 = !DILocation(line: 348, column: 6, scope: !4794, inlinedAt: !4798)
!4872 = !DILocation(line: 349, column: 3, scope: !4870, inlinedAt: !4798)
!4873 = !DILocation(line: 351, column: 6, scope: !4874, inlinedAt: !4798)
!4874 = distinct !DILexicalBlock(scope: !4794, file: !117, line: 351, column: 6)
!4875 = !DILocation(line: 351, column: 11, scope: !4874, inlinedAt: !4798)
!4876 = !DILocation(line: 351, column: 6, scope: !4794, inlinedAt: !4798)
!4877 = !DILocation(line: 352, column: 3, scope: !4874, inlinedAt: !4798)
!4878 = !DILocation(line: 354, column: 32, scope: !4879, inlinedAt: !4798)
!4879 = distinct !DILexicalBlock(scope: !4794, file: !117, line: 354, column: 6)
!4880 = !DILocation(line: 354, column: 37, scope: !4879, inlinedAt: !4798)
!4881 = !DILocation(line: 354, column: 42, scope: !4879, inlinedAt: !4798)
!4882 = !DILocation(line: 354, column: 45, scope: !4879, inlinedAt: !4798)
!4883 = !DILocation(line: 354, column: 50, scope: !4879, inlinedAt: !4798)
!4884 = !DILocation(line: 354, column: 6, scope: !4794, inlinedAt: !4798)
!4885 = !DILocation(line: 355, column: 3, scope: !4879, inlinedAt: !4798)
!4886 = !DILocation(line: 356, column: 32, scope: !4887, inlinedAt: !4798)
!4887 = distinct !DILexicalBlock(scope: !4794, file: !117, line: 356, column: 6)
!4888 = !DILocation(line: 356, column: 37, scope: !4887, inlinedAt: !4798)
!4889 = !DILocation(line: 356, column: 43, scope: !4887, inlinedAt: !4798)
!4890 = !DILocation(line: 356, column: 46, scope: !4887, inlinedAt: !4798)
!4891 = !DILocation(line: 356, column: 51, scope: !4887, inlinedAt: !4798)
!4892 = !DILocation(line: 356, column: 6, scope: !4794, inlinedAt: !4798)
!4893 = !DILocation(line: 357, column: 3, scope: !4887, inlinedAt: !4798)
!4894 = !DILocation(line: 358, column: 6, scope: !4895, inlinedAt: !4798)
!4895 = distinct !DILexicalBlock(scope: !4794, file: !117, line: 358, column: 6)
!4896 = !DILocation(line: 358, column: 11, scope: !4895, inlinedAt: !4798)
!4897 = !DILocation(line: 358, column: 6, scope: !4794, inlinedAt: !4798)
!4898 = !DILocation(line: 358, column: 26, scope: !4895, inlinedAt: !4798)
!4899 = !DILocation(line: 359, column: 6, scope: !4900, inlinedAt: !4798)
!4900 = distinct !DILexicalBlock(scope: !4794, file: !117, line: 359, column: 6)
!4901 = !DILocation(line: 359, column: 11, scope: !4900, inlinedAt: !4798)
!4902 = !DILocation(line: 359, column: 6, scope: !4794, inlinedAt: !4798)
!4903 = !DILocation(line: 359, column: 26, scope: !4900, inlinedAt: !4798)
!4904 = !DILocation(line: 360, column: 6, scope: !4905, inlinedAt: !4798)
!4905 = distinct !DILexicalBlock(scope: !4794, file: !117, line: 360, column: 6)
!4906 = !DILocation(line: 360, column: 11, scope: !4905, inlinedAt: !4798)
!4907 = !DILocation(line: 360, column: 6, scope: !4794, inlinedAt: !4798)
!4908 = !DILocation(line: 360, column: 26, scope: !4905, inlinedAt: !4798)
!4909 = !DILocation(line: 361, column: 6, scope: !4910, inlinedAt: !4798)
!4910 = distinct !DILexicalBlock(scope: !4794, file: !117, line: 361, column: 6)
!4911 = !DILocation(line: 361, column: 11, scope: !4910, inlinedAt: !4798)
!4912 = !DILocation(line: 361, column: 6, scope: !4794, inlinedAt: !4798)
!4913 = !DILocation(line: 361, column: 26, scope: !4910, inlinedAt: !4798)
!4914 = !DILocation(line: 362, column: 6, scope: !4915, inlinedAt: !4798)
!4915 = distinct !DILexicalBlock(scope: !4794, file: !117, line: 362, column: 6)
!4916 = !DILocation(line: 362, column: 11, scope: !4915, inlinedAt: !4798)
!4917 = !DILocation(line: 362, column: 6, scope: !4794, inlinedAt: !4798)
!4918 = !DILocation(line: 362, column: 26, scope: !4915, inlinedAt: !4798)
!4919 = !DILocation(line: 363, column: 6, scope: !4920, inlinedAt: !4798)
!4920 = distinct !DILexicalBlock(scope: !4794, file: !117, line: 363, column: 6)
!4921 = !DILocation(line: 363, column: 11, scope: !4920, inlinedAt: !4798)
!4922 = !DILocation(line: 363, column: 6, scope: !4794, inlinedAt: !4798)
!4923 = !DILocation(line: 363, column: 26, scope: !4920, inlinedAt: !4798)
!4924 = !DILocation(line: 364, column: 6, scope: !4925, inlinedAt: !4798)
!4925 = distinct !DILexicalBlock(scope: !4794, file: !117, line: 364, column: 6)
!4926 = !DILocation(line: 364, column: 11, scope: !4925, inlinedAt: !4798)
!4927 = !DILocation(line: 364, column: 6, scope: !4794, inlinedAt: !4798)
!4928 = !DILocation(line: 364, column: 26, scope: !4925, inlinedAt: !4798)
!4929 = !DILocation(line: 365, column: 6, scope: !4930, inlinedAt: !4798)
!4930 = distinct !DILexicalBlock(scope: !4794, file: !117, line: 365, column: 6)
!4931 = !DILocation(line: 365, column: 11, scope: !4930, inlinedAt: !4798)
!4932 = !DILocation(line: 365, column: 6, scope: !4794, inlinedAt: !4798)
!4933 = !DILocation(line: 365, column: 26, scope: !4930, inlinedAt: !4798)
!4934 = !DILocation(line: 366, column: 6, scope: !4935, inlinedAt: !4798)
!4935 = distinct !DILexicalBlock(scope: !4794, file: !117, line: 366, column: 6)
!4936 = !DILocation(line: 366, column: 11, scope: !4935, inlinedAt: !4798)
!4937 = !DILocation(line: 366, column: 6, scope: !4794, inlinedAt: !4798)
!4938 = !DILocation(line: 366, column: 26, scope: !4935, inlinedAt: !4798)
!4939 = !DILocation(line: 367, column: 6, scope: !4940, inlinedAt: !4798)
!4940 = distinct !DILexicalBlock(scope: !4794, file: !117, line: 367, column: 6)
!4941 = !DILocation(line: 367, column: 11, scope: !4940, inlinedAt: !4798)
!4942 = !DILocation(line: 367, column: 6, scope: !4794, inlinedAt: !4798)
!4943 = !DILocation(line: 367, column: 26, scope: !4940, inlinedAt: !4798)
!4944 = !DILocation(line: 368, column: 6, scope: !4945, inlinedAt: !4798)
!4945 = distinct !DILexicalBlock(scope: !4794, file: !117, line: 368, column: 6)
!4946 = !DILocation(line: 368, column: 11, scope: !4945, inlinedAt: !4798)
!4947 = !DILocation(line: 368, column: 6, scope: !4794, inlinedAt: !4798)
!4948 = !DILocation(line: 368, column: 26, scope: !4945, inlinedAt: !4798)
!4949 = !DILocation(line: 369, column: 6, scope: !4950, inlinedAt: !4798)
!4950 = distinct !DILexicalBlock(scope: !4794, file: !117, line: 369, column: 6)
!4951 = !DILocation(line: 369, column: 11, scope: !4950, inlinedAt: !4798)
!4952 = !DILocation(line: 369, column: 6, scope: !4794, inlinedAt: !4798)
!4953 = !DILocation(line: 369, column: 26, scope: !4950, inlinedAt: !4798)
!4954 = !DILocation(line: 370, column: 6, scope: !4955, inlinedAt: !4798)
!4955 = distinct !DILexicalBlock(scope: !4794, file: !117, line: 370, column: 6)
!4956 = !DILocation(line: 370, column: 11, scope: !4955, inlinedAt: !4798)
!4957 = !DILocation(line: 370, column: 6, scope: !4794, inlinedAt: !4798)
!4958 = !DILocation(line: 370, column: 26, scope: !4955, inlinedAt: !4798)
!4959 = !DILocation(line: 371, column: 6, scope: !4960, inlinedAt: !4798)
!4960 = distinct !DILexicalBlock(scope: !4794, file: !117, line: 371, column: 6)
!4961 = !DILocation(line: 371, column: 11, scope: !4960, inlinedAt: !4798)
!4962 = !DILocation(line: 371, column: 6, scope: !4794, inlinedAt: !4798)
!4963 = !DILocation(line: 371, column: 26, scope: !4960, inlinedAt: !4798)
!4964 = !DILocation(line: 372, column: 6, scope: !4965, inlinedAt: !4798)
!4965 = distinct !DILexicalBlock(scope: !4794, file: !117, line: 372, column: 6)
!4966 = !DILocation(line: 372, column: 11, scope: !4965, inlinedAt: !4798)
!4967 = !DILocation(line: 372, column: 6, scope: !4794, inlinedAt: !4798)
!4968 = !DILocation(line: 372, column: 26, scope: !4965, inlinedAt: !4798)
!4969 = !DILocation(line: 373, column: 6, scope: !4970, inlinedAt: !4798)
!4970 = distinct !DILexicalBlock(scope: !4794, file: !117, line: 373, column: 6)
!4971 = !DILocation(line: 373, column: 11, scope: !4970, inlinedAt: !4798)
!4972 = !DILocation(line: 373, column: 6, scope: !4794, inlinedAt: !4798)
!4973 = !DILocation(line: 373, column: 26, scope: !4970, inlinedAt: !4798)
!4974 = !DILocation(line: 374, column: 6, scope: !4975, inlinedAt: !4798)
!4975 = distinct !DILexicalBlock(scope: !4794, file: !117, line: 374, column: 6)
!4976 = !DILocation(line: 374, column: 11, scope: !4975, inlinedAt: !4798)
!4977 = !DILocation(line: 374, column: 6, scope: !4794, inlinedAt: !4798)
!4978 = !DILocation(line: 374, column: 26, scope: !4975, inlinedAt: !4798)
!4979 = !DILocation(line: 375, column: 6, scope: !4980, inlinedAt: !4798)
!4980 = distinct !DILexicalBlock(scope: !4794, file: !117, line: 375, column: 6)
!4981 = !DILocation(line: 375, column: 11, scope: !4980, inlinedAt: !4798)
!4982 = !DILocation(line: 375, column: 6, scope: !4794, inlinedAt: !4798)
!4983 = !DILocation(line: 375, column: 27, scope: !4980, inlinedAt: !4798)
!4984 = !DILocation(line: 376, column: 6, scope: !4985, inlinedAt: !4798)
!4985 = distinct !DILexicalBlock(scope: !4794, file: !117, line: 376, column: 6)
!4986 = !DILocation(line: 376, column: 11, scope: !4985, inlinedAt: !4798)
!4987 = !DILocation(line: 376, column: 6, scope: !4794, inlinedAt: !4798)
!4988 = !DILocation(line: 376, column: 32, scope: !4985, inlinedAt: !4798)
!4989 = !DILocation(line: 377, column: 6, scope: !4990, inlinedAt: !4798)
!4990 = distinct !DILexicalBlock(scope: !4794, file: !117, line: 377, column: 6)
!4991 = !DILocation(line: 377, column: 11, scope: !4990, inlinedAt: !4798)
!4992 = !DILocation(line: 377, column: 6, scope: !4794, inlinedAt: !4798)
!4993 = !DILocation(line: 377, column: 32, scope: !4990, inlinedAt: !4798)
!4994 = !DILocation(line: 378, column: 6, scope: !4995, inlinedAt: !4798)
!4995 = distinct !DILexicalBlock(scope: !4794, file: !117, line: 378, column: 6)
!4996 = !DILocation(line: 378, column: 11, scope: !4995, inlinedAt: !4798)
!4997 = !DILocation(line: 378, column: 6, scope: !4794, inlinedAt: !4798)
!4998 = !DILocation(line: 378, column: 32, scope: !4995, inlinedAt: !4798)
!4999 = !DILocation(line: 379, column: 6, scope: !5000, inlinedAt: !4798)
!5000 = distinct !DILexicalBlock(scope: !4794, file: !117, line: 379, column: 6)
!5001 = !DILocation(line: 379, column: 11, scope: !5000, inlinedAt: !4798)
!5002 = !DILocation(line: 379, column: 6, scope: !4794, inlinedAt: !4798)
!5003 = !DILocation(line: 379, column: 33, scope: !5000, inlinedAt: !4798)
!5004 = !DILocation(line: 380, column: 6, scope: !5005, inlinedAt: !4798)
!5005 = distinct !DILexicalBlock(scope: !4794, file: !117, line: 380, column: 6)
!5006 = !DILocation(line: 380, column: 11, scope: !5005, inlinedAt: !4798)
!5007 = !DILocation(line: 380, column: 6, scope: !4794, inlinedAt: !4798)
!5008 = !DILocation(line: 380, column: 33, scope: !5005, inlinedAt: !4798)
!5009 = !DILocation(line: 381, column: 6, scope: !5010, inlinedAt: !4798)
!5010 = distinct !DILexicalBlock(scope: !4794, file: !117, line: 381, column: 6)
!5011 = !DILocation(line: 381, column: 11, scope: !5010, inlinedAt: !4798)
!5012 = !DILocation(line: 381, column: 6, scope: !4794, inlinedAt: !4798)
!5013 = !DILocation(line: 381, column: 33, scope: !5010, inlinedAt: !4798)
!5014 = !DILocation(line: 382, column: 2, scope: !5015, inlinedAt: !4798)
!5015 = distinct !DILexicalBlock(scope: !5016, file: !117, line: 382, column: 2)
!5016 = distinct !DILexicalBlock(scope: !4794, file: !117, line: 382, column: 2)
!5017 = !{i32 -2144219165, i32 -2144219136, i32 -2144219090, i32 -2144219032, i32 -2144218978, i32 -2144218924, i32 -2144218869, i32 -2144218838}
!5018 = !DILocation(line: 382, column: 2, scope: !5019, inlinedAt: !4798)
!5019 = distinct !DILexicalBlock(scope: !5020, file: !117, line: 382, column: 2)
!5020 = distinct !DILexicalBlock(scope: !5016, file: !117, line: 382, column: 2)
!5021 = !{i32 -2144218395, i32 -2144218388, i32 -2144218334, i32 -2144218303, i32 -2144218273}
!5022 = !DILocation(line: 382, column: 2, scope: !5020, inlinedAt: !4798)
!5023 = !DILocation(line: 386, column: 1, scope: !4794, inlinedAt: !4798)
!5024 = !DILocation(line: 547, column: 9, scope: !4774, inlinedAt: !4779)
!5025 = !DILocation(line: 549, column: 8, scope: !5026, inlinedAt: !4779)
!5026 = distinct !DILexicalBlock(scope: !4774, file: !117, line: 549, column: 7)
!5027 = !DILocation(line: 549, column: 7, scope: !4774, inlinedAt: !4779)
!5028 = !DILocation(line: 550, column: 4, scope: !5026, inlinedAt: !4779)
!5029 = !DILocation(line: 553, column: 33, scope: !4774, inlinedAt: !4779)
!5030 = !DILocation(line: 325, column: 6, scope: !5031, inlinedAt: !4792)
!5031 = distinct !DILexicalBlock(scope: !4788, file: !117, line: 325, column: 6)
!5032 = !DILocation(line: 325, column: 6, scope: !4788, inlinedAt: !4792)
!5033 = !DILocation(line: 326, column: 3, scope: !5031, inlinedAt: !4792)
!5034 = !DILocation(line: 332, column: 9, scope: !4788, inlinedAt: !4792)
!5035 = !DILocation(line: 332, column: 15, scope: !4788, inlinedAt: !4792)
!5036 = !DILocation(line: 332, column: 2, scope: !4788, inlinedAt: !4792)
!5037 = !DILocation(line: 336, column: 1, scope: !4788, inlinedAt: !4792)
!5038 = !DILocation(line: 553, column: 5, scope: !4774, inlinedAt: !4779)
!5039 = !DILocation(line: 553, column: 41, scope: !4774, inlinedAt: !4779)
!5040 = !DILocation(line: 554, column: 5, scope: !4774, inlinedAt: !4779)
!5041 = !DILocation(line: 554, column: 12, scope: !4774, inlinedAt: !4779)
!5042 = !DILocation(line: 448, column: 31, scope: !4769, inlinedAt: !4773)
!5043 = !DILocation(line: 448, column: 34, scope: !4769, inlinedAt: !4773)
!5044 = !DILocation(line: 448, column: 14, scope: !4769, inlinedAt: !4773)
!5045 = !DILocation(line: 450, column: 22, scope: !4769, inlinedAt: !4773)
!5046 = !DILocation(line: 450, column: 25, scope: !4769, inlinedAt: !4773)
!5047 = !DILocation(line: 450, column: 30, scope: !4769, inlinedAt: !4773)
!5048 = !DILocation(line: 450, column: 36, scope: !4769, inlinedAt: !4773)
!5049 = !DILocation(line: 450, column: 8, scope: !4769, inlinedAt: !4773)
!5050 = !DILocation(line: 450, column: 6, scope: !4769, inlinedAt: !4773)
!5051 = !DILocation(line: 451, column: 9, scope: !4769, inlinedAt: !4773)
!5052 = !DILocation(line: 552, column: 3, scope: !4774, inlinedAt: !4779)
!5053 = !DILocation(line: 557, column: 19, scope: !4776, inlinedAt: !4779)
!5054 = !DILocation(line: 557, column: 25, scope: !4776, inlinedAt: !4779)
!5055 = !DILocation(line: 557, column: 9, scope: !4776, inlinedAt: !4779)
!5056 = !DILocation(line: 557, column: 2, scope: !4776, inlinedAt: !4779)
!5057 = !DILocation(line: 558, column: 1, scope: !4776, inlinedAt: !4779)
!5058 = !DILocation(line: 591, column: 3, scope: !4780)
!5059 = !DILocation(line: 592, column: 19, scope: !4767)
!5060 = !DILocation(line: 592, column: 26, scope: !4767)
!5061 = !DILocation(line: 592, column: 9, scope: !4767)
!5062 = !DILocation(line: 592, column: 2, scope: !4767)
!5063 = !DILocation(line: 593, column: 1, scope: !4767)
!5064 = distinct !DISubprogram(name: "__must_check_overflow", scope: !5065, file: !5065, line: 52, type: !5066, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !267)
!5065 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!5066 = !DISubroutineType(types: !5067)
!5067 = !{!500, !500}
!5068 = !DILocalVariable(name: "overflow", arg: 1, scope: !5064, file: !5065, line: 52, type: !500)
!5069 = !DILocation(line: 52, column: 60, scope: !5064)
!5070 = !DILocation(line: 54, column: 9, scope: !5064)
!5071 = !DILocation(line: 54, column: 2, scope: !5064)
!5072 = distinct !DISubprogram(name: "get_order", scope: !5073, file: !5073, line: 29, type: !5074, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !267)
!5073 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5074 = !DISubroutineType(types: !5075)
!5075 = !{!194, !156}
!5076 = !DILocalVariable(name: "x", arg: 1, scope: !5077, file: !5078, line: 366, type: !147)
!5077 = distinct !DISubprogram(name: "fls64", scope: !5078, file: !5078, line: 366, type: !5079, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !267)
!5078 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5079 = !DISubroutineType(types: !5080)
!5080 = !{!194, !147}
!5081 = !DILocation(line: 366, column: 40, scope: !5077, inlinedAt: !5082)
!5082 = distinct !DILocation(line: 46, column: 9, scope: !5072)
!5083 = !DILocalVariable(name: "bitpos", scope: !5077, file: !5078, line: 368, type: !194)
!5084 = !DILocation(line: 368, column: 6, scope: !5077, inlinedAt: !5082)
!5085 = !DILocalVariable(name: "size", arg: 1, scope: !5072, file: !5073, line: 29, type: !156)
!5086 = !DILocation(line: 29, column: 63, scope: !5072)
!5087 = !DILocation(line: 31, column: 27, scope: !5088)
!5088 = distinct !DILexicalBlock(scope: !5072, file: !5073, line: 31, column: 6)
!5089 = !DILocation(line: 31, column: 6, scope: !5088)
!5090 = !DILocation(line: 31, column: 6, scope: !5072)
!5091 = !DILocation(line: 32, column: 8, scope: !5092)
!5092 = distinct !DILexicalBlock(scope: !5093, file: !5073, line: 32, column: 7)
!5093 = distinct !DILexicalBlock(scope: !5088, file: !5073, line: 31, column: 34)
!5094 = !DILocation(line: 32, column: 7, scope: !5093)
!5095 = !DILocation(line: 33, column: 4, scope: !5092)
!5096 = !DILocation(line: 35, column: 7, scope: !5097)
!5097 = distinct !DILexicalBlock(scope: !5093, file: !5073, line: 35, column: 7)
!5098 = !DILocation(line: 35, column: 12, scope: !5097)
!5099 = !DILocation(line: 35, column: 7, scope: !5093)
!5100 = !DILocation(line: 36, column: 4, scope: !5097)
!5101 = !DILocation(line: 38, column: 10, scope: !5093)
!5102 = !DILocation(line: 38, column: 28, scope: !5093)
!5103 = !DILocation(line: 38, column: 41, scope: !5093)
!5104 = !DILocation(line: 38, column: 3, scope: !5093)
!5105 = !DILocation(line: 41, column: 6, scope: !5072)
!5106 = !DILocation(line: 42, column: 7, scope: !5072)
!5107 = !DILocation(line: 46, column: 15, scope: !5072)
!5108 = !DILocation(line: 374, column: 2, scope: !5077, inlinedAt: !5082)
!5109 = !DILocation(line: 376, column: 14, scope: !5077, inlinedAt: !5082)
!5110 = !{i32 315947}
!5111 = !DILocation(line: 377, column: 9, scope: !5077, inlinedAt: !5082)
!5112 = !DILocation(line: 377, column: 16, scope: !5077, inlinedAt: !5082)
!5113 = !DILocation(line: 46, column: 2, scope: !5072)
!5114 = !DILocation(line: 48, column: 1, scope: !5072)
!5115 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5116, file: !5116, line: 30, type: !5117, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !267)
!5116 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5117 = !DISubroutineType(types: !5118)
!5118 = !{!194, !145}
!5119 = !DILocation(line: 366, column: 40, scope: !5077, inlinedAt: !5120)
!5120 = distinct !DILocation(line: 32, column: 9, scope: !5115)
!5121 = !DILocation(line: 368, column: 6, scope: !5077, inlinedAt: !5120)
!5122 = !DILocalVariable(name: "n", arg: 1, scope: !5115, file: !5116, line: 30, type: !145)
!5123 = !DILocation(line: 30, column: 21, scope: !5115)
!5124 = !DILocation(line: 32, column: 15, scope: !5115)
!5125 = !DILocation(line: 374, column: 2, scope: !5077, inlinedAt: !5120)
!5126 = !DILocation(line: 376, column: 14, scope: !5077, inlinedAt: !5120)
!5127 = !DILocation(line: 377, column: 9, scope: !5077, inlinedAt: !5120)
!5128 = !DILocation(line: 377, column: 16, scope: !5077, inlinedAt: !5120)
!5129 = !DILocation(line: 32, column: 18, scope: !5115)
!5130 = !DILocation(line: 32, column: 2, scope: !5115)
!5131 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5132, file: !5132, line: 137, type: !5133, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !267)
!5132 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5133 = !DISubroutineType(types: !5134)
!5134 = !{!124, !948, !2137, !340, !125}
!5135 = !DILocalVariable(name: "s", arg: 1, scope: !5131, file: !5132, line: 137, type: !948)
!5136 = !DILocation(line: 137, column: 54, scope: !5131)
!5137 = !DILocalVariable(name: "object", arg: 2, scope: !5131, file: !5132, line: 137, type: !2137)
!5138 = !DILocation(line: 137, column: 69, scope: !5131)
!5139 = !DILocalVariable(name: "size", arg: 3, scope: !5131, file: !5132, line: 138, type: !340)
!5140 = !DILocation(line: 138, column: 12, scope: !5131)
!5141 = !DILocalVariable(name: "flags", arg: 4, scope: !5131, file: !5132, line: 138, type: !125)
!5142 = !DILocation(line: 138, column: 24, scope: !5131)
!5143 = !DILocation(line: 140, column: 17, scope: !5131)
!5144 = !DILocation(line: 140, column: 2, scope: !5131)
!5145 = distinct !DISubprogram(name: "kobject_name", scope: !241, file: !241, line: 88, type: !5146, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !267)
!5146 = !DISubroutineType(types: !5147)
!5147 = !{!152, !5148}
!5148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5149, size: 64)
!5149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !240)
!5150 = !DILocalVariable(name: "kobj", arg: 1, scope: !5145, file: !241, line: 88, type: !5148)
!5151 = !DILocation(line: 88, column: 62, scope: !5145)
!5152 = !DILocation(line: 90, column: 9, scope: !5145)
!5153 = !DILocation(line: 90, column: 15, scope: !5145)
!5154 = !DILocation(line: 90, column: 2, scope: !5145)
!5155 = distinct !DISubprogram(name: "acpi_platform_device_remove_notify", scope: !3, file: !3, line: 40, type: !4164, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !267)
!5156 = !DILocalVariable(name: "nb", arg: 1, scope: !5155, file: !3, line: 40, type: !4166)
!5157 = !DILocation(line: 40, column: 70, scope: !5155)
!5158 = !DILocalVariable(name: "value", arg: 2, scope: !5155, file: !3, line: 41, type: !156)
!5159 = !DILocation(line: 41, column: 26, scope: !5155)
!5160 = !DILocalVariable(name: "arg", arg: 3, scope: !5155, file: !3, line: 41, type: !124)
!5161 = !DILocation(line: 41, column: 39, scope: !5155)
!5162 = !DILocalVariable(name: "adev", scope: !5155, file: !3, line: 43, type: !4180)
!5163 = !DILocation(line: 43, column: 22, scope: !5155)
!5164 = !DILocation(line: 43, column: 29, scope: !5155)
!5165 = !DILocalVariable(name: "pdev", scope: !5155, file: !3, line: 44, type: !4129)
!5166 = !DILocation(line: 44, column: 26, scope: !5155)
!5167 = !DILocation(line: 46, column: 10, scope: !5155)
!5168 = !DILocation(line: 46, column: 2, scope: !5155)
!5169 = !DILocation(line: 49, column: 3, scope: !5170)
!5170 = distinct !DILexicalBlock(scope: !5155, file: !3, line: 46, column: 17)
!5171 = !DILocation(line: 51, column: 31, scope: !5172)
!5172 = distinct !DILexicalBlock(scope: !5170, file: !3, line: 51, column: 7)
!5173 = !DILocation(line: 51, column: 8, scope: !5172)
!5174 = !DILocation(line: 51, column: 7, scope: !5170)
!5175 = !DILocation(line: 52, column: 4, scope: !5172)
!5176 = !DILocation(line: 54, column: 49, scope: !5170)
!5177 = !DILocation(line: 54, column: 10, scope: !5170)
!5178 = !DILocation(line: 54, column: 8, scope: !5170)
!5179 = !DILocation(line: 55, column: 8, scope: !5180)
!5180 = distinct !DILexicalBlock(scope: !5170, file: !3, line: 55, column: 7)
!5181 = !DILocation(line: 55, column: 7, scope: !5170)
!5182 = !DILocation(line: 56, column: 4, scope: !5180)
!5183 = !DILocation(line: 58, column: 30, scope: !5170)
!5184 = !DILocation(line: 58, column: 3, scope: !5170)
!5185 = !DILocation(line: 59, column: 15, scope: !5170)
!5186 = !DILocation(line: 59, column: 21, scope: !5170)
!5187 = !DILocation(line: 59, column: 3, scope: !5170)
!5188 = !DILocation(line: 60, column: 3, scope: !5170)
!5189 = !DILocation(line: 63, column: 2, scope: !5155)
!5190 = distinct !DISubprogram(name: "acpi_device_enumerated", scope: !221, file: !221, line: 541, type: !5191, scopeLine: 542, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !267)
!5191 = !DISubroutineType(types: !5192)
!5192 = !{!500, !4180}
!5193 = !DILocalVariable(name: "adev", arg: 1, scope: !5190, file: !221, line: 541, type: !4180)
!5194 = !DILocation(line: 541, column: 63, scope: !5190)
!5195 = !DILocation(line: 543, column: 9, scope: !5190)
!5196 = !DILocation(line: 543, column: 14, scope: !5190)
!5197 = !DILocation(line: 543, column: 17, scope: !5190)
!5198 = !DILocation(line: 543, column: 23, scope: !5190)
!5199 = !DILocation(line: 543, column: 29, scope: !5190)
!5200 = !DILocation(line: 543, column: 41, scope: !5190)
!5201 = !DILocation(line: 543, column: 44, scope: !5190)
!5202 = !DILocation(line: 543, column: 50, scope: !5190)
!5203 = !DILocation(line: 543, column: 56, scope: !5190)
!5204 = !DILocation(line: 0, scope: !5190)
!5205 = !DILocation(line: 543, column: 2, scope: !5190)
!5206 = distinct !DISubprogram(name: "acpi_platform_device_find_by_companion", scope: !3, file: !3, line: 32, type: !5207, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !267)
!5207 = !DISubroutineType(types: !5208)
!5208 = !{!4129, !4180}
!5209 = !DILocalVariable(name: "adev", arg: 1, scope: !5206, file: !3, line: 32, type: !4180)
!5210 = !DILocation(line: 32, column: 91, scope: !5206)
!5211 = !DILocalVariable(name: "dev", scope: !5206, file: !3, line: 34, type: !236)
!5212 = !DILocation(line: 34, column: 17, scope: !5206)
!5213 = !DILocation(line: 36, column: 56, scope: !5206)
!5214 = !DILocation(line: 36, column: 8, scope: !5206)
!5215 = !DILocation(line: 36, column: 6, scope: !5206)
!5216 = !DILocation(line: 37, column: 9, scope: !5206)
!5217 = !DILocalVariable(name: "__mptr", scope: !5218, file: !3, line: 37, type: !124)
!5218 = distinct !DILexicalBlock(scope: !5206, file: !3, line: 37, column: 15)
!5219 = !DILocation(line: 37, column: 15, scope: !5218)
!5220 = !DILocation(line: 37, column: 15, scope: !5221)
!5221 = distinct !DILexicalBlock(scope: !5218, file: !3, line: 37, column: 15)
!5222 = !DILocation(line: 37, column: 2, scope: !5206)
!5223 = distinct !DISubprogram(name: "bus_find_device_by_acpi_dev", scope: !3441, file: !3441, line: 237, type: !5224, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !267)
!5224 = !DISubroutineType(types: !5225)
!5225 = !{!236, !3439, !5226}
!5226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5227, size: 64)
!5227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4181)
!5228 = !DILocalVariable(name: "bus", arg: 1, scope: !5223, file: !3441, line: 237, type: !3439)
!5229 = !DILocation(line: 237, column: 46, scope: !5223)
!5230 = !DILocalVariable(name: "adev", arg: 2, scope: !5223, file: !3441, line: 237, type: !5226)
!5231 = !DILocation(line: 237, column: 77, scope: !5223)
!5232 = !DILocation(line: 239, column: 25, scope: !5223)
!5233 = !DILocation(line: 239, column: 36, scope: !5223)
!5234 = !DILocation(line: 239, column: 9, scope: !5223)
!5235 = !DILocation(line: 239, column: 2, scope: !5223)
