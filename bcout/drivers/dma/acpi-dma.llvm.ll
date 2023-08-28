; ModuleID = '../bcout/drivers/dma/acpi-dma.llvm.bc'
source_filename = "drivers/dma/acpi-dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kmem_cache = type opaque
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.67, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.67 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type { %union.anon, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.65, %struct.list_head, %struct.list_head, %union.anon.66 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.0, i8* }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.63 }
%union.anon.63 = type { %struct.anon.64 }
%struct.anon.64 = type { %struct.spinlock, i32 }
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
%struct.page = type { i64, %union.anon.1, %union.anon.55, %struct.atomic_t, [8 x i8] }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.55 = type { %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.56, i32 }
%union.anon.56 = type { %struct.kuid_t }
%struct.mem_dqblk = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.kprojid_t = type { i32 }
%struct.quotactl_ops = type { i32 (%struct.super_block*, i32, i32, %struct.path*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32, %struct.qc_info*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.kqid*, %struct.qc_dqblk*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.qc_state*)*, i32 (%struct.super_block*, i32)* }
%struct.qc_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qc_dqblk = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32 }
%struct.qc_state = type { i32, [3 x %struct.qc_type_state] }
%struct.qc_type_state = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.export_operations = type opaque
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
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
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.cpumask = type { [1 x i64] }
%struct.sched_info = type {}
%struct.mm_struct = type { %struct.anon.18, [0 x i64] }
%struct.anon.18 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.19, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.19 = type { %struct.rb_node, i64 }
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
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.xarray = type { %struct.spinlock, i32, i8* }
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
%union.anon.65 = type { %struct.list_head }
%union.anon.66 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.57, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.58, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.59, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.62, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%union.anon.57 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.58 = type { %struct.callback_head }
%union.anon.59 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.4 }
%union.anon.4 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i32, i64, i64, %union.anon.5, %union.anon.6 }
%union.anon.5 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.6 = type { i64 }
%struct.swap_info_struct = type opaque
%union.anon.62 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.60 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.60 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.33 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.33 = type { %struct.callback_head }
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
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
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
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.dma_chan = type { %struct.dma_device*, %struct.device*, i32, i32, i32, %struct.dma_chan_dev*, i8*, %struct.list_head, %struct.dma_chan_percpu*, i32, i32, %struct.dma_router*, i8*, i8* }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, %struct.device*, %struct.module*, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, i32 (%struct.dma_chan*)*, void (%struct.dma_chan*)*, %struct.dma_async_tx_descriptor* (%struct.dma_chan*, i64, i64, i64, i64)*, %struct.dma_async_tx_descriptor* (%struct.dma_chan*, i64, i64*, i32, i64, i64)*, %struct.dma_async_tx_descriptor* (%struct.dma_chan*, i64*, i32, i64, i32*, i64)*, %struct.dma_async_tx_descriptor* (%struct.dma_chan*, i64*, i64*, i32, i8*, i64, i64)*, %struct.dma_async_tx_descriptor* (%struct.dma_chan*, i64*, i64*, i32, i8*, i64, i32*, i64)*, %struct.dma_async_tx_descriptor* (%struct.dma_chan*, i64, i32, i64, i64)*, %struct.dma_async_tx_descriptor* (%struct.dma_chan*, %struct.scatterlist*, i32, i32, i64)*, %struct.dma_async_tx_descriptor* (%struct.dma_chan*, i64)*, %struct.dma_async_tx_descriptor* (%struct.dma_chan*, %struct.scatterlist*, i32, i32, i64, i8*)*, %struct.dma_async_tx_descriptor* (%struct.dma_chan*, i64, i64, i64, i32, i64)*, %struct.dma_async_tx_descriptor* (%struct.dma_chan*, %struct.dma_interleaved_template*, i64)*, %struct.dma_async_tx_descriptor* (%struct.dma_chan*, i64, i64, i64)*, void (%struct.dma_chan*, %struct.dma_slave_caps*)*, i32 (%struct.dma_chan*, %struct.dma_slave_config*)*, i32 (%struct.dma_chan*)*, i32 (%struct.dma_chan*)*, i32 (%struct.dma_chan*)*, void (%struct.dma_chan*)*, i32 (%struct.dma_chan*, i32, %struct.dma_tx_state*)*, void (%struct.dma_chan*)*, void (%struct.dma_device*)* }
%struct.dma_filter = type { i1 (%struct.dma_chan*, i8*)*, i32, %struct.dma_slave_map* }
%struct.dma_slave_map = type { i8*, i8*, i8* }
%struct.dma_cap_mask_t = type { [1 x i64] }
%struct.ida = type { %struct.xarray }
%struct.dma_async_tx_descriptor = type { i32, i32, i64, %struct.dma_chan*, i32 (%struct.dma_async_tx_descriptor*)*, i32 (%struct.dma_async_tx_descriptor*)*, void (i8*)*, void (i8*, %struct.dmaengine_result*)*, i8*, %struct.dmaengine_unmap_data*, i32, %struct.dma_descriptor_metadata_ops* }
%struct.dmaengine_result = type { i32, i32 }
%struct.dmaengine_unmap_data = type { i8, i8, i8, i8, %struct.device*, %struct.kref, i64, [0 x i64] }
%struct.dma_descriptor_metadata_ops = type { i32 (%struct.dma_async_tx_descriptor*, i8*, i64)*, i8* (%struct.dma_async_tx_descriptor*, i64*, i64*)*, i32 (%struct.dma_async_tx_descriptor*, i64)* }
%struct.scatterlist = type { i64, i32, i32, i64, i32 }
%struct.dma_interleaved_template = type { i64, i64, i32, i8, i8, i8, i8, i64, i64, [0 x %struct.data_chunk] }
%struct.data_chunk = type { i64, i64, i64, i64 }
%struct.dma_slave_caps = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i8 }
%struct.dma_slave_config = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.dma_chan_dev = type { %struct.dma_chan*, %struct.device, i32 }
%struct.dma_chan_percpu = type { i64, i64 }
%struct.dma_router = type { %struct.device*, void (%struct.device*, i8*)* }
%struct.acpi_dma_spec = type { i32, i32, %struct.device* }
%struct.acpi_dma = type { %struct.list_head, %struct.device*, {}*, i8*, i16, i16 }
%struct.acpi_device = type { i32, i8*, %struct.fwnode_handle, %struct.acpi_device*, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.acpi_device_status, %struct.acpi_device_flags, %struct.acpi_device_pnp, %struct.acpi_device_power, %struct.acpi_device_wakeup, %struct.acpi_device_perf, %struct.acpi_device_dir, %struct.acpi_device_data, %struct.acpi_scan_handler*, %struct.acpi_hotplug_context*, %struct.acpi_driver*, %struct.acpi_gpio_mapping*, i8*, %struct.device, i32, i32, %struct.list_head, %struct.mutex, void (%struct.acpi_device*)* }
%struct.acpi_device_status = type { i32 }
%struct.acpi_device_flags = type { i32 }
%struct.acpi_device_pnp = type { [8 x i8], %struct.acpi_pnp_type, i64, i8*, %struct.list_head, [40 x i8], [20 x i8], %union.acpi_object* }
%struct.acpi_pnp_type = type { i32 }
%union.acpi_object = type { %struct.anon.73 }
%struct.anon.73 = type { i32, i32, i64, i32 }
%struct.acpi_device_power = type { i32, %struct.acpi_device_power_flags, [5 x %struct.acpi_device_power_state] }
%struct.acpi_device_power_flags = type { i32 }
%struct.acpi_device_power_state = type { %struct.anon.75, i32, i32, %struct.list_head }
%struct.anon.75 = type { i8 }
%struct.acpi_device_wakeup = type { i8*, i64, i64, %struct.list_head, %struct.acpi_device_wakeup_flags, %struct.acpi_device_wakeup_context, %struct.wakeup_source*, i32, i32 }
%struct.acpi_device_wakeup_flags = type { i8 }
%struct.acpi_device_wakeup_context = type { void (%struct.acpi_device_wakeup_context*)*, %struct.device* }
%struct.acpi_device_perf = type { i32, %struct.acpi_device_perf_flags, i32, %struct.acpi_device_perf_state* }
%struct.acpi_device_perf_flags = type { i8 }
%struct.acpi_device_perf_state = type { %struct.anon.76, i8, i8, i32 }
%struct.anon.76 = type { i8 }
%struct.acpi_device_dir = type { %struct.proc_dir_entry* }
%struct.proc_dir_entry = type opaque
%struct.acpi_device_data = type { %union.acpi_object*, %struct.list_head, %union.acpi_object*, %struct.list_head }
%struct.acpi_scan_handler = type { %struct.acpi_device_id*, %struct.list_head, i1 (i8*, %struct.acpi_device_id**)*, i32 (%struct.acpi_device*, %struct.acpi_device_id*)*, void (%struct.acpi_device*)*, void (%struct.device*)*, void (%struct.device*)*, %struct.acpi_hotplug_profile }
%struct.acpi_hotplug_profile = type { %struct.kobject, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*)*, i8 }
%struct.acpi_hotplug_context = type { %struct.acpi_device*, i32 (%struct.acpi_device*, i32)*, void (%struct.acpi_device*, i32)*, void (%struct.acpi_device*)* }
%struct.acpi_driver = type { [80 x i8], [80 x i8], %struct.acpi_device_id*, i32, %struct.acpi_device_ops, %struct.device_driver, %struct.module* }
%struct.acpi_device_ops = type { i32 (%struct.acpi_device*)*, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*, i32)* }
%struct.acpi_gpio_mapping = type opaque
%struct.acpi_csrt_group = type { i32, i32, i32, i16, i16, i16, i16, i32 }
%struct.acpi_table_csrt = type { %struct.acpi_table_header }
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_dma_parser_data = type { %struct.acpi_dma_spec, i64, i64 }
%struct.acpi_resource = type { i32, i32, %union.acpi_resource_data }
%union.acpi_resource_data = type { %struct.acpi_resource_vendor_typed, [40 x i8] }
%struct.acpi_resource_vendor_typed = type { i16, i8, [16 x i8], [1 x i8] }
%struct.acpi_resource_fixed_dma = type <{ i16, i16, i8 }>
%struct.acpi_dma_filter_info = type { %struct.dma_cap_mask_t, i1 (%struct.dma_chan*, i8*)* }
%struct.acpi_csrt_shared_info = type { i16, i16, i32, i32, i32, i8, i8, i8, i8, i16, i16, i32 }
%struct.resource_entry = type { %struct.list_head, %struct.resource*, i64, %struct.resource }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }

@acpi_dma_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @acpi_dma_lock to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @acpi_dma_lock to i8*), i64 8) to %struct.list_head*) } }, align 8, !dbg !0
@acpi_dma_list = internal global %struct.list_head { %struct.list_head* @acpi_dma_list, %struct.list_head* @acpi_dma_list }, align 8, !dbg !4604
@.str = private unnamed_addr constant [23 x i8] c"drivers/dma/acpi-dma.c\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"dma-names\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"CSRT\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"failed to get the CSRT table\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"error in parsing resource group\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_dma_controller_register(%struct.device* %dev, %struct.dma_chan* (%struct.acpi_dma_spec*, %struct.acpi_dma*)* %acpi_dma_xlate, i8* %data) #0 !dbg !4611 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %acpi_dma_xlate.addr = alloca %struct.dma_chan* (%struct.acpi_dma_spec*, %struct.acpi_dma*)*, align 8
  %data.addr = alloca i8*, align 8
  %adev = alloca %struct.acpi_device*, align 8
  %adma = alloca %struct.acpi_dma*, align 8
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp2 = alloca %struct.acpi_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4614, metadata !DIExpression()), !dbg !4615
  store %struct.dma_chan* (%struct.acpi_dma_spec*, %struct.acpi_dma*)* %acpi_dma_xlate, %struct.dma_chan* (%struct.acpi_dma_spec*, %struct.acpi_dma*)** %acpi_dma_xlate.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_chan* (%struct.acpi_dma_spec*, %struct.acpi_dma*)** %acpi_dma_xlate.addr, metadata !4616, metadata !DIExpression()), !dbg !4617
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4618, metadata !DIExpression()), !dbg !4619
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev, metadata !4620, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.declare(metadata %struct.acpi_dma** %adma, metadata !4622, metadata !DIExpression()), !dbg !4623
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4624
  %tobool = icmp ne %struct.device* %0, null, !dbg !4624
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4626

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.dma_chan* (%struct.acpi_dma_spec*, %struct.acpi_dma*)*, %struct.dma_chan* (%struct.acpi_dma_spec*, %struct.acpi_dma*)** %acpi_dma_xlate.addr, align 8, !dbg !4627
  %tobool1 = icmp ne %struct.dma_chan* (%struct.acpi_dma_spec*, %struct.acpi_dma*)* %1, null, !dbg !4627
  br i1 %tobool1, label %if.end, label %if.then, !dbg !4628

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !4629
  br label %return, !dbg !4629

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !4630, metadata !DIExpression()), !dbg !4632
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4632
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 24, !dbg !4632
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !4632
  store %struct.fwnode_handle* %3, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !4632
  %4 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !4632
  %call = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %4) #8, !dbg !4632
  br i1 %call, label %cond.true, label %cond.false, !dbg !4632

cond.true:                                        ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4633, metadata !DIExpression()), !dbg !4635
  %5 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !4635
  %6 = bitcast %struct.fwnode_handle* %5 to i8*, !dbg !4635
  store i8* %6, i8** %__mptr, align 8, !dbg !4635
  br label %do.body, !dbg !4635

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !4636

do.end:                                           ; preds = %do.body
  %7 = load i8*, i8** %__mptr, align 8, !dbg !4635
  %add.ptr = getelementptr i8, i8* %7, i64 -16, !dbg !4635
  %8 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !4635
  store %struct.acpi_device* %8, %struct.acpi_device** %tmp2, align 8, !dbg !4636
  %9 = load %struct.acpi_device*, %struct.acpi_device** %tmp2, align 8, !dbg !4635
  br label %cond.end, !dbg !4632

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !4632

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %9, %do.end ], [ null, %cond.false ], !dbg !4632
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp, align 8, !dbg !4632
  %10 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !4632
  store %struct.acpi_device* %10, %struct.acpi_device** %adev, align 8, !dbg !4638
  %11 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !4639
  %tobool3 = icmp ne %struct.acpi_device* %11, null, !dbg !4639
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !4641

if.then4:                                         ; preds = %cond.end
  store i32 -22, i32* %retval, align 4, !dbg !4642
  br label %return, !dbg !4642

if.end5:                                          ; preds = %cond.end
  %call6 = call i8* @kzalloc(i64 48, i32 3264) #8, !dbg !4643
  %12 = bitcast i8* %call6 to %struct.acpi_dma*, !dbg !4643
  store %struct.acpi_dma* %12, %struct.acpi_dma** %adma, align 8, !dbg !4644
  %13 = load %struct.acpi_dma*, %struct.acpi_dma** %adma, align 8, !dbg !4645
  %tobool7 = icmp ne %struct.acpi_dma* %13, null, !dbg !4645
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !4647

if.then8:                                         ; preds = %if.end5
  store i32 -12, i32* %retval, align 4, !dbg !4648
  br label %return, !dbg !4648

if.end9:                                          ; preds = %if.end5
  %14 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4649
  %15 = load %struct.acpi_dma*, %struct.acpi_dma** %adma, align 8, !dbg !4650
  %dev10 = getelementptr inbounds %struct.acpi_dma, %struct.acpi_dma* %15, i32 0, i32 1, !dbg !4651
  store %struct.device* %14, %struct.device** %dev10, align 8, !dbg !4652
  %16 = load %struct.dma_chan* (%struct.acpi_dma_spec*, %struct.acpi_dma*)*, %struct.dma_chan* (%struct.acpi_dma_spec*, %struct.acpi_dma*)** %acpi_dma_xlate.addr, align 8, !dbg !4653
  %17 = load %struct.acpi_dma*, %struct.acpi_dma** %adma, align 8, !dbg !4654
  %acpi_dma_xlate11 = getelementptr inbounds %struct.acpi_dma, %struct.acpi_dma* %17, i32 0, i32 2, !dbg !4655
  %acpi_dma_xlate12 = bitcast {}** %acpi_dma_xlate11 to %struct.dma_chan* (%struct.acpi_dma_spec*, %struct.acpi_dma*)**, !dbg !4655
  store %struct.dma_chan* (%struct.acpi_dma_spec*, %struct.acpi_dma*)* %16, %struct.dma_chan* (%struct.acpi_dma_spec*, %struct.acpi_dma*)** %acpi_dma_xlate12, align 8, !dbg !4656
  %18 = load i8*, i8** %data.addr, align 8, !dbg !4657
  %19 = load %struct.acpi_dma*, %struct.acpi_dma** %adma, align 8, !dbg !4658
  %data13 = getelementptr inbounds %struct.acpi_dma, %struct.acpi_dma* %19, i32 0, i32 3, !dbg !4659
  store i8* %18, i8** %data13, align 8, !dbg !4660
  %20 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !4661
  %21 = load %struct.acpi_dma*, %struct.acpi_dma** %adma, align 8, !dbg !4662
  call void @acpi_dma_parse_csrt(%struct.acpi_device* %20, %struct.acpi_dma* %21) #8, !dbg !4663
  call void @mutex_lock(%struct.mutex* @acpi_dma_lock) #8, !dbg !4664
  %22 = load %struct.acpi_dma*, %struct.acpi_dma** %adma, align 8, !dbg !4665
  %dma_controllers = getelementptr inbounds %struct.acpi_dma, %struct.acpi_dma* %22, i32 0, i32 0, !dbg !4666
  call void @list_add_tail(%struct.list_head* %dma_controllers, %struct.list_head* @acpi_dma_list) #8, !dbg !4667
  call void @mutex_unlock(%struct.mutex* @acpi_dma_lock) #8, !dbg !4668
  store i32 0, i32* %retval, align 4, !dbg !4669
  br label %return, !dbg !4669

return:                                           ; preds = %if.end9, %if.then8, %if.then4, %if.then
  %23 = load i32, i32* %retval, align 4, !dbg !4670
  ret i32 %23, !dbg !4670
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local zeroext i1 @is_acpi_device_node(%struct.fwnode_handle*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4671 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4674, metadata !DIExpression()), !dbg !4678
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4684, metadata !DIExpression()), !dbg !4685
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4686, metadata !DIExpression()), !dbg !4687
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4688, metadata !DIExpression()), !dbg !4689
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4690, metadata !DIExpression()), !dbg !4694
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4696, metadata !DIExpression()), !dbg !4700
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4702, metadata !DIExpression()), !dbg !4706
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4711, metadata !DIExpression()), !dbg !4712
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4713, metadata !DIExpression()), !dbg !4714
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4715, metadata !DIExpression()), !dbg !4716
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4717, metadata !DIExpression()), !dbg !4718
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4719, metadata !DIExpression()), !dbg !4720
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4721, metadata !DIExpression()), !dbg !4722
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4723, metadata !DIExpression()), !dbg !4724
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4725, metadata !DIExpression()), !dbg !4726
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4727, metadata !DIExpression()), !dbg !4728
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4729, metadata !DIExpression()), !dbg !4730
  %0 = load i64, i64* %size.addr, align 8, !dbg !4731
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4732
  %or = or i32 %1, 256, !dbg !4733
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4734
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !4735
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4736

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4737
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4738
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4739

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4740
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4741
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4742
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !4743
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4720
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4744
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4745
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4746
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4747
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4748
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4749
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !4750
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4750
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4750
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4750
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !4750
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4751
  br label %kmalloc.exit, !dbg !4751

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4752
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4753
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4753
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4755

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4756
  br label %kmalloc_index.exit.i, !dbg !4756

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4757
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4759
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4760

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4761
  br label %kmalloc_index.exit.i, !dbg !4761

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4762
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4764
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4765

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4766
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4767
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4768

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4769
  br label %kmalloc_index.exit.i, !dbg !4769

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4770
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4772
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4773

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4774
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4775
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4776

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4777
  br label %kmalloc_index.exit.i, !dbg !4777

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4778
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4780
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4781

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4782
  br label %kmalloc_index.exit.i, !dbg !4782

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4783
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4785
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4786

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4787
  br label %kmalloc_index.exit.i, !dbg !4787

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4788
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4790
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4791

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4792
  br label %kmalloc_index.exit.i, !dbg !4792

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4793
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4795
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4796

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4797
  br label %kmalloc_index.exit.i, !dbg !4797

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4798
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4800
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4801

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4802
  br label %kmalloc_index.exit.i, !dbg !4802

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4803
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4805
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4806

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4807
  br label %kmalloc_index.exit.i, !dbg !4807

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4808
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4810
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4811

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4812
  br label %kmalloc_index.exit.i, !dbg !4812

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4813
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4815
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4816

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4817
  br label %kmalloc_index.exit.i, !dbg !4817

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4818
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4820
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4821

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4822
  br label %kmalloc_index.exit.i, !dbg !4822

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4823
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4825
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4826

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4827
  br label %kmalloc_index.exit.i, !dbg !4827

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4828
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4830
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4831

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4832
  br label %kmalloc_index.exit.i, !dbg !4832

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4833
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4835
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4836

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4837
  br label %kmalloc_index.exit.i, !dbg !4837

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4838
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4840
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4841

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4842
  br label %kmalloc_index.exit.i, !dbg !4842

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4843
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4845
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4846

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4847
  br label %kmalloc_index.exit.i, !dbg !4847

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4848
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4850
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4851

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4852
  br label %kmalloc_index.exit.i, !dbg !4852

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4853
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4855
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4856

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4857
  br label %kmalloc_index.exit.i, !dbg !4857

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4858
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4860
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4861

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4862
  br label %kmalloc_index.exit.i, !dbg !4862

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4863
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4865
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4866

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4867
  br label %kmalloc_index.exit.i, !dbg !4867

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4868
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4870
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4871

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4872
  br label %kmalloc_index.exit.i, !dbg !4872

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4873
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4875
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4876

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4877
  br label %kmalloc_index.exit.i, !dbg !4877

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4878
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4880
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4881

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4882
  br label %kmalloc_index.exit.i, !dbg !4882

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4883
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4885
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4886

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4887
  br label %kmalloc_index.exit.i, !dbg !4887

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4888
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4890
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4891

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4892
  br label %kmalloc_index.exit.i, !dbg !4892

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4893
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4895
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4896

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4897
  br label %kmalloc_index.exit.i, !dbg !4897

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !4898, !srcloc !4901
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 230) #9, !dbg !4902, !srcloc !4905
  unreachable, !dbg !4906

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4907
  store i32 %45, i32* %index.i, align 4, !dbg !4908
  %46 = load i32, i32* %index.i, align 4, !dbg !4909
  %tobool.i = icmp ne i32 %46, 0, !dbg !4909
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4911

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4912
  br label %kmalloc.exit, !dbg !4912

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4913
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4914
  %and.i.i = and i32 %48, 17, !dbg !4914
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4914
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4914
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4914
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4914
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4916

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4917
  br label %kmalloc_type.exit.i, !dbg !4917

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4918
  %and2.i.i = and i32 %49, 1, !dbg !4919
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4918
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4918
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4918
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4920
  br label %kmalloc_type.exit.i, !dbg !4920

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4921
  %idxprom.i = zext i32 %51 to i64, !dbg !4922
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4922
  %52 = load i32, i32* %index.i, align 4, !dbg !4923
  %idxprom6.i = zext i32 %52 to i64, !dbg !4922
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4922
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4922
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4924
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4925
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4926
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4927
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !4928
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4928
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4928
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4928
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !4928
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4689
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4929
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4930
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4931
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4932
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !4933
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4934
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4935
  store i8* %62, i8** %retval.i, align 8, !dbg !4936
  br label %kmalloc.exit, !dbg !4936

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4937
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4938
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !4939
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4939
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4939
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4939
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !4939
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4940
  br label %kmalloc.exit, !dbg !4940

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4941
  ret i8* %65, !dbg !4942
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_dma_parse_csrt(%struct.acpi_device* %adev, %struct.acpi_dma* %adma) #0 !dbg !4943 {
entry:
  %adev.addr = alloca %struct.acpi_device*, align 8
  %adma.addr = alloca %struct.acpi_dma*, align 8
  %grp = alloca %struct.acpi_csrt_group*, align 8
  %end = alloca %struct.acpi_csrt_group*, align 8
  %csrt = alloca %struct.acpi_table_csrt*, align 8
  %status = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !4946, metadata !DIExpression()), !dbg !4947
  store %struct.acpi_dma* %adma, %struct.acpi_dma** %adma.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_dma** %adma.addr, metadata !4948, metadata !DIExpression()), !dbg !4949
  call void @llvm.dbg.declare(metadata %struct.acpi_csrt_group** %grp, metadata !4950, metadata !DIExpression()), !dbg !4951
  call void @llvm.dbg.declare(metadata %struct.acpi_csrt_group** %end, metadata !4952, metadata !DIExpression()), !dbg !4953
  call void @llvm.dbg.declare(metadata %struct.acpi_table_csrt** %csrt, metadata !4954, metadata !DIExpression()), !dbg !4959
  call void @llvm.dbg.declare(metadata i32* %status, metadata !4960, metadata !DIExpression()), !dbg !4961
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4962, metadata !DIExpression()), !dbg !4963
  %0 = bitcast %struct.acpi_table_csrt** %csrt to %struct.acpi_table_header**, !dbg !4964
  %call = call i32 @acpi_get_table(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 0, %struct.acpi_table_header** %0) #8, !dbg !4965
  store i32 %call, i32* %status, align 4, !dbg !4966
  %1 = load i32, i32* %status, align 4, !dbg !4967
  %tobool = icmp ne i32 %1, 0, !dbg !4967
  br i1 %tobool, label %if.then, label %if.end2, !dbg !4969

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %status, align 4, !dbg !4970
  %cmp = icmp ne i32 %2, 5, !dbg !4973
  br i1 %cmp, label %if.then1, label %if.end, !dbg !4974

if.then1:                                         ; preds = %if.then
  %3 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4975
  %dev = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %3, i32 0, i32 21, !dbg !4975
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0)) #12, !dbg !4975
  br label %if.end, !dbg !4975

if.end:                                           ; preds = %if.then1, %if.then
  br label %return, !dbg !4976

if.end2:                                          ; preds = %entry
  %4 = load %struct.acpi_table_csrt*, %struct.acpi_table_csrt** %csrt, align 8, !dbg !4977
  %add.ptr = getelementptr %struct.acpi_table_csrt, %struct.acpi_table_csrt* %4, i64 1, !dbg !4978
  %5 = bitcast %struct.acpi_table_csrt* %add.ptr to %struct.acpi_csrt_group*, !dbg !4979
  store %struct.acpi_csrt_group* %5, %struct.acpi_csrt_group** %grp, align 8, !dbg !4980
  %6 = load %struct.acpi_table_csrt*, %struct.acpi_table_csrt** %csrt, align 8, !dbg !4981
  %7 = bitcast %struct.acpi_table_csrt* %6 to i8*, !dbg !4982
  %8 = load %struct.acpi_table_csrt*, %struct.acpi_table_csrt** %csrt, align 8, !dbg !4983
  %header = getelementptr inbounds %struct.acpi_table_csrt, %struct.acpi_table_csrt* %8, i32 0, i32 0, !dbg !4984
  %length = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %header, i32 0, i32 1, !dbg !4985
  %9 = load i32, i32* %length, align 1, !dbg !4985
  %idx.ext = zext i32 %9 to i64, !dbg !4986
  %add.ptr3 = getelementptr i8, i8* %7, i64 %idx.ext, !dbg !4986
  %10 = bitcast i8* %add.ptr3 to %struct.acpi_csrt_group*, !dbg !4987
  store %struct.acpi_csrt_group* %10, %struct.acpi_csrt_group** %end, align 8, !dbg !4988
  br label %while.cond, !dbg !4989

while.cond:                                       ; preds = %if.end9, %if.end2
  %11 = load %struct.acpi_csrt_group*, %struct.acpi_csrt_group** %grp, align 8, !dbg !4990
  %12 = load %struct.acpi_csrt_group*, %struct.acpi_csrt_group** %end, align 8, !dbg !4991
  %cmp4 = icmp ult %struct.acpi_csrt_group* %11, %12, !dbg !4992
  br i1 %cmp4, label %while.body, label %while.end, !dbg !4989

while.body:                                       ; preds = %while.cond
  %13 = load %struct.acpi_csrt_group*, %struct.acpi_csrt_group** %grp, align 8, !dbg !4993
  %14 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4995
  %15 = load %struct.acpi_dma*, %struct.acpi_dma** %adma.addr, align 8, !dbg !4996
  %call5 = call i32 @acpi_dma_parse_resource_group(%struct.acpi_csrt_group* %13, %struct.acpi_device* %14, %struct.acpi_dma* %15) #8, !dbg !4997
  store i32 %call5, i32* %ret, align 4, !dbg !4998
  %16 = load i32, i32* %ret, align 4, !dbg !4999
  %cmp6 = icmp slt i32 %16, 0, !dbg !5001
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !5002

if.then7:                                         ; preds = %while.body
  %17 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !5003
  %dev8 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %17, i32 0, i32 21, !dbg !5003
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0)) #12, !dbg !5003
  br label %while.end, !dbg !5005

if.end9:                                          ; preds = %while.body
  %18 = load %struct.acpi_csrt_group*, %struct.acpi_csrt_group** %grp, align 8, !dbg !5006
  %19 = bitcast %struct.acpi_csrt_group* %18 to i8*, !dbg !5007
  %20 = load %struct.acpi_csrt_group*, %struct.acpi_csrt_group** %grp, align 8, !dbg !5008
  %length10 = getelementptr inbounds %struct.acpi_csrt_group, %struct.acpi_csrt_group* %20, i32 0, i32 0, !dbg !5009
  %21 = load i32, i32* %length10, align 1, !dbg !5009
  %idx.ext11 = zext i32 %21 to i64, !dbg !5010
  %add.ptr12 = getelementptr i8, i8* %19, i64 %idx.ext11, !dbg !5010
  %22 = bitcast i8* %add.ptr12 to %struct.acpi_csrt_group*, !dbg !5011
  store %struct.acpi_csrt_group* %22, %struct.acpi_csrt_group** %grp, align 8, !dbg !5012
  br label %while.cond, !dbg !4989, !llvm.loop !5013

while.end:                                        ; preds = %if.then7, %while.cond
  %23 = load %struct.acpi_table_csrt*, %struct.acpi_table_csrt** %csrt, align 8, !dbg !5015
  %24 = bitcast %struct.acpi_table_csrt* %23 to %struct.acpi_table_header*, !dbg !5016
  call void @acpi_put_table(%struct.acpi_table_header* %24) #8, !dbg !5017
  br label %return, !dbg !5018

return:                                           ; preds = %while.end, %if.end
  ret void, !dbg !5018
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !5019 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5023, metadata !DIExpression()), !dbg !5024
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !5025, metadata !DIExpression()), !dbg !5026
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5027
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5028
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5029
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !5029
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5030
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #8, !dbg !5031
  ret void, !dbg !5032
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_dma_controller_free(%struct.device* %dev) #0 !dbg !5033 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %adma = alloca %struct.acpi_dma*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_dma*, align 8
  %__mptr6 = alloca i8*, align 8
  %tmp10 = alloca %struct.acpi_dma*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5034, metadata !DIExpression()), !dbg !5035
  call void @llvm.dbg.declare(metadata %struct.acpi_dma** %adma, metadata !5036, metadata !DIExpression()), !dbg !5037
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5038
  %tobool = icmp ne %struct.device* %0, null, !dbg !5038
  br i1 %tobool, label %if.end, label %if.then, !dbg !5040

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5041
  br label %return, !dbg !5041

if.end:                                           ; preds = %entry
  call void @mutex_lock(%struct.mutex* @acpi_dma_lock) #8, !dbg !5042
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5043, metadata !DIExpression()), !dbg !5046
  %1 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @acpi_dma_list, i32 0, i32 0), align 8, !dbg !5046
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !5046
  store i8* %2, i8** %__mptr, align 8, !dbg !5046
  br label %do.body, !dbg !5046

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !5047

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !5046
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !5046
  %4 = bitcast i8* %add.ptr to %struct.acpi_dma*, !dbg !5046
  store %struct.acpi_dma* %4, %struct.acpi_dma** %tmp, align 8, !dbg !5047
  %5 = load %struct.acpi_dma*, %struct.acpi_dma** %tmp, align 8, !dbg !5046
  store %struct.acpi_dma* %5, %struct.acpi_dma** %adma, align 8, !dbg !5049
  br label %for.cond, !dbg !5049

for.cond:                                         ; preds = %do.end9, %do.end
  %6 = load %struct.acpi_dma*, %struct.acpi_dma** %adma, align 8, !dbg !5050
  %dma_controllers = getelementptr inbounds %struct.acpi_dma, %struct.acpi_dma* %6, i32 0, i32 0, !dbg !5050
  %cmp = icmp eq %struct.list_head* %dma_controllers, @acpi_dma_list, !dbg !5050
  %lnot = xor i1 %cmp, true, !dbg !5050
  br i1 %lnot, label %for.body, label %for.end, !dbg !5049

for.body:                                         ; preds = %for.cond
  %7 = load %struct.acpi_dma*, %struct.acpi_dma** %adma, align 8, !dbg !5052
  %dev1 = getelementptr inbounds %struct.acpi_dma, %struct.acpi_dma* %7, i32 0, i32 1, !dbg !5054
  %8 = load %struct.device*, %struct.device** %dev1, align 8, !dbg !5054
  %9 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5055
  %cmp2 = icmp eq %struct.device* %8, %9, !dbg !5056
  br i1 %cmp2, label %if.then3, label %if.end5, !dbg !5057

if.then3:                                         ; preds = %for.body
  %10 = load %struct.acpi_dma*, %struct.acpi_dma** %adma, align 8, !dbg !5058
  %dma_controllers4 = getelementptr inbounds %struct.acpi_dma, %struct.acpi_dma* %10, i32 0, i32 0, !dbg !5060
  call void @list_del(%struct.list_head* %dma_controllers4) #8, !dbg !5061
  call void @mutex_unlock(%struct.mutex* @acpi_dma_lock) #8, !dbg !5062
  %11 = load %struct.acpi_dma*, %struct.acpi_dma** %adma, align 8, !dbg !5063
  %12 = bitcast %struct.acpi_dma* %11 to i8*, !dbg !5063
  call void @kfree(i8* %12) #8, !dbg !5064
  store i32 0, i32* %retval, align 4, !dbg !5065
  br label %return, !dbg !5065

if.end5:                                          ; preds = %for.body
  br label %for.inc, !dbg !5055

for.inc:                                          ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i8** %__mptr6, metadata !5066, metadata !DIExpression()), !dbg !5068
  %13 = load %struct.acpi_dma*, %struct.acpi_dma** %adma, align 8, !dbg !5068
  %dma_controllers7 = getelementptr inbounds %struct.acpi_dma, %struct.acpi_dma* %13, i32 0, i32 0, !dbg !5068
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %dma_controllers7, i32 0, i32 0, !dbg !5068
  %14 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5068
  %15 = bitcast %struct.list_head* %14 to i8*, !dbg !5068
  store i8* %15, i8** %__mptr6, align 8, !dbg !5068
  br label %do.body8, !dbg !5068

do.body8:                                         ; preds = %for.inc
  br label %do.end9, !dbg !5069

do.end9:                                          ; preds = %do.body8
  %16 = load i8*, i8** %__mptr6, align 8, !dbg !5068
  %add.ptr11 = getelementptr i8, i8* %16, i64 0, !dbg !5068
  %17 = bitcast i8* %add.ptr11 to %struct.acpi_dma*, !dbg !5068
  store %struct.acpi_dma* %17, %struct.acpi_dma** %tmp10, align 8, !dbg !5069
  %18 = load %struct.acpi_dma*, %struct.acpi_dma** %tmp10, align 8, !dbg !5068
  store %struct.acpi_dma* %18, %struct.acpi_dma** %adma, align 8, !dbg !5050
  br label %for.cond, !dbg !5050, !llvm.loop !5071

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(%struct.mutex* @acpi_dma_lock) #8, !dbg !5073
  store i32 -19, i32* %retval, align 4, !dbg !5074
  br label %return, !dbg !5074

return:                                           ; preds = %for.end, %if.then3, %if.then
  %19 = load i32, i32* %retval, align 4, !dbg !5075
  ret i32 %19, !dbg !5075
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !5076 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5079, metadata !DIExpression()), !dbg !5080
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5081
  call void @__list_del_entry(%struct.list_head* %0) #8, !dbg !5082
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5083
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !5084
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !5085
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5086
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !5087
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !5088
  ret void, !dbg !5089
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @devm_acpi_dma_controller_register(%struct.device* %dev, %struct.dma_chan* (%struct.acpi_dma_spec*, %struct.acpi_dma*)* %acpi_dma_xlate, i8* %data) #0 !dbg !5090 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %acpi_dma_xlate.addr = alloca %struct.dma_chan* (%struct.acpi_dma_spec*, %struct.acpi_dma*)*, align 8
  %data.addr = alloca i8*, align 8
  %res = alloca i8*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5091, metadata !DIExpression()), !dbg !5092
  store %struct.dma_chan* (%struct.acpi_dma_spec*, %struct.acpi_dma*)* %acpi_dma_xlate, %struct.dma_chan* (%struct.acpi_dma_spec*, %struct.acpi_dma*)** %acpi_dma_xlate.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_chan* (%struct.acpi_dma_spec*, %struct.acpi_dma*)** %acpi_dma_xlate.addr, metadata !5093, metadata !DIExpression()), !dbg !5094
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5095, metadata !DIExpression()), !dbg !5096
  call void @llvm.dbg.declare(metadata i8** %res, metadata !5097, metadata !DIExpression()), !dbg !5098
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5099, metadata !DIExpression()), !dbg !5100
  %call = call i8* @devres_alloc(void (%struct.device*, i8*)* @devm_acpi_dma_release, i64 0, i32 3264) #8, !dbg !5101
  store i8* %call, i8** %res, align 8, !dbg !5102
  %0 = load i8*, i8** %res, align 8, !dbg !5103
  %tobool = icmp ne i8* %0, null, !dbg !5103
  br i1 %tobool, label %if.end, label %if.then, !dbg !5105

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !5106
  br label %return, !dbg !5106

if.end:                                           ; preds = %entry
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5107
  %2 = load %struct.dma_chan* (%struct.acpi_dma_spec*, %struct.acpi_dma*)*, %struct.dma_chan* (%struct.acpi_dma_spec*, %struct.acpi_dma*)** %acpi_dma_xlate.addr, align 8, !dbg !5108
  %3 = load i8*, i8** %data.addr, align 8, !dbg !5109
  %call1 = call i32 @acpi_dma_controller_register(%struct.device* %1, %struct.dma_chan* (%struct.acpi_dma_spec*, %struct.acpi_dma*)* %2, i8* %3) #8, !dbg !5110
  store i32 %call1, i32* %ret, align 4, !dbg !5111
  %4 = load i32, i32* %ret, align 4, !dbg !5112
  %tobool2 = icmp ne i32 %4, 0, !dbg !5112
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5114

if.then3:                                         ; preds = %if.end
  %5 = load i8*, i8** %res, align 8, !dbg !5115
  call void @devres_free(i8* %5) #8, !dbg !5117
  %6 = load i32, i32* %ret, align 4, !dbg !5118
  store i32 %6, i32* %retval, align 4, !dbg !5119
  br label %return, !dbg !5119

if.end4:                                          ; preds = %if.end
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5120
  %8 = load i8*, i8** %res, align 8, !dbg !5121
  call void @devres_add(%struct.device* %7, i8* %8) #8, !dbg !5122
  store i32 0, i32* %retval, align 4, !dbg !5123
  br label %return, !dbg !5123

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !5124
  ret i32 %9, !dbg !5124
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devres_alloc(void (%struct.device*, i8*)* %release, i64 %size, i32 %gfp) #0 !dbg !5125 {
entry:
  %release.addr = alloca void (%struct.device*, i8*)*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store void (%struct.device*, i8*)* %release, void (%struct.device*, i8*)** %release.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.device*, i8*)** %release.addr, metadata !5129, metadata !DIExpression()), !dbg !5130
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5131, metadata !DIExpression()), !dbg !5132
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !5133, metadata !DIExpression()), !dbg !5134
  %0 = load void (%struct.device*, i8*)*, void (%struct.device*, i8*)** %release.addr, align 8, !dbg !5135
  %1 = load i64, i64* %size.addr, align 8, !dbg !5136
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !5137
  %call = call noalias i8* @devres_alloc_node(void (%struct.device*, i8*)* %0, i64 %1, i32 %2, i32 -1) #8, !dbg !5138
  ret i8* %call, !dbg !5139
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @devm_acpi_dma_release(%struct.device* %dev, i8* %res) #0 !dbg !5140 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %res.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5141, metadata !DIExpression()), !dbg !5142
  store i8* %res, i8** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %res.addr, metadata !5143, metadata !DIExpression()), !dbg !5144
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5145
  %call = call i32 @acpi_dma_controller_free(%struct.device* %0) #8, !dbg !5146
  ret void, !dbg !5147
}

; Function Attrs: noredzone
declare dso_local void @devres_free(i8*) #2

; Function Attrs: noredzone
declare dso_local void @devres_add(%struct.device*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @devm_acpi_dma_controller_free(%struct.device* %dev) #0 !dbg !5148 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5149, metadata !DIExpression()), !dbg !5150
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5151, metadata !DIExpression()), !dbg !5153
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5153
  %call = call i32 @devres_release(%struct.device* %0, void (%struct.device*, i8*)* @devm_acpi_dma_release, i32 (%struct.device*, i8*, i8*)* null, i8* null) #8, !dbg !5153
  %tobool = icmp ne i32 %call, 0, !dbg !5153
  %lnot = xor i1 %tobool, true, !dbg !5153
  %lnot1 = xor i1 %lnot, true, !dbg !5153
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5153
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !5153
  %1 = load i32, i32* %__ret_warn_on, align 4, !dbg !5154
  %tobool2 = icmp ne i32 %1, 0, !dbg !5154
  %lnot3 = xor i1 %tobool2, true, !dbg !5154
  %lnot5 = xor i1 %lnot3, true, !dbg !5154
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !5154
  %conv = sext i32 %lnot.ext6 to i64, !dbg !5154
  %tobool7 = icmp ne i64 %conv, 0, !dbg !5154
  br i1 %tobool7, label %if.then, label %if.end, !dbg !5153

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5154

do.body:                                          ; preds = %if.then
  br label %do.body8, !dbg !5156

do.body8:                                         ; preds = %do.body
  br label %do.end, !dbg !5158

do.end:                                           ; preds = %do.body8
  br label %do.body9, !dbg !5156

do.body9:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 278, i32 2305, i64 12) #9, !dbg !5160, !srcloc !5162
  br label %do.end10, !dbg !5160

do.end10:                                         ; preds = %do.body9
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 246) #9, !dbg !5163, !srcloc !5165
  br label %do.body11, !dbg !5156

do.body11:                                        ; preds = %do.end10
  br label %do.end12, !dbg !5166

do.end12:                                         ; preds = %do.body11
  br label %do.end13, !dbg !5156

do.end13:                                         ; preds = %do.end12
  br label %if.end, !dbg !5156

if.end:                                           ; preds = %do.end13, %entry
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !5153
  %tobool14 = icmp ne i32 %2, 0, !dbg !5153
  %lnot15 = xor i1 %tobool14, true, !dbg !5153
  %lnot17 = xor i1 %lnot15, true, !dbg !5153
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !5153
  %conv19 = sext i32 %lnot.ext18 to i64, !dbg !5153
  store i64 %conv19, i64* %tmp, align 8, !dbg !5154
  %3 = load i64, i64* %tmp, align 8, !dbg !5153
  ret void, !dbg !5168
}

; Function Attrs: noredzone
declare dso_local i32 @devres_release(%struct.device*, void (%struct.device*, i8*)*, i32 (%struct.device*, i8*, i8*)*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.dma_chan* @acpi_dma_request_slave_chan_by_index(%struct.device* %dev, i64 %index) #0 !dbg !5169 {
entry:
  %retval = alloca %struct.dma_chan*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %index.addr = alloca i64, align 8
  %pdata = alloca %struct.acpi_dma_parser_data, align 8
  %dma_spec = alloca %struct.acpi_dma_spec*, align 8
  %adev = alloca %struct.acpi_device*, align 8
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp2 = alloca %struct.acpi_device*, align 8
  %resource_list = alloca %struct.list_head, align 8
  %adma = alloca %struct.acpi_dma*, align 8
  %chan = alloca %struct.dma_chan*, align 8
  %found = alloca i32, align 4
  %ret = alloca i32, align 4
  %__mptr15 = alloca i8*, align 8
  %tmp18 = alloca %struct.acpi_dma*, align 8
  %__mptr34 = alloca i8*, align 8
  %tmp38 = alloca %struct.acpi_dma*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5172, metadata !DIExpression()), !dbg !5173
  store i64 %index, i64* %index.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %index.addr, metadata !5174, metadata !DIExpression()), !dbg !5175
  call void @llvm.dbg.declare(metadata %struct.acpi_dma_parser_data* %pdata, metadata !5176, metadata !DIExpression()), !dbg !5182
  call void @llvm.dbg.declare(metadata %struct.acpi_dma_spec** %dma_spec, metadata !5183, metadata !DIExpression()), !dbg !5184
  %dma_spec1 = getelementptr inbounds %struct.acpi_dma_parser_data, %struct.acpi_dma_parser_data* %pdata, i32 0, i32 0, !dbg !5185
  store %struct.acpi_dma_spec* %dma_spec1, %struct.acpi_dma_spec** %dma_spec, align 8, !dbg !5184
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev, metadata !5186, metadata !DIExpression()), !dbg !5187
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !5188, metadata !DIExpression()), !dbg !5190
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5190
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 24, !dbg !5190
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !5190
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !5190
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !5190
  %call = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %2) #8, !dbg !5190
  br i1 %call, label %cond.true, label %cond.false, !dbg !5190

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5191, metadata !DIExpression()), !dbg !5193
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !5193
  %4 = bitcast %struct.fwnode_handle* %3 to i8*, !dbg !5193
  store i8* %4, i8** %__mptr, align 8, !dbg !5193
  br label %do.body, !dbg !5193

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !5194

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !5193
  %add.ptr = getelementptr i8, i8* %5, i64 -16, !dbg !5193
  %6 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !5193
  store %struct.acpi_device* %6, %struct.acpi_device** %tmp2, align 8, !dbg !5194
  %7 = load %struct.acpi_device*, %struct.acpi_device** %tmp2, align 8, !dbg !5193
  br label %cond.end, !dbg !5190

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5190

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %7, %do.end ], [ null, %cond.false ], !dbg !5190
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp, align 8, !dbg !5190
  %8 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !5190
  store %struct.acpi_device* %8, %struct.acpi_device** %adev, align 8, !dbg !5187
  call void @llvm.dbg.declare(metadata %struct.list_head* %resource_list, metadata !5196, metadata !DIExpression()), !dbg !5197
  call void @llvm.dbg.declare(metadata %struct.acpi_dma** %adma, metadata !5198, metadata !DIExpression()), !dbg !5199
  call void @llvm.dbg.declare(metadata %struct.dma_chan** %chan, metadata !5200, metadata !DIExpression()), !dbg !5201
  store %struct.dma_chan* null, %struct.dma_chan** %chan, align 8, !dbg !5201
  call void @llvm.dbg.declare(metadata i32* %found, metadata !5202, metadata !DIExpression()), !dbg !5203
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5204, metadata !DIExpression()), !dbg !5205
  %9 = bitcast %struct.acpi_dma_parser_data* %pdata to i8*, !dbg !5206
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 32, i1 false), !dbg !5206
  %10 = load i64, i64* %index.addr, align 8, !dbg !5207
  %index3 = getelementptr inbounds %struct.acpi_dma_parser_data, %struct.acpi_dma_parser_data* %pdata, i32 0, i32 1, !dbg !5208
  store i64 %10, i64* %index3, align 8, !dbg !5209
  %11 = load %struct.acpi_dma_spec*, %struct.acpi_dma_spec** %dma_spec, align 8, !dbg !5210
  %chan_id = getelementptr inbounds %struct.acpi_dma_spec, %struct.acpi_dma_spec* %11, i32 0, i32 0, !dbg !5211
  store i32 -1, i32* %chan_id, align 8, !dbg !5212
  %12 = load %struct.acpi_dma_spec*, %struct.acpi_dma_spec** %dma_spec, align 8, !dbg !5213
  %slave_id = getelementptr inbounds %struct.acpi_dma_spec, %struct.acpi_dma_spec* %12, i32 0, i32 1, !dbg !5214
  store i32 -1, i32* %slave_id, align 4, !dbg !5215
  call void @INIT_LIST_HEAD(%struct.list_head* %resource_list) #8, !dbg !5216
  %13 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !5217
  %14 = bitcast %struct.acpi_dma_parser_data* %pdata to i8*, !dbg !5218
  %call4 = call i32 @acpi_dev_get_resources(%struct.acpi_device* %13, %struct.list_head* %resource_list, i32 (%struct.acpi_resource*, i8*)* @acpi_dma_parse_fixed_dma, i8* %14) #8, !dbg !5219
  store i32 %call4, i32* %ret, align 4, !dbg !5220
  call void @acpi_dev_free_resource_list(%struct.list_head* %resource_list) #8, !dbg !5221
  %15 = load i32, i32* %ret, align 4, !dbg !5222
  %cmp = icmp slt i32 %15, 0, !dbg !5224
  br i1 %cmp, label %if.then, label %if.end, !dbg !5225

if.then:                                          ; preds = %cond.end
  %16 = load i32, i32* %ret, align 4, !dbg !5226
  %conv = sext i32 %16 to i64, !dbg !5226
  %call5 = call i8* @ERR_PTR(i64 %conv) #8, !dbg !5227
  %17 = bitcast i8* %call5 to %struct.dma_chan*, !dbg !5227
  store %struct.dma_chan* %17, %struct.dma_chan** %retval, align 8, !dbg !5228
  br label %return, !dbg !5228

if.end:                                           ; preds = %cond.end
  %18 = load %struct.acpi_dma_spec*, %struct.acpi_dma_spec** %dma_spec, align 8, !dbg !5229
  %slave_id6 = getelementptr inbounds %struct.acpi_dma_spec, %struct.acpi_dma_spec* %18, i32 0, i32 1, !dbg !5231
  %19 = load i32, i32* %slave_id6, align 4, !dbg !5231
  %cmp7 = icmp slt i32 %19, 0, !dbg !5232
  br i1 %cmp7, label %if.then12, label %lor.lhs.false, !dbg !5233

lor.lhs.false:                                    ; preds = %if.end
  %20 = load %struct.acpi_dma_spec*, %struct.acpi_dma_spec** %dma_spec, align 8, !dbg !5234
  %chan_id9 = getelementptr inbounds %struct.acpi_dma_spec, %struct.acpi_dma_spec* %20, i32 0, i32 0, !dbg !5235
  %21 = load i32, i32* %chan_id9, align 8, !dbg !5235
  %cmp10 = icmp slt i32 %21, 0, !dbg !5236
  br i1 %cmp10, label %if.then12, label %if.end14, !dbg !5237

if.then12:                                        ; preds = %lor.lhs.false, %if.end
  %call13 = call i8* @ERR_PTR(i64 -19) #8, !dbg !5238
  %22 = bitcast i8* %call13 to %struct.dma_chan*, !dbg !5238
  store %struct.dma_chan* %22, %struct.dma_chan** %retval, align 8, !dbg !5239
  br label %return, !dbg !5239

if.end14:                                         ; preds = %lor.lhs.false
  call void @mutex_lock(%struct.mutex* @acpi_dma_lock) #8, !dbg !5240
  call void @llvm.dbg.declare(metadata i8** %__mptr15, metadata !5241, metadata !DIExpression()), !dbg !5244
  %23 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @acpi_dma_list, i32 0, i32 0), align 8, !dbg !5244
  %24 = bitcast %struct.list_head* %23 to i8*, !dbg !5244
  store i8* %24, i8** %__mptr15, align 8, !dbg !5244
  br label %do.body16, !dbg !5244

do.body16:                                        ; preds = %if.end14
  br label %do.end17, !dbg !5245

do.end17:                                         ; preds = %do.body16
  %25 = load i8*, i8** %__mptr15, align 8, !dbg !5244
  %add.ptr19 = getelementptr i8, i8* %25, i64 0, !dbg !5244
  %26 = bitcast i8* %add.ptr19 to %struct.acpi_dma*, !dbg !5244
  store %struct.acpi_dma* %26, %struct.acpi_dma** %tmp18, align 8, !dbg !5245
  %27 = load %struct.acpi_dma*, %struct.acpi_dma** %tmp18, align 8, !dbg !5244
  store %struct.acpi_dma* %27, %struct.acpi_dma** %adma, align 8, !dbg !5247
  br label %for.cond, !dbg !5247

for.cond:                                         ; preds = %do.end37, %do.end17
  %28 = load %struct.acpi_dma*, %struct.acpi_dma** %adma, align 8, !dbg !5248
  %dma_controllers = getelementptr inbounds %struct.acpi_dma, %struct.acpi_dma* %28, i32 0, i32 0, !dbg !5248
  %cmp20 = icmp eq %struct.list_head* %dma_controllers, @acpi_dma_list, !dbg !5248
  %lnot = xor i1 %cmp20, true, !dbg !5248
  br i1 %lnot, label %for.body, label %for.end, !dbg !5247

for.body:                                         ; preds = %for.cond
  %29 = load %struct.acpi_dma*, %struct.acpi_dma** %adma, align 8, !dbg !5250
  %30 = load %struct.acpi_dma_spec*, %struct.acpi_dma_spec** %dma_spec, align 8, !dbg !5252
  %call22 = call i32 @acpi_dma_update_dma_spec(%struct.acpi_dma* %29, %struct.acpi_dma_spec* %30) #8, !dbg !5253
  store i32 %call22, i32* %found, align 4, !dbg !5254
  %31 = load i32, i32* %found, align 4, !dbg !5255
  %cmp23 = icmp slt i32 %31, 0, !dbg !5257
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !5258

if.then25:                                        ; preds = %for.body
  br label %for.inc, !dbg !5259

if.end26:                                         ; preds = %for.body
  %32 = load %struct.acpi_dma*, %struct.acpi_dma** %adma, align 8, !dbg !5260
  %acpi_dma_xlate = getelementptr inbounds %struct.acpi_dma, %struct.acpi_dma* %32, i32 0, i32 2, !dbg !5261
  %acpi_dma_xlate27 = bitcast {}** %acpi_dma_xlate to %struct.dma_chan* (%struct.acpi_dma_spec*, %struct.acpi_dma*)**, !dbg !5261
  %33 = load %struct.dma_chan* (%struct.acpi_dma_spec*, %struct.acpi_dma*)*, %struct.dma_chan* (%struct.acpi_dma_spec*, %struct.acpi_dma*)** %acpi_dma_xlate27, align 8, !dbg !5261
  %34 = load %struct.acpi_dma_spec*, %struct.acpi_dma_spec** %dma_spec, align 8, !dbg !5262
  %35 = load %struct.acpi_dma*, %struct.acpi_dma** %adma, align 8, !dbg !5263
  %call28 = call %struct.dma_chan* %33(%struct.acpi_dma_spec* %34, %struct.acpi_dma* %35) #8, !dbg !5260
  store %struct.dma_chan* %call28, %struct.dma_chan** %chan, align 8, !dbg !5264
  %36 = load i32, i32* %found, align 4, !dbg !5265
  %cmp29 = icmp sgt i32 %36, 0, !dbg !5267
  br i1 %cmp29, label %if.then32, label %lor.lhs.false31, !dbg !5268

lor.lhs.false31:                                  ; preds = %if.end26
  %37 = load %struct.dma_chan*, %struct.dma_chan** %chan, align 8, !dbg !5269
  %tobool = icmp ne %struct.dma_chan* %37, null, !dbg !5269
  br i1 %tobool, label %if.then32, label %if.end33, !dbg !5270

if.then32:                                        ; preds = %lor.lhs.false31, %if.end26
  br label %for.end, !dbg !5271

if.end33:                                         ; preds = %lor.lhs.false31
  br label %for.inc, !dbg !5272

for.inc:                                          ; preds = %if.end33, %if.then25
  call void @llvm.dbg.declare(metadata i8** %__mptr34, metadata !5273, metadata !DIExpression()), !dbg !5275
  %38 = load %struct.acpi_dma*, %struct.acpi_dma** %adma, align 8, !dbg !5275
  %dma_controllers35 = getelementptr inbounds %struct.acpi_dma, %struct.acpi_dma* %38, i32 0, i32 0, !dbg !5275
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %dma_controllers35, i32 0, i32 0, !dbg !5275
  %39 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5275
  %40 = bitcast %struct.list_head* %39 to i8*, !dbg !5275
  store i8* %40, i8** %__mptr34, align 8, !dbg !5275
  br label %do.body36, !dbg !5275

do.body36:                                        ; preds = %for.inc
  br label %do.end37, !dbg !5276

do.end37:                                         ; preds = %do.body36
  %41 = load i8*, i8** %__mptr34, align 8, !dbg !5275
  %add.ptr39 = getelementptr i8, i8* %41, i64 0, !dbg !5275
  %42 = bitcast i8* %add.ptr39 to %struct.acpi_dma*, !dbg !5275
  store %struct.acpi_dma* %42, %struct.acpi_dma** %tmp38, align 8, !dbg !5276
  %43 = load %struct.acpi_dma*, %struct.acpi_dma** %tmp38, align 8, !dbg !5275
  store %struct.acpi_dma* %43, %struct.acpi_dma** %adma, align 8, !dbg !5248
  br label %for.cond, !dbg !5248, !llvm.loop !5278

for.end:                                          ; preds = %if.then32, %for.cond
  call void @mutex_unlock(%struct.mutex* @acpi_dma_lock) #8, !dbg !5280
  %44 = load %struct.dma_chan*, %struct.dma_chan** %chan, align 8, !dbg !5281
  %tobool40 = icmp ne %struct.dma_chan* %44, null, !dbg !5281
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5281

cond.true41:                                      ; preds = %for.end
  %45 = load %struct.dma_chan*, %struct.dma_chan** %chan, align 8, !dbg !5282
  %46 = bitcast %struct.dma_chan* %45 to i8*, !dbg !5282
  br label %cond.end44, !dbg !5281

cond.false42:                                     ; preds = %for.end
  %call43 = call i8* @ERR_PTR(i64 -517) #8, !dbg !5283
  br label %cond.end44, !dbg !5281

cond.end44:                                       ; preds = %cond.false42, %cond.true41
  %cond45 = phi i8* [ %46, %cond.true41 ], [ %call43, %cond.false42 ], !dbg !5281
  %47 = bitcast i8* %cond45 to %struct.dma_chan*, !dbg !5281
  store %struct.dma_chan* %47, %struct.dma_chan** %retval, align 8, !dbg !5284
  br label %return, !dbg !5284

return:                                           ; preds = %cond.end44, %if.then12, %if.then
  %48 = load %struct.dma_chan*, %struct.dma_chan** %retval, align 8, !dbg !5285
  ret %struct.dma_chan* %48, !dbg !5285
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !5286 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !5287, metadata !DIExpression()), !dbg !5288
  br label %do.body, !dbg !5289

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5290

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5292

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5290

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5294
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5294
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !5294
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !5294
  br label %do.end3, !dbg !5294

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5290

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5296
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5297
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !5298
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !5299
  ret void, !dbg !5300
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_dev_get_resources(%struct.acpi_device*, %struct.list_head*, i32 (%struct.acpi_resource*, i8*)*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_dma_parse_fixed_dma(%struct.acpi_resource* %res, i8* %data) #0 !dbg !5301 {
entry:
  %res.addr = alloca %struct.acpi_resource*, align 8
  %data.addr = alloca i8*, align 8
  %pdata = alloca %struct.acpi_dma_parser_data*, align 8
  %dma = alloca %struct.acpi_resource_fixed_dma*, align 8
  store %struct.acpi_resource* %res, %struct.acpi_resource** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_resource** %res.addr, metadata !5666, metadata !DIExpression()), !dbg !5667
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5668, metadata !DIExpression()), !dbg !5669
  call void @llvm.dbg.declare(metadata %struct.acpi_dma_parser_data** %pdata, metadata !5670, metadata !DIExpression()), !dbg !5672
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5673
  %1 = bitcast i8* %0 to %struct.acpi_dma_parser_data*, !dbg !5673
  store %struct.acpi_dma_parser_data* %1, %struct.acpi_dma_parser_data** %pdata, align 8, !dbg !5672
  %2 = load %struct.acpi_resource*, %struct.acpi_resource** %res.addr, align 8, !dbg !5674
  %type = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %2, i32 0, i32 0, !dbg !5676
  %3 = load i32, i32* %type, align 1, !dbg !5676
  %cmp = icmp eq i32 %3, 18, !dbg !5677
  br i1 %cmp, label %if.then, label %if.end6, !dbg !5678

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.acpi_resource_fixed_dma** %dma, metadata !5679, metadata !DIExpression()), !dbg !5682
  %4 = load %struct.acpi_resource*, %struct.acpi_resource** %res.addr, align 8, !dbg !5683
  %data1 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %4, i32 0, i32 2, !dbg !5684
  %fixed_dma = bitcast %union.acpi_resource_data* %data1 to %struct.acpi_resource_fixed_dma*, !dbg !5685
  store %struct.acpi_resource_fixed_dma* %fixed_dma, %struct.acpi_resource_fixed_dma** %dma, align 8, !dbg !5682
  %5 = load %struct.acpi_dma_parser_data*, %struct.acpi_dma_parser_data** %pdata, align 8, !dbg !5686
  %n = getelementptr inbounds %struct.acpi_dma_parser_data, %struct.acpi_dma_parser_data* %5, i32 0, i32 2, !dbg !5688
  %6 = load i64, i64* %n, align 8, !dbg !5689
  %inc = add i64 %6, 1, !dbg !5689
  store i64 %inc, i64* %n, align 8, !dbg !5689
  %7 = load %struct.acpi_dma_parser_data*, %struct.acpi_dma_parser_data** %pdata, align 8, !dbg !5690
  %index = getelementptr inbounds %struct.acpi_dma_parser_data, %struct.acpi_dma_parser_data* %7, i32 0, i32 1, !dbg !5691
  %8 = load i64, i64* %index, align 8, !dbg !5691
  %cmp2 = icmp eq i64 %6, %8, !dbg !5692
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !5693

if.then3:                                         ; preds = %if.then
  %9 = load %struct.acpi_resource_fixed_dma*, %struct.acpi_resource_fixed_dma** %dma, align 8, !dbg !5694
  %channels = getelementptr inbounds %struct.acpi_resource_fixed_dma, %struct.acpi_resource_fixed_dma* %9, i32 0, i32 1, !dbg !5696
  %10 = load i16, i16* %channels, align 1, !dbg !5696
  %conv = zext i16 %10 to i32, !dbg !5694
  %11 = load %struct.acpi_dma_parser_data*, %struct.acpi_dma_parser_data** %pdata, align 8, !dbg !5697
  %dma_spec = getelementptr inbounds %struct.acpi_dma_parser_data, %struct.acpi_dma_parser_data* %11, i32 0, i32 0, !dbg !5698
  %chan_id = getelementptr inbounds %struct.acpi_dma_spec, %struct.acpi_dma_spec* %dma_spec, i32 0, i32 0, !dbg !5699
  store i32 %conv, i32* %chan_id, align 8, !dbg !5700
  %12 = load %struct.acpi_resource_fixed_dma*, %struct.acpi_resource_fixed_dma** %dma, align 8, !dbg !5701
  %request_lines = getelementptr inbounds %struct.acpi_resource_fixed_dma, %struct.acpi_resource_fixed_dma* %12, i32 0, i32 0, !dbg !5702
  %13 = load i16, i16* %request_lines, align 1, !dbg !5702
  %conv4 = zext i16 %13 to i32, !dbg !5701
  %14 = load %struct.acpi_dma_parser_data*, %struct.acpi_dma_parser_data** %pdata, align 8, !dbg !5703
  %dma_spec5 = getelementptr inbounds %struct.acpi_dma_parser_data, %struct.acpi_dma_parser_data* %14, i32 0, i32 0, !dbg !5704
  %slave_id = getelementptr inbounds %struct.acpi_dma_spec, %struct.acpi_dma_spec* %dma_spec5, i32 0, i32 1, !dbg !5705
  store i32 %conv4, i32* %slave_id, align 4, !dbg !5706
  br label %if.end, !dbg !5707

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end6, !dbg !5708

if.end6:                                          ; preds = %if.end, %entry
  ret i32 1, !dbg !5709
}

; Function Attrs: noredzone
declare dso_local void @acpi_dev_free_resource_list(%struct.list_head*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !5710 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !5714, metadata !DIExpression()), !dbg !5715
  %0 = load i64, i64* %error.addr, align 8, !dbg !5716
  %1 = inttoptr i64 %0 to i8*, !dbg !5717
  ret i8* %1, !dbg !5718
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_dma_update_dma_spec(%struct.acpi_dma* %adma, %struct.acpi_dma_spec* %dma_spec) #0 !dbg !5719 {
entry:
  %retval = alloca i32, align 4
  %adma.addr = alloca %struct.acpi_dma*, align 8
  %dma_spec.addr = alloca %struct.acpi_dma_spec*, align 8
  store %struct.acpi_dma* %adma, %struct.acpi_dma** %adma.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_dma** %adma.addr, metadata !5722, metadata !DIExpression()), !dbg !5723
  store %struct.acpi_dma_spec* %dma_spec, %struct.acpi_dma_spec** %dma_spec.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_dma_spec** %dma_spec.addr, metadata !5724, metadata !DIExpression()), !dbg !5725
  %0 = load %struct.acpi_dma*, %struct.acpi_dma** %adma.addr, align 8, !dbg !5726
  %dev = getelementptr inbounds %struct.acpi_dma, %struct.acpi_dma* %0, i32 0, i32 1, !dbg !5727
  %1 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5727
  %2 = load %struct.acpi_dma_spec*, %struct.acpi_dma_spec** %dma_spec.addr, align 8, !dbg !5728
  %dev1 = getelementptr inbounds %struct.acpi_dma_spec, %struct.acpi_dma_spec* %2, i32 0, i32 2, !dbg !5729
  store %struct.device* %1, %struct.device** %dev1, align 8, !dbg !5730
  %3 = load %struct.acpi_dma*, %struct.acpi_dma** %adma.addr, align 8, !dbg !5731
  %base_request_line = getelementptr inbounds %struct.acpi_dma, %struct.acpi_dma* %3, i32 0, i32 4, !dbg !5733
  %4 = load i16, i16* %base_request_line, align 8, !dbg !5733
  %conv = zext i16 %4 to i32, !dbg !5731
  %cmp = icmp eq i32 %conv, 0, !dbg !5734
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5735

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.acpi_dma*, %struct.acpi_dma** %adma.addr, align 8, !dbg !5736
  %end_request_line = getelementptr inbounds %struct.acpi_dma, %struct.acpi_dma* %5, i32 0, i32 5, !dbg !5737
  %6 = load i16, i16* %end_request_line, align 2, !dbg !5737
  %conv3 = zext i16 %6 to i32, !dbg !5736
  %cmp4 = icmp eq i32 %conv3, 0, !dbg !5738
  br i1 %cmp4, label %if.then, label %if.end, !dbg !5739

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4, !dbg !5740
  br label %return, !dbg !5740

if.end:                                           ; preds = %land.lhs.true, %entry
  %7 = load %struct.acpi_dma_spec*, %struct.acpi_dma_spec** %dma_spec.addr, align 8, !dbg !5741
  %slave_id = getelementptr inbounds %struct.acpi_dma_spec, %struct.acpi_dma_spec* %7, i32 0, i32 1, !dbg !5743
  %8 = load i32, i32* %slave_id, align 4, !dbg !5743
  %9 = load %struct.acpi_dma*, %struct.acpi_dma** %adma.addr, align 8, !dbg !5744
  %base_request_line6 = getelementptr inbounds %struct.acpi_dma, %struct.acpi_dma* %9, i32 0, i32 4, !dbg !5745
  %10 = load i16, i16* %base_request_line6, align 8, !dbg !5745
  %conv7 = zext i16 %10 to i32, !dbg !5744
  %cmp8 = icmp slt i32 %8, %conv7, !dbg !5746
  br i1 %cmp8, label %if.then15, label %lor.lhs.false, !dbg !5747

lor.lhs.false:                                    ; preds = %if.end
  %11 = load %struct.acpi_dma_spec*, %struct.acpi_dma_spec** %dma_spec.addr, align 8, !dbg !5748
  %slave_id10 = getelementptr inbounds %struct.acpi_dma_spec, %struct.acpi_dma_spec* %11, i32 0, i32 1, !dbg !5749
  %12 = load i32, i32* %slave_id10, align 4, !dbg !5749
  %13 = load %struct.acpi_dma*, %struct.acpi_dma** %adma.addr, align 8, !dbg !5750
  %end_request_line11 = getelementptr inbounds %struct.acpi_dma, %struct.acpi_dma* %13, i32 0, i32 5, !dbg !5751
  %14 = load i16, i16* %end_request_line11, align 2, !dbg !5751
  %conv12 = zext i16 %14 to i32, !dbg !5750
  %cmp13 = icmp sgt i32 %12, %conv12, !dbg !5752
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !5753

if.then15:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -1, i32* %retval, align 4, !dbg !5754
  br label %return, !dbg !5754

if.end16:                                         ; preds = %lor.lhs.false
  %15 = load %struct.acpi_dma*, %struct.acpi_dma** %adma.addr, align 8, !dbg !5755
  %base_request_line17 = getelementptr inbounds %struct.acpi_dma, %struct.acpi_dma* %15, i32 0, i32 4, !dbg !5756
  %16 = load i16, i16* %base_request_line17, align 8, !dbg !5756
  %conv18 = zext i16 %16 to i32, !dbg !5755
  %17 = load %struct.acpi_dma_spec*, %struct.acpi_dma_spec** %dma_spec.addr, align 8, !dbg !5757
  %slave_id19 = getelementptr inbounds %struct.acpi_dma_spec, %struct.acpi_dma_spec* %17, i32 0, i32 1, !dbg !5758
  %18 = load i32, i32* %slave_id19, align 4, !dbg !5759
  %sub = sub i32 %18, %conv18, !dbg !5759
  store i32 %sub, i32* %slave_id19, align 4, !dbg !5759
  store i32 1, i32* %retval, align 4, !dbg !5760
  br label %return, !dbg !5760

return:                                           ; preds = %if.end16, %if.then15, %if.then
  %19 = load i32, i32* %retval, align 4, !dbg !5761
  ret i32 %19, !dbg !5761
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.dma_chan* @acpi_dma_request_slave_chan_by_name(%struct.device* %dev, i8* %name) #0 !dbg !5762 {
entry:
  %retval = alloca %struct.dma_chan*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %name.addr = alloca i8*, align 8
  %index = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5765, metadata !DIExpression()), !dbg !5766
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !5767, metadata !DIExpression()), !dbg !5768
  call void @llvm.dbg.declare(metadata i32* %index, metadata !5769, metadata !DIExpression()), !dbg !5770
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5771
  %1 = load i8*, i8** %name.addr, align 8, !dbg !5772
  %call = call i32 @device_property_match_string(%struct.device* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %1) #8, !dbg !5773
  store i32 %call, i32* %index, align 4, !dbg !5774
  %2 = load i32, i32* %index, align 4, !dbg !5775
  %cmp = icmp slt i32 %2, 0, !dbg !5777
  br i1 %cmp, label %if.then, label %if.end9, !dbg !5778

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %name.addr, align 8, !dbg !5779
  %call1 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !5782
  %tobool = icmp ne i32 %call1, 0, !dbg !5782
  br i1 %tobool, label %if.else, label %if.then2, !dbg !5783

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %index, align 4, !dbg !5784
  br label %if.end8, !dbg !5785

if.else:                                          ; preds = %if.then
  %4 = load i8*, i8** %name.addr, align 8, !dbg !5786
  %call3 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !5788
  %tobool4 = icmp ne i32 %call3, 0, !dbg !5788
  br i1 %tobool4, label %if.else6, label %if.then5, !dbg !5789

if.then5:                                         ; preds = %if.else
  store i32 1, i32* %index, align 4, !dbg !5790
  br label %if.end, !dbg !5791

if.else6:                                         ; preds = %if.else
  %call7 = call i8* @ERR_PTR(i64 -19) #8, !dbg !5792
  %5 = bitcast i8* %call7 to %struct.dma_chan*, !dbg !5792
  store %struct.dma_chan* %5, %struct.dma_chan** %retval, align 8, !dbg !5793
  br label %return, !dbg !5793

if.end:                                           ; preds = %if.then5
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then2
  br label %if.end9, !dbg !5794

if.end9:                                          ; preds = %if.end8, %entry
  %6 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5795
  %7 = load i32, i32* %index, align 4, !dbg !5796
  %conv = sext i32 %7 to i64, !dbg !5796
  %call10 = call %struct.dma_chan* @acpi_dma_request_slave_chan_by_index(%struct.device* %6, i64 %conv) #8, !dbg !5797
  store %struct.dma_chan* %call10, %struct.dma_chan** %retval, align 8, !dbg !5798
  br label %return, !dbg !5798

return:                                           ; preds = %if.end9, %if.else6
  %8 = load %struct.dma_chan*, %struct.dma_chan** %retval, align 8, !dbg !5799
  ret %struct.dma_chan* %8, !dbg !5799
}

; Function Attrs: noredzone
declare dso_local i32 @device_property_match_string(%struct.device*, i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.dma_chan* @acpi_dma_simple_xlate(%struct.acpi_dma_spec* %dma_spec, %struct.acpi_dma* %adma) #0 !dbg !5800 {
entry:
  %retval = alloca %struct.dma_chan*, align 8
  %dma_spec.addr = alloca %struct.acpi_dma_spec*, align 8
  %adma.addr = alloca %struct.acpi_dma*, align 8
  %info = alloca %struct.acpi_dma_filter_info*, align 8
  store %struct.acpi_dma_spec* %dma_spec, %struct.acpi_dma_spec** %dma_spec.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_dma_spec** %dma_spec.addr, metadata !5801, metadata !DIExpression()), !dbg !5802
  store %struct.acpi_dma* %adma, %struct.acpi_dma** %adma.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_dma** %adma.addr, metadata !5803, metadata !DIExpression()), !dbg !5804
  call void @llvm.dbg.declare(metadata %struct.acpi_dma_filter_info** %info, metadata !5805, metadata !DIExpression()), !dbg !5811
  %0 = load %struct.acpi_dma*, %struct.acpi_dma** %adma.addr, align 8, !dbg !5812
  %data = getelementptr inbounds %struct.acpi_dma, %struct.acpi_dma* %0, i32 0, i32 3, !dbg !5813
  %1 = load i8*, i8** %data, align 8, !dbg !5813
  %2 = bitcast i8* %1 to %struct.acpi_dma_filter_info*, !dbg !5812
  store %struct.acpi_dma_filter_info* %2, %struct.acpi_dma_filter_info** %info, align 8, !dbg !5811
  %3 = load %struct.acpi_dma_filter_info*, %struct.acpi_dma_filter_info** %info, align 8, !dbg !5814
  %tobool = icmp ne %struct.acpi_dma_filter_info* %3, null, !dbg !5814
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5816

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.acpi_dma_filter_info*, %struct.acpi_dma_filter_info** %info, align 8, !dbg !5817
  %filter_fn = getelementptr inbounds %struct.acpi_dma_filter_info, %struct.acpi_dma_filter_info* %4, i32 0, i32 1, !dbg !5818
  %5 = load i1 (%struct.dma_chan*, i8*)*, i1 (%struct.dma_chan*, i8*)** %filter_fn, align 8, !dbg !5818
  %tobool1 = icmp ne i1 (%struct.dma_chan*, i8*)* %5, null, !dbg !5817
  br i1 %tobool1, label %if.end, label %if.then, !dbg !5819

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.dma_chan* null, %struct.dma_chan** %retval, align 8, !dbg !5820
  br label %return, !dbg !5820

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.acpi_dma_filter_info*, %struct.acpi_dma_filter_info** %info, align 8, !dbg !5821
  %dma_cap = getelementptr inbounds %struct.acpi_dma_filter_info, %struct.acpi_dma_filter_info* %6, i32 0, i32 0, !dbg !5821
  %7 = load %struct.acpi_dma_filter_info*, %struct.acpi_dma_filter_info** %info, align 8, !dbg !5821
  %filter_fn2 = getelementptr inbounds %struct.acpi_dma_filter_info, %struct.acpi_dma_filter_info* %7, i32 0, i32 1, !dbg !5821
  %8 = load i1 (%struct.dma_chan*, i8*)*, i1 (%struct.dma_chan*, i8*)** %filter_fn2, align 8, !dbg !5821
  %9 = load %struct.acpi_dma_spec*, %struct.acpi_dma_spec** %dma_spec.addr, align 8, !dbg !5821
  %10 = bitcast %struct.acpi_dma_spec* %9 to i8*, !dbg !5821
  %call = call %struct.dma_chan* @__dma_request_channel(%struct.dma_cap_mask_t* %dma_cap, i1 (%struct.dma_chan*, i8*)* %8, i8* %10, %struct.device_node* null) #8, !dbg !5821
  store %struct.dma_chan* %call, %struct.dma_chan** %retval, align 8, !dbg !5822
  br label %return, !dbg !5822

return:                                           ; preds = %if.end, %if.then
  %11 = load %struct.dma_chan*, %struct.dma_chan** %retval, align 8, !dbg !5823
  ret %struct.dma_chan* %11, !dbg !5823
}

; Function Attrs: noredzone
declare dso_local %struct.dma_chan* @__dma_request_channel(%struct.dma_cap_mask_t*, i1 (%struct.dma_chan*, i8*)*, i8*, %struct.device_node*) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !5824 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5828, metadata !DIExpression()), !dbg !5833
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5835, metadata !DIExpression()), !dbg !5836
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5837, metadata !DIExpression()), !dbg !5838
  %0 = load i64, i64* %size.addr, align 8, !dbg !5839
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5841
  br i1 %1, label %if.then, label %if.end447, !dbg !5842

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5843
  %tobool = icmp ne i64 %2, 0, !dbg !5843
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5846

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5847
  br label %return, !dbg !5847

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5848
  %cmp = icmp ult i64 %3, 4096, !dbg !5850
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5851

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5852
  br label %return, !dbg !5852

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub = sub i64 %4, 1, !dbg !5853
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5853
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5853

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub4 = sub i64 %6, 1, !dbg !5853
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5853
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5853

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub6 = sub i64 %8, 1, !dbg !5853
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5853
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5853

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5853

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub9 = sub i64 %9, 1, !dbg !5853
  %and = and i64 %sub9, -9223372036854775808, !dbg !5853
  %tobool10 = icmp ne i64 %and, 0, !dbg !5853
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5853

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5853

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub13 = sub i64 %10, 1, !dbg !5853
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5853
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5853
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5853

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5853

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub18 = sub i64 %11, 1, !dbg !5853
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5853
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5853
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5853

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5853

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub23 = sub i64 %12, 1, !dbg !5853
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5853
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5853
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5853

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5853

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub28 = sub i64 %13, 1, !dbg !5853
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5853
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5853
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5853

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5853

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub33 = sub i64 %14, 1, !dbg !5853
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5853
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5853
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5853

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5853

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub38 = sub i64 %15, 1, !dbg !5853
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5853
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5853
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5853

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5853

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub43 = sub i64 %16, 1, !dbg !5853
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5853
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5853
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5853

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5853

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub48 = sub i64 %17, 1, !dbg !5853
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5853
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5853
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5853

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5853

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub53 = sub i64 %18, 1, !dbg !5853
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5853
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5853
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5853

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5853

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub58 = sub i64 %19, 1, !dbg !5853
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5853
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5853
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5853

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5853

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub63 = sub i64 %20, 1, !dbg !5853
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5853
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5853
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5853

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5853

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub68 = sub i64 %21, 1, !dbg !5853
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5853
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5853
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5853

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5853

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub73 = sub i64 %22, 1, !dbg !5853
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5853
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5853
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5853

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5853

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub78 = sub i64 %23, 1, !dbg !5853
  %and79 = and i64 %sub78, 562949953421312, !dbg !5853
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5853
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5853

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5853

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub83 = sub i64 %24, 1, !dbg !5853
  %and84 = and i64 %sub83, 281474976710656, !dbg !5853
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5853
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5853

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5853

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub88 = sub i64 %25, 1, !dbg !5853
  %and89 = and i64 %sub88, 140737488355328, !dbg !5853
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5853
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5853

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5853

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub93 = sub i64 %26, 1, !dbg !5853
  %and94 = and i64 %sub93, 70368744177664, !dbg !5853
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5853
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5853

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5853

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub98 = sub i64 %27, 1, !dbg !5853
  %and99 = and i64 %sub98, 35184372088832, !dbg !5853
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5853
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5853

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5853

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub103 = sub i64 %28, 1, !dbg !5853
  %and104 = and i64 %sub103, 17592186044416, !dbg !5853
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5853
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5853

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5853

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub108 = sub i64 %29, 1, !dbg !5853
  %and109 = and i64 %sub108, 8796093022208, !dbg !5853
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5853
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5853

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5853

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub113 = sub i64 %30, 1, !dbg !5853
  %and114 = and i64 %sub113, 4398046511104, !dbg !5853
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5853
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5853

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5853

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub118 = sub i64 %31, 1, !dbg !5853
  %and119 = and i64 %sub118, 2199023255552, !dbg !5853
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5853
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5853

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5853

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub123 = sub i64 %32, 1, !dbg !5853
  %and124 = and i64 %sub123, 1099511627776, !dbg !5853
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5853
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5853

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5853

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub128 = sub i64 %33, 1, !dbg !5853
  %and129 = and i64 %sub128, 549755813888, !dbg !5853
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5853
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5853

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5853

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub133 = sub i64 %34, 1, !dbg !5853
  %and134 = and i64 %sub133, 274877906944, !dbg !5853
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5853
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5853

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5853

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub138 = sub i64 %35, 1, !dbg !5853
  %and139 = and i64 %sub138, 137438953472, !dbg !5853
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5853
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5853

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5853

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub143 = sub i64 %36, 1, !dbg !5853
  %and144 = and i64 %sub143, 68719476736, !dbg !5853
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5853
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5853

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5853

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub148 = sub i64 %37, 1, !dbg !5853
  %and149 = and i64 %sub148, 34359738368, !dbg !5853
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5853
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5853

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5853

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub153 = sub i64 %38, 1, !dbg !5853
  %and154 = and i64 %sub153, 17179869184, !dbg !5853
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5853
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5853

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5853

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub158 = sub i64 %39, 1, !dbg !5853
  %and159 = and i64 %sub158, 8589934592, !dbg !5853
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5853
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5853

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5853

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub163 = sub i64 %40, 1, !dbg !5853
  %and164 = and i64 %sub163, 4294967296, !dbg !5853
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5853
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5853

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5853

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub168 = sub i64 %41, 1, !dbg !5853
  %and169 = and i64 %sub168, 2147483648, !dbg !5853
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5853
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5853

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5853

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub173 = sub i64 %42, 1, !dbg !5853
  %and174 = and i64 %sub173, 1073741824, !dbg !5853
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5853
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5853

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5853

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub178 = sub i64 %43, 1, !dbg !5853
  %and179 = and i64 %sub178, 536870912, !dbg !5853
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5853
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5853

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5853

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub183 = sub i64 %44, 1, !dbg !5853
  %and184 = and i64 %sub183, 268435456, !dbg !5853
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5853
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5853

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5853

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub188 = sub i64 %45, 1, !dbg !5853
  %and189 = and i64 %sub188, 134217728, !dbg !5853
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5853
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5853

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5853

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub193 = sub i64 %46, 1, !dbg !5853
  %and194 = and i64 %sub193, 67108864, !dbg !5853
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5853
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5853

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5853

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub198 = sub i64 %47, 1, !dbg !5853
  %and199 = and i64 %sub198, 33554432, !dbg !5853
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5853
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5853

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5853

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub203 = sub i64 %48, 1, !dbg !5853
  %and204 = and i64 %sub203, 16777216, !dbg !5853
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5853
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5853

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5853

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub208 = sub i64 %49, 1, !dbg !5853
  %and209 = and i64 %sub208, 8388608, !dbg !5853
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5853
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5853

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5853

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub213 = sub i64 %50, 1, !dbg !5853
  %and214 = and i64 %sub213, 4194304, !dbg !5853
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5853
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5853

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5853

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub218 = sub i64 %51, 1, !dbg !5853
  %and219 = and i64 %sub218, 2097152, !dbg !5853
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5853
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5853

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5853

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub223 = sub i64 %52, 1, !dbg !5853
  %and224 = and i64 %sub223, 1048576, !dbg !5853
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5853
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5853

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5853

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub228 = sub i64 %53, 1, !dbg !5853
  %and229 = and i64 %sub228, 524288, !dbg !5853
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5853
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5853

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5853

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub233 = sub i64 %54, 1, !dbg !5853
  %and234 = and i64 %sub233, 262144, !dbg !5853
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5853
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5853

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5853

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub238 = sub i64 %55, 1, !dbg !5853
  %and239 = and i64 %sub238, 131072, !dbg !5853
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5853
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5853

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5853

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub243 = sub i64 %56, 1, !dbg !5853
  %and244 = and i64 %sub243, 65536, !dbg !5853
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5853
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5853

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5853

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub248 = sub i64 %57, 1, !dbg !5853
  %and249 = and i64 %sub248, 32768, !dbg !5853
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5853
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5853

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5853

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub253 = sub i64 %58, 1, !dbg !5853
  %and254 = and i64 %sub253, 16384, !dbg !5853
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5853
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5853

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5853

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub258 = sub i64 %59, 1, !dbg !5853
  %and259 = and i64 %sub258, 8192, !dbg !5853
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5853
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5853

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5853

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub263 = sub i64 %60, 1, !dbg !5853
  %and264 = and i64 %sub263, 4096, !dbg !5853
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5853
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5853

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5853

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub268 = sub i64 %61, 1, !dbg !5853
  %and269 = and i64 %sub268, 2048, !dbg !5853
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5853
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5853

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5853

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub273 = sub i64 %62, 1, !dbg !5853
  %and274 = and i64 %sub273, 1024, !dbg !5853
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5853
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5853

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5853

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub278 = sub i64 %63, 1, !dbg !5853
  %and279 = and i64 %sub278, 512, !dbg !5853
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5853
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5853

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5853

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub283 = sub i64 %64, 1, !dbg !5853
  %and284 = and i64 %sub283, 256, !dbg !5853
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5853
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5853

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5853

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub288 = sub i64 %65, 1, !dbg !5853
  %and289 = and i64 %sub288, 128, !dbg !5853
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5853
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5853

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5853

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub293 = sub i64 %66, 1, !dbg !5853
  %and294 = and i64 %sub293, 64, !dbg !5853
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5853
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5853

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5853

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub298 = sub i64 %67, 1, !dbg !5853
  %and299 = and i64 %sub298, 32, !dbg !5853
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5853
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5853

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5853

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub303 = sub i64 %68, 1, !dbg !5853
  %and304 = and i64 %sub303, 16, !dbg !5853
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5853
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5853

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5853

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub308 = sub i64 %69, 1, !dbg !5853
  %and309 = and i64 %sub308, 8, !dbg !5853
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5853
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5853

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5853

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub313 = sub i64 %70, 1, !dbg !5853
  %and314 = and i64 %sub313, 4, !dbg !5853
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5853
  %71 = zext i1 %tobool315 to i64, !dbg !5853
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5853
  br label %cond.end, !dbg !5853

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5853
  br label %cond.end317, !dbg !5853

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5853
  br label %cond.end319, !dbg !5853

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5853
  br label %cond.end321, !dbg !5853

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5853
  br label %cond.end323, !dbg !5853

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5853
  br label %cond.end325, !dbg !5853

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5853
  br label %cond.end327, !dbg !5853

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5853
  br label %cond.end329, !dbg !5853

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5853
  br label %cond.end331, !dbg !5853

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5853
  br label %cond.end333, !dbg !5853

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5853
  br label %cond.end335, !dbg !5853

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5853
  br label %cond.end337, !dbg !5853

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5853
  br label %cond.end339, !dbg !5853

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5853
  br label %cond.end341, !dbg !5853

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5853
  br label %cond.end343, !dbg !5853

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5853
  br label %cond.end345, !dbg !5853

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5853
  br label %cond.end347, !dbg !5853

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5853
  br label %cond.end349, !dbg !5853

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5853
  br label %cond.end351, !dbg !5853

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5853
  br label %cond.end353, !dbg !5853

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5853
  br label %cond.end355, !dbg !5853

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5853
  br label %cond.end357, !dbg !5853

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5853
  br label %cond.end359, !dbg !5853

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5853
  br label %cond.end361, !dbg !5853

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5853
  br label %cond.end363, !dbg !5853

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5853
  br label %cond.end365, !dbg !5853

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5853
  br label %cond.end367, !dbg !5853

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5853
  br label %cond.end369, !dbg !5853

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5853
  br label %cond.end371, !dbg !5853

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5853
  br label %cond.end373, !dbg !5853

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5853
  br label %cond.end375, !dbg !5853

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5853
  br label %cond.end377, !dbg !5853

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5853
  br label %cond.end379, !dbg !5853

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5853
  br label %cond.end381, !dbg !5853

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5853
  br label %cond.end383, !dbg !5853

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5853
  br label %cond.end385, !dbg !5853

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5853
  br label %cond.end387, !dbg !5853

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5853
  br label %cond.end389, !dbg !5853

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5853
  br label %cond.end391, !dbg !5853

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5853
  br label %cond.end393, !dbg !5853

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5853
  br label %cond.end395, !dbg !5853

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5853
  br label %cond.end397, !dbg !5853

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5853
  br label %cond.end399, !dbg !5853

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5853
  br label %cond.end401, !dbg !5853

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5853
  br label %cond.end403, !dbg !5853

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5853
  br label %cond.end405, !dbg !5853

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5853
  br label %cond.end407, !dbg !5853

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5853
  br label %cond.end409, !dbg !5853

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5853
  br label %cond.end411, !dbg !5853

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5853
  br label %cond.end413, !dbg !5853

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5853
  br label %cond.end415, !dbg !5853

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5853
  br label %cond.end417, !dbg !5853

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5853
  br label %cond.end419, !dbg !5853

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5853
  br label %cond.end421, !dbg !5853

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5853
  br label %cond.end423, !dbg !5853

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5853
  br label %cond.end425, !dbg !5853

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5853
  br label %cond.end427, !dbg !5853

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5853
  br label %cond.end429, !dbg !5853

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5853
  br label %cond.end431, !dbg !5853

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5853
  br label %cond.end433, !dbg !5853

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5853
  br label %cond.end435, !dbg !5853

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5853
  br label %cond.end437, !dbg !5853

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5853
  br label %cond.end440, !dbg !5853

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5853

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5853
  br label %cond.end444, !dbg !5853

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5853
  %sub443 = sub i64 %72, 1, !dbg !5853
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !5853
  br label %cond.end444, !dbg !5853

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5853
  %sub446 = sub i32 %cond445, 12, !dbg !5854
  %add = add i32 %sub446, 1, !dbg !5855
  store i32 %add, i32* %retval, align 4, !dbg !5856
  br label %return, !dbg !5856

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5857
  %dec = add i64 %73, -1, !dbg !5857
  store i64 %dec, i64* %size.addr, align 8, !dbg !5857
  %74 = load i64, i64* %size.addr, align 8, !dbg !5858
  %shr = lshr i64 %74, 12, !dbg !5858
  store i64 %shr, i64* %size.addr, align 8, !dbg !5858
  %75 = load i64, i64* %size.addr, align 8, !dbg !5859
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5836
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5860
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5861
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !5860, !srcloc !5862
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5860
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5863
  %add.i = add i32 %79, 1, !dbg !5864
  store i32 %add.i, i32* %retval, align 4, !dbg !5865
  br label %return, !dbg !5865

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5866
  ret i32 %80, !dbg !5866
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !5867 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5828, metadata !DIExpression()), !dbg !5871
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5835, metadata !DIExpression()), !dbg !5873
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5874, metadata !DIExpression()), !dbg !5875
  %0 = load i64, i64* %n.addr, align 8, !dbg !5876
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5873
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5877
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5878
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !5877, !srcloc !5862
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5877
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5879
  %add.i = add i32 %4, 1, !dbg !5880
  %sub = sub i32 %add.i, 1, !dbg !5881
  ret i32 %sub, !dbg !5882
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5883 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5887, metadata !DIExpression()), !dbg !5888
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5889, metadata !DIExpression()), !dbg !5890
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5891, metadata !DIExpression()), !dbg !5892
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5893, metadata !DIExpression()), !dbg !5894
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5895
  ret i8* %0, !dbg !5896
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_get_table(i8*, i32, %struct.acpi_table_header**) #2

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_dma_parse_resource_group(%struct.acpi_csrt_group* %grp, %struct.acpi_device* %adev, %struct.acpi_dma* %adma) #0 !dbg !5897 {
entry:
  %retval = alloca i32, align 4
  %grp.addr = alloca %struct.acpi_csrt_group*, align 8
  %adev.addr = alloca %struct.acpi_device*, align 8
  %adma.addr = alloca %struct.acpi_dma*, align 8
  %si = alloca %struct.acpi_csrt_shared_info*, align 8
  %resource_list = alloca %struct.list_head, align 8
  %rentry = alloca %struct.resource_entry*, align 8
  %mem = alloca i64, align 8
  %irq = alloca i64, align 8
  %ret = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.resource_entry*, align 8
  %__mptr22 = alloca i8*, align 8
  %tmp27 = alloca %struct.resource_entry*, align 8
  store %struct.acpi_csrt_group* %grp, %struct.acpi_csrt_group** %grp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_csrt_group** %grp.addr, metadata !5902, metadata !DIExpression()), !dbg !5903
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !5904, metadata !DIExpression()), !dbg !5905
  store %struct.acpi_dma* %adma, %struct.acpi_dma** %adma.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_dma** %adma.addr, metadata !5906, metadata !DIExpression()), !dbg !5907
  call void @llvm.dbg.declare(metadata %struct.acpi_csrt_shared_info** %si, metadata !5908, metadata !DIExpression()), !dbg !5909
  call void @llvm.dbg.declare(metadata %struct.list_head* %resource_list, metadata !5910, metadata !DIExpression()), !dbg !5911
  call void @llvm.dbg.declare(metadata %struct.resource_entry** %rentry, metadata !5912, metadata !DIExpression()), !dbg !5913
  call void @llvm.dbg.declare(metadata i64* %mem, metadata !5914, metadata !DIExpression()), !dbg !5915
  store i64 0, i64* %mem, align 8, !dbg !5915
  call void @llvm.dbg.declare(metadata i64* %irq, metadata !5916, metadata !DIExpression()), !dbg !5917
  store i64 0, i64* %irq, align 8, !dbg !5917
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5918, metadata !DIExpression()), !dbg !5919
  %0 = load %struct.acpi_csrt_group*, %struct.acpi_csrt_group** %grp.addr, align 8, !dbg !5920
  %shared_info_length = getelementptr inbounds %struct.acpi_csrt_group, %struct.acpi_csrt_group* %0, i32 0, i32 7, !dbg !5922
  %1 = load i32, i32* %shared_info_length, align 1, !dbg !5922
  %conv = zext i32 %1 to i64, !dbg !5920
  %cmp = icmp ne i64 %conv, 28, !dbg !5923
  br i1 %cmp, label %if.then, label %if.end, !dbg !5924

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !5925
  br label %return, !dbg !5925

if.end:                                           ; preds = %entry
  call void @INIT_LIST_HEAD(%struct.list_head* %resource_list) #8, !dbg !5926
  %2 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !5927
  %call = call i32 @acpi_dev_get_resources(%struct.acpi_device* %2, %struct.list_head* %resource_list, i32 (%struct.acpi_resource*, i8*)* null, i8* null) #8, !dbg !5928
  store i32 %call, i32* %ret, align 4, !dbg !5929
  %3 = load i32, i32* %ret, align 4, !dbg !5930
  %cmp2 = icmp sle i32 %3, 0, !dbg !5932
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !5933

if.then4:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5934
  br label %return, !dbg !5934

if.end5:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5935, metadata !DIExpression()), !dbg !5938
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %resource_list, i32 0, i32 0, !dbg !5938
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5938
  %5 = bitcast %struct.list_head* %4 to i8*, !dbg !5938
  store i8* %5, i8** %__mptr, align 8, !dbg !5938
  br label %do.body, !dbg !5938

do.body:                                          ; preds = %if.end5
  br label %do.end, !dbg !5939

do.end:                                           ; preds = %do.body
  %6 = load i8*, i8** %__mptr, align 8, !dbg !5938
  %add.ptr = getelementptr i8, i8* %6, i64 0, !dbg !5938
  %7 = bitcast i8* %add.ptr to %struct.resource_entry*, !dbg !5938
  store %struct.resource_entry* %7, %struct.resource_entry** %tmp, align 8, !dbg !5939
  %8 = load %struct.resource_entry*, %struct.resource_entry** %tmp, align 8, !dbg !5938
  store %struct.resource_entry* %8, %struct.resource_entry** %rentry, align 8, !dbg !5941
  br label %for.cond, !dbg !5941

for.cond:                                         ; preds = %do.end26, %do.end
  %9 = load %struct.resource_entry*, %struct.resource_entry** %rentry, align 8, !dbg !5942
  %node = getelementptr inbounds %struct.resource_entry, %struct.resource_entry* %9, i32 0, i32 0, !dbg !5942
  %cmp6 = icmp eq %struct.list_head* %node, %resource_list, !dbg !5942
  %lnot = xor i1 %cmp6, true, !dbg !5942
  br i1 %lnot, label %for.body, label %for.end, !dbg !5941

for.body:                                         ; preds = %for.cond
  %10 = load %struct.resource_entry*, %struct.resource_entry** %rentry, align 8, !dbg !5944
  %res = getelementptr inbounds %struct.resource_entry, %struct.resource_entry* %10, i32 0, i32 1, !dbg !5947
  %11 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5947
  %call8 = call i64 @resource_type(%struct.resource* %11) #8, !dbg !5948
  %cmp9 = icmp eq i64 %call8, 512, !dbg !5949
  br i1 %cmp9, label %if.then11, label %if.else, !dbg !5950

if.then11:                                        ; preds = %for.body
  %12 = load %struct.resource_entry*, %struct.resource_entry** %rentry, align 8, !dbg !5951
  %res12 = getelementptr inbounds %struct.resource_entry, %struct.resource_entry* %12, i32 0, i32 1, !dbg !5952
  %13 = load %struct.resource*, %struct.resource** %res12, align 8, !dbg !5952
  %start = getelementptr inbounds %struct.resource, %struct.resource* %13, i32 0, i32 0, !dbg !5953
  %14 = load i64, i64* %start, align 8, !dbg !5953
  store i64 %14, i64* %mem, align 8, !dbg !5954
  br label %if.end21, !dbg !5955

if.else:                                          ; preds = %for.body
  %15 = load %struct.resource_entry*, %struct.resource_entry** %rentry, align 8, !dbg !5956
  %res13 = getelementptr inbounds %struct.resource_entry, %struct.resource_entry* %15, i32 0, i32 1, !dbg !5958
  %16 = load %struct.resource*, %struct.resource** %res13, align 8, !dbg !5958
  %call14 = call i64 @resource_type(%struct.resource* %16) #8, !dbg !5959
  %cmp15 = icmp eq i64 %call14, 1024, !dbg !5960
  br i1 %cmp15, label %if.then17, label %if.end20, !dbg !5961

if.then17:                                        ; preds = %if.else
  %17 = load %struct.resource_entry*, %struct.resource_entry** %rentry, align 8, !dbg !5962
  %res18 = getelementptr inbounds %struct.resource_entry, %struct.resource_entry* %17, i32 0, i32 1, !dbg !5963
  %18 = load %struct.resource*, %struct.resource** %res18, align 8, !dbg !5963
  %start19 = getelementptr inbounds %struct.resource, %struct.resource* %18, i32 0, i32 0, !dbg !5964
  %19 = load i64, i64* %start19, align 8, !dbg !5964
  store i64 %19, i64* %irq, align 8, !dbg !5965
  br label %if.end20, !dbg !5966

if.end20:                                         ; preds = %if.then17, %if.else
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then11
  br label %for.inc, !dbg !5967

for.inc:                                          ; preds = %if.end21
  call void @llvm.dbg.declare(metadata i8** %__mptr22, metadata !5968, metadata !DIExpression()), !dbg !5970
  %20 = load %struct.resource_entry*, %struct.resource_entry** %rentry, align 8, !dbg !5970
  %node23 = getelementptr inbounds %struct.resource_entry, %struct.resource_entry* %20, i32 0, i32 0, !dbg !5970
  %next24 = getelementptr inbounds %struct.list_head, %struct.list_head* %node23, i32 0, i32 0, !dbg !5970
  %21 = load %struct.list_head*, %struct.list_head** %next24, align 8, !dbg !5970
  %22 = bitcast %struct.list_head* %21 to i8*, !dbg !5970
  store i8* %22, i8** %__mptr22, align 8, !dbg !5970
  br label %do.body25, !dbg !5970

do.body25:                                        ; preds = %for.inc
  br label %do.end26, !dbg !5971

do.end26:                                         ; preds = %do.body25
  %23 = load i8*, i8** %__mptr22, align 8, !dbg !5970
  %add.ptr28 = getelementptr i8, i8* %23, i64 0, !dbg !5970
  %24 = bitcast i8* %add.ptr28 to %struct.resource_entry*, !dbg !5970
  store %struct.resource_entry* %24, %struct.resource_entry** %tmp27, align 8, !dbg !5971
  %25 = load %struct.resource_entry*, %struct.resource_entry** %tmp27, align 8, !dbg !5970
  store %struct.resource_entry* %25, %struct.resource_entry** %rentry, align 8, !dbg !5942
  br label %for.cond, !dbg !5942, !llvm.loop !5973

for.end:                                          ; preds = %for.cond
  call void @acpi_dev_free_resource_list(%struct.list_head* %resource_list) #8, !dbg !5975
  %26 = load i64, i64* %mem, align 8, !dbg !5976
  %cmp29 = icmp eq i64 %26, 0, !dbg !5978
  br i1 %cmp29, label %land.lhs.true, label %if.end34, !dbg !5979

land.lhs.true:                                    ; preds = %for.end
  %27 = load i64, i64* %irq, align 8, !dbg !5980
  %cmp31 = icmp eq i64 %27, 0, !dbg !5981
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !5982

if.then33:                                        ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4, !dbg !5983
  br label %return, !dbg !5983

if.end34:                                         ; preds = %land.lhs.true, %for.end
  %28 = load %struct.acpi_csrt_group*, %struct.acpi_csrt_group** %grp.addr, align 8, !dbg !5984
  %arrayidx = getelementptr %struct.acpi_csrt_group, %struct.acpi_csrt_group* %28, i64 1, !dbg !5984
  %29 = bitcast %struct.acpi_csrt_group* %arrayidx to %struct.acpi_csrt_shared_info*, !dbg !5985
  store %struct.acpi_csrt_shared_info* %29, %struct.acpi_csrt_shared_info** %si, align 8, !dbg !5986
  %30 = load %struct.acpi_csrt_shared_info*, %struct.acpi_csrt_shared_info** %si, align 8, !dbg !5987
  %mmio_base_low = getelementptr inbounds %struct.acpi_csrt_shared_info, %struct.acpi_csrt_shared_info* %30, i32 0, i32 2, !dbg !5989
  %31 = load i32, i32* %mmio_base_low, align 1, !dbg !5989
  %32 = load i64, i64* %mem, align 8, !dbg !5990
  %and = and i64 %32, 4294967295, !dbg !5990
  %conv35 = trunc i64 %and to i32, !dbg !5990
  %cmp36 = icmp ne i32 %31, %conv35, !dbg !5991
  br i1 %cmp36, label %if.then46, label %lor.lhs.false, !dbg !5992

lor.lhs.false:                                    ; preds = %if.end34
  %33 = load %struct.acpi_csrt_shared_info*, %struct.acpi_csrt_shared_info** %si, align 8, !dbg !5993
  %mmio_base_high = getelementptr inbounds %struct.acpi_csrt_shared_info, %struct.acpi_csrt_shared_info* %33, i32 0, i32 3, !dbg !5994
  %34 = load i32, i32* %mmio_base_high, align 1, !dbg !5994
  %35 = load i64, i64* %mem, align 8, !dbg !5995
  %shr = lshr i64 %35, 16, !dbg !5995
  %shr38 = lshr i64 %shr, 16, !dbg !5995
  %conv39 = trunc i64 %shr38 to i32, !dbg !5995
  %cmp40 = icmp ne i32 %34, %conv39, !dbg !5996
  br i1 %cmp40, label %if.then46, label %lor.lhs.false42, !dbg !5997

lor.lhs.false42:                                  ; preds = %lor.lhs.false
  %36 = load %struct.acpi_csrt_shared_info*, %struct.acpi_csrt_shared_info** %si, align 8, !dbg !5998
  %gsi_interrupt = getelementptr inbounds %struct.acpi_csrt_shared_info, %struct.acpi_csrt_shared_info* %36, i32 0, i32 4, !dbg !5999
  %37 = load i32, i32* %gsi_interrupt, align 1, !dbg !5999
  %conv43 = zext i32 %37 to i64, !dbg !5998
  %38 = load i64, i64* %irq, align 8, !dbg !6000
  %cmp44 = icmp ne i64 %conv43, %38, !dbg !6001
  br i1 %cmp44, label %if.then46, label %if.end47, !dbg !6002

if.then46:                                        ; preds = %lor.lhs.false42, %lor.lhs.false, %if.end34
  store i32 0, i32* %retval, align 4, !dbg !6003
  br label %return, !dbg !6003

if.end47:                                         ; preds = %lor.lhs.false42
  %39 = load %struct.acpi_csrt_shared_info*, %struct.acpi_csrt_shared_info** %si, align 8, !dbg !6004
  %base_request_line = getelementptr inbounds %struct.acpi_csrt_shared_info, %struct.acpi_csrt_shared_info* %39, i32 0, i32 9, !dbg !6006
  %40 = load i16, i16* %base_request_line, align 1, !dbg !6006
  %conv48 = zext i16 %40 to i32, !dbg !6004
  %cmp49 = icmp eq i32 %conv48, 0, !dbg !6007
  br i1 %cmp49, label %land.lhs.true51, label %if.end56, !dbg !6008

land.lhs.true51:                                  ; preds = %if.end47
  %41 = load %struct.acpi_csrt_shared_info*, %struct.acpi_csrt_shared_info** %si, align 8, !dbg !6009
  %num_handshake_signals = getelementptr inbounds %struct.acpi_csrt_shared_info, %struct.acpi_csrt_shared_info* %41, i32 0, i32 10, !dbg !6010
  %42 = load i16, i16* %num_handshake_signals, align 1, !dbg !6010
  %conv52 = zext i16 %42 to i32, !dbg !6009
  %cmp53 = icmp eq i32 %conv52, 0, !dbg !6011
  br i1 %cmp53, label %if.then55, label %if.end56, !dbg !6012

if.then55:                                        ; preds = %land.lhs.true51
  store i32 0, i32* %retval, align 4, !dbg !6013
  br label %return, !dbg !6013

if.end56:                                         ; preds = %land.lhs.true51, %if.end47
  %43 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !6014
  %dev = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %43, i32 0, i32 21, !dbg !6015
  %44 = load %struct.acpi_csrt_shared_info*, %struct.acpi_csrt_shared_info** %si, align 8, !dbg !6016
  %dma_address_width = getelementptr inbounds %struct.acpi_csrt_shared_info, %struct.acpi_csrt_shared_info* %44, i32 0, i32 8, !dbg !6016
  %45 = load i8, i8* %dma_address_width, align 1, !dbg !6016
  %conv57 = zext i8 %45 to i32, !dbg !6016
  %cmp58 = icmp eq i32 %conv57, 64, !dbg !6016
  br i1 %cmp58, label %cond.true, label %cond.false, !dbg !6016

cond.true:                                        ; preds = %if.end56
  br label %cond.end, !dbg !6016

cond.false:                                       ; preds = %if.end56
  %46 = load %struct.acpi_csrt_shared_info*, %struct.acpi_csrt_shared_info** %si, align 8, !dbg !6016
  %dma_address_width60 = getelementptr inbounds %struct.acpi_csrt_shared_info, %struct.acpi_csrt_shared_info* %46, i32 0, i32 8, !dbg !6016
  %47 = load i8, i8* %dma_address_width60, align 1, !dbg !6016
  %conv61 = zext i8 %47 to i32, !dbg !6016
  %sh_prom = zext i32 %conv61 to i64, !dbg !6016
  %shl = shl i64 1, %sh_prom, !dbg !6016
  %sub = sub i64 %shl, 1, !dbg !6016
  br label %cond.end, !dbg !6016

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ -1, %cond.true ], [ %sub, %cond.false ], !dbg !6016
  %call62 = call i32 @dma_coerce_mask_and_coherent(%struct.device* %dev, i64 %cond) #8, !dbg !6017
  store i32 %call62, i32* %ret, align 4, !dbg !6018
  %48 = load i32, i32* %ret, align 4, !dbg !6019
  %tobool = icmp ne i32 %48, 0, !dbg !6019
  br i1 %tobool, label %if.then63, label %if.end64, !dbg !6021

if.then63:                                        ; preds = %cond.end
  store i32 0, i32* %retval, align 4, !dbg !6022
  br label %return, !dbg !6022

if.end64:                                         ; preds = %cond.end
  %49 = load %struct.acpi_csrt_shared_info*, %struct.acpi_csrt_shared_info** %si, align 8, !dbg !6023
  %base_request_line65 = getelementptr inbounds %struct.acpi_csrt_shared_info, %struct.acpi_csrt_shared_info* %49, i32 0, i32 9, !dbg !6024
  %50 = load i16, i16* %base_request_line65, align 1, !dbg !6024
  %51 = load %struct.acpi_dma*, %struct.acpi_dma** %adma.addr, align 8, !dbg !6025
  %base_request_line66 = getelementptr inbounds %struct.acpi_dma, %struct.acpi_dma* %51, i32 0, i32 4, !dbg !6026
  store i16 %50, i16* %base_request_line66, align 8, !dbg !6027
  %52 = load %struct.acpi_csrt_shared_info*, %struct.acpi_csrt_shared_info** %si, align 8, !dbg !6028
  %base_request_line67 = getelementptr inbounds %struct.acpi_csrt_shared_info, %struct.acpi_csrt_shared_info* %52, i32 0, i32 9, !dbg !6029
  %53 = load i16, i16* %base_request_line67, align 1, !dbg !6029
  %conv68 = zext i16 %53 to i32, !dbg !6028
  %54 = load %struct.acpi_csrt_shared_info*, %struct.acpi_csrt_shared_info** %si, align 8, !dbg !6030
  %num_handshake_signals69 = getelementptr inbounds %struct.acpi_csrt_shared_info, %struct.acpi_csrt_shared_info* %54, i32 0, i32 10, !dbg !6031
  %55 = load i16, i16* %num_handshake_signals69, align 1, !dbg !6031
  %conv70 = zext i16 %55 to i32, !dbg !6030
  %add = add i32 %conv68, %conv70, !dbg !6032
  %sub71 = sub i32 %add, 1, !dbg !6033
  %conv72 = trunc i32 %sub71 to i16, !dbg !6028
  %56 = load %struct.acpi_dma*, %struct.acpi_dma** %adma.addr, align 8, !dbg !6034
  %end_request_line = getelementptr inbounds %struct.acpi_dma, %struct.acpi_dma* %56, i32 0, i32 5, !dbg !6035
  store i16 %conv72, i16* %end_request_line, align 2, !dbg !6036
  store i32 1, i32* %retval, align 4, !dbg !6037
  br label %return, !dbg !6037

return:                                           ; preds = %if.end64, %if.then63, %if.then55, %if.then46, %if.then33, %if.then4, %if.then
  %57 = load i32, i32* %retval, align 4, !dbg !6038
  ret i32 %57, !dbg !6038
}

; Function Attrs: noredzone
declare dso_local void @acpi_put_table(%struct.acpi_table_header*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @resource_type(%struct.resource* %res) #0 !dbg !6039 {
entry:
  %res.addr = alloca %struct.resource*, align 8
  store %struct.resource* %res, %struct.resource** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %res.addr, metadata !6044, metadata !DIExpression()), !dbg !6045
  %0 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !6046
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %0, i32 0, i32 3, !dbg !6047
  %1 = load i64, i64* %flags, align 8, !dbg !6047
  %and = and i64 %1, 7936, !dbg !6048
  ret i64 %and, !dbg !6049
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dma_coerce_mask_and_coherent(%struct.device* %dev, i64 %mask) #0 !dbg !6050 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %mask.addr = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6054, metadata !DIExpression()), !dbg !6055
  store i64 %mask, i64* %mask.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %mask.addr, metadata !6056, metadata !DIExpression()), !dbg !6057
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6058
  %coherent_dma_mask = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 17, !dbg !6059
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6060
  %dma_mask = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 16, !dbg !6061
  store i64* %coherent_dma_mask, i64** %dma_mask, align 8, !dbg !6062
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6063
  %3 = load i64, i64* %mask.addr, align 8, !dbg !6064
  %call = call i32 @dma_set_mask_and_coherent(%struct.device* %2, i64 %3) #8, !dbg !6065
  ret i32 %call, !dbg !6066
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dma_set_mask_and_coherent(%struct.device* %dev, i64 %mask) #0 !dbg !6067 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %mask.addr = alloca i64, align 8
  %rc = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6068, metadata !DIExpression()), !dbg !6069
  store i64 %mask, i64* %mask.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %mask.addr, metadata !6070, metadata !DIExpression()), !dbg !6071
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !6072, metadata !DIExpression()), !dbg !6073
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6074
  %1 = load i64, i64* %mask.addr, align 8, !dbg !6075
  %call = call i32 @dma_set_mask(%struct.device* %0, i64 %1) #8, !dbg !6076
  store i32 %call, i32* %rc, align 4, !dbg !6073
  %2 = load i32, i32* %rc, align 4, !dbg !6077
  %cmp = icmp eq i32 %2, 0, !dbg !6079
  br i1 %cmp, label %if.then, label %if.end, !dbg !6080

if.then:                                          ; preds = %entry
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6081
  %4 = load i64, i64* %mask.addr, align 8, !dbg !6082
  %call1 = call i32 @dma_set_coherent_mask(%struct.device* %3, i64 %4) #8, !dbg !6083
  br label %if.end, !dbg !6083

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %rc, align 4, !dbg !6084
  ret i32 %5, !dbg !6085
}

; Function Attrs: noredzone
declare dso_local i32 @dma_set_mask(%struct.device*, i64) #2

; Function Attrs: noredzone
declare dso_local i32 @dma_set_coherent_mask(%struct.device*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !6086 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !6089, metadata !DIExpression()), !dbg !6090
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !6091, metadata !DIExpression()), !dbg !6092
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !6093, metadata !DIExpression()), !dbg !6094
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6095
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6097
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6098
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #8, !dbg !6099
  br i1 %call, label %if.end, label %if.then, !dbg !6100

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !6101

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6102
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6103
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !6104
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !6105
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6106
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6107
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !6108
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !6109
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6110
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6111
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !6112
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !6113
  br label %do.body, !dbg !6114

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !6115

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !6117

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !6115

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6119
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6119
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !6119
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !6119
  br label %do.end7, !dbg !6119

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !6115

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !6121
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !6122 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !6125, metadata !DIExpression()), !dbg !6126
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !6127, metadata !DIExpression()), !dbg !6128
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !6129, metadata !DIExpression()), !dbg !6130
  ret i1 true, !dbg !6131
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !6132 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !6133, metadata !DIExpression()), !dbg !6134
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6135
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #8, !dbg !6137
  br i1 %call, label %if.end, label %if.then, !dbg !6138

if.then:                                          ; preds = %entry
  br label %return, !dbg !6139

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6140
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !6141
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !6141
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6142
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !6143
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !6143
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #8, !dbg !6144
  br label %return, !dbg !6145

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6145
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !6146 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !6149, metadata !DIExpression()), !dbg !6150
  ret i1 true, !dbg !6151
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !6152 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !6153, metadata !DIExpression()), !dbg !6154
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !6155, metadata !DIExpression()), !dbg !6156
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6157
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6158
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !6159
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !6160
  br label %do.body, !dbg !6161

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6162

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6164

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6162

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6166
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6166
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !6166
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !6166
  br label %do.end5, !dbg !6166

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6162

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6168
}

; Function Attrs: noredzone
declare dso_local noalias i8* @devres_alloc_node(void (%struct.device*, i8*)*, i64, i32, i32) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noredzone }
attributes #9 = { nounwind }
attributes #10 = { noredzone nounwind readnone }
attributes #11 = { noredzone nounwind }
attributes #12 = { cold noredzone }
attributes #13 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4606, !4607, !4608, !4609}
!llvm.ident = !{!4610}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "acpi_dma_lock", scope: !2, file: !3, line: 26, type: !1239, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !186, globals: !4603, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/dma/acpi-dma.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !107, !113, !122, !127, !139, !145, !149, !156, !167, !174, !181}
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
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_desc_metadata_mode", file: !108, line: 288, baseType: !7, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/linux/dmaengine.h", directory: "/home/lizy2001/genbc/linux")
!109 = !{!110, !111, !112}
!110 = !DIEnumerator(name: "DESC_METADATA_NONE", value: 0, isUnsigned: true)
!111 = !DIEnumerator(name: "DESC_METADATA_CLIENT", value: 1, isUnsigned: true)
!112 = !DIEnumerator(name: "DESC_METADATA_ENGINE", value: 2, isUnsigned: true)
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dmaengine_alignment", file: !108, line: 732, baseType: !7, size: 32, elements: !114)
!114 = !{!115, !116, !117, !118, !119, !120, !121}
!115 = !DIEnumerator(name: "DMAENGINE_ALIGN_1_BYTE", value: 0, isUnsigned: true)
!116 = !DIEnumerator(name: "DMAENGINE_ALIGN_2_BYTES", value: 1, isUnsigned: true)
!117 = !DIEnumerator(name: "DMAENGINE_ALIGN_4_BYTES", value: 2, isUnsigned: true)
!118 = !DIEnumerator(name: "DMAENGINE_ALIGN_8_BYTES", value: 3, isUnsigned: true)
!119 = !DIEnumerator(name: "DMAENGINE_ALIGN_16_BYTES", value: 4, isUnsigned: true)
!120 = !DIEnumerator(name: "DMAENGINE_ALIGN_32_BYTES", value: 5, isUnsigned: true)
!121 = !DIEnumerator(name: "DMAENGINE_ALIGN_64_BYTES", value: 6, isUnsigned: true)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_residue_granularity", file: !108, line: 468, baseType: !7, size: 32, elements: !123)
!123 = !{!124, !125, !126}
!124 = !DIEnumerator(name: "DMA_RESIDUE_GRANULARITY_DESCRIPTOR", value: 0, isUnsigned: true)
!125 = !DIEnumerator(name: "DMA_RESIDUE_GRANULARITY_SEGMENT", value: 1, isUnsigned: true)
!126 = !DIEnumerator(name: "DMA_RESIDUE_GRANULARITY_BURST", value: 2, isUnsigned: true)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_ctrl_flags", file: !108, line: 194, baseType: !7, size: 32, elements: !128)
!128 = !{!129, !130, !131, !132, !133, !134, !135, !136, !137, !138}
!129 = !DIEnumerator(name: "DMA_PREP_INTERRUPT", value: 1, isUnsigned: true)
!130 = !DIEnumerator(name: "DMA_CTRL_ACK", value: 2, isUnsigned: true)
!131 = !DIEnumerator(name: "DMA_PREP_PQ_DISABLE_P", value: 4, isUnsigned: true)
!132 = !DIEnumerator(name: "DMA_PREP_PQ_DISABLE_Q", value: 8, isUnsigned: true)
!133 = !DIEnumerator(name: "DMA_PREP_CONTINUE", value: 16, isUnsigned: true)
!134 = !DIEnumerator(name: "DMA_PREP_FENCE", value: 32, isUnsigned: true)
!135 = !DIEnumerator(name: "DMA_CTRL_REUSE", value: 64, isUnsigned: true)
!136 = !DIEnumerator(name: "DMA_PREP_CMD", value: 128, isUnsigned: true)
!137 = !DIEnumerator(name: "DMA_PREP_REPEAT", value: 256, isUnsigned: true)
!138 = !DIEnumerator(name: "DMA_PREP_LOAD_EOT", value: 512, isUnsigned: true)
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dmaengine_tx_result", file: !108, line: 533, baseType: !7, size: 32, elements: !140)
!140 = !{!141, !142, !143, !144}
!141 = !DIEnumerator(name: "DMA_TRANS_NOERROR", value: 0, isUnsigned: true)
!142 = !DIEnumerator(name: "DMA_TRANS_READ_FAILED", value: 1, isUnsigned: true)
!143 = !DIEnumerator(name: "DMA_TRANS_WRITE_FAILED", value: 2, isUnsigned: true)
!144 = !DIEnumerator(name: "DMA_TRANS_ABORTED", value: 3, isUnsigned: true)
!145 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "sum_check_flags", file: !108, line: 220, baseType: !7, size: 32, elements: !146)
!146 = !{!147, !148}
!147 = !DIEnumerator(name: "SUM_CHECK_P_RESULT", value: 1, isUnsigned: true)
!148 = !DIEnumerator(name: "SUM_CHECK_Q_RESULT", value: 2, isUnsigned: true)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_transfer_direction", file: !108, line: 79, baseType: !7, size: 32, elements: !150)
!150 = !{!151, !152, !153, !154, !155}
!151 = !DIEnumerator(name: "DMA_MEM_TO_MEM", value: 0, isUnsigned: true)
!152 = !DIEnumerator(name: "DMA_MEM_TO_DEV", value: 1, isUnsigned: true)
!153 = !DIEnumerator(name: "DMA_DEV_TO_MEM", value: 2, isUnsigned: true)
!154 = !DIEnumerator(name: "DMA_DEV_TO_DEV", value: 3, isUnsigned: true)
!155 = !DIEnumerator(name: "DMA_TRANS_NONE", value: 4, isUnsigned: true)
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_slave_buswidth", file: !108, line: 371, baseType: !7, size: 32, elements: !157)
!157 = !{!158, !159, !160, !161, !162, !163, !164, !165, !166}
!158 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_UNDEFINED", value: 0, isUnsigned: true)
!159 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_1_BYTE", value: 1, isUnsigned: true)
!160 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_2_BYTES", value: 2, isUnsigned: true)
!161 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_3_BYTES", value: 3, isUnsigned: true)
!162 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_4_BYTES", value: 4, isUnsigned: true)
!163 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_8_BYTES", value: 8, isUnsigned: true)
!164 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_16_BYTES", value: 16, isUnsigned: true)
!165 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_32_BYTES", value: 32, isUnsigned: true)
!166 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_64_BYTES", value: 64, isUnsigned: true)
!167 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_status", file: !108, line: 37, baseType: !7, size: 32, elements: !168)
!168 = !{!169, !170, !171, !172, !173}
!169 = !DIEnumerator(name: "DMA_COMPLETE", value: 0, isUnsigned: true)
!170 = !DIEnumerator(name: "DMA_IN_PROGRESS", value: 1, isUnsigned: true)
!171 = !DIEnumerator(name: "DMA_PAUSED", value: 2, isUnsigned: true)
!172 = !DIEnumerator(name: "DMA_ERROR", value: 3, isUnsigned: true)
!173 = !DIEnumerator(name: "DMA_OUT_OF_ORDER", value: 4, isUnsigned: true)
!174 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !175, line: 305, baseType: !7, size: 32, elements: !176)
!175 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!176 = !{!177, !178, !179, !180}
!177 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!178 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!179 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!180 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!181 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !182, line: 10, baseType: !7, size: 32, elements: !183)
!182 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!183 = !{!184, !185}
!184 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!185 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!186 = !{!187, !188, !769, !4224, !4536, !4551, !4552, !4537, !4564, !4585, !439, !4601}
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !190, line: 351, size: 10880, elements: !191)
!190 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/lizy2001/genbc/linux")
!191 = !{!192, !194, !197, !3951, !3952, !3953, !3954, !3955, !3956, !3965, !3982, !4056, !4085, !4109, !4130, !4136, !4145, !4177, !4191, !4213, !4217, !4218, !4219, !4220, !4221, !4222, !4223}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !189, file: !190, line: 352, baseType: !193, size: 32)
!193 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !189, file: !190, line: 353, baseType: !195, size: 64, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !196, line: 424, baseType: !187)
!196 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!197 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !189, file: !190, line: 354, baseType: !198, size: 192, offset: 128)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !199, line: 17, size: 192, elements: !200)
!199 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!200 = !{!201, !203, !3950}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !198, file: !199, line: 18, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !198, file: !199, line: 19, baseType: !204, size: 64, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !206)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !199, line: 110, size: 1152, elements: !207)
!207 = !{!208, !212, !216, !225, !3892, !3896, !3900, !3905, !3909, !3910, !3914, !3918, !3922, !3933, !3934, !3935, !3936, !3946}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !206, file: !199, line: 111, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{!202, !202}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !206, file: !199, line: 112, baseType: !213, size: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{null, !202}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !206, file: !199, line: 113, baseType: !217, size: 64, offset: 128)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!220, !223}
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !221, line: 30, baseType: !222)
!221 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!222 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !198)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !206, file: !199, line: 114, baseType: !226, size: 64, offset: 192)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{!229, !223, !231}
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !234)
!234 = !{!235, !3434, !3436, !3439, !3440, !3491, !3582, !3583, !3584, !3585, !3586, !3595, !3700, !3713, !3819, !3820, !3824, !3826, !3827, !3828, !3832, !3838, !3839, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3880, !3881, !3882, !3885, !3888, !3889, !3890, !3891}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !233, file: !73, line: 462, baseType: !236, size: 512)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !237, line: 64, size: 512, elements: !238)
!237 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!238 = !{!239, !243, !249, !251, !311, !3285, !3424, !3429, !3430, !3431, !3432, !3433}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !236, file: !237, line: 65, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!242 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !236, file: !237, line: 66, baseType: !244, size: 128, offset: 64)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !221, line: 178, size: 128, elements: !245)
!245 = !{!246, !248}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !244, file: !221, line: 179, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !244, file: !221, line: 179, baseType: !247, size: 64, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !236, file: !237, line: 67, baseType: !250, size: 64, offset: 192)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !236, file: !237, line: 68, baseType: !252, size: 64, offset: 256)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !237, line: 192, size: 704, elements: !254)
!254 = !{!255, !256, !272, !273}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !253, file: !237, line: 193, baseType: !244, size: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !253, file: !237, line: 194, baseType: !257, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !258, line: 83, baseType: !259)
!258 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !258, line: 71, elements: !260)
!260 = !{!261}
!261 = !DIDerivedType(tag: DW_TAG_member, scope: !259, file: !258, line: 72, baseType: !262)
!262 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !259, file: !258, line: 72, elements: !263)
!263 = !{!264}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !262, file: !258, line: 73, baseType: !265)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !258, line: 20, elements: !266)
!266 = !{!267}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !265, file: !258, line: 21, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !269, line: 25, baseType: !270)
!269 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !269, line: 25, elements: !271)
!271 = !{}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !253, file: !237, line: 195, baseType: !236, size: 512, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !253, file: !237, line: 196, baseType: !274, size: 64, offset: 640)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !276)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !237, line: 156, size: 192, elements: !277)
!277 = !{!278, !283, !288}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !276, file: !237, line: 157, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{!193, !252, !250}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !276, file: !237, line: 158, baseType: !284, size: 64, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!240, !252, !250}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !276, file: !237, line: 159, baseType: !289, size: 64, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !290)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{!193, !252, !250, !293}
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !237, line: 148, size: 20736, elements: !295)
!295 = !{!296, !301, !305, !306, !310}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !294, file: !237, line: 149, baseType: !297, size: 192)
!297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 192, elements: !299)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!299 = !{!300}
!300 = !DISubrange(count: 3)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !294, file: !237, line: 150, baseType: !302, size: 4096, offset: 192)
!302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 4096, elements: !303)
!303 = !{!304}
!304 = !DISubrange(count: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !294, file: !237, line: 151, baseType: !193, size: 32, offset: 4288)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !294, file: !237, line: 152, baseType: !307, size: 16384, offset: 4320)
!307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 16384, elements: !308)
!308 = !{!309}
!309 = !DISubrange(count: 2048)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !294, file: !237, line: 153, baseType: !193, size: 32, offset: 20704)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !236, file: !237, line: 69, baseType: !312, size: 64, offset: 320)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !237, line: 138, size: 448, elements: !314)
!314 = !{!315, !319, !349, !351, !3247, !3275, !3279}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !313, file: !237, line: 139, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{null, !250}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !313, file: !237, line: 140, baseType: !320, size: 64, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !322)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !323, line: 230, size: 128, elements: !324)
!323 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!324 = !{!325, !341}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !322, file: !323, line: 231, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{!329, !250, !334, !298}
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !221, line: 60, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !331, line: 73, baseType: !332)
!331 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !331, line: 15, baseType: !333)
!333 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !323, line: 30, size: 128, elements: !336)
!336 = !{!337, !338}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !335, file: !323, line: 31, baseType: !240, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !335, file: !323, line: 32, baseType: !339, size: 16, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !221, line: 19, baseType: !340)
!340 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !322, file: !323, line: 232, baseType: !342, size: 64, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DISubroutineType(types: !344)
!344 = !{!329, !250, !334, !240, !345}
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !221, line: 55, baseType: !346)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !331, line: 72, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !331, line: 16, baseType: !348)
!348 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !313, file: !237, line: 141, baseType: !350, size: 64, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !313, file: !237, line: 142, baseType: !352, size: 64, offset: 192)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !323, line: 84, size: 320, elements: !356)
!356 = !{!357, !358, !362, !3244, !3245}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !355, file: !323, line: 85, baseType: !240, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !355, file: !323, line: 86, baseType: !359, size: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{!339, !250, !334, !193}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !355, file: !323, line: 88, baseType: !363, size: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{!339, !250, !366, !193}
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !323, line: 168, size: 448, elements: !368)
!368 = !{!369, !370, !371, !372, !3239, !3240}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !367, file: !323, line: 169, baseType: !335, size: 128)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !367, file: !323, line: 170, baseType: !345, size: 64, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !367, file: !323, line: 171, baseType: !187, size: 64, offset: 192)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !367, file: !323, line: 172, baseType: !373, size: 64, offset: 256)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DISubroutineType(types: !375)
!375 = !{!329, !376, !250, !366, !298, !553, !345}
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !378)
!378 = !{!379, !397, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3222, !3223, !3232, !3233, !3234, !3235, !3236, !3237, !3238}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !377, file: !44, line: 920, baseType: !380, size: 128)
!380 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !377, file: !44, line: 917, size: 128, elements: !381)
!381 = !{!382, !388}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !380, file: !44, line: 918, baseType: !383, size: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !384, line: 58, size: 64, elements: !385)
!384 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!385 = !{!386}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !383, file: !384, line: 59, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !380, file: !44, line: 919, baseType: !389, size: 128, align: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !221, line: 216, size: 128, align: 64, elements: !390)
!390 = !{!391, !393}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !389, file: !221, line: 217, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !389, file: !221, line: 218, baseType: !394, size: 64, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{null, !392}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !377, file: !44, line: 921, baseType: !398, size: 128, offset: 128)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !399, line: 8, size: 128, elements: !400)
!399 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!400 = !{!401, !405}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !398, file: !399, line: 9, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !404, line: 18, flags: DIFlagFwdDecl)
!404 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!405 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !398, file: !399, line: 10, baseType: !406, size: 64, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !404, line: 89, size: 1536, elements: !408)
!408 = !{!409, !410, !420, !428, !429, !452, !3172, !3174, !3186, !3187, !3188, !3189, !3190, !3196, !3197, !3198}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !407, file: !404, line: 91, baseType: !7, size: 32)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !407, file: !404, line: 92, baseType: !411, size: 32, offset: 32)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !412, line: 277, baseType: !413)
!412 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !412, line: 277, size: 32, elements: !414)
!414 = !{!415}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !413, file: !412, line: 277, baseType: !416, size: 32)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !412, line: 70, baseType: !417)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !412, line: 65, size: 32, elements: !418)
!418 = !{!419}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !417, file: !412, line: 66, baseType: !7, size: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !407, file: !404, line: 93, baseType: !421, size: 128, offset: 64)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !422, line: 38, size: 128, elements: !423)
!422 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!423 = !{!424, !426}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !421, file: !422, line: 39, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !421, file: !422, line: 39, baseType: !427, size: 64, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !407, file: !404, line: 94, baseType: !406, size: 64, offset: 192)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !407, file: !404, line: 95, baseType: !430, size: 128, offset: 256)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !404, line: 47, size: 128, elements: !431)
!431 = !{!432, !448}
!432 = !DIDerivedType(tag: DW_TAG_member, scope: !430, file: !404, line: 48, baseType: !433, size: 64)
!433 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !430, file: !404, line: 48, size: 64, elements: !434)
!434 = !{!435, !444}
!435 = !DIDerivedType(tag: DW_TAG_member, scope: !433, file: !404, line: 49, baseType: !436, size: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !433, file: !404, line: 49, size: 64, elements: !437)
!437 = !{!438, !443}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !436, file: !404, line: 50, baseType: !439, size: 32)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !440, line: 21, baseType: !441)
!440 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !442, line: 27, baseType: !7)
!442 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!443 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !436, file: !404, line: 50, baseType: !439, size: 32, offset: 32)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !433, file: !404, line: 52, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !440, line: 23, baseType: !446)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !442, line: 31, baseType: !447)
!447 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !430, file: !404, line: 54, baseType: !449, size: 64, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !451)
!451 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !407, file: !404, line: 96, baseType: !453, size: 64, offset: 384)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !455)
!455 = !{!456, !457, !458, !466, !473, !474, !620, !2883, !2884, !2885, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !3148, !3156, !3157, !3158, !3168, !3169, !3170, !3171}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !454, file: !44, line: 611, baseType: !339, size: 16)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !454, file: !44, line: 612, baseType: !340, size: 16, offset: 16)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !454, file: !44, line: 613, baseType: !459, size: 32, offset: 32)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !460, line: 23, baseType: !461)
!460 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !460, line: 21, size: 32, elements: !462)
!462 = !{!463}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !461, file: !460, line: 22, baseType: !464, size: 32)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !221, line: 32, baseType: !465)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !331, line: 49, baseType: !7)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !454, file: !44, line: 614, baseType: !467, size: 32, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !460, line: 28, baseType: !468)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !460, line: 26, size: 32, elements: !469)
!469 = !{!470}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !468, file: !460, line: 27, baseType: !471, size: 32)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !221, line: 33, baseType: !472)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !331, line: 50, baseType: !7)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !454, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !454, file: !44, line: 622, baseType: !475, size: 64, offset: 128)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !477)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !478)
!478 = !{!479, !483, !496, !500, !506, !510, !514, !518, !522, !526, !530, !531, !537, !541, !567, !596, !600, !606, !611, !615, !616}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !477, file: !44, line: 1865, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!406, !453, !406, !7}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !477, file: !44, line: 1866, baseType: !484, size: 64, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{!240, !406, !453, !487}
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !489, line: 10, size: 128, elements: !490)
!489 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!490 = !{!491, !495}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !488, file: !489, line: 11, baseType: !492, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{null, !187}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !488, file: !489, line: 12, baseType: !187, size: 64, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !477, file: !44, line: 1867, baseType: !497, size: 64, offset: 128)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{!193, !453, !193}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !477, file: !44, line: 1868, baseType: !501, size: 64, offset: 192)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{!504, !453, !193}
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !477, file: !44, line: 1870, baseType: !507, size: 64, offset: 256)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{!193, !406, !298, !193}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !477, file: !44, line: 1872, baseType: !511, size: 64, offset: 320)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DISubroutineType(types: !513)
!513 = !{!193, !453, !406, !339, !220}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !477, file: !44, line: 1873, baseType: !515, size: 64, offset: 384)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{!193, !406, !453, !406}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !477, file: !44, line: 1874, baseType: !519, size: 64, offset: 448)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{!193, !453, !406}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !477, file: !44, line: 1875, baseType: !523, size: 64, offset: 512)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{!193, !453, !406, !240}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !477, file: !44, line: 1876, baseType: !527, size: 64, offset: 576)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!193, !453, !406, !339}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !477, file: !44, line: 1877, baseType: !519, size: 64, offset: 640)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !477, file: !44, line: 1878, baseType: !532, size: 64, offset: 704)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!193, !453, !406, !339, !535}
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !221, line: 16, baseType: !536)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !221, line: 13, baseType: !439)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !477, file: !44, line: 1879, baseType: !538, size: 64, offset: 768)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!193, !453, !406, !453, !406, !7}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !477, file: !44, line: 1881, baseType: !542, size: 64, offset: 832)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{!193, !406, !545}
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !547)
!547 = !{!548, !549, !550, !551, !552, !556, !564, !565, !566}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !546, file: !44, line: 220, baseType: !7, size: 32)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !546, file: !44, line: 221, baseType: !339, size: 16, offset: 32)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !546, file: !44, line: 222, baseType: !459, size: 32, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !546, file: !44, line: 223, baseType: !467, size: 32, offset: 96)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !546, file: !44, line: 224, baseType: !553, size: 64, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !221, line: 46, baseType: !554)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !331, line: 88, baseType: !555)
!555 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !546, file: !44, line: 225, baseType: !557, size: 128, offset: 192)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !558, line: 13, size: 128, elements: !559)
!558 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!559 = !{!560, !563}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !557, file: !558, line: 14, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !558, line: 8, baseType: !562)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !442, line: 30, baseType: !555)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !557, file: !558, line: 15, baseType: !333, size: 64, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !546, file: !44, line: 226, baseType: !557, size: 128, offset: 320)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !546, file: !44, line: 227, baseType: !557, size: 128, offset: 448)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !546, file: !44, line: 234, baseType: !376, size: 64, offset: 576)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !477, file: !44, line: 1882, baseType: !568, size: 64, offset: 896)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!193, !571, !573, !439, !7}
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !398)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !575, line: 22, size: 1152, elements: !576)
!575 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!576 = !{!577, !578, !579, !580, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !574, file: !575, line: 23, baseType: !439, size: 32)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !574, file: !575, line: 24, baseType: !339, size: 16, offset: 32)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !574, file: !575, line: 25, baseType: !7, size: 32, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !574, file: !575, line: 26, baseType: !581, size: 32, offset: 96)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !221, line: 104, baseType: !439)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !574, file: !575, line: 27, baseType: !445, size: 64, offset: 128)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !574, file: !575, line: 28, baseType: !445, size: 64, offset: 192)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !574, file: !575, line: 37, baseType: !445, size: 64, offset: 256)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !574, file: !575, line: 38, baseType: !535, size: 32, offset: 320)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !574, file: !575, line: 39, baseType: !535, size: 32, offset: 352)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !574, file: !575, line: 40, baseType: !459, size: 32, offset: 384)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !574, file: !575, line: 41, baseType: !467, size: 32, offset: 416)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !574, file: !575, line: 42, baseType: !553, size: 64, offset: 448)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !574, file: !575, line: 43, baseType: !557, size: 128, offset: 512)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !574, file: !575, line: 44, baseType: !557, size: 128, offset: 640)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !574, file: !575, line: 45, baseType: !557, size: 128, offset: 768)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !574, file: !575, line: 46, baseType: !557, size: 128, offset: 896)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !574, file: !575, line: 47, baseType: !445, size: 64, offset: 1024)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !574, file: !575, line: 48, baseType: !445, size: 64, offset: 1088)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !477, file: !44, line: 1883, baseType: !597, size: 64, offset: 960)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DISubroutineType(types: !599)
!599 = !{!329, !406, !298, !345}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !477, file: !44, line: 1884, baseType: !601, size: 64, offset: 1024)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!193, !453, !604, !445, !445}
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !477, file: !44, line: 1886, baseType: !607, size: 64, offset: 1088)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DISubroutineType(types: !609)
!609 = !{!193, !453, !610, !193}
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !477, file: !44, line: 1887, baseType: !612, size: 64, offset: 1152)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DISubroutineType(types: !614)
!614 = !{!193, !453, !406, !376, !7, !339}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !477, file: !44, line: 1890, baseType: !527, size: 64, offset: 1216)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !477, file: !44, line: 1891, baseType: !617, size: 64, offset: 1280)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{!193, !453, !504, !193}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !454, file: !44, line: 623, baseType: !621, size: 64, offset: 192)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !623)
!623 = !{!624, !625, !626, !627, !628, !629, !679, !2490, !2572, !2655, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2671, !2675, !2676, !2679, !2680, !2683, !2684, !2685, !2726, !2753, !2754, !2755, !2756, !2757, !2758, !2761, !2763, !2770, !2771, !2773, !2774, !2775, !2834, !2835, !2850, !2851, !2852, !2853, !2854, !2857, !2858, !2859, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !622, file: !44, line: 1417, baseType: !244, size: 128)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !622, file: !44, line: 1418, baseType: !535, size: 32, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !622, file: !44, line: 1419, baseType: !451, size: 8, offset: 160)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !622, file: !44, line: 1420, baseType: !348, size: 64, offset: 192)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !622, file: !44, line: 1421, baseType: !553, size: 64, offset: 256)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !622, file: !44, line: 1422, baseType: !630, size: 64, offset: 320)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !632)
!632 = !{!633, !634, !635, !642, !646, !650, !654, !658, !659, !669, !672, !673, !674, !676, !677, !678}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !631, file: !44, line: 2229, baseType: !240, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !631, file: !44, line: 2230, baseType: !193, size: 32, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !631, file: !44, line: 2238, baseType: !636, size: 64, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DISubroutineType(types: !638)
!638 = !{!193, !639}
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !641, line: 28, flags: DIFlagFwdDecl)
!641 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!642 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !631, file: !44, line: 2239, baseType: !643, size: 64, offset: 192)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !645)
!645 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !631, file: !44, line: 2240, baseType: !647, size: 64, offset: 256)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{!406, !630, !193, !240, !187}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !631, file: !44, line: 2242, baseType: !651, size: 64, offset: 320)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{null, !621}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !631, file: !44, line: 2243, baseType: !655, size: 64, offset: 384)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !657, line: 76, flags: DIFlagFwdDecl)
!657 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!658 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !631, file: !44, line: 2244, baseType: !630, size: 64, offset: 448)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !631, file: !44, line: 2245, baseType: !660, size: 64, offset: 512)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !221, line: 182, size: 64, elements: !661)
!661 = !{!662}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !660, file: !221, line: 183, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !221, line: 186, size: 128, elements: !665)
!665 = !{!666, !667}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !664, file: !221, line: 187, baseType: !663, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !664, file: !221, line: 187, baseType: !668, size: 64, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !631, file: !44, line: 2247, baseType: !670, offset: 576)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !671, line: 187, elements: !271)
!671 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!672 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !631, file: !44, line: 2248, baseType: !670, offset: 576)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !631, file: !44, line: 2249, baseType: !670, offset: 576)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !631, file: !44, line: 2250, baseType: !675, offset: 576)
!675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !670, elements: !299)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !631, file: !44, line: 2252, baseType: !670, offset: 576)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !631, file: !44, line: 2253, baseType: !670, offset: 576)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !631, file: !44, line: 2254, baseType: !670, offset: 576)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !622, file: !44, line: 1423, baseType: !680, size: 64, offset: 384)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !682)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !683)
!683 = !{!684, !688, !692, !693, !697, !703, !707, !708, !709, !713, !717, !718, !719, !720, !726, !731, !732, !739, !740, !741, !742, !2474, !2489}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !682, file: !44, line: 1936, baseType: !685, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DISubroutineType(types: !687)
!687 = !{!453, !621}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !682, file: !44, line: 1937, baseType: !689, size: 64, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{null, !453}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !682, file: !44, line: 1938, baseType: !689, size: 64, offset: 128)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !682, file: !44, line: 1940, baseType: !694, size: 64, offset: 192)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{null, !453, !193}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !682, file: !44, line: 1941, baseType: !698, size: 64, offset: 256)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{!193, !453, !701}
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !682, file: !44, line: 1942, baseType: !704, size: 64, offset: 320)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{!193, !453}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !682, file: !44, line: 1943, baseType: !689, size: 64, offset: 384)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !682, file: !44, line: 1944, baseType: !651, size: 64, offset: 448)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !682, file: !44, line: 1945, baseType: !710, size: 64, offset: 512)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{!193, !621, !193}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !682, file: !44, line: 1946, baseType: !714, size: 64, offset: 576)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!193, !621}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !682, file: !44, line: 1947, baseType: !714, size: 64, offset: 640)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !682, file: !44, line: 1948, baseType: !714, size: 64, offset: 704)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !682, file: !44, line: 1949, baseType: !714, size: 64, offset: 768)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !682, file: !44, line: 1950, baseType: !721, size: 64, offset: 832)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{!193, !406, !724}
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !682, file: !44, line: 1951, baseType: !727, size: 64, offset: 896)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DISubroutineType(types: !729)
!729 = !{!193, !621, !730, !298}
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !682, file: !44, line: 1952, baseType: !651, size: 64, offset: 960)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !682, file: !44, line: 1954, baseType: !733, size: 64, offset: 1024)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!193, !736, !406}
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !738, line: 539, flags: DIFlagFwdDecl)
!738 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!739 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !682, file: !44, line: 1955, baseType: !733, size: 64, offset: 1088)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !682, file: !44, line: 1956, baseType: !733, size: 64, offset: 1152)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !682, file: !44, line: 1957, baseType: !733, size: 64, offset: 1216)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !682, file: !44, line: 1963, baseType: !743, size: 64, offset: 1280)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!193, !621, !746, !769}
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !748, line: 68, size: 512, align: 128, elements: !749)
!748 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!749 = !{!750, !751, !2466, !2473}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !747, file: !748, line: 69, baseType: !348, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, scope: !747, file: !748, line: 77, baseType: !752, size: 320, offset: 64)
!752 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !747, file: !748, line: 77, size: 320, elements: !753)
!753 = !{!754, !982, !987, !1015, !1023, !1029, !2397, !2465}
!754 = !DIDerivedType(tag: DW_TAG_member, scope: !752, file: !748, line: 78, baseType: !755, size: 320)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !752, file: !748, line: 78, size: 320, elements: !756)
!756 = !{!757, !758, !980, !981}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !755, file: !748, line: 84, baseType: !244, size: 128)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !755, file: !748, line: 86, baseType: !759, size: 64, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !761)
!761 = !{!762, !763, !771, !772, !777, !792, !808, !809, !810, !811, !973, !974, !977, !978, !979}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !760, file: !44, line: 452, baseType: !453, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !760, file: !44, line: 453, baseType: !764, size: 128, offset: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !765, line: 292, size: 128, elements: !766)
!765 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!766 = !{!767, !768, !770}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !764, file: !765, line: 293, baseType: !257)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !764, file: !765, line: 295, baseType: !769, size: 32)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !221, line: 148, baseType: !7)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !764, file: !765, line: 296, baseType: !187, size: 64, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !760, file: !44, line: 454, baseType: !769, size: 32, offset: 192)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !760, file: !44, line: 455, baseType: !773, size: 32, offset: 224)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !221, line: 168, baseType: !774)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !221, line: 166, size: 32, elements: !775)
!775 = !{!776}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !774, file: !221, line: 167, baseType: !193, size: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !760, file: !44, line: 460, baseType: !778, size: 128, offset: 256)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !779, line: 125, size: 128, elements: !780)
!779 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!780 = !{!781, !791}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !778, file: !779, line: 126, baseType: !782, size: 64)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !779, line: 31, size: 64, elements: !783)
!783 = !{!784}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !782, file: !779, line: 32, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !779, line: 24, size: 192, align: 64, elements: !787)
!787 = !{!788, !789, !790}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !786, file: !779, line: 25, baseType: !348, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !786, file: !779, line: 26, baseType: !785, size: 64, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !786, file: !779, line: 27, baseType: !785, size: 64, offset: 128)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !778, file: !779, line: 127, baseType: !785, size: 64, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !760, file: !44, line: 461, baseType: !793, size: 256, offset: 384)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !794, line: 35, size: 256, elements: !795)
!794 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!795 = !{!796, !804, !805, !807}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !793, file: !794, line: 36, baseType: !797, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !798, line: 13, baseType: !799)
!798 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !221, line: 175, baseType: !800)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !221, line: 173, size: 64, elements: !801)
!801 = !{!802}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !800, file: !221, line: 174, baseType: !803, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !440, line: 22, baseType: !562)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !793, file: !794, line: 42, baseType: !797, size: 64, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !793, file: !794, line: 46, baseType: !806, offset: 128)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !258, line: 29, baseType: !265)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !793, file: !794, line: 47, baseType: !244, size: 128, offset: 128)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !760, file: !44, line: 462, baseType: !348, size: 64, offset: 640)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !760, file: !44, line: 463, baseType: !348, size: 64, offset: 704)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !760, file: !44, line: 464, baseType: !348, size: 64, offset: 768)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !760, file: !44, line: 465, baseType: !812, size: 64, offset: 832)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !814)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !815)
!815 = !{!816, !820, !824, !828, !832, !836, !842, !848, !852, !857, !861, !865, !869, !937, !941, !947, !948, !949, !953, !958, !962, !969}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !814, file: !44, line: 368, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DISubroutineType(types: !819)
!819 = !{!193, !746, !701}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !814, file: !44, line: 369, baseType: !821, size: 64, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DISubroutineType(types: !823)
!823 = !{!193, !376, !746}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !814, file: !44, line: 372, baseType: !825, size: 64, offset: 128)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{!193, !759, !701}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !814, file: !44, line: 375, baseType: !829, size: 64, offset: 192)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!193, !746}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !814, file: !44, line: 381, baseType: !833, size: 64, offset: 256)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{!193, !376, !759, !247, !7}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !814, file: !44, line: 383, baseType: !837, size: 64, offset: 320)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{null, !840}
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !814, file: !44, line: 385, baseType: !843, size: 64, offset: 384)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{!193, !376, !759, !553, !7, !7, !846, !847}
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !814, file: !44, line: 388, baseType: !849, size: 64, offset: 448)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{!193, !376, !759, !553, !7, !7, !746, !187}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !814, file: !44, line: 393, baseType: !853, size: 64, offset: 512)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!856, !759, !856}
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !221, line: 125, baseType: !445)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !814, file: !44, line: 394, baseType: !858, size: 64, offset: 576)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DISubroutineType(types: !860)
!860 = !{null, !746, !7, !7}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !814, file: !44, line: 395, baseType: !862, size: 64, offset: 640)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DISubroutineType(types: !864)
!864 = !{!193, !746, !769}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !814, file: !44, line: 396, baseType: !866, size: 64, offset: 704)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{null, !746}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !814, file: !44, line: 397, baseType: !870, size: 64, offset: 768)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{!329, !873, !895}
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !875)
!875 = !{!876, !877, !878, !882, !883, !884, !887, !888}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !874, file: !44, line: 321, baseType: !376, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !874, file: !44, line: 326, baseType: !553, size: 64, offset: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !874, file: !44, line: 327, baseType: !879, size: 64, offset: 128)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DISubroutineType(types: !881)
!881 = !{null, !873, !333, !333}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !874, file: !44, line: 328, baseType: !187, size: 64, offset: 192)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !874, file: !44, line: 329, baseType: !193, size: 32, offset: 256)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !874, file: !44, line: 330, baseType: !885, size: 16, offset: 288)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !440, line: 19, baseType: !886)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !442, line: 24, baseType: !340)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !874, file: !44, line: 331, baseType: !885, size: 16, offset: 304)
!888 = !DIDerivedType(tag: DW_TAG_member, scope: !874, file: !44, line: 332, baseType: !889, size: 64, offset: 320)
!889 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !874, file: !44, line: 332, size: 64, elements: !890)
!890 = !{!891, !892}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !889, file: !44, line: 333, baseType: !7, size: 32)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !889, file: !44, line: 334, baseType: !893, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !897, line: 29, size: 320, elements: !898)
!897 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/lizy2001/genbc/linux")
!898 = !{!899, !900, !901, !902, !928}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !896, file: !897, line: 35, baseType: !7, size: 32)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !896, file: !897, line: 36, baseType: !345, size: 64, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !896, file: !897, line: 37, baseType: !345, size: 64, offset: 128)
!902 = !DIDerivedType(tag: DW_TAG_member, scope: !896, file: !897, line: 38, baseType: !903, size: 64, offset: 192)
!903 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !896, file: !897, line: 38, size: 64, elements: !904)
!904 = !{!905, !913, !920, !924}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "iov", scope: !903, file: !897, line: 39, baseType: !906, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !908)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !909, line: 17, size: 128, elements: !910)
!909 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/lizy2001/genbc/linux")
!910 = !{!911, !912}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !908, file: !909, line: 19, baseType: !187, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !908, file: !909, line: 20, baseType: !346, size: 64, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !903, file: !897, line: 40, baseType: !914, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !916)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !897, line: 15, size: 128, elements: !917)
!917 = !{!918, !919}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !916, file: !897, line: 16, baseType: !187, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !916, file: !897, line: 17, baseType: !345, size: 64, offset: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !903, file: !897, line: 41, baseType: !921, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !923)
!923 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !897, line: 41, flags: DIFlagFwdDecl)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !903, file: !897, line: 42, baseType: !925, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !927, line: 53, flags: DIFlagFwdDecl)
!927 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!928 = !DIDerivedType(tag: DW_TAG_member, scope: !896, file: !897, line: 44, baseType: !929, size: 64, offset: 256)
!929 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !896, file: !897, line: 44, size: 64, elements: !930)
!930 = !{!931, !932}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !929, file: !897, line: 45, baseType: !348, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, scope: !929, file: !897, line: 46, baseType: !933, size: 64)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !929, file: !897, line: 46, size: 64, elements: !934)
!934 = !{!935, !936}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !933, file: !897, line: 47, baseType: !7, size: 32)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "start_head", scope: !933, file: !897, line: 48, baseType: !7, size: 32, offset: 32)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !814, file: !44, line: 402, baseType: !938, size: 64, offset: 832)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{!193, !759, !746, !746, !5}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !814, file: !44, line: 404, baseType: !942, size: 64, offset: 896)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{!220, !746, !945}
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !946, line: 305, baseType: !7)
!946 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!947 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !814, file: !44, line: 405, baseType: !866, size: 64, offset: 960)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !814, file: !44, line: 406, baseType: !829, size: 64, offset: 1024)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !814, file: !44, line: 407, baseType: !950, size: 64, offset: 1088)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DISubroutineType(types: !952)
!952 = !{!193, !746, !348, !348}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !814, file: !44, line: 409, baseType: !954, size: 64, offset: 1152)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DISubroutineType(types: !956)
!956 = !{null, !746, !957, !957}
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !814, file: !44, line: 410, baseType: !959, size: 64, offset: 1216)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DISubroutineType(types: !961)
!961 = !{!193, !759, !746}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !814, file: !44, line: 413, baseType: !963, size: 64, offset: 1280)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DISubroutineType(types: !965)
!965 = !{!193, !966, !376, !968}
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !814, file: !44, line: 415, baseType: !970, size: 64, offset: 1344)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DISubroutineType(types: !972)
!972 = !{null, !376}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !760, file: !44, line: 466, baseType: !348, size: 64, offset: 896)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !760, file: !44, line: 467, baseType: !975, size: 32, offset: 960)
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !976, line: 8, baseType: !439)
!976 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!977 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !760, file: !44, line: 468, baseType: !257, offset: 992)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !760, file: !44, line: 469, baseType: !244, size: 128, offset: 1024)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !760, file: !44, line: 470, baseType: !187, size: 64, offset: 1152)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !755, file: !748, line: 87, baseType: !348, size: 64, offset: 192)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !755, file: !748, line: 94, baseType: !348, size: 64, offset: 256)
!982 = !DIDerivedType(tag: DW_TAG_member, scope: !752, file: !748, line: 96, baseType: !983, size: 64)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !752, file: !748, line: 96, size: 64, elements: !984)
!984 = !{!985}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !983, file: !748, line: 101, baseType: !986, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !221, line: 143, baseType: !445)
!987 = !DIDerivedType(tag: DW_TAG_member, scope: !752, file: !748, line: 103, baseType: !988, size: 320)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !752, file: !748, line: 103, size: 320, elements: !989)
!989 = !{!990, !1000, !1003, !1004}
!990 = !DIDerivedType(tag: DW_TAG_member, scope: !988, file: !748, line: 104, baseType: !991, size: 128)
!991 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !988, file: !748, line: 104, size: 128, elements: !992)
!992 = !{!993, !994}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !991, file: !748, line: 105, baseType: !244, size: 128)
!994 = !DIDerivedType(tag: DW_TAG_member, scope: !991, file: !748, line: 106, baseType: !995, size: 128)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !991, file: !748, line: 106, size: 128, elements: !996)
!996 = !{!997, !998, !999}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !995, file: !748, line: 107, baseType: !746, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !995, file: !748, line: 109, baseType: !193, size: 32, offset: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !995, file: !748, line: 110, baseType: !193, size: 32, offset: 96)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !988, file: !748, line: 117, baseType: !1001, size: 64, offset: 128)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !748, line: 117, flags: DIFlagFwdDecl)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !988, file: !748, line: 119, baseType: !187, size: 64, offset: 192)
!1004 = !DIDerivedType(tag: DW_TAG_member, scope: !988, file: !748, line: 120, baseType: !1005, size: 64, offset: 256)
!1005 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !988, file: !748, line: 120, size: 64, elements: !1006)
!1006 = !{!1007, !1008, !1009}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1005, file: !748, line: 121, baseType: !187, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1005, file: !748, line: 122, baseType: !348, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, scope: !1005, file: !748, line: 123, baseType: !1010, size: 32)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1005, file: !748, line: 123, size: 32, elements: !1011)
!1011 = !{!1012, !1013, !1014}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1010, file: !748, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1010, file: !748, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1010, file: !748, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1015 = !DIDerivedType(tag: DW_TAG_member, scope: !752, file: !748, line: 130, baseType: !1016, size: 192)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !752, file: !748, line: 130, size: 192, elements: !1017)
!1017 = !{!1018, !1019, !1020, !1021, !1022}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1016, file: !748, line: 131, baseType: !348, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1016, file: !748, line: 134, baseType: !451, size: 8, offset: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1016, file: !748, line: 135, baseType: !451, size: 8, offset: 72)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1016, file: !748, line: 136, baseType: !773, size: 32, offset: 96)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1016, file: !748, line: 137, baseType: !7, size: 32, offset: 128)
!1023 = !DIDerivedType(tag: DW_TAG_member, scope: !752, file: !748, line: 139, baseType: !1024, size: 256)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !752, file: !748, line: 139, size: 256, elements: !1025)
!1025 = !{!1026, !1027, !1028}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1024, file: !748, line: 140, baseType: !348, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1024, file: !748, line: 141, baseType: !773, size: 32, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1024, file: !748, line: 143, baseType: !244, size: 128, offset: 128)
!1029 = !DIDerivedType(tag: DW_TAG_member, scope: !752, file: !748, line: 145, baseType: !1030, size: 256)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !752, file: !748, line: 145, size: 256, elements: !1031)
!1031 = !{!1032, !1033, !1035, !1036, !2396}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1030, file: !748, line: 146, baseType: !348, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1030, file: !748, line: 147, baseType: !1034, size: 64, offset: 64)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !738, line: 509, baseType: !746)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1030, file: !748, line: 148, baseType: !348, size: 64, offset: 128)
!1036 = !DIDerivedType(tag: DW_TAG_member, scope: !1030, file: !748, line: 149, baseType: !1037, size: 64, offset: 192)
!1037 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1030, file: !748, line: 149, size: 64, elements: !1038)
!1038 = !{!1039, !2395}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1037, file: !748, line: 150, baseType: !1040, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !748, line: 388, size: 7296, elements: !1042)
!1042 = !{!1043, !2391}
!1043 = !DIDerivedType(tag: DW_TAG_member, scope: !1041, file: !748, line: 389, baseType: !1044, size: 7296)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1041, file: !748, line: 389, size: 7296, elements: !1045)
!1045 = !{!1046, !1164, !1165, !1166, !1170, !1171, !1172, !1173, !1174, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1215, !1223, !1226, !1272, !1273, !2375, !2376, !2379, !2380, !2381, !2384, !2385, !2386, !2389, !2390}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1044, file: !748, line: 390, baseType: !1047, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !748, line: 305, size: 1472, elements: !1049)
!1049 = !{!1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1064, !1065, !1070, !1071, !1074, !1158, !1159, !1160, !1161, !1162}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1048, file: !748, line: 308, baseType: !348, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1048, file: !748, line: 309, baseType: !348, size: 64, offset: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1048, file: !748, line: 313, baseType: !1047, size: 64, offset: 128)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1048, file: !748, line: 313, baseType: !1047, size: 64, offset: 192)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1048, file: !748, line: 315, baseType: !786, size: 192, align: 64, offset: 256)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1048, file: !748, line: 323, baseType: !348, size: 64, offset: 448)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1048, file: !748, line: 327, baseType: !1040, size: 64, offset: 512)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1048, file: !748, line: 333, baseType: !1058, size: 64, offset: 576)
!1058 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !738, line: 284, baseType: !1059)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !738, line: 284, size: 64, elements: !1060)
!1060 = !{!1061}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1059, file: !738, line: 284, baseType: !1062, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1063, line: 19, baseType: !348)
!1063 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1048, file: !748, line: 334, baseType: !348, size: 64, offset: 640)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1048, file: !748, line: 343, baseType: !1066, size: 256, offset: 704)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1048, file: !748, line: 340, size: 256, elements: !1067)
!1067 = !{!1068, !1069}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1066, file: !748, line: 341, baseType: !786, size: 192, align: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1066, file: !748, line: 342, baseType: !348, size: 64, offset: 192)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1048, file: !748, line: 351, baseType: !244, size: 128, offset: 960)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1048, file: !748, line: 353, baseType: !1072, size: 64, offset: 1088)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !748, line: 353, flags: DIFlagFwdDecl)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1048, file: !748, line: 356, baseType: !1075, size: 64, offset: 1152)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1077)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1078)
!1078 = !{!1079, !1083, !1084, !1088, !1092, !1132, !1136, !1140, !1144, !1145, !1146, !1150, !1154}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1077, file: !14, line: 558, baseType: !1080, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{null, !1047}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1077, file: !14, line: 559, baseType: !1080, size: 64, offset: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1077, file: !14, line: 560, baseType: !1085, size: 64, offset: 128)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!193, !1047, !348}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1077, file: !14, line: 561, baseType: !1089, size: 64, offset: 192)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!193, !1047}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1077, file: !14, line: 562, baseType: !1093, size: 64, offset: 256)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!1096, !1097}
!1096 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !748, line: 682, baseType: !7)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1099)
!1099 = !{!1100, !1101, !1102, !1103, !1104, !1105, !1112, !1119, !1125, !1126, !1127, !1129, !1131}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1098, file: !14, line: 509, baseType: !1047, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1098, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1098, file: !14, line: 511, baseType: !769, size: 32, offset: 96)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1098, file: !14, line: 512, baseType: !348, size: 64, offset: 128)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1098, file: !14, line: 513, baseType: !348, size: 64, offset: 192)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1098, file: !14, line: 514, baseType: !1106, size: 64, offset: 256)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !738, line: 385, baseType: !1108)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !738, line: 385, size: 64, elements: !1109)
!1109 = !{!1110}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1108, file: !738, line: 385, baseType: !1111, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1063, line: 15, baseType: !348)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1098, file: !14, line: 516, baseType: !1113, size: 64, offset: 320)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !738, line: 359, baseType: !1115)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !738, line: 359, size: 64, elements: !1116)
!1116 = !{!1117}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1115, file: !738, line: 359, baseType: !1118, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1063, line: 16, baseType: !348)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1098, file: !14, line: 519, baseType: !1120, size: 64, offset: 384)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1063, line: 21, baseType: !1121)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1063, line: 21, size: 64, elements: !1122)
!1122 = !{!1123}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1121, file: !1063, line: 21, baseType: !1124, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1063, line: 14, baseType: !348)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1098, file: !14, line: 521, baseType: !746, size: 64, offset: 448)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1098, file: !14, line: 522, baseType: !746, size: 64, offset: 512)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1098, file: !14, line: 528, baseType: !1128, size: 64, offset: 576)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1098, file: !14, line: 532, baseType: !1130, size: 64, offset: 640)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1098, file: !14, line: 536, baseType: !1034, size: 64, offset: 704)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1077, file: !14, line: 563, baseType: !1133, size: 64, offset: 320)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!1096, !1097, !13}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1077, file: !14, line: 565, baseType: !1137, size: 64, offset: 384)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{null, !1097, !348, !348}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1077, file: !14, line: 567, baseType: !1141, size: 64, offset: 448)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!348, !1047}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1077, file: !14, line: 571, baseType: !1093, size: 64, offset: 512)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1077, file: !14, line: 574, baseType: !1093, size: 64, offset: 576)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1077, file: !14, line: 579, baseType: !1147, size: 64, offset: 640)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!193, !1047, !348, !187, !193, !193}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1077, file: !14, line: 585, baseType: !1151, size: 64, offset: 704)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!240, !1047}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1077, file: !14, line: 615, baseType: !1155, size: 64, offset: 768)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!746, !1047, !348}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1048, file: !748, line: 359, baseType: !348, size: 64, offset: 1216)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1048, file: !748, line: 361, baseType: !376, size: 64, offset: 1280)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1048, file: !748, line: 362, baseType: !187, size: 64, offset: 1344)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1048, file: !748, line: 365, baseType: !797, size: 64, offset: 1408)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1048, file: !748, line: 373, baseType: !1163, offset: 1472)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !748, line: 296, elements: !271)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1044, file: !748, line: 391, baseType: !782, size: 64, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1044, file: !748, line: 392, baseType: !445, size: 64, offset: 128)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1044, file: !748, line: 394, baseType: !1167, size: 64, offset: 192)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!348, !376, !348, !348, !348, !348}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1044, file: !748, line: 398, baseType: !348, size: 64, offset: 256)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1044, file: !748, line: 399, baseType: !348, size: 64, offset: 320)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1044, file: !748, line: 405, baseType: !348, size: 64, offset: 384)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1044, file: !748, line: 406, baseType: !348, size: 64, offset: 448)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1044, file: !748, line: 407, baseType: !1175, size: 64, offset: 512)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !738, line: 286, baseType: !1177)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !738, line: 286, size: 64, elements: !1178)
!1178 = !{!1179}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1177, file: !738, line: 286, baseType: !1180, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1063, line: 18, baseType: !348)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1044, file: !748, line: 416, baseType: !773, size: 32, offset: 576)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1044, file: !748, line: 428, baseType: !773, size: 32, offset: 608)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1044, file: !748, line: 437, baseType: !773, size: 32, offset: 640)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1044, file: !748, line: 447, baseType: !773, size: 32, offset: 672)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1044, file: !748, line: 450, baseType: !797, size: 64, offset: 704)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1044, file: !748, line: 452, baseType: !193, size: 32, offset: 768)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1044, file: !748, line: 454, baseType: !257, offset: 800)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1044, file: !748, line: 457, baseType: !793, size: 256, offset: 832)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1044, file: !748, line: 459, baseType: !244, size: 128, offset: 1088)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1044, file: !748, line: 466, baseType: !348, size: 64, offset: 1216)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1044, file: !748, line: 467, baseType: !348, size: 64, offset: 1280)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1044, file: !748, line: 469, baseType: !348, size: 64, offset: 1344)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1044, file: !748, line: 470, baseType: !348, size: 64, offset: 1408)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1044, file: !748, line: 471, baseType: !799, size: 64, offset: 1472)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1044, file: !748, line: 472, baseType: !348, size: 64, offset: 1536)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1044, file: !748, line: 473, baseType: !348, size: 64, offset: 1600)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1044, file: !748, line: 474, baseType: !348, size: 64, offset: 1664)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1044, file: !748, line: 475, baseType: !348, size: 64, offset: 1728)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1044, file: !748, line: 477, baseType: !257, offset: 1792)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1044, file: !748, line: 478, baseType: !348, size: 64, offset: 1792)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1044, file: !748, line: 478, baseType: !348, size: 64, offset: 1856)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1044, file: !748, line: 478, baseType: !348, size: 64, offset: 1920)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1044, file: !748, line: 478, baseType: !348, size: 64, offset: 1984)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1044, file: !748, line: 479, baseType: !348, size: 64, offset: 2048)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1044, file: !748, line: 479, baseType: !348, size: 64, offset: 2112)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1044, file: !748, line: 479, baseType: !348, size: 64, offset: 2176)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1044, file: !748, line: 480, baseType: !348, size: 64, offset: 2240)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1044, file: !748, line: 480, baseType: !348, size: 64, offset: 2304)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1044, file: !748, line: 480, baseType: !348, size: 64, offset: 2368)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1044, file: !748, line: 480, baseType: !348, size: 64, offset: 2432)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1044, file: !748, line: 482, baseType: !1212, size: 2816, offset: 2496)
!1212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 2816, elements: !1213)
!1213 = !{!1214}
!1214 = !DISubrange(count: 44)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1044, file: !748, line: 488, baseType: !1216, size: 256, offset: 5312)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1217, line: 60, size: 256, elements: !1218)
!1217 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1218 = !{!1219}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1216, file: !1217, line: 61, baseType: !1220, size: 256)
!1220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !797, size: 256, elements: !1221)
!1221 = !{!1222}
!1222 = !DISubrange(count: 4)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1044, file: !748, line: 490, baseType: !1224, size: 64, offset: 5568)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !748, line: 490, flags: DIFlagFwdDecl)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1044, file: !748, line: 493, baseType: !1227, size: 896, offset: 5632)
!1227 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1228, line: 53, baseType: !1229)
!1228 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1228, line: 13, size: 896, elements: !1230)
!1230 = !{!1231, !1232, !1233, !1234, !1237, !1238, !1245, !1246, !1266, !1267, !1268}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1229, file: !1228, line: 18, baseType: !445, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1229, file: !1228, line: 28, baseType: !799, size: 64, offset: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1229, file: !1228, line: 31, baseType: !793, size: 256, offset: 128)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1229, file: !1228, line: 32, baseType: !1235, size: 64, offset: 384)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1228, line: 32, flags: DIFlagFwdDecl)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1229, file: !1228, line: 37, baseType: !340, size: 16, offset: 448)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1229, file: !1228, line: 40, baseType: !1239, size: 192, offset: 512)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1240, line: 53, size: 192, elements: !1241)
!1240 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1241 = !{!1242, !1243, !1244}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1239, file: !1240, line: 54, baseType: !797, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1239, file: !1240, line: 55, baseType: !257, offset: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1239, file: !1240, line: 59, baseType: !244, size: 128, offset: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1229, file: !1228, line: 41, baseType: !187, size: 64, offset: 704)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1229, file: !1228, line: 42, baseType: !1247, size: 64, offset: 768)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1249)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1250, line: 13, size: 896, elements: !1251)
!1250 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1251 = !{!1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1249, file: !1250, line: 14, baseType: !187, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1249, file: !1250, line: 15, baseType: !348, size: 64, offset: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1249, file: !1250, line: 17, baseType: !348, size: 64, offset: 128)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1249, file: !1250, line: 17, baseType: !348, size: 64, offset: 192)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1249, file: !1250, line: 19, baseType: !333, size: 64, offset: 256)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1249, file: !1250, line: 21, baseType: !333, size: 64, offset: 320)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1249, file: !1250, line: 22, baseType: !333, size: 64, offset: 384)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1249, file: !1250, line: 23, baseType: !333, size: 64, offset: 448)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1249, file: !1250, line: 24, baseType: !333, size: 64, offset: 512)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1249, file: !1250, line: 25, baseType: !333, size: 64, offset: 576)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1249, file: !1250, line: 26, baseType: !333, size: 64, offset: 640)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1249, file: !1250, line: 27, baseType: !333, size: 64, offset: 704)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1249, file: !1250, line: 28, baseType: !333, size: 64, offset: 768)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1249, file: !1250, line: 29, baseType: !333, size: 64, offset: 832)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1229, file: !1228, line: 44, baseType: !773, size: 32, offset: 832)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1229, file: !1228, line: 50, baseType: !885, size: 16, offset: 864)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1229, file: !1228, line: 51, baseType: !1269, size: 16, offset: 880)
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !440, line: 18, baseType: !1270)
!1270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !442, line: 23, baseType: !1271)
!1271 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1044, file: !748, line: 495, baseType: !348, size: 64, offset: 6528)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1044, file: !748, line: 497, baseType: !1274, size: 64, offset: 6592)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !748, line: 381, size: 384, elements: !1276)
!1276 = !{!1277, !1278, !2374}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1275, file: !748, line: 382, baseType: !773, size: 32)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1275, file: !748, line: 383, baseType: !1279, size: 128, offset: 64)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !748, line: 376, size: 128, elements: !1280)
!1280 = !{!1281, !2372}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1279, file: !748, line: 377, baseType: !1282, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !927, line: 640, size: 48640, elements: !1284)
!1284 = !{!1285, !1291, !1293, !1294, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1311, !1329, !1340, !1425, !1426, !1427, !1438, !1439, !1441, !1442, !1443, !1444, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1523, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1561, !1563, !1564, !1565, !1577, !1578, !1579, !1580, !1581, !1582, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1606, !1611, !1795, !1796, !1797, !1798, !1802, !1805, !1808, !1811, !1814, !1817, !1918, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1964, !1965, !1966, !1967, !1968, !1973, !1974, !1975, !1978, !1979, !1982, !1985, !1988, !1991, !2034, !2037, !2038, !2117, !2118, !2121, !2122, !2125, !2126, !2127, !2131, !2132, !2133, !2146, !2147, !2148, !2158, !2163, !2164, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1283, file: !927, line: 646, baseType: !1286, size: 128)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1287, line: 56, size: 128, elements: !1288)
!1287 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1288 = !{!1289, !1290}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1286, file: !1287, line: 57, baseType: !348, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1286, file: !1287, line: 58, baseType: !439, size: 32, offset: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1283, file: !927, line: 649, baseType: !1292, size: 64, offset: 128)
!1292 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !333)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1283, file: !927, line: 657, baseType: !187, size: 64, offset: 192)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1283, file: !927, line: 658, baseType: !1295, size: 32, offset: 256)
!1295 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1296, line: 113, baseType: !1297)
!1296 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1296, line: 111, size: 32, elements: !1298)
!1298 = !{!1299}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1297, file: !1296, line: 112, baseType: !773, size: 32)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1283, file: !927, line: 660, baseType: !7, size: 32, offset: 288)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1283, file: !927, line: 661, baseType: !7, size: 32, offset: 320)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1283, file: !927, line: 684, baseType: !193, size: 32, offset: 352)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1283, file: !927, line: 686, baseType: !193, size: 32, offset: 384)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1283, file: !927, line: 687, baseType: !193, size: 32, offset: 416)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1283, file: !927, line: 688, baseType: !193, size: 32, offset: 448)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1283, file: !927, line: 689, baseType: !7, size: 32, offset: 480)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1283, file: !927, line: 691, baseType: !1308, size: 64, offset: 512)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1310)
!1310 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !927, line: 691, flags: DIFlagFwdDecl)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1283, file: !927, line: 692, baseType: !1312, size: 832, offset: 576)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !927, line: 451, size: 832, elements: !1313)
!1313 = !{!1314, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1312, file: !927, line: 453, baseType: !1315, size: 128)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !927, line: 325, size: 128, elements: !1316)
!1316 = !{!1317, !1318}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1315, file: !927, line: 326, baseType: !348, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1315, file: !927, line: 327, baseType: !439, size: 32, offset: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1312, file: !927, line: 454, baseType: !786, size: 192, align: 64, offset: 128)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1312, file: !927, line: 455, baseType: !244, size: 128, offset: 320)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1312, file: !927, line: 456, baseType: !7, size: 32, offset: 448)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1312, file: !927, line: 458, baseType: !445, size: 64, offset: 512)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1312, file: !927, line: 459, baseType: !445, size: 64, offset: 576)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1312, file: !927, line: 460, baseType: !445, size: 64, offset: 640)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1312, file: !927, line: 461, baseType: !445, size: 64, offset: 704)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1312, file: !927, line: 463, baseType: !445, size: 64, offset: 768)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1312, file: !927, line: 465, baseType: !1328, offset: 832)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !927, line: 415, elements: !271)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1283, file: !927, line: 693, baseType: !1330, size: 384, offset: 1408)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !927, line: 489, size: 384, elements: !1331)
!1331 = !{!1332, !1333, !1334, !1335, !1336, !1337, !1338}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1330, file: !927, line: 490, baseType: !244, size: 128)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1330, file: !927, line: 491, baseType: !348, size: 64, offset: 128)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1330, file: !927, line: 492, baseType: !348, size: 64, offset: 192)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1330, file: !927, line: 493, baseType: !7, size: 32, offset: 256)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1330, file: !927, line: 494, baseType: !340, size: 16, offset: 288)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1330, file: !927, line: 495, baseType: !340, size: 16, offset: 304)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1330, file: !927, line: 497, baseType: !1339, size: 64, offset: 320)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1283, file: !927, line: 697, baseType: !1341, size: 1792, offset: 1792)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !927, line: 507, size: 1792, elements: !1342)
!1342 = !{!1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1422, !1423}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1341, file: !927, line: 508, baseType: !786, size: 192, align: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1341, file: !927, line: 515, baseType: !445, size: 64, offset: 192)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1341, file: !927, line: 516, baseType: !445, size: 64, offset: 256)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1341, file: !927, line: 517, baseType: !445, size: 64, offset: 320)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1341, file: !927, line: 518, baseType: !445, size: 64, offset: 384)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1341, file: !927, line: 519, baseType: !445, size: 64, offset: 448)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1341, file: !927, line: 526, baseType: !803, size: 64, offset: 512)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1341, file: !927, line: 527, baseType: !445, size: 64, offset: 576)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1341, file: !927, line: 528, baseType: !7, size: 32, offset: 640)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1341, file: !927, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1341, file: !927, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1341, file: !927, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1341, file: !927, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1341, file: !927, line: 563, baseType: !1357, size: 512, offset: 704)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1358)
!1358 = !{!1359, !1367, !1368, !1373, !1416, !1419, !1420, !1421}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1357, file: !20, line: 119, baseType: !1360, size: 256)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1361, line: 9, size: 256, elements: !1362)
!1361 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1362 = !{!1363, !1364}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1360, file: !1361, line: 10, baseType: !786, size: 192, align: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1360, file: !1361, line: 11, baseType: !1365, size: 64, offset: 192)
!1365 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1366, line: 29, baseType: !803)
!1366 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1357, file: !20, line: 120, baseType: !1365, size: 64, offset: 256)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1357, file: !20, line: 121, baseType: !1369, size: 64, offset: 320)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!19, !1372}
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1357, file: !20, line: 122, baseType: !1374, size: 64, offset: 384)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1376)
!1376 = !{!1377, !1397, !1398, !1401, !1406, !1407, !1411, !1415}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1375, file: !20, line: 160, baseType: !1378, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1380)
!1380 = !{!1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1379, file: !20, line: 215, baseType: !806)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1379, file: !20, line: 216, baseType: !7, size: 32)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1379, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1379, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1379, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1379, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1379, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1379, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1379, file: !20, line: 233, baseType: !1365, size: 64, offset: 128)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1379, file: !20, line: 234, baseType: !1372, size: 64, offset: 192)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1379, file: !20, line: 235, baseType: !1365, size: 64, offset: 256)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1379, file: !20, line: 236, baseType: !1372, size: 64, offset: 320)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1379, file: !20, line: 237, baseType: !1394, size: 4096, offset: 512)
!1394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1375, size: 4096, elements: !1395)
!1395 = !{!1396}
!1396 = !DISubrange(count: 8)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1375, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1375, file: !20, line: 162, baseType: !1399, size: 32, offset: 96)
!1399 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !221, line: 27, baseType: !1400)
!1400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !331, line: 96, baseType: !193)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1375, file: !20, line: 163, baseType: !1402, size: 32, offset: 128)
!1402 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !412, line: 276, baseType: !1403)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !412, line: 276, size: 32, elements: !1404)
!1404 = !{!1405}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1403, file: !412, line: 276, baseType: !416, size: 32)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1375, file: !20, line: 164, baseType: !1372, size: 64, offset: 192)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1375, file: !20, line: 165, baseType: !1408, size: 128, offset: 256)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1361, line: 14, size: 128, elements: !1409)
!1409 = !{!1410}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1408, file: !1361, line: 15, baseType: !778, size: 128)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1375, file: !20, line: 166, baseType: !1412, size: 64, offset: 384)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!1365}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1375, file: !20, line: 167, baseType: !1365, size: 64, offset: 448)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1357, file: !20, line: 123, baseType: !1417, size: 8, offset: 448)
!1417 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !440, line: 17, baseType: !1418)
!1418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !442, line: 21, baseType: !451)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1357, file: !20, line: 124, baseType: !1417, size: 8, offset: 456)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1357, file: !20, line: 125, baseType: !1417, size: 8, offset: 464)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1357, file: !20, line: 126, baseType: !1417, size: 8, offset: 472)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1341, file: !927, line: 572, baseType: !1357, size: 512, offset: 1216)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1341, file: !927, line: 580, baseType: !1424, size: 64, offset: 1728)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1283, file: !927, line: 721, baseType: !7, size: 32, offset: 3584)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1283, file: !927, line: 722, baseType: !193, size: 32, offset: 3616)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1283, file: !927, line: 723, baseType: !1428, size: 64, offset: 3648)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1430)
!1430 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1431, line: 17, baseType: !1432)
!1431 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1431, line: 17, size: 64, elements: !1433)
!1433 = !{!1434}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1432, file: !1431, line: 17, baseType: !1435, size: 64)
!1435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 64, elements: !1436)
!1436 = !{!1437}
!1437 = !DISubrange(count: 1)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1283, file: !927, line: 724, baseType: !1430, size: 64, offset: 3712)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1283, file: !927, line: 749, baseType: !1440, offset: 3776)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !927, line: 290, elements: !271)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1283, file: !927, line: 751, baseType: !244, size: 128, offset: 3776)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1283, file: !927, line: 757, baseType: !1040, size: 64, offset: 3904)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1283, file: !927, line: 758, baseType: !1040, size: 64, offset: 3968)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1283, file: !927, line: 761, baseType: !1445, size: 320, offset: 4032)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1217, line: 34, size: 320, elements: !1446)
!1446 = !{!1447, !1448}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1445, file: !1217, line: 35, baseType: !445, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1445, file: !1217, line: 36, baseType: !1449, size: 256, offset: 64)
!1449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1047, size: 256, elements: !1221)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1283, file: !927, line: 766, baseType: !193, size: 32, offset: 4352)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1283, file: !927, line: 767, baseType: !193, size: 32, offset: 4384)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1283, file: !927, line: 768, baseType: !193, size: 32, offset: 4416)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1283, file: !927, line: 770, baseType: !193, size: 32, offset: 4448)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1283, file: !927, line: 772, baseType: !348, size: 64, offset: 4480)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1283, file: !927, line: 775, baseType: !7, size: 32, offset: 4544)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1283, file: !927, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1283, file: !927, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1283, file: !927, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1283, file: !927, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1283, file: !927, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1283, file: !927, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1283, file: !927, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1283, file: !927, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1283, file: !927, line: 831, baseType: !348, size: 64, offset: 4672)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1283, file: !927, line: 833, baseType: !1466, size: 384, offset: 4736)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1467)
!1467 = !{!1468, !1473}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1466, file: !25, line: 26, baseType: !1469, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!333, !1472}
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, scope: !1466, file: !25, line: 27, baseType: !1474, size: 320, offset: 64)
!1474 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1466, file: !25, line: 27, size: 320, elements: !1475)
!1475 = !{!1476, !1486, !1513}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1474, file: !25, line: 36, baseType: !1477, size: 320)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1474, file: !25, line: 29, size: 320, elements: !1478)
!1478 = !{!1479, !1481, !1482, !1483, !1484, !1485}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1477, file: !25, line: 30, baseType: !1480, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1477, file: !25, line: 31, baseType: !439, size: 32, offset: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1477, file: !25, line: 32, baseType: !439, size: 32, offset: 96)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1477, file: !25, line: 33, baseType: !439, size: 32, offset: 128)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1477, file: !25, line: 34, baseType: !445, size: 64, offset: 192)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1477, file: !25, line: 35, baseType: !1480, size: 64, offset: 256)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1474, file: !25, line: 46, baseType: !1487, size: 192)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1474, file: !25, line: 38, size: 192, elements: !1488)
!1488 = !{!1489, !1490, !1491, !1512}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1487, file: !25, line: 39, baseType: !1399, size: 32)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1487, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1491 = !DIDerivedType(tag: DW_TAG_member, scope: !1487, file: !25, line: 41, baseType: !1492, size: 64, offset: 64)
!1492 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1487, file: !25, line: 41, size: 64, elements: !1493)
!1493 = !{!1494, !1502}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1492, file: !25, line: 42, baseType: !1495, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1497, line: 7, size: 128, elements: !1498)
!1497 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1498 = !{!1499, !1501}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1496, file: !1497, line: 8, baseType: !1500, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !331, line: 93, baseType: !555)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1496, file: !1497, line: 9, baseType: !555, size: 64, offset: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1492, file: !25, line: 43, baseType: !1503, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1505, line: 7, size: 64, elements: !1506)
!1505 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1506 = !{!1507, !1511}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1504, file: !1505, line: 8, baseType: !1508, size: 32)
!1508 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1505, line: 5, baseType: !1509)
!1509 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !440, line: 20, baseType: !1510)
!1510 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !442, line: 26, baseType: !193)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1504, file: !1505, line: 9, baseType: !1509, size: 32, offset: 32)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1487, file: !25, line: 45, baseType: !445, size: 64, offset: 128)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1474, file: !25, line: 54, baseType: !1514, size: 256)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1474, file: !25, line: 48, size: 256, elements: !1515)
!1515 = !{!1516, !1519, !1520, !1521, !1522}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1514, file: !25, line: 49, baseType: !1517, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1514, file: !25, line: 50, baseType: !193, size: 32, offset: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1514, file: !25, line: 51, baseType: !193, size: 32, offset: 96)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1514, file: !25, line: 52, baseType: !348, size: 64, offset: 128)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1514, file: !25, line: 53, baseType: !348, size: 64, offset: 192)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1283, file: !927, line: 835, baseType: !1524, size: 32, offset: 5120)
!1524 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !221, line: 22, baseType: !1525)
!1525 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !331, line: 28, baseType: !193)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1283, file: !927, line: 836, baseType: !1524, size: 32, offset: 5152)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1283, file: !927, line: 840, baseType: !348, size: 64, offset: 5184)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1283, file: !927, line: 849, baseType: !1282, size: 64, offset: 5248)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1283, file: !927, line: 852, baseType: !1282, size: 64, offset: 5312)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1283, file: !927, line: 857, baseType: !244, size: 128, offset: 5376)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1283, file: !927, line: 858, baseType: !244, size: 128, offset: 5504)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1283, file: !927, line: 859, baseType: !1282, size: 64, offset: 5632)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1283, file: !927, line: 867, baseType: !244, size: 128, offset: 5696)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1283, file: !927, line: 868, baseType: !244, size: 128, offset: 5824)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1283, file: !927, line: 871, baseType: !1536, size: 64, offset: 5952)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1538)
!1538 = !{!1539, !1540, !1541, !1542, !1544, !1545, !1552, !1553}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1537, file: !53, line: 61, baseType: !1295, size: 32)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1537, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1537, file: !53, line: 63, baseType: !257, offset: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1537, file: !53, line: 65, baseType: !1543, size: 256, offset: 64)
!1543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !660, size: 256, elements: !1221)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1537, file: !53, line: 66, baseType: !660, size: 64, offset: 320)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1537, file: !53, line: 68, baseType: !1546, size: 128, offset: 384)
!1546 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1547, line: 40, baseType: !1548)
!1547 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1547, line: 36, size: 128, elements: !1549)
!1549 = !{!1550, !1551}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1548, file: !1547, line: 37, baseType: !257)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1548, file: !1547, line: 38, baseType: !244, size: 128)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1537, file: !53, line: 69, baseType: !389, size: 128, align: 64, offset: 512)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1537, file: !53, line: 70, baseType: !1554, size: 128, offset: 640)
!1554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1555, size: 128, elements: !1436)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1556)
!1556 = !{!1557, !1558}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1555, file: !53, line: 55, baseType: !193, size: 32)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1555, file: !53, line: 56, baseType: !1559, size: 64, offset: 64)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1283, file: !927, line: 872, baseType: !1562, size: 512, offset: 6016)
!1562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !664, size: 512, elements: !1221)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1283, file: !927, line: 873, baseType: !244, size: 128, offset: 6528)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1283, file: !927, line: 874, baseType: !244, size: 128, offset: 6656)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1283, file: !927, line: 876, baseType: !1566, size: 64, offset: 6784)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1568, line: 26, size: 192, elements: !1569)
!1568 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1569 = !{!1570, !1571}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1567, file: !1568, line: 27, baseType: !7, size: 32)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1567, file: !1568, line: 28, baseType: !1572, size: 128, offset: 64)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1573, line: 43, size: 128, elements: !1574)
!1573 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1574 = !{!1575, !1576}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1572, file: !1573, line: 44, baseType: !806)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1572, file: !1573, line: 45, baseType: !244, size: 128)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1283, file: !927, line: 879, baseType: !730, size: 64, offset: 6848)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1283, file: !927, line: 882, baseType: !730, size: 64, offset: 6912)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1283, file: !927, line: 884, baseType: !445, size: 64, offset: 6976)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1283, file: !927, line: 885, baseType: !445, size: 64, offset: 7040)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1283, file: !927, line: 890, baseType: !445, size: 64, offset: 7104)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1283, file: !927, line: 891, baseType: !1583, size: 128, offset: 7168)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !927, line: 242, size: 128, elements: !1584)
!1584 = !{!1585, !1586, !1587}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1583, file: !927, line: 244, baseType: !445, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1583, file: !927, line: 245, baseType: !445, size: 64, offset: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1583, file: !927, line: 246, baseType: !806, offset: 128)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1283, file: !927, line: 900, baseType: !348, size: 64, offset: 7296)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1283, file: !927, line: 901, baseType: !348, size: 64, offset: 7360)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1283, file: !927, line: 904, baseType: !445, size: 64, offset: 7424)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1283, file: !927, line: 907, baseType: !445, size: 64, offset: 7488)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1283, file: !927, line: 910, baseType: !348, size: 64, offset: 7552)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1283, file: !927, line: 911, baseType: !348, size: 64, offset: 7616)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1283, file: !927, line: 914, baseType: !1595, size: 640, offset: 7680)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1596, line: 123, size: 640, elements: !1597)
!1596 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1597 = !{!1598, !1604, !1605}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1595, file: !1596, line: 124, baseType: !1599, size: 576)
!1599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1600, size: 576, elements: !299)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1596, line: 108, size: 192, elements: !1601)
!1601 = !{!1602, !1603}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1600, file: !1596, line: 109, baseType: !445, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1600, file: !1596, line: 110, baseType: !1408, size: 128, offset: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1595, file: !1596, line: 125, baseType: !7, size: 32, offset: 576)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1595, file: !1596, line: 126, baseType: !7, size: 32, offset: 608)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1283, file: !927, line: 917, baseType: !1607, size: 192, offset: 8320)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1596, line: 134, size: 192, elements: !1608)
!1608 = !{!1609, !1610}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1607, file: !1596, line: 135, baseType: !389, size: 128, align: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1607, file: !1596, line: 136, baseType: !7, size: 32, offset: 128)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1283, file: !927, line: 923, baseType: !1612, size: 64, offset: 8512)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1614)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1615, line: 111, size: 1280, elements: !1616)
!1615 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1616 = !{!1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1636, !1637, !1638, !1639, !1640, !1641, !1748, !1749, !1750, !1751, !1777, !1780, !1790}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1614, file: !1615, line: 112, baseType: !773, size: 32)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1614, file: !1615, line: 120, baseType: !459, size: 32, offset: 32)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1614, file: !1615, line: 121, baseType: !467, size: 32, offset: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1614, file: !1615, line: 122, baseType: !459, size: 32, offset: 96)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1614, file: !1615, line: 123, baseType: !467, size: 32, offset: 128)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1614, file: !1615, line: 124, baseType: !459, size: 32, offset: 160)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1614, file: !1615, line: 125, baseType: !467, size: 32, offset: 192)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1614, file: !1615, line: 126, baseType: !459, size: 32, offset: 224)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1614, file: !1615, line: 127, baseType: !467, size: 32, offset: 256)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1614, file: !1615, line: 128, baseType: !7, size: 32, offset: 288)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1614, file: !1615, line: 129, baseType: !1628, size: 64, offset: 320)
!1628 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1629, line: 26, baseType: !1630)
!1629 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1629, line: 24, size: 64, elements: !1631)
!1631 = !{!1632}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1630, file: !1629, line: 25, baseType: !1633, size: 64)
!1633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 64, elements: !1634)
!1634 = !{!1635}
!1635 = !DISubrange(count: 2)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1614, file: !1615, line: 130, baseType: !1628, size: 64, offset: 384)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1614, file: !1615, line: 131, baseType: !1628, size: 64, offset: 448)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1614, file: !1615, line: 132, baseType: !1628, size: 64, offset: 512)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1614, file: !1615, line: 133, baseType: !1628, size: 64, offset: 576)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1614, file: !1615, line: 135, baseType: !451, size: 8, offset: 640)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1614, file: !1615, line: 137, baseType: !1642, size: 64, offset: 704)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1644, line: 189, size: 1664, elements: !1645)
!1644 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1645 = !{!1646, !1647, !1650, !1655, !1656, !1659, !1660, !1665, !1666, !1667, !1668, !1670, !1671, !1672, !1673, !1674, !1712, !1733}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1643, file: !1644, line: 190, baseType: !1295, size: 32)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1643, file: !1644, line: 191, baseType: !1648, size: 32, offset: 32)
!1648 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1644, line: 28, baseType: !1649)
!1649 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !221, line: 98, baseType: !1509)
!1650 = !DIDerivedType(tag: DW_TAG_member, scope: !1643, file: !1644, line: 192, baseType: !1651, size: 192, offset: 64)
!1651 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1643, file: !1644, line: 192, size: 192, elements: !1652)
!1652 = !{!1653, !1654}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1651, file: !1644, line: 193, baseType: !244, size: 128)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1651, file: !1644, line: 194, baseType: !786, size: 192, align: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1643, file: !1644, line: 199, baseType: !793, size: 256, offset: 256)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1643, file: !1644, line: 200, baseType: !1657, size: 64, offset: 512)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1644, line: 200, flags: DIFlagFwdDecl)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1643, file: !1644, line: 201, baseType: !187, size: 64, offset: 576)
!1660 = !DIDerivedType(tag: DW_TAG_member, scope: !1643, file: !1644, line: 202, baseType: !1661, size: 64, offset: 640)
!1661 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1643, file: !1644, line: 202, size: 64, elements: !1662)
!1662 = !{!1663, !1664}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1661, file: !1644, line: 203, baseType: !561, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1661, file: !1644, line: 204, baseType: !561, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1643, file: !1644, line: 206, baseType: !561, size: 64, offset: 704)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1643, file: !1644, line: 207, baseType: !459, size: 32, offset: 768)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1643, file: !1644, line: 208, baseType: !467, size: 32, offset: 800)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1643, file: !1644, line: 209, baseType: !1669, size: 32, offset: 832)
!1669 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1644, line: 31, baseType: !581)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1643, file: !1644, line: 210, baseType: !340, size: 16, offset: 864)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1643, file: !1644, line: 211, baseType: !340, size: 16, offset: 880)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1643, file: !1644, line: 215, baseType: !1271, size: 16, offset: 896)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1643, file: !1644, line: 222, baseType: !348, size: 64, offset: 960)
!1674 = !DIDerivedType(tag: DW_TAG_member, scope: !1643, file: !1644, line: 239, baseType: !1675, size: 320, offset: 1024)
!1675 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1643, file: !1644, line: 239, size: 320, elements: !1676)
!1676 = !{!1677, !1704}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1675, file: !1644, line: 240, baseType: !1678, size: 320)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1644, line: 108, size: 320, elements: !1679)
!1679 = !{!1680, !1681, !1693, !1696, !1703}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1678, file: !1644, line: 110, baseType: !348, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, scope: !1678, file: !1644, line: 111, baseType: !1682, size: 64, offset: 64)
!1682 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1678, file: !1644, line: 111, size: 64, elements: !1683)
!1683 = !{!1684, !1692}
!1684 = !DIDerivedType(tag: DW_TAG_member, scope: !1682, file: !1644, line: 112, baseType: !1685, size: 64)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1682, file: !1644, line: 112, size: 64, elements: !1686)
!1686 = !{!1687, !1688}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1685, file: !1644, line: 114, baseType: !885, size: 16)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1685, file: !1644, line: 115, baseType: !1689, size: 48, offset: 16)
!1689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 48, elements: !1690)
!1690 = !{!1691}
!1691 = !DISubrange(count: 6)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1682, file: !1644, line: 121, baseType: !348, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1678, file: !1644, line: 123, baseType: !1694, size: 64, offset: 128)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1644, line: 96, flags: DIFlagFwdDecl)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1678, file: !1644, line: 124, baseType: !1697, size: 64, offset: 192)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1644, line: 102, size: 192, elements: !1699)
!1699 = !{!1700, !1701, !1702}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1698, file: !1644, line: 103, baseType: !389, size: 128, align: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1698, file: !1644, line: 104, baseType: !1295, size: 32, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1698, file: !1644, line: 105, baseType: !220, size: 8, offset: 160)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1678, file: !1644, line: 125, baseType: !240, size: 64, offset: 256)
!1704 = !DIDerivedType(tag: DW_TAG_member, scope: !1675, file: !1644, line: 241, baseType: !1705, size: 320)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1675, file: !1644, line: 241, size: 320, elements: !1706)
!1706 = !{!1707, !1708, !1709, !1710, !1711}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1705, file: !1644, line: 242, baseType: !348, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1705, file: !1644, line: 243, baseType: !348, size: 64, offset: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1705, file: !1644, line: 244, baseType: !1694, size: 64, offset: 128)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1705, file: !1644, line: 245, baseType: !1697, size: 64, offset: 192)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1705, file: !1644, line: 246, baseType: !298, size: 64, offset: 256)
!1712 = !DIDerivedType(tag: DW_TAG_member, scope: !1643, file: !1644, line: 254, baseType: !1713, size: 256, offset: 1344)
!1713 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1643, file: !1644, line: 254, size: 256, elements: !1714)
!1714 = !{!1715, !1721}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1713, file: !1644, line: 255, baseType: !1716, size: 256)
!1716 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1644, line: 128, size: 256, elements: !1717)
!1717 = !{!1718, !1719}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1716, file: !1644, line: 129, baseType: !187, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1716, file: !1644, line: 130, baseType: !1720, size: 256)
!1720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 256, elements: !1221)
!1721 = !DIDerivedType(tag: DW_TAG_member, scope: !1713, file: !1644, line: 256, baseType: !1722, size: 256)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1713, file: !1644, line: 256, size: 256, elements: !1723)
!1723 = !{!1724, !1725}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1722, file: !1644, line: 258, baseType: !244, size: 128)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1722, file: !1644, line: 259, baseType: !1726, size: 128, offset: 128)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1727, line: 22, size: 128, elements: !1728)
!1727 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1728 = !{!1729, !1732}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1726, file: !1727, line: 23, baseType: !1730, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1727, line: 23, flags: DIFlagFwdDecl)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1726, file: !1727, line: 24, baseType: !348, size: 64, offset: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1643, file: !1644, line: 274, baseType: !1734, size: 64, offset: 1600)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1644, line: 170, size: 192, elements: !1736)
!1736 = !{!1737, !1746, !1747}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1735, file: !1644, line: 171, baseType: !1738, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1644, line: 165, baseType: !1739)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!193, !1642, !1742, !1744, !1642}
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1695)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1716)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1735, file: !1644, line: 172, baseType: !1642, size: 64, offset: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1735, file: !1644, line: 173, baseType: !1694, size: 64, offset: 128)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1614, file: !1615, line: 138, baseType: !1642, size: 64, offset: 768)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1614, file: !1615, line: 139, baseType: !1642, size: 64, offset: 832)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1614, file: !1615, line: 140, baseType: !1642, size: 64, offset: 896)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1614, file: !1615, line: 145, baseType: !1752, size: 64, offset: 960)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1754, line: 13, size: 896, elements: !1755)
!1754 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1755 = !{!1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1753, file: !1754, line: 14, baseType: !1295, size: 32)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1753, file: !1754, line: 15, baseType: !773, size: 32, offset: 32)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1753, file: !1754, line: 16, baseType: !773, size: 32, offset: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1753, file: !1754, line: 21, baseType: !797, size: 64, offset: 128)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1753, file: !1754, line: 27, baseType: !348, size: 64, offset: 192)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1753, file: !1754, line: 28, baseType: !348, size: 64, offset: 256)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1753, file: !1754, line: 29, baseType: !797, size: 64, offset: 320)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1753, file: !1754, line: 32, baseType: !664, size: 128, offset: 384)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1753, file: !1754, line: 33, baseType: !459, size: 32, offset: 512)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1753, file: !1754, line: 37, baseType: !797, size: 64, offset: 576)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1753, file: !1754, line: 44, baseType: !1767, size: 256, offset: 640)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1768, line: 15, size: 256, elements: !1769)
!1768 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1769 = !{!1770, !1771, !1772, !1773, !1774, !1775, !1776}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1767, file: !1768, line: 16, baseType: !806)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1767, file: !1768, line: 18, baseType: !193, size: 32)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1767, file: !1768, line: 19, baseType: !193, size: 32, offset: 32)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1767, file: !1768, line: 20, baseType: !193, size: 32, offset: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1767, file: !1768, line: 21, baseType: !193, size: 32, offset: 96)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1767, file: !1768, line: 22, baseType: !348, size: 64, offset: 128)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1767, file: !1768, line: 23, baseType: !348, size: 64, offset: 192)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1614, file: !1615, line: 146, baseType: !1778, size: 64, offset: 1024)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !460, line: 18, flags: DIFlagFwdDecl)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1614, file: !1615, line: 147, baseType: !1781, size: 64, offset: 1088)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1615, line: 25, size: 64, elements: !1783)
!1783 = !{!1784, !1785, !1786}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1782, file: !1615, line: 26, baseType: !773, size: 32)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1782, file: !1615, line: 27, baseType: !193, size: 32, offset: 32)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1782, file: !1615, line: 28, baseType: !1787, offset: 64)
!1787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !467, elements: !1788)
!1788 = !{!1789}
!1789 = !DISubrange(count: 0)
!1790 = !DIDerivedType(tag: DW_TAG_member, scope: !1614, file: !1615, line: 149, baseType: !1791, size: 128, offset: 1152)
!1791 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1614, file: !1615, line: 149, size: 128, elements: !1792)
!1792 = !{!1793, !1794}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1791, file: !1615, line: 150, baseType: !193, size: 32)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1791, file: !1615, line: 151, baseType: !389, size: 128, align: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1283, file: !927, line: 926, baseType: !1612, size: 64, offset: 8576)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1283, file: !927, line: 929, baseType: !1612, size: 64, offset: 8640)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1283, file: !927, line: 933, baseType: !1642, size: 64, offset: 8704)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1283, file: !927, line: 943, baseType: !1799, size: 128, offset: 8768)
!1799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 128, elements: !1800)
!1800 = !{!1801}
!1801 = !DISubrange(count: 16)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1283, file: !927, line: 945, baseType: !1803, size: 64, offset: 8896)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !927, line: 49, flags: DIFlagFwdDecl)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1283, file: !927, line: 956, baseType: !1806, size: 64, offset: 8960)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !927, line: 45, flags: DIFlagFwdDecl)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1283, file: !927, line: 959, baseType: !1809, size: 64, offset: 9024)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !927, line: 959, flags: DIFlagFwdDecl)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1283, file: !927, line: 962, baseType: !1812, size: 64, offset: 9088)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !927, line: 66, flags: DIFlagFwdDecl)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1283, file: !927, line: 966, baseType: !1815, size: 64, offset: 9152)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !927, line: 50, flags: DIFlagFwdDecl)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1283, file: !927, line: 969, baseType: !1818, size: 64, offset: 9216)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1820, line: 82, size: 7296, elements: !1821)
!1820 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1821 = !{!1822, !1823, !1824, !1825, !1826, !1827, !1828, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1857, !1866, !1867, !1869, !1870, !1871, !1874, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1904, !1905, !1912, !1913, !1914, !1915, !1916, !1917}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1819, file: !1820, line: 83, baseType: !1295, size: 32)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1819, file: !1820, line: 84, baseType: !773, size: 32, offset: 32)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1819, file: !1820, line: 85, baseType: !193, size: 32, offset: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1819, file: !1820, line: 86, baseType: !244, size: 128, offset: 128)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1819, file: !1820, line: 88, baseType: !1546, size: 128, offset: 256)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1819, file: !1820, line: 91, baseType: !1282, size: 64, offset: 384)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1819, file: !1820, line: 94, baseType: !1829, size: 192, offset: 448)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1830, line: 30, size: 192, elements: !1831)
!1830 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1831 = !{!1832, !1833}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1829, file: !1830, line: 31, baseType: !244, size: 128)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1829, file: !1830, line: 32, baseType: !1834, size: 64, offset: 128)
!1834 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1835, line: 25, baseType: !1836)
!1835 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1835, line: 23, size: 64, elements: !1837)
!1837 = !{!1838}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1836, file: !1835, line: 24, baseType: !1435, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1819, file: !1820, line: 97, baseType: !660, size: 64, offset: 640)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1819, file: !1820, line: 100, baseType: !193, size: 32, offset: 704)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1819, file: !1820, line: 106, baseType: !193, size: 32, offset: 736)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1819, file: !1820, line: 107, baseType: !1282, size: 64, offset: 768)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1819, file: !1820, line: 110, baseType: !193, size: 32, offset: 832)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1819, file: !1820, line: 111, baseType: !7, size: 32, offset: 864)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1819, file: !1820, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1819, file: !1820, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1819, file: !1820, line: 128, baseType: !193, size: 32, offset: 928)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1819, file: !1820, line: 129, baseType: !244, size: 128, offset: 960)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1819, file: !1820, line: 132, baseType: !1357, size: 512, offset: 1088)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1819, file: !1820, line: 133, baseType: !1365, size: 64, offset: 1600)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1819, file: !1820, line: 140, baseType: !1852, size: 256, offset: 1664)
!1852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1853, size: 256, elements: !1634)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1820, line: 38, size: 128, elements: !1854)
!1854 = !{!1855, !1856}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1853, file: !1820, line: 39, baseType: !445, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1853, file: !1820, line: 40, baseType: !445, size: 64, offset: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1819, file: !1820, line: 146, baseType: !1858, size: 192, offset: 1920)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1820, line: 66, size: 192, elements: !1859)
!1859 = !{!1860}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1858, file: !1820, line: 67, baseType: !1861, size: 192)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1820, line: 47, size: 192, elements: !1862)
!1862 = !{!1863, !1864, !1865}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1861, file: !1820, line: 48, baseType: !799, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1861, file: !1820, line: 49, baseType: !799, size: 64, offset: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1861, file: !1820, line: 50, baseType: !799, size: 64, offset: 128)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1819, file: !1820, line: 150, baseType: !1595, size: 640, offset: 2112)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1819, file: !1820, line: 153, baseType: !1868, size: 256, offset: 2752)
!1868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1536, size: 256, elements: !1221)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1819, file: !1820, line: 159, baseType: !1536, size: 64, offset: 3008)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1819, file: !1820, line: 162, baseType: !193, size: 32, offset: 3072)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1819, file: !1820, line: 164, baseType: !1872, size: 64, offset: 3136)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1820, line: 164, flags: DIFlagFwdDecl)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1819, file: !1820, line: 175, baseType: !1875, size: 32, offset: 3200)
!1875 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !412, line: 805, baseType: !1876)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !412, line: 798, size: 32, elements: !1877)
!1877 = !{!1878, !1879}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1876, file: !412, line: 803, baseType: !411, size: 32)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1876, file: !412, line: 804, baseType: !257, offset: 32)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1819, file: !1820, line: 176, baseType: !445, size: 64, offset: 3264)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1819, file: !1820, line: 176, baseType: !445, size: 64, offset: 3328)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1819, file: !1820, line: 176, baseType: !445, size: 64, offset: 3392)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1819, file: !1820, line: 176, baseType: !445, size: 64, offset: 3456)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1819, file: !1820, line: 177, baseType: !445, size: 64, offset: 3520)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1819, file: !1820, line: 178, baseType: !445, size: 64, offset: 3584)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1819, file: !1820, line: 179, baseType: !1583, size: 128, offset: 3648)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1819, file: !1820, line: 180, baseType: !348, size: 64, offset: 3776)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1819, file: !1820, line: 180, baseType: !348, size: 64, offset: 3840)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1819, file: !1820, line: 180, baseType: !348, size: 64, offset: 3904)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1819, file: !1820, line: 180, baseType: !348, size: 64, offset: 3968)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1819, file: !1820, line: 181, baseType: !348, size: 64, offset: 4032)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1819, file: !1820, line: 181, baseType: !348, size: 64, offset: 4096)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1819, file: !1820, line: 181, baseType: !348, size: 64, offset: 4160)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1819, file: !1820, line: 181, baseType: !348, size: 64, offset: 4224)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1819, file: !1820, line: 182, baseType: !348, size: 64, offset: 4288)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1819, file: !1820, line: 182, baseType: !348, size: 64, offset: 4352)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1819, file: !1820, line: 182, baseType: !348, size: 64, offset: 4416)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1819, file: !1820, line: 182, baseType: !348, size: 64, offset: 4480)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1819, file: !1820, line: 183, baseType: !348, size: 64, offset: 4544)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1819, file: !1820, line: 183, baseType: !348, size: 64, offset: 4608)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1819, file: !1820, line: 184, baseType: !1902, offset: 4672)
!1902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1903, line: 12, elements: !271)
!1903 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1819, file: !1820, line: 192, baseType: !447, size: 64, offset: 4672)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1819, file: !1820, line: 203, baseType: !1906, size: 2048, offset: 4736)
!1906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1907, size: 2048, elements: !1800)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1908, line: 43, size: 128, elements: !1909)
!1908 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1909 = !{!1910, !1911}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1907, file: !1908, line: 44, baseType: !347, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1907, file: !1908, line: 45, baseType: !347, size: 64, offset: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1819, file: !1820, line: 220, baseType: !220, size: 8, offset: 6784)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1819, file: !1820, line: 221, baseType: !1271, size: 16, offset: 6800)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1819, file: !1820, line: 222, baseType: !1271, size: 16, offset: 6816)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1819, file: !1820, line: 224, baseType: !1040, size: 64, offset: 6848)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1819, file: !1820, line: 227, baseType: !1239, size: 192, offset: 6912)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1819, file: !1820, line: 233, baseType: !1239, size: 192, offset: 7104)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1283, file: !927, line: 970, baseType: !1919, size: 64, offset: 9280)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1820, line: 20, size: 16576, elements: !1921)
!1921 = !{!1922, !1923, !1924, !1925}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1920, file: !1820, line: 21, baseType: !257)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1920, file: !1820, line: 22, baseType: !1295, size: 32)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1920, file: !1820, line: 23, baseType: !1546, size: 128, offset: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1920, file: !1820, line: 24, baseType: !1926, size: 16384, offset: 192)
!1926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1927, size: 16384, elements: !303)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1830, line: 49, size: 256, elements: !1928)
!1928 = !{!1929}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1927, file: !1830, line: 50, baseType: !1930, size: 256)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1830, line: 35, size: 256, elements: !1931)
!1931 = !{!1932, !1939, !1940, !1946}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1930, file: !1830, line: 37, baseType: !1933, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1934, line: 19, baseType: !1935)
!1934 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1934, line: 18, baseType: !1937)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{null, !193}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1930, file: !1830, line: 38, baseType: !348, size: 64, offset: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1930, file: !1830, line: 44, baseType: !1941, size: 64, offset: 128)
!1941 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1934, line: 22, baseType: !1942)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1934, line: 21, baseType: !1944)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{null}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1930, file: !1830, line: 46, baseType: !1834, size: 64, offset: 192)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1283, file: !927, line: 971, baseType: !1834, size: 64, offset: 9344)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1283, file: !927, line: 972, baseType: !1834, size: 64, offset: 9408)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1283, file: !927, line: 974, baseType: !1834, size: 64, offset: 9472)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1283, file: !927, line: 975, baseType: !1829, size: 192, offset: 9536)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1283, file: !927, line: 976, baseType: !348, size: 64, offset: 9728)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1283, file: !927, line: 977, baseType: !345, size: 64, offset: 9792)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1283, file: !927, line: 978, baseType: !7, size: 32, offset: 9856)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1283, file: !927, line: 980, baseType: !392, size: 64, offset: 9920)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1283, file: !927, line: 989, baseType: !1956, size: 128, offset: 9984)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1957, line: 35, size: 128, elements: !1958)
!1957 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1958 = !{!1959, !1960, !1961}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1956, file: !1957, line: 36, baseType: !193, size: 32)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1956, file: !1957, line: 37, baseType: !773, size: 32, offset: 32)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1956, file: !1957, line: 38, baseType: !1962, size: 64, offset: 64)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1957, line: 23, flags: DIFlagFwdDecl)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1283, file: !927, line: 992, baseType: !445, size: 64, offset: 10112)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1283, file: !927, line: 993, baseType: !445, size: 64, offset: 10176)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1283, file: !927, line: 996, baseType: !257, offset: 10240)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1283, file: !927, line: 999, baseType: !806, offset: 10240)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1283, file: !927, line: 1001, baseType: !1969, size: 64, offset: 10240)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !927, line: 636, size: 64, elements: !1970)
!1970 = !{!1971}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1969, file: !927, line: 637, baseType: !1972, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1283, file: !927, line: 1005, baseType: !778, size: 128, offset: 10304)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1283, file: !927, line: 1007, baseType: !1282, size: 64, offset: 10432)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1283, file: !927, line: 1009, baseType: !1976, size: 64, offset: 10496)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !927, line: 1009, flags: DIFlagFwdDecl)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1283, file: !927, line: 1043, baseType: !187, size: 64, offset: 10560)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1283, file: !927, line: 1046, baseType: !1980, size: 64, offset: 10624)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !927, line: 41, flags: DIFlagFwdDecl)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1283, file: !927, line: 1050, baseType: !1983, size: 64, offset: 10688)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !927, line: 42, flags: DIFlagFwdDecl)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1283, file: !927, line: 1054, baseType: !1986, size: 64, offset: 10752)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !927, line: 55, flags: DIFlagFwdDecl)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1283, file: !927, line: 1056, baseType: !1989, size: 64, offset: 10816)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !927, line: 40, flags: DIFlagFwdDecl)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1283, file: !927, line: 1058, baseType: !1992, size: 64, offset: 10880)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1994, line: 99, size: 704, elements: !1995)
!1994 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1995 = !{!1996, !1997, !1998, !1999, !2000, !2001, !2002, !2021, !2022}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1993, file: !1994, line: 100, baseType: !797, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1993, file: !1994, line: 101, baseType: !773, size: 32, offset: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1993, file: !1994, line: 102, baseType: !773, size: 32, offset: 96)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1993, file: !1994, line: 105, baseType: !257, offset: 128)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1993, file: !1994, line: 107, baseType: !340, size: 16, offset: 128)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1993, file: !1994, line: 109, baseType: !764, size: 128, offset: 192)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1993, file: !1994, line: 110, baseType: !2003, size: 64, offset: 320)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1994, line: 73, size: 448, elements: !2005)
!2005 = !{!2006, !2009, !2010, !2015, !2020}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2004, file: !1994, line: 74, baseType: !2007, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1994, line: 74, flags: DIFlagFwdDecl)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2004, file: !1994, line: 75, baseType: !1992, size: 64, offset: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, scope: !2004, file: !1994, line: 83, baseType: !2011, size: 128, offset: 128)
!2011 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2004, file: !1994, line: 83, size: 128, elements: !2012)
!2012 = !{!2013, !2014}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2011, file: !1994, line: 84, baseType: !244, size: 128)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2011, file: !1994, line: 85, baseType: !1001, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, scope: !2004, file: !1994, line: 87, baseType: !2016, size: 128, offset: 256)
!2016 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2004, file: !1994, line: 87, size: 128, elements: !2017)
!2017 = !{!2018, !2019}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2016, file: !1994, line: 88, baseType: !664, size: 128)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2016, file: !1994, line: 89, baseType: !389, size: 128, align: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2004, file: !1994, line: 92, baseType: !7, size: 32, offset: 384)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1993, file: !1994, line: 111, baseType: !660, size: 64, offset: 384)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1993, file: !1994, line: 113, baseType: !2023, size: 256, offset: 448)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2024, line: 102, size: 256, elements: !2025)
!2024 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2025 = !{!2026, !2027, !2028}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2023, file: !2024, line: 103, baseType: !797, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2023, file: !2024, line: 104, baseType: !244, size: 128, offset: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2023, file: !2024, line: 105, baseType: !2029, size: 64, offset: 192)
!2029 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2024, line: 21, baseType: !2030)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{null, !2033}
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1283, file: !927, line: 1061, baseType: !2035, size: 64, offset: 10944)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !927, line: 43, flags: DIFlagFwdDecl)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1283, file: !927, line: 1064, baseType: !348, size: 64, offset: 11008)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1283, file: !927, line: 1065, baseType: !2039, size: 64, offset: 11072)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1830, line: 14, baseType: !2041)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1830, line: 12, size: 384, elements: !2042)
!2042 = !{!2043}
!2043 = !DIDerivedType(tag: DW_TAG_member, scope: !2041, file: !1830, line: 13, baseType: !2044, size: 384)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2041, file: !1830, line: 13, size: 384, elements: !2045)
!2045 = !{!2046, !2047, !2048, !2049}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2044, file: !1830, line: 13, baseType: !193, size: 32)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2044, file: !1830, line: 13, baseType: !193, size: 32, offset: 32)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2044, file: !1830, line: 13, baseType: !193, size: 32, offset: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2044, file: !1830, line: 13, baseType: !2050, size: 256, offset: 128)
!2050 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2051, line: 32, size: 256, elements: !2052)
!2051 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2052 = !{!2053, !2058, !2071, !2077, !2086, !2106, !2111}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2050, file: !2051, line: 37, baseType: !2054, size: 64)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2050, file: !2051, line: 34, size: 64, elements: !2055)
!2055 = !{!2056, !2057}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2054, file: !2051, line: 35, baseType: !1525, size: 32)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2054, file: !2051, line: 36, baseType: !465, size: 32, offset: 32)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2050, file: !2051, line: 45, baseType: !2059, size: 192)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2050, file: !2051, line: 40, size: 192, elements: !2060)
!2060 = !{!2061, !2063, !2064, !2070}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2059, file: !2051, line: 41, baseType: !2062, size: 32)
!2062 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !331, line: 95, baseType: !193)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2059, file: !2051, line: 42, baseType: !193, size: 32, offset: 32)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2059, file: !2051, line: 43, baseType: !2065, size: 64, offset: 64)
!2065 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2051, line: 11, baseType: !2066)
!2066 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2051, line: 8, size: 64, elements: !2067)
!2067 = !{!2068, !2069}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2066, file: !2051, line: 9, baseType: !193, size: 32)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2066, file: !2051, line: 10, baseType: !187, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2059, file: !2051, line: 44, baseType: !193, size: 32, offset: 128)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2050, file: !2051, line: 52, baseType: !2072, size: 128)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2050, file: !2051, line: 48, size: 128, elements: !2073)
!2073 = !{!2074, !2075, !2076}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2072, file: !2051, line: 49, baseType: !1525, size: 32)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2072, file: !2051, line: 50, baseType: !465, size: 32, offset: 32)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2072, file: !2051, line: 51, baseType: !2065, size: 64, offset: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2050, file: !2051, line: 61, baseType: !2078, size: 256)
!2078 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2050, file: !2051, line: 55, size: 256, elements: !2079)
!2079 = !{!2080, !2081, !2082, !2083, !2085}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2078, file: !2051, line: 56, baseType: !1525, size: 32)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2078, file: !2051, line: 57, baseType: !465, size: 32, offset: 32)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2078, file: !2051, line: 58, baseType: !193, size: 32, offset: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2078, file: !2051, line: 59, baseType: !2084, size: 64, offset: 128)
!2084 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !331, line: 94, baseType: !332)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2078, file: !2051, line: 60, baseType: !2084, size: 64, offset: 192)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2050, file: !2051, line: 95, baseType: !2087, size: 256)
!2087 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2050, file: !2051, line: 64, size: 256, elements: !2088)
!2088 = !{!2089, !2090}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2087, file: !2051, line: 65, baseType: !187, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, scope: !2087, file: !2051, line: 77, baseType: !2091, size: 192, offset: 64)
!2091 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2087, file: !2051, line: 77, size: 192, elements: !2092)
!2092 = !{!2093, !2094, !2101}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2091, file: !2051, line: 82, baseType: !1271, size: 16)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2091, file: !2051, line: 88, baseType: !2095, size: 192)
!2095 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2091, file: !2051, line: 84, size: 192, elements: !2096)
!2096 = !{!2097, !2099, !2100}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2095, file: !2051, line: 85, baseType: !2098, size: 64)
!2098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 64, elements: !1395)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2095, file: !2051, line: 86, baseType: !187, size: 64, offset: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2095, file: !2051, line: 87, baseType: !187, size: 64, offset: 128)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2091, file: !2051, line: 93, baseType: !2102, size: 96)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2091, file: !2051, line: 90, size: 96, elements: !2103)
!2103 = !{!2104, !2105}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2102, file: !2051, line: 91, baseType: !2098, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2102, file: !2051, line: 92, baseType: !441, size: 32, offset: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2050, file: !2051, line: 101, baseType: !2107, size: 128)
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2050, file: !2051, line: 98, size: 128, elements: !2108)
!2108 = !{!2109, !2110}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2107, file: !2051, line: 99, baseType: !333, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2107, file: !2051, line: 100, baseType: !193, size: 32, offset: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2050, file: !2051, line: 108, baseType: !2112, size: 128)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2050, file: !2051, line: 104, size: 128, elements: !2113)
!2113 = !{!2114, !2115, !2116}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2112, file: !2051, line: 105, baseType: !187, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2112, file: !2051, line: 106, baseType: !193, size: 32, offset: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2112, file: !2051, line: 107, baseType: !7, size: 32, offset: 96)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1283, file: !927, line: 1067, baseType: !1902, offset: 11136)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1283, file: !927, line: 1099, baseType: !2119, size: 64, offset: 11136)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !927, line: 56, flags: DIFlagFwdDecl)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1283, file: !927, line: 1103, baseType: !244, size: 128, offset: 11200)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1283, file: !927, line: 1104, baseType: !2123, size: 64, offset: 11328)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !927, line: 46, flags: DIFlagFwdDecl)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1283, file: !927, line: 1105, baseType: !1239, size: 192, offset: 11392)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1283, file: !927, line: 1106, baseType: !7, size: 32, offset: 11584)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1283, file: !927, line: 1109, baseType: !2128, size: 128, offset: 11648)
!2128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2129, size: 128, elements: !1634)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !927, line: 51, flags: DIFlagFwdDecl)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1283, file: !927, line: 1110, baseType: !1239, size: 192, offset: 11776)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1283, file: !927, line: 1111, baseType: !244, size: 128, offset: 11968)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1283, file: !927, line: 1173, baseType: !2134, size: 64, offset: 12096)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2136, line: 62, size: 256, align: 256, elements: !2137)
!2136 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2137 = !{!2138, !2139, !2140, !2145}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2135, file: !2136, line: 75, baseType: !441, size: 32)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2135, file: !2136, line: 90, baseType: !441, size: 32, offset: 32)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2135, file: !2136, line: 124, baseType: !2141, size: 64, offset: 64)
!2141 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2135, file: !2136, line: 109, size: 64, elements: !2142)
!2142 = !{!2143, !2144}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2141, file: !2136, line: 110, baseType: !446, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2141, file: !2136, line: 112, baseType: !446, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2135, file: !2136, line: 144, baseType: !441, size: 32, offset: 128)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1283, file: !927, line: 1174, baseType: !439, size: 32, offset: 12160)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1283, file: !927, line: 1179, baseType: !348, size: 64, offset: 12224)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1283, file: !927, line: 1182, baseType: !2149, size: 128, offset: 12288)
!2149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1217, line: 76, size: 128, elements: !2150)
!2150 = !{!2151, !2156, !2157}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2149, file: !1217, line: 85, baseType: !2152, size: 64)
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2153, line: 7, size: 64, elements: !2154)
!2153 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2154 = !{!2155}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2152, file: !2153, line: 12, baseType: !1432, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2149, file: !1217, line: 88, baseType: !220, size: 8, offset: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2149, file: !1217, line: 95, baseType: !220, size: 8, offset: 72)
!2158 = !DIDerivedType(tag: DW_TAG_member, scope: !1283, file: !927, line: 1184, baseType: !2159, size: 128, offset: 12416)
!2159 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1283, file: !927, line: 1184, size: 128, elements: !2160)
!2160 = !{!2161, !2162}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2159, file: !927, line: 1185, baseType: !1295, size: 32)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2159, file: !927, line: 1186, baseType: !389, size: 128, align: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1283, file: !927, line: 1190, baseType: !925, size: 64, offset: 12544)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1283, file: !927, line: 1192, baseType: !2165, size: 128, offset: 12608)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1217, line: 64, size: 128, elements: !2166)
!2166 = !{!2167, !2168, !2169}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2165, file: !1217, line: 65, baseType: !746, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2165, file: !1217, line: 67, baseType: !441, size: 32, offset: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2165, file: !1217, line: 68, baseType: !441, size: 32, offset: 96)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1283, file: !927, line: 1206, baseType: !193, size: 32, offset: 12736)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1283, file: !927, line: 1207, baseType: !193, size: 32, offset: 12768)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1283, file: !927, line: 1209, baseType: !348, size: 64, offset: 12800)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1283, file: !927, line: 1219, baseType: !445, size: 64, offset: 12864)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1283, file: !927, line: 1220, baseType: !445, size: 64, offset: 12928)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1283, file: !927, line: 1317, baseType: !193, size: 32, offset: 12992)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1283, file: !927, line: 1319, baseType: !1282, size: 64, offset: 13056)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1283, file: !927, line: 1322, baseType: !2178, size: 64, offset: 13120)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2180, line: 56, size: 512, elements: !2181)
!2180 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2181 = !{!2182, !2183, !2184, !2185, !2186, !2187, !2188, !2190}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2179, file: !2180, line: 57, baseType: !2178, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2179, file: !2180, line: 58, baseType: !187, size: 64, offset: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2179, file: !2180, line: 59, baseType: !348, size: 64, offset: 128)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2179, file: !2180, line: 60, baseType: !348, size: 64, offset: 192)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2179, file: !2180, line: 61, baseType: !846, size: 64, offset: 256)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2179, file: !2180, line: 62, baseType: !7, size: 32, offset: 320)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2179, file: !2180, line: 63, baseType: !2189, size: 64, offset: 384)
!2189 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !221, line: 153, baseType: !445)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2179, file: !2180, line: 64, baseType: !229, size: 64, offset: 448)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1283, file: !927, line: 1326, baseType: !1295, size: 32, offset: 13184)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1283, file: !927, line: 1342, baseType: !187, size: 64, offset: 13248)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1283, file: !927, line: 1343, baseType: !446, size: 64, offset: 13312)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1283, file: !927, line: 1344, baseType: !445, size: 64, offset: 13376)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1283, file: !927, line: 1345, baseType: !446, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1283, file: !927, line: 1346, baseType: !446, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1283, file: !927, line: 1347, baseType: !446, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1283, file: !927, line: 1348, baseType: !389, size: 128, align: 64, offset: 13504)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1283, file: !927, line: 1358, baseType: !2200, size: 34816, offset: 13824)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2201, line: 485, size: 34816, elements: !2202)
!2201 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2202 = !{!2203, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2232, !2233, !2234, !2235, !2236, !2237, !2240, !2241, !2242}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2200, file: !2201, line: 487, baseType: !2204, size: 192)
!2204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2205, size: 192, elements: !299)
!2205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2206, line: 16, size: 64, elements: !2207)
!2206 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2207 = !{!2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2205, file: !2206, line: 17, baseType: !885, size: 16)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2205, file: !2206, line: 18, baseType: !885, size: 16, offset: 16)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2205, file: !2206, line: 19, baseType: !885, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2205, file: !2206, line: 19, baseType: !885, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2205, file: !2206, line: 19, baseType: !885, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2205, file: !2206, line: 19, baseType: !885, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2205, file: !2206, line: 19, baseType: !885, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2205, file: !2206, line: 20, baseType: !885, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2205, file: !2206, line: 20, baseType: !885, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2205, file: !2206, line: 20, baseType: !885, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2205, file: !2206, line: 20, baseType: !885, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2205, file: !2206, line: 20, baseType: !885, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2205, file: !2206, line: 20, baseType: !885, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2200, file: !2201, line: 491, baseType: !348, size: 64, offset: 192)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2200, file: !2201, line: 495, baseType: !340, size: 16, offset: 256)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2200, file: !2201, line: 496, baseType: !340, size: 16, offset: 272)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2200, file: !2201, line: 497, baseType: !340, size: 16, offset: 288)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2200, file: !2201, line: 498, baseType: !340, size: 16, offset: 304)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2200, file: !2201, line: 502, baseType: !348, size: 64, offset: 320)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2200, file: !2201, line: 503, baseType: !348, size: 64, offset: 384)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2200, file: !2201, line: 514, baseType: !2229, size: 256, offset: 448)
!2229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2230, size: 256, elements: !1221)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2201, line: 483, flags: DIFlagFwdDecl)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2200, file: !2201, line: 516, baseType: !348, size: 64, offset: 704)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2200, file: !2201, line: 518, baseType: !348, size: 64, offset: 768)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2200, file: !2201, line: 520, baseType: !348, size: 64, offset: 832)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2200, file: !2201, line: 521, baseType: !348, size: 64, offset: 896)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2200, file: !2201, line: 522, baseType: !348, size: 64, offset: 960)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2200, file: !2201, line: 528, baseType: !2238, size: 64, offset: 1024)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2201, line: 10, flags: DIFlagFwdDecl)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2200, file: !2201, line: 535, baseType: !348, size: 64, offset: 1088)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2200, file: !2201, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2200, file: !2201, line: 540, baseType: !2243, size: 33280, offset: 1536)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2244, line: 317, size: 33280, elements: !2245)
!2244 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2245 = !{!2246, !2247, !2248}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2243, file: !2244, line: 330, baseType: !7, size: 32)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2243, file: !2244, line: 337, baseType: !348, size: 64, offset: 64)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2243, file: !2244, line: 348, baseType: !2249, size: 32768, offset: 512)
!2249 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2244, line: 304, size: 32768, elements: !2250)
!2250 = !{!2251, !2266, !2305, !2355, !2368}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2249, file: !2244, line: 305, baseType: !2252, size: 896)
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2244, line: 12, size: 896, elements: !2253)
!2253 = !{!2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2265}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2252, file: !2244, line: 13, baseType: !439, size: 32)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2252, file: !2244, line: 14, baseType: !439, size: 32, offset: 32)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2252, file: !2244, line: 15, baseType: !439, size: 32, offset: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2252, file: !2244, line: 16, baseType: !439, size: 32, offset: 96)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2252, file: !2244, line: 17, baseType: !439, size: 32, offset: 128)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2252, file: !2244, line: 18, baseType: !439, size: 32, offset: 160)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2252, file: !2244, line: 19, baseType: !439, size: 32, offset: 192)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2252, file: !2244, line: 22, baseType: !2262, size: 640, offset: 224)
!2262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 640, elements: !2263)
!2263 = !{!2264}
!2264 = !DISubrange(count: 20)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2252, file: !2244, line: 25, baseType: !439, size: 32, offset: 864)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2249, file: !2244, line: 306, baseType: !2267, size: 4096, align: 128)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2244, line: 34, size: 4096, align: 128, elements: !2268)
!2268 = !{!2269, !2270, !2271, !2272, !2273, !2288, !2289, !2290, !2294, !2296, !2300}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2267, file: !2244, line: 35, baseType: !885, size: 16)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2267, file: !2244, line: 36, baseType: !885, size: 16, offset: 16)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2267, file: !2244, line: 37, baseType: !885, size: 16, offset: 32)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2267, file: !2244, line: 38, baseType: !885, size: 16, offset: 48)
!2273 = !DIDerivedType(tag: DW_TAG_member, scope: !2267, file: !2244, line: 39, baseType: !2274, size: 128, offset: 64)
!2274 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2267, file: !2244, line: 39, size: 128, elements: !2275)
!2275 = !{!2276, !2281}
!2276 = !DIDerivedType(tag: DW_TAG_member, scope: !2274, file: !2244, line: 40, baseType: !2277, size: 128)
!2277 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2274, file: !2244, line: 40, size: 128, elements: !2278)
!2278 = !{!2279, !2280}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2277, file: !2244, line: 41, baseType: !445, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2277, file: !2244, line: 42, baseType: !445, size: 64, offset: 64)
!2281 = !DIDerivedType(tag: DW_TAG_member, scope: !2274, file: !2244, line: 44, baseType: !2282, size: 128)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2274, file: !2244, line: 44, size: 128, elements: !2283)
!2283 = !{!2284, !2285, !2286, !2287}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2282, file: !2244, line: 45, baseType: !439, size: 32)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2282, file: !2244, line: 46, baseType: !439, size: 32, offset: 32)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2282, file: !2244, line: 47, baseType: !439, size: 32, offset: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2282, file: !2244, line: 48, baseType: !439, size: 32, offset: 96)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2267, file: !2244, line: 51, baseType: !439, size: 32, offset: 192)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2267, file: !2244, line: 52, baseType: !439, size: 32, offset: 224)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2267, file: !2244, line: 55, baseType: !2291, size: 1024, offset: 256)
!2291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 1024, elements: !2292)
!2292 = !{!2293}
!2293 = !DISubrange(count: 32)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2267, file: !2244, line: 58, baseType: !2295, size: 2048, offset: 1280)
!2295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 2048, elements: !303)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2267, file: !2244, line: 60, baseType: !2297, size: 384, offset: 3328)
!2297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 384, elements: !2298)
!2298 = !{!2299}
!2299 = !DISubrange(count: 12)
!2300 = !DIDerivedType(tag: DW_TAG_member, scope: !2267, file: !2244, line: 62, baseType: !2301, size: 384, offset: 3712)
!2301 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2267, file: !2244, line: 62, size: 384, elements: !2302)
!2302 = !{!2303, !2304}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2301, file: !2244, line: 63, baseType: !2297, size: 384)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2301, file: !2244, line: 64, baseType: !2297, size: 384)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2249, file: !2244, line: 307, baseType: !2306, size: 1088)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2244, line: 79, size: 1088, elements: !2307)
!2307 = !{!2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2354}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2306, file: !2244, line: 80, baseType: !439, size: 32)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2306, file: !2244, line: 81, baseType: !439, size: 32, offset: 32)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2306, file: !2244, line: 82, baseType: !439, size: 32, offset: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2306, file: !2244, line: 83, baseType: !439, size: 32, offset: 96)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2306, file: !2244, line: 84, baseType: !439, size: 32, offset: 128)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2306, file: !2244, line: 85, baseType: !439, size: 32, offset: 160)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2306, file: !2244, line: 86, baseType: !439, size: 32, offset: 192)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2306, file: !2244, line: 88, baseType: !2262, size: 640, offset: 224)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2306, file: !2244, line: 89, baseType: !1417, size: 8, offset: 864)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2306, file: !2244, line: 90, baseType: !1417, size: 8, offset: 872)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2306, file: !2244, line: 91, baseType: !1417, size: 8, offset: 880)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2306, file: !2244, line: 92, baseType: !1417, size: 8, offset: 888)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2306, file: !2244, line: 93, baseType: !1417, size: 8, offset: 896)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2306, file: !2244, line: 94, baseType: !1417, size: 8, offset: 904)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2306, file: !2244, line: 95, baseType: !2323, size: 64, offset: 960)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2325, line: 11, size: 128, elements: !2326)
!2325 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2326 = !{!2327, !2328}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2324, file: !2325, line: 12, baseType: !333, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2324, file: !2325, line: 13, baseType: !2329, size: 64, offset: 64)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2331, line: 56, size: 1344, elements: !2332)
!2331 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2332 = !{!2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2330, file: !2331, line: 61, baseType: !348, size: 64)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2330, file: !2331, line: 62, baseType: !348, size: 64, offset: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2330, file: !2331, line: 63, baseType: !348, size: 64, offset: 128)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2330, file: !2331, line: 64, baseType: !348, size: 64, offset: 192)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2330, file: !2331, line: 65, baseType: !348, size: 64, offset: 256)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2330, file: !2331, line: 66, baseType: !348, size: 64, offset: 320)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2330, file: !2331, line: 68, baseType: !348, size: 64, offset: 384)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2330, file: !2331, line: 69, baseType: !348, size: 64, offset: 448)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2330, file: !2331, line: 70, baseType: !348, size: 64, offset: 512)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2330, file: !2331, line: 71, baseType: !348, size: 64, offset: 576)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2330, file: !2331, line: 72, baseType: !348, size: 64, offset: 640)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2330, file: !2331, line: 73, baseType: !348, size: 64, offset: 704)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2330, file: !2331, line: 74, baseType: !348, size: 64, offset: 768)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2330, file: !2331, line: 75, baseType: !348, size: 64, offset: 832)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2330, file: !2331, line: 76, baseType: !348, size: 64, offset: 896)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2330, file: !2331, line: 81, baseType: !348, size: 64, offset: 960)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2330, file: !2331, line: 83, baseType: !348, size: 64, offset: 1024)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2330, file: !2331, line: 84, baseType: !348, size: 64, offset: 1088)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2330, file: !2331, line: 85, baseType: !348, size: 64, offset: 1152)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2330, file: !2331, line: 86, baseType: !348, size: 64, offset: 1216)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2330, file: !2331, line: 87, baseType: !348, size: 64, offset: 1280)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2306, file: !2244, line: 96, baseType: !439, size: 32, offset: 1024)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2249, file: !2244, line: 308, baseType: !2356, size: 4608, align: 512)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2244, line: 289, size: 4608, align: 512, elements: !2357)
!2357 = !{!2358, !2359, !2366}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2356, file: !2244, line: 290, baseType: !2267, size: 4096, align: 128)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2356, file: !2244, line: 291, baseType: !2360, size: 512, offset: 4096)
!2360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2244, line: 268, size: 512, elements: !2361)
!2361 = !{!2362, !2363, !2364}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2360, file: !2244, line: 269, baseType: !445, size: 64)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2360, file: !2244, line: 270, baseType: !445, size: 64, offset: 64)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2360, file: !2244, line: 271, baseType: !2365, size: 384, offset: 128)
!2365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 384, elements: !1690)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2356, file: !2244, line: 292, baseType: !2367, offset: 4608)
!2367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1417, elements: !1788)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2249, file: !2244, line: 309, baseType: !2369, size: 32768)
!2369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1417, size: 32768, elements: !2370)
!2370 = !{!2371}
!2371 = !DISubrange(count: 4096)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1279, file: !748, line: 378, baseType: !2373, size: 64, offset: 64)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1275, file: !748, line: 384, baseType: !1567, size: 192, offset: 192)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1044, file: !748, line: 500, baseType: !257, offset: 6656)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1044, file: !748, line: 501, baseType: !2377, size: 64, offset: 6656)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !748, line: 387, flags: DIFlagFwdDecl)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1044, file: !748, line: 516, baseType: !1778, size: 64, offset: 6720)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1044, file: !748, line: 519, baseType: !376, size: 64, offset: 6784)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1044, file: !748, line: 521, baseType: !2382, size: 64, offset: 6848)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !748, line: 521, flags: DIFlagFwdDecl)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1044, file: !748, line: 545, baseType: !773, size: 32, offset: 6912)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1044, file: !748, line: 548, baseType: !220, size: 8, offset: 6944)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1044, file: !748, line: 550, baseType: !2387, offset: 6952)
!2387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2388, line: 142, elements: !271)
!2388 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1044, file: !748, line: 554, baseType: !2023, size: 256, offset: 6976)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1044, file: !748, line: 557, baseType: !439, size: 32, offset: 7232)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1041, file: !748, line: 565, baseType: !2392, offset: 7296)
!2392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, elements: !2393)
!2393 = !{!2394}
!2394 = !DISubrange(count: -1)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1037, file: !748, line: 151, baseType: !773, size: 32)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1030, file: !748, line: 156, baseType: !257, offset: 256)
!2397 = !DIDerivedType(tag: DW_TAG_member, scope: !752, file: !748, line: 159, baseType: !2398, size: 128)
!2398 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !752, file: !748, line: 159, size: 128, elements: !2399)
!2399 = !{!2400, !2464}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2398, file: !748, line: 161, baseType: !2401, size: 64)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2403)
!2403 = !{!2404, !2414, !2435, !2436, !2437, !2438, !2439, !2451, !2452, !2453}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2402, file: !31, line: 111, baseType: !2405, size: 384)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2406)
!2406 = !{!2407, !2409, !2410, !2411, !2412, !2413}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2405, file: !31, line: 20, baseType: !2408, size: 64)
!2408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !348)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2405, file: !31, line: 21, baseType: !2408, size: 64, offset: 64)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2405, file: !31, line: 22, baseType: !2408, size: 64, offset: 128)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2405, file: !31, line: 23, baseType: !348, size: 64, offset: 192)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2405, file: !31, line: 24, baseType: !348, size: 64, offset: 256)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2405, file: !31, line: 25, baseType: !348, size: 64, offset: 320)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2402, file: !31, line: 112, baseType: !2415, size: 64, offset: 384)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2417, line: 105, size: 128, elements: !2418)
!2417 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2418 = !{!2419, !2420}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2416, file: !2417, line: 110, baseType: !348, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2416, file: !2417, line: 118, baseType: !2421, size: 64, offset: 64)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2417, line: 95, size: 448, elements: !2423)
!2423 = !{!2424, !2425, !2430, !2431, !2432, !2433, !2434}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2422, file: !2417, line: 96, baseType: !797, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2422, file: !2417, line: 97, baseType: !2426, size: 64, offset: 64)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2417, line: 60, baseType: !2428)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{null, !2415}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2422, file: !2417, line: 98, baseType: !2426, size: 64, offset: 128)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2422, file: !2417, line: 99, baseType: !220, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2422, file: !2417, line: 100, baseType: !220, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2422, file: !2417, line: 101, baseType: !389, size: 128, align: 64, offset: 256)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2422, file: !2417, line: 102, baseType: !2415, size: 64, offset: 384)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2402, file: !31, line: 113, baseType: !2416, size: 128, offset: 448)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2402, file: !31, line: 114, baseType: !1567, size: 192, offset: 576)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2402, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2402, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2402, file: !31, line: 117, baseType: !2440, size: 64, offset: 832)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2442)
!2442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2443)
!2443 = !{!2444, !2445, !2449, !2450}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2442, file: !31, line: 73, baseType: !866, size: 64)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2442, file: !31, line: 78, baseType: !2446, size: 64, offset: 64)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{null, !2401}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2442, file: !31, line: 83, baseType: !2446, size: 64, offset: 128)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2442, file: !31, line: 89, baseType: !1093, size: 64, offset: 192)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2402, file: !31, line: 118, baseType: !187, size: 64, offset: 896)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2402, file: !31, line: 119, baseType: !193, size: 32, offset: 960)
!2453 = !DIDerivedType(tag: DW_TAG_member, scope: !2402, file: !31, line: 120, baseType: !2454, size: 128, offset: 1024)
!2454 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2402, file: !31, line: 120, size: 128, elements: !2455)
!2455 = !{!2456, !2462}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2454, file: !31, line: 121, baseType: !2457, size: 128)
!2457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2458, line: 6, size: 128, elements: !2459)
!2458 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2459 = !{!2460, !2461}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2457, file: !2458, line: 7, baseType: !445, size: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2457, file: !2458, line: 8, baseType: !445, size: 64, offset: 64)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2454, file: !31, line: 122, baseType: !2463)
!2463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2457, elements: !1788)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2398, file: !748, line: 162, baseType: !187, size: 64, offset: 64)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !752, file: !748, line: 176, baseType: !389, size: 128, align: 64)
!2466 = !DIDerivedType(tag: DW_TAG_member, scope: !747, file: !748, line: 179, baseType: !2467, size: 32, offset: 384)
!2467 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !747, file: !748, line: 179, size: 32, elements: !2468)
!2468 = !{!2469, !2470, !2471, !2472}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2467, file: !748, line: 184, baseType: !773, size: 32)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2467, file: !748, line: 192, baseType: !7, size: 32)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2467, file: !748, line: 194, baseType: !7, size: 32)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2467, file: !748, line: 195, baseType: !193, size: 32)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !747, file: !748, line: 199, baseType: !773, size: 32, offset: 416)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !682, file: !44, line: 1964, baseType: !2475, size: 64, offset: 1344)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!333, !621, !2478}
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2480, line: 12, size: 256, elements: !2481)
!2480 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2481 = !{!2482, !2483, !2484, !2485, !2486}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2479, file: !2480, line: 13, baseType: !769, size: 32)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2479, file: !2480, line: 16, baseType: !193, size: 32, offset: 32)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2479, file: !2480, line: 23, baseType: !348, size: 64, offset: 64)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2479, file: !2480, line: 30, baseType: !348, size: 64, offset: 128)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2479, file: !2480, line: 33, baseType: !2487, size: 64, offset: 192)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !748, line: 27, flags: DIFlagFwdDecl)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !682, file: !44, line: 1966, baseType: !2475, size: 64, offset: 1408)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !622, file: !44, line: 1424, baseType: !2491, size: 64, offset: 448)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2493)
!2493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2494)
!2494 = !{!2495, !2541, !2545, !2549, !2550, !2551, !2552, !2553, !2558, !2563, !2567}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2493, file: !38, line: 323, baseType: !2496, size: 64)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!193, !2499}
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2501)
!2501 = !{!2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2526, !2527, !2528}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2500, file: !38, line: 295, baseType: !664, size: 128)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2500, file: !38, line: 296, baseType: !244, size: 128, offset: 128)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2500, file: !38, line: 297, baseType: !244, size: 128, offset: 256)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2500, file: !38, line: 298, baseType: !244, size: 128, offset: 384)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2500, file: !38, line: 299, baseType: !1239, size: 192, offset: 512)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2500, file: !38, line: 300, baseType: !257, offset: 704)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2500, file: !38, line: 301, baseType: !773, size: 32, offset: 704)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2500, file: !38, line: 302, baseType: !621, size: 64, offset: 768)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2500, file: !38, line: 303, baseType: !2511, size: 64, offset: 832)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2512)
!2512 = !{!2513, !2525}
!2513 = !DIDerivedType(tag: DW_TAG_member, scope: !2511, file: !38, line: 69, baseType: !2514, size: 32)
!2514 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2511, file: !38, line: 69, size: 32, elements: !2515)
!2515 = !{!2516, !2517, !2518}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2514, file: !38, line: 70, baseType: !459, size: 32)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2514, file: !38, line: 71, baseType: !467, size: 32)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2514, file: !38, line: 72, baseType: !2519, size: 32)
!2519 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2520, line: 24, baseType: !2521)
!2520 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2521 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2520, line: 22, size: 32, elements: !2522)
!2522 = !{!2523}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2521, file: !2520, line: 23, baseType: !2524, size: 32)
!2524 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2520, line: 20, baseType: !465)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2511, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2500, file: !38, line: 304, baseType: !553, size: 64, offset: 896)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2500, file: !38, line: 305, baseType: !348, size: 64, offset: 960)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2500, file: !38, line: 306, baseType: !2529, size: 576, offset: 1024)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2530)
!2530 = !{!2531, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2529, file: !38, line: 206, baseType: !2532, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !555)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2529, file: !38, line: 207, baseType: !2532, size: 64, offset: 64)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2529, file: !38, line: 208, baseType: !2532, size: 64, offset: 128)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2529, file: !38, line: 209, baseType: !2532, size: 64, offset: 192)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2529, file: !38, line: 210, baseType: !2532, size: 64, offset: 256)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2529, file: !38, line: 211, baseType: !2532, size: 64, offset: 320)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2529, file: !38, line: 212, baseType: !2532, size: 64, offset: 384)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2529, file: !38, line: 213, baseType: !561, size: 64, offset: 448)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2529, file: !38, line: 214, baseType: !561, size: 64, offset: 512)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2493, file: !38, line: 324, baseType: !2542, size: 64, offset: 64)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{!2499, !621, !193}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2493, file: !38, line: 325, baseType: !2546, size: 64, offset: 128)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{null, !2499}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2493, file: !38, line: 326, baseType: !2496, size: 64, offset: 192)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2493, file: !38, line: 327, baseType: !2496, size: 64, offset: 256)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2493, file: !38, line: 328, baseType: !2496, size: 64, offset: 320)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2493, file: !38, line: 329, baseType: !710, size: 64, offset: 384)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2493, file: !38, line: 332, baseType: !2554, size: 64, offset: 448)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{!2557, !453}
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2493, file: !38, line: 333, baseType: !2559, size: 64, offset: 512)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!193, !453, !2562}
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2493, file: !38, line: 335, baseType: !2564, size: 64, offset: 576)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{!193, !453, !2557}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2493, file: !38, line: 337, baseType: !2568, size: 64, offset: 640)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{!193, !621, !2571}
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !622, file: !44, line: 1425, baseType: !2573, size: 64, offset: 512)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2575)
!2575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2576)
!2576 = !{!2577, !2581, !2582, !2586, !2587, !2588, !2603, !2626, !2630, !2631, !2654}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2575, file: !38, line: 429, baseType: !2578, size: 64)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!193, !621, !193, !193, !571}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2575, file: !38, line: 430, baseType: !710, size: 64, offset: 64)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2575, file: !38, line: 431, baseType: !2583, size: 64, offset: 128)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{!193, !621, !7}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2575, file: !38, line: 432, baseType: !2583, size: 64, offset: 192)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2575, file: !38, line: 433, baseType: !710, size: 64, offset: 256)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2575, file: !38, line: 434, baseType: !2589, size: 64, offset: 320)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{!193, !621, !193, !2592}
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2594)
!2594 = !{!2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2593, file: !38, line: 416, baseType: !193, size: 32)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2593, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2593, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2593, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2593, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2593, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2593, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2593, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2575, file: !38, line: 435, baseType: !2604, size: 64, offset: 384)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!193, !621, !2511, !2607}
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2609)
!2609 = !{!2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2608, file: !38, line: 344, baseType: !193, size: 32)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2608, file: !38, line: 345, baseType: !445, size: 64, offset: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2608, file: !38, line: 346, baseType: !445, size: 64, offset: 128)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2608, file: !38, line: 347, baseType: !445, size: 64, offset: 192)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2608, file: !38, line: 348, baseType: !445, size: 64, offset: 256)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2608, file: !38, line: 349, baseType: !445, size: 64, offset: 320)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2608, file: !38, line: 350, baseType: !445, size: 64, offset: 384)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2608, file: !38, line: 351, baseType: !803, size: 64, offset: 448)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2608, file: !38, line: 353, baseType: !803, size: 64, offset: 512)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2608, file: !38, line: 354, baseType: !193, size: 32, offset: 576)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2608, file: !38, line: 355, baseType: !193, size: 32, offset: 608)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2608, file: !38, line: 356, baseType: !445, size: 64, offset: 640)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2608, file: !38, line: 357, baseType: !445, size: 64, offset: 704)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2608, file: !38, line: 358, baseType: !445, size: 64, offset: 768)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2608, file: !38, line: 359, baseType: !803, size: 64, offset: 832)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2608, file: !38, line: 360, baseType: !193, size: 32, offset: 896)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2575, file: !38, line: 436, baseType: !2627, size: 64, offset: 448)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{!193, !621, !2571, !2607}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2575, file: !38, line: 438, baseType: !2604, size: 64, offset: 512)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2575, file: !38, line: 439, baseType: !2632, size: 64, offset: 576)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = !DISubroutineType(types: !2634)
!2634 = !{!193, !621, !2635}
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2637)
!2637 = !{!2638, !2639}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2636, file: !38, line: 410, baseType: !7, size: 32)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2636, file: !38, line: 411, baseType: !2640, size: 1344, offset: 64)
!2640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2641, size: 1344, elements: !299)
!2641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2642)
!2642 = !{!2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2653}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2641, file: !38, line: 396, baseType: !7, size: 32)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2641, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2641, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2641, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2641, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2641, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2641, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2641, file: !38, line: 404, baseType: !447, size: 64, offset: 256)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2641, file: !38, line: 405, baseType: !2652, size: 64, offset: 320)
!2652 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !221, line: 126, baseType: !445)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2641, file: !38, line: 406, baseType: !2652, size: 64, offset: 384)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2575, file: !38, line: 440, baseType: !2583, size: 64, offset: 640)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !622, file: !44, line: 1426, baseType: !2656, size: 64, offset: 576)
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2658)
!2658 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !622, file: !44, line: 1427, baseType: !348, size: 64, offset: 640)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !622, file: !44, line: 1428, baseType: !348, size: 64, offset: 704)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !622, file: !44, line: 1429, baseType: !348, size: 64, offset: 768)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !622, file: !44, line: 1430, baseType: !406, size: 64, offset: 832)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !622, file: !44, line: 1431, baseType: !793, size: 256, offset: 896)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !622, file: !44, line: 1432, baseType: !193, size: 32, offset: 1152)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !622, file: !44, line: 1433, baseType: !773, size: 32, offset: 1184)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !622, file: !44, line: 1437, baseType: !2667, size: 64, offset: 1216)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2669, size: 64)
!2669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2670)
!2670 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !622, file: !44, line: 1449, baseType: !2672, size: 64, offset: 1280)
!2672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !422, line: 34, size: 64, elements: !2673)
!2673 = !{!2674}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2672, file: !422, line: 35, baseType: !425, size: 64)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !622, file: !44, line: 1450, baseType: !244, size: 128, offset: 1344)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !622, file: !44, line: 1451, baseType: !2677, size: 64, offset: 1472)
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !622, file: !44, line: 1452, baseType: !1989, size: 64, offset: 1536)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !622, file: !44, line: 1453, baseType: !2681, size: 64, offset: 1600)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !622, file: !44, line: 1454, baseType: !664, size: 128, offset: 1664)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !622, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !622, file: !44, line: 1456, baseType: !2686, size: 2432, offset: 1856)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2687)
!2687 = !{!2688, !2689, !2690, !2692, !2724}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2686, file: !38, line: 519, baseType: !7, size: 32)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2686, file: !38, line: 520, baseType: !793, size: 256, offset: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2686, file: !38, line: 521, baseType: !2691, size: 192, offset: 320)
!2691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !453, size: 192, elements: !299)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2686, file: !38, line: 522, baseType: !2693, size: 1728, offset: 512)
!2693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2694, size: 1728, elements: !299)
!2694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2695)
!2695 = !{!2696, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2694, file: !38, line: 223, baseType: !2697, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2699)
!2699 = !{!2700, !2701, !2714, !2715}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2698, file: !38, line: 444, baseType: !193, size: 32)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2698, file: !38, line: 445, baseType: !2702, size: 64, offset: 64)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2704)
!2704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2705)
!2705 = !{!2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2704, file: !38, line: 311, baseType: !710, size: 64)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2704, file: !38, line: 312, baseType: !710, size: 64, offset: 64)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2704, file: !38, line: 313, baseType: !710, size: 64, offset: 128)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2704, file: !38, line: 314, baseType: !710, size: 64, offset: 192)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2704, file: !38, line: 315, baseType: !2496, size: 64, offset: 256)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2704, file: !38, line: 316, baseType: !2496, size: 64, offset: 320)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2704, file: !38, line: 317, baseType: !2496, size: 64, offset: 384)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2704, file: !38, line: 318, baseType: !2568, size: 64, offset: 448)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2698, file: !38, line: 446, baseType: !655, size: 64, offset: 128)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2698, file: !38, line: 447, baseType: !2697, size: 64, offset: 192)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2694, file: !38, line: 224, baseType: !193, size: 32, offset: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2694, file: !38, line: 226, baseType: !244, size: 128, offset: 128)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2694, file: !38, line: 227, baseType: !348, size: 64, offset: 256)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2694, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2694, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2694, file: !38, line: 230, baseType: !2532, size: 64, offset: 384)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2694, file: !38, line: 231, baseType: !2532, size: 64, offset: 448)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2694, file: !38, line: 232, baseType: !187, size: 64, offset: 512)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2686, file: !38, line: 523, baseType: !2725, size: 192, offset: 2240)
!2725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2702, size: 192, elements: !299)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !622, file: !44, line: 1458, baseType: !2727, size: 2112, offset: 4288)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2728)
!2728 = !{!2729, !2730, !2731}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2727, file: !44, line: 1411, baseType: !193, size: 32)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2727, file: !44, line: 1412, baseType: !1546, size: 128, offset: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2727, file: !44, line: 1413, baseType: !2732, size: 1920, offset: 192)
!2732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2733, size: 1920, elements: !299)
!2733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2734, line: 12, size: 640, elements: !2735)
!2734 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2735 = !{!2736, !2744, !2746, !2751, !2752}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2733, file: !2734, line: 13, baseType: !2737, size: 320)
!2737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2738, line: 17, size: 320, elements: !2739)
!2738 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2739 = !{!2740, !2741, !2742, !2743}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2737, file: !2738, line: 18, baseType: !193, size: 32)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2737, file: !2738, line: 19, baseType: !193, size: 32, offset: 32)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2737, file: !2738, line: 20, baseType: !1546, size: 128, offset: 64)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2737, file: !2738, line: 22, baseType: !389, size: 128, align: 64, offset: 192)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2733, file: !2734, line: 14, baseType: !2745, size: 64, offset: 320)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2733, file: !2734, line: 15, baseType: !2747, size: 64, offset: 384)
!2747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2748, line: 16, size: 64, elements: !2749)
!2748 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2749 = !{!2750}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2747, file: !2748, line: 17, baseType: !1282, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2733, file: !2734, line: 16, baseType: !1546, size: 128, offset: 448)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2733, file: !2734, line: 17, baseType: !773, size: 32, offset: 576)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !622, file: !44, line: 1465, baseType: !187, size: 64, offset: 6400)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !622, file: !44, line: 1468, baseType: !439, size: 32, offset: 6464)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !622, file: !44, line: 1470, baseType: !561, size: 64, offset: 6528)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !622, file: !44, line: 1471, baseType: !561, size: 64, offset: 6592)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !622, file: !44, line: 1473, baseType: !441, size: 32, offset: 6656)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !622, file: !44, line: 1474, baseType: !2759, size: 64, offset: 6720)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !622, file: !44, line: 1477, baseType: !2762, size: 256, offset: 6784)
!2762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 256, elements: !2292)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !622, file: !44, line: 1478, baseType: !2764, size: 128, offset: 7040)
!2764 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2765, line: 18, baseType: !2766)
!2765 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2766 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2765, line: 16, size: 128, elements: !2767)
!2767 = !{!2768}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2766, file: !2765, line: 17, baseType: !2769, size: 128)
!2769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1418, size: 128, elements: !1800)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !622, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !622, file: !44, line: 1481, baseType: !2772, size: 32, offset: 7200)
!2772 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !221, line: 150, baseType: !7)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !622, file: !44, line: 1487, baseType: !1239, size: 192, offset: 7232)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !622, file: !44, line: 1493, baseType: !240, size: 64, offset: 7424)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !622, file: !44, line: 1495, baseType: !2776, size: 64, offset: 7488)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2778)
!2778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !404, line: 135, size: 1024, align: 512, elements: !2779)
!2779 = !{!2780, !2784, !2785, !2792, !2798, !2802, !2806, !2810, !2811, !2815, !2819, !2824, !2828}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2778, file: !404, line: 136, baseType: !2781, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!193, !406, !7}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2778, file: !404, line: 137, baseType: !2781, size: 64, offset: 64)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2778, file: !404, line: 138, baseType: !2786, size: 64, offset: 128)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = !DISubroutineType(types: !2788)
!2788 = !{!193, !2789, !2791}
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !407)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2778, file: !404, line: 139, baseType: !2793, size: 64, offset: 192)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{!193, !2789, !7, !240, !2796}
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !430)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2778, file: !404, line: 141, baseType: !2799, size: 64, offset: 256)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DISubroutineType(types: !2801)
!2801 = !{!193, !2789}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2778, file: !404, line: 142, baseType: !2803, size: 64, offset: 320)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{!193, !406}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2778, file: !404, line: 143, baseType: !2807, size: 64, offset: 384)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{null, !406}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2778, file: !404, line: 144, baseType: !2807, size: 64, offset: 448)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2778, file: !404, line: 145, baseType: !2812, size: 64, offset: 512)
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = !DISubroutineType(types: !2814)
!2814 = !{null, !406, !453}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2778, file: !404, line: 146, baseType: !2816, size: 64, offset: 576)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{!298, !406, !298, !193}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2778, file: !404, line: 147, baseType: !2820, size: 64, offset: 640)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{!402, !2823}
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2778, file: !404, line: 148, baseType: !2825, size: 64, offset: 704)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DISubroutineType(types: !2827)
!2827 = !{!193, !571, !220}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2778, file: !404, line: 149, baseType: !2829, size: 64, offset: 768)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = !DISubroutineType(types: !2831)
!2831 = !{!406, !406, !2832}
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !454)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !622, file: !44, line: 1500, baseType: !193, size: 32, offset: 7552)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !622, file: !44, line: 1502, baseType: !2836, size: 448, offset: 7616)
!2836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2480, line: 60, size: 448, elements: !2837)
!2837 = !{!2838, !2843, !2844, !2845, !2846, !2847, !2848}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2836, file: !2480, line: 61, baseType: !2839, size: 64)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{!348, !2842, !2478}
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2836, file: !2480, line: 63, baseType: !2839, size: 64, offset: 64)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2836, file: !2480, line: 66, baseType: !333, size: 64, offset: 128)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2836, file: !2480, line: 67, baseType: !193, size: 32, offset: 192)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2836, file: !2480, line: 68, baseType: !7, size: 32, offset: 224)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2836, file: !2480, line: 71, baseType: !244, size: 128, offset: 256)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2836, file: !2480, line: 77, baseType: !2849, size: 64, offset: 384)
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !622, file: !44, line: 1505, baseType: !797, size: 64, offset: 8064)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !622, file: !44, line: 1508, baseType: !797, size: 64, offset: 8128)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !622, file: !44, line: 1511, baseType: !193, size: 32, offset: 8192)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !622, file: !44, line: 1514, baseType: !975, size: 32, offset: 8224)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !622, file: !44, line: 1517, baseType: !2855, size: 64, offset: 8256)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2024, line: 18, flags: DIFlagFwdDecl)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !622, file: !44, line: 1518, baseType: !660, size: 64, offset: 8320)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !622, file: !44, line: 1525, baseType: !1778, size: 64, offset: 8384)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !622, file: !44, line: 1532, baseType: !2860, size: 64, offset: 8448)
!2860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2861, line: 52, size: 64, elements: !2862)
!2861 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2862 = !{!2863}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2860, file: !2861, line: 53, baseType: !2864, size: 64)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2861, line: 40, size: 256, elements: !2866)
!2866 = !{!2867, !2868, !2873}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2865, file: !2861, line: 42, baseType: !257)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2865, file: !2861, line: 44, baseType: !2869, size: 192)
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2861, line: 28, size: 192, elements: !2870)
!2870 = !{!2871, !2872}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2869, file: !2861, line: 29, baseType: !244, size: 128)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2869, file: !2861, line: 31, baseType: !333, size: 64, offset: 128)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2865, file: !2861, line: 49, baseType: !333, size: 64, offset: 192)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !622, file: !44, line: 1533, baseType: !2860, size: 64, offset: 8512)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !622, file: !44, line: 1534, baseType: !389, size: 128, align: 64, offset: 8576)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !622, file: !44, line: 1535, baseType: !2023, size: 256, offset: 8704)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !622, file: !44, line: 1537, baseType: !1239, size: 192, offset: 8960)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !622, file: !44, line: 1542, baseType: !193, size: 32, offset: 9152)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !622, file: !44, line: 1545, baseType: !257, offset: 9184)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !622, file: !44, line: 1546, baseType: !244, size: 128, offset: 9216)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !622, file: !44, line: 1548, baseType: !257, offset: 9344)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !622, file: !44, line: 1549, baseType: !244, size: 128, offset: 9344)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !454, file: !44, line: 624, baseType: !759, size: 64, offset: 256)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !454, file: !44, line: 631, baseType: !348, size: 64, offset: 320)
!2885 = !DIDerivedType(tag: DW_TAG_member, scope: !454, file: !44, line: 639, baseType: !2886, size: 32, offset: 384)
!2886 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !454, file: !44, line: 639, size: 32, elements: !2887)
!2887 = !{!2888, !2890}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2886, file: !44, line: 640, baseType: !2889, size: 32)
!2889 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2886, file: !44, line: 641, baseType: !7, size: 32)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !454, file: !44, line: 643, baseType: !535, size: 32, offset: 416)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !454, file: !44, line: 644, baseType: !553, size: 64, offset: 448)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !454, file: !44, line: 645, baseType: !557, size: 128, offset: 512)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !454, file: !44, line: 646, baseType: !557, size: 128, offset: 640)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !454, file: !44, line: 647, baseType: !557, size: 128, offset: 768)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !454, file: !44, line: 648, baseType: !257, offset: 896)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !454, file: !44, line: 649, baseType: !340, size: 16, offset: 896)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !454, file: !44, line: 650, baseType: !1417, size: 8, offset: 912)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !454, file: !44, line: 651, baseType: !1417, size: 8, offset: 920)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !454, file: !44, line: 652, baseType: !2652, size: 64, offset: 960)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !454, file: !44, line: 659, baseType: !348, size: 64, offset: 1024)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !454, file: !44, line: 660, baseType: !793, size: 256, offset: 1088)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !454, file: !44, line: 662, baseType: !348, size: 64, offset: 1344)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !454, file: !44, line: 663, baseType: !348, size: 64, offset: 1408)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !454, file: !44, line: 665, baseType: !664, size: 128, offset: 1472)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !454, file: !44, line: 666, baseType: !244, size: 128, offset: 1600)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !454, file: !44, line: 675, baseType: !244, size: 128, offset: 1728)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !454, file: !44, line: 676, baseType: !244, size: 128, offset: 1856)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !454, file: !44, line: 677, baseType: !244, size: 128, offset: 1984)
!2910 = !DIDerivedType(tag: DW_TAG_member, scope: !454, file: !44, line: 678, baseType: !2911, size: 128, offset: 2112)
!2911 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !454, file: !44, line: 678, size: 128, elements: !2912)
!2912 = !{!2913, !2914}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2911, file: !44, line: 679, baseType: !660, size: 64)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2911, file: !44, line: 680, baseType: !389, size: 128, align: 64)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !454, file: !44, line: 682, baseType: !799, size: 64, offset: 2240)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !454, file: !44, line: 683, baseType: !799, size: 64, offset: 2304)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !454, file: !44, line: 684, baseType: !773, size: 32, offset: 2368)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !454, file: !44, line: 685, baseType: !773, size: 32, offset: 2400)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !454, file: !44, line: 686, baseType: !773, size: 32, offset: 2432)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !454, file: !44, line: 688, baseType: !773, size: 32, offset: 2464)
!2921 = !DIDerivedType(tag: DW_TAG_member, scope: !454, file: !44, line: 690, baseType: !2922, size: 64, offset: 2496)
!2922 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !454, file: !44, line: 690, size: 64, elements: !2923)
!2923 = !{!2924, !3147}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2922, file: !44, line: 691, baseType: !2925, size: 64)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2927)
!2927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2928)
!2928 = !{!2929, !2930, !2934, !2939, !2943, !2944, !2945, !2949, !2962, !2963, !2971, !2975, !2976, !2980, !2981, !2985, !2990, !2991, !2995, !2999, !3107, !3111, !3112, !3116, !3117, !3121, !3125, !3130, !3134, !3138, !3142, !3146}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2927, file: !44, line: 1823, baseType: !655, size: 64)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2927, file: !44, line: 1824, baseType: !2931, size: 64, offset: 64)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{!553, !376, !553, !193}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2927, file: !44, line: 1825, baseType: !2935, size: 64, offset: 128)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DISubroutineType(types: !2937)
!2937 = !{!329, !376, !298, !345, !2938}
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2927, file: !44, line: 1826, baseType: !2940, size: 64, offset: 192)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!329, !376, !240, !345, !2938}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2927, file: !44, line: 1827, baseType: !870, size: 64, offset: 256)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2927, file: !44, line: 1828, baseType: !870, size: 64, offset: 320)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2927, file: !44, line: 1829, baseType: !2946, size: 64, offset: 384)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{!193, !873, !220}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2927, file: !44, line: 1830, baseType: !2950, size: 64, offset: 448)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!193, !376, !2953}
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2955)
!2955 = !{!2956, !2961}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2954, file: !44, line: 1777, baseType: !2957, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2958)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!193, !2953, !240, !193, !553, !445, !7}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2954, file: !44, line: 1778, baseType: !553, size: 64, offset: 64)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2927, file: !44, line: 1831, baseType: !2950, size: 64, offset: 512)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2927, file: !44, line: 1832, baseType: !2964, size: 64, offset: 576)
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{!2967, !376, !2969}
!2967 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2968, line: 52, baseType: !7)
!2968 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !641, line: 27, flags: DIFlagFwdDecl)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2927, file: !44, line: 1833, baseType: !2972, size: 64, offset: 640)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = !DISubroutineType(types: !2974)
!2974 = !{!333, !376, !7, !348}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2927, file: !44, line: 1834, baseType: !2972, size: 64, offset: 704)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2927, file: !44, line: 1835, baseType: !2977, size: 64, offset: 768)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!193, !376, !1047}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2927, file: !44, line: 1836, baseType: !348, size: 64, offset: 832)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2927, file: !44, line: 1837, baseType: !2982, size: 64, offset: 896)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{!193, !453, !376}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2927, file: !44, line: 1838, baseType: !2986, size: 64, offset: 960)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!193, !376, !2989}
!2989 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !187)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2927, file: !44, line: 1839, baseType: !2982, size: 64, offset: 1024)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2927, file: !44, line: 1840, baseType: !2992, size: 64, offset: 1088)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{!193, !376, !553, !553, !193}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2927, file: !44, line: 1841, baseType: !2996, size: 64, offset: 1152)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{!193, !193, !376, !193}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2927, file: !44, line: 1842, baseType: !3000, size: 64, offset: 1216)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!193, !376, !193, !3003}
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !3005)
!3005 = !{!3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3037, !3038, !3039, !3052, !3083}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3004, file: !44, line: 1063, baseType: !3003, size: 64)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3004, file: !44, line: 1064, baseType: !244, size: 128, offset: 64)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3004, file: !44, line: 1065, baseType: !664, size: 128, offset: 192)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3004, file: !44, line: 1066, baseType: !244, size: 128, offset: 320)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3004, file: !44, line: 1069, baseType: !244, size: 128, offset: 448)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3004, file: !44, line: 1072, baseType: !2989, size: 64, offset: 576)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3004, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3004, file: !44, line: 1074, baseType: !451, size: 8, offset: 672)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3004, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3004, file: !44, line: 1076, baseType: !193, size: 32, offset: 736)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3004, file: !44, line: 1077, baseType: !1546, size: 128, offset: 768)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3004, file: !44, line: 1078, baseType: !376, size: 64, offset: 896)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3004, file: !44, line: 1079, baseType: !553, size: 64, offset: 960)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3004, file: !44, line: 1080, baseType: !553, size: 64, offset: 1024)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3004, file: !44, line: 1082, baseType: !3021, size: 64, offset: 1088)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !3023)
!3023 = !{!3024, !3032, !3033, !3034, !3035, !3036}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3022, file: !44, line: 1315, baseType: !3025)
!3025 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3026, line: 20, baseType: !3027)
!3026 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3027 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3026, line: 11, elements: !3028)
!3028 = !{!3029}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3027, file: !3026, line: 12, baseType: !3030)
!3030 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !269, line: 33, baseType: !3031)
!3031 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !269, line: 31, elements: !271)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3022, file: !44, line: 1316, baseType: !193, size: 32)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3022, file: !44, line: 1317, baseType: !193, size: 32, offset: 32)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3022, file: !44, line: 1318, baseType: !3021, size: 64, offset: 64)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3022, file: !44, line: 1319, baseType: !376, size: 64, offset: 128)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3022, file: !44, line: 1320, baseType: !389, size: 128, align: 64, offset: 192)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3004, file: !44, line: 1084, baseType: !348, size: 64, offset: 1152)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3004, file: !44, line: 1085, baseType: !348, size: 64, offset: 1216)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3004, file: !44, line: 1087, baseType: !3040, size: 64, offset: 1280)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3042)
!3042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !3043)
!3043 = !{!3044, !3048}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3042, file: !44, line: 1012, baseType: !3045, size: 64)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{null, !3003, !3003}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3042, file: !44, line: 1013, baseType: !3049, size: 64, offset: 64)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{null, !3003}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3004, file: !44, line: 1088, baseType: !3053, size: 64, offset: 1344)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3055)
!3055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !3056)
!3056 = !{!3057, !3061, !3065, !3066, !3070, !3074, !3078, !3082}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3055, file: !44, line: 1017, baseType: !3058, size: 64)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!2989, !2989}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3055, file: !44, line: 1018, baseType: !3062, size: 64, offset: 64)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{null, !2989}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3055, file: !44, line: 1019, baseType: !3049, size: 64, offset: 128)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3055, file: !44, line: 1020, baseType: !3067, size: 64, offset: 192)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{!193, !3003, !193}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3055, file: !44, line: 1021, baseType: !3071, size: 64, offset: 256)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!220, !3003}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3055, file: !44, line: 1022, baseType: !3075, size: 64, offset: 320)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!193, !3003, !193, !247}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3055, file: !44, line: 1023, baseType: !3079, size: 64, offset: 384)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{null, !3003, !847}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3055, file: !44, line: 1024, baseType: !3071, size: 64, offset: 448)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3004, file: !44, line: 1097, baseType: !3084, size: 256, offset: 1408)
!3084 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3004, file: !44, line: 1089, size: 256, elements: !3085)
!3085 = !{!3086, !3095, !3101}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3084, file: !44, line: 1090, baseType: !3087, size: 256)
!3087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3088, line: 10, size: 256, elements: !3089)
!3088 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3089 = !{!3090, !3091, !3094}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3087, file: !3088, line: 11, baseType: !439, size: 32)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3087, file: !3088, line: 12, baseType: !3092, size: 64, offset: 64)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3088, line: 5, flags: DIFlagFwdDecl)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3087, file: !3088, line: 13, baseType: !244, size: 128, offset: 128)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3084, file: !44, line: 1091, baseType: !3096, size: 64)
!3096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3088, line: 17, size: 64, elements: !3097)
!3097 = !{!3098}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3096, file: !3088, line: 18, baseType: !3099, size: 64)
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3100, size: 64)
!3100 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3088, line: 16, flags: DIFlagFwdDecl)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3084, file: !44, line: 1096, baseType: !3102, size: 192)
!3102 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3084, file: !44, line: 1092, size: 192, elements: !3103)
!3103 = !{!3104, !3105, !3106}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3102, file: !44, line: 1093, baseType: !244, size: 128)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3102, file: !44, line: 1094, baseType: !193, size: 32, offset: 128)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3102, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2927, file: !44, line: 1843, baseType: !3108, size: 64, offset: 1280)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{!329, !376, !746, !193, !345, !2938, !193}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2927, file: !44, line: 1844, baseType: !1167, size: 64, offset: 1344)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2927, file: !44, line: 1845, baseType: !3113, size: 64, offset: 1408)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{!193, !193}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2927, file: !44, line: 1846, baseType: !3000, size: 64, offset: 1472)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2927, file: !44, line: 1847, baseType: !3118, size: 64, offset: 1536)
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3119, size: 64)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{!329, !925, !376, !2938, !345, !7}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2927, file: !44, line: 1848, baseType: !3122, size: 64, offset: 1600)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{!329, !376, !2938, !925, !345, !7}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2927, file: !44, line: 1849, baseType: !3126, size: 64, offset: 1664)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = !DISubroutineType(types: !3128)
!3128 = !{!193, !376, !333, !3129, !847}
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2927, file: !44, line: 1850, baseType: !3131, size: 64, offset: 1728)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{!333, !376, !193, !553, !553}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2927, file: !44, line: 1852, baseType: !3135, size: 64, offset: 1792)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = !DISubroutineType(types: !3137)
!3137 = !{null, !736, !376}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2927, file: !44, line: 1856, baseType: !3139, size: 64, offset: 1856)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{!329, !376, !553, !376, !553, !345, !7}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2927, file: !44, line: 1858, baseType: !3143, size: 64, offset: 1920)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!553, !376, !553, !376, !553, !553, !7}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2927, file: !44, line: 1861, baseType: !2992, size: 64, offset: 1984)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2922, file: !44, line: 692, baseType: !689, size: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !454, file: !44, line: 694, baseType: !3149, size: 64, offset: 2560)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3151)
!3151 = !{!3152, !3153, !3154, !3155}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3150, file: !44, line: 1101, baseType: !257)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3150, file: !44, line: 1102, baseType: !244, size: 128)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3150, file: !44, line: 1103, baseType: !244, size: 128, offset: 128)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3150, file: !44, line: 1104, baseType: !244, size: 128, offset: 256)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !454, file: !44, line: 695, baseType: !760, size: 1216, align: 64, offset: 2624)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !454, file: !44, line: 696, baseType: !244, size: 128, offset: 3840)
!3158 = !DIDerivedType(tag: DW_TAG_member, scope: !454, file: !44, line: 697, baseType: !3159, size: 64, offset: 3968)
!3159 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !454, file: !44, line: 697, size: 64, elements: !3160)
!3160 = !{!3161, !3162, !3163, !3166, !3167}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3159, file: !44, line: 698, baseType: !925, size: 64)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3159, file: !44, line: 699, baseType: !2677, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3159, file: !44, line: 700, baseType: !3164, size: 64)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3159, file: !44, line: 701, baseType: !298, size: 64)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3159, file: !44, line: 702, baseType: !7, size: 32)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !454, file: !44, line: 705, baseType: !441, size: 32, offset: 4032)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !454, file: !44, line: 708, baseType: !441, size: 32, offset: 4064)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !454, file: !44, line: 709, baseType: !2759, size: 64, offset: 4096)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !454, file: !44, line: 720, baseType: !187, size: 64, offset: 4160)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !407, file: !404, line: 98, baseType: !3173, size: 256, offset: 448)
!3173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !451, size: 256, elements: !2292)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !407, file: !404, line: 101, baseType: !3175, size: 32, offset: 704)
!3175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3176, line: 25, size: 32, elements: !3177)
!3176 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3177 = !{!3178}
!3178 = !DIDerivedType(tag: DW_TAG_member, scope: !3175, file: !3176, line: 26, baseType: !3179, size: 32)
!3179 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3175, file: !3176, line: 26, size: 32, elements: !3180)
!3180 = !{!3181}
!3181 = !DIDerivedType(tag: DW_TAG_member, scope: !3179, file: !3176, line: 30, baseType: !3182, size: 32)
!3182 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3179, file: !3176, line: 30, size: 32, elements: !3183)
!3183 = !{!3184, !3185}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3182, file: !3176, line: 31, baseType: !257)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3182, file: !3176, line: 32, baseType: !193, size: 32)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !407, file: !404, line: 102, baseType: !2776, size: 64, offset: 768)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !407, file: !404, line: 103, baseType: !621, size: 64, offset: 832)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !407, file: !404, line: 104, baseType: !348, size: 64, offset: 896)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !407, file: !404, line: 105, baseType: !187, size: 64, offset: 960)
!3190 = !DIDerivedType(tag: DW_TAG_member, scope: !407, file: !404, line: 107, baseType: !3191, size: 128, offset: 1024)
!3191 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !407, file: !404, line: 107, size: 128, elements: !3192)
!3192 = !{!3193, !3194}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3191, file: !404, line: 108, baseType: !244, size: 128)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3191, file: !404, line: 109, baseType: !3195, size: 64)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !407, file: !404, line: 111, baseType: !244, size: 128, offset: 1152)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !407, file: !404, line: 112, baseType: !244, size: 128, offset: 1280)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !407, file: !404, line: 120, baseType: !3199, size: 128, offset: 1408)
!3199 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !407, file: !404, line: 116, size: 128, elements: !3200)
!3200 = !{!3201, !3202, !3203}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3199, file: !404, line: 117, baseType: !664, size: 128)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3199, file: !404, line: 118, baseType: !421, size: 128)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3199, file: !404, line: 119, baseType: !389, size: 128, align: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !377, file: !44, line: 922, baseType: !453, size: 64, offset: 256)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !377, file: !44, line: 923, baseType: !2925, size: 64, offset: 320)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !377, file: !44, line: 929, baseType: !257, offset: 384)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !377, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !377, file: !44, line: 931, baseType: !797, size: 64, offset: 448)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !377, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !377, file: !44, line: 933, baseType: !2772, size: 32, offset: 544)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !377, file: !44, line: 934, baseType: !1239, size: 192, offset: 576)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !377, file: !44, line: 935, baseType: !553, size: 64, offset: 768)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !377, file: !44, line: 936, baseType: !3214, size: 192, offset: 832)
!3214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3215)
!3215 = !{!3216, !3217, !3218, !3219, !3220, !3221}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3214, file: !44, line: 886, baseType: !3025)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3214, file: !44, line: 887, baseType: !1536, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3214, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3214, file: !44, line: 889, baseType: !459, size: 32, offset: 96)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3214, file: !44, line: 889, baseType: !459, size: 32, offset: 128)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3214, file: !44, line: 890, baseType: !193, size: 32, offset: 160)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !377, file: !44, line: 937, baseType: !1612, size: 64, offset: 1024)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !377, file: !44, line: 938, baseType: !3224, size: 256, offset: 1088)
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3225)
!3225 = !{!3226, !3227, !3228, !3229, !3230, !3231}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3224, file: !44, line: 897, baseType: !348, size: 64)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3224, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3224, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3224, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3224, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3224, file: !44, line: 904, baseType: !553, size: 64, offset: 192)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !377, file: !44, line: 940, baseType: !445, size: 64, offset: 1344)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !377, file: !44, line: 945, baseType: !187, size: 64, offset: 1408)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !377, file: !44, line: 949, baseType: !244, size: 128, offset: 1472)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !377, file: !44, line: 950, baseType: !244, size: 128, offset: 1600)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !377, file: !44, line: 952, baseType: !759, size: 64, offset: 1728)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !377, file: !44, line: 953, baseType: !975, size: 32, offset: 1792)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !377, file: !44, line: 954, baseType: !975, size: 32, offset: 1824)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !367, file: !323, line: 174, baseType: !373, size: 64, offset: 320)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !367, file: !323, line: 176, baseType: !3241, size: 64, offset: 384)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!193, !376, !250, !366, !1047}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !355, file: !323, line: 90, baseType: !350, size: 64, offset: 192)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !355, file: !323, line: 91, baseType: !3246, size: 64, offset: 256)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !313, file: !237, line: 143, baseType: !3248, size: 64, offset: 256)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{!3251, !250}
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3253)
!3253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3254)
!3254 = !{!3255, !3256, !3260, !3264, !3270, !3274}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3253, file: !61, line: 40, baseType: !60, size: 32)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3253, file: !61, line: 41, baseType: !3257, size: 64, offset: 64)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!220}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3253, file: !61, line: 42, baseType: !3261, size: 64, offset: 128)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!187}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3253, file: !61, line: 43, baseType: !3265, size: 64, offset: 192)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!229, !3268}
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3253, file: !61, line: 44, baseType: !3271, size: 64, offset: 256)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DISubroutineType(types: !3273)
!3273 = !{!229}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3253, file: !61, line: 45, baseType: !492, size: 64, offset: 320)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !313, file: !237, line: 144, baseType: !3276, size: 64, offset: 320)
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{!229, !250}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !313, file: !237, line: 145, baseType: !3280, size: 64, offset: 384)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = !DISubroutineType(types: !3282)
!3282 = !{null, !250, !3283, !3284}
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !236, file: !237, line: 70, baseType: !3286, size: 64, offset: 384)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !641, line: 123, size: 1024, elements: !3288)
!3288 = !{!3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3417, !3418, !3419, !3420, !3421}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3287, file: !641, line: 124, baseType: !773, size: 32)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3287, file: !641, line: 125, baseType: !773, size: 32, offset: 32)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3287, file: !641, line: 135, baseType: !3286, size: 64, offset: 64)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3287, file: !641, line: 136, baseType: !240, size: 64, offset: 128)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3287, file: !641, line: 138, baseType: !786, size: 192, align: 64, offset: 192)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3287, file: !641, line: 140, baseType: !229, size: 64, offset: 384)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3287, file: !641, line: 141, baseType: !7, size: 32, offset: 448)
!3296 = !DIDerivedType(tag: DW_TAG_member, scope: !3287, file: !641, line: 142, baseType: !3297, size: 256, offset: 512)
!3297 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3287, file: !641, line: 142, size: 256, elements: !3298)
!3298 = !{!3299, !3345, !3349}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3297, file: !641, line: 143, baseType: !3300, size: 192)
!3300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !641, line: 91, size: 192, elements: !3301)
!3301 = !{!3302, !3303, !3304}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3300, file: !641, line: 92, baseType: !348, size: 64)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3300, file: !641, line: 94, baseType: !782, size: 64, offset: 64)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3300, file: !641, line: 100, baseType: !3305, size: 64, offset: 128)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !641, line: 180, size: 704, elements: !3307)
!3307 = !{!3308, !3309, !3310, !3317, !3318, !3319, !3343, !3344}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3306, file: !641, line: 182, baseType: !3286, size: 64)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3306, file: !641, line: 183, baseType: !7, size: 32, offset: 64)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3306, file: !641, line: 186, baseType: !3311, size: 192, offset: 128)
!3311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3312, line: 19, size: 192, elements: !3313)
!3312 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3313 = !{!3314, !3315, !3316}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3311, file: !3312, line: 20, baseType: !764, size: 128)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3311, file: !3312, line: 21, baseType: !7, size: 32, offset: 128)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3311, file: !3312, line: 22, baseType: !7, size: 32, offset: 160)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3306, file: !641, line: 187, baseType: !439, size: 32, offset: 320)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3306, file: !641, line: 188, baseType: !439, size: 32, offset: 352)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3306, file: !641, line: 189, baseType: !3320, size: 64, offset: 384)
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !641, line: 168, size: 320, elements: !3322)
!3322 = !{!3323, !3327, !3331, !3335, !3339}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3321, file: !641, line: 169, baseType: !3324, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{!193, !736, !3305}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3321, file: !641, line: 171, baseType: !3328, size: 64, offset: 64)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{!193, !3286, !240, !339}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3321, file: !641, line: 173, baseType: !3332, size: 64, offset: 128)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = !DISubroutineType(types: !3334)
!3334 = !{!193, !3286}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3321, file: !641, line: 174, baseType: !3336, size: 64, offset: 192)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = !DISubroutineType(types: !3338)
!3338 = !{!193, !3286, !3286, !240}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3321, file: !641, line: 176, baseType: !3340, size: 64, offset: 256)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = !DISubroutineType(types: !3342)
!3342 = !{!193, !736, !3286, !3305}
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3306, file: !641, line: 192, baseType: !244, size: 128, offset: 448)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3306, file: !641, line: 194, baseType: !1546, size: 128, offset: 576)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3297, file: !641, line: 144, baseType: !3346, size: 64)
!3346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !641, line: 103, size: 64, elements: !3347)
!3347 = !{!3348}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3346, file: !641, line: 104, baseType: !3286, size: 64)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3297, file: !641, line: 145, baseType: !3350, size: 256)
!3350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !641, line: 107, size: 256, elements: !3351)
!3351 = !{!3352, !3412, !3415, !3416}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3350, file: !641, line: 108, baseType: !3353, size: 64)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3355)
!3355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !641, line: 217, size: 768, elements: !3356)
!3356 = !{!3357, !3377, !3381, !3385, !3389, !3393, !3397, !3401, !3402, !3403, !3404, !3408}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3355, file: !641, line: 222, baseType: !3358, size: 64)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!193, !3361}
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !641, line: 197, size: 1088, elements: !3363)
!3363 = !{!3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3362, file: !641, line: 199, baseType: !3286, size: 64)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3362, file: !641, line: 200, baseType: !376, size: 64, offset: 64)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3362, file: !641, line: 201, baseType: !736, size: 64, offset: 128)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3362, file: !641, line: 202, baseType: !187, size: 64, offset: 192)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3362, file: !641, line: 205, baseType: !1239, size: 192, offset: 256)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3362, file: !641, line: 206, baseType: !1239, size: 192, offset: 448)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3362, file: !641, line: 207, baseType: !193, size: 32, offset: 640)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3362, file: !641, line: 208, baseType: !244, size: 128, offset: 704)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3362, file: !641, line: 209, baseType: !298, size: 64, offset: 832)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3362, file: !641, line: 211, baseType: !345, size: 64, offset: 896)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3362, file: !641, line: 212, baseType: !220, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3362, file: !641, line: 213, baseType: !220, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3362, file: !641, line: 214, baseType: !1075, size: 64, offset: 1024)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3355, file: !641, line: 223, baseType: !3378, size: 64, offset: 64)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DISubroutineType(types: !3380)
!3380 = !{null, !3361}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3355, file: !641, line: 236, baseType: !3382, size: 64, offset: 128)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!193, !736, !187}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3355, file: !641, line: 238, baseType: !3386, size: 64, offset: 192)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!187, !736, !2938}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3355, file: !641, line: 239, baseType: !3390, size: 64, offset: 256)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = !DISubroutineType(types: !3392)
!3392 = !{!187, !736, !187, !2938}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3355, file: !641, line: 240, baseType: !3394, size: 64, offset: 320)
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{null, !736, !187}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3355, file: !641, line: 242, baseType: !3398, size: 64, offset: 384)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{!329, !3361, !298, !345, !553}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3355, file: !641, line: 252, baseType: !345, size: 64, offset: 448)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3355, file: !641, line: 259, baseType: !220, size: 8, offset: 512)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3355, file: !641, line: 260, baseType: !3398, size: 64, offset: 576)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3355, file: !641, line: 263, baseType: !3405, size: 64, offset: 640)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{!2967, !3361, !2969}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3355, file: !641, line: 266, baseType: !3409, size: 64, offset: 704)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = !DISubroutineType(types: !3411)
!3411 = !{!193, !3361, !1047}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3350, file: !641, line: 109, baseType: !3413, size: 64, offset: 64)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !641, line: 31, flags: DIFlagFwdDecl)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3350, file: !641, line: 110, baseType: !553, size: 64, offset: 128)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3350, file: !641, line: 111, baseType: !3286, size: 64, offset: 192)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3287, file: !641, line: 148, baseType: !187, size: 64, offset: 768)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3287, file: !641, line: 154, baseType: !445, size: 64, offset: 832)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3287, file: !641, line: 156, baseType: !340, size: 16, offset: 896)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3287, file: !641, line: 157, baseType: !339, size: 16, offset: 912)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3287, file: !641, line: 158, baseType: !3422, size: 64, offset: 960)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !641, line: 32, flags: DIFlagFwdDecl)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !236, file: !237, line: 71, baseType: !3425, size: 32, offset: 448)
!3425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3426, line: 19, size: 32, elements: !3427)
!3426 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3427 = !{!3428}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3425, file: !3426, line: 20, baseType: !1295, size: 32)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !236, file: !237, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !236, file: !237, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !236, file: !237, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !236, file: !237, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !236, file: !237, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !233, file: !73, line: 463, baseType: !3435, size: 64, offset: 512)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !233, file: !73, line: 465, baseType: !3437, size: 64, offset: 576)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !233, file: !73, line: 467, baseType: !240, size: 64, offset: 640)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !233, file: !73, line: 468, baseType: !3441, size: 64, offset: 704)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3443)
!3443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3444)
!3444 = !{!3445, !3446, !3447, !3451, !3456, !3460}
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3443, file: !73, line: 88, baseType: !240, size: 64)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3443, file: !73, line: 89, baseType: !352, size: 64, offset: 64)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3443, file: !73, line: 90, baseType: !3448, size: 64, offset: 128)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!193, !3435, !293}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3443, file: !73, line: 91, baseType: !3452, size: 64, offset: 192)
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{!298, !3435, !3455, !3283, !3284}
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3443, file: !73, line: 93, baseType: !3457, size: 64, offset: 256)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = !DISubroutineType(types: !3459)
!3459 = !{null, !3435}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3443, file: !73, line: 95, baseType: !3461, size: 64, offset: 320)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3463)
!3463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3464)
!3464 = !{!3465, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3463, file: !80, line: 279, baseType: !3466, size: 64)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{!193, !3435}
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3463, file: !80, line: 280, baseType: !3457, size: 64, offset: 64)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3463, file: !80, line: 281, baseType: !3466, size: 64, offset: 128)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3463, file: !80, line: 282, baseType: !3466, size: 64, offset: 192)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3463, file: !80, line: 283, baseType: !3466, size: 64, offset: 256)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3463, file: !80, line: 284, baseType: !3466, size: 64, offset: 320)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3463, file: !80, line: 285, baseType: !3466, size: 64, offset: 384)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3463, file: !80, line: 286, baseType: !3466, size: 64, offset: 448)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3463, file: !80, line: 287, baseType: !3466, size: 64, offset: 512)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3463, file: !80, line: 288, baseType: !3466, size: 64, offset: 576)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3463, file: !80, line: 289, baseType: !3466, size: 64, offset: 640)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3463, file: !80, line: 290, baseType: !3466, size: 64, offset: 704)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3463, file: !80, line: 291, baseType: !3466, size: 64, offset: 768)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3463, file: !80, line: 292, baseType: !3466, size: 64, offset: 832)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3463, file: !80, line: 293, baseType: !3466, size: 64, offset: 896)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3463, file: !80, line: 294, baseType: !3466, size: 64, offset: 960)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3463, file: !80, line: 295, baseType: !3466, size: 64, offset: 1024)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3463, file: !80, line: 296, baseType: !3466, size: 64, offset: 1088)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3463, file: !80, line: 297, baseType: !3466, size: 64, offset: 1152)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3463, file: !80, line: 298, baseType: !3466, size: 64, offset: 1216)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3463, file: !80, line: 299, baseType: !3466, size: 64, offset: 1280)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3463, file: !80, line: 300, baseType: !3466, size: 64, offset: 1344)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3463, file: !80, line: 301, baseType: !3466, size: 64, offset: 1408)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !233, file: !73, line: 470, baseType: !3492, size: 64, offset: 768)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3494, line: 82, size: 1408, elements: !3495)
!3494 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3495 = !{!3496, !3497, !3498, !3499, !3500, !3501, !3502, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3577, !3580, !3581}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3493, file: !3494, line: 83, baseType: !240, size: 64)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3493, file: !3494, line: 84, baseType: !240, size: 64, offset: 64)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3493, file: !3494, line: 85, baseType: !3435, size: 64, offset: 128)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3493, file: !3494, line: 86, baseType: !352, size: 64, offset: 192)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3493, file: !3494, line: 87, baseType: !352, size: 64, offset: 256)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3493, file: !3494, line: 88, baseType: !352, size: 64, offset: 320)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3493, file: !3494, line: 90, baseType: !3503, size: 64, offset: 384)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{!193, !3435, !3506}
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3508)
!3508 = !{!3509, !3510, !3511, !3512, !3513, !3514, !3515, !3528, !3541, !3542, !3543, !3544, !3545, !3553, !3554, !3555, !3556, !3557, !3558}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3507, file: !67, line: 96, baseType: !240, size: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3507, file: !67, line: 97, baseType: !3492, size: 64, offset: 64)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3507, file: !67, line: 99, baseType: !655, size: 64, offset: 128)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3507, file: !67, line: 100, baseType: !240, size: 64, offset: 192)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3507, file: !67, line: 102, baseType: !220, size: 8, offset: 256)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3507, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3507, file: !67, line: 105, baseType: !3516, size: 64, offset: 320)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3518)
!3518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3519, line: 262, size: 1600, elements: !3520)
!3519 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3520 = !{!3521, !3522, !3523, !3527}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3518, file: !3519, line: 263, baseType: !2762, size: 256)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3518, file: !3519, line: 264, baseType: !2762, size: 256, offset: 256)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3518, file: !3519, line: 265, baseType: !3524, size: 1024, offset: 512)
!3524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 1024, elements: !3525)
!3525 = !{!3526}
!3526 = !DISubrange(count: 128)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3518, file: !3519, line: 266, baseType: !229, size: 64, offset: 1536)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3507, file: !67, line: 106, baseType: !3529, size: 64, offset: 384)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3531)
!3531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3519, line: 210, size: 256, elements: !3532)
!3532 = !{!3533, !3537, !3539, !3540}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3531, file: !3519, line: 211, baseType: !3534, size: 72)
!3534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1418, size: 72, elements: !3535)
!3535 = !{!3536}
!3536 = !DISubrange(count: 9)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3531, file: !3519, line: 212, baseType: !3538, size: 64, offset: 128)
!3538 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3519, line: 14, baseType: !348)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3531, file: !3519, line: 213, baseType: !441, size: 32, offset: 192)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3531, file: !3519, line: 214, baseType: !441, size: 32, offset: 224)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3507, file: !67, line: 108, baseType: !3466, size: 64, offset: 448)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3507, file: !67, line: 109, baseType: !3457, size: 64, offset: 512)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3507, file: !67, line: 110, baseType: !3466, size: 64, offset: 576)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3507, file: !67, line: 111, baseType: !3457, size: 64, offset: 640)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3507, file: !67, line: 112, baseType: !3546, size: 64, offset: 704)
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3547 = !DISubroutineType(types: !3548)
!3548 = !{!193, !3435, !3549}
!3549 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3550)
!3550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3551)
!3551 = !{!3552}
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3550, file: !80, line: 51, baseType: !193, size: 32)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3507, file: !67, line: 113, baseType: !3466, size: 64, offset: 768)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3507, file: !67, line: 114, baseType: !352, size: 64, offset: 832)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3507, file: !67, line: 115, baseType: !352, size: 64, offset: 896)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3507, file: !67, line: 117, baseType: !3461, size: 64, offset: 960)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3507, file: !67, line: 118, baseType: !3457, size: 64, offset: 1024)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3507, file: !67, line: 120, baseType: !3559, size: 64, offset: 1088)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3493, file: !3494, line: 91, baseType: !3448, size: 64, offset: 448)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3493, file: !3494, line: 92, baseType: !3466, size: 64, offset: 512)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3493, file: !3494, line: 93, baseType: !3457, size: 64, offset: 576)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3493, file: !3494, line: 94, baseType: !3466, size: 64, offset: 640)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3493, file: !3494, line: 95, baseType: !3457, size: 64, offset: 704)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3493, file: !3494, line: 97, baseType: !3466, size: 64, offset: 768)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3493, file: !3494, line: 98, baseType: !3466, size: 64, offset: 832)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3493, file: !3494, line: 100, baseType: !3546, size: 64, offset: 896)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3493, file: !3494, line: 101, baseType: !3466, size: 64, offset: 960)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3493, file: !3494, line: 103, baseType: !3466, size: 64, offset: 1024)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3493, file: !3494, line: 105, baseType: !3466, size: 64, offset: 1088)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3493, file: !3494, line: 107, baseType: !3461, size: 64, offset: 1152)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3493, file: !3494, line: 109, baseType: !3574, size: 64, offset: 1216)
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3576)
!3576 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3494, line: 109, flags: DIFlagFwdDecl)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3493, file: !3494, line: 111, baseType: !3578, size: 64, offset: 1280)
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3494, line: 111, flags: DIFlagFwdDecl)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3493, file: !3494, line: 112, baseType: !670, offset: 1344)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3493, file: !3494, line: 114, baseType: !220, size: 8, offset: 1344)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !233, file: !73, line: 471, baseType: !3506, size: 64, offset: 832)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !233, file: !73, line: 473, baseType: !187, size: 64, offset: 896)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !233, file: !73, line: 475, baseType: !187, size: 64, offset: 960)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !233, file: !73, line: 480, baseType: !1239, size: 192, offset: 1024)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !233, file: !73, line: 484, baseType: !3587, size: 576, offset: 1216)
!3587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3588)
!3588 = !{!3589, !3590, !3591, !3592, !3593, !3594}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3587, file: !73, line: 362, baseType: !244, size: 128)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3587, file: !73, line: 363, baseType: !244, size: 128, offset: 128)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3587, file: !73, line: 364, baseType: !244, size: 128, offset: 256)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3587, file: !73, line: 365, baseType: !244, size: 128, offset: 384)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3587, file: !73, line: 366, baseType: !220, size: 8, offset: 512)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3587, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !233, file: !73, line: 485, baseType: !3596, size: 2304, offset: 1792)
!3596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3597)
!3597 = !{!3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3693, !3697}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3596, file: !80, line: 566, baseType: !3549, size: 32)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3596, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3596, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3596, file: !80, line: 569, baseType: !220, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3596, file: !80, line: 570, baseType: !220, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3596, file: !80, line: 571, baseType: !220, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3596, file: !80, line: 572, baseType: !220, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3596, file: !80, line: 573, baseType: !220, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3596, file: !80, line: 574, baseType: !220, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3596, file: !80, line: 575, baseType: !220, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3596, file: !80, line: 576, baseType: !220, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3596, file: !80, line: 577, baseType: !439, size: 32, offset: 64)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3596, file: !80, line: 578, baseType: !257, offset: 96)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3596, file: !80, line: 580, baseType: !244, size: 128, offset: 128)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3596, file: !80, line: 581, baseType: !1567, size: 192, offset: 256)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3596, file: !80, line: 582, baseType: !3614, size: 64, offset: 448)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3616, line: 43, size: 1472, elements: !3617)
!3616 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3617 = !{!3618, !3619, !3620, !3621, !3622, !3625, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3615, file: !3616, line: 44, baseType: !240, size: 64)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3615, file: !3616, line: 45, baseType: !193, size: 32, offset: 64)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3615, file: !3616, line: 46, baseType: !244, size: 128, offset: 128)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3615, file: !3616, line: 47, baseType: !257, offset: 256)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3615, file: !3616, line: 48, baseType: !3623, size: 64, offset: 256)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3615, file: !3616, line: 49, baseType: !3626, size: 320, offset: 320)
!3626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3627, line: 11, size: 320, elements: !3628)
!3627 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3628 = !{!3629, !3630, !3631, !3636}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3626, file: !3627, line: 16, baseType: !664, size: 128)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3626, file: !3627, line: 17, baseType: !348, size: 64, offset: 128)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3626, file: !3627, line: 18, baseType: !3632, size: 64, offset: 192)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = !DISubroutineType(types: !3634)
!3634 = !{null, !3635}
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3626, file: !3627, line: 19, baseType: !439, size: 32, offset: 256)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3615, file: !3616, line: 50, baseType: !348, size: 64, offset: 640)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3615, file: !3616, line: 51, baseType: !1365, size: 64, offset: 704)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3615, file: !3616, line: 52, baseType: !1365, size: 64, offset: 768)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3615, file: !3616, line: 53, baseType: !1365, size: 64, offset: 832)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3615, file: !3616, line: 54, baseType: !1365, size: 64, offset: 896)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3615, file: !3616, line: 55, baseType: !1365, size: 64, offset: 960)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3615, file: !3616, line: 56, baseType: !348, size: 64, offset: 1024)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3615, file: !3616, line: 57, baseType: !348, size: 64, offset: 1088)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3615, file: !3616, line: 58, baseType: !348, size: 64, offset: 1152)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3615, file: !3616, line: 59, baseType: !348, size: 64, offset: 1216)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3615, file: !3616, line: 60, baseType: !348, size: 64, offset: 1280)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3615, file: !3616, line: 61, baseType: !3435, size: 64, offset: 1344)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3615, file: !3616, line: 62, baseType: !220, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3615, file: !3616, line: 63, baseType: !220, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3596, file: !80, line: 583, baseType: !220, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3596, file: !80, line: 584, baseType: !220, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3596, file: !80, line: 585, baseType: !220, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3596, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3596, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3596, file: !80, line: 592, baseType: !1357, size: 512, offset: 576)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3596, file: !80, line: 593, baseType: !445, size: 64, offset: 1088)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3596, file: !80, line: 594, baseType: !2023, size: 256, offset: 1152)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3596, file: !80, line: 595, baseType: !1546, size: 128, offset: 1408)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3596, file: !80, line: 596, baseType: !3623, size: 64, offset: 1536)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3596, file: !80, line: 597, baseType: !773, size: 32, offset: 1600)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3596, file: !80, line: 598, baseType: !773, size: 32, offset: 1632)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3596, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3596, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3596, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3596, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3596, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3596, file: !80, line: 604, baseType: !220, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3596, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3596, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3596, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3596, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3596, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3596, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3596, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3596, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3596, file: !80, line: 613, baseType: !193, size: 32, offset: 1792)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3596, file: !80, line: 614, baseType: !193, size: 32, offset: 1824)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3596, file: !80, line: 615, baseType: !445, size: 64, offset: 1856)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3596, file: !80, line: 616, baseType: !445, size: 64, offset: 1920)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3596, file: !80, line: 617, baseType: !445, size: 64, offset: 1984)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3596, file: !80, line: 618, baseType: !445, size: 64, offset: 2048)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3596, file: !80, line: 620, baseType: !3684, size: 64, offset: 2112)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3686)
!3686 = !{!3687, !3688, !3689, !3690}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3685, file: !80, line: 537, baseType: !257)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3685, file: !80, line: 538, baseType: !7, size: 32)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3685, file: !80, line: 540, baseType: !244, size: 128, offset: 64)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3685, file: !80, line: 543, baseType: !3691, size: 64, offset: 192)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3596, file: !80, line: 621, baseType: !3694, size: 64, offset: 2176)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{null, !3435, !1509}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3596, file: !80, line: 622, baseType: !3698, size: 64, offset: 2240)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !233, file: !73, line: 486, baseType: !3701, size: 64, offset: 4096)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3703)
!3703 = !{!3704, !3705, !3706, !3710, !3711, !3712}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3702, file: !80, line: 643, baseType: !3463, size: 1472)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3702, file: !80, line: 644, baseType: !3466, size: 64, offset: 1472)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3702, file: !80, line: 645, baseType: !3707, size: 64, offset: 1536)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{null, !3435, !220}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3702, file: !80, line: 646, baseType: !3466, size: 64, offset: 1600)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3702, file: !80, line: 647, baseType: !3457, size: 64, offset: 1664)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3702, file: !80, line: 648, baseType: !3457, size: 64, offset: 1728)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !233, file: !73, line: 493, baseType: !3714, size: 64, offset: 4160)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !94, line: 162, size: 1088, elements: !3716)
!3716 = !{!3717, !3718, !3719, !3803, !3804, !3805, !3806, !3807, !3808, !3811, !3812, !3813, !3814, !3815, !3816, !3817}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3715, file: !94, line: 163, baseType: !244, size: 128)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3715, file: !94, line: 164, baseType: !240, size: 64, offset: 128)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3715, file: !94, line: 165, baseType: !3720, size: 64, offset: 192)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3722)
!3722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !94, line: 105, size: 640, elements: !3723)
!3723 = !{!3724, !3753, !3764, !3769, !3773, !3780, !3784, !3788, !3795, !3799}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3722, file: !94, line: 106, baseType: !3725, size: 64)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{!193, !3714, !3728, !93}
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3730, line: 51, size: 1344, elements: !3731)
!3730 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3731 = !{!3732, !3733, !3735, !3736, !3737, !3746, !3747, !3748, !3749, !3750, !3751, !3752}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3729, file: !3730, line: 52, baseType: !240, size: 64)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3729, file: !3730, line: 53, baseType: !3734, size: 32, offset: 64)
!3734 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3730, line: 28, baseType: !439)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3729, file: !3730, line: 54, baseType: !240, size: 64, offset: 128)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3729, file: !3730, line: 55, baseType: !198, size: 192, offset: 192)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3729, file: !3730, line: 57, baseType: !3738, size: 64, offset: 384)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3730, line: 31, size: 704, elements: !3740)
!3740 = !{!3741, !3742, !3743, !3744, !3745}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3739, file: !3730, line: 32, baseType: !298, size: 64)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3739, file: !3730, line: 33, baseType: !193, size: 32, offset: 64)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3739, file: !3730, line: 34, baseType: !187, size: 64, offset: 128)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3739, file: !3730, line: 35, baseType: !3738, size: 64, offset: 192)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3739, file: !3730, line: 43, baseType: !367, size: 448, offset: 256)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3729, file: !3730, line: 58, baseType: !3738, size: 64, offset: 448)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3729, file: !3730, line: 59, baseType: !3728, size: 64, offset: 512)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3729, file: !3730, line: 60, baseType: !3728, size: 64, offset: 576)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3729, file: !3730, line: 61, baseType: !3728, size: 64, offset: 640)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3729, file: !3730, line: 63, baseType: !236, size: 512, offset: 704)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3729, file: !3730, line: 65, baseType: !348, size: 64, offset: 1216)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3729, file: !3730, line: 66, baseType: !187, size: 64, offset: 1280)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3722, file: !94, line: 108, baseType: !3754, size: 64, offset: 64)
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = !DISubroutineType(types: !3756)
!3756 = !{!193, !3714, !3757, !93}
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !94, line: 63, size: 640, elements: !3759)
!3759 = !{!3760, !3761, !3762}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3758, file: !94, line: 64, baseType: !202, size: 64)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3758, file: !94, line: 65, baseType: !193, size: 32, offset: 64)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3758, file: !94, line: 66, baseType: !3763, size: 512, offset: 96)
!3763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 512, elements: !1800)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3722, file: !94, line: 110, baseType: !3765, size: 64, offset: 128)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DISubroutineType(types: !3767)
!3767 = !{!193, !3714, !7, !3768}
!3768 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !221, line: 164, baseType: !348)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3722, file: !94, line: 111, baseType: !3770, size: 64, offset: 192)
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3771 = !DISubroutineType(types: !3772)
!3772 = !{null, !3714, !7}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3722, file: !94, line: 112, baseType: !3774, size: 64, offset: 256)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = !DISubroutineType(types: !3776)
!3776 = !{!193, !3714, !3728, !3777, !7, !3779, !2745}
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !439)
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3722, file: !94, line: 117, baseType: !3781, size: 64, offset: 320)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!193, !3714, !7, !7, !187}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3722, file: !94, line: 119, baseType: !3785, size: 64, offset: 384)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{null, !3714, !7, !7}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3722, file: !94, line: 121, baseType: !3789, size: 64, offset: 448)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{!193, !3714, !3792, !220}
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3794, line: 11, flags: DIFlagFwdDecl)
!3794 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3722, file: !94, line: 122, baseType: !3796, size: 64, offset: 512)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DISubroutineType(types: !3798)
!3798 = !{null, !3714, !3792}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3722, file: !94, line: 123, baseType: !3800, size: 64, offset: 576)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DISubroutineType(types: !3802)
!3802 = !{!193, !3714, !3757, !3779, !2745}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3715, file: !94, line: 166, baseType: !187, size: 64, offset: 256)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3715, file: !94, line: 167, baseType: !7, size: 32, offset: 320)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3715, file: !94, line: 168, baseType: !7, size: 32, offset: 352)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3715, file: !94, line: 171, baseType: !202, size: 64, offset: 384)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3715, file: !94, line: 172, baseType: !93, size: 32, offset: 448)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3715, file: !94, line: 173, baseType: !3809, size: 64, offset: 512)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !94, line: 134, flags: DIFlagFwdDecl)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3715, file: !94, line: 175, baseType: !3714, size: 64, offset: 576)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3715, file: !94, line: 182, baseType: !3768, size: 64, offset: 640)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3715, file: !94, line: 183, baseType: !7, size: 32, offset: 704)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3715, file: !94, line: 184, baseType: !7, size: 32, offset: 736)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3715, file: !94, line: 185, baseType: !764, size: 128, offset: 768)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3715, file: !94, line: 186, baseType: !1239, size: 192, offset: 896)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3715, file: !94, line: 187, baseType: !3818, offset: 1088)
!3818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2393)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !233, file: !73, line: 499, baseType: !244, size: 128, offset: 4224)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !233, file: !73, line: 502, baseType: !3821, size: 64, offset: 4352)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3823)
!3823 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !233, file: !73, line: 504, baseType: !3825, size: 64, offset: 4416)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !233, file: !73, line: 505, baseType: !445, size: 64, offset: 4480)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !233, file: !73, line: 510, baseType: !445, size: 64, offset: 4544)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !233, file: !73, line: 511, baseType: !3829, size: 64, offset: 4608)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3831)
!3831 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !233, file: !73, line: 513, baseType: !3833, size: 64, offset: 4672)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3835)
!3835 = !{!3836, !3837}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3834, file: !73, line: 293, baseType: !7, size: 32)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3834, file: !73, line: 294, baseType: !348, size: 64, offset: 64)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !233, file: !73, line: 515, baseType: !244, size: 128, offset: 4736)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !233, file: !73, line: 526, baseType: !3840, offset: 4864)
!3840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3841, line: 5, elements: !271)
!3841 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !233, file: !73, line: 528, baseType: !3728, size: 64, offset: 4864)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !233, file: !73, line: 529, baseType: !202, size: 64, offset: 4928)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !233, file: !73, line: 534, baseType: !535, size: 32, offset: 4992)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !233, file: !73, line: 535, baseType: !439, size: 32, offset: 5024)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !233, file: !73, line: 537, baseType: !257, offset: 5056)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !233, file: !73, line: 538, baseType: !244, size: 128, offset: 5056)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !233, file: !73, line: 540, baseType: !3849, size: 64, offset: 5184)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3851, line: 54, size: 960, elements: !3852)
!3851 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3852 = !{!3853, !3854, !3855, !3856, !3857, !3858, !3859, !3863, !3867, !3868, !3869, !3870, !3874, !3878, !3879}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3850, file: !3851, line: 55, baseType: !240, size: 64)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3850, file: !3851, line: 56, baseType: !655, size: 64, offset: 64)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3850, file: !3851, line: 58, baseType: !352, size: 64, offset: 128)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3850, file: !3851, line: 59, baseType: !352, size: 64, offset: 192)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3850, file: !3851, line: 60, baseType: !250, size: 64, offset: 256)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3850, file: !3851, line: 62, baseType: !3448, size: 64, offset: 320)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3850, file: !3851, line: 63, baseType: !3860, size: 64, offset: 384)
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = !DISubroutineType(types: !3862)
!3862 = !{!298, !3435, !3455}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3850, file: !3851, line: 65, baseType: !3864, size: 64, offset: 448)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = !DISubroutineType(types: !3866)
!3866 = !{null, !3849}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3850, file: !3851, line: 66, baseType: !3457, size: 64, offset: 512)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3850, file: !3851, line: 68, baseType: !3466, size: 64, offset: 576)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3850, file: !3851, line: 70, baseType: !3251, size: 64, offset: 640)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3850, file: !3851, line: 71, baseType: !3871, size: 64, offset: 704)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DISubroutineType(types: !3873)
!3873 = !{!229, !3435}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3850, file: !3851, line: 73, baseType: !3875, size: 64, offset: 768)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{null, !3435, !3283, !3284}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3850, file: !3851, line: 75, baseType: !3461, size: 64, offset: 832)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3850, file: !3851, line: 77, baseType: !3578, size: 64, offset: 896)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !233, file: !73, line: 541, baseType: !352, size: 64, offset: 5248)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !233, file: !73, line: 543, baseType: !3457, size: 64, offset: 5312)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !233, file: !73, line: 544, baseType: !3883, size: 64, offset: 5376)
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !233, file: !73, line: 545, baseType: !3886, size: 64, offset: 5440)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !233, file: !73, line: 547, baseType: !220, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !233, file: !73, line: 548, baseType: !220, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !233, file: !73, line: 549, baseType: !220, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !233, file: !73, line: 550, baseType: !220, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !206, file: !199, line: 116, baseType: !3893, size: 64, offset: 256)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DISubroutineType(types: !3895)
!3895 = !{!220, !223, !240}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !206, file: !199, line: 118, baseType: !3897, size: 64, offset: 320)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{!193, !223, !240, !7, !187, !345}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !206, file: !199, line: 123, baseType: !3901, size: 64, offset: 384)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{!193, !223, !240, !3904, !345}
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !206, file: !199, line: 126, baseType: !3906, size: 64, offset: 448)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = !DISubroutineType(types: !3908)
!3908 = !{!240, !223}
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !206, file: !199, line: 127, baseType: !3906, size: 64, offset: 512)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !206, file: !199, line: 128, baseType: !3911, size: 64, offset: 576)
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = !DISubroutineType(types: !3913)
!3913 = !{!202, !223}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !206, file: !199, line: 130, baseType: !3915, size: 64, offset: 640)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = !DISubroutineType(types: !3917)
!3917 = !{!202, !223, !202}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !206, file: !199, line: 133, baseType: !3919, size: 64, offset: 704)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!202, !223, !240}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !206, file: !199, line: 135, baseType: !3923, size: 64, offset: 768)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{!193, !223, !240, !240, !7, !7, !3926}
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !199, line: 43, size: 640, elements: !3928)
!3928 = !{!3929, !3930, !3931}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3927, file: !199, line: 44, baseType: !202, size: 64)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3927, file: !199, line: 45, baseType: !7, size: 32, offset: 64)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3927, file: !199, line: 46, baseType: !3932, size: 512, offset: 128)
!3932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 512, elements: !1395)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !206, file: !199, line: 140, baseType: !3915, size: 64, offset: 832)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !206, file: !199, line: 143, baseType: !3911, size: 64, offset: 896)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !206, file: !199, line: 145, baseType: !209, size: 64, offset: 960)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !206, file: !199, line: 146, baseType: !3937, size: 64, offset: 1024)
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3938, size: 64)
!3938 = !DISubroutineType(types: !3939)
!3939 = !{!193, !223, !3940}
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3941, size: 64)
!3941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !199, line: 29, size: 128, elements: !3942)
!3942 = !{!3943, !3944, !3945}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3941, file: !199, line: 30, baseType: !7, size: 32)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3941, file: !199, line: 31, baseType: !7, size: 32, offset: 32)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3941, file: !199, line: 32, baseType: !223, size: 64, offset: 64)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !206, file: !199, line: 148, baseType: !3947, size: 64, offset: 1088)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = !DISubroutineType(types: !3949)
!3949 = !{!193, !223, !3435}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !198, file: !199, line: 20, baseType: !3435, size: 64, offset: 128)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !189, file: !190, line: 355, baseType: !188, size: 64, offset: 320)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !189, file: !190, line: 356, baseType: !244, size: 128, offset: 384)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !189, file: !190, line: 357, baseType: !244, size: 128, offset: 512)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !189, file: !190, line: 358, baseType: !244, size: 128, offset: 640)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !189, file: !190, line: 359, baseType: !244, size: 128, offset: 768)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !189, file: !190, line: 360, baseType: !3957, size: 32, offset: 896)
!3957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !190, line: 179, size: 32, elements: !3958)
!3958 = !{!3959, !3960, !3961, !3962, !3963, !3964}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !3957, file: !190, line: 180, baseType: !439, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3957, file: !190, line: 181, baseType: !439, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !3957, file: !190, line: 182, baseType: !439, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !3957, file: !190, line: 183, baseType: !439, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !3957, file: !190, line: 184, baseType: !439, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3957, file: !190, line: 185, baseType: !439, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !189, file: !190, line: 361, baseType: !3966, size: 32, offset: 928)
!3966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !190, line: 190, size: 32, elements: !3967)
!3967 = !{!3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !3966, file: !190, line: 191, baseType: !439, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !3966, file: !190, line: 192, baseType: !439, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !3966, file: !190, line: 193, baseType: !439, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !3966, file: !190, line: 194, baseType: !439, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !3966, file: !190, line: 195, baseType: !439, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !3966, file: !190, line: 196, baseType: !439, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !3966, file: !190, line: 197, baseType: !439, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !3966, file: !190, line: 198, baseType: !439, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !3966, file: !190, line: 199, baseType: !439, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !3966, file: !190, line: 200, baseType: !439, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !3966, file: !190, line: 201, baseType: !439, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !3966, file: !190, line: 202, baseType: !439, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !3966, file: !190, line: 203, baseType: !439, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3966, file: !190, line: 204, baseType: !439, size: 19, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !189, file: !190, line: 362, baseType: !3983, size: 960, offset: 960)
!3983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !190, line: 234, size: 960, elements: !3984)
!3984 = !{!3985, !3987, !3994, !3996, !3997, !3998, !4003, !4006}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !3983, file: !190, line: 235, baseType: !3986, size: 64)
!3986 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !190, line: 217, baseType: !2098)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3983, file: !190, line: 236, baseType: !3988, size: 32, offset: 64)
!3988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !190, line: 227, size: 32, elements: !3989)
!3989 = !{!3990, !3991, !3992, !3993}
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !3988, file: !190, line: 228, baseType: !439, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !3988, file: !190, line: 229, baseType: !439, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !3988, file: !190, line: 230, baseType: !439, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3988, file: !190, line: 231, baseType: !439, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !3983, file: !190, line: 237, baseType: !3995, size: 64, offset: 128)
!3995 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !190, line: 218, baseType: !445)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !3983, file: !190, line: 238, baseType: !298, size: 64, offset: 192)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !3983, file: !190, line: 239, baseType: !244, size: 128, offset: 256)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !3983, file: !190, line: 240, baseType: !3999, size: 320, offset: 384)
!3999 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !190, line: 219, baseType: !4000)
!4000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 320, elements: !4001)
!4001 = !{!4002}
!4002 = !DISubrange(count: 40)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !3983, file: !190, line: 241, baseType: !4004, size: 160, offset: 704)
!4004 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !190, line: 220, baseType: !4005)
!4005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 160, elements: !2263)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !3983, file: !190, line: 242, baseType: !4007, size: 64, offset: 896)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !196, line: 899, size: 192, elements: !4009)
!4009 = !{!4010, !4012, !4017, !4023, !4030, !4036, !4042, !4050}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4008, file: !196, line: 900, baseType: !4011, size: 32)
!4011 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !196, line: 635, baseType: !439)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !4008, file: !196, line: 904, baseType: !4013, size: 128)
!4013 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4008, file: !196, line: 901, size: 128, elements: !4014)
!4014 = !{!4015, !4016}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4013, file: !196, line: 902, baseType: !4011, size: 32)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4013, file: !196, line: 903, baseType: !445, size: 64, offset: 64)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4008, file: !196, line: 910, baseType: !4018, size: 128)
!4018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4008, file: !196, line: 906, size: 128, elements: !4019)
!4019 = !{!4020, !4021, !4022}
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4018, file: !196, line: 907, baseType: !4011, size: 32)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4018, file: !196, line: 908, baseType: !439, size: 32, offset: 32)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !4018, file: !196, line: 909, baseType: !298, size: 64, offset: 64)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !4008, file: !196, line: 916, baseType: !4024, size: 128)
!4024 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4008, file: !196, line: 912, size: 128, elements: !4025)
!4025 = !{!4026, !4027, !4028}
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4024, file: !196, line: 913, baseType: !4011, size: 32)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4024, file: !196, line: 914, baseType: !439, size: 32, offset: 32)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !4024, file: !196, line: 915, baseType: !4029, size: 64, offset: 64)
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !4008, file: !196, line: 922, baseType: !4031, size: 128)
!4031 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4008, file: !196, line: 918, size: 128, elements: !4032)
!4032 = !{!4033, !4034, !4035}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4031, file: !196, line: 919, baseType: !4011, size: 32)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4031, file: !196, line: 920, baseType: !439, size: 32, offset: 32)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !4031, file: !196, line: 921, baseType: !4007, size: 64, offset: 64)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !4008, file: !196, line: 928, baseType: !4037, size: 128)
!4037 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4008, file: !196, line: 924, size: 128, elements: !4038)
!4038 = !{!4039, !4040, !4041}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4037, file: !196, line: 925, baseType: !4011, size: 32)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !4037, file: !196, line: 926, baseType: !4011, size: 32, offset: 32)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !4037, file: !196, line: 927, baseType: !195, size: 64, offset: 64)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !4008, file: !196, line: 935, baseType: !4043, size: 192)
!4043 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4008, file: !196, line: 930, size: 192, elements: !4044)
!4044 = !{!4045, !4046, !4047, !4049}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4043, file: !196, line: 931, baseType: !4011, size: 32)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !4043, file: !196, line: 932, baseType: !439, size: 32, offset: 32)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !4043, file: !196, line: 933, baseType: !4048, size: 64, offset: 64)
!4048 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !196, line: 128, baseType: !445)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !4043, file: !196, line: 934, baseType: !439, size: 32, offset: 128)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !4008, file: !196, line: 941, baseType: !4051, size: 96)
!4051 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4008, file: !196, line: 937, size: 96, elements: !4052)
!4052 = !{!4053, !4054, !4055}
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4051, file: !196, line: 938, baseType: !4011, size: 32)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !4051, file: !196, line: 939, baseType: !439, size: 32, offset: 32)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !4051, file: !196, line: 940, baseType: !439, size: 32, offset: 64)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !189, file: !190, line: 363, baseType: !4057, size: 1344, offset: 1920)
!4057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !190, line: 275, size: 1344, elements: !4058)
!4058 = !{!4059, !4060, !4070}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4057, file: !190, line: 276, baseType: !193, size: 32)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4057, file: !190, line: 277, baseType: !4061, size: 32, offset: 32)
!4061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !190, line: 254, size: 32, elements: !4062)
!4062 = !{!4063, !4064, !4065, !4066, !4067, !4068, !4069}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !4061, file: !190, line: 255, baseType: !439, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !4061, file: !190, line: 256, baseType: !439, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !4061, file: !190, line: 257, baseType: !439, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !4061, file: !190, line: 258, baseType: !439, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !4061, file: !190, line: 259, baseType: !439, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !4061, file: !190, line: 260, baseType: !439, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4061, file: !190, line: 261, baseType: !439, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !4057, file: !190, line: 278, baseType: !4071, size: 1280, offset: 64)
!4071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4072, size: 1280, elements: !4083)
!4072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !190, line: 264, size: 256, elements: !4073)
!4073 = !{!4074, !4080, !4081, !4082}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4072, file: !190, line: 269, baseType: !4075, size: 8)
!4075 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4072, file: !190, line: 265, size: 8, elements: !4076)
!4076 = !{!4077, !4078, !4079}
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !4075, file: !190, line: 266, baseType: !1417, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !4075, file: !190, line: 267, baseType: !1417, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4075, file: !190, line: 268, baseType: !1417, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4072, file: !190, line: 270, baseType: !193, size: 32, offset: 32)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !4072, file: !190, line: 271, baseType: !193, size: 32, offset: 64)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4072, file: !190, line: 272, baseType: !244, size: 128, offset: 128)
!4083 = !{!4084}
!4084 = !DISubrange(count: 5)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !189, file: !190, line: 364, baseType: !4086, size: 640, offset: 3264)
!4086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !190, line: 315, size: 640, elements: !4087)
!4087 = !{!4088, !4089, !4090, !4091, !4092, !4097, !4106, !4107, !4108}
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !4086, file: !190, line: 316, baseType: !195, size: 64)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !4086, file: !190, line: 317, baseType: !445, size: 64, offset: 64)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !4086, file: !190, line: 318, baseType: !445, size: 64, offset: 128)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4086, file: !190, line: 319, baseType: !244, size: 128, offset: 192)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4086, file: !190, line: 320, baseType: !4093, size: 8, offset: 320)
!4093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !190, line: 305, size: 8, elements: !4094)
!4094 = !{!4095, !4096}
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !4093, file: !190, line: 306, baseType: !1417, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !4093, file: !190, line: 307, baseType: !1417, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !4086, file: !190, line: 321, baseType: !4098, size: 128, offset: 384)
!4098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !190, line: 310, size: 128, elements: !4099)
!4099 = !{!4100, !4105}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4098, file: !190, line: 311, baseType: !4101, size: 64)
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4102, size: 64)
!4102 = !DISubroutineType(types: !4103)
!4103 = !{null, !4104}
!4104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4098, file: !190, line: 312, baseType: !3435, size: 64, offset: 64)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !4086, file: !190, line: 322, baseType: !3614, size: 64, offset: 512)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !4086, file: !190, line: 323, baseType: !193, size: 32, offset: 576)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !4086, file: !190, line: 324, baseType: !193, size: 32, offset: 608)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !189, file: !190, line: 365, baseType: !4110, size: 192, offset: 3904)
!4110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !190, line: 297, size: 192, elements: !4111)
!4111 = !{!4112, !4113, !4117, !4118}
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4110, file: !190, line: 298, baseType: !193, size: 32)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4110, file: !190, line: 299, baseType: !4114, size: 8, offset: 32)
!4114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !190, line: 283, size: 8, elements: !4115)
!4115 = !{!4116}
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4114, file: !190, line: 284, baseType: !1417, size: 8, flags: DIFlagBitField, extraData: i64 0)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !4110, file: !190, line: 300, baseType: !193, size: 32, offset: 64)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !4110, file: !190, line: 301, baseType: !4119, size: 64, offset: 128)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !190, line: 287, size: 64, elements: !4121)
!4121 = !{!4122, !4127, !4128, !4129}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4120, file: !190, line: 291, baseType: !4123, size: 8)
!4123 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4120, file: !190, line: 288, size: 8, elements: !4124)
!4124 = !{!4125, !4126}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !4123, file: !190, line: 289, baseType: !1417, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4123, file: !190, line: 290, baseType: !1417, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4120, file: !190, line: 292, baseType: !1417, size: 8, offset: 8)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !4120, file: !190, line: 293, baseType: !1417, size: 8, offset: 16)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !4120, file: !190, line: 294, baseType: !193, size: 32, offset: 32)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !189, file: !190, line: 366, baseType: !4131, size: 64, offset: 4096)
!4131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !190, line: 209, size: 64, elements: !4132)
!4132 = !{!4133}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4131, file: !190, line: 210, baseType: !4134, size: 64)
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !190, line: 84, flags: DIFlagFwdDecl)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !189, file: !190, line: 367, baseType: !4137, size: 384, offset: 4160)
!4137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !190, line: 341, size: 384, elements: !4138)
!4138 = !{!4139, !4142, !4143, !4144}
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !4137, file: !190, line: 342, baseType: !4140, size: 64)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4008)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4137, file: !190, line: 343, baseType: !244, size: 128, offset: 64)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !4137, file: !190, line: 344, baseType: !4140, size: 64, offset: 192)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !4137, file: !190, line: 345, baseType: !244, size: 128, offset: 256)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !189, file: !190, line: 368, baseType: !4146, size: 64, offset: 4544)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !190, line: 122, size: 1216, elements: !4148)
!4148 = !{!4149, !4150, !4151, !4156, !4160, !4164, !4165, !4166}
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !4147, file: !190, line: 123, baseType: !3529, size: 64)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !4147, file: !190, line: 124, baseType: !244, size: 128, offset: 64)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4147, file: !190, line: 125, baseType: !4152, size: 64, offset: 192)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DISubroutineType(types: !4154)
!4154 = !{!220, !240, !4155}
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !4147, file: !190, line: 126, baseType: !4157, size: 64, offset: 256)
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4158, size: 64)
!4158 = !DISubroutineType(types: !4159)
!4159 = !{!193, !188, !3529}
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4147, file: !190, line: 127, baseType: !4161, size: 64, offset: 320)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = !DISubroutineType(types: !4163)
!4163 = !{null, !188}
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !4147, file: !190, line: 128, baseType: !3457, size: 64, offset: 384)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !4147, file: !190, line: 129, baseType: !3457, size: 64, offset: 448)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4147, file: !190, line: 130, baseType: !4167, size: 704, offset: 512)
!4167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !190, line: 108, size: 704, elements: !4168)
!4168 = !{!4169, !4170, !4174, !4175, !4176}
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4167, file: !190, line: 109, baseType: !236, size: 512)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !4167, file: !190, line: 110, baseType: !4171, size: 64, offset: 512)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4172, size: 64)
!4172 = !DISubroutineType(types: !4173)
!4173 = !{!193, !188}
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !4167, file: !190, line: 111, baseType: !4161, size: 64, offset: 576)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4167, file: !190, line: 112, baseType: !220, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !4167, file: !190, line: 113, baseType: !220, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !189, file: !190, line: 369, baseType: !4178, size: 64, offset: 4608)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !190, line: 138, size: 256, elements: !4180)
!4180 = !{!4181, !4182, !4186, !4190}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4179, file: !190, line: 139, baseType: !188, size: 64)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !4179, file: !190, line: 140, baseType: !4183, size: 64, offset: 64)
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 64)
!4184 = !DISubroutineType(types: !4185)
!4185 = !{!193, !188, !439}
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4179, file: !190, line: 141, baseType: !4187, size: 64, offset: 128)
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4188, size: 64)
!4188 = !DISubroutineType(types: !4189)
!4189 = !{null, !188, !439}
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !4179, file: !190, line: 142, baseType: !4161, size: 64, offset: 192)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !189, file: !190, line: 370, baseType: !4192, size: 64, offset: 4672)
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_driver", file: !190, line: 162, size: 2816, elements: !4194)
!4194 = !{!4195, !4199, !4200, !4201, !4202, !4211, !4212}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4193, file: !190, line: 163, baseType: !4196, size: 640)
!4196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 640, elements: !4197)
!4197 = !{!4198}
!4198 = !DISubrange(count: 80)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4193, file: !190, line: 164, baseType: !4196, size: 640, offset: 640)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !4193, file: !190, line: 165, baseType: !3529, size: 64, offset: 1280)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4193, file: !190, line: 166, baseType: !7, size: 32, offset: 1344)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4193, file: !190, line: 167, baseType: !4203, size: 192, offset: 1408)
!4203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_ops", file: !190, line: 154, size: 192, elements: !4204)
!4204 = !{!4205, !4207, !4209}
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !4203, file: !190, line: 155, baseType: !4206, size: 64)
!4206 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_add", file: !190, line: 150, baseType: !4171)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4203, file: !190, line: 156, baseType: !4208, size: 64, offset: 64)
!4208 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_remove", file: !190, line: 151, baseType: !4171)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !4203, file: !190, line: 157, baseType: !4210, size: 64, offset: 128)
!4210 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_notify", file: !190, line: 152, baseType: !4187)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !4193, file: !190, line: 168, baseType: !3507, size: 1152, offset: 1600)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4193, file: !190, line: 169, baseType: !655, size: 64, offset: 2752)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !189, file: !190, line: 371, baseType: !4214, size: 64, offset: 4736)
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4216)
!4216 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !190, line: 348, flags: DIFlagFwdDecl)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !189, file: !190, line: 372, baseType: !187, size: 64, offset: 4800)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !189, file: !190, line: 373, baseType: !233, size: 5568, offset: 4864)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !189, file: !190, line: 374, baseType: !7, size: 32, offset: 10432)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !189, file: !190, line: 375, baseType: !7, size: 32, offset: 10464)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !189, file: !190, line: 376, baseType: !244, size: 128, offset: 10496)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !189, file: !190, line: 377, baseType: !1239, size: 192, offset: 10624)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !189, file: !190, line: 378, baseType: !4161, size: 64, offset: 10816)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_dma", file: !4226, line: 41, size: 384, elements: !4227)
!4226 = !DIFile(filename: "./include/linux/acpi_dma.h", directory: "/home/lizy2001/genbc/linux")
!4227 = !{!4228, !4229, !4230, !4533, !4534, !4535}
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "dma_controllers", scope: !4225, file: !4226, line: 42, baseType: !244, size: 128)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4225, file: !4226, line: 43, baseType: !3435, size: 64, offset: 128)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_dma_xlate", scope: !4225, file: !4226, line: 44, baseType: !4231, size: 64, offset: 192)
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4232 = !DISubroutineType(types: !4233)
!4233 = !{!4234, !4527, !4224}
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 64)
!4235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_chan", file: !108, line: 329, size: 832, elements: !4236)
!4236 = !{!4237, !4495, !4496, !4497, !4498, !4499, !4506, !4507, !4508, !4514, !4515, !4516, !4525, !4526}
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4235, file: !108, line: 330, baseType: !4238, size: 64)
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4239, size: 64)
!4239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_device", file: !108, line: 844, size: 3072, elements: !4240)
!4240 = !{!4241, !4242, !4243, !4244, !4245, !4246, !4263, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4295, !4299, !4364, !4369, !4374, !4378, !4382, !4386, !4399, !4403, !4407, !4411, !4435, !4439, !4457, !4475, !4476, !4477, !4478, !4479, !4490, !4491}
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4239, file: !108, line: 845, baseType: !3425, size: 32)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "chancnt", scope: !4239, file: !108, line: 846, baseType: !7, size: 32, offset: 32)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "privatecnt", scope: !4239, file: !108, line: 847, baseType: !7, size: 32, offset: 64)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !4239, file: !108, line: 848, baseType: !244, size: 128, offset: 128)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "global_node", scope: !4239, file: !108, line: 849, baseType: !244, size: 128, offset: 256)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4239, file: !108, line: 850, baseType: !4247, size: 192, offset: 384)
!4247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_filter", file: !108, line: 762, size: 192, elements: !4248)
!4248 = !{!4249, !4254, !4255}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4247, file: !108, line: 763, baseType: !4250, size: 64)
!4250 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_filter_fn", file: !108, line: 529, baseType: !4251)
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4252 = !DISubroutineType(types: !4253)
!4253 = !{!220, !4234, !187}
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "mapcnt", scope: !4247, file: !108, line: 764, baseType: !193, size: 32, offset: 64)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !4247, file: !108, line: 765, baseType: !4256, size: 64, offset: 128)
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4258)
!4258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_slave_map", file: !108, line: 749, size: 192, elements: !4259)
!4259 = !{!4260, !4261, !4262}
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "devname", scope: !4258, file: !108, line: 750, baseType: !240, size: 64)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "slave", scope: !4258, file: !108, line: 751, baseType: !240, size: 64, offset: 64)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !4258, file: !108, line: 752, baseType: !187, size: 64, offset: 128)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "cap_mask", scope: !4239, file: !108, line: 851, baseType: !4264, size: 64, offset: 576)
!4264 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_cap_mask_t", file: !108, line: 230, baseType: !4265)
!4265 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !108, line: 230, size: 64, elements: !4266)
!4266 = !{!4267}
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4265, file: !108, line: 230, baseType: !1435, size: 64)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "desc_metadata_modes", scope: !4239, file: !108, line: 852, baseType: !107, size: 32, offset: 640)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "max_xor", scope: !4239, file: !108, line: 853, baseType: !340, size: 16, offset: 672)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "max_pq", scope: !4239, file: !108, line: 854, baseType: !340, size: 16, offset: 688)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "copy_align", scope: !4239, file: !108, line: 855, baseType: !113, size: 32, offset: 704)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "xor_align", scope: !4239, file: !108, line: 856, baseType: !113, size: 32, offset: 736)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "pq_align", scope: !4239, file: !108, line: 857, baseType: !113, size: 32, offset: 768)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "fill_align", scope: !4239, file: !108, line: 858, baseType: !113, size: 32, offset: 800)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !4239, file: !108, line: 861, baseType: !193, size: 32, offset: 832)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4239, file: !108, line: 862, baseType: !3435, size: 64, offset: 896)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4239, file: !108, line: 863, baseType: !655, size: 64, offset: 960)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "chan_ida", scope: !4239, file: !108, line: 864, baseType: !4279, size: 128, offset: 1024)
!4279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !3312, line: 244, size: 128, elements: !4280)
!4280 = !{!4281}
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4279, file: !3312, line: 245, baseType: !764, size: 128)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "chan_mutex", scope: !4239, file: !108, line: 865, baseType: !1239, size: 192, offset: 1152)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "src_addr_widths", scope: !4239, file: !108, line: 867, baseType: !439, size: 32, offset: 1344)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "dst_addr_widths", scope: !4239, file: !108, line: 868, baseType: !439, size: 32, offset: 1376)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "directions", scope: !4239, file: !108, line: 869, baseType: !439, size: 32, offset: 1408)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "min_burst", scope: !4239, file: !108, line: 870, baseType: !439, size: 32, offset: 1440)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "max_burst", scope: !4239, file: !108, line: 871, baseType: !439, size: 32, offset: 1472)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "max_sg_burst", scope: !4239, file: !108, line: 872, baseType: !439, size: 32, offset: 1504)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_reuse", scope: !4239, file: !108, line: 873, baseType: !220, size: 8, offset: 1536)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "residue_granularity", scope: !4239, file: !108, line: 874, baseType: !122, size: 32, offset: 1568)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "device_alloc_chan_resources", scope: !4239, file: !108, line: 876, baseType: !4292, size: 64, offset: 1600)
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4293 = !DISubroutineType(types: !4294)
!4294 = !{!193, !4234}
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "device_free_chan_resources", scope: !4239, file: !108, line: 877, baseType: !4296, size: 64, offset: 1664)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = !DISubroutineType(types: !4298)
!4298 = !{null, !4234}
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_memcpy", scope: !4239, file: !108, line: 879, baseType: !4300, size: 64, offset: 1728)
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = !DISubroutineType(types: !4302)
!4302 = !{!4303, !4234, !986, !986, !345, !348}
!4303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4304, size: 64)
!4304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_async_tx_descriptor", file: !108, line: 598, size: 704, elements: !4305)
!4305 = !{!4306, !4308, !4309, !4310, !4311, !4315, !4319, !4321, !4332, !4333, !4346, !4347}
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !4304, file: !108, line: 599, baseType: !4307, size: 32)
!4307 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_cookie_t", file: !108, line: 22, baseType: !1509)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4304, file: !108, line: 600, baseType: !127, size: 32, offset: 32)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !4304, file: !108, line: 601, baseType: !986, size: 64, offset: 64)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "chan", scope: !4304, file: !108, line: 602, baseType: !4234, size: 64, offset: 128)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "tx_submit", scope: !4304, file: !108, line: 603, baseType: !4312, size: 64, offset: 192)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = !DISubroutineType(types: !4314)
!4314 = !{!4307, !4303}
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "desc_free", scope: !4304, file: !108, line: 604, baseType: !4316, size: 64, offset: 256)
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4317 = !DISubroutineType(types: !4318)
!4318 = !{!193, !4303}
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !4304, file: !108, line: 605, baseType: !4320, size: 64, offset: 320)
!4320 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_async_tx_callback", file: !108, line: 531, baseType: !492)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "callback_result", scope: !4304, file: !108, line: 606, baseType: !4322, size: 64, offset: 384)
!4322 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_async_tx_callback_result", file: !108, line: 545, baseType: !4323)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = !DISubroutineType(types: !4325)
!4325 = !{null, !187, !4326}
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4327, size: 64)
!4327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4328)
!4328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmaengine_result", file: !108, line: 540, size: 64, elements: !4329)
!4329 = !{!4330, !4331}
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !4328, file: !108, line: 541, baseType: !139, size: 32)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "residue", scope: !4328, file: !108, line: 542, baseType: !439, size: 32, offset: 32)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "callback_param", scope: !4304, file: !108, line: 607, baseType: !187, size: 64, offset: 448)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !4304, file: !108, line: 608, baseType: !4334, size: 64, offset: 512)
!4334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4335, size: 64)
!4335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmaengine_unmap_data", file: !108, line: 548, size: 256, elements: !4336)
!4336 = !{!4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "map_cnt", scope: !4335, file: !108, line: 552, baseType: !1417, size: 8)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "to_cnt", scope: !4335, file: !108, line: 554, baseType: !1417, size: 8, offset: 8)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "from_cnt", scope: !4335, file: !108, line: 555, baseType: !1417, size: 8, offset: 16)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "bidi_cnt", scope: !4335, file: !108, line: 556, baseType: !1417, size: 8, offset: 24)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4335, file: !108, line: 557, baseType: !3435, size: 64, offset: 64)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !4335, file: !108, line: 558, baseType: !3425, size: 32, offset: 128)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4335, file: !108, line: 559, baseType: !345, size: 64, offset: 192)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4335, file: !108, line: 560, baseType: !4345, offset: 256)
!4345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !986, elements: !2393)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "desc_metadata_mode", scope: !4304, file: !108, line: 609, baseType: !107, size: 32, offset: 576)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_ops", scope: !4304, file: !108, line: 610, baseType: !4348, size: 64, offset: 640)
!4348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4349, size: 64)
!4349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_descriptor_metadata_ops", file: !108, line: 565, size: 192, elements: !4350)
!4350 = !{!4351, !4355, !4360}
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !4349, file: !108, line: 566, baseType: !4352, size: 64)
!4352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4353, size: 64)
!4353 = !DISubroutineType(types: !4354)
!4354 = !{!193, !4303, !187, !345}
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "get_ptr", scope: !4349, file: !108, line: 569, baseType: !4356, size: 64, offset: 64)
!4356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4357, size: 64)
!4357 = !DISubroutineType(types: !4358)
!4358 = !{!187, !4303, !4359, !4359}
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "set_len", scope: !4349, file: !108, line: 571, baseType: !4361, size: 64, offset: 128)
!4361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4362, size: 64)
!4362 = !DISubroutineType(types: !4363)
!4363 = !{!193, !4303, !345}
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_xor", scope: !4239, file: !108, line: 882, baseType: !4365, size: 64, offset: 1792)
!4365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4366, size: 64)
!4366 = !DISubroutineType(types: !4367)
!4367 = !{!4303, !4234, !986, !4368, !7, !345, !348}
!4368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_xor_val", scope: !4239, file: !108, line: 885, baseType: !4370, size: 64, offset: 1856)
!4370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4371, size: 64)
!4371 = !DISubroutineType(types: !4372)
!4372 = !{!4303, !4234, !4368, !7, !345, !4373, !348}
!4373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_pq", scope: !4239, file: !108, line: 888, baseType: !4375, size: 64, offset: 1920)
!4375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4376, size: 64)
!4376 = !DISubroutineType(types: !4377)
!4377 = !{!4303, !4234, !4368, !4368, !7, !449, !345, !348}
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_pq_val", scope: !4239, file: !108, line: 892, baseType: !4379, size: 64, offset: 1984)
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4380, size: 64)
!4380 = !DISubroutineType(types: !4381)
!4381 = !{!4303, !4234, !4368, !4368, !7, !449, !345, !4373, !348}
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_memset", scope: !4239, file: !108, line: 896, baseType: !4383, size: 64, offset: 2048)
!4383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4384, size: 64)
!4384 = !DISubroutineType(types: !4385)
!4385 = !{!4303, !4234, !986, !193, !345, !348}
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_memset_sg", scope: !4239, file: !108, line: 899, baseType: !4387, size: 64, offset: 2112)
!4387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4388, size: 64)
!4388 = !DISubroutineType(types: !4389)
!4389 = !{!4303, !4234, !4390, !7, !193, !348}
!4390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4391, size: 64)
!4391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !4392, line: 11, size: 256, elements: !4393)
!4392 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/lizy2001/genbc/linux")
!4393 = !{!4394, !4395, !4396, !4397, !4398}
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !4391, file: !4392, line: 12, baseType: !348, size: 64)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4391, file: !4392, line: 13, baseType: !7, size: 32, offset: 64)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4391, file: !4392, line: 14, baseType: !7, size: 32, offset: 96)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !4391, file: !4392, line: 15, baseType: !986, size: 64, offset: 128)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !4391, file: !4392, line: 17, baseType: !7, size: 32, offset: 192)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_interrupt", scope: !4239, file: !108, line: 902, baseType: !4400, size: 64, offset: 2176)
!4400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4401, size: 64)
!4401 = !DISubroutineType(types: !4402)
!4402 = !{!4303, !4234, !348}
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_slave_sg", scope: !4239, file: !108, line: 905, baseType: !4404, size: 64, offset: 2240)
!4404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4405, size: 64)
!4405 = !DISubroutineType(types: !4406)
!4406 = !{!4303, !4234, !4390, !7, !149, !348, !187}
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_cyclic", scope: !4239, file: !108, line: 909, baseType: !4408, size: 64, offset: 2304)
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4409, size: 64)
!4409 = !DISubroutineType(types: !4410)
!4410 = !{!4303, !4234, !986, !345, !345, !149, !348}
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_interleaved_dma", scope: !4239, file: !108, line: 913, baseType: !4412, size: 64, offset: 2368)
!4412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4413, size: 64)
!4413 = !DISubroutineType(types: !4414)
!4414 = !{!4303, !4234, !4415, !348}
!4415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4416, size: 64)
!4416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_interleaved_template", file: !108, line: 150, size: 320, elements: !4417)
!4417 = !{!4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427}
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "src_start", scope: !4416, file: !108, line: 151, baseType: !986, size: 64)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "dst_start", scope: !4416, file: !108, line: 152, baseType: !986, size: 64, offset: 64)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4416, file: !108, line: 153, baseType: !149, size: 32, offset: 128)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "src_inc", scope: !4416, file: !108, line: 154, baseType: !220, size: 8, offset: 160)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "dst_inc", scope: !4416, file: !108, line: 155, baseType: !220, size: 8, offset: 168)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "src_sgl", scope: !4416, file: !108, line: 156, baseType: !220, size: 8, offset: 176)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "dst_sgl", scope: !4416, file: !108, line: 157, baseType: !220, size: 8, offset: 184)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "numf", scope: !4416, file: !108, line: 158, baseType: !345, size: 64, offset: 192)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "frame_size", scope: !4416, file: !108, line: 159, baseType: !345, size: 64, offset: 256)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "sgl", scope: !4416, file: !108, line: 160, baseType: !4428, offset: 320)
!4428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4429, elements: !2393)
!4429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "data_chunk", file: !108, line: 125, size: 256, elements: !4430)
!4430 = !{!4431, !4432, !4433, !4434}
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4429, file: !108, line: 126, baseType: !345, size: 64)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "icg", scope: !4429, file: !108, line: 127, baseType: !345, size: 64, offset: 64)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "dst_icg", scope: !4429, file: !108, line: 128, baseType: !345, size: 64, offset: 128)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "src_icg", scope: !4429, file: !108, line: 129, baseType: !345, size: 64, offset: 192)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_imm_data", scope: !4239, file: !108, line: 916, baseType: !4436, size: 64, offset: 2432)
!4436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4437, size: 64)
!4437 = !DISubroutineType(types: !4438)
!4438 = !{!4303, !4234, !986, !445, !348}
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "device_caps", scope: !4239, file: !108, line: 920, baseType: !4440, size: 64, offset: 2496)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = !DISubroutineType(types: !4442)
!4442 = !{null, !4234, !4443}
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4444, size: 64)
!4444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_slave_caps", file: !108, line: 497, size: 288, elements: !4445)
!4445 = !{!4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456}
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "src_addr_widths", scope: !4444, file: !108, line: 498, baseType: !439, size: 32)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "dst_addr_widths", scope: !4444, file: !108, line: 499, baseType: !439, size: 32, offset: 32)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "directions", scope: !4444, file: !108, line: 500, baseType: !439, size: 32, offset: 64)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "min_burst", scope: !4444, file: !108, line: 501, baseType: !439, size: 32, offset: 96)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "max_burst", scope: !4444, file: !108, line: 502, baseType: !439, size: 32, offset: 128)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "max_sg_burst", scope: !4444, file: !108, line: 503, baseType: !439, size: 32, offset: 160)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_pause", scope: !4444, file: !108, line: 504, baseType: !220, size: 8, offset: 192)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_resume", scope: !4444, file: !108, line: 505, baseType: !220, size: 8, offset: 200)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_terminate", scope: !4444, file: !108, line: 506, baseType: !220, size: 8, offset: 208)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "residue_granularity", scope: !4444, file: !108, line: 507, baseType: !122, size: 32, offset: 224)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_reuse", scope: !4444, file: !108, line: 508, baseType: !220, size: 8, offset: 256)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "device_config", scope: !4239, file: !108, line: 922, baseType: !4458, size: 64, offset: 2560)
!4458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4459, size: 64)
!4459 = !DISubroutineType(types: !4460)
!4460 = !{!193, !4234, !4461}
!4461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4462, size: 64)
!4462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_slave_config", file: !108, line: 434, size: 448, elements: !4463)
!4463 = !{!4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474}
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !4462, file: !108, line: 435, baseType: !149, size: 32)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "src_addr", scope: !4462, file: !108, line: 436, baseType: !2189, size: 64, offset: 64)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "dst_addr", scope: !4462, file: !108, line: 437, baseType: !2189, size: 64, offset: 128)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "src_addr_width", scope: !4462, file: !108, line: 438, baseType: !156, size: 32, offset: 192)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "dst_addr_width", scope: !4462, file: !108, line: 439, baseType: !156, size: 32, offset: 224)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "src_maxburst", scope: !4462, file: !108, line: 440, baseType: !439, size: 32, offset: 256)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "dst_maxburst", scope: !4462, file: !108, line: 441, baseType: !439, size: 32, offset: 288)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "src_port_window_size", scope: !4462, file: !108, line: 442, baseType: !439, size: 32, offset: 320)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "dst_port_window_size", scope: !4462, file: !108, line: 443, baseType: !439, size: 32, offset: 352)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "device_fc", scope: !4462, file: !108, line: 444, baseType: !220, size: 8, offset: 384)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "slave_id", scope: !4462, file: !108, line: 445, baseType: !7, size: 32, offset: 416)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "device_pause", scope: !4239, file: !108, line: 924, baseType: !4292, size: 64, offset: 2624)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "device_resume", scope: !4239, file: !108, line: 925, baseType: !4292, size: 64, offset: 2688)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "device_terminate_all", scope: !4239, file: !108, line: 926, baseType: !4292, size: 64, offset: 2752)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "device_synchronize", scope: !4239, file: !108, line: 927, baseType: !4296, size: 64, offset: 2816)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "device_tx_status", scope: !4239, file: !108, line: 929, baseType: !4480, size: 64, offset: 2880)
!4480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4481, size: 64)
!4481 = !DISubroutineType(types: !4482)
!4482 = !{!167, !4234, !4307, !4483}
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_tx_state", file: !108, line: 721, size: 128, elements: !4485)
!4485 = !{!4486, !4487, !4488, !4489}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !4484, file: !108, line: 722, baseType: !4307, size: 32)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !4484, file: !108, line: 723, baseType: !4307, size: 32, offset: 32)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "residue", scope: !4484, file: !108, line: 724, baseType: !439, size: 32, offset: 64)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "in_flight_bytes", scope: !4484, file: !108, line: 725, baseType: !439, size: 32, offset: 96)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "device_issue_pending", scope: !4239, file: !108, line: 932, baseType: !4296, size: 64, offset: 2944)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "device_release", scope: !4239, file: !108, line: 933, baseType: !4492, size: 64, offset: 3008)
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4493, size: 64)
!4493 = !DISubroutineType(types: !4494)
!4494 = !{null, !4238}
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "slave", scope: !4235, file: !108, line: 331, baseType: !3435, size: 64, offset: 64)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !4235, file: !108, line: 332, baseType: !4307, size: 32, offset: 128)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "completed_cookie", scope: !4235, file: !108, line: 333, baseType: !4307, size: 32, offset: 160)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "chan_id", scope: !4235, file: !108, line: 336, baseType: !193, size: 32, offset: 192)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4235, file: !108, line: 337, baseType: !4500, size: 64, offset: 256)
!4500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4501, size: 64)
!4501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_chan_dev", file: !108, line: 361, size: 5696, elements: !4502)
!4502 = !{!4503, !4504, !4505}
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "chan", scope: !4501, file: !108, line: 362, baseType: !4234, size: 64)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4501, file: !108, line: 363, baseType: !233, size: 5568, offset: 64)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !4501, file: !108, line: 364, baseType: !193, size: 32, offset: 5632)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4235, file: !108, line: 338, baseType: !240, size: 64, offset: 320)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !4235, file: !108, line: 343, baseType: !244, size: 128, offset: 384)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !4235, file: !108, line: 344, baseType: !4509, size: 64, offset: 512)
!4509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4510, size: 64)
!4510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_chan_percpu", file: !108, line: 294, size: 128, elements: !4511)
!4511 = !{!4512, !4513}
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "memcpy_count", scope: !4510, file: !108, line: 296, baseType: !348, size: 64)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_transferred", scope: !4510, file: !108, line: 297, baseType: !348, size: 64, offset: 64)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "client_count", scope: !4235, file: !108, line: 345, baseType: !193, size: 32, offset: 576)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "table_count", scope: !4235, file: !108, line: 346, baseType: !193, size: 32, offset: 608)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "router", scope: !4235, file: !108, line: 349, baseType: !4517, size: 64, offset: 640)
!4517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4518, size: 64)
!4518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_router", file: !108, line: 305, size: 128, elements: !4519)
!4519 = !{!4520, !4521}
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4518, file: !108, line: 306, baseType: !3435, size: 64)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "route_free", scope: !4518, file: !108, line: 307, baseType: !4522, size: 64, offset: 64)
!4522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4523, size: 64)
!4523 = !DISubroutineType(types: !4524)
!4524 = !{null, !3435, !187}
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "route_data", scope: !4235, file: !108, line: 350, baseType: !187, size: 64, offset: 704)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4235, file: !108, line: 352, baseType: !187, size: 64, offset: 768)
!4527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4528, size: 64)
!4528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_dma_spec", file: !4226, line: 26, size: 128, elements: !4529)
!4529 = !{!4530, !4531, !4532}
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "chan_id", scope: !4528, file: !4226, line: 27, baseType: !193, size: 32)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "slave_id", scope: !4528, file: !4226, line: 28, baseType: !193, size: 32, offset: 32)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4528, file: !4226, line: 29, baseType: !3435, size: 64, offset: 64)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4225, file: !4226, line: 46, baseType: !187, size: 64, offset: 256)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "base_request_line", scope: !4225, file: !4226, line: 47, baseType: !340, size: 16, offset: 320)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "end_request_line", scope: !4225, file: !4226, line: 48, baseType: !340, size: 16, offset: 336)
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4537, size: 64)
!4537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4538, size: 64)
!4538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_header", file: !4539, line: 68, size: 288, elements: !4540)
!4539 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!4540 = !{!4541, !4543, !4544, !4545, !4546, !4547, !4548, !4549, !4550}
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !4538, file: !4539, line: 69, baseType: !4542, size: 32)
!4542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 32, elements: !1221)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4538, file: !4539, line: 70, baseType: !439, size: 32, offset: 32)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4538, file: !4539, line: 71, baseType: !1417, size: 8, offset: 64)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !4538, file: !4539, line: 72, baseType: !1417, size: 8, offset: 72)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !4538, file: !4539, line: 73, baseType: !1689, size: 48, offset: 80)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !4538, file: !4539, line: 74, baseType: !2098, size: 64, offset: 128)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !4538, file: !4539, line: 75, baseType: !439, size: 32, offset: 192)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_id", scope: !4538, file: !4539, line: 76, baseType: !4542, size: 32, offset: 224)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_revision", scope: !4538, file: !4539, line: 77, baseType: !439, size: 32, offset: 256)
!4551 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !196, line: 421, baseType: !439)
!4552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4553, size: 64)
!4553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_csrt_group", file: !4554, line: 340, size: 192, elements: !4555)
!4554 = !DIFile(filename: "./include/acpi/actbl1.h", directory: "/home/lizy2001/genbc/linux")
!4555 = !{!4556, !4557, !4558, !4559, !4560, !4561, !4562, !4563}
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4553, file: !4554, line: 341, baseType: !439, size: 32)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_id", scope: !4553, file: !4554, line: 342, baseType: !439, size: 32, offset: 32)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor_id", scope: !4553, file: !4554, line: 343, baseType: !439, size: 32, offset: 64)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "device_id", scope: !4553, file: !4554, line: 344, baseType: !885, size: 16, offset: 96)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice_id", scope: !4553, file: !4554, line: 345, baseType: !885, size: 16, offset: 112)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4553, file: !4554, line: 346, baseType: !885, size: 16, offset: 128)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4553, file: !4554, line: 347, baseType: !885, size: 16, offset: 144)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "shared_info_length", scope: !4553, file: !4554, line: 348, baseType: !439, size: 32, offset: 160)
!4564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4565, size: 64)
!4565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource_entry", file: !4566, line: 23, size: 768, elements: !4567)
!4566 = !DIFile(filename: "./include/linux/resource_ext.h", directory: "/home/lizy2001/genbc/linux")
!4567 = !{!4568, !4569, !4583, !4584}
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4565, file: !4566, line: 24, baseType: !244, size: 128)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !4565, file: !4566, line: 25, baseType: !4570, size: 64, offset: 128)
!4570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4571, size: 64)
!4571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4572, line: 20, size: 512, elements: !4573)
!4572 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!4573 = !{!4574, !4576, !4577, !4578, !4579, !4580, !4581, !4582}
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4571, file: !4572, line: 21, baseType: !4575, size: 64)
!4575 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !221, line: 158, baseType: !2189)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4571, file: !4572, line: 22, baseType: !4575, size: 64, offset: 64)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4571, file: !4572, line: 23, baseType: !240, size: 64, offset: 128)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4571, file: !4572, line: 24, baseType: !348, size: 64, offset: 192)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4571, file: !4572, line: 25, baseType: !348, size: 64, offset: 256)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4571, file: !4572, line: 26, baseType: !4570, size: 64, offset: 320)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4571, file: !4572, line: 26, baseType: !4570, size: 64, offset: 384)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4571, file: !4572, line: 26, baseType: !4570, size: 64, offset: 448)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4565, file: !4566, line: 26, baseType: !4575, size: 64, offset: 192)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "__res", scope: !4565, file: !4566, line: 27, baseType: !4571, size: 512, offset: 256)
!4585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4586, size: 64)
!4586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4587)
!4587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_csrt_shared_info", file: !4554, line: 355, size: 224, elements: !4588)
!4588 = !{!4589, !4590, !4591, !4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600}
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "major_version", scope: !4587, file: !4554, line: 356, baseType: !885, size: 16)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "minor_version", scope: !4587, file: !4554, line: 357, baseType: !885, size: 16, offset: 16)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_base_low", scope: !4587, file: !4554, line: 358, baseType: !439, size: 32, offset: 32)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_base_high", scope: !4587, file: !4554, line: 359, baseType: !439, size: 32, offset: 64)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "gsi_interrupt", scope: !4587, file: !4554, line: 360, baseType: !439, size: 32, offset: 96)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_polarity", scope: !4587, file: !4554, line: 361, baseType: !1417, size: 8, offset: 128)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_mode", scope: !4587, file: !4554, line: 362, baseType: !1417, size: 8, offset: 136)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "num_channels", scope: !4587, file: !4554, line: 363, baseType: !1417, size: 8, offset: 144)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address_width", scope: !4587, file: !4554, line: 364, baseType: !1417, size: 8, offset: 152)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "base_request_line", scope: !4587, file: !4554, line: 365, baseType: !885, size: 16, offset: 160)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "num_handshake_signals", scope: !4587, file: !4554, line: 366, baseType: !885, size: 16, offset: 176)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "max_block_size", scope: !4587, file: !4554, line: 367, baseType: !439, size: 32, offset: 192)
!4601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4602, size: 64)
!4602 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !247)
!4603 = !{!0, !4604}
!4604 = !DIGlobalVariableExpression(var: !4605, expr: !DIExpression())
!4605 = distinct !DIGlobalVariable(name: "acpi_dma_list", scope: !2, file: !3, line: 25, type: !244, isLocal: true, isDefinition: true)
!4606 = !{i32 7, !"Dwarf Version", i32 4}
!4607 = !{i32 2, !"Debug Info Version", i32 3}
!4608 = !{i32 1, !"wchar_size", i32 2}
!4609 = !{i32 1, !"Code Model", i32 2}
!4610 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4611 = distinct !DISubprogram(name: "acpi_dma_controller_register", scope: !3, file: !3, line: 161, type: !4612, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4612 = !DISubroutineType(types: !4613)
!4613 = !{!193, !3435, !4231, !187}
!4614 = !DILocalVariable(name: "dev", arg: 1, scope: !4611, file: !3, line: 161, type: !3435)
!4615 = !DILocation(line: 161, column: 49, scope: !4611)
!4616 = !DILocalVariable(name: "acpi_dma_xlate", arg: 2, scope: !4611, file: !3, line: 162, type: !4231)
!4617 = !DILocation(line: 162, column: 22, scope: !4611)
!4618 = !DILocalVariable(name: "data", arg: 3, scope: !4611, file: !3, line: 164, type: !187)
!4619 = !DILocation(line: 164, column: 9, scope: !4611)
!4620 = !DILocalVariable(name: "adev", scope: !4611, file: !3, line: 166, type: !188)
!4621 = !DILocation(line: 166, column: 22, scope: !4611)
!4622 = !DILocalVariable(name: "adma", scope: !4611, file: !3, line: 167, type: !4224)
!4623 = !DILocation(line: 167, column: 19, scope: !4611)
!4624 = !DILocation(line: 169, column: 7, scope: !4625)
!4625 = distinct !DILexicalBlock(scope: !4611, file: !3, line: 169, column: 6)
!4626 = !DILocation(line: 169, column: 11, scope: !4625)
!4627 = !DILocation(line: 169, column: 15, scope: !4625)
!4628 = !DILocation(line: 169, column: 6, scope: !4611)
!4629 = !DILocation(line: 170, column: 3, scope: !4625)
!4630 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !4631, file: !3, line: 173, type: !202)
!4631 = distinct !DILexicalBlock(scope: !4611, file: !3, line: 173, column: 9)
!4632 = !DILocation(line: 173, column: 9, scope: !4631)
!4633 = !DILocalVariable(name: "__mptr", scope: !4634, file: !3, line: 173, type: !187)
!4634 = distinct !DILexicalBlock(scope: !4631, file: !3, line: 173, column: 9)
!4635 = !DILocation(line: 173, column: 9, scope: !4634)
!4636 = !DILocation(line: 173, column: 9, scope: !4637)
!4637 = distinct !DILexicalBlock(scope: !4634, file: !3, line: 173, column: 9)
!4638 = !DILocation(line: 173, column: 7, scope: !4611)
!4639 = !DILocation(line: 174, column: 7, scope: !4640)
!4640 = distinct !DILexicalBlock(scope: !4611, file: !3, line: 174, column: 6)
!4641 = !DILocation(line: 174, column: 6, scope: !4611)
!4642 = !DILocation(line: 175, column: 3, scope: !4640)
!4643 = !DILocation(line: 177, column: 9, scope: !4611)
!4644 = !DILocation(line: 177, column: 7, scope: !4611)
!4645 = !DILocation(line: 178, column: 7, scope: !4646)
!4646 = distinct !DILexicalBlock(scope: !4611, file: !3, line: 178, column: 6)
!4647 = !DILocation(line: 178, column: 6, scope: !4611)
!4648 = !DILocation(line: 179, column: 3, scope: !4646)
!4649 = !DILocation(line: 181, column: 14, scope: !4611)
!4650 = !DILocation(line: 181, column: 2, scope: !4611)
!4651 = !DILocation(line: 181, column: 8, scope: !4611)
!4652 = !DILocation(line: 181, column: 12, scope: !4611)
!4653 = !DILocation(line: 182, column: 25, scope: !4611)
!4654 = !DILocation(line: 182, column: 2, scope: !4611)
!4655 = !DILocation(line: 182, column: 8, scope: !4611)
!4656 = !DILocation(line: 182, column: 23, scope: !4611)
!4657 = !DILocation(line: 183, column: 15, scope: !4611)
!4658 = !DILocation(line: 183, column: 2, scope: !4611)
!4659 = !DILocation(line: 183, column: 8, scope: !4611)
!4660 = !DILocation(line: 183, column: 13, scope: !4611)
!4661 = !DILocation(line: 185, column: 22, scope: !4611)
!4662 = !DILocation(line: 185, column: 28, scope: !4611)
!4663 = !DILocation(line: 185, column: 2, scope: !4611)
!4664 = !DILocation(line: 188, column: 2, scope: !4611)
!4665 = !DILocation(line: 189, column: 17, scope: !4611)
!4666 = !DILocation(line: 189, column: 23, scope: !4611)
!4667 = !DILocation(line: 189, column: 2, scope: !4611)
!4668 = !DILocation(line: 190, column: 2, scope: !4611)
!4669 = !DILocation(line: 192, column: 2, scope: !4611)
!4670 = !DILocation(line: 193, column: 1, scope: !4611)
!4671 = distinct !DISubprogram(name: "kzalloc", scope: !175, file: !175, line: 662, type: !4672, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4672 = !DISubroutineType(types: !4673)
!4673 = !{!187, !345, !769}
!4674 = !DILocalVariable(name: "s", arg: 1, scope: !4675, file: !175, line: 445, type: !1001)
!4675 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !175, file: !175, line: 445, type: !4676, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4676 = !DISubroutineType(types: !4677)
!4677 = !{!187, !1001, !769, !345}
!4678 = !DILocation(line: 445, column: 72, scope: !4675, inlinedAt: !4679)
!4679 = distinct !DILocation(line: 552, column: 10, scope: !4680, inlinedAt: !4683)
!4680 = distinct !DILexicalBlock(scope: !4681, file: !175, line: 540, column: 34)
!4681 = distinct !DILexicalBlock(scope: !4682, file: !175, line: 540, column: 6)
!4682 = distinct !DISubprogram(name: "kmalloc", scope: !175, file: !175, line: 538, type: !4672, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4683 = distinct !DILocation(line: 664, column: 9, scope: !4671)
!4684 = !DILocalVariable(name: "flags", arg: 2, scope: !4675, file: !175, line: 446, type: !769)
!4685 = !DILocation(line: 446, column: 9, scope: !4675, inlinedAt: !4679)
!4686 = !DILocalVariable(name: "size", arg: 3, scope: !4675, file: !175, line: 446, type: !345)
!4687 = !DILocation(line: 446, column: 23, scope: !4675, inlinedAt: !4679)
!4688 = !DILocalVariable(name: "ret", scope: !4675, file: !175, line: 448, type: !187)
!4689 = !DILocation(line: 448, column: 8, scope: !4675, inlinedAt: !4679)
!4690 = !DILocalVariable(name: "flags", arg: 1, scope: !4691, file: !175, line: 318, type: !769)
!4691 = distinct !DISubprogram(name: "kmalloc_type", scope: !175, file: !175, line: 318, type: !4692, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4692 = !DISubroutineType(types: !4693)
!4693 = !{!174, !769}
!4694 = !DILocation(line: 318, column: 67, scope: !4691, inlinedAt: !4695)
!4695 = distinct !DILocation(line: 553, column: 20, scope: !4680, inlinedAt: !4683)
!4696 = !DILocalVariable(name: "size", arg: 1, scope: !4697, file: !175, line: 346, type: !345)
!4697 = distinct !DISubprogram(name: "kmalloc_index", scope: !175, file: !175, line: 346, type: !4698, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4698 = !DISubroutineType(types: !4699)
!4699 = !{!7, !345}
!4700 = !DILocation(line: 346, column: 58, scope: !4697, inlinedAt: !4701)
!4701 = distinct !DILocation(line: 547, column: 11, scope: !4680, inlinedAt: !4683)
!4702 = !DILocalVariable(name: "size", arg: 1, scope: !4703, file: !175, line: 472, type: !345)
!4703 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !175, file: !175, line: 472, type: !4704, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4704 = !DISubroutineType(types: !4705)
!4705 = !{!187, !345, !769, !7}
!4706 = !DILocation(line: 472, column: 28, scope: !4703, inlinedAt: !4707)
!4707 = distinct !DILocation(line: 481, column: 9, scope: !4708, inlinedAt: !4709)
!4708 = distinct !DISubprogram(name: "kmalloc_large", scope: !175, file: !175, line: 478, type: !4672, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4709 = distinct !DILocation(line: 545, column: 11, scope: !4710, inlinedAt: !4683)
!4710 = distinct !DILexicalBlock(scope: !4680, file: !175, line: 544, column: 7)
!4711 = !DILocalVariable(name: "flags", arg: 2, scope: !4703, file: !175, line: 472, type: !769)
!4712 = !DILocation(line: 472, column: 40, scope: !4703, inlinedAt: !4707)
!4713 = !DILocalVariable(name: "order", arg: 3, scope: !4703, file: !175, line: 472, type: !7)
!4714 = !DILocation(line: 472, column: 60, scope: !4703, inlinedAt: !4707)
!4715 = !DILocalVariable(name: "size", arg: 1, scope: !4708, file: !175, line: 478, type: !345)
!4716 = !DILocation(line: 478, column: 51, scope: !4708, inlinedAt: !4709)
!4717 = !DILocalVariable(name: "flags", arg: 2, scope: !4708, file: !175, line: 478, type: !769)
!4718 = !DILocation(line: 478, column: 63, scope: !4708, inlinedAt: !4709)
!4719 = !DILocalVariable(name: "order", scope: !4708, file: !175, line: 480, type: !7)
!4720 = !DILocation(line: 480, column: 15, scope: !4708, inlinedAt: !4709)
!4721 = !DILocalVariable(name: "size", arg: 1, scope: !4682, file: !175, line: 538, type: !345)
!4722 = !DILocation(line: 538, column: 45, scope: !4682, inlinedAt: !4683)
!4723 = !DILocalVariable(name: "flags", arg: 2, scope: !4682, file: !175, line: 538, type: !769)
!4724 = !DILocation(line: 538, column: 57, scope: !4682, inlinedAt: !4683)
!4725 = !DILocalVariable(name: "index", scope: !4680, file: !175, line: 542, type: !7)
!4726 = !DILocation(line: 542, column: 16, scope: !4680, inlinedAt: !4683)
!4727 = !DILocalVariable(name: "size", arg: 1, scope: !4671, file: !175, line: 662, type: !345)
!4728 = !DILocation(line: 662, column: 36, scope: !4671)
!4729 = !DILocalVariable(name: "flags", arg: 2, scope: !4671, file: !175, line: 662, type: !769)
!4730 = !DILocation(line: 662, column: 48, scope: !4671)
!4731 = !DILocation(line: 664, column: 17, scope: !4671)
!4732 = !DILocation(line: 664, column: 23, scope: !4671)
!4733 = !DILocation(line: 664, column: 29, scope: !4671)
!4734 = !DILocation(line: 540, column: 27, scope: !4681, inlinedAt: !4683)
!4735 = !DILocation(line: 540, column: 6, scope: !4681, inlinedAt: !4683)
!4736 = !DILocation(line: 540, column: 6, scope: !4682, inlinedAt: !4683)
!4737 = !DILocation(line: 544, column: 7, scope: !4710, inlinedAt: !4683)
!4738 = !DILocation(line: 544, column: 12, scope: !4710, inlinedAt: !4683)
!4739 = !DILocation(line: 544, column: 7, scope: !4680, inlinedAt: !4683)
!4740 = !DILocation(line: 545, column: 25, scope: !4710, inlinedAt: !4683)
!4741 = !DILocation(line: 545, column: 31, scope: !4710, inlinedAt: !4683)
!4742 = !DILocation(line: 480, column: 33, scope: !4708, inlinedAt: !4709)
!4743 = !DILocation(line: 480, column: 23, scope: !4708, inlinedAt: !4709)
!4744 = !DILocation(line: 481, column: 29, scope: !4708, inlinedAt: !4709)
!4745 = !DILocation(line: 481, column: 35, scope: !4708, inlinedAt: !4709)
!4746 = !DILocation(line: 481, column: 42, scope: !4708, inlinedAt: !4709)
!4747 = !DILocation(line: 474, column: 23, scope: !4703, inlinedAt: !4707)
!4748 = !DILocation(line: 474, column: 29, scope: !4703, inlinedAt: !4707)
!4749 = !DILocation(line: 474, column: 36, scope: !4703, inlinedAt: !4707)
!4750 = !DILocation(line: 474, column: 9, scope: !4703, inlinedAt: !4707)
!4751 = !DILocation(line: 545, column: 4, scope: !4710, inlinedAt: !4683)
!4752 = !DILocation(line: 547, column: 25, scope: !4680, inlinedAt: !4683)
!4753 = !DILocation(line: 348, column: 7, scope: !4754, inlinedAt: !4701)
!4754 = distinct !DILexicalBlock(scope: !4697, file: !175, line: 348, column: 6)
!4755 = !DILocation(line: 348, column: 6, scope: !4697, inlinedAt: !4701)
!4756 = !DILocation(line: 349, column: 3, scope: !4754, inlinedAt: !4701)
!4757 = !DILocation(line: 351, column: 6, scope: !4758, inlinedAt: !4701)
!4758 = distinct !DILexicalBlock(scope: !4697, file: !175, line: 351, column: 6)
!4759 = !DILocation(line: 351, column: 11, scope: !4758, inlinedAt: !4701)
!4760 = !DILocation(line: 351, column: 6, scope: !4697, inlinedAt: !4701)
!4761 = !DILocation(line: 352, column: 3, scope: !4758, inlinedAt: !4701)
!4762 = !DILocation(line: 354, column: 32, scope: !4763, inlinedAt: !4701)
!4763 = distinct !DILexicalBlock(scope: !4697, file: !175, line: 354, column: 6)
!4764 = !DILocation(line: 354, column: 37, scope: !4763, inlinedAt: !4701)
!4765 = !DILocation(line: 354, column: 42, scope: !4763, inlinedAt: !4701)
!4766 = !DILocation(line: 354, column: 45, scope: !4763, inlinedAt: !4701)
!4767 = !DILocation(line: 354, column: 50, scope: !4763, inlinedAt: !4701)
!4768 = !DILocation(line: 354, column: 6, scope: !4697, inlinedAt: !4701)
!4769 = !DILocation(line: 355, column: 3, scope: !4763, inlinedAt: !4701)
!4770 = !DILocation(line: 356, column: 32, scope: !4771, inlinedAt: !4701)
!4771 = distinct !DILexicalBlock(scope: !4697, file: !175, line: 356, column: 6)
!4772 = !DILocation(line: 356, column: 37, scope: !4771, inlinedAt: !4701)
!4773 = !DILocation(line: 356, column: 43, scope: !4771, inlinedAt: !4701)
!4774 = !DILocation(line: 356, column: 46, scope: !4771, inlinedAt: !4701)
!4775 = !DILocation(line: 356, column: 51, scope: !4771, inlinedAt: !4701)
!4776 = !DILocation(line: 356, column: 6, scope: !4697, inlinedAt: !4701)
!4777 = !DILocation(line: 357, column: 3, scope: !4771, inlinedAt: !4701)
!4778 = !DILocation(line: 358, column: 6, scope: !4779, inlinedAt: !4701)
!4779 = distinct !DILexicalBlock(scope: !4697, file: !175, line: 358, column: 6)
!4780 = !DILocation(line: 358, column: 11, scope: !4779, inlinedAt: !4701)
!4781 = !DILocation(line: 358, column: 6, scope: !4697, inlinedAt: !4701)
!4782 = !DILocation(line: 358, column: 26, scope: !4779, inlinedAt: !4701)
!4783 = !DILocation(line: 359, column: 6, scope: !4784, inlinedAt: !4701)
!4784 = distinct !DILexicalBlock(scope: !4697, file: !175, line: 359, column: 6)
!4785 = !DILocation(line: 359, column: 11, scope: !4784, inlinedAt: !4701)
!4786 = !DILocation(line: 359, column: 6, scope: !4697, inlinedAt: !4701)
!4787 = !DILocation(line: 359, column: 26, scope: !4784, inlinedAt: !4701)
!4788 = !DILocation(line: 360, column: 6, scope: !4789, inlinedAt: !4701)
!4789 = distinct !DILexicalBlock(scope: !4697, file: !175, line: 360, column: 6)
!4790 = !DILocation(line: 360, column: 11, scope: !4789, inlinedAt: !4701)
!4791 = !DILocation(line: 360, column: 6, scope: !4697, inlinedAt: !4701)
!4792 = !DILocation(line: 360, column: 26, scope: !4789, inlinedAt: !4701)
!4793 = !DILocation(line: 361, column: 6, scope: !4794, inlinedAt: !4701)
!4794 = distinct !DILexicalBlock(scope: !4697, file: !175, line: 361, column: 6)
!4795 = !DILocation(line: 361, column: 11, scope: !4794, inlinedAt: !4701)
!4796 = !DILocation(line: 361, column: 6, scope: !4697, inlinedAt: !4701)
!4797 = !DILocation(line: 361, column: 26, scope: !4794, inlinedAt: !4701)
!4798 = !DILocation(line: 362, column: 6, scope: !4799, inlinedAt: !4701)
!4799 = distinct !DILexicalBlock(scope: !4697, file: !175, line: 362, column: 6)
!4800 = !DILocation(line: 362, column: 11, scope: !4799, inlinedAt: !4701)
!4801 = !DILocation(line: 362, column: 6, scope: !4697, inlinedAt: !4701)
!4802 = !DILocation(line: 362, column: 26, scope: !4799, inlinedAt: !4701)
!4803 = !DILocation(line: 363, column: 6, scope: !4804, inlinedAt: !4701)
!4804 = distinct !DILexicalBlock(scope: !4697, file: !175, line: 363, column: 6)
!4805 = !DILocation(line: 363, column: 11, scope: !4804, inlinedAt: !4701)
!4806 = !DILocation(line: 363, column: 6, scope: !4697, inlinedAt: !4701)
!4807 = !DILocation(line: 363, column: 26, scope: !4804, inlinedAt: !4701)
!4808 = !DILocation(line: 364, column: 6, scope: !4809, inlinedAt: !4701)
!4809 = distinct !DILexicalBlock(scope: !4697, file: !175, line: 364, column: 6)
!4810 = !DILocation(line: 364, column: 11, scope: !4809, inlinedAt: !4701)
!4811 = !DILocation(line: 364, column: 6, scope: !4697, inlinedAt: !4701)
!4812 = !DILocation(line: 364, column: 26, scope: !4809, inlinedAt: !4701)
!4813 = !DILocation(line: 365, column: 6, scope: !4814, inlinedAt: !4701)
!4814 = distinct !DILexicalBlock(scope: !4697, file: !175, line: 365, column: 6)
!4815 = !DILocation(line: 365, column: 11, scope: !4814, inlinedAt: !4701)
!4816 = !DILocation(line: 365, column: 6, scope: !4697, inlinedAt: !4701)
!4817 = !DILocation(line: 365, column: 26, scope: !4814, inlinedAt: !4701)
!4818 = !DILocation(line: 366, column: 6, scope: !4819, inlinedAt: !4701)
!4819 = distinct !DILexicalBlock(scope: !4697, file: !175, line: 366, column: 6)
!4820 = !DILocation(line: 366, column: 11, scope: !4819, inlinedAt: !4701)
!4821 = !DILocation(line: 366, column: 6, scope: !4697, inlinedAt: !4701)
!4822 = !DILocation(line: 366, column: 26, scope: !4819, inlinedAt: !4701)
!4823 = !DILocation(line: 367, column: 6, scope: !4824, inlinedAt: !4701)
!4824 = distinct !DILexicalBlock(scope: !4697, file: !175, line: 367, column: 6)
!4825 = !DILocation(line: 367, column: 11, scope: !4824, inlinedAt: !4701)
!4826 = !DILocation(line: 367, column: 6, scope: !4697, inlinedAt: !4701)
!4827 = !DILocation(line: 367, column: 26, scope: !4824, inlinedAt: !4701)
!4828 = !DILocation(line: 368, column: 6, scope: !4829, inlinedAt: !4701)
!4829 = distinct !DILexicalBlock(scope: !4697, file: !175, line: 368, column: 6)
!4830 = !DILocation(line: 368, column: 11, scope: !4829, inlinedAt: !4701)
!4831 = !DILocation(line: 368, column: 6, scope: !4697, inlinedAt: !4701)
!4832 = !DILocation(line: 368, column: 26, scope: !4829, inlinedAt: !4701)
!4833 = !DILocation(line: 369, column: 6, scope: !4834, inlinedAt: !4701)
!4834 = distinct !DILexicalBlock(scope: !4697, file: !175, line: 369, column: 6)
!4835 = !DILocation(line: 369, column: 11, scope: !4834, inlinedAt: !4701)
!4836 = !DILocation(line: 369, column: 6, scope: !4697, inlinedAt: !4701)
!4837 = !DILocation(line: 369, column: 26, scope: !4834, inlinedAt: !4701)
!4838 = !DILocation(line: 370, column: 6, scope: !4839, inlinedAt: !4701)
!4839 = distinct !DILexicalBlock(scope: !4697, file: !175, line: 370, column: 6)
!4840 = !DILocation(line: 370, column: 11, scope: !4839, inlinedAt: !4701)
!4841 = !DILocation(line: 370, column: 6, scope: !4697, inlinedAt: !4701)
!4842 = !DILocation(line: 370, column: 26, scope: !4839, inlinedAt: !4701)
!4843 = !DILocation(line: 371, column: 6, scope: !4844, inlinedAt: !4701)
!4844 = distinct !DILexicalBlock(scope: !4697, file: !175, line: 371, column: 6)
!4845 = !DILocation(line: 371, column: 11, scope: !4844, inlinedAt: !4701)
!4846 = !DILocation(line: 371, column: 6, scope: !4697, inlinedAt: !4701)
!4847 = !DILocation(line: 371, column: 26, scope: !4844, inlinedAt: !4701)
!4848 = !DILocation(line: 372, column: 6, scope: !4849, inlinedAt: !4701)
!4849 = distinct !DILexicalBlock(scope: !4697, file: !175, line: 372, column: 6)
!4850 = !DILocation(line: 372, column: 11, scope: !4849, inlinedAt: !4701)
!4851 = !DILocation(line: 372, column: 6, scope: !4697, inlinedAt: !4701)
!4852 = !DILocation(line: 372, column: 26, scope: !4849, inlinedAt: !4701)
!4853 = !DILocation(line: 373, column: 6, scope: !4854, inlinedAt: !4701)
!4854 = distinct !DILexicalBlock(scope: !4697, file: !175, line: 373, column: 6)
!4855 = !DILocation(line: 373, column: 11, scope: !4854, inlinedAt: !4701)
!4856 = !DILocation(line: 373, column: 6, scope: !4697, inlinedAt: !4701)
!4857 = !DILocation(line: 373, column: 26, scope: !4854, inlinedAt: !4701)
!4858 = !DILocation(line: 374, column: 6, scope: !4859, inlinedAt: !4701)
!4859 = distinct !DILexicalBlock(scope: !4697, file: !175, line: 374, column: 6)
!4860 = !DILocation(line: 374, column: 11, scope: !4859, inlinedAt: !4701)
!4861 = !DILocation(line: 374, column: 6, scope: !4697, inlinedAt: !4701)
!4862 = !DILocation(line: 374, column: 26, scope: !4859, inlinedAt: !4701)
!4863 = !DILocation(line: 375, column: 6, scope: !4864, inlinedAt: !4701)
!4864 = distinct !DILexicalBlock(scope: !4697, file: !175, line: 375, column: 6)
!4865 = !DILocation(line: 375, column: 11, scope: !4864, inlinedAt: !4701)
!4866 = !DILocation(line: 375, column: 6, scope: !4697, inlinedAt: !4701)
!4867 = !DILocation(line: 375, column: 27, scope: !4864, inlinedAt: !4701)
!4868 = !DILocation(line: 376, column: 6, scope: !4869, inlinedAt: !4701)
!4869 = distinct !DILexicalBlock(scope: !4697, file: !175, line: 376, column: 6)
!4870 = !DILocation(line: 376, column: 11, scope: !4869, inlinedAt: !4701)
!4871 = !DILocation(line: 376, column: 6, scope: !4697, inlinedAt: !4701)
!4872 = !DILocation(line: 376, column: 32, scope: !4869, inlinedAt: !4701)
!4873 = !DILocation(line: 377, column: 6, scope: !4874, inlinedAt: !4701)
!4874 = distinct !DILexicalBlock(scope: !4697, file: !175, line: 377, column: 6)
!4875 = !DILocation(line: 377, column: 11, scope: !4874, inlinedAt: !4701)
!4876 = !DILocation(line: 377, column: 6, scope: !4697, inlinedAt: !4701)
!4877 = !DILocation(line: 377, column: 32, scope: !4874, inlinedAt: !4701)
!4878 = !DILocation(line: 378, column: 6, scope: !4879, inlinedAt: !4701)
!4879 = distinct !DILexicalBlock(scope: !4697, file: !175, line: 378, column: 6)
!4880 = !DILocation(line: 378, column: 11, scope: !4879, inlinedAt: !4701)
!4881 = !DILocation(line: 378, column: 6, scope: !4697, inlinedAt: !4701)
!4882 = !DILocation(line: 378, column: 32, scope: !4879, inlinedAt: !4701)
!4883 = !DILocation(line: 379, column: 6, scope: !4884, inlinedAt: !4701)
!4884 = distinct !DILexicalBlock(scope: !4697, file: !175, line: 379, column: 6)
!4885 = !DILocation(line: 379, column: 11, scope: !4884, inlinedAt: !4701)
!4886 = !DILocation(line: 379, column: 6, scope: !4697, inlinedAt: !4701)
!4887 = !DILocation(line: 379, column: 33, scope: !4884, inlinedAt: !4701)
!4888 = !DILocation(line: 380, column: 6, scope: !4889, inlinedAt: !4701)
!4889 = distinct !DILexicalBlock(scope: !4697, file: !175, line: 380, column: 6)
!4890 = !DILocation(line: 380, column: 11, scope: !4889, inlinedAt: !4701)
!4891 = !DILocation(line: 380, column: 6, scope: !4697, inlinedAt: !4701)
!4892 = !DILocation(line: 380, column: 33, scope: !4889, inlinedAt: !4701)
!4893 = !DILocation(line: 381, column: 6, scope: !4894, inlinedAt: !4701)
!4894 = distinct !DILexicalBlock(scope: !4697, file: !175, line: 381, column: 6)
!4895 = !DILocation(line: 381, column: 11, scope: !4894, inlinedAt: !4701)
!4896 = !DILocation(line: 381, column: 6, scope: !4697, inlinedAt: !4701)
!4897 = !DILocation(line: 381, column: 33, scope: !4894, inlinedAt: !4701)
!4898 = !DILocation(line: 382, column: 2, scope: !4899, inlinedAt: !4701)
!4899 = distinct !DILexicalBlock(scope: !4900, file: !175, line: 382, column: 2)
!4900 = distinct !DILexicalBlock(scope: !4697, file: !175, line: 382, column: 2)
!4901 = !{i32 -2142151311, i32 -2142151282, i32 -2142151236, i32 -2142151178, i32 -2142151124, i32 -2142151070, i32 -2142151015, i32 -2142150984}
!4902 = !DILocation(line: 382, column: 2, scope: !4903, inlinedAt: !4701)
!4903 = distinct !DILexicalBlock(scope: !4904, file: !175, line: 382, column: 2)
!4904 = distinct !DILexicalBlock(scope: !4900, file: !175, line: 382, column: 2)
!4905 = !{i32 -2142150541, i32 -2142150534, i32 -2142150480, i32 -2142150449, i32 -2142150419}
!4906 = !DILocation(line: 382, column: 2, scope: !4904, inlinedAt: !4701)
!4907 = !DILocation(line: 386, column: 1, scope: !4697, inlinedAt: !4701)
!4908 = !DILocation(line: 547, column: 9, scope: !4680, inlinedAt: !4683)
!4909 = !DILocation(line: 549, column: 8, scope: !4910, inlinedAt: !4683)
!4910 = distinct !DILexicalBlock(scope: !4680, file: !175, line: 549, column: 7)
!4911 = !DILocation(line: 549, column: 7, scope: !4680, inlinedAt: !4683)
!4912 = !DILocation(line: 550, column: 4, scope: !4910, inlinedAt: !4683)
!4913 = !DILocation(line: 553, column: 33, scope: !4680, inlinedAt: !4683)
!4914 = !DILocation(line: 325, column: 6, scope: !4915, inlinedAt: !4695)
!4915 = distinct !DILexicalBlock(scope: !4691, file: !175, line: 325, column: 6)
!4916 = !DILocation(line: 325, column: 6, scope: !4691, inlinedAt: !4695)
!4917 = !DILocation(line: 326, column: 3, scope: !4915, inlinedAt: !4695)
!4918 = !DILocation(line: 332, column: 9, scope: !4691, inlinedAt: !4695)
!4919 = !DILocation(line: 332, column: 15, scope: !4691, inlinedAt: !4695)
!4920 = !DILocation(line: 332, column: 2, scope: !4691, inlinedAt: !4695)
!4921 = !DILocation(line: 336, column: 1, scope: !4691, inlinedAt: !4695)
!4922 = !DILocation(line: 553, column: 5, scope: !4680, inlinedAt: !4683)
!4923 = !DILocation(line: 553, column: 41, scope: !4680, inlinedAt: !4683)
!4924 = !DILocation(line: 554, column: 5, scope: !4680, inlinedAt: !4683)
!4925 = !DILocation(line: 554, column: 12, scope: !4680, inlinedAt: !4683)
!4926 = !DILocation(line: 448, column: 31, scope: !4675, inlinedAt: !4679)
!4927 = !DILocation(line: 448, column: 34, scope: !4675, inlinedAt: !4679)
!4928 = !DILocation(line: 448, column: 14, scope: !4675, inlinedAt: !4679)
!4929 = !DILocation(line: 450, column: 22, scope: !4675, inlinedAt: !4679)
!4930 = !DILocation(line: 450, column: 25, scope: !4675, inlinedAt: !4679)
!4931 = !DILocation(line: 450, column: 30, scope: !4675, inlinedAt: !4679)
!4932 = !DILocation(line: 450, column: 36, scope: !4675, inlinedAt: !4679)
!4933 = !DILocation(line: 450, column: 8, scope: !4675, inlinedAt: !4679)
!4934 = !DILocation(line: 450, column: 6, scope: !4675, inlinedAt: !4679)
!4935 = !DILocation(line: 451, column: 9, scope: !4675, inlinedAt: !4679)
!4936 = !DILocation(line: 552, column: 3, scope: !4680, inlinedAt: !4683)
!4937 = !DILocation(line: 557, column: 19, scope: !4682, inlinedAt: !4683)
!4938 = !DILocation(line: 557, column: 25, scope: !4682, inlinedAt: !4683)
!4939 = !DILocation(line: 557, column: 9, scope: !4682, inlinedAt: !4683)
!4940 = !DILocation(line: 557, column: 2, scope: !4682, inlinedAt: !4683)
!4941 = !DILocation(line: 558, column: 1, scope: !4682, inlinedAt: !4683)
!4942 = !DILocation(line: 664, column: 2, scope: !4671)
!4943 = distinct !DISubprogram(name: "acpi_dma_parse_csrt", scope: !3, file: !3, line: 115, type: !4944, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4944 = !DISubroutineType(types: !4945)
!4945 = !{null, !188, !4224}
!4946 = !DILocalVariable(name: "adev", arg: 1, scope: !4943, file: !3, line: 115, type: !188)
!4947 = !DILocation(line: 115, column: 53, scope: !4943)
!4948 = !DILocalVariable(name: "adma", arg: 2, scope: !4943, file: !3, line: 115, type: !4224)
!4949 = !DILocation(line: 115, column: 76, scope: !4943)
!4950 = !DILocalVariable(name: "grp", scope: !4943, file: !3, line: 117, type: !4552)
!4951 = !DILocation(line: 117, column: 26, scope: !4943)
!4952 = !DILocalVariable(name: "end", scope: !4943, file: !3, line: 117, type: !4552)
!4953 = !DILocation(line: 117, column: 32, scope: !4943)
!4954 = !DILocalVariable(name: "csrt", scope: !4943, file: !3, line: 118, type: !4955)
!4955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4956, size: 64)
!4956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_csrt", file: !4554, line: 334, size: 288, elements: !4957)
!4957 = !{!4958}
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4956, file: !4554, line: 335, baseType: !4538, size: 288)
!4959 = !DILocation(line: 118, column: 26, scope: !4943)
!4960 = !DILocalVariable(name: "status", scope: !4943, file: !3, line: 119, type: !4551)
!4961 = !DILocation(line: 119, column: 14, scope: !4943)
!4962 = !DILocalVariable(name: "ret", scope: !4943, file: !3, line: 120, type: !193)
!4963 = !DILocation(line: 120, column: 6, scope: !4943)
!4964 = !DILocation(line: 123, column: 5, scope: !4943)
!4965 = !DILocation(line: 122, column: 11, scope: !4943)
!4966 = !DILocation(line: 122, column: 9, scope: !4943)
!4967 = !DILocation(line: 124, column: 6, scope: !4968)
!4968 = distinct !DILexicalBlock(scope: !4943, file: !3, line: 124, column: 6)
!4969 = !DILocation(line: 124, column: 6, scope: !4943)
!4970 = !DILocation(line: 125, column: 7, scope: !4971)
!4971 = distinct !DILexicalBlock(scope: !4972, file: !3, line: 125, column: 7)
!4972 = distinct !DILexicalBlock(scope: !4968, file: !3, line: 124, column: 28)
!4973 = !DILocation(line: 125, column: 14, scope: !4971)
!4974 = !DILocation(line: 125, column: 7, scope: !4972)
!4975 = !DILocation(line: 126, column: 4, scope: !4971)
!4976 = !DILocation(line: 127, column: 3, scope: !4972)
!4977 = !DILocation(line: 130, column: 35, scope: !4943)
!4978 = !DILocation(line: 130, column: 40, scope: !4943)
!4979 = !DILocation(line: 130, column: 8, scope: !4943)
!4980 = !DILocation(line: 130, column: 6, scope: !4943)
!4981 = !DILocation(line: 131, column: 43, scope: !4943)
!4982 = !DILocation(line: 131, column: 35, scope: !4943)
!4983 = !DILocation(line: 131, column: 50, scope: !4943)
!4984 = !DILocation(line: 131, column: 56, scope: !4943)
!4985 = !DILocation(line: 131, column: 63, scope: !4943)
!4986 = !DILocation(line: 131, column: 48, scope: !4943)
!4987 = !DILocation(line: 131, column: 8, scope: !4943)
!4988 = !DILocation(line: 131, column: 6, scope: !4943)
!4989 = !DILocation(line: 133, column: 2, scope: !4943)
!4990 = !DILocation(line: 133, column: 9, scope: !4943)
!4991 = !DILocation(line: 133, column: 15, scope: !4943)
!4992 = !DILocation(line: 133, column: 13, scope: !4943)
!4993 = !DILocation(line: 134, column: 39, scope: !4994)
!4994 = distinct !DILexicalBlock(scope: !4943, file: !3, line: 133, column: 20)
!4995 = !DILocation(line: 134, column: 44, scope: !4994)
!4996 = !DILocation(line: 134, column: 50, scope: !4994)
!4997 = !DILocation(line: 134, column: 9, scope: !4994)
!4998 = !DILocation(line: 134, column: 7, scope: !4994)
!4999 = !DILocation(line: 135, column: 7, scope: !5000)
!5000 = distinct !DILexicalBlock(scope: !4994, file: !3, line: 135, column: 7)
!5001 = !DILocation(line: 135, column: 11, scope: !5000)
!5002 = !DILocation(line: 135, column: 7, scope: !4994)
!5003 = !DILocation(line: 136, column: 4, scope: !5004)
!5004 = distinct !DILexicalBlock(scope: !5000, file: !3, line: 135, column: 16)
!5005 = !DILocation(line: 138, column: 4, scope: !5004)
!5006 = !DILocation(line: 141, column: 44, scope: !4994)
!5007 = !DILocation(line: 141, column: 36, scope: !4994)
!5008 = !DILocation(line: 141, column: 50, scope: !4994)
!5009 = !DILocation(line: 141, column: 55, scope: !4994)
!5010 = !DILocation(line: 141, column: 48, scope: !4994)
!5011 = !DILocation(line: 141, column: 9, scope: !4994)
!5012 = !DILocation(line: 141, column: 7, scope: !4994)
!5013 = distinct !{!5013, !4989, !5014}
!5014 = !DILocation(line: 142, column: 2, scope: !4943)
!5015 = !DILocation(line: 144, column: 45, scope: !4943)
!5016 = !DILocation(line: 144, column: 17, scope: !4943)
!5017 = !DILocation(line: 144, column: 2, scope: !4943)
!5018 = !DILocation(line: 145, column: 1, scope: !4943)
!5019 = distinct !DISubprogram(name: "list_add_tail", scope: !5020, file: !5020, line: 98, type: !5021, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5020 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!5021 = !DISubroutineType(types: !5022)
!5022 = !{null, !247, !247}
!5023 = !DILocalVariable(name: "new", arg: 1, scope: !5019, file: !5020, line: 98, type: !247)
!5024 = !DILocation(line: 98, column: 52, scope: !5019)
!5025 = !DILocalVariable(name: "head", arg: 2, scope: !5019, file: !5020, line: 98, type: !247)
!5026 = !DILocation(line: 98, column: 75, scope: !5019)
!5027 = !DILocation(line: 100, column: 13, scope: !5019)
!5028 = !DILocation(line: 100, column: 18, scope: !5019)
!5029 = !DILocation(line: 100, column: 24, scope: !5019)
!5030 = !DILocation(line: 100, column: 30, scope: !5019)
!5031 = !DILocation(line: 100, column: 2, scope: !5019)
!5032 = !DILocation(line: 101, column: 1, scope: !5019)
!5033 = distinct !DISubprogram(name: "acpi_dma_controller_free", scope: !3, file: !3, line: 205, type: !3467, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5034 = !DILocalVariable(name: "dev", arg: 1, scope: !5033, file: !3, line: 205, type: !3435)
!5035 = !DILocation(line: 205, column: 45, scope: !5033)
!5036 = !DILocalVariable(name: "adma", scope: !5033, file: !3, line: 207, type: !4224)
!5037 = !DILocation(line: 207, column: 19, scope: !5033)
!5038 = !DILocation(line: 209, column: 7, scope: !5039)
!5039 = distinct !DILexicalBlock(scope: !5033, file: !3, line: 209, column: 6)
!5040 = !DILocation(line: 209, column: 6, scope: !5033)
!5041 = !DILocation(line: 210, column: 3, scope: !5039)
!5042 = !DILocation(line: 212, column: 2, scope: !5033)
!5043 = !DILocalVariable(name: "__mptr", scope: !5044, file: !3, line: 214, type: !187)
!5044 = distinct !DILexicalBlock(scope: !5045, file: !3, line: 214, column: 2)
!5045 = distinct !DILexicalBlock(scope: !5033, file: !3, line: 214, column: 2)
!5046 = !DILocation(line: 214, column: 2, scope: !5044)
!5047 = !DILocation(line: 214, column: 2, scope: !5048)
!5048 = distinct !DILexicalBlock(scope: !5044, file: !3, line: 214, column: 2)
!5049 = !DILocation(line: 214, column: 2, scope: !5045)
!5050 = !DILocation(line: 214, column: 2, scope: !5051)
!5051 = distinct !DILexicalBlock(scope: !5045, file: !3, line: 214, column: 2)
!5052 = !DILocation(line: 215, column: 7, scope: !5053)
!5053 = distinct !DILexicalBlock(scope: !5051, file: !3, line: 215, column: 7)
!5054 = !DILocation(line: 215, column: 13, scope: !5053)
!5055 = !DILocation(line: 215, column: 20, scope: !5053)
!5056 = !DILocation(line: 215, column: 17, scope: !5053)
!5057 = !DILocation(line: 215, column: 7, scope: !5051)
!5058 = !DILocation(line: 216, column: 14, scope: !5059)
!5059 = distinct !DILexicalBlock(scope: !5053, file: !3, line: 215, column: 25)
!5060 = !DILocation(line: 216, column: 20, scope: !5059)
!5061 = !DILocation(line: 216, column: 4, scope: !5059)
!5062 = !DILocation(line: 217, column: 4, scope: !5059)
!5063 = !DILocation(line: 218, column: 10, scope: !5059)
!5064 = !DILocation(line: 218, column: 4, scope: !5059)
!5065 = !DILocation(line: 219, column: 4, scope: !5059)
!5066 = !DILocalVariable(name: "__mptr", scope: !5067, file: !3, line: 214, type: !187)
!5067 = distinct !DILexicalBlock(scope: !5051, file: !3, line: 214, column: 2)
!5068 = !DILocation(line: 214, column: 2, scope: !5067)
!5069 = !DILocation(line: 214, column: 2, scope: !5070)
!5070 = distinct !DILexicalBlock(scope: !5067, file: !3, line: 214, column: 2)
!5071 = distinct !{!5071, !5049, !5072}
!5072 = !DILocation(line: 220, column: 3, scope: !5045)
!5073 = !DILocation(line: 222, column: 2, scope: !5033)
!5074 = !DILocation(line: 223, column: 2, scope: !5033)
!5075 = !DILocation(line: 224, column: 1, scope: !5033)
!5076 = distinct !DISubprogram(name: "list_del", scope: !5020, file: !5020, line: 144, type: !5077, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5077 = !DISubroutineType(types: !5078)
!5078 = !{null, !247}
!5079 = !DILocalVariable(name: "entry", arg: 1, scope: !5076, file: !5020, line: 144, type: !247)
!5080 = !DILocation(line: 144, column: 47, scope: !5076)
!5081 = !DILocation(line: 146, column: 19, scope: !5076)
!5082 = !DILocation(line: 146, column: 2, scope: !5076)
!5083 = !DILocation(line: 147, column: 2, scope: !5076)
!5084 = !DILocation(line: 147, column: 9, scope: !5076)
!5085 = !DILocation(line: 147, column: 14, scope: !5076)
!5086 = !DILocation(line: 148, column: 2, scope: !5076)
!5087 = !DILocation(line: 148, column: 9, scope: !5076)
!5088 = !DILocation(line: 148, column: 14, scope: !5076)
!5089 = !DILocation(line: 149, column: 1, scope: !5076)
!5090 = distinct !DISubprogram(name: "devm_acpi_dma_controller_register", scope: !3, file: !3, line: 245, type: !4612, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5091 = !DILocalVariable(name: "dev", arg: 1, scope: !5090, file: !3, line: 245, type: !3435)
!5092 = !DILocation(line: 245, column: 54, scope: !5090)
!5093 = !DILocalVariable(name: "acpi_dma_xlate", arg: 2, scope: !5090, file: !3, line: 246, type: !4231)
!5094 = !DILocation(line: 246, column: 22, scope: !5090)
!5095 = !DILocalVariable(name: "data", arg: 3, scope: !5090, file: !3, line: 248, type: !187)
!5096 = !DILocation(line: 248, column: 9, scope: !5090)
!5097 = !DILocalVariable(name: "res", scope: !5090, file: !3, line: 250, type: !187)
!5098 = !DILocation(line: 250, column: 8, scope: !5090)
!5099 = !DILocalVariable(name: "ret", scope: !5090, file: !3, line: 251, type: !193)
!5100 = !DILocation(line: 251, column: 6, scope: !5090)
!5101 = !DILocation(line: 253, column: 8, scope: !5090)
!5102 = !DILocation(line: 253, column: 6, scope: !5090)
!5103 = !DILocation(line: 254, column: 7, scope: !5104)
!5104 = distinct !DILexicalBlock(scope: !5090, file: !3, line: 254, column: 6)
!5105 = !DILocation(line: 254, column: 6, scope: !5090)
!5106 = !DILocation(line: 255, column: 3, scope: !5104)
!5107 = !DILocation(line: 257, column: 37, scope: !5090)
!5108 = !DILocation(line: 257, column: 42, scope: !5090)
!5109 = !DILocation(line: 257, column: 58, scope: !5090)
!5110 = !DILocation(line: 257, column: 8, scope: !5090)
!5111 = !DILocation(line: 257, column: 6, scope: !5090)
!5112 = !DILocation(line: 258, column: 6, scope: !5113)
!5113 = distinct !DILexicalBlock(scope: !5090, file: !3, line: 258, column: 6)
!5114 = !DILocation(line: 258, column: 6, scope: !5090)
!5115 = !DILocation(line: 259, column: 15, scope: !5116)
!5116 = distinct !DILexicalBlock(scope: !5113, file: !3, line: 258, column: 11)
!5117 = !DILocation(line: 259, column: 3, scope: !5116)
!5118 = !DILocation(line: 260, column: 10, scope: !5116)
!5119 = !DILocation(line: 260, column: 3, scope: !5116)
!5120 = !DILocation(line: 262, column: 13, scope: !5090)
!5121 = !DILocation(line: 262, column: 18, scope: !5090)
!5122 = !DILocation(line: 262, column: 2, scope: !5090)
!5123 = !DILocation(line: 263, column: 2, scope: !5090)
!5124 = !DILocation(line: 264, column: 1, scope: !5090)
!5125 = distinct !DISubprogram(name: "devres_alloc", scope: !73, file: !73, line: 178, type: !5126, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5126 = !DISubroutineType(types: !5127)
!5127 = !{!187, !5128, !345, !769}
!5128 = !DIDerivedType(tag: DW_TAG_typedef, name: "dr_release_t", file: !73, line: 165, baseType: !4522)
!5129 = !DILocalVariable(name: "release", arg: 1, scope: !5125, file: !73, line: 178, type: !5128)
!5130 = !DILocation(line: 178, column: 47, scope: !5125)
!5131 = !DILocalVariable(name: "size", arg: 2, scope: !5125, file: !73, line: 178, type: !345)
!5132 = !DILocation(line: 178, column: 63, scope: !5125)
!5133 = !DILocalVariable(name: "gfp", arg: 3, scope: !5125, file: !73, line: 178, type: !769)
!5134 = !DILocation(line: 178, column: 75, scope: !5125)
!5135 = !DILocation(line: 180, column: 27, scope: !5125)
!5136 = !DILocation(line: 180, column: 36, scope: !5125)
!5137 = !DILocation(line: 180, column: 42, scope: !5125)
!5138 = !DILocation(line: 180, column: 9, scope: !5125)
!5139 = !DILocation(line: 180, column: 2, scope: !5125)
!5140 = distinct !DISubprogram(name: "devm_acpi_dma_release", scope: !3, file: !3, line: 227, type: !4523, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5141 = !DILocalVariable(name: "dev", arg: 1, scope: !5140, file: !3, line: 227, type: !3435)
!5142 = !DILocation(line: 227, column: 50, scope: !5140)
!5143 = !DILocalVariable(name: "res", arg: 2, scope: !5140, file: !3, line: 227, type: !187)
!5144 = !DILocation(line: 227, column: 61, scope: !5140)
!5145 = !DILocation(line: 229, column: 27, scope: !5140)
!5146 = !DILocation(line: 229, column: 2, scope: !5140)
!5147 = !DILocation(line: 230, column: 1, scope: !5140)
!5148 = distinct !DISubprogram(name: "devm_acpi_dma_controller_free", scope: !3, file: !3, line: 276, type: !3458, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5149 = !DILocalVariable(name: "dev", arg: 1, scope: !5148, file: !3, line: 276, type: !3435)
!5150 = !DILocation(line: 276, column: 51, scope: !5148)
!5151 = !DILocalVariable(name: "__ret_warn_on", scope: !5152, file: !3, line: 278, type: !193)
!5152 = distinct !DILexicalBlock(scope: !5148, file: !3, line: 278, column: 2)
!5153 = !DILocation(line: 278, column: 2, scope: !5152)
!5154 = !DILocation(line: 278, column: 2, scope: !5155)
!5155 = distinct !DILexicalBlock(scope: !5152, file: !3, line: 278, column: 2)
!5156 = !DILocation(line: 278, column: 2, scope: !5157)
!5157 = distinct !DILexicalBlock(scope: !5155, file: !3, line: 278, column: 2)
!5158 = !DILocation(line: 278, column: 2, scope: !5159)
!5159 = distinct !DILexicalBlock(scope: !5157, file: !3, line: 278, column: 2)
!5160 = !DILocation(line: 278, column: 2, scope: !5161)
!5161 = distinct !DILexicalBlock(scope: !5157, file: !3, line: 278, column: 2)
!5162 = !{i32 -2141426695, i32 -2141426666, i32 -2141426620, i32 -2141426562, i32 -2141426508, i32 -2141426454, i32 -2141426399, i32 -2141426368}
!5163 = !DILocation(line: 278, column: 2, scope: !5164)
!5164 = distinct !DILexicalBlock(scope: !5157, file: !3, line: 278, column: 2)
!5165 = !{i32 -2141425964, i32 -2141425957, i32 -2141425905, i32 -2141425874, i32 -2141425844}
!5166 = !DILocation(line: 278, column: 2, scope: !5167)
!5167 = distinct !DILexicalBlock(scope: !5157, file: !3, line: 278, column: 2)
!5168 = !DILocation(line: 279, column: 1, scope: !5148)
!5169 = distinct !DISubprogram(name: "acpi_dma_request_slave_chan_by_index", scope: !3, file: !3, line: 358, type: !5170, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5170 = !DISubroutineType(types: !5171)
!5171 = !{!4234, !3435, !345}
!5172 = !DILocalVariable(name: "dev", arg: 1, scope: !5169, file: !3, line: 358, type: !3435)
!5173 = !DILocation(line: 358, column: 70, scope: !5169)
!5174 = !DILocalVariable(name: "index", arg: 2, scope: !5169, file: !3, line: 359, type: !345)
!5175 = !DILocation(line: 359, column: 10, scope: !5169)
!5176 = !DILocalVariable(name: "pdata", scope: !5169, file: !3, line: 361, type: !5177)
!5177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_dma_parser_data", file: !3, line: 322, size: 256, elements: !5178)
!5178 = !{!5179, !5180, !5181}
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "dma_spec", scope: !5177, file: !3, line: 323, baseType: !4528, size: 128)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5177, file: !3, line: 324, baseType: !345, size: 64, offset: 128)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !5177, file: !3, line: 325, baseType: !345, size: 64, offset: 192)
!5182 = !DILocation(line: 361, column: 30, scope: !5169)
!5183 = !DILocalVariable(name: "dma_spec", scope: !5169, file: !3, line: 362, type: !4527)
!5184 = !DILocation(line: 362, column: 24, scope: !5169)
!5185 = !DILocation(line: 362, column: 42, scope: !5169)
!5186 = !DILocalVariable(name: "adev", scope: !5169, file: !3, line: 363, type: !188)
!5187 = !DILocation(line: 363, column: 22, scope: !5169)
!5188 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !5189, file: !3, line: 363, type: !202)
!5189 = distinct !DILexicalBlock(scope: !5169, file: !3, line: 363, column: 29)
!5190 = !DILocation(line: 363, column: 29, scope: !5189)
!5191 = !DILocalVariable(name: "__mptr", scope: !5192, file: !3, line: 363, type: !187)
!5192 = distinct !DILexicalBlock(scope: !5189, file: !3, line: 363, column: 29)
!5193 = !DILocation(line: 363, column: 29, scope: !5192)
!5194 = !DILocation(line: 363, column: 29, scope: !5195)
!5195 = distinct !DILexicalBlock(scope: !5192, file: !3, line: 363, column: 29)
!5196 = !DILocalVariable(name: "resource_list", scope: !5169, file: !3, line: 364, type: !244)
!5197 = !DILocation(line: 364, column: 19, scope: !5169)
!5198 = !DILocalVariable(name: "adma", scope: !5169, file: !3, line: 365, type: !4224)
!5199 = !DILocation(line: 365, column: 19, scope: !5169)
!5200 = !DILocalVariable(name: "chan", scope: !5169, file: !3, line: 366, type: !4234)
!5201 = !DILocation(line: 366, column: 19, scope: !5169)
!5202 = !DILocalVariable(name: "found", scope: !5169, file: !3, line: 367, type: !193)
!5203 = !DILocation(line: 367, column: 6, scope: !5169)
!5204 = !DILocalVariable(name: "ret", scope: !5169, file: !3, line: 368, type: !193)
!5205 = !DILocation(line: 368, column: 6, scope: !5169)
!5206 = !DILocation(line: 370, column: 2, scope: !5169)
!5207 = !DILocation(line: 371, column: 16, scope: !5169)
!5208 = !DILocation(line: 371, column: 8, scope: !5169)
!5209 = !DILocation(line: 371, column: 14, scope: !5169)
!5210 = !DILocation(line: 374, column: 2, scope: !5169)
!5211 = !DILocation(line: 374, column: 12, scope: !5169)
!5212 = !DILocation(line: 374, column: 20, scope: !5169)
!5213 = !DILocation(line: 375, column: 2, scope: !5169)
!5214 = !DILocation(line: 375, column: 12, scope: !5169)
!5215 = !DILocation(line: 375, column: 21, scope: !5169)
!5216 = !DILocation(line: 377, column: 2, scope: !5169)
!5217 = !DILocation(line: 378, column: 31, scope: !5169)
!5218 = !DILocation(line: 379, column: 36, scope: !5169)
!5219 = !DILocation(line: 378, column: 8, scope: !5169)
!5220 = !DILocation(line: 378, column: 6, scope: !5169)
!5221 = !DILocation(line: 380, column: 2, scope: !5169)
!5222 = !DILocation(line: 381, column: 6, scope: !5223)
!5223 = distinct !DILexicalBlock(scope: !5169, file: !3, line: 381, column: 6)
!5224 = !DILocation(line: 381, column: 10, scope: !5223)
!5225 = !DILocation(line: 381, column: 6, scope: !5169)
!5226 = !DILocation(line: 382, column: 18, scope: !5223)
!5227 = !DILocation(line: 382, column: 10, scope: !5223)
!5228 = !DILocation(line: 382, column: 3, scope: !5223)
!5229 = !DILocation(line: 384, column: 6, scope: !5230)
!5230 = distinct !DILexicalBlock(scope: !5169, file: !3, line: 384, column: 6)
!5231 = !DILocation(line: 384, column: 16, scope: !5230)
!5232 = !DILocation(line: 384, column: 25, scope: !5230)
!5233 = !DILocation(line: 384, column: 29, scope: !5230)
!5234 = !DILocation(line: 384, column: 32, scope: !5230)
!5235 = !DILocation(line: 384, column: 42, scope: !5230)
!5236 = !DILocation(line: 384, column: 50, scope: !5230)
!5237 = !DILocation(line: 384, column: 6, scope: !5169)
!5238 = !DILocation(line: 385, column: 10, scope: !5230)
!5239 = !DILocation(line: 385, column: 3, scope: !5230)
!5240 = !DILocation(line: 387, column: 2, scope: !5169)
!5241 = !DILocalVariable(name: "__mptr", scope: !5242, file: !3, line: 389, type: !187)
!5242 = distinct !DILexicalBlock(scope: !5243, file: !3, line: 389, column: 2)
!5243 = distinct !DILexicalBlock(scope: !5169, file: !3, line: 389, column: 2)
!5244 = !DILocation(line: 389, column: 2, scope: !5242)
!5245 = !DILocation(line: 389, column: 2, scope: !5246)
!5246 = distinct !DILexicalBlock(scope: !5242, file: !3, line: 389, column: 2)
!5247 = !DILocation(line: 389, column: 2, scope: !5243)
!5248 = !DILocation(line: 389, column: 2, scope: !5249)
!5249 = distinct !DILexicalBlock(scope: !5243, file: !3, line: 389, column: 2)
!5250 = !DILocation(line: 394, column: 36, scope: !5251)
!5251 = distinct !DILexicalBlock(scope: !5249, file: !3, line: 389, column: 61)
!5252 = !DILocation(line: 394, column: 42, scope: !5251)
!5253 = !DILocation(line: 394, column: 11, scope: !5251)
!5254 = !DILocation(line: 394, column: 9, scope: !5251)
!5255 = !DILocation(line: 395, column: 7, scope: !5256)
!5256 = distinct !DILexicalBlock(scope: !5251, file: !3, line: 395, column: 7)
!5257 = !DILocation(line: 395, column: 13, scope: !5256)
!5258 = !DILocation(line: 395, column: 7, scope: !5251)
!5259 = !DILocation(line: 396, column: 4, scope: !5256)
!5260 = !DILocation(line: 397, column: 10, scope: !5251)
!5261 = !DILocation(line: 397, column: 16, scope: !5251)
!5262 = !DILocation(line: 397, column: 31, scope: !5251)
!5263 = !DILocation(line: 397, column: 41, scope: !5251)
!5264 = !DILocation(line: 397, column: 8, scope: !5251)
!5265 = !DILocation(line: 403, column: 7, scope: !5266)
!5266 = distinct !DILexicalBlock(scope: !5251, file: !3, line: 403, column: 7)
!5267 = !DILocation(line: 403, column: 13, scope: !5266)
!5268 = !DILocation(line: 403, column: 17, scope: !5266)
!5269 = !DILocation(line: 403, column: 20, scope: !5266)
!5270 = !DILocation(line: 403, column: 7, scope: !5251)
!5271 = !DILocation(line: 404, column: 4, scope: !5266)
!5272 = !DILocation(line: 405, column: 2, scope: !5251)
!5273 = !DILocalVariable(name: "__mptr", scope: !5274, file: !3, line: 389, type: !187)
!5274 = distinct !DILexicalBlock(scope: !5249, file: !3, line: 389, column: 2)
!5275 = !DILocation(line: 389, column: 2, scope: !5274)
!5276 = !DILocation(line: 389, column: 2, scope: !5277)
!5277 = distinct !DILexicalBlock(scope: !5274, file: !3, line: 389, column: 2)
!5278 = distinct !{!5278, !5247, !5279}
!5279 = !DILocation(line: 405, column: 2, scope: !5243)
!5280 = !DILocation(line: 407, column: 2, scope: !5169)
!5281 = !DILocation(line: 408, column: 9, scope: !5169)
!5282 = !DILocation(line: 408, column: 16, scope: !5169)
!5283 = !DILocation(line: 408, column: 23, scope: !5169)
!5284 = !DILocation(line: 408, column: 2, scope: !5169)
!5285 = !DILocation(line: 409, column: 1, scope: !5169)
!5286 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5020, file: !5020, line: 33, type: !5077, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5287 = !DILocalVariable(name: "list", arg: 1, scope: !5286, file: !5020, line: 33, type: !247)
!5288 = !DILocation(line: 33, column: 53, scope: !5286)
!5289 = !DILocation(line: 35, column: 2, scope: !5286)
!5290 = !DILocation(line: 35, column: 2, scope: !5291)
!5291 = distinct !DILexicalBlock(scope: !5286, file: !5020, line: 35, column: 2)
!5292 = !DILocation(line: 35, column: 2, scope: !5293)
!5293 = distinct !DILexicalBlock(scope: !5291, file: !5020, line: 35, column: 2)
!5294 = !DILocation(line: 35, column: 2, scope: !5295)
!5295 = distinct !DILexicalBlock(scope: !5291, file: !5020, line: 35, column: 2)
!5296 = !DILocation(line: 36, column: 15, scope: !5286)
!5297 = !DILocation(line: 36, column: 2, scope: !5286)
!5298 = !DILocation(line: 36, column: 8, scope: !5286)
!5299 = !DILocation(line: 36, column: 13, scope: !5286)
!5300 = !DILocation(line: 37, column: 1, scope: !5286)
!5301 = distinct !DISubprogram(name: "acpi_dma_parse_fixed_dma", scope: !3, file: !3, line: 333, type: !5302, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5302 = !DISubroutineType(types: !5303)
!5303 = !{!193, !5304, !187}
!5304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5305, size: 64)
!5305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource", file: !5306, line: 651, size: 544, elements: !5307)
!5306 = !DIFile(filename: "./include/acpi/acrestyp.h", directory: "/home/lizy2001/genbc/linux")
!5307 = !{!5308, !5309, !5310}
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5305, file: !5306, line: 652, baseType: !439, size: 32)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5305, file: !5306, line: 653, baseType: !439, size: 32, offset: 32)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5305, file: !5306, line: 654, baseType: !5311, size: 480, offset: 64)
!5311 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_resource_data", file: !5306, line: 614, size: 480, elements: !5312)
!5312 = !{!5313, !5324, !5332, !5338, !5346, !5351, !5357, !5362, !5370, !5374, !5382, !5390, !5396, !5436, !5454, !5472, !5484, !5496, !5504, !5524, !5540, !5560, !5582, !5595, !5607, !5620, !5634, !5645, !5657}
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !5311, file: !5306, line: 615, baseType: !5314, size: 56)
!5314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_irq", file: !5306, line: 138, size: 56, elements: !5315)
!5315 = !{!5316, !5317, !5318, !5319, !5320, !5321, !5322}
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_length", scope: !5314, file: !5306, line: 139, baseType: !1417, size: 8)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !5314, file: !5306, line: 140, baseType: !1417, size: 8, offset: 8)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !5314, file: !5306, line: 141, baseType: !1417, size: 8, offset: 16)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !5314, file: !5306, line: 142, baseType: !1417, size: 8, offset: 24)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !5314, file: !5306, line: 143, baseType: !1417, size: 8, offset: 32)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !5314, file: !5306, line: 144, baseType: !1417, size: 8, offset: 40)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !5314, file: !5306, line: 145, baseType: !5323, size: 8, offset: 48)
!5323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1417, size: 8, elements: !1436)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !5311, file: !5306, line: 616, baseType: !5325, size: 40)
!5325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_dma", file: !5306, line: 148, size: 40, elements: !5326)
!5326 = !{!5327, !5328, !5329, !5330, !5331}
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5325, file: !5306, line: 149, baseType: !1417, size: 8)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "bus_master", scope: !5325, file: !5306, line: 150, baseType: !1417, size: 8, offset: 8)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "transfer", scope: !5325, file: !5306, line: 151, baseType: !1417, size: 8, offset: 16)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "channel_count", scope: !5325, file: !5306, line: 152, baseType: !1417, size: 8, offset: 24)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !5325, file: !5306, line: 153, baseType: !5323, size: 8, offset: 32)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "start_dpf", scope: !5311, file: !5306, line: 617, baseType: !5333, size: 24)
!5333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_start_dependent", file: !5306, line: 156, size: 24, elements: !5334)
!5334 = !{!5335, !5336, !5337}
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_length", scope: !5333, file: !5306, line: 157, baseType: !1417, size: 8)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "compatibility_priority", scope: !5333, file: !5306, line: 158, baseType: !1417, size: 8, offset: 8)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "performance_robustness", scope: !5333, file: !5306, line: 159, baseType: !1417, size: 8, offset: 16)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !5311, file: !5306, line: 618, baseType: !5339, size: 56)
!5339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_io", file: !5306, line: 167, size: 56, elements: !5340)
!5340 = !{!5341, !5342, !5343, !5344, !5345}
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "io_decode", scope: !5339, file: !5306, line: 168, baseType: !1417, size: 8)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !5339, file: !5306, line: 169, baseType: !1417, size: 8, offset: 8)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !5339, file: !5306, line: 170, baseType: !1417, size: 8, offset: 16)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !5339, file: !5306, line: 171, baseType: !885, size: 16, offset: 24)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !5339, file: !5306, line: 172, baseType: !885, size: 16, offset: 40)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_io", scope: !5311, file: !5306, line: 619, baseType: !5347, size: 24)
!5347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_io", file: !5306, line: 175, size: 24, elements: !5348)
!5348 = !{!5349, !5350}
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5347, file: !5306, line: 176, baseType: !885, size: 16)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !5347, file: !5306, line: 177, baseType: !1417, size: 8, offset: 16)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_dma", scope: !5311, file: !5306, line: 620, baseType: !5352, size: 40)
!5352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_dma", file: !5306, line: 180, size: 40, elements: !5353)
!5353 = !{!5354, !5355, !5356}
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "request_lines", scope: !5352, file: !5306, line: 181, baseType: !885, size: 16)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !5352, file: !5306, line: 182, baseType: !885, size: 16, offset: 16)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !5352, file: !5306, line: 183, baseType: !1417, size: 8, offset: 32)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !5311, file: !5306, line: 621, baseType: !5358, size: 24)
!5358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_vendor", file: !5306, line: 195, size: 24, elements: !5359)
!5359 = !{!5360, !5361}
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "byte_length", scope: !5358, file: !5306, line: 196, baseType: !885, size: 16)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "byte_data", scope: !5358, file: !5306, line: 197, baseType: !5323, size: 8, offset: 16)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_typed", scope: !5311, file: !5306, line: 622, baseType: !5363, size: 160)
!5363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_vendor_typed", file: !5306, line: 202, size: 160, elements: !5364)
!5364 = !{!5365, !5366, !5367, !5369}
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "byte_length", scope: !5363, file: !5306, line: 203, baseType: !885, size: 16)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "uuid_subtype", scope: !5363, file: !5306, line: 204, baseType: !1417, size: 8, offset: 16)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !5363, file: !5306, line: 205, baseType: !5368, size: 128, offset: 24)
!5368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1417, size: 128, elements: !1800)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "byte_data", scope: !5363, file: !5306, line: 206, baseType: !5323, size: 8, offset: 152)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "end_tag", scope: !5311, file: !5306, line: 623, baseType: !5371, size: 8)
!5371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_end_tag", file: !5306, line: 209, size: 8, elements: !5372)
!5372 = !{!5373}
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !5371, file: !5306, line: 210, baseType: !1417, size: 8)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "memory24", scope: !5311, file: !5306, line: 624, baseType: !5375, size: 72)
!5375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_memory24", file: !5306, line: 213, size: 72, elements: !5376)
!5376 = !{!5377, !5378, !5379, !5380, !5381}
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !5375, file: !5306, line: 214, baseType: !1417, size: 8)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !5375, file: !5306, line: 215, baseType: !885, size: 16, offset: 8)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !5375, file: !5306, line: 216, baseType: !885, size: 16, offset: 24)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !5375, file: !5306, line: 217, baseType: !885, size: 16, offset: 40)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !5375, file: !5306, line: 218, baseType: !885, size: 16, offset: 56)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "memory32", scope: !5311, file: !5306, line: 625, baseType: !5383, size: 136)
!5383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_memory32", file: !5306, line: 221, size: 136, elements: !5384)
!5384 = !{!5385, !5386, !5387, !5388, !5389}
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !5383, file: !5306, line: 222, baseType: !1417, size: 8)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !5383, file: !5306, line: 223, baseType: !439, size: 32, offset: 8)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !5383, file: !5306, line: 224, baseType: !439, size: 32, offset: 40)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !5383, file: !5306, line: 225, baseType: !439, size: 32, offset: 72)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !5383, file: !5306, line: 226, baseType: !439, size: 32, offset: 104)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_memory32", scope: !5311, file: !5306, line: 626, baseType: !5391, size: 72)
!5391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_memory32", file: !5306, line: 229, size: 72, elements: !5392)
!5392 = !{!5393, !5394, !5395}
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !5391, file: !5306, line: 230, baseType: !1417, size: 8)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5391, file: !5306, line: 231, baseType: !439, size: 32, offset: 8)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !5391, file: !5306, line: 232, baseType: !439, size: 32, offset: 40)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "address16", scope: !5311, file: !5306, line: 627, baseType: !5397, size: 240)
!5397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address16", file: !5306, line: 306, size: 240, elements: !5398)
!5398 = !{!5399, !5400, !5401, !5402, !5403, !5404, !5422, !5430}
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !5397, file: !5306, line: 307, baseType: !1417, size: 8)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5397, file: !5306, line: 307, baseType: !1417, size: 8, offset: 8)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !5397, file: !5306, line: 307, baseType: !1417, size: 8, offset: 16)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !5397, file: !5306, line: 307, baseType: !1417, size: 8, offset: 24)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !5397, file: !5306, line: 307, baseType: !1417, size: 8, offset: 32)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5397, file: !5306, line: 307, baseType: !5405, size: 32, offset: 40)
!5405 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_resource_attribute", file: !5306, line: 249, size: 32, elements: !5406)
!5406 = !{!5407, !5414, !5421}
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !5405, file: !5306, line: 250, baseType: !5408, size: 32)
!5408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_memory_attribute", file: !5306, line: 235, size: 32, elements: !5409)
!5409 = !{!5410, !5411, !5412, !5413}
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !5408, file: !5306, line: 236, baseType: !1417, size: 8)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "caching", scope: !5408, file: !5306, line: 237, baseType: !1417, size: 8, offset: 8)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "range_type", scope: !5408, file: !5306, line: 238, baseType: !1417, size: 8, offset: 16)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "translation", scope: !5408, file: !5306, line: 239, baseType: !1417, size: 8, offset: 24)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !5405, file: !5306, line: 251, baseType: !5415, size: 32)
!5415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_io_attribute", file: !5306, line: 242, size: 32, elements: !5416)
!5416 = !{!5417, !5418, !5419, !5420}
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "range_type", scope: !5415, file: !5306, line: 243, baseType: !1417, size: 8)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "translation", scope: !5415, file: !5306, line: 244, baseType: !1417, size: 8, offset: 8)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "translation_type", scope: !5415, file: !5306, line: 245, baseType: !1417, size: 8, offset: 16)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !5415, file: !5306, line: 246, baseType: !1417, size: 8, offset: 24)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !5405, file: !5306, line: 255, baseType: !1417, size: 8)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5397, file: !5306, line: 307, baseType: !5423, size: 80, offset: 72)
!5423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address16_attribute", file: !5306, line: 279, size: 80, elements: !5424)
!5424 = !{!5425, !5426, !5427, !5428, !5429}
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !5423, file: !5306, line: 280, baseType: !885, size: 16)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !5423, file: !5306, line: 281, baseType: !885, size: 16, offset: 16)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !5423, file: !5306, line: 282, baseType: !885, size: 16, offset: 32)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !5423, file: !5306, line: 283, baseType: !885, size: 16, offset: 48)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !5423, file: !5306, line: 284, baseType: !885, size: 16, offset: 64)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5397, file: !5306, line: 308, baseType: !5431, size: 88, offset: 152)
!5431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_source", file: !5306, line: 263, size: 88, elements: !5432)
!5432 = !{!5433, !5434, !5435}
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5431, file: !5306, line: 264, baseType: !1417, size: 8)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "string_length", scope: !5431, file: !5306, line: 265, baseType: !885, size: 16, offset: 8)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "string_ptr", scope: !5431, file: !5306, line: 266, baseType: !298, size: 64, offset: 24)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "address32", scope: !5311, file: !5306, line: 628, baseType: !5437, size: 320)
!5437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address32", file: !5306, line: 311, size: 320, elements: !5438)
!5438 = !{!5439, !5440, !5441, !5442, !5443, !5444, !5445, !5453}
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !5437, file: !5306, line: 312, baseType: !1417, size: 8)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5437, file: !5306, line: 312, baseType: !1417, size: 8, offset: 8)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !5437, file: !5306, line: 312, baseType: !1417, size: 8, offset: 16)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !5437, file: !5306, line: 312, baseType: !1417, size: 8, offset: 24)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !5437, file: !5306, line: 312, baseType: !1417, size: 8, offset: 32)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5437, file: !5306, line: 312, baseType: !5405, size: 32, offset: 40)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5437, file: !5306, line: 312, baseType: !5446, size: 160, offset: 72)
!5446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address32_attribute", file: !5306, line: 287, size: 160, elements: !5447)
!5447 = !{!5448, !5449, !5450, !5451, !5452}
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !5446, file: !5306, line: 288, baseType: !439, size: 32)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !5446, file: !5306, line: 289, baseType: !439, size: 32, offset: 32)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !5446, file: !5306, line: 290, baseType: !439, size: 32, offset: 64)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !5446, file: !5306, line: 291, baseType: !439, size: 32, offset: 96)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !5446, file: !5306, line: 292, baseType: !439, size: 32, offset: 128)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5437, file: !5306, line: 313, baseType: !5431, size: 88, offset: 232)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "address64", scope: !5311, file: !5306, line: 629, baseType: !5455, size: 480)
!5455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address64", file: !5306, line: 316, size: 480, elements: !5456)
!5456 = !{!5457, !5458, !5459, !5460, !5461, !5462, !5463, !5471}
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !5455, file: !5306, line: 317, baseType: !1417, size: 8)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5455, file: !5306, line: 317, baseType: !1417, size: 8, offset: 8)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !5455, file: !5306, line: 317, baseType: !1417, size: 8, offset: 16)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !5455, file: !5306, line: 317, baseType: !1417, size: 8, offset: 24)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !5455, file: !5306, line: 317, baseType: !1417, size: 8, offset: 32)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5455, file: !5306, line: 317, baseType: !5405, size: 32, offset: 40)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5455, file: !5306, line: 317, baseType: !5464, size: 320, offset: 72)
!5464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address64_attribute", file: !5306, line: 295, size: 320, elements: !5465)
!5465 = !{!5466, !5467, !5468, !5469, !5470}
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !5464, file: !5306, line: 296, baseType: !445, size: 64)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !5464, file: !5306, line: 297, baseType: !445, size: 64, offset: 64)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !5464, file: !5306, line: 298, baseType: !445, size: 64, offset: 128)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !5464, file: !5306, line: 299, baseType: !445, size: 64, offset: 192)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !5464, file: !5306, line: 300, baseType: !445, size: 64, offset: 256)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5455, file: !5306, line: 318, baseType: !5431, size: 88, offset: 392)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "ext_address64", scope: !5311, file: !5306, line: 630, baseType: !5473, size: 464)
!5473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_extended_address64", file: !5306, line: 321, size: 464, elements: !5474)
!5474 = !{!5475, !5476, !5477, !5478, !5479, !5480, !5481, !5482, !5483}
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !5473, file: !5306, line: 322, baseType: !1417, size: 8)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5473, file: !5306, line: 322, baseType: !1417, size: 8, offset: 8)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !5473, file: !5306, line: 322, baseType: !1417, size: 8, offset: 16)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !5473, file: !5306, line: 322, baseType: !1417, size: 8, offset: 24)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !5473, file: !5306, line: 322, baseType: !1417, size: 8, offset: 32)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5473, file: !5306, line: 322, baseType: !5405, size: 32, offset: 40)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "revision_ID", scope: !5473, file: !5306, line: 322, baseType: !1417, size: 8, offset: 72)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5473, file: !5306, line: 323, baseType: !5464, size: 320, offset: 80)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !5473, file: !5306, line: 324, baseType: !445, size: 64, offset: 400)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "extended_irq", scope: !5311, file: !5306, line: 631, baseType: !5485, size: 168)
!5485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_extended_irq", file: !5306, line: 327, size: 168, elements: !5486)
!5486 = !{!5487, !5488, !5489, !5490, !5491, !5492, !5493, !5494}
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5485, file: !5306, line: 328, baseType: !1417, size: 8)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !5485, file: !5306, line: 329, baseType: !1417, size: 8, offset: 8)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !5485, file: !5306, line: 330, baseType: !1417, size: 8, offset: 16)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !5485, file: !5306, line: 331, baseType: !1417, size: 8, offset: 24)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !5485, file: !5306, line: 332, baseType: !1417, size: 8, offset: 32)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !5485, file: !5306, line: 333, baseType: !1417, size: 8, offset: 40)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5485, file: !5306, line: 334, baseType: !5431, size: 88, offset: 48)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !5485, file: !5306, line: 335, baseType: !5495, size: 32, offset: 136)
!5495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 32, elements: !1436)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "generic_reg", scope: !5311, file: !5306, line: 632, baseType: !5497, size: 96)
!5497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_generic_register", file: !5306, line: 338, size: 96, elements: !5498)
!5498 = !{!5499, !5500, !5501, !5502, !5503}
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !5497, file: !5306, line: 339, baseType: !1417, size: 8)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !5497, file: !5306, line: 340, baseType: !1417, size: 8, offset: 8)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !5497, file: !5306, line: 341, baseType: !1417, size: 8, offset: 16)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "access_size", scope: !5497, file: !5306, line: 342, baseType: !1417, size: 8, offset: 24)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5497, file: !5306, line: 343, baseType: !445, size: 64, offset: 32)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "gpio", scope: !5311, file: !5306, line: 633, baseType: !5505, size: 352)
!5505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_gpio", file: !5306, line: 346, size: 352, elements: !5506)
!5506 = !{!5507, !5508, !5509, !5510, !5511, !5512, !5513, !5514, !5515, !5516, !5517, !5518, !5519, !5520, !5521, !5523}
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !5505, file: !5306, line: 347, baseType: !1417, size: 8)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "connection_type", scope: !5505, file: !5306, line: 348, baseType: !1417, size: 8, offset: 8)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5505, file: !5306, line: 349, baseType: !1417, size: 8, offset: 16)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !5505, file: !5306, line: 350, baseType: !1417, size: 8, offset: 24)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !5505, file: !5306, line: 351, baseType: !1417, size: 8, offset: 32)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !5505, file: !5306, line: 352, baseType: !1417, size: 8, offset: 40)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "io_restriction", scope: !5505, file: !5306, line: 353, baseType: !1417, size: 8, offset: 48)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !5505, file: !5306, line: 354, baseType: !1417, size: 8, offset: 56)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !5505, file: !5306, line: 355, baseType: !1417, size: 8, offset: 64)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "drive_strength", scope: !5505, file: !5306, line: 356, baseType: !885, size: 16, offset: 72)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "debounce_timeout", scope: !5505, file: !5306, line: 357, baseType: !885, size: 16, offset: 88)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !5505, file: !5306, line: 358, baseType: !885, size: 16, offset: 104)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !5505, file: !5306, line: 359, baseType: !885, size: 16, offset: 120)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5505, file: !5306, line: 360, baseType: !5431, size: 88, offset: 136)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !5505, file: !5306, line: 361, baseType: !5522, size: 64, offset: 224)
!5522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !5505, file: !5306, line: 362, baseType: !4029, size: 64, offset: 288)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_serial_bus", scope: !5311, file: !5306, line: 634, baseType: !5525, size: 288)
!5525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_i2c_serialbus", file: !5306, line: 412, size: 288, elements: !5526)
!5526 = !{!5527, !5528, !5529, !5530, !5531, !5532, !5533, !5534, !5535, !5536, !5537, !5538, !5539}
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !5525, file: !5306, line: 413, baseType: !1417, size: 8)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5525, file: !5306, line: 413, baseType: !1417, size: 8, offset: 8)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5525, file: !5306, line: 413, baseType: !1417, size: 8, offset: 16)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !5525, file: !5306, line: 413, baseType: !1417, size: 8, offset: 24)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !5525, file: !5306, line: 413, baseType: !1417, size: 8, offset: 32)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !5525, file: !5306, line: 413, baseType: !1417, size: 8, offset: 40)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !5525, file: !5306, line: 413, baseType: !885, size: 16, offset: 48)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !5525, file: !5306, line: 413, baseType: !885, size: 16, offset: 64)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5525, file: !5306, line: 413, baseType: !5431, size: 88, offset: 80)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !5525, file: !5306, line: 413, baseType: !4029, size: 64, offset: 168)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "access_mode", scope: !5525, file: !5306, line: 413, baseType: !1417, size: 8, offset: 232)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "slave_address", scope: !5525, file: !5306, line: 414, baseType: !885, size: 16, offset: 240)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !5525, file: !5306, line: 415, baseType: !439, size: 32, offset: 256)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "spi_serial_bus", scope: !5311, file: !5306, line: 635, baseType: !5541, size: 320)
!5541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_spi_serialbus", file: !5306, line: 423, size: 320, elements: !5542)
!5542 = !{!5543, !5544, !5545, !5546, !5547, !5548, !5549, !5550, !5551, !5552, !5553, !5554, !5555, !5556, !5557, !5558, !5559}
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !5541, file: !5306, line: 424, baseType: !1417, size: 8)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5541, file: !5306, line: 424, baseType: !1417, size: 8, offset: 8)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5541, file: !5306, line: 424, baseType: !1417, size: 8, offset: 16)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !5541, file: !5306, line: 424, baseType: !1417, size: 8, offset: 24)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !5541, file: !5306, line: 424, baseType: !1417, size: 8, offset: 32)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !5541, file: !5306, line: 424, baseType: !1417, size: 8, offset: 40)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !5541, file: !5306, line: 424, baseType: !885, size: 16, offset: 48)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !5541, file: !5306, line: 424, baseType: !885, size: 16, offset: 64)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5541, file: !5306, line: 424, baseType: !5431, size: 88, offset: 80)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !5541, file: !5306, line: 424, baseType: !4029, size: 64, offset: 168)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "wire_mode", scope: !5541, file: !5306, line: 424, baseType: !1417, size: 8, offset: 232)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "device_polarity", scope: !5541, file: !5306, line: 425, baseType: !1417, size: 8, offset: 240)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "data_bit_length", scope: !5541, file: !5306, line: 426, baseType: !1417, size: 8, offset: 248)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "clock_phase", scope: !5541, file: !5306, line: 427, baseType: !1417, size: 8, offset: 256)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "clock_polarity", scope: !5541, file: !5306, line: 428, baseType: !1417, size: 8, offset: 264)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "device_selection", scope: !5541, file: !5306, line: 429, baseType: !885, size: 16, offset: 272)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !5541, file: !5306, line: 430, baseType: !439, size: 32, offset: 288)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "uart_serial_bus", scope: !5311, file: !5306, line: 636, baseType: !5561, size: 344)
!5561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_uart_serialbus", file: !5306, line: 453, size: 344, elements: !5562)
!5562 = !{!5563, !5564, !5565, !5566, !5567, !5568, !5569, !5570, !5571, !5572, !5573, !5574, !5575, !5576, !5577, !5578, !5579, !5580, !5581}
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !5561, file: !5306, line: 454, baseType: !1417, size: 8)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5561, file: !5306, line: 454, baseType: !1417, size: 8, offset: 8)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5561, file: !5306, line: 454, baseType: !1417, size: 8, offset: 16)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !5561, file: !5306, line: 454, baseType: !1417, size: 8, offset: 24)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !5561, file: !5306, line: 454, baseType: !1417, size: 8, offset: 32)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !5561, file: !5306, line: 454, baseType: !1417, size: 8, offset: 40)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !5561, file: !5306, line: 454, baseType: !885, size: 16, offset: 48)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !5561, file: !5306, line: 454, baseType: !885, size: 16, offset: 64)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5561, file: !5306, line: 454, baseType: !5431, size: 88, offset: 80)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !5561, file: !5306, line: 454, baseType: !4029, size: 64, offset: 168)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !5561, file: !5306, line: 454, baseType: !1417, size: 8, offset: 232)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "data_bits", scope: !5561, file: !5306, line: 455, baseType: !1417, size: 8, offset: 240)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bits", scope: !5561, file: !5306, line: 456, baseType: !1417, size: 8, offset: 248)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "flow_control", scope: !5561, file: !5306, line: 457, baseType: !1417, size: 8, offset: 256)
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !5561, file: !5306, line: 458, baseType: !1417, size: 8, offset: 264)
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "lines_enabled", scope: !5561, file: !5306, line: 459, baseType: !1417, size: 8, offset: 272)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "rx_fifo_size", scope: !5561, file: !5306, line: 460, baseType: !885, size: 16, offset: 280)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "tx_fifo_size", scope: !5561, file: !5306, line: 461, baseType: !885, size: 16, offset: 296)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "default_baud_rate", scope: !5561, file: !5306, line: 462, baseType: !439, size: 32, offset: 312)
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "common_serial_bus", scope: !5311, file: !5306, line: 637, baseType: !5583, size: 232)
!5583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_common_serialbus", file: !5306, line: 398, size: 232, elements: !5584)
!5584 = !{!5585, !5586, !5587, !5588, !5589, !5590, !5591, !5592, !5593, !5594}
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !5583, file: !5306, line: 399, baseType: !1417, size: 8)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5583, file: !5306, line: 399, baseType: !1417, size: 8, offset: 8)
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5583, file: !5306, line: 399, baseType: !1417, size: 8, offset: 16)
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !5583, file: !5306, line: 399, baseType: !1417, size: 8, offset: 24)
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !5583, file: !5306, line: 399, baseType: !1417, size: 8, offset: 32)
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !5583, file: !5306, line: 399, baseType: !1417, size: 8, offset: 40)
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !5583, file: !5306, line: 399, baseType: !885, size: 16, offset: 48)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !5583, file: !5306, line: 399, baseType: !885, size: 16, offset: 64)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5583, file: !5306, line: 399, baseType: !5431, size: 88, offset: 80)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !5583, file: !5306, line: 399, baseType: !4029, size: 64, offset: 168)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "pin_function", scope: !5311, file: !5306, line: 638, baseType: !5596, size: 288)
!5596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_function", file: !5306, line: 508, size: 288, elements: !5597)
!5597 = !{!5598, !5599, !5600, !5601, !5602, !5603, !5604, !5605, !5606}
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !5596, file: !5306, line: 509, baseType: !1417, size: 8)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !5596, file: !5306, line: 510, baseType: !1417, size: 8, offset: 8)
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !5596, file: !5306, line: 511, baseType: !1417, size: 8, offset: 16)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !5596, file: !5306, line: 512, baseType: !885, size: 16, offset: 24)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !5596, file: !5306, line: 513, baseType: !885, size: 16, offset: 40)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !5596, file: !5306, line: 514, baseType: !885, size: 16, offset: 56)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5596, file: !5306, line: 515, baseType: !5431, size: 88, offset: 72)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !5596, file: !5306, line: 516, baseType: !5522, size: 64, offset: 160)
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !5596, file: !5306, line: 517, baseType: !4029, size: 64, offset: 224)
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !5311, file: !5306, line: 639, baseType: !5608, size: 312)
!5608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_config", file: !5306, line: 520, size: 312, elements: !5609)
!5609 = !{!5610, !5611, !5612, !5613, !5614, !5615, !5616, !5617, !5618, !5619}
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !5608, file: !5306, line: 521, baseType: !1417, size: 8)
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5608, file: !5306, line: 522, baseType: !1417, size: 8, offset: 8)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !5608, file: !5306, line: 523, baseType: !1417, size: 8, offset: 16)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !5608, file: !5306, line: 524, baseType: !1417, size: 8, offset: 24)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !5608, file: !5306, line: 525, baseType: !439, size: 32, offset: 32)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !5608, file: !5306, line: 526, baseType: !885, size: 16, offset: 64)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !5608, file: !5306, line: 527, baseType: !885, size: 16, offset: 80)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5608, file: !5306, line: 528, baseType: !5431, size: 88, offset: 96)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !5608, file: !5306, line: 529, baseType: !5522, size: 64, offset: 184)
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !5608, file: !5306, line: 530, baseType: !4029, size: 64, offset: 248)
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group", scope: !5311, file: !5306, line: 640, baseType: !5621, size: 256)
!5621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group", file: !5306, line: 550, size: 256, elements: !5622)
!5622 = !{!5623, !5624, !5625, !5626, !5627, !5628, !5633}
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !5621, file: !5306, line: 551, baseType: !1417, size: 8)
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5621, file: !5306, line: 552, baseType: !1417, size: 8, offset: 8)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !5621, file: !5306, line: 553, baseType: !885, size: 16, offset: 16)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !5621, file: !5306, line: 554, baseType: !885, size: 16, offset: 32)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !5621, file: !5306, line: 555, baseType: !5522, size: 64, offset: 48)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "resource_label", scope: !5621, file: !5306, line: 556, baseType: !5629, size: 80, offset: 112)
!5629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_label", file: !5306, line: 258, size: 80, elements: !5630)
!5630 = !{!5631, !5632}
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "string_length", scope: !5629, file: !5306, line: 259, baseType: !885, size: 16)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "string_ptr", scope: !5629, file: !5306, line: 260, baseType: !298, size: 64, offset: 16)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !5621, file: !5306, line: 557, baseType: !4029, size: 64, offset: 192)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_function", scope: !5311, file: !5306, line: 641, baseType: !5635, size: 288)
!5635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group_function", file: !5306, line: 560, size: 288, elements: !5636)
!5636 = !{!5637, !5638, !5639, !5640, !5641, !5642, !5643, !5644}
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !5635, file: !5306, line: 561, baseType: !1417, size: 8)
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5635, file: !5306, line: 562, baseType: !1417, size: 8, offset: 8)
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !5635, file: !5306, line: 563, baseType: !1417, size: 8, offset: 16)
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !5635, file: !5306, line: 564, baseType: !885, size: 16, offset: 24)
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !5635, file: !5306, line: 565, baseType: !885, size: 16, offset: 40)
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5635, file: !5306, line: 566, baseType: !5431, size: 88, offset: 56)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source_label", scope: !5635, file: !5306, line: 567, baseType: !5629, size: 80, offset: 144)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !5635, file: !5306, line: 568, baseType: !4029, size: 64, offset: 224)
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_config", scope: !5311, file: !5306, line: 642, baseType: !5646, size: 312)
!5646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group_config", file: !5306, line: 571, size: 312, elements: !5647)
!5647 = !{!5648, !5649, !5650, !5651, !5652, !5653, !5654, !5655, !5656}
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !5646, file: !5306, line: 572, baseType: !1417, size: 8)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5646, file: !5306, line: 573, baseType: !1417, size: 8, offset: 8)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !5646, file: !5306, line: 574, baseType: !1417, size: 8, offset: 16)
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !5646, file: !5306, line: 575, baseType: !1417, size: 8, offset: 24)
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !5646, file: !5306, line: 576, baseType: !439, size: 32, offset: 32)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !5646, file: !5306, line: 577, baseType: !885, size: 16, offset: 64)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5646, file: !5306, line: 578, baseType: !5431, size: 88, offset: 80)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source_label", scope: !5646, file: !5306, line: 579, baseType: !5629, size: 80, offset: 168)
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !5646, file: !5306, line: 580, baseType: !4029, size: 64, offset: 248)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5311, file: !5306, line: 646, baseType: !5658, size: 72)
!5658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address", file: !5306, line: 303, size: 72, elements: !5659)
!5659 = !{!5660, !5661, !5662, !5663, !5664, !5665}
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !5658, file: !5306, line: 304, baseType: !1417, size: 8)
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5658, file: !5306, line: 304, baseType: !1417, size: 8, offset: 8)
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !5658, file: !5306, line: 304, baseType: !1417, size: 8, offset: 16)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !5658, file: !5306, line: 304, baseType: !1417, size: 8, offset: 24)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !5658, file: !5306, line: 304, baseType: !1417, size: 8, offset: 32)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5658, file: !5306, line: 304, baseType: !5405, size: 32, offset: 40)
!5666 = !DILocalVariable(name: "res", arg: 1, scope: !5301, file: !3, line: 333, type: !5304)
!5667 = !DILocation(line: 333, column: 59, scope: !5301)
!5668 = !DILocalVariable(name: "data", arg: 2, scope: !5301, file: !3, line: 333, type: !187)
!5669 = !DILocation(line: 333, column: 70, scope: !5301)
!5670 = !DILocalVariable(name: "pdata", scope: !5301, file: !3, line: 335, type: !5671)
!5671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5177, size: 64)
!5672 = !DILocation(line: 335, column: 31, scope: !5301)
!5673 = !DILocation(line: 335, column: 39, scope: !5301)
!5674 = !DILocation(line: 337, column: 6, scope: !5675)
!5675 = distinct !DILexicalBlock(scope: !5301, file: !3, line: 337, column: 6)
!5676 = !DILocation(line: 337, column: 11, scope: !5675)
!5677 = !DILocation(line: 337, column: 16, scope: !5675)
!5678 = !DILocation(line: 337, column: 6, scope: !5301)
!5679 = !DILocalVariable(name: "dma", scope: !5680, file: !3, line: 338, type: !5681)
!5680 = distinct !DILexicalBlock(scope: !5675, file: !3, line: 337, column: 49)
!5681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5352, size: 64)
!5682 = !DILocation(line: 338, column: 35, scope: !5680)
!5683 = !DILocation(line: 338, column: 42, scope: !5680)
!5684 = !DILocation(line: 338, column: 47, scope: !5680)
!5685 = !DILocation(line: 338, column: 52, scope: !5680)
!5686 = !DILocation(line: 340, column: 7, scope: !5687)
!5687 = distinct !DILexicalBlock(scope: !5680, file: !3, line: 340, column: 7)
!5688 = !DILocation(line: 340, column: 14, scope: !5687)
!5689 = !DILocation(line: 340, column: 15, scope: !5687)
!5690 = !DILocation(line: 340, column: 21, scope: !5687)
!5691 = !DILocation(line: 340, column: 28, scope: !5687)
!5692 = !DILocation(line: 340, column: 18, scope: !5687)
!5693 = !DILocation(line: 340, column: 7, scope: !5680)
!5694 = !DILocation(line: 341, column: 30, scope: !5695)
!5695 = distinct !DILexicalBlock(scope: !5687, file: !3, line: 340, column: 35)
!5696 = !DILocation(line: 341, column: 35, scope: !5695)
!5697 = !DILocation(line: 341, column: 4, scope: !5695)
!5698 = !DILocation(line: 341, column: 11, scope: !5695)
!5699 = !DILocation(line: 341, column: 20, scope: !5695)
!5700 = !DILocation(line: 341, column: 28, scope: !5695)
!5701 = !DILocation(line: 342, column: 31, scope: !5695)
!5702 = !DILocation(line: 342, column: 36, scope: !5695)
!5703 = !DILocation(line: 342, column: 4, scope: !5695)
!5704 = !DILocation(line: 342, column: 11, scope: !5695)
!5705 = !DILocation(line: 342, column: 20, scope: !5695)
!5706 = !DILocation(line: 342, column: 29, scope: !5695)
!5707 = !DILocation(line: 343, column: 3, scope: !5695)
!5708 = !DILocation(line: 344, column: 2, scope: !5680)
!5709 = !DILocation(line: 347, column: 2, scope: !5301)
!5710 = distinct !DISubprogram(name: "ERR_PTR", scope: !5711, file: !5711, line: 24, type: !5712, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5711 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!5712 = !DISubroutineType(types: !5713)
!5713 = !{!187, !333}
!5714 = !DILocalVariable(name: "error", arg: 1, scope: !5710, file: !5711, line: 24, type: !333)
!5715 = !DILocation(line: 24, column: 48, scope: !5710)
!5716 = !DILocation(line: 26, column: 18, scope: !5710)
!5717 = !DILocation(line: 26, column: 9, scope: !5710)
!5718 = !DILocation(line: 26, column: 2, scope: !5710)
!5719 = distinct !DISubprogram(name: "acpi_dma_update_dma_spec", scope: !3, file: !3, line: 298, type: !5720, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5720 = !DISubroutineType(types: !5721)
!5721 = !{!193, !4224, !4527}
!5722 = !DILocalVariable(name: "adma", arg: 1, scope: !5719, file: !3, line: 298, type: !4224)
!5723 = !DILocation(line: 298, column: 54, scope: !5719)
!5724 = !DILocalVariable(name: "dma_spec", arg: 2, scope: !5719, file: !3, line: 299, type: !4527)
!5725 = !DILocation(line: 299, column: 25, scope: !5719)
!5726 = !DILocation(line: 302, column: 18, scope: !5719)
!5727 = !DILocation(line: 302, column: 24, scope: !5719)
!5728 = !DILocation(line: 302, column: 2, scope: !5719)
!5729 = !DILocation(line: 302, column: 12, scope: !5719)
!5730 = !DILocation(line: 302, column: 16, scope: !5719)
!5731 = !DILocation(line: 305, column: 6, scope: !5732)
!5732 = distinct !DILexicalBlock(scope: !5719, file: !3, line: 305, column: 6)
!5733 = !DILocation(line: 305, column: 12, scope: !5732)
!5734 = !DILocation(line: 305, column: 30, scope: !5732)
!5735 = !DILocation(line: 305, column: 35, scope: !5732)
!5736 = !DILocation(line: 305, column: 38, scope: !5732)
!5737 = !DILocation(line: 305, column: 44, scope: !5732)
!5738 = !DILocation(line: 305, column: 61, scope: !5732)
!5739 = !DILocation(line: 305, column: 6, scope: !5719)
!5740 = !DILocation(line: 306, column: 3, scope: !5732)
!5741 = !DILocation(line: 309, column: 6, scope: !5742)
!5742 = distinct !DILexicalBlock(scope: !5719, file: !3, line: 309, column: 6)
!5743 = !DILocation(line: 309, column: 16, scope: !5742)
!5744 = !DILocation(line: 309, column: 27, scope: !5742)
!5745 = !DILocation(line: 309, column: 33, scope: !5742)
!5746 = !DILocation(line: 309, column: 25, scope: !5742)
!5747 = !DILocation(line: 309, column: 51, scope: !5742)
!5748 = !DILocation(line: 310, column: 6, scope: !5742)
!5749 = !DILocation(line: 310, column: 16, scope: !5742)
!5750 = !DILocation(line: 310, column: 27, scope: !5742)
!5751 = !DILocation(line: 310, column: 33, scope: !5742)
!5752 = !DILocation(line: 310, column: 25, scope: !5742)
!5753 = !DILocation(line: 309, column: 6, scope: !5719)
!5754 = !DILocation(line: 311, column: 3, scope: !5742)
!5755 = !DILocation(line: 317, column: 24, scope: !5719)
!5756 = !DILocation(line: 317, column: 30, scope: !5719)
!5757 = !DILocation(line: 317, column: 2, scope: !5719)
!5758 = !DILocation(line: 317, column: 12, scope: !5719)
!5759 = !DILocation(line: 317, column: 21, scope: !5719)
!5760 = !DILocation(line: 319, column: 2, scope: !5719)
!5761 = !DILocation(line: 320, column: 1, scope: !5719)
!5762 = distinct !DISubprogram(name: "acpi_dma_request_slave_chan_by_name", scope: !3, file: !3, line: 428, type: !5763, scopeLine: 430, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5763 = !DISubroutineType(types: !5764)
!5764 = !{!4234, !3435, !240}
!5765 = !DILocalVariable(name: "dev", arg: 1, scope: !5762, file: !3, line: 428, type: !3435)
!5766 = !DILocation(line: 428, column: 69, scope: !5762)
!5767 = !DILocalVariable(name: "name", arg: 2, scope: !5762, file: !3, line: 429, type: !240)
!5768 = !DILocation(line: 429, column: 15, scope: !5762)
!5769 = !DILocalVariable(name: "index", scope: !5762, file: !3, line: 431, type: !193)
!5770 = !DILocation(line: 431, column: 6, scope: !5762)
!5771 = !DILocation(line: 433, column: 39, scope: !5762)
!5772 = !DILocation(line: 433, column: 57, scope: !5762)
!5773 = !DILocation(line: 433, column: 10, scope: !5762)
!5774 = !DILocation(line: 433, column: 8, scope: !5762)
!5775 = !DILocation(line: 434, column: 6, scope: !5776)
!5776 = distinct !DILexicalBlock(scope: !5762, file: !3, line: 434, column: 6)
!5777 = !DILocation(line: 434, column: 12, scope: !5776)
!5778 = !DILocation(line: 434, column: 6, scope: !5762)
!5779 = !DILocation(line: 435, column: 15, scope: !5780)
!5780 = distinct !DILexicalBlock(scope: !5781, file: !3, line: 435, column: 7)
!5781 = distinct !DILexicalBlock(scope: !5776, file: !3, line: 434, column: 17)
!5782 = !DILocation(line: 435, column: 8, scope: !5780)
!5783 = !DILocation(line: 435, column: 7, scope: !5781)
!5784 = !DILocation(line: 436, column: 10, scope: !5780)
!5785 = !DILocation(line: 436, column: 4, scope: !5780)
!5786 = !DILocation(line: 437, column: 20, scope: !5787)
!5787 = distinct !DILexicalBlock(scope: !5780, file: !3, line: 437, column: 12)
!5788 = !DILocation(line: 437, column: 13, scope: !5787)
!5789 = !DILocation(line: 437, column: 12, scope: !5780)
!5790 = !DILocation(line: 438, column: 10, scope: !5787)
!5791 = !DILocation(line: 438, column: 4, scope: !5787)
!5792 = !DILocation(line: 440, column: 11, scope: !5787)
!5793 = !DILocation(line: 440, column: 4, scope: !5787)
!5794 = !DILocation(line: 441, column: 2, scope: !5781)
!5795 = !DILocation(line: 444, column: 46, scope: !5762)
!5796 = !DILocation(line: 444, column: 51, scope: !5762)
!5797 = !DILocation(line: 444, column: 9, scope: !5762)
!5798 = !DILocation(line: 444, column: 2, scope: !5762)
!5799 = !DILocation(line: 445, column: 1, scope: !5762)
!5800 = distinct !DISubprogram(name: "acpi_dma_simple_xlate", scope: !3, file: !3, line: 459, type: !4232, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5801 = !DILocalVariable(name: "dma_spec", arg: 1, scope: !5800, file: !3, line: 459, type: !4527)
!5802 = !DILocation(line: 459, column: 62, scope: !5800)
!5803 = !DILocalVariable(name: "adma", arg: 2, scope: !5800, file: !3, line: 460, type: !4224)
!5804 = !DILocation(line: 460, column: 20, scope: !5800)
!5805 = !DILocalVariable(name: "info", scope: !5800, file: !3, line: 462, type: !5806)
!5806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5807, size: 64)
!5807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_dma_filter_info", file: !4226, line: 52, size: 128, elements: !5808)
!5808 = !{!5809, !5810}
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cap", scope: !5807, file: !4226, line: 53, baseType: !4264, size: 64)
!5810 = !DIDerivedType(tag: DW_TAG_member, name: "filter_fn", scope: !5807, file: !4226, line: 54, baseType: !4250, size: 64, offset: 64)
!5811 = !DILocation(line: 462, column: 31, scope: !5800)
!5812 = !DILocation(line: 462, column: 38, scope: !5800)
!5813 = !DILocation(line: 462, column: 44, scope: !5800)
!5814 = !DILocation(line: 464, column: 7, scope: !5815)
!5815 = distinct !DILexicalBlock(scope: !5800, file: !3, line: 464, column: 6)
!5816 = !DILocation(line: 464, column: 12, scope: !5815)
!5817 = !DILocation(line: 464, column: 16, scope: !5815)
!5818 = !DILocation(line: 464, column: 22, scope: !5815)
!5819 = !DILocation(line: 464, column: 6, scope: !5800)
!5820 = !DILocation(line: 465, column: 3, scope: !5815)
!5821 = !DILocation(line: 467, column: 9, scope: !5800)
!5822 = !DILocation(line: 467, column: 2, scope: !5800)
!5823 = !DILocation(line: 468, column: 1, scope: !5800)
!5824 = distinct !DISubprogram(name: "get_order", scope: !5825, file: !5825, line: 29, type: !5826, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5825 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5826 = !DISubroutineType(types: !5827)
!5827 = !{!193, !348}
!5828 = !DILocalVariable(name: "x", arg: 1, scope: !5829, file: !5830, line: 366, type: !446)
!5829 = distinct !DISubprogram(name: "fls64", scope: !5830, file: !5830, line: 366, type: !5831, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5830 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5831 = !DISubroutineType(types: !5832)
!5832 = !{!193, !446}
!5833 = !DILocation(line: 366, column: 40, scope: !5829, inlinedAt: !5834)
!5834 = distinct !DILocation(line: 46, column: 9, scope: !5824)
!5835 = !DILocalVariable(name: "bitpos", scope: !5829, file: !5830, line: 368, type: !193)
!5836 = !DILocation(line: 368, column: 6, scope: !5829, inlinedAt: !5834)
!5837 = !DILocalVariable(name: "size", arg: 1, scope: !5824, file: !5825, line: 29, type: !348)
!5838 = !DILocation(line: 29, column: 63, scope: !5824)
!5839 = !DILocation(line: 31, column: 27, scope: !5840)
!5840 = distinct !DILexicalBlock(scope: !5824, file: !5825, line: 31, column: 6)
!5841 = !DILocation(line: 31, column: 6, scope: !5840)
!5842 = !DILocation(line: 31, column: 6, scope: !5824)
!5843 = !DILocation(line: 32, column: 8, scope: !5844)
!5844 = distinct !DILexicalBlock(scope: !5845, file: !5825, line: 32, column: 7)
!5845 = distinct !DILexicalBlock(scope: !5840, file: !5825, line: 31, column: 34)
!5846 = !DILocation(line: 32, column: 7, scope: !5845)
!5847 = !DILocation(line: 33, column: 4, scope: !5844)
!5848 = !DILocation(line: 35, column: 7, scope: !5849)
!5849 = distinct !DILexicalBlock(scope: !5845, file: !5825, line: 35, column: 7)
!5850 = !DILocation(line: 35, column: 12, scope: !5849)
!5851 = !DILocation(line: 35, column: 7, scope: !5845)
!5852 = !DILocation(line: 36, column: 4, scope: !5849)
!5853 = !DILocation(line: 38, column: 10, scope: !5845)
!5854 = !DILocation(line: 38, column: 28, scope: !5845)
!5855 = !DILocation(line: 38, column: 41, scope: !5845)
!5856 = !DILocation(line: 38, column: 3, scope: !5845)
!5857 = !DILocation(line: 41, column: 6, scope: !5824)
!5858 = !DILocation(line: 42, column: 7, scope: !5824)
!5859 = !DILocation(line: 46, column: 15, scope: !5824)
!5860 = !DILocation(line: 374, column: 2, scope: !5829, inlinedAt: !5834)
!5861 = !DILocation(line: 376, column: 14, scope: !5829, inlinedAt: !5834)
!5862 = !{i32 388566}
!5863 = !DILocation(line: 377, column: 9, scope: !5829, inlinedAt: !5834)
!5864 = !DILocation(line: 377, column: 16, scope: !5829, inlinedAt: !5834)
!5865 = !DILocation(line: 46, column: 2, scope: !5824)
!5866 = !DILocation(line: 48, column: 1, scope: !5824)
!5867 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5868, file: !5868, line: 30, type: !5869, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5868 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5869 = !DISubroutineType(types: !5870)
!5870 = !{!193, !445}
!5871 = !DILocation(line: 366, column: 40, scope: !5829, inlinedAt: !5872)
!5872 = distinct !DILocation(line: 32, column: 9, scope: !5867)
!5873 = !DILocation(line: 368, column: 6, scope: !5829, inlinedAt: !5872)
!5874 = !DILocalVariable(name: "n", arg: 1, scope: !5867, file: !5868, line: 30, type: !445)
!5875 = !DILocation(line: 30, column: 21, scope: !5867)
!5876 = !DILocation(line: 32, column: 15, scope: !5867)
!5877 = !DILocation(line: 374, column: 2, scope: !5829, inlinedAt: !5872)
!5878 = !DILocation(line: 376, column: 14, scope: !5829, inlinedAt: !5872)
!5879 = !DILocation(line: 377, column: 9, scope: !5829, inlinedAt: !5872)
!5880 = !DILocation(line: 377, column: 16, scope: !5829, inlinedAt: !5872)
!5881 = !DILocation(line: 32, column: 18, scope: !5867)
!5882 = !DILocation(line: 32, column: 2, scope: !5867)
!5883 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5884, file: !5884, line: 137, type: !5885, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5884 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5885 = !DISubroutineType(types: !5886)
!5886 = !{!187, !1001, !229, !345, !769}
!5887 = !DILocalVariable(name: "s", arg: 1, scope: !5883, file: !5884, line: 137, type: !1001)
!5888 = !DILocation(line: 137, column: 54, scope: !5883)
!5889 = !DILocalVariable(name: "object", arg: 2, scope: !5883, file: !5884, line: 137, type: !229)
!5890 = !DILocation(line: 137, column: 69, scope: !5883)
!5891 = !DILocalVariable(name: "size", arg: 3, scope: !5883, file: !5884, line: 138, type: !345)
!5892 = !DILocation(line: 138, column: 12, scope: !5883)
!5893 = !DILocalVariable(name: "flags", arg: 4, scope: !5883, file: !5884, line: 138, type: !769)
!5894 = !DILocation(line: 138, column: 24, scope: !5883)
!5895 = !DILocation(line: 140, column: 17, scope: !5883)
!5896 = !DILocation(line: 140, column: 2, scope: !5883)
!5897 = distinct !DISubprogram(name: "acpi_dma_parse_resource_group", scope: !3, file: !3, line: 41, type: !5898, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5898 = !DISubroutineType(types: !5899)
!5899 = !{!193, !5900, !188, !4224}
!5900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5901, size: 64)
!5901 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4553)
!5902 = !DILocalVariable(name: "grp", arg: 1, scope: !5897, file: !3, line: 41, type: !5900)
!5903 = !DILocation(line: 41, column: 72, scope: !5897)
!5904 = !DILocalVariable(name: "adev", arg: 2, scope: !5897, file: !3, line: 42, type: !188)
!5905 = !DILocation(line: 42, column: 23, scope: !5897)
!5906 = !DILocalVariable(name: "adma", arg: 3, scope: !5897, file: !3, line: 42, type: !4224)
!5907 = !DILocation(line: 42, column: 46, scope: !5897)
!5908 = !DILocalVariable(name: "si", scope: !5897, file: !3, line: 44, type: !4585)
!5909 = !DILocation(line: 44, column: 38, scope: !5897)
!5910 = !DILocalVariable(name: "resource_list", scope: !5897, file: !3, line: 45, type: !244)
!5911 = !DILocation(line: 45, column: 19, scope: !5897)
!5912 = !DILocalVariable(name: "rentry", scope: !5897, file: !3, line: 46, type: !4564)
!5913 = !DILocation(line: 46, column: 25, scope: !5897)
!5914 = !DILocalVariable(name: "mem", scope: !5897, file: !3, line: 47, type: !4575)
!5915 = !DILocation(line: 47, column: 18, scope: !5897)
!5916 = !DILocalVariable(name: "irq", scope: !5897, file: !3, line: 47, type: !4575)
!5917 = !DILocation(line: 47, column: 27, scope: !5897)
!5918 = !DILocalVariable(name: "ret", scope: !5897, file: !3, line: 48, type: !193)
!5919 = !DILocation(line: 48, column: 6, scope: !5897)
!5920 = !DILocation(line: 50, column: 6, scope: !5921)
!5921 = distinct !DILexicalBlock(scope: !5897, file: !3, line: 50, column: 6)
!5922 = !DILocation(line: 50, column: 11, scope: !5921)
!5923 = !DILocation(line: 50, column: 30, scope: !5921)
!5924 = !DILocation(line: 50, column: 6, scope: !5897)
!5925 = !DILocation(line: 51, column: 3, scope: !5921)
!5926 = !DILocation(line: 53, column: 2, scope: !5897)
!5927 = !DILocation(line: 54, column: 31, scope: !5897)
!5928 = !DILocation(line: 54, column: 8, scope: !5897)
!5929 = !DILocation(line: 54, column: 6, scope: !5897)
!5930 = !DILocation(line: 55, column: 6, scope: !5931)
!5931 = distinct !DILexicalBlock(scope: !5897, file: !3, line: 55, column: 6)
!5932 = !DILocation(line: 55, column: 10, scope: !5931)
!5933 = !DILocation(line: 55, column: 6, scope: !5897)
!5934 = !DILocation(line: 56, column: 3, scope: !5931)
!5935 = !DILocalVariable(name: "__mptr", scope: !5936, file: !3, line: 58, type: !187)
!5936 = distinct !DILexicalBlock(scope: !5937, file: !3, line: 58, column: 2)
!5937 = distinct !DILexicalBlock(scope: !5897, file: !3, line: 58, column: 2)
!5938 = !DILocation(line: 58, column: 2, scope: !5936)
!5939 = !DILocation(line: 58, column: 2, scope: !5940)
!5940 = distinct !DILexicalBlock(scope: !5936, file: !3, line: 58, column: 2)
!5941 = !DILocation(line: 58, column: 2, scope: !5937)
!5942 = !DILocation(line: 58, column: 2, scope: !5943)
!5943 = distinct !DILexicalBlock(scope: !5937, file: !3, line: 58, column: 2)
!5944 = !DILocation(line: 59, column: 21, scope: !5945)
!5945 = distinct !DILexicalBlock(scope: !5946, file: !3, line: 59, column: 7)
!5946 = distinct !DILexicalBlock(scope: !5943, file: !3, line: 58, column: 52)
!5947 = !DILocation(line: 59, column: 29, scope: !5945)
!5948 = !DILocation(line: 59, column: 7, scope: !5945)
!5949 = !DILocation(line: 59, column: 34, scope: !5945)
!5950 = !DILocation(line: 59, column: 7, scope: !5946)
!5951 = !DILocation(line: 60, column: 10, scope: !5945)
!5952 = !DILocation(line: 60, column: 18, scope: !5945)
!5953 = !DILocation(line: 60, column: 23, scope: !5945)
!5954 = !DILocation(line: 60, column: 8, scope: !5945)
!5955 = !DILocation(line: 60, column: 4, scope: !5945)
!5956 = !DILocation(line: 61, column: 26, scope: !5957)
!5957 = distinct !DILexicalBlock(scope: !5945, file: !3, line: 61, column: 12)
!5958 = !DILocation(line: 61, column: 34, scope: !5957)
!5959 = !DILocation(line: 61, column: 12, scope: !5957)
!5960 = !DILocation(line: 61, column: 39, scope: !5957)
!5961 = !DILocation(line: 61, column: 12, scope: !5945)
!5962 = !DILocation(line: 62, column: 10, scope: !5957)
!5963 = !DILocation(line: 62, column: 18, scope: !5957)
!5964 = !DILocation(line: 62, column: 23, scope: !5957)
!5965 = !DILocation(line: 62, column: 8, scope: !5957)
!5966 = !DILocation(line: 62, column: 4, scope: !5957)
!5967 = !DILocation(line: 63, column: 2, scope: !5946)
!5968 = !DILocalVariable(name: "__mptr", scope: !5969, file: !3, line: 58, type: !187)
!5969 = distinct !DILexicalBlock(scope: !5943, file: !3, line: 58, column: 2)
!5970 = !DILocation(line: 58, column: 2, scope: !5969)
!5971 = !DILocation(line: 58, column: 2, scope: !5972)
!5972 = distinct !DILexicalBlock(scope: !5969, file: !3, line: 58, column: 2)
!5973 = distinct !{!5973, !5941, !5974}
!5974 = !DILocation(line: 63, column: 2, scope: !5937)
!5975 = !DILocation(line: 65, column: 2, scope: !5897)
!5976 = !DILocation(line: 68, column: 6, scope: !5977)
!5977 = distinct !DILexicalBlock(scope: !5897, file: !3, line: 68, column: 6)
!5978 = !DILocation(line: 68, column: 10, scope: !5977)
!5979 = !DILocation(line: 68, column: 15, scope: !5977)
!5980 = !DILocation(line: 68, column: 18, scope: !5977)
!5981 = !DILocation(line: 68, column: 22, scope: !5977)
!5982 = !DILocation(line: 68, column: 6, scope: !5897)
!5983 = !DILocation(line: 69, column: 3, scope: !5977)
!5984 = !DILocation(line: 71, column: 46, scope: !5897)
!5985 = !DILocation(line: 71, column: 7, scope: !5897)
!5986 = !DILocation(line: 71, column: 5, scope: !5897)
!5987 = !DILocation(line: 74, column: 6, scope: !5988)
!5988 = distinct !DILexicalBlock(scope: !5897, file: !3, line: 74, column: 6)
!5989 = !DILocation(line: 74, column: 10, scope: !5988)
!5990 = !DILocation(line: 74, column: 27, scope: !5988)
!5991 = !DILocation(line: 74, column: 24, scope: !5988)
!5992 = !DILocation(line: 74, column: 46, scope: !5988)
!5993 = !DILocation(line: 75, column: 6, scope: !5988)
!5994 = !DILocation(line: 75, column: 10, scope: !5988)
!5995 = !DILocation(line: 75, column: 28, scope: !5988)
!5996 = !DILocation(line: 75, column: 25, scope: !5988)
!5997 = !DILocation(line: 75, column: 47, scope: !5988)
!5998 = !DILocation(line: 76, column: 6, scope: !5988)
!5999 = !DILocation(line: 76, column: 10, scope: !5988)
!6000 = !DILocation(line: 76, column: 27, scope: !5988)
!6001 = !DILocation(line: 76, column: 24, scope: !5988)
!6002 = !DILocation(line: 74, column: 6, scope: !5897)
!6003 = !DILocation(line: 77, column: 3, scope: !5988)
!6004 = !DILocation(line: 83, column: 6, scope: !6005)
!6005 = distinct !DILexicalBlock(scope: !5897, file: !3, line: 83, column: 6)
!6006 = !DILocation(line: 83, column: 10, scope: !6005)
!6007 = !DILocation(line: 83, column: 28, scope: !6005)
!6008 = !DILocation(line: 83, column: 33, scope: !6005)
!6009 = !DILocation(line: 83, column: 36, scope: !6005)
!6010 = !DILocation(line: 83, column: 40, scope: !6005)
!6011 = !DILocation(line: 83, column: 62, scope: !6005)
!6012 = !DILocation(line: 83, column: 6, scope: !5897)
!6013 = !DILocation(line: 84, column: 3, scope: !6005)
!6014 = !DILocation(line: 87, column: 38, scope: !5897)
!6015 = !DILocation(line: 87, column: 44, scope: !5897)
!6016 = !DILocation(line: 88, column: 9, scope: !5897)
!6017 = !DILocation(line: 87, column: 8, scope: !5897)
!6018 = !DILocation(line: 87, column: 6, scope: !5897)
!6019 = !DILocation(line: 89, column: 6, scope: !6020)
!6020 = distinct !DILexicalBlock(scope: !5897, file: !3, line: 89, column: 6)
!6021 = !DILocation(line: 89, column: 6, scope: !5897)
!6022 = !DILocation(line: 90, column: 3, scope: !6020)
!6023 = !DILocation(line: 92, column: 28, scope: !5897)
!6024 = !DILocation(line: 92, column: 32, scope: !5897)
!6025 = !DILocation(line: 92, column: 2, scope: !5897)
!6026 = !DILocation(line: 92, column: 8, scope: !5897)
!6027 = !DILocation(line: 92, column: 26, scope: !5897)
!6028 = !DILocation(line: 93, column: 27, scope: !5897)
!6029 = !DILocation(line: 93, column: 31, scope: !5897)
!6030 = !DILocation(line: 94, column: 6, scope: !5897)
!6031 = !DILocation(line: 94, column: 10, scope: !5897)
!6032 = !DILocation(line: 93, column: 49, scope: !5897)
!6033 = !DILocation(line: 94, column: 32, scope: !5897)
!6034 = !DILocation(line: 93, column: 2, scope: !5897)
!6035 = !DILocation(line: 93, column: 8, scope: !5897)
!6036 = !DILocation(line: 93, column: 25, scope: !5897)
!6037 = !DILocation(line: 99, column: 2, scope: !5897)
!6038 = !DILocation(line: 100, column: 1, scope: !5897)
!6039 = distinct !DISubprogram(name: "resource_type", scope: !4572, file: !4572, line: 214, type: !6040, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!6040 = !DISubroutineType(types: !6041)
!6041 = !{!348, !6042}
!6042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6043, size: 64)
!6043 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4571)
!6044 = !DILocalVariable(name: "res", arg: 1, scope: !6039, file: !4572, line: 214, type: !6042)
!6045 = !DILocation(line: 214, column: 66, scope: !6039)
!6046 = !DILocation(line: 216, column: 9, scope: !6039)
!6047 = !DILocation(line: 216, column: 14, scope: !6039)
!6048 = !DILocation(line: 216, column: 20, scope: !6039)
!6049 = !DILocation(line: 216, column: 2, scope: !6039)
!6050 = distinct !DISubprogram(name: "dma_coerce_mask_and_coherent", scope: !6051, file: !6051, line: 432, type: !6052, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!6051 = !DIFile(filename: "./include/linux/dma-mapping.h", directory: "/home/lizy2001/genbc/linux")
!6052 = !DISubroutineType(types: !6053)
!6053 = !{!193, !3435, !445}
!6054 = !DILocalVariable(name: "dev", arg: 1, scope: !6050, file: !6051, line: 432, type: !3435)
!6055 = !DILocation(line: 432, column: 63, scope: !6050)
!6056 = !DILocalVariable(name: "mask", arg: 2, scope: !6050, file: !6051, line: 432, type: !445)
!6057 = !DILocation(line: 432, column: 72, scope: !6050)
!6058 = !DILocation(line: 434, column: 19, scope: !6050)
!6059 = !DILocation(line: 434, column: 24, scope: !6050)
!6060 = !DILocation(line: 434, column: 2, scope: !6050)
!6061 = !DILocation(line: 434, column: 7, scope: !6050)
!6062 = !DILocation(line: 434, column: 16, scope: !6050)
!6063 = !DILocation(line: 435, column: 35, scope: !6050)
!6064 = !DILocation(line: 435, column: 40, scope: !6050)
!6065 = !DILocation(line: 435, column: 9, scope: !6050)
!6066 = !DILocation(line: 435, column: 2, scope: !6050)
!6067 = distinct !DISubprogram(name: "dma_set_mask_and_coherent", scope: !6051, file: !6051, line: 420, type: !6052, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!6068 = !DILocalVariable(name: "dev", arg: 1, scope: !6067, file: !6051, line: 420, type: !3435)
!6069 = !DILocation(line: 420, column: 60, scope: !6067)
!6070 = !DILocalVariable(name: "mask", arg: 2, scope: !6067, file: !6051, line: 420, type: !445)
!6071 = !DILocation(line: 420, column: 69, scope: !6067)
!6072 = !DILocalVariable(name: "rc", scope: !6067, file: !6051, line: 422, type: !193)
!6073 = !DILocation(line: 422, column: 6, scope: !6067)
!6074 = !DILocation(line: 422, column: 24, scope: !6067)
!6075 = !DILocation(line: 422, column: 29, scope: !6067)
!6076 = !DILocation(line: 422, column: 11, scope: !6067)
!6077 = !DILocation(line: 423, column: 6, scope: !6078)
!6078 = distinct !DILexicalBlock(scope: !6067, file: !6051, line: 423, column: 6)
!6079 = !DILocation(line: 423, column: 9, scope: !6078)
!6080 = !DILocation(line: 423, column: 6, scope: !6067)
!6081 = !DILocation(line: 424, column: 25, scope: !6078)
!6082 = !DILocation(line: 424, column: 30, scope: !6078)
!6083 = !DILocation(line: 424, column: 3, scope: !6078)
!6084 = !DILocation(line: 425, column: 9, scope: !6067)
!6085 = !DILocation(line: 425, column: 2, scope: !6067)
!6086 = distinct !DISubprogram(name: "__list_add", scope: !5020, file: !5020, line: 63, type: !6087, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!6087 = !DISubroutineType(types: !6088)
!6088 = !{null, !247, !247, !247}
!6089 = !DILocalVariable(name: "new", arg: 1, scope: !6086, file: !5020, line: 63, type: !247)
!6090 = !DILocation(line: 63, column: 49, scope: !6086)
!6091 = !DILocalVariable(name: "prev", arg: 2, scope: !6086, file: !5020, line: 64, type: !247)
!6092 = !DILocation(line: 64, column: 28, scope: !6086)
!6093 = !DILocalVariable(name: "next", arg: 3, scope: !6086, file: !5020, line: 65, type: !247)
!6094 = !DILocation(line: 65, column: 28, scope: !6086)
!6095 = !DILocation(line: 67, column: 24, scope: !6096)
!6096 = distinct !DILexicalBlock(scope: !6086, file: !5020, line: 67, column: 6)
!6097 = !DILocation(line: 67, column: 29, scope: !6096)
!6098 = !DILocation(line: 67, column: 35, scope: !6096)
!6099 = !DILocation(line: 67, column: 7, scope: !6096)
!6100 = !DILocation(line: 67, column: 6, scope: !6086)
!6101 = !DILocation(line: 68, column: 3, scope: !6096)
!6102 = !DILocation(line: 70, column: 15, scope: !6086)
!6103 = !DILocation(line: 70, column: 2, scope: !6086)
!6104 = !DILocation(line: 70, column: 8, scope: !6086)
!6105 = !DILocation(line: 70, column: 13, scope: !6086)
!6106 = !DILocation(line: 71, column: 14, scope: !6086)
!6107 = !DILocation(line: 71, column: 2, scope: !6086)
!6108 = !DILocation(line: 71, column: 7, scope: !6086)
!6109 = !DILocation(line: 71, column: 12, scope: !6086)
!6110 = !DILocation(line: 72, column: 14, scope: !6086)
!6111 = !DILocation(line: 72, column: 2, scope: !6086)
!6112 = !DILocation(line: 72, column: 7, scope: !6086)
!6113 = !DILocation(line: 72, column: 12, scope: !6086)
!6114 = !DILocation(line: 73, column: 2, scope: !6086)
!6115 = !DILocation(line: 73, column: 2, scope: !6116)
!6116 = distinct !DILexicalBlock(scope: !6086, file: !5020, line: 73, column: 2)
!6117 = !DILocation(line: 73, column: 2, scope: !6118)
!6118 = distinct !DILexicalBlock(scope: !6116, file: !5020, line: 73, column: 2)
!6119 = !DILocation(line: 73, column: 2, scope: !6120)
!6120 = distinct !DILexicalBlock(scope: !6116, file: !5020, line: 73, column: 2)
!6121 = !DILocation(line: 74, column: 1, scope: !6086)
!6122 = distinct !DISubprogram(name: "__list_add_valid", scope: !5020, file: !5020, line: 45, type: !6123, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!6123 = !DISubroutineType(types: !6124)
!6124 = !{!220, !247, !247, !247}
!6125 = !DILocalVariable(name: "new", arg: 1, scope: !6122, file: !5020, line: 45, type: !247)
!6126 = !DILocation(line: 45, column: 55, scope: !6122)
!6127 = !DILocalVariable(name: "prev", arg: 2, scope: !6122, file: !5020, line: 46, type: !247)
!6128 = !DILocation(line: 46, column: 23, scope: !6122)
!6129 = !DILocalVariable(name: "next", arg: 3, scope: !6122, file: !5020, line: 47, type: !247)
!6130 = !DILocation(line: 47, column: 23, scope: !6122)
!6131 = !DILocation(line: 49, column: 2, scope: !6122)
!6132 = distinct !DISubprogram(name: "__list_del_entry", scope: !5020, file: !5020, line: 130, type: !5077, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!6133 = !DILocalVariable(name: "entry", arg: 1, scope: !6132, file: !5020, line: 130, type: !247)
!6134 = !DILocation(line: 130, column: 55, scope: !6132)
!6135 = !DILocation(line: 132, column: 30, scope: !6136)
!6136 = distinct !DILexicalBlock(scope: !6132, file: !5020, line: 132, column: 6)
!6137 = !DILocation(line: 132, column: 7, scope: !6136)
!6138 = !DILocation(line: 132, column: 6, scope: !6132)
!6139 = !DILocation(line: 133, column: 3, scope: !6136)
!6140 = !DILocation(line: 135, column: 13, scope: !6132)
!6141 = !DILocation(line: 135, column: 20, scope: !6132)
!6142 = !DILocation(line: 135, column: 26, scope: !6132)
!6143 = !DILocation(line: 135, column: 33, scope: !6132)
!6144 = !DILocation(line: 135, column: 2, scope: !6132)
!6145 = !DILocation(line: 136, column: 1, scope: !6132)
!6146 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !5020, file: !5020, line: 51, type: !6147, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!6147 = !DISubroutineType(types: !6148)
!6148 = !{!220, !247}
!6149 = !DILocalVariable(name: "entry", arg: 1, scope: !6146, file: !5020, line: 51, type: !247)
!6150 = !DILocation(line: 51, column: 61, scope: !6146)
!6151 = !DILocation(line: 53, column: 2, scope: !6146)
!6152 = distinct !DISubprogram(name: "__list_del", scope: !5020, file: !5020, line: 110, type: !5021, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!6153 = !DILocalVariable(name: "prev", arg: 1, scope: !6152, file: !5020, line: 110, type: !247)
!6154 = !DILocation(line: 110, column: 50, scope: !6152)
!6155 = !DILocalVariable(name: "next", arg: 2, scope: !6152, file: !5020, line: 110, type: !247)
!6156 = !DILocation(line: 110, column: 75, scope: !6152)
!6157 = !DILocation(line: 112, column: 15, scope: !6152)
!6158 = !DILocation(line: 112, column: 2, scope: !6152)
!6159 = !DILocation(line: 112, column: 8, scope: !6152)
!6160 = !DILocation(line: 112, column: 13, scope: !6152)
!6161 = !DILocation(line: 113, column: 2, scope: !6152)
!6162 = !DILocation(line: 113, column: 2, scope: !6163)
!6163 = distinct !DILexicalBlock(scope: !6152, file: !5020, line: 113, column: 2)
!6164 = !DILocation(line: 113, column: 2, scope: !6165)
!6165 = distinct !DILexicalBlock(scope: !6163, file: !5020, line: 113, column: 2)
!6166 = !DILocation(line: 113, column: 2, scope: !6167)
!6167 = distinct !DILexicalBlock(scope: !6163, file: !5020, line: 113, column: 2)
!6168 = !DILocation(line: 114, column: 1, scope: !6152)
