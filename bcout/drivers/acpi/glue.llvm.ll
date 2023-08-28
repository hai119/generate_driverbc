; ModuleID = '../bcout/drivers/acpi/glue.llvm.bc'
source_filename = "drivers/acpi/glue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
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
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
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
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
%struct.acpi_bus_type = type { %struct.list_head, i8*, i1 (%struct.device*)*, %struct.acpi_device* (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)* }
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
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%struct.acpi_device_physical_node = type { i32, %struct.list_head, %struct.device*, i8 }

@acpi_disabled = external dso_local global i32, align 4
@bus_type_sem = internal global %struct.rw_semaphore { %struct.atomic64_t zeroinitializer, %struct.atomic64_t zeroinitializer, %struct.raw_spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.rw_semaphore* @bus_type_sem to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.rw_semaphore* @bus_type_sem to i8*), i64 16) to %struct.list_head*) } }, align 8, !dbg !0
@bus_type_list = internal global %struct.list_head { %struct.list_head* @bus_type_list, %struct.list_head* @bus_type_list }, align 8, !dbg !4158
@.str = private unnamed_addr constant [32 x i8] c"\016ACPI: bus type %s registered\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"\016ACPI: bus type %s unregistered\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"_ADR\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"ACPI companion already set\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Already associated with ACPI node\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Failed to create link %s (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"firmware_node\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Failed to create link firmware_node (%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"_STA\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.9 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"physical_node%u\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"physical_node\00", align 1
@platform_bus_type = external dso_local global %struct.bus_type, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @register_acpi_bus_type(%struct.acpi_bus_type* %type) #0 !dbg !4165 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca %struct.acpi_bus_type*, align 8
  store %struct.acpi_bus_type* %type, %struct.acpi_bus_type** %type.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_bus_type** %type.addr, metadata !4168, metadata !DIExpression()), !dbg !4169
  %0 = load i32, i32* @acpi_disabled, align 4, !dbg !4170
  %tobool = icmp ne i32 %0, 0, !dbg !4170
  br i1 %tobool, label %if.then, label %if.end, !dbg !4172

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !4173
  br label %return, !dbg !4173

if.end:                                           ; preds = %entry
  %1 = load %struct.acpi_bus_type*, %struct.acpi_bus_type** %type.addr, align 8, !dbg !4174
  %tobool1 = icmp ne %struct.acpi_bus_type* %1, null, !dbg !4174
  br i1 %tobool1, label %land.lhs.true, label %if.end6, !dbg !4176

land.lhs.true:                                    ; preds = %if.end
  %2 = load %struct.acpi_bus_type*, %struct.acpi_bus_type** %type.addr, align 8, !dbg !4177
  %match = getelementptr inbounds %struct.acpi_bus_type, %struct.acpi_bus_type* %2, i32 0, i32 2, !dbg !4178
  %3 = load i1 (%struct.device*)*, i1 (%struct.device*)** %match, align 8, !dbg !4178
  %tobool2 = icmp ne i1 (%struct.device*)* %3, null, !dbg !4177
  br i1 %tobool2, label %land.lhs.true3, label %if.end6, !dbg !4179

land.lhs.true3:                                   ; preds = %land.lhs.true
  %4 = load %struct.acpi_bus_type*, %struct.acpi_bus_type** %type.addr, align 8, !dbg !4180
  %find_companion = getelementptr inbounds %struct.acpi_bus_type, %struct.acpi_bus_type* %4, i32 0, i32 3, !dbg !4181
  %5 = load %struct.acpi_device* (%struct.device*)*, %struct.acpi_device* (%struct.device*)** %find_companion, align 8, !dbg !4181
  %tobool4 = icmp ne %struct.acpi_device* (%struct.device*)* %5, null, !dbg !4180
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !4182

if.then5:                                         ; preds = %land.lhs.true3
  call void @down_write(%struct.rw_semaphore* @bus_type_sem) #7, !dbg !4183
  %6 = load %struct.acpi_bus_type*, %struct.acpi_bus_type** %type.addr, align 8, !dbg !4185
  %list = getelementptr inbounds %struct.acpi_bus_type, %struct.acpi_bus_type* %6, i32 0, i32 0, !dbg !4186
  call void @list_add_tail(%struct.list_head* %list, %struct.list_head* @bus_type_list) #7, !dbg !4187
  call void @up_write(%struct.rw_semaphore* @bus_type_sem) #7, !dbg !4188
  %7 = load %struct.acpi_bus_type*, %struct.acpi_bus_type** %type.addr, align 8, !dbg !4189
  %name = getelementptr inbounds %struct.acpi_bus_type, %struct.acpi_bus_type* %7, i32 0, i32 1, !dbg !4190
  %8 = load i8*, i8** %name, align 8, !dbg !4190
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %8) #8, !dbg !4191
  store i32 0, i32* %retval, align 4, !dbg !4192
  br label %return, !dbg !4192

if.end6:                                          ; preds = %land.lhs.true3, %land.lhs.true, %if.end
  store i32 -19, i32* %retval, align 4, !dbg !4193
  br label %return, !dbg !4193

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !4194
  ret i32 %9, !dbg !4194
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @down_write(%struct.rw_semaphore*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !4195 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4199, metadata !DIExpression()), !dbg !4200
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !4201, metadata !DIExpression()), !dbg !4202
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4203
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4204
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !4205
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !4205
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4206
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #7, !dbg !4207
  ret void, !dbg !4208
}

; Function Attrs: noredzone
declare dso_local void @up_write(%struct.rw_semaphore*) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @unregister_acpi_bus_type(%struct.acpi_bus_type* %type) #0 !dbg !4209 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca %struct.acpi_bus_type*, align 8
  store %struct.acpi_bus_type* %type, %struct.acpi_bus_type** %type.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_bus_type** %type.addr, metadata !4210, metadata !DIExpression()), !dbg !4211
  %0 = load i32, i32* @acpi_disabled, align 4, !dbg !4212
  %tobool = icmp ne i32 %0, 0, !dbg !4212
  br i1 %tobool, label %if.then, label %if.end, !dbg !4214

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4215
  br label %return, !dbg !4215

if.end:                                           ; preds = %entry
  %1 = load %struct.acpi_bus_type*, %struct.acpi_bus_type** %type.addr, align 8, !dbg !4216
  %tobool1 = icmp ne %struct.acpi_bus_type* %1, null, !dbg !4216
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !4218

if.then2:                                         ; preds = %if.end
  call void @down_write(%struct.rw_semaphore* @bus_type_sem) #7, !dbg !4219
  %2 = load %struct.acpi_bus_type*, %struct.acpi_bus_type** %type.addr, align 8, !dbg !4221
  %list = getelementptr inbounds %struct.acpi_bus_type, %struct.acpi_bus_type* %2, i32 0, i32 0, !dbg !4222
  call void @list_del_init(%struct.list_head* %list) #7, !dbg !4223
  call void @up_write(%struct.rw_semaphore* @bus_type_sem) #7, !dbg !4224
  %3 = load %struct.acpi_bus_type*, %struct.acpi_bus_type** %type.addr, align 8, !dbg !4225
  %name = getelementptr inbounds %struct.acpi_bus_type, %struct.acpi_bus_type* %3, i32 0, i32 1, !dbg !4226
  %4 = load i8*, i8** %name, align 8, !dbg !4226
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %4) #8, !dbg !4227
  store i32 0, i32* %retval, align 4, !dbg !4228
  br label %return, !dbg !4228

if.end3:                                          ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !4229
  br label %return, !dbg !4229

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !4230
  ret i32 %5, !dbg !4230
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del_init(%struct.list_head* %entry1) #0 !dbg !4231 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !4234, metadata !DIExpression()), !dbg !4235
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4236
  call void @__list_del_entry(%struct.list_head* %0) #7, !dbg !4237
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4238
  call void @INIT_LIST_HEAD(%struct.list_head* %1) #7, !dbg !4239
  ret void, !dbg !4240
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.acpi_device* @acpi_find_child_device(%struct.acpi_device* %parent, i64 %address, i1 zeroext %check_children) #0 !dbg !4241 {
entry:
  %retval = alloca %struct.acpi_device*, align 8
  %parent.addr = alloca %struct.acpi_device*, align 8
  %address.addr = alloca i64, align 8
  %check_children.addr = alloca i8, align 1
  %adev = alloca %struct.acpi_device*, align 8
  %ret = alloca %struct.acpi_device*, align 8
  %ret_score = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %addr = alloca i64, align 8
  %status = alloca i32, align 4
  %score = alloca i32, align 4
  %__mptr25 = alloca i8*, align 8
  %tmp30 = alloca %struct.acpi_device*, align 8
  store %struct.acpi_device* %parent, %struct.acpi_device** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %parent.addr, metadata !4244, metadata !DIExpression()), !dbg !4245
  store i64 %address, i64* %address.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %address.addr, metadata !4246, metadata !DIExpression()), !dbg !4247
  %frombool = zext i1 %check_children to i8
  store i8 %frombool, i8* %check_children.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %check_children.addr, metadata !4248, metadata !DIExpression()), !dbg !4249
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev, metadata !4250, metadata !DIExpression()), !dbg !4251
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %ret, metadata !4252, metadata !DIExpression()), !dbg !4253
  store %struct.acpi_device* null, %struct.acpi_device** %ret, align 8, !dbg !4253
  call void @llvm.dbg.declare(metadata i32* %ret_score, metadata !4254, metadata !DIExpression()), !dbg !4255
  store i32 0, i32* %ret_score, align 4, !dbg !4255
  %0 = load %struct.acpi_device*, %struct.acpi_device** %parent.addr, align 8, !dbg !4256
  %tobool = icmp ne %struct.acpi_device* %0, null, !dbg !4256
  br i1 %tobool, label %if.end, label %if.then, !dbg !4258

if.then:                                          ; preds = %entry
  store %struct.acpi_device* null, %struct.acpi_device** %retval, align 8, !dbg !4259
  br label %return, !dbg !4259

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4260, metadata !DIExpression()), !dbg !4263
  %1 = load %struct.acpi_device*, %struct.acpi_device** %parent.addr, align 8, !dbg !4263
  %children = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %1, i32 0, i32 4, !dbg !4263
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %children, i32 0, i32 0, !dbg !4263
  %2 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4263
  %3 = bitcast %struct.list_head* %2 to i8*, !dbg !4263
  store i8* %3, i8** %__mptr, align 8, !dbg !4263
  br label %do.body, !dbg !4263

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !4264

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !4263
  %add.ptr = getelementptr i8, i8* %4, i64 -64, !dbg !4263
  %5 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !4263
  store %struct.acpi_device* %5, %struct.acpi_device** %tmp, align 8, !dbg !4264
  %6 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !4263
  store %struct.acpi_device* %6, %struct.acpi_device** %adev, align 8, !dbg !4266
  br label %for.cond, !dbg !4266

for.cond:                                         ; preds = %do.end29, %do.end
  %7 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !4267
  %node = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %7, i32 0, i32 5, !dbg !4267
  %8 = load %struct.acpi_device*, %struct.acpi_device** %parent.addr, align 8, !dbg !4267
  %children1 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %8, i32 0, i32 4, !dbg !4267
  %cmp = icmp eq %struct.list_head* %node, %children1, !dbg !4267
  %lnot = xor i1 %cmp, true, !dbg !4267
  br i1 %lnot, label %for.body, label %for.end, !dbg !4266

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %addr, metadata !4269, metadata !DIExpression()), !dbg !4271
  call void @llvm.dbg.declare(metadata i32* %status, metadata !4272, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.declare(metadata i32* %score, metadata !4274, metadata !DIExpression()), !dbg !4275
  %9 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !4276
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %9, i32 0, i32 1, !dbg !4277
  %10 = load i8*, i8** %handle, align 8, !dbg !4277
  %call = call i32 @acpi_evaluate_integer(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct.acpi_object_list* null, i64* %addr) #7, !dbg !4278
  store i32 %call, i32* %status, align 4, !dbg !4279
  %11 = load i32, i32* %status, align 4, !dbg !4280
  %tobool2 = icmp ne i32 %11, 0, !dbg !4280
  br i1 %tobool2, label %if.then4, label %lor.lhs.false, !dbg !4282

lor.lhs.false:                                    ; preds = %for.body
  %12 = load i64, i64* %addr, align 8, !dbg !4283
  %13 = load i64, i64* %address.addr, align 8, !dbg !4284
  %cmp3 = icmp ne i64 %12, %13, !dbg !4285
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !4286

if.then4:                                         ; preds = %lor.lhs.false, %for.body
  br label %for.inc, !dbg !4287

if.end5:                                          ; preds = %lor.lhs.false
  %14 = load %struct.acpi_device*, %struct.acpi_device** %ret, align 8, !dbg !4288
  %tobool6 = icmp ne %struct.acpi_device* %14, null, !dbg !4288
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !4290

if.then7:                                         ; preds = %if.end5
  %15 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !4291
  store %struct.acpi_device* %15, %struct.acpi_device** %ret, align 8, !dbg !4293
  br label %for.inc, !dbg !4294

if.end8:                                          ; preds = %if.end5
  %16 = load i32, i32* %ret_score, align 4, !dbg !4295
  %tobool9 = icmp ne i32 %16, 0, !dbg !4295
  br i1 %tobool9, label %if.end16, label %if.then10, !dbg !4297

if.then10:                                        ; preds = %if.end8
  %17 = load %struct.acpi_device*, %struct.acpi_device** %ret, align 8, !dbg !4298
  %18 = load i8, i8* %check_children.addr, align 1, !dbg !4300
  %tobool11 = trunc i8 %18 to i1, !dbg !4300
  %call12 = call i32 @find_child_checks(%struct.acpi_device* %17, i1 zeroext %tobool11) #7, !dbg !4301
  store i32 %call12, i32* %ret_score, align 4, !dbg !4302
  %19 = load i32, i32* %ret_score, align 4, !dbg !4303
  %cmp13 = icmp eq i32 %19, 2, !dbg !4305
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !4306

if.then14:                                        ; preds = %if.then10
  %20 = load %struct.acpi_device*, %struct.acpi_device** %ret, align 8, !dbg !4307
  store %struct.acpi_device* %20, %struct.acpi_device** %retval, align 8, !dbg !4308
  br label %return, !dbg !4308

if.end15:                                         ; preds = %if.then10
  br label %if.end16, !dbg !4309

if.end16:                                         ; preds = %if.end15, %if.end8
  %21 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !4310
  %22 = load i8, i8* %check_children.addr, align 1, !dbg !4311
  %tobool17 = trunc i8 %22 to i1, !dbg !4311
  %call18 = call i32 @find_child_checks(%struct.acpi_device* %21, i1 zeroext %tobool17) #7, !dbg !4312
  store i32 %call18, i32* %score, align 4, !dbg !4313
  %23 = load i32, i32* %score, align 4, !dbg !4314
  %cmp19 = icmp eq i32 %23, 2, !dbg !4316
  br i1 %cmp19, label %if.then20, label %if.else, !dbg !4317

if.then20:                                        ; preds = %if.end16
  %24 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !4318
  store %struct.acpi_device* %24, %struct.acpi_device** %retval, align 8, !dbg !4320
  br label %return, !dbg !4320

if.else:                                          ; preds = %if.end16
  %25 = load i32, i32* %score, align 4, !dbg !4321
  %26 = load i32, i32* %ret_score, align 4, !dbg !4323
  %cmp21 = icmp sgt i32 %25, %26, !dbg !4324
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !4325

if.then22:                                        ; preds = %if.else
  %27 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !4326
  store %struct.acpi_device* %27, %struct.acpi_device** %ret, align 8, !dbg !4328
  %28 = load i32, i32* %score, align 4, !dbg !4329
  store i32 %28, i32* %ret_score, align 4, !dbg !4330
  br label %if.end23, !dbg !4331

if.end23:                                         ; preds = %if.then22, %if.else
  br label %if.end24

if.end24:                                         ; preds = %if.end23
  br label %for.inc, !dbg !4332

for.inc:                                          ; preds = %if.end24, %if.then7, %if.then4
  call void @llvm.dbg.declare(metadata i8** %__mptr25, metadata !4333, metadata !DIExpression()), !dbg !4335
  %29 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !4335
  %node26 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %29, i32 0, i32 5, !dbg !4335
  %next27 = getelementptr inbounds %struct.list_head, %struct.list_head* %node26, i32 0, i32 0, !dbg !4335
  %30 = load %struct.list_head*, %struct.list_head** %next27, align 8, !dbg !4335
  %31 = bitcast %struct.list_head* %30 to i8*, !dbg !4335
  store i8* %31, i8** %__mptr25, align 8, !dbg !4335
  br label %do.body28, !dbg !4335

do.body28:                                        ; preds = %for.inc
  br label %do.end29, !dbg !4336

do.end29:                                         ; preds = %do.body28
  %32 = load i8*, i8** %__mptr25, align 8, !dbg !4335
  %add.ptr31 = getelementptr i8, i8* %32, i64 -64, !dbg !4335
  %33 = bitcast i8* %add.ptr31 to %struct.acpi_device*, !dbg !4335
  store %struct.acpi_device* %33, %struct.acpi_device** %tmp30, align 8, !dbg !4336
  %34 = load %struct.acpi_device*, %struct.acpi_device** %tmp30, align 8, !dbg !4335
  store %struct.acpi_device* %34, %struct.acpi_device** %adev, align 8, !dbg !4267
  br label %for.cond, !dbg !4267, !llvm.loop !4338

for.end:                                          ; preds = %for.cond
  %35 = load %struct.acpi_device*, %struct.acpi_device** %ret, align 8, !dbg !4340
  store %struct.acpi_device* %35, %struct.acpi_device** %retval, align 8, !dbg !4341
  br label %return, !dbg !4341

return:                                           ; preds = %for.end, %if.then20, %if.then14, %if.then
  %36 = load %struct.acpi_device*, %struct.acpi_device** %retval, align 8, !dbg !4342
  ret %struct.acpi_device* %36, !dbg !4342
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_evaluate_integer(i8*, i8*, %struct.acpi_object_list*, i64*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @find_child_checks(%struct.acpi_device* %adev, i1 zeroext %check_children) #0 !dbg !4343 {
entry:
  %retval = alloca i32, align 4
  %adev.addr = alloca %struct.acpi_device*, align 8
  %check_children.addr = alloca i8, align 1
  %sta_present = alloca i8, align 1
  %sta = alloca i64, align 8
  %status = alloca i32, align 4
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !4346, metadata !DIExpression()), !dbg !4347
  %frombool = zext i1 %check_children to i8
  store i8 %frombool, i8* %check_children.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %check_children.addr, metadata !4348, metadata !DIExpression()), !dbg !4349
  call void @llvm.dbg.declare(metadata i8* %sta_present, metadata !4350, metadata !DIExpression()), !dbg !4351
  store i8 1, i8* %sta_present, align 1, !dbg !4351
  call void @llvm.dbg.declare(metadata i64* %sta, metadata !4352, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.declare(metadata i32* %status, metadata !4354, metadata !DIExpression()), !dbg !4355
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4356
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %0, i32 0, i32 1, !dbg !4357
  %1 = load i8*, i8** %handle, align 8, !dbg !4357
  %call = call i32 @acpi_evaluate_integer(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), %struct.acpi_object_list* null, i64* %sta) #7, !dbg !4358
  store i32 %call, i32* %status, align 4, !dbg !4359
  %2 = load i32, i32* %status, align 4, !dbg !4360
  %cmp = icmp eq i32 %2, 5, !dbg !4362
  br i1 %cmp, label %if.then, label %if.else, !dbg !4363

if.then:                                          ; preds = %entry
  store i8 0, i8* %sta_present, align 1, !dbg !4364
  br label %if.end3, !dbg !4365

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %status, align 4, !dbg !4366
  %tobool = icmp ne i32 %3, 0, !dbg !4366
  br i1 %tobool, label %if.then2, label %lor.lhs.false, !dbg !4368

lor.lhs.false:                                    ; preds = %if.else
  %4 = load i64, i64* %sta, align 8, !dbg !4369
  %and = and i64 %4, 2, !dbg !4370
  %tobool1 = icmp ne i64 %and, 0, !dbg !4370
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !4371

if.then2:                                         ; preds = %lor.lhs.false, %if.else
  store i32 -19, i32* %retval, align 4, !dbg !4372
  br label %return, !dbg !4372

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then
  %5 = load i8, i8* %check_children.addr, align 1, !dbg !4373
  %tobool4 = trunc i8 %5 to i1, !dbg !4373
  br i1 %tobool4, label %land.lhs.true, label %if.end8, !dbg !4375

land.lhs.true:                                    ; preds = %if.end3
  %6 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4376
  %children = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %6, i32 0, i32 4, !dbg !4377
  %call5 = call i32 @list_empty(%struct.list_head* %children) #7, !dbg !4378
  %tobool6 = icmp ne i32 %call5, 0, !dbg !4378
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !4379

if.then7:                                         ; preds = %land.lhs.true
  store i32 -19, i32* %retval, align 4, !dbg !4380
  br label %return, !dbg !4380

if.end8:                                          ; preds = %land.lhs.true, %if.end3
  %7 = load i8, i8* %sta_present, align 1, !dbg !4381
  %tobool9 = trunc i8 %7 to i1, !dbg !4381
  br i1 %tobool9, label %land.rhs, label %land.end, !dbg !4382

land.rhs:                                         ; preds = %if.end8
  %8 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4383
  %pnp = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %8, i32 0, i32 10, !dbg !4384
  %type = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp, i32 0, i32 1, !dbg !4385
  %9 = bitcast %struct.acpi_pnp_type* %type to i32*, !dbg !4386
  %bf.load = load i32, i32* %9, align 8, !dbg !4386
  %bf.lshr = lshr i32 %bf.load, 2, !dbg !4386
  %bf.clear = and i32 %bf.lshr, 1, !dbg !4386
  %tobool10 = icmp ne i32 %bf.clear, 0, !dbg !4387
  %lnot = xor i1 %tobool10, true, !dbg !4387
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end8
  %10 = phi i1 [ false, %if.end8 ], [ %lnot, %land.rhs ], !dbg !4388
  %11 = zext i1 %10 to i64, !dbg !4381
  %cond = select i1 %10, i32 2, i32 1, !dbg !4381
  store i32 %cond, i32* %retval, align 4, !dbg !4389
  br label %return, !dbg !4389

return:                                           ; preds = %land.end, %if.then7, %if.then2
  %12 = load i32, i32* %retval, align 4, !dbg !4390
  ret i32 %12, !dbg !4390
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_bind_one(%struct.device* %dev, %struct.acpi_device* %acpi_dev) #0 !dbg !4391 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %acpi_dev.addr = alloca %struct.acpi_device*, align 8
  %physical_node = alloca %struct.acpi_device_physical_node*, align 8
  %pn = alloca %struct.acpi_device_physical_node*, align 8
  %physical_node_name = alloca [24 x i8], align 16
  %physnode_list = alloca %struct.list_head*, align 8
  %node_id = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp4 = alloca %struct.acpi_device*, align 8
  %__mptr16 = alloca i8*, align 8
  %tmp20 = alloca %struct.acpi_device_physical_node*, align 8
  %__to_acpi_device_node_fwnode27 = alloca %struct.fwnode_handle*, align 8
  %tmp29 = alloca %struct.acpi_device*, align 8
  %__mptr32 = alloca i8*, align 8
  %tmp35 = alloca %struct.acpi_device*, align 8
  %__mptr50 = alloca i8*, align 8
  %tmp55 = alloca %struct.acpi_device_physical_node*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4394, metadata !DIExpression()), !dbg !4395
  store %struct.acpi_device* %acpi_dev, %struct.acpi_device** %acpi_dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %acpi_dev.addr, metadata !4396, metadata !DIExpression()), !dbg !4397
  call void @llvm.dbg.declare(metadata %struct.acpi_device_physical_node** %physical_node, metadata !4398, metadata !DIExpression()), !dbg !4399
  call void @llvm.dbg.declare(metadata %struct.acpi_device_physical_node** %pn, metadata !4400, metadata !DIExpression()), !dbg !4401
  call void @llvm.dbg.declare(metadata [24 x i8]* %physical_node_name, metadata !4402, metadata !DIExpression()), !dbg !4406
  call void @llvm.dbg.declare(metadata %struct.list_head** %physnode_list, metadata !4407, metadata !DIExpression()), !dbg !4408
  call void @llvm.dbg.declare(metadata i32* %node_id, metadata !4409, metadata !DIExpression()), !dbg !4410
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !4411, metadata !DIExpression()), !dbg !4412
  store i32 -22, i32* %retval1, align 4, !dbg !4412
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4413
  %call = call zeroext i1 @has_acpi_companion(%struct.device* %0) #7, !dbg !4415
  br i1 %call, label %if.then, label %if.end5, !dbg !4416

if.then:                                          ; preds = %entry
  %1 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev.addr, align 8, !dbg !4417
  %tobool = icmp ne %struct.acpi_device* %1, null, !dbg !4417
  br i1 %tobool, label %if.then2, label %if.else, !dbg !4420

if.then2:                                         ; preds = %if.then
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4421
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !4421
  store i32 -22, i32* %retval, align 4, !dbg !4423
  br label %return, !dbg !4423

if.else:                                          ; preds = %if.then
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !4424, metadata !DIExpression()), !dbg !4427
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4427
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %3, i32 0, i32 24, !dbg !4427
  %4 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !4427
  store %struct.fwnode_handle* %4, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !4427
  %5 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !4427
  %call3 = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %5) #7, !dbg !4427
  br i1 %call3, label %cond.true, label %cond.false, !dbg !4427

cond.true:                                        ; preds = %if.else
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4428, metadata !DIExpression()), !dbg !4430
  %6 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !4430
  %7 = bitcast %struct.fwnode_handle* %6 to i8*, !dbg !4430
  store i8* %7, i8** %__mptr, align 8, !dbg !4430
  br label %do.body, !dbg !4430

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !4431

do.end:                                           ; preds = %do.body
  %8 = load i8*, i8** %__mptr, align 8, !dbg !4430
  %add.ptr = getelementptr i8, i8* %8, i64 -16, !dbg !4430
  %9 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !4430
  store %struct.acpi_device* %9, %struct.acpi_device** %tmp4, align 8, !dbg !4431
  %10 = load %struct.acpi_device*, %struct.acpi_device** %tmp4, align 8, !dbg !4430
  br label %cond.end, !dbg !4427

cond.false:                                       ; preds = %if.else
  br label %cond.end, !dbg !4427

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %10, %do.end ], [ null, %cond.false ], !dbg !4427
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp, align 8, !dbg !4427
  %11 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !4427
  store %struct.acpi_device* %11, %struct.acpi_device** %acpi_dev.addr, align 8, !dbg !4433
  br label %if.end

if.end:                                           ; preds = %cond.end
  br label %if.end5, !dbg !4434

if.end5:                                          ; preds = %if.end, %entry
  %12 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev.addr, align 8, !dbg !4435
  %tobool6 = icmp ne %struct.acpi_device* %12, null, !dbg !4435
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !4437

if.then7:                                         ; preds = %if.end5
  store i32 -22, i32* %retval, align 4, !dbg !4438
  br label %return, !dbg !4438

if.end8:                                          ; preds = %if.end5
  %13 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev.addr, align 8, !dbg !4439
  %dev9 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %13, i32 0, i32 21, !dbg !4440
  %call10 = call %struct.device* @get_device(%struct.device* %dev9) #7, !dbg !4441
  %14 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4442
  %call11 = call %struct.device* @get_device(%struct.device* %14) #7, !dbg !4443
  %call12 = call i8* @kzalloc(i64 40, i32 3264) #7, !dbg !4444
  %15 = bitcast i8* %call12 to %struct.acpi_device_physical_node*, !dbg !4444
  store %struct.acpi_device_physical_node* %15, %struct.acpi_device_physical_node** %physical_node, align 8, !dbg !4445
  %16 = load %struct.acpi_device_physical_node*, %struct.acpi_device_physical_node** %physical_node, align 8, !dbg !4446
  %tobool13 = icmp ne %struct.acpi_device_physical_node* %16, null, !dbg !4446
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !4448

if.then14:                                        ; preds = %if.end8
  store i32 -12, i32* %retval1, align 4, !dbg !4449
  br label %err, !dbg !4451

if.end15:                                         ; preds = %if.end8
  %17 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev.addr, align 8, !dbg !4452
  %physical_node_lock = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %17, i32 0, i32 25, !dbg !4453
  call void @mutex_lock(%struct.mutex* %physical_node_lock) #7, !dbg !4454
  %18 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev.addr, align 8, !dbg !4455
  %physical_node_list = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %18, i32 0, i32 24, !dbg !4456
  store %struct.list_head* %physical_node_list, %struct.list_head** %physnode_list, align 8, !dbg !4457
  store i32 0, i32* %node_id, align 4, !dbg !4458
  call void @llvm.dbg.declare(metadata i8** %__mptr16, metadata !4459, metadata !DIExpression()), !dbg !4462
  %19 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev.addr, align 8, !dbg !4462
  %physical_node_list17 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %19, i32 0, i32 24, !dbg !4462
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %physical_node_list17, i32 0, i32 0, !dbg !4462
  %20 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4462
  %21 = bitcast %struct.list_head* %20 to i8*, !dbg !4462
  store i8* %21, i8** %__mptr16, align 8, !dbg !4462
  br label %do.body18, !dbg !4462

do.body18:                                        ; preds = %if.end15
  br label %do.end19, !dbg !4463

do.end19:                                         ; preds = %do.body18
  %22 = load i8*, i8** %__mptr16, align 8, !dbg !4462
  %add.ptr21 = getelementptr i8, i8* %22, i64 -8, !dbg !4462
  %23 = bitcast i8* %add.ptr21 to %struct.acpi_device_physical_node*, !dbg !4462
  store %struct.acpi_device_physical_node* %23, %struct.acpi_device_physical_node** %tmp20, align 8, !dbg !4463
  %24 = load %struct.acpi_device_physical_node*, %struct.acpi_device_physical_node** %tmp20, align 8, !dbg !4462
  store %struct.acpi_device_physical_node* %24, %struct.acpi_device_physical_node** %pn, align 8, !dbg !4465
  br label %for.cond, !dbg !4465

for.cond:                                         ; preds = %do.end54, %do.end19
  %25 = load %struct.acpi_device_physical_node*, %struct.acpi_device_physical_node** %pn, align 8, !dbg !4466
  %node = getelementptr inbounds %struct.acpi_device_physical_node, %struct.acpi_device_physical_node* %25, i32 0, i32 1, !dbg !4466
  %26 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev.addr, align 8, !dbg !4466
  %physical_node_list22 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %26, i32 0, i32 24, !dbg !4466
  %cmp = icmp eq %struct.list_head* %node, %physical_node_list22, !dbg !4466
  %lnot = xor i1 %cmp, true, !dbg !4466
  br i1 %lnot, label %for.body, label %for.end, !dbg !4465

for.body:                                         ; preds = %for.cond
  %27 = load %struct.acpi_device_physical_node*, %struct.acpi_device_physical_node** %pn, align 8, !dbg !4468
  %dev23 = getelementptr inbounds %struct.acpi_device_physical_node, %struct.acpi_device_physical_node* %27, i32 0, i32 2, !dbg !4471
  %28 = load %struct.device*, %struct.device** %dev23, align 8, !dbg !4471
  %29 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4472
  %cmp24 = icmp eq %struct.device* %28, %29, !dbg !4473
  br i1 %cmp24, label %if.then25, label %if.end44, !dbg !4474

if.then25:                                        ; preds = %for.body
  %30 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev.addr, align 8, !dbg !4475
  %physical_node_lock26 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %30, i32 0, i32 25, !dbg !4477
  call void @mutex_unlock(%struct.mutex* %physical_node_lock26) #7, !dbg !4478
  %31 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4479
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %31, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !4479
  %32 = load %struct.acpi_device_physical_node*, %struct.acpi_device_physical_node** %physical_node, align 8, !dbg !4480
  %33 = bitcast %struct.acpi_device_physical_node* %32 to i8*, !dbg !4480
  call void @kfree(i8* %33) #7, !dbg !4481
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode27, metadata !4482, metadata !DIExpression()), !dbg !4485
  %34 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4485
  %fwnode28 = getelementptr inbounds %struct.device, %struct.device* %34, i32 0, i32 24, !dbg !4485
  %35 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode28, align 8, !dbg !4485
  store %struct.fwnode_handle* %35, %struct.fwnode_handle** %__to_acpi_device_node_fwnode27, align 8, !dbg !4485
  %36 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode27, align 8, !dbg !4485
  %call30 = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %36) #7, !dbg !4485
  br i1 %call30, label %cond.true31, label %cond.false37, !dbg !4485

cond.true31:                                      ; preds = %if.then25
  call void @llvm.dbg.declare(metadata i8** %__mptr32, metadata !4486, metadata !DIExpression()), !dbg !4488
  %37 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode27, align 8, !dbg !4488
  %38 = bitcast %struct.fwnode_handle* %37 to i8*, !dbg !4488
  store i8* %38, i8** %__mptr32, align 8, !dbg !4488
  br label %do.body33, !dbg !4488

do.body33:                                        ; preds = %cond.true31
  br label %do.end34, !dbg !4489

do.end34:                                         ; preds = %do.body33
  %39 = load i8*, i8** %__mptr32, align 8, !dbg !4488
  %add.ptr36 = getelementptr i8, i8* %39, i64 -16, !dbg !4488
  %40 = bitcast i8* %add.ptr36 to %struct.acpi_device*, !dbg !4488
  store %struct.acpi_device* %40, %struct.acpi_device** %tmp35, align 8, !dbg !4489
  %41 = load %struct.acpi_device*, %struct.acpi_device** %tmp35, align 8, !dbg !4488
  br label %cond.end38, !dbg !4485

cond.false37:                                     ; preds = %if.then25
  br label %cond.end38, !dbg !4485

cond.end38:                                       ; preds = %cond.false37, %do.end34
  %cond39 = phi %struct.acpi_device* [ %41, %do.end34 ], [ null, %cond.false37 ], !dbg !4485
  store %struct.acpi_device* %cond39, %struct.acpi_device** %tmp29, align 8, !dbg !4485
  %42 = load %struct.acpi_device*, %struct.acpi_device** %tmp29, align 8, !dbg !4485
  %43 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev.addr, align 8, !dbg !4491
  %cmp40 = icmp ne %struct.acpi_device* %42, %43, !dbg !4492
  br i1 %cmp40, label %if.then41, label %if.end42, !dbg !4493

if.then41:                                        ; preds = %cond.end38
  br label %err, !dbg !4494

if.end42:                                         ; preds = %cond.end38
  %44 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4495
  call void @put_device(%struct.device* %44) #7, !dbg !4496
  %45 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev.addr, align 8, !dbg !4497
  %dev43 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %45, i32 0, i32 21, !dbg !4498
  call void @put_device(%struct.device* %dev43) #7, !dbg !4499
  store i32 0, i32* %retval, align 4, !dbg !4500
  br label %return, !dbg !4500

if.end44:                                         ; preds = %for.body
  %46 = load %struct.acpi_device_physical_node*, %struct.acpi_device_physical_node** %pn, align 8, !dbg !4501
  %node_id45 = getelementptr inbounds %struct.acpi_device_physical_node, %struct.acpi_device_physical_node* %46, i32 0, i32 0, !dbg !4503
  %47 = load i32, i32* %node_id45, align 8, !dbg !4503
  %48 = load i32, i32* %node_id, align 4, !dbg !4504
  %cmp46 = icmp eq i32 %47, %48, !dbg !4505
  br i1 %cmp46, label %if.then47, label %if.end49, !dbg !4506

if.then47:                                        ; preds = %if.end44
  %49 = load %struct.acpi_device_physical_node*, %struct.acpi_device_physical_node** %pn, align 8, !dbg !4507
  %node48 = getelementptr inbounds %struct.acpi_device_physical_node, %struct.acpi_device_physical_node* %49, i32 0, i32 1, !dbg !4509
  store %struct.list_head* %node48, %struct.list_head** %physnode_list, align 8, !dbg !4510
  %50 = load i32, i32* %node_id, align 4, !dbg !4511
  %inc = add i32 %50, 1, !dbg !4511
  store i32 %inc, i32* %node_id, align 4, !dbg !4511
  br label %if.end49, !dbg !4512

if.end49:                                         ; preds = %if.then47, %if.end44
  br label %for.inc, !dbg !4513

for.inc:                                          ; preds = %if.end49
  call void @llvm.dbg.declare(metadata i8** %__mptr50, metadata !4514, metadata !DIExpression()), !dbg !4516
  %51 = load %struct.acpi_device_physical_node*, %struct.acpi_device_physical_node** %pn, align 8, !dbg !4516
  %node51 = getelementptr inbounds %struct.acpi_device_physical_node, %struct.acpi_device_physical_node* %51, i32 0, i32 1, !dbg !4516
  %next52 = getelementptr inbounds %struct.list_head, %struct.list_head* %node51, i32 0, i32 0, !dbg !4516
  %52 = load %struct.list_head*, %struct.list_head** %next52, align 8, !dbg !4516
  %53 = bitcast %struct.list_head* %52 to i8*, !dbg !4516
  store i8* %53, i8** %__mptr50, align 8, !dbg !4516
  br label %do.body53, !dbg !4516

do.body53:                                        ; preds = %for.inc
  br label %do.end54, !dbg !4517

do.end54:                                         ; preds = %do.body53
  %54 = load i8*, i8** %__mptr50, align 8, !dbg !4516
  %add.ptr56 = getelementptr i8, i8* %54, i64 -8, !dbg !4516
  %55 = bitcast i8* %add.ptr56 to %struct.acpi_device_physical_node*, !dbg !4516
  store %struct.acpi_device_physical_node* %55, %struct.acpi_device_physical_node** %tmp55, align 8, !dbg !4517
  %56 = load %struct.acpi_device_physical_node*, %struct.acpi_device_physical_node** %tmp55, align 8, !dbg !4516
  store %struct.acpi_device_physical_node* %56, %struct.acpi_device_physical_node** %pn, align 8, !dbg !4466
  br label %for.cond, !dbg !4466, !llvm.loop !4519

for.end:                                          ; preds = %for.cond
  %57 = load i32, i32* %node_id, align 4, !dbg !4521
  %58 = load %struct.acpi_device_physical_node*, %struct.acpi_device_physical_node** %physical_node, align 8, !dbg !4522
  %node_id57 = getelementptr inbounds %struct.acpi_device_physical_node, %struct.acpi_device_physical_node* %58, i32 0, i32 0, !dbg !4523
  store i32 %57, i32* %node_id57, align 8, !dbg !4524
  %59 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4525
  %60 = load %struct.acpi_device_physical_node*, %struct.acpi_device_physical_node** %physical_node, align 8, !dbg !4526
  %dev58 = getelementptr inbounds %struct.acpi_device_physical_node, %struct.acpi_device_physical_node* %60, i32 0, i32 2, !dbg !4527
  store %struct.device* %59, %struct.device** %dev58, align 8, !dbg !4528
  %61 = load %struct.acpi_device_physical_node*, %struct.acpi_device_physical_node** %physical_node, align 8, !dbg !4529
  %node59 = getelementptr inbounds %struct.acpi_device_physical_node, %struct.acpi_device_physical_node* %61, i32 0, i32 1, !dbg !4530
  %62 = load %struct.list_head*, %struct.list_head** %physnode_list, align 8, !dbg !4531
  call void @list_add(%struct.list_head* %node59, %struct.list_head* %62) #7, !dbg !4532
  %63 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev.addr, align 8, !dbg !4533
  %physical_node_count = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %63, i32 0, i32 22, !dbg !4534
  %64 = load i32, i32* %physical_node_count, align 8, !dbg !4535
  %inc60 = add i32 %64, 1, !dbg !4535
  store i32 %inc60, i32* %physical_node_count, align 8, !dbg !4535
  %65 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4536
  %call61 = call zeroext i1 @has_acpi_companion(%struct.device* %65) #7, !dbg !4538
  br i1 %call61, label %if.end69, label %if.then62, !dbg !4539

if.then62:                                        ; preds = %for.end
  %66 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4540
  %67 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev.addr, align 8, !dbg !4540
  %tobool63 = icmp ne %struct.acpi_device* %67, null, !dbg !4540
  br i1 %tobool63, label %cond.true64, label %cond.false66, !dbg !4540

cond.true64:                                      ; preds = %if.then62
  %68 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev.addr, align 8, !dbg !4540
  %call65 = call %struct.fwnode_handle* @acpi_fwnode_handle(%struct.acpi_device* %68) #7, !dbg !4540
  br label %cond.end67, !dbg !4540

cond.false66:                                     ; preds = %if.then62
  br label %cond.end67, !dbg !4540

cond.end67:                                       ; preds = %cond.false66, %cond.true64
  %cond68 = phi %struct.fwnode_handle* [ %call65, %cond.true64 ], [ null, %cond.false66 ], !dbg !4540
  call void @set_primary_fwnode(%struct.device* %66, %struct.fwnode_handle* %cond68) #7, !dbg !4540
  br label %if.end69, !dbg !4540

if.end69:                                         ; preds = %cond.end67, %for.end
  %arraydecay = getelementptr inbounds [24 x i8], [24 x i8]* %physical_node_name, i64 0, i64 0, !dbg !4541
  %69 = load i32, i32* %node_id, align 4, !dbg !4542
  call void @acpi_physnode_link_name(i8* %arraydecay, i32 %69) #7, !dbg !4543
  %70 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev.addr, align 8, !dbg !4544
  %dev70 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %70, i32 0, i32 21, !dbg !4545
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev70, i32 0, i32 0, !dbg !4546
  %71 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4547
  %kobj71 = getelementptr inbounds %struct.device, %struct.device* %71, i32 0, i32 0, !dbg !4548
  %arraydecay72 = getelementptr inbounds [24 x i8], [24 x i8]* %physical_node_name, i64 0, i64 0, !dbg !4549
  %call73 = call i32 @sysfs_create_link(%struct.kobject* %kobj, %struct.kobject* %kobj71, i8* %arraydecay72) #7, !dbg !4550
  store i32 %call73, i32* %retval1, align 4, !dbg !4551
  %72 = load i32, i32* %retval1, align 4, !dbg !4552
  %tobool74 = icmp ne i32 %72, 0, !dbg !4552
  br i1 %tobool74, label %if.then75, label %if.end78, !dbg !4554

if.then75:                                        ; preds = %if.end69
  %73 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev.addr, align 8, !dbg !4555
  %dev76 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %73, i32 0, i32 21, !dbg !4555
  %arraydecay77 = getelementptr inbounds [24 x i8], [24 x i8]* %physical_node_name, i64 0, i64 0, !dbg !4555
  %74 = load i32, i32* %retval1, align 4, !dbg !4555
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev76, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %arraydecay77, i32 %74) #8, !dbg !4555
  br label %if.end78, !dbg !4555

if.end78:                                         ; preds = %if.then75, %if.end69
  %75 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4556
  %kobj79 = getelementptr inbounds %struct.device, %struct.device* %75, i32 0, i32 0, !dbg !4557
  %76 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev.addr, align 8, !dbg !4558
  %dev80 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %76, i32 0, i32 21, !dbg !4559
  %kobj81 = getelementptr inbounds %struct.device, %struct.device* %dev80, i32 0, i32 0, !dbg !4560
  %call82 = call i32 @sysfs_create_link(%struct.kobject* %kobj79, %struct.kobject* %kobj81, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0)) #7, !dbg !4561
  store i32 %call82, i32* %retval1, align 4, !dbg !4562
  %77 = load i32, i32* %retval1, align 4, !dbg !4563
  %tobool83 = icmp ne i32 %77, 0, !dbg !4563
  br i1 %tobool83, label %if.then84, label %if.end85, !dbg !4565

if.then84:                                        ; preds = %if.end78
  %78 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4566
  %79 = load i32, i32* %retval1, align 4, !dbg !4566
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %78, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i32 %79) #8, !dbg !4566
  br label %if.end85, !dbg !4566

if.end85:                                         ; preds = %if.then84, %if.end78
  %80 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev.addr, align 8, !dbg !4567
  %physical_node_lock86 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %80, i32 0, i32 25, !dbg !4568
  call void @mutex_unlock(%struct.mutex* %physical_node_lock86) #7, !dbg !4569
  %81 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev.addr, align 8, !dbg !4570
  %wakeup = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %81, i32 0, i32 12, !dbg !4572
  %flags = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup, i32 0, i32 4, !dbg !4573
  %82 = bitcast %struct.acpi_device_wakeup_flags* %flags to i8*, !dbg !4574
  %bf.load = load i8, i8* %82, align 8, !dbg !4574
  %bf.clear = and i8 %bf.load, 1, !dbg !4574
  %tobool87 = icmp ne i8 %bf.clear, 0, !dbg !4570
  br i1 %tobool87, label %if.then88, label %if.end89, !dbg !4575

if.then88:                                        ; preds = %if.end85
  %83 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4576
  call void @device_set_wakeup_capable(%struct.device* %83, i1 zeroext true) #7, !dbg !4577
  br label %if.end89, !dbg !4577

if.end89:                                         ; preds = %if.then88, %if.end85
  store i32 0, i32* %retval, align 4, !dbg !4578
  br label %return, !dbg !4578

err:                                              ; preds = %if.then41, %if.then14
  call void @llvm.dbg.label(metadata !4579), !dbg !4580
  %84 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4581
  br i1 false, label %cond.true90, label %cond.false92, !dbg !4581

cond.true90:                                      ; preds = %err
  %call91 = call %struct.fwnode_handle* @acpi_fwnode_handle(%struct.acpi_device* null) #7, !dbg !4581
  br label %cond.end93, !dbg !4581

cond.false92:                                     ; preds = %err
  br label %cond.end93, !dbg !4581

cond.end93:                                       ; preds = %cond.false92, %cond.true90
  %cond94 = phi %struct.fwnode_handle* [ %call91, %cond.true90 ], [ null, %cond.false92 ], !dbg !4581
  call void @set_primary_fwnode(%struct.device* %84, %struct.fwnode_handle* %cond94) #7, !dbg !4581
  %85 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4582
  call void @put_device(%struct.device* %85) #7, !dbg !4583
  %86 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev.addr, align 8, !dbg !4584
  %dev95 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %86, i32 0, i32 21, !dbg !4585
  call void @put_device(%struct.device* %dev95) #7, !dbg !4586
  %87 = load i32, i32* %retval1, align 4, !dbg !4587
  store i32 %87, i32* %retval, align 4, !dbg !4588
  br label %return, !dbg !4588

return:                                           ; preds = %cond.end93, %if.end89, %if.end42, %if.then7, %if.then2
  %88 = load i32, i32* %retval, align 4, !dbg !4589
  ret i32 %88, !dbg !4589
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @has_acpi_companion(%struct.device* %dev) #0 !dbg !4590 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4592, metadata !DIExpression()), !dbg !4593
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4594
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 24, !dbg !4595
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !4595
  %call = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %1) #7, !dbg !4596
  ret i1 %call, !dbg !4597
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #3

; Function Attrs: noredzone
declare dso_local zeroext i1 @is_acpi_device_node(%struct.fwnode_handle*) #2

; Function Attrs: noredzone
declare dso_local %struct.device* @get_device(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4598 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4601, metadata !DIExpression()), !dbg !4605
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4611, metadata !DIExpression()), !dbg !4612
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4613, metadata !DIExpression()), !dbg !4614
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4615, metadata !DIExpression()), !dbg !4616
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4617, metadata !DIExpression()), !dbg !4621
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4623, metadata !DIExpression()), !dbg !4627
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4629, metadata !DIExpression()), !dbg !4633
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4638, metadata !DIExpression()), !dbg !4639
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4640, metadata !DIExpression()), !dbg !4641
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4642, metadata !DIExpression()), !dbg !4643
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4644, metadata !DIExpression()), !dbg !4645
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4646, metadata !DIExpression()), !dbg !4647
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4648, metadata !DIExpression()), !dbg !4649
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4650, metadata !DIExpression()), !dbg !4651
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4652, metadata !DIExpression()), !dbg !4653
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4654, metadata !DIExpression()), !dbg !4655
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4656, metadata !DIExpression()), !dbg !4657
  %0 = load i64, i64* %size.addr, align 8, !dbg !4658
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4659
  %or = or i32 %1, 256, !dbg !4660
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4661
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !4662
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4663

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4664
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4665
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4666

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4667
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4668
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4669
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !4670
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4647
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4671
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4672
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4673
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4674
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4675
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4676
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !4677
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4677
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4677
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4677
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !4677
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4678
  br label %kmalloc.exit, !dbg !4678

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4679
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4680
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4680
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4682

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4683
  br label %kmalloc_index.exit.i, !dbg !4683

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4684
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4686
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4687

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4688
  br label %kmalloc_index.exit.i, !dbg !4688

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4689
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4691
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4692

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4693
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4694
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4695

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4696
  br label %kmalloc_index.exit.i, !dbg !4696

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4697
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4699
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4700

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4701
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4702
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4703

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4704
  br label %kmalloc_index.exit.i, !dbg !4704

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4705
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4707
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4708

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4709
  br label %kmalloc_index.exit.i, !dbg !4709

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4710
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4712
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4713

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4714
  br label %kmalloc_index.exit.i, !dbg !4714

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4715
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4717
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4718

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4719
  br label %kmalloc_index.exit.i, !dbg !4719

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4720
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4722
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4723

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4724
  br label %kmalloc_index.exit.i, !dbg !4724

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4725
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4727
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4728

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4729
  br label %kmalloc_index.exit.i, !dbg !4729

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4730
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4732
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4733

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4734
  br label %kmalloc_index.exit.i, !dbg !4734

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4735
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4737
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4738

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4739
  br label %kmalloc_index.exit.i, !dbg !4739

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4740
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4742
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4743

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4744
  br label %kmalloc_index.exit.i, !dbg !4744

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4745
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4747
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4748

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4749
  br label %kmalloc_index.exit.i, !dbg !4749

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4750
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4752
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4753

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4754
  br label %kmalloc_index.exit.i, !dbg !4754

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4755
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4757
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4758

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4759
  br label %kmalloc_index.exit.i, !dbg !4759

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4760
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4762
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4763

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4764
  br label %kmalloc_index.exit.i, !dbg !4764

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4765
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4767
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4768

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4769
  br label %kmalloc_index.exit.i, !dbg !4769

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4770
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4772
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4773

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4774
  br label %kmalloc_index.exit.i, !dbg !4774

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4775
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4777
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4778

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4779
  br label %kmalloc_index.exit.i, !dbg !4779

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4780
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4782
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4783

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4784
  br label %kmalloc_index.exit.i, !dbg !4784

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4785
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4787
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4788

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4789
  br label %kmalloc_index.exit.i, !dbg !4789

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4790
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4792
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4793

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4794
  br label %kmalloc_index.exit.i, !dbg !4794

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4795
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4797
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4798

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4799
  br label %kmalloc_index.exit.i, !dbg !4799

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4800
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4802
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4803

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4804
  br label %kmalloc_index.exit.i, !dbg !4804

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4805
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4807
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4808

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4809
  br label %kmalloc_index.exit.i, !dbg !4809

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4810
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4812
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4813

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4814
  br label %kmalloc_index.exit.i, !dbg !4814

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4815
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4817
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4818

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4819
  br label %kmalloc_index.exit.i, !dbg !4819

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4820
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4822
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4823

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4824
  br label %kmalloc_index.exit.i, !dbg !4824

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !4825, !srcloc !4828
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 102) #9, !dbg !4829, !srcloc !4832
  unreachable, !dbg !4833

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4834
  store i32 %45, i32* %index.i, align 4, !dbg !4835
  %46 = load i32, i32* %index.i, align 4, !dbg !4836
  %tobool.i = icmp ne i32 %46, 0, !dbg !4836
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4838

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4839
  br label %kmalloc.exit, !dbg !4839

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4840
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4841
  %and.i.i = and i32 %48, 17, !dbg !4841
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4841
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4841
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4841
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4841
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4843

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4844
  br label %kmalloc_type.exit.i, !dbg !4844

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4845
  %and2.i.i = and i32 %49, 1, !dbg !4846
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4845
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4845
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4845
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4847
  br label %kmalloc_type.exit.i, !dbg !4847

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4848
  %idxprom.i = zext i32 %51 to i64, !dbg !4849
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4849
  %52 = load i32, i32* %index.i, align 4, !dbg !4850
  %idxprom6.i = zext i32 %52 to i64, !dbg !4849
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4849
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4849
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4851
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4852
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4853
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4854
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !4855
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4855
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4855
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4855
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !4855
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4616
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4856
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4857
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4858
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4859
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !4860
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4861
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4862
  store i8* %62, i8** %retval.i, align 8, !dbg !4863
  br label %kmalloc.exit, !dbg !4863

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4864
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4865
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !4866
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4866
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4866
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4866
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !4866
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4867
  br label %kmalloc.exit, !dbg !4867

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4868
  ret i8* %65, !dbg !4869
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noredzone
declare dso_local void @put_device(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !4870 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4871, metadata !DIExpression()), !dbg !4872
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !4873, metadata !DIExpression()), !dbg !4874
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4875
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4876
  %2 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4877
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 0, !dbg !4878
  %3 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4878
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %3) #7, !dbg !4879
  ret void, !dbg !4880
}

; Function Attrs: noredzone
declare dso_local void @set_primary_fwnode(%struct.device*, %struct.fwnode_handle*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.fwnode_handle* @acpi_fwnode_handle(%struct.acpi_device* %adev) #0 !dbg !4881 {
entry:
  %adev.addr = alloca %struct.acpi_device*, align 8
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !4884, metadata !DIExpression()), !dbg !4885
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4886
  %fwnode = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %0, i32 0, i32 2, !dbg !4887
  ret %struct.fwnode_handle* %fwnode, !dbg !4888
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_physnode_link_name(i8* %buf, i32 %node_id) #0 !dbg !4889 {
entry:
  %buf.addr = alloca i8*, align 8
  %node_id.addr = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4892, metadata !DIExpression()), !dbg !4893
  store i32 %node_id, i32* %node_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %node_id.addr, metadata !4894, metadata !DIExpression()), !dbg !4895
  %0 = load i32, i32* %node_id.addr, align 4, !dbg !4896
  %cmp = icmp ugt i32 %0, 0, !dbg !4898
  br i1 %cmp, label %if.then, label %if.else, !dbg !4899

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !4900
  %2 = load i32, i32* %node_id.addr, align 4, !dbg !4901
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %1, i64 24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 %2) #7, !dbg !4902
  br label %if.end, !dbg !4902

if.else:                                          ; preds = %entry
  %3 = load i8*, i8** %buf.addr, align 8, !dbg !4903
  %call1 = call i8* @strcpy(i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0)) #7, !dbg !4904
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !4905
}

; Function Attrs: noredzone
declare dso_local i32 @sysfs_create_link(%struct.kobject*, %struct.kobject*, i8*) #2

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #3

; Function Attrs: noredzone
declare dso_local void @device_set_wakeup_capable(%struct.device*, i1 zeroext) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_unbind_one(%struct.device* %dev) #0 !dbg !4906 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %acpi_dev = alloca %struct.acpi_device*, align 8
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.acpi_device*, align 8
  %entry2 = alloca %struct.acpi_device_physical_node*, align 8
  %__mptr3 = alloca i8*, align 8
  %tmp6 = alloca %struct.acpi_device_physical_node*, align 8
  %physnode_name = alloca [24 x i8], align 16
  %__mptr23 = alloca i8*, align 8
  %tmp28 = alloca %struct.acpi_device_physical_node*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4907, metadata !DIExpression()), !dbg !4908
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %acpi_dev, metadata !4909, metadata !DIExpression()), !dbg !4910
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !4911, metadata !DIExpression()), !dbg !4913
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4913
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 24, !dbg !4913
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !4913
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !4913
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !4913
  %call = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %2) #7, !dbg !4913
  br i1 %call, label %cond.true, label %cond.false, !dbg !4913

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4914, metadata !DIExpression()), !dbg !4916
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !4916
  %4 = bitcast %struct.fwnode_handle* %3 to i8*, !dbg !4916
  store i8* %4, i8** %__mptr, align 8, !dbg !4916
  br label %do.body, !dbg !4916

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !4917

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !4916
  %add.ptr = getelementptr i8, i8* %5, i64 -16, !dbg !4916
  %6 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !4916
  store %struct.acpi_device* %6, %struct.acpi_device** %tmp1, align 8, !dbg !4917
  %7 = load %struct.acpi_device*, %struct.acpi_device** %tmp1, align 8, !dbg !4916
  br label %cond.end, !dbg !4913

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4913

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %7, %do.end ], [ null, %cond.false ], !dbg !4913
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp, align 8, !dbg !4913
  %8 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !4913
  store %struct.acpi_device* %8, %struct.acpi_device** %acpi_dev, align 8, !dbg !4910
  call void @llvm.dbg.declare(metadata %struct.acpi_device_physical_node** %entry2, metadata !4919, metadata !DIExpression()), !dbg !4920
  %9 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !4921
  %tobool = icmp ne %struct.acpi_device* %9, null, !dbg !4921
  br i1 %tobool, label %if.end, label %if.then, !dbg !4923

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %retval, align 4, !dbg !4924
  br label %return, !dbg !4924

if.end:                                           ; preds = %cond.end
  %10 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !4925
  %physical_node_lock = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %10, i32 0, i32 25, !dbg !4926
  call void @mutex_lock(%struct.mutex* %physical_node_lock) #7, !dbg !4927
  call void @llvm.dbg.declare(metadata i8** %__mptr3, metadata !4928, metadata !DIExpression()), !dbg !4931
  %11 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !4931
  %physical_node_list = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %11, i32 0, i32 24, !dbg !4931
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %physical_node_list, i32 0, i32 0, !dbg !4931
  %12 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4931
  %13 = bitcast %struct.list_head* %12 to i8*, !dbg !4931
  store i8* %13, i8** %__mptr3, align 8, !dbg !4931
  br label %do.body4, !dbg !4931

do.body4:                                         ; preds = %if.end
  br label %do.end5, !dbg !4932

do.end5:                                          ; preds = %do.body4
  %14 = load i8*, i8** %__mptr3, align 8, !dbg !4931
  %add.ptr7 = getelementptr i8, i8* %14, i64 -8, !dbg !4931
  %15 = bitcast i8* %add.ptr7 to %struct.acpi_device_physical_node*, !dbg !4931
  store %struct.acpi_device_physical_node* %15, %struct.acpi_device_physical_node** %tmp6, align 8, !dbg !4932
  %16 = load %struct.acpi_device_physical_node*, %struct.acpi_device_physical_node** %tmp6, align 8, !dbg !4931
  store %struct.acpi_device_physical_node* %16, %struct.acpi_device_physical_node** %entry2, align 8, !dbg !4934
  br label %for.cond, !dbg !4934

for.cond:                                         ; preds = %do.end27, %do.end5
  %17 = load %struct.acpi_device_physical_node*, %struct.acpi_device_physical_node** %entry2, align 8, !dbg !4935
  %node = getelementptr inbounds %struct.acpi_device_physical_node, %struct.acpi_device_physical_node* %17, i32 0, i32 1, !dbg !4935
  %18 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !4935
  %physical_node_list8 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %18, i32 0, i32 24, !dbg !4935
  %cmp = icmp eq %struct.list_head* %node, %physical_node_list8, !dbg !4935
  %lnot = xor i1 %cmp, true, !dbg !4935
  br i1 %lnot, label %for.body, label %for.end, !dbg !4934

for.body:                                         ; preds = %for.cond
  %19 = load %struct.acpi_device_physical_node*, %struct.acpi_device_physical_node** %entry2, align 8, !dbg !4937
  %dev9 = getelementptr inbounds %struct.acpi_device_physical_node, %struct.acpi_device_physical_node* %19, i32 0, i32 2, !dbg !4939
  %20 = load %struct.device*, %struct.device** %dev9, align 8, !dbg !4939
  %21 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4940
  %cmp10 = icmp eq %struct.device* %20, %21, !dbg !4941
  br i1 %cmp10, label %if.then11, label %if.end22, !dbg !4942

if.then11:                                        ; preds = %for.body
  call void @llvm.dbg.declare(metadata [24 x i8]* %physnode_name, metadata !4943, metadata !DIExpression()), !dbg !4945
  %22 = load %struct.acpi_device_physical_node*, %struct.acpi_device_physical_node** %entry2, align 8, !dbg !4946
  %node12 = getelementptr inbounds %struct.acpi_device_physical_node, %struct.acpi_device_physical_node* %22, i32 0, i32 1, !dbg !4947
  call void @list_del(%struct.list_head* %node12) #7, !dbg !4948
  %23 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !4949
  %physical_node_count = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %23, i32 0, i32 22, !dbg !4950
  %24 = load i32, i32* %physical_node_count, align 8, !dbg !4951
  %dec = add i32 %24, -1, !dbg !4951
  store i32 %dec, i32* %physical_node_count, align 8, !dbg !4951
  %arraydecay = getelementptr inbounds [24 x i8], [24 x i8]* %physnode_name, i64 0, i64 0, !dbg !4952
  %25 = load %struct.acpi_device_physical_node*, %struct.acpi_device_physical_node** %entry2, align 8, !dbg !4953
  %node_id = getelementptr inbounds %struct.acpi_device_physical_node, %struct.acpi_device_physical_node* %25, i32 0, i32 0, !dbg !4954
  %26 = load i32, i32* %node_id, align 8, !dbg !4954
  call void @acpi_physnode_link_name(i8* %arraydecay, i32 %26) #7, !dbg !4955
  %27 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !4956
  %dev13 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %27, i32 0, i32 21, !dbg !4957
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev13, i32 0, i32 0, !dbg !4958
  %arraydecay14 = getelementptr inbounds [24 x i8], [24 x i8]* %physnode_name, i64 0, i64 0, !dbg !4959
  call void @sysfs_remove_link(%struct.kobject* %kobj, i8* %arraydecay14) #7, !dbg !4960
  %28 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4961
  %kobj15 = getelementptr inbounds %struct.device, %struct.device* %28, i32 0, i32 0, !dbg !4962
  call void @sysfs_remove_link(%struct.kobject* %kobj15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0)) #7, !dbg !4963
  %29 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4964
  br i1 false, label %cond.true16, label %cond.false18, !dbg !4964

cond.true16:                                      ; preds = %if.then11
  %call17 = call %struct.fwnode_handle* @acpi_fwnode_handle(%struct.acpi_device* null) #7, !dbg !4964
  br label %cond.end19, !dbg !4964

cond.false18:                                     ; preds = %if.then11
  br label %cond.end19, !dbg !4964

cond.end19:                                       ; preds = %cond.false18, %cond.true16
  %cond20 = phi %struct.fwnode_handle* [ %call17, %cond.true16 ], [ null, %cond.false18 ], !dbg !4964
  call void @set_primary_fwnode(%struct.device* %29, %struct.fwnode_handle* %cond20) #7, !dbg !4964
  %30 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4965
  call void @put_device(%struct.device* %30) #7, !dbg !4966
  %31 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !4967
  %dev21 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %31, i32 0, i32 21, !dbg !4968
  call void @put_device(%struct.device* %dev21) #7, !dbg !4969
  %32 = load %struct.acpi_device_physical_node*, %struct.acpi_device_physical_node** %entry2, align 8, !dbg !4970
  %33 = bitcast %struct.acpi_device_physical_node* %32 to i8*, !dbg !4970
  call void @kfree(i8* %33) #7, !dbg !4971
  br label %for.end, !dbg !4972

if.end22:                                         ; preds = %for.body
  br label %for.inc, !dbg !4940

for.inc:                                          ; preds = %if.end22
  call void @llvm.dbg.declare(metadata i8** %__mptr23, metadata !4973, metadata !DIExpression()), !dbg !4975
  %34 = load %struct.acpi_device_physical_node*, %struct.acpi_device_physical_node** %entry2, align 8, !dbg !4975
  %node24 = getelementptr inbounds %struct.acpi_device_physical_node, %struct.acpi_device_physical_node* %34, i32 0, i32 1, !dbg !4975
  %next25 = getelementptr inbounds %struct.list_head, %struct.list_head* %node24, i32 0, i32 0, !dbg !4975
  %35 = load %struct.list_head*, %struct.list_head** %next25, align 8, !dbg !4975
  %36 = bitcast %struct.list_head* %35 to i8*, !dbg !4975
  store i8* %36, i8** %__mptr23, align 8, !dbg !4975
  br label %do.body26, !dbg !4975

do.body26:                                        ; preds = %for.inc
  br label %do.end27, !dbg !4976

do.end27:                                         ; preds = %do.body26
  %37 = load i8*, i8** %__mptr23, align 8, !dbg !4975
  %add.ptr29 = getelementptr i8, i8* %37, i64 -8, !dbg !4975
  %38 = bitcast i8* %add.ptr29 to %struct.acpi_device_physical_node*, !dbg !4975
  store %struct.acpi_device_physical_node* %38, %struct.acpi_device_physical_node** %tmp28, align 8, !dbg !4976
  %39 = load %struct.acpi_device_physical_node*, %struct.acpi_device_physical_node** %tmp28, align 8, !dbg !4975
  store %struct.acpi_device_physical_node* %39, %struct.acpi_device_physical_node** %entry2, align 8, !dbg !4935
  br label %for.cond, !dbg !4935, !llvm.loop !4978

for.end:                                          ; preds = %cond.end19, %for.cond
  %40 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !4980
  %physical_node_lock30 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %40, i32 0, i32 25, !dbg !4981
  call void @mutex_unlock(%struct.mutex* %physical_node_lock30) #7, !dbg !4982
  store i32 0, i32* %retval, align 4, !dbg !4983
  br label %return, !dbg !4983

return:                                           ; preds = %for.end, %if.then
  %41 = load i32, i32* %retval, align 4, !dbg !4984
  ret i32 %41, !dbg !4984
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !4985 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !4986, metadata !DIExpression()), !dbg !4987
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4988
  call void @__list_del_entry(%struct.list_head* %0) #7, !dbg !4989
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4990
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !4991
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !4992
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4993
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !4994
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !4995
  ret void, !dbg !4996
}

; Function Attrs: noredzone
declare dso_local void @sysfs_remove_link(%struct.kobject*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_platform_notify(%struct.device* %dev, i32 %action) #0 !dbg !4997 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %action.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5000, metadata !DIExpression()), !dbg !5001
  store i32 %action, i32* %action.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %action.addr, metadata !5002, metadata !DIExpression()), !dbg !5003
  %0 = load i32, i32* %action.addr, align 4, !dbg !5004
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ], !dbg !5005

sw.bb:                                            ; preds = %entry
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5006
  %call = call i32 @acpi_device_notify(%struct.device* %1) #7, !dbg !5008
  br label %sw.epilog, !dbg !5009

sw.bb1:                                           ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5010
  %call2 = call i32 @acpi_device_notify_remove(%struct.device* %2) #7, !dbg !5011
  br label %sw.epilog, !dbg !5012

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !5013

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %sw.bb
  ret i32 0, !dbg !5014
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_device_notify(%struct.device* %dev) #0 !dbg !5015 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %type = alloca %struct.acpi_bus_type*, align 8
  %adev = alloca %struct.acpi_device*, align 8
  %ret = alloca i32, align 4
  %adev3 = alloca %struct.acpi_device*, align 8
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp15 = alloca %struct.acpi_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5016, metadata !DIExpression()), !dbg !5017
  call void @llvm.dbg.declare(metadata %struct.acpi_bus_type** %type, metadata !5018, metadata !DIExpression()), !dbg !5019
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5020
  %call = call %struct.acpi_bus_type* @acpi_get_bus_type(%struct.device* %0) #7, !dbg !5021
  store %struct.acpi_bus_type* %call, %struct.acpi_bus_type** %type, align 8, !dbg !5019
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev, metadata !5022, metadata !DIExpression()), !dbg !5023
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5024, metadata !DIExpression()), !dbg !5025
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5026
  %call1 = call i32 @acpi_bind_one(%struct.device* %1, %struct.acpi_device* null) #7, !dbg !5027
  store i32 %call1, i32* %ret, align 4, !dbg !5028
  %2 = load i32, i32* %ret, align 4, !dbg !5029
  %tobool = icmp ne i32 %2, 0, !dbg !5029
  br i1 %tobool, label %land.lhs.true, label %if.end11, !dbg !5031

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.acpi_bus_type*, %struct.acpi_bus_type** %type, align 8, !dbg !5032
  %tobool2 = icmp ne %struct.acpi_bus_type* %3, null, !dbg !5032
  br i1 %tobool2, label %if.then, label %if.end11, !dbg !5033

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev3, metadata !5034, metadata !DIExpression()), !dbg !5036
  %4 = load %struct.acpi_bus_type*, %struct.acpi_bus_type** %type, align 8, !dbg !5037
  %find_companion = getelementptr inbounds %struct.acpi_bus_type, %struct.acpi_bus_type* %4, i32 0, i32 3, !dbg !5038
  %5 = load %struct.acpi_device* (%struct.device*)*, %struct.acpi_device* (%struct.device*)** %find_companion, align 8, !dbg !5038
  %6 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5039
  %call4 = call %struct.acpi_device* %5(%struct.device* %6) #7, !dbg !5037
  store %struct.acpi_device* %call4, %struct.acpi_device** %adev3, align 8, !dbg !5040
  %7 = load %struct.acpi_device*, %struct.acpi_device** %adev3, align 8, !dbg !5041
  %tobool5 = icmp ne %struct.acpi_device* %7, null, !dbg !5041
  br i1 %tobool5, label %if.end, label %if.then6, !dbg !5043

if.then6:                                         ; preds = %if.then
  br label %do.body, !dbg !5044

do.body:                                          ; preds = %if.then6
  br label %do.end, !dbg !5046

do.end:                                           ; preds = %do.body
  store i32 -19, i32* %ret, align 4, !dbg !5048
  br label %out, !dbg !5049

if.end:                                           ; preds = %if.then
  %8 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5050
  %9 = load %struct.acpi_device*, %struct.acpi_device** %adev3, align 8, !dbg !5051
  %call7 = call i32 @acpi_bind_one(%struct.device* %8, %struct.acpi_device* %9) #7, !dbg !5052
  store i32 %call7, i32* %ret, align 4, !dbg !5053
  %10 = load i32, i32* %ret, align 4, !dbg !5054
  %tobool8 = icmp ne i32 %10, 0, !dbg !5054
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !5056

if.then9:                                         ; preds = %if.end
  br label %out, !dbg !5057

if.end10:                                         ; preds = %if.end
  br label %if.end11, !dbg !5058

if.end11:                                         ; preds = %if.end10, %land.lhs.true, %entry
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !5059, metadata !DIExpression()), !dbg !5061
  %11 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5061
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 24, !dbg !5061
  %12 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !5061
  store %struct.fwnode_handle* %12, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !5061
  %13 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !5061
  %call12 = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %13) #7, !dbg !5061
  br i1 %call12, label %cond.true, label %cond.false, !dbg !5061

cond.true:                                        ; preds = %if.end11
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5062, metadata !DIExpression()), !dbg !5064
  %14 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !5064
  %15 = bitcast %struct.fwnode_handle* %14 to i8*, !dbg !5064
  store i8* %15, i8** %__mptr, align 8, !dbg !5064
  br label %do.body13, !dbg !5064

do.body13:                                        ; preds = %cond.true
  br label %do.end14, !dbg !5065

do.end14:                                         ; preds = %do.body13
  %16 = load i8*, i8** %__mptr, align 8, !dbg !5064
  %add.ptr = getelementptr i8, i8* %16, i64 -16, !dbg !5064
  %17 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !5064
  store %struct.acpi_device* %17, %struct.acpi_device** %tmp15, align 8, !dbg !5065
  %18 = load %struct.acpi_device*, %struct.acpi_device** %tmp15, align 8, !dbg !5064
  br label %cond.end, !dbg !5061

cond.false:                                       ; preds = %if.end11
  br label %cond.end, !dbg !5061

cond.end:                                         ; preds = %cond.false, %do.end14
  %cond = phi %struct.acpi_device* [ %18, %do.end14 ], [ null, %cond.false ], !dbg !5061
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp, align 8, !dbg !5061
  %19 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !5061
  store %struct.acpi_device* %19, %struct.acpi_device** %adev, align 8, !dbg !5067
  %20 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !5068
  %tobool16 = icmp ne %struct.acpi_device* %20, null, !dbg !5068
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !5070

if.then17:                                        ; preds = %cond.end
  br label %out, !dbg !5071

if.end18:                                         ; preds = %cond.end
  %21 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5072
  %bus = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 5, !dbg !5072
  %22 = load %struct.bus_type*, %struct.bus_type** %bus, align 8, !dbg !5072
  %cmp = icmp eq %struct.bus_type* %22, @platform_bus_type, !dbg !5072
  br i1 %cmp, label %if.then19, label %if.end20, !dbg !5074

if.then19:                                        ; preds = %if.end18
  %23 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5075
  call void @acpi_configure_pmsi_domain(%struct.device* %23) #7, !dbg !5076
  br label %if.end20, !dbg !5076

if.end20:                                         ; preds = %if.then19, %if.end18
  %24 = load %struct.acpi_bus_type*, %struct.acpi_bus_type** %type, align 8, !dbg !5077
  %tobool21 = icmp ne %struct.acpi_bus_type* %24, null, !dbg !5077
  br i1 %tobool21, label %land.lhs.true22, label %if.else, !dbg !5079

land.lhs.true22:                                  ; preds = %if.end20
  %25 = load %struct.acpi_bus_type*, %struct.acpi_bus_type** %type, align 8, !dbg !5080
  %setup = getelementptr inbounds %struct.acpi_bus_type, %struct.acpi_bus_type* %25, i32 0, i32 4, !dbg !5081
  %26 = load void (%struct.device*)*, void (%struct.device*)** %setup, align 8, !dbg !5081
  %tobool23 = icmp ne void (%struct.device*)* %26, null, !dbg !5080
  br i1 %tobool23, label %if.then24, label %if.else, !dbg !5082

if.then24:                                        ; preds = %land.lhs.true22
  %27 = load %struct.acpi_bus_type*, %struct.acpi_bus_type** %type, align 8, !dbg !5083
  %setup25 = getelementptr inbounds %struct.acpi_bus_type, %struct.acpi_bus_type* %27, i32 0, i32 4, !dbg !5084
  %28 = load void (%struct.device*)*, void (%struct.device*)** %setup25, align 8, !dbg !5084
  %29 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5085
  call void %28(%struct.device* %29) #7, !dbg !5083
  br label %if.end34, !dbg !5083

if.else:                                          ; preds = %land.lhs.true22, %if.end20
  %30 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !5086
  %handler = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %30, i32 0, i32 16, !dbg !5088
  %31 = load %struct.acpi_scan_handler*, %struct.acpi_scan_handler** %handler, align 8, !dbg !5088
  %tobool26 = icmp ne %struct.acpi_scan_handler* %31, null, !dbg !5086
  br i1 %tobool26, label %land.lhs.true27, label %if.end33, !dbg !5089

land.lhs.true27:                                  ; preds = %if.else
  %32 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !5090
  %handler28 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %32, i32 0, i32 16, !dbg !5091
  %33 = load %struct.acpi_scan_handler*, %struct.acpi_scan_handler** %handler28, align 8, !dbg !5091
  %bind = getelementptr inbounds %struct.acpi_scan_handler, %struct.acpi_scan_handler* %33, i32 0, i32 5, !dbg !5092
  %34 = load void (%struct.device*)*, void (%struct.device*)** %bind, align 8, !dbg !5092
  %tobool29 = icmp ne void (%struct.device*)* %34, null, !dbg !5090
  br i1 %tobool29, label %if.then30, label %if.end33, !dbg !5093

if.then30:                                        ; preds = %land.lhs.true27
  %35 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !5094
  %handler31 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %35, i32 0, i32 16, !dbg !5095
  %36 = load %struct.acpi_scan_handler*, %struct.acpi_scan_handler** %handler31, align 8, !dbg !5095
  %bind32 = getelementptr inbounds %struct.acpi_scan_handler, %struct.acpi_scan_handler* %36, i32 0, i32 5, !dbg !5096
  %37 = load void (%struct.device*)*, void (%struct.device*)** %bind32, align 8, !dbg !5096
  %38 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5097
  call void %37(%struct.device* %38) #7, !dbg !5094
  br label %if.end33, !dbg !5094

if.end33:                                         ; preds = %if.then30, %land.lhs.true27, %if.else
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then24
  br label %out, !dbg !5081

out:                                              ; preds = %if.end34, %if.then17, %if.then9, %do.end
  call void @llvm.dbg.label(metadata !5098), !dbg !5099
  %39 = load i32, i32* %ret, align 4, !dbg !5100
  ret i32 %39, !dbg !5101
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_device_notify_remove(%struct.device* %dev) #0 !dbg !5102 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %adev = alloca %struct.acpi_device*, align 8
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.acpi_device*, align 8
  %type = alloca %struct.acpi_bus_type*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5103, metadata !DIExpression()), !dbg !5104
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev, metadata !5105, metadata !DIExpression()), !dbg !5106
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !5107, metadata !DIExpression()), !dbg !5109
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5109
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 24, !dbg !5109
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !5109
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !5109
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !5109
  %call = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %2) #7, !dbg !5109
  br i1 %call, label %cond.true, label %cond.false, !dbg !5109

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5110, metadata !DIExpression()), !dbg !5112
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !5112
  %4 = bitcast %struct.fwnode_handle* %3 to i8*, !dbg !5112
  store i8* %4, i8** %__mptr, align 8, !dbg !5112
  br label %do.body, !dbg !5112

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !5113

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !5112
  %add.ptr = getelementptr i8, i8* %5, i64 -16, !dbg !5112
  %6 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !5112
  store %struct.acpi_device* %6, %struct.acpi_device** %tmp1, align 8, !dbg !5113
  %7 = load %struct.acpi_device*, %struct.acpi_device** %tmp1, align 8, !dbg !5112
  br label %cond.end, !dbg !5109

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5109

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %7, %do.end ], [ null, %cond.false ], !dbg !5109
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp, align 8, !dbg !5109
  %8 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !5109
  store %struct.acpi_device* %8, %struct.acpi_device** %adev, align 8, !dbg !5106
  call void @llvm.dbg.declare(metadata %struct.acpi_bus_type** %type, metadata !5115, metadata !DIExpression()), !dbg !5116
  %9 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !5117
  %tobool = icmp ne %struct.acpi_device* %9, null, !dbg !5117
  br i1 %tobool, label %if.end, label %if.then, !dbg !5119

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %retval, align 4, !dbg !5120
  br label %return, !dbg !5120

if.end:                                           ; preds = %cond.end
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5121
  %call2 = call %struct.acpi_bus_type* @acpi_get_bus_type(%struct.device* %10) #7, !dbg !5122
  store %struct.acpi_bus_type* %call2, %struct.acpi_bus_type** %type, align 8, !dbg !5123
  %11 = load %struct.acpi_bus_type*, %struct.acpi_bus_type** %type, align 8, !dbg !5124
  %tobool3 = icmp ne %struct.acpi_bus_type* %11, null, !dbg !5124
  br i1 %tobool3, label %land.lhs.true, label %if.else, !dbg !5126

land.lhs.true:                                    ; preds = %if.end
  %12 = load %struct.acpi_bus_type*, %struct.acpi_bus_type** %type, align 8, !dbg !5127
  %cleanup = getelementptr inbounds %struct.acpi_bus_type, %struct.acpi_bus_type* %12, i32 0, i32 5, !dbg !5128
  %13 = load void (%struct.device*)*, void (%struct.device*)** %cleanup, align 8, !dbg !5128
  %tobool4 = icmp ne void (%struct.device*)* %13, null, !dbg !5127
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !5129

if.then5:                                         ; preds = %land.lhs.true
  %14 = load %struct.acpi_bus_type*, %struct.acpi_bus_type** %type, align 8, !dbg !5130
  %cleanup6 = getelementptr inbounds %struct.acpi_bus_type, %struct.acpi_bus_type* %14, i32 0, i32 5, !dbg !5131
  %15 = load void (%struct.device*)*, void (%struct.device*)** %cleanup6, align 8, !dbg !5131
  %16 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5132
  call void %15(%struct.device* %16) #7, !dbg !5130
  br label %if.end15, !dbg !5130

if.else:                                          ; preds = %land.lhs.true, %if.end
  %17 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !5133
  %handler = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %17, i32 0, i32 16, !dbg !5135
  %18 = load %struct.acpi_scan_handler*, %struct.acpi_scan_handler** %handler, align 8, !dbg !5135
  %tobool7 = icmp ne %struct.acpi_scan_handler* %18, null, !dbg !5133
  br i1 %tobool7, label %land.lhs.true8, label %if.end14, !dbg !5136

land.lhs.true8:                                   ; preds = %if.else
  %19 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !5137
  %handler9 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %19, i32 0, i32 16, !dbg !5138
  %20 = load %struct.acpi_scan_handler*, %struct.acpi_scan_handler** %handler9, align 8, !dbg !5138
  %unbind = getelementptr inbounds %struct.acpi_scan_handler, %struct.acpi_scan_handler* %20, i32 0, i32 6, !dbg !5139
  %21 = load void (%struct.device*)*, void (%struct.device*)** %unbind, align 8, !dbg !5139
  %tobool10 = icmp ne void (%struct.device*)* %21, null, !dbg !5137
  br i1 %tobool10, label %if.then11, label %if.end14, !dbg !5140

if.then11:                                        ; preds = %land.lhs.true8
  %22 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !5141
  %handler12 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %22, i32 0, i32 16, !dbg !5142
  %23 = load %struct.acpi_scan_handler*, %struct.acpi_scan_handler** %handler12, align 8, !dbg !5142
  %unbind13 = getelementptr inbounds %struct.acpi_scan_handler, %struct.acpi_scan_handler* %23, i32 0, i32 6, !dbg !5143
  %24 = load void (%struct.device*)*, void (%struct.device*)** %unbind13, align 8, !dbg !5143
  %25 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5144
  call void %24(%struct.device* %25) #7, !dbg !5141
  br label %if.end14, !dbg !5141

if.end14:                                         ; preds = %if.then11, %land.lhs.true8, %if.else
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then5
  %26 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5145
  %call16 = call i32 @acpi_unbind_one(%struct.device* %26) #7, !dbg !5146
  store i32 0, i32* %retval, align 4, !dbg !5147
  br label %return, !dbg !5147

return:                                           ; preds = %if.end15, %if.then
  %27 = load i32, i32* %retval, align 4, !dbg !5148
  ret i32 %27, !dbg !5148
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5149 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5152, metadata !DIExpression()), !dbg !5153
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5154, metadata !DIExpression()), !dbg !5155
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5156, metadata !DIExpression()), !dbg !5157
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5158
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5160
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5161
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #7, !dbg !5162
  br i1 %call, label %if.end, label %if.then, !dbg !5163

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !5164

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5165
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5166
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !5167
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !5168
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5169
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5170
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !5171
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !5172
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5173
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5174
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !5175
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !5176
  br label %do.body, !dbg !5177

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5178

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !5180

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5178

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5182
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5182
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !5182
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !5182
  br label %do.end7, !dbg !5182

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !5178

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !5184
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5185 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5188, metadata !DIExpression()), !dbg !5189
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5190, metadata !DIExpression()), !dbg !5191
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5192, metadata !DIExpression()), !dbg !5193
  ret i1 true, !dbg !5194
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !5195 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5196, metadata !DIExpression()), !dbg !5197
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5198
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #7, !dbg !5200
  br i1 %call, label %if.end, label %if.then, !dbg !5201

if.then:                                          ; preds = %entry
  br label %return, !dbg !5202

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5203
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5204
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !5204
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5205
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !5206
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5206
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #7, !dbg !5207
  br label %return, !dbg !5208

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5208
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !5209 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !5210, metadata !DIExpression()), !dbg !5211
  br label %do.body, !dbg !5212

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5213

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5215

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5213

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5217
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5217
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !5217
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !5217
  br label %do.end3, !dbg !5217

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5213

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5219
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5220
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !5221
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !5222
  ret void, !dbg !5223
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !5224 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5227, metadata !DIExpression()), !dbg !5228
  ret i1 true, !dbg !5229
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5230 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5231, metadata !DIExpression()), !dbg !5232
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5233, metadata !DIExpression()), !dbg !5234
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5235
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5236
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5237
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !5238
  br label %do.body, !dbg !5239

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5240

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !5242

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !5240

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5244
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5244
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !5244
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !5244
  br label %do.end5, !dbg !5244

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !5240

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5246
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @list_empty(%struct.list_head* %head) #0 !dbg !5247 {
entry:
  %head.addr = alloca %struct.list_head*, align 8
  %tmp = alloca %struct.list_head*, align 8
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !5252, metadata !DIExpression()), !dbg !5253
  br label %do.body, !dbg !5254

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5256

do.end:                                           ; preds = %do.body
  %0 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5254
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !5254
  %1 = load volatile %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5254
  store %struct.list_head* %1, %struct.list_head** %tmp, align 8, !dbg !5256
  %2 = load %struct.list_head*, %struct.list_head** %tmp, align 8, !dbg !5254
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5258
  %cmp = icmp eq %struct.list_head* %2, %3, !dbg !5259
  %conv = zext i1 %cmp to i32, !dbg !5259
  ret i32 %conv, !dbg !5260
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !5261 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5265, metadata !DIExpression()), !dbg !5270
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5272, metadata !DIExpression()), !dbg !5273
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5274, metadata !DIExpression()), !dbg !5275
  %0 = load i64, i64* %size.addr, align 8, !dbg !5276
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5278
  br i1 %1, label %if.then, label %if.end447, !dbg !5279

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5280
  %tobool = icmp ne i64 %2, 0, !dbg !5280
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5283

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5284
  br label %return, !dbg !5284

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5285
  %cmp = icmp ult i64 %3, 4096, !dbg !5287
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5288

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5289
  br label %return, !dbg !5289

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub = sub i64 %4, 1, !dbg !5290
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5290
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5290

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub4 = sub i64 %6, 1, !dbg !5290
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5290
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5290

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub6 = sub i64 %8, 1, !dbg !5290
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5290
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5290

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5290

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub9 = sub i64 %9, 1, !dbg !5290
  %and = and i64 %sub9, -9223372036854775808, !dbg !5290
  %tobool10 = icmp ne i64 %and, 0, !dbg !5290
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5290

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5290

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub13 = sub i64 %10, 1, !dbg !5290
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5290
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5290
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5290

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5290

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub18 = sub i64 %11, 1, !dbg !5290
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5290
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5290
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5290

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5290

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub23 = sub i64 %12, 1, !dbg !5290
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5290
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5290
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5290

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5290

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub28 = sub i64 %13, 1, !dbg !5290
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5290
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5290
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5290

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5290

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub33 = sub i64 %14, 1, !dbg !5290
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5290
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5290
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5290

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5290

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub38 = sub i64 %15, 1, !dbg !5290
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5290
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5290
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5290

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5290

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub43 = sub i64 %16, 1, !dbg !5290
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5290
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5290
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5290

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5290

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub48 = sub i64 %17, 1, !dbg !5290
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5290
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5290
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5290

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5290

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub53 = sub i64 %18, 1, !dbg !5290
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5290
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5290
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5290

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5290

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub58 = sub i64 %19, 1, !dbg !5290
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5290
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5290
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5290

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5290

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub63 = sub i64 %20, 1, !dbg !5290
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5290
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5290
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5290

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5290

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub68 = sub i64 %21, 1, !dbg !5290
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5290
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5290
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5290

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5290

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub73 = sub i64 %22, 1, !dbg !5290
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5290
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5290
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5290

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5290

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub78 = sub i64 %23, 1, !dbg !5290
  %and79 = and i64 %sub78, 562949953421312, !dbg !5290
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5290
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5290

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5290

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub83 = sub i64 %24, 1, !dbg !5290
  %and84 = and i64 %sub83, 281474976710656, !dbg !5290
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5290
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5290

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5290

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub88 = sub i64 %25, 1, !dbg !5290
  %and89 = and i64 %sub88, 140737488355328, !dbg !5290
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5290
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5290

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5290

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub93 = sub i64 %26, 1, !dbg !5290
  %and94 = and i64 %sub93, 70368744177664, !dbg !5290
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5290
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5290

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5290

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub98 = sub i64 %27, 1, !dbg !5290
  %and99 = and i64 %sub98, 35184372088832, !dbg !5290
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5290
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5290

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5290

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub103 = sub i64 %28, 1, !dbg !5290
  %and104 = and i64 %sub103, 17592186044416, !dbg !5290
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5290
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5290

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5290

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub108 = sub i64 %29, 1, !dbg !5290
  %and109 = and i64 %sub108, 8796093022208, !dbg !5290
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5290
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5290

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5290

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub113 = sub i64 %30, 1, !dbg !5290
  %and114 = and i64 %sub113, 4398046511104, !dbg !5290
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5290
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5290

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5290

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub118 = sub i64 %31, 1, !dbg !5290
  %and119 = and i64 %sub118, 2199023255552, !dbg !5290
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5290
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5290

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5290

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub123 = sub i64 %32, 1, !dbg !5290
  %and124 = and i64 %sub123, 1099511627776, !dbg !5290
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5290
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5290

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5290

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub128 = sub i64 %33, 1, !dbg !5290
  %and129 = and i64 %sub128, 549755813888, !dbg !5290
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5290
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5290

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5290

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub133 = sub i64 %34, 1, !dbg !5290
  %and134 = and i64 %sub133, 274877906944, !dbg !5290
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5290
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5290

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5290

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub138 = sub i64 %35, 1, !dbg !5290
  %and139 = and i64 %sub138, 137438953472, !dbg !5290
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5290
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5290

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5290

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub143 = sub i64 %36, 1, !dbg !5290
  %and144 = and i64 %sub143, 68719476736, !dbg !5290
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5290
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5290

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5290

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub148 = sub i64 %37, 1, !dbg !5290
  %and149 = and i64 %sub148, 34359738368, !dbg !5290
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5290
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5290

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5290

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub153 = sub i64 %38, 1, !dbg !5290
  %and154 = and i64 %sub153, 17179869184, !dbg !5290
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5290
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5290

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5290

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub158 = sub i64 %39, 1, !dbg !5290
  %and159 = and i64 %sub158, 8589934592, !dbg !5290
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5290
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5290

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5290

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub163 = sub i64 %40, 1, !dbg !5290
  %and164 = and i64 %sub163, 4294967296, !dbg !5290
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5290
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5290

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5290

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub168 = sub i64 %41, 1, !dbg !5290
  %and169 = and i64 %sub168, 2147483648, !dbg !5290
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5290
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5290

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5290

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub173 = sub i64 %42, 1, !dbg !5290
  %and174 = and i64 %sub173, 1073741824, !dbg !5290
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5290
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5290

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5290

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub178 = sub i64 %43, 1, !dbg !5290
  %and179 = and i64 %sub178, 536870912, !dbg !5290
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5290
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5290

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5290

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub183 = sub i64 %44, 1, !dbg !5290
  %and184 = and i64 %sub183, 268435456, !dbg !5290
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5290
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5290

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5290

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub188 = sub i64 %45, 1, !dbg !5290
  %and189 = and i64 %sub188, 134217728, !dbg !5290
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5290
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5290

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5290

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub193 = sub i64 %46, 1, !dbg !5290
  %and194 = and i64 %sub193, 67108864, !dbg !5290
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5290
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5290

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5290

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub198 = sub i64 %47, 1, !dbg !5290
  %and199 = and i64 %sub198, 33554432, !dbg !5290
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5290
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5290

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5290

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub203 = sub i64 %48, 1, !dbg !5290
  %and204 = and i64 %sub203, 16777216, !dbg !5290
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5290
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5290

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5290

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub208 = sub i64 %49, 1, !dbg !5290
  %and209 = and i64 %sub208, 8388608, !dbg !5290
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5290
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5290

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5290

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub213 = sub i64 %50, 1, !dbg !5290
  %and214 = and i64 %sub213, 4194304, !dbg !5290
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5290
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5290

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5290

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub218 = sub i64 %51, 1, !dbg !5290
  %and219 = and i64 %sub218, 2097152, !dbg !5290
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5290
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5290

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5290

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub223 = sub i64 %52, 1, !dbg !5290
  %and224 = and i64 %sub223, 1048576, !dbg !5290
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5290
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5290

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5290

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub228 = sub i64 %53, 1, !dbg !5290
  %and229 = and i64 %sub228, 524288, !dbg !5290
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5290
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5290

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5290

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub233 = sub i64 %54, 1, !dbg !5290
  %and234 = and i64 %sub233, 262144, !dbg !5290
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5290
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5290

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5290

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub238 = sub i64 %55, 1, !dbg !5290
  %and239 = and i64 %sub238, 131072, !dbg !5290
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5290
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5290

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5290

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub243 = sub i64 %56, 1, !dbg !5290
  %and244 = and i64 %sub243, 65536, !dbg !5290
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5290
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5290

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5290

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub248 = sub i64 %57, 1, !dbg !5290
  %and249 = and i64 %sub248, 32768, !dbg !5290
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5290
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5290

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5290

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub253 = sub i64 %58, 1, !dbg !5290
  %and254 = and i64 %sub253, 16384, !dbg !5290
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5290
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5290

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5290

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub258 = sub i64 %59, 1, !dbg !5290
  %and259 = and i64 %sub258, 8192, !dbg !5290
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5290
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5290

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5290

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub263 = sub i64 %60, 1, !dbg !5290
  %and264 = and i64 %sub263, 4096, !dbg !5290
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5290
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5290

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5290

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub268 = sub i64 %61, 1, !dbg !5290
  %and269 = and i64 %sub268, 2048, !dbg !5290
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5290
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5290

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5290

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub273 = sub i64 %62, 1, !dbg !5290
  %and274 = and i64 %sub273, 1024, !dbg !5290
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5290
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5290

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5290

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub278 = sub i64 %63, 1, !dbg !5290
  %and279 = and i64 %sub278, 512, !dbg !5290
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5290
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5290

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5290

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub283 = sub i64 %64, 1, !dbg !5290
  %and284 = and i64 %sub283, 256, !dbg !5290
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5290
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5290

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5290

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub288 = sub i64 %65, 1, !dbg !5290
  %and289 = and i64 %sub288, 128, !dbg !5290
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5290
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5290

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5290

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub293 = sub i64 %66, 1, !dbg !5290
  %and294 = and i64 %sub293, 64, !dbg !5290
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5290
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5290

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5290

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub298 = sub i64 %67, 1, !dbg !5290
  %and299 = and i64 %sub298, 32, !dbg !5290
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5290
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5290

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5290

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub303 = sub i64 %68, 1, !dbg !5290
  %and304 = and i64 %sub303, 16, !dbg !5290
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5290
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5290

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5290

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub308 = sub i64 %69, 1, !dbg !5290
  %and309 = and i64 %sub308, 8, !dbg !5290
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5290
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5290

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5290

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub313 = sub i64 %70, 1, !dbg !5290
  %and314 = and i64 %sub313, 4, !dbg !5290
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5290
  %71 = zext i1 %tobool315 to i64, !dbg !5290
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5290
  br label %cond.end, !dbg !5290

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5290
  br label %cond.end317, !dbg !5290

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5290
  br label %cond.end319, !dbg !5290

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5290
  br label %cond.end321, !dbg !5290

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5290
  br label %cond.end323, !dbg !5290

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5290
  br label %cond.end325, !dbg !5290

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5290
  br label %cond.end327, !dbg !5290

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5290
  br label %cond.end329, !dbg !5290

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5290
  br label %cond.end331, !dbg !5290

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5290
  br label %cond.end333, !dbg !5290

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5290
  br label %cond.end335, !dbg !5290

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5290
  br label %cond.end337, !dbg !5290

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5290
  br label %cond.end339, !dbg !5290

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5290
  br label %cond.end341, !dbg !5290

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5290
  br label %cond.end343, !dbg !5290

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5290
  br label %cond.end345, !dbg !5290

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5290
  br label %cond.end347, !dbg !5290

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5290
  br label %cond.end349, !dbg !5290

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5290
  br label %cond.end351, !dbg !5290

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5290
  br label %cond.end353, !dbg !5290

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5290
  br label %cond.end355, !dbg !5290

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5290
  br label %cond.end357, !dbg !5290

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5290
  br label %cond.end359, !dbg !5290

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5290
  br label %cond.end361, !dbg !5290

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5290
  br label %cond.end363, !dbg !5290

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5290
  br label %cond.end365, !dbg !5290

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5290
  br label %cond.end367, !dbg !5290

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5290
  br label %cond.end369, !dbg !5290

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5290
  br label %cond.end371, !dbg !5290

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5290
  br label %cond.end373, !dbg !5290

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5290
  br label %cond.end375, !dbg !5290

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5290
  br label %cond.end377, !dbg !5290

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5290
  br label %cond.end379, !dbg !5290

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5290
  br label %cond.end381, !dbg !5290

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5290
  br label %cond.end383, !dbg !5290

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5290
  br label %cond.end385, !dbg !5290

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5290
  br label %cond.end387, !dbg !5290

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5290
  br label %cond.end389, !dbg !5290

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5290
  br label %cond.end391, !dbg !5290

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5290
  br label %cond.end393, !dbg !5290

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5290
  br label %cond.end395, !dbg !5290

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5290
  br label %cond.end397, !dbg !5290

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5290
  br label %cond.end399, !dbg !5290

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5290
  br label %cond.end401, !dbg !5290

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5290
  br label %cond.end403, !dbg !5290

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5290
  br label %cond.end405, !dbg !5290

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5290
  br label %cond.end407, !dbg !5290

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5290
  br label %cond.end409, !dbg !5290

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5290
  br label %cond.end411, !dbg !5290

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5290
  br label %cond.end413, !dbg !5290

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5290
  br label %cond.end415, !dbg !5290

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5290
  br label %cond.end417, !dbg !5290

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5290
  br label %cond.end419, !dbg !5290

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5290
  br label %cond.end421, !dbg !5290

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5290
  br label %cond.end423, !dbg !5290

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5290
  br label %cond.end425, !dbg !5290

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5290
  br label %cond.end427, !dbg !5290

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5290
  br label %cond.end429, !dbg !5290

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5290
  br label %cond.end431, !dbg !5290

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5290
  br label %cond.end433, !dbg !5290

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5290
  br label %cond.end435, !dbg !5290

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5290
  br label %cond.end437, !dbg !5290

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5290
  br label %cond.end440, !dbg !5290

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5290

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5290
  br label %cond.end444, !dbg !5290

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5290
  %sub443 = sub i64 %72, 1, !dbg !5290
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !5290
  br label %cond.end444, !dbg !5290

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5290
  %sub446 = sub i32 %cond445, 12, !dbg !5291
  %add = add i32 %sub446, 1, !dbg !5292
  store i32 %add, i32* %retval, align 4, !dbg !5293
  br label %return, !dbg !5293

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5294
  %dec = add i64 %73, -1, !dbg !5294
  store i64 %dec, i64* %size.addr, align 8, !dbg !5294
  %74 = load i64, i64* %size.addr, align 8, !dbg !5295
  %shr = lshr i64 %74, 12, !dbg !5295
  store i64 %shr, i64* %size.addr, align 8, !dbg !5295
  %75 = load i64, i64* %size.addr, align 8, !dbg !5296
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5273
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5297
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5298
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #12, !dbg !5297, !srcloc !5299
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5297
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5300
  %add.i = add i32 %79, 1, !dbg !5301
  store i32 %add.i, i32* %retval, align 4, !dbg !5302
  br label %return, !dbg !5302

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5303
  ret i32 %80, !dbg !5303
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !5304 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5265, metadata !DIExpression()), !dbg !5308
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5272, metadata !DIExpression()), !dbg !5310
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5311, metadata !DIExpression()), !dbg !5312
  %0 = load i64, i64* %n.addr, align 8, !dbg !5313
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5310
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5314
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5315
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #12, !dbg !5314, !srcloc !5299
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5314
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5316
  %add.i = add i32 %4, 1, !dbg !5317
  %sub = sub i32 %add.i, 1, !dbg !5318
  ret i32 %sub, !dbg !5319
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5320 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5324, metadata !DIExpression()), !dbg !5325
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5326, metadata !DIExpression()), !dbg !5327
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5328, metadata !DIExpression()), !dbg !5329
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5330, metadata !DIExpression()), !dbg !5331
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5332
  ret i8* %0, !dbg !5333
}

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.acpi_bus_type* @acpi_get_bus_type(%struct.device* %dev) #0 !dbg !5334 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %tmp = alloca %struct.acpi_bus_type*, align 8
  %ret = alloca %struct.acpi_bus_type*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.acpi_bus_type*, align 8
  %__mptr2 = alloca i8*, align 8
  %tmp6 = alloca %struct.acpi_bus_type*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5337, metadata !DIExpression()), !dbg !5338
  call void @llvm.dbg.declare(metadata %struct.acpi_bus_type** %tmp, metadata !5339, metadata !DIExpression()), !dbg !5340
  call void @llvm.dbg.declare(metadata %struct.acpi_bus_type** %ret, metadata !5341, metadata !DIExpression()), !dbg !5342
  store %struct.acpi_bus_type* null, %struct.acpi_bus_type** %ret, align 8, !dbg !5342
  call void @down_read(%struct.rw_semaphore* @bus_type_sem) #7, !dbg !5343
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5344, metadata !DIExpression()), !dbg !5347
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @bus_type_list, i32 0, i32 0), align 8, !dbg !5347
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !5347
  store i8* %1, i8** %__mptr, align 8, !dbg !5347
  br label %do.body, !dbg !5347

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5348

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5347
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !5347
  %3 = bitcast i8* %add.ptr to %struct.acpi_bus_type*, !dbg !5347
  store %struct.acpi_bus_type* %3, %struct.acpi_bus_type** %tmp1, align 8, !dbg !5348
  %4 = load %struct.acpi_bus_type*, %struct.acpi_bus_type** %tmp1, align 8, !dbg !5347
  store %struct.acpi_bus_type* %4, %struct.acpi_bus_type** %tmp, align 8, !dbg !5350
  br label %for.cond, !dbg !5350

for.cond:                                         ; preds = %do.end5, %do.end
  %5 = load %struct.acpi_bus_type*, %struct.acpi_bus_type** %tmp, align 8, !dbg !5351
  %list = getelementptr inbounds %struct.acpi_bus_type, %struct.acpi_bus_type* %5, i32 0, i32 0, !dbg !5351
  %cmp = icmp eq %struct.list_head* %list, @bus_type_list, !dbg !5351
  %lnot = xor i1 %cmp, true, !dbg !5351
  br i1 %lnot, label %for.body, label %for.end, !dbg !5350

for.body:                                         ; preds = %for.cond
  %6 = load %struct.acpi_bus_type*, %struct.acpi_bus_type** %tmp, align 8, !dbg !5353
  %match = getelementptr inbounds %struct.acpi_bus_type, %struct.acpi_bus_type* %6, i32 0, i32 2, !dbg !5356
  %7 = load i1 (%struct.device*)*, i1 (%struct.device*)** %match, align 8, !dbg !5356
  %8 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5357
  %call = call zeroext i1 %7(%struct.device* %8) #7, !dbg !5353
  br i1 %call, label %if.then, label %if.end, !dbg !5358

if.then:                                          ; preds = %for.body
  %9 = load %struct.acpi_bus_type*, %struct.acpi_bus_type** %tmp, align 8, !dbg !5359
  store %struct.acpi_bus_type* %9, %struct.acpi_bus_type** %ret, align 8, !dbg !5361
  br label %for.end, !dbg !5362

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5363

for.inc:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr2, metadata !5364, metadata !DIExpression()), !dbg !5366
  %10 = load %struct.acpi_bus_type*, %struct.acpi_bus_type** %tmp, align 8, !dbg !5366
  %list3 = getelementptr inbounds %struct.acpi_bus_type, %struct.acpi_bus_type* %10, i32 0, i32 0, !dbg !5366
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list3, i32 0, i32 0, !dbg !5366
  %11 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5366
  %12 = bitcast %struct.list_head* %11 to i8*, !dbg !5366
  store i8* %12, i8** %__mptr2, align 8, !dbg !5366
  br label %do.body4, !dbg !5366

do.body4:                                         ; preds = %for.inc
  br label %do.end5, !dbg !5367

do.end5:                                          ; preds = %do.body4
  %13 = load i8*, i8** %__mptr2, align 8, !dbg !5366
  %add.ptr7 = getelementptr i8, i8* %13, i64 0, !dbg !5366
  %14 = bitcast i8* %add.ptr7 to %struct.acpi_bus_type*, !dbg !5366
  store %struct.acpi_bus_type* %14, %struct.acpi_bus_type** %tmp6, align 8, !dbg !5367
  %15 = load %struct.acpi_bus_type*, %struct.acpi_bus_type** %tmp6, align 8, !dbg !5366
  store %struct.acpi_bus_type* %15, %struct.acpi_bus_type** %tmp, align 8, !dbg !5351
  br label %for.cond, !dbg !5351, !llvm.loop !5369

for.end:                                          ; preds = %if.then, %for.cond
  call void @up_read(%struct.rw_semaphore* @bus_type_sem) #7, !dbg !5371
  %16 = load %struct.acpi_bus_type*, %struct.acpi_bus_type** %ret, align 8, !dbg !5372
  ret %struct.acpi_bus_type* %16, !dbg !5373
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_configure_pmsi_domain(%struct.device* %dev) #0 !dbg !5374 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5376, metadata !DIExpression()), !dbg !5377
  ret void, !dbg !5378
}

; Function Attrs: noredzone
declare dso_local void @down_read(%struct.rw_semaphore*) #2

; Function Attrs: noredzone
declare dso_local void @up_read(%struct.rw_semaphore*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noredzone }
attributes #8 = { cold noredzone }
attributes #9 = { nounwind }
attributes #10 = { noredzone nounwind readnone }
attributes #11 = { noredzone nounwind }
attributes #12 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4160, !4161, !4162, !4163}
!llvm.ident = !{!4164}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "bus_type_sem", scope: !2, file: !3, line: 34, type: !736, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !130, globals: !4157, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/glue.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !107, !112, !123}
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
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !108, line: 10, baseType: !7, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!109 = !{!110, !111}
!110 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!111 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobject_action", file: !113, line: 53, baseType: !7, size: 32, elements: !114)
!113 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!114 = !{!115, !116, !117, !118, !119, !120, !121, !122}
!115 = !DIEnumerator(name: "KOBJ_ADD", value: 0, isUnsigned: true)
!116 = !DIEnumerator(name: "KOBJ_REMOVE", value: 1, isUnsigned: true)
!117 = !DIEnumerator(name: "KOBJ_CHANGE", value: 2, isUnsigned: true)
!118 = !DIEnumerator(name: "KOBJ_MOVE", value: 3, isUnsigned: true)
!119 = !DIEnumerator(name: "KOBJ_ONLINE", value: 4, isUnsigned: true)
!120 = !DIEnumerator(name: "KOBJ_OFFLINE", value: 5, isUnsigned: true)
!121 = !DIEnumerator(name: "KOBJ_BIND", value: 6, isUnsigned: true)
!122 = !DIEnumerator(name: "KOBJ_UNBIND", value: 7, isUnsigned: true)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !124, line: 305, baseType: !7, size: 32, elements: !125)
!124 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!125 = !{!126, !127, !128, !129}
!126 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!127 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!128 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!129 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!130 = !{!131, !132, !712, !4130, !4137, !4139, !4140, !4142}
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !134, line: 351, size: 10880, elements: !135)
!134 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/lizy2001/genbc/linux")
!135 = !{!136, !138, !141, !3857, !3858, !3859, !3860, !3861, !3862, !3871, !3888, !3962, !3991, !4015, !4036, !4042, !4051, !4083, !4097, !4119, !4123, !4124, !4125, !4126, !4127, !4128, !4129}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !133, file: !134, line: 352, baseType: !137, size: 32)
!137 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !133, file: !134, line: 353, baseType: !139, size: 64, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !140, line: 424, baseType: !131)
!140 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!141 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !133, file: !134, line: 354, baseType: !142, size: 192, offset: 128)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !143, line: 17, size: 192, elements: !144)
!143 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!144 = !{!145, !147, !3856}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !142, file: !143, line: 18, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !142, file: !143, line: 19, baseType: !148, size: 64, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !143, line: 110, size: 1152, elements: !151)
!151 = !{!152, !156, !160, !169, !3798, !3802, !3806, !3811, !3815, !3816, !3820, !3824, !3828, !3839, !3840, !3841, !3842, !3852}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !150, file: !143, line: 111, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DISubroutineType(types: !155)
!155 = !{!146, !146}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !150, file: !143, line: 112, baseType: !157, size: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{null, !146}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !150, file: !143, line: 113, baseType: !161, size: 64, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{!164, !167}
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !165, line: 30, baseType: !166)
!165 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!166 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !150, file: !143, line: 114, baseType: !170, size: 64, offset: 192)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{!173, !167, !175}
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !178)
!178 = !{!179, !3340, !3342, !3345, !3346, !3397, !3488, !3489, !3490, !3491, !3492, !3501, !3606, !3619, !3725, !3726, !3730, !3732, !3733, !3734, !3738, !3744, !3745, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3786, !3787, !3788, !3791, !3794, !3795, !3796, !3797}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !177, file: !73, line: 462, baseType: !180, size: 512)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !113, line: 64, size: 512, elements: !181)
!181 = !{!182, !186, !192, !194, !254, !3191, !3330, !3335, !3336, !3337, !3338, !3339}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !180, file: !113, line: 65, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!185 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !180, file: !113, line: 66, baseType: !187, size: 128, offset: 64)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !165, line: 178, size: 128, elements: !188)
!188 = !{!189, !191}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !187, file: !165, line: 179, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !187, file: !165, line: 179, baseType: !190, size: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !180, file: !113, line: 67, baseType: !193, size: 64, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !180, file: !113, line: 68, baseType: !195, size: 64, offset: 256)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !113, line: 192, size: 704, elements: !197)
!197 = !{!198, !199, !215, !216}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !196, file: !113, line: 193, baseType: !187, size: 128)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !196, file: !113, line: 194, baseType: !200, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !201, line: 83, baseType: !202)
!201 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !201, line: 71, elements: !203)
!203 = !{!204}
!204 = !DIDerivedType(tag: DW_TAG_member, scope: !202, file: !201, line: 72, baseType: !205)
!205 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !202, file: !201, line: 72, elements: !206)
!206 = !{!207}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !205, file: !201, line: 73, baseType: !208)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !201, line: 20, elements: !209)
!209 = !{!210}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !208, file: !201, line: 21, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !212, line: 25, baseType: !213)
!212 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !212, line: 25, elements: !214)
!214 = !{}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !196, file: !113, line: 195, baseType: !180, size: 512, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !196, file: !113, line: 196, baseType: !217, size: 64, offset: 640)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !113, line: 156, size: 192, elements: !220)
!220 = !{!221, !226, !231}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !219, file: !113, line: 157, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{!137, !195, !193}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !219, file: !113, line: 158, baseType: !227, size: 64, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{!183, !195, !193}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !219, file: !113, line: 159, baseType: !232, size: 64, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!137, !195, !193, !236}
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !113, line: 148, size: 20736, elements: !238)
!238 = !{!239, !244, !248, !249, !253}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !237, file: !113, line: 149, baseType: !240, size: 192)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 192, elements: !242)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!242 = !{!243}
!243 = !DISubrange(count: 3)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !237, file: !113, line: 150, baseType: !245, size: 4096, offset: 192)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 4096, elements: !246)
!246 = !{!247}
!247 = !DISubrange(count: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !237, file: !113, line: 151, baseType: !137, size: 32, offset: 4288)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !237, file: !113, line: 152, baseType: !250, size: 16384, offset: 4320)
!250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 16384, elements: !251)
!251 = !{!252}
!252 = !DISubrange(count: 2048)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !237, file: !113, line: 153, baseType: !137, size: 32, offset: 20704)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !180, file: !113, line: 69, baseType: !255, size: 64, offset: 320)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !113, line: 138, size: 448, elements: !257)
!257 = !{!258, !262, !292, !294, !3153, !3181, !3185}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !256, file: !113, line: 139, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{null, !193}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !256, file: !113, line: 140, baseType: !263, size: 64, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !266, line: 230, size: 128, elements: !267)
!266 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!267 = !{!268, !284}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !265, file: !266, line: 231, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!272, !193, !277, !241}
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !165, line: 60, baseType: !273)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !274, line: 73, baseType: !275)
!274 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !274, line: 15, baseType: !276)
!276 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !266, line: 30, size: 128, elements: !279)
!279 = !{!280, !281}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !278, file: !266, line: 31, baseType: !183, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !278, file: !266, line: 32, baseType: !282, size: 16, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !165, line: 19, baseType: !283)
!283 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !265, file: !266, line: 232, baseType: !285, size: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!272, !193, !277, !183, !288}
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !165, line: 55, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !274, line: 72, baseType: !290)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !274, line: 16, baseType: !291)
!291 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !256, file: !113, line: 141, baseType: !293, size: 64, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !256, file: !113, line: 142, baseType: !295, size: 64, offset: 192)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !298)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !266, line: 84, size: 320, elements: !299)
!299 = !{!300, !301, !305, !3150, !3151}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !298, file: !266, line: 85, baseType: !183, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !298, file: !266, line: 86, baseType: !302, size: 64, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{!282, !193, !277, !137}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !298, file: !266, line: 88, baseType: !306, size: 64, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!282, !193, !309, !137}
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !266, line: 168, size: 448, elements: !311)
!311 = !{!312, !313, !314, !315, !3145, !3146}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !310, file: !266, line: 169, baseType: !278, size: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !310, file: !266, line: 170, baseType: !288, size: 64, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !310, file: !266, line: 171, baseType: !131, size: 64, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !310, file: !266, line: 172, baseType: !316, size: 64, offset: 256)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{!272, !319, !193, !309, !241, !496, !288}
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !321)
!321 = !{!322, !340, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3128, !3129, !3138, !3139, !3140, !3141, !3142, !3143, !3144}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !320, file: !44, line: 920, baseType: !323, size: 128)
!323 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !320, file: !44, line: 917, size: 128, elements: !324)
!324 = !{!325, !331}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !323, file: !44, line: 918, baseType: !326, size: 64)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !327, line: 58, size: 64, elements: !328)
!327 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!328 = !{!329}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !326, file: !327, line: 59, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !323, file: !44, line: 919, baseType: !332, size: 128, align: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !165, line: 216, size: 128, align: 64, elements: !333)
!333 = !{!334, !336}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !332, file: !165, line: 217, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !332, file: !165, line: 218, baseType: !337, size: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !335}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !320, file: !44, line: 921, baseType: !341, size: 128, offset: 128)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !342, line: 8, size: 128, elements: !343)
!342 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!343 = !{!344, !348}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !341, file: !342, line: 9, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !347, line: 18, flags: DIFlagFwdDecl)
!347 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!348 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !341, file: !342, line: 10, baseType: !349, size: 64, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !347, line: 89, size: 1536, elements: !351)
!351 = !{!352, !353, !363, !371, !372, !395, !3078, !3080, !3092, !3093, !3094, !3095, !3096, !3102, !3103, !3104}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !350, file: !347, line: 91, baseType: !7, size: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !350, file: !347, line: 92, baseType: !354, size: 32, offset: 32)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !355, line: 277, baseType: !356)
!355 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !355, line: 277, size: 32, elements: !357)
!357 = !{!358}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !356, file: !355, line: 277, baseType: !359, size: 32)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !355, line: 70, baseType: !360)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !355, line: 65, size: 32, elements: !361)
!361 = !{!362}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !360, file: !355, line: 66, baseType: !7, size: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !350, file: !347, line: 93, baseType: !364, size: 128, offset: 64)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !365, line: 38, size: 128, elements: !366)
!365 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!366 = !{!367, !369}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !364, file: !365, line: 39, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !364, file: !365, line: 39, baseType: !370, size: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !350, file: !347, line: 94, baseType: !349, size: 64, offset: 192)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !350, file: !347, line: 95, baseType: !373, size: 128, offset: 256)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !347, line: 47, size: 128, elements: !374)
!374 = !{!375, !391}
!375 = !DIDerivedType(tag: DW_TAG_member, scope: !373, file: !347, line: 48, baseType: !376, size: 64)
!376 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !373, file: !347, line: 48, size: 64, elements: !377)
!377 = !{!378, !387}
!378 = !DIDerivedType(tag: DW_TAG_member, scope: !376, file: !347, line: 49, baseType: !379, size: 64)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !376, file: !347, line: 49, size: 64, elements: !380)
!380 = !{!381, !386}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !379, file: !347, line: 50, baseType: !382, size: 32)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !383, line: 21, baseType: !384)
!383 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !385, line: 27, baseType: !7)
!385 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!386 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !379, file: !347, line: 50, baseType: !382, size: 32, offset: 32)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !376, file: !347, line: 52, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !383, line: 23, baseType: !389)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !385, line: 31, baseType: !390)
!390 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !373, file: !347, line: 54, baseType: !392, size: 64, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !394)
!394 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !350, file: !347, line: 96, baseType: !396, size: 64, offset: 384)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !398)
!398 = !{!399, !400, !401, !409, !416, !417, !563, !2789, !2790, !2791, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !3054, !3062, !3063, !3064, !3074, !3075, !3076, !3077}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !397, file: !44, line: 611, baseType: !282, size: 16)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !397, file: !44, line: 612, baseType: !283, size: 16, offset: 16)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !397, file: !44, line: 613, baseType: !402, size: 32, offset: 32)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !403, line: 23, baseType: !404)
!403 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !403, line: 21, size: 32, elements: !405)
!405 = !{!406}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !404, file: !403, line: 22, baseType: !407, size: 32)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !165, line: 32, baseType: !408)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !274, line: 49, baseType: !7)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !397, file: !44, line: 614, baseType: !410, size: 32, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !403, line: 28, baseType: !411)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !403, line: 26, size: 32, elements: !412)
!412 = !{!413}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !411, file: !403, line: 27, baseType: !414, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !165, line: 33, baseType: !415)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !274, line: 50, baseType: !7)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !397, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !397, file: !44, line: 622, baseType: !418, size: 64, offset: 128)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !420)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !421)
!421 = !{!422, !426, !439, !443, !449, !453, !457, !461, !465, !469, !473, !474, !480, !484, !510, !539, !543, !549, !554, !558, !559}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !420, file: !44, line: 1865, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{!349, !396, !349, !7}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !420, file: !44, line: 1866, baseType: !427, size: 64, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{!183, !349, !396, !430}
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !432, line: 10, size: 128, elements: !433)
!432 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!433 = !{!434, !438}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !431, file: !432, line: 11, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{null, !131}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !431, file: !432, line: 12, baseType: !131, size: 64, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !420, file: !44, line: 1867, baseType: !440, size: 64, offset: 128)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{!137, !396, !137}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !420, file: !44, line: 1868, baseType: !444, size: 64, offset: 192)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!447, !396, !137}
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !420, file: !44, line: 1870, baseType: !450, size: 64, offset: 256)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!137, !349, !241, !137}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !420, file: !44, line: 1872, baseType: !454, size: 64, offset: 320)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{!137, !396, !349, !282, !164}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !420, file: !44, line: 1873, baseType: !458, size: 64, offset: 384)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!137, !349, !396, !349}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !420, file: !44, line: 1874, baseType: !462, size: 64, offset: 448)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!137, !396, !349}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !420, file: !44, line: 1875, baseType: !466, size: 64, offset: 512)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!137, !396, !349, !183}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !420, file: !44, line: 1876, baseType: !470, size: 64, offset: 576)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!137, !396, !349, !282}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !420, file: !44, line: 1877, baseType: !462, size: 64, offset: 640)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !420, file: !44, line: 1878, baseType: !475, size: 64, offset: 704)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!137, !396, !349, !282, !478}
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !165, line: 16, baseType: !479)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !165, line: 13, baseType: !382)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !420, file: !44, line: 1879, baseType: !481, size: 64, offset: 768)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!137, !396, !349, !396, !349, !7}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !420, file: !44, line: 1881, baseType: !485, size: 64, offset: 832)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!137, !349, !488}
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !490)
!490 = !{!491, !492, !493, !494, !495, !499, !507, !508, !509}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !489, file: !44, line: 220, baseType: !7, size: 32)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !489, file: !44, line: 221, baseType: !282, size: 16, offset: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !489, file: !44, line: 222, baseType: !402, size: 32, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !489, file: !44, line: 223, baseType: !410, size: 32, offset: 96)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !489, file: !44, line: 224, baseType: !496, size: 64, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !165, line: 46, baseType: !497)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !274, line: 88, baseType: !498)
!498 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !489, file: !44, line: 225, baseType: !500, size: 128, offset: 192)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !501, line: 13, size: 128, elements: !502)
!501 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!502 = !{!503, !506}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !500, file: !501, line: 14, baseType: !504, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !501, line: 8, baseType: !505)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !385, line: 30, baseType: !498)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !500, file: !501, line: 15, baseType: !276, size: 64, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !489, file: !44, line: 226, baseType: !500, size: 128, offset: 320)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !489, file: !44, line: 227, baseType: !500, size: 128, offset: 448)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !489, file: !44, line: 234, baseType: !319, size: 64, offset: 576)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !420, file: !44, line: 1882, baseType: !511, size: 64, offset: 896)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DISubroutineType(types: !513)
!513 = !{!137, !514, !516, !382, !7}
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !341)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !518, line: 22, size: 1152, elements: !519)
!518 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!519 = !{!520, !521, !522, !523, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !517, file: !518, line: 23, baseType: !382, size: 32)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !517, file: !518, line: 24, baseType: !282, size: 16, offset: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !517, file: !518, line: 25, baseType: !7, size: 32, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !517, file: !518, line: 26, baseType: !524, size: 32, offset: 96)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !165, line: 104, baseType: !382)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !517, file: !518, line: 27, baseType: !388, size: 64, offset: 128)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !517, file: !518, line: 28, baseType: !388, size: 64, offset: 192)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !517, file: !518, line: 37, baseType: !388, size: 64, offset: 256)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !517, file: !518, line: 38, baseType: !478, size: 32, offset: 320)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !517, file: !518, line: 39, baseType: !478, size: 32, offset: 352)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !517, file: !518, line: 40, baseType: !402, size: 32, offset: 384)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !517, file: !518, line: 41, baseType: !410, size: 32, offset: 416)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !517, file: !518, line: 42, baseType: !496, size: 64, offset: 448)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !517, file: !518, line: 43, baseType: !500, size: 128, offset: 512)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !517, file: !518, line: 44, baseType: !500, size: 128, offset: 640)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !517, file: !518, line: 45, baseType: !500, size: 128, offset: 768)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !517, file: !518, line: 46, baseType: !500, size: 128, offset: 896)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !517, file: !518, line: 47, baseType: !388, size: 64, offset: 1024)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !517, file: !518, line: 48, baseType: !388, size: 64, offset: 1088)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !420, file: !44, line: 1883, baseType: !540, size: 64, offset: 960)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!272, !349, !241, !288}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !420, file: !44, line: 1884, baseType: !544, size: 64, offset: 1024)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!137, !396, !547, !388, !388}
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !420, file: !44, line: 1886, baseType: !550, size: 64, offset: 1088)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DISubroutineType(types: !552)
!552 = !{!137, !396, !553, !137}
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !420, file: !44, line: 1887, baseType: !555, size: 64, offset: 1152)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{!137, !396, !349, !319, !7, !282}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !420, file: !44, line: 1890, baseType: !470, size: 64, offset: 1216)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !420, file: !44, line: 1891, baseType: !560, size: 64, offset: 1280)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{!137, !396, !447, !137}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !397, file: !44, line: 623, baseType: !564, size: 64, offset: 192)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !566)
!566 = !{!567, !568, !569, !570, !571, !572, !622, !2396, !2478, !2561, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2577, !2581, !2582, !2585, !2586, !2589, !2590, !2591, !2632, !2659, !2660, !2661, !2662, !2663, !2664, !2667, !2669, !2676, !2677, !2679, !2680, !2681, !2740, !2741, !2756, !2757, !2758, !2759, !2760, !2763, !2764, !2765, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !565, file: !44, line: 1417, baseType: !187, size: 128)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !565, file: !44, line: 1418, baseType: !478, size: 32, offset: 128)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !565, file: !44, line: 1419, baseType: !394, size: 8, offset: 160)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !565, file: !44, line: 1420, baseType: !291, size: 64, offset: 192)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !565, file: !44, line: 1421, baseType: !496, size: 64, offset: 256)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !565, file: !44, line: 1422, baseType: !573, size: 64, offset: 320)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !575)
!575 = !{!576, !577, !578, !585, !589, !593, !597, !601, !602, !612, !615, !616, !617, !619, !620, !621}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !574, file: !44, line: 2229, baseType: !183, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !574, file: !44, line: 2230, baseType: !137, size: 32, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !574, file: !44, line: 2238, baseType: !579, size: 64, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DISubroutineType(types: !581)
!581 = !{!137, !582}
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !584, line: 28, flags: DIFlagFwdDecl)
!584 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!585 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !574, file: !44, line: 2239, baseType: !586, size: 64, offset: 192)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !588)
!588 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !574, file: !44, line: 2240, baseType: !590, size: 64, offset: 256)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!349, !573, !137, !183, !131}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !574, file: !44, line: 2242, baseType: !594, size: 64, offset: 320)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{null, !564}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !574, file: !44, line: 2243, baseType: !598, size: 64, offset: 384)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !600, line: 76, flags: DIFlagFwdDecl)
!600 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!601 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !574, file: !44, line: 2244, baseType: !573, size: 64, offset: 448)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !574, file: !44, line: 2245, baseType: !603, size: 64, offset: 512)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !165, line: 182, size: 64, elements: !604)
!604 = !{!605}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !603, file: !165, line: 183, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !165, line: 186, size: 128, elements: !608)
!608 = !{!609, !610}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !607, file: !165, line: 187, baseType: !606, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !607, file: !165, line: 187, baseType: !611, size: 64, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !574, file: !44, line: 2247, baseType: !613, offset: 576)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !614, line: 187, elements: !214)
!614 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!615 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !574, file: !44, line: 2248, baseType: !613, offset: 576)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !574, file: !44, line: 2249, baseType: !613, offset: 576)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !574, file: !44, line: 2250, baseType: !618, offset: 576)
!618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !613, elements: !242)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !574, file: !44, line: 2252, baseType: !613, offset: 576)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !574, file: !44, line: 2253, baseType: !613, offset: 576)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !574, file: !44, line: 2254, baseType: !613, offset: 576)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !565, file: !44, line: 1423, baseType: !623, size: 64, offset: 384)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !625)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !626)
!626 = !{!627, !631, !635, !636, !640, !646, !650, !651, !652, !656, !660, !661, !662, !663, !669, !674, !675, !682, !683, !684, !685, !2380, !2395}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !625, file: !44, line: 1936, baseType: !628, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{!396, !564}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !625, file: !44, line: 1937, baseType: !632, size: 64, offset: 64)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{null, !396}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !625, file: !44, line: 1938, baseType: !632, size: 64, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !625, file: !44, line: 1940, baseType: !637, size: 64, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{null, !396, !137}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !625, file: !44, line: 1941, baseType: !641, size: 64, offset: 256)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{!137, !396, !644}
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !625, file: !44, line: 1942, baseType: !647, size: 64, offset: 320)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{!137, !396}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !625, file: !44, line: 1943, baseType: !632, size: 64, offset: 384)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !625, file: !44, line: 1944, baseType: !594, size: 64, offset: 448)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !625, file: !44, line: 1945, baseType: !653, size: 64, offset: 512)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{!137, !564, !137}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !625, file: !44, line: 1946, baseType: !657, size: 64, offset: 576)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DISubroutineType(types: !659)
!659 = !{!137, !564}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !625, file: !44, line: 1947, baseType: !657, size: 64, offset: 640)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !625, file: !44, line: 1948, baseType: !657, size: 64, offset: 704)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !625, file: !44, line: 1949, baseType: !657, size: 64, offset: 768)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !625, file: !44, line: 1950, baseType: !664, size: 64, offset: 832)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{!137, !349, !667}
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !625, file: !44, line: 1951, baseType: !670, size: 64, offset: 896)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{!137, !564, !673, !241}
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !625, file: !44, line: 1952, baseType: !594, size: 64, offset: 960)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !625, file: !44, line: 1954, baseType: !676, size: 64, offset: 1024)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DISubroutineType(types: !678)
!678 = !{!137, !679, !349}
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !681, line: 539, flags: DIFlagFwdDecl)
!681 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!682 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !625, file: !44, line: 1955, baseType: !676, size: 64, offset: 1088)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !625, file: !44, line: 1956, baseType: !676, size: 64, offset: 1152)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !625, file: !44, line: 1957, baseType: !676, size: 64, offset: 1216)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !625, file: !44, line: 1963, baseType: !686, size: 64, offset: 1280)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DISubroutineType(types: !688)
!688 = !{!137, !564, !689, !712}
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !691, line: 68, size: 512, align: 128, elements: !692)
!691 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!692 = !{!693, !694, !2372, !2379}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !690, file: !691, line: 69, baseType: !291, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, scope: !690, file: !691, line: 77, baseType: !695, size: 320, offset: 64)
!695 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !690, file: !691, line: 77, size: 320, elements: !696)
!696 = !{!697, !885, !890, !918, !926, !932, !2303, !2371}
!697 = !DIDerivedType(tag: DW_TAG_member, scope: !695, file: !691, line: 78, baseType: !698, size: 320)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !695, file: !691, line: 78, size: 320, elements: !699)
!699 = !{!700, !701, !883, !884}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !698, file: !691, line: 84, baseType: !187, size: 128)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !698, file: !691, line: 86, baseType: !702, size: 64, offset: 128)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !704)
!704 = !{!705, !706, !714, !715, !720, !735, !751, !752, !753, !754, !876, !877, !880, !881, !882}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !703, file: !44, line: 452, baseType: !396, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !703, file: !44, line: 453, baseType: !707, size: 128, offset: 64)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !708, line: 292, size: 128, elements: !709)
!708 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!709 = !{!710, !711, !713}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !707, file: !708, line: 293, baseType: !200)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !707, file: !708, line: 295, baseType: !712, size: 32)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !165, line: 148, baseType: !7)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !707, file: !708, line: 296, baseType: !131, size: 64, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !703, file: !44, line: 454, baseType: !712, size: 32, offset: 192)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !703, file: !44, line: 455, baseType: !716, size: 32, offset: 224)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !165, line: 168, baseType: !717)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !165, line: 166, size: 32, elements: !718)
!718 = !{!719}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !717, file: !165, line: 167, baseType: !137, size: 32)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !703, file: !44, line: 460, baseType: !721, size: 128, offset: 256)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !722, line: 125, size: 128, elements: !723)
!722 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!723 = !{!724, !734}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !721, file: !722, line: 126, baseType: !725, size: 64)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !722, line: 31, size: 64, elements: !726)
!726 = !{!727}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !725, file: !722, line: 32, baseType: !728, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !722, line: 24, size: 192, align: 64, elements: !730)
!730 = !{!731, !732, !733}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !729, file: !722, line: 25, baseType: !291, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !729, file: !722, line: 26, baseType: !728, size: 64, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !729, file: !722, line: 27, baseType: !728, size: 64, offset: 128)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !721, file: !722, line: 127, baseType: !728, size: 64, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !703, file: !44, line: 461, baseType: !736, size: 256, offset: 384)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !737, line: 35, size: 256, elements: !738)
!737 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!738 = !{!739, !747, !748, !750}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !736, file: !737, line: 36, baseType: !740, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !741, line: 13, baseType: !742)
!741 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !165, line: 175, baseType: !743)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !165, line: 173, size: 64, elements: !744)
!744 = !{!745}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !743, file: !165, line: 174, baseType: !746, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !383, line: 22, baseType: !505)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !736, file: !737, line: 42, baseType: !740, size: 64, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !736, file: !737, line: 46, baseType: !749, offset: 128)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !201, line: 29, baseType: !208)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !736, file: !737, line: 47, baseType: !187, size: 128, offset: 128)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !703, file: !44, line: 462, baseType: !291, size: 64, offset: 640)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !703, file: !44, line: 463, baseType: !291, size: 64, offset: 704)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !703, file: !44, line: 464, baseType: !291, size: 64, offset: 768)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !703, file: !44, line: 465, baseType: !755, size: 64, offset: 832)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !757)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !758)
!758 = !{!759, !763, !767, !771, !775, !779, !785, !791, !795, !800, !804, !808, !812, !840, !844, !850, !851, !852, !856, !861, !865, !872}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !757, file: !44, line: 368, baseType: !760, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DISubroutineType(types: !762)
!762 = !{!137, !689, !644}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !757, file: !44, line: 369, baseType: !764, size: 64, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DISubroutineType(types: !766)
!766 = !{!137, !319, !689}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !757, file: !44, line: 372, baseType: !768, size: 64, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{!137, !702, !644}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !757, file: !44, line: 375, baseType: !772, size: 64, offset: 192)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{!137, !689}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !757, file: !44, line: 381, baseType: !776, size: 64, offset: 256)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{!137, !319, !702, !190, !7}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !757, file: !44, line: 383, baseType: !780, size: 64, offset: 320)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DISubroutineType(types: !782)
!782 = !{null, !783}
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !757, file: !44, line: 385, baseType: !786, size: 64, offset: 384)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{!137, !319, !702, !496, !7, !7, !789, !790}
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !757, file: !44, line: 388, baseType: !792, size: 64, offset: 448)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{!137, !319, !702, !496, !7, !7, !689, !131}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !757, file: !44, line: 393, baseType: !796, size: 64, offset: 512)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{!799, !702, !799}
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !165, line: 125, baseType: !388)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !757, file: !44, line: 394, baseType: !801, size: 64, offset: 576)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{null, !689, !7, !7}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !757, file: !44, line: 395, baseType: !805, size: 64, offset: 640)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DISubroutineType(types: !807)
!807 = !{!137, !689, !712}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !757, file: !44, line: 396, baseType: !809, size: 64, offset: 704)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{null, !689}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !757, file: !44, line: 397, baseType: !813, size: 64, offset: 768)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{!272, !816, !838}
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !818)
!818 = !{!819, !820, !821, !825, !826, !827, !830, !831}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !817, file: !44, line: 321, baseType: !319, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !817, file: !44, line: 326, baseType: !496, size: 64, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !817, file: !44, line: 327, baseType: !822, size: 64, offset: 128)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{null, !816, !276, !276}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !817, file: !44, line: 328, baseType: !131, size: 64, offset: 192)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !817, file: !44, line: 329, baseType: !137, size: 32, offset: 256)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !817, file: !44, line: 330, baseType: !828, size: 16, offset: 288)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !383, line: 19, baseType: !829)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !385, line: 24, baseType: !283)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !817, file: !44, line: 331, baseType: !828, size: 16, offset: 304)
!831 = !DIDerivedType(tag: DW_TAG_member, scope: !817, file: !44, line: 332, baseType: !832, size: 64, offset: 320)
!832 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !817, file: !44, line: 332, size: 64, elements: !833)
!833 = !{!834, !835}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !832, file: !44, line: 333, baseType: !7, size: 32)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !832, file: !44, line: 334, baseType: !836, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !757, file: !44, line: 402, baseType: !841, size: 64, offset: 832)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{!137, !702, !689, !689, !5}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !757, file: !44, line: 404, baseType: !845, size: 64, offset: 896)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{!164, !689, !848}
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !849, line: 305, baseType: !7)
!849 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!850 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !757, file: !44, line: 405, baseType: !809, size: 64, offset: 960)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !757, file: !44, line: 406, baseType: !772, size: 64, offset: 1024)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !757, file: !44, line: 407, baseType: !853, size: 64, offset: 1088)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!137, !689, !291, !291}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !757, file: !44, line: 409, baseType: !857, size: 64, offset: 1152)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{null, !689, !860, !860}
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !757, file: !44, line: 410, baseType: !862, size: 64, offset: 1216)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DISubroutineType(types: !864)
!864 = !{!137, !702, !689}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !757, file: !44, line: 413, baseType: !866, size: 64, offset: 1280)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{!137, !869, !319, !871}
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !757, file: !44, line: 415, baseType: !873, size: 64, offset: 1344)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{null, !319}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !703, file: !44, line: 466, baseType: !291, size: 64, offset: 896)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !703, file: !44, line: 467, baseType: !878, size: 32, offset: 960)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !879, line: 8, baseType: !382)
!879 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!880 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !703, file: !44, line: 468, baseType: !200, offset: 992)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !703, file: !44, line: 469, baseType: !187, size: 128, offset: 1024)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !703, file: !44, line: 470, baseType: !131, size: 64, offset: 1152)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !698, file: !691, line: 87, baseType: !291, size: 64, offset: 192)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !698, file: !691, line: 94, baseType: !291, size: 64, offset: 256)
!885 = !DIDerivedType(tag: DW_TAG_member, scope: !695, file: !691, line: 96, baseType: !886, size: 64)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !695, file: !691, line: 96, size: 64, elements: !887)
!887 = !{!888}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !886, file: !691, line: 101, baseType: !889, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !165, line: 143, baseType: !388)
!890 = !DIDerivedType(tag: DW_TAG_member, scope: !695, file: !691, line: 103, baseType: !891, size: 320)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !695, file: !691, line: 103, size: 320, elements: !892)
!892 = !{!893, !903, !906, !907}
!893 = !DIDerivedType(tag: DW_TAG_member, scope: !891, file: !691, line: 104, baseType: !894, size: 128)
!894 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !891, file: !691, line: 104, size: 128, elements: !895)
!895 = !{!896, !897}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !894, file: !691, line: 105, baseType: !187, size: 128)
!897 = !DIDerivedType(tag: DW_TAG_member, scope: !894, file: !691, line: 106, baseType: !898, size: 128)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !894, file: !691, line: 106, size: 128, elements: !899)
!899 = !{!900, !901, !902}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !898, file: !691, line: 107, baseType: !689, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !898, file: !691, line: 109, baseType: !137, size: 32, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !898, file: !691, line: 110, baseType: !137, size: 32, offset: 96)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !891, file: !691, line: 117, baseType: !904, size: 64, offset: 128)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !691, line: 117, flags: DIFlagFwdDecl)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !891, file: !691, line: 119, baseType: !131, size: 64, offset: 192)
!907 = !DIDerivedType(tag: DW_TAG_member, scope: !891, file: !691, line: 120, baseType: !908, size: 64, offset: 256)
!908 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !891, file: !691, line: 120, size: 64, elements: !909)
!909 = !{!910, !911, !912}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !908, file: !691, line: 121, baseType: !131, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !908, file: !691, line: 122, baseType: !291, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, scope: !908, file: !691, line: 123, baseType: !913, size: 32)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !908, file: !691, line: 123, size: 32, elements: !914)
!914 = !{!915, !916, !917}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !913, file: !691, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !913, file: !691, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !913, file: !691, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!918 = !DIDerivedType(tag: DW_TAG_member, scope: !695, file: !691, line: 130, baseType: !919, size: 192)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !695, file: !691, line: 130, size: 192, elements: !920)
!920 = !{!921, !922, !923, !924, !925}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !919, file: !691, line: 131, baseType: !291, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !919, file: !691, line: 134, baseType: !394, size: 8, offset: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !919, file: !691, line: 135, baseType: !394, size: 8, offset: 72)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !919, file: !691, line: 136, baseType: !716, size: 32, offset: 96)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !919, file: !691, line: 137, baseType: !7, size: 32, offset: 128)
!926 = !DIDerivedType(tag: DW_TAG_member, scope: !695, file: !691, line: 139, baseType: !927, size: 256)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !695, file: !691, line: 139, size: 256, elements: !928)
!928 = !{!929, !930, !931}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !927, file: !691, line: 140, baseType: !291, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !927, file: !691, line: 141, baseType: !716, size: 32, offset: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !927, file: !691, line: 143, baseType: !187, size: 128, offset: 128)
!932 = !DIDerivedType(tag: DW_TAG_member, scope: !695, file: !691, line: 145, baseType: !933, size: 256)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !695, file: !691, line: 145, size: 256, elements: !934)
!934 = !{!935, !936, !938, !939, !2302}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !933, file: !691, line: 146, baseType: !291, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !933, file: !691, line: 147, baseType: !937, size: 64, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !681, line: 509, baseType: !689)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !933, file: !691, line: 148, baseType: !291, size: 64, offset: 128)
!939 = !DIDerivedType(tag: DW_TAG_member, scope: !933, file: !691, line: 149, baseType: !940, size: 64, offset: 192)
!940 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !933, file: !691, line: 149, size: 64, elements: !941)
!941 = !{!942, !2301}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !940, file: !691, line: 150, baseType: !943, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !691, line: 388, size: 7296, elements: !945)
!945 = !{!946, !2297}
!946 = !DIDerivedType(tag: DW_TAG_member, scope: !944, file: !691, line: 389, baseType: !947, size: 7296)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !944, file: !691, line: 389, size: 7296, elements: !948)
!948 = !{!949, !1067, !1068, !1069, !1073, !1074, !1075, !1076, !1077, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1118, !1126, !1129, !1175, !1176, !2281, !2282, !2285, !2286, !2287, !2290, !2291, !2292, !2295, !2296}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !947, file: !691, line: 390, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !691, line: 305, size: 1472, elements: !952)
!952 = !{!953, !954, !955, !956, !957, !958, !959, !960, !967, !968, !973, !974, !977, !1061, !1062, !1063, !1064, !1065}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !951, file: !691, line: 308, baseType: !291, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !951, file: !691, line: 309, baseType: !291, size: 64, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !951, file: !691, line: 313, baseType: !950, size: 64, offset: 128)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !951, file: !691, line: 313, baseType: !950, size: 64, offset: 192)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !951, file: !691, line: 315, baseType: !729, size: 192, align: 64, offset: 256)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !951, file: !691, line: 323, baseType: !291, size: 64, offset: 448)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !951, file: !691, line: 327, baseType: !943, size: 64, offset: 512)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !951, file: !691, line: 333, baseType: !961, size: 64, offset: 576)
!961 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !681, line: 284, baseType: !962)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !681, line: 284, size: 64, elements: !963)
!963 = !{!964}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !962, file: !681, line: 284, baseType: !965, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !966, line: 19, baseType: !291)
!966 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!967 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !951, file: !691, line: 334, baseType: !291, size: 64, offset: 640)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !951, file: !691, line: 343, baseType: !969, size: 256, offset: 704)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !951, file: !691, line: 340, size: 256, elements: !970)
!970 = !{!971, !972}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !969, file: !691, line: 341, baseType: !729, size: 192, align: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !969, file: !691, line: 342, baseType: !291, size: 64, offset: 192)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !951, file: !691, line: 351, baseType: !187, size: 128, offset: 960)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !951, file: !691, line: 353, baseType: !975, size: 64, offset: 1088)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !691, line: 353, flags: DIFlagFwdDecl)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !951, file: !691, line: 356, baseType: !978, size: 64, offset: 1152)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !980)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !981)
!981 = !{!982, !986, !987, !991, !995, !1035, !1039, !1043, !1047, !1048, !1049, !1053, !1057}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !980, file: !14, line: 558, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DISubroutineType(types: !985)
!985 = !{null, !950}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !980, file: !14, line: 559, baseType: !983, size: 64, offset: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !980, file: !14, line: 560, baseType: !988, size: 64, offset: 128)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DISubroutineType(types: !990)
!990 = !{!137, !950, !291}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !980, file: !14, line: 561, baseType: !992, size: 64, offset: 192)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DISubroutineType(types: !994)
!994 = !{!137, !950}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !980, file: !14, line: 562, baseType: !996, size: 64, offset: 256)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DISubroutineType(types: !998)
!998 = !{!999, !1000}
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !691, line: 682, baseType: !7)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1002)
!1002 = !{!1003, !1004, !1005, !1006, !1007, !1008, !1015, !1022, !1028, !1029, !1030, !1032, !1034}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1001, file: !14, line: 509, baseType: !950, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1001, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1001, file: !14, line: 511, baseType: !712, size: 32, offset: 96)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1001, file: !14, line: 512, baseType: !291, size: 64, offset: 128)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1001, file: !14, line: 513, baseType: !291, size: 64, offset: 192)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1001, file: !14, line: 514, baseType: !1009, size: 64, offset: 256)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !681, line: 385, baseType: !1011)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !681, line: 385, size: 64, elements: !1012)
!1012 = !{!1013}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1011, file: !681, line: 385, baseType: !1014, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !966, line: 15, baseType: !291)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1001, file: !14, line: 516, baseType: !1016, size: 64, offset: 320)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !681, line: 359, baseType: !1018)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !681, line: 359, size: 64, elements: !1019)
!1019 = !{!1020}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1018, file: !681, line: 359, baseType: !1021, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !966, line: 16, baseType: !291)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1001, file: !14, line: 519, baseType: !1023, size: 64, offset: 384)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !966, line: 21, baseType: !1024)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !966, line: 21, size: 64, elements: !1025)
!1025 = !{!1026}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1024, file: !966, line: 21, baseType: !1027, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !966, line: 14, baseType: !291)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1001, file: !14, line: 521, baseType: !689, size: 64, offset: 448)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1001, file: !14, line: 522, baseType: !689, size: 64, offset: 512)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1001, file: !14, line: 528, baseType: !1031, size: 64, offset: 576)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1001, file: !14, line: 532, baseType: !1033, size: 64, offset: 640)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1001, file: !14, line: 536, baseType: !937, size: 64, offset: 704)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !980, file: !14, line: 563, baseType: !1036, size: 64, offset: 320)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!999, !1000, !13}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !980, file: !14, line: 565, baseType: !1040, size: 64, offset: 384)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{null, !1000, !291, !291}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !980, file: !14, line: 567, baseType: !1044, size: 64, offset: 448)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!291, !950}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !980, file: !14, line: 571, baseType: !996, size: 64, offset: 512)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !980, file: !14, line: 574, baseType: !996, size: 64, offset: 576)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !980, file: !14, line: 579, baseType: !1050, size: 64, offset: 640)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!137, !950, !291, !131, !137, !137}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !980, file: !14, line: 585, baseType: !1054, size: 64, offset: 704)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!183, !950}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !980, file: !14, line: 615, baseType: !1058, size: 64, offset: 768)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!689, !950, !291}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !951, file: !691, line: 359, baseType: !291, size: 64, offset: 1216)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !951, file: !691, line: 361, baseType: !319, size: 64, offset: 1280)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !951, file: !691, line: 362, baseType: !131, size: 64, offset: 1344)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !951, file: !691, line: 365, baseType: !740, size: 64, offset: 1408)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !951, file: !691, line: 373, baseType: !1066, offset: 1472)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !691, line: 296, elements: !214)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !947, file: !691, line: 391, baseType: !725, size: 64, offset: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !947, file: !691, line: 392, baseType: !388, size: 64, offset: 128)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !947, file: !691, line: 394, baseType: !1070, size: 64, offset: 192)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!291, !319, !291, !291, !291, !291}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !947, file: !691, line: 398, baseType: !291, size: 64, offset: 256)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !947, file: !691, line: 399, baseType: !291, size: 64, offset: 320)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !947, file: !691, line: 405, baseType: !291, size: 64, offset: 384)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !947, file: !691, line: 406, baseType: !291, size: 64, offset: 448)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !947, file: !691, line: 407, baseType: !1078, size: 64, offset: 512)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !681, line: 286, baseType: !1080)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !681, line: 286, size: 64, elements: !1081)
!1081 = !{!1082}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1080, file: !681, line: 286, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !966, line: 18, baseType: !291)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !947, file: !691, line: 416, baseType: !716, size: 32, offset: 576)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !947, file: !691, line: 428, baseType: !716, size: 32, offset: 608)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !947, file: !691, line: 437, baseType: !716, size: 32, offset: 640)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !947, file: !691, line: 447, baseType: !716, size: 32, offset: 672)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !947, file: !691, line: 450, baseType: !740, size: 64, offset: 704)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !947, file: !691, line: 452, baseType: !137, size: 32, offset: 768)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !947, file: !691, line: 454, baseType: !200, offset: 800)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !947, file: !691, line: 457, baseType: !736, size: 256, offset: 832)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !947, file: !691, line: 459, baseType: !187, size: 128, offset: 1088)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !947, file: !691, line: 466, baseType: !291, size: 64, offset: 1216)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !947, file: !691, line: 467, baseType: !291, size: 64, offset: 1280)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !947, file: !691, line: 469, baseType: !291, size: 64, offset: 1344)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !947, file: !691, line: 470, baseType: !291, size: 64, offset: 1408)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !947, file: !691, line: 471, baseType: !742, size: 64, offset: 1472)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !947, file: !691, line: 472, baseType: !291, size: 64, offset: 1536)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !947, file: !691, line: 473, baseType: !291, size: 64, offset: 1600)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !947, file: !691, line: 474, baseType: !291, size: 64, offset: 1664)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !947, file: !691, line: 475, baseType: !291, size: 64, offset: 1728)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !947, file: !691, line: 477, baseType: !200, offset: 1792)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !947, file: !691, line: 478, baseType: !291, size: 64, offset: 1792)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !947, file: !691, line: 478, baseType: !291, size: 64, offset: 1856)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !947, file: !691, line: 478, baseType: !291, size: 64, offset: 1920)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !947, file: !691, line: 478, baseType: !291, size: 64, offset: 1984)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !947, file: !691, line: 479, baseType: !291, size: 64, offset: 2048)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !947, file: !691, line: 479, baseType: !291, size: 64, offset: 2112)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !947, file: !691, line: 479, baseType: !291, size: 64, offset: 2176)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !947, file: !691, line: 480, baseType: !291, size: 64, offset: 2240)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !947, file: !691, line: 480, baseType: !291, size: 64, offset: 2304)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !947, file: !691, line: 480, baseType: !291, size: 64, offset: 2368)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !947, file: !691, line: 480, baseType: !291, size: 64, offset: 2432)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !947, file: !691, line: 482, baseType: !1115, size: 2816, offset: 2496)
!1115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 2816, elements: !1116)
!1116 = !{!1117}
!1117 = !DISubrange(count: 44)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !947, file: !691, line: 488, baseType: !1119, size: 256, offset: 5312)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1120, line: 60, size: 256, elements: !1121)
!1120 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1121 = !{!1122}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1119, file: !1120, line: 61, baseType: !1123, size: 256)
!1123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !740, size: 256, elements: !1124)
!1124 = !{!1125}
!1125 = !DISubrange(count: 4)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !947, file: !691, line: 490, baseType: !1127, size: 64, offset: 5568)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !691, line: 490, flags: DIFlagFwdDecl)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !947, file: !691, line: 493, baseType: !1130, size: 896, offset: 5632)
!1130 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1131, line: 53, baseType: !1132)
!1131 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1131, line: 13, size: 896, elements: !1133)
!1133 = !{!1134, !1135, !1136, !1137, !1140, !1141, !1148, !1149, !1169, !1170, !1171}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1132, file: !1131, line: 18, baseType: !388, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1132, file: !1131, line: 28, baseType: !742, size: 64, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1132, file: !1131, line: 31, baseType: !736, size: 256, offset: 128)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1132, file: !1131, line: 32, baseType: !1138, size: 64, offset: 384)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1131, line: 32, flags: DIFlagFwdDecl)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1132, file: !1131, line: 37, baseType: !283, size: 16, offset: 448)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1132, file: !1131, line: 40, baseType: !1142, size: 192, offset: 512)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1143, line: 53, size: 192, elements: !1144)
!1143 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1144 = !{!1145, !1146, !1147}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1142, file: !1143, line: 54, baseType: !740, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1142, file: !1143, line: 55, baseType: !200, offset: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1142, file: !1143, line: 59, baseType: !187, size: 128, offset: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1132, file: !1131, line: 41, baseType: !131, size: 64, offset: 704)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1132, file: !1131, line: 42, baseType: !1150, size: 64, offset: 768)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1152)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1153, line: 13, size: 896, elements: !1154)
!1153 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1154 = !{!1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1152, file: !1153, line: 14, baseType: !131, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1152, file: !1153, line: 15, baseType: !291, size: 64, offset: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1152, file: !1153, line: 17, baseType: !291, size: 64, offset: 128)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1152, file: !1153, line: 17, baseType: !291, size: 64, offset: 192)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1152, file: !1153, line: 19, baseType: !276, size: 64, offset: 256)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1152, file: !1153, line: 21, baseType: !276, size: 64, offset: 320)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1152, file: !1153, line: 22, baseType: !276, size: 64, offset: 384)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1152, file: !1153, line: 23, baseType: !276, size: 64, offset: 448)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1152, file: !1153, line: 24, baseType: !276, size: 64, offset: 512)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1152, file: !1153, line: 25, baseType: !276, size: 64, offset: 576)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1152, file: !1153, line: 26, baseType: !276, size: 64, offset: 640)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1152, file: !1153, line: 27, baseType: !276, size: 64, offset: 704)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1152, file: !1153, line: 28, baseType: !276, size: 64, offset: 768)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1152, file: !1153, line: 29, baseType: !276, size: 64, offset: 832)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1132, file: !1131, line: 44, baseType: !716, size: 32, offset: 832)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1132, file: !1131, line: 50, baseType: !828, size: 16, offset: 864)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1132, file: !1131, line: 51, baseType: !1172, size: 16, offset: 880)
!1172 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !383, line: 18, baseType: !1173)
!1173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !385, line: 23, baseType: !1174)
!1174 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !947, file: !691, line: 495, baseType: !291, size: 64, offset: 6528)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !947, file: !691, line: 497, baseType: !1177, size: 64, offset: 6592)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !691, line: 381, size: 384, elements: !1179)
!1179 = !{!1180, !1181, !2280}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1178, file: !691, line: 382, baseType: !716, size: 32)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1178, file: !691, line: 383, baseType: !1182, size: 128, offset: 64)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !691, line: 376, size: 128, elements: !1183)
!1183 = !{!1184, !2278}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1182, file: !691, line: 377, baseType: !1185, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1187, line: 640, size: 48640, elements: !1188)
!1187 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1188 = !{!1189, !1195, !1197, !1198, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1215, !1233, !1244, !1329, !1330, !1331, !1342, !1343, !1345, !1346, !1347, !1348, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1427, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1465, !1467, !1468, !1469, !1481, !1482, !1483, !1484, !1485, !1486, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1510, !1515, !1699, !1700, !1701, !1702, !1706, !1709, !1712, !1715, !1718, !1721, !1822, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1868, !1869, !1870, !1871, !1872, !1877, !1878, !1879, !1882, !1883, !1886, !1889, !1892, !1895, !1938, !1941, !1942, !2021, !2022, !2025, !2026, !2029, !2030, !2031, !2035, !2036, !2037, !2050, !2051, !2052, !2062, !2067, !2070, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1186, file: !1187, line: 646, baseType: !1190, size: 128)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1191, line: 56, size: 128, elements: !1192)
!1191 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1192 = !{!1193, !1194}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1190, file: !1191, line: 57, baseType: !291, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1190, file: !1191, line: 58, baseType: !382, size: 32, offset: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1186, file: !1187, line: 649, baseType: !1196, size: 64, offset: 128)
!1196 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !276)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1186, file: !1187, line: 657, baseType: !131, size: 64, offset: 192)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1186, file: !1187, line: 658, baseType: !1199, size: 32, offset: 256)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1200, line: 113, baseType: !1201)
!1200 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1200, line: 111, size: 32, elements: !1202)
!1202 = !{!1203}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1201, file: !1200, line: 112, baseType: !716, size: 32)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1186, file: !1187, line: 660, baseType: !7, size: 32, offset: 288)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1186, file: !1187, line: 661, baseType: !7, size: 32, offset: 320)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1186, file: !1187, line: 684, baseType: !137, size: 32, offset: 352)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1186, file: !1187, line: 686, baseType: !137, size: 32, offset: 384)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1186, file: !1187, line: 687, baseType: !137, size: 32, offset: 416)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1186, file: !1187, line: 688, baseType: !137, size: 32, offset: 448)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1186, file: !1187, line: 689, baseType: !7, size: 32, offset: 480)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1186, file: !1187, line: 691, baseType: !1212, size: 64, offset: 512)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1214)
!1214 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1187, line: 691, flags: DIFlagFwdDecl)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1186, file: !1187, line: 692, baseType: !1216, size: 832, offset: 576)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1187, line: 451, size: 832, elements: !1217)
!1217 = !{!1218, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1216, file: !1187, line: 453, baseType: !1219, size: 128)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1187, line: 325, size: 128, elements: !1220)
!1220 = !{!1221, !1222}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1219, file: !1187, line: 326, baseType: !291, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1219, file: !1187, line: 327, baseType: !382, size: 32, offset: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1216, file: !1187, line: 454, baseType: !729, size: 192, align: 64, offset: 128)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1216, file: !1187, line: 455, baseType: !187, size: 128, offset: 320)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1216, file: !1187, line: 456, baseType: !7, size: 32, offset: 448)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1216, file: !1187, line: 458, baseType: !388, size: 64, offset: 512)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1216, file: !1187, line: 459, baseType: !388, size: 64, offset: 576)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1216, file: !1187, line: 460, baseType: !388, size: 64, offset: 640)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1216, file: !1187, line: 461, baseType: !388, size: 64, offset: 704)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1216, file: !1187, line: 463, baseType: !388, size: 64, offset: 768)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1216, file: !1187, line: 465, baseType: !1232, offset: 832)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1187, line: 415, elements: !214)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1186, file: !1187, line: 693, baseType: !1234, size: 384, offset: 1408)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1187, line: 489, size: 384, elements: !1235)
!1235 = !{!1236, !1237, !1238, !1239, !1240, !1241, !1242}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1234, file: !1187, line: 490, baseType: !187, size: 128)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1234, file: !1187, line: 491, baseType: !291, size: 64, offset: 128)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1234, file: !1187, line: 492, baseType: !291, size: 64, offset: 192)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1234, file: !1187, line: 493, baseType: !7, size: 32, offset: 256)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1234, file: !1187, line: 494, baseType: !283, size: 16, offset: 288)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1234, file: !1187, line: 495, baseType: !283, size: 16, offset: 304)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1234, file: !1187, line: 497, baseType: !1243, size: 64, offset: 320)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1186, file: !1187, line: 697, baseType: !1245, size: 1792, offset: 1792)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1187, line: 507, size: 1792, elements: !1246)
!1246 = !{!1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1326, !1327}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1245, file: !1187, line: 508, baseType: !729, size: 192, align: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1245, file: !1187, line: 515, baseType: !388, size: 64, offset: 192)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1245, file: !1187, line: 516, baseType: !388, size: 64, offset: 256)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1245, file: !1187, line: 517, baseType: !388, size: 64, offset: 320)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1245, file: !1187, line: 518, baseType: !388, size: 64, offset: 384)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1245, file: !1187, line: 519, baseType: !388, size: 64, offset: 448)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1245, file: !1187, line: 526, baseType: !746, size: 64, offset: 512)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1245, file: !1187, line: 527, baseType: !388, size: 64, offset: 576)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1245, file: !1187, line: 528, baseType: !7, size: 32, offset: 640)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1245, file: !1187, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1245, file: !1187, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1245, file: !1187, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1245, file: !1187, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1245, file: !1187, line: 563, baseType: !1261, size: 512, offset: 704)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1262)
!1262 = !{!1263, !1271, !1272, !1277, !1320, !1323, !1324, !1325}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1261, file: !20, line: 119, baseType: !1264, size: 256)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1265, line: 9, size: 256, elements: !1266)
!1265 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1266 = !{!1267, !1268}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1264, file: !1265, line: 10, baseType: !729, size: 192, align: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1264, file: !1265, line: 11, baseType: !1269, size: 64, offset: 192)
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1270, line: 29, baseType: !746)
!1270 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1261, file: !20, line: 120, baseType: !1269, size: 64, offset: 256)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1261, file: !20, line: 121, baseType: !1273, size: 64, offset: 320)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!19, !1276}
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1261, file: !20, line: 122, baseType: !1278, size: 64, offset: 384)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1280)
!1280 = !{!1281, !1301, !1302, !1305, !1310, !1311, !1315, !1319}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1279, file: !20, line: 160, baseType: !1282, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1284)
!1284 = !{!1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1283, file: !20, line: 215, baseType: !749)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1283, file: !20, line: 216, baseType: !7, size: 32)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1283, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1283, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1283, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1283, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1283, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1283, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1283, file: !20, line: 233, baseType: !1269, size: 64, offset: 128)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1283, file: !20, line: 234, baseType: !1276, size: 64, offset: 192)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1283, file: !20, line: 235, baseType: !1269, size: 64, offset: 256)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1283, file: !20, line: 236, baseType: !1276, size: 64, offset: 320)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1283, file: !20, line: 237, baseType: !1298, size: 4096, offset: 512)
!1298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1279, size: 4096, elements: !1299)
!1299 = !{!1300}
!1300 = !DISubrange(count: 8)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1279, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1279, file: !20, line: 162, baseType: !1303, size: 32, offset: 96)
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !165, line: 27, baseType: !1304)
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !274, line: 96, baseType: !137)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1279, file: !20, line: 163, baseType: !1306, size: 32, offset: 128)
!1306 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !355, line: 276, baseType: !1307)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !355, line: 276, size: 32, elements: !1308)
!1308 = !{!1309}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1307, file: !355, line: 276, baseType: !359, size: 32)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1279, file: !20, line: 164, baseType: !1276, size: 64, offset: 192)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1279, file: !20, line: 165, baseType: !1312, size: 128, offset: 256)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1265, line: 14, size: 128, elements: !1313)
!1313 = !{!1314}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1312, file: !1265, line: 15, baseType: !721, size: 128)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1279, file: !20, line: 166, baseType: !1316, size: 64, offset: 384)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!1269}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1279, file: !20, line: 167, baseType: !1269, size: 64, offset: 448)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1261, file: !20, line: 123, baseType: !1321, size: 8, offset: 448)
!1321 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !383, line: 17, baseType: !1322)
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !385, line: 21, baseType: !394)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1261, file: !20, line: 124, baseType: !1321, size: 8, offset: 456)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1261, file: !20, line: 125, baseType: !1321, size: 8, offset: 464)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1261, file: !20, line: 126, baseType: !1321, size: 8, offset: 472)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1245, file: !1187, line: 572, baseType: !1261, size: 512, offset: 1216)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1245, file: !1187, line: 580, baseType: !1328, size: 64, offset: 1728)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1186, file: !1187, line: 721, baseType: !7, size: 32, offset: 3584)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1186, file: !1187, line: 722, baseType: !137, size: 32, offset: 3616)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1186, file: !1187, line: 723, baseType: !1332, size: 64, offset: 3648)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1334)
!1334 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1335, line: 17, baseType: !1336)
!1335 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1335, line: 17, size: 64, elements: !1337)
!1337 = !{!1338}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1336, file: !1335, line: 17, baseType: !1339, size: 64)
!1339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 64, elements: !1340)
!1340 = !{!1341}
!1341 = !DISubrange(count: 1)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1186, file: !1187, line: 724, baseType: !1334, size: 64, offset: 3712)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1186, file: !1187, line: 749, baseType: !1344, offset: 3776)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1187, line: 290, elements: !214)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1186, file: !1187, line: 751, baseType: !187, size: 128, offset: 3776)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1186, file: !1187, line: 757, baseType: !943, size: 64, offset: 3904)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1186, file: !1187, line: 758, baseType: !943, size: 64, offset: 3968)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1186, file: !1187, line: 761, baseType: !1349, size: 320, offset: 4032)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1120, line: 34, size: 320, elements: !1350)
!1350 = !{!1351, !1352}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1349, file: !1120, line: 35, baseType: !388, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1349, file: !1120, line: 36, baseType: !1353, size: 256, offset: 64)
!1353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !950, size: 256, elements: !1124)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1186, file: !1187, line: 766, baseType: !137, size: 32, offset: 4352)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1186, file: !1187, line: 767, baseType: !137, size: 32, offset: 4384)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1186, file: !1187, line: 768, baseType: !137, size: 32, offset: 4416)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1186, file: !1187, line: 770, baseType: !137, size: 32, offset: 4448)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1186, file: !1187, line: 772, baseType: !291, size: 64, offset: 4480)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1186, file: !1187, line: 775, baseType: !7, size: 32, offset: 4544)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1186, file: !1187, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1186, file: !1187, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1186, file: !1187, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1186, file: !1187, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1186, file: !1187, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1186, file: !1187, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1186, file: !1187, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1186, file: !1187, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1186, file: !1187, line: 831, baseType: !291, size: 64, offset: 4672)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1186, file: !1187, line: 833, baseType: !1370, size: 384, offset: 4736)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1371)
!1371 = !{!1372, !1377}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1370, file: !25, line: 26, baseType: !1373, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!276, !1376}
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, scope: !1370, file: !25, line: 27, baseType: !1378, size: 320, offset: 64)
!1378 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1370, file: !25, line: 27, size: 320, elements: !1379)
!1379 = !{!1380, !1390, !1417}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1378, file: !25, line: 36, baseType: !1381, size: 320)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1378, file: !25, line: 29, size: 320, elements: !1382)
!1382 = !{!1383, !1385, !1386, !1387, !1388, !1389}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1381, file: !25, line: 30, baseType: !1384, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1381, file: !25, line: 31, baseType: !382, size: 32, offset: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1381, file: !25, line: 32, baseType: !382, size: 32, offset: 96)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1381, file: !25, line: 33, baseType: !382, size: 32, offset: 128)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1381, file: !25, line: 34, baseType: !388, size: 64, offset: 192)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1381, file: !25, line: 35, baseType: !1384, size: 64, offset: 256)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1378, file: !25, line: 46, baseType: !1391, size: 192)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1378, file: !25, line: 38, size: 192, elements: !1392)
!1392 = !{!1393, !1394, !1395, !1416}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1391, file: !25, line: 39, baseType: !1303, size: 32)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1391, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1395 = !DIDerivedType(tag: DW_TAG_member, scope: !1391, file: !25, line: 41, baseType: !1396, size: 64, offset: 64)
!1396 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1391, file: !25, line: 41, size: 64, elements: !1397)
!1397 = !{!1398, !1406}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1396, file: !25, line: 42, baseType: !1399, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1401, line: 7, size: 128, elements: !1402)
!1401 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1402 = !{!1403, !1405}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1400, file: !1401, line: 8, baseType: !1404, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !274, line: 93, baseType: !498)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1400, file: !1401, line: 9, baseType: !498, size: 64, offset: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1396, file: !25, line: 43, baseType: !1407, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1409, line: 7, size: 64, elements: !1410)
!1409 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1410 = !{!1411, !1415}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1408, file: !1409, line: 8, baseType: !1412, size: 32)
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1409, line: 5, baseType: !1413)
!1413 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !383, line: 20, baseType: !1414)
!1414 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !385, line: 26, baseType: !137)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1408, file: !1409, line: 9, baseType: !1413, size: 32, offset: 32)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1391, file: !25, line: 45, baseType: !388, size: 64, offset: 128)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1378, file: !25, line: 54, baseType: !1418, size: 256)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1378, file: !25, line: 48, size: 256, elements: !1419)
!1419 = !{!1420, !1423, !1424, !1425, !1426}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1418, file: !25, line: 49, baseType: !1421, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1418, file: !25, line: 50, baseType: !137, size: 32, offset: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1418, file: !25, line: 51, baseType: !137, size: 32, offset: 96)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1418, file: !25, line: 52, baseType: !291, size: 64, offset: 128)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1418, file: !25, line: 53, baseType: !291, size: 64, offset: 192)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1186, file: !1187, line: 835, baseType: !1428, size: 32, offset: 5120)
!1428 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !165, line: 22, baseType: !1429)
!1429 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !274, line: 28, baseType: !137)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1186, file: !1187, line: 836, baseType: !1428, size: 32, offset: 5152)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1186, file: !1187, line: 840, baseType: !291, size: 64, offset: 5184)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1186, file: !1187, line: 849, baseType: !1185, size: 64, offset: 5248)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1186, file: !1187, line: 852, baseType: !1185, size: 64, offset: 5312)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1186, file: !1187, line: 857, baseType: !187, size: 128, offset: 5376)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1186, file: !1187, line: 858, baseType: !187, size: 128, offset: 5504)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1186, file: !1187, line: 859, baseType: !1185, size: 64, offset: 5632)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1186, file: !1187, line: 867, baseType: !187, size: 128, offset: 5696)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1186, file: !1187, line: 868, baseType: !187, size: 128, offset: 5824)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1186, file: !1187, line: 871, baseType: !1440, size: 64, offset: 5952)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1442)
!1442 = !{!1443, !1444, !1445, !1446, !1448, !1449, !1456, !1457}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1441, file: !53, line: 61, baseType: !1199, size: 32)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1441, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1441, file: !53, line: 63, baseType: !200, offset: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1441, file: !53, line: 65, baseType: !1447, size: 256, offset: 64)
!1447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !603, size: 256, elements: !1124)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1441, file: !53, line: 66, baseType: !603, size: 64, offset: 320)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1441, file: !53, line: 68, baseType: !1450, size: 128, offset: 384)
!1450 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1451, line: 40, baseType: !1452)
!1451 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1451, line: 36, size: 128, elements: !1453)
!1453 = !{!1454, !1455}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1452, file: !1451, line: 37, baseType: !200)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1452, file: !1451, line: 38, baseType: !187, size: 128)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1441, file: !53, line: 69, baseType: !332, size: 128, align: 64, offset: 512)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1441, file: !53, line: 70, baseType: !1458, size: 128, offset: 640)
!1458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1459, size: 128, elements: !1340)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1460)
!1460 = !{!1461, !1462}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1459, file: !53, line: 55, baseType: !137, size: 32)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1459, file: !53, line: 56, baseType: !1463, size: 64, offset: 64)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1186, file: !1187, line: 872, baseType: !1466, size: 512, offset: 6016)
!1466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 512, elements: !1124)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1186, file: !1187, line: 873, baseType: !187, size: 128, offset: 6528)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1186, file: !1187, line: 874, baseType: !187, size: 128, offset: 6656)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1186, file: !1187, line: 876, baseType: !1470, size: 64, offset: 6784)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1472, line: 26, size: 192, elements: !1473)
!1472 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1473 = !{!1474, !1475}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1471, file: !1472, line: 27, baseType: !7, size: 32)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1471, file: !1472, line: 28, baseType: !1476, size: 128, offset: 64)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1477, line: 43, size: 128, elements: !1478)
!1477 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1478 = !{!1479, !1480}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1476, file: !1477, line: 44, baseType: !749)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1476, file: !1477, line: 45, baseType: !187, size: 128)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1186, file: !1187, line: 879, baseType: !673, size: 64, offset: 6848)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1186, file: !1187, line: 882, baseType: !673, size: 64, offset: 6912)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1186, file: !1187, line: 884, baseType: !388, size: 64, offset: 6976)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1186, file: !1187, line: 885, baseType: !388, size: 64, offset: 7040)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1186, file: !1187, line: 890, baseType: !388, size: 64, offset: 7104)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1186, file: !1187, line: 891, baseType: !1487, size: 128, offset: 7168)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1187, line: 242, size: 128, elements: !1488)
!1488 = !{!1489, !1490, !1491}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1487, file: !1187, line: 244, baseType: !388, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1487, file: !1187, line: 245, baseType: !388, size: 64, offset: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1487, file: !1187, line: 246, baseType: !749, offset: 128)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1186, file: !1187, line: 900, baseType: !291, size: 64, offset: 7296)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1186, file: !1187, line: 901, baseType: !291, size: 64, offset: 7360)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1186, file: !1187, line: 904, baseType: !388, size: 64, offset: 7424)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1186, file: !1187, line: 907, baseType: !388, size: 64, offset: 7488)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1186, file: !1187, line: 910, baseType: !291, size: 64, offset: 7552)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1186, file: !1187, line: 911, baseType: !291, size: 64, offset: 7616)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1186, file: !1187, line: 914, baseType: !1499, size: 640, offset: 7680)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1500, line: 123, size: 640, elements: !1501)
!1500 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1501 = !{!1502, !1508, !1509}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1499, file: !1500, line: 124, baseType: !1503, size: 576)
!1503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1504, size: 576, elements: !242)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1500, line: 108, size: 192, elements: !1505)
!1505 = !{!1506, !1507}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1504, file: !1500, line: 109, baseType: !388, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1504, file: !1500, line: 110, baseType: !1312, size: 128, offset: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1499, file: !1500, line: 125, baseType: !7, size: 32, offset: 576)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1499, file: !1500, line: 126, baseType: !7, size: 32, offset: 608)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1186, file: !1187, line: 917, baseType: !1511, size: 192, offset: 8320)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1500, line: 134, size: 192, elements: !1512)
!1512 = !{!1513, !1514}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1511, file: !1500, line: 135, baseType: !332, size: 128, align: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1511, file: !1500, line: 136, baseType: !7, size: 32, offset: 128)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1186, file: !1187, line: 923, baseType: !1516, size: 64, offset: 8512)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1518)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1519, line: 111, size: 1280, elements: !1520)
!1519 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1520 = !{!1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1540, !1541, !1542, !1543, !1544, !1545, !1652, !1653, !1654, !1655, !1681, !1684, !1694}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1518, file: !1519, line: 112, baseType: !716, size: 32)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1518, file: !1519, line: 120, baseType: !402, size: 32, offset: 32)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1518, file: !1519, line: 121, baseType: !410, size: 32, offset: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1518, file: !1519, line: 122, baseType: !402, size: 32, offset: 96)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1518, file: !1519, line: 123, baseType: !410, size: 32, offset: 128)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1518, file: !1519, line: 124, baseType: !402, size: 32, offset: 160)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1518, file: !1519, line: 125, baseType: !410, size: 32, offset: 192)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1518, file: !1519, line: 126, baseType: !402, size: 32, offset: 224)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1518, file: !1519, line: 127, baseType: !410, size: 32, offset: 256)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1518, file: !1519, line: 128, baseType: !7, size: 32, offset: 288)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1518, file: !1519, line: 129, baseType: !1532, size: 64, offset: 320)
!1532 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1533, line: 26, baseType: !1534)
!1533 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1533, line: 24, size: 64, elements: !1535)
!1535 = !{!1536}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1534, file: !1533, line: 25, baseType: !1537, size: 64)
!1537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 64, elements: !1538)
!1538 = !{!1539}
!1539 = !DISubrange(count: 2)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1518, file: !1519, line: 130, baseType: !1532, size: 64, offset: 384)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1518, file: !1519, line: 131, baseType: !1532, size: 64, offset: 448)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1518, file: !1519, line: 132, baseType: !1532, size: 64, offset: 512)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1518, file: !1519, line: 133, baseType: !1532, size: 64, offset: 576)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1518, file: !1519, line: 135, baseType: !394, size: 8, offset: 640)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1518, file: !1519, line: 137, baseType: !1546, size: 64, offset: 704)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1548, line: 189, size: 1664, elements: !1549)
!1548 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1549 = !{!1550, !1551, !1554, !1559, !1560, !1563, !1564, !1569, !1570, !1571, !1572, !1574, !1575, !1576, !1577, !1578, !1616, !1637}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1547, file: !1548, line: 190, baseType: !1199, size: 32)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1547, file: !1548, line: 191, baseType: !1552, size: 32, offset: 32)
!1552 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1548, line: 28, baseType: !1553)
!1553 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !165, line: 98, baseType: !1413)
!1554 = !DIDerivedType(tag: DW_TAG_member, scope: !1547, file: !1548, line: 192, baseType: !1555, size: 192, offset: 64)
!1555 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1547, file: !1548, line: 192, size: 192, elements: !1556)
!1556 = !{!1557, !1558}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1555, file: !1548, line: 193, baseType: !187, size: 128)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1555, file: !1548, line: 194, baseType: !729, size: 192, align: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1547, file: !1548, line: 199, baseType: !736, size: 256, offset: 256)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1547, file: !1548, line: 200, baseType: !1561, size: 64, offset: 512)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1548, line: 200, flags: DIFlagFwdDecl)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1547, file: !1548, line: 201, baseType: !131, size: 64, offset: 576)
!1564 = !DIDerivedType(tag: DW_TAG_member, scope: !1547, file: !1548, line: 202, baseType: !1565, size: 64, offset: 640)
!1565 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1547, file: !1548, line: 202, size: 64, elements: !1566)
!1566 = !{!1567, !1568}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1565, file: !1548, line: 203, baseType: !504, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1565, file: !1548, line: 204, baseType: !504, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1547, file: !1548, line: 206, baseType: !504, size: 64, offset: 704)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1547, file: !1548, line: 207, baseType: !402, size: 32, offset: 768)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1547, file: !1548, line: 208, baseType: !410, size: 32, offset: 800)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1547, file: !1548, line: 209, baseType: !1573, size: 32, offset: 832)
!1573 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1548, line: 31, baseType: !524)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1547, file: !1548, line: 210, baseType: !283, size: 16, offset: 864)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1547, file: !1548, line: 211, baseType: !283, size: 16, offset: 880)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1547, file: !1548, line: 215, baseType: !1174, size: 16, offset: 896)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1547, file: !1548, line: 222, baseType: !291, size: 64, offset: 960)
!1578 = !DIDerivedType(tag: DW_TAG_member, scope: !1547, file: !1548, line: 239, baseType: !1579, size: 320, offset: 1024)
!1579 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1547, file: !1548, line: 239, size: 320, elements: !1580)
!1580 = !{!1581, !1608}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1579, file: !1548, line: 240, baseType: !1582, size: 320)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1548, line: 108, size: 320, elements: !1583)
!1583 = !{!1584, !1585, !1597, !1600, !1607}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1582, file: !1548, line: 110, baseType: !291, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, scope: !1582, file: !1548, line: 111, baseType: !1586, size: 64, offset: 64)
!1586 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1582, file: !1548, line: 111, size: 64, elements: !1587)
!1587 = !{!1588, !1596}
!1588 = !DIDerivedType(tag: DW_TAG_member, scope: !1586, file: !1548, line: 112, baseType: !1589, size: 64)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1586, file: !1548, line: 112, size: 64, elements: !1590)
!1590 = !{!1591, !1592}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1589, file: !1548, line: 114, baseType: !828, size: 16)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1589, file: !1548, line: 115, baseType: !1593, size: 48, offset: 16)
!1593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 48, elements: !1594)
!1594 = !{!1595}
!1595 = !DISubrange(count: 6)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1586, file: !1548, line: 121, baseType: !291, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1582, file: !1548, line: 123, baseType: !1598, size: 64, offset: 128)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1548, line: 96, flags: DIFlagFwdDecl)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1582, file: !1548, line: 124, baseType: !1601, size: 64, offset: 192)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1548, line: 102, size: 192, elements: !1603)
!1603 = !{!1604, !1605, !1606}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1602, file: !1548, line: 103, baseType: !332, size: 128, align: 64)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1602, file: !1548, line: 104, baseType: !1199, size: 32, offset: 128)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1602, file: !1548, line: 105, baseType: !164, size: 8, offset: 160)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1582, file: !1548, line: 125, baseType: !183, size: 64, offset: 256)
!1608 = !DIDerivedType(tag: DW_TAG_member, scope: !1579, file: !1548, line: 241, baseType: !1609, size: 320)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1579, file: !1548, line: 241, size: 320, elements: !1610)
!1610 = !{!1611, !1612, !1613, !1614, !1615}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1609, file: !1548, line: 242, baseType: !291, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1609, file: !1548, line: 243, baseType: !291, size: 64, offset: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1609, file: !1548, line: 244, baseType: !1598, size: 64, offset: 128)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1609, file: !1548, line: 245, baseType: !1601, size: 64, offset: 192)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1609, file: !1548, line: 246, baseType: !241, size: 64, offset: 256)
!1616 = !DIDerivedType(tag: DW_TAG_member, scope: !1547, file: !1548, line: 254, baseType: !1617, size: 256, offset: 1344)
!1617 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1547, file: !1548, line: 254, size: 256, elements: !1618)
!1618 = !{!1619, !1625}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1617, file: !1548, line: 255, baseType: !1620, size: 256)
!1620 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1548, line: 128, size: 256, elements: !1621)
!1621 = !{!1622, !1623}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1620, file: !1548, line: 129, baseType: !131, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1620, file: !1548, line: 130, baseType: !1624, size: 256)
!1624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 256, elements: !1124)
!1625 = !DIDerivedType(tag: DW_TAG_member, scope: !1617, file: !1548, line: 256, baseType: !1626, size: 256)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1617, file: !1548, line: 256, size: 256, elements: !1627)
!1627 = !{!1628, !1629}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1626, file: !1548, line: 258, baseType: !187, size: 128)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1626, file: !1548, line: 259, baseType: !1630, size: 128, offset: 128)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1631, line: 22, size: 128, elements: !1632)
!1631 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1632 = !{!1633, !1636}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1630, file: !1631, line: 23, baseType: !1634, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1631, line: 23, flags: DIFlagFwdDecl)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1630, file: !1631, line: 24, baseType: !291, size: 64, offset: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1547, file: !1548, line: 274, baseType: !1638, size: 64, offset: 1600)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1548, line: 170, size: 192, elements: !1640)
!1640 = !{!1641, !1650, !1651}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1639, file: !1548, line: 171, baseType: !1642, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1548, line: 165, baseType: !1643)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!137, !1546, !1646, !1648, !1546}
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1599)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1620)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1639, file: !1548, line: 172, baseType: !1546, size: 64, offset: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1639, file: !1548, line: 173, baseType: !1598, size: 64, offset: 128)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1518, file: !1519, line: 138, baseType: !1546, size: 64, offset: 768)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1518, file: !1519, line: 139, baseType: !1546, size: 64, offset: 832)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1518, file: !1519, line: 140, baseType: !1546, size: 64, offset: 896)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1518, file: !1519, line: 145, baseType: !1656, size: 64, offset: 960)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1658, line: 13, size: 896, elements: !1659)
!1658 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1659 = !{!1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1657, file: !1658, line: 14, baseType: !1199, size: 32)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1657, file: !1658, line: 15, baseType: !716, size: 32, offset: 32)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1657, file: !1658, line: 16, baseType: !716, size: 32, offset: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1657, file: !1658, line: 21, baseType: !740, size: 64, offset: 128)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1657, file: !1658, line: 27, baseType: !291, size: 64, offset: 192)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1657, file: !1658, line: 28, baseType: !291, size: 64, offset: 256)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1657, file: !1658, line: 29, baseType: !740, size: 64, offset: 320)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1657, file: !1658, line: 32, baseType: !607, size: 128, offset: 384)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1657, file: !1658, line: 33, baseType: !402, size: 32, offset: 512)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1657, file: !1658, line: 37, baseType: !740, size: 64, offset: 576)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1657, file: !1658, line: 44, baseType: !1671, size: 256, offset: 640)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1672, line: 15, size: 256, elements: !1673)
!1672 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1673 = !{!1674, !1675, !1676, !1677, !1678, !1679, !1680}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1671, file: !1672, line: 16, baseType: !749)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1671, file: !1672, line: 18, baseType: !137, size: 32)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1671, file: !1672, line: 19, baseType: !137, size: 32, offset: 32)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1671, file: !1672, line: 20, baseType: !137, size: 32, offset: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1671, file: !1672, line: 21, baseType: !137, size: 32, offset: 96)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1671, file: !1672, line: 22, baseType: !291, size: 64, offset: 128)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1671, file: !1672, line: 23, baseType: !291, size: 64, offset: 192)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1518, file: !1519, line: 146, baseType: !1682, size: 64, offset: 1024)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !691, line: 516, flags: DIFlagFwdDecl)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1518, file: !1519, line: 147, baseType: !1685, size: 64, offset: 1088)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1519, line: 25, size: 64, elements: !1687)
!1687 = !{!1688, !1689, !1690}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1686, file: !1519, line: 26, baseType: !716, size: 32)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1686, file: !1519, line: 27, baseType: !137, size: 32, offset: 32)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1686, file: !1519, line: 28, baseType: !1691, offset: 64)
!1691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, elements: !1692)
!1692 = !{!1693}
!1693 = !DISubrange(count: 0)
!1694 = !DIDerivedType(tag: DW_TAG_member, scope: !1518, file: !1519, line: 149, baseType: !1695, size: 128, offset: 1152)
!1695 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1518, file: !1519, line: 149, size: 128, elements: !1696)
!1696 = !{!1697, !1698}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1695, file: !1519, line: 150, baseType: !137, size: 32)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1695, file: !1519, line: 151, baseType: !332, size: 128, align: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1186, file: !1187, line: 926, baseType: !1516, size: 64, offset: 8576)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1186, file: !1187, line: 929, baseType: !1516, size: 64, offset: 8640)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1186, file: !1187, line: 933, baseType: !1546, size: 64, offset: 8704)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1186, file: !1187, line: 943, baseType: !1703, size: 128, offset: 8768)
!1703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 128, elements: !1704)
!1704 = !{!1705}
!1705 = !DISubrange(count: 16)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1186, file: !1187, line: 945, baseType: !1707, size: 64, offset: 8896)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1187, line: 49, flags: DIFlagFwdDecl)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1186, file: !1187, line: 956, baseType: !1710, size: 64, offset: 8960)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1187, line: 45, flags: DIFlagFwdDecl)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1186, file: !1187, line: 959, baseType: !1713, size: 64, offset: 9024)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1187, line: 959, flags: DIFlagFwdDecl)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1186, file: !1187, line: 962, baseType: !1716, size: 64, offset: 9088)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1187, line: 66, flags: DIFlagFwdDecl)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1186, file: !1187, line: 966, baseType: !1719, size: 64, offset: 9152)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1187, line: 50, flags: DIFlagFwdDecl)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1186, file: !1187, line: 969, baseType: !1722, size: 64, offset: 9216)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1724, line: 82, size: 7296, elements: !1725)
!1724 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1725 = !{!1726, !1727, !1728, !1729, !1730, !1731, !1732, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1761, !1770, !1771, !1773, !1774, !1775, !1778, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1808, !1809, !1816, !1817, !1818, !1819, !1820, !1821}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1723, file: !1724, line: 83, baseType: !1199, size: 32)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1723, file: !1724, line: 84, baseType: !716, size: 32, offset: 32)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1723, file: !1724, line: 85, baseType: !137, size: 32, offset: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1723, file: !1724, line: 86, baseType: !187, size: 128, offset: 128)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1723, file: !1724, line: 88, baseType: !1450, size: 128, offset: 256)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1723, file: !1724, line: 91, baseType: !1185, size: 64, offset: 384)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1723, file: !1724, line: 94, baseType: !1733, size: 192, offset: 448)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1734, line: 30, size: 192, elements: !1735)
!1734 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1735 = !{!1736, !1737}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1733, file: !1734, line: 31, baseType: !187, size: 128)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1733, file: !1734, line: 32, baseType: !1738, size: 64, offset: 128)
!1738 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1739, line: 25, baseType: !1740)
!1739 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1739, line: 23, size: 64, elements: !1741)
!1741 = !{!1742}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1740, file: !1739, line: 24, baseType: !1339, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1723, file: !1724, line: 97, baseType: !603, size: 64, offset: 640)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1723, file: !1724, line: 100, baseType: !137, size: 32, offset: 704)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1723, file: !1724, line: 106, baseType: !137, size: 32, offset: 736)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1723, file: !1724, line: 107, baseType: !1185, size: 64, offset: 768)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1723, file: !1724, line: 110, baseType: !137, size: 32, offset: 832)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1723, file: !1724, line: 111, baseType: !7, size: 32, offset: 864)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1723, file: !1724, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1723, file: !1724, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1723, file: !1724, line: 128, baseType: !137, size: 32, offset: 928)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1723, file: !1724, line: 129, baseType: !187, size: 128, offset: 960)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1723, file: !1724, line: 132, baseType: !1261, size: 512, offset: 1088)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1723, file: !1724, line: 133, baseType: !1269, size: 64, offset: 1600)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1723, file: !1724, line: 140, baseType: !1756, size: 256, offset: 1664)
!1756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1757, size: 256, elements: !1538)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1724, line: 38, size: 128, elements: !1758)
!1758 = !{!1759, !1760}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1757, file: !1724, line: 39, baseType: !388, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1757, file: !1724, line: 40, baseType: !388, size: 64, offset: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1723, file: !1724, line: 146, baseType: !1762, size: 192, offset: 1920)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1724, line: 66, size: 192, elements: !1763)
!1763 = !{!1764}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1762, file: !1724, line: 67, baseType: !1765, size: 192)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1724, line: 47, size: 192, elements: !1766)
!1766 = !{!1767, !1768, !1769}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1765, file: !1724, line: 48, baseType: !742, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1765, file: !1724, line: 49, baseType: !742, size: 64, offset: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1765, file: !1724, line: 50, baseType: !742, size: 64, offset: 128)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1723, file: !1724, line: 150, baseType: !1499, size: 640, offset: 2112)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1723, file: !1724, line: 153, baseType: !1772, size: 256, offset: 2752)
!1772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1440, size: 256, elements: !1124)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1723, file: !1724, line: 159, baseType: !1440, size: 64, offset: 3008)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1723, file: !1724, line: 162, baseType: !137, size: 32, offset: 3072)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1723, file: !1724, line: 164, baseType: !1776, size: 64, offset: 3136)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1724, line: 164, flags: DIFlagFwdDecl)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1723, file: !1724, line: 175, baseType: !1779, size: 32, offset: 3200)
!1779 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !355, line: 805, baseType: !1780)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !355, line: 798, size: 32, elements: !1781)
!1781 = !{!1782, !1783}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1780, file: !355, line: 803, baseType: !354, size: 32)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1780, file: !355, line: 804, baseType: !200, offset: 32)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1723, file: !1724, line: 176, baseType: !388, size: 64, offset: 3264)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1723, file: !1724, line: 176, baseType: !388, size: 64, offset: 3328)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1723, file: !1724, line: 176, baseType: !388, size: 64, offset: 3392)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1723, file: !1724, line: 176, baseType: !388, size: 64, offset: 3456)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1723, file: !1724, line: 177, baseType: !388, size: 64, offset: 3520)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1723, file: !1724, line: 178, baseType: !388, size: 64, offset: 3584)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1723, file: !1724, line: 179, baseType: !1487, size: 128, offset: 3648)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1723, file: !1724, line: 180, baseType: !291, size: 64, offset: 3776)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1723, file: !1724, line: 180, baseType: !291, size: 64, offset: 3840)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1723, file: !1724, line: 180, baseType: !291, size: 64, offset: 3904)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1723, file: !1724, line: 180, baseType: !291, size: 64, offset: 3968)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1723, file: !1724, line: 181, baseType: !291, size: 64, offset: 4032)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1723, file: !1724, line: 181, baseType: !291, size: 64, offset: 4096)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1723, file: !1724, line: 181, baseType: !291, size: 64, offset: 4160)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1723, file: !1724, line: 181, baseType: !291, size: 64, offset: 4224)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1723, file: !1724, line: 182, baseType: !291, size: 64, offset: 4288)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1723, file: !1724, line: 182, baseType: !291, size: 64, offset: 4352)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1723, file: !1724, line: 182, baseType: !291, size: 64, offset: 4416)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1723, file: !1724, line: 182, baseType: !291, size: 64, offset: 4480)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1723, file: !1724, line: 183, baseType: !291, size: 64, offset: 4544)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1723, file: !1724, line: 183, baseType: !291, size: 64, offset: 4608)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1723, file: !1724, line: 184, baseType: !1806, offset: 4672)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1807, line: 12, elements: !214)
!1807 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1723, file: !1724, line: 192, baseType: !390, size: 64, offset: 4672)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1723, file: !1724, line: 203, baseType: !1810, size: 2048, offset: 4736)
!1810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1811, size: 2048, elements: !1704)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1812, line: 43, size: 128, elements: !1813)
!1812 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1813 = !{!1814, !1815}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1811, file: !1812, line: 44, baseType: !290, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1811, file: !1812, line: 45, baseType: !290, size: 64, offset: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1723, file: !1724, line: 220, baseType: !164, size: 8, offset: 6784)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1723, file: !1724, line: 221, baseType: !1174, size: 16, offset: 6800)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1723, file: !1724, line: 222, baseType: !1174, size: 16, offset: 6816)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1723, file: !1724, line: 224, baseType: !943, size: 64, offset: 6848)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1723, file: !1724, line: 227, baseType: !1142, size: 192, offset: 6912)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1723, file: !1724, line: 233, baseType: !1142, size: 192, offset: 7104)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1186, file: !1187, line: 970, baseType: !1823, size: 64, offset: 9280)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1724, line: 20, size: 16576, elements: !1825)
!1825 = !{!1826, !1827, !1828, !1829}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1824, file: !1724, line: 21, baseType: !200)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1824, file: !1724, line: 22, baseType: !1199, size: 32)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1824, file: !1724, line: 23, baseType: !1450, size: 128, offset: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1824, file: !1724, line: 24, baseType: !1830, size: 16384, offset: 192)
!1830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1831, size: 16384, elements: !246)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1734, line: 49, size: 256, elements: !1832)
!1832 = !{!1833}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1831, file: !1734, line: 50, baseType: !1834, size: 256)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1734, line: 35, size: 256, elements: !1835)
!1835 = !{!1836, !1843, !1844, !1850}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1834, file: !1734, line: 37, baseType: !1837, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1838, line: 19, baseType: !1839)
!1838 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1838, line: 18, baseType: !1841)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{null, !137}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1834, file: !1734, line: 38, baseType: !291, size: 64, offset: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1834, file: !1734, line: 44, baseType: !1845, size: 64, offset: 128)
!1845 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1838, line: 22, baseType: !1846)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1838, line: 21, baseType: !1848)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{null}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1834, file: !1734, line: 46, baseType: !1738, size: 64, offset: 192)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1186, file: !1187, line: 971, baseType: !1738, size: 64, offset: 9344)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1186, file: !1187, line: 972, baseType: !1738, size: 64, offset: 9408)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1186, file: !1187, line: 974, baseType: !1738, size: 64, offset: 9472)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1186, file: !1187, line: 975, baseType: !1733, size: 192, offset: 9536)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1186, file: !1187, line: 976, baseType: !291, size: 64, offset: 9728)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1186, file: !1187, line: 977, baseType: !288, size: 64, offset: 9792)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1186, file: !1187, line: 978, baseType: !7, size: 32, offset: 9856)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1186, file: !1187, line: 980, baseType: !335, size: 64, offset: 9920)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1186, file: !1187, line: 989, baseType: !1860, size: 128, offset: 9984)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1861, line: 35, size: 128, elements: !1862)
!1861 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1862 = !{!1863, !1864, !1865}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1860, file: !1861, line: 36, baseType: !137, size: 32)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1860, file: !1861, line: 37, baseType: !716, size: 32, offset: 32)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1860, file: !1861, line: 38, baseType: !1866, size: 64, offset: 64)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1861, line: 23, flags: DIFlagFwdDecl)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1186, file: !1187, line: 992, baseType: !388, size: 64, offset: 10112)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1186, file: !1187, line: 993, baseType: !388, size: 64, offset: 10176)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1186, file: !1187, line: 996, baseType: !200, offset: 10240)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1186, file: !1187, line: 999, baseType: !749, offset: 10240)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1186, file: !1187, line: 1001, baseType: !1873, size: 64, offset: 10240)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1187, line: 636, size: 64, elements: !1874)
!1874 = !{!1875}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1873, file: !1187, line: 637, baseType: !1876, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1186, file: !1187, line: 1005, baseType: !721, size: 128, offset: 10304)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1186, file: !1187, line: 1007, baseType: !1185, size: 64, offset: 10432)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1186, file: !1187, line: 1009, baseType: !1880, size: 64, offset: 10496)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1187, line: 1009, flags: DIFlagFwdDecl)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1186, file: !1187, line: 1043, baseType: !131, size: 64, offset: 10560)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1186, file: !1187, line: 1046, baseType: !1884, size: 64, offset: 10624)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1187, line: 41, flags: DIFlagFwdDecl)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1186, file: !1187, line: 1050, baseType: !1887, size: 64, offset: 10688)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1187, line: 42, flags: DIFlagFwdDecl)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1186, file: !1187, line: 1054, baseType: !1890, size: 64, offset: 10752)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1187, line: 55, flags: DIFlagFwdDecl)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1186, file: !1187, line: 1056, baseType: !1893, size: 64, offset: 10816)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1187, line: 40, flags: DIFlagFwdDecl)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1186, file: !1187, line: 1058, baseType: !1896, size: 64, offset: 10880)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1898, line: 99, size: 704, elements: !1899)
!1898 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1899 = !{!1900, !1901, !1902, !1903, !1904, !1905, !1906, !1925, !1926}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1897, file: !1898, line: 100, baseType: !740, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1897, file: !1898, line: 101, baseType: !716, size: 32, offset: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1897, file: !1898, line: 102, baseType: !716, size: 32, offset: 96)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1897, file: !1898, line: 105, baseType: !200, offset: 128)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1897, file: !1898, line: 107, baseType: !283, size: 16, offset: 128)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1897, file: !1898, line: 109, baseType: !707, size: 128, offset: 192)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1897, file: !1898, line: 110, baseType: !1907, size: 64, offset: 320)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1898, line: 73, size: 448, elements: !1909)
!1909 = !{!1910, !1913, !1914, !1919, !1924}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1908, file: !1898, line: 74, baseType: !1911, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1898, line: 74, flags: DIFlagFwdDecl)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1908, file: !1898, line: 75, baseType: !1896, size: 64, offset: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, scope: !1908, file: !1898, line: 83, baseType: !1915, size: 128, offset: 128)
!1915 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1908, file: !1898, line: 83, size: 128, elements: !1916)
!1916 = !{!1917, !1918}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1915, file: !1898, line: 84, baseType: !187, size: 128)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1915, file: !1898, line: 85, baseType: !904, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, scope: !1908, file: !1898, line: 87, baseType: !1920, size: 128, offset: 256)
!1920 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1908, file: !1898, line: 87, size: 128, elements: !1921)
!1921 = !{!1922, !1923}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1920, file: !1898, line: 88, baseType: !607, size: 128)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1920, file: !1898, line: 89, baseType: !332, size: 128, align: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1908, file: !1898, line: 92, baseType: !7, size: 32, offset: 384)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1897, file: !1898, line: 111, baseType: !603, size: 64, offset: 384)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1897, file: !1898, line: 113, baseType: !1927, size: 256, offset: 448)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1928, line: 102, size: 256, elements: !1929)
!1928 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1929 = !{!1930, !1931, !1932}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1927, file: !1928, line: 103, baseType: !740, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1927, file: !1928, line: 104, baseType: !187, size: 128, offset: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1927, file: !1928, line: 105, baseType: !1933, size: 64, offset: 192)
!1933 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1928, line: 21, baseType: !1934)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{null, !1937}
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1186, file: !1187, line: 1061, baseType: !1939, size: 64, offset: 10944)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1187, line: 43, flags: DIFlagFwdDecl)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1186, file: !1187, line: 1064, baseType: !291, size: 64, offset: 11008)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1186, file: !1187, line: 1065, baseType: !1943, size: 64, offset: 11072)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1734, line: 14, baseType: !1945)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1734, line: 12, size: 384, elements: !1946)
!1946 = !{!1947}
!1947 = !DIDerivedType(tag: DW_TAG_member, scope: !1945, file: !1734, line: 13, baseType: !1948, size: 384)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1945, file: !1734, line: 13, size: 384, elements: !1949)
!1949 = !{!1950, !1951, !1952, !1953}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1948, file: !1734, line: 13, baseType: !137, size: 32)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1948, file: !1734, line: 13, baseType: !137, size: 32, offset: 32)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1948, file: !1734, line: 13, baseType: !137, size: 32, offset: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1948, file: !1734, line: 13, baseType: !1954, size: 256, offset: 128)
!1954 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1955, line: 32, size: 256, elements: !1956)
!1955 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1956 = !{!1957, !1962, !1975, !1981, !1990, !2010, !2015}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1954, file: !1955, line: 37, baseType: !1958, size: 64)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1954, file: !1955, line: 34, size: 64, elements: !1959)
!1959 = !{!1960, !1961}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1958, file: !1955, line: 35, baseType: !1429, size: 32)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1958, file: !1955, line: 36, baseType: !408, size: 32, offset: 32)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1954, file: !1955, line: 45, baseType: !1963, size: 192)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1954, file: !1955, line: 40, size: 192, elements: !1964)
!1964 = !{!1965, !1967, !1968, !1974}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1963, file: !1955, line: 41, baseType: !1966, size: 32)
!1966 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !274, line: 95, baseType: !137)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1963, file: !1955, line: 42, baseType: !137, size: 32, offset: 32)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1963, file: !1955, line: 43, baseType: !1969, size: 64, offset: 64)
!1969 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1955, line: 11, baseType: !1970)
!1970 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1955, line: 8, size: 64, elements: !1971)
!1971 = !{!1972, !1973}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1970, file: !1955, line: 9, baseType: !137, size: 32)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1970, file: !1955, line: 10, baseType: !131, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1963, file: !1955, line: 44, baseType: !137, size: 32, offset: 128)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1954, file: !1955, line: 52, baseType: !1976, size: 128)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1954, file: !1955, line: 48, size: 128, elements: !1977)
!1977 = !{!1978, !1979, !1980}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1976, file: !1955, line: 49, baseType: !1429, size: 32)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1976, file: !1955, line: 50, baseType: !408, size: 32, offset: 32)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1976, file: !1955, line: 51, baseType: !1969, size: 64, offset: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1954, file: !1955, line: 61, baseType: !1982, size: 256)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1954, file: !1955, line: 55, size: 256, elements: !1983)
!1983 = !{!1984, !1985, !1986, !1987, !1989}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1982, file: !1955, line: 56, baseType: !1429, size: 32)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1982, file: !1955, line: 57, baseType: !408, size: 32, offset: 32)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1982, file: !1955, line: 58, baseType: !137, size: 32, offset: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1982, file: !1955, line: 59, baseType: !1988, size: 64, offset: 128)
!1988 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !274, line: 94, baseType: !275)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1982, file: !1955, line: 60, baseType: !1988, size: 64, offset: 192)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1954, file: !1955, line: 95, baseType: !1991, size: 256)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1954, file: !1955, line: 64, size: 256, elements: !1992)
!1992 = !{!1993, !1994}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1991, file: !1955, line: 65, baseType: !131, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, scope: !1991, file: !1955, line: 77, baseType: !1995, size: 192, offset: 64)
!1995 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1991, file: !1955, line: 77, size: 192, elements: !1996)
!1996 = !{!1997, !1998, !2005}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1995, file: !1955, line: 82, baseType: !1174, size: 16)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1995, file: !1955, line: 88, baseType: !1999, size: 192)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1995, file: !1955, line: 84, size: 192, elements: !2000)
!2000 = !{!2001, !2003, !2004}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1999, file: !1955, line: 85, baseType: !2002, size: 64)
!2002 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 64, elements: !1299)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1999, file: !1955, line: 86, baseType: !131, size: 64, offset: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1999, file: !1955, line: 87, baseType: !131, size: 64, offset: 128)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1995, file: !1955, line: 93, baseType: !2006, size: 96)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1995, file: !1955, line: 90, size: 96, elements: !2007)
!2007 = !{!2008, !2009}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2006, file: !1955, line: 91, baseType: !2002, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2006, file: !1955, line: 92, baseType: !384, size: 32, offset: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1954, file: !1955, line: 101, baseType: !2011, size: 128)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1954, file: !1955, line: 98, size: 128, elements: !2012)
!2012 = !{!2013, !2014}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2011, file: !1955, line: 99, baseType: !276, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2011, file: !1955, line: 100, baseType: !137, size: 32, offset: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1954, file: !1955, line: 108, baseType: !2016, size: 128)
!2016 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1954, file: !1955, line: 104, size: 128, elements: !2017)
!2017 = !{!2018, !2019, !2020}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2016, file: !1955, line: 105, baseType: !131, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2016, file: !1955, line: 106, baseType: !137, size: 32, offset: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2016, file: !1955, line: 107, baseType: !7, size: 32, offset: 96)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1186, file: !1187, line: 1067, baseType: !1806, offset: 11136)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1186, file: !1187, line: 1099, baseType: !2023, size: 64, offset: 11136)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1187, line: 56, flags: DIFlagFwdDecl)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1186, file: !1187, line: 1103, baseType: !187, size: 128, offset: 11200)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1186, file: !1187, line: 1104, baseType: !2027, size: 64, offset: 11328)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1187, line: 46, flags: DIFlagFwdDecl)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1186, file: !1187, line: 1105, baseType: !1142, size: 192, offset: 11392)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1186, file: !1187, line: 1106, baseType: !7, size: 32, offset: 11584)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1186, file: !1187, line: 1109, baseType: !2032, size: 128, offset: 11648)
!2032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2033, size: 128, elements: !1538)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1187, line: 51, flags: DIFlagFwdDecl)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1186, file: !1187, line: 1110, baseType: !1142, size: 192, offset: 11776)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1186, file: !1187, line: 1111, baseType: !187, size: 128, offset: 11968)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1186, file: !1187, line: 1173, baseType: !2038, size: 64, offset: 12096)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2040, line: 62, size: 256, align: 256, elements: !2041)
!2040 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2041 = !{!2042, !2043, !2044, !2049}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2039, file: !2040, line: 75, baseType: !384, size: 32)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2039, file: !2040, line: 90, baseType: !384, size: 32, offset: 32)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2039, file: !2040, line: 124, baseType: !2045, size: 64, offset: 64)
!2045 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2039, file: !2040, line: 109, size: 64, elements: !2046)
!2046 = !{!2047, !2048}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2045, file: !2040, line: 110, baseType: !389, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2045, file: !2040, line: 112, baseType: !389, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2039, file: !2040, line: 144, baseType: !384, size: 32, offset: 128)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1186, file: !1187, line: 1174, baseType: !382, size: 32, offset: 12160)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1186, file: !1187, line: 1179, baseType: !291, size: 64, offset: 12224)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1186, file: !1187, line: 1182, baseType: !2053, size: 128, offset: 12288)
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1120, line: 76, size: 128, elements: !2054)
!2054 = !{!2055, !2060, !2061}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2053, file: !1120, line: 85, baseType: !2056, size: 64)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2057, line: 7, size: 64, elements: !2058)
!2057 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2058 = !{!2059}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2056, file: !2057, line: 12, baseType: !1336, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2053, file: !1120, line: 88, baseType: !164, size: 8, offset: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2053, file: !1120, line: 95, baseType: !164, size: 8, offset: 72)
!2062 = !DIDerivedType(tag: DW_TAG_member, scope: !1186, file: !1187, line: 1184, baseType: !2063, size: 128, offset: 12416)
!2063 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1186, file: !1187, line: 1184, size: 128, elements: !2064)
!2064 = !{!2065, !2066}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2063, file: !1187, line: 1185, baseType: !1199, size: 32)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2063, file: !1187, line: 1186, baseType: !332, size: 128, align: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1186, file: !1187, line: 1190, baseType: !2068, size: 64, offset: 12544)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1187, line: 53, flags: DIFlagFwdDecl)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1186, file: !1187, line: 1192, baseType: !2071, size: 128, offset: 12608)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1120, line: 64, size: 128, elements: !2072)
!2072 = !{!2073, !2074, !2075}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2071, file: !1120, line: 65, baseType: !689, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2071, file: !1120, line: 67, baseType: !384, size: 32, offset: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2071, file: !1120, line: 68, baseType: !384, size: 32, offset: 96)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1186, file: !1187, line: 1206, baseType: !137, size: 32, offset: 12736)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1186, file: !1187, line: 1207, baseType: !137, size: 32, offset: 12768)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1186, file: !1187, line: 1209, baseType: !291, size: 64, offset: 12800)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1186, file: !1187, line: 1219, baseType: !388, size: 64, offset: 12864)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1186, file: !1187, line: 1220, baseType: !388, size: 64, offset: 12928)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1186, file: !1187, line: 1317, baseType: !137, size: 32, offset: 12992)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1186, file: !1187, line: 1319, baseType: !1185, size: 64, offset: 13056)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1186, file: !1187, line: 1322, baseType: !2084, size: 64, offset: 13120)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2086, line: 56, size: 512, elements: !2087)
!2086 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2087 = !{!2088, !2089, !2090, !2091, !2092, !2093, !2094, !2096}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2085, file: !2086, line: 57, baseType: !2084, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2085, file: !2086, line: 58, baseType: !131, size: 64, offset: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2085, file: !2086, line: 59, baseType: !291, size: 64, offset: 128)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2085, file: !2086, line: 60, baseType: !291, size: 64, offset: 192)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2085, file: !2086, line: 61, baseType: !789, size: 64, offset: 256)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2085, file: !2086, line: 62, baseType: !7, size: 32, offset: 320)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2085, file: !2086, line: 63, baseType: !2095, size: 64, offset: 384)
!2095 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !165, line: 153, baseType: !388)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2085, file: !2086, line: 64, baseType: !173, size: 64, offset: 448)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1186, file: !1187, line: 1326, baseType: !1199, size: 32, offset: 13184)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1186, file: !1187, line: 1342, baseType: !131, size: 64, offset: 13248)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1186, file: !1187, line: 1343, baseType: !389, size: 64, offset: 13312)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1186, file: !1187, line: 1344, baseType: !388, size: 64, offset: 13376)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1186, file: !1187, line: 1345, baseType: !389, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1186, file: !1187, line: 1346, baseType: !389, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1186, file: !1187, line: 1347, baseType: !389, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1186, file: !1187, line: 1348, baseType: !332, size: 128, align: 64, offset: 13504)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1186, file: !1187, line: 1358, baseType: !2106, size: 34816, offset: 13824)
!2106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2107, line: 485, size: 34816, elements: !2108)
!2107 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2108 = !{!2109, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2138, !2139, !2140, !2141, !2142, !2143, !2146, !2147, !2148}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2106, file: !2107, line: 487, baseType: !2110, size: 192)
!2110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2111, size: 192, elements: !242)
!2111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2112, line: 16, size: 64, elements: !2113)
!2112 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2113 = !{!2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2111, file: !2112, line: 17, baseType: !828, size: 16)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2111, file: !2112, line: 18, baseType: !828, size: 16, offset: 16)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2111, file: !2112, line: 19, baseType: !828, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2111, file: !2112, line: 19, baseType: !828, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2111, file: !2112, line: 19, baseType: !828, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2111, file: !2112, line: 19, baseType: !828, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2111, file: !2112, line: 19, baseType: !828, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2111, file: !2112, line: 20, baseType: !828, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2111, file: !2112, line: 20, baseType: !828, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2111, file: !2112, line: 20, baseType: !828, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2111, file: !2112, line: 20, baseType: !828, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2111, file: !2112, line: 20, baseType: !828, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2111, file: !2112, line: 20, baseType: !828, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2106, file: !2107, line: 491, baseType: !291, size: 64, offset: 192)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2106, file: !2107, line: 495, baseType: !283, size: 16, offset: 256)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2106, file: !2107, line: 496, baseType: !283, size: 16, offset: 272)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2106, file: !2107, line: 497, baseType: !283, size: 16, offset: 288)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2106, file: !2107, line: 498, baseType: !283, size: 16, offset: 304)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2106, file: !2107, line: 502, baseType: !291, size: 64, offset: 320)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2106, file: !2107, line: 503, baseType: !291, size: 64, offset: 384)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2106, file: !2107, line: 514, baseType: !2135, size: 256, offset: 448)
!2135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2136, size: 256, elements: !1124)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2107, line: 483, flags: DIFlagFwdDecl)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2106, file: !2107, line: 516, baseType: !291, size: 64, offset: 704)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2106, file: !2107, line: 518, baseType: !291, size: 64, offset: 768)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2106, file: !2107, line: 520, baseType: !291, size: 64, offset: 832)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2106, file: !2107, line: 521, baseType: !291, size: 64, offset: 896)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2106, file: !2107, line: 522, baseType: !291, size: 64, offset: 960)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2106, file: !2107, line: 528, baseType: !2144, size: 64, offset: 1024)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2107, line: 10, flags: DIFlagFwdDecl)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2106, file: !2107, line: 535, baseType: !291, size: 64, offset: 1088)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2106, file: !2107, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2106, file: !2107, line: 540, baseType: !2149, size: 33280, offset: 1536)
!2149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2150, line: 317, size: 33280, elements: !2151)
!2150 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2151 = !{!2152, !2153, !2154}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2149, file: !2150, line: 330, baseType: !7, size: 32)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2149, file: !2150, line: 337, baseType: !291, size: 64, offset: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2149, file: !2150, line: 348, baseType: !2155, size: 32768, offset: 512)
!2155 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2150, line: 304, size: 32768, elements: !2156)
!2156 = !{!2157, !2172, !2211, !2261, !2274}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2155, file: !2150, line: 305, baseType: !2158, size: 896)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2150, line: 12, size: 896, elements: !2159)
!2159 = !{!2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2171}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2158, file: !2150, line: 13, baseType: !382, size: 32)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2158, file: !2150, line: 14, baseType: !382, size: 32, offset: 32)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2158, file: !2150, line: 15, baseType: !382, size: 32, offset: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2158, file: !2150, line: 16, baseType: !382, size: 32, offset: 96)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2158, file: !2150, line: 17, baseType: !382, size: 32, offset: 128)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2158, file: !2150, line: 18, baseType: !382, size: 32, offset: 160)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2158, file: !2150, line: 19, baseType: !382, size: 32, offset: 192)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2158, file: !2150, line: 22, baseType: !2168, size: 640, offset: 224)
!2168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 640, elements: !2169)
!2169 = !{!2170}
!2170 = !DISubrange(count: 20)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2158, file: !2150, line: 25, baseType: !382, size: 32, offset: 864)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2155, file: !2150, line: 306, baseType: !2173, size: 4096, align: 128)
!2173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2150, line: 34, size: 4096, align: 128, elements: !2174)
!2174 = !{!2175, !2176, !2177, !2178, !2179, !2194, !2195, !2196, !2200, !2202, !2206}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2173, file: !2150, line: 35, baseType: !828, size: 16)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2173, file: !2150, line: 36, baseType: !828, size: 16, offset: 16)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2173, file: !2150, line: 37, baseType: !828, size: 16, offset: 32)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2173, file: !2150, line: 38, baseType: !828, size: 16, offset: 48)
!2179 = !DIDerivedType(tag: DW_TAG_member, scope: !2173, file: !2150, line: 39, baseType: !2180, size: 128, offset: 64)
!2180 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2173, file: !2150, line: 39, size: 128, elements: !2181)
!2181 = !{!2182, !2187}
!2182 = !DIDerivedType(tag: DW_TAG_member, scope: !2180, file: !2150, line: 40, baseType: !2183, size: 128)
!2183 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2180, file: !2150, line: 40, size: 128, elements: !2184)
!2184 = !{!2185, !2186}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2183, file: !2150, line: 41, baseType: !388, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2183, file: !2150, line: 42, baseType: !388, size: 64, offset: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, scope: !2180, file: !2150, line: 44, baseType: !2188, size: 128)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2180, file: !2150, line: 44, size: 128, elements: !2189)
!2189 = !{!2190, !2191, !2192, !2193}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2188, file: !2150, line: 45, baseType: !382, size: 32)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2188, file: !2150, line: 46, baseType: !382, size: 32, offset: 32)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2188, file: !2150, line: 47, baseType: !382, size: 32, offset: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2188, file: !2150, line: 48, baseType: !382, size: 32, offset: 96)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2173, file: !2150, line: 51, baseType: !382, size: 32, offset: 192)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2173, file: !2150, line: 52, baseType: !382, size: 32, offset: 224)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2173, file: !2150, line: 55, baseType: !2197, size: 1024, offset: 256)
!2197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 1024, elements: !2198)
!2198 = !{!2199}
!2199 = !DISubrange(count: 32)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2173, file: !2150, line: 58, baseType: !2201, size: 2048, offset: 1280)
!2201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 2048, elements: !246)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2173, file: !2150, line: 60, baseType: !2203, size: 384, offset: 3328)
!2203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 384, elements: !2204)
!2204 = !{!2205}
!2205 = !DISubrange(count: 12)
!2206 = !DIDerivedType(tag: DW_TAG_member, scope: !2173, file: !2150, line: 62, baseType: !2207, size: 384, offset: 3712)
!2207 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2173, file: !2150, line: 62, size: 384, elements: !2208)
!2208 = !{!2209, !2210}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2207, file: !2150, line: 63, baseType: !2203, size: 384)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2207, file: !2150, line: 64, baseType: !2203, size: 384)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2155, file: !2150, line: 307, baseType: !2212, size: 1088)
!2212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2150, line: 79, size: 1088, elements: !2213)
!2213 = !{!2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2260}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2212, file: !2150, line: 80, baseType: !382, size: 32)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2212, file: !2150, line: 81, baseType: !382, size: 32, offset: 32)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2212, file: !2150, line: 82, baseType: !382, size: 32, offset: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2212, file: !2150, line: 83, baseType: !382, size: 32, offset: 96)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2212, file: !2150, line: 84, baseType: !382, size: 32, offset: 128)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2212, file: !2150, line: 85, baseType: !382, size: 32, offset: 160)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2212, file: !2150, line: 86, baseType: !382, size: 32, offset: 192)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2212, file: !2150, line: 88, baseType: !2168, size: 640, offset: 224)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2212, file: !2150, line: 89, baseType: !1321, size: 8, offset: 864)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2212, file: !2150, line: 90, baseType: !1321, size: 8, offset: 872)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2212, file: !2150, line: 91, baseType: !1321, size: 8, offset: 880)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2212, file: !2150, line: 92, baseType: !1321, size: 8, offset: 888)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2212, file: !2150, line: 93, baseType: !1321, size: 8, offset: 896)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2212, file: !2150, line: 94, baseType: !1321, size: 8, offset: 904)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2212, file: !2150, line: 95, baseType: !2229, size: 64, offset: 960)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2231, line: 11, size: 128, elements: !2232)
!2231 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2232 = !{!2233, !2234}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2230, file: !2231, line: 12, baseType: !276, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2230, file: !2231, line: 13, baseType: !2235, size: 64, offset: 64)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2237, line: 56, size: 1344, elements: !2238)
!2237 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2238 = !{!2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2236, file: !2237, line: 61, baseType: !291, size: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2236, file: !2237, line: 62, baseType: !291, size: 64, offset: 64)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2236, file: !2237, line: 63, baseType: !291, size: 64, offset: 128)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2236, file: !2237, line: 64, baseType: !291, size: 64, offset: 192)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2236, file: !2237, line: 65, baseType: !291, size: 64, offset: 256)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2236, file: !2237, line: 66, baseType: !291, size: 64, offset: 320)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2236, file: !2237, line: 68, baseType: !291, size: 64, offset: 384)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2236, file: !2237, line: 69, baseType: !291, size: 64, offset: 448)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2236, file: !2237, line: 70, baseType: !291, size: 64, offset: 512)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2236, file: !2237, line: 71, baseType: !291, size: 64, offset: 576)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2236, file: !2237, line: 72, baseType: !291, size: 64, offset: 640)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2236, file: !2237, line: 73, baseType: !291, size: 64, offset: 704)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2236, file: !2237, line: 74, baseType: !291, size: 64, offset: 768)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2236, file: !2237, line: 75, baseType: !291, size: 64, offset: 832)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2236, file: !2237, line: 76, baseType: !291, size: 64, offset: 896)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2236, file: !2237, line: 81, baseType: !291, size: 64, offset: 960)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2236, file: !2237, line: 83, baseType: !291, size: 64, offset: 1024)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2236, file: !2237, line: 84, baseType: !291, size: 64, offset: 1088)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2236, file: !2237, line: 85, baseType: !291, size: 64, offset: 1152)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2236, file: !2237, line: 86, baseType: !291, size: 64, offset: 1216)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2236, file: !2237, line: 87, baseType: !291, size: 64, offset: 1280)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2212, file: !2150, line: 96, baseType: !382, size: 32, offset: 1024)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2155, file: !2150, line: 308, baseType: !2262, size: 4608, align: 512)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2150, line: 289, size: 4608, align: 512, elements: !2263)
!2263 = !{!2264, !2265, !2272}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2262, file: !2150, line: 290, baseType: !2173, size: 4096, align: 128)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2262, file: !2150, line: 291, baseType: !2266, size: 512, offset: 4096)
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2150, line: 268, size: 512, elements: !2267)
!2267 = !{!2268, !2269, !2270}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2266, file: !2150, line: 269, baseType: !388, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2266, file: !2150, line: 270, baseType: !388, size: 64, offset: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2266, file: !2150, line: 271, baseType: !2271, size: 384, offset: 128)
!2271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 384, elements: !1594)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2262, file: !2150, line: 292, baseType: !2273, offset: 4608)
!2273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1321, elements: !1692)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2155, file: !2150, line: 309, baseType: !2275, size: 32768)
!2275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1321, size: 32768, elements: !2276)
!2276 = !{!2277}
!2277 = !DISubrange(count: 4096)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1182, file: !691, line: 378, baseType: !2279, size: 64, offset: 64)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1178, file: !691, line: 384, baseType: !1471, size: 192, offset: 192)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !947, file: !691, line: 500, baseType: !200, offset: 6656)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !947, file: !691, line: 501, baseType: !2283, size: 64, offset: 6656)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !691, line: 387, flags: DIFlagFwdDecl)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !947, file: !691, line: 516, baseType: !1682, size: 64, offset: 6720)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !947, file: !691, line: 519, baseType: !319, size: 64, offset: 6784)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !947, file: !691, line: 521, baseType: !2288, size: 64, offset: 6848)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !691, line: 521, flags: DIFlagFwdDecl)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !947, file: !691, line: 545, baseType: !716, size: 32, offset: 6912)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !947, file: !691, line: 548, baseType: !164, size: 8, offset: 6944)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !947, file: !691, line: 550, baseType: !2293, offset: 6952)
!2293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2294, line: 142, elements: !214)
!2294 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !947, file: !691, line: 554, baseType: !1927, size: 256, offset: 6976)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !947, file: !691, line: 557, baseType: !382, size: 32, offset: 7232)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !944, file: !691, line: 565, baseType: !2298, offset: 7296)
!2298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, elements: !2299)
!2299 = !{!2300}
!2300 = !DISubrange(count: -1)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !940, file: !691, line: 151, baseType: !716, size: 32)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !933, file: !691, line: 156, baseType: !200, offset: 256)
!2303 = !DIDerivedType(tag: DW_TAG_member, scope: !695, file: !691, line: 159, baseType: !2304, size: 128)
!2304 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !695, file: !691, line: 159, size: 128, elements: !2305)
!2305 = !{!2306, !2370}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2304, file: !691, line: 161, baseType: !2307, size: 64)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2309)
!2309 = !{!2310, !2320, !2341, !2342, !2343, !2344, !2345, !2357, !2358, !2359}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2308, file: !31, line: 111, baseType: !2311, size: 384)
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2312)
!2312 = !{!2313, !2315, !2316, !2317, !2318, !2319}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2311, file: !31, line: 20, baseType: !2314, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !291)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2311, file: !31, line: 21, baseType: !2314, size: 64, offset: 64)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2311, file: !31, line: 22, baseType: !2314, size: 64, offset: 128)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2311, file: !31, line: 23, baseType: !291, size: 64, offset: 192)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2311, file: !31, line: 24, baseType: !291, size: 64, offset: 256)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2311, file: !31, line: 25, baseType: !291, size: 64, offset: 320)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2308, file: !31, line: 112, baseType: !2321, size: 64, offset: 384)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2323, line: 105, size: 128, elements: !2324)
!2323 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2324 = !{!2325, !2326}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2322, file: !2323, line: 110, baseType: !291, size: 64)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2322, file: !2323, line: 118, baseType: !2327, size: 64, offset: 64)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2323, line: 95, size: 448, elements: !2329)
!2329 = !{!2330, !2331, !2336, !2337, !2338, !2339, !2340}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2328, file: !2323, line: 96, baseType: !740, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2328, file: !2323, line: 97, baseType: !2332, size: 64, offset: 64)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2323, line: 60, baseType: !2334)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{null, !2321}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2328, file: !2323, line: 98, baseType: !2332, size: 64, offset: 128)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2328, file: !2323, line: 99, baseType: !164, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2328, file: !2323, line: 100, baseType: !164, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2328, file: !2323, line: 101, baseType: !332, size: 128, align: 64, offset: 256)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2328, file: !2323, line: 102, baseType: !2321, size: 64, offset: 384)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2308, file: !31, line: 113, baseType: !2322, size: 128, offset: 448)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2308, file: !31, line: 114, baseType: !1471, size: 192, offset: 576)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2308, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2308, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2308, file: !31, line: 117, baseType: !2346, size: 64, offset: 832)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2348)
!2348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2349)
!2349 = !{!2350, !2351, !2355, !2356}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2348, file: !31, line: 73, baseType: !809, size: 64)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2348, file: !31, line: 78, baseType: !2352, size: 64, offset: 64)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{null, !2307}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2348, file: !31, line: 83, baseType: !2352, size: 64, offset: 128)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2348, file: !31, line: 89, baseType: !996, size: 64, offset: 192)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2308, file: !31, line: 118, baseType: !131, size: 64, offset: 896)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2308, file: !31, line: 119, baseType: !137, size: 32, offset: 960)
!2359 = !DIDerivedType(tag: DW_TAG_member, scope: !2308, file: !31, line: 120, baseType: !2360, size: 128, offset: 1024)
!2360 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2308, file: !31, line: 120, size: 128, elements: !2361)
!2361 = !{!2362, !2368}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2360, file: !31, line: 121, baseType: !2363, size: 128)
!2363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2364, line: 6, size: 128, elements: !2365)
!2364 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2365 = !{!2366, !2367}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2363, file: !2364, line: 7, baseType: !388, size: 64)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2363, file: !2364, line: 8, baseType: !388, size: 64, offset: 64)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2360, file: !31, line: 122, baseType: !2369)
!2369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2363, elements: !1692)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2304, file: !691, line: 162, baseType: !131, size: 64, offset: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !695, file: !691, line: 176, baseType: !332, size: 128, align: 64)
!2372 = !DIDerivedType(tag: DW_TAG_member, scope: !690, file: !691, line: 179, baseType: !2373, size: 32, offset: 384)
!2373 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !690, file: !691, line: 179, size: 32, elements: !2374)
!2374 = !{!2375, !2376, !2377, !2378}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2373, file: !691, line: 184, baseType: !716, size: 32)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2373, file: !691, line: 192, baseType: !7, size: 32)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2373, file: !691, line: 194, baseType: !7, size: 32)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2373, file: !691, line: 195, baseType: !137, size: 32)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !690, file: !691, line: 199, baseType: !716, size: 32, offset: 416)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !625, file: !44, line: 1964, baseType: !2381, size: 64, offset: 1344)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!276, !564, !2384}
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2386, line: 12, size: 256, elements: !2387)
!2386 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2387 = !{!2388, !2389, !2390, !2391, !2392}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2385, file: !2386, line: 13, baseType: !712, size: 32)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2385, file: !2386, line: 16, baseType: !137, size: 32, offset: 32)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2385, file: !2386, line: 23, baseType: !291, size: 64, offset: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2385, file: !2386, line: 30, baseType: !291, size: 64, offset: 128)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2385, file: !2386, line: 33, baseType: !2393, size: 64, offset: 192)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !691, line: 27, flags: DIFlagFwdDecl)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !625, file: !44, line: 1966, baseType: !2381, size: 64, offset: 1408)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !565, file: !44, line: 1424, baseType: !2397, size: 64, offset: 448)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2399)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2400)
!2400 = !{!2401, !2447, !2451, !2455, !2456, !2457, !2458, !2459, !2464, !2469, !2473}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2399, file: !38, line: 323, baseType: !2402, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{!137, !2405}
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2407)
!2407 = !{!2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2432, !2433, !2434}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2406, file: !38, line: 295, baseType: !607, size: 128)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2406, file: !38, line: 296, baseType: !187, size: 128, offset: 128)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2406, file: !38, line: 297, baseType: !187, size: 128, offset: 256)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2406, file: !38, line: 298, baseType: !187, size: 128, offset: 384)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2406, file: !38, line: 299, baseType: !1142, size: 192, offset: 512)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2406, file: !38, line: 300, baseType: !200, offset: 704)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2406, file: !38, line: 301, baseType: !716, size: 32, offset: 704)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2406, file: !38, line: 302, baseType: !564, size: 64, offset: 768)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2406, file: !38, line: 303, baseType: !2417, size: 64, offset: 832)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2418)
!2418 = !{!2419, !2431}
!2419 = !DIDerivedType(tag: DW_TAG_member, scope: !2417, file: !38, line: 69, baseType: !2420, size: 32)
!2420 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2417, file: !38, line: 69, size: 32, elements: !2421)
!2421 = !{!2422, !2423, !2424}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2420, file: !38, line: 70, baseType: !402, size: 32)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2420, file: !38, line: 71, baseType: !410, size: 32)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2420, file: !38, line: 72, baseType: !2425, size: 32)
!2425 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2426, line: 24, baseType: !2427)
!2426 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2427 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2426, line: 22, size: 32, elements: !2428)
!2428 = !{!2429}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2427, file: !2426, line: 23, baseType: !2430, size: 32)
!2430 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2426, line: 20, baseType: !408)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2417, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2406, file: !38, line: 304, baseType: !496, size: 64, offset: 896)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2406, file: !38, line: 305, baseType: !291, size: 64, offset: 960)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2406, file: !38, line: 306, baseType: !2435, size: 576, offset: 1024)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2436)
!2436 = !{!2437, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2435, file: !38, line: 206, baseType: !2438, size: 64)
!2438 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !498)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2435, file: !38, line: 207, baseType: !2438, size: 64, offset: 64)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2435, file: !38, line: 208, baseType: !2438, size: 64, offset: 128)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2435, file: !38, line: 209, baseType: !2438, size: 64, offset: 192)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2435, file: !38, line: 210, baseType: !2438, size: 64, offset: 256)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2435, file: !38, line: 211, baseType: !2438, size: 64, offset: 320)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2435, file: !38, line: 212, baseType: !2438, size: 64, offset: 384)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2435, file: !38, line: 213, baseType: !504, size: 64, offset: 448)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2435, file: !38, line: 214, baseType: !504, size: 64, offset: 512)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2399, file: !38, line: 324, baseType: !2448, size: 64, offset: 64)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!2405, !564, !137}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2399, file: !38, line: 325, baseType: !2452, size: 64, offset: 128)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{null, !2405}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2399, file: !38, line: 326, baseType: !2402, size: 64, offset: 192)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2399, file: !38, line: 327, baseType: !2402, size: 64, offset: 256)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2399, file: !38, line: 328, baseType: !2402, size: 64, offset: 320)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2399, file: !38, line: 329, baseType: !653, size: 64, offset: 384)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2399, file: !38, line: 332, baseType: !2460, size: 64, offset: 448)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{!2463, !396}
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2399, file: !38, line: 333, baseType: !2465, size: 64, offset: 512)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!137, !396, !2468}
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2399, file: !38, line: 335, baseType: !2470, size: 64, offset: 576)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!137, !396, !2463}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2399, file: !38, line: 337, baseType: !2474, size: 64, offset: 640)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!137, !564, !2477}
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !565, file: !44, line: 1425, baseType: !2479, size: 64, offset: 512)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2481)
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2482)
!2482 = !{!2483, !2487, !2488, !2492, !2493, !2494, !2509, !2532, !2536, !2537, !2560}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2481, file: !38, line: 429, baseType: !2484, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!137, !564, !137, !137, !514}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2481, file: !38, line: 430, baseType: !653, size: 64, offset: 64)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2481, file: !38, line: 431, baseType: !2489, size: 64, offset: 128)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{!137, !564, !7}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2481, file: !38, line: 432, baseType: !2489, size: 64, offset: 192)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2481, file: !38, line: 433, baseType: !653, size: 64, offset: 256)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2481, file: !38, line: 434, baseType: !2495, size: 64, offset: 320)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!137, !564, !137, !2498}
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2500)
!2500 = !{!2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2499, file: !38, line: 416, baseType: !137, size: 32)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2499, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2499, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2499, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2499, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2499, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2499, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2499, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2481, file: !38, line: 435, baseType: !2510, size: 64, offset: 384)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{!137, !564, !2417, !2513}
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2515)
!2515 = !{!2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2514, file: !38, line: 344, baseType: !137, size: 32)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2514, file: !38, line: 345, baseType: !388, size: 64, offset: 64)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2514, file: !38, line: 346, baseType: !388, size: 64, offset: 128)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2514, file: !38, line: 347, baseType: !388, size: 64, offset: 192)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2514, file: !38, line: 348, baseType: !388, size: 64, offset: 256)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2514, file: !38, line: 349, baseType: !388, size: 64, offset: 320)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2514, file: !38, line: 350, baseType: !388, size: 64, offset: 384)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2514, file: !38, line: 351, baseType: !746, size: 64, offset: 448)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2514, file: !38, line: 353, baseType: !746, size: 64, offset: 512)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2514, file: !38, line: 354, baseType: !137, size: 32, offset: 576)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2514, file: !38, line: 355, baseType: !137, size: 32, offset: 608)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2514, file: !38, line: 356, baseType: !388, size: 64, offset: 640)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2514, file: !38, line: 357, baseType: !388, size: 64, offset: 704)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2514, file: !38, line: 358, baseType: !388, size: 64, offset: 768)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2514, file: !38, line: 359, baseType: !746, size: 64, offset: 832)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2514, file: !38, line: 360, baseType: !137, size: 32, offset: 896)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2481, file: !38, line: 436, baseType: !2533, size: 64, offset: 448)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{!137, !564, !2477, !2513}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2481, file: !38, line: 438, baseType: !2510, size: 64, offset: 512)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2481, file: !38, line: 439, baseType: !2538, size: 64, offset: 576)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{!137, !564, !2541}
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2543)
!2543 = !{!2544, !2545}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2542, file: !38, line: 410, baseType: !7, size: 32)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2542, file: !38, line: 411, baseType: !2546, size: 1344, offset: 64)
!2546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2547, size: 1344, elements: !242)
!2547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2548)
!2548 = !{!2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2559}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2547, file: !38, line: 396, baseType: !7, size: 32)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2547, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2547, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2547, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2547, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2547, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2547, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2547, file: !38, line: 404, baseType: !390, size: 64, offset: 256)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2547, file: !38, line: 405, baseType: !2558, size: 64, offset: 320)
!2558 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !165, line: 126, baseType: !388)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2547, file: !38, line: 406, baseType: !2558, size: 64, offset: 384)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2481, file: !38, line: 440, baseType: !2489, size: 64, offset: 640)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !565, file: !44, line: 1426, baseType: !2562, size: 64, offset: 576)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2564)
!2564 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !565, file: !44, line: 1427, baseType: !291, size: 64, offset: 640)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !565, file: !44, line: 1428, baseType: !291, size: 64, offset: 704)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !565, file: !44, line: 1429, baseType: !291, size: 64, offset: 768)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !565, file: !44, line: 1430, baseType: !349, size: 64, offset: 832)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !565, file: !44, line: 1431, baseType: !736, size: 256, offset: 896)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !565, file: !44, line: 1432, baseType: !137, size: 32, offset: 1152)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !565, file: !44, line: 1433, baseType: !716, size: 32, offset: 1184)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !565, file: !44, line: 1437, baseType: !2573, size: 64, offset: 1216)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2576)
!2576 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !565, file: !44, line: 1449, baseType: !2578, size: 64, offset: 1280)
!2578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !365, line: 34, size: 64, elements: !2579)
!2579 = !{!2580}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2578, file: !365, line: 35, baseType: !368, size: 64)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !565, file: !44, line: 1450, baseType: !187, size: 128, offset: 1344)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !565, file: !44, line: 1451, baseType: !2583, size: 64, offset: 1472)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !565, file: !44, line: 1452, baseType: !1893, size: 64, offset: 1536)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !565, file: !44, line: 1453, baseType: !2587, size: 64, offset: 1600)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !565, file: !44, line: 1454, baseType: !607, size: 128, offset: 1664)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !565, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !565, file: !44, line: 1456, baseType: !2592, size: 2432, offset: 1856)
!2592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2593)
!2593 = !{!2594, !2595, !2596, !2598, !2630}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2592, file: !38, line: 519, baseType: !7, size: 32)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2592, file: !38, line: 520, baseType: !736, size: 256, offset: 64)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2592, file: !38, line: 521, baseType: !2597, size: 192, offset: 320)
!2597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !396, size: 192, elements: !242)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2592, file: !38, line: 522, baseType: !2599, size: 1728, offset: 512)
!2599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2600, size: 1728, elements: !242)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2601)
!2601 = !{!2602, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2600, file: !38, line: 223, baseType: !2603, size: 64)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2605)
!2605 = !{!2606, !2607, !2620, !2621}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2604, file: !38, line: 444, baseType: !137, size: 32)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2604, file: !38, line: 445, baseType: !2608, size: 64, offset: 64)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2610)
!2610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2611)
!2611 = !{!2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2610, file: !38, line: 311, baseType: !653, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2610, file: !38, line: 312, baseType: !653, size: 64, offset: 64)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2610, file: !38, line: 313, baseType: !653, size: 64, offset: 128)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2610, file: !38, line: 314, baseType: !653, size: 64, offset: 192)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2610, file: !38, line: 315, baseType: !2402, size: 64, offset: 256)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2610, file: !38, line: 316, baseType: !2402, size: 64, offset: 320)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2610, file: !38, line: 317, baseType: !2402, size: 64, offset: 384)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2610, file: !38, line: 318, baseType: !2474, size: 64, offset: 448)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2604, file: !38, line: 446, baseType: !598, size: 64, offset: 128)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2604, file: !38, line: 447, baseType: !2603, size: 64, offset: 192)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2600, file: !38, line: 224, baseType: !137, size: 32, offset: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2600, file: !38, line: 226, baseType: !187, size: 128, offset: 128)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2600, file: !38, line: 227, baseType: !291, size: 64, offset: 256)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2600, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2600, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2600, file: !38, line: 230, baseType: !2438, size: 64, offset: 384)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2600, file: !38, line: 231, baseType: !2438, size: 64, offset: 448)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2600, file: !38, line: 232, baseType: !131, size: 64, offset: 512)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2592, file: !38, line: 523, baseType: !2631, size: 192, offset: 2240)
!2631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2608, size: 192, elements: !242)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !565, file: !44, line: 1458, baseType: !2633, size: 2112, offset: 4288)
!2633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2634)
!2634 = !{!2635, !2636, !2637}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2633, file: !44, line: 1411, baseType: !137, size: 32)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2633, file: !44, line: 1412, baseType: !1450, size: 128, offset: 64)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2633, file: !44, line: 1413, baseType: !2638, size: 1920, offset: 192)
!2638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2639, size: 1920, elements: !242)
!2639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2640, line: 12, size: 640, elements: !2641)
!2640 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2641 = !{!2642, !2650, !2652, !2657, !2658}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2639, file: !2640, line: 13, baseType: !2643, size: 320)
!2643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2644, line: 17, size: 320, elements: !2645)
!2644 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2645 = !{!2646, !2647, !2648, !2649}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2643, file: !2644, line: 18, baseType: !137, size: 32)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2643, file: !2644, line: 19, baseType: !137, size: 32, offset: 32)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2643, file: !2644, line: 20, baseType: !1450, size: 128, offset: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2643, file: !2644, line: 22, baseType: !332, size: 128, align: 64, offset: 192)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2639, file: !2640, line: 14, baseType: !2651, size: 64, offset: 320)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2639, file: !2640, line: 15, baseType: !2653, size: 64, offset: 384)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2654, line: 16, size: 64, elements: !2655)
!2654 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2655 = !{!2656}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2653, file: !2654, line: 17, baseType: !1185, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2639, file: !2640, line: 16, baseType: !1450, size: 128, offset: 448)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2639, file: !2640, line: 17, baseType: !716, size: 32, offset: 576)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !565, file: !44, line: 1465, baseType: !131, size: 64, offset: 6400)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !565, file: !44, line: 1468, baseType: !382, size: 32, offset: 6464)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !565, file: !44, line: 1470, baseType: !504, size: 64, offset: 6528)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !565, file: !44, line: 1471, baseType: !504, size: 64, offset: 6592)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !565, file: !44, line: 1473, baseType: !384, size: 32, offset: 6656)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !565, file: !44, line: 1474, baseType: !2665, size: 64, offset: 6720)
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2666 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !565, file: !44, line: 1477, baseType: !2668, size: 256, offset: 6784)
!2668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 256, elements: !2198)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !565, file: !44, line: 1478, baseType: !2670, size: 128, offset: 7040)
!2670 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2671, line: 18, baseType: !2672)
!2671 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2672 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2671, line: 16, size: 128, elements: !2673)
!2673 = !{!2674}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2672, file: !2671, line: 17, baseType: !2675, size: 128)
!2675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1322, size: 128, elements: !1704)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !565, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !565, file: !44, line: 1481, baseType: !2678, size: 32, offset: 7200)
!2678 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !165, line: 150, baseType: !7)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !565, file: !44, line: 1487, baseType: !1142, size: 192, offset: 7232)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !565, file: !44, line: 1493, baseType: !183, size: 64, offset: 7424)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !565, file: !44, line: 1495, baseType: !2682, size: 64, offset: 7488)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2684)
!2684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !347, line: 135, size: 1024, align: 512, elements: !2685)
!2685 = !{!2686, !2690, !2691, !2698, !2704, !2708, !2712, !2716, !2717, !2721, !2725, !2730, !2734}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2684, file: !347, line: 136, baseType: !2687, size: 64)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{!137, !349, !7}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2684, file: !347, line: 137, baseType: !2687, size: 64, offset: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2684, file: !347, line: 138, baseType: !2692, size: 64, offset: 128)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{!137, !2695, !2697}
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !350)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2684, file: !347, line: 139, baseType: !2699, size: 64, offset: 192)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DISubroutineType(types: !2701)
!2701 = !{!137, !2695, !7, !183, !2702}
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !373)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2684, file: !347, line: 141, baseType: !2705, size: 64, offset: 256)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DISubroutineType(types: !2707)
!2707 = !{!137, !2695}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2684, file: !347, line: 142, baseType: !2709, size: 64, offset: 320)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{!137, !349}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2684, file: !347, line: 143, baseType: !2713, size: 64, offset: 384)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{null, !349}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2684, file: !347, line: 144, baseType: !2713, size: 64, offset: 448)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2684, file: !347, line: 145, baseType: !2718, size: 64, offset: 512)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{null, !349, !396}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2684, file: !347, line: 146, baseType: !2722, size: 64, offset: 576)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{!241, !349, !241, !137}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2684, file: !347, line: 147, baseType: !2726, size: 64, offset: 640)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!345, !2729}
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2684, file: !347, line: 148, baseType: !2731, size: 64, offset: 704)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!137, !514, !164}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2684, file: !347, line: 149, baseType: !2735, size: 64, offset: 768)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!349, !349, !2738}
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !397)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !565, file: !44, line: 1500, baseType: !137, size: 32, offset: 7552)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !565, file: !44, line: 1502, baseType: !2742, size: 448, offset: 7616)
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2386, line: 60, size: 448, elements: !2743)
!2743 = !{!2744, !2749, !2750, !2751, !2752, !2753, !2754}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2742, file: !2386, line: 61, baseType: !2745, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = !DISubroutineType(types: !2747)
!2747 = !{!291, !2748, !2384}
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2742, file: !2386, line: 63, baseType: !2745, size: 64, offset: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2742, file: !2386, line: 66, baseType: !276, size: 64, offset: 128)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2742, file: !2386, line: 67, baseType: !137, size: 32, offset: 192)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2742, file: !2386, line: 68, baseType: !7, size: 32, offset: 224)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2742, file: !2386, line: 71, baseType: !187, size: 128, offset: 256)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2742, file: !2386, line: 77, baseType: !2755, size: 64, offset: 384)
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !565, file: !44, line: 1505, baseType: !740, size: 64, offset: 8064)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !565, file: !44, line: 1508, baseType: !740, size: 64, offset: 8128)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !565, file: !44, line: 1511, baseType: !137, size: 32, offset: 8192)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !565, file: !44, line: 1514, baseType: !878, size: 32, offset: 8224)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !565, file: !44, line: 1517, baseType: !2761, size: 64, offset: 8256)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1928, line: 18, flags: DIFlagFwdDecl)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !565, file: !44, line: 1518, baseType: !603, size: 64, offset: 8320)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !565, file: !44, line: 1525, baseType: !1682, size: 64, offset: 8384)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !565, file: !44, line: 1532, baseType: !2766, size: 64, offset: 8448)
!2766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2767, line: 52, size: 64, elements: !2768)
!2767 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2768 = !{!2769}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2766, file: !2767, line: 53, baseType: !2770, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2767, line: 40, size: 256, elements: !2772)
!2772 = !{!2773, !2774, !2779}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2771, file: !2767, line: 42, baseType: !200)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2771, file: !2767, line: 44, baseType: !2775, size: 192)
!2775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2767, line: 28, size: 192, elements: !2776)
!2776 = !{!2777, !2778}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2775, file: !2767, line: 29, baseType: !187, size: 128)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2775, file: !2767, line: 31, baseType: !276, size: 64, offset: 128)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2771, file: !2767, line: 49, baseType: !276, size: 64, offset: 192)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !565, file: !44, line: 1533, baseType: !2766, size: 64, offset: 8512)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !565, file: !44, line: 1534, baseType: !332, size: 128, align: 64, offset: 8576)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !565, file: !44, line: 1535, baseType: !1927, size: 256, offset: 8704)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !565, file: !44, line: 1537, baseType: !1142, size: 192, offset: 8960)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !565, file: !44, line: 1542, baseType: !137, size: 32, offset: 9152)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !565, file: !44, line: 1545, baseType: !200, offset: 9184)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !565, file: !44, line: 1546, baseType: !187, size: 128, offset: 9216)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !565, file: !44, line: 1548, baseType: !200, offset: 9344)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !565, file: !44, line: 1549, baseType: !187, size: 128, offset: 9344)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !397, file: !44, line: 624, baseType: !702, size: 64, offset: 256)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !397, file: !44, line: 631, baseType: !291, size: 64, offset: 320)
!2791 = !DIDerivedType(tag: DW_TAG_member, scope: !397, file: !44, line: 639, baseType: !2792, size: 32, offset: 384)
!2792 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !397, file: !44, line: 639, size: 32, elements: !2793)
!2793 = !{!2794, !2796}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2792, file: !44, line: 640, baseType: !2795, size: 32)
!2795 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2792, file: !44, line: 641, baseType: !7, size: 32)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !397, file: !44, line: 643, baseType: !478, size: 32, offset: 416)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !397, file: !44, line: 644, baseType: !496, size: 64, offset: 448)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !397, file: !44, line: 645, baseType: !500, size: 128, offset: 512)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !397, file: !44, line: 646, baseType: !500, size: 128, offset: 640)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !397, file: !44, line: 647, baseType: !500, size: 128, offset: 768)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !397, file: !44, line: 648, baseType: !200, offset: 896)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !397, file: !44, line: 649, baseType: !283, size: 16, offset: 896)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !397, file: !44, line: 650, baseType: !1321, size: 8, offset: 912)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !397, file: !44, line: 651, baseType: !1321, size: 8, offset: 920)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !397, file: !44, line: 652, baseType: !2558, size: 64, offset: 960)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !397, file: !44, line: 659, baseType: !291, size: 64, offset: 1024)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !397, file: !44, line: 660, baseType: !736, size: 256, offset: 1088)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !397, file: !44, line: 662, baseType: !291, size: 64, offset: 1344)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !397, file: !44, line: 663, baseType: !291, size: 64, offset: 1408)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !397, file: !44, line: 665, baseType: !607, size: 128, offset: 1472)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !397, file: !44, line: 666, baseType: !187, size: 128, offset: 1600)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !397, file: !44, line: 675, baseType: !187, size: 128, offset: 1728)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !397, file: !44, line: 676, baseType: !187, size: 128, offset: 1856)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !397, file: !44, line: 677, baseType: !187, size: 128, offset: 1984)
!2816 = !DIDerivedType(tag: DW_TAG_member, scope: !397, file: !44, line: 678, baseType: !2817, size: 128, offset: 2112)
!2817 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !397, file: !44, line: 678, size: 128, elements: !2818)
!2818 = !{!2819, !2820}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2817, file: !44, line: 679, baseType: !603, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2817, file: !44, line: 680, baseType: !332, size: 128, align: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !397, file: !44, line: 682, baseType: !742, size: 64, offset: 2240)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !397, file: !44, line: 683, baseType: !742, size: 64, offset: 2304)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !397, file: !44, line: 684, baseType: !716, size: 32, offset: 2368)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !397, file: !44, line: 685, baseType: !716, size: 32, offset: 2400)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !397, file: !44, line: 686, baseType: !716, size: 32, offset: 2432)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !397, file: !44, line: 688, baseType: !716, size: 32, offset: 2464)
!2827 = !DIDerivedType(tag: DW_TAG_member, scope: !397, file: !44, line: 690, baseType: !2828, size: 64, offset: 2496)
!2828 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !397, file: !44, line: 690, size: 64, elements: !2829)
!2829 = !{!2830, !3053}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2828, file: !44, line: 691, baseType: !2831, size: 64)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2833)
!2833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2834)
!2834 = !{!2835, !2836, !2840, !2845, !2849, !2850, !2851, !2855, !2868, !2869, !2877, !2881, !2882, !2886, !2887, !2891, !2896, !2897, !2901, !2905, !3013, !3017, !3018, !3022, !3023, !3027, !3031, !3036, !3040, !3044, !3048, !3052}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2833, file: !44, line: 1823, baseType: !598, size: 64)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2833, file: !44, line: 1824, baseType: !2837, size: 64, offset: 64)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{!496, !319, !496, !137}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2833, file: !44, line: 1825, baseType: !2841, size: 64, offset: 128)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!272, !319, !241, !288, !2844}
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2833, file: !44, line: 1826, baseType: !2846, size: 64, offset: 192)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = !DISubroutineType(types: !2848)
!2848 = !{!272, !319, !183, !288, !2844}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2833, file: !44, line: 1827, baseType: !813, size: 64, offset: 256)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2833, file: !44, line: 1828, baseType: !813, size: 64, offset: 320)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2833, file: !44, line: 1829, baseType: !2852, size: 64, offset: 384)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!137, !816, !164}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2833, file: !44, line: 1830, baseType: !2856, size: 64, offset: 448)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{!137, !319, !2859}
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2861)
!2861 = !{!2862, !2867}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2860, file: !44, line: 1777, baseType: !2863, size: 64)
!2863 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2864)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{!137, !2859, !183, !137, !496, !388, !7}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2860, file: !44, line: 1778, baseType: !496, size: 64, offset: 64)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2833, file: !44, line: 1831, baseType: !2856, size: 64, offset: 512)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2833, file: !44, line: 1832, baseType: !2870, size: 64, offset: 576)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{!2873, !319, !2875}
!2873 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2874, line: 52, baseType: !7)
!2874 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !584, line: 27, flags: DIFlagFwdDecl)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2833, file: !44, line: 1833, baseType: !2878, size: 64, offset: 640)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = !DISubroutineType(types: !2880)
!2880 = !{!276, !319, !7, !291}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2833, file: !44, line: 1834, baseType: !2878, size: 64, offset: 704)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2833, file: !44, line: 1835, baseType: !2883, size: 64, offset: 768)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{!137, !319, !950}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2833, file: !44, line: 1836, baseType: !291, size: 64, offset: 832)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2833, file: !44, line: 1837, baseType: !2888, size: 64, offset: 896)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{!137, !396, !319}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2833, file: !44, line: 1838, baseType: !2892, size: 64, offset: 960)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{!137, !319, !2895}
!2895 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !131)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2833, file: !44, line: 1839, baseType: !2888, size: 64, offset: 1024)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2833, file: !44, line: 1840, baseType: !2898, size: 64, offset: 1088)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{!137, !319, !496, !496, !137}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2833, file: !44, line: 1841, baseType: !2902, size: 64, offset: 1152)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{!137, !137, !319, !137}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2833, file: !44, line: 1842, baseType: !2906, size: 64, offset: 1216)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{!137, !319, !137, !2909}
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2911)
!2911 = !{!2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2943, !2944, !2945, !2958, !2989}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2910, file: !44, line: 1063, baseType: !2909, size: 64)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2910, file: !44, line: 1064, baseType: !187, size: 128, offset: 64)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2910, file: !44, line: 1065, baseType: !607, size: 128, offset: 192)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2910, file: !44, line: 1066, baseType: !187, size: 128, offset: 320)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2910, file: !44, line: 1069, baseType: !187, size: 128, offset: 448)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2910, file: !44, line: 1072, baseType: !2895, size: 64, offset: 576)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2910, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2910, file: !44, line: 1074, baseType: !394, size: 8, offset: 672)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2910, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2910, file: !44, line: 1076, baseType: !137, size: 32, offset: 736)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2910, file: !44, line: 1077, baseType: !1450, size: 128, offset: 768)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2910, file: !44, line: 1078, baseType: !319, size: 64, offset: 896)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2910, file: !44, line: 1079, baseType: !496, size: 64, offset: 960)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2910, file: !44, line: 1080, baseType: !496, size: 64, offset: 1024)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2910, file: !44, line: 1082, baseType: !2927, size: 64, offset: 1088)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2929)
!2929 = !{!2930, !2938, !2939, !2940, !2941, !2942}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2928, file: !44, line: 1315, baseType: !2931)
!2931 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2932, line: 20, baseType: !2933)
!2932 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2933 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2932, line: 11, elements: !2934)
!2934 = !{!2935}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2933, file: !2932, line: 12, baseType: !2936)
!2936 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !212, line: 33, baseType: !2937)
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !212, line: 31, elements: !214)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2928, file: !44, line: 1316, baseType: !137, size: 32)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2928, file: !44, line: 1317, baseType: !137, size: 32, offset: 32)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2928, file: !44, line: 1318, baseType: !2927, size: 64, offset: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2928, file: !44, line: 1319, baseType: !319, size: 64, offset: 128)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2928, file: !44, line: 1320, baseType: !332, size: 128, align: 64, offset: 192)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2910, file: !44, line: 1084, baseType: !291, size: 64, offset: 1152)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2910, file: !44, line: 1085, baseType: !291, size: 64, offset: 1216)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2910, file: !44, line: 1087, baseType: !2946, size: 64, offset: 1280)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2948)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !2949)
!2949 = !{!2950, !2954}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2948, file: !44, line: 1012, baseType: !2951, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{null, !2909, !2909}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2948, file: !44, line: 1013, baseType: !2955, size: 64, offset: 64)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{null, !2909}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2910, file: !44, line: 1088, baseType: !2959, size: 64, offset: 1344)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2961)
!2961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !2962)
!2962 = !{!2963, !2967, !2971, !2972, !2976, !2980, !2984, !2988}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2961, file: !44, line: 1017, baseType: !2964, size: 64)
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{!2895, !2895}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2961, file: !44, line: 1018, baseType: !2968, size: 64, offset: 64)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = !DISubroutineType(types: !2970)
!2970 = !{null, !2895}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2961, file: !44, line: 1019, baseType: !2955, size: 64, offset: 128)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2961, file: !44, line: 1020, baseType: !2973, size: 64, offset: 192)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!137, !2909, !137}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2961, file: !44, line: 1021, baseType: !2977, size: 64, offset: 256)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!164, !2909}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2961, file: !44, line: 1022, baseType: !2981, size: 64, offset: 320)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!137, !2909, !137, !190}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2961, file: !44, line: 1023, baseType: !2985, size: 64, offset: 384)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DISubroutineType(types: !2987)
!2987 = !{null, !2909, !790}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2961, file: !44, line: 1024, baseType: !2977, size: 64, offset: 448)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2910, file: !44, line: 1097, baseType: !2990, size: 256, offset: 1408)
!2990 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2910, file: !44, line: 1089, size: 256, elements: !2991)
!2991 = !{!2992, !3001, !3007}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2990, file: !44, line: 1090, baseType: !2993, size: 256)
!2993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2994, line: 10, size: 256, elements: !2995)
!2994 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2995 = !{!2996, !2997, !3000}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2993, file: !2994, line: 11, baseType: !382, size: 32)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2993, file: !2994, line: 12, baseType: !2998, size: 64, offset: 64)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2994, line: 5, flags: DIFlagFwdDecl)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2993, file: !2994, line: 13, baseType: !187, size: 128, offset: 128)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2990, file: !44, line: 1091, baseType: !3002, size: 64)
!3002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2994, line: 17, size: 64, elements: !3003)
!3003 = !{!3004}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3002, file: !2994, line: 18, baseType: !3005, size: 64)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2994, line: 16, flags: DIFlagFwdDecl)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2990, file: !44, line: 1096, baseType: !3008, size: 192)
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2990, file: !44, line: 1092, size: 192, elements: !3009)
!3009 = !{!3010, !3011, !3012}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3008, file: !44, line: 1093, baseType: !187, size: 128)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3008, file: !44, line: 1094, baseType: !137, size: 32, offset: 128)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3008, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2833, file: !44, line: 1843, baseType: !3014, size: 64, offset: 1280)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{!272, !319, !689, !137, !288, !2844, !137}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2833, file: !44, line: 1844, baseType: !1070, size: 64, offset: 1344)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2833, file: !44, line: 1845, baseType: !3019, size: 64, offset: 1408)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!137, !137}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2833, file: !44, line: 1846, baseType: !2906, size: 64, offset: 1472)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2833, file: !44, line: 1847, baseType: !3024, size: 64, offset: 1536)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{!272, !2068, !319, !2844, !288, !7}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2833, file: !44, line: 1848, baseType: !3028, size: 64, offset: 1600)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{!272, !319, !2844, !2068, !288, !7}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2833, file: !44, line: 1849, baseType: !3032, size: 64, offset: 1664)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{!137, !319, !276, !3035, !790}
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2833, file: !44, line: 1850, baseType: !3037, size: 64, offset: 1728)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DISubroutineType(types: !3039)
!3039 = !{!276, !319, !137, !496, !496}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2833, file: !44, line: 1852, baseType: !3041, size: 64, offset: 1792)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{null, !679, !319}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2833, file: !44, line: 1856, baseType: !3045, size: 64, offset: 1856)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{!272, !319, !496, !319, !496, !288, !7}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2833, file: !44, line: 1858, baseType: !3049, size: 64, offset: 1920)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{!496, !319, !496, !319, !496, !496, !7}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2833, file: !44, line: 1861, baseType: !2898, size: 64, offset: 1984)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2828, file: !44, line: 692, baseType: !632, size: 64)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !397, file: !44, line: 694, baseType: !3055, size: 64, offset: 2560)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3057)
!3057 = !{!3058, !3059, !3060, !3061}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3056, file: !44, line: 1101, baseType: !200)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3056, file: !44, line: 1102, baseType: !187, size: 128)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3056, file: !44, line: 1103, baseType: !187, size: 128, offset: 128)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3056, file: !44, line: 1104, baseType: !187, size: 128, offset: 256)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !397, file: !44, line: 695, baseType: !703, size: 1216, align: 64, offset: 2624)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !397, file: !44, line: 696, baseType: !187, size: 128, offset: 3840)
!3064 = !DIDerivedType(tag: DW_TAG_member, scope: !397, file: !44, line: 697, baseType: !3065, size: 64, offset: 3968)
!3065 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !397, file: !44, line: 697, size: 64, elements: !3066)
!3066 = !{!3067, !3068, !3069, !3072, !3073}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3065, file: !44, line: 698, baseType: !2068, size: 64)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3065, file: !44, line: 699, baseType: !2583, size: 64)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3065, file: !44, line: 700, baseType: !3070, size: 64)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3065, file: !44, line: 701, baseType: !241, size: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3065, file: !44, line: 702, baseType: !7, size: 32)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !397, file: !44, line: 705, baseType: !384, size: 32, offset: 4032)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !397, file: !44, line: 708, baseType: !384, size: 32, offset: 4064)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !397, file: !44, line: 709, baseType: !2665, size: 64, offset: 4096)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !397, file: !44, line: 720, baseType: !131, size: 64, offset: 4160)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !350, file: !347, line: 98, baseType: !3079, size: 256, offset: 448)
!3079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, size: 256, elements: !2198)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !350, file: !347, line: 101, baseType: !3081, size: 32, offset: 704)
!3081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3082, line: 25, size: 32, elements: !3083)
!3082 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3083 = !{!3084}
!3084 = !DIDerivedType(tag: DW_TAG_member, scope: !3081, file: !3082, line: 26, baseType: !3085, size: 32)
!3085 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3081, file: !3082, line: 26, size: 32, elements: !3086)
!3086 = !{!3087}
!3087 = !DIDerivedType(tag: DW_TAG_member, scope: !3085, file: !3082, line: 30, baseType: !3088, size: 32)
!3088 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3085, file: !3082, line: 30, size: 32, elements: !3089)
!3089 = !{!3090, !3091}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3088, file: !3082, line: 31, baseType: !200)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3088, file: !3082, line: 32, baseType: !137, size: 32)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !350, file: !347, line: 102, baseType: !2682, size: 64, offset: 768)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !350, file: !347, line: 103, baseType: !564, size: 64, offset: 832)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !350, file: !347, line: 104, baseType: !291, size: 64, offset: 896)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !350, file: !347, line: 105, baseType: !131, size: 64, offset: 960)
!3096 = !DIDerivedType(tag: DW_TAG_member, scope: !350, file: !347, line: 107, baseType: !3097, size: 128, offset: 1024)
!3097 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !350, file: !347, line: 107, size: 128, elements: !3098)
!3098 = !{!3099, !3100}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3097, file: !347, line: 108, baseType: !187, size: 128)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3097, file: !347, line: 109, baseType: !3101, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !350, file: !347, line: 111, baseType: !187, size: 128, offset: 1152)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !350, file: !347, line: 112, baseType: !187, size: 128, offset: 1280)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !350, file: !347, line: 120, baseType: !3105, size: 128, offset: 1408)
!3105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !350, file: !347, line: 116, size: 128, elements: !3106)
!3106 = !{!3107, !3108, !3109}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3105, file: !347, line: 117, baseType: !607, size: 128)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3105, file: !347, line: 118, baseType: !364, size: 128)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3105, file: !347, line: 119, baseType: !332, size: 128, align: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !320, file: !44, line: 922, baseType: !396, size: 64, offset: 256)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !320, file: !44, line: 923, baseType: !2831, size: 64, offset: 320)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !320, file: !44, line: 929, baseType: !200, offset: 384)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !320, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !320, file: !44, line: 931, baseType: !740, size: 64, offset: 448)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !320, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !320, file: !44, line: 933, baseType: !2678, size: 32, offset: 544)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !320, file: !44, line: 934, baseType: !1142, size: 192, offset: 576)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !320, file: !44, line: 935, baseType: !496, size: 64, offset: 768)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !320, file: !44, line: 936, baseType: !3120, size: 192, offset: 832)
!3120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3121)
!3121 = !{!3122, !3123, !3124, !3125, !3126, !3127}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3120, file: !44, line: 886, baseType: !2931)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3120, file: !44, line: 887, baseType: !1440, size: 64)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3120, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3120, file: !44, line: 889, baseType: !402, size: 32, offset: 96)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3120, file: !44, line: 889, baseType: !402, size: 32, offset: 128)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3120, file: !44, line: 890, baseType: !137, size: 32, offset: 160)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !320, file: !44, line: 937, baseType: !1516, size: 64, offset: 1024)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !320, file: !44, line: 938, baseType: !3130, size: 256, offset: 1088)
!3130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3131)
!3131 = !{!3132, !3133, !3134, !3135, !3136, !3137}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3130, file: !44, line: 897, baseType: !291, size: 64)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3130, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3130, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3130, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3130, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3130, file: !44, line: 904, baseType: !496, size: 64, offset: 192)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !320, file: !44, line: 940, baseType: !388, size: 64, offset: 1344)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !320, file: !44, line: 945, baseType: !131, size: 64, offset: 1408)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !320, file: !44, line: 949, baseType: !187, size: 128, offset: 1472)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !320, file: !44, line: 950, baseType: !187, size: 128, offset: 1600)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !320, file: !44, line: 952, baseType: !702, size: 64, offset: 1728)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !320, file: !44, line: 953, baseType: !878, size: 32, offset: 1792)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !320, file: !44, line: 954, baseType: !878, size: 32, offset: 1824)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !310, file: !266, line: 174, baseType: !316, size: 64, offset: 320)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !310, file: !266, line: 176, baseType: !3147, size: 64, offset: 384)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{!137, !319, !193, !309, !950}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !298, file: !266, line: 90, baseType: !293, size: 64, offset: 192)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !298, file: !266, line: 91, baseType: !3152, size: 64, offset: 256)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !256, file: !113, line: 143, baseType: !3154, size: 64, offset: 256)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{!3157, !193}
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3159)
!3159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3160)
!3160 = !{!3161, !3162, !3166, !3170, !3176, !3180}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3159, file: !61, line: 40, baseType: !60, size: 32)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3159, file: !61, line: 41, baseType: !3163, size: 64, offset: 64)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = !DISubroutineType(types: !3165)
!3165 = !{!164}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3159, file: !61, line: 42, baseType: !3167, size: 64, offset: 128)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!131}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3159, file: !61, line: 43, baseType: !3171, size: 64, offset: 192)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DISubroutineType(types: !3173)
!3173 = !{!173, !3174}
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3159, file: !61, line: 44, baseType: !3177, size: 64, offset: 256)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!173}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3159, file: !61, line: 45, baseType: !435, size: 64, offset: 320)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !256, file: !113, line: 144, baseType: !3182, size: 64, offset: 320)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!173, !193}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !256, file: !113, line: 145, baseType: !3186, size: 64, offset: 384)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{null, !193, !3189, !3190}
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !180, file: !113, line: 70, baseType: !3192, size: 64, offset: 384)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !584, line: 123, size: 1024, elements: !3194)
!3194 = !{!3195, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3323, !3324, !3325, !3326, !3327}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3193, file: !584, line: 124, baseType: !716, size: 32)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3193, file: !584, line: 125, baseType: !716, size: 32, offset: 32)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3193, file: !584, line: 135, baseType: !3192, size: 64, offset: 64)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3193, file: !584, line: 136, baseType: !183, size: 64, offset: 128)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3193, file: !584, line: 138, baseType: !729, size: 192, align: 64, offset: 192)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3193, file: !584, line: 140, baseType: !173, size: 64, offset: 384)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3193, file: !584, line: 141, baseType: !7, size: 32, offset: 448)
!3202 = !DIDerivedType(tag: DW_TAG_member, scope: !3193, file: !584, line: 142, baseType: !3203, size: 256, offset: 512)
!3203 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3193, file: !584, line: 142, size: 256, elements: !3204)
!3204 = !{!3205, !3251, !3255}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3203, file: !584, line: 143, baseType: !3206, size: 192)
!3206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !584, line: 91, size: 192, elements: !3207)
!3207 = !{!3208, !3209, !3210}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3206, file: !584, line: 92, baseType: !291, size: 64)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3206, file: !584, line: 94, baseType: !725, size: 64, offset: 64)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3206, file: !584, line: 100, baseType: !3211, size: 64, offset: 128)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !584, line: 180, size: 704, elements: !3213)
!3213 = !{!3214, !3215, !3216, !3223, !3224, !3225, !3249, !3250}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3212, file: !584, line: 182, baseType: !3192, size: 64)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3212, file: !584, line: 183, baseType: !7, size: 32, offset: 64)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3212, file: !584, line: 186, baseType: !3217, size: 192, offset: 128)
!3217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3218, line: 19, size: 192, elements: !3219)
!3218 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3219 = !{!3220, !3221, !3222}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3217, file: !3218, line: 20, baseType: !707, size: 128)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3217, file: !3218, line: 21, baseType: !7, size: 32, offset: 128)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3217, file: !3218, line: 22, baseType: !7, size: 32, offset: 160)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3212, file: !584, line: 187, baseType: !382, size: 32, offset: 320)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3212, file: !584, line: 188, baseType: !382, size: 32, offset: 352)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3212, file: !584, line: 189, baseType: !3226, size: 64, offset: 384)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !584, line: 168, size: 320, elements: !3228)
!3228 = !{!3229, !3233, !3237, !3241, !3245}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3227, file: !584, line: 169, baseType: !3230, size: 64)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!137, !679, !3211}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3227, file: !584, line: 171, baseType: !3234, size: 64, offset: 64)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{!137, !3192, !183, !282}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3227, file: !584, line: 173, baseType: !3238, size: 64, offset: 128)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{!137, !3192}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3227, file: !584, line: 174, baseType: !3242, size: 64, offset: 192)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{!137, !3192, !3192, !183}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3227, file: !584, line: 176, baseType: !3246, size: 64, offset: 256)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!137, !679, !3192, !3211}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3212, file: !584, line: 192, baseType: !187, size: 128, offset: 448)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3212, file: !584, line: 194, baseType: !1450, size: 128, offset: 576)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3203, file: !584, line: 144, baseType: !3252, size: 64)
!3252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !584, line: 103, size: 64, elements: !3253)
!3253 = !{!3254}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3252, file: !584, line: 104, baseType: !3192, size: 64)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3203, file: !584, line: 145, baseType: !3256, size: 256)
!3256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !584, line: 107, size: 256, elements: !3257)
!3257 = !{!3258, !3318, !3321, !3322}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3256, file: !584, line: 108, baseType: !3259, size: 64)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3261)
!3261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !584, line: 217, size: 768, elements: !3262)
!3262 = !{!3263, !3283, !3287, !3291, !3295, !3299, !3303, !3307, !3308, !3309, !3310, !3314}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3261, file: !584, line: 222, baseType: !3264, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!137, !3267}
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !584, line: 197, size: 1088, elements: !3269)
!3269 = !{!3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3268, file: !584, line: 199, baseType: !3192, size: 64)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3268, file: !584, line: 200, baseType: !319, size: 64, offset: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3268, file: !584, line: 201, baseType: !679, size: 64, offset: 128)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3268, file: !584, line: 202, baseType: !131, size: 64, offset: 192)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3268, file: !584, line: 205, baseType: !1142, size: 192, offset: 256)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3268, file: !584, line: 206, baseType: !1142, size: 192, offset: 448)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3268, file: !584, line: 207, baseType: !137, size: 32, offset: 640)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3268, file: !584, line: 208, baseType: !187, size: 128, offset: 704)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3268, file: !584, line: 209, baseType: !241, size: 64, offset: 832)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3268, file: !584, line: 211, baseType: !288, size: 64, offset: 896)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3268, file: !584, line: 212, baseType: !164, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3268, file: !584, line: 213, baseType: !164, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3268, file: !584, line: 214, baseType: !978, size: 64, offset: 1024)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3261, file: !584, line: 223, baseType: !3284, size: 64, offset: 64)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = !DISubroutineType(types: !3286)
!3286 = !{null, !3267}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3261, file: !584, line: 236, baseType: !3288, size: 64, offset: 128)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = !DISubroutineType(types: !3290)
!3290 = !{!137, !679, !131}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3261, file: !584, line: 238, baseType: !3292, size: 64, offset: 192)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{!131, !679, !2844}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3261, file: !584, line: 239, baseType: !3296, size: 64, offset: 256)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = !DISubroutineType(types: !3298)
!3298 = !{!131, !679, !131, !2844}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3261, file: !584, line: 240, baseType: !3300, size: 64, offset: 320)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{null, !679, !131}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3261, file: !584, line: 242, baseType: !3304, size: 64, offset: 384)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DISubroutineType(types: !3306)
!3306 = !{!272, !3267, !241, !288, !496}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3261, file: !584, line: 252, baseType: !288, size: 64, offset: 448)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3261, file: !584, line: 259, baseType: !164, size: 8, offset: 512)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3261, file: !584, line: 260, baseType: !3304, size: 64, offset: 576)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3261, file: !584, line: 263, baseType: !3311, size: 64, offset: 640)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!2873, !3267, !2875}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3261, file: !584, line: 266, baseType: !3315, size: 64, offset: 704)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!137, !3267, !950}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3256, file: !584, line: 109, baseType: !3319, size: 64, offset: 64)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !584, line: 31, flags: DIFlagFwdDecl)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3256, file: !584, line: 110, baseType: !496, size: 64, offset: 128)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3256, file: !584, line: 111, baseType: !3192, size: 64, offset: 192)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3193, file: !584, line: 148, baseType: !131, size: 64, offset: 768)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3193, file: !584, line: 154, baseType: !388, size: 64, offset: 832)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3193, file: !584, line: 156, baseType: !283, size: 16, offset: 896)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3193, file: !584, line: 157, baseType: !282, size: 16, offset: 912)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3193, file: !584, line: 158, baseType: !3328, size: 64, offset: 960)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !584, line: 32, flags: DIFlagFwdDecl)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !180, file: !113, line: 71, baseType: !3331, size: 32, offset: 448)
!3331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3332, line: 19, size: 32, elements: !3333)
!3332 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3333 = !{!3334}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3331, file: !3332, line: 20, baseType: !1199, size: 32)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !180, file: !113, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !180, file: !113, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !180, file: !113, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !180, file: !113, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !180, file: !113, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !177, file: !73, line: 463, baseType: !3341, size: 64, offset: 512)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !177, file: !73, line: 465, baseType: !3343, size: 64, offset: 576)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !177, file: !73, line: 467, baseType: !183, size: 64, offset: 640)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !177, file: !73, line: 468, baseType: !3347, size: 64, offset: 704)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3349)
!3349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3350)
!3350 = !{!3351, !3352, !3353, !3357, !3362, !3366}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3349, file: !73, line: 88, baseType: !183, size: 64)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3349, file: !73, line: 89, baseType: !295, size: 64, offset: 64)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3349, file: !73, line: 90, baseType: !3354, size: 64, offset: 128)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{!137, !3341, !236}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3349, file: !73, line: 91, baseType: !3358, size: 64, offset: 192)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!241, !3341, !3361, !3189, !3190}
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3349, file: !73, line: 93, baseType: !3363, size: 64, offset: 256)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{null, !3341}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3349, file: !73, line: 95, baseType: !3367, size: 64, offset: 320)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3369)
!3369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3370)
!3370 = !{!3371, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3369, file: !80, line: 279, baseType: !3372, size: 64)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!137, !3341}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3369, file: !80, line: 280, baseType: !3363, size: 64, offset: 64)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3369, file: !80, line: 281, baseType: !3372, size: 64, offset: 128)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3369, file: !80, line: 282, baseType: !3372, size: 64, offset: 192)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3369, file: !80, line: 283, baseType: !3372, size: 64, offset: 256)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3369, file: !80, line: 284, baseType: !3372, size: 64, offset: 320)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3369, file: !80, line: 285, baseType: !3372, size: 64, offset: 384)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3369, file: !80, line: 286, baseType: !3372, size: 64, offset: 448)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3369, file: !80, line: 287, baseType: !3372, size: 64, offset: 512)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3369, file: !80, line: 288, baseType: !3372, size: 64, offset: 576)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3369, file: !80, line: 289, baseType: !3372, size: 64, offset: 640)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3369, file: !80, line: 290, baseType: !3372, size: 64, offset: 704)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3369, file: !80, line: 291, baseType: !3372, size: 64, offset: 768)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3369, file: !80, line: 292, baseType: !3372, size: 64, offset: 832)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3369, file: !80, line: 293, baseType: !3372, size: 64, offset: 896)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3369, file: !80, line: 294, baseType: !3372, size: 64, offset: 960)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3369, file: !80, line: 295, baseType: !3372, size: 64, offset: 1024)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3369, file: !80, line: 296, baseType: !3372, size: 64, offset: 1088)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3369, file: !80, line: 297, baseType: !3372, size: 64, offset: 1152)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3369, file: !80, line: 298, baseType: !3372, size: 64, offset: 1216)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3369, file: !80, line: 299, baseType: !3372, size: 64, offset: 1280)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3369, file: !80, line: 300, baseType: !3372, size: 64, offset: 1344)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3369, file: !80, line: 301, baseType: !3372, size: 64, offset: 1408)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !177, file: !73, line: 470, baseType: !3398, size: 64, offset: 768)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3400, line: 82, size: 1408, elements: !3401)
!3400 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3401 = !{!3402, !3403, !3404, !3405, !3406, !3407, !3408, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3483, !3486, !3487}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3399, file: !3400, line: 83, baseType: !183, size: 64)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3399, file: !3400, line: 84, baseType: !183, size: 64, offset: 64)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3399, file: !3400, line: 85, baseType: !3341, size: 64, offset: 128)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3399, file: !3400, line: 86, baseType: !295, size: 64, offset: 192)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3399, file: !3400, line: 87, baseType: !295, size: 64, offset: 256)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3399, file: !3400, line: 88, baseType: !295, size: 64, offset: 320)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3399, file: !3400, line: 90, baseType: !3409, size: 64, offset: 384)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = !DISubroutineType(types: !3411)
!3411 = !{!137, !3341, !3412}
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3414)
!3414 = !{!3415, !3416, !3417, !3418, !3419, !3420, !3421, !3434, !3447, !3448, !3449, !3450, !3451, !3459, !3460, !3461, !3462, !3463, !3464}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3413, file: !67, line: 96, baseType: !183, size: 64)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3413, file: !67, line: 97, baseType: !3398, size: 64, offset: 64)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3413, file: !67, line: 99, baseType: !598, size: 64, offset: 128)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3413, file: !67, line: 100, baseType: !183, size: 64, offset: 192)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3413, file: !67, line: 102, baseType: !164, size: 8, offset: 256)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3413, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3413, file: !67, line: 105, baseType: !3422, size: 64, offset: 320)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3424)
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3425, line: 262, size: 1600, elements: !3426)
!3425 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3426 = !{!3427, !3428, !3429, !3433}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3424, file: !3425, line: 263, baseType: !2668, size: 256)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3424, file: !3425, line: 264, baseType: !2668, size: 256, offset: 256)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3424, file: !3425, line: 265, baseType: !3430, size: 1024, offset: 512)
!3430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 1024, elements: !3431)
!3431 = !{!3432}
!3432 = !DISubrange(count: 128)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3424, file: !3425, line: 266, baseType: !173, size: 64, offset: 1536)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3413, file: !67, line: 106, baseType: !3435, size: 64, offset: 384)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3437)
!3437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3425, line: 210, size: 256, elements: !3438)
!3438 = !{!3439, !3443, !3445, !3446}
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3437, file: !3425, line: 211, baseType: !3440, size: 72)
!3440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1322, size: 72, elements: !3441)
!3441 = !{!3442}
!3442 = !DISubrange(count: 9)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3437, file: !3425, line: 212, baseType: !3444, size: 64, offset: 128)
!3444 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3425, line: 14, baseType: !291)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3437, file: !3425, line: 213, baseType: !384, size: 32, offset: 192)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3437, file: !3425, line: 214, baseType: !384, size: 32, offset: 224)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3413, file: !67, line: 108, baseType: !3372, size: 64, offset: 448)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3413, file: !67, line: 109, baseType: !3363, size: 64, offset: 512)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3413, file: !67, line: 110, baseType: !3372, size: 64, offset: 576)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3413, file: !67, line: 111, baseType: !3363, size: 64, offset: 640)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3413, file: !67, line: 112, baseType: !3452, size: 64, offset: 704)
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{!137, !3341, !3455}
!3455 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3456)
!3456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3457)
!3457 = !{!3458}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3456, file: !80, line: 51, baseType: !137, size: 32)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3413, file: !67, line: 113, baseType: !3372, size: 64, offset: 768)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3413, file: !67, line: 114, baseType: !295, size: 64, offset: 832)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3413, file: !67, line: 115, baseType: !295, size: 64, offset: 896)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3413, file: !67, line: 117, baseType: !3367, size: 64, offset: 960)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3413, file: !67, line: 118, baseType: !3363, size: 64, offset: 1024)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3413, file: !67, line: 120, baseType: !3465, size: 64, offset: 1088)
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3466 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3399, file: !3400, line: 91, baseType: !3354, size: 64, offset: 448)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3399, file: !3400, line: 92, baseType: !3372, size: 64, offset: 512)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3399, file: !3400, line: 93, baseType: !3363, size: 64, offset: 576)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3399, file: !3400, line: 94, baseType: !3372, size: 64, offset: 640)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3399, file: !3400, line: 95, baseType: !3363, size: 64, offset: 704)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3399, file: !3400, line: 97, baseType: !3372, size: 64, offset: 768)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3399, file: !3400, line: 98, baseType: !3372, size: 64, offset: 832)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3399, file: !3400, line: 100, baseType: !3452, size: 64, offset: 896)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3399, file: !3400, line: 101, baseType: !3372, size: 64, offset: 960)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3399, file: !3400, line: 103, baseType: !3372, size: 64, offset: 1024)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3399, file: !3400, line: 105, baseType: !3372, size: 64, offset: 1088)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3399, file: !3400, line: 107, baseType: !3367, size: 64, offset: 1152)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3399, file: !3400, line: 109, baseType: !3480, size: 64, offset: 1216)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3482)
!3482 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3400, line: 109, flags: DIFlagFwdDecl)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3399, file: !3400, line: 111, baseType: !3484, size: 64, offset: 1280)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3400, line: 111, flags: DIFlagFwdDecl)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3399, file: !3400, line: 112, baseType: !613, offset: 1344)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3399, file: !3400, line: 114, baseType: !164, size: 8, offset: 1344)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !177, file: !73, line: 471, baseType: !3412, size: 64, offset: 832)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !177, file: !73, line: 473, baseType: !131, size: 64, offset: 896)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !177, file: !73, line: 475, baseType: !131, size: 64, offset: 960)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !177, file: !73, line: 480, baseType: !1142, size: 192, offset: 1024)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !177, file: !73, line: 484, baseType: !3493, size: 576, offset: 1216)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3494)
!3494 = !{!3495, !3496, !3497, !3498, !3499, !3500}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3493, file: !73, line: 362, baseType: !187, size: 128)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3493, file: !73, line: 363, baseType: !187, size: 128, offset: 128)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3493, file: !73, line: 364, baseType: !187, size: 128, offset: 256)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3493, file: !73, line: 365, baseType: !187, size: 128, offset: 384)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3493, file: !73, line: 366, baseType: !164, size: 8, offset: 512)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3493, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !177, file: !73, line: 485, baseType: !3502, size: 2304, offset: 1792)
!3502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3503)
!3503 = !{!3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3599, !3603}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3502, file: !80, line: 566, baseType: !3455, size: 32)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3502, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3502, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3502, file: !80, line: 569, baseType: !164, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3502, file: !80, line: 570, baseType: !164, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3502, file: !80, line: 571, baseType: !164, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3502, file: !80, line: 572, baseType: !164, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3502, file: !80, line: 573, baseType: !164, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3502, file: !80, line: 574, baseType: !164, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3502, file: !80, line: 575, baseType: !164, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3502, file: !80, line: 576, baseType: !164, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3502, file: !80, line: 577, baseType: !382, size: 32, offset: 64)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3502, file: !80, line: 578, baseType: !200, offset: 96)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3502, file: !80, line: 580, baseType: !187, size: 128, offset: 128)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3502, file: !80, line: 581, baseType: !1471, size: 192, offset: 256)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3502, file: !80, line: 582, baseType: !3520, size: 64, offset: 448)
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3522, line: 43, size: 1472, elements: !3523)
!3522 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3523 = !{!3524, !3525, !3526, !3527, !3528, !3531, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3521, file: !3522, line: 44, baseType: !183, size: 64)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3521, file: !3522, line: 45, baseType: !137, size: 32, offset: 64)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3521, file: !3522, line: 46, baseType: !187, size: 128, offset: 128)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3521, file: !3522, line: 47, baseType: !200, offset: 256)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3521, file: !3522, line: 48, baseType: !3529, size: 64, offset: 256)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3521, file: !3522, line: 49, baseType: !3532, size: 320, offset: 320)
!3532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3533, line: 11, size: 320, elements: !3534)
!3533 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3534 = !{!3535, !3536, !3537, !3542}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3532, file: !3533, line: 16, baseType: !607, size: 128)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3532, file: !3533, line: 17, baseType: !291, size: 64, offset: 128)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3532, file: !3533, line: 18, baseType: !3538, size: 64, offset: 192)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = !DISubroutineType(types: !3540)
!3540 = !{null, !3541}
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3532, file: !3533, line: 19, baseType: !382, size: 32, offset: 256)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3521, file: !3522, line: 50, baseType: !291, size: 64, offset: 640)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3521, file: !3522, line: 51, baseType: !1269, size: 64, offset: 704)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3521, file: !3522, line: 52, baseType: !1269, size: 64, offset: 768)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3521, file: !3522, line: 53, baseType: !1269, size: 64, offset: 832)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3521, file: !3522, line: 54, baseType: !1269, size: 64, offset: 896)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3521, file: !3522, line: 55, baseType: !1269, size: 64, offset: 960)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3521, file: !3522, line: 56, baseType: !291, size: 64, offset: 1024)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3521, file: !3522, line: 57, baseType: !291, size: 64, offset: 1088)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3521, file: !3522, line: 58, baseType: !291, size: 64, offset: 1152)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3521, file: !3522, line: 59, baseType: !291, size: 64, offset: 1216)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3521, file: !3522, line: 60, baseType: !291, size: 64, offset: 1280)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3521, file: !3522, line: 61, baseType: !3341, size: 64, offset: 1344)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3521, file: !3522, line: 62, baseType: !164, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3521, file: !3522, line: 63, baseType: !164, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3502, file: !80, line: 583, baseType: !164, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3502, file: !80, line: 584, baseType: !164, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3502, file: !80, line: 585, baseType: !164, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3502, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3502, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3502, file: !80, line: 592, baseType: !1261, size: 512, offset: 576)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3502, file: !80, line: 593, baseType: !388, size: 64, offset: 1088)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3502, file: !80, line: 594, baseType: !1927, size: 256, offset: 1152)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3502, file: !80, line: 595, baseType: !1450, size: 128, offset: 1408)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3502, file: !80, line: 596, baseType: !3529, size: 64, offset: 1536)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3502, file: !80, line: 597, baseType: !716, size: 32, offset: 1600)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3502, file: !80, line: 598, baseType: !716, size: 32, offset: 1632)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3502, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3502, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3502, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3502, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3502, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3502, file: !80, line: 604, baseType: !164, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3502, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3502, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3502, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3502, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3502, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3502, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3502, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3502, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3502, file: !80, line: 613, baseType: !137, size: 32, offset: 1792)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3502, file: !80, line: 614, baseType: !137, size: 32, offset: 1824)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3502, file: !80, line: 615, baseType: !388, size: 64, offset: 1856)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3502, file: !80, line: 616, baseType: !388, size: 64, offset: 1920)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3502, file: !80, line: 617, baseType: !388, size: 64, offset: 1984)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3502, file: !80, line: 618, baseType: !388, size: 64, offset: 2048)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3502, file: !80, line: 620, baseType: !3590, size: 64, offset: 2112)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3592)
!3592 = !{!3593, !3594, !3595, !3596}
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3591, file: !80, line: 537, baseType: !200)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3591, file: !80, line: 538, baseType: !7, size: 32)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3591, file: !80, line: 540, baseType: !187, size: 128, offset: 64)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3591, file: !80, line: 543, baseType: !3597, size: 64, offset: 192)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3502, file: !80, line: 621, baseType: !3600, size: 64, offset: 2176)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = !DISubroutineType(types: !3602)
!3602 = !{null, !3341, !1413}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3502, file: !80, line: 622, baseType: !3604, size: 64, offset: 2240)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !177, file: !73, line: 486, baseType: !3607, size: 64, offset: 4096)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3609)
!3609 = !{!3610, !3611, !3612, !3616, !3617, !3618}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3608, file: !80, line: 643, baseType: !3369, size: 1472)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3608, file: !80, line: 644, baseType: !3372, size: 64, offset: 1472)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3608, file: !80, line: 645, baseType: !3613, size: 64, offset: 1536)
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3614 = !DISubroutineType(types: !3615)
!3615 = !{null, !3341, !164}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3608, file: !80, line: 646, baseType: !3372, size: 64, offset: 1600)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3608, file: !80, line: 647, baseType: !3363, size: 64, offset: 1664)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3608, file: !80, line: 648, baseType: !3363, size: 64, offset: 1728)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !177, file: !73, line: 493, baseType: !3620, size: 64, offset: 4160)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 64)
!3621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !94, line: 162, size: 1088, elements: !3622)
!3622 = !{!3623, !3624, !3625, !3709, !3710, !3711, !3712, !3713, !3714, !3717, !3718, !3719, !3720, !3721, !3722, !3723}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3621, file: !94, line: 163, baseType: !187, size: 128)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3621, file: !94, line: 164, baseType: !183, size: 64, offset: 128)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3621, file: !94, line: 165, baseType: !3626, size: 64, offset: 192)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3628)
!3628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !94, line: 105, size: 640, elements: !3629)
!3629 = !{!3630, !3659, !3670, !3675, !3679, !3686, !3690, !3694, !3701, !3705}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3628, file: !94, line: 106, baseType: !3631, size: 64)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = !DISubroutineType(types: !3633)
!3633 = !{!137, !3620, !3634, !93}
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3636, line: 51, size: 1344, elements: !3637)
!3636 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3637 = !{!3638, !3639, !3641, !3642, !3643, !3652, !3653, !3654, !3655, !3656, !3657, !3658}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3635, file: !3636, line: 52, baseType: !183, size: 64)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3635, file: !3636, line: 53, baseType: !3640, size: 32, offset: 64)
!3640 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3636, line: 28, baseType: !382)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3635, file: !3636, line: 54, baseType: !183, size: 64, offset: 128)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3635, file: !3636, line: 55, baseType: !142, size: 192, offset: 192)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3635, file: !3636, line: 57, baseType: !3644, size: 64, offset: 384)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3636, line: 31, size: 704, elements: !3646)
!3646 = !{!3647, !3648, !3649, !3650, !3651}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3645, file: !3636, line: 32, baseType: !241, size: 64)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3645, file: !3636, line: 33, baseType: !137, size: 32, offset: 64)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3645, file: !3636, line: 34, baseType: !131, size: 64, offset: 128)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3645, file: !3636, line: 35, baseType: !3644, size: 64, offset: 192)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3645, file: !3636, line: 43, baseType: !310, size: 448, offset: 256)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3635, file: !3636, line: 58, baseType: !3644, size: 64, offset: 448)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3635, file: !3636, line: 59, baseType: !3634, size: 64, offset: 512)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3635, file: !3636, line: 60, baseType: !3634, size: 64, offset: 576)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3635, file: !3636, line: 61, baseType: !3634, size: 64, offset: 640)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3635, file: !3636, line: 63, baseType: !180, size: 512, offset: 704)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3635, file: !3636, line: 65, baseType: !291, size: 64, offset: 1216)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3635, file: !3636, line: 66, baseType: !131, size: 64, offset: 1280)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3628, file: !94, line: 108, baseType: !3660, size: 64, offset: 64)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{!137, !3620, !3663, !93}
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !94, line: 63, size: 640, elements: !3665)
!3665 = !{!3666, !3667, !3668}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3664, file: !94, line: 64, baseType: !146, size: 64)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3664, file: !94, line: 65, baseType: !137, size: 32, offset: 64)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3664, file: !94, line: 66, baseType: !3669, size: 512, offset: 96)
!3669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 512, elements: !1704)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3628, file: !94, line: 110, baseType: !3671, size: 64, offset: 128)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = !DISubroutineType(types: !3673)
!3673 = !{!137, !3620, !7, !3674}
!3674 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !165, line: 164, baseType: !291)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3628, file: !94, line: 111, baseType: !3676, size: 64, offset: 192)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{null, !3620, !7}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3628, file: !94, line: 112, baseType: !3680, size: 64, offset: 256)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{!137, !3620, !3634, !3683, !7, !3685, !2651}
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !382)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3628, file: !94, line: 117, baseType: !3687, size: 64, offset: 320)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!137, !3620, !7, !7, !131}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3628, file: !94, line: 119, baseType: !3691, size: 64, offset: 384)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{null, !3620, !7, !7}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3628, file: !94, line: 121, baseType: !3695, size: 64, offset: 448)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{!137, !3620, !3698, !164}
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3700, line: 11, flags: DIFlagFwdDecl)
!3700 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3628, file: !94, line: 122, baseType: !3702, size: 64, offset: 512)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{null, !3620, !3698}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3628, file: !94, line: 123, baseType: !3706, size: 64, offset: 576)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!137, !3620, !3663, !3685, !2651}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3621, file: !94, line: 166, baseType: !131, size: 64, offset: 256)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3621, file: !94, line: 167, baseType: !7, size: 32, offset: 320)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3621, file: !94, line: 168, baseType: !7, size: 32, offset: 352)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3621, file: !94, line: 171, baseType: !146, size: 64, offset: 384)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3621, file: !94, line: 172, baseType: !93, size: 32, offset: 448)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3621, file: !94, line: 173, baseType: !3715, size: 64, offset: 512)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !94, line: 134, flags: DIFlagFwdDecl)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3621, file: !94, line: 175, baseType: !3620, size: 64, offset: 576)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3621, file: !94, line: 182, baseType: !3674, size: 64, offset: 640)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3621, file: !94, line: 183, baseType: !7, size: 32, offset: 704)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3621, file: !94, line: 184, baseType: !7, size: 32, offset: 736)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3621, file: !94, line: 185, baseType: !707, size: 128, offset: 768)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3621, file: !94, line: 186, baseType: !1142, size: 192, offset: 896)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3621, file: !94, line: 187, baseType: !3724, offset: 1088)
!3724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2299)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !177, file: !73, line: 499, baseType: !187, size: 128, offset: 4224)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !177, file: !73, line: 502, baseType: !3727, size: 64, offset: 4352)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3729)
!3729 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !177, file: !73, line: 504, baseType: !3731, size: 64, offset: 4416)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !177, file: !73, line: 505, baseType: !388, size: 64, offset: 4480)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !177, file: !73, line: 510, baseType: !388, size: 64, offset: 4544)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !177, file: !73, line: 511, baseType: !3735, size: 64, offset: 4608)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3737)
!3737 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !177, file: !73, line: 513, baseType: !3739, size: 64, offset: 4672)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3741)
!3741 = !{!3742, !3743}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3740, file: !73, line: 293, baseType: !7, size: 32)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3740, file: !73, line: 294, baseType: !291, size: 64, offset: 64)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !177, file: !73, line: 515, baseType: !187, size: 128, offset: 4736)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !177, file: !73, line: 526, baseType: !3746, offset: 4864)
!3746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3747, line: 5, elements: !214)
!3747 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !177, file: !73, line: 528, baseType: !3634, size: 64, offset: 4864)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !177, file: !73, line: 529, baseType: !146, size: 64, offset: 4928)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !177, file: !73, line: 534, baseType: !478, size: 32, offset: 4992)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !177, file: !73, line: 535, baseType: !382, size: 32, offset: 5024)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !177, file: !73, line: 537, baseType: !200, offset: 5056)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !177, file: !73, line: 538, baseType: !187, size: 128, offset: 5056)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !177, file: !73, line: 540, baseType: !3755, size: 64, offset: 5184)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3757, line: 54, size: 960, elements: !3758)
!3757 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3758 = !{!3759, !3760, !3761, !3762, !3763, !3764, !3765, !3769, !3773, !3774, !3775, !3776, !3780, !3784, !3785}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3756, file: !3757, line: 55, baseType: !183, size: 64)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3756, file: !3757, line: 56, baseType: !598, size: 64, offset: 64)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3756, file: !3757, line: 58, baseType: !295, size: 64, offset: 128)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3756, file: !3757, line: 59, baseType: !295, size: 64, offset: 192)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3756, file: !3757, line: 60, baseType: !193, size: 64, offset: 256)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3756, file: !3757, line: 62, baseType: !3354, size: 64, offset: 320)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3756, file: !3757, line: 63, baseType: !3766, size: 64, offset: 384)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{!241, !3341, !3361}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3756, file: !3757, line: 65, baseType: !3770, size: 64, offset: 448)
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3771 = !DISubroutineType(types: !3772)
!3772 = !{null, !3755}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3756, file: !3757, line: 66, baseType: !3363, size: 64, offset: 512)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3756, file: !3757, line: 68, baseType: !3372, size: 64, offset: 576)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3756, file: !3757, line: 70, baseType: !3157, size: 64, offset: 640)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3756, file: !3757, line: 71, baseType: !3777, size: 64, offset: 704)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!173, !3341}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3756, file: !3757, line: 73, baseType: !3781, size: 64, offset: 768)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{null, !3341, !3189, !3190}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3756, file: !3757, line: 75, baseType: !3367, size: 64, offset: 832)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3756, file: !3757, line: 77, baseType: !3484, size: 64, offset: 896)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !177, file: !73, line: 541, baseType: !295, size: 64, offset: 5248)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !177, file: !73, line: 543, baseType: !3363, size: 64, offset: 5312)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !177, file: !73, line: 544, baseType: !3789, size: 64, offset: 5376)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !177, file: !73, line: 545, baseType: !3792, size: 64, offset: 5440)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !177, file: !73, line: 547, baseType: !164, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !177, file: !73, line: 548, baseType: !164, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !177, file: !73, line: 549, baseType: !164, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !177, file: !73, line: 550, baseType: !164, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !150, file: !143, line: 116, baseType: !3799, size: 64, offset: 256)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!164, !167, !183}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !150, file: !143, line: 118, baseType: !3803, size: 64, offset: 320)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!137, !167, !183, !7, !131, !288}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !150, file: !143, line: 123, baseType: !3807, size: 64, offset: 384)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{!137, !167, !183, !3810, !288}
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !150, file: !143, line: 126, baseType: !3812, size: 64, offset: 448)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!183, !167}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !150, file: !143, line: 127, baseType: !3812, size: 64, offset: 512)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !150, file: !143, line: 128, baseType: !3817, size: 64, offset: 576)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!146, !167}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !150, file: !143, line: 130, baseType: !3821, size: 64, offset: 640)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DISubroutineType(types: !3823)
!3823 = !{!146, !167, !146}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !150, file: !143, line: 133, baseType: !3825, size: 64, offset: 704)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = !DISubroutineType(types: !3827)
!3827 = !{!146, !167, !183}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !150, file: !143, line: 135, baseType: !3829, size: 64, offset: 768)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{!137, !167, !183, !183, !7, !7, !3832}
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !143, line: 43, size: 640, elements: !3834)
!3834 = !{!3835, !3836, !3837}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3833, file: !143, line: 44, baseType: !146, size: 64)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3833, file: !143, line: 45, baseType: !7, size: 32, offset: 64)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3833, file: !143, line: 46, baseType: !3838, size: 512, offset: 128)
!3838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 512, elements: !1299)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !150, file: !143, line: 140, baseType: !3821, size: 64, offset: 832)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !150, file: !143, line: 143, baseType: !3817, size: 64, offset: 896)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !150, file: !143, line: 145, baseType: !153, size: 64, offset: 960)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !150, file: !143, line: 146, baseType: !3843, size: 64, offset: 1024)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = !DISubroutineType(types: !3845)
!3845 = !{!137, !167, !3846}
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !143, line: 29, size: 128, elements: !3848)
!3848 = !{!3849, !3850, !3851}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3847, file: !143, line: 30, baseType: !7, size: 32)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3847, file: !143, line: 31, baseType: !7, size: 32, offset: 32)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3847, file: !143, line: 32, baseType: !167, size: 64, offset: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !150, file: !143, line: 148, baseType: !3853, size: 64, offset: 1088)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{!137, !167, !3341}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !142, file: !143, line: 20, baseType: !3341, size: 64, offset: 128)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !133, file: !134, line: 355, baseType: !132, size: 64, offset: 320)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !133, file: !134, line: 356, baseType: !187, size: 128, offset: 384)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !133, file: !134, line: 357, baseType: !187, size: 128, offset: 512)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !133, file: !134, line: 358, baseType: !187, size: 128, offset: 640)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !133, file: !134, line: 359, baseType: !187, size: 128, offset: 768)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !133, file: !134, line: 360, baseType: !3863, size: 32, offset: 896)
!3863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !134, line: 179, size: 32, elements: !3864)
!3864 = !{!3865, !3866, !3867, !3868, !3869, !3870}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !3863, file: !134, line: 180, baseType: !382, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3863, file: !134, line: 181, baseType: !382, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !3863, file: !134, line: 182, baseType: !382, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !3863, file: !134, line: 183, baseType: !382, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !3863, file: !134, line: 184, baseType: !382, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3863, file: !134, line: 185, baseType: !382, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !133, file: !134, line: 361, baseType: !3872, size: 32, offset: 928)
!3872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !134, line: 190, size: 32, elements: !3873)
!3873 = !{!3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !3872, file: !134, line: 191, baseType: !382, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !3872, file: !134, line: 192, baseType: !382, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !3872, file: !134, line: 193, baseType: !382, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !3872, file: !134, line: 194, baseType: !382, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !3872, file: !134, line: 195, baseType: !382, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !3872, file: !134, line: 196, baseType: !382, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !3872, file: !134, line: 197, baseType: !382, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !3872, file: !134, line: 198, baseType: !382, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !3872, file: !134, line: 199, baseType: !382, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !3872, file: !134, line: 200, baseType: !382, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !3872, file: !134, line: 201, baseType: !382, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !3872, file: !134, line: 202, baseType: !382, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !3872, file: !134, line: 203, baseType: !382, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3872, file: !134, line: 204, baseType: !382, size: 19, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !133, file: !134, line: 362, baseType: !3889, size: 960, offset: 960)
!3889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !134, line: 234, size: 960, elements: !3890)
!3890 = !{!3891, !3893, !3900, !3902, !3903, !3904, !3909, !3912}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !3889, file: !134, line: 235, baseType: !3892, size: 64)
!3892 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !134, line: 217, baseType: !2002)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3889, file: !134, line: 236, baseType: !3894, size: 32, offset: 64)
!3894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !134, line: 227, size: 32, elements: !3895)
!3895 = !{!3896, !3897, !3898, !3899}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !3894, file: !134, line: 228, baseType: !382, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !3894, file: !134, line: 229, baseType: !382, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !3894, file: !134, line: 230, baseType: !382, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3894, file: !134, line: 231, baseType: !382, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !3889, file: !134, line: 237, baseType: !3901, size: 64, offset: 128)
!3901 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !134, line: 218, baseType: !388)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !3889, file: !134, line: 238, baseType: !241, size: 64, offset: 192)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !3889, file: !134, line: 239, baseType: !187, size: 128, offset: 256)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !3889, file: !134, line: 240, baseType: !3905, size: 320, offset: 384)
!3905 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !134, line: 219, baseType: !3906)
!3906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 320, elements: !3907)
!3907 = !{!3908}
!3908 = !DISubrange(count: 40)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !3889, file: !134, line: 241, baseType: !3910, size: 160, offset: 704)
!3910 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !134, line: 220, baseType: !3911)
!3911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 160, elements: !2169)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !3889, file: !134, line: 242, baseType: !3913, size: 64, offset: 896)
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !140, line: 899, size: 192, elements: !3915)
!3915 = !{!3916, !3918, !3923, !3929, !3936, !3942, !3948, !3956}
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3914, file: !140, line: 900, baseType: !3917, size: 32)
!3917 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !140, line: 635, baseType: !382)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !3914, file: !140, line: 904, baseType: !3919, size: 128)
!3919 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3914, file: !140, line: 901, size: 128, elements: !3920)
!3920 = !{!3921, !3922}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3919, file: !140, line: 902, baseType: !3917, size: 32)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3919, file: !140, line: 903, baseType: !388, size: 64, offset: 64)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3914, file: !140, line: 910, baseType: !3924, size: 128)
!3924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3914, file: !140, line: 906, size: 128, elements: !3925)
!3925 = !{!3926, !3927, !3928}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3924, file: !140, line: 907, baseType: !3917, size: 32)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3924, file: !140, line: 908, baseType: !382, size: 32, offset: 32)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !3924, file: !140, line: 909, baseType: !241, size: 64, offset: 64)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3914, file: !140, line: 916, baseType: !3930, size: 128)
!3930 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3914, file: !140, line: 912, size: 128, elements: !3931)
!3931 = !{!3932, !3933, !3934}
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3930, file: !140, line: 913, baseType: !3917, size: 32)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3930, file: !140, line: 914, baseType: !382, size: 32, offset: 32)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !3930, file: !140, line: 915, baseType: !3935, size: 64, offset: 64)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !3914, file: !140, line: 922, baseType: !3937, size: 128)
!3937 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3914, file: !140, line: 918, size: 128, elements: !3938)
!3938 = !{!3939, !3940, !3941}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3937, file: !140, line: 919, baseType: !3917, size: 32)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3937, file: !140, line: 920, baseType: !382, size: 32, offset: 32)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !3937, file: !140, line: 921, baseType: !3913, size: 64, offset: 64)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !3914, file: !140, line: 928, baseType: !3943, size: 128)
!3943 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3914, file: !140, line: 924, size: 128, elements: !3944)
!3944 = !{!3945, !3946, !3947}
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3943, file: !140, line: 925, baseType: !3917, size: 32)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !3943, file: !140, line: 926, baseType: !3917, size: 32, offset: 32)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !3943, file: !140, line: 927, baseType: !139, size: 64, offset: 64)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !3914, file: !140, line: 935, baseType: !3949, size: 192)
!3949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3914, file: !140, line: 930, size: 192, elements: !3950)
!3950 = !{!3951, !3952, !3953, !3955}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3949, file: !140, line: 931, baseType: !3917, size: 32)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !3949, file: !140, line: 932, baseType: !382, size: 32, offset: 32)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !3949, file: !140, line: 933, baseType: !3954, size: 64, offset: 64)
!3954 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !140, line: 128, baseType: !388)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !3949, file: !140, line: 934, baseType: !382, size: 32, offset: 128)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !3914, file: !140, line: 941, baseType: !3957, size: 96)
!3957 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3914, file: !140, line: 937, size: 96, elements: !3958)
!3958 = !{!3959, !3960, !3961}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3957, file: !140, line: 938, baseType: !3917, size: 32)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !3957, file: !140, line: 939, baseType: !382, size: 32, offset: 32)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !3957, file: !140, line: 940, baseType: !382, size: 32, offset: 64)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !133, file: !134, line: 363, baseType: !3963, size: 1344, offset: 1920)
!3963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !134, line: 275, size: 1344, elements: !3964)
!3964 = !{!3965, !3966, !3976}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3963, file: !134, line: 276, baseType: !137, size: 32)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3963, file: !134, line: 277, baseType: !3967, size: 32, offset: 32)
!3967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !134, line: 254, size: 32, elements: !3968)
!3968 = !{!3969, !3970, !3971, !3972, !3973, !3974, !3975}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !3967, file: !134, line: 255, baseType: !382, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !3967, file: !134, line: 256, baseType: !382, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !3967, file: !134, line: 257, baseType: !382, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !3967, file: !134, line: 258, baseType: !382, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !3967, file: !134, line: 259, baseType: !382, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !3967, file: !134, line: 260, baseType: !382, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3967, file: !134, line: 261, baseType: !382, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !3963, file: !134, line: 278, baseType: !3977, size: 1280, offset: 64)
!3977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3978, size: 1280, elements: !3989)
!3978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !134, line: 264, size: 256, elements: !3979)
!3979 = !{!3980, !3986, !3987, !3988}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3978, file: !134, line: 269, baseType: !3981, size: 8)
!3981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3978, file: !134, line: 265, size: 8, elements: !3982)
!3982 = !{!3983, !3984, !3985}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !3981, file: !134, line: 266, baseType: !1321, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !3981, file: !134, line: 267, baseType: !1321, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3981, file: !134, line: 268, baseType: !1321, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3978, file: !134, line: 270, baseType: !137, size: 32, offset: 32)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !3978, file: !134, line: 271, baseType: !137, size: 32, offset: 64)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !3978, file: !134, line: 272, baseType: !187, size: 128, offset: 128)
!3989 = !{!3990}
!3990 = !DISubrange(count: 5)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !133, file: !134, line: 364, baseType: !3992, size: 640, offset: 3264)
!3992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !134, line: 315, size: 640, elements: !3993)
!3993 = !{!3994, !3995, !3996, !3997, !3998, !4003, !4012, !4013, !4014}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !3992, file: !134, line: 316, baseType: !139, size: 64)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !3992, file: !134, line: 317, baseType: !388, size: 64, offset: 64)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !3992, file: !134, line: 318, baseType: !388, size: 64, offset: 128)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !3992, file: !134, line: 319, baseType: !187, size: 128, offset: 192)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3992, file: !134, line: 320, baseType: !3999, size: 8, offset: 320)
!3999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !134, line: 305, size: 8, elements: !4000)
!4000 = !{!4001, !4002}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !3999, file: !134, line: 306, baseType: !1321, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !3999, file: !134, line: 307, baseType: !1321, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !3992, file: !134, line: 321, baseType: !4004, size: 128, offset: 384)
!4004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !134, line: 310, size: 128, elements: !4005)
!4005 = !{!4006, !4011}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4004, file: !134, line: 311, baseType: !4007, size: 64)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = !DISubroutineType(types: !4009)
!4009 = !{null, !4010}
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4004, file: !134, line: 312, baseType: !3341, size: 64, offset: 64)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !3992, file: !134, line: 322, baseType: !3520, size: 64, offset: 512)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !3992, file: !134, line: 323, baseType: !137, size: 32, offset: 576)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !3992, file: !134, line: 324, baseType: !137, size: 32, offset: 608)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !133, file: !134, line: 365, baseType: !4016, size: 192, offset: 3904)
!4016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !134, line: 297, size: 192, elements: !4017)
!4017 = !{!4018, !4019, !4023, !4024}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4016, file: !134, line: 298, baseType: !137, size: 32)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4016, file: !134, line: 299, baseType: !4020, size: 8, offset: 32)
!4020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !134, line: 283, size: 8, elements: !4021)
!4021 = !{!4022}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4020, file: !134, line: 284, baseType: !1321, size: 8, flags: DIFlagBitField, extraData: i64 0)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !4016, file: !134, line: 300, baseType: !137, size: 32, offset: 64)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !4016, file: !134, line: 301, baseType: !4025, size: 64, offset: 128)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !134, line: 287, size: 64, elements: !4027)
!4027 = !{!4028, !4033, !4034, !4035}
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4026, file: !134, line: 291, baseType: !4029, size: 8)
!4029 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4026, file: !134, line: 288, size: 8, elements: !4030)
!4030 = !{!4031, !4032}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !4029, file: !134, line: 289, baseType: !1321, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4029, file: !134, line: 290, baseType: !1321, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4026, file: !134, line: 292, baseType: !1321, size: 8, offset: 8)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !4026, file: !134, line: 293, baseType: !1321, size: 8, offset: 16)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !4026, file: !134, line: 294, baseType: !137, size: 32, offset: 32)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !133, file: !134, line: 366, baseType: !4037, size: 64, offset: 4096)
!4037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !134, line: 209, size: 64, elements: !4038)
!4038 = !{!4039}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4037, file: !134, line: 210, baseType: !4040, size: 64)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !134, line: 84, flags: DIFlagFwdDecl)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !133, file: !134, line: 367, baseType: !4043, size: 384, offset: 4160)
!4043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !134, line: 341, size: 384, elements: !4044)
!4044 = !{!4045, !4048, !4049, !4050}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !4043, file: !134, line: 342, baseType: !4046, size: 64)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3914)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4043, file: !134, line: 343, baseType: !187, size: 128, offset: 64)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !4043, file: !134, line: 344, baseType: !4046, size: 64, offset: 192)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !4043, file: !134, line: 345, baseType: !187, size: 128, offset: 256)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !133, file: !134, line: 368, baseType: !4052, size: 64, offset: 4544)
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !134, line: 122, size: 1216, elements: !4054)
!4054 = !{!4055, !4056, !4057, !4062, !4066, !4070, !4071, !4072}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !4053, file: !134, line: 123, baseType: !3435, size: 64)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !4053, file: !134, line: 124, baseType: !187, size: 128, offset: 64)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4053, file: !134, line: 125, baseType: !4058, size: 64, offset: 192)
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4059 = !DISubroutineType(types: !4060)
!4060 = !{!164, !183, !4061}
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !4053, file: !134, line: 126, baseType: !4063, size: 64, offset: 256)
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = !DISubroutineType(types: !4065)
!4065 = !{!137, !132, !3435}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4053, file: !134, line: 127, baseType: !4067, size: 64, offset: 320)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = !DISubroutineType(types: !4069)
!4069 = !{null, !132}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !4053, file: !134, line: 128, baseType: !3363, size: 64, offset: 384)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !4053, file: !134, line: 129, baseType: !3363, size: 64, offset: 448)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4053, file: !134, line: 130, baseType: !4073, size: 704, offset: 512)
!4073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !134, line: 108, size: 704, elements: !4074)
!4074 = !{!4075, !4076, !4080, !4081, !4082}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4073, file: !134, line: 109, baseType: !180, size: 512)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !4073, file: !134, line: 110, baseType: !4077, size: 64, offset: 512)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4078 = !DISubroutineType(types: !4079)
!4079 = !{!137, !132}
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !4073, file: !134, line: 111, baseType: !4067, size: 64, offset: 576)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4073, file: !134, line: 112, baseType: !164, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !4073, file: !134, line: 113, baseType: !164, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !133, file: !134, line: 369, baseType: !4084, size: 64, offset: 4608)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !134, line: 138, size: 256, elements: !4086)
!4086 = !{!4087, !4088, !4092, !4096}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4085, file: !134, line: 139, baseType: !132, size: 64)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !4085, file: !134, line: 140, baseType: !4089, size: 64, offset: 64)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = !DISubroutineType(types: !4091)
!4091 = !{!137, !132, !382}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4085, file: !134, line: 141, baseType: !4093, size: 64, offset: 128)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DISubroutineType(types: !4095)
!4095 = !{null, !132, !382}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !4085, file: !134, line: 142, baseType: !4067, size: 64, offset: 192)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !133, file: !134, line: 370, baseType: !4098, size: 64, offset: 4672)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_driver", file: !134, line: 162, size: 2816, elements: !4100)
!4100 = !{!4101, !4105, !4106, !4107, !4108, !4117, !4118}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4099, file: !134, line: 163, baseType: !4102, size: 640)
!4102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 640, elements: !4103)
!4103 = !{!4104}
!4104 = !DISubrange(count: 80)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4099, file: !134, line: 164, baseType: !4102, size: 640, offset: 640)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !4099, file: !134, line: 165, baseType: !3435, size: 64, offset: 1280)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4099, file: !134, line: 166, baseType: !7, size: 32, offset: 1344)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4099, file: !134, line: 167, baseType: !4109, size: 192, offset: 1408)
!4109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_ops", file: !134, line: 154, size: 192, elements: !4110)
!4110 = !{!4111, !4113, !4115}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !4109, file: !134, line: 155, baseType: !4112, size: 64)
!4112 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_add", file: !134, line: 150, baseType: !4077)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4109, file: !134, line: 156, baseType: !4114, size: 64, offset: 64)
!4114 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_remove", file: !134, line: 151, baseType: !4077)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !4109, file: !134, line: 157, baseType: !4116, size: 64, offset: 128)
!4116 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_notify", file: !134, line: 152, baseType: !4093)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !4099, file: !134, line: 168, baseType: !3413, size: 1152, offset: 1600)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4099, file: !134, line: 169, baseType: !598, size: 64, offset: 2752)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !133, file: !134, line: 371, baseType: !4120, size: 64, offset: 4736)
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4122)
!4122 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !134, line: 348, flags: DIFlagFwdDecl)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !133, file: !134, line: 372, baseType: !131, size: 64, offset: 4800)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !133, file: !134, line: 373, baseType: !177, size: 5568, offset: 4864)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !133, file: !134, line: 374, baseType: !7, size: 32, offset: 10432)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !133, file: !134, line: 375, baseType: !7, size: 32, offset: 10464)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !133, file: !134, line: 376, baseType: !187, size: 128, offset: 10496)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !133, file: !134, line: 377, baseType: !1142, size: 192, offset: 10624)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !133, file: !134, line: 378, baseType: !4067, size: 64, offset: 10816)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_physical_node", file: !134, line: 327, size: 320, elements: !4132)
!4132 = !{!4133, !4134, !4135, !4136}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4131, file: !134, line: 328, baseType: !7, size: 32)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4131, file: !134, line: 329, baseType: !187, size: 128, offset: 64)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4131, file: !134, line: 330, baseType: !3341, size: 64, offset: 192)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "put_online", scope: !4131, file: !134, line: 331, baseType: !164, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !190)
!4139 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !140, line: 421, baseType: !382)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4138)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_bus_type", file: !134, line: 561, size: 448, elements: !4144)
!4144 = !{!4145, !4146, !4147, !4151, !4155, !4156}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4143, file: !134, line: 562, baseType: !187, size: 128)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4143, file: !134, line: 563, baseType: !183, size: 64, offset: 128)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4143, file: !134, line: 564, baseType: !4148, size: 64, offset: 192)
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4149 = !DISubroutineType(types: !4150)
!4150 = !{!164, !3341}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "find_companion", scope: !4143, file: !134, line: 565, baseType: !4152, size: 64, offset: 256)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DISubroutineType(types: !4154)
!4154 = !{!132, !3341}
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !4143, file: !134, line: 566, baseType: !3363, size: 64, offset: 320)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !4143, file: !134, line: 567, baseType: !3363, size: 64, offset: 384)
!4157 = !{!0, !4158}
!4158 = !DIGlobalVariableExpression(var: !4159, expr: !DIExpression())
!4159 = distinct !DIGlobalVariable(name: "bus_type_list", scope: !2, file: !3, line: 33, type: !187, isLocal: true, isDefinition: true)
!4160 = !{i32 7, !"Dwarf Version", i32 4}
!4161 = !{i32 2, !"Debug Info Version", i32 3}
!4162 = !{i32 1, !"wchar_size", i32 2}
!4163 = !{i32 1, !"Code Model", i32 2}
!4164 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4165 = distinct !DISubprogram(name: "register_acpi_bus_type", scope: !3, file: !3, line: 39, type: !4166, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !214)
!4166 = !DISubroutineType(types: !4167)
!4167 = !{!137, !4142}
!4168 = !DILocalVariable(name: "type", arg: 1, scope: !4165, file: !3, line: 39, type: !4142)
!4169 = !DILocation(line: 39, column: 50, scope: !4165)
!4170 = !DILocation(line: 41, column: 6, scope: !4171)
!4171 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 41, column: 6)
!4172 = !DILocation(line: 41, column: 6, scope: !4165)
!4173 = !DILocation(line: 42, column: 3, scope: !4171)
!4174 = !DILocation(line: 43, column: 6, scope: !4175)
!4175 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 43, column: 6)
!4176 = !DILocation(line: 43, column: 11, scope: !4175)
!4177 = !DILocation(line: 43, column: 14, scope: !4175)
!4178 = !DILocation(line: 43, column: 20, scope: !4175)
!4179 = !DILocation(line: 43, column: 26, scope: !4175)
!4180 = !DILocation(line: 43, column: 29, scope: !4175)
!4181 = !DILocation(line: 43, column: 35, scope: !4175)
!4182 = !DILocation(line: 43, column: 6, scope: !4165)
!4183 = !DILocation(line: 44, column: 3, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !4175, file: !3, line: 43, column: 51)
!4185 = !DILocation(line: 45, column: 18, scope: !4184)
!4186 = !DILocation(line: 45, column: 24, scope: !4184)
!4187 = !DILocation(line: 45, column: 3, scope: !4184)
!4188 = !DILocation(line: 46, column: 3, scope: !4184)
!4189 = !DILocation(line: 47, column: 55, scope: !4184)
!4190 = !DILocation(line: 47, column: 61, scope: !4184)
!4191 = !DILocation(line: 47, column: 3, scope: !4184)
!4192 = !DILocation(line: 48, column: 3, scope: !4184)
!4193 = !DILocation(line: 50, column: 2, scope: !4165)
!4194 = !DILocation(line: 51, column: 1, scope: !4165)
!4195 = distinct !DISubprogram(name: "list_add_tail", scope: !4196, file: !4196, line: 98, type: !4197, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !214)
!4196 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!4197 = !DISubroutineType(types: !4198)
!4198 = !{null, !190, !190}
!4199 = !DILocalVariable(name: "new", arg: 1, scope: !4195, file: !4196, line: 98, type: !190)
!4200 = !DILocation(line: 98, column: 52, scope: !4195)
!4201 = !DILocalVariable(name: "head", arg: 2, scope: !4195, file: !4196, line: 98, type: !190)
!4202 = !DILocation(line: 98, column: 75, scope: !4195)
!4203 = !DILocation(line: 100, column: 13, scope: !4195)
!4204 = !DILocation(line: 100, column: 18, scope: !4195)
!4205 = !DILocation(line: 100, column: 24, scope: !4195)
!4206 = !DILocation(line: 100, column: 30, scope: !4195)
!4207 = !DILocation(line: 100, column: 2, scope: !4195)
!4208 = !DILocation(line: 101, column: 1, scope: !4195)
!4209 = distinct !DISubprogram(name: "unregister_acpi_bus_type", scope: !3, file: !3, line: 54, type: !4166, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !214)
!4210 = !DILocalVariable(name: "type", arg: 1, scope: !4209, file: !3, line: 54, type: !4142)
!4211 = !DILocation(line: 54, column: 52, scope: !4209)
!4212 = !DILocation(line: 56, column: 6, scope: !4213)
!4213 = distinct !DILexicalBlock(scope: !4209, file: !3, line: 56, column: 6)
!4214 = !DILocation(line: 56, column: 6, scope: !4209)
!4215 = !DILocation(line: 57, column: 3, scope: !4213)
!4216 = !DILocation(line: 58, column: 6, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !4209, file: !3, line: 58, column: 6)
!4218 = !DILocation(line: 58, column: 6, scope: !4209)
!4219 = !DILocation(line: 59, column: 3, scope: !4220)
!4220 = distinct !DILexicalBlock(scope: !4217, file: !3, line: 58, column: 12)
!4221 = !DILocation(line: 60, column: 18, scope: !4220)
!4222 = !DILocation(line: 60, column: 24, scope: !4220)
!4223 = !DILocation(line: 60, column: 3, scope: !4220)
!4224 = !DILocation(line: 61, column: 3, scope: !4220)
!4225 = !DILocation(line: 63, column: 10, scope: !4220)
!4226 = !DILocation(line: 63, column: 16, scope: !4220)
!4227 = !DILocation(line: 62, column: 3, scope: !4220)
!4228 = !DILocation(line: 64, column: 3, scope: !4220)
!4229 = !DILocation(line: 66, column: 2, scope: !4209)
!4230 = !DILocation(line: 67, column: 1, scope: !4209)
!4231 = distinct !DISubprogram(name: "list_del_init", scope: !4196, file: !4196, line: 202, type: !4232, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !214)
!4232 = !DISubroutineType(types: !4233)
!4233 = !{null, !190}
!4234 = !DILocalVariable(name: "entry", arg: 1, scope: !4231, file: !4196, line: 202, type: !190)
!4235 = !DILocation(line: 202, column: 52, scope: !4231)
!4236 = !DILocation(line: 204, column: 19, scope: !4231)
!4237 = !DILocation(line: 204, column: 2, scope: !4231)
!4238 = !DILocation(line: 205, column: 17, scope: !4231)
!4239 = !DILocation(line: 205, column: 2, scope: !4231)
!4240 = !DILocation(line: 206, column: 1, scope: !4231)
!4241 = distinct !DISubprogram(name: "acpi_find_child_device", scope: !3, file: !3, line: 114, type: !4242, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !214)
!4242 = !DISubroutineType(types: !4243)
!4243 = !{!132, !132, !388, !164}
!4244 = !DILocalVariable(name: "parent", arg: 1, scope: !4241, file: !3, line: 114, type: !132)
!4245 = !DILocation(line: 114, column: 64, scope: !4241)
!4246 = !DILocalVariable(name: "address", arg: 2, scope: !4241, file: !3, line: 115, type: !388)
!4247 = !DILocation(line: 115, column: 13, scope: !4241)
!4248 = !DILocalVariable(name: "check_children", arg: 3, scope: !4241, file: !3, line: 115, type: !164)
!4249 = !DILocation(line: 115, column: 27, scope: !4241)
!4250 = !DILocalVariable(name: "adev", scope: !4241, file: !3, line: 117, type: !132)
!4251 = !DILocation(line: 117, column: 22, scope: !4241)
!4252 = !DILocalVariable(name: "ret", scope: !4241, file: !3, line: 117, type: !132)
!4253 = !DILocation(line: 117, column: 29, scope: !4241)
!4254 = !DILocalVariable(name: "ret_score", scope: !4241, file: !3, line: 118, type: !137)
!4255 = !DILocation(line: 118, column: 6, scope: !4241)
!4256 = !DILocation(line: 120, column: 7, scope: !4257)
!4257 = distinct !DILexicalBlock(scope: !4241, file: !3, line: 120, column: 6)
!4258 = !DILocation(line: 120, column: 6, scope: !4241)
!4259 = !DILocation(line: 121, column: 3, scope: !4257)
!4260 = !DILocalVariable(name: "__mptr", scope: !4261, file: !3, line: 123, type: !131)
!4261 = distinct !DILexicalBlock(scope: !4262, file: !3, line: 123, column: 2)
!4262 = distinct !DILexicalBlock(scope: !4241, file: !3, line: 123, column: 2)
!4263 = !DILocation(line: 123, column: 2, scope: !4261)
!4264 = !DILocation(line: 123, column: 2, scope: !4265)
!4265 = distinct !DILexicalBlock(scope: !4261, file: !3, line: 123, column: 2)
!4266 = !DILocation(line: 123, column: 2, scope: !4262)
!4267 = !DILocation(line: 123, column: 2, scope: !4268)
!4268 = distinct !DILexicalBlock(scope: !4262, file: !3, line: 123, column: 2)
!4269 = !DILocalVariable(name: "addr", scope: !4270, file: !3, line: 124, type: !390)
!4270 = distinct !DILexicalBlock(scope: !4268, file: !3, line: 123, column: 53)
!4271 = !DILocation(line: 124, column: 22, scope: !4270)
!4272 = !DILocalVariable(name: "status", scope: !4270, file: !3, line: 125, type: !4139)
!4273 = !DILocation(line: 125, column: 15, scope: !4270)
!4274 = !DILocalVariable(name: "score", scope: !4270, file: !3, line: 126, type: !137)
!4275 = !DILocation(line: 126, column: 7, scope: !4270)
!4276 = !DILocation(line: 128, column: 34, scope: !4270)
!4277 = !DILocation(line: 128, column: 40, scope: !4270)
!4278 = !DILocation(line: 128, column: 12, scope: !4270)
!4279 = !DILocation(line: 128, column: 10, scope: !4270)
!4280 = !DILocation(line: 130, column: 7, scope: !4281)
!4281 = distinct !DILexicalBlock(scope: !4270, file: !3, line: 130, column: 7)
!4282 = !DILocation(line: 130, column: 28, scope: !4281)
!4283 = !DILocation(line: 130, column: 31, scope: !4281)
!4284 = !DILocation(line: 130, column: 39, scope: !4281)
!4285 = !DILocation(line: 130, column: 36, scope: !4281)
!4286 = !DILocation(line: 130, column: 7, scope: !4270)
!4287 = !DILocation(line: 131, column: 4, scope: !4281)
!4288 = !DILocation(line: 133, column: 8, scope: !4289)
!4289 = distinct !DILexicalBlock(scope: !4270, file: !3, line: 133, column: 7)
!4290 = !DILocation(line: 133, column: 7, scope: !4270)
!4291 = !DILocation(line: 135, column: 10, scope: !4292)
!4292 = distinct !DILexicalBlock(scope: !4289, file: !3, line: 133, column: 13)
!4293 = !DILocation(line: 135, column: 8, scope: !4292)
!4294 = !DILocation(line: 136, column: 4, scope: !4292)
!4295 = !DILocation(line: 148, column: 8, scope: !4296)
!4296 = distinct !DILexicalBlock(scope: !4270, file: !3, line: 148, column: 7)
!4297 = !DILocation(line: 148, column: 7, scope: !4270)
!4298 = !DILocation(line: 149, column: 34, scope: !4299)
!4299 = distinct !DILexicalBlock(scope: !4296, file: !3, line: 148, column: 19)
!4300 = !DILocation(line: 149, column: 39, scope: !4299)
!4301 = !DILocation(line: 149, column: 16, scope: !4299)
!4302 = !DILocation(line: 149, column: 14, scope: !4299)
!4303 = !DILocation(line: 150, column: 8, scope: !4304)
!4304 = distinct !DILexicalBlock(scope: !4299, file: !3, line: 150, column: 8)
!4305 = !DILocation(line: 150, column: 18, scope: !4304)
!4306 = !DILocation(line: 150, column: 8, scope: !4299)
!4307 = !DILocation(line: 151, column: 12, scope: !4304)
!4308 = !DILocation(line: 151, column: 5, scope: !4304)
!4309 = !DILocation(line: 152, column: 3, scope: !4299)
!4310 = !DILocation(line: 153, column: 29, scope: !4270)
!4311 = !DILocation(line: 153, column: 35, scope: !4270)
!4312 = !DILocation(line: 153, column: 11, scope: !4270)
!4313 = !DILocation(line: 153, column: 9, scope: !4270)
!4314 = !DILocation(line: 154, column: 7, scope: !4315)
!4315 = distinct !DILexicalBlock(scope: !4270, file: !3, line: 154, column: 7)
!4316 = !DILocation(line: 154, column: 13, scope: !4315)
!4317 = !DILocation(line: 154, column: 7, scope: !4270)
!4318 = !DILocation(line: 155, column: 11, scope: !4319)
!4319 = distinct !DILexicalBlock(scope: !4315, file: !3, line: 154, column: 38)
!4320 = !DILocation(line: 155, column: 4, scope: !4319)
!4321 = !DILocation(line: 156, column: 14, scope: !4322)
!4322 = distinct !DILexicalBlock(scope: !4315, file: !3, line: 156, column: 14)
!4323 = !DILocation(line: 156, column: 22, scope: !4322)
!4324 = !DILocation(line: 156, column: 20, scope: !4322)
!4325 = !DILocation(line: 156, column: 14, scope: !4315)
!4326 = !DILocation(line: 157, column: 10, scope: !4327)
!4327 = distinct !DILexicalBlock(scope: !4322, file: !3, line: 156, column: 33)
!4328 = !DILocation(line: 157, column: 8, scope: !4327)
!4329 = !DILocation(line: 158, column: 16, scope: !4327)
!4330 = !DILocation(line: 158, column: 14, scope: !4327)
!4331 = !DILocation(line: 159, column: 3, scope: !4327)
!4332 = !DILocation(line: 160, column: 2, scope: !4270)
!4333 = !DILocalVariable(name: "__mptr", scope: !4334, file: !3, line: 123, type: !131)
!4334 = distinct !DILexicalBlock(scope: !4268, file: !3, line: 123, column: 2)
!4335 = !DILocation(line: 123, column: 2, scope: !4334)
!4336 = !DILocation(line: 123, column: 2, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !4334, file: !3, line: 123, column: 2)
!4338 = distinct !{!4338, !4266, !4339}
!4339 = !DILocation(line: 160, column: 2, scope: !4262)
!4340 = !DILocation(line: 161, column: 9, scope: !4241)
!4341 = !DILocation(line: 161, column: 2, scope: !4241)
!4342 = !DILocation(line: 162, column: 1, scope: !4241)
!4343 = distinct !DISubprogram(name: "find_child_checks", scope: !3, file: !3, line: 88, type: !4344, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !214)
!4344 = !DISubroutineType(types: !4345)
!4345 = !{!137, !132, !164}
!4346 = !DILocalVariable(name: "adev", arg: 1, scope: !4343, file: !3, line: 88, type: !132)
!4347 = !DILocation(line: 88, column: 50, scope: !4343)
!4348 = !DILocalVariable(name: "check_children", arg: 2, scope: !4343, file: !3, line: 88, type: !164)
!4349 = !DILocation(line: 88, column: 61, scope: !4343)
!4350 = !DILocalVariable(name: "sta_present", scope: !4343, file: !3, line: 90, type: !164)
!4351 = !DILocation(line: 90, column: 7, scope: !4343)
!4352 = !DILocalVariable(name: "sta", scope: !4343, file: !3, line: 91, type: !390)
!4353 = !DILocation(line: 91, column: 21, scope: !4343)
!4354 = !DILocalVariable(name: "status", scope: !4343, file: !3, line: 92, type: !4139)
!4355 = !DILocation(line: 92, column: 14, scope: !4343)
!4356 = !DILocation(line: 94, column: 33, scope: !4343)
!4357 = !DILocation(line: 94, column: 39, scope: !4343)
!4358 = !DILocation(line: 94, column: 11, scope: !4343)
!4359 = !DILocation(line: 94, column: 9, scope: !4343)
!4360 = !DILocation(line: 95, column: 6, scope: !4361)
!4361 = distinct !DILexicalBlock(scope: !4343, file: !3, line: 95, column: 6)
!4362 = !DILocation(line: 95, column: 13, scope: !4361)
!4363 = !DILocation(line: 95, column: 6, scope: !4343)
!4364 = !DILocation(line: 96, column: 15, scope: !4361)
!4365 = !DILocation(line: 96, column: 3, scope: !4361)
!4366 = !DILocation(line: 97, column: 11, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4361, file: !3, line: 97, column: 11)
!4368 = !DILocation(line: 97, column: 32, scope: !4367)
!4369 = !DILocation(line: 97, column: 37, scope: !4367)
!4370 = !DILocation(line: 97, column: 41, scope: !4367)
!4371 = !DILocation(line: 97, column: 11, scope: !4361)
!4372 = !DILocation(line: 98, column: 3, scope: !4367)
!4373 = !DILocation(line: 100, column: 6, scope: !4374)
!4374 = distinct !DILexicalBlock(scope: !4343, file: !3, line: 100, column: 6)
!4375 = !DILocation(line: 100, column: 21, scope: !4374)
!4376 = !DILocation(line: 100, column: 36, scope: !4374)
!4377 = !DILocation(line: 100, column: 42, scope: !4374)
!4378 = !DILocation(line: 100, column: 24, scope: !4374)
!4379 = !DILocation(line: 100, column: 6, scope: !4343)
!4380 = !DILocation(line: 101, column: 3, scope: !4374)
!4381 = !DILocation(line: 110, column: 9, scope: !4343)
!4382 = !DILocation(line: 110, column: 21, scope: !4343)
!4383 = !DILocation(line: 110, column: 25, scope: !4343)
!4384 = !DILocation(line: 110, column: 31, scope: !4343)
!4385 = !DILocation(line: 110, column: 35, scope: !4343)
!4386 = !DILocation(line: 110, column: 40, scope: !4343)
!4387 = !DILocation(line: 110, column: 24, scope: !4343)
!4388 = !DILocation(line: 0, scope: !4343)
!4389 = !DILocation(line: 110, column: 2, scope: !4343)
!4390 = !DILocation(line: 112, column: 1, scope: !4343)
!4391 = distinct !DISubprogram(name: "acpi_bind_one", scope: !3, file: !3, line: 174, type: !4392, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !214)
!4392 = !DISubroutineType(types: !4393)
!4393 = !{!137, !3341, !132}
!4394 = !DILocalVariable(name: "dev", arg: 1, scope: !4391, file: !3, line: 174, type: !3341)
!4395 = !DILocation(line: 174, column: 34, scope: !4391)
!4396 = !DILocalVariable(name: "acpi_dev", arg: 2, scope: !4391, file: !3, line: 174, type: !132)
!4397 = !DILocation(line: 174, column: 59, scope: !4391)
!4398 = !DILocalVariable(name: "physical_node", scope: !4391, file: !3, line: 176, type: !4130)
!4399 = !DILocation(line: 176, column: 36, scope: !4391)
!4400 = !DILocalVariable(name: "pn", scope: !4391, file: !3, line: 176, type: !4130)
!4401 = !DILocation(line: 176, column: 52, scope: !4391)
!4402 = !DILocalVariable(name: "physical_node_name", scope: !4391, file: !3, line: 177, type: !4403)
!4403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 192, elements: !4404)
!4404 = !{!4405}
!4405 = !DISubrange(count: 24)
!4406 = !DILocation(line: 177, column: 7, scope: !4391)
!4407 = !DILocalVariable(name: "physnode_list", scope: !4391, file: !3, line: 178, type: !190)
!4408 = !DILocation(line: 178, column: 20, scope: !4391)
!4409 = !DILocalVariable(name: "node_id", scope: !4391, file: !3, line: 179, type: !7)
!4410 = !DILocation(line: 179, column: 15, scope: !4391)
!4411 = !DILocalVariable(name: "retval", scope: !4391, file: !3, line: 180, type: !137)
!4412 = !DILocation(line: 180, column: 6, scope: !4391)
!4413 = !DILocation(line: 182, column: 25, scope: !4414)
!4414 = distinct !DILexicalBlock(scope: !4391, file: !3, line: 182, column: 6)
!4415 = !DILocation(line: 182, column: 6, scope: !4414)
!4416 = !DILocation(line: 182, column: 6, scope: !4391)
!4417 = !DILocation(line: 183, column: 7, scope: !4418)
!4418 = distinct !DILexicalBlock(scope: !4419, file: !3, line: 183, column: 7)
!4419 = distinct !DILexicalBlock(scope: !4414, file: !3, line: 182, column: 31)
!4420 = !DILocation(line: 183, column: 7, scope: !4419)
!4421 = !DILocation(line: 184, column: 4, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4418, file: !3, line: 183, column: 17)
!4423 = !DILocation(line: 185, column: 4, scope: !4422)
!4424 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !4425, file: !3, line: 187, type: !146)
!4425 = distinct !DILexicalBlock(scope: !4426, file: !3, line: 187, column: 15)
!4426 = distinct !DILexicalBlock(scope: !4418, file: !3, line: 186, column: 10)
!4427 = !DILocation(line: 187, column: 15, scope: !4425)
!4428 = !DILocalVariable(name: "__mptr", scope: !4429, file: !3, line: 187, type: !131)
!4429 = distinct !DILexicalBlock(scope: !4425, file: !3, line: 187, column: 15)
!4430 = !DILocation(line: 187, column: 15, scope: !4429)
!4431 = !DILocation(line: 187, column: 15, scope: !4432)
!4432 = distinct !DILexicalBlock(scope: !4429, file: !3, line: 187, column: 15)
!4433 = !DILocation(line: 187, column: 13, scope: !4426)
!4434 = !DILocation(line: 189, column: 2, scope: !4419)
!4435 = !DILocation(line: 190, column: 7, scope: !4436)
!4436 = distinct !DILexicalBlock(scope: !4391, file: !3, line: 190, column: 6)
!4437 = !DILocation(line: 190, column: 6, scope: !4391)
!4438 = !DILocation(line: 191, column: 3, scope: !4436)
!4439 = !DILocation(line: 193, column: 14, scope: !4391)
!4440 = !DILocation(line: 193, column: 24, scope: !4391)
!4441 = !DILocation(line: 193, column: 2, scope: !4391)
!4442 = !DILocation(line: 194, column: 13, scope: !4391)
!4443 = !DILocation(line: 194, column: 2, scope: !4391)
!4444 = !DILocation(line: 195, column: 18, scope: !4391)
!4445 = !DILocation(line: 195, column: 16, scope: !4391)
!4446 = !DILocation(line: 196, column: 7, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4391, file: !3, line: 196, column: 6)
!4448 = !DILocation(line: 196, column: 6, scope: !4391)
!4449 = !DILocation(line: 197, column: 10, scope: !4450)
!4450 = distinct !DILexicalBlock(scope: !4447, file: !3, line: 196, column: 22)
!4451 = !DILocation(line: 198, column: 3, scope: !4450)
!4452 = !DILocation(line: 201, column: 14, scope: !4391)
!4453 = !DILocation(line: 201, column: 24, scope: !4391)
!4454 = !DILocation(line: 201, column: 2, scope: !4391)
!4455 = !DILocation(line: 207, column: 19, scope: !4391)
!4456 = !DILocation(line: 207, column: 29, scope: !4391)
!4457 = !DILocation(line: 207, column: 16, scope: !4391)
!4458 = !DILocation(line: 208, column: 10, scope: !4391)
!4459 = !DILocalVariable(name: "__mptr", scope: !4460, file: !3, line: 209, type: !131)
!4460 = distinct !DILexicalBlock(scope: !4461, file: !3, line: 209, column: 2)
!4461 = distinct !DILexicalBlock(scope: !4391, file: !3, line: 209, column: 2)
!4462 = !DILocation(line: 209, column: 2, scope: !4460)
!4463 = !DILocation(line: 209, column: 2, scope: !4464)
!4464 = distinct !DILexicalBlock(scope: !4460, file: !3, line: 209, column: 2)
!4465 = !DILocation(line: 209, column: 2, scope: !4461)
!4466 = !DILocation(line: 209, column: 2, scope: !4467)
!4467 = distinct !DILexicalBlock(scope: !4461, file: !3, line: 209, column: 2)
!4468 = !DILocation(line: 211, column: 7, scope: !4469)
!4469 = distinct !DILexicalBlock(scope: !4470, file: !3, line: 211, column: 7)
!4470 = distinct !DILexicalBlock(scope: !4467, file: !3, line: 209, column: 63)
!4471 = !DILocation(line: 211, column: 11, scope: !4469)
!4472 = !DILocation(line: 211, column: 18, scope: !4469)
!4473 = !DILocation(line: 211, column: 15, scope: !4469)
!4474 = !DILocation(line: 211, column: 7, scope: !4470)
!4475 = !DILocation(line: 212, column: 18, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !4469, file: !3, line: 211, column: 23)
!4477 = !DILocation(line: 212, column: 28, scope: !4476)
!4478 = !DILocation(line: 212, column: 4, scope: !4476)
!4479 = !DILocation(line: 214, column: 4, scope: !4476)
!4480 = !DILocation(line: 215, column: 10, scope: !4476)
!4481 = !DILocation(line: 215, column: 4, scope: !4476)
!4482 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !4483, file: !3, line: 216, type: !146)
!4483 = distinct !DILexicalBlock(scope: !4484, file: !3, line: 216, column: 8)
!4484 = distinct !DILexicalBlock(scope: !4476, file: !3, line: 216, column: 8)
!4485 = !DILocation(line: 216, column: 8, scope: !4483)
!4486 = !DILocalVariable(name: "__mptr", scope: !4487, file: !3, line: 216, type: !131)
!4487 = distinct !DILexicalBlock(scope: !4483, file: !3, line: 216, column: 8)
!4488 = !DILocation(line: 216, column: 8, scope: !4487)
!4489 = !DILocation(line: 216, column: 8, scope: !4490)
!4490 = distinct !DILexicalBlock(scope: !4487, file: !3, line: 216, column: 8)
!4491 = !DILocation(line: 216, column: 31, scope: !4484)
!4492 = !DILocation(line: 216, column: 28, scope: !4484)
!4493 = !DILocation(line: 216, column: 8, scope: !4476)
!4494 = !DILocation(line: 217, column: 5, scope: !4484)
!4495 = !DILocation(line: 219, column: 15, scope: !4476)
!4496 = !DILocation(line: 219, column: 4, scope: !4476)
!4497 = !DILocation(line: 220, column: 16, scope: !4476)
!4498 = !DILocation(line: 220, column: 26, scope: !4476)
!4499 = !DILocation(line: 220, column: 4, scope: !4476)
!4500 = !DILocation(line: 221, column: 4, scope: !4476)
!4501 = !DILocation(line: 223, column: 7, scope: !4502)
!4502 = distinct !DILexicalBlock(scope: !4470, file: !3, line: 223, column: 7)
!4503 = !DILocation(line: 223, column: 11, scope: !4502)
!4504 = !DILocation(line: 223, column: 22, scope: !4502)
!4505 = !DILocation(line: 223, column: 19, scope: !4502)
!4506 = !DILocation(line: 223, column: 7, scope: !4470)
!4507 = !DILocation(line: 224, column: 21, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !4502, file: !3, line: 223, column: 31)
!4509 = !DILocation(line: 224, column: 25, scope: !4508)
!4510 = !DILocation(line: 224, column: 18, scope: !4508)
!4511 = !DILocation(line: 225, column: 11, scope: !4508)
!4512 = !DILocation(line: 226, column: 3, scope: !4508)
!4513 = !DILocation(line: 227, column: 2, scope: !4470)
!4514 = !DILocalVariable(name: "__mptr", scope: !4515, file: !3, line: 209, type: !131)
!4515 = distinct !DILexicalBlock(scope: !4467, file: !3, line: 209, column: 2)
!4516 = !DILocation(line: 209, column: 2, scope: !4515)
!4517 = !DILocation(line: 209, column: 2, scope: !4518)
!4518 = distinct !DILexicalBlock(scope: !4515, file: !3, line: 209, column: 2)
!4519 = distinct !{!4519, !4465, !4520}
!4520 = !DILocation(line: 227, column: 2, scope: !4461)
!4521 = !DILocation(line: 229, column: 27, scope: !4391)
!4522 = !DILocation(line: 229, column: 2, scope: !4391)
!4523 = !DILocation(line: 229, column: 17, scope: !4391)
!4524 = !DILocation(line: 229, column: 25, scope: !4391)
!4525 = !DILocation(line: 230, column: 23, scope: !4391)
!4526 = !DILocation(line: 230, column: 2, scope: !4391)
!4527 = !DILocation(line: 230, column: 17, scope: !4391)
!4528 = !DILocation(line: 230, column: 21, scope: !4391)
!4529 = !DILocation(line: 231, column: 12, scope: !4391)
!4530 = !DILocation(line: 231, column: 27, scope: !4391)
!4531 = !DILocation(line: 231, column: 33, scope: !4391)
!4532 = !DILocation(line: 231, column: 2, scope: !4391)
!4533 = !DILocation(line: 232, column: 2, scope: !4391)
!4534 = !DILocation(line: 232, column: 12, scope: !4391)
!4535 = !DILocation(line: 232, column: 31, scope: !4391)
!4536 = !DILocation(line: 234, column: 26, scope: !4537)
!4537 = distinct !DILexicalBlock(scope: !4391, file: !3, line: 234, column: 6)
!4538 = !DILocation(line: 234, column: 7, scope: !4537)
!4539 = !DILocation(line: 234, column: 6, scope: !4391)
!4540 = !DILocation(line: 235, column: 3, scope: !4537)
!4541 = !DILocation(line: 237, column: 26, scope: !4391)
!4542 = !DILocation(line: 237, column: 46, scope: !4391)
!4543 = !DILocation(line: 237, column: 2, scope: !4391)
!4544 = !DILocation(line: 238, column: 30, scope: !4391)
!4545 = !DILocation(line: 238, column: 40, scope: !4391)
!4546 = !DILocation(line: 238, column: 44, scope: !4391)
!4547 = !DILocation(line: 238, column: 51, scope: !4391)
!4548 = !DILocation(line: 238, column: 56, scope: !4391)
!4549 = !DILocation(line: 239, column: 8, scope: !4391)
!4550 = !DILocation(line: 238, column: 11, scope: !4391)
!4551 = !DILocation(line: 238, column: 9, scope: !4391)
!4552 = !DILocation(line: 240, column: 6, scope: !4553)
!4553 = distinct !DILexicalBlock(scope: !4391, file: !3, line: 240, column: 6)
!4554 = !DILocation(line: 240, column: 6, scope: !4391)
!4555 = !DILocation(line: 241, column: 3, scope: !4553)
!4556 = !DILocation(line: 244, column: 30, scope: !4391)
!4557 = !DILocation(line: 244, column: 35, scope: !4391)
!4558 = !DILocation(line: 244, column: 42, scope: !4391)
!4559 = !DILocation(line: 244, column: 52, scope: !4391)
!4560 = !DILocation(line: 244, column: 56, scope: !4391)
!4561 = !DILocation(line: 244, column: 11, scope: !4391)
!4562 = !DILocation(line: 244, column: 9, scope: !4391)
!4563 = !DILocation(line: 246, column: 6, scope: !4564)
!4564 = distinct !DILexicalBlock(scope: !4391, file: !3, line: 246, column: 6)
!4565 = !DILocation(line: 246, column: 6, scope: !4391)
!4566 = !DILocation(line: 247, column: 3, scope: !4564)
!4567 = !DILocation(line: 250, column: 16, scope: !4391)
!4568 = !DILocation(line: 250, column: 26, scope: !4391)
!4569 = !DILocation(line: 250, column: 2, scope: !4391)
!4570 = !DILocation(line: 252, column: 6, scope: !4571)
!4571 = distinct !DILexicalBlock(scope: !4391, file: !3, line: 252, column: 6)
!4572 = !DILocation(line: 252, column: 16, scope: !4571)
!4573 = !DILocation(line: 252, column: 23, scope: !4571)
!4574 = !DILocation(line: 252, column: 29, scope: !4571)
!4575 = !DILocation(line: 252, column: 6, scope: !4391)
!4576 = !DILocation(line: 253, column: 29, scope: !4571)
!4577 = !DILocation(line: 253, column: 3, scope: !4571)
!4578 = !DILocation(line: 255, column: 2, scope: !4391)
!4579 = !DILabel(scope: !4391, name: "err", file: !3, line: 257)
!4580 = !DILocation(line: 257, column: 2, scope: !4391)
!4581 = !DILocation(line: 258, column: 2, scope: !4391)
!4582 = !DILocation(line: 259, column: 13, scope: !4391)
!4583 = !DILocation(line: 259, column: 2, scope: !4391)
!4584 = !DILocation(line: 260, column: 14, scope: !4391)
!4585 = !DILocation(line: 260, column: 24, scope: !4391)
!4586 = !DILocation(line: 260, column: 2, scope: !4391)
!4587 = !DILocation(line: 261, column: 9, scope: !4391)
!4588 = !DILocation(line: 261, column: 2, scope: !4391)
!4589 = !DILocation(line: 262, column: 1, scope: !4391)
!4590 = distinct !DISubprogram(name: "has_acpi_companion", scope: !4591, file: !4591, line: 84, type: !4149, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !214)
!4591 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/lizy2001/genbc/linux")
!4592 = !DILocalVariable(name: "dev", arg: 1, scope: !4590, file: !4591, line: 84, type: !3341)
!4593 = !DILocation(line: 84, column: 54, scope: !4590)
!4594 = !DILocation(line: 86, column: 29, scope: !4590)
!4595 = !DILocation(line: 86, column: 34, scope: !4590)
!4596 = !DILocation(line: 86, column: 9, scope: !4590)
!4597 = !DILocation(line: 86, column: 2, scope: !4590)
!4598 = distinct !DISubprogram(name: "kzalloc", scope: !124, file: !124, line: 662, type: !4599, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !214)
!4599 = !DISubroutineType(types: !4600)
!4600 = !{!131, !288, !712}
!4601 = !DILocalVariable(name: "s", arg: 1, scope: !4602, file: !124, line: 445, type: !904)
!4602 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !124, file: !124, line: 445, type: !4603, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !214)
!4603 = !DISubroutineType(types: !4604)
!4604 = !{!131, !904, !712, !288}
!4605 = !DILocation(line: 445, column: 72, scope: !4602, inlinedAt: !4606)
!4606 = distinct !DILocation(line: 552, column: 10, scope: !4607, inlinedAt: !4610)
!4607 = distinct !DILexicalBlock(scope: !4608, file: !124, line: 540, column: 34)
!4608 = distinct !DILexicalBlock(scope: !4609, file: !124, line: 540, column: 6)
!4609 = distinct !DISubprogram(name: "kmalloc", scope: !124, file: !124, line: 538, type: !4599, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !214)
!4610 = distinct !DILocation(line: 664, column: 9, scope: !4598)
!4611 = !DILocalVariable(name: "flags", arg: 2, scope: !4602, file: !124, line: 446, type: !712)
!4612 = !DILocation(line: 446, column: 9, scope: !4602, inlinedAt: !4606)
!4613 = !DILocalVariable(name: "size", arg: 3, scope: !4602, file: !124, line: 446, type: !288)
!4614 = !DILocation(line: 446, column: 23, scope: !4602, inlinedAt: !4606)
!4615 = !DILocalVariable(name: "ret", scope: !4602, file: !124, line: 448, type: !131)
!4616 = !DILocation(line: 448, column: 8, scope: !4602, inlinedAt: !4606)
!4617 = !DILocalVariable(name: "flags", arg: 1, scope: !4618, file: !124, line: 318, type: !712)
!4618 = distinct !DISubprogram(name: "kmalloc_type", scope: !124, file: !124, line: 318, type: !4619, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !214)
!4619 = !DISubroutineType(types: !4620)
!4620 = !{!123, !712}
!4621 = !DILocation(line: 318, column: 67, scope: !4618, inlinedAt: !4622)
!4622 = distinct !DILocation(line: 553, column: 20, scope: !4607, inlinedAt: !4610)
!4623 = !DILocalVariable(name: "size", arg: 1, scope: !4624, file: !124, line: 346, type: !288)
!4624 = distinct !DISubprogram(name: "kmalloc_index", scope: !124, file: !124, line: 346, type: !4625, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !214)
!4625 = !DISubroutineType(types: !4626)
!4626 = !{!7, !288}
!4627 = !DILocation(line: 346, column: 58, scope: !4624, inlinedAt: !4628)
!4628 = distinct !DILocation(line: 547, column: 11, scope: !4607, inlinedAt: !4610)
!4629 = !DILocalVariable(name: "size", arg: 1, scope: !4630, file: !124, line: 472, type: !288)
!4630 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !124, file: !124, line: 472, type: !4631, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !214)
!4631 = !DISubroutineType(types: !4632)
!4632 = !{!131, !288, !712, !7}
!4633 = !DILocation(line: 472, column: 28, scope: !4630, inlinedAt: !4634)
!4634 = distinct !DILocation(line: 481, column: 9, scope: !4635, inlinedAt: !4636)
!4635 = distinct !DISubprogram(name: "kmalloc_large", scope: !124, file: !124, line: 478, type: !4599, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !214)
!4636 = distinct !DILocation(line: 545, column: 11, scope: !4637, inlinedAt: !4610)
!4637 = distinct !DILexicalBlock(scope: !4607, file: !124, line: 544, column: 7)
!4638 = !DILocalVariable(name: "flags", arg: 2, scope: !4630, file: !124, line: 472, type: !712)
!4639 = !DILocation(line: 472, column: 40, scope: !4630, inlinedAt: !4634)
!4640 = !DILocalVariable(name: "order", arg: 3, scope: !4630, file: !124, line: 472, type: !7)
!4641 = !DILocation(line: 472, column: 60, scope: !4630, inlinedAt: !4634)
!4642 = !DILocalVariable(name: "size", arg: 1, scope: !4635, file: !124, line: 478, type: !288)
!4643 = !DILocation(line: 478, column: 51, scope: !4635, inlinedAt: !4636)
!4644 = !DILocalVariable(name: "flags", arg: 2, scope: !4635, file: !124, line: 478, type: !712)
!4645 = !DILocation(line: 478, column: 63, scope: !4635, inlinedAt: !4636)
!4646 = !DILocalVariable(name: "order", scope: !4635, file: !124, line: 480, type: !7)
!4647 = !DILocation(line: 480, column: 15, scope: !4635, inlinedAt: !4636)
!4648 = !DILocalVariable(name: "size", arg: 1, scope: !4609, file: !124, line: 538, type: !288)
!4649 = !DILocation(line: 538, column: 45, scope: !4609, inlinedAt: !4610)
!4650 = !DILocalVariable(name: "flags", arg: 2, scope: !4609, file: !124, line: 538, type: !712)
!4651 = !DILocation(line: 538, column: 57, scope: !4609, inlinedAt: !4610)
!4652 = !DILocalVariable(name: "index", scope: !4607, file: !124, line: 542, type: !7)
!4653 = !DILocation(line: 542, column: 16, scope: !4607, inlinedAt: !4610)
!4654 = !DILocalVariable(name: "size", arg: 1, scope: !4598, file: !124, line: 662, type: !288)
!4655 = !DILocation(line: 662, column: 36, scope: !4598)
!4656 = !DILocalVariable(name: "flags", arg: 2, scope: !4598, file: !124, line: 662, type: !712)
!4657 = !DILocation(line: 662, column: 48, scope: !4598)
!4658 = !DILocation(line: 664, column: 17, scope: !4598)
!4659 = !DILocation(line: 664, column: 23, scope: !4598)
!4660 = !DILocation(line: 664, column: 29, scope: !4598)
!4661 = !DILocation(line: 540, column: 27, scope: !4608, inlinedAt: !4610)
!4662 = !DILocation(line: 540, column: 6, scope: !4608, inlinedAt: !4610)
!4663 = !DILocation(line: 540, column: 6, scope: !4609, inlinedAt: !4610)
!4664 = !DILocation(line: 544, column: 7, scope: !4637, inlinedAt: !4610)
!4665 = !DILocation(line: 544, column: 12, scope: !4637, inlinedAt: !4610)
!4666 = !DILocation(line: 544, column: 7, scope: !4607, inlinedAt: !4610)
!4667 = !DILocation(line: 545, column: 25, scope: !4637, inlinedAt: !4610)
!4668 = !DILocation(line: 545, column: 31, scope: !4637, inlinedAt: !4610)
!4669 = !DILocation(line: 480, column: 33, scope: !4635, inlinedAt: !4636)
!4670 = !DILocation(line: 480, column: 23, scope: !4635, inlinedAt: !4636)
!4671 = !DILocation(line: 481, column: 29, scope: !4635, inlinedAt: !4636)
!4672 = !DILocation(line: 481, column: 35, scope: !4635, inlinedAt: !4636)
!4673 = !DILocation(line: 481, column: 42, scope: !4635, inlinedAt: !4636)
!4674 = !DILocation(line: 474, column: 23, scope: !4630, inlinedAt: !4634)
!4675 = !DILocation(line: 474, column: 29, scope: !4630, inlinedAt: !4634)
!4676 = !DILocation(line: 474, column: 36, scope: !4630, inlinedAt: !4634)
!4677 = !DILocation(line: 474, column: 9, scope: !4630, inlinedAt: !4634)
!4678 = !DILocation(line: 545, column: 4, scope: !4637, inlinedAt: !4610)
!4679 = !DILocation(line: 547, column: 25, scope: !4607, inlinedAt: !4610)
!4680 = !DILocation(line: 348, column: 7, scope: !4681, inlinedAt: !4628)
!4681 = distinct !DILexicalBlock(scope: !4624, file: !124, line: 348, column: 6)
!4682 = !DILocation(line: 348, column: 6, scope: !4624, inlinedAt: !4628)
!4683 = !DILocation(line: 349, column: 3, scope: !4681, inlinedAt: !4628)
!4684 = !DILocation(line: 351, column: 6, scope: !4685, inlinedAt: !4628)
!4685 = distinct !DILexicalBlock(scope: !4624, file: !124, line: 351, column: 6)
!4686 = !DILocation(line: 351, column: 11, scope: !4685, inlinedAt: !4628)
!4687 = !DILocation(line: 351, column: 6, scope: !4624, inlinedAt: !4628)
!4688 = !DILocation(line: 352, column: 3, scope: !4685, inlinedAt: !4628)
!4689 = !DILocation(line: 354, column: 32, scope: !4690, inlinedAt: !4628)
!4690 = distinct !DILexicalBlock(scope: !4624, file: !124, line: 354, column: 6)
!4691 = !DILocation(line: 354, column: 37, scope: !4690, inlinedAt: !4628)
!4692 = !DILocation(line: 354, column: 42, scope: !4690, inlinedAt: !4628)
!4693 = !DILocation(line: 354, column: 45, scope: !4690, inlinedAt: !4628)
!4694 = !DILocation(line: 354, column: 50, scope: !4690, inlinedAt: !4628)
!4695 = !DILocation(line: 354, column: 6, scope: !4624, inlinedAt: !4628)
!4696 = !DILocation(line: 355, column: 3, scope: !4690, inlinedAt: !4628)
!4697 = !DILocation(line: 356, column: 32, scope: !4698, inlinedAt: !4628)
!4698 = distinct !DILexicalBlock(scope: !4624, file: !124, line: 356, column: 6)
!4699 = !DILocation(line: 356, column: 37, scope: !4698, inlinedAt: !4628)
!4700 = !DILocation(line: 356, column: 43, scope: !4698, inlinedAt: !4628)
!4701 = !DILocation(line: 356, column: 46, scope: !4698, inlinedAt: !4628)
!4702 = !DILocation(line: 356, column: 51, scope: !4698, inlinedAt: !4628)
!4703 = !DILocation(line: 356, column: 6, scope: !4624, inlinedAt: !4628)
!4704 = !DILocation(line: 357, column: 3, scope: !4698, inlinedAt: !4628)
!4705 = !DILocation(line: 358, column: 6, scope: !4706, inlinedAt: !4628)
!4706 = distinct !DILexicalBlock(scope: !4624, file: !124, line: 358, column: 6)
!4707 = !DILocation(line: 358, column: 11, scope: !4706, inlinedAt: !4628)
!4708 = !DILocation(line: 358, column: 6, scope: !4624, inlinedAt: !4628)
!4709 = !DILocation(line: 358, column: 26, scope: !4706, inlinedAt: !4628)
!4710 = !DILocation(line: 359, column: 6, scope: !4711, inlinedAt: !4628)
!4711 = distinct !DILexicalBlock(scope: !4624, file: !124, line: 359, column: 6)
!4712 = !DILocation(line: 359, column: 11, scope: !4711, inlinedAt: !4628)
!4713 = !DILocation(line: 359, column: 6, scope: !4624, inlinedAt: !4628)
!4714 = !DILocation(line: 359, column: 26, scope: !4711, inlinedAt: !4628)
!4715 = !DILocation(line: 360, column: 6, scope: !4716, inlinedAt: !4628)
!4716 = distinct !DILexicalBlock(scope: !4624, file: !124, line: 360, column: 6)
!4717 = !DILocation(line: 360, column: 11, scope: !4716, inlinedAt: !4628)
!4718 = !DILocation(line: 360, column: 6, scope: !4624, inlinedAt: !4628)
!4719 = !DILocation(line: 360, column: 26, scope: !4716, inlinedAt: !4628)
!4720 = !DILocation(line: 361, column: 6, scope: !4721, inlinedAt: !4628)
!4721 = distinct !DILexicalBlock(scope: !4624, file: !124, line: 361, column: 6)
!4722 = !DILocation(line: 361, column: 11, scope: !4721, inlinedAt: !4628)
!4723 = !DILocation(line: 361, column: 6, scope: !4624, inlinedAt: !4628)
!4724 = !DILocation(line: 361, column: 26, scope: !4721, inlinedAt: !4628)
!4725 = !DILocation(line: 362, column: 6, scope: !4726, inlinedAt: !4628)
!4726 = distinct !DILexicalBlock(scope: !4624, file: !124, line: 362, column: 6)
!4727 = !DILocation(line: 362, column: 11, scope: !4726, inlinedAt: !4628)
!4728 = !DILocation(line: 362, column: 6, scope: !4624, inlinedAt: !4628)
!4729 = !DILocation(line: 362, column: 26, scope: !4726, inlinedAt: !4628)
!4730 = !DILocation(line: 363, column: 6, scope: !4731, inlinedAt: !4628)
!4731 = distinct !DILexicalBlock(scope: !4624, file: !124, line: 363, column: 6)
!4732 = !DILocation(line: 363, column: 11, scope: !4731, inlinedAt: !4628)
!4733 = !DILocation(line: 363, column: 6, scope: !4624, inlinedAt: !4628)
!4734 = !DILocation(line: 363, column: 26, scope: !4731, inlinedAt: !4628)
!4735 = !DILocation(line: 364, column: 6, scope: !4736, inlinedAt: !4628)
!4736 = distinct !DILexicalBlock(scope: !4624, file: !124, line: 364, column: 6)
!4737 = !DILocation(line: 364, column: 11, scope: !4736, inlinedAt: !4628)
!4738 = !DILocation(line: 364, column: 6, scope: !4624, inlinedAt: !4628)
!4739 = !DILocation(line: 364, column: 26, scope: !4736, inlinedAt: !4628)
!4740 = !DILocation(line: 365, column: 6, scope: !4741, inlinedAt: !4628)
!4741 = distinct !DILexicalBlock(scope: !4624, file: !124, line: 365, column: 6)
!4742 = !DILocation(line: 365, column: 11, scope: !4741, inlinedAt: !4628)
!4743 = !DILocation(line: 365, column: 6, scope: !4624, inlinedAt: !4628)
!4744 = !DILocation(line: 365, column: 26, scope: !4741, inlinedAt: !4628)
!4745 = !DILocation(line: 366, column: 6, scope: !4746, inlinedAt: !4628)
!4746 = distinct !DILexicalBlock(scope: !4624, file: !124, line: 366, column: 6)
!4747 = !DILocation(line: 366, column: 11, scope: !4746, inlinedAt: !4628)
!4748 = !DILocation(line: 366, column: 6, scope: !4624, inlinedAt: !4628)
!4749 = !DILocation(line: 366, column: 26, scope: !4746, inlinedAt: !4628)
!4750 = !DILocation(line: 367, column: 6, scope: !4751, inlinedAt: !4628)
!4751 = distinct !DILexicalBlock(scope: !4624, file: !124, line: 367, column: 6)
!4752 = !DILocation(line: 367, column: 11, scope: !4751, inlinedAt: !4628)
!4753 = !DILocation(line: 367, column: 6, scope: !4624, inlinedAt: !4628)
!4754 = !DILocation(line: 367, column: 26, scope: !4751, inlinedAt: !4628)
!4755 = !DILocation(line: 368, column: 6, scope: !4756, inlinedAt: !4628)
!4756 = distinct !DILexicalBlock(scope: !4624, file: !124, line: 368, column: 6)
!4757 = !DILocation(line: 368, column: 11, scope: !4756, inlinedAt: !4628)
!4758 = !DILocation(line: 368, column: 6, scope: !4624, inlinedAt: !4628)
!4759 = !DILocation(line: 368, column: 26, scope: !4756, inlinedAt: !4628)
!4760 = !DILocation(line: 369, column: 6, scope: !4761, inlinedAt: !4628)
!4761 = distinct !DILexicalBlock(scope: !4624, file: !124, line: 369, column: 6)
!4762 = !DILocation(line: 369, column: 11, scope: !4761, inlinedAt: !4628)
!4763 = !DILocation(line: 369, column: 6, scope: !4624, inlinedAt: !4628)
!4764 = !DILocation(line: 369, column: 26, scope: !4761, inlinedAt: !4628)
!4765 = !DILocation(line: 370, column: 6, scope: !4766, inlinedAt: !4628)
!4766 = distinct !DILexicalBlock(scope: !4624, file: !124, line: 370, column: 6)
!4767 = !DILocation(line: 370, column: 11, scope: !4766, inlinedAt: !4628)
!4768 = !DILocation(line: 370, column: 6, scope: !4624, inlinedAt: !4628)
!4769 = !DILocation(line: 370, column: 26, scope: !4766, inlinedAt: !4628)
!4770 = !DILocation(line: 371, column: 6, scope: !4771, inlinedAt: !4628)
!4771 = distinct !DILexicalBlock(scope: !4624, file: !124, line: 371, column: 6)
!4772 = !DILocation(line: 371, column: 11, scope: !4771, inlinedAt: !4628)
!4773 = !DILocation(line: 371, column: 6, scope: !4624, inlinedAt: !4628)
!4774 = !DILocation(line: 371, column: 26, scope: !4771, inlinedAt: !4628)
!4775 = !DILocation(line: 372, column: 6, scope: !4776, inlinedAt: !4628)
!4776 = distinct !DILexicalBlock(scope: !4624, file: !124, line: 372, column: 6)
!4777 = !DILocation(line: 372, column: 11, scope: !4776, inlinedAt: !4628)
!4778 = !DILocation(line: 372, column: 6, scope: !4624, inlinedAt: !4628)
!4779 = !DILocation(line: 372, column: 26, scope: !4776, inlinedAt: !4628)
!4780 = !DILocation(line: 373, column: 6, scope: !4781, inlinedAt: !4628)
!4781 = distinct !DILexicalBlock(scope: !4624, file: !124, line: 373, column: 6)
!4782 = !DILocation(line: 373, column: 11, scope: !4781, inlinedAt: !4628)
!4783 = !DILocation(line: 373, column: 6, scope: !4624, inlinedAt: !4628)
!4784 = !DILocation(line: 373, column: 26, scope: !4781, inlinedAt: !4628)
!4785 = !DILocation(line: 374, column: 6, scope: !4786, inlinedAt: !4628)
!4786 = distinct !DILexicalBlock(scope: !4624, file: !124, line: 374, column: 6)
!4787 = !DILocation(line: 374, column: 11, scope: !4786, inlinedAt: !4628)
!4788 = !DILocation(line: 374, column: 6, scope: !4624, inlinedAt: !4628)
!4789 = !DILocation(line: 374, column: 26, scope: !4786, inlinedAt: !4628)
!4790 = !DILocation(line: 375, column: 6, scope: !4791, inlinedAt: !4628)
!4791 = distinct !DILexicalBlock(scope: !4624, file: !124, line: 375, column: 6)
!4792 = !DILocation(line: 375, column: 11, scope: !4791, inlinedAt: !4628)
!4793 = !DILocation(line: 375, column: 6, scope: !4624, inlinedAt: !4628)
!4794 = !DILocation(line: 375, column: 27, scope: !4791, inlinedAt: !4628)
!4795 = !DILocation(line: 376, column: 6, scope: !4796, inlinedAt: !4628)
!4796 = distinct !DILexicalBlock(scope: !4624, file: !124, line: 376, column: 6)
!4797 = !DILocation(line: 376, column: 11, scope: !4796, inlinedAt: !4628)
!4798 = !DILocation(line: 376, column: 6, scope: !4624, inlinedAt: !4628)
!4799 = !DILocation(line: 376, column: 32, scope: !4796, inlinedAt: !4628)
!4800 = !DILocation(line: 377, column: 6, scope: !4801, inlinedAt: !4628)
!4801 = distinct !DILexicalBlock(scope: !4624, file: !124, line: 377, column: 6)
!4802 = !DILocation(line: 377, column: 11, scope: !4801, inlinedAt: !4628)
!4803 = !DILocation(line: 377, column: 6, scope: !4624, inlinedAt: !4628)
!4804 = !DILocation(line: 377, column: 32, scope: !4801, inlinedAt: !4628)
!4805 = !DILocation(line: 378, column: 6, scope: !4806, inlinedAt: !4628)
!4806 = distinct !DILexicalBlock(scope: !4624, file: !124, line: 378, column: 6)
!4807 = !DILocation(line: 378, column: 11, scope: !4806, inlinedAt: !4628)
!4808 = !DILocation(line: 378, column: 6, scope: !4624, inlinedAt: !4628)
!4809 = !DILocation(line: 378, column: 32, scope: !4806, inlinedAt: !4628)
!4810 = !DILocation(line: 379, column: 6, scope: !4811, inlinedAt: !4628)
!4811 = distinct !DILexicalBlock(scope: !4624, file: !124, line: 379, column: 6)
!4812 = !DILocation(line: 379, column: 11, scope: !4811, inlinedAt: !4628)
!4813 = !DILocation(line: 379, column: 6, scope: !4624, inlinedAt: !4628)
!4814 = !DILocation(line: 379, column: 33, scope: !4811, inlinedAt: !4628)
!4815 = !DILocation(line: 380, column: 6, scope: !4816, inlinedAt: !4628)
!4816 = distinct !DILexicalBlock(scope: !4624, file: !124, line: 380, column: 6)
!4817 = !DILocation(line: 380, column: 11, scope: !4816, inlinedAt: !4628)
!4818 = !DILocation(line: 380, column: 6, scope: !4624, inlinedAt: !4628)
!4819 = !DILocation(line: 380, column: 33, scope: !4816, inlinedAt: !4628)
!4820 = !DILocation(line: 381, column: 6, scope: !4821, inlinedAt: !4628)
!4821 = distinct !DILexicalBlock(scope: !4624, file: !124, line: 381, column: 6)
!4822 = !DILocation(line: 381, column: 11, scope: !4821, inlinedAt: !4628)
!4823 = !DILocation(line: 381, column: 6, scope: !4624, inlinedAt: !4628)
!4824 = !DILocation(line: 381, column: 33, scope: !4821, inlinedAt: !4628)
!4825 = !DILocation(line: 382, column: 2, scope: !4826, inlinedAt: !4628)
!4826 = distinct !DILexicalBlock(scope: !4827, file: !124, line: 382, column: 2)
!4827 = distinct !DILexicalBlock(scope: !4624, file: !124, line: 382, column: 2)
!4828 = !{i32 -2144212647, i32 -2144212618, i32 -2144212572, i32 -2144212514, i32 -2144212460, i32 -2144212406, i32 -2144212351, i32 -2144212320}
!4829 = !DILocation(line: 382, column: 2, scope: !4830, inlinedAt: !4628)
!4830 = distinct !DILexicalBlock(scope: !4831, file: !124, line: 382, column: 2)
!4831 = distinct !DILexicalBlock(scope: !4827, file: !124, line: 382, column: 2)
!4832 = !{i32 -2144211877, i32 -2144211870, i32 -2144211816, i32 -2144211785, i32 -2144211755}
!4833 = !DILocation(line: 382, column: 2, scope: !4831, inlinedAt: !4628)
!4834 = !DILocation(line: 386, column: 1, scope: !4624, inlinedAt: !4628)
!4835 = !DILocation(line: 547, column: 9, scope: !4607, inlinedAt: !4610)
!4836 = !DILocation(line: 549, column: 8, scope: !4837, inlinedAt: !4610)
!4837 = distinct !DILexicalBlock(scope: !4607, file: !124, line: 549, column: 7)
!4838 = !DILocation(line: 549, column: 7, scope: !4607, inlinedAt: !4610)
!4839 = !DILocation(line: 550, column: 4, scope: !4837, inlinedAt: !4610)
!4840 = !DILocation(line: 553, column: 33, scope: !4607, inlinedAt: !4610)
!4841 = !DILocation(line: 325, column: 6, scope: !4842, inlinedAt: !4622)
!4842 = distinct !DILexicalBlock(scope: !4618, file: !124, line: 325, column: 6)
!4843 = !DILocation(line: 325, column: 6, scope: !4618, inlinedAt: !4622)
!4844 = !DILocation(line: 326, column: 3, scope: !4842, inlinedAt: !4622)
!4845 = !DILocation(line: 332, column: 9, scope: !4618, inlinedAt: !4622)
!4846 = !DILocation(line: 332, column: 15, scope: !4618, inlinedAt: !4622)
!4847 = !DILocation(line: 332, column: 2, scope: !4618, inlinedAt: !4622)
!4848 = !DILocation(line: 336, column: 1, scope: !4618, inlinedAt: !4622)
!4849 = !DILocation(line: 553, column: 5, scope: !4607, inlinedAt: !4610)
!4850 = !DILocation(line: 553, column: 41, scope: !4607, inlinedAt: !4610)
!4851 = !DILocation(line: 554, column: 5, scope: !4607, inlinedAt: !4610)
!4852 = !DILocation(line: 554, column: 12, scope: !4607, inlinedAt: !4610)
!4853 = !DILocation(line: 448, column: 31, scope: !4602, inlinedAt: !4606)
!4854 = !DILocation(line: 448, column: 34, scope: !4602, inlinedAt: !4606)
!4855 = !DILocation(line: 448, column: 14, scope: !4602, inlinedAt: !4606)
!4856 = !DILocation(line: 450, column: 22, scope: !4602, inlinedAt: !4606)
!4857 = !DILocation(line: 450, column: 25, scope: !4602, inlinedAt: !4606)
!4858 = !DILocation(line: 450, column: 30, scope: !4602, inlinedAt: !4606)
!4859 = !DILocation(line: 450, column: 36, scope: !4602, inlinedAt: !4606)
!4860 = !DILocation(line: 450, column: 8, scope: !4602, inlinedAt: !4606)
!4861 = !DILocation(line: 450, column: 6, scope: !4602, inlinedAt: !4606)
!4862 = !DILocation(line: 451, column: 9, scope: !4602, inlinedAt: !4606)
!4863 = !DILocation(line: 552, column: 3, scope: !4607, inlinedAt: !4610)
!4864 = !DILocation(line: 557, column: 19, scope: !4609, inlinedAt: !4610)
!4865 = !DILocation(line: 557, column: 25, scope: !4609, inlinedAt: !4610)
!4866 = !DILocation(line: 557, column: 9, scope: !4609, inlinedAt: !4610)
!4867 = !DILocation(line: 557, column: 2, scope: !4609, inlinedAt: !4610)
!4868 = !DILocation(line: 558, column: 1, scope: !4609, inlinedAt: !4610)
!4869 = !DILocation(line: 664, column: 2, scope: !4598)
!4870 = distinct !DISubprogram(name: "list_add", scope: !4196, file: !4196, line: 84, type: !4197, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !214)
!4871 = !DILocalVariable(name: "new", arg: 1, scope: !4870, file: !4196, line: 84, type: !190)
!4872 = !DILocation(line: 84, column: 47, scope: !4870)
!4873 = !DILocalVariable(name: "head", arg: 2, scope: !4870, file: !4196, line: 84, type: !190)
!4874 = !DILocation(line: 84, column: 70, scope: !4870)
!4875 = !DILocation(line: 86, column: 13, scope: !4870)
!4876 = !DILocation(line: 86, column: 18, scope: !4870)
!4877 = !DILocation(line: 86, column: 24, scope: !4870)
!4878 = !DILocation(line: 86, column: 30, scope: !4870)
!4879 = !DILocation(line: 86, column: 2, scope: !4870)
!4880 = !DILocation(line: 87, column: 1, scope: !4870)
!4881 = distinct !DISubprogram(name: "acpi_fwnode_handle", scope: !134, file: !134, line: 438, type: !4882, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !214)
!4882 = !DISubroutineType(types: !4883)
!4883 = !{!146, !132}
!4884 = !DILocalVariable(name: "adev", arg: 1, scope: !4881, file: !134, line: 438, type: !132)
!4885 = !DILocation(line: 438, column: 76, scope: !4881)
!4886 = !DILocation(line: 440, column: 10, scope: !4881)
!4887 = !DILocation(line: 440, column: 16, scope: !4881)
!4888 = !DILocation(line: 440, column: 2, scope: !4881)
!4889 = distinct !DISubprogram(name: "acpi_physnode_link_name", scope: !3, file: !3, line: 165, type: !4890, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !214)
!4890 = !DISubroutineType(types: !4891)
!4891 = !{null, !241, !7}
!4892 = !DILocalVariable(name: "buf", arg: 1, scope: !4889, file: !3, line: 165, type: !241)
!4893 = !DILocation(line: 165, column: 43, scope: !4889)
!4894 = !DILocalVariable(name: "node_id", arg: 2, scope: !4889, file: !3, line: 165, type: !7)
!4895 = !DILocation(line: 165, column: 61, scope: !4889)
!4896 = !DILocation(line: 167, column: 6, scope: !4897)
!4897 = distinct !DILexicalBlock(scope: !4889, file: !3, line: 167, column: 6)
!4898 = !DILocation(line: 167, column: 14, scope: !4897)
!4899 = !DILocation(line: 167, column: 6, scope: !4889)
!4900 = !DILocation(line: 168, column: 12, scope: !4897)
!4901 = !DILocation(line: 169, column: 32, scope: !4897)
!4902 = !DILocation(line: 168, column: 3, scope: !4897)
!4903 = !DILocation(line: 171, column: 10, scope: !4897)
!4904 = !DILocation(line: 171, column: 3, scope: !4897)
!4905 = !DILocation(line: 172, column: 1, scope: !4889)
!4906 = distinct !DISubprogram(name: "acpi_unbind_one", scope: !3, file: !3, line: 265, type: !3373, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !214)
!4907 = !DILocalVariable(name: "dev", arg: 1, scope: !4906, file: !3, line: 265, type: !3341)
!4908 = !DILocation(line: 265, column: 36, scope: !4906)
!4909 = !DILocalVariable(name: "acpi_dev", scope: !4906, file: !3, line: 267, type: !132)
!4910 = !DILocation(line: 267, column: 22, scope: !4906)
!4911 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !4912, file: !3, line: 267, type: !146)
!4912 = distinct !DILexicalBlock(scope: !4906, file: !3, line: 267, column: 33)
!4913 = !DILocation(line: 267, column: 33, scope: !4912)
!4914 = !DILocalVariable(name: "__mptr", scope: !4915, file: !3, line: 267, type: !131)
!4915 = distinct !DILexicalBlock(scope: !4912, file: !3, line: 267, column: 33)
!4916 = !DILocation(line: 267, column: 33, scope: !4915)
!4917 = !DILocation(line: 267, column: 33, scope: !4918)
!4918 = distinct !DILexicalBlock(scope: !4915, file: !3, line: 267, column: 33)
!4919 = !DILocalVariable(name: "entry", scope: !4906, file: !3, line: 268, type: !4130)
!4920 = !DILocation(line: 268, column: 36, scope: !4906)
!4921 = !DILocation(line: 270, column: 7, scope: !4922)
!4922 = distinct !DILexicalBlock(scope: !4906, file: !3, line: 270, column: 6)
!4923 = !DILocation(line: 270, column: 6, scope: !4906)
!4924 = !DILocation(line: 271, column: 3, scope: !4922)
!4925 = !DILocation(line: 273, column: 14, scope: !4906)
!4926 = !DILocation(line: 273, column: 24, scope: !4906)
!4927 = !DILocation(line: 273, column: 2, scope: !4906)
!4928 = !DILocalVariable(name: "__mptr", scope: !4929, file: !3, line: 275, type: !131)
!4929 = distinct !DILexicalBlock(scope: !4930, file: !3, line: 275, column: 2)
!4930 = distinct !DILexicalBlock(scope: !4906, file: !3, line: 275, column: 2)
!4931 = !DILocation(line: 275, column: 2, scope: !4929)
!4932 = !DILocation(line: 275, column: 2, scope: !4933)
!4933 = distinct !DILexicalBlock(scope: !4929, file: !3, line: 275, column: 2)
!4934 = !DILocation(line: 275, column: 2, scope: !4930)
!4935 = !DILocation(line: 275, column: 2, scope: !4936)
!4936 = distinct !DILexicalBlock(scope: !4930, file: !3, line: 275, column: 2)
!4937 = !DILocation(line: 276, column: 7, scope: !4938)
!4938 = distinct !DILexicalBlock(scope: !4936, file: !3, line: 276, column: 7)
!4939 = !DILocation(line: 276, column: 14, scope: !4938)
!4940 = !DILocation(line: 276, column: 21, scope: !4938)
!4941 = !DILocation(line: 276, column: 18, scope: !4938)
!4942 = !DILocation(line: 276, column: 7, scope: !4936)
!4943 = !DILocalVariable(name: "physnode_name", scope: !4944, file: !3, line: 277, type: !4403)
!4944 = distinct !DILexicalBlock(scope: !4938, file: !3, line: 276, column: 26)
!4945 = !DILocation(line: 277, column: 9, scope: !4944)
!4946 = !DILocation(line: 279, column: 14, scope: !4944)
!4947 = !DILocation(line: 279, column: 21, scope: !4944)
!4948 = !DILocation(line: 279, column: 4, scope: !4944)
!4949 = !DILocation(line: 280, column: 4, scope: !4944)
!4950 = !DILocation(line: 280, column: 14, scope: !4944)
!4951 = !DILocation(line: 280, column: 33, scope: !4944)
!4952 = !DILocation(line: 282, column: 28, scope: !4944)
!4953 = !DILocation(line: 282, column: 43, scope: !4944)
!4954 = !DILocation(line: 282, column: 50, scope: !4944)
!4955 = !DILocation(line: 282, column: 4, scope: !4944)
!4956 = !DILocation(line: 283, column: 23, scope: !4944)
!4957 = !DILocation(line: 283, column: 33, scope: !4944)
!4958 = !DILocation(line: 283, column: 37, scope: !4944)
!4959 = !DILocation(line: 283, column: 43, scope: !4944)
!4960 = !DILocation(line: 283, column: 4, scope: !4944)
!4961 = !DILocation(line: 284, column: 23, scope: !4944)
!4962 = !DILocation(line: 284, column: 28, scope: !4944)
!4963 = !DILocation(line: 284, column: 4, scope: !4944)
!4964 = !DILocation(line: 285, column: 4, scope: !4944)
!4965 = !DILocation(line: 287, column: 15, scope: !4944)
!4966 = !DILocation(line: 287, column: 4, scope: !4944)
!4967 = !DILocation(line: 288, column: 16, scope: !4944)
!4968 = !DILocation(line: 288, column: 26, scope: !4944)
!4969 = !DILocation(line: 288, column: 4, scope: !4944)
!4970 = !DILocation(line: 289, column: 10, scope: !4944)
!4971 = !DILocation(line: 289, column: 4, scope: !4944)
!4972 = !DILocation(line: 290, column: 4, scope: !4944)
!4973 = !DILocalVariable(name: "__mptr", scope: !4974, file: !3, line: 275, type: !131)
!4974 = distinct !DILexicalBlock(scope: !4936, file: !3, line: 275, column: 2)
!4975 = !DILocation(line: 275, column: 2, scope: !4974)
!4976 = !DILocation(line: 275, column: 2, scope: !4977)
!4977 = distinct !DILexicalBlock(scope: !4974, file: !3, line: 275, column: 2)
!4978 = distinct !{!4978, !4934, !4979}
!4979 = !DILocation(line: 291, column: 3, scope: !4930)
!4980 = !DILocation(line: 293, column: 16, scope: !4906)
!4981 = !DILocation(line: 293, column: 26, scope: !4906)
!4982 = !DILocation(line: 293, column: 2, scope: !4906)
!4983 = !DILocation(line: 294, column: 2, scope: !4906)
!4984 = !DILocation(line: 295, column: 1, scope: !4906)
!4985 = distinct !DISubprogram(name: "list_del", scope: !4196, file: !4196, line: 144, type: !4232, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !214)
!4986 = !DILocalVariable(name: "entry", arg: 1, scope: !4985, file: !4196, line: 144, type: !190)
!4987 = !DILocation(line: 144, column: 47, scope: !4985)
!4988 = !DILocation(line: 146, column: 19, scope: !4985)
!4989 = !DILocation(line: 146, column: 2, scope: !4985)
!4990 = !DILocation(line: 147, column: 2, scope: !4985)
!4991 = !DILocation(line: 147, column: 9, scope: !4985)
!4992 = !DILocation(line: 147, column: 14, scope: !4985)
!4993 = !DILocation(line: 148, column: 2, scope: !4985)
!4994 = !DILocation(line: 148, column: 9, scope: !4985)
!4995 = !DILocation(line: 148, column: 14, scope: !4985)
!4996 = !DILocation(line: 149, column: 1, scope: !4985)
!4997 = distinct !DISubprogram(name: "acpi_platform_notify", scope: !3, file: !3, line: 363, type: !4998, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !214)
!4998 = !DISubroutineType(types: !4999)
!4999 = !{!137, !3341, !112}
!5000 = !DILocalVariable(name: "dev", arg: 1, scope: !4997, file: !3, line: 363, type: !3341)
!5001 = !DILocation(line: 363, column: 41, scope: !4997)
!5002 = !DILocalVariable(name: "action", arg: 2, scope: !4997, file: !3, line: 363, type: !112)
!5003 = !DILocation(line: 363, column: 66, scope: !4997)
!5004 = !DILocation(line: 365, column: 10, scope: !4997)
!5005 = !DILocation(line: 365, column: 2, scope: !4997)
!5006 = !DILocation(line: 367, column: 22, scope: !5007)
!5007 = distinct !DILexicalBlock(scope: !4997, file: !3, line: 365, column: 18)
!5008 = !DILocation(line: 367, column: 3, scope: !5007)
!5009 = !DILocation(line: 368, column: 3, scope: !5007)
!5010 = !DILocation(line: 370, column: 29, scope: !5007)
!5011 = !DILocation(line: 370, column: 3, scope: !5007)
!5012 = !DILocation(line: 371, column: 3, scope: !5007)
!5013 = !DILocation(line: 373, column: 3, scope: !5007)
!5014 = !DILocation(line: 375, column: 2, scope: !4997)
!5015 = distinct !DISubprogram(name: "acpi_device_notify", scope: !3, file: !3, line: 298, type: !3373, scopeLine: 299, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !214)
!5016 = !DILocalVariable(name: "dev", arg: 1, scope: !5015, file: !3, line: 298, type: !3341)
!5017 = !DILocation(line: 298, column: 46, scope: !5015)
!5018 = !DILocalVariable(name: "type", scope: !5015, file: !3, line: 300, type: !4142)
!5019 = !DILocation(line: 300, column: 24, scope: !5015)
!5020 = !DILocation(line: 300, column: 49, scope: !5015)
!5021 = !DILocation(line: 300, column: 31, scope: !5015)
!5022 = !DILocalVariable(name: "adev", scope: !5015, file: !3, line: 301, type: !132)
!5023 = !DILocation(line: 301, column: 22, scope: !5015)
!5024 = !DILocalVariable(name: "ret", scope: !5015, file: !3, line: 302, type: !137)
!5025 = !DILocation(line: 302, column: 6, scope: !5015)
!5026 = !DILocation(line: 304, column: 22, scope: !5015)
!5027 = !DILocation(line: 304, column: 8, scope: !5015)
!5028 = !DILocation(line: 304, column: 6, scope: !5015)
!5029 = !DILocation(line: 305, column: 6, scope: !5030)
!5030 = distinct !DILexicalBlock(scope: !5015, file: !3, line: 305, column: 6)
!5031 = !DILocation(line: 305, column: 10, scope: !5030)
!5032 = !DILocation(line: 305, column: 13, scope: !5030)
!5033 = !DILocation(line: 305, column: 6, scope: !5015)
!5034 = !DILocalVariable(name: "adev", scope: !5035, file: !3, line: 306, type: !132)
!5035 = distinct !DILexicalBlock(scope: !5030, file: !3, line: 305, column: 19)
!5036 = !DILocation(line: 306, column: 23, scope: !5035)
!5037 = !DILocation(line: 308, column: 10, scope: !5035)
!5038 = !DILocation(line: 308, column: 16, scope: !5035)
!5039 = !DILocation(line: 308, column: 31, scope: !5035)
!5040 = !DILocation(line: 308, column: 8, scope: !5035)
!5041 = !DILocation(line: 309, column: 8, scope: !5042)
!5042 = distinct !DILexicalBlock(scope: !5035, file: !3, line: 309, column: 7)
!5043 = !DILocation(line: 309, column: 7, scope: !5035)
!5044 = !DILocation(line: 310, column: 4, scope: !5045)
!5045 = distinct !DILexicalBlock(scope: !5042, file: !3, line: 309, column: 14)
!5046 = !DILocation(line: 310, column: 4, scope: !5047)
!5047 = distinct !DILexicalBlock(scope: !5045, file: !3, line: 310, column: 4)
!5048 = !DILocation(line: 311, column: 8, scope: !5045)
!5049 = !DILocation(line: 312, column: 4, scope: !5045)
!5050 = !DILocation(line: 314, column: 23, scope: !5035)
!5051 = !DILocation(line: 314, column: 28, scope: !5035)
!5052 = !DILocation(line: 314, column: 9, scope: !5035)
!5053 = !DILocation(line: 314, column: 7, scope: !5035)
!5054 = !DILocation(line: 315, column: 7, scope: !5055)
!5055 = distinct !DILexicalBlock(scope: !5035, file: !3, line: 315, column: 7)
!5056 = !DILocation(line: 315, column: 7, scope: !5035)
!5057 = !DILocation(line: 316, column: 4, scope: !5055)
!5058 = !DILocation(line: 317, column: 2, scope: !5035)
!5059 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !5060, file: !3, line: 318, type: !146)
!5060 = distinct !DILexicalBlock(scope: !5015, file: !3, line: 318, column: 9)
!5061 = !DILocation(line: 318, column: 9, scope: !5060)
!5062 = !DILocalVariable(name: "__mptr", scope: !5063, file: !3, line: 318, type: !131)
!5063 = distinct !DILexicalBlock(scope: !5060, file: !3, line: 318, column: 9)
!5064 = !DILocation(line: 318, column: 9, scope: !5063)
!5065 = !DILocation(line: 318, column: 9, scope: !5066)
!5066 = distinct !DILexicalBlock(scope: !5063, file: !3, line: 318, column: 9)
!5067 = !DILocation(line: 318, column: 7, scope: !5015)
!5068 = !DILocation(line: 319, column: 7, scope: !5069)
!5069 = distinct !DILexicalBlock(scope: !5015, file: !3, line: 319, column: 6)
!5070 = !DILocation(line: 319, column: 6, scope: !5015)
!5071 = !DILocation(line: 320, column: 3, scope: !5069)
!5072 = !DILocation(line: 322, column: 6, scope: !5073)
!5073 = distinct !DILexicalBlock(scope: !5015, file: !3, line: 322, column: 6)
!5074 = !DILocation(line: 322, column: 6, scope: !5015)
!5075 = !DILocation(line: 323, column: 30, scope: !5073)
!5076 = !DILocation(line: 323, column: 3, scope: !5073)
!5077 = !DILocation(line: 325, column: 6, scope: !5078)
!5078 = distinct !DILexicalBlock(scope: !5015, file: !3, line: 325, column: 6)
!5079 = !DILocation(line: 325, column: 11, scope: !5078)
!5080 = !DILocation(line: 325, column: 14, scope: !5078)
!5081 = !DILocation(line: 325, column: 20, scope: !5078)
!5082 = !DILocation(line: 325, column: 6, scope: !5015)
!5083 = !DILocation(line: 326, column: 3, scope: !5078)
!5084 = !DILocation(line: 326, column: 9, scope: !5078)
!5085 = !DILocation(line: 326, column: 15, scope: !5078)
!5086 = !DILocation(line: 327, column: 11, scope: !5087)
!5087 = distinct !DILexicalBlock(scope: !5078, file: !3, line: 327, column: 11)
!5088 = !DILocation(line: 327, column: 17, scope: !5087)
!5089 = !DILocation(line: 327, column: 25, scope: !5087)
!5090 = !DILocation(line: 327, column: 28, scope: !5087)
!5091 = !DILocation(line: 327, column: 34, scope: !5087)
!5092 = !DILocation(line: 327, column: 43, scope: !5087)
!5093 = !DILocation(line: 327, column: 11, scope: !5078)
!5094 = !DILocation(line: 328, column: 3, scope: !5087)
!5095 = !DILocation(line: 328, column: 9, scope: !5087)
!5096 = !DILocation(line: 328, column: 18, scope: !5087)
!5097 = !DILocation(line: 328, column: 23, scope: !5087)
!5098 = !DILabel(scope: !5015, name: "out", file: !3, line: 330)
!5099 = !DILocation(line: 330, column: 2, scope: !5015)
!5100 = !DILocation(line: 342, column: 9, scope: !5015)
!5101 = !DILocation(line: 342, column: 2, scope: !5015)
!5102 = distinct !DISubprogram(name: "acpi_device_notify_remove", scope: !3, file: !3, line: 345, type: !3373, scopeLine: 346, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !214)
!5103 = !DILocalVariable(name: "dev", arg: 1, scope: !5102, file: !3, line: 345, type: !3341)
!5104 = !DILocation(line: 345, column: 53, scope: !5102)
!5105 = !DILocalVariable(name: "adev", scope: !5102, file: !3, line: 347, type: !132)
!5106 = !DILocation(line: 347, column: 22, scope: !5102)
!5107 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !5108, file: !3, line: 347, type: !146)
!5108 = distinct !DILexicalBlock(scope: !5102, file: !3, line: 347, column: 29)
!5109 = !DILocation(line: 347, column: 29, scope: !5108)
!5110 = !DILocalVariable(name: "__mptr", scope: !5111, file: !3, line: 347, type: !131)
!5111 = distinct !DILexicalBlock(scope: !5108, file: !3, line: 347, column: 29)
!5112 = !DILocation(line: 347, column: 29, scope: !5111)
!5113 = !DILocation(line: 347, column: 29, scope: !5114)
!5114 = distinct !DILexicalBlock(scope: !5111, file: !3, line: 347, column: 29)
!5115 = !DILocalVariable(name: "type", scope: !5102, file: !3, line: 348, type: !4142)
!5116 = !DILocation(line: 348, column: 24, scope: !5102)
!5117 = !DILocation(line: 350, column: 7, scope: !5118)
!5118 = distinct !DILexicalBlock(scope: !5102, file: !3, line: 350, column: 6)
!5119 = !DILocation(line: 350, column: 6, scope: !5102)
!5120 = !DILocation(line: 351, column: 3, scope: !5118)
!5121 = !DILocation(line: 353, column: 27, scope: !5102)
!5122 = !DILocation(line: 353, column: 9, scope: !5102)
!5123 = !DILocation(line: 353, column: 7, scope: !5102)
!5124 = !DILocation(line: 354, column: 6, scope: !5125)
!5125 = distinct !DILexicalBlock(scope: !5102, file: !3, line: 354, column: 6)
!5126 = !DILocation(line: 354, column: 11, scope: !5125)
!5127 = !DILocation(line: 354, column: 14, scope: !5125)
!5128 = !DILocation(line: 354, column: 20, scope: !5125)
!5129 = !DILocation(line: 354, column: 6, scope: !5102)
!5130 = !DILocation(line: 355, column: 3, scope: !5125)
!5131 = !DILocation(line: 355, column: 9, scope: !5125)
!5132 = !DILocation(line: 355, column: 17, scope: !5125)
!5133 = !DILocation(line: 356, column: 11, scope: !5134)
!5134 = distinct !DILexicalBlock(scope: !5125, file: !3, line: 356, column: 11)
!5135 = !DILocation(line: 356, column: 17, scope: !5134)
!5136 = !DILocation(line: 356, column: 25, scope: !5134)
!5137 = !DILocation(line: 356, column: 28, scope: !5134)
!5138 = !DILocation(line: 356, column: 34, scope: !5134)
!5139 = !DILocation(line: 356, column: 43, scope: !5134)
!5140 = !DILocation(line: 356, column: 11, scope: !5125)
!5141 = !DILocation(line: 357, column: 3, scope: !5134)
!5142 = !DILocation(line: 357, column: 9, scope: !5134)
!5143 = !DILocation(line: 357, column: 18, scope: !5134)
!5144 = !DILocation(line: 357, column: 25, scope: !5134)
!5145 = !DILocation(line: 359, column: 18, scope: !5102)
!5146 = !DILocation(line: 359, column: 2, scope: !5102)
!5147 = !DILocation(line: 360, column: 2, scope: !5102)
!5148 = !DILocation(line: 361, column: 1, scope: !5102)
!5149 = distinct !DISubprogram(name: "__list_add", scope: !4196, file: !4196, line: 63, type: !5150, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !214)
!5150 = !DISubroutineType(types: !5151)
!5151 = !{null, !190, !190, !190}
!5152 = !DILocalVariable(name: "new", arg: 1, scope: !5149, file: !4196, line: 63, type: !190)
!5153 = !DILocation(line: 63, column: 49, scope: !5149)
!5154 = !DILocalVariable(name: "prev", arg: 2, scope: !5149, file: !4196, line: 64, type: !190)
!5155 = !DILocation(line: 64, column: 28, scope: !5149)
!5156 = !DILocalVariable(name: "next", arg: 3, scope: !5149, file: !4196, line: 65, type: !190)
!5157 = !DILocation(line: 65, column: 28, scope: !5149)
!5158 = !DILocation(line: 67, column: 24, scope: !5159)
!5159 = distinct !DILexicalBlock(scope: !5149, file: !4196, line: 67, column: 6)
!5160 = !DILocation(line: 67, column: 29, scope: !5159)
!5161 = !DILocation(line: 67, column: 35, scope: !5159)
!5162 = !DILocation(line: 67, column: 7, scope: !5159)
!5163 = !DILocation(line: 67, column: 6, scope: !5149)
!5164 = !DILocation(line: 68, column: 3, scope: !5159)
!5165 = !DILocation(line: 70, column: 15, scope: !5149)
!5166 = !DILocation(line: 70, column: 2, scope: !5149)
!5167 = !DILocation(line: 70, column: 8, scope: !5149)
!5168 = !DILocation(line: 70, column: 13, scope: !5149)
!5169 = !DILocation(line: 71, column: 14, scope: !5149)
!5170 = !DILocation(line: 71, column: 2, scope: !5149)
!5171 = !DILocation(line: 71, column: 7, scope: !5149)
!5172 = !DILocation(line: 71, column: 12, scope: !5149)
!5173 = !DILocation(line: 72, column: 14, scope: !5149)
!5174 = !DILocation(line: 72, column: 2, scope: !5149)
!5175 = !DILocation(line: 72, column: 7, scope: !5149)
!5176 = !DILocation(line: 72, column: 12, scope: !5149)
!5177 = !DILocation(line: 73, column: 2, scope: !5149)
!5178 = !DILocation(line: 73, column: 2, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !5149, file: !4196, line: 73, column: 2)
!5180 = !DILocation(line: 73, column: 2, scope: !5181)
!5181 = distinct !DILexicalBlock(scope: !5179, file: !4196, line: 73, column: 2)
!5182 = !DILocation(line: 73, column: 2, scope: !5183)
!5183 = distinct !DILexicalBlock(scope: !5179, file: !4196, line: 73, column: 2)
!5184 = !DILocation(line: 74, column: 1, scope: !5149)
!5185 = distinct !DISubprogram(name: "__list_add_valid", scope: !4196, file: !4196, line: 45, type: !5186, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !214)
!5186 = !DISubroutineType(types: !5187)
!5187 = !{!164, !190, !190, !190}
!5188 = !DILocalVariable(name: "new", arg: 1, scope: !5185, file: !4196, line: 45, type: !190)
!5189 = !DILocation(line: 45, column: 55, scope: !5185)
!5190 = !DILocalVariable(name: "prev", arg: 2, scope: !5185, file: !4196, line: 46, type: !190)
!5191 = !DILocation(line: 46, column: 23, scope: !5185)
!5192 = !DILocalVariable(name: "next", arg: 3, scope: !5185, file: !4196, line: 47, type: !190)
!5193 = !DILocation(line: 47, column: 23, scope: !5185)
!5194 = !DILocation(line: 49, column: 2, scope: !5185)
!5195 = distinct !DISubprogram(name: "__list_del_entry", scope: !4196, file: !4196, line: 130, type: !4232, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !214)
!5196 = !DILocalVariable(name: "entry", arg: 1, scope: !5195, file: !4196, line: 130, type: !190)
!5197 = !DILocation(line: 130, column: 55, scope: !5195)
!5198 = !DILocation(line: 132, column: 30, scope: !5199)
!5199 = distinct !DILexicalBlock(scope: !5195, file: !4196, line: 132, column: 6)
!5200 = !DILocation(line: 132, column: 7, scope: !5199)
!5201 = !DILocation(line: 132, column: 6, scope: !5195)
!5202 = !DILocation(line: 133, column: 3, scope: !5199)
!5203 = !DILocation(line: 135, column: 13, scope: !5195)
!5204 = !DILocation(line: 135, column: 20, scope: !5195)
!5205 = !DILocation(line: 135, column: 26, scope: !5195)
!5206 = !DILocation(line: 135, column: 33, scope: !5195)
!5207 = !DILocation(line: 135, column: 2, scope: !5195)
!5208 = !DILocation(line: 136, column: 1, scope: !5195)
!5209 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !4196, file: !4196, line: 33, type: !4232, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !214)
!5210 = !DILocalVariable(name: "list", arg: 1, scope: !5209, file: !4196, line: 33, type: !190)
!5211 = !DILocation(line: 33, column: 53, scope: !5209)
!5212 = !DILocation(line: 35, column: 2, scope: !5209)
!5213 = !DILocation(line: 35, column: 2, scope: !5214)
!5214 = distinct !DILexicalBlock(scope: !5209, file: !4196, line: 35, column: 2)
!5215 = !DILocation(line: 35, column: 2, scope: !5216)
!5216 = distinct !DILexicalBlock(scope: !5214, file: !4196, line: 35, column: 2)
!5217 = !DILocation(line: 35, column: 2, scope: !5218)
!5218 = distinct !DILexicalBlock(scope: !5214, file: !4196, line: 35, column: 2)
!5219 = !DILocation(line: 36, column: 15, scope: !5209)
!5220 = !DILocation(line: 36, column: 2, scope: !5209)
!5221 = !DILocation(line: 36, column: 8, scope: !5209)
!5222 = !DILocation(line: 36, column: 13, scope: !5209)
!5223 = !DILocation(line: 37, column: 1, scope: !5209)
!5224 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !4196, file: !4196, line: 51, type: !5225, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !214)
!5225 = !DISubroutineType(types: !5226)
!5226 = !{!164, !190}
!5227 = !DILocalVariable(name: "entry", arg: 1, scope: !5224, file: !4196, line: 51, type: !190)
!5228 = !DILocation(line: 51, column: 61, scope: !5224)
!5229 = !DILocation(line: 53, column: 2, scope: !5224)
!5230 = distinct !DISubprogram(name: "__list_del", scope: !4196, file: !4196, line: 110, type: !4197, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !214)
!5231 = !DILocalVariable(name: "prev", arg: 1, scope: !5230, file: !4196, line: 110, type: !190)
!5232 = !DILocation(line: 110, column: 50, scope: !5230)
!5233 = !DILocalVariable(name: "next", arg: 2, scope: !5230, file: !4196, line: 110, type: !190)
!5234 = !DILocation(line: 110, column: 75, scope: !5230)
!5235 = !DILocation(line: 112, column: 15, scope: !5230)
!5236 = !DILocation(line: 112, column: 2, scope: !5230)
!5237 = !DILocation(line: 112, column: 8, scope: !5230)
!5238 = !DILocation(line: 112, column: 13, scope: !5230)
!5239 = !DILocation(line: 113, column: 2, scope: !5230)
!5240 = !DILocation(line: 113, column: 2, scope: !5241)
!5241 = distinct !DILexicalBlock(scope: !5230, file: !4196, line: 113, column: 2)
!5242 = !DILocation(line: 113, column: 2, scope: !5243)
!5243 = distinct !DILexicalBlock(scope: !5241, file: !4196, line: 113, column: 2)
!5244 = !DILocation(line: 113, column: 2, scope: !5245)
!5245 = distinct !DILexicalBlock(scope: !5241, file: !4196, line: 113, column: 2)
!5246 = !DILocation(line: 114, column: 1, scope: !5230)
!5247 = distinct !DISubprogram(name: "list_empty", scope: !4196, file: !4196, line: 280, type: !5248, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !214)
!5248 = !DISubroutineType(types: !5249)
!5249 = !{!137, !5250}
!5250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5251, size: 64)
!5251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !187)
!5252 = !DILocalVariable(name: "head", arg: 1, scope: !5247, file: !4196, line: 280, type: !5250)
!5253 = !DILocation(line: 280, column: 54, scope: !5247)
!5254 = !DILocation(line: 282, column: 9, scope: !5255)
!5255 = distinct !DILexicalBlock(scope: !5247, file: !4196, line: 282, column: 9)
!5256 = !DILocation(line: 282, column: 9, scope: !5257)
!5257 = distinct !DILexicalBlock(scope: !5255, file: !4196, line: 282, column: 9)
!5258 = !DILocation(line: 282, column: 34, scope: !5247)
!5259 = !DILocation(line: 282, column: 31, scope: !5247)
!5260 = !DILocation(line: 282, column: 2, scope: !5247)
!5261 = distinct !DISubprogram(name: "get_order", scope: !5262, file: !5262, line: 29, type: !5263, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !214)
!5262 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5263 = !DISubroutineType(types: !5264)
!5264 = !{!137, !291}
!5265 = !DILocalVariable(name: "x", arg: 1, scope: !5266, file: !5267, line: 366, type: !389)
!5266 = distinct !DISubprogram(name: "fls64", scope: !5267, file: !5267, line: 366, type: !5268, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !214)
!5267 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5268 = !DISubroutineType(types: !5269)
!5269 = !{!137, !389}
!5270 = !DILocation(line: 366, column: 40, scope: !5266, inlinedAt: !5271)
!5271 = distinct !DILocation(line: 46, column: 9, scope: !5261)
!5272 = !DILocalVariable(name: "bitpos", scope: !5266, file: !5267, line: 368, type: !137)
!5273 = !DILocation(line: 368, column: 6, scope: !5266, inlinedAt: !5271)
!5274 = !DILocalVariable(name: "size", arg: 1, scope: !5261, file: !5262, line: 29, type: !291)
!5275 = !DILocation(line: 29, column: 63, scope: !5261)
!5276 = !DILocation(line: 31, column: 27, scope: !5277)
!5277 = distinct !DILexicalBlock(scope: !5261, file: !5262, line: 31, column: 6)
!5278 = !DILocation(line: 31, column: 6, scope: !5277)
!5279 = !DILocation(line: 31, column: 6, scope: !5261)
!5280 = !DILocation(line: 32, column: 8, scope: !5281)
!5281 = distinct !DILexicalBlock(scope: !5282, file: !5262, line: 32, column: 7)
!5282 = distinct !DILexicalBlock(scope: !5277, file: !5262, line: 31, column: 34)
!5283 = !DILocation(line: 32, column: 7, scope: !5282)
!5284 = !DILocation(line: 33, column: 4, scope: !5281)
!5285 = !DILocation(line: 35, column: 7, scope: !5286)
!5286 = distinct !DILexicalBlock(scope: !5282, file: !5262, line: 35, column: 7)
!5287 = !DILocation(line: 35, column: 12, scope: !5286)
!5288 = !DILocation(line: 35, column: 7, scope: !5282)
!5289 = !DILocation(line: 36, column: 4, scope: !5286)
!5290 = !DILocation(line: 38, column: 10, scope: !5282)
!5291 = !DILocation(line: 38, column: 28, scope: !5282)
!5292 = !DILocation(line: 38, column: 41, scope: !5282)
!5293 = !DILocation(line: 38, column: 3, scope: !5282)
!5294 = !DILocation(line: 41, column: 6, scope: !5261)
!5295 = !DILocation(line: 42, column: 7, scope: !5261)
!5296 = !DILocation(line: 46, column: 15, scope: !5261)
!5297 = !DILocation(line: 374, column: 2, scope: !5266, inlinedAt: !5271)
!5298 = !DILocation(line: 376, column: 14, scope: !5266, inlinedAt: !5271)
!5299 = !{i32 322465}
!5300 = !DILocation(line: 377, column: 9, scope: !5266, inlinedAt: !5271)
!5301 = !DILocation(line: 377, column: 16, scope: !5266, inlinedAt: !5271)
!5302 = !DILocation(line: 46, column: 2, scope: !5261)
!5303 = !DILocation(line: 48, column: 1, scope: !5261)
!5304 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5305, file: !5305, line: 30, type: !5306, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !214)
!5305 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5306 = !DISubroutineType(types: !5307)
!5307 = !{!137, !388}
!5308 = !DILocation(line: 366, column: 40, scope: !5266, inlinedAt: !5309)
!5309 = distinct !DILocation(line: 32, column: 9, scope: !5304)
!5310 = !DILocation(line: 368, column: 6, scope: !5266, inlinedAt: !5309)
!5311 = !DILocalVariable(name: "n", arg: 1, scope: !5304, file: !5305, line: 30, type: !388)
!5312 = !DILocation(line: 30, column: 21, scope: !5304)
!5313 = !DILocation(line: 32, column: 15, scope: !5304)
!5314 = !DILocation(line: 374, column: 2, scope: !5266, inlinedAt: !5309)
!5315 = !DILocation(line: 376, column: 14, scope: !5266, inlinedAt: !5309)
!5316 = !DILocation(line: 377, column: 9, scope: !5266, inlinedAt: !5309)
!5317 = !DILocation(line: 377, column: 16, scope: !5266, inlinedAt: !5309)
!5318 = !DILocation(line: 32, column: 18, scope: !5304)
!5319 = !DILocation(line: 32, column: 2, scope: !5304)
!5320 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5321, file: !5321, line: 137, type: !5322, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !214)
!5321 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5322 = !DISubroutineType(types: !5323)
!5323 = !{!131, !904, !173, !288, !712}
!5324 = !DILocalVariable(name: "s", arg: 1, scope: !5320, file: !5321, line: 137, type: !904)
!5325 = !DILocation(line: 137, column: 54, scope: !5320)
!5326 = !DILocalVariable(name: "object", arg: 2, scope: !5320, file: !5321, line: 137, type: !173)
!5327 = !DILocation(line: 137, column: 69, scope: !5320)
!5328 = !DILocalVariable(name: "size", arg: 3, scope: !5320, file: !5321, line: 138, type: !288)
!5329 = !DILocation(line: 138, column: 12, scope: !5320)
!5330 = !DILocalVariable(name: "flags", arg: 4, scope: !5320, file: !5321, line: 138, type: !712)
!5331 = !DILocation(line: 138, column: 24, scope: !5320)
!5332 = !DILocation(line: 140, column: 17, scope: !5320)
!5333 = !DILocation(line: 140, column: 2, scope: !5320)
!5334 = distinct !DISubprogram(name: "acpi_get_bus_type", scope: !3, file: !3, line: 70, type: !5335, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !214)
!5335 = !DISubroutineType(types: !5336)
!5336 = !{!4142, !3341}
!5337 = !DILocalVariable(name: "dev", arg: 1, scope: !5334, file: !3, line: 70, type: !3341)
!5338 = !DILocation(line: 70, column: 63, scope: !5334)
!5339 = !DILocalVariable(name: "tmp", scope: !5334, file: !3, line: 72, type: !4142)
!5340 = !DILocation(line: 72, column: 24, scope: !5334)
!5341 = !DILocalVariable(name: "ret", scope: !5334, file: !3, line: 72, type: !4142)
!5342 = !DILocation(line: 72, column: 30, scope: !5334)
!5343 = !DILocation(line: 74, column: 2, scope: !5334)
!5344 = !DILocalVariable(name: "__mptr", scope: !5345, file: !3, line: 75, type: !131)
!5345 = distinct !DILexicalBlock(scope: !5346, file: !3, line: 75, column: 2)
!5346 = distinct !DILexicalBlock(scope: !5334, file: !3, line: 75, column: 2)
!5347 = !DILocation(line: 75, column: 2, scope: !5345)
!5348 = !DILocation(line: 75, column: 2, scope: !5349)
!5349 = distinct !DILexicalBlock(scope: !5345, file: !3, line: 75, column: 2)
!5350 = !DILocation(line: 75, column: 2, scope: !5346)
!5351 = !DILocation(line: 75, column: 2, scope: !5352)
!5352 = distinct !DILexicalBlock(scope: !5346, file: !3, line: 75, column: 2)
!5353 = !DILocation(line: 76, column: 7, scope: !5354)
!5354 = distinct !DILexicalBlock(scope: !5355, file: !3, line: 76, column: 7)
!5355 = distinct !DILexicalBlock(scope: !5352, file: !3, line: 75, column: 49)
!5356 = !DILocation(line: 76, column: 12, scope: !5354)
!5357 = !DILocation(line: 76, column: 18, scope: !5354)
!5358 = !DILocation(line: 76, column: 7, scope: !5355)
!5359 = !DILocation(line: 77, column: 10, scope: !5360)
!5360 = distinct !DILexicalBlock(scope: !5354, file: !3, line: 76, column: 24)
!5361 = !DILocation(line: 77, column: 8, scope: !5360)
!5362 = !DILocation(line: 78, column: 4, scope: !5360)
!5363 = !DILocation(line: 80, column: 2, scope: !5355)
!5364 = !DILocalVariable(name: "__mptr", scope: !5365, file: !3, line: 75, type: !131)
!5365 = distinct !DILexicalBlock(scope: !5352, file: !3, line: 75, column: 2)
!5366 = !DILocation(line: 75, column: 2, scope: !5365)
!5367 = !DILocation(line: 75, column: 2, scope: !5368)
!5368 = distinct !DILexicalBlock(scope: !5365, file: !3, line: 75, column: 2)
!5369 = distinct !{!5369, !5350, !5370}
!5370 = !DILocation(line: 80, column: 2, scope: !5346)
!5371 = !DILocation(line: 81, column: 2, scope: !5334)
!5372 = !DILocation(line: 82, column: 9, scope: !5334)
!5373 = !DILocation(line: 82, column: 2, scope: !5334)
!5374 = distinct !DISubprogram(name: "acpi_configure_pmsi_domain", scope: !5375, file: !5375, line: 48, type: !3364, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !214)
!5375 = !DIFile(filename: "./include/linux/acpi_iort.h", directory: "/home/lizy2001/genbc/linux")
!5376 = !DILocalVariable(name: "dev", arg: 1, scope: !5374, file: !5375, line: 48, type: !3341)
!5377 = !DILocation(line: 48, column: 62, scope: !5374)
!5378 = !DILocation(line: 48, column: 69, scope: !5374)
