; ModuleID = '../bcout/drivers/xen/xenbus/xenbus_client.llvm.bc'
source_filename = "drivers/xen/xenbus/xenbus_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.xenbus_ring_ops = type { i32 (%struct.xenbus_device*, %struct.map_ring_valloc*, i32*, i32, i8**)*, i32 (%struct.xenbus_device*, i8*)* }
%struct.xenbus_device = type { i8*, i8*, i8*, i32, %struct.xenbus_watch, %struct.device, i32, %struct.completion, %struct.work_struct, %struct.semaphore }
%struct.xenbus_watch = type { %struct.list_head, i8*, void (%struct.xenbus_watch*, i8*, i8*)* }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
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
%struct.vdso_image = type opaque
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
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
%struct.atomic64_t = type { i64 }
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
%struct.irq_data = type { i32, i32, i64, %struct.irq_common_data*, %struct.irq_chip*, %struct.irq_domain*, %struct.irq_data*, i8* }
%struct.irq_common_data = type { i32, i8*, %struct.msi_desc*, [1 x %struct.cpumask] }
%struct.msi_desc = type { %struct.list_head, i32, i32, %struct.device*, %struct.msi_msg, %struct.irq_affinity_desc*, void (%struct.msi_desc*, i8*)*, i8*, %union.anon.68 }
%struct.msi_msg = type { i32, i32, i32 }
%struct.irq_affinity_desc = type { %struct.cpumask, i8 }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { i32, %struct.anon.70, %union.anon.71 }
%struct.anon.70 = type { i16, i16, i32 }
%union.anon.71 = type { i8* }
%struct.irq_chip = type { %struct.device*, i8*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*)*, i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.seq_file*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.msi_msg*)*, void (%struct.irq_data*, %struct.msi_msg*)*, i32 (%struct.irq_data*, i32, i8*)*, i32 (%struct.irq_data*, i32, i1)*, i32 (%struct.irq_data*, i8*)*, void (%struct.irq_data*, i32)*, void (%struct.irq_data*, %struct.cpumask*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, i64 }
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32, i32, [0 x %struct.irq_chip_generic*] }
%struct.irq_chip_generic = type { %struct.raw_spinlock, i8*, i32 (i8*)*, void (i32, i8*)*, void (%struct.irq_chip_generic*)*, void (%struct.irq_chip_generic*)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, %struct.irq_domain*, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, void (%struct.irq_desc*)*, i32, i32, i32* }
%struct.irq_chip_regs = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, i32*, {}*, %struct.irqaction*, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, %struct.cpumask*, %struct.cpumask*, i64, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, %struct.proc_dir_entry*, %struct.callback_head, %struct.kobject, %struct.mutex, i32, %struct.module*, i8* }
%struct.irqaction = type { i32 (i32, i8*)*, i8*, i8*, %struct.irqaction*, i32 (i32, i8*)*, %struct.task_struct*, %struct.irqaction*, i32, i32, i64, i64, i8*, %struct.proc_dir_entry* }
%struct.proc_dir_entry = type opaque
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
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.map_ring_valloc = type { %struct.xenbus_map_node*, [16 x i64], [16 x i64], [16 x %struct.gnttab_map_grant_ref], [16 x %struct.gnttab_unmap_grant_ref], i32 }
%struct.xenbus_map_node = type { %struct.list_head, %union.anon.72, [16 x i32], i32 }
%union.anon.72 = type { %struct.anon.74 }
%struct.anon.74 = type { [16 x %struct.page*], [16 x i64], i8* }
%struct.gnttab_map_grant_ref = type { i64, i32, i32, i16, i16, i32, i64 }
%struct.gnttab_unmap_grant_ref = type { i64, i64, i32, i16 }
%struct.kmem_cache = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.xenbus_transaction = type { i32 }
%struct.evtchn_alloc_unbound = type { i16, i16, i32 }
%struct.evtchn_close = type { i32 }
%struct.anon.73 = type { %struct.vm_struct* }
%struct.xmaddr = type { i64 }
%struct.unmap_ring_hvm = type { i32, [16 x i64] }

@xenbus_strstate.name = internal constant [9 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0)], align 16, !dbg !0
@.str = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Initialising\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"InitWait\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Initialised\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Connected\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Closing\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Closed\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Reconfiguring\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"Reconfigured\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"INVALID\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"adding watch on %s\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"allocating path for watch\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"granting access to ring page\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"allocating event channel\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"freeing event channel %u\00", align 1
@ring_ops = internal global %struct.xenbus_ring_ops* null, section ".data..read_mostly", align 8, !dbg !3076
@.str.15 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@ring_ops_pv = internal constant %struct.xenbus_ring_ops { i32 (%struct.xenbus_device*, %struct.map_ring_valloc*, i32*, i32, i8**)* @xenbus_map_ring_pv, i32 (%struct.xenbus_device*, i8*)* @xenbus_unmap_ring_pv }, align 8, !dbg !4281
@ring_ops_hvm = internal constant %struct.xenbus_ring_ops { i32 (%struct.xenbus_device*, %struct.map_ring_valloc*, i32*, i32, i8**)* @xenbus_map_ring_hvm, i32 (%struct.xenbus_device*, i8*)* @xenbus_unmap_ring_hvm }, align 8, !dbg !4287
@.str.17 = private unnamed_addr constant [21 x i8] c"starting transaction\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"writing new state\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"ending transaction\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"%i \00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"error/%s\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.24 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@xen_p2m_size = external dso_local global i64, align 8
@xen_p2m_addr = external dso_local global i64*, align 8
@xen_max_p2m_pfn = external dso_local global i64, align 8
@phys_base = external dso_local global i64, align 8
@page_offset_base = external dso_local global i64, align 8
@xen_features = external dso_local global [32 x i8], align 16
@init_mm = external dso_local global %struct.mm_struct, align 8
@xenbus_valloc_lock = internal global %struct.spinlock undef, align 1, !dbg !4283
@xenbus_valloc_pages = internal global %struct.list_head { %struct.list_head* @xenbus_valloc_pages, %struct.list_head* @xenbus_valloc_pages }, align 8, !dbg !4285
@.str.25 = private unnamed_addr constant [37 x i8] c"\011leaking VM area %p size %u page(s)\00", align 1
@.str.26 = private unnamed_addr constant [41 x i8] c"mapping in shared page %d from domain %d\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"drivers/xen/xenbus/xenbus_client.c\00", align 1
@.str.28 = private unnamed_addr constant [37 x i8] c"can't find mapped virtual address %p\00", align 1
@.str.29 = private unnamed_addr constant [37 x i8] c"unmapping page at handle %d error %d\00", align 1
@__default_kernel_pte_mask = external dso_local global i64, align 8
@.str.30 = private unnamed_addr constant [29 x i8] c"\011leaking %p size %u page(s)\00", align 1
@machine_to_phys_nr = external dso_local global i64, align 8
@machine_to_phys_mapping = external dso_local global i64*, align 8
@.str.31 = private unnamed_addr constant [29 x i8] c"Leaking %p, size %u page(s)\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @xenbus_strstate(i32 %state) #0 !dbg !2 {
entry:
  %state.addr = alloca i32, align 4
  store i32 %state, i32* %state.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %state.addr, metadata !4297, metadata !DIExpression()), !dbg !4298
  %0 = load i32, i32* %state.addr, align 4, !dbg !4299
  %conv = zext i32 %0 to i64, !dbg !4299
  %cmp = icmp ult i64 %conv, 9, !dbg !4300
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !4301

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* %state.addr, align 4, !dbg !4302
  %idxprom = zext i32 %1 to i64, !dbg !4303
  %arrayidx = getelementptr [9 x i8*], [9 x i8*]* @xenbus_strstate.name, i64 0, i64 %idxprom, !dbg !4303
  %2 = load i8*, i8** %arrayidx, align 8, !dbg !4303
  br label %cond.end, !dbg !4301

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4301

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %2, %cond.true ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), %cond.false ], !dbg !4301
  ret i8* %cond, !dbg !4304
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @xenbus_watch_path(%struct.xenbus_device* %dev, i8* %path, %struct.xenbus_watch* %watch, void (%struct.xenbus_watch*, i8*, i8*)* %callback) #0 !dbg !4305 {
entry:
  %dev.addr = alloca %struct.xenbus_device*, align 8
  %path.addr = alloca i8*, align 8
  %watch.addr = alloca %struct.xenbus_watch*, align 8
  %callback.addr = alloca void (%struct.xenbus_watch*, i8*, i8*)*, align 8
  %err = alloca i32, align 4
  store %struct.xenbus_device* %dev, %struct.xenbus_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %dev.addr, metadata !4308, metadata !DIExpression()), !dbg !4309
  store i8* %path, i8** %path.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %path.addr, metadata !4310, metadata !DIExpression()), !dbg !4311
  store %struct.xenbus_watch* %watch, %struct.xenbus_watch** %watch.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_watch** %watch.addr, metadata !4312, metadata !DIExpression()), !dbg !4313
  store void (%struct.xenbus_watch*, i8*, i8*)* %callback, void (%struct.xenbus_watch*, i8*, i8*)** %callback.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.xenbus_watch*, i8*, i8*)** %callback.addr, metadata !4314, metadata !DIExpression()), !dbg !4315
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4316, metadata !DIExpression()), !dbg !4317
  %0 = load i8*, i8** %path.addr, align 8, !dbg !4318
  %1 = load %struct.xenbus_watch*, %struct.xenbus_watch** %watch.addr, align 8, !dbg !4319
  %node = getelementptr inbounds %struct.xenbus_watch, %struct.xenbus_watch* %1, i32 0, i32 1, !dbg !4320
  store i8* %0, i8** %node, align 8, !dbg !4321
  %2 = load void (%struct.xenbus_watch*, i8*, i8*)*, void (%struct.xenbus_watch*, i8*, i8*)** %callback.addr, align 8, !dbg !4322
  %3 = load %struct.xenbus_watch*, %struct.xenbus_watch** %watch.addr, align 8, !dbg !4323
  %callback1 = getelementptr inbounds %struct.xenbus_watch, %struct.xenbus_watch* %3, i32 0, i32 2, !dbg !4324
  store void (%struct.xenbus_watch*, i8*, i8*)* %2, void (%struct.xenbus_watch*, i8*, i8*)** %callback1, align 8, !dbg !4325
  %4 = load %struct.xenbus_watch*, %struct.xenbus_watch** %watch.addr, align 8, !dbg !4326
  %call = call i32 @register_xenbus_watch(%struct.xenbus_watch* %4) #11, !dbg !4327
  store i32 %call, i32* %err, align 4, !dbg !4328
  %5 = load i32, i32* %err, align 4, !dbg !4329
  %tobool = icmp ne i32 %5, 0, !dbg !4329
  br i1 %tobool, label %if.then, label %if.end, !dbg !4331

if.then:                                          ; preds = %entry
  %6 = load %struct.xenbus_watch*, %struct.xenbus_watch** %watch.addr, align 8, !dbg !4332
  %node2 = getelementptr inbounds %struct.xenbus_watch, %struct.xenbus_watch* %6, i32 0, i32 1, !dbg !4334
  store i8* null, i8** %node2, align 8, !dbg !4335
  %7 = load %struct.xenbus_watch*, %struct.xenbus_watch** %watch.addr, align 8, !dbg !4336
  %callback3 = getelementptr inbounds %struct.xenbus_watch, %struct.xenbus_watch* %7, i32 0, i32 2, !dbg !4337
  store void (%struct.xenbus_watch*, i8*, i8*)* null, void (%struct.xenbus_watch*, i8*, i8*)** %callback3, align 8, !dbg !4338
  %8 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4339
  %9 = load i32, i32* %err, align 4, !dbg !4340
  %10 = load i8*, i8** %path.addr, align 8, !dbg !4341
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %8, i32 %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* %10) #11, !dbg !4342
  br label %if.end, !dbg !4343

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, i32* %err, align 4, !dbg !4344
  ret i32 %11, !dbg !4345
}

; Function Attrs: noredzone
declare dso_local i32 @register_xenbus_watch(%struct.xenbus_watch*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @xenbus_dev_fatal(%struct.xenbus_device* %dev, i32 %err, i8* %fmt, ...) #0 !dbg !4346 {
entry:
  %dev.addr = alloca %struct.xenbus_device*, align 8
  %err.addr = alloca i32, align 4
  %fmt.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.xenbus_device* %dev, %struct.xenbus_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %dev.addr, metadata !4349, metadata !DIExpression()), !dbg !4350
  store i32 %err, i32* %err.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %err.addr, metadata !4351, metadata !DIExpression()), !dbg !4352
  store i8* %fmt, i8** %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %fmt.addr, metadata !4353, metadata !DIExpression()), !dbg !4354
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !4355, metadata !DIExpression()), !dbg !4367
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !4368
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !4368
  call void @llvm.va_start(i8* %arraydecay1), !dbg !4368
  %0 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4369
  %1 = load i32, i32* %err.addr, align 4, !dbg !4370
  %2 = load i8*, i8** %fmt.addr, align 8, !dbg !4371
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !4372
  call void @xenbus_va_dev_error(%struct.xenbus_device* %0, i32 %1, i8* %2, %struct.__va_list_tag* %arraydecay2) #11, !dbg !4373
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !4374
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !4374
  call void @llvm.va_end(i8* %arraydecay34), !dbg !4374
  %3 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4375
  %call = call i32 @xenbus_switch_state(%struct.xenbus_device* %3, i32 5) #11, !dbg !4376
  ret void, !dbg !4377
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @xenbus_watch_pathfmt(%struct.xenbus_device* %dev, %struct.xenbus_watch* %watch, void (%struct.xenbus_watch*, i8*, i8*)* %callback, i8* %pathfmt, ...) #0 !dbg !4378 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.xenbus_device*, align 8
  %watch.addr = alloca %struct.xenbus_watch*, align 8
  %callback.addr = alloca void (%struct.xenbus_watch*, i8*, i8*)*, align 8
  %pathfmt.addr = alloca i8*, align 8
  %err = alloca i32, align 4
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %path = alloca i8*, align 8
  store %struct.xenbus_device* %dev, %struct.xenbus_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %dev.addr, metadata !4381, metadata !DIExpression()), !dbg !4382
  store %struct.xenbus_watch* %watch, %struct.xenbus_watch** %watch.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_watch** %watch.addr, metadata !4383, metadata !DIExpression()), !dbg !4384
  store void (%struct.xenbus_watch*, i8*, i8*)* %callback, void (%struct.xenbus_watch*, i8*, i8*)** %callback.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.xenbus_watch*, i8*, i8*)** %callback.addr, metadata !4385, metadata !DIExpression()), !dbg !4386
  store i8* %pathfmt, i8** %pathfmt.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pathfmt.addr, metadata !4387, metadata !DIExpression()), !dbg !4388
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4389, metadata !DIExpression()), !dbg !4390
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !4391, metadata !DIExpression()), !dbg !4392
  call void @llvm.dbg.declare(metadata i8** %path, metadata !4393, metadata !DIExpression()), !dbg !4394
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !4395
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !4395
  call void @llvm.va_start(i8* %arraydecay1), !dbg !4395
  %0 = load i8*, i8** %pathfmt.addr, align 8, !dbg !4396
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !4397
  %call = call noalias i8* @kvasprintf(i32 3104, i8* %0, %struct.__va_list_tag* %arraydecay2) #11, !dbg !4398
  store i8* %call, i8** %path, align 8, !dbg !4399
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !4400
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !4400
  call void @llvm.va_end(i8* %arraydecay34), !dbg !4400
  %1 = load i8*, i8** %path, align 8, !dbg !4401
  %tobool = icmp ne i8* %1, null, !dbg !4401
  br i1 %tobool, label %if.end, label %if.then, !dbg !4403

if.then:                                          ; preds = %entry
  %2 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4404
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %2, i32 -12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0)) #11, !dbg !4406
  store i32 -12, i32* %retval, align 4, !dbg !4407
  br label %return, !dbg !4407

if.end:                                           ; preds = %entry
  %3 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4408
  %4 = load i8*, i8** %path, align 8, !dbg !4409
  %5 = load %struct.xenbus_watch*, %struct.xenbus_watch** %watch.addr, align 8, !dbg !4410
  %6 = load void (%struct.xenbus_watch*, i8*, i8*)*, void (%struct.xenbus_watch*, i8*, i8*)** %callback.addr, align 8, !dbg !4411
  %call5 = call i32 @xenbus_watch_path(%struct.xenbus_device* %3, i8* %4, %struct.xenbus_watch* %5, void (%struct.xenbus_watch*, i8*, i8*)* %6) #11, !dbg !4412
  store i32 %call5, i32* %err, align 4, !dbg !4413
  %7 = load i32, i32* %err, align 4, !dbg !4414
  %tobool6 = icmp ne i32 %7, 0, !dbg !4414
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !4416

if.then7:                                         ; preds = %if.end
  %8 = load i8*, i8** %path, align 8, !dbg !4417
  call void @kfree(i8* %8) #11, !dbg !4418
  br label %if.end8, !dbg !4418

if.end8:                                          ; preds = %if.then7, %if.end
  %9 = load i32, i32* %err, align 4, !dbg !4419
  store i32 %9, i32* %retval, align 4, !dbg !4420
  br label %return, !dbg !4420

return:                                           ; preds = %if.end8, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !4421
  ret i32 %10, !dbg !4421
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kvasprintf(i32, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @xenbus_switch_state(%struct.xenbus_device* %dev, i32 %state) #0 !dbg !4422 {
entry:
  %dev.addr = alloca %struct.xenbus_device*, align 8
  %state.addr = alloca i32, align 4
  store %struct.xenbus_device* %dev, %struct.xenbus_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %dev.addr, metadata !4425, metadata !DIExpression()), !dbg !4426
  store i32 %state, i32* %state.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %state.addr, metadata !4427, metadata !DIExpression()), !dbg !4428
  %0 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4429
  %1 = load i32, i32* %state.addr, align 4, !dbg !4430
  %call = call i32 @__xenbus_switch_state(%struct.xenbus_device* %0, i32 %1, i32 0) #11, !dbg !4431
  ret i32 %call, !dbg !4432
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__xenbus_switch_state(%struct.xenbus_device* %dev, i32 %state, i32 %depth) #0 !dbg !4433 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.xenbus_device*, align 8
  %state.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %xbt = alloca %struct.xenbus_transaction, align 4
  %current_state = alloca i32, align 4
  %err = alloca i32, align 4
  %abort = alloca i32, align 4
  store %struct.xenbus_device* %dev, %struct.xenbus_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %dev.addr, metadata !4436, metadata !DIExpression()), !dbg !4437
  store i32 %state, i32* %state.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %state.addr, metadata !4438, metadata !DIExpression()), !dbg !4439
  store i32 %depth, i32* %depth.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %depth.addr, metadata !4440, metadata !DIExpression()), !dbg !4441
  call void @llvm.dbg.declare(metadata %struct.xenbus_transaction* %xbt, metadata !4442, metadata !DIExpression()), !dbg !4446
  call void @llvm.dbg.declare(metadata i32* %current_state, metadata !4447, metadata !DIExpression()), !dbg !4448
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4449, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.declare(metadata i32* %abort, metadata !4451, metadata !DIExpression()), !dbg !4452
  %0 = load i32, i32* %state.addr, align 4, !dbg !4453
  %1 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4455
  %state1 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %1, i32 0, i32 6, !dbg !4456
  %2 = load i32, i32* %state1, align 8, !dbg !4456
  %cmp = icmp eq i32 %0, %2, !dbg !4457
  br i1 %cmp, label %if.then, label %if.end, !dbg !4458

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4459
  br label %return, !dbg !4459

if.end:                                           ; preds = %entry
  br label %again, !dbg !4456

again:                                            ; preds = %if.then21, %if.end
  call void @llvm.dbg.label(metadata !4460), !dbg !4461
  store i32 1, i32* %abort, align 4, !dbg !4462
  %call = call i32 @xenbus_transaction_start(%struct.xenbus_transaction* %xbt) #11, !dbg !4463
  store i32 %call, i32* %err, align 4, !dbg !4464
  %3 = load i32, i32* %err, align 4, !dbg !4465
  %tobool = icmp ne i32 %3, 0, !dbg !4465
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !4467

if.then2:                                         ; preds = %again
  %4 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4468
  %5 = load i32, i32* %depth.addr, align 4, !dbg !4470
  %6 = load i32, i32* %err, align 4, !dbg !4471
  call void (%struct.xenbus_device*, i32, i32, i8*, ...) @xenbus_switch_fatal(%struct.xenbus_device* %4, i32 %5, i32 %6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0)) #11, !dbg !4472
  store i32 0, i32* %retval, align 4, !dbg !4473
  br label %return, !dbg !4473

if.end3:                                          ; preds = %again
  %7 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4474
  %nodename = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %7, i32 0, i32 1, !dbg !4475
  %8 = load i8*, i8** %nodename, align 8, !dbg !4475
  %coerce.dive = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %xbt, i32 0, i32 0, !dbg !4476
  %9 = load i32, i32* %coerce.dive, align 4, !dbg !4476
  %call4 = call i32 (i32, i8*, i8*, i8*, ...) @xenbus_scanf(i32 %9, i8* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i32* %current_state) #11, !dbg !4476
  store i32 %call4, i32* %err, align 4, !dbg !4477
  %10 = load i32, i32* %err, align 4, !dbg !4478
  %cmp5 = icmp ne i32 %10, 1, !dbg !4480
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !4481

if.then6:                                         ; preds = %if.end3
  br label %abort14, !dbg !4482

if.end7:                                          ; preds = %if.end3
  %11 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4483
  %nodename8 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %11, i32 0, i32 1, !dbg !4484
  %12 = load i8*, i8** %nodename8, align 8, !dbg !4484
  %13 = load i32, i32* %state.addr, align 4, !dbg !4485
  %coerce.dive9 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %xbt, i32 0, i32 0, !dbg !4486
  %14 = load i32, i32* %coerce.dive9, align 4, !dbg !4486
  %call10 = call i32 (i32, i8*, i8*, i8*, ...) @xenbus_printf(i32 %14, i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i32 %13) #11, !dbg !4486
  store i32 %call10, i32* %err, align 4, !dbg !4487
  %15 = load i32, i32* %err, align 4, !dbg !4488
  %tobool11 = icmp ne i32 %15, 0, !dbg !4488
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !4490

if.then12:                                        ; preds = %if.end7
  %16 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4491
  %17 = load i32, i32* %depth.addr, align 4, !dbg !4493
  %18 = load i32, i32* %err, align 4, !dbg !4494
  call void (%struct.xenbus_device*, i32, i32, i8*, ...) @xenbus_switch_fatal(%struct.xenbus_device* %16, i32 %17, i32 %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0)) #11, !dbg !4495
  br label %abort14, !dbg !4496

if.end13:                                         ; preds = %if.end7
  store i32 0, i32* %abort, align 4, !dbg !4497
  br label %abort14, !dbg !4498

abort14:                                          ; preds = %if.end13, %if.then12, %if.then6
  call void @llvm.dbg.label(metadata !4499), !dbg !4500
  %19 = load i32, i32* %abort, align 4, !dbg !4501
  %coerce.dive15 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %xbt, i32 0, i32 0, !dbg !4502
  %20 = load i32, i32* %coerce.dive15, align 4, !dbg !4502
  %call16 = call i32 @xenbus_transaction_end(i32 %20, i32 %19) #11, !dbg !4502
  store i32 %call16, i32* %err, align 4, !dbg !4503
  %21 = load i32, i32* %err, align 4, !dbg !4504
  %tobool17 = icmp ne i32 %21, 0, !dbg !4504
  br i1 %tobool17, label %if.then18, label %if.else, !dbg !4506

if.then18:                                        ; preds = %abort14
  %22 = load i32, i32* %err, align 4, !dbg !4507
  %cmp19 = icmp eq i32 %22, -11, !dbg !4510
  br i1 %cmp19, label %land.lhs.true, label %if.end22, !dbg !4511

land.lhs.true:                                    ; preds = %if.then18
  %23 = load i32, i32* %abort, align 4, !dbg !4512
  %tobool20 = icmp ne i32 %23, 0, !dbg !4512
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !4513

if.then21:                                        ; preds = %land.lhs.true
  br label %again, !dbg !4514

if.end22:                                         ; preds = %land.lhs.true, %if.then18
  %24 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4515
  %25 = load i32, i32* %depth.addr, align 4, !dbg !4516
  %26 = load i32, i32* %err, align 4, !dbg !4517
  call void (%struct.xenbus_device*, i32, i32, i8*, ...) @xenbus_switch_fatal(%struct.xenbus_device* %24, i32 %25, i32 %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0)) #11, !dbg !4518
  br label %if.end24, !dbg !4519

if.else:                                          ; preds = %abort14
  %27 = load i32, i32* %state.addr, align 4, !dbg !4520
  %28 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4521
  %state23 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %28, i32 0, i32 6, !dbg !4522
  store i32 %27, i32* %state23, align 8, !dbg !4523
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.end22
  store i32 0, i32* %retval, align 4, !dbg !4524
  br label %return, !dbg !4524

return:                                           ; preds = %if.end24, %if.then2, %if.then
  %29 = load i32, i32* %retval, align 4, !dbg !4525
  ret i32 %29, !dbg !4525
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @xenbus_frontend_closed(%struct.xenbus_device* %dev) #0 !dbg !4526 {
entry:
  %dev.addr = alloca %struct.xenbus_device*, align 8
  store %struct.xenbus_device* %dev, %struct.xenbus_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %dev.addr, metadata !4529, metadata !DIExpression()), !dbg !4530
  %0 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4531
  %call = call i32 @xenbus_switch_state(%struct.xenbus_device* %0, i32 6) #11, !dbg !4532
  %1 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4533
  %down = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %1, i32 0, i32 7, !dbg !4534
  call void @complete(%struct.completion* %down) #11, !dbg !4535
  ret i32 0, !dbg !4536
}

; Function Attrs: noredzone
declare dso_local void @complete(%struct.completion*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @xenbus_dev_error(%struct.xenbus_device* %dev, i32 %err, i8* %fmt, ...) #0 !dbg !4537 {
entry:
  %dev.addr = alloca %struct.xenbus_device*, align 8
  %err.addr = alloca i32, align 4
  %fmt.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.xenbus_device* %dev, %struct.xenbus_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %dev.addr, metadata !4538, metadata !DIExpression()), !dbg !4539
  store i32 %err, i32* %err.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %err.addr, metadata !4540, metadata !DIExpression()), !dbg !4541
  store i8* %fmt, i8** %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %fmt.addr, metadata !4542, metadata !DIExpression()), !dbg !4543
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !4544, metadata !DIExpression()), !dbg !4545
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !4546
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !4546
  call void @llvm.va_start(i8* %arraydecay1), !dbg !4546
  %0 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4547
  %1 = load i32, i32* %err.addr, align 4, !dbg !4548
  %2 = load i8*, i8** %fmt.addr, align 8, !dbg !4549
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !4550
  call void @xenbus_va_dev_error(%struct.xenbus_device* %0, i32 %1, i8* %2, %struct.__va_list_tag* %arraydecay2) #11, !dbg !4551
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !4552
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !4552
  call void @llvm.va_end(i8* %arraydecay34), !dbg !4552
  ret void, !dbg !4553
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xenbus_va_dev_error(%struct.xenbus_device* %dev, i32 %err, i8* %fmt, %struct.__va_list_tag* %ap) #0 !dbg !4554 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4558, metadata !DIExpression()), !dbg !4562
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4570, metadata !DIExpression()), !dbg !4571
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4572, metadata !DIExpression()), !dbg !4573
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4574, metadata !DIExpression()), !dbg !4575
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4576, metadata !DIExpression()), !dbg !4580
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4582, metadata !DIExpression()), !dbg !4586
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4588, metadata !DIExpression()), !dbg !4592
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4597, metadata !DIExpression()), !dbg !4598
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4599, metadata !DIExpression()), !dbg !4600
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4601, metadata !DIExpression()), !dbg !4602
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4603, metadata !DIExpression()), !dbg !4604
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4605, metadata !DIExpression()), !dbg !4606
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4607, metadata !DIExpression()), !dbg !4608
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4609, metadata !DIExpression()), !dbg !4610
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4611, metadata !DIExpression()), !dbg !4612
  %dev.addr = alloca %struct.xenbus_device*, align 8
  %err.addr = alloca i32, align 4
  %fmt.addr = alloca i8*, align 8
  %ap.addr = alloca %struct.__va_list_tag*, align 8
  %len = alloca i32, align 4
  %printf_buffer = alloca i8*, align 8
  %path_buffer = alloca i8*, align 8
  %.compoundliteral = alloca %struct.xenbus_transaction, align 4
  store %struct.xenbus_device* %dev, %struct.xenbus_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %dev.addr, metadata !4613, metadata !DIExpression()), !dbg !4614
  store i32 %err, i32* %err.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %err.addr, metadata !4615, metadata !DIExpression()), !dbg !4616
  store i8* %fmt, i8** %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %fmt.addr, metadata !4617, metadata !DIExpression()), !dbg !4618
  store %struct.__va_list_tag* %ap, %struct.__va_list_tag** %ap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %ap.addr, metadata !4619, metadata !DIExpression()), !dbg !4620
  call void @llvm.dbg.declare(metadata i32* %len, metadata !4621, metadata !DIExpression()), !dbg !4622
  call void @llvm.dbg.declare(metadata i8** %printf_buffer, metadata !4623, metadata !DIExpression()), !dbg !4624
  call void @llvm.dbg.declare(metadata i8** %path_buffer, metadata !4625, metadata !DIExpression()), !dbg !4626
  store i64 4096, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %0 = load i64, i64* %size.addr.i, align 8, !dbg !4627
  %1 = call i1 @llvm.is.constant.i64(i64 %0) #3, !dbg !4628
  br i1 %1, label %if.then.i, label %if.end9.i, !dbg !4629

if.then.i:                                        ; preds = %entry
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4630
  %cmp.i = icmp ugt i64 %2, 8192, !dbg !4631
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4632

if.then1.i:                                       ; preds = %if.then.i
  %3 = load i64, i64* %size.addr.i, align 8, !dbg !4633
  %4 = load i32, i32* %flags.addr.i, align 4, !dbg !4634
  store i64 %3, i64* %size.addr.i.i, align 8
  store i32 %4, i32* %flags.addr.i.i, align 4
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !4635
  %call.i.i = call i32 @get_order(i64 %5) #12, !dbg !4636
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4606
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !4637
  %7 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4638
  %8 = load i32, i32* %order.i.i, align 4, !dbg !4639
  store i64 %6, i64* %size.addr.i.i.i, align 8
  store i32 %7, i32* %flags.addr.i.i.i, align 4
  store i32 %8, i32* %order.addr.i.i.i, align 4
  %9 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4640
  %10 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4641
  %11 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4642
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %9, i32 %10, i32 %11) #13, !dbg !4643
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4643
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4643
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4643
  call void @llvm.assume(i1 %maskcond.i.i.i) #3, !dbg !4643
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4644
  br label %kmalloc.exit, !dbg !4644

if.end.i:                                         ; preds = %if.then.i
  %12 = load i64, i64* %size.addr.i, align 8, !dbg !4645
  store i64 %12, i64* %size.addr.i11.i, align 8
  %13 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4646
  %tobool.i.i = icmp ne i64 %13, 0, !dbg !4646
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4648

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4649
  br label %kmalloc_index.exit.i, !dbg !4649

if.end.i.i:                                       ; preds = %if.end.i
  %14 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4650
  %cmp.i.i = icmp ule i64 %14, 8, !dbg !4652
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4653

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4654
  br label %kmalloc_index.exit.i, !dbg !4654

if.end2.i.i:                                      ; preds = %if.end.i.i
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4655
  %cmp3.i.i = icmp ugt i64 %15, 64, !dbg !4657
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4658

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4659
  %cmp4.i.i = icmp ule i64 %16, 96, !dbg !4660
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4661

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4662
  br label %kmalloc_index.exit.i, !dbg !4662

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4663
  %cmp7.i.i = icmp ugt i64 %17, 128, !dbg !4665
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4666

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4667
  %cmp9.i.i = icmp ule i64 %18, 192, !dbg !4668
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4669

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4670
  br label %kmalloc_index.exit.i, !dbg !4670

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4671
  %cmp12.i.i = icmp ule i64 %19, 8, !dbg !4673
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4674

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4675
  br label %kmalloc_index.exit.i, !dbg !4675

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4676
  %cmp15.i.i = icmp ule i64 %20, 16, !dbg !4678
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4679

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4680
  br label %kmalloc_index.exit.i, !dbg !4680

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4681
  %cmp18.i.i = icmp ule i64 %21, 32, !dbg !4683
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4684

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4685
  br label %kmalloc_index.exit.i, !dbg !4685

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4686
  %cmp21.i.i = icmp ule i64 %22, 64, !dbg !4688
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4689

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4690
  br label %kmalloc_index.exit.i, !dbg !4690

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4691
  %cmp24.i.i = icmp ule i64 %23, 128, !dbg !4693
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4694

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4695
  br label %kmalloc_index.exit.i, !dbg !4695

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4696
  %cmp27.i.i = icmp ule i64 %24, 256, !dbg !4698
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4699

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4700
  br label %kmalloc_index.exit.i, !dbg !4700

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4701
  %cmp30.i.i = icmp ule i64 %25, 512, !dbg !4703
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4704

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4705
  br label %kmalloc_index.exit.i, !dbg !4705

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4706
  %cmp33.i.i = icmp ule i64 %26, 1024, !dbg !4708
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4709

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4710
  br label %kmalloc_index.exit.i, !dbg !4710

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4711
  %cmp36.i.i = icmp ule i64 %27, 2048, !dbg !4713
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4714

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4715
  br label %kmalloc_index.exit.i, !dbg !4715

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4716
  %cmp39.i.i = icmp ule i64 %28, 4096, !dbg !4718
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4719

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4720
  br label %kmalloc_index.exit.i, !dbg !4720

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4721
  %cmp42.i.i = icmp ule i64 %29, 8192, !dbg !4723
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4724

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4725
  br label %kmalloc_index.exit.i, !dbg !4725

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4726
  %cmp45.i.i = icmp ule i64 %30, 16384, !dbg !4728
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4729

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4730
  br label %kmalloc_index.exit.i, !dbg !4730

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4731
  %cmp48.i.i = icmp ule i64 %31, 32768, !dbg !4733
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4734

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4735
  br label %kmalloc_index.exit.i, !dbg !4735

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4736
  %cmp51.i.i = icmp ule i64 %32, 65536, !dbg !4738
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4739

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4740
  br label %kmalloc_index.exit.i, !dbg !4740

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4741
  %cmp54.i.i = icmp ule i64 %33, 131072, !dbg !4743
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4744

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4745
  br label %kmalloc_index.exit.i, !dbg !4745

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4746
  %cmp57.i.i = icmp ule i64 %34, 262144, !dbg !4748
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4749

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4750
  br label %kmalloc_index.exit.i, !dbg !4750

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4751
  %cmp60.i.i = icmp ule i64 %35, 524288, !dbg !4753
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4754

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4755
  br label %kmalloc_index.exit.i, !dbg !4755

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4756
  %cmp63.i.i = icmp ule i64 %36, 1048576, !dbg !4758
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4759

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4760
  br label %kmalloc_index.exit.i, !dbg !4760

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4761
  %cmp66.i.i = icmp ule i64 %37, 2097152, !dbg !4763
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4764

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4765
  br label %kmalloc_index.exit.i, !dbg !4765

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4766
  %cmp69.i.i = icmp ule i64 %38, 4194304, !dbg !4768
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4769

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4770
  br label %kmalloc_index.exit.i, !dbg !4770

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4771
  %cmp72.i.i = icmp ule i64 %39, 8388608, !dbg !4773
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4774

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4775
  br label %kmalloc_index.exit.i, !dbg !4775

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4776
  %cmp75.i.i = icmp ule i64 %40, 16777216, !dbg !4778
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4779

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4780
  br label %kmalloc_index.exit.i, !dbg !4780

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4781
  %cmp78.i.i = icmp ule i64 %41, 33554432, !dbg !4783
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4784

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4785
  br label %kmalloc_index.exit.i, !dbg !4785

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4786
  %cmp81.i.i = icmp ule i64 %42, 67108864, !dbg !4788
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4789

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4790
  br label %kmalloc_index.exit.i, !dbg !4790

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0), i32 382, i32 0, i64 12) #3, !dbg !4791, !srcloc !4794
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 214) #3, !dbg !4795, !srcloc !4798
  unreachable, !dbg !4799

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %43 = load i32, i32* %retval.i.i, align 4, !dbg !4800
  store i32 %43, i32* %index.i, align 4, !dbg !4801
  %44 = load i32, i32* %index.i, align 4, !dbg !4802
  %tobool.i = icmp ne i32 %44, 0, !dbg !4802
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4804

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4805
  br label %kmalloc.exit, !dbg !4805

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %45 = load i32, i32* %flags.addr.i, align 4, !dbg !4806
  store i32 %45, i32* %flags.addr.i13.i, align 4
  %46 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4807
  %and.i.i = and i32 %46, 17, !dbg !4807
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4807
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4807
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4807
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4807
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4809

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4810
  br label %kmalloc_type.exit.i, !dbg !4810

if.end.i16.i:                                     ; preds = %if.end4.i
  %47 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4811
  %and2.i.i = and i32 %47, 1, !dbg !4812
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4811
  %48 = zext i1 %tobool3.i.i to i64, !dbg !4811
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4811
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4813
  br label %kmalloc_type.exit.i, !dbg !4813

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %49 = load i32, i32* %retval.i12.i, align 4, !dbg !4814
  %idxprom.i = zext i32 %49 to i64, !dbg !4815
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4815
  %50 = load i32, i32* %index.i, align 4, !dbg !4816
  %idxprom6.i = zext i32 %50 to i64, !dbg !4815
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4815
  %51 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4815
  %52 = load i32, i32* %flags.addr.i, align 4, !dbg !4817
  %53 = load i64, i64* %size.addr.i, align 8, !dbg !4818
  store %struct.kmem_cache* %51, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %52, i32* %flags.addr.i17.i, align 4
  store i64 %53, i64* %size.addr.i18.i, align 8
  %54 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4819
  %55 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4820
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %54, i32 %55) #13, !dbg !4821
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4821
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4821
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4821
  call void @llvm.assume(i1 %maskcond.i.i) #3, !dbg !4821
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4575
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4822
  %57 = load i8*, i8** %ret.i.i, align 8, !dbg !4823
  %58 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4824
  %59 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4825
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %56, i8* %57, i64 %58, i32 %59) #13, !dbg !4826
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4827
  %60 = load i8*, i8** %ret.i.i, align 8, !dbg !4828
  store i8* %60, i8** %retval.i, align 8, !dbg !4829
  br label %kmalloc.exit, !dbg !4829

if.end9.i:                                        ; preds = %entry
  %61 = load i64, i64* %size.addr.i, align 8, !dbg !4830
  %62 = load i32, i32* %flags.addr.i, align 4, !dbg !4831
  %call10.i = call noalias i8* @__kmalloc(i64 %61, i32 %62) #13, !dbg !4832
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4832
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4832
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4832
  call void @llvm.assume(i1 %maskcond.i) #3, !dbg !4832
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4833
  br label %kmalloc.exit, !dbg !4833

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %63 = load i8*, i8** %retval.i, align 8, !dbg !4834
  store i8* %63, i8** %printf_buffer, align 8, !dbg !4835
  %64 = load i8*, i8** %printf_buffer, align 8, !dbg !4836
  %tobool = icmp ne i8* %64, null, !dbg !4836
  br i1 %tobool, label %if.end, label %if.then, !dbg !4838

if.then:                                          ; preds = %kmalloc.exit
  br label %return, !dbg !4839

if.end:                                           ; preds = %kmalloc.exit
  %65 = load i8*, i8** %printf_buffer, align 8, !dbg !4840
  %66 = load i32, i32* %err.addr, align 4, !dbg !4841
  %sub = sub i32 0, %66, !dbg !4842
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i32 %sub) #11, !dbg !4843
  store i32 %call1, i32* %len, align 4, !dbg !4844
  %67 = load i8*, i8** %printf_buffer, align 8, !dbg !4845
  %68 = load i32, i32* %len, align 4, !dbg !4846
  %idx.ext = zext i32 %68 to i64, !dbg !4847
  %add.ptr = getelementptr i8, i8* %67, i64 %idx.ext, !dbg !4847
  %69 = load i32, i32* %len, align 4, !dbg !4848
  %sub2 = sub i32 4096, %69, !dbg !4849
  %conv = zext i32 %sub2 to i64, !dbg !4850
  %70 = load i8*, i8** %fmt.addr, align 8, !dbg !4851
  %71 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8, !dbg !4852
  %call3 = call i32 @vsnprintf(i8* %add.ptr, i64 %conv, i8* %70, %struct.__va_list_tag* %71) #11, !dbg !4853
  %72 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4854
  %dev4 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %72, i32 0, i32 5, !dbg !4854
  %73 = load i8*, i8** %printf_buffer, align 8, !dbg !4854
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i8* %73) #14, !dbg !4854
  %74 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4855
  %nodename = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %74, i32 0, i32 1, !dbg !4856
  %75 = load i8*, i8** %nodename, align 8, !dbg !4856
  %call5 = call noalias i8* (i32, i8*, ...) @kasprintf(i32 3264, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0), i8* %75) #11, !dbg !4857
  store i8* %call5, i8** %path_buffer, align 8, !dbg !4858
  %76 = load i8*, i8** %path_buffer, align 8, !dbg !4859
  %tobool6 = icmp ne i8* %76, null, !dbg !4859
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !4861

if.then7:                                         ; preds = %if.end
  %id = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral, i32 0, i32 0, !dbg !4862
  store i32 0, i32* %id, align 4, !dbg !4862
  %77 = load i8*, i8** %path_buffer, align 8, !dbg !4863
  %78 = load i8*, i8** %printf_buffer, align 8, !dbg !4864
  %coerce.dive = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral, i32 0, i32 0, !dbg !4865
  %79 = load i32, i32* %coerce.dive, align 4, !dbg !4865
  %call8 = call i32 @xenbus_write(i32 %79, i8* %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), i8* %78) #11, !dbg !4865
  br label %if.end9, !dbg !4865

if.end9:                                          ; preds = %if.then7, %if.end
  %80 = load i8*, i8** %printf_buffer, align 8, !dbg !4866
  call void @kfree(i8* %80) #11, !dbg !4867
  %81 = load i8*, i8** %path_buffer, align 8, !dbg !4868
  call void @kfree(i8* %81) #11, !dbg !4869
  br label %return, !dbg !4870

return:                                           ; preds = %if.end9, %if.then
  ret void, !dbg !4870
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @xenbus_grant_ring(%struct.xenbus_device* %dev, i8* %vaddr, i32 %nr_pages, i32* %grefs) #0 !dbg !4871 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.xenbus_device*, align 8
  %vaddr.addr = alloca i8*, align 8
  %nr_pages.addr = alloca i32, align 4
  %grefs.addr = alloca i32*, align 8
  %err = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %gfn = alloca i64, align 8
  store %struct.xenbus_device* %dev, %struct.xenbus_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %dev.addr, metadata !4874, metadata !DIExpression()), !dbg !4875
  store i8* %vaddr, i8** %vaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %vaddr.addr, metadata !4876, metadata !DIExpression()), !dbg !4877
  store i32 %nr_pages, i32* %nr_pages.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nr_pages.addr, metadata !4878, metadata !DIExpression()), !dbg !4879
  store i32* %grefs, i32** %grefs.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %grefs.addr, metadata !4880, metadata !DIExpression()), !dbg !4881
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4882, metadata !DIExpression()), !dbg !4883
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4884, metadata !DIExpression()), !dbg !4885
  call void @llvm.dbg.declare(metadata i32* %j, metadata !4886, metadata !DIExpression()), !dbg !4887
  store i32 0, i32* %i, align 4, !dbg !4888
  br label %for.cond, !dbg !4890

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !4891
  %1 = load i32, i32* %nr_pages.addr, align 4, !dbg !4893
  %cmp = icmp ult i32 %0, %1, !dbg !4894
  br i1 %cmp, label %for.body, label %for.end, !dbg !4895

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %gfn, metadata !4896, metadata !DIExpression()), !dbg !4898
  %2 = load i8*, i8** %vaddr.addr, align 8, !dbg !4899
  %call = call zeroext i1 @is_vmalloc_addr(i8* %2) #11, !dbg !4901
  br i1 %call, label %if.then, label %if.else, !dbg !4902

if.then:                                          ; preds = %for.body
  %3 = load i8*, i8** %vaddr.addr, align 8, !dbg !4903
  %call1 = call i64 @vmalloc_to_pfn(i8* %3) #11, !dbg !4904
  %call2 = call i64 @pfn_to_gfn(i64 %call1) #11, !dbg !4905
  store i64 %call2, i64* %gfn, align 8, !dbg !4906
  br label %if.end, !dbg !4907

if.else:                                          ; preds = %for.body
  %4 = load i8*, i8** %vaddr.addr, align 8, !dbg !4908
  %5 = ptrtoint i8* %4 to i64, !dbg !4908
  %call3 = call i64 @__phys_addr_nodebug(i64 %5) #11, !dbg !4908
  %shr = lshr i64 %call3, 12, !dbg !4908
  %call4 = call i64 @pfn_to_gfn(i64 %shr) #11, !dbg !4908
  store i64 %call4, i64* %gfn, align 8, !dbg !4909
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4910
  %otherend_id = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %6, i32 0, i32 3, !dbg !4911
  %7 = load i32, i32* %otherend_id, align 8, !dbg !4911
  %conv = trunc i32 %7 to i16, !dbg !4910
  %8 = load i64, i64* %gfn, align 8, !dbg !4912
  %call5 = call i32 @gnttab_grant_foreign_access(i16 zeroext %conv, i64 %8, i32 0) #11, !dbg !4913
  store i32 %call5, i32* %err, align 4, !dbg !4914
  %9 = load i32, i32* %err, align 4, !dbg !4915
  %cmp6 = icmp slt i32 %9, 0, !dbg !4917
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !4918

if.then8:                                         ; preds = %if.end
  %10 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4919
  %11 = load i32, i32* %err, align 4, !dbg !4921
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %10, i32 %11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0)) #11, !dbg !4922
  br label %fail, !dbg !4923

if.end9:                                          ; preds = %if.end
  %12 = load i32, i32* %err, align 4, !dbg !4924
  %13 = load i32*, i32** %grefs.addr, align 8, !dbg !4925
  %14 = load i32, i32* %i, align 4, !dbg !4926
  %idxprom = sext i32 %14 to i64, !dbg !4925
  %arrayidx = getelementptr i32, i32* %13, i64 %idxprom, !dbg !4925
  store i32 %12, i32* %arrayidx, align 4, !dbg !4927
  %15 = load i8*, i8** %vaddr.addr, align 8, !dbg !4928
  %add.ptr = getelementptr i8, i8* %15, i64 4096, !dbg !4929
  store i8* %add.ptr, i8** %vaddr.addr, align 8, !dbg !4930
  br label %for.inc, !dbg !4931

for.inc:                                          ; preds = %if.end9
  %16 = load i32, i32* %i, align 4, !dbg !4932
  %inc = add i32 %16, 1, !dbg !4932
  store i32 %inc, i32* %i, align 4, !dbg !4932
  br label %for.cond, !dbg !4933, !llvm.loop !4934

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !4936
  br label %return, !dbg !4936

fail:                                             ; preds = %if.then8
  call void @llvm.dbg.label(metadata !4937), !dbg !4938
  store i32 0, i32* %j, align 4, !dbg !4939
  br label %for.cond10, !dbg !4941

for.cond10:                                       ; preds = %for.inc17, %fail
  %17 = load i32, i32* %j, align 4, !dbg !4942
  %18 = load i32, i32* %i, align 4, !dbg !4944
  %cmp11 = icmp slt i32 %17, %18, !dbg !4945
  br i1 %cmp11, label %for.body13, label %for.end19, !dbg !4946

for.body13:                                       ; preds = %for.cond10
  %19 = load i32*, i32** %grefs.addr, align 8, !dbg !4947
  %20 = load i32, i32* %j, align 4, !dbg !4948
  %idxprom14 = sext i32 %20 to i64, !dbg !4947
  %arrayidx15 = getelementptr i32, i32* %19, i64 %idxprom14, !dbg !4947
  %21 = load i32, i32* %arrayidx15, align 4, !dbg !4947
  %call16 = call i32 @gnttab_end_foreign_access_ref(i32 %21, i32 0) #11, !dbg !4949
  br label %for.inc17, !dbg !4949

for.inc17:                                        ; preds = %for.body13
  %22 = load i32, i32* %j, align 4, !dbg !4950
  %inc18 = add i32 %22, 1, !dbg !4950
  store i32 %inc18, i32* %j, align 4, !dbg !4950
  br label %for.cond10, !dbg !4951, !llvm.loop !4952

for.end19:                                        ; preds = %for.cond10
  %23 = load i32, i32* %err, align 4, !dbg !4954
  store i32 %23, i32* %retval, align 4, !dbg !4955
  br label %return, !dbg !4955

return:                                           ; preds = %for.end19, %for.end
  %24 = load i32, i32* %retval, align 4, !dbg !4956
  ret i32 %24, !dbg !4956
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @is_vmalloc_addr(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pfn_to_gfn(i64 %pfn) #0 !dbg !4957 {
entry:
  %retval = alloca i64, align 8
  %pfn.addr = alloca i64, align 8
  store i64 %pfn, i64* %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pfn.addr, metadata !4961, metadata !DIExpression()), !dbg !4962
  %call = call i32 @xen_feature(i32 2) #11, !dbg !4963
  %tobool = icmp ne i32 %call, 0, !dbg !4963
  br i1 %tobool, label %if.then, label %if.else, !dbg !4965

if.then:                                          ; preds = %entry
  %0 = load i64, i64* %pfn.addr, align 8, !dbg !4966
  store i64 %0, i64* %retval, align 8, !dbg !4967
  br label %return, !dbg !4967

if.else:                                          ; preds = %entry
  %1 = load i64, i64* %pfn.addr, align 8, !dbg !4968
  %call1 = call i64 @pfn_to_mfn(i64 %1) #11, !dbg !4969
  store i64 %call1, i64* %retval, align 8, !dbg !4970
  br label %return, !dbg !4970

return:                                           ; preds = %if.else, %if.then
  %2 = load i64, i64* %retval, align 8, !dbg !4971
  ret i64 %2, !dbg !4971
}

; Function Attrs: noredzone
declare dso_local i64 @vmalloc_to_pfn(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @__phys_addr_nodebug(i64 %x) #0 !dbg !4972 {
entry:
  %x.addr = alloca i64, align 8
  %y = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr, metadata !4974, metadata !DIExpression()), !dbg !4975
  call void @llvm.dbg.declare(metadata i64* %y, metadata !4976, metadata !DIExpression()), !dbg !4977
  %0 = load i64, i64* %x.addr, align 8, !dbg !4978
  %sub = sub i64 %0, -2147483648, !dbg !4979
  store i64 %sub, i64* %y, align 8, !dbg !4977
  %1 = load i64, i64* %y, align 8, !dbg !4980
  %2 = load i64, i64* %x.addr, align 8, !dbg !4981
  %3 = load i64, i64* %y, align 8, !dbg !4982
  %cmp = icmp ugt i64 %2, %3, !dbg !4983
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !4984

cond.true:                                        ; preds = %entry
  %4 = load i64, i64* @phys_base, align 8, !dbg !4985
  br label %cond.end, !dbg !4984

cond.false:                                       ; preds = %entry
  %5 = load i64, i64* @page_offset_base, align 8, !dbg !4986
  %sub1 = sub i64 -2147483648, %5, !dbg !4987
  br label %cond.end, !dbg !4984

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %sub1, %cond.false ], !dbg !4984
  %add = add i64 %1, %cond, !dbg !4988
  store i64 %add, i64* %x.addr, align 8, !dbg !4989
  %6 = load i64, i64* %x.addr, align 8, !dbg !4990
  ret i64 %6, !dbg !4991
}

; Function Attrs: noredzone
declare dso_local i32 @gnttab_grant_foreign_access(i16 zeroext, i64, i32) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @gnttab_end_foreign_access_ref(i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @xenbus_alloc_evtchn(%struct.xenbus_device* %dev, i32* %port) #0 !dbg !4992 {
entry:
  %dev.addr = alloca %struct.xenbus_device*, align 8
  %port.addr = alloca i32*, align 8
  %alloc_unbound = alloca %struct.evtchn_alloc_unbound, align 4
  %err = alloca i32, align 4
  store %struct.xenbus_device* %dev, %struct.xenbus_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %dev.addr, metadata !4998, metadata !DIExpression()), !dbg !4999
  store i32* %port, i32** %port.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %port.addr, metadata !5000, metadata !DIExpression()), !dbg !5001
  call void @llvm.dbg.declare(metadata %struct.evtchn_alloc_unbound* %alloc_unbound, metadata !5002, metadata !DIExpression()), !dbg !5008
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5009, metadata !DIExpression()), !dbg !5010
  %dom = getelementptr inbounds %struct.evtchn_alloc_unbound, %struct.evtchn_alloc_unbound* %alloc_unbound, i32 0, i32 0, !dbg !5011
  store i16 32752, i16* %dom, align 4, !dbg !5012
  %0 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !5013
  %otherend_id = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %0, i32 0, i32 3, !dbg !5014
  %1 = load i32, i32* %otherend_id, align 8, !dbg !5014
  %conv = trunc i32 %1 to i16, !dbg !5013
  %remote_dom = getelementptr inbounds %struct.evtchn_alloc_unbound, %struct.evtchn_alloc_unbound* %alloc_unbound, i32 0, i32 1, !dbg !5015
  store i16 %conv, i16* %remote_dom, align 2, !dbg !5016
  %2 = bitcast %struct.evtchn_alloc_unbound* %alloc_unbound to i8*, !dbg !5017
  %call = call i32 @HYPERVISOR_event_channel_op(i32 6, i8* %2) #11, !dbg !5018
  store i32 %call, i32* %err, align 4, !dbg !5019
  %3 = load i32, i32* %err, align 4, !dbg !5020
  %tobool = icmp ne i32 %3, 0, !dbg !5020
  br i1 %tobool, label %if.then, label %if.else, !dbg !5022

if.then:                                          ; preds = %entry
  %4 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !5023
  %5 = load i32, i32* %err, align 4, !dbg !5024
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %4, i32 %5, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0)) #11, !dbg !5025
  br label %if.end, !dbg !5025

if.else:                                          ; preds = %entry
  %port1 = getelementptr inbounds %struct.evtchn_alloc_unbound, %struct.evtchn_alloc_unbound* %alloc_unbound, i32 0, i32 2, !dbg !5026
  %6 = load i32, i32* %port1, align 4, !dbg !5026
  %7 = load i32*, i32** %port.addr, align 8, !dbg !5027
  store i32 %6, i32* %7, align 4, !dbg !5028
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load i32, i32* %err, align 4, !dbg !5029
  ret i32 %8, !dbg !5030
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @HYPERVISOR_event_channel_op(i32 %cmd, i8* %arg) #0 !dbg !5031 {
entry:
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %__res = alloca i64, align 8
  %__arg1 = alloca i64, align 8
  %__arg2 = alloca i64, align 8
  %__arg3 = alloca i64, align 8
  %__arg4 = alloca i64, align 8
  %__arg5 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store i32 %cmd, i32* %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cmd.addr, metadata !5035, metadata !DIExpression()), !dbg !5036
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !5037, metadata !DIExpression()), !dbg !5038
  call void @llvm.dbg.declare(metadata i64* %__res, metadata !5039, metadata !DIExpression()), !dbg !5041
  call void @llvm.dbg.declare(metadata i64* %__arg1, metadata !5042, metadata !DIExpression()), !dbg !5041
  %0 = load i64, i64* %__arg1, align 8, !dbg !5041
  store i64 %0, i64* %__arg1, align 8, !dbg !5041
  call void @llvm.dbg.declare(metadata i64* %__arg2, metadata !5043, metadata !DIExpression()), !dbg !5041
  %1 = load i64, i64* %__arg2, align 8, !dbg !5041
  store i64 %1, i64* %__arg2, align 8, !dbg !5041
  call void @llvm.dbg.declare(metadata i64* %__arg3, metadata !5044, metadata !DIExpression()), !dbg !5041
  %2 = load i64, i64* %__arg3, align 8, !dbg !5041
  store i64 %2, i64* %__arg3, align 8, !dbg !5041
  call void @llvm.dbg.declare(metadata i64* %__arg4, metadata !5045, metadata !DIExpression()), !dbg !5041
  %3 = load i64, i64* %__arg4, align 8, !dbg !5041
  store i64 %3, i64* %__arg4, align 8, !dbg !5041
  call void @llvm.dbg.declare(metadata i64* %__arg5, metadata !5046, metadata !DIExpression()), !dbg !5041
  %4 = load i64, i64* %__arg5, align 8, !dbg !5041
  store i64 %4, i64* %__arg5, align 8, !dbg !5041
  %5 = load i32, i32* %cmd.addr, align 4, !dbg !5041
  %conv = sext i32 %5 to i64, !dbg !5041
  store i64 %conv, i64* %__arg1, align 8, !dbg !5041
  %6 = load i8*, i8** %arg.addr, align 8, !dbg !5041
  %7 = ptrtoint i8* %6 to i64, !dbg !5041
  store i64 %7, i64* %__arg2, align 8, !dbg !5041
  %8 = call i64 @llvm.read_register.i64(metadata !4291), !dbg !5041
  %9 = load i64, i64* %__arg1, align 8, !dbg !5041
  %10 = load i64, i64* %__arg2, align 8, !dbg !5041
  %11 = call { i64, i64, i64, i64 } asm sideeffect "call hypercall_page+${4:c}", "={rax},={rsp},={rdi},={rsi},i,1,2,3,~{memory},~{r8},~{r10},~{rdx},~{dirflag},~{fpsr},~{flags}"(i64 1024, i64 %8, i64 %9, i64 %10) #3, !dbg !5041, !srcloc !5047
  %asmresult = extractvalue { i64, i64, i64, i64 } %11, 0, !dbg !5041
  %asmresult1 = extractvalue { i64, i64, i64, i64 } %11, 1, !dbg !5041
  %asmresult2 = extractvalue { i64, i64, i64, i64 } %11, 2, !dbg !5041
  %asmresult3 = extractvalue { i64, i64, i64, i64 } %11, 3, !dbg !5041
  store i64 %asmresult, i64* %__res, align 8, !dbg !5041
  call void @llvm.write_register.i64(metadata !4291, i64 %asmresult1), !dbg !5041
  store i64 %asmresult2, i64* %__arg1, align 8, !dbg !5041
  store i64 %asmresult3, i64* %__arg2, align 8, !dbg !5041
  %12 = load i64, i64* %__res, align 8, !dbg !5041
  %conv4 = trunc i64 %12 to i32, !dbg !5041
  store i32 %conv4, i32* %tmp, align 4, !dbg !5041
  %13 = load i32, i32* %tmp, align 4, !dbg !5041
  ret i32 %13, !dbg !5048
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @xenbus_free_evtchn(%struct.xenbus_device* %dev, i32 %port) #0 !dbg !5049 {
entry:
  %dev.addr = alloca %struct.xenbus_device*, align 8
  %port.addr = alloca i32, align 4
  %close = alloca %struct.evtchn_close, align 4
  %err = alloca i32, align 4
  store %struct.xenbus_device* %dev, %struct.xenbus_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %dev.addr, metadata !5052, metadata !DIExpression()), !dbg !5053
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5054, metadata !DIExpression()), !dbg !5055
  call void @llvm.dbg.declare(metadata %struct.evtchn_close* %close, metadata !5056, metadata !DIExpression()), !dbg !5060
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5061, metadata !DIExpression()), !dbg !5062
  %0 = load i32, i32* %port.addr, align 4, !dbg !5063
  %port1 = getelementptr inbounds %struct.evtchn_close, %struct.evtchn_close* %close, i32 0, i32 0, !dbg !5064
  store i32 %0, i32* %port1, align 4, !dbg !5065
  %1 = bitcast %struct.evtchn_close* %close to i8*, !dbg !5066
  %call = call i32 @HYPERVISOR_event_channel_op(i32 3, i8* %1) #11, !dbg !5067
  store i32 %call, i32* %err, align 4, !dbg !5068
  %2 = load i32, i32* %err, align 4, !dbg !5069
  %tobool = icmp ne i32 %2, 0, !dbg !5069
  br i1 %tobool, label %if.then, label %if.end, !dbg !5071

if.then:                                          ; preds = %entry
  %3 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !5072
  %4 = load i32, i32* %err, align 4, !dbg !5073
  %5 = load i32, i32* %port.addr, align 4, !dbg !5074
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_error(%struct.xenbus_device* %3, i32 %4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 %5) #11, !dbg !5075
  br label %if.end, !dbg !5075

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %err, align 4, !dbg !5076
  ret i32 %6, !dbg !5077
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @xenbus_map_ring_valloc(%struct.xenbus_device* %dev, i32* %gnt_refs, i32 %nr_grefs, i8** %vaddr) #0 !dbg !5078 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.xenbus_device*, align 8
  %gnt_refs.addr = alloca i32*, align 8
  %nr_grefs.addr = alloca i32, align 4
  %vaddr.addr = alloca i8**, align 8
  %err = alloca i32, align 4
  %info = alloca %struct.map_ring_valloc*, align 8
  store %struct.xenbus_device* %dev, %struct.xenbus_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %dev.addr, metadata !5081, metadata !DIExpression()), !dbg !5082
  store i32* %gnt_refs, i32** %gnt_refs.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %gnt_refs.addr, metadata !5083, metadata !DIExpression()), !dbg !5084
  store i32 %nr_grefs, i32* %nr_grefs.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nr_grefs.addr, metadata !5085, metadata !DIExpression()), !dbg !5086
  store i8** %vaddr, i8*** %vaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %vaddr.addr, metadata !5087, metadata !DIExpression()), !dbg !5088
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5089, metadata !DIExpression()), !dbg !5090
  call void @llvm.dbg.declare(metadata %struct.map_ring_valloc** %info, metadata !5091, metadata !DIExpression()), !dbg !5092
  %0 = load i8**, i8*** %vaddr.addr, align 8, !dbg !5093
  store i8* null, i8** %0, align 8, !dbg !5094
  %1 = load i32, i32* %nr_grefs.addr, align 4, !dbg !5095
  %cmp = icmp ugt i32 %1, 16, !dbg !5097
  br i1 %cmp, label %if.then, label %if.end, !dbg !5098

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5099
  br label %return, !dbg !5099

if.end:                                           ; preds = %entry
  %call = call i8* @kzalloc(i64 1168, i32 3264) #11, !dbg !5100
  %2 = bitcast i8* %call to %struct.map_ring_valloc*, !dbg !5100
  store %struct.map_ring_valloc* %2, %struct.map_ring_valloc** %info, align 8, !dbg !5101
  %3 = load %struct.map_ring_valloc*, %struct.map_ring_valloc** %info, align 8, !dbg !5102
  %tobool = icmp ne %struct.map_ring_valloc* %3, null, !dbg !5102
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !5104

if.then1:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !5105
  br label %return, !dbg !5105

if.end2:                                          ; preds = %if.end
  %call3 = call i8* @kzalloc(i64 352, i32 3264) #11, !dbg !5106
  %4 = bitcast i8* %call3 to %struct.xenbus_map_node*, !dbg !5106
  %5 = load %struct.map_ring_valloc*, %struct.map_ring_valloc** %info, align 8, !dbg !5107
  %node = getelementptr inbounds %struct.map_ring_valloc, %struct.map_ring_valloc* %5, i32 0, i32 0, !dbg !5108
  store %struct.xenbus_map_node* %4, %struct.xenbus_map_node** %node, align 8, !dbg !5109
  %6 = load %struct.map_ring_valloc*, %struct.map_ring_valloc** %info, align 8, !dbg !5110
  %node4 = getelementptr inbounds %struct.map_ring_valloc, %struct.map_ring_valloc* %6, i32 0, i32 0, !dbg !5112
  %7 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %node4, align 8, !dbg !5112
  %tobool5 = icmp ne %struct.xenbus_map_node* %7, null, !dbg !5110
  br i1 %tobool5, label %if.else, label %if.then6, !dbg !5113

if.then6:                                         ; preds = %if.end2
  store i32 -12, i32* %err, align 4, !dbg !5114
  br label %if.end8, !dbg !5115

if.else:                                          ; preds = %if.end2
  %8 = load %struct.xenbus_ring_ops*, %struct.xenbus_ring_ops** @ring_ops, align 8, !dbg !5116
  %map = getelementptr inbounds %struct.xenbus_ring_ops, %struct.xenbus_ring_ops* %8, i32 0, i32 0, !dbg !5117
  %9 = load i32 (%struct.xenbus_device*, %struct.map_ring_valloc*, i32*, i32, i8**)*, i32 (%struct.xenbus_device*, %struct.map_ring_valloc*, i32*, i32, i8**)** %map, align 8, !dbg !5117
  %10 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !5118
  %11 = load %struct.map_ring_valloc*, %struct.map_ring_valloc** %info, align 8, !dbg !5119
  %12 = load i32*, i32** %gnt_refs.addr, align 8, !dbg !5120
  %13 = load i32, i32* %nr_grefs.addr, align 4, !dbg !5121
  %14 = load i8**, i8*** %vaddr.addr, align 8, !dbg !5122
  %call7 = call i32 %9(%struct.xenbus_device* %10, %struct.map_ring_valloc* %11, i32* %12, i32 %13, i8** %14) #11, !dbg !5116
  store i32 %call7, i32* %err, align 4, !dbg !5123
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then6
  %15 = load %struct.map_ring_valloc*, %struct.map_ring_valloc** %info, align 8, !dbg !5124
  %node9 = getelementptr inbounds %struct.map_ring_valloc, %struct.map_ring_valloc* %15, i32 0, i32 0, !dbg !5125
  %16 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %node9, align 8, !dbg !5125
  %17 = bitcast %struct.xenbus_map_node* %16 to i8*, !dbg !5124
  call void @kfree(i8* %17) #11, !dbg !5126
  %18 = load %struct.map_ring_valloc*, %struct.map_ring_valloc** %info, align 8, !dbg !5127
  %19 = bitcast %struct.map_ring_valloc* %18 to i8*, !dbg !5127
  call void @kfree(i8* %19) #11, !dbg !5128
  %20 = load i32, i32* %err, align 4, !dbg !5129
  store i32 %20, i32* %retval, align 4, !dbg !5130
  br label %return, !dbg !5130

return:                                           ; preds = %if.end8, %if.then1, %if.then
  %21 = load i32, i32* %retval, align 4, !dbg !5131
  ret i32 %21, !dbg !5131
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !5132 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4558, metadata !DIExpression()), !dbg !5133
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4570, metadata !DIExpression()), !dbg !5136
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4572, metadata !DIExpression()), !dbg !5137
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4574, metadata !DIExpression()), !dbg !5138
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4576, metadata !DIExpression()), !dbg !5139
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4582, metadata !DIExpression()), !dbg !5141
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4588, metadata !DIExpression()), !dbg !5143
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4597, metadata !DIExpression()), !dbg !5146
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4599, metadata !DIExpression()), !dbg !5147
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4601, metadata !DIExpression()), !dbg !5148
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4603, metadata !DIExpression()), !dbg !5149
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4605, metadata !DIExpression()), !dbg !5150
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4607, metadata !DIExpression()), !dbg !5151
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4609, metadata !DIExpression()), !dbg !5152
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4611, metadata !DIExpression()), !dbg !5153
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5154, metadata !DIExpression()), !dbg !5155
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5156, metadata !DIExpression()), !dbg !5157
  %0 = load i64, i64* %size.addr, align 8, !dbg !5158
  %1 = load i32, i32* %flags.addr, align 4, !dbg !5159
  %or = or i32 %1, 256, !dbg !5160
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !5161
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #3, !dbg !5162
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !5163

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5164
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !5165
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5166

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !5167
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !5168
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5169
  %call.i.i = call i32 @get_order(i64 %7) #12, !dbg !5170
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5150
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !5171
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5172
  %10 = load i32, i32* %order.i.i, align 4, !dbg !5173
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5174
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5175
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5176
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #13, !dbg !5177
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5177
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5177
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5177
  call void @llvm.assume(i1 %maskcond.i.i.i) #3, !dbg !5177
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5178
  br label %kmalloc.exit, !dbg !5178

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !5179
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5180
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !5180
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5181

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5182
  br label %kmalloc_index.exit.i, !dbg !5182

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5183
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !5184
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5185

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5186
  br label %kmalloc_index.exit.i, !dbg !5186

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5187
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !5188
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5189

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5190
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !5191
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5192

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5193
  br label %kmalloc_index.exit.i, !dbg !5193

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5194
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !5195
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5196

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5197
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !5198
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5199

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5200
  br label %kmalloc_index.exit.i, !dbg !5200

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5201
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !5202
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5203

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5204
  br label %kmalloc_index.exit.i, !dbg !5204

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5205
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !5206
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5207

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5208
  br label %kmalloc_index.exit.i, !dbg !5208

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5209
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !5210
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5211

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5212
  br label %kmalloc_index.exit.i, !dbg !5212

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5213
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !5214
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5215

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5216
  br label %kmalloc_index.exit.i, !dbg !5216

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5217
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !5218
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5219

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5220
  br label %kmalloc_index.exit.i, !dbg !5220

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5221
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !5222
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5223

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5224
  br label %kmalloc_index.exit.i, !dbg !5224

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5225
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !5226
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5227

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5228
  br label %kmalloc_index.exit.i, !dbg !5228

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5229
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !5230
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5231

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5232
  br label %kmalloc_index.exit.i, !dbg !5232

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5233
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !5234
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5235

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5236
  br label %kmalloc_index.exit.i, !dbg !5236

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5237
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !5238
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5239

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5240
  br label %kmalloc_index.exit.i, !dbg !5240

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5241
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !5242
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5243

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5244
  br label %kmalloc_index.exit.i, !dbg !5244

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5245
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !5246
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5247

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5248
  br label %kmalloc_index.exit.i, !dbg !5248

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5249
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !5250
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5251

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5252
  br label %kmalloc_index.exit.i, !dbg !5252

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5253
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !5254
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5255

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5256
  br label %kmalloc_index.exit.i, !dbg !5256

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5257
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !5258
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5259

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5260
  br label %kmalloc_index.exit.i, !dbg !5260

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5261
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !5262
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5263

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5264
  br label %kmalloc_index.exit.i, !dbg !5264

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5265
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !5266
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5267

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5268
  br label %kmalloc_index.exit.i, !dbg !5268

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5269
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !5270
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5271

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5272
  br label %kmalloc_index.exit.i, !dbg !5272

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5273
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !5274
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5275

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5276
  br label %kmalloc_index.exit.i, !dbg !5276

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5277
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !5278
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5279

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5280
  br label %kmalloc_index.exit.i, !dbg !5280

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5281
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !5282
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5283

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5284
  br label %kmalloc_index.exit.i, !dbg !5284

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5285
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !5286
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5287

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5288
  br label %kmalloc_index.exit.i, !dbg !5288

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5289
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !5290
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5291

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5292
  br label %kmalloc_index.exit.i, !dbg !5292

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5293
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !5294
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5295

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5296
  br label %kmalloc_index.exit.i, !dbg !5296

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0), i32 382, i32 0, i64 12) #3, !dbg !5297, !srcloc !4794
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 214) #3, !dbg !5298, !srcloc !4798
  unreachable, !dbg !5299

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !5300
  store i32 %45, i32* %index.i, align 4, !dbg !5301
  %46 = load i32, i32* %index.i, align 4, !dbg !5302
  %tobool.i = icmp ne i32 %46, 0, !dbg !5302
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5303

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5304
  br label %kmalloc.exit, !dbg !5304

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !5305
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5306
  %and.i.i = and i32 %48, 17, !dbg !5306
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5306
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5306
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5306
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5306
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5307

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5308
  br label %kmalloc_type.exit.i, !dbg !5308

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5309
  %and2.i.i = and i32 %49, 1, !dbg !5310
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5309
  %50 = zext i1 %tobool3.i.i to i64, !dbg !5309
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5309
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5311
  br label %kmalloc_type.exit.i, !dbg !5311

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !5312
  %idxprom.i = zext i32 %51 to i64, !dbg !5313
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5313
  %52 = load i32, i32* %index.i, align 4, !dbg !5314
  %idxprom6.i = zext i32 %52 to i64, !dbg !5313
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5313
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5313
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !5315
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !5316
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5317
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5318
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #13, !dbg !5319
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5319
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5319
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5319
  call void @llvm.assume(i1 %maskcond.i.i) #3, !dbg !5319
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5138
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5320
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !5321
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5322
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5323
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #13, !dbg !5324
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5325
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !5326
  store i8* %62, i8** %retval.i, align 8, !dbg !5327
  br label %kmalloc.exit, !dbg !5327

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !5328
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !5329
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #13, !dbg !5330
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5330
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5330
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5330
  call void @llvm.assume(i1 %maskcond.i) #3, !dbg !5330
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5331
  br label %kmalloc.exit, !dbg !5331

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !5332
  ret i8* %65, !dbg !5333
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @xenbus_unmap_ring_vfree(%struct.xenbus_device* %dev, i8* %vaddr) #0 !dbg !5334 {
entry:
  %dev.addr = alloca %struct.xenbus_device*, align 8
  %vaddr.addr = alloca i8*, align 8
  store %struct.xenbus_device* %dev, %struct.xenbus_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %dev.addr, metadata !5335, metadata !DIExpression()), !dbg !5336
  store i8* %vaddr, i8** %vaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %vaddr.addr, metadata !5337, metadata !DIExpression()), !dbg !5338
  %0 = load %struct.xenbus_ring_ops*, %struct.xenbus_ring_ops** @ring_ops, align 8, !dbg !5339
  %unmap = getelementptr inbounds %struct.xenbus_ring_ops, %struct.xenbus_ring_ops* %0, i32 0, i32 1, !dbg !5340
  %1 = load i32 (%struct.xenbus_device*, i8*)*, i32 (%struct.xenbus_device*, i8*)** %unmap, align 8, !dbg !5340
  %2 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !5341
  %3 = load i8*, i8** %vaddr.addr, align 8, !dbg !5342
  %call = call i32 %1(%struct.xenbus_device* %2, i8* %3) #11, !dbg !5339
  ret i32 %call, !dbg !5343
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @xenbus_read_driver_state(i8* %path) #0 !dbg !5344 {
entry:
  %path.addr = alloca i8*, align 8
  %result = alloca i32, align 4
  %err = alloca i32, align 4
  %.compoundliteral = alloca %struct.xenbus_transaction, align 4
  store i8* %path, i8** %path.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %path.addr, metadata !5347, metadata !DIExpression()), !dbg !5348
  call void @llvm.dbg.declare(metadata i32* %result, metadata !5349, metadata !DIExpression()), !dbg !5350
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5351, metadata !DIExpression()), !dbg !5352
  %id = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral, i32 0, i32 0, !dbg !5353
  store i32 0, i32* %id, align 4, !dbg !5353
  %0 = load i8*, i8** %path.addr, align 8, !dbg !5354
  %coerce.dive = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral, i32 0, i32 0, !dbg !5355
  %1 = load i32, i32* %coerce.dive, align 4, !dbg !5355
  %call = call i32 (i32, i8*, ...) @xenbus_gather(i32 %1, i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i32* %result, i8* null) #11, !dbg !5355
  store i32 %call, i32* %err, align 4, !dbg !5352
  %2 = load i32, i32* %err, align 4, !dbg !5356
  %tobool = icmp ne i32 %2, 0, !dbg !5356
  br i1 %tobool, label %if.then, label %if.end, !dbg !5358

if.then:                                          ; preds = %entry
  store i32 0, i32* %result, align 4, !dbg !5359
  br label %if.end, !dbg !5360

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %result, align 4, !dbg !5361
  ret i32 %3, !dbg !5362
}

; Function Attrs: noredzone
declare dso_local i32 @xenbus_gather(i32, i8*, ...) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local void @xenbus_ring_ops_init() #4 section ".init.text" !dbg !5363 {
entry:
  %call = call i32 @xen_feature(i32 2) #11, !dbg !5364
  %tobool = icmp ne i32 %call, 0, !dbg !5364
  br i1 %tobool, label %if.else, label %if.then, !dbg !5366

if.then:                                          ; preds = %entry
  store %struct.xenbus_ring_ops* @ring_ops_pv, %struct.xenbus_ring_ops** @ring_ops, align 8, !dbg !5367
  br label %if.end, !dbg !5368

if.else:                                          ; preds = %entry
  store %struct.xenbus_ring_ops* @ring_ops_hvm, %struct.xenbus_ring_ops** @ring_ops, align 8, !dbg !5369
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !5370
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_feature(i32 %flag) #0 !dbg !5371 {
entry:
  %flag.addr = alloca i32, align 4
  store i32 %flag, i32* %flag.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flag.addr, metadata !5373, metadata !DIExpression()), !dbg !5374
  %0 = load i32, i32* %flag.addr, align 4, !dbg !5375
  %idxprom = sext i32 %0 to i64, !dbg !5376
  %arrayidx = getelementptr [32 x i8], [32 x i8]* @xen_features, i64 0, i64 %idxprom, !dbg !5376
  %1 = load i8, i8* %arrayidx, align 1, !dbg !5376
  %conv = zext i8 %1 to i32, !dbg !5376
  ret i32 %conv, !dbg !5377
}

; Function Attrs: noredzone
declare dso_local i32 @xenbus_transaction_start(%struct.xenbus_transaction*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xenbus_switch_fatal(%struct.xenbus_device* %dev, i32 %depth, i32 %err, i8* %fmt, ...) #0 !dbg !5378 {
entry:
  %dev.addr = alloca %struct.xenbus_device*, align 8
  %depth.addr = alloca i32, align 4
  %err.addr = alloca i32, align 4
  %fmt.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.xenbus_device* %dev, %struct.xenbus_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %dev.addr, metadata !5381, metadata !DIExpression()), !dbg !5382
  store i32 %depth, i32* %depth.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %depth.addr, metadata !5383, metadata !DIExpression()), !dbg !5384
  store i32 %err, i32* %err.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %err.addr, metadata !5385, metadata !DIExpression()), !dbg !5386
  store i8* %fmt, i8** %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %fmt.addr, metadata !5387, metadata !DIExpression()), !dbg !5388
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !5389, metadata !DIExpression()), !dbg !5390
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !5391
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !5391
  call void @llvm.va_start(i8* %arraydecay1), !dbg !5391
  %0 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !5392
  %1 = load i32, i32* %err.addr, align 4, !dbg !5393
  %2 = load i8*, i8** %fmt.addr, align 8, !dbg !5394
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !5395
  call void @xenbus_va_dev_error(%struct.xenbus_device* %0, i32 %1, i8* %2, %struct.__va_list_tag* %arraydecay2) #11, !dbg !5396
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !5397
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !5397
  call void @llvm.va_end(i8* %arraydecay34), !dbg !5397
  %3 = load i32, i32* %depth.addr, align 4, !dbg !5398
  %tobool = icmp ne i32 %3, 0, !dbg !5398
  br i1 %tobool, label %if.end, label %if.then, !dbg !5400

if.then:                                          ; preds = %entry
  %4 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !5401
  %call = call i32 @__xenbus_switch_state(%struct.xenbus_device* %4, i32 5, i32 1) #11, !dbg !5402
  br label %if.end, !dbg !5402

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5403
}

; Function Attrs: noredzone
declare dso_local i32 @xenbus_scanf(i32, i8*, i8*, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @xenbus_printf(i32, i8*, i8*, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @xenbus_transaction_end(i32, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #2

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @kasprintf(i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @xenbus_write(i32, i8*, i8*, i8*) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #7

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #8 !dbg !5404 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5408, metadata !DIExpression()), !dbg !5413
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5415, metadata !DIExpression()), !dbg !5416
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5417, metadata !DIExpression()), !dbg !5418
  %0 = load i64, i64* %size.addr, align 8, !dbg !5419
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5421
  br i1 %1, label %if.then, label %if.end447, !dbg !5422

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5423
  %tobool = icmp ne i64 %2, 0, !dbg !5423
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5426

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5427
  br label %return, !dbg !5427

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5428
  %cmp = icmp ult i64 %3, 4096, !dbg !5430
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5431

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5432
  br label %return, !dbg !5432

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub = sub i64 %4, 1, !dbg !5433
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5433
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5433

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub4 = sub i64 %6, 1, !dbg !5433
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5433
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5433

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub6 = sub i64 %8, 1, !dbg !5433
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5433
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5433

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5433

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub9 = sub i64 %9, 1, !dbg !5433
  %and = and i64 %sub9, -9223372036854775808, !dbg !5433
  %tobool10 = icmp ne i64 %and, 0, !dbg !5433
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5433

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5433

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub13 = sub i64 %10, 1, !dbg !5433
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5433
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5433
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5433

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5433

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub18 = sub i64 %11, 1, !dbg !5433
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5433
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5433
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5433

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5433

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub23 = sub i64 %12, 1, !dbg !5433
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5433
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5433
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5433

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5433

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub28 = sub i64 %13, 1, !dbg !5433
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5433
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5433
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5433

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5433

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub33 = sub i64 %14, 1, !dbg !5433
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5433
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5433
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5433

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5433

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub38 = sub i64 %15, 1, !dbg !5433
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5433
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5433
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5433

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5433

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub43 = sub i64 %16, 1, !dbg !5433
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5433
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5433
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5433

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5433

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub48 = sub i64 %17, 1, !dbg !5433
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5433
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5433
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5433

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5433

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub53 = sub i64 %18, 1, !dbg !5433
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5433
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5433
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5433

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5433

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub58 = sub i64 %19, 1, !dbg !5433
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5433
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5433
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5433

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5433

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub63 = sub i64 %20, 1, !dbg !5433
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5433
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5433
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5433

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5433

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub68 = sub i64 %21, 1, !dbg !5433
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5433
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5433
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5433

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5433

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub73 = sub i64 %22, 1, !dbg !5433
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5433
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5433
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5433

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5433

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub78 = sub i64 %23, 1, !dbg !5433
  %and79 = and i64 %sub78, 562949953421312, !dbg !5433
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5433
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5433

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5433

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub83 = sub i64 %24, 1, !dbg !5433
  %and84 = and i64 %sub83, 281474976710656, !dbg !5433
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5433
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5433

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5433

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub88 = sub i64 %25, 1, !dbg !5433
  %and89 = and i64 %sub88, 140737488355328, !dbg !5433
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5433
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5433

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5433

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub93 = sub i64 %26, 1, !dbg !5433
  %and94 = and i64 %sub93, 70368744177664, !dbg !5433
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5433
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5433

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5433

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub98 = sub i64 %27, 1, !dbg !5433
  %and99 = and i64 %sub98, 35184372088832, !dbg !5433
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5433
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5433

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5433

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub103 = sub i64 %28, 1, !dbg !5433
  %and104 = and i64 %sub103, 17592186044416, !dbg !5433
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5433
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5433

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5433

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub108 = sub i64 %29, 1, !dbg !5433
  %and109 = and i64 %sub108, 8796093022208, !dbg !5433
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5433
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5433

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5433

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub113 = sub i64 %30, 1, !dbg !5433
  %and114 = and i64 %sub113, 4398046511104, !dbg !5433
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5433
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5433

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5433

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub118 = sub i64 %31, 1, !dbg !5433
  %and119 = and i64 %sub118, 2199023255552, !dbg !5433
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5433
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5433

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5433

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub123 = sub i64 %32, 1, !dbg !5433
  %and124 = and i64 %sub123, 1099511627776, !dbg !5433
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5433
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5433

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5433

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub128 = sub i64 %33, 1, !dbg !5433
  %and129 = and i64 %sub128, 549755813888, !dbg !5433
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5433
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5433

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5433

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub133 = sub i64 %34, 1, !dbg !5433
  %and134 = and i64 %sub133, 274877906944, !dbg !5433
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5433
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5433

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5433

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub138 = sub i64 %35, 1, !dbg !5433
  %and139 = and i64 %sub138, 137438953472, !dbg !5433
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5433
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5433

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5433

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub143 = sub i64 %36, 1, !dbg !5433
  %and144 = and i64 %sub143, 68719476736, !dbg !5433
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5433
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5433

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5433

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub148 = sub i64 %37, 1, !dbg !5433
  %and149 = and i64 %sub148, 34359738368, !dbg !5433
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5433
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5433

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5433

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub153 = sub i64 %38, 1, !dbg !5433
  %and154 = and i64 %sub153, 17179869184, !dbg !5433
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5433
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5433

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5433

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub158 = sub i64 %39, 1, !dbg !5433
  %and159 = and i64 %sub158, 8589934592, !dbg !5433
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5433
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5433

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5433

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub163 = sub i64 %40, 1, !dbg !5433
  %and164 = and i64 %sub163, 4294967296, !dbg !5433
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5433
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5433

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5433

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub168 = sub i64 %41, 1, !dbg !5433
  %and169 = and i64 %sub168, 2147483648, !dbg !5433
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5433
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5433

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5433

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub173 = sub i64 %42, 1, !dbg !5433
  %and174 = and i64 %sub173, 1073741824, !dbg !5433
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5433
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5433

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5433

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub178 = sub i64 %43, 1, !dbg !5433
  %and179 = and i64 %sub178, 536870912, !dbg !5433
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5433
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5433

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5433

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub183 = sub i64 %44, 1, !dbg !5433
  %and184 = and i64 %sub183, 268435456, !dbg !5433
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5433
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5433

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5433

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub188 = sub i64 %45, 1, !dbg !5433
  %and189 = and i64 %sub188, 134217728, !dbg !5433
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5433
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5433

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5433

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub193 = sub i64 %46, 1, !dbg !5433
  %and194 = and i64 %sub193, 67108864, !dbg !5433
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5433
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5433

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5433

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub198 = sub i64 %47, 1, !dbg !5433
  %and199 = and i64 %sub198, 33554432, !dbg !5433
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5433
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5433

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5433

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub203 = sub i64 %48, 1, !dbg !5433
  %and204 = and i64 %sub203, 16777216, !dbg !5433
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5433
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5433

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5433

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub208 = sub i64 %49, 1, !dbg !5433
  %and209 = and i64 %sub208, 8388608, !dbg !5433
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5433
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5433

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5433

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub213 = sub i64 %50, 1, !dbg !5433
  %and214 = and i64 %sub213, 4194304, !dbg !5433
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5433
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5433

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5433

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub218 = sub i64 %51, 1, !dbg !5433
  %and219 = and i64 %sub218, 2097152, !dbg !5433
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5433
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5433

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5433

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub223 = sub i64 %52, 1, !dbg !5433
  %and224 = and i64 %sub223, 1048576, !dbg !5433
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5433
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5433

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5433

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub228 = sub i64 %53, 1, !dbg !5433
  %and229 = and i64 %sub228, 524288, !dbg !5433
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5433
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5433

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5433

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub233 = sub i64 %54, 1, !dbg !5433
  %and234 = and i64 %sub233, 262144, !dbg !5433
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5433
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5433

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5433

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub238 = sub i64 %55, 1, !dbg !5433
  %and239 = and i64 %sub238, 131072, !dbg !5433
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5433
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5433

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5433

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub243 = sub i64 %56, 1, !dbg !5433
  %and244 = and i64 %sub243, 65536, !dbg !5433
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5433
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5433

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5433

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub248 = sub i64 %57, 1, !dbg !5433
  %and249 = and i64 %sub248, 32768, !dbg !5433
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5433
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5433

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5433

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub253 = sub i64 %58, 1, !dbg !5433
  %and254 = and i64 %sub253, 16384, !dbg !5433
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5433
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5433

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5433

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub258 = sub i64 %59, 1, !dbg !5433
  %and259 = and i64 %sub258, 8192, !dbg !5433
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5433
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5433

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5433

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub263 = sub i64 %60, 1, !dbg !5433
  %and264 = and i64 %sub263, 4096, !dbg !5433
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5433
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5433

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5433

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub268 = sub i64 %61, 1, !dbg !5433
  %and269 = and i64 %sub268, 2048, !dbg !5433
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5433
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5433

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5433

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub273 = sub i64 %62, 1, !dbg !5433
  %and274 = and i64 %sub273, 1024, !dbg !5433
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5433
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5433

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5433

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub278 = sub i64 %63, 1, !dbg !5433
  %and279 = and i64 %sub278, 512, !dbg !5433
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5433
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5433

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5433

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub283 = sub i64 %64, 1, !dbg !5433
  %and284 = and i64 %sub283, 256, !dbg !5433
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5433
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5433

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5433

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub288 = sub i64 %65, 1, !dbg !5433
  %and289 = and i64 %sub288, 128, !dbg !5433
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5433
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5433

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5433

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub293 = sub i64 %66, 1, !dbg !5433
  %and294 = and i64 %sub293, 64, !dbg !5433
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5433
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5433

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5433

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub298 = sub i64 %67, 1, !dbg !5433
  %and299 = and i64 %sub298, 32, !dbg !5433
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5433
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5433

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5433

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub303 = sub i64 %68, 1, !dbg !5433
  %and304 = and i64 %sub303, 16, !dbg !5433
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5433
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5433

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5433

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub308 = sub i64 %69, 1, !dbg !5433
  %and309 = and i64 %sub308, 8, !dbg !5433
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5433
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5433

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5433

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub313 = sub i64 %70, 1, !dbg !5433
  %and314 = and i64 %sub313, 4, !dbg !5433
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5433
  %71 = zext i1 %tobool315 to i64, !dbg !5433
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5433
  br label %cond.end, !dbg !5433

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5433
  br label %cond.end317, !dbg !5433

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5433
  br label %cond.end319, !dbg !5433

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5433
  br label %cond.end321, !dbg !5433

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5433
  br label %cond.end323, !dbg !5433

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5433
  br label %cond.end325, !dbg !5433

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5433
  br label %cond.end327, !dbg !5433

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5433
  br label %cond.end329, !dbg !5433

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5433
  br label %cond.end331, !dbg !5433

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5433
  br label %cond.end333, !dbg !5433

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5433
  br label %cond.end335, !dbg !5433

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5433
  br label %cond.end337, !dbg !5433

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5433
  br label %cond.end339, !dbg !5433

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5433
  br label %cond.end341, !dbg !5433

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5433
  br label %cond.end343, !dbg !5433

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5433
  br label %cond.end345, !dbg !5433

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5433
  br label %cond.end347, !dbg !5433

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5433
  br label %cond.end349, !dbg !5433

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5433
  br label %cond.end351, !dbg !5433

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5433
  br label %cond.end353, !dbg !5433

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5433
  br label %cond.end355, !dbg !5433

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5433
  br label %cond.end357, !dbg !5433

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5433
  br label %cond.end359, !dbg !5433

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5433
  br label %cond.end361, !dbg !5433

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5433
  br label %cond.end363, !dbg !5433

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5433
  br label %cond.end365, !dbg !5433

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5433
  br label %cond.end367, !dbg !5433

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5433
  br label %cond.end369, !dbg !5433

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5433
  br label %cond.end371, !dbg !5433

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5433
  br label %cond.end373, !dbg !5433

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5433
  br label %cond.end375, !dbg !5433

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5433
  br label %cond.end377, !dbg !5433

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5433
  br label %cond.end379, !dbg !5433

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5433
  br label %cond.end381, !dbg !5433

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5433
  br label %cond.end383, !dbg !5433

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5433
  br label %cond.end385, !dbg !5433

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5433
  br label %cond.end387, !dbg !5433

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5433
  br label %cond.end389, !dbg !5433

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5433
  br label %cond.end391, !dbg !5433

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5433
  br label %cond.end393, !dbg !5433

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5433
  br label %cond.end395, !dbg !5433

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5433
  br label %cond.end397, !dbg !5433

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5433
  br label %cond.end399, !dbg !5433

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5433
  br label %cond.end401, !dbg !5433

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5433
  br label %cond.end403, !dbg !5433

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5433
  br label %cond.end405, !dbg !5433

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5433
  br label %cond.end407, !dbg !5433

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5433
  br label %cond.end409, !dbg !5433

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5433
  br label %cond.end411, !dbg !5433

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5433
  br label %cond.end413, !dbg !5433

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5433
  br label %cond.end415, !dbg !5433

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5433
  br label %cond.end417, !dbg !5433

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5433
  br label %cond.end419, !dbg !5433

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5433
  br label %cond.end421, !dbg !5433

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5433
  br label %cond.end423, !dbg !5433

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5433
  br label %cond.end425, !dbg !5433

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5433
  br label %cond.end427, !dbg !5433

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5433
  br label %cond.end429, !dbg !5433

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5433
  br label %cond.end431, !dbg !5433

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5433
  br label %cond.end433, !dbg !5433

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5433
  br label %cond.end435, !dbg !5433

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5433
  br label %cond.end437, !dbg !5433

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5433
  br label %cond.end440, !dbg !5433

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5433

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5433
  br label %cond.end444, !dbg !5433

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5433
  %sub443 = sub i64 %72, 1, !dbg !5433
  %call = call i32 @__ilog2_u64(i64 %sub443) #12, !dbg !5433
  br label %cond.end444, !dbg !5433

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5433
  %sub446 = sub i32 %cond445, 12, !dbg !5434
  %add = add i32 %sub446, 1, !dbg !5435
  store i32 %add, i32* %retval, align 4, !dbg !5436
  br label %return, !dbg !5436

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5437
  %dec = add i64 %73, -1, !dbg !5437
  store i64 %dec, i64* %size.addr, align 8, !dbg !5437
  %74 = load i64, i64* %size.addr, align 8, !dbg !5438
  %shr = lshr i64 %74, 12, !dbg !5438
  store i64 %shr, i64* %size.addr, align 8, !dbg !5438
  %75 = load i64, i64* %size.addr, align 8, !dbg !5439
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5416
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5440
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5441
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #9, !dbg !5440, !srcloc !5442
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5440
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5443
  %add.i = add i32 %79, 1, !dbg !5444
  store i32 %add.i, i32* %retval, align 4, !dbg !5445
  br label %return, !dbg !5445

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5446
  ret i32 %80, !dbg !5446
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #8 !dbg !5447 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5408, metadata !DIExpression()), !dbg !5451
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5415, metadata !DIExpression()), !dbg !5453
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5454, metadata !DIExpression()), !dbg !5455
  %0 = load i64, i64* %n.addr, align 8, !dbg !5456
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5453
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5457
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5458
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #9, !dbg !5457, !srcloc !5442
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5457
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5459
  %add.i = add i32 %4, 1, !dbg !5460
  %sub = sub i32 %add.i, 1, !dbg !5461
  ret i32 %sub, !dbg !5462
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5463 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5467, metadata !DIExpression()), !dbg !5468
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5469, metadata !DIExpression()), !dbg !5470
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5471, metadata !DIExpression()), !dbg !5472
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5473, metadata !DIExpression()), !dbg !5474
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5475
  ret i8* %0, !dbg !5476
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pfn_to_mfn(i64 %pfn) #0 !dbg !5477 {
entry:
  %retval = alloca i64, align 8
  %pfn.addr = alloca i64, align 8
  %mfn = alloca i64, align 8
  store i64 %pfn, i64* %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pfn.addr, metadata !5478, metadata !DIExpression()), !dbg !5479
  call void @llvm.dbg.declare(metadata i64* %mfn, metadata !5480, metadata !DIExpression()), !dbg !5481
  %call = call i32 @xen_feature(i32 2) #11, !dbg !5482
  %tobool = icmp ne i32 %call, 0, !dbg !5482
  br i1 %tobool, label %if.then, label %if.end, !dbg !5484

if.then:                                          ; preds = %entry
  %0 = load i64, i64* %pfn.addr, align 8, !dbg !5485
  store i64 %0, i64* %retval, align 8, !dbg !5486
  br label %return, !dbg !5486

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %pfn.addr, align 8, !dbg !5487
  %call1 = call i64 @__pfn_to_mfn(i64 %1) #11, !dbg !5488
  store i64 %call1, i64* %mfn, align 8, !dbg !5489
  %2 = load i64, i64* %mfn, align 8, !dbg !5490
  %cmp = icmp ne i64 %2, -1, !dbg !5492
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5493

if.then2:                                         ; preds = %if.end
  %3 = load i64, i64* %mfn, align 8, !dbg !5494
  %and = and i64 %3, 4611686018427387903, !dbg !5494
  store i64 %and, i64* %mfn, align 8, !dbg !5494
  br label %if.end3, !dbg !5495

if.end3:                                          ; preds = %if.then2, %if.end
  %4 = load i64, i64* %mfn, align 8, !dbg !5496
  store i64 %4, i64* %retval, align 8, !dbg !5497
  br label %return, !dbg !5497

return:                                           ; preds = %if.end3, %if.then
  %5 = load i64, i64* %retval, align 8, !dbg !5498
  ret i64 %5, !dbg !5498
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @__pfn_to_mfn(i64 %pfn) #0 !dbg !5499 {
entry:
  %retval = alloca i64, align 8
  %pfn.addr = alloca i64, align 8
  %mfn = alloca i64, align 8
  store i64 %pfn, i64* %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pfn.addr, metadata !5500, metadata !DIExpression()), !dbg !5501
  call void @llvm.dbg.declare(metadata i64* %mfn, metadata !5502, metadata !DIExpression()), !dbg !5503
  %0 = load i64, i64* %pfn.addr, align 8, !dbg !5504
  %1 = load i64, i64* @xen_p2m_size, align 8, !dbg !5506
  %cmp = icmp ult i64 %0, %1, !dbg !5507
  br i1 %cmp, label %if.then, label %if.else, !dbg !5508

if.then:                                          ; preds = %entry
  %2 = load i64*, i64** @xen_p2m_addr, align 8, !dbg !5509
  %3 = load i64, i64* %pfn.addr, align 8, !dbg !5510
  %arrayidx = getelementptr i64, i64* %2, i64 %3, !dbg !5509
  %4 = load i64, i64* %arrayidx, align 8, !dbg !5509
  store i64 %4, i64* %mfn, align 8, !dbg !5511
  br label %if.end, !dbg !5512

if.else:                                          ; preds = %entry
  %5 = load i64, i64* %pfn.addr, align 8, !dbg !5513
  %6 = load i64, i64* @xen_max_p2m_pfn, align 8, !dbg !5513
  %cmp1 = icmp ult i64 %5, %6, !dbg !5513
  %lnot = xor i1 %cmp1, true, !dbg !5513
  %lnot2 = xor i1 %lnot, true, !dbg !5513
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5513
  %conv = sext i32 %lnot.ext to i64, !dbg !5513
  %tobool = icmp ne i64 %conv, 0, !dbg !5513
  br i1 %tobool, label %if.then3, label %if.else4, !dbg !5515

if.then3:                                         ; preds = %if.else
  %7 = load i64, i64* %pfn.addr, align 8, !dbg !5516
  %call = call i64 @get_phys_to_machine(i64 %7) #11, !dbg !5517
  store i64 %call, i64* %retval, align 8, !dbg !5518
  br label %return, !dbg !5518

if.else4:                                         ; preds = %if.else
  %8 = load i64, i64* %pfn.addr, align 8, !dbg !5519
  %or = or i64 %8, 4611686018427387904, !dbg !5519
  store i64 %or, i64* %retval, align 8, !dbg !5520
  br label %return, !dbg !5520

if.end:                                           ; preds = %if.then
  %9 = load i64, i64* %mfn, align 8, !dbg !5521
  %cmp5 = icmp eq i64 %9, -1, !dbg !5521
  %lnot7 = xor i1 %cmp5, true, !dbg !5521
  %lnot9 = xor i1 %lnot7, true, !dbg !5521
  %lnot.ext10 = zext i1 %lnot9 to i32, !dbg !5521
  %conv11 = sext i32 %lnot.ext10 to i64, !dbg !5521
  %tobool12 = icmp ne i64 %conv11, 0, !dbg !5521
  br i1 %tobool12, label %if.then13, label %if.end15, !dbg !5523

if.then13:                                        ; preds = %if.end
  %10 = load i64, i64* %pfn.addr, align 8, !dbg !5524
  %call14 = call i64 @get_phys_to_machine(i64 %10) #11, !dbg !5525
  store i64 %call14, i64* %retval, align 8, !dbg !5526
  br label %return, !dbg !5526

if.end15:                                         ; preds = %if.end
  %11 = load i64, i64* %mfn, align 8, !dbg !5527
  store i64 %11, i64* %retval, align 8, !dbg !5528
  br label %return, !dbg !5528

return:                                           ; preds = %if.end15, %if.then13, %if.else4, %if.then3
  %12 = load i64, i64* %retval, align 8, !dbg !5529
  ret i64 %12, !dbg !5529
}

; Function Attrs: noredzone
declare dso_local i64 @get_phys_to_machine(i64) #2

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #9

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xenbus_map_ring_pv(%struct.xenbus_device* %dev, %struct.map_ring_valloc* %info, i32* %gnt_refs, i32 %nr_grefs, i8** %vaddr) #0 !dbg !5530 {
entry:
  %lock.addr.i19 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i19, metadata !5531, metadata !DIExpression()), !dbg !5536
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !5538, metadata !DIExpression()), !dbg !5540
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.xenbus_device*, align 8
  %info.addr = alloca %struct.map_ring_valloc*, align 8
  %gnt_refs.addr = alloca i32*, align 8
  %nr_grefs.addr = alloca i32, align 4
  %vaddr.addr = alloca i8**, align 8
  %node = alloca %struct.xenbus_map_node*, align 8
  %area = alloca %struct.vm_struct*, align 8
  %leaked = alloca i8, align 1
  %err = alloca i32, align 4
  store %struct.xenbus_device* %dev, %struct.xenbus_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %dev.addr, metadata !5542, metadata !DIExpression()), !dbg !5543
  store %struct.map_ring_valloc* %info, %struct.map_ring_valloc** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.map_ring_valloc** %info.addr, metadata !5544, metadata !DIExpression()), !dbg !5545
  store i32* %gnt_refs, i32** %gnt_refs.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %gnt_refs.addr, metadata !5546, metadata !DIExpression()), !dbg !5547
  store i32 %nr_grefs, i32* %nr_grefs.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nr_grefs.addr, metadata !5548, metadata !DIExpression()), !dbg !5549
  store i8** %vaddr, i8*** %vaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %vaddr.addr, metadata !5550, metadata !DIExpression()), !dbg !5551
  call void @llvm.dbg.declare(metadata %struct.xenbus_map_node** %node, metadata !5552, metadata !DIExpression()), !dbg !5553
  %0 = load %struct.map_ring_valloc*, %struct.map_ring_valloc** %info.addr, align 8, !dbg !5554
  %node1 = getelementptr inbounds %struct.map_ring_valloc, %struct.map_ring_valloc* %0, i32 0, i32 0, !dbg !5555
  %1 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %node1, align 8, !dbg !5555
  store %struct.xenbus_map_node* %1, %struct.xenbus_map_node** %node, align 8, !dbg !5553
  call void @llvm.dbg.declare(metadata %struct.vm_struct** %area, metadata !5556, metadata !DIExpression()), !dbg !5557
  call void @llvm.dbg.declare(metadata i8* %leaked, metadata !5558, metadata !DIExpression()), !dbg !5559
  store i8 0, i8* %leaked, align 1, !dbg !5559
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5560, metadata !DIExpression()), !dbg !5561
  store i32 -12, i32* %err, align 4, !dbg !5561
  %2 = load i32, i32* %nr_grefs.addr, align 4, !dbg !5562
  %conv = zext i32 %2 to i64, !dbg !5562
  %mul = mul i64 4096, %conv, !dbg !5563
  %call = call %struct.vm_struct* @get_vm_area(i64 %mul, i64 1) #11, !dbg !5564
  store %struct.vm_struct* %call, %struct.vm_struct** %area, align 8, !dbg !5565
  %3 = load %struct.vm_struct*, %struct.vm_struct** %area, align 8, !dbg !5566
  %tobool = icmp ne %struct.vm_struct* %3, null, !dbg !5566
  br i1 %tobool, label %if.end, label %if.then, !dbg !5568

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !5569
  br label %return, !dbg !5569

if.end:                                           ; preds = %entry
  %4 = load %struct.vm_struct*, %struct.vm_struct** %area, align 8, !dbg !5570
  %addr = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %4, i32 0, i32 1, !dbg !5572
  %5 = load i8*, i8** %addr, align 8, !dbg !5572
  %6 = ptrtoint i8* %5 to i64, !dbg !5573
  %7 = load i32, i32* %nr_grefs.addr, align 4, !dbg !5574
  %conv2 = zext i32 %7 to i64, !dbg !5574
  %mul3 = mul i64 4096, %conv2, !dbg !5575
  %8 = load %struct.map_ring_valloc*, %struct.map_ring_valloc** %info.addr, align 8, !dbg !5576
  %9 = bitcast %struct.map_ring_valloc* %8 to i8*, !dbg !5576
  %call4 = call i32 @apply_to_page_range(%struct.mm_struct* @init_mm, i64 %6, i64 %mul3, i32 (%struct.pte_t*, i64, i8*)* @map_ring_apply, i8* %9) #11, !dbg !5577
  %tobool5 = icmp ne i32 %call4, 0, !dbg !5577
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !5578

if.then6:                                         ; preds = %if.end
  br label %failed, !dbg !5579

if.end7:                                          ; preds = %if.end
  %10 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !5580
  %11 = load i32*, i32** %gnt_refs.addr, align 8, !dbg !5581
  %12 = load i32, i32* %nr_grefs.addr, align 4, !dbg !5582
  %13 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %node, align 8, !dbg !5583
  %handles = getelementptr inbounds %struct.xenbus_map_node, %struct.xenbus_map_node* %13, i32 0, i32 2, !dbg !5584
  %arraydecay = getelementptr inbounds [16 x i32], [16 x i32]* %handles, i64 0, i64 0, !dbg !5583
  %14 = load %struct.map_ring_valloc*, %struct.map_ring_valloc** %info.addr, align 8, !dbg !5585
  %call8 = call i32 @__xenbus_map_ring(%struct.xenbus_device* %10, i32* %11, i32 %12, i32* %arraydecay, %struct.map_ring_valloc* %14, i32 18, i8* %leaked) #11, !dbg !5586
  store i32 %call8, i32* %err, align 4, !dbg !5587
  %15 = load i32, i32* %err, align 4, !dbg !5588
  %tobool9 = icmp ne i32 %15, 0, !dbg !5588
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !5590

if.then10:                                        ; preds = %if.end7
  br label %failed, !dbg !5591

if.end11:                                         ; preds = %if.end7
  %16 = load i32, i32* %nr_grefs.addr, align 4, !dbg !5592
  %17 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %node, align 8, !dbg !5593
  %nr_handles = getelementptr inbounds %struct.xenbus_map_node, %struct.xenbus_map_node* %17, i32 0, i32 3, !dbg !5594
  store i32 %16, i32* %nr_handles, align 8, !dbg !5595
  %18 = load %struct.vm_struct*, %struct.vm_struct** %area, align 8, !dbg !5596
  %19 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %node, align 8, !dbg !5597
  %20 = getelementptr inbounds %struct.xenbus_map_node, %struct.xenbus_map_node* %19, i32 0, i32 1, !dbg !5598
  %pv = bitcast %union.anon.72* %20 to %struct.anon.73*, !dbg !5598
  %area12 = getelementptr inbounds %struct.anon.73, %struct.anon.73* %pv, i32 0, i32 0, !dbg !5599
  store %struct.vm_struct* %18, %struct.vm_struct** %area12, align 8, !dbg !5600
  store %struct.spinlock* @xenbus_valloc_lock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !5601, !srcloc !5603
  %21 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5604
  %22 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %21, i32 0, i32 0, !dbg !5604
  %rlock.i = bitcast %union.anon.3* %22 to %struct.raw_spinlock*, !dbg !5604
  %23 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %node, align 8, !dbg !5606
  %next = getelementptr inbounds %struct.xenbus_map_node, %struct.xenbus_map_node* %23, i32 0, i32 0, !dbg !5607
  call void @list_add(%struct.list_head* %next, %struct.list_head* @xenbus_valloc_pages) #11, !dbg !5608
  store %struct.spinlock* @xenbus_valloc_lock, %struct.spinlock** %lock.addr.i19, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !5609, !srcloc !5611
  %24 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i19, align 8, !dbg !5612
  %25 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %24, i32 0, i32 0, !dbg !5612
  %rlock.i20 = bitcast %union.anon.3* %25 to %struct.raw_spinlock*, !dbg !5612
  %26 = load %struct.vm_struct*, %struct.vm_struct** %area, align 8, !dbg !5614
  %addr13 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %26, i32 0, i32 1, !dbg !5615
  %27 = load i8*, i8** %addr13, align 8, !dbg !5615
  %28 = load i8**, i8*** %vaddr.addr, align 8, !dbg !5616
  store i8* %27, i8** %28, align 8, !dbg !5617
  %29 = load %struct.map_ring_valloc*, %struct.map_ring_valloc** %info.addr, align 8, !dbg !5618
  %node14 = getelementptr inbounds %struct.map_ring_valloc, %struct.map_ring_valloc* %29, i32 0, i32 0, !dbg !5619
  store %struct.xenbus_map_node* null, %struct.xenbus_map_node** %node14, align 8, !dbg !5620
  store i32 0, i32* %retval, align 4, !dbg !5621
  br label %return, !dbg !5621

failed:                                           ; preds = %if.then10, %if.then6
  call void @llvm.dbg.label(metadata !5622), !dbg !5623
  %30 = load i8, i8* %leaked, align 1, !dbg !5624
  %tobool15 = trunc i8 %30 to i1, !dbg !5624
  br i1 %tobool15, label %if.else, label %if.then16, !dbg !5626

if.then16:                                        ; preds = %failed
  %31 = load %struct.vm_struct*, %struct.vm_struct** %area, align 8, !dbg !5627
  call void @free_vm_area(%struct.vm_struct* %31) #11, !dbg !5628
  br label %if.end18, !dbg !5628

if.else:                                          ; preds = %failed
  %32 = load %struct.vm_struct*, %struct.vm_struct** %area, align 8, !dbg !5629
  %33 = load i32, i32* %nr_grefs.addr, align 4, !dbg !5629
  %call17 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.25, i64 0, i64 0), %struct.vm_struct* %32, i32 %33) #14, !dbg !5629
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then16
  %34 = load i32, i32* %err, align 4, !dbg !5630
  store i32 %34, i32* %retval, align 4, !dbg !5631
  br label %return, !dbg !5631

return:                                           ; preds = %if.end18, %if.end11, %if.then
  %35 = load i32, i32* %retval, align 4, !dbg !5632
  ret i32 %35, !dbg !5632
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xenbus_unmap_ring_pv(%struct.xenbus_device* %dev, i8* %vaddr) #0 !dbg !5633 {
entry:
  %lock.addr.i78 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i78, metadata !5531, metadata !DIExpression()), !dbg !5634
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !5538, metadata !DIExpression()), !dbg !5636
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.xenbus_device*, align 8
  %vaddr.addr = alloca i8*, align 8
  %node = alloca %struct.xenbus_map_node*, align 8
  %unmap = alloca [16 x %struct.gnttab_unmap_grant_ref], align 16
  %level = alloca i32, align 4
  %i = alloca i32, align 4
  %leaked = alloca i8, align 1
  %err = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.xenbus_map_node*, align 8
  %__mptr3 = alloca i8*, align 8
  %tmp8 = alloca %struct.xenbus_map_node*, align 8
  %addr15 = alloca i64, align 8
  %coerce = alloca %struct.xmaddr, align 8
  store %struct.xenbus_device* %dev, %struct.xenbus_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %dev.addr, metadata !5638, metadata !DIExpression()), !dbg !5639
  store i8* %vaddr, i8** %vaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %vaddr.addr, metadata !5640, metadata !DIExpression()), !dbg !5641
  call void @llvm.dbg.declare(metadata %struct.xenbus_map_node** %node, metadata !5642, metadata !DIExpression()), !dbg !5643
  call void @llvm.dbg.declare(metadata [16 x %struct.gnttab_unmap_grant_ref]* %unmap, metadata !5644, metadata !DIExpression()), !dbg !5645
  call void @llvm.dbg.declare(metadata i32* %level, metadata !5646, metadata !DIExpression()), !dbg !5647
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5648, metadata !DIExpression()), !dbg !5649
  call void @llvm.dbg.declare(metadata i8* %leaked, metadata !5650, metadata !DIExpression()), !dbg !5651
  store i8 0, i8* %leaked, align 1, !dbg !5651
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5652, metadata !DIExpression()), !dbg !5653
  store %struct.spinlock* @xenbus_valloc_lock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !5654, !srcloc !5603
  %0 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5655
  %1 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %0, i32 0, i32 0, !dbg !5655
  %rlock.i = bitcast %union.anon.3* %1 to %struct.raw_spinlock*, !dbg !5655
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5656, metadata !DIExpression()), !dbg !5659
  %2 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @xenbus_valloc_pages, i32 0, i32 0), align 8, !dbg !5659
  %3 = bitcast %struct.list_head* %2 to i8*, !dbg !5659
  store i8* %3, i8** %__mptr, align 8, !dbg !5659
  br label %do.body, !dbg !5659

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5660

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !5659
  %add.ptr = getelementptr i8, i8* %4, i64 0, !dbg !5659
  %5 = bitcast i8* %add.ptr to %struct.xenbus_map_node*, !dbg !5659
  store %struct.xenbus_map_node* %5, %struct.xenbus_map_node** %tmp, align 8, !dbg !5660
  %6 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %tmp, align 8, !dbg !5659
  store %struct.xenbus_map_node* %6, %struct.xenbus_map_node** %node, align 8, !dbg !5662
  br label %for.cond, !dbg !5662

for.cond:                                         ; preds = %do.end7, %do.end
  %7 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %node, align 8, !dbg !5663
  %next = getelementptr inbounds %struct.xenbus_map_node, %struct.xenbus_map_node* %7, i32 0, i32 0, !dbg !5663
  %cmp = icmp eq %struct.list_head* %next, @xenbus_valloc_pages, !dbg !5663
  %lnot = xor i1 %cmp, true, !dbg !5663
  br i1 %lnot, label %for.body, label %for.end, !dbg !5662

for.body:                                         ; preds = %for.cond
  %8 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %node, align 8, !dbg !5665
  %9 = getelementptr inbounds %struct.xenbus_map_node, %struct.xenbus_map_node* %8, i32 0, i32 1, !dbg !5668
  %pv = bitcast %union.anon.72* %9 to %struct.anon.73*, !dbg !5668
  %area = getelementptr inbounds %struct.anon.73, %struct.anon.73* %pv, i32 0, i32 0, !dbg !5669
  %10 = load %struct.vm_struct*, %struct.vm_struct** %area, align 8, !dbg !5669
  %addr = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %10, i32 0, i32 1, !dbg !5670
  %11 = load i8*, i8** %addr, align 8, !dbg !5670
  %12 = load i8*, i8** %vaddr.addr, align 8, !dbg !5671
  %cmp1 = icmp eq i8* %11, %12, !dbg !5672
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5673

if.then:                                          ; preds = %for.body
  %13 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %node, align 8, !dbg !5674
  %next2 = getelementptr inbounds %struct.xenbus_map_node, %struct.xenbus_map_node* %13, i32 0, i32 0, !dbg !5676
  call void @list_del(%struct.list_head* %next2) #11, !dbg !5677
  br label %found, !dbg !5678

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5679

for.inc:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr3, metadata !5680, metadata !DIExpression()), !dbg !5682
  %14 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %node, align 8, !dbg !5682
  %next4 = getelementptr inbounds %struct.xenbus_map_node, %struct.xenbus_map_node* %14, i32 0, i32 0, !dbg !5682
  %next5 = getelementptr inbounds %struct.list_head, %struct.list_head* %next4, i32 0, i32 0, !dbg !5682
  %15 = load %struct.list_head*, %struct.list_head** %next5, align 8, !dbg !5682
  %16 = bitcast %struct.list_head* %15 to i8*, !dbg !5682
  store i8* %16, i8** %__mptr3, align 8, !dbg !5682
  br label %do.body6, !dbg !5682

do.body6:                                         ; preds = %for.inc
  br label %do.end7, !dbg !5683

do.end7:                                          ; preds = %do.body6
  %17 = load i8*, i8** %__mptr3, align 8, !dbg !5682
  %add.ptr9 = getelementptr i8, i8* %17, i64 0, !dbg !5682
  %18 = bitcast i8* %add.ptr9 to %struct.xenbus_map_node*, !dbg !5682
  store %struct.xenbus_map_node* %18, %struct.xenbus_map_node** %tmp8, align 8, !dbg !5683
  %19 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %tmp8, align 8, !dbg !5682
  store %struct.xenbus_map_node* %19, %struct.xenbus_map_node** %node, align 8, !dbg !5663
  br label %for.cond, !dbg !5663, !llvm.loop !5685

for.end:                                          ; preds = %for.cond
  store %struct.xenbus_map_node* null, %struct.xenbus_map_node** %node, align 8, !dbg !5687
  br label %found, !dbg !5688

found:                                            ; preds = %for.end, %if.then
  call void @llvm.dbg.label(metadata !5689), !dbg !5690
  store %struct.spinlock* @xenbus_valloc_lock, %struct.spinlock** %lock.addr.i78, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !5691, !srcloc !5611
  %20 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i78, align 8, !dbg !5692
  %21 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %20, i32 0, i32 0, !dbg !5692
  %rlock.i79 = bitcast %union.anon.3* %21 to %struct.raw_spinlock*, !dbg !5692
  %22 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %node, align 8, !dbg !5693
  %tobool = icmp ne %struct.xenbus_map_node* %22, null, !dbg !5693
  br i1 %tobool, label %if.end11, label %if.then10, !dbg !5695

if.then10:                                        ; preds = %found
  %23 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !5696
  %24 = load i8*, i8** %vaddr.addr, align 8, !dbg !5698
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_error(%struct.xenbus_device* %23, i32 -2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.28, i64 0, i64 0), i8* %24) #11, !dbg !5699
  store i32 -5, i32* %retval, align 4, !dbg !5700
  br label %return, !dbg !5700

if.end11:                                         ; preds = %found
  store i32 0, i32* %i, align 4, !dbg !5701
  br label %for.cond12, !dbg !5703

for.cond12:                                       ; preds = %for.inc25, %if.end11
  %25 = load i32, i32* %i, align 4, !dbg !5704
  %26 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %node, align 8, !dbg !5706
  %nr_handles = getelementptr inbounds %struct.xenbus_map_node, %struct.xenbus_map_node* %26, i32 0, i32 3, !dbg !5707
  %27 = load i32, i32* %nr_handles, align 8, !dbg !5707
  %cmp13 = icmp ult i32 %25, %27, !dbg !5708
  br i1 %cmp13, label %for.body14, label %for.end26, !dbg !5709

for.body14:                                       ; preds = %for.cond12
  call void @llvm.dbg.declare(metadata i64* %addr15, metadata !5710, metadata !DIExpression()), !dbg !5712
  %28 = load i32, i32* %i, align 4, !dbg !5713
  %idxprom = sext i32 %28 to i64, !dbg !5714
  %arrayidx = getelementptr [16 x %struct.gnttab_unmap_grant_ref], [16 x %struct.gnttab_unmap_grant_ref]* %unmap, i64 0, i64 %idxprom, !dbg !5714
  %29 = bitcast %struct.gnttab_unmap_grant_ref* %arrayidx to i8*, !dbg !5715
  call void @llvm.memset.p0i8.i64(i8* align 8 %29, i8 0, i64 24, i1 false), !dbg !5715
  %30 = load i8*, i8** %vaddr.addr, align 8, !dbg !5716
  %31 = ptrtoint i8* %30 to i64, !dbg !5717
  %32 = load i32, i32* %i, align 4, !dbg !5718
  %conv = sext i32 %32 to i64, !dbg !5718
  %mul = mul i64 4096, %conv, !dbg !5719
  %add = add i64 %31, %mul, !dbg !5720
  store i64 %add, i64* %addr15, align 8, !dbg !5721
  %33 = load i64, i64* %addr15, align 8, !dbg !5722
  %call = call %struct.pte_t* @lookup_address(i64 %33, i32* %level) #11, !dbg !5723
  %34 = bitcast %struct.pte_t* %call to i8*, !dbg !5723
  %call16 = call i64 @arbitrary_virt_to_machine(i8* %34) #11, !dbg !5724
  %coerce.dive = getelementptr inbounds %struct.xmaddr, %struct.xmaddr* %coerce, i32 0, i32 0, !dbg !5724
  store i64 %call16, i64* %coerce.dive, align 8, !dbg !5724
  %maddr = getelementptr inbounds %struct.xmaddr, %struct.xmaddr* %coerce, i32 0, i32 0, !dbg !5725
  %35 = load i64, i64* %maddr, align 8, !dbg !5725
  %36 = load i32, i32* %i, align 4, !dbg !5726
  %idxprom17 = sext i32 %36 to i64, !dbg !5727
  %arrayidx18 = getelementptr [16 x %struct.gnttab_unmap_grant_ref], [16 x %struct.gnttab_unmap_grant_ref]* %unmap, i64 0, i64 %idxprom17, !dbg !5727
  %host_addr = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %arrayidx18, i32 0, i32 0, !dbg !5728
  store i64 %35, i64* %host_addr, align 8, !dbg !5729
  %37 = load i32, i32* %i, align 4, !dbg !5730
  %idxprom19 = sext i32 %37 to i64, !dbg !5731
  %arrayidx20 = getelementptr [16 x %struct.gnttab_unmap_grant_ref], [16 x %struct.gnttab_unmap_grant_ref]* %unmap, i64 0, i64 %idxprom19, !dbg !5731
  %dev_bus_addr = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %arrayidx20, i32 0, i32 1, !dbg !5732
  store i64 0, i64* %dev_bus_addr, align 8, !dbg !5733
  %38 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %node, align 8, !dbg !5734
  %handles = getelementptr inbounds %struct.xenbus_map_node, %struct.xenbus_map_node* %38, i32 0, i32 2, !dbg !5735
  %39 = load i32, i32* %i, align 4, !dbg !5736
  %idxprom21 = sext i32 %39 to i64, !dbg !5734
  %arrayidx22 = getelementptr [16 x i32], [16 x i32]* %handles, i64 0, i64 %idxprom21, !dbg !5734
  %40 = load i32, i32* %arrayidx22, align 4, !dbg !5734
  %41 = load i32, i32* %i, align 4, !dbg !5737
  %idxprom23 = sext i32 %41 to i64, !dbg !5738
  %arrayidx24 = getelementptr [16 x %struct.gnttab_unmap_grant_ref], [16 x %struct.gnttab_unmap_grant_ref]* %unmap, i64 0, i64 %idxprom23, !dbg !5738
  %handle = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %arrayidx24, i32 0, i32 2, !dbg !5739
  store i32 %40, i32* %handle, align 8, !dbg !5740
  br label %for.inc25, !dbg !5741

for.inc25:                                        ; preds = %for.body14
  %42 = load i32, i32* %i, align 4, !dbg !5742
  %inc = add i32 %42, 1, !dbg !5742
  store i32 %inc, i32* %i, align 4, !dbg !5742
  br label %for.cond12, !dbg !5743, !llvm.loop !5744

for.end26:                                        ; preds = %for.cond12
  %arraydecay = getelementptr inbounds [16 x %struct.gnttab_unmap_grant_ref], [16 x %struct.gnttab_unmap_grant_ref]* %unmap, i64 0, i64 0, !dbg !5746
  %43 = bitcast %struct.gnttab_unmap_grant_ref* %arraydecay to i8*, !dbg !5746
  %44 = load i32, i32* %i, align 4, !dbg !5748
  %call27 = call i32 @HYPERVISOR_grant_table_op(i32 1, i8* %43, i32 %44) #11, !dbg !5749
  %tobool28 = icmp ne i32 %call27, 0, !dbg !5749
  br i1 %tobool28, label %if.then29, label %if.end38, !dbg !5750

if.then29:                                        ; preds = %for.end26
  br label %do.body30, !dbg !5751

do.body30:                                        ; preds = %if.then29
  br label %do.body31, !dbg !5752

do.body31:                                        ; preds = %do.body30
  br label %do.end32, !dbg !5754

do.end32:                                         ; preds = %do.body31
  br label %do.body33, !dbg !5752

do.body33:                                        ; preds = %do.end32
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.27, i64 0, i64 0), i32 776, i32 0, i64 12) #3, !dbg !5756, !srcloc !5758
  br label %do.end34, !dbg !5756

do.end34:                                         ; preds = %do.body33
  br label %do.body35, !dbg !5752

do.body35:                                        ; preds = %do.end34
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 240) #3, !dbg !5759, !srcloc !5762
  unreachable, !dbg !5763

do.end36:                                         ; No predecessors!
  br label %do.end37, !dbg !5752

do.end37:                                         ; preds = %do.end36
  br label %if.end38, !dbg !5752

if.end38:                                         ; preds = %do.end37, %for.end26
  store i32 0, i32* %err, align 4, !dbg !5764
  store i8 0, i8* %leaked, align 1, !dbg !5765
  store i32 0, i32* %i, align 4, !dbg !5766
  br label %for.cond39, !dbg !5768

for.cond39:                                       ; preds = %for.inc66, %if.end38
  %45 = load i32, i32* %i, align 4, !dbg !5769
  %46 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %node, align 8, !dbg !5771
  %nr_handles40 = getelementptr inbounds %struct.xenbus_map_node, %struct.xenbus_map_node* %46, i32 0, i32 3, !dbg !5772
  %47 = load i32, i32* %nr_handles40, align 8, !dbg !5772
  %cmp41 = icmp ult i32 %45, %47, !dbg !5773
  br i1 %cmp41, label %for.body43, label %for.end68, !dbg !5774

for.body43:                                       ; preds = %for.cond39
  %48 = load i32, i32* %i, align 4, !dbg !5775
  %idxprom44 = sext i32 %48 to i64, !dbg !5778
  %arrayidx45 = getelementptr [16 x %struct.gnttab_unmap_grant_ref], [16 x %struct.gnttab_unmap_grant_ref]* %unmap, i64 0, i64 %idxprom44, !dbg !5778
  %status = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %arrayidx45, i32 0, i32 3, !dbg !5779
  %49 = load i16, i16* %status, align 4, !dbg !5779
  %conv46 = sext i16 %49 to i32, !dbg !5778
  %cmp47 = icmp ne i32 %conv46, 0, !dbg !5780
  br i1 %cmp47, label %if.then49, label %if.end65, !dbg !5781

if.then49:                                        ; preds = %for.body43
  store i8 1, i8* %leaked, align 1, !dbg !5782
  %50 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !5784
  %51 = load i32, i32* %i, align 4, !dbg !5785
  %idxprom50 = sext i32 %51 to i64, !dbg !5786
  %arrayidx51 = getelementptr [16 x %struct.gnttab_unmap_grant_ref], [16 x %struct.gnttab_unmap_grant_ref]* %unmap, i64 0, i64 %idxprom50, !dbg !5786
  %status52 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %arrayidx51, i32 0, i32 3, !dbg !5787
  %52 = load i16, i16* %status52, align 4, !dbg !5787
  %conv53 = sext i16 %52 to i32, !dbg !5786
  %53 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %node, align 8, !dbg !5788
  %handles54 = getelementptr inbounds %struct.xenbus_map_node, %struct.xenbus_map_node* %53, i32 0, i32 2, !dbg !5789
  %54 = load i32, i32* %i, align 4, !dbg !5790
  %idxprom55 = sext i32 %54 to i64, !dbg !5788
  %arrayidx56 = getelementptr [16 x i32], [16 x i32]* %handles54, i64 0, i64 %idxprom55, !dbg !5788
  %55 = load i32, i32* %arrayidx56, align 4, !dbg !5788
  %56 = load i32, i32* %i, align 4, !dbg !5791
  %idxprom57 = sext i32 %56 to i64, !dbg !5792
  %arrayidx58 = getelementptr [16 x %struct.gnttab_unmap_grant_ref], [16 x %struct.gnttab_unmap_grant_ref]* %unmap, i64 0, i64 %idxprom57, !dbg !5792
  %status59 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %arrayidx58, i32 0, i32 3, !dbg !5793
  %57 = load i16, i16* %status59, align 4, !dbg !5793
  %conv60 = sext i16 %57 to i32, !dbg !5792
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_error(%struct.xenbus_device* %50, i32 %conv53, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.29, i64 0, i64 0), i32 %55, i32 %conv60) #11, !dbg !5794
  %58 = load i32, i32* %i, align 4, !dbg !5795
  %idxprom61 = sext i32 %58 to i64, !dbg !5796
  %arrayidx62 = getelementptr [16 x %struct.gnttab_unmap_grant_ref], [16 x %struct.gnttab_unmap_grant_ref]* %unmap, i64 0, i64 %idxprom61, !dbg !5796
  %status63 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %arrayidx62, i32 0, i32 3, !dbg !5797
  %59 = load i16, i16* %status63, align 4, !dbg !5797
  %conv64 = sext i16 %59 to i32, !dbg !5796
  store i32 %conv64, i32* %err, align 4, !dbg !5798
  br label %for.end68, !dbg !5799

if.end65:                                         ; preds = %for.body43
  br label %for.inc66, !dbg !5800

for.inc66:                                        ; preds = %if.end65
  %60 = load i32, i32* %i, align 4, !dbg !5801
  %inc67 = add i32 %60, 1, !dbg !5801
  store i32 %inc67, i32* %i, align 4, !dbg !5801
  br label %for.cond39, !dbg !5802, !llvm.loop !5803

for.end68:                                        ; preds = %if.then49, %for.cond39
  %61 = load i8, i8* %leaked, align 1, !dbg !5805
  %tobool69 = trunc i8 %61 to i1, !dbg !5805
  br i1 %tobool69, label %if.else, label %if.then70, !dbg !5807

if.then70:                                        ; preds = %for.end68
  %62 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %node, align 8, !dbg !5808
  %63 = getelementptr inbounds %struct.xenbus_map_node, %struct.xenbus_map_node* %62, i32 0, i32 1, !dbg !5809
  %pv71 = bitcast %union.anon.72* %63 to %struct.anon.73*, !dbg !5809
  %area72 = getelementptr inbounds %struct.anon.73, %struct.anon.73* %pv71, i32 0, i32 0, !dbg !5810
  %64 = load %struct.vm_struct*, %struct.vm_struct** %area72, align 8, !dbg !5810
  call void @free_vm_area(%struct.vm_struct* %64) #11, !dbg !5811
  br label %if.end77, !dbg !5811

if.else:                                          ; preds = %for.end68
  %65 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %node, align 8, !dbg !5812
  %66 = getelementptr inbounds %struct.xenbus_map_node, %struct.xenbus_map_node* %65, i32 0, i32 1, !dbg !5812
  %pv73 = bitcast %union.anon.72* %66 to %struct.anon.73*, !dbg !5812
  %area74 = getelementptr inbounds %struct.anon.73, %struct.anon.73* %pv73, i32 0, i32 0, !dbg !5812
  %67 = load %struct.vm_struct*, %struct.vm_struct** %area74, align 8, !dbg !5812
  %68 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %node, align 8, !dbg !5812
  %nr_handles75 = getelementptr inbounds %struct.xenbus_map_node, %struct.xenbus_map_node* %68, i32 0, i32 3, !dbg !5812
  %69 = load i32, i32* %nr_handles75, align 8, !dbg !5812
  %call76 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.25, i64 0, i64 0), %struct.vm_struct* %67, i32 %69) #14, !dbg !5812
  br label %if.end77

if.end77:                                         ; preds = %if.else, %if.then70
  %70 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %node, align 8, !dbg !5813
  %71 = bitcast %struct.xenbus_map_node* %70 to i8*, !dbg !5813
  call void @kfree(i8* %71) #11, !dbg !5814
  %72 = load i32, i32* %err, align 4, !dbg !5815
  store i32 %72, i32* %retval, align 4, !dbg !5816
  br label %return, !dbg !5816

return:                                           ; preds = %if.end77, %if.then10
  %73 = load i32, i32* %retval, align 4, !dbg !5817
  ret i32 %73, !dbg !5817
}

; Function Attrs: noredzone
declare dso_local %struct.vm_struct* @get_vm_area(i64, i64) #2

; Function Attrs: noredzone
declare dso_local i32 @apply_to_page_range(%struct.mm_struct*, i64, i64, i32 (%struct.pte_t*, i64, i8*)*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @map_ring_apply(%struct.pte_t* %pte, i64 %addr, i8* %data) #0 !dbg !5818 {
entry:
  %pte.addr = alloca %struct.pte_t*, align 8
  %addr.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %info = alloca %struct.map_ring_valloc*, align 8
  %coerce = alloca %struct.xmaddr, align 8
  store %struct.pte_t* %pte, %struct.pte_t** %pte.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pte_t** %pte.addr, metadata !5821, metadata !DIExpression()), !dbg !5822
  store i64 %addr, i64* %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %addr.addr, metadata !5823, metadata !DIExpression()), !dbg !5824
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5825, metadata !DIExpression()), !dbg !5826
  call void @llvm.dbg.declare(metadata %struct.map_ring_valloc** %info, metadata !5827, metadata !DIExpression()), !dbg !5828
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5829
  %1 = bitcast i8* %0 to %struct.map_ring_valloc*, !dbg !5829
  store %struct.map_ring_valloc* %1, %struct.map_ring_valloc** %info, align 8, !dbg !5828
  %2 = load %struct.pte_t*, %struct.pte_t** %pte.addr, align 8, !dbg !5830
  %3 = bitcast %struct.pte_t* %2 to i8*, !dbg !5830
  %call = call i64 @arbitrary_virt_to_machine(i8* %3) #11, !dbg !5831
  %coerce.dive = getelementptr inbounds %struct.xmaddr, %struct.xmaddr* %coerce, i32 0, i32 0, !dbg !5831
  store i64 %call, i64* %coerce.dive, align 8, !dbg !5831
  %maddr = getelementptr inbounds %struct.xmaddr, %struct.xmaddr* %coerce, i32 0, i32 0, !dbg !5832
  %4 = load i64, i64* %maddr, align 8, !dbg !5832
  %5 = load %struct.map_ring_valloc*, %struct.map_ring_valloc** %info, align 8, !dbg !5833
  %phys_addrs = getelementptr inbounds %struct.map_ring_valloc, %struct.map_ring_valloc* %5, i32 0, i32 2, !dbg !5834
  %6 = load %struct.map_ring_valloc*, %struct.map_ring_valloc** %info, align 8, !dbg !5835
  %idx = getelementptr inbounds %struct.map_ring_valloc, %struct.map_ring_valloc* %6, i32 0, i32 5, !dbg !5836
  %7 = load i32, i32* %idx, align 8, !dbg !5837
  %inc = add i32 %7, 1, !dbg !5837
  store i32 %inc, i32* %idx, align 8, !dbg !5837
  %idxprom = zext i32 %7 to i64, !dbg !5833
  %arrayidx = getelementptr [16 x i64], [16 x i64]* %phys_addrs, i64 0, i64 %idxprom, !dbg !5833
  store i64 %4, i64* %arrayidx, align 8, !dbg !5838
  ret i32 0, !dbg !5839
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__xenbus_map_ring(%struct.xenbus_device* %dev, i32* %gnt_refs, i32 %nr_grefs, i32* %handles, %struct.map_ring_valloc* %info, i32 %flags, i8* %leaked) #0 !dbg !5840 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.xenbus_device*, align 8
  %gnt_refs.addr = alloca i32*, align 8
  %nr_grefs.addr = alloca i32, align 4
  %handles.addr = alloca i32*, align 8
  %info.addr = alloca %struct.map_ring_valloc*, align 8
  %flags.addr = alloca i32, align 4
  %leaked.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.xenbus_device* %dev, %struct.xenbus_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %dev.addr, metadata !5844, metadata !DIExpression()), !dbg !5845
  store i32* %gnt_refs, i32** %gnt_refs.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %gnt_refs.addr, metadata !5846, metadata !DIExpression()), !dbg !5847
  store i32 %nr_grefs, i32* %nr_grefs.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nr_grefs.addr, metadata !5848, metadata !DIExpression()), !dbg !5849
  store i32* %handles, i32** %handles.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %handles.addr, metadata !5850, metadata !DIExpression()), !dbg !5851
  store %struct.map_ring_valloc* %info, %struct.map_ring_valloc** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.map_ring_valloc** %info.addr, metadata !5852, metadata !DIExpression()), !dbg !5853
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5854, metadata !DIExpression()), !dbg !5855
  store i8* %leaked, i8** %leaked.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %leaked.addr, metadata !5856, metadata !DIExpression()), !dbg !5857
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5858, metadata !DIExpression()), !dbg !5859
  call void @llvm.dbg.declare(metadata i32* %j, metadata !5860, metadata !DIExpression()), !dbg !5861
  %0 = load i32, i32* %nr_grefs.addr, align 4, !dbg !5862
  %cmp = icmp ugt i32 %0, 16, !dbg !5864
  br i1 %cmp, label %if.then, label %if.end, !dbg !5865

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5866
  br label %return, !dbg !5866

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !5867
  br label %for.cond, !dbg !5869

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4, !dbg !5870
  %2 = load i32, i32* %nr_grefs.addr, align 4, !dbg !5872
  %cmp1 = icmp ult i32 %1, %2, !dbg !5873
  br i1 %cmp1, label %for.body, label %for.end, !dbg !5874

for.body:                                         ; preds = %for.cond
  %3 = load %struct.map_ring_valloc*, %struct.map_ring_valloc** %info.addr, align 8, !dbg !5875
  %map = getelementptr inbounds %struct.map_ring_valloc, %struct.map_ring_valloc* %3, i32 0, i32 3, !dbg !5877
  %4 = load i32, i32* %i, align 4, !dbg !5878
  %idxprom = sext i32 %4 to i64, !dbg !5875
  %arrayidx = getelementptr [16 x %struct.gnttab_map_grant_ref], [16 x %struct.gnttab_map_grant_ref]* %map, i64 0, i64 %idxprom, !dbg !5875
  %5 = load %struct.map_ring_valloc*, %struct.map_ring_valloc** %info.addr, align 8, !dbg !5879
  %phys_addrs = getelementptr inbounds %struct.map_ring_valloc, %struct.map_ring_valloc* %5, i32 0, i32 2, !dbg !5880
  %6 = load i32, i32* %i, align 4, !dbg !5881
  %idxprom2 = sext i32 %6 to i64, !dbg !5879
  %arrayidx3 = getelementptr [16 x i64], [16 x i64]* %phys_addrs, i64 0, i64 %idxprom2, !dbg !5879
  %7 = load i64, i64* %arrayidx3, align 8, !dbg !5879
  %8 = load i32, i32* %flags.addr, align 4, !dbg !5882
  %9 = load i32*, i32** %gnt_refs.addr, align 8, !dbg !5883
  %10 = load i32, i32* %i, align 4, !dbg !5884
  %idxprom4 = sext i32 %10 to i64, !dbg !5883
  %arrayidx5 = getelementptr i32, i32* %9, i64 %idxprom4, !dbg !5883
  %11 = load i32, i32* %arrayidx5, align 4, !dbg !5883
  %12 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !5885
  %otherend_id = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %12, i32 0, i32 3, !dbg !5886
  %13 = load i32, i32* %otherend_id, align 8, !dbg !5886
  %conv = trunc i32 %13 to i16, !dbg !5885
  call void @gnttab_set_map_op(%struct.gnttab_map_grant_ref* %arrayidx, i64 %7, i32 %8, i32 %11, i16 zeroext %conv) #11, !dbg !5887
  %14 = load i32*, i32** %handles.addr, align 8, !dbg !5888
  %15 = load i32, i32* %i, align 4, !dbg !5889
  %idxprom6 = sext i32 %15 to i64, !dbg !5888
  %arrayidx7 = getelementptr i32, i32* %14, i64 %idxprom6, !dbg !5888
  store i32 -1, i32* %arrayidx7, align 4, !dbg !5890
  br label %for.inc, !dbg !5891

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !dbg !5892
  %inc = add i32 %16, 1, !dbg !5892
  store i32 %inc, i32* %i, align 4, !dbg !5892
  br label %for.cond, !dbg !5893, !llvm.loop !5894

for.end:                                          ; preds = %for.cond
  %17 = load %struct.map_ring_valloc*, %struct.map_ring_valloc** %info.addr, align 8, !dbg !5896
  %map8 = getelementptr inbounds %struct.map_ring_valloc, %struct.map_ring_valloc* %17, i32 0, i32 3, !dbg !5897
  %arraydecay = getelementptr inbounds [16 x %struct.gnttab_map_grant_ref], [16 x %struct.gnttab_map_grant_ref]* %map8, i64 0, i64 0, !dbg !5896
  %18 = load i32, i32* %i, align 4, !dbg !5898
  call void @gnttab_batch_map(%struct.gnttab_map_grant_ref* %arraydecay, i32 %18) #11, !dbg !5899
  store i32 0, i32* %i, align 4, !dbg !5900
  br label %for.cond9, !dbg !5902

for.cond9:                                        ; preds = %for.inc34, %for.end
  %19 = load i32, i32* %i, align 4, !dbg !5903
  %20 = load i32, i32* %nr_grefs.addr, align 4, !dbg !5905
  %cmp10 = icmp ult i32 %19, %20, !dbg !5906
  br i1 %cmp10, label %for.body12, label %for.end36, !dbg !5907

for.body12:                                       ; preds = %for.cond9
  %21 = load %struct.map_ring_valloc*, %struct.map_ring_valloc** %info.addr, align 8, !dbg !5908
  %map13 = getelementptr inbounds %struct.map_ring_valloc, %struct.map_ring_valloc* %21, i32 0, i32 3, !dbg !5911
  %22 = load i32, i32* %i, align 4, !dbg !5912
  %idxprom14 = sext i32 %22 to i64, !dbg !5908
  %arrayidx15 = getelementptr [16 x %struct.gnttab_map_grant_ref], [16 x %struct.gnttab_map_grant_ref]* %map13, i64 0, i64 %idxprom14, !dbg !5908
  %status = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %arrayidx15, i32 0, i32 4, !dbg !5913
  %23 = load i16, i16* %status, align 2, !dbg !5913
  %conv16 = sext i16 %23 to i32, !dbg !5908
  %cmp17 = icmp ne i32 %conv16, 0, !dbg !5914
  br i1 %cmp17, label %if.then19, label %if.else, !dbg !5915

if.then19:                                        ; preds = %for.body12
  %24 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !5916
  %25 = load %struct.map_ring_valloc*, %struct.map_ring_valloc** %info.addr, align 8, !dbg !5918
  %map20 = getelementptr inbounds %struct.map_ring_valloc, %struct.map_ring_valloc* %25, i32 0, i32 3, !dbg !5919
  %26 = load i32, i32* %i, align 4, !dbg !5920
  %idxprom21 = sext i32 %26 to i64, !dbg !5918
  %arrayidx22 = getelementptr [16 x %struct.gnttab_map_grant_ref], [16 x %struct.gnttab_map_grant_ref]* %map20, i64 0, i64 %idxprom21, !dbg !5918
  %status23 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %arrayidx22, i32 0, i32 4, !dbg !5921
  %27 = load i16, i16* %status23, align 2, !dbg !5921
  %conv24 = sext i16 %27 to i32, !dbg !5918
  %28 = load i32*, i32** %gnt_refs.addr, align 8, !dbg !5922
  %29 = load i32, i32* %i, align 4, !dbg !5923
  %idxprom25 = sext i32 %29 to i64, !dbg !5922
  %arrayidx26 = getelementptr i32, i32* %28, i64 %idxprom25, !dbg !5922
  %30 = load i32, i32* %arrayidx26, align 4, !dbg !5922
  %31 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !5924
  %otherend_id27 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %31, i32 0, i32 3, !dbg !5925
  %32 = load i32, i32* %otherend_id27, align 8, !dbg !5925
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %24, i32 %conv24, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.26, i64 0, i64 0), i32 %30, i32 %32) #11, !dbg !5926
  br label %fail, !dbg !5927

if.else:                                          ; preds = %for.body12
  %33 = load %struct.map_ring_valloc*, %struct.map_ring_valloc** %info.addr, align 8, !dbg !5928
  %map28 = getelementptr inbounds %struct.map_ring_valloc, %struct.map_ring_valloc* %33, i32 0, i32 3, !dbg !5929
  %34 = load i32, i32* %i, align 4, !dbg !5930
  %idxprom29 = sext i32 %34 to i64, !dbg !5928
  %arrayidx30 = getelementptr [16 x %struct.gnttab_map_grant_ref], [16 x %struct.gnttab_map_grant_ref]* %map28, i64 0, i64 %idxprom29, !dbg !5928
  %handle = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %arrayidx30, i32 0, i32 5, !dbg !5931
  %35 = load i32, i32* %handle, align 4, !dbg !5931
  %36 = load i32*, i32** %handles.addr, align 8, !dbg !5932
  %37 = load i32, i32* %i, align 4, !dbg !5933
  %idxprom31 = sext i32 %37 to i64, !dbg !5932
  %arrayidx32 = getelementptr i32, i32* %36, i64 %idxprom31, !dbg !5932
  store i32 %35, i32* %arrayidx32, align 4, !dbg !5934
  br label %if.end33

if.end33:                                         ; preds = %if.else
  br label %for.inc34, !dbg !5935

for.inc34:                                        ; preds = %if.end33
  %38 = load i32, i32* %i, align 4, !dbg !5936
  %inc35 = add i32 %38, 1, !dbg !5936
  store i32 %inc35, i32* %i, align 4, !dbg !5936
  br label %for.cond9, !dbg !5937, !llvm.loop !5938

for.end36:                                        ; preds = %for.cond9
  store i32 0, i32* %retval, align 4, !dbg !5940
  br label %return, !dbg !5940

fail:                                             ; preds = %if.then19
  call void @llvm.dbg.label(metadata !5941), !dbg !5942
  store i32 0, i32* %j, align 4, !dbg !5943
  store i32 0, i32* %i, align 4, !dbg !5945
  br label %for.cond37, !dbg !5946

for.cond37:                                       ; preds = %for.inc55, %fail
  %39 = load i32, i32* %i, align 4, !dbg !5947
  %40 = load i32, i32* %nr_grefs.addr, align 4, !dbg !5949
  %cmp38 = icmp ult i32 %39, %40, !dbg !5950
  br i1 %cmp38, label %for.body40, label %for.end57, !dbg !5951

for.body40:                                       ; preds = %for.cond37
  %41 = load i32*, i32** %handles.addr, align 8, !dbg !5952
  %42 = load i32, i32* %i, align 4, !dbg !5955
  %idxprom41 = sext i32 %42 to i64, !dbg !5952
  %arrayidx42 = getelementptr i32, i32* %41, i64 %idxprom41, !dbg !5952
  %43 = load i32, i32* %arrayidx42, align 4, !dbg !5952
  %cmp43 = icmp ne i32 %43, -1, !dbg !5956
  br i1 %cmp43, label %if.then45, label %if.end54, !dbg !5957

if.then45:                                        ; preds = %for.body40
  %44 = load %struct.map_ring_valloc*, %struct.map_ring_valloc** %info.addr, align 8, !dbg !5958
  %unmap = getelementptr inbounds %struct.map_ring_valloc, %struct.map_ring_valloc* %44, i32 0, i32 4, !dbg !5960
  %45 = load i32, i32* %j, align 4, !dbg !5961
  %idxprom46 = sext i32 %45 to i64, !dbg !5958
  %arrayidx47 = getelementptr [16 x %struct.gnttab_unmap_grant_ref], [16 x %struct.gnttab_unmap_grant_ref]* %unmap, i64 0, i64 %idxprom46, !dbg !5958
  %46 = load %struct.map_ring_valloc*, %struct.map_ring_valloc** %info.addr, align 8, !dbg !5962
  %phys_addrs48 = getelementptr inbounds %struct.map_ring_valloc, %struct.map_ring_valloc* %46, i32 0, i32 2, !dbg !5963
  %47 = load i32, i32* %i, align 4, !dbg !5964
  %idxprom49 = sext i32 %47 to i64, !dbg !5962
  %arrayidx50 = getelementptr [16 x i64], [16 x i64]* %phys_addrs48, i64 0, i64 %idxprom49, !dbg !5962
  %48 = load i64, i64* %arrayidx50, align 8, !dbg !5962
  %49 = load i32*, i32** %handles.addr, align 8, !dbg !5965
  %50 = load i32, i32* %i, align 4, !dbg !5966
  %idxprom51 = sext i32 %50 to i64, !dbg !5965
  %arrayidx52 = getelementptr i32, i32* %49, i64 %idxprom51, !dbg !5965
  %51 = load i32, i32* %arrayidx52, align 4, !dbg !5965
  call void @gnttab_set_unmap_op(%struct.gnttab_unmap_grant_ref* %arrayidx47, i64 %48, i32 2, i32 %51) #11, !dbg !5967
  %52 = load i32, i32* %j, align 4, !dbg !5968
  %inc53 = add i32 %52, 1, !dbg !5968
  store i32 %inc53, i32* %j, align 4, !dbg !5968
  br label %if.end54, !dbg !5969

if.end54:                                         ; preds = %if.then45, %for.body40
  br label %for.inc55, !dbg !5970

for.inc55:                                        ; preds = %if.end54
  %53 = load i32, i32* %i, align 4, !dbg !5971
  %inc56 = add i32 %53, 1, !dbg !5971
  store i32 %inc56, i32* %i, align 4, !dbg !5971
  br label %for.cond37, !dbg !5972, !llvm.loop !5973

for.end57:                                        ; preds = %for.cond37
  %54 = load %struct.map_ring_valloc*, %struct.map_ring_valloc** %info.addr, align 8, !dbg !5975
  %unmap58 = getelementptr inbounds %struct.map_ring_valloc, %struct.map_ring_valloc* %54, i32 0, i32 4, !dbg !5977
  %arraydecay59 = getelementptr inbounds [16 x %struct.gnttab_unmap_grant_ref], [16 x %struct.gnttab_unmap_grant_ref]* %unmap58, i64 0, i64 0, !dbg !5975
  %55 = bitcast %struct.gnttab_unmap_grant_ref* %arraydecay59 to i8*, !dbg !5975
  %56 = load i32, i32* %j, align 4, !dbg !5978
  %call = call i32 @HYPERVISOR_grant_table_op(i32 1, i8* %55, i32 %56) #11, !dbg !5979
  %tobool = icmp ne i32 %call, 0, !dbg !5979
  br i1 %tobool, label %if.then60, label %if.end67, !dbg !5980

if.then60:                                        ; preds = %for.end57
  br label %do.body, !dbg !5981

do.body:                                          ; preds = %if.then60
  br label %do.body61, !dbg !5982

do.body61:                                        ; preds = %do.body
  br label %do.end, !dbg !5984

do.end:                                           ; preds = %do.body61
  br label %do.body62, !dbg !5982

do.body62:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.27, i64 0, i64 0), i32 540, i32 0, i64 12) #3, !dbg !5986, !srcloc !5988
  br label %do.end63, !dbg !5986

do.end63:                                         ; preds = %do.body62
  br label %do.body64, !dbg !5982

do.body64:                                        ; preds = %do.end63
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 236) #3, !dbg !5989, !srcloc !5992
  unreachable, !dbg !5993

do.end65:                                         ; No predecessors!
  br label %do.end66, !dbg !5982

do.end66:                                         ; preds = %do.end65
  br label %if.end67, !dbg !5982

if.end67:                                         ; preds = %do.end66, %for.end57
  %57 = load i8*, i8** %leaked.addr, align 8, !dbg !5994
  store i8 0, i8* %57, align 1, !dbg !5995
  store i32 0, i32* %i, align 4, !dbg !5996
  br label %for.cond68, !dbg !5998

for.cond68:                                       ; preds = %for.inc81, %if.end67
  %58 = load i32, i32* %i, align 4, !dbg !5999
  %59 = load i32, i32* %j, align 4, !dbg !6001
  %cmp69 = icmp slt i32 %58, %59, !dbg !6002
  br i1 %cmp69, label %for.body71, label %for.end83, !dbg !6003

for.body71:                                       ; preds = %for.cond68
  %60 = load %struct.map_ring_valloc*, %struct.map_ring_valloc** %info.addr, align 8, !dbg !6004
  %unmap72 = getelementptr inbounds %struct.map_ring_valloc, %struct.map_ring_valloc* %60, i32 0, i32 4, !dbg !6007
  %61 = load i32, i32* %i, align 4, !dbg !6008
  %idxprom73 = sext i32 %61 to i64, !dbg !6004
  %arrayidx74 = getelementptr [16 x %struct.gnttab_unmap_grant_ref], [16 x %struct.gnttab_unmap_grant_ref]* %unmap72, i64 0, i64 %idxprom73, !dbg !6004
  %status75 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %arrayidx74, i32 0, i32 3, !dbg !6009
  %62 = load i16, i16* %status75, align 4, !dbg !6009
  %conv76 = sext i16 %62 to i32, !dbg !6004
  %cmp77 = icmp ne i32 %conv76, 0, !dbg !6010
  br i1 %cmp77, label %if.then79, label %if.end80, !dbg !6011

if.then79:                                        ; preds = %for.body71
  %63 = load i8*, i8** %leaked.addr, align 8, !dbg !6012
  store i8 1, i8* %63, align 1, !dbg !6014
  br label %for.end83, !dbg !6015

if.end80:                                         ; preds = %for.body71
  br label %for.inc81, !dbg !6016

for.inc81:                                        ; preds = %if.end80
  %64 = load i32, i32* %i, align 4, !dbg !6017
  %inc82 = add i32 %64, 1, !dbg !6017
  store i32 %inc82, i32* %i, align 4, !dbg !6017
  br label %for.cond68, !dbg !6018, !llvm.loop !6019

for.end83:                                        ; preds = %if.then79, %for.cond68
  store i32 -2, i32* %retval, align 4, !dbg !6021
  br label %return, !dbg !6021

return:                                           ; preds = %for.end83, %for.end36, %if.then
  %65 = load i32, i32* %retval, align 4, !dbg !6022
  ret i32 %65, !dbg !6022
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !6023 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !6027, metadata !DIExpression()), !dbg !6028
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !6029, metadata !DIExpression()), !dbg !6030
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6031
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !6032
  %2 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !6033
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 0, !dbg !6034
  %3 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !6034
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %3) #11, !dbg !6035
  ret void, !dbg !6036
}

; Function Attrs: noredzone
declare dso_local void @free_vm_area(%struct.vm_struct*) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #5

; Function Attrs: noredzone
declare dso_local i64 @arbitrary_virt_to_machine(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gnttab_set_map_op(%struct.gnttab_map_grant_ref* %map, i64 %addr, i32 %flags, i32 %ref, i16 zeroext %domid) #0 !dbg !6037 {
entry:
  %map.addr = alloca %struct.gnttab_map_grant_ref*, align 8
  %addr.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %ref.addr = alloca i32, align 4
  %domid.addr = alloca i16, align 2
  store %struct.gnttab_map_grant_ref* %map, %struct.gnttab_map_grant_ref** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gnttab_map_grant_ref** %map.addr, metadata !6042, metadata !DIExpression()), !dbg !6043
  store i64 %addr, i64* %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %addr.addr, metadata !6044, metadata !DIExpression()), !dbg !6045
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6046, metadata !DIExpression()), !dbg !6047
  store i32 %ref, i32* %ref.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ref.addr, metadata !6048, metadata !DIExpression()), !dbg !6049
  store i16 %domid, i16* %domid.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %domid.addr, metadata !6050, metadata !DIExpression()), !dbg !6051
  %0 = load i32, i32* %flags.addr, align 4, !dbg !6052
  %and = and i32 %0, 16, !dbg !6054
  %tobool = icmp ne i32 %and, 0, !dbg !6054
  br i1 %tobool, label %if.then, label %if.else, !dbg !6055

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %addr.addr, align 8, !dbg !6056
  %2 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %map.addr, align 8, !dbg !6057
  %host_addr = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %2, i32 0, i32 0, !dbg !6058
  store i64 %1, i64* %host_addr, align 8, !dbg !6059
  br label %if.end7, !dbg !6057

if.else:                                          ; preds = %entry
  %call = call i32 @xen_feature(i32 2) #11, !dbg !6060
  %tobool1 = icmp ne i32 %call, 0, !dbg !6060
  br i1 %tobool1, label %if.then2, label %if.else5, !dbg !6062

if.then2:                                         ; preds = %if.else
  %3 = load i64, i64* %addr.addr, align 8, !dbg !6063
  %call3 = call i64 @__phys_addr_nodebug(i64 %3) #11, !dbg !6063
  %4 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %map.addr, align 8, !dbg !6064
  %host_addr4 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %4, i32 0, i32 0, !dbg !6065
  store i64 %call3, i64* %host_addr4, align 8, !dbg !6066
  br label %if.end, !dbg !6064

if.else5:                                         ; preds = %if.else
  %5 = load i64, i64* %addr.addr, align 8, !dbg !6067
  %6 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %map.addr, align 8, !dbg !6068
  %host_addr6 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %6, i32 0, i32 0, !dbg !6069
  store i64 %5, i64* %host_addr6, align 8, !dbg !6070
  br label %if.end

if.end:                                           ; preds = %if.else5, %if.then2
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %7 = load i32, i32* %flags.addr, align 4, !dbg !6071
  %8 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %map.addr, align 8, !dbg !6072
  %flags8 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %8, i32 0, i32 1, !dbg !6073
  store i32 %7, i32* %flags8, align 8, !dbg !6074
  %9 = load i32, i32* %ref.addr, align 4, !dbg !6075
  %10 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %map.addr, align 8, !dbg !6076
  %ref9 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %10, i32 0, i32 2, !dbg !6077
  store i32 %9, i32* %ref9, align 4, !dbg !6078
  %11 = load i16, i16* %domid.addr, align 2, !dbg !6079
  %12 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %map.addr, align 8, !dbg !6080
  %dom = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %12, i32 0, i32 3, !dbg !6081
  store i16 %11, i16* %dom, align 8, !dbg !6082
  ret void, !dbg !6083
}

; Function Attrs: noredzone
declare dso_local void @gnttab_batch_map(%struct.gnttab_map_grant_ref*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gnttab_set_unmap_op(%struct.gnttab_unmap_grant_ref* %unmap, i64 %addr, i32 %flags, i32 %handle) #0 !dbg !6084 {
entry:
  %unmap.addr = alloca %struct.gnttab_unmap_grant_ref*, align 8
  %addr.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %handle.addr = alloca i32, align 4
  store %struct.gnttab_unmap_grant_ref* %unmap, %struct.gnttab_unmap_grant_ref** %unmap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gnttab_unmap_grant_ref** %unmap.addr, metadata !6088, metadata !DIExpression()), !dbg !6089
  store i64 %addr, i64* %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %addr.addr, metadata !6090, metadata !DIExpression()), !dbg !6091
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6092, metadata !DIExpression()), !dbg !6093
  store i32 %handle, i32* %handle.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %handle.addr, metadata !6094, metadata !DIExpression()), !dbg !6095
  %0 = load i32, i32* %flags.addr, align 4, !dbg !6096
  %and = and i32 %0, 16, !dbg !6098
  %tobool = icmp ne i32 %and, 0, !dbg !6098
  br i1 %tobool, label %if.then, label %if.else, !dbg !6099

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %addr.addr, align 8, !dbg !6100
  %2 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %unmap.addr, align 8, !dbg !6101
  %host_addr = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %2, i32 0, i32 0, !dbg !6102
  store i64 %1, i64* %host_addr, align 8, !dbg !6103
  br label %if.end7, !dbg !6101

if.else:                                          ; preds = %entry
  %call = call i32 @xen_feature(i32 2) #11, !dbg !6104
  %tobool1 = icmp ne i32 %call, 0, !dbg !6104
  br i1 %tobool1, label %if.then2, label %if.else5, !dbg !6106

if.then2:                                         ; preds = %if.else
  %3 = load i64, i64* %addr.addr, align 8, !dbg !6107
  %call3 = call i64 @__phys_addr_nodebug(i64 %3) #11, !dbg !6107
  %4 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %unmap.addr, align 8, !dbg !6108
  %host_addr4 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %4, i32 0, i32 0, !dbg !6109
  store i64 %call3, i64* %host_addr4, align 8, !dbg !6110
  br label %if.end, !dbg !6108

if.else5:                                         ; preds = %if.else
  %5 = load i64, i64* %addr.addr, align 8, !dbg !6111
  %6 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %unmap.addr, align 8, !dbg !6112
  %host_addr6 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %6, i32 0, i32 0, !dbg !6113
  store i64 %5, i64* %host_addr6, align 8, !dbg !6114
  br label %if.end

if.end:                                           ; preds = %if.else5, %if.then2
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %7 = load i32, i32* %handle.addr, align 4, !dbg !6115
  %8 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %unmap.addr, align 8, !dbg !6116
  %handle8 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %8, i32 0, i32 2, !dbg !6117
  store i32 %7, i32* %handle8, align 8, !dbg !6118
  %9 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %unmap.addr, align 8, !dbg !6119
  %dev_bus_addr = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %9, i32 0, i32 1, !dbg !6120
  store i64 0, i64* %dev_bus_addr, align 8, !dbg !6121
  ret void, !dbg !6122
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @HYPERVISOR_grant_table_op(i32 %cmd, i8* %uop, i32 %count) #0 !dbg !6123 {
entry:
  %cmd.addr = alloca i32, align 4
  %uop.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %__res = alloca i64, align 8
  %__arg1 = alloca i64, align 8
  %__arg2 = alloca i64, align 8
  %__arg3 = alloca i64, align 8
  %__arg4 = alloca i64, align 8
  %__arg5 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store i32 %cmd, i32* %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cmd.addr, metadata !6126, metadata !DIExpression()), !dbg !6127
  store i8* %uop, i8** %uop.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %uop.addr, metadata !6128, metadata !DIExpression()), !dbg !6129
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !6130, metadata !DIExpression()), !dbg !6131
  call void @llvm.dbg.declare(metadata i64* %__res, metadata !6132, metadata !DIExpression()), !dbg !6134
  call void @llvm.dbg.declare(metadata i64* %__arg1, metadata !6135, metadata !DIExpression()), !dbg !6134
  %0 = load i64, i64* %__arg1, align 8, !dbg !6134
  store i64 %0, i64* %__arg1, align 8, !dbg !6134
  call void @llvm.dbg.declare(metadata i64* %__arg2, metadata !6136, metadata !DIExpression()), !dbg !6134
  %1 = load i64, i64* %__arg2, align 8, !dbg !6134
  store i64 %1, i64* %__arg2, align 8, !dbg !6134
  call void @llvm.dbg.declare(metadata i64* %__arg3, metadata !6137, metadata !DIExpression()), !dbg !6134
  %2 = load i64, i64* %__arg3, align 8, !dbg !6134
  store i64 %2, i64* %__arg3, align 8, !dbg !6134
  call void @llvm.dbg.declare(metadata i64* %__arg4, metadata !6138, metadata !DIExpression()), !dbg !6134
  %3 = load i64, i64* %__arg4, align 8, !dbg !6134
  store i64 %3, i64* %__arg4, align 8, !dbg !6134
  call void @llvm.dbg.declare(metadata i64* %__arg5, metadata !6139, metadata !DIExpression()), !dbg !6134
  %4 = load i64, i64* %__arg5, align 8, !dbg !6134
  store i64 %4, i64* %__arg5, align 8, !dbg !6134
  %5 = load i32, i32* %cmd.addr, align 4, !dbg !6134
  %conv = zext i32 %5 to i64, !dbg !6134
  store i64 %conv, i64* %__arg1, align 8, !dbg !6134
  %6 = load i8*, i8** %uop.addr, align 8, !dbg !6134
  %7 = ptrtoint i8* %6 to i64, !dbg !6134
  store i64 %7, i64* %__arg2, align 8, !dbg !6134
  %8 = load i32, i32* %count.addr, align 4, !dbg !6134
  %conv1 = zext i32 %8 to i64, !dbg !6134
  store i64 %conv1, i64* %__arg3, align 8, !dbg !6134
  %9 = call i64 @llvm.read_register.i64(metadata !4291), !dbg !6134
  %10 = load i64, i64* %__arg1, align 8, !dbg !6134
  %11 = load i64, i64* %__arg2, align 8, !dbg !6134
  %12 = load i64, i64* %__arg3, align 8, !dbg !6134
  %13 = call { i64, i64, i64, i64, i64 } asm sideeffect "call hypercall_page+${5:c}", "={rax},={rsp},={rdi},={rsi},={rdx},i,1,2,3,4,~{memory},~{r8},~{r10},~{dirflag},~{fpsr},~{flags}"(i64 640, i64 %9, i64 %10, i64 %11, i64 %12) #3, !dbg !6134, !srcloc !6140
  %asmresult = extractvalue { i64, i64, i64, i64, i64 } %13, 0, !dbg !6134
  %asmresult2 = extractvalue { i64, i64, i64, i64, i64 } %13, 1, !dbg !6134
  %asmresult3 = extractvalue { i64, i64, i64, i64, i64 } %13, 2, !dbg !6134
  %asmresult4 = extractvalue { i64, i64, i64, i64, i64 } %13, 3, !dbg !6134
  %asmresult5 = extractvalue { i64, i64, i64, i64, i64 } %13, 4, !dbg !6134
  store i64 %asmresult, i64* %__res, align 8, !dbg !6134
  call void @llvm.write_register.i64(metadata !4291, i64 %asmresult2), !dbg !6134
  store i64 %asmresult3, i64* %__arg1, align 8, !dbg !6134
  store i64 %asmresult4, i64* %__arg2, align 8, !dbg !6134
  store i64 %asmresult5, i64* %__arg3, align 8, !dbg !6134
  %14 = load i64, i64* %__res, align 8, !dbg !6134
  %conv6 = trunc i64 %14 to i32, !dbg !6134
  store i32 %conv6, i32* %tmp, align 4, !dbg !6134
  %15 = load i32, i32* %tmp, align 4, !dbg !6134
  ret i32 %15, !dbg !6141
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !6142 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !6145, metadata !DIExpression()), !dbg !6146
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !6147, metadata !DIExpression()), !dbg !6148
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !6149, metadata !DIExpression()), !dbg !6150
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6151
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6153
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6154
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #11, !dbg !6155
  br i1 %call, label %if.end, label %if.then, !dbg !6156

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !6157

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6158
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6159
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !6160
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !6161
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6162
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6163
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !6164
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !6165
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6166
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6167
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !6168
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !6169
  br label %do.body, !dbg !6170

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !6171

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !6173

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !6171

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6175
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6175
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !6175
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !6175
  br label %do.end7, !dbg !6175

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !6171

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !6177
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !6178 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !6181, metadata !DIExpression()), !dbg !6182
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !6183, metadata !DIExpression()), !dbg !6184
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !6185, metadata !DIExpression()), !dbg !6186
  ret i1 true, !dbg !6187
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !6188 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !6191, metadata !DIExpression()), !dbg !6192
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6193
  call void @__list_del_entry(%struct.list_head* %0) #11, !dbg !6194
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6195
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !6196
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !6197
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6198
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !6199
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !6200
  ret void, !dbg !6201
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: noredzone
declare dso_local %struct.pte_t* @lookup_address(i64, i32*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !6202 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !6203, metadata !DIExpression()), !dbg !6204
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6205
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #11, !dbg !6207
  br i1 %call, label %if.end, label %if.then, !dbg !6208

if.then:                                          ; preds = %entry
  br label %return, !dbg !6209

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6210
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !6211
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !6211
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6212
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !6213
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !6213
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #11, !dbg !6214
  br label %return, !dbg !6215

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6215
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !6216 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !6219, metadata !DIExpression()), !dbg !6220
  ret i1 true, !dbg !6221
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !6222 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !6223, metadata !DIExpression()), !dbg !6224
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !6225, metadata !DIExpression()), !dbg !6226
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6227
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6228
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !6229
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !6230
  br label %do.body, !dbg !6231

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6232

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6234

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6232

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6236
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6236
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !6236
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !6236
  br label %do.end5, !dbg !6236

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6232

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6238
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xenbus_map_ring_hvm(%struct.xenbus_device* %dev, %struct.map_ring_valloc* %info, i32* %gnt_ref, i32 %nr_grefs, i8** %vaddr) #0 !dbg !6239 {
entry:
  %lock.addr.i35 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i35, metadata !5531, metadata !DIExpression()), !dbg !6240
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !5538, metadata !DIExpression()), !dbg !6242
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.xenbus_device*, align 8
  %info.addr = alloca %struct.map_ring_valloc*, align 8
  %gnt_ref.addr = alloca i32*, align 8
  %nr_grefs.addr = alloca i32, align 4
  %vaddr.addr = alloca i8**, align 8
  %node = alloca %struct.xenbus_map_node*, align 8
  %err = alloca i32, align 4
  %addr = alloca i8*, align 8
  %leaked = alloca i8, align 1
  %nr_pages = alloca i32, align 4
  %.compoundliteral = alloca %struct.pgprot, align 8
  store %struct.xenbus_device* %dev, %struct.xenbus_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %dev.addr, metadata !6244, metadata !DIExpression()), !dbg !6245
  store %struct.map_ring_valloc* %info, %struct.map_ring_valloc** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.map_ring_valloc** %info.addr, metadata !6246, metadata !DIExpression()), !dbg !6247
  store i32* %gnt_ref, i32** %gnt_ref.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %gnt_ref.addr, metadata !6248, metadata !DIExpression()), !dbg !6249
  store i32 %nr_grefs, i32* %nr_grefs.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nr_grefs.addr, metadata !6250, metadata !DIExpression()), !dbg !6251
  store i8** %vaddr, i8*** %vaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %vaddr.addr, metadata !6252, metadata !DIExpression()), !dbg !6253
  call void @llvm.dbg.declare(metadata %struct.xenbus_map_node** %node, metadata !6254, metadata !DIExpression()), !dbg !6255
  %0 = load %struct.map_ring_valloc*, %struct.map_ring_valloc** %info.addr, align 8, !dbg !6256
  %node1 = getelementptr inbounds %struct.map_ring_valloc, %struct.map_ring_valloc* %0, i32 0, i32 0, !dbg !6257
  %1 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %node1, align 8, !dbg !6257
  store %struct.xenbus_map_node* %1, %struct.xenbus_map_node** %node, align 8, !dbg !6255
  call void @llvm.dbg.declare(metadata i32* %err, metadata !6258, metadata !DIExpression()), !dbg !6259
  call void @llvm.dbg.declare(metadata i8** %addr, metadata !6260, metadata !DIExpression()), !dbg !6261
  call void @llvm.dbg.declare(metadata i8* %leaked, metadata !6262, metadata !DIExpression()), !dbg !6263
  store i8 0, i8* %leaked, align 1, !dbg !6263
  call void @llvm.dbg.declare(metadata i32* %nr_pages, metadata !6264, metadata !DIExpression()), !dbg !6265
  %2 = load i32, i32* %nr_grefs.addr, align 4, !dbg !6266
  %conv = zext i32 %2 to i64, !dbg !6266
  %add = add i64 %conv, 1, !dbg !6266
  %sub = sub i64 %add, 1, !dbg !6266
  %div = udiv i64 %sub, 1, !dbg !6266
  %conv2 = trunc i64 %div to i32, !dbg !6266
  store i32 %conv2, i32* %nr_pages, align 4, !dbg !6265
  %3 = load i32, i32* %nr_pages, align 4, !dbg !6267
  %4 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %node, align 8, !dbg !6268
  %5 = getelementptr inbounds %struct.xenbus_map_node, %struct.xenbus_map_node* %4, i32 0, i32 1, !dbg !6269
  %hvm = bitcast %union.anon.72* %5 to %struct.anon.74*, !dbg !6269
  %pages = getelementptr inbounds %struct.anon.74, %struct.anon.74* %hvm, i32 0, i32 0, !dbg !6270
  %arraydecay = getelementptr inbounds [16 x %struct.page*], [16 x %struct.page*]* %pages, i64 0, i64 0, !dbg !6268
  %call = call i32 @alloc_xenballooned_pages(i32 %3, %struct.page** %arraydecay) #11, !dbg !6271
  store i32 %call, i32* %err, align 4, !dbg !6272
  %6 = load i32, i32* %err, align 4, !dbg !6273
  %tobool = icmp ne i32 %6, 0, !dbg !6273
  br i1 %tobool, label %if.then, label %if.end, !dbg !6275

if.then:                                          ; preds = %entry
  br label %out_err, !dbg !6276

if.end:                                           ; preds = %entry
  %7 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %node, align 8, !dbg !6277
  %8 = getelementptr inbounds %struct.xenbus_map_node, %struct.xenbus_map_node* %7, i32 0, i32 1, !dbg !6278
  %hvm3 = bitcast %union.anon.72* %8 to %struct.anon.74*, !dbg !6278
  %pages4 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %hvm3, i32 0, i32 0, !dbg !6279
  %arraydecay5 = getelementptr inbounds [16 x %struct.page*], [16 x %struct.page*]* %pages4, i64 0, i64 0, !dbg !6277
  %9 = load i32, i32* %nr_grefs.addr, align 4, !dbg !6280
  %10 = load %struct.map_ring_valloc*, %struct.map_ring_valloc** %info.addr, align 8, !dbg !6281
  %11 = bitcast %struct.map_ring_valloc* %10 to i8*, !dbg !6281
  call void @gnttab_foreach_grant(%struct.page** %arraydecay5, i32 %9, void (i64, i32, i32, i8*)* @xenbus_map_ring_setup_grant_hvm, i8* %11) #11, !dbg !6282
  %12 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !6283
  %13 = load i32*, i32** %gnt_ref.addr, align 8, !dbg !6284
  %14 = load i32, i32* %nr_grefs.addr, align 4, !dbg !6285
  %15 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %node, align 8, !dbg !6286
  %handles = getelementptr inbounds %struct.xenbus_map_node, %struct.xenbus_map_node* %15, i32 0, i32 2, !dbg !6287
  %arraydecay6 = getelementptr inbounds [16 x i32], [16 x i32]* %handles, i64 0, i64 0, !dbg !6286
  %16 = load %struct.map_ring_valloc*, %struct.map_ring_valloc** %info.addr, align 8, !dbg !6288
  %call7 = call i32 @__xenbus_map_ring(%struct.xenbus_device* %12, i32* %13, i32 %14, i32* %arraydecay6, %struct.map_ring_valloc* %16, i32 2, i8* %leaked) #11, !dbg !6289
  store i32 %call7, i32* %err, align 4, !dbg !6290
  %17 = load i32, i32* %nr_grefs.addr, align 4, !dbg !6291
  %18 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %node, align 8, !dbg !6292
  %nr_handles = getelementptr inbounds %struct.xenbus_map_node, %struct.xenbus_map_node* %18, i32 0, i32 3, !dbg !6293
  store i32 %17, i32* %nr_handles, align 8, !dbg !6294
  %19 = load i32, i32* %err, align 4, !dbg !6295
  %tobool8 = icmp ne i32 %19, 0, !dbg !6295
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !6297

if.then9:                                         ; preds = %if.end
  br label %out_free_ballooned_pages, !dbg !6298

if.end10:                                         ; preds = %if.end
  %20 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %node, align 8, !dbg !6299
  %21 = getelementptr inbounds %struct.xenbus_map_node, %struct.xenbus_map_node* %20, i32 0, i32 1, !dbg !6300
  %hvm11 = bitcast %union.anon.72* %21 to %struct.anon.74*, !dbg !6300
  %pages12 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %hvm11, i32 0, i32 0, !dbg !6301
  %arraydecay13 = getelementptr inbounds [16 x %struct.page*], [16 x %struct.page*]* %pages12, i64 0, i64 0, !dbg !6299
  %22 = load i32, i32* %nr_pages, align 4, !dbg !6302
  %pgprot = getelementptr inbounds %struct.pgprot, %struct.pgprot* %.compoundliteral, i32 0, i32 0, !dbg !6303
  %23 = load i64, i64* @__default_kernel_pte_mask, align 8, !dbg !6303
  %and = and i64 -9223372036854775453, %23, !dbg !6303
  store i64 %and, i64* %pgprot, align 8, !dbg !6303
  %coerce.dive = getelementptr inbounds %struct.pgprot, %struct.pgprot* %.compoundliteral, i32 0, i32 0, !dbg !6304
  %24 = load i64, i64* %coerce.dive, align 8, !dbg !6304
  %call14 = call i8* @vmap(%struct.page** %arraydecay13, i32 %22, i64 5, i64 %24) #11, !dbg !6304
  store i8* %call14, i8** %addr, align 8, !dbg !6305
  %25 = load i8*, i8** %addr, align 8, !dbg !6306
  %tobool15 = icmp ne i8* %25, null, !dbg !6306
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !6308

if.then16:                                        ; preds = %if.end10
  store i32 -12, i32* %err, align 4, !dbg !6309
  br label %out_xenbus_unmap_ring, !dbg !6311

if.end17:                                         ; preds = %if.end10
  %26 = load i8*, i8** %addr, align 8, !dbg !6312
  %27 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %node, align 8, !dbg !6313
  %28 = getelementptr inbounds %struct.xenbus_map_node, %struct.xenbus_map_node* %27, i32 0, i32 1, !dbg !6314
  %hvm18 = bitcast %union.anon.72* %28 to %struct.anon.74*, !dbg !6314
  %addr19 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %hvm18, i32 0, i32 2, !dbg !6315
  store i8* %26, i8** %addr19, align 8, !dbg !6316
  store %struct.spinlock* @xenbus_valloc_lock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !6317, !srcloc !5603
  %29 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !6318
  %30 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %29, i32 0, i32 0, !dbg !6318
  %rlock.i = bitcast %union.anon.3* %30 to %struct.raw_spinlock*, !dbg !6318
  %31 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %node, align 8, !dbg !6319
  %next = getelementptr inbounds %struct.xenbus_map_node, %struct.xenbus_map_node* %31, i32 0, i32 0, !dbg !6320
  call void @list_add(%struct.list_head* %next, %struct.list_head* @xenbus_valloc_pages) #11, !dbg !6321
  store %struct.spinlock* @xenbus_valloc_lock, %struct.spinlock** %lock.addr.i35, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !6322, !srcloc !5611
  %32 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i35, align 8, !dbg !6323
  %33 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %32, i32 0, i32 0, !dbg !6323
  %rlock.i36 = bitcast %union.anon.3* %33 to %struct.raw_spinlock*, !dbg !6323
  %34 = load i8*, i8** %addr, align 8, !dbg !6324
  %35 = load i8**, i8*** %vaddr.addr, align 8, !dbg !6325
  store i8* %34, i8** %35, align 8, !dbg !6326
  %36 = load %struct.map_ring_valloc*, %struct.map_ring_valloc** %info.addr, align 8, !dbg !6327
  %node20 = getelementptr inbounds %struct.map_ring_valloc, %struct.map_ring_valloc* %36, i32 0, i32 0, !dbg !6328
  store %struct.xenbus_map_node* null, %struct.xenbus_map_node** %node20, align 8, !dbg !6329
  store i32 0, i32* %retval, align 4, !dbg !6330
  br label %return, !dbg !6330

out_xenbus_unmap_ring:                            ; preds = %if.then16
  call void @llvm.dbg.label(metadata !6331), !dbg !6332
  %37 = load i8, i8* %leaked, align 1, !dbg !6333
  %tobool21 = trunc i8 %37 to i1, !dbg !6333
  br i1 %tobool21, label %if.else, label %if.then22, !dbg !6335

if.then22:                                        ; preds = %out_xenbus_unmap_ring
  %38 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !6336
  %39 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %node, align 8, !dbg !6337
  %handles23 = getelementptr inbounds %struct.xenbus_map_node, %struct.xenbus_map_node* %39, i32 0, i32 2, !dbg !6338
  %arraydecay24 = getelementptr inbounds [16 x i32], [16 x i32]* %handles23, i64 0, i64 0, !dbg !6337
  %40 = load i32, i32* %nr_grefs.addr, align 4, !dbg !6339
  %41 = load %struct.map_ring_valloc*, %struct.map_ring_valloc** %info.addr, align 8, !dbg !6340
  %addrs = getelementptr inbounds %struct.map_ring_valloc, %struct.map_ring_valloc* %41, i32 0, i32 1, !dbg !6341
  %arraydecay25 = getelementptr inbounds [16 x i64], [16 x i64]* %addrs, i64 0, i64 0, !dbg !6340
  %call26 = call i32 @xenbus_unmap_ring(%struct.xenbus_device* %38, i32* %arraydecay24, i32 %40, i64* %arraydecay25) #11, !dbg !6342
  br label %if.end28, !dbg !6342

if.else:                                          ; preds = %out_xenbus_unmap_ring
  %42 = load i8*, i8** %addr, align 8, !dbg !6343
  %43 = load i32, i32* %nr_pages, align 4, !dbg !6343
  %call27 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i64 0, i64 0), i8* %42, i32 %43) #14, !dbg !6343
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then22
  br label %out_free_ballooned_pages, !dbg !6333

out_free_ballooned_pages:                         ; preds = %if.end28, %if.then9
  call void @llvm.dbg.label(metadata !6344), !dbg !6345
  %44 = load i8, i8* %leaked, align 1, !dbg !6346
  %tobool29 = trunc i8 %44 to i1, !dbg !6346
  br i1 %tobool29, label %if.end34, label %if.then30, !dbg !6348

if.then30:                                        ; preds = %out_free_ballooned_pages
  %45 = load i32, i32* %nr_pages, align 4, !dbg !6349
  %46 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %node, align 8, !dbg !6350
  %47 = getelementptr inbounds %struct.xenbus_map_node, %struct.xenbus_map_node* %46, i32 0, i32 1, !dbg !6351
  %hvm31 = bitcast %union.anon.72* %47 to %struct.anon.74*, !dbg !6351
  %pages32 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %hvm31, i32 0, i32 0, !dbg !6352
  %arraydecay33 = getelementptr inbounds [16 x %struct.page*], [16 x %struct.page*]* %pages32, i64 0, i64 0, !dbg !6350
  call void @free_xenballooned_pages(i32 %45, %struct.page** %arraydecay33) #11, !dbg !6353
  br label %if.end34, !dbg !6353

if.end34:                                         ; preds = %if.then30, %out_free_ballooned_pages
  br label %out_err, !dbg !6346

out_err:                                          ; preds = %if.end34, %if.then
  call void @llvm.dbg.label(metadata !6354), !dbg !6355
  %48 = load i32, i32* %err, align 4, !dbg !6356
  store i32 %48, i32* %retval, align 4, !dbg !6357
  br label %return, !dbg !6357

return:                                           ; preds = %out_err, %if.end17
  %49 = load i32, i32* %retval, align 4, !dbg !6358
  ret i32 %49, !dbg !6358
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xenbus_unmap_ring_hvm(%struct.xenbus_device* %dev, i8* %vaddr) #0 !dbg !6359 {
entry:
  %lock.addr.i53 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i53, metadata !5531, metadata !DIExpression()), !dbg !6360
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !5538, metadata !DIExpression()), !dbg !6362
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.xenbus_device*, align 8
  %vaddr.addr = alloca i8*, align 8
  %rv = alloca i32, align 4
  %node = alloca %struct.xenbus_map_node*, align 8
  %addr = alloca i8*, align 8
  %info = alloca %struct.unmap_ring_hvm, align 8
  %nr_pages = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.xenbus_map_node*, align 8
  %__mptr4 = alloca i8*, align 8
  %tmp9 = alloca %struct.xenbus_map_node*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp45 = alloca i64, align 8
  store %struct.xenbus_device* %dev, %struct.xenbus_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %dev.addr, metadata !6364, metadata !DIExpression()), !dbg !6365
  store i8* %vaddr, i8** %vaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %vaddr.addr, metadata !6366, metadata !DIExpression()), !dbg !6367
  call void @llvm.dbg.declare(metadata i32* %rv, metadata !6368, metadata !DIExpression()), !dbg !6369
  call void @llvm.dbg.declare(metadata %struct.xenbus_map_node** %node, metadata !6370, metadata !DIExpression()), !dbg !6371
  call void @llvm.dbg.declare(metadata i8** %addr, metadata !6372, metadata !DIExpression()), !dbg !6373
  call void @llvm.dbg.declare(metadata %struct.unmap_ring_hvm* %info, metadata !6374, metadata !DIExpression()), !dbg !6379
  %0 = bitcast %struct.unmap_ring_hvm* %info to i8*, !dbg !6379
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 136, i1 false), !dbg !6379
  call void @llvm.dbg.declare(metadata i32* %nr_pages, metadata !6380, metadata !DIExpression()), !dbg !6381
  store %struct.spinlock* @xenbus_valloc_lock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !6382, !srcloc !5603
  %1 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !6383
  %2 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %1, i32 0, i32 0, !dbg !6383
  %rlock.i = bitcast %union.anon.3* %2 to %struct.raw_spinlock*, !dbg !6383
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6384, metadata !DIExpression()), !dbg !6387
  %3 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @xenbus_valloc_pages, i32 0, i32 0), align 8, !dbg !6387
  %4 = bitcast %struct.list_head* %3 to i8*, !dbg !6387
  store i8* %4, i8** %__mptr, align 8, !dbg !6387
  br label %do.body, !dbg !6387

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6388

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !6387
  %add.ptr = getelementptr i8, i8* %5, i64 0, !dbg !6387
  %6 = bitcast i8* %add.ptr to %struct.xenbus_map_node*, !dbg !6387
  store %struct.xenbus_map_node* %6, %struct.xenbus_map_node** %tmp, align 8, !dbg !6388
  %7 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %tmp, align 8, !dbg !6387
  store %struct.xenbus_map_node* %7, %struct.xenbus_map_node** %node, align 8, !dbg !6390
  br label %for.cond, !dbg !6390

for.cond:                                         ; preds = %do.end8, %do.end
  %8 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %node, align 8, !dbg !6391
  %next = getelementptr inbounds %struct.xenbus_map_node, %struct.xenbus_map_node* %8, i32 0, i32 0, !dbg !6391
  %cmp = icmp eq %struct.list_head* %next, @xenbus_valloc_pages, !dbg !6391
  %lnot = xor i1 %cmp, true, !dbg !6391
  br i1 %lnot, label %for.body, label %for.end, !dbg !6390

for.body:                                         ; preds = %for.cond
  %9 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %node, align 8, !dbg !6393
  %10 = getelementptr inbounds %struct.xenbus_map_node, %struct.xenbus_map_node* %9, i32 0, i32 1, !dbg !6395
  %hvm = bitcast %union.anon.72* %10 to %struct.anon.74*, !dbg !6395
  %addr1 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %hvm, i32 0, i32 2, !dbg !6396
  %11 = load i8*, i8** %addr1, align 8, !dbg !6396
  store i8* %11, i8** %addr, align 8, !dbg !6397
  %12 = load i8*, i8** %addr, align 8, !dbg !6398
  %13 = load i8*, i8** %vaddr.addr, align 8, !dbg !6400
  %cmp2 = icmp eq i8* %12, %13, !dbg !6401
  br i1 %cmp2, label %if.then, label %if.end, !dbg !6402

if.then:                                          ; preds = %for.body
  %14 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %node, align 8, !dbg !6403
  %next3 = getelementptr inbounds %struct.xenbus_map_node, %struct.xenbus_map_node* %14, i32 0, i32 0, !dbg !6405
  call void @list_del(%struct.list_head* %next3) #11, !dbg !6406
  br label %found, !dbg !6407

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !6408

for.inc:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr4, metadata !6409, metadata !DIExpression()), !dbg !6411
  %15 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %node, align 8, !dbg !6411
  %next5 = getelementptr inbounds %struct.xenbus_map_node, %struct.xenbus_map_node* %15, i32 0, i32 0, !dbg !6411
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %next5, i32 0, i32 0, !dbg !6411
  %16 = load %struct.list_head*, %struct.list_head** %next6, align 8, !dbg !6411
  %17 = bitcast %struct.list_head* %16 to i8*, !dbg !6411
  store i8* %17, i8** %__mptr4, align 8, !dbg !6411
  br label %do.body7, !dbg !6411

do.body7:                                         ; preds = %for.inc
  br label %do.end8, !dbg !6412

do.end8:                                          ; preds = %do.body7
  %18 = load i8*, i8** %__mptr4, align 8, !dbg !6411
  %add.ptr10 = getelementptr i8, i8* %18, i64 0, !dbg !6411
  %19 = bitcast i8* %add.ptr10 to %struct.xenbus_map_node*, !dbg !6411
  store %struct.xenbus_map_node* %19, %struct.xenbus_map_node** %tmp9, align 8, !dbg !6412
  %20 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %tmp9, align 8, !dbg !6411
  store %struct.xenbus_map_node* %20, %struct.xenbus_map_node** %node, align 8, !dbg !6391
  br label %for.cond, !dbg !6391, !llvm.loop !6414

for.end:                                          ; preds = %for.cond
  store i8* null, i8** %addr, align 8, !dbg !6416
  store %struct.xenbus_map_node* null, %struct.xenbus_map_node** %node, align 8, !dbg !6417
  br label %found, !dbg !6418

found:                                            ; preds = %for.end, %if.then
  call void @llvm.dbg.label(metadata !6419), !dbg !6420
  store %struct.spinlock* @xenbus_valloc_lock, %struct.spinlock** %lock.addr.i53, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !6421, !srcloc !5611
  %21 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i53, align 8, !dbg !6422
  %22 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %21, i32 0, i32 0, !dbg !6422
  %rlock.i54 = bitcast %union.anon.3* %22 to %struct.raw_spinlock*, !dbg !6422
  %23 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %node, align 8, !dbg !6423
  %tobool = icmp ne %struct.xenbus_map_node* %23, null, !dbg !6423
  br i1 %tobool, label %if.end12, label %if.then11, !dbg !6425

if.then11:                                        ; preds = %found
  %24 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !6426
  %25 = load i8*, i8** %vaddr.addr, align 8, !dbg !6428
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_error(%struct.xenbus_device* %24, i32 -2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.28, i64 0, i64 0), i8* %25) #11, !dbg !6429
  store i32 -5, i32* %retval, align 4, !dbg !6430
  br label %return, !dbg !6430

if.end12:                                         ; preds = %found
  %26 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %node, align 8, !dbg !6431
  %nr_handles = getelementptr inbounds %struct.xenbus_map_node, %struct.xenbus_map_node* %26, i32 0, i32 3, !dbg !6431
  %27 = load i32, i32* %nr_handles, align 8, !dbg !6431
  %conv = zext i32 %27 to i64, !dbg !6431
  %add = add i64 %conv, 1, !dbg !6431
  %sub = sub i64 %add, 1, !dbg !6431
  %div = udiv i64 %sub, 1, !dbg !6431
  %conv13 = trunc i64 %div to i32, !dbg !6431
  store i32 %conv13, i32* %nr_pages, align 4, !dbg !6432
  %28 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %node, align 8, !dbg !6433
  %29 = getelementptr inbounds %struct.xenbus_map_node, %struct.xenbus_map_node* %28, i32 0, i32 1, !dbg !6434
  %hvm14 = bitcast %union.anon.72* %29 to %struct.anon.74*, !dbg !6434
  %pages = getelementptr inbounds %struct.anon.74, %struct.anon.74* %hvm14, i32 0, i32 0, !dbg !6435
  %arraydecay = getelementptr inbounds [16 x %struct.page*], [16 x %struct.page*]* %pages, i64 0, i64 0, !dbg !6433
  %30 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %node, align 8, !dbg !6436
  %nr_handles15 = getelementptr inbounds %struct.xenbus_map_node, %struct.xenbus_map_node* %30, i32 0, i32 3, !dbg !6437
  %31 = load i32, i32* %nr_handles15, align 8, !dbg !6437
  %32 = bitcast %struct.unmap_ring_hvm* %info to i8*, !dbg !6438
  call void @gnttab_foreach_grant(%struct.page** %arraydecay, i32 %31, void (i64, i32, i32, i8*)* @xenbus_unmap_ring_setup_grant_hvm, i8* %32) #11, !dbg !6439
  %33 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !6440
  %34 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %node, align 8, !dbg !6441
  %handles = getelementptr inbounds %struct.xenbus_map_node, %struct.xenbus_map_node* %34, i32 0, i32 2, !dbg !6442
  %arraydecay16 = getelementptr inbounds [16 x i32], [16 x i32]* %handles, i64 0, i64 0, !dbg !6441
  %35 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %node, align 8, !dbg !6443
  %nr_handles17 = getelementptr inbounds %struct.xenbus_map_node, %struct.xenbus_map_node* %35, i32 0, i32 3, !dbg !6444
  %36 = load i32, i32* %nr_handles17, align 8, !dbg !6444
  %addrs = getelementptr inbounds %struct.unmap_ring_hvm, %struct.unmap_ring_hvm* %info, i32 0, i32 1, !dbg !6445
  %arraydecay18 = getelementptr inbounds [16 x i64], [16 x i64]* %addrs, i64 0, i64 0, !dbg !6446
  %call = call i32 @xenbus_unmap_ring(%struct.xenbus_device* %33, i32* %arraydecay16, i32 %36, i64* %arraydecay18) #11, !dbg !6447
  store i32 %call, i32* %rv, align 4, !dbg !6448
  %37 = load i32, i32* %rv, align 4, !dbg !6449
  %tobool19 = icmp ne i32 %37, 0, !dbg !6449
  br i1 %tobool19, label %if.else, label %if.then20, !dbg !6451

if.then20:                                        ; preds = %if.end12
  %38 = load i8*, i8** %vaddr.addr, align 8, !dbg !6452
  call void @vunmap(i8* %38) #11, !dbg !6454
  %39 = load i32, i32* %nr_pages, align 4, !dbg !6455
  %40 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %node, align 8, !dbg !6456
  %41 = getelementptr inbounds %struct.xenbus_map_node, %struct.xenbus_map_node* %40, i32 0, i32 1, !dbg !6457
  %hvm21 = bitcast %union.anon.72* %41 to %struct.anon.74*, !dbg !6457
  %pages22 = getelementptr inbounds %struct.anon.74, %struct.anon.74* %hvm21, i32 0, i32 0, !dbg !6458
  %arraydecay23 = getelementptr inbounds [16 x %struct.page*], [16 x %struct.page*]* %pages22, i64 0, i64 0, !dbg !6456
  call void @free_xenballooned_pages(i32 %39, %struct.page** %arraydecay23) #11, !dbg !6459
  br label %if.end52, !dbg !6460

if.else:                                          ; preds = %if.end12
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !6461, metadata !DIExpression()), !dbg !6463
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !6463
  %42 = load i32, i32* %__ret_warn_on, align 4, !dbg !6464
  %tobool24 = icmp ne i32 %42, 0, !dbg !6464
  %lnot25 = xor i1 %tobool24, true, !dbg !6464
  %lnot26 = xor i1 %lnot25, true, !dbg !6464
  %lnot.ext = zext i1 %lnot26 to i32, !dbg !6464
  %conv27 = sext i32 %lnot.ext to i64, !dbg !6464
  %tobool28 = icmp ne i64 %conv27, 0, !dbg !6464
  br i1 %tobool28, label %if.then29, label %if.end44, !dbg !6463

if.then29:                                        ; preds = %if.else
  br label %do.body30, !dbg !6464

do.body30:                                        ; preds = %if.then29
  br label %do.body31, !dbg !6466

do.body31:                                        ; preds = %do.body30
  br label %do.end32, !dbg !6468

do.end32:                                         ; preds = %do.body31
  %43 = load i8*, i8** %vaddr.addr, align 8, !dbg !6466
  %44 = load i32, i32* %nr_pages, align 4, !dbg !6466
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i64 0, i64 0), i8* %43, i32 %44) #11, !dbg !6466
  br label %do.body33, !dbg !6466

do.body33:                                        ; preds = %do.end32
  br label %do.body34, !dbg !6470

do.body34:                                        ; preds = %do.body33
  br label %do.end35, !dbg !6472

do.end35:                                         ; preds = %do.body34
  br label %do.body36, !dbg !6470

do.body36:                                        ; preds = %do.end35
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.27, i64 0, i64 0), i32 866, i32 2313, i64 12) #3, !dbg !6474, !srcloc !6476
  br label %do.end37, !dbg !6474

do.end37:                                         ; preds = %do.body36
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 243) #3, !dbg !6477, !srcloc !6479
  br label %do.body38, !dbg !6470

do.body38:                                        ; preds = %do.end37
  br label %do.end39, !dbg !6480

do.end39:                                         ; preds = %do.body38
  br label %do.end40, !dbg !6470

do.end40:                                         ; preds = %do.end39
  br label %do.body41, !dbg !6466

do.body41:                                        ; preds = %do.end40
  br label %do.end42, !dbg !6482

do.end42:                                         ; preds = %do.body41
  br label %do.end43, !dbg !6466

do.end43:                                         ; preds = %do.end42
  br label %if.end44, !dbg !6466

if.end44:                                         ; preds = %do.end43, %if.else
  %45 = load i32, i32* %__ret_warn_on, align 4, !dbg !6463
  %tobool46 = icmp ne i32 %45, 0, !dbg !6463
  %lnot47 = xor i1 %tobool46, true, !dbg !6463
  %lnot49 = xor i1 %lnot47, true, !dbg !6463
  %lnot.ext50 = zext i1 %lnot49 to i32, !dbg !6463
  %conv51 = sext i32 %lnot.ext50 to i64, !dbg !6463
  store i64 %conv51, i64* %tmp45, align 8, !dbg !6464
  %46 = load i64, i64* %tmp45, align 8, !dbg !6463
  br label %if.end52

if.end52:                                         ; preds = %if.end44, %if.then20
  %47 = load %struct.xenbus_map_node*, %struct.xenbus_map_node** %node, align 8, !dbg !6484
  %48 = bitcast %struct.xenbus_map_node* %47 to i8*, !dbg !6484
  call void @kfree(i8* %48) #11, !dbg !6485
  %49 = load i32, i32* %rv, align 4, !dbg !6486
  store i32 %49, i32* %retval, align 4, !dbg !6487
  br label %return, !dbg !6487

return:                                           ; preds = %if.end52, %if.then11
  %50 = load i32, i32* %retval, align 4, !dbg !6488
  ret i32 %50, !dbg !6488
}

; Function Attrs: noredzone
declare dso_local i32 @alloc_xenballooned_pages(i32, %struct.page**) #2

; Function Attrs: noredzone
declare dso_local void @gnttab_foreach_grant(%struct.page**, i32, void (i64, i32, i32, i8*)*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xenbus_map_ring_setup_grant_hvm(i64 %gfn, i32 %goffset, i32 %len, i8* %data) #0 !dbg !6489 {
entry:
  %gfn.addr = alloca i64, align 8
  %goffset.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %info = alloca %struct.map_ring_valloc*, align 8
  %vaddr = alloca i64, align 8
  store i64 %gfn, i64* %gfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %gfn.addr, metadata !6492, metadata !DIExpression()), !dbg !6493
  store i32 %goffset, i32* %goffset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %goffset.addr, metadata !6494, metadata !DIExpression()), !dbg !6495
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !6496, metadata !DIExpression()), !dbg !6497
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6498, metadata !DIExpression()), !dbg !6499
  call void @llvm.dbg.declare(metadata %struct.map_ring_valloc** %info, metadata !6500, metadata !DIExpression()), !dbg !6501
  %0 = load i8*, i8** %data.addr, align 8, !dbg !6502
  %1 = bitcast i8* %0 to %struct.map_ring_valloc*, !dbg !6502
  store %struct.map_ring_valloc* %1, %struct.map_ring_valloc** %info, align 8, !dbg !6501
  call void @llvm.dbg.declare(metadata i64* %vaddr, metadata !6503, metadata !DIExpression()), !dbg !6504
  %2 = load i64, i64* %gfn.addr, align 8, !dbg !6505
  %call = call i64 @gfn_to_pfn(i64 %2) #11, !dbg !6505
  %shl = shl i64 %call, 12, !dbg !6505
  %3 = load i64, i64* @page_offset_base, align 8, !dbg !6505
  %add = add i64 %shl, %3, !dbg !6505
  %4 = inttoptr i64 %add to i8*, !dbg !6505
  %5 = ptrtoint i8* %4 to i64, !dbg !6506
  store i64 %5, i64* %vaddr, align 8, !dbg !6504
  %6 = load i64, i64* %vaddr, align 8, !dbg !6507
  %7 = load %struct.map_ring_valloc*, %struct.map_ring_valloc** %info, align 8, !dbg !6508
  %phys_addrs = getelementptr inbounds %struct.map_ring_valloc, %struct.map_ring_valloc* %7, i32 0, i32 2, !dbg !6509
  %8 = load %struct.map_ring_valloc*, %struct.map_ring_valloc** %info, align 8, !dbg !6510
  %idx = getelementptr inbounds %struct.map_ring_valloc, %struct.map_ring_valloc* %8, i32 0, i32 5, !dbg !6511
  %9 = load i32, i32* %idx, align 8, !dbg !6511
  %idxprom = zext i32 %9 to i64, !dbg !6508
  %arrayidx = getelementptr [16 x i64], [16 x i64]* %phys_addrs, i64 0, i64 %idxprom, !dbg !6508
  store i64 %6, i64* %arrayidx, align 8, !dbg !6512
  %10 = load i64, i64* %vaddr, align 8, !dbg !6513
  %11 = load %struct.map_ring_valloc*, %struct.map_ring_valloc** %info, align 8, !dbg !6514
  %addrs = getelementptr inbounds %struct.map_ring_valloc, %struct.map_ring_valloc* %11, i32 0, i32 1, !dbg !6515
  %12 = load %struct.map_ring_valloc*, %struct.map_ring_valloc** %info, align 8, !dbg !6516
  %idx1 = getelementptr inbounds %struct.map_ring_valloc, %struct.map_ring_valloc* %12, i32 0, i32 5, !dbg !6517
  %13 = load i32, i32* %idx1, align 8, !dbg !6517
  %idxprom2 = zext i32 %13 to i64, !dbg !6514
  %arrayidx3 = getelementptr [16 x i64], [16 x i64]* %addrs, i64 0, i64 %idxprom2, !dbg !6514
  store i64 %10, i64* %arrayidx3, align 8, !dbg !6518
  %14 = load %struct.map_ring_valloc*, %struct.map_ring_valloc** %info, align 8, !dbg !6519
  %idx4 = getelementptr inbounds %struct.map_ring_valloc, %struct.map_ring_valloc* %14, i32 0, i32 5, !dbg !6520
  %15 = load i32, i32* %idx4, align 8, !dbg !6521
  %inc = add i32 %15, 1, !dbg !6521
  store i32 %inc, i32* %idx4, align 8, !dbg !6521
  ret void, !dbg !6522
}

; Function Attrs: noredzone
declare dso_local i8* @vmap(%struct.page**, i32, i64, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xenbus_unmap_ring(%struct.xenbus_device* %dev, i32* %handles, i32 %nr_handles, i64* %vaddrs) #0 !dbg !6523 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.xenbus_device*, align 8
  %handles.addr = alloca i32*, align 8
  %nr_handles.addr = alloca i32, align 4
  %vaddrs.addr = alloca i64*, align 8
  %unmap = alloca [16 x %struct.gnttab_unmap_grant_ref], align 16
  %i = alloca i32, align 4
  %err = alloca i32, align 4
  store %struct.xenbus_device* %dev, %struct.xenbus_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %dev.addr, metadata !6526, metadata !DIExpression()), !dbg !6527
  store i32* %handles, i32** %handles.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %handles.addr, metadata !6528, metadata !DIExpression()), !dbg !6529
  store i32 %nr_handles, i32* %nr_handles.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nr_handles.addr, metadata !6530, metadata !DIExpression()), !dbg !6531
  store i64* %vaddrs, i64** %vaddrs.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %vaddrs.addr, metadata !6532, metadata !DIExpression()), !dbg !6533
  call void @llvm.dbg.declare(metadata [16 x %struct.gnttab_unmap_grant_ref]* %unmap, metadata !6534, metadata !DIExpression()), !dbg !6535
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6536, metadata !DIExpression()), !dbg !6537
  call void @llvm.dbg.declare(metadata i32* %err, metadata !6538, metadata !DIExpression()), !dbg !6539
  %0 = load i32, i32* %nr_handles.addr, align 4, !dbg !6540
  %cmp = icmp ugt i32 %0, 16, !dbg !6542
  br i1 %cmp, label %if.then, label %if.end, !dbg !6543

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !6544
  br label %return, !dbg !6544

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !6545
  br label %for.cond, !dbg !6547

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4, !dbg !6548
  %2 = load i32, i32* %nr_handles.addr, align 4, !dbg !6550
  %cmp1 = icmp ult i32 %1, %2, !dbg !6551
  br i1 %cmp1, label %for.body, label %for.end, !dbg !6552

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !dbg !6553
  %idxprom = sext i32 %3 to i64, !dbg !6554
  %arrayidx = getelementptr [16 x %struct.gnttab_unmap_grant_ref], [16 x %struct.gnttab_unmap_grant_ref]* %unmap, i64 0, i64 %idxprom, !dbg !6554
  %4 = load i64*, i64** %vaddrs.addr, align 8, !dbg !6555
  %5 = load i32, i32* %i, align 4, !dbg !6556
  %idxprom2 = sext i32 %5 to i64, !dbg !6555
  %arrayidx3 = getelementptr i64, i64* %4, i64 %idxprom2, !dbg !6555
  %6 = load i64, i64* %arrayidx3, align 8, !dbg !6555
  %7 = load i32*, i32** %handles.addr, align 8, !dbg !6557
  %8 = load i32, i32* %i, align 4, !dbg !6558
  %idxprom4 = sext i32 %8 to i64, !dbg !6557
  %arrayidx5 = getelementptr i32, i32* %7, i64 %idxprom4, !dbg !6557
  %9 = load i32, i32* %arrayidx5, align 4, !dbg !6557
  call void @gnttab_set_unmap_op(%struct.gnttab_unmap_grant_ref* %arrayidx, i64 %6, i32 2, i32 %9) #11, !dbg !6559
  br label %for.inc, !dbg !6559

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !dbg !6560
  %inc = add i32 %10, 1, !dbg !6560
  store i32 %inc, i32* %i, align 4, !dbg !6560
  br label %for.cond, !dbg !6561, !llvm.loop !6562

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [16 x %struct.gnttab_unmap_grant_ref], [16 x %struct.gnttab_unmap_grant_ref]* %unmap, i64 0, i64 0, !dbg !6564
  %11 = bitcast %struct.gnttab_unmap_grant_ref* %arraydecay to i8*, !dbg !6564
  %12 = load i32, i32* %i, align 4, !dbg !6566
  %call = call i32 @HYPERVISOR_grant_table_op(i32 1, i8* %11, i32 %12) #11, !dbg !6567
  %tobool = icmp ne i32 %call, 0, !dbg !6567
  br i1 %tobool, label %if.then6, label %if.end13, !dbg !6568

if.then6:                                         ; preds = %for.end
  br label %do.body, !dbg !6569

do.body:                                          ; preds = %if.then6
  br label %do.body7, !dbg !6570

do.body7:                                         ; preds = %do.body
  br label %do.end, !dbg !6572

do.end:                                           ; preds = %do.body7
  br label %do.body8, !dbg !6570

do.body8:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.27, i64 0, i64 0), i32 579, i32 0, i64 12) #3, !dbg !6574, !srcloc !6576
  br label %do.end9, !dbg !6574

do.end9:                                          ; preds = %do.body8
  br label %do.body10, !dbg !6570

do.body10:                                        ; preds = %do.end9
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 237) #3, !dbg !6577, !srcloc !6580
  unreachable, !dbg !6581

do.end11:                                         ; No predecessors!
  br label %do.end12, !dbg !6570

do.end12:                                         ; preds = %do.end11
  br label %if.end13, !dbg !6570

if.end13:                                         ; preds = %do.end12, %for.end
  store i32 0, i32* %err, align 4, !dbg !6582
  store i32 0, i32* %i, align 4, !dbg !6583
  br label %for.cond14, !dbg !6585

for.cond14:                                       ; preds = %for.inc37, %if.end13
  %13 = load i32, i32* %i, align 4, !dbg !6586
  %14 = load i32, i32* %nr_handles.addr, align 4, !dbg !6588
  %cmp15 = icmp ult i32 %13, %14, !dbg !6589
  br i1 %cmp15, label %for.body16, label %for.end39, !dbg !6590

for.body16:                                       ; preds = %for.cond14
  %15 = load i32, i32* %i, align 4, !dbg !6591
  %idxprom17 = sext i32 %15 to i64, !dbg !6594
  %arrayidx18 = getelementptr [16 x %struct.gnttab_unmap_grant_ref], [16 x %struct.gnttab_unmap_grant_ref]* %unmap, i64 0, i64 %idxprom17, !dbg !6594
  %status = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %arrayidx18, i32 0, i32 3, !dbg !6595
  %16 = load i16, i16* %status, align 4, !dbg !6595
  %conv = sext i16 %16 to i32, !dbg !6594
  %cmp19 = icmp ne i32 %conv, 0, !dbg !6596
  br i1 %cmp19, label %if.then21, label %if.end36, !dbg !6597

if.then21:                                        ; preds = %for.body16
  %17 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !6598
  %18 = load i32, i32* %i, align 4, !dbg !6600
  %idxprom22 = sext i32 %18 to i64, !dbg !6601
  %arrayidx23 = getelementptr [16 x %struct.gnttab_unmap_grant_ref], [16 x %struct.gnttab_unmap_grant_ref]* %unmap, i64 0, i64 %idxprom22, !dbg !6601
  %status24 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %arrayidx23, i32 0, i32 3, !dbg !6602
  %19 = load i16, i16* %status24, align 4, !dbg !6602
  %conv25 = sext i16 %19 to i32, !dbg !6601
  %20 = load i32*, i32** %handles.addr, align 8, !dbg !6603
  %21 = load i32, i32* %i, align 4, !dbg !6604
  %idxprom26 = sext i32 %21 to i64, !dbg !6603
  %arrayidx27 = getelementptr i32, i32* %20, i64 %idxprom26, !dbg !6603
  %22 = load i32, i32* %arrayidx27, align 4, !dbg !6603
  %23 = load i32, i32* %i, align 4, !dbg !6605
  %idxprom28 = sext i32 %23 to i64, !dbg !6606
  %arrayidx29 = getelementptr [16 x %struct.gnttab_unmap_grant_ref], [16 x %struct.gnttab_unmap_grant_ref]* %unmap, i64 0, i64 %idxprom28, !dbg !6606
  %status30 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %arrayidx29, i32 0, i32 3, !dbg !6607
  %24 = load i16, i16* %status30, align 4, !dbg !6607
  %conv31 = sext i16 %24 to i32, !dbg !6606
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_error(%struct.xenbus_device* %17, i32 %conv25, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.29, i64 0, i64 0), i32 %22, i32 %conv31) #11, !dbg !6608
  %25 = load i32, i32* %i, align 4, !dbg !6609
  %idxprom32 = sext i32 %25 to i64, !dbg !6610
  %arrayidx33 = getelementptr [16 x %struct.gnttab_unmap_grant_ref], [16 x %struct.gnttab_unmap_grant_ref]* %unmap, i64 0, i64 %idxprom32, !dbg !6610
  %status34 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %arrayidx33, i32 0, i32 3, !dbg !6611
  %26 = load i16, i16* %status34, align 4, !dbg !6611
  %conv35 = sext i16 %26 to i32, !dbg !6610
  store i32 %conv35, i32* %err, align 4, !dbg !6612
  br label %for.end39, !dbg !6613

if.end36:                                         ; preds = %for.body16
  br label %for.inc37, !dbg !6614

for.inc37:                                        ; preds = %if.end36
  %27 = load i32, i32* %i, align 4, !dbg !6615
  %inc38 = add i32 %27, 1, !dbg !6615
  store i32 %inc38, i32* %i, align 4, !dbg !6615
  br label %for.cond14, !dbg !6616, !llvm.loop !6617

for.end39:                                        ; preds = %if.then21, %for.cond14
  %28 = load i32, i32* %err, align 4, !dbg !6619
  store i32 %28, i32* %retval, align 4, !dbg !6620
  br label %return, !dbg !6620

return:                                           ; preds = %for.end39, %if.then
  %29 = load i32, i32* %retval, align 4, !dbg !6621
  ret i32 %29, !dbg !6621
}

; Function Attrs: noredzone
declare dso_local void @free_xenballooned_pages(i32, %struct.page**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @gfn_to_pfn(i64 %gfn) #0 !dbg !6622 {
entry:
  %retval = alloca i64, align 8
  %gfn.addr = alloca i64, align 8
  store i64 %gfn, i64* %gfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %gfn.addr, metadata !6623, metadata !DIExpression()), !dbg !6624
  %call = call i32 @xen_feature(i32 2) #11, !dbg !6625
  %tobool = icmp ne i32 %call, 0, !dbg !6625
  br i1 %tobool, label %if.then, label %if.else, !dbg !6627

if.then:                                          ; preds = %entry
  %0 = load i64, i64* %gfn.addr, align 8, !dbg !6628
  store i64 %0, i64* %retval, align 8, !dbg !6629
  br label %return, !dbg !6629

if.else:                                          ; preds = %entry
  %1 = load i64, i64* %gfn.addr, align 8, !dbg !6630
  %call1 = call i64 @mfn_to_pfn(i64 %1) #11, !dbg !6631
  store i64 %call1, i64* %retval, align 8, !dbg !6632
  br label %return, !dbg !6632

return:                                           ; preds = %if.else, %if.then
  %2 = load i64, i64* %retval, align 8, !dbg !6633
  ret i64 %2, !dbg !6633
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @mfn_to_pfn(i64 %mfn) #0 !dbg !6634 {
entry:
  %retval = alloca i64, align 8
  %mfn.addr = alloca i64, align 8
  %pfn = alloca i64, align 8
  store i64 %mfn, i64* %mfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %mfn.addr, metadata !6635, metadata !DIExpression()), !dbg !6636
  call void @llvm.dbg.declare(metadata i64* %pfn, metadata !6637, metadata !DIExpression()), !dbg !6638
  %call = call i32 @xen_feature(i32 2) #11, !dbg !6639
  %tobool = icmp ne i32 %call, 0, !dbg !6639
  br i1 %tobool, label %if.then, label %if.end, !dbg !6641

if.then:                                          ; preds = %entry
  %0 = load i64, i64* %mfn.addr, align 8, !dbg !6642
  store i64 %0, i64* %retval, align 8, !dbg !6643
  br label %return, !dbg !6643

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %mfn.addr, align 8, !dbg !6644
  %call1 = call i64 @mfn_to_pfn_no_overrides(i64 %1) #11, !dbg !6645
  store i64 %call1, i64* %pfn, align 8, !dbg !6646
  %2 = load i64, i64* %pfn, align 8, !dbg !6647
  %call2 = call i64 @__pfn_to_mfn(i64 %2) #11, !dbg !6649
  %3 = load i64, i64* %mfn.addr, align 8, !dbg !6650
  %cmp = icmp ne i64 %call2, %3, !dbg !6651
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !6652

if.then3:                                         ; preds = %if.end
  store i64 -1, i64* %pfn, align 8, !dbg !6653
  br label %if.end4, !dbg !6654

if.end4:                                          ; preds = %if.then3, %if.end
  %4 = load i64, i64* %pfn, align 8, !dbg !6655
  %cmp5 = icmp eq i64 %4, -1, !dbg !6657
  br i1 %cmp5, label %land.lhs.true, label %if.end9, !dbg !6658

land.lhs.true:                                    ; preds = %if.end4
  %5 = load i64, i64* %mfn.addr, align 8, !dbg !6659
  %call6 = call i64 @__pfn_to_mfn(i64 %5) #11, !dbg !6660
  %6 = load i64, i64* %mfn.addr, align 8, !dbg !6661
  %or = or i64 %6, 4611686018427387904, !dbg !6661
  %cmp7 = icmp eq i64 %call6, %or, !dbg !6662
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !6663

if.then8:                                         ; preds = %land.lhs.true
  %7 = load i64, i64* %mfn.addr, align 8, !dbg !6664
  store i64 %7, i64* %pfn, align 8, !dbg !6665
  br label %if.end9, !dbg !6666

if.end9:                                          ; preds = %if.then8, %land.lhs.true, %if.end4
  %8 = load i64, i64* %pfn, align 8, !dbg !6667
  store i64 %8, i64* %retval, align 8, !dbg !6668
  br label %return, !dbg !6668

return:                                           ; preds = %if.end9, %if.then
  %9 = load i64, i64* %retval, align 8, !dbg !6669
  ret i64 %9, !dbg !6669
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @mfn_to_pfn_no_overrides(i64 %mfn) #0 !dbg !6670 {
entry:
  %retval = alloca i64, align 8
  %mfn.addr = alloca i64, align 8
  %pfn = alloca i64, align 8
  %ret = alloca i32, align 4
  store i64 %mfn, i64* %mfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %mfn.addr, metadata !6671, metadata !DIExpression()), !dbg !6672
  call void @llvm.dbg.declare(metadata i64* %pfn, metadata !6673, metadata !DIExpression()), !dbg !6674
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6675, metadata !DIExpression()), !dbg !6676
  %0 = load i64, i64* %mfn.addr, align 8, !dbg !6677
  %1 = load i64, i64* @machine_to_phys_nr, align 8, !dbg !6677
  %cmp = icmp uge i64 %0, %1, !dbg !6677
  %lnot = xor i1 %cmp, true, !dbg !6677
  %lnot1 = xor i1 %lnot, true, !dbg !6677
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6677
  %conv = sext i32 %lnot.ext to i64, !dbg !6677
  %tobool = icmp ne i64 %conv, 0, !dbg !6677
  br i1 %tobool, label %if.then, label %if.end, !dbg !6679

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval, align 8, !dbg !6680
  br label %return, !dbg !6680

if.end:                                           ; preds = %entry
  %2 = load i64*, i64** @machine_to_phys_mapping, align 8, !dbg !6681
  %3 = load i64, i64* %mfn.addr, align 8, !dbg !6682
  %arrayidx = getelementptr i64, i64* %2, i64 %3, !dbg !6681
  %call = call i32 @xen_safe_read_ulong(i64* %arrayidx, i64* %pfn) #11, !dbg !6683
  store i32 %call, i32* %ret, align 4, !dbg !6684
  %4 = load i32, i32* %ret, align 4, !dbg !6685
  %cmp2 = icmp slt i32 %4, 0, !dbg !6687
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !6688

if.then4:                                         ; preds = %if.end
  store i64 -1, i64* %retval, align 8, !dbg !6689
  br label %return, !dbg !6689

if.end5:                                          ; preds = %if.end
  %5 = load i64, i64* %pfn, align 8, !dbg !6690
  store i64 %5, i64* %retval, align 8, !dbg !6691
  br label %return, !dbg !6691

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %6 = load i64, i64* %retval, align 8, !dbg !6692
  ret i64 %6, !dbg !6692
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_safe_read_ulong(i64* %addr, i64* %val) #0 !dbg !6693 {
entry:
  %addr.addr = alloca i64*, align 8
  %val.addr = alloca i64*, align 8
  %ret = alloca i32, align 4
  %rval = alloca i64, align 8
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !6697, metadata !DIExpression()), !dbg !6698
  store i64* %val, i64** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %val.addr, metadata !6699, metadata !DIExpression()), !dbg !6700
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6701, metadata !DIExpression()), !dbg !6702
  store i32 0, i32* %ret, align 4, !dbg !6702
  call void @llvm.dbg.declare(metadata i64* %rval, metadata !6703, metadata !DIExpression()), !dbg !6704
  store i64 -1, i64* %rval, align 8, !dbg !6704
  %0 = load i32, i32* %ret, align 4, !dbg !6705
  %1 = load i64, i64* %rval, align 8, !dbg !6705
  %2 = load i64*, i64** %addr.addr, align 8, !dbg !6706
  %3 = call { i32, i64 } asm sideeffect "1: mov $2, $1\0A2:\0A.section .fixup, \22ax\22\0A3: sub $$1, $0\0A   jmp 2b\0A.previous\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (3b) - .\0A .long (ex_handler_default) - .\0A .popsection\0A", "=r,=r,*m,0,1,~{dirflag},~{fpsr},~{flags}"(i64* %2, i32 %0, i64 %1) #3, !dbg !6705, !srcloc !6707
  %asmresult = extractvalue { i32, i64 } %3, 0, !dbg !6705
  %asmresult1 = extractvalue { i32, i64 } %3, 1, !dbg !6705
  store i32 %asmresult, i32* %ret, align 4, !dbg !6705
  store i64 %asmresult1, i64* %rval, align 8, !dbg !6705
  %4 = load i64, i64* %rval, align 8, !dbg !6708
  %5 = load i64*, i64** %val.addr, align 8, !dbg !6709
  store i64 %4, i64* %5, align 8, !dbg !6710
  %6 = load i32, i32* %ret, align 4, !dbg !6711
  ret i32 %6, !dbg !6712
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xenbus_unmap_ring_setup_grant_hvm(i64 %gfn, i32 %goffset, i32 %len, i8* %data) #0 !dbg !6713 {
entry:
  %gfn.addr = alloca i64, align 8
  %goffset.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %info = alloca %struct.unmap_ring_hvm*, align 8
  store i64 %gfn, i64* %gfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %gfn.addr, metadata !6714, metadata !DIExpression()), !dbg !6715
  store i32 %goffset, i32* %goffset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %goffset.addr, metadata !6716, metadata !DIExpression()), !dbg !6717
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !6718, metadata !DIExpression()), !dbg !6719
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6720, metadata !DIExpression()), !dbg !6721
  call void @llvm.dbg.declare(metadata %struct.unmap_ring_hvm** %info, metadata !6722, metadata !DIExpression()), !dbg !6724
  %0 = load i8*, i8** %data.addr, align 8, !dbg !6725
  %1 = bitcast i8* %0 to %struct.unmap_ring_hvm*, !dbg !6725
  store %struct.unmap_ring_hvm* %1, %struct.unmap_ring_hvm** %info, align 8, !dbg !6724
  %2 = load i64, i64* %gfn.addr, align 8, !dbg !6726
  %call = call i64 @gfn_to_pfn(i64 %2) #11, !dbg !6726
  %shl = shl i64 %call, 12, !dbg !6726
  %3 = load i64, i64* @page_offset_base, align 8, !dbg !6726
  %add = add i64 %shl, %3, !dbg !6726
  %4 = inttoptr i64 %add to i8*, !dbg !6726
  %5 = ptrtoint i8* %4 to i64, !dbg !6727
  %6 = load %struct.unmap_ring_hvm*, %struct.unmap_ring_hvm** %info, align 8, !dbg !6728
  %addrs = getelementptr inbounds %struct.unmap_ring_hvm, %struct.unmap_ring_hvm* %6, i32 0, i32 1, !dbg !6729
  %7 = load %struct.unmap_ring_hvm*, %struct.unmap_ring_hvm** %info, align 8, !dbg !6730
  %idx = getelementptr inbounds %struct.unmap_ring_hvm, %struct.unmap_ring_hvm* %7, i32 0, i32 0, !dbg !6731
  %8 = load i32, i32* %idx, align 8, !dbg !6731
  %idxprom = zext i32 %8 to i64, !dbg !6728
  %arrayidx = getelementptr [16 x i64], [16 x i64]* %addrs, i64 0, i64 %idxprom, !dbg !6728
  store i64 %5, i64* %arrayidx, align 8, !dbg !6732
  %9 = load %struct.unmap_ring_hvm*, %struct.unmap_ring_hvm** %info, align 8, !dbg !6733
  %idx1 = getelementptr inbounds %struct.unmap_ring_hvm, %struct.unmap_ring_hvm* %9, i32 0, i32 0, !dbg !6734
  %10 = load i32, i32* %idx1, align 8, !dbg !6735
  %inc = add i32 %10, 1, !dbg !6735
  store i32 %inc, i32* %idx1, align 8, !dbg !6735
  ret void, !dbg !6736
}

; Function Attrs: noredzone
declare dso_local void @vunmap(i8*) #2

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { nounwind willreturn }
attributes #8 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly }
attributes #10 = { argmemonly nounwind willreturn }
attributes #11 = { noredzone }
attributes #12 = { noredzone nounwind readnone }
attributes #13 = { noredzone nounwind }
attributes #14 = { cold noredzone }

!llvm.dbg.cu = !{!22}
!llvm.named.register.rsp = !{!4291}
!llvm.module.flags = !{!4292, !4293, !4294, !4295}
!llvm.ident = !{!4296}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "name", scope: !2, file: !3, line: 99, type: !4289, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "xenbus_strstate", scope: !3, file: !3, line: 97, type: !4, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !319)
!3 = !DIFile(filename: "drivers/xen/xenbus/xenbus_client.c", directory: "/home/lizy2001/genbc/linux")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !9}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xenbus_state", file: !10, line: 17, baseType: !11, size: 32, elements: !12)
!10 = !DIFile(filename: "./include/xen/interface/io/xenbus.h", directory: "/home/lizy2001/genbc/linux")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21}
!13 = !DIEnumerator(name: "XenbusStateUnknown", value: 0, isUnsigned: true)
!14 = !DIEnumerator(name: "XenbusStateInitialising", value: 1, isUnsigned: true)
!15 = !DIEnumerator(name: "XenbusStateInitWait", value: 2, isUnsigned: true)
!16 = !DIEnumerator(name: "XenbusStateInitialised", value: 3, isUnsigned: true)
!17 = !DIEnumerator(name: "XenbusStateConnected", value: 4, isUnsigned: true)
!18 = !DIEnumerator(name: "XenbusStateClosing", value: 5, isUnsigned: true)
!19 = !DIEnumerator(name: "XenbusStateClosed", value: 6, isUnsigned: true)
!20 = !DIEnumerator(name: "XenbusStateReconfiguring", value: 7, isUnsigned: true)
!21 = !DIEnumerator(name: "XenbusStateReconfigured", value: 8, isUnsigned: true)
!22 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !23, retainedTypes: !158, globals: !3075, splitDebugInlining: false, nameTableKind: None)
!23 = !{!9, !24, !31, !37, !42, !48, !55, !61, !70, !78, !84, !90, !97, !105, !111, !125, !132, !140, !146, !153}
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !25, line: 15, baseType: !11, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!26 = !{!27, !28, !29, !30}
!27 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!28 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!29 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!30 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !32, line: 546, baseType: !11, size: 32, elements: !33)
!32 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!33 = !{!34, !35, !36}
!34 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!35 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!36 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !38, line: 65, baseType: !11, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!39 = !{!40, !41}
!40 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!41 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !43, line: 16, baseType: !11, size: 32, elements: !44)
!43 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!44 = !{!45, !46, !47}
!45 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!46 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!47 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !49, line: 59, baseType: !11, size: 32, elements: !50)
!49 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!50 = !{!51, !52, !53, !54}
!51 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!52 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!53 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!54 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !56, line: 54, baseType: !11, size: 32, elements: !57)
!56 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!57 = !{!58, !59, !60}
!58 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!59 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!60 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !62, line: 296, baseType: !11, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!63 = !{!64, !65, !66, !67, !68, !69}
!64 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!65 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!66 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!67 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!68 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!69 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !71, line: 9, baseType: !11, size: 32, elements: !72)
!71 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!72 = !{!73, !74, !75, !76, !77}
!73 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!74 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!75 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!76 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!77 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !79, line: 26, baseType: !11, size: 32, elements: !80)
!79 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!80 = !{!81, !82, !83}
!81 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!82 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!83 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !85, line: 44, baseType: !11, size: 32, elements: !86)
!85 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!86 = !{!87, !88, !89}
!87 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!88 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!89 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !91, line: 343, baseType: !11, size: 32, elements: !92)
!91 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!92 = !{!93, !94, !95, !96}
!93 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!94 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!95 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!96 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !98, line: 524, baseType: !11, size: 32, elements: !99)
!98 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!99 = !{!100, !101, !102, !103, !104}
!100 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!101 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!102 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!103 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!104 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !98, line: 502, baseType: !11, size: 32, elements: !106)
!106 = !{!107, !108, !109, !110}
!107 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!108 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!109 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!110 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !112, line: 76, baseType: !11, size: 32, elements: !113)
!112 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/lizy2001/genbc/linux")
!113 = !{!114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124}
!114 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0, isUnsigned: true)
!115 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1, isUnsigned: true)
!116 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2, isUnsigned: true)
!117 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3, isUnsigned: true)
!118 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4, isUnsigned: true)
!119 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5, isUnsigned: true)
!120 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6, isUnsigned: true)
!121 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7, isUnsigned: true)
!122 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8, isUnsigned: true)
!123 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9, isUnsigned: true)
!124 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10, isUnsigned: true)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqchip_irq_state", file: !126, line: 478, baseType: !11, size: 32, elements: !127)
!126 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!127 = !{!128, !129, !130, !131}
!128 = !DIEnumerator(name: "IRQCHIP_STATE_PENDING", value: 0, isUnsigned: true)
!129 = !DIEnumerator(name: "IRQCHIP_STATE_ACTIVE", value: 1, isUnsigned: true)
!130 = !DIEnumerator(name: "IRQCHIP_STATE_MASKED", value: 2, isUnsigned: true)
!131 = !DIEnumerator(name: "IRQCHIP_STATE_LINE_LEVEL", value: 3, isUnsigned: true)
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_gc_flags", file: !133, line: 1084, baseType: !11, size: 32, elements: !134)
!133 = !DIFile(filename: "./include/linux/irq.h", directory: "/home/lizy2001/genbc/linux")
!134 = !{!135, !136, !137, !138, !139}
!135 = !DIEnumerator(name: "IRQ_GC_INIT_MASK_CACHE", value: 1, isUnsigned: true)
!136 = !DIEnumerator(name: "IRQ_GC_INIT_NESTED_LOCK", value: 2, isUnsigned: true)
!137 = !DIEnumerator(name: "IRQ_GC_MASK_CACHE_PER_TYPE", value: 4, isUnsigned: true)
!138 = !DIEnumerator(name: "IRQ_GC_NO_MASK", value: 8, isUnsigned: true)
!139 = !DIEnumerator(name: "IRQ_GC_BE_IO", value: 16, isUnsigned: true)
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !141, line: 11, baseType: !11, size: 32, elements: !142)
!141 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!142 = !{!143, !144, !145}
!143 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!144 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!145 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !147, line: 305, baseType: !11, size: 32, elements: !148)
!147 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!148 = !{!149, !150, !151, !152}
!149 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!150 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!151 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!152 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !154, line: 10, baseType: !11, size: 32, elements: !155)
!154 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!155 = !{!156, !157}
!156 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!157 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!158 = !{!159, !160, !162, !163, !164, !171, !1106}
!159 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !161, line: 148, baseType: !11)
!161 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!162 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !166)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !161, line: 178, size: 128, elements: !168)
!168 = !{!169, !170}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !167, file: !161, line: 179, baseType: !166, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !167, file: !161, line: 179, baseType: !166, size: 64, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenbus_map_node", file: !3, line: 56, size: 2816, elements: !173)
!173 = !{!174, !175, !3070, !3074}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !172, file: !3, line: 57, baseType: !167, size: 128)
!175 = !DIDerivedType(tag: DW_TAG_member, scope: !172, file: !3, line: 58, baseType: !176, size: 2112, offset: 128)
!176 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !172, file: !3, line: 58, size: 2112, elements: !177)
!177 = !{!178, !3062}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "pv", scope: !176, file: !3, line: 61, baseType: !179, size: 64)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !176, file: !3, line: 59, size: 64, elements: !180)
!180 = !{!181}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "area", scope: !179, file: !3, line: 60, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !184, line: 56, size: 512, elements: !185)
!184 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!185 = !{!186, !187, !188, !189, !190, !3056, !3057, !3059}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !183, file: !184, line: 57, baseType: !182, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !183, file: !184, line: 58, baseType: !163, size: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !183, file: !184, line: 59, baseType: !162, size: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !183, file: !184, line: 60, baseType: !162, size: 64, offset: 192)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !183, file: !184, line: 61, baseType: !191, size: 64, offset: 256)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !194, line: 68, size: 512, align: 128, elements: !195)
!194 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!195 = !{!196, !197, !3048, !3055}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !193, file: !194, line: 69, baseType: !162, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, scope: !193, file: !194, line: 77, baseType: !198, size: 320, offset: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !193, file: !194, line: 77, size: 320, elements: !199)
!199 = !{!200, !2922, !2927, !2953, !2961, !2967, !2979, !3047}
!200 = !DIDerivedType(tag: DW_TAG_member, scope: !198, file: !194, line: 78, baseType: !201, size: 320)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !198, file: !194, line: 78, size: 320, elements: !202)
!202 = !{!203, !204, !2920, !2921}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !201, file: !194, line: 84, baseType: !167, size: 128)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !201, file: !194, line: 86, baseType: !205, size: 64, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !62, line: 451, size: 1216, align: 64, elements: !207)
!207 = !{!208, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2915, !2916, !2917, !2918, !2919}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !206, file: !62, line: 452, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !62, line: 610, size: 4224, elements: !211)
!211 = !{!212, !215, !216, !225, !232, !233, !2746, !2747, !2748, !2749, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2790, !2798, !2799, !2800, !2810, !2811, !2812, !2813}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !210, file: !62, line: 611, baseType: !213, size: 16)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !161, line: 19, baseType: !214)
!214 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !210, file: !62, line: 612, baseType: !214, size: 16, offset: 16)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !210, file: !62, line: 613, baseType: !217, size: 32, offset: 32)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !218, line: 23, baseType: !219)
!218 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !218, line: 21, size: 32, elements: !220)
!220 = !{!221}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !219, file: !218, line: 22, baseType: !222, size: 32)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !161, line: 32, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !224, line: 49, baseType: !11)
!224 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!225 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !210, file: !62, line: 614, baseType: !226, size: 32, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !218, line: 28, baseType: !227)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !218, line: 26, size: 32, elements: !228)
!228 = !{!229}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !227, file: !218, line: 27, baseType: !230, size: 32)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !161, line: 33, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !224, line: 50, baseType: !11)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !210, file: !62, line: 615, baseType: !11, size: 32, offset: 96)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !210, file: !62, line: 622, baseType: !234, size: 64, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !236)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !62, line: 1864, size: 1536, align: 512, elements: !237)
!237 = !{!238, !2620, !2633, !2637, !2643, !2647, !2651, !2655, !2659, !2663, !2667, !2668, !2672, !2676, !2696, !2722, !2726, !2732, !2737, !2741, !2742}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !236, file: !62, line: 1865, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!242, !209, !242, !11}
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !244, line: 89, size: 1536, elements: !245)
!244 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!245 = !{!246, !247, !257, !265, !266, !289, !290, !294, !321, !392, !2604, !2605, !2606, !2612, !2613, !2614}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !243, file: !244, line: 91, baseType: !11, size: 32)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !243, file: !244, line: 92, baseType: !248, size: 32, offset: 32)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !249, line: 277, baseType: !250)
!249 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !249, line: 277, size: 32, elements: !251)
!251 = !{!252}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !250, file: !249, line: 277, baseType: !253, size: 32)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !249, line: 70, baseType: !254)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !249, line: 65, size: 32, elements: !255)
!255 = !{!256}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !254, file: !249, line: 66, baseType: !11, size: 32)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !243, file: !244, line: 93, baseType: !258, size: 128, offset: 64)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !259, line: 38, size: 128, elements: !260)
!259 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!260 = !{!261, !263}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !258, file: !259, line: 39, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !258, file: !259, line: 39, baseType: !264, size: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !243, file: !244, line: 94, baseType: !242, size: 64, offset: 192)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !243, file: !244, line: 95, baseType: !267, size: 128, offset: 256)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !244, line: 47, size: 128, elements: !268)
!268 = !{!269, !285}
!269 = !DIDerivedType(tag: DW_TAG_member, scope: !267, file: !244, line: 48, baseType: !270, size: 64)
!270 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !267, file: !244, line: 48, size: 64, elements: !271)
!271 = !{!272, !281}
!272 = !DIDerivedType(tag: DW_TAG_member, scope: !270, file: !244, line: 49, baseType: !273, size: 64)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !270, file: !244, line: 49, size: 64, elements: !274)
!274 = !{!275, !280}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !273, file: !244, line: 50, baseType: !276, size: 32)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !277, line: 21, baseType: !278)
!277 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !279, line: 27, baseType: !11)
!279 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!280 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !273, file: !244, line: 50, baseType: !276, size: 32, offset: 32)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !270, file: !244, line: 52, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !277, line: 23, baseType: !283)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !279, line: 31, baseType: !284)
!284 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !267, file: !244, line: 54, baseType: !286, size: 64, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !288)
!288 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !243, file: !244, line: 96, baseType: !209, size: 64, offset: 384)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !243, file: !244, line: 98, baseType: !291, size: 256, offset: 448)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 256, elements: !292)
!292 = !{!293}
!293 = !DISubrange(count: 32)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !243, file: !244, line: 101, baseType: !295, size: 32, offset: 704)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !296, line: 25, size: 32, elements: !297)
!296 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!297 = !{!298}
!298 = !DIDerivedType(tag: DW_TAG_member, scope: !295, file: !296, line: 26, baseType: !299, size: 32)
!299 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !295, file: !296, line: 26, size: 32, elements: !300)
!300 = !{!301}
!301 = !DIDerivedType(tag: DW_TAG_member, scope: !299, file: !296, line: 30, baseType: !302, size: 32)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !299, file: !296, line: 30, size: 32, elements: !303)
!303 = !{!304, !320}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !302, file: !296, line: 31, baseType: !305)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !306, line: 83, baseType: !307)
!306 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !306, line: 71, elements: !308)
!308 = !{!309}
!309 = !DIDerivedType(tag: DW_TAG_member, scope: !307, file: !306, line: 72, baseType: !310)
!310 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !307, file: !306, line: 72, elements: !311)
!311 = !{!312}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !310, file: !306, line: 73, baseType: !313)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !306, line: 20, elements: !314)
!314 = !{!315}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !313, file: !306, line: 21, baseType: !316)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !317, line: 25, baseType: !318)
!317 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !317, line: 25, elements: !319)
!319 = !{}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !302, file: !296, line: 32, baseType: !159, size: 32)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !243, file: !244, line: 102, baseType: !322, size: 64, offset: 768)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !324)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !244, line: 135, size: 1024, align: 512, elements: !325)
!325 = !{!326, !330, !331, !338, !344, !348, !352, !356, !357, !361, !366, !378, !386}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !324, file: !244, line: 136, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!159, !242, !11}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !324, file: !244, line: 137, baseType: !327, size: 64, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !324, file: !244, line: 138, baseType: !332, size: 64, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!159, !335, !337}
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !243)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !324, file: !244, line: 139, baseType: !339, size: 64, offset: 192)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{!159, !335, !11, !6, !342}
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !267)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !324, file: !244, line: 141, baseType: !345, size: 64, offset: 256)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{!159, !335}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !324, file: !244, line: 142, baseType: !349, size: 64, offset: 320)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DISubroutineType(types: !351)
!351 = !{!159, !242}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !324, file: !244, line: 143, baseType: !353, size: 64, offset: 384)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{null, !242}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !324, file: !244, line: 144, baseType: !353, size: 64, offset: 448)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !324, file: !244, line: 145, baseType: !358, size: 64, offset: 512)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !242, !209}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !324, file: !244, line: 146, baseType: !362, size: 64, offset: 576)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DISubroutineType(types: !364)
!364 = !{!365, !242, !365, !159}
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !324, file: !244, line: 147, baseType: !367, size: 64, offset: 640)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DISubroutineType(types: !369)
!369 = !{!370, !372}
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !244, line: 18, flags: DIFlagFwdDecl)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !374, line: 8, size: 128, elements: !375)
!374 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!375 = !{!376, !377}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !373, file: !374, line: 9, baseType: !370, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !373, file: !374, line: 10, baseType: !242, size: 64, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !324, file: !244, line: 148, baseType: !379, size: 64, offset: 704)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DISubroutineType(types: !381)
!381 = !{!159, !382, !384}
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !373)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !161, line: 30, baseType: !385)
!385 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !324, file: !244, line: 149, baseType: !387, size: 64, offset: 768)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DISubroutineType(types: !389)
!389 = !{!242, !242, !390}
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !243, file: !244, line: 103, baseType: !393, size: 64, offset: 832)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !62, line: 1416, size: 9472, elements: !395)
!395 = !{!396, !397, !400, !401, !402, !406, !457, !541, !643, !726, !730, !731, !732, !733, !734, !743, !744, !745, !750, !754, !755, !758, !762, !765, !766, !767, !808, !2533, !2534, !2535, !2536, !2537, !2538, !2541, !2543, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2571, !2572, !2573, !2574, !2575, !2578, !2579, !2580, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !394, file: !62, line: 1417, baseType: !167, size: 128)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !394, file: !62, line: 1418, baseType: !398, size: 32, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !161, line: 16, baseType: !399)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !161, line: 13, baseType: !276)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !394, file: !62, line: 1419, baseType: !288, size: 8, offset: 160)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !394, file: !62, line: 1420, baseType: !162, size: 64, offset: 192)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !394, file: !62, line: 1421, baseType: !403, size: 64, offset: 256)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !161, line: 46, baseType: !404)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !224, line: 88, baseType: !405)
!405 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !394, file: !62, line: 1422, baseType: !407, size: 64, offset: 320)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !62, line: 2228, size: 576, elements: !409)
!409 = !{!410, !411, !412, !418, !422, !426, !430, !434, !435, !445, !448, !449, !450, !454, !455, !456}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !408, file: !62, line: 2229, baseType: !6, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !408, file: !62, line: 2230, baseType: !159, size: 32, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !408, file: !62, line: 2238, baseType: !413, size: 64, offset: 128)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DISubroutineType(types: !415)
!415 = !{!159, !416}
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !62, line: 69, flags: DIFlagFwdDecl)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !408, file: !62, line: 2239, baseType: !419, size: 64, offset: 192)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !421)
!421 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !62, line: 70, flags: DIFlagFwdDecl)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !408, file: !62, line: 2240, baseType: !423, size: 64, offset: 256)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{!242, !407, !159, !6, !163}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !408, file: !62, line: 2242, baseType: !427, size: 64, offset: 320)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{null, !393}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !408, file: !62, line: 2243, baseType: !431, size: 64, offset: 384)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !433, line: 76, flags: DIFlagFwdDecl)
!433 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!434 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !408, file: !62, line: 2244, baseType: !407, size: 64, offset: 448)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !408, file: !62, line: 2245, baseType: !436, size: 64, offset: 512)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !161, line: 182, size: 64, elements: !437)
!437 = !{!438}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !436, file: !161, line: 183, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !161, line: 186, size: 128, elements: !441)
!441 = !{!442, !443}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !440, file: !161, line: 187, baseType: !439, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !440, file: !161, line: 187, baseType: !444, size: 64, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !408, file: !62, line: 2247, baseType: !446, offset: 576)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !447, line: 187, elements: !319)
!447 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!448 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !408, file: !62, line: 2248, baseType: !446, offset: 576)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !408, file: !62, line: 2249, baseType: !446, offset: 576)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !408, file: !62, line: 2250, baseType: !451, offset: 576)
!451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, elements: !452)
!452 = !{!453}
!453 = !DISubrange(count: 3)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !408, file: !62, line: 2252, baseType: !446, offset: 576)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !408, file: !62, line: 2253, baseType: !446, offset: 576)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !408, file: !62, line: 2254, baseType: !446, offset: 576)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !394, file: !62, line: 1423, baseType: !458, size: 64, offset: 384)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !460)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !62, line: 1935, size: 1472, elements: !461)
!461 = !{!462, !466, !470, !471, !475, !481, !485, !486, !487, !491, !495, !496, !497, !498, !504, !509, !510, !517, !518, !519, !520, !524, !540}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !460, file: !62, line: 1936, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!209, !393}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !460, file: !62, line: 1937, baseType: !467, size: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{null, !209}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !460, file: !62, line: 1938, baseType: !467, size: 64, offset: 128)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !460, file: !62, line: 1940, baseType: !472, size: 64, offset: 192)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !209, !159}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !460, file: !62, line: 1941, baseType: !476, size: 64, offset: 256)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!159, !209, !479}
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !32, line: 40, flags: DIFlagFwdDecl)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !460, file: !62, line: 1942, baseType: !482, size: 64, offset: 320)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!159, !209}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !460, file: !62, line: 1943, baseType: !467, size: 64, offset: 384)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !460, file: !62, line: 1944, baseType: !427, size: 64, offset: 448)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !460, file: !62, line: 1945, baseType: !488, size: 64, offset: 512)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{!159, !393, !159}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !460, file: !62, line: 1946, baseType: !492, size: 64, offset: 576)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{!159, !393}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !460, file: !62, line: 1947, baseType: !492, size: 64, offset: 640)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !460, file: !62, line: 1948, baseType: !492, size: 64, offset: 704)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !460, file: !62, line: 1949, baseType: !492, size: 64, offset: 768)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !460, file: !62, line: 1950, baseType: !499, size: 64, offset: 832)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!159, !242, !502}
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !62, line: 57, flags: DIFlagFwdDecl)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !460, file: !62, line: 1951, baseType: !505, size: 64, offset: 896)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{!159, !393, !508, !365}
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !460, file: !62, line: 1952, baseType: !427, size: 64, offset: 960)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !460, file: !62, line: 1954, baseType: !511, size: 64, offset: 1024)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DISubroutineType(types: !513)
!513 = !{!159, !514, !242}
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !516, line: 539, flags: DIFlagFwdDecl)
!516 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!517 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !460, file: !62, line: 1955, baseType: !511, size: 64, offset: 1088)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !460, file: !62, line: 1956, baseType: !511, size: 64, offset: 1152)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !460, file: !62, line: 1957, baseType: !511, size: 64, offset: 1216)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !460, file: !62, line: 1963, baseType: !521, size: 64, offset: 1280)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{!159, !393, !192, !160}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !460, file: !62, line: 1964, baseType: !525, size: 64, offset: 1344)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!528, !393, !529}
!528 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !531, line: 12, size: 256, elements: !532)
!531 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!532 = !{!533, !534, !535, !536, !537}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !530, file: !531, line: 13, baseType: !160, size: 32)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !530, file: !531, line: 16, baseType: !159, size: 32, offset: 32)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !530, file: !531, line: 23, baseType: !162, size: 64, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !530, file: !531, line: 30, baseType: !162, size: 64, offset: 128)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !530, file: !531, line: 33, baseType: !538, size: 64, offset: 192)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !194, line: 27, flags: DIFlagFwdDecl)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !460, file: !62, line: 1966, baseType: !525, size: 64, offset: 1408)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !394, file: !62, line: 1424, baseType: !542, size: 64, offset: 448)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !544)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !56, line: 322, size: 704, elements: !545)
!545 = !{!546, !612, !616, !620, !621, !622, !623, !624, !629, !634, !638}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !544, file: !56, line: 323, baseType: !547, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{!159, !550}
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !56, line: 294, size: 1600, elements: !552)
!552 = !{!553, !554, !555, !556, !557, !572, !573, !578, !579, !595, !596, !597}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !551, file: !56, line: 295, baseType: !440, size: 128)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !551, file: !56, line: 296, baseType: !167, size: 128, offset: 128)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !551, file: !56, line: 297, baseType: !167, size: 128, offset: 256)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !551, file: !56, line: 298, baseType: !167, size: 128, offset: 384)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !551, file: !56, line: 299, baseType: !558, size: 192, offset: 512)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !559, line: 53, size: 192, elements: !560)
!559 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!560 = !{!561, !570, !571}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !558, file: !559, line: 54, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !563, line: 13, baseType: !564)
!563 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !161, line: 175, baseType: !565)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !161, line: 173, size: 64, elements: !566)
!566 = !{!567}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !565, file: !161, line: 174, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !277, line: 22, baseType: !569)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !279, line: 30, baseType: !405)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !558, file: !559, line: 55, baseType: !305, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !558, file: !559, line: 59, baseType: !167, size: 128, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !551, file: !56, line: 300, baseType: !305, offset: 704)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !551, file: !56, line: 301, baseType: !574, size: 32, offset: 704)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !161, line: 168, baseType: !575)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !161, line: 166, size: 32, elements: !576)
!576 = !{!577}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !575, file: !161, line: 167, baseType: !159, size: 32)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !551, file: !56, line: 302, baseType: !393, size: 64, offset: 768)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !551, file: !56, line: 303, baseType: !580, size: 64, offset: 832)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !56, line: 68, size: 64, elements: !581)
!581 = !{!582, !594}
!582 = !DIDerivedType(tag: DW_TAG_member, scope: !580, file: !56, line: 69, baseType: !583, size: 32)
!583 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !580, file: !56, line: 69, size: 32, elements: !584)
!584 = !{!585, !586, !587}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !583, file: !56, line: 70, baseType: !217, size: 32)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !583, file: !56, line: 71, baseType: !226, size: 32)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !583, file: !56, line: 72, baseType: !588, size: 32)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !589, line: 24, baseType: !590)
!589 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !589, line: 22, size: 32, elements: !591)
!591 = !{!592}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !590, file: !589, line: 23, baseType: !593, size: 32)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !589, line: 20, baseType: !223)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !580, file: !56, line: 74, baseType: !55, size: 32, offset: 32)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !551, file: !56, line: 304, baseType: !403, size: 64, offset: 896)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !551, file: !56, line: 305, baseType: !162, size: 64, offset: 960)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !551, file: !56, line: 306, baseType: !598, size: 576, offset: 1024)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !56, line: 205, size: 576, elements: !599)
!599 = !{!600, !602, !603, !604, !605, !606, !607, !608, !611}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !598, file: !56, line: 206, baseType: !601, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !56, line: 66, baseType: !405)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !598, file: !56, line: 207, baseType: !601, size: 64, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !598, file: !56, line: 208, baseType: !601, size: 64, offset: 128)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !598, file: !56, line: 209, baseType: !601, size: 64, offset: 192)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !598, file: !56, line: 210, baseType: !601, size: 64, offset: 256)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !598, file: !56, line: 211, baseType: !601, size: 64, offset: 320)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !598, file: !56, line: 212, baseType: !601, size: 64, offset: 384)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !598, file: !56, line: 213, baseType: !609, size: 64, offset: 448)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !610, line: 8, baseType: !569)
!610 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!611 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !598, file: !56, line: 214, baseType: !609, size: 64, offset: 512)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !544, file: !56, line: 324, baseType: !613, size: 64, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{!550, !393, !159}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !544, file: !56, line: 325, baseType: !617, size: 64, offset: 128)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{null, !550}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !544, file: !56, line: 326, baseType: !547, size: 64, offset: 192)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !544, file: !56, line: 327, baseType: !547, size: 64, offset: 256)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !544, file: !56, line: 328, baseType: !547, size: 64, offset: 320)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !544, file: !56, line: 329, baseType: !488, size: 64, offset: 384)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !544, file: !56, line: 332, baseType: !625, size: 64, offset: 448)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{!628, !209}
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !544, file: !56, line: 333, baseType: !630, size: 64, offset: 512)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!159, !209, !633}
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !544, file: !56, line: 335, baseType: !635, size: 64, offset: 576)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!159, !209, !628}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !544, file: !56, line: 337, baseType: !639, size: 64, offset: 640)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!159, !393, !642}
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !394, file: !62, line: 1425, baseType: !644, size: 64, offset: 512)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !646)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !56, line: 428, size: 704, elements: !647)
!647 = !{!648, !652, !653, !657, !658, !659, !674, !697, !701, !702, !725}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !646, file: !56, line: 429, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{!159, !393, !159, !159, !382}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !646, file: !56, line: 430, baseType: !488, size: 64, offset: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !646, file: !56, line: 431, baseType: !654, size: 64, offset: 128)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!159, !393, !11}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !646, file: !56, line: 432, baseType: !654, size: 64, offset: 192)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !646, file: !56, line: 433, baseType: !488, size: 64, offset: 256)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !646, file: !56, line: 434, baseType: !660, size: 64, offset: 320)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{!159, !393, !159, !663}
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !56, line: 415, size: 256, elements: !665)
!665 = !{!666, !667, !668, !669, !670, !671, !672, !673}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !664, file: !56, line: 416, baseType: !159, size: 32)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !664, file: !56, line: 417, baseType: !11, size: 32, offset: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !664, file: !56, line: 418, baseType: !11, size: 32, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !664, file: !56, line: 420, baseType: !11, size: 32, offset: 96)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !664, file: !56, line: 421, baseType: !11, size: 32, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !664, file: !56, line: 422, baseType: !11, size: 32, offset: 160)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !664, file: !56, line: 423, baseType: !11, size: 32, offset: 192)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !664, file: !56, line: 424, baseType: !11, size: 32, offset: 224)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !646, file: !56, line: 435, baseType: !675, size: 64, offset: 384)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DISubroutineType(types: !677)
!677 = !{!159, !393, !580, !678}
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !56, line: 343, size: 960, elements: !680)
!680 = !{!681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !679, file: !56, line: 344, baseType: !159, size: 32)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !679, file: !56, line: 345, baseType: !282, size: 64, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !679, file: !56, line: 346, baseType: !282, size: 64, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !679, file: !56, line: 347, baseType: !282, size: 64, offset: 192)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !679, file: !56, line: 348, baseType: !282, size: 64, offset: 256)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !679, file: !56, line: 349, baseType: !282, size: 64, offset: 320)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !679, file: !56, line: 350, baseType: !282, size: 64, offset: 384)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !679, file: !56, line: 351, baseType: !568, size: 64, offset: 448)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !679, file: !56, line: 353, baseType: !568, size: 64, offset: 512)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !679, file: !56, line: 354, baseType: !159, size: 32, offset: 576)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !679, file: !56, line: 355, baseType: !159, size: 32, offset: 608)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !679, file: !56, line: 356, baseType: !282, size: 64, offset: 640)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !679, file: !56, line: 357, baseType: !282, size: 64, offset: 704)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !679, file: !56, line: 358, baseType: !282, size: 64, offset: 768)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !679, file: !56, line: 359, baseType: !568, size: 64, offset: 832)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !679, file: !56, line: 360, baseType: !159, size: 32, offset: 896)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !646, file: !56, line: 436, baseType: !698, size: 64, offset: 448)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{!159, !393, !642, !678}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !646, file: !56, line: 438, baseType: !675, size: 64, offset: 512)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !646, file: !56, line: 439, baseType: !703, size: 64, offset: 576)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DISubroutineType(types: !705)
!705 = !{!159, !393, !706}
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !56, line: 409, size: 1408, elements: !708)
!708 = !{!709, !710}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !707, file: !56, line: 410, baseType: !11, size: 32)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !707, file: !56, line: 411, baseType: !711, size: 1344, offset: 64)
!711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !712, size: 1344, elements: !452)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !56, line: 395, size: 448, elements: !713)
!713 = !{!714, !715, !716, !717, !718, !719, !720, !721, !722, !724}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !712, file: !56, line: 396, baseType: !11, size: 32)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !712, file: !56, line: 397, baseType: !11, size: 32, offset: 32)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !712, file: !56, line: 399, baseType: !11, size: 32, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !712, file: !56, line: 400, baseType: !11, size: 32, offset: 96)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !712, file: !56, line: 401, baseType: !11, size: 32, offset: 128)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !712, file: !56, line: 402, baseType: !11, size: 32, offset: 160)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !712, file: !56, line: 403, baseType: !11, size: 32, offset: 192)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !712, file: !56, line: 404, baseType: !284, size: 64, offset: 256)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !712, file: !56, line: 405, baseType: !723, size: 64, offset: 320)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !161, line: 126, baseType: !282)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !712, file: !56, line: 406, baseType: !723, size: 64, offset: 384)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !646, file: !56, line: 440, baseType: !654, size: 64, offset: 640)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !394, file: !62, line: 1426, baseType: !727, size: 64, offset: 576)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !729)
!729 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !62, line: 49, flags: DIFlagFwdDecl)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !394, file: !62, line: 1427, baseType: !162, size: 64, offset: 640)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !394, file: !62, line: 1428, baseType: !162, size: 64, offset: 704)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !394, file: !62, line: 1429, baseType: !162, size: 64, offset: 768)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !394, file: !62, line: 1430, baseType: !242, size: 64, offset: 832)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !394, file: !62, line: 1431, baseType: !735, size: 256, offset: 896)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !736, line: 35, size: 256, elements: !737)
!736 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!737 = !{!738, !739, !740, !742}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !735, file: !736, line: 36, baseType: !562, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !735, file: !736, line: 42, baseType: !562, size: 64, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !735, file: !736, line: 46, baseType: !741, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !306, line: 29, baseType: !313)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !735, file: !736, line: 47, baseType: !167, size: 128, offset: 128)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !394, file: !62, line: 1432, baseType: !159, size: 32, offset: 1152)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !394, file: !62, line: 1433, baseType: !574, size: 32, offset: 1184)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !394, file: !62, line: 1437, baseType: !746, size: 64, offset: 1216)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !749)
!749 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !62, line: 1437, flags: DIFlagFwdDecl)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !394, file: !62, line: 1449, baseType: !751, size: 64, offset: 1280)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !259, line: 34, size: 64, elements: !752)
!752 = !{!753}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !751, file: !259, line: 35, baseType: !262, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !394, file: !62, line: 1450, baseType: !167, size: 128, offset: 1344)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !394, file: !62, line: 1451, baseType: !756, size: 64, offset: 1472)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !62, line: 699, flags: DIFlagFwdDecl)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !394, file: !62, line: 1452, baseType: !759, size: 64, offset: 1536)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !761, line: 40, flags: DIFlagFwdDecl)
!761 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!762 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !394, file: !62, line: 1453, baseType: !763, size: 64, offset: 1600)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !62, line: 1453, flags: DIFlagFwdDecl)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !394, file: !62, line: 1454, baseType: !440, size: 128, offset: 1664)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !394, file: !62, line: 1455, baseType: !11, size: 32, offset: 1792)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !394, file: !62, line: 1456, baseType: !768, size: 2432, offset: 1856)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !56, line: 518, size: 2432, elements: !769)
!769 = !{!770, !771, !772, !774, !806}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !768, file: !56, line: 519, baseType: !11, size: 32)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !768, file: !56, line: 520, baseType: !735, size: 256, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !768, file: !56, line: 521, baseType: !773, size: 192, offset: 320)
!773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 192, elements: !452)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !768, file: !56, line: 522, baseType: !775, size: 1728, offset: 512)
!775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !776, size: 1728, elements: !452)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !56, line: 222, size: 576, elements: !777)
!777 = !{!778, !798, !799, !800, !801, !802, !803, !804, !805}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !776, file: !56, line: 223, baseType: !779, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !56, line: 443, size: 256, elements: !781)
!781 = !{!782, !783, !796, !797}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !780, file: !56, line: 444, baseType: !159, size: 32)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !780, file: !56, line: 445, baseType: !784, size: 64, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !786)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !56, line: 310, size: 512, elements: !787)
!787 = !{!788, !789, !790, !791, !792, !793, !794, !795}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !786, file: !56, line: 311, baseType: !488, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !786, file: !56, line: 312, baseType: !488, size: 64, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !786, file: !56, line: 313, baseType: !488, size: 64, offset: 128)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !786, file: !56, line: 314, baseType: !488, size: 64, offset: 192)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !786, file: !56, line: 315, baseType: !547, size: 64, offset: 256)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !786, file: !56, line: 316, baseType: !547, size: 64, offset: 320)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !786, file: !56, line: 317, baseType: !547, size: 64, offset: 384)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !786, file: !56, line: 318, baseType: !639, size: 64, offset: 448)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !780, file: !56, line: 446, baseType: !431, size: 64, offset: 128)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !780, file: !56, line: 447, baseType: !779, size: 64, offset: 192)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !776, file: !56, line: 224, baseType: !159, size: 32, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !776, file: !56, line: 226, baseType: !167, size: 128, offset: 128)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !776, file: !56, line: 227, baseType: !162, size: 64, offset: 256)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !776, file: !56, line: 228, baseType: !11, size: 32, offset: 320)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !776, file: !56, line: 229, baseType: !11, size: 32, offset: 352)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !776, file: !56, line: 230, baseType: !601, size: 64, offset: 384)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !776, file: !56, line: 231, baseType: !601, size: 64, offset: 448)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !776, file: !56, line: 232, baseType: !163, size: 64, offset: 512)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !768, file: !56, line: 523, baseType: !807, size: 192, offset: 2240)
!807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !784, size: 192, elements: !452)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !394, file: !62, line: 1458, baseType: !809, size: 2112, offset: 4288)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !62, line: 1410, size: 2112, elements: !810)
!810 = !{!811, !812, !819}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !809, file: !62, line: 1411, baseType: !159, size: 32)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !809, file: !62, line: 1412, baseType: !813, size: 128, offset: 64)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !814, line: 40, baseType: !815)
!814 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !814, line: 36, size: 128, elements: !816)
!816 = !{!817, !818}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !815, file: !814, line: 37, baseType: !305)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !815, file: !814, line: 38, baseType: !167, size: 128)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !809, file: !62, line: 1413, baseType: !820, size: 1920, offset: 192)
!820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !821, size: 1920, elements: !452)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !822, line: 12, size: 640, elements: !823)
!822 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!823 = !{!824, !840, !842, !2531, !2532}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !821, file: !822, line: 13, baseType: !825, size: 320)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !826, line: 17, size: 320, elements: !827)
!826 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!827 = !{!828, !829, !830, !831}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !825, file: !826, line: 18, baseType: !159, size: 32)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !825, file: !826, line: 19, baseType: !159, size: 32, offset: 32)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !825, file: !826, line: 20, baseType: !813, size: 128, offset: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !825, file: !826, line: 22, baseType: !832, size: 128, align: 64, offset: 192)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !161, line: 216, size: 128, align: 64, elements: !833)
!833 = !{!834, !836}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !832, file: !161, line: 217, baseType: !835, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !832, file: !161, line: 218, baseType: !837, size: 64, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{null, !835}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !821, file: !822, line: 14, baseType: !841, size: 64, offset: 320)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !821, file: !822, line: 15, baseType: !843, size: 64, offset: 384)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !844, line: 16, size: 64, elements: !845)
!844 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!845 = !{!846}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !843, file: !844, line: 17, baseType: !847, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !761, line: 640, size: 48640, elements: !849)
!849 = !{!850, !856, !858, !859, !865, !866, !867, !868, !869, !870, !871, !872, !876, !901, !912, !1004, !1005, !1006, !1017, !1018, !1020, !1021, !1840, !1841, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1918, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1933, !1934, !1935, !1937, !1938, !1939, !1940, !1941, !1942, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1966, !1971, !1972, !1973, !1974, !1975, !1979, !1982, !1985, !1988, !1991, !1994, !2095, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2143, !2144, !2145, !2146, !2147, !2152, !2153, !2154, !2157, !2158, !2161, !2164, !2167, !2168, !2208, !2211, !2212, !2291, !2292, !2295, !2296, !2299, !2300, !2301, !2305, !2306, !2307, !2320, !2321, !2322, !2332, !2337, !2338, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !848, file: !761, line: 646, baseType: !851, size: 128)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !852, line: 56, size: 128, elements: !853)
!852 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!853 = !{!854, !855}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !851, file: !852, line: 57, baseType: !162, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !851, file: !852, line: 58, baseType: !276, size: 32, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !848, file: !761, line: 649, baseType: !857, size: 64, offset: 128)
!857 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !528)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !848, file: !761, line: 657, baseType: !163, size: 64, offset: 192)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !848, file: !761, line: 658, baseType: !860, size: 32, offset: 256)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !861, line: 113, baseType: !862)
!861 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !861, line: 111, size: 32, elements: !863)
!863 = !{!864}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !862, file: !861, line: 112, baseType: !574, size: 32)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !848, file: !761, line: 660, baseType: !11, size: 32, offset: 288)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !848, file: !761, line: 661, baseType: !11, size: 32, offset: 320)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !848, file: !761, line: 684, baseType: !159, size: 32, offset: 352)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !848, file: !761, line: 686, baseType: !159, size: 32, offset: 384)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !848, file: !761, line: 687, baseType: !159, size: 32, offset: 416)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !848, file: !761, line: 688, baseType: !159, size: 32, offset: 448)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !848, file: !761, line: 689, baseType: !11, size: 32, offset: 480)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !848, file: !761, line: 691, baseType: !873, size: 64, offset: 512)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !875)
!875 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !761, line: 691, flags: DIFlagFwdDecl)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !848, file: !761, line: 692, baseType: !877, size: 832, offset: 576)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !761, line: 451, size: 832, elements: !878)
!878 = !{!879, !884, !892, !893, !894, !895, !896, !897, !898, !899}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !877, file: !761, line: 453, baseType: !880, size: 128)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !761, line: 325, size: 128, elements: !881)
!881 = !{!882, !883}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !880, file: !761, line: 326, baseType: !162, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !880, file: !761, line: 327, baseType: !276, size: 32, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !877, file: !761, line: 454, baseType: !885, size: 192, align: 64, offset: 128)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !886, line: 24, size: 192, align: 64, elements: !887)
!886 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!887 = !{!888, !889, !891}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !885, file: !886, line: 25, baseType: !162, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !885, file: !886, line: 26, baseType: !890, size: 64, offset: 64)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !885, file: !886, line: 27, baseType: !890, size: 64, offset: 128)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !877, file: !761, line: 455, baseType: !167, size: 128, offset: 320)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !877, file: !761, line: 456, baseType: !11, size: 32, offset: 448)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !877, file: !761, line: 458, baseType: !282, size: 64, offset: 512)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !877, file: !761, line: 459, baseType: !282, size: 64, offset: 576)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !877, file: !761, line: 460, baseType: !282, size: 64, offset: 640)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !877, file: !761, line: 461, baseType: !282, size: 64, offset: 704)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !877, file: !761, line: 463, baseType: !282, size: 64, offset: 768)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !877, file: !761, line: 465, baseType: !900, offset: 832)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !761, line: 415, elements: !319)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !848, file: !761, line: 693, baseType: !902, size: 384, offset: 1408)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !761, line: 489, size: 384, elements: !903)
!903 = !{!904, !905, !906, !907, !908, !909, !910}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !902, file: !761, line: 490, baseType: !167, size: 128)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !902, file: !761, line: 491, baseType: !162, size: 64, offset: 128)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !902, file: !761, line: 492, baseType: !162, size: 64, offset: 192)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !902, file: !761, line: 493, baseType: !11, size: 32, offset: 256)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !902, file: !761, line: 494, baseType: !214, size: 16, offset: 288)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !902, file: !761, line: 495, baseType: !214, size: 16, offset: 304)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !902, file: !761, line: 497, baseType: !911, size: 64, offset: 320)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !848, file: !761, line: 697, baseType: !913, size: 1792, offset: 1792)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !761, line: 507, size: 1792, elements: !914)
!914 = !{!915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !1001, !1002}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !913, file: !761, line: 508, baseType: !885, size: 192, align: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !913, file: !761, line: 515, baseType: !282, size: 64, offset: 192)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !913, file: !761, line: 516, baseType: !282, size: 64, offset: 256)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !913, file: !761, line: 517, baseType: !282, size: 64, offset: 320)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !913, file: !761, line: 518, baseType: !282, size: 64, offset: 384)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !913, file: !761, line: 519, baseType: !282, size: 64, offset: 448)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !913, file: !761, line: 526, baseType: !568, size: 64, offset: 512)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !913, file: !761, line: 527, baseType: !282, size: 64, offset: 576)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !913, file: !761, line: 528, baseType: !11, size: 32, offset: 640)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !913, file: !761, line: 554, baseType: !11, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !913, file: !761, line: 555, baseType: !11, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !913, file: !761, line: 556, baseType: !11, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !913, file: !761, line: 557, baseType: !11, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !913, file: !761, line: 563, baseType: !929, size: 512, offset: 704)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !38, line: 118, size: 512, elements: !930)
!930 = !{!931, !939, !940, !945, !995, !998, !999, !1000}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !929, file: !38, line: 119, baseType: !932, size: 256)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !933, line: 9, size: 256, elements: !934)
!933 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!934 = !{!935, !936}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !932, file: !933, line: 10, baseType: !885, size: 192, align: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !932, file: !933, line: 11, baseType: !937, size: 64, offset: 192)
!937 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !938, line: 29, baseType: !568)
!938 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !929, file: !38, line: 120, baseType: !937, size: 64, offset: 256)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !929, file: !38, line: 121, baseType: !941, size: 64, offset: 320)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DISubroutineType(types: !943)
!943 = !{!37, !944}
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !929, file: !38, line: 122, baseType: !946, size: 64, offset: 384)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !38, line: 159, size: 512, align: 512, elements: !948)
!948 = !{!949, !969, !970, !973, !978, !979, !990, !994}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !947, file: !38, line: 160, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !38, line: 214, size: 4608, align: 512, elements: !952)
!952 = !{!953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !951, file: !38, line: 215, baseType: !741)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !951, file: !38, line: 216, baseType: !11, size: 32)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !951, file: !38, line: 217, baseType: !11, size: 32, offset: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !951, file: !38, line: 218, baseType: !11, size: 32, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !951, file: !38, line: 219, baseType: !11, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !951, file: !38, line: 220, baseType: !11, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !951, file: !38, line: 221, baseType: !11, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !951, file: !38, line: 222, baseType: !11, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !951, file: !38, line: 233, baseType: !937, size: 64, offset: 128)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !951, file: !38, line: 234, baseType: !944, size: 64, offset: 192)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !951, file: !38, line: 235, baseType: !937, size: 64, offset: 256)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !951, file: !38, line: 236, baseType: !944, size: 64, offset: 320)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !951, file: !38, line: 237, baseType: !966, size: 4096, offset: 512)
!966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !947, size: 4096, elements: !967)
!967 = !{!968}
!968 = !DISubrange(count: 8)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !947, file: !38, line: 161, baseType: !11, size: 32, offset: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !947, file: !38, line: 162, baseType: !971, size: 32, offset: 96)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !161, line: 27, baseType: !972)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !224, line: 96, baseType: !159)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !947, file: !38, line: 163, baseType: !974, size: 32, offset: 128)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !249, line: 276, baseType: !975)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !249, line: 276, size: 32, elements: !976)
!976 = !{!977}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !975, file: !249, line: 276, baseType: !253, size: 32)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !947, file: !38, line: 164, baseType: !944, size: 64, offset: 192)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !947, file: !38, line: 165, baseType: !980, size: 128, offset: 256)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !933, line: 14, size: 128, elements: !981)
!981 = !{!982}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !980, file: !933, line: 15, baseType: !983, size: 128)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !886, line: 125, size: 128, elements: !984)
!984 = !{!985, !989}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !983, file: !886, line: 126, baseType: !986, size: 64)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !886, line: 31, size: 64, elements: !987)
!987 = !{!988}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !986, file: !886, line: 32, baseType: !890, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !983, file: !886, line: 127, baseType: !890, size: 64, offset: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !947, file: !38, line: 166, baseType: !991, size: 64, offset: 384)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DISubroutineType(types: !993)
!993 = !{!937}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !947, file: !38, line: 167, baseType: !937, size: 64, offset: 448)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !929, file: !38, line: 123, baseType: !996, size: 8, offset: 448)
!996 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !277, line: 17, baseType: !997)
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !279, line: 21, baseType: !288)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !929, file: !38, line: 124, baseType: !996, size: 8, offset: 456)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !929, file: !38, line: 125, baseType: !996, size: 8, offset: 464)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !929, file: !38, line: 126, baseType: !996, size: 8, offset: 472)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !913, file: !761, line: 572, baseType: !929, size: 512, offset: 1216)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !913, file: !761, line: 580, baseType: !1003, size: 64, offset: 1728)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !848, file: !761, line: 721, baseType: !11, size: 32, offset: 3584)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !848, file: !761, line: 722, baseType: !159, size: 32, offset: 3616)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !848, file: !761, line: 723, baseType: !1007, size: 64, offset: 3648)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1009)
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1010, line: 17, baseType: !1011)
!1010 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1010, line: 17, size: 64, elements: !1012)
!1012 = !{!1013}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1011, file: !1010, line: 17, baseType: !1014, size: 64)
!1014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 64, elements: !1015)
!1015 = !{!1016}
!1016 = !DISubrange(count: 1)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !848, file: !761, line: 724, baseType: !1009, size: 64, offset: 3712)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !848, file: !761, line: 749, baseType: !1019, offset: 3776)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !761, line: 290, elements: !319)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !848, file: !761, line: 751, baseType: !167, size: 128, offset: 3776)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !848, file: !761, line: 757, baseType: !1022, size: 64, offset: 3904)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !194, line: 388, size: 7296, elements: !1024)
!1024 = !{!1025, !1836}
!1025 = !DIDerivedType(tag: DW_TAG_member, scope: !1023, file: !194, line: 389, baseType: !1026, size: 7296)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1023, file: !194, line: 389, size: 7296, elements: !1027)
!1027 = !{!1028, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1754, !1760, !1763, !1786, !1787, !1809, !1810, !1813, !1814, !1815, !1818, !1819, !1820, !1823, !1835}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1026, file: !194, line: 390, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !194, line: 305, size: 1472, elements: !1031)
!1031 = !{!1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1046, !1047, !1052, !1053, !1056, !1141, !1142, !1702, !1703, !1704}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1030, file: !194, line: 308, baseType: !162, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1030, file: !194, line: 309, baseType: !162, size: 64, offset: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1030, file: !194, line: 313, baseType: !1029, size: 64, offset: 128)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1030, file: !194, line: 313, baseType: !1029, size: 64, offset: 192)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1030, file: !194, line: 315, baseType: !885, size: 192, align: 64, offset: 256)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1030, file: !194, line: 323, baseType: !162, size: 64, offset: 448)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1030, file: !194, line: 327, baseType: !1022, size: 64, offset: 512)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1030, file: !194, line: 333, baseType: !1040, size: 64, offset: 576)
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !516, line: 284, baseType: !1041)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !516, line: 284, size: 64, elements: !1042)
!1042 = !{!1043}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1041, file: !516, line: 284, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1045, line: 19, baseType: !162)
!1045 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1030, file: !194, line: 334, baseType: !162, size: 64, offset: 640)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1030, file: !194, line: 343, baseType: !1048, size: 256, offset: 704)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1030, file: !194, line: 340, size: 256, elements: !1049)
!1049 = !{!1050, !1051}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1048, file: !194, line: 341, baseType: !885, size: 192, align: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1048, file: !194, line: 342, baseType: !162, size: 64, offset: 192)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1030, file: !194, line: 351, baseType: !167, size: 128, offset: 960)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1030, file: !194, line: 353, baseType: !1054, size: 64, offset: 1088)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !194, line: 353, flags: DIFlagFwdDecl)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1030, file: !194, line: 356, baseType: !1057, size: 64, offset: 1152)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1059)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !32, line: 557, size: 832, elements: !1060)
!1060 = !{!1061, !1065, !1066, !1070, !1074, !1115, !1119, !1123, !1127, !1128, !1129, !1133, !1137}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1059, file: !32, line: 558, baseType: !1062, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{null, !1029}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1059, file: !32, line: 559, baseType: !1062, size: 64, offset: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1059, file: !32, line: 560, baseType: !1067, size: 64, offset: 128)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!159, !1029, !162}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1059, file: !32, line: 561, baseType: !1071, size: 64, offset: 192)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!159, !1029}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1059, file: !32, line: 562, baseType: !1075, size: 64, offset: 256)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!1078, !1079}
!1078 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !194, line: 682, baseType: !11)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !32, line: 508, size: 768, elements: !1081)
!1081 = !{!1082, !1083, !1084, !1085, !1086, !1087, !1094, !1101, !1107, !1108, !1109, !1111, !1113}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1080, file: !32, line: 509, baseType: !1029, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1080, file: !32, line: 510, baseType: !11, size: 32, offset: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1080, file: !32, line: 511, baseType: !160, size: 32, offset: 96)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1080, file: !32, line: 512, baseType: !162, size: 64, offset: 128)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1080, file: !32, line: 513, baseType: !162, size: 64, offset: 192)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1080, file: !32, line: 514, baseType: !1088, size: 64, offset: 256)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !516, line: 385, baseType: !1090)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !516, line: 385, size: 64, elements: !1091)
!1091 = !{!1092}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1090, file: !516, line: 385, baseType: !1093, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1045, line: 15, baseType: !162)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1080, file: !32, line: 516, baseType: !1095, size: 64, offset: 320)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !516, line: 359, baseType: !1097)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !516, line: 359, size: 64, elements: !1098)
!1098 = !{!1099}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1097, file: !516, line: 359, baseType: !1100, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1045, line: 16, baseType: !162)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1080, file: !32, line: 519, baseType: !1102, size: 64, offset: 384)
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1045, line: 21, baseType: !1103)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1045, line: 21, size: 64, elements: !1104)
!1104 = !{!1105}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1103, file: !1045, line: 21, baseType: !1106, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1045, line: 14, baseType: !162)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1080, file: !32, line: 521, baseType: !192, size: 64, offset: 448)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1080, file: !32, line: 522, baseType: !192, size: 64, offset: 512)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1080, file: !32, line: 528, baseType: !1110, size: 64, offset: 576)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1080, file: !32, line: 532, baseType: !1112, size: 64, offset: 640)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1080, file: !32, line: 536, baseType: !1114, size: 64, offset: 704)
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !516, line: 509, baseType: !192)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1059, file: !32, line: 563, baseType: !1116, size: 64, offset: 320)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{!1078, !1079, !31}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1059, file: !32, line: 565, baseType: !1120, size: 64, offset: 384)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{null, !1079, !162, !162}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1059, file: !32, line: 567, baseType: !1124, size: 64, offset: 448)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!162, !1029}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1059, file: !32, line: 571, baseType: !1075, size: 64, offset: 512)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1059, file: !32, line: 574, baseType: !1075, size: 64, offset: 576)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1059, file: !32, line: 579, baseType: !1130, size: 64, offset: 640)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!159, !1029, !162, !163, !159, !159}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1059, file: !32, line: 585, baseType: !1134, size: 64, offset: 704)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!6, !1029}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1059, file: !32, line: 615, baseType: !1138, size: 64, offset: 768)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!192, !1029, !162}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1030, file: !194, line: 359, baseType: !162, size: 64, offset: 1216)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1030, file: !194, line: 361, baseType: !1143, size: 64, offset: 1280)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !62, line: 916, size: 1856, align: 32, elements: !1145)
!1145 = !{!1146, !1156, !1157, !1158, !1458, !1459, !1460, !1461, !1462, !1464, !1465, !1466, !1496, !1684, !1693, !1694, !1695, !1696, !1697, !1698, !1701}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !1144, file: !62, line: 920, baseType: !1147, size: 128)
!1147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1144, file: !62, line: 917, size: 128, elements: !1148)
!1148 = !{!1149, !1155}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !1147, file: !62, line: 918, baseType: !1150, size: 64)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1151, line: 58, size: 64, elements: !1152)
!1151 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!1152 = !{!1153}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1150, file: !1151, line: 59, baseType: !1154, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !1147, file: !62, line: 919, baseType: !832, size: 128, align: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1144, file: !62, line: 921, baseType: !373, size: 128, offset: 128)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1144, file: !62, line: 922, baseType: !209, size: 64, offset: 256)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1144, file: !62, line: 923, baseType: !1159, size: 64, offset: 320)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1161)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !62, line: 1822, size: 2048, elements: !1162)
!1162 = !{!1163, !1164, !1168, !1179, !1183, !1251, !1252, !1256, !1269, !1270, !1278, !1282, !1283, !1287, !1288, !1292, !1297, !1298, !1302, !1306, !1415, !1419, !1423, !1427, !1428, !1432, !1436, !1441, !1445, !1449, !1453, !1457}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1161, file: !62, line: 1823, baseType: !431, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1161, file: !62, line: 1824, baseType: !1165, size: 64, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!403, !1143, !403, !159}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1161, file: !62, line: 1825, baseType: !1169, size: 64, offset: 128)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!1172, !1143, !365, !1175, !1178}
!1172 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !161, line: 60, baseType: !1173)
!1173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !224, line: 73, baseType: !1174)
!1174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !224, line: 15, baseType: !528)
!1175 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !161, line: 55, baseType: !1176)
!1176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !224, line: 72, baseType: !1177)
!1177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !224, line: 16, baseType: !162)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1161, file: !62, line: 1826, baseType: !1180, size: 64, offset: 192)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!1172, !1143, !6, !1175, !1178}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1161, file: !62, line: 1827, baseType: !1184, size: 64, offset: 256)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!1172, !1187, !1209}
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !62, line: 320, size: 384, elements: !1189)
!1189 = !{!1190, !1191, !1192, !1196, !1197, !1198, !1201, !1202}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1188, file: !62, line: 321, baseType: !1143, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1188, file: !62, line: 326, baseType: !403, size: 64, offset: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1188, file: !62, line: 327, baseType: !1193, size: 64, offset: 128)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{null, !1187, !528, !528}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1188, file: !62, line: 328, baseType: !163, size: 64, offset: 192)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1188, file: !62, line: 329, baseType: !159, size: 32, offset: 256)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1188, file: !62, line: 330, baseType: !1199, size: 16, offset: 288)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !277, line: 19, baseType: !1200)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !279, line: 24, baseType: !214)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1188, file: !62, line: 331, baseType: !1199, size: 16, offset: 304)
!1202 = !DIDerivedType(tag: DW_TAG_member, scope: !1188, file: !62, line: 332, baseType: !1203, size: 64, offset: 320)
!1203 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1188, file: !62, line: 332, size: 64, elements: !1204)
!1204 = !{!1205, !1206}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1203, file: !62, line: 333, baseType: !11, size: 32)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1203, file: !62, line: 334, baseType: !1207, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !62, line: 334, flags: DIFlagFwdDecl)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1211, line: 29, size: 320, elements: !1212)
!1211 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/lizy2001/genbc/linux")
!1212 = !{!1213, !1214, !1215, !1216, !1242}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1210, file: !1211, line: 35, baseType: !11, size: 32)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1210, file: !1211, line: 36, baseType: !1175, size: 64, offset: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1210, file: !1211, line: 37, baseType: !1175, size: 64, offset: 128)
!1216 = !DIDerivedType(tag: DW_TAG_member, scope: !1210, file: !1211, line: 38, baseType: !1217, size: 64, offset: 192)
!1217 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1210, file: !1211, line: 38, size: 64, elements: !1218)
!1218 = !{!1219, !1227, !1234, !1239}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "iov", scope: !1217, file: !1211, line: 39, baseType: !1220, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1222)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1223, line: 17, size: 128, elements: !1224)
!1223 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/lizy2001/genbc/linux")
!1224 = !{!1225, !1226}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1222, file: !1223, line: 19, baseType: !163, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1222, file: !1223, line: 20, baseType: !1176, size: 64, offset: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1217, file: !1211, line: 40, baseType: !1228, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1230)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1211, line: 15, size: 128, elements: !1231)
!1231 = !{!1232, !1233}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1230, file: !1211, line: 16, baseType: !163, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1230, file: !1211, line: 17, baseType: !1175, size: 64, offset: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1217, file: !1211, line: 41, baseType: !1235, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1237)
!1237 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1238, line: 45, flags: DIFlagFwdDecl)
!1238 = !DIFile(filename: "./include/xen/xen.h", directory: "/home/lizy2001/genbc/linux")
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !1217, file: !1211, line: 42, baseType: !1240, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !761, line: 53, flags: DIFlagFwdDecl)
!1242 = !DIDerivedType(tag: DW_TAG_member, scope: !1210, file: !1211, line: 44, baseType: !1243, size: 64, offset: 256)
!1243 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1210, file: !1211, line: 44, size: 64, elements: !1244)
!1244 = !{!1245, !1246}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1243, file: !1211, line: 45, baseType: !162, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, scope: !1243, file: !1211, line: 46, baseType: !1247, size: 64)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1243, file: !1211, line: 46, size: 64, elements: !1248)
!1248 = !{!1249, !1250}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1247, file: !1211, line: 47, baseType: !11, size: 32)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "start_head", scope: !1247, file: !1211, line: 48, baseType: !11, size: 32, offset: 32)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1161, file: !62, line: 1828, baseType: !1184, size: 64, offset: 320)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1161, file: !62, line: 1829, baseType: !1253, size: 64, offset: 384)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!159, !1187, !384}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !1161, file: !62, line: 1830, baseType: !1257, size: 64, offset: 448)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!159, !1143, !1260}
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !62, line: 1776, size: 128, elements: !1262)
!1262 = !{!1263, !1268}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1261, file: !62, line: 1777, baseType: !1264, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !62, line: 1773, baseType: !1265)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{!159, !1260, !6, !159, !403, !282, !11}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1261, file: !62, line: 1778, baseType: !403, size: 64, offset: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1161, file: !62, line: 1831, baseType: !1257, size: 64, offset: 512)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1161, file: !62, line: 1832, baseType: !1271, size: 64, offset: 576)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!1274, !1143, !1276}
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1275, line: 52, baseType: !11)
!1275 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !62, line: 56, flags: DIFlagFwdDecl)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1161, file: !62, line: 1833, baseType: !1279, size: 64, offset: 640)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!528, !1143, !11, !162}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1161, file: !62, line: 1834, baseType: !1279, size: 64, offset: 704)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1161, file: !62, line: 1835, baseType: !1284, size: 64, offset: 768)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!159, !1143, !1029}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1161, file: !62, line: 1836, baseType: !162, size: 64, offset: 832)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1161, file: !62, line: 1837, baseType: !1289, size: 64, offset: 896)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{!159, !209, !1143}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1161, file: !62, line: 1838, baseType: !1293, size: 64, offset: 960)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{!159, !1143, !1296}
!1296 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !62, line: 1007, baseType: !163)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1161, file: !62, line: 1839, baseType: !1289, size: 64, offset: 1024)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1161, file: !62, line: 1840, baseType: !1299, size: 64, offset: 1088)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!159, !1143, !403, !403, !159}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1161, file: !62, line: 1841, baseType: !1303, size: 64, offset: 1152)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!159, !159, !1143, !159}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1161, file: !62, line: 1842, baseType: !1307, size: 64, offset: 1216)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!159, !1143, !159, !1310}
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !62, line: 1062, size: 1664, elements: !1312)
!1312 = !{!1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1344, !1345, !1346, !1359, !1391}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !1311, file: !62, line: 1063, baseType: !1310, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !1311, file: !62, line: 1064, baseType: !167, size: 128, offset: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !1311, file: !62, line: 1065, baseType: !440, size: 128, offset: 192)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !1311, file: !62, line: 1066, baseType: !167, size: 128, offset: 320)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !1311, file: !62, line: 1069, baseType: !167, size: 128, offset: 448)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !1311, file: !62, line: 1072, baseType: !1296, size: 64, offset: 576)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !1311, file: !62, line: 1073, baseType: !11, size: 32, offset: 640)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !1311, file: !62, line: 1074, baseType: !288, size: 8, offset: 672)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !1311, file: !62, line: 1075, baseType: !11, size: 32, offset: 704)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !1311, file: !62, line: 1076, baseType: !159, size: 32, offset: 736)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !1311, file: !62, line: 1077, baseType: !813, size: 128, offset: 768)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !1311, file: !62, line: 1078, baseType: !1143, size: 64, offset: 896)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !1311, file: !62, line: 1079, baseType: !403, size: 64, offset: 960)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !1311, file: !62, line: 1080, baseType: !403, size: 64, offset: 1024)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !1311, file: !62, line: 1082, baseType: !1328, size: 64, offset: 1088)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !62, line: 1314, size: 320, elements: !1330)
!1330 = !{!1331, !1339, !1340, !1341, !1342, !1343}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !1329, file: !62, line: 1315, baseType: !1332)
!1332 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1333, line: 20, baseType: !1334)
!1333 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1333, line: 11, elements: !1335)
!1335 = !{!1336}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1334, file: !1333, line: 12, baseType: !1337)
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !317, line: 33, baseType: !1338)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !317, line: 31, elements: !319)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1329, file: !62, line: 1316, baseType: !159, size: 32)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !1329, file: !62, line: 1317, baseType: !159, size: 32, offset: 32)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !1329, file: !62, line: 1318, baseType: !1328, size: 64, offset: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !1329, file: !62, line: 1319, baseType: !1143, size: 64, offset: 128)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !1329, file: !62, line: 1320, baseType: !832, size: 128, align: 64, offset: 192)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !1311, file: !62, line: 1084, baseType: !162, size: 64, offset: 1152)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !1311, file: !62, line: 1085, baseType: !162, size: 64, offset: 1216)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !1311, file: !62, line: 1087, baseType: !1347, size: 64, offset: 1280)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1349)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !62, line: 1011, size: 128, elements: !1350)
!1350 = !{!1351, !1355}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !1349, file: !62, line: 1012, baseType: !1352, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{null, !1310, !1310}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !1349, file: !62, line: 1013, baseType: !1356, size: 64, offset: 64)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{null, !1310}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !1311, file: !62, line: 1088, baseType: !1360, size: 64, offset: 1344)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1362)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !62, line: 1016, size: 512, elements: !1363)
!1363 = !{!1364, !1368, !1372, !1373, !1377, !1381, !1385, !1390}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !1362, file: !62, line: 1017, baseType: !1365, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!1296, !1296}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !1362, file: !62, line: 1018, baseType: !1369, size: 64, offset: 64)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{null, !1296}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !1362, file: !62, line: 1019, baseType: !1356, size: 64, offset: 128)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !1362, file: !62, line: 1020, baseType: !1374, size: 64, offset: 192)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!159, !1310, !159}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !1362, file: !62, line: 1021, baseType: !1378, size: 64, offset: 256)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!384, !1310}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !1362, file: !62, line: 1022, baseType: !1382, size: 64, offset: 320)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!159, !1310, !159, !166}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !1362, file: !62, line: 1023, baseType: !1386, size: 64, offset: 384)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{null, !1310, !1389}
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !1362, file: !62, line: 1024, baseType: !1378, size: 64, offset: 448)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !1311, file: !62, line: 1097, baseType: !1392, size: 256, offset: 1408)
!1392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1311, file: !62, line: 1089, size: 256, elements: !1393)
!1393 = !{!1394, !1403, !1409}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !1392, file: !62, line: 1090, baseType: !1395, size: 256)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !1396, line: 10, size: 256, elements: !1397)
!1396 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!1397 = !{!1398, !1399, !1402}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1395, file: !1396, line: 11, baseType: !276, size: 32)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1395, file: !1396, line: 12, baseType: !1400, size: 64, offset: 64)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !1396, line: 5, flags: DIFlagFwdDecl)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1395, file: !1396, line: 13, baseType: !167, size: 128, offset: 128)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !1392, file: !62, line: 1091, baseType: !1404, size: 64)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !1396, line: 17, size: 64, elements: !1405)
!1405 = !{!1406}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1404, file: !1396, line: 18, baseType: !1407, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !1396, line: 16, flags: DIFlagFwdDecl)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !1392, file: !62, line: 1096, baseType: !1410, size: 192)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1392, file: !62, line: 1092, size: 192, elements: !1411)
!1411 = !{!1412, !1413, !1414}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1410, file: !62, line: 1093, baseType: !167, size: 128)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1410, file: !62, line: 1094, baseType: !159, size: 32, offset: 128)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !1410, file: !62, line: 1095, baseType: !11, size: 32, offset: 160)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !1161, file: !62, line: 1843, baseType: !1416, size: 64, offset: 1280)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!1172, !1143, !192, !159, !1175, !1178, !159}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1161, file: !62, line: 1844, baseType: !1420, size: 64, offset: 1344)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!162, !1143, !162, !162, !162, !162}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1161, file: !62, line: 1845, baseType: !1424, size: 64, offset: 1408)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!159, !159}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1161, file: !62, line: 1846, baseType: !1307, size: 64, offset: 1472)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1161, file: !62, line: 1847, baseType: !1429, size: 64, offset: 1536)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!1172, !1240, !1143, !1178, !1175, !11}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1161, file: !62, line: 1848, baseType: !1433, size: 64, offset: 1600)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!1172, !1143, !1178, !1240, !1175, !11}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1161, file: !62, line: 1849, baseType: !1437, size: 64, offset: 1664)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!159, !1143, !528, !1440, !1389}
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1161, file: !62, line: 1850, baseType: !1442, size: 64, offset: 1728)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!528, !1143, !159, !403, !403}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1161, file: !62, line: 1852, baseType: !1446, size: 64, offset: 1792)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{null, !514, !1143}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1161, file: !62, line: 1856, baseType: !1450, size: 64, offset: 1856)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!1172, !1143, !403, !1143, !403, !1175, !11}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1161, file: !62, line: 1858, baseType: !1454, size: 64, offset: 1920)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{!403, !1143, !403, !1143, !403, !403, !11}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1161, file: !62, line: 1861, baseType: !1299, size: 64, offset: 1984)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1144, file: !62, line: 929, baseType: !305, offset: 384)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !1144, file: !62, line: 930, baseType: !61, size: 32, offset: 384)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1144, file: !62, line: 931, baseType: !562, size: 64, offset: 448)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1144, file: !62, line: 932, baseType: !11, size: 32, offset: 512)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1144, file: !62, line: 933, baseType: !1463, size: 32, offset: 544)
!1463 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !161, line: 150, baseType: !11)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1144, file: !62, line: 934, baseType: !558, size: 192, offset: 576)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1144, file: !62, line: 935, baseType: !403, size: 64, offset: 768)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1144, file: !62, line: 936, baseType: !1467, size: 192, offset: 832)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !62, line: 885, size: 192, elements: !1468)
!1468 = !{!1469, !1470, !1492, !1493, !1494, !1495}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1467, file: !62, line: 886, baseType: !1332)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1467, file: !62, line: 887, baseType: !1471, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !71, line: 59, size: 768, elements: !1473)
!1473 = !{!1474, !1475, !1476, !1477, !1481, !1482, !1483, !1484}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1472, file: !71, line: 61, baseType: !860, size: 32)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1472, file: !71, line: 62, baseType: !11, size: 32, offset: 32)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1472, file: !71, line: 63, baseType: !305, offset: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1472, file: !71, line: 65, baseType: !1478, size: 256, offset: 64)
!1478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !436, size: 256, elements: !1479)
!1479 = !{!1480}
!1480 = !DISubrange(count: 4)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1472, file: !71, line: 66, baseType: !436, size: 64, offset: 320)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1472, file: !71, line: 68, baseType: !813, size: 128, offset: 384)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1472, file: !71, line: 69, baseType: !832, size: 128, align: 64, offset: 512)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1472, file: !71, line: 70, baseType: !1485, size: 128, offset: 640)
!1485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1486, size: 128, elements: !1015)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !71, line: 54, size: 128, elements: !1487)
!1487 = !{!1488, !1489}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1486, file: !71, line: 55, baseType: !159, size: 32)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1486, file: !71, line: 56, baseType: !1490, size: 64, offset: 64)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !71, line: 56, flags: DIFlagFwdDecl)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1467, file: !62, line: 888, baseType: !70, size: 32, offset: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1467, file: !62, line: 889, baseType: !217, size: 32, offset: 96)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1467, file: !62, line: 889, baseType: !217, size: 32, offset: 128)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1467, file: !62, line: 890, baseType: !159, size: 32, offset: 160)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1144, file: !62, line: 937, baseType: !1497, size: 64, offset: 1024)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1499)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1500, line: 111, size: 1280, elements: !1501)
!1500 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1501 = !{!1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1521, !1522, !1523, !1524, !1525, !1526, !1637, !1638, !1639, !1640, !1666, !1669, !1679}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1499, file: !1500, line: 112, baseType: !574, size: 32)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1499, file: !1500, line: 120, baseType: !217, size: 32, offset: 32)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1499, file: !1500, line: 121, baseType: !226, size: 32, offset: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1499, file: !1500, line: 122, baseType: !217, size: 32, offset: 96)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1499, file: !1500, line: 123, baseType: !226, size: 32, offset: 128)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1499, file: !1500, line: 124, baseType: !217, size: 32, offset: 160)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1499, file: !1500, line: 125, baseType: !226, size: 32, offset: 192)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1499, file: !1500, line: 126, baseType: !217, size: 32, offset: 224)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1499, file: !1500, line: 127, baseType: !226, size: 32, offset: 256)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1499, file: !1500, line: 128, baseType: !11, size: 32, offset: 288)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1499, file: !1500, line: 129, baseType: !1513, size: 64, offset: 320)
!1513 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1514, line: 26, baseType: !1515)
!1514 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1514, line: 24, size: 64, elements: !1516)
!1516 = !{!1517}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1515, file: !1514, line: 25, baseType: !1518, size: 64)
!1518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 64, elements: !1519)
!1519 = !{!1520}
!1520 = !DISubrange(count: 2)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1499, file: !1500, line: 130, baseType: !1513, size: 64, offset: 384)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1499, file: !1500, line: 131, baseType: !1513, size: 64, offset: 448)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1499, file: !1500, line: 132, baseType: !1513, size: 64, offset: 512)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1499, file: !1500, line: 133, baseType: !1513, size: 64, offset: 576)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1499, file: !1500, line: 135, baseType: !288, size: 8, offset: 640)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1499, file: !1500, line: 137, baseType: !1527, size: 64, offset: 704)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1529, line: 189, size: 1664, elements: !1530)
!1529 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1530 = !{!1531, !1532, !1537, !1542, !1543, !1546, !1547, !1552, !1553, !1554, !1555, !1558, !1559, !1560, !1562, !1563, !1601, !1622}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1528, file: !1529, line: 190, baseType: !860, size: 32)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1528, file: !1529, line: 191, baseType: !1533, size: 32, offset: 32)
!1533 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1529, line: 28, baseType: !1534)
!1534 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !161, line: 98, baseType: !1535)
!1535 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !277, line: 20, baseType: !1536)
!1536 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !279, line: 26, baseType: !159)
!1537 = !DIDerivedType(tag: DW_TAG_member, scope: !1528, file: !1529, line: 192, baseType: !1538, size: 192, offset: 64)
!1538 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1528, file: !1529, line: 192, size: 192, elements: !1539)
!1539 = !{!1540, !1541}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1538, file: !1529, line: 193, baseType: !167, size: 128)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1538, file: !1529, line: 194, baseType: !885, size: 192, align: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1528, file: !1529, line: 199, baseType: !735, size: 256, offset: 256)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1528, file: !1529, line: 200, baseType: !1544, size: 64, offset: 512)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1529, line: 200, flags: DIFlagFwdDecl)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1528, file: !1529, line: 201, baseType: !163, size: 64, offset: 576)
!1547 = !DIDerivedType(tag: DW_TAG_member, scope: !1528, file: !1529, line: 202, baseType: !1548, size: 64, offset: 640)
!1548 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1528, file: !1529, line: 202, size: 64, elements: !1549)
!1549 = !{!1550, !1551}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1548, file: !1529, line: 203, baseType: !609, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1548, file: !1529, line: 204, baseType: !609, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1528, file: !1529, line: 206, baseType: !609, size: 64, offset: 704)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1528, file: !1529, line: 207, baseType: !217, size: 32, offset: 768)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1528, file: !1529, line: 208, baseType: !226, size: 32, offset: 800)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1528, file: !1529, line: 209, baseType: !1556, size: 32, offset: 832)
!1556 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1529, line: 31, baseType: !1557)
!1557 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !161, line: 104, baseType: !276)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1528, file: !1529, line: 210, baseType: !214, size: 16, offset: 864)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1528, file: !1529, line: 211, baseType: !214, size: 16, offset: 880)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1528, file: !1529, line: 215, baseType: !1561, size: 16, offset: 896)
!1561 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1528, file: !1529, line: 222, baseType: !162, size: 64, offset: 960)
!1563 = !DIDerivedType(tag: DW_TAG_member, scope: !1528, file: !1529, line: 239, baseType: !1564, size: 320, offset: 1024)
!1564 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1528, file: !1529, line: 239, size: 320, elements: !1565)
!1565 = !{!1566, !1593}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1564, file: !1529, line: 240, baseType: !1567, size: 320)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1529, line: 108, size: 320, elements: !1568)
!1568 = !{!1569, !1570, !1582, !1585, !1592}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1567, file: !1529, line: 110, baseType: !162, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, scope: !1567, file: !1529, line: 111, baseType: !1571, size: 64, offset: 64)
!1571 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1567, file: !1529, line: 111, size: 64, elements: !1572)
!1572 = !{!1573, !1581}
!1573 = !DIDerivedType(tag: DW_TAG_member, scope: !1571, file: !1529, line: 112, baseType: !1574, size: 64)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1571, file: !1529, line: 112, size: 64, elements: !1575)
!1575 = !{!1576, !1577}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1574, file: !1529, line: 114, baseType: !1199, size: 16)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1574, file: !1529, line: 115, baseType: !1578, size: 48, offset: 16)
!1578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 48, elements: !1579)
!1579 = !{!1580}
!1580 = !DISubrange(count: 6)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1571, file: !1529, line: 121, baseType: !162, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1567, file: !1529, line: 123, baseType: !1583, size: 64, offset: 128)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1529, line: 96, flags: DIFlagFwdDecl)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1567, file: !1529, line: 124, baseType: !1586, size: 64, offset: 192)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1529, line: 102, size: 192, elements: !1588)
!1588 = !{!1589, !1590, !1591}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1587, file: !1529, line: 103, baseType: !832, size: 128, align: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1587, file: !1529, line: 104, baseType: !860, size: 32, offset: 128)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1587, file: !1529, line: 105, baseType: !384, size: 8, offset: 160)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1567, file: !1529, line: 125, baseType: !6, size: 64, offset: 256)
!1593 = !DIDerivedType(tag: DW_TAG_member, scope: !1564, file: !1529, line: 241, baseType: !1594, size: 320)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1564, file: !1529, line: 241, size: 320, elements: !1595)
!1595 = !{!1596, !1597, !1598, !1599, !1600}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1594, file: !1529, line: 242, baseType: !162, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1594, file: !1529, line: 243, baseType: !162, size: 64, offset: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1594, file: !1529, line: 244, baseType: !1583, size: 64, offset: 128)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1594, file: !1529, line: 245, baseType: !1586, size: 64, offset: 192)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1594, file: !1529, line: 246, baseType: !365, size: 64, offset: 256)
!1601 = !DIDerivedType(tag: DW_TAG_member, scope: !1528, file: !1529, line: 254, baseType: !1602, size: 256, offset: 1344)
!1602 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1528, file: !1529, line: 254, size: 256, elements: !1603)
!1603 = !{!1604, !1610}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1602, file: !1529, line: 255, baseType: !1605, size: 256)
!1605 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1529, line: 128, size: 256, elements: !1606)
!1606 = !{!1607, !1608}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1605, file: !1529, line: 129, baseType: !163, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1605, file: !1529, line: 130, baseType: !1609, size: 256)
!1609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 256, elements: !1479)
!1610 = !DIDerivedType(tag: DW_TAG_member, scope: !1602, file: !1529, line: 256, baseType: !1611, size: 256)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1602, file: !1529, line: 256, size: 256, elements: !1612)
!1612 = !{!1613, !1614}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1611, file: !1529, line: 258, baseType: !167, size: 128)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1611, file: !1529, line: 259, baseType: !1615, size: 128, offset: 128)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1616, line: 22, size: 128, elements: !1617)
!1616 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1617 = !{!1618, !1621}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1615, file: !1616, line: 23, baseType: !1619, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1616, line: 23, flags: DIFlagFwdDecl)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1615, file: !1616, line: 24, baseType: !162, size: 64, offset: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1528, file: !1529, line: 274, baseType: !1623, size: 64, offset: 1600)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1529, line: 170, size: 192, elements: !1625)
!1625 = !{!1626, !1635, !1636}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1624, file: !1529, line: 171, baseType: !1627, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1529, line: 165, baseType: !1628)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{!159, !1527, !1631, !1633, !1527}
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1584)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1605)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1624, file: !1529, line: 172, baseType: !1527, size: 64, offset: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1624, file: !1529, line: 173, baseType: !1583, size: 64, offset: 128)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1499, file: !1500, line: 138, baseType: !1527, size: 64, offset: 768)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1499, file: !1500, line: 139, baseType: !1527, size: 64, offset: 832)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1499, file: !1500, line: 140, baseType: !1527, size: 64, offset: 896)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1499, file: !1500, line: 145, baseType: !1641, size: 64, offset: 960)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1643, line: 13, size: 896, elements: !1644)
!1643 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1644 = !{!1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1642, file: !1643, line: 14, baseType: !860, size: 32)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1642, file: !1643, line: 15, baseType: !574, size: 32, offset: 32)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1642, file: !1643, line: 16, baseType: !574, size: 32, offset: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1642, file: !1643, line: 21, baseType: !562, size: 64, offset: 128)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1642, file: !1643, line: 27, baseType: !162, size: 64, offset: 192)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1642, file: !1643, line: 28, baseType: !162, size: 64, offset: 256)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1642, file: !1643, line: 29, baseType: !562, size: 64, offset: 320)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1642, file: !1643, line: 32, baseType: !440, size: 128, offset: 384)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1642, file: !1643, line: 33, baseType: !217, size: 32, offset: 512)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1642, file: !1643, line: 37, baseType: !562, size: 64, offset: 576)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1642, file: !1643, line: 44, baseType: !1656, size: 256, offset: 640)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1657, line: 15, size: 256, elements: !1658)
!1657 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1658 = !{!1659, !1660, !1661, !1662, !1663, !1664, !1665}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1656, file: !1657, line: 16, baseType: !741)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1656, file: !1657, line: 18, baseType: !159, size: 32)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1656, file: !1657, line: 19, baseType: !159, size: 32, offset: 32)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1656, file: !1657, line: 20, baseType: !159, size: 32, offset: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1656, file: !1657, line: 21, baseType: !159, size: 32, offset: 96)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1656, file: !1657, line: 22, baseType: !162, size: 64, offset: 128)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1656, file: !1657, line: 23, baseType: !162, size: 64, offset: 192)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1499, file: !1500, line: 146, baseType: !1667, size: 64, offset: 1024)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !194, line: 516, flags: DIFlagFwdDecl)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1499, file: !1500, line: 147, baseType: !1670, size: 64, offset: 1088)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1500, line: 25, size: 64, elements: !1672)
!1672 = !{!1673, !1674, !1675}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1671, file: !1500, line: 26, baseType: !574, size: 32)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1671, file: !1500, line: 27, baseType: !159, size: 32, offset: 32)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1671, file: !1500, line: 28, baseType: !1676, offset: 64)
!1676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, elements: !1677)
!1677 = !{!1678}
!1678 = !DISubrange(count: 0)
!1679 = !DIDerivedType(tag: DW_TAG_member, scope: !1499, file: !1500, line: 149, baseType: !1680, size: 128, offset: 1152)
!1680 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1499, file: !1500, line: 149, size: 128, elements: !1681)
!1681 = !{!1682, !1683}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1680, file: !1500, line: 150, baseType: !159, size: 32)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1680, file: !1500, line: 151, baseType: !832, size: 128, align: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1144, file: !62, line: 938, baseType: !1685, size: 256, offset: 1088)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !62, line: 896, size: 256, elements: !1686)
!1686 = !{!1687, !1688, !1689, !1690, !1691, !1692}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1685, file: !62, line: 897, baseType: !162, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1685, file: !62, line: 898, baseType: !11, size: 32, offset: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1685, file: !62, line: 899, baseType: !11, size: 32, offset: 96)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1685, file: !62, line: 902, baseType: !11, size: 32, offset: 128)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1685, file: !62, line: 903, baseType: !11, size: 32, offset: 160)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1685, file: !62, line: 904, baseType: !403, size: 64, offset: 192)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1144, file: !62, line: 940, baseType: !282, size: 64, offset: 1344)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1144, file: !62, line: 945, baseType: !163, size: 64, offset: 1408)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !1144, file: !62, line: 949, baseType: !167, size: 128, offset: 1472)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !1144, file: !62, line: 950, baseType: !167, size: 128, offset: 1600)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1144, file: !62, line: 952, baseType: !205, size: 64, offset: 1728)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1144, file: !62, line: 953, baseType: !1699, size: 32, offset: 1792)
!1699 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1700, line: 8, baseType: !276)
!1700 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1144, file: !62, line: 954, baseType: !1699, size: 32, offset: 1824)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1030, file: !194, line: 362, baseType: !163, size: 64, offset: 1344)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1030, file: !194, line: 365, baseType: !562, size: 64, offset: 1408)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1030, file: !194, line: 373, baseType: !1705, offset: 1472)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !194, line: 296, elements: !319)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1026, file: !194, line: 391, baseType: !986, size: 64, offset: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1026, file: !194, line: 392, baseType: !282, size: 64, offset: 128)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1026, file: !194, line: 394, baseType: !1420, size: 64, offset: 192)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1026, file: !194, line: 398, baseType: !162, size: 64, offset: 256)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1026, file: !194, line: 399, baseType: !162, size: 64, offset: 320)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1026, file: !194, line: 405, baseType: !162, size: 64, offset: 384)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1026, file: !194, line: 406, baseType: !162, size: 64, offset: 448)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1026, file: !194, line: 407, baseType: !1714, size: 64, offset: 512)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !516, line: 286, baseType: !1716)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !516, line: 286, size: 64, elements: !1717)
!1717 = !{!1718}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1716, file: !516, line: 286, baseType: !1719, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1045, line: 18, baseType: !162)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1026, file: !194, line: 416, baseType: !574, size: 32, offset: 576)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1026, file: !194, line: 428, baseType: !574, size: 32, offset: 608)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1026, file: !194, line: 437, baseType: !574, size: 32, offset: 640)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1026, file: !194, line: 447, baseType: !574, size: 32, offset: 672)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1026, file: !194, line: 450, baseType: !562, size: 64, offset: 704)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1026, file: !194, line: 452, baseType: !159, size: 32, offset: 768)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1026, file: !194, line: 454, baseType: !305, offset: 800)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1026, file: !194, line: 457, baseType: !735, size: 256, offset: 832)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1026, file: !194, line: 459, baseType: !167, size: 128, offset: 1088)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1026, file: !194, line: 466, baseType: !162, size: 64, offset: 1216)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1026, file: !194, line: 467, baseType: !162, size: 64, offset: 1280)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1026, file: !194, line: 469, baseType: !162, size: 64, offset: 1344)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1026, file: !194, line: 470, baseType: !162, size: 64, offset: 1408)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1026, file: !194, line: 471, baseType: !564, size: 64, offset: 1472)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1026, file: !194, line: 472, baseType: !162, size: 64, offset: 1536)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1026, file: !194, line: 473, baseType: !162, size: 64, offset: 1600)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1026, file: !194, line: 474, baseType: !162, size: 64, offset: 1664)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1026, file: !194, line: 475, baseType: !162, size: 64, offset: 1728)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1026, file: !194, line: 477, baseType: !305, offset: 1792)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1026, file: !194, line: 478, baseType: !162, size: 64, offset: 1792)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1026, file: !194, line: 478, baseType: !162, size: 64, offset: 1856)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1026, file: !194, line: 478, baseType: !162, size: 64, offset: 1920)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1026, file: !194, line: 478, baseType: !162, size: 64, offset: 1984)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1026, file: !194, line: 479, baseType: !162, size: 64, offset: 2048)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1026, file: !194, line: 479, baseType: !162, size: 64, offset: 2112)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1026, file: !194, line: 479, baseType: !162, size: 64, offset: 2176)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1026, file: !194, line: 480, baseType: !162, size: 64, offset: 2240)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1026, file: !194, line: 480, baseType: !162, size: 64, offset: 2304)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1026, file: !194, line: 480, baseType: !162, size: 64, offset: 2368)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1026, file: !194, line: 480, baseType: !162, size: 64, offset: 2432)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1026, file: !194, line: 482, baseType: !1751, size: 2816, offset: 2496)
!1751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 2816, elements: !1752)
!1752 = !{!1753}
!1753 = !DISubrange(count: 44)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1026, file: !194, line: 488, baseType: !1755, size: 256, offset: 5312)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1756, line: 60, size: 256, elements: !1757)
!1756 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1757 = !{!1758}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1755, file: !1756, line: 61, baseType: !1759, size: 256)
!1759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !562, size: 256, elements: !1479)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1026, file: !194, line: 490, baseType: !1761, size: 64, offset: 5568)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !194, line: 490, flags: DIFlagFwdDecl)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1026, file: !194, line: 493, baseType: !1764, size: 896, offset: 5632)
!1764 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1765, line: 53, baseType: !1766)
!1765 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1765, line: 13, size: 896, elements: !1767)
!1767 = !{!1768, !1769, !1770, !1771, !1774, !1775, !1776, !1777, !1781, !1782, !1783}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1766, file: !1765, line: 18, baseType: !282, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1766, file: !1765, line: 28, baseType: !564, size: 64, offset: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1766, file: !1765, line: 31, baseType: !735, size: 256, offset: 128)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1766, file: !1765, line: 32, baseType: !1772, size: 64, offset: 384)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1765, line: 32, flags: DIFlagFwdDecl)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1766, file: !1765, line: 37, baseType: !214, size: 16, offset: 448)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1766, file: !1765, line: 40, baseType: !558, size: 192, offset: 512)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1766, file: !1765, line: 41, baseType: !163, size: 64, offset: 704)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1766, file: !1765, line: 42, baseType: !1778, size: 64, offset: 768)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1780)
!1780 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1765, line: 42, flags: DIFlagFwdDecl)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1766, file: !1765, line: 44, baseType: !574, size: 32, offset: 832)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1766, file: !1765, line: 50, baseType: !1199, size: 16, offset: 864)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1766, file: !1765, line: 51, baseType: !1784, size: 16, offset: 880)
!1784 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !277, line: 18, baseType: !1785)
!1785 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !279, line: 23, baseType: !1561)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1026, file: !194, line: 495, baseType: !162, size: 64, offset: 6528)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1026, file: !194, line: 497, baseType: !1788, size: 64, offset: 6592)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !194, line: 381, size: 384, elements: !1790)
!1790 = !{!1791, !1792, !1798}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1789, file: !194, line: 382, baseType: !574, size: 32)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1789, file: !194, line: 383, baseType: !1793, size: 128, offset: 64)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !194, line: 376, size: 128, elements: !1794)
!1794 = !{!1795, !1796}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1793, file: !194, line: 377, baseType: !847, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1793, file: !194, line: 378, baseType: !1797, size: 64, offset: 64)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1789, file: !194, line: 384, baseType: !1799, size: 192, offset: 192)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1800, line: 26, size: 192, elements: !1801)
!1800 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1801 = !{!1802, !1803}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1799, file: !1800, line: 27, baseType: !11, size: 32)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1799, file: !1800, line: 28, baseType: !1804, size: 128, offset: 64)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1805, line: 43, size: 128, elements: !1806)
!1805 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1806 = !{!1807, !1808}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1804, file: !1805, line: 44, baseType: !741)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1804, file: !1805, line: 45, baseType: !167, size: 128)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1026, file: !194, line: 500, baseType: !305, offset: 6656)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1026, file: !194, line: 501, baseType: !1811, size: 64, offset: 6656)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !194, line: 387, flags: DIFlagFwdDecl)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1026, file: !194, line: 516, baseType: !1667, size: 64, offset: 6720)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1026, file: !194, line: 519, baseType: !1143, size: 64, offset: 6784)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1026, file: !194, line: 521, baseType: !1816, size: 64, offset: 6848)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !194, line: 521, flags: DIFlagFwdDecl)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1026, file: !194, line: 545, baseType: !574, size: 32, offset: 6912)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1026, file: !194, line: 548, baseType: !384, size: 8, offset: 6944)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1026, file: !194, line: 550, baseType: !1821, offset: 6952)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1822, line: 142, elements: !319)
!1822 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1026, file: !194, line: 554, baseType: !1824, size: 256, offset: 6976)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1825, line: 102, size: 256, elements: !1826)
!1825 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1826 = !{!1827, !1828, !1829}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1824, file: !1825, line: 103, baseType: !562, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1824, file: !1825, line: 104, baseType: !167, size: 128, offset: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1824, file: !1825, line: 105, baseType: !1830, size: 64, offset: 192)
!1830 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1825, line: 21, baseType: !1831)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{null, !1834}
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1026, file: !194, line: 557, baseType: !276, size: 32, offset: 7232)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1023, file: !194, line: 565, baseType: !1837, offset: 7296)
!1837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, elements: !1838)
!1838 = !{!1839}
!1839 = !DISubrange(count: -1)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !848, file: !761, line: 758, baseType: !1022, size: 64, offset: 3968)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !848, file: !761, line: 761, baseType: !1842, size: 320, offset: 4032)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1756, line: 34, size: 320, elements: !1843)
!1843 = !{!1844, !1845}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1842, file: !1756, line: 35, baseType: !282, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1842, file: !1756, line: 36, baseType: !1846, size: 256, offset: 64)
!1846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1029, size: 256, elements: !1479)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !848, file: !761, line: 766, baseType: !159, size: 32, offset: 4352)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !848, file: !761, line: 767, baseType: !159, size: 32, offset: 4384)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !848, file: !761, line: 768, baseType: !159, size: 32, offset: 4416)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !848, file: !761, line: 770, baseType: !159, size: 32, offset: 4448)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !848, file: !761, line: 772, baseType: !162, size: 64, offset: 4480)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !848, file: !761, line: 775, baseType: !11, size: 32, offset: 4544)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !848, file: !761, line: 778, baseType: !11, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !848, file: !761, line: 779, baseType: !11, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !848, file: !761, line: 780, baseType: !11, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !848, file: !761, line: 803, baseType: !11, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !848, file: !761, line: 806, baseType: !11, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !848, file: !761, line: 807, baseType: !11, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !848, file: !761, line: 809, baseType: !11, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !848, file: !761, line: 815, baseType: !11, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !848, file: !761, line: 831, baseType: !162, size: 64, offset: 4672)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !848, file: !761, line: 833, baseType: !1863, size: 384, offset: 4736)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !43, line: 25, size: 384, elements: !1864)
!1864 = !{!1865, !1870}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1863, file: !43, line: 26, baseType: !1866, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!528, !1869}
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, scope: !1863, file: !43, line: 27, baseType: !1871, size: 320, offset: 64)
!1871 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1863, file: !43, line: 27, size: 320, elements: !1872)
!1872 = !{!1873, !1883, !1908}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1871, file: !43, line: 36, baseType: !1874, size: 320)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1871, file: !43, line: 29, size: 320, elements: !1875)
!1875 = !{!1876, !1878, !1879, !1880, !1881, !1882}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1874, file: !43, line: 30, baseType: !1877, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1874, file: !43, line: 31, baseType: !276, size: 32, offset: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1874, file: !43, line: 32, baseType: !276, size: 32, offset: 96)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1874, file: !43, line: 33, baseType: !276, size: 32, offset: 128)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1874, file: !43, line: 34, baseType: !282, size: 64, offset: 192)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1874, file: !43, line: 35, baseType: !1877, size: 64, offset: 256)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1871, file: !43, line: 46, baseType: !1884, size: 192)
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1871, file: !43, line: 38, size: 192, elements: !1885)
!1885 = !{!1886, !1887, !1888, !1907}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1884, file: !43, line: 39, baseType: !971, size: 32)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1884, file: !43, line: 40, baseType: !42, size: 32, offset: 32)
!1888 = !DIDerivedType(tag: DW_TAG_member, scope: !1884, file: !43, line: 41, baseType: !1889, size: 64, offset: 64)
!1889 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1884, file: !43, line: 41, size: 64, elements: !1890)
!1890 = !{!1891, !1899}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1889, file: !43, line: 42, baseType: !1892, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1894, line: 7, size: 128, elements: !1895)
!1894 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1895 = !{!1896, !1898}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1893, file: !1894, line: 8, baseType: !1897, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !224, line: 93, baseType: !405)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1893, file: !1894, line: 9, baseType: !405, size: 64, offset: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1889, file: !43, line: 43, baseType: !1900, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1902, line: 7, size: 64, elements: !1903)
!1902 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1903 = !{!1904, !1906}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1901, file: !1902, line: 8, baseType: !1905, size: 32)
!1905 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1902, line: 5, baseType: !1535)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1901, file: !1902, line: 9, baseType: !1535, size: 32, offset: 32)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1884, file: !43, line: 45, baseType: !282, size: 64, offset: 128)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1871, file: !43, line: 54, baseType: !1909, size: 256)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1871, file: !43, line: 48, size: 256, elements: !1910)
!1910 = !{!1911, !1914, !1915, !1916, !1917}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1909, file: !43, line: 49, baseType: !1912, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !43, line: 14, flags: DIFlagFwdDecl)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1909, file: !43, line: 50, baseType: !159, size: 32, offset: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1909, file: !43, line: 51, baseType: !159, size: 32, offset: 96)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1909, file: !43, line: 52, baseType: !162, size: 64, offset: 128)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1909, file: !43, line: 53, baseType: !162, size: 64, offset: 192)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !848, file: !761, line: 835, baseType: !1919, size: 32, offset: 5120)
!1919 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !161, line: 22, baseType: !1920)
!1920 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !224, line: 28, baseType: !159)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !848, file: !761, line: 836, baseType: !1919, size: 32, offset: 5152)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !848, file: !761, line: 840, baseType: !162, size: 64, offset: 5184)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !848, file: !761, line: 849, baseType: !847, size: 64, offset: 5248)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !848, file: !761, line: 852, baseType: !847, size: 64, offset: 5312)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !848, file: !761, line: 857, baseType: !167, size: 128, offset: 5376)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !848, file: !761, line: 858, baseType: !167, size: 128, offset: 5504)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !848, file: !761, line: 859, baseType: !847, size: 64, offset: 5632)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !848, file: !761, line: 867, baseType: !167, size: 128, offset: 5696)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !848, file: !761, line: 868, baseType: !167, size: 128, offset: 5824)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !848, file: !761, line: 871, baseType: !1471, size: 64, offset: 5952)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !848, file: !761, line: 872, baseType: !1932, size: 512, offset: 6016)
!1932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, size: 512, elements: !1479)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !848, file: !761, line: 873, baseType: !167, size: 128, offset: 6528)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !848, file: !761, line: 874, baseType: !167, size: 128, offset: 6656)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !848, file: !761, line: 876, baseType: !1936, size: 64, offset: 6784)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !848, file: !761, line: 879, baseType: !508, size: 64, offset: 6848)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !848, file: !761, line: 882, baseType: !508, size: 64, offset: 6912)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !848, file: !761, line: 884, baseType: !282, size: 64, offset: 6976)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !848, file: !761, line: 885, baseType: !282, size: 64, offset: 7040)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !848, file: !761, line: 890, baseType: !282, size: 64, offset: 7104)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !848, file: !761, line: 891, baseType: !1943, size: 128, offset: 7168)
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !761, line: 242, size: 128, elements: !1944)
!1944 = !{!1945, !1946, !1947}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1943, file: !761, line: 244, baseType: !282, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1943, file: !761, line: 245, baseType: !282, size: 64, offset: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1943, file: !761, line: 246, baseType: !741, offset: 128)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !848, file: !761, line: 900, baseType: !162, size: 64, offset: 7296)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !848, file: !761, line: 901, baseType: !162, size: 64, offset: 7360)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !848, file: !761, line: 904, baseType: !282, size: 64, offset: 7424)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !848, file: !761, line: 907, baseType: !282, size: 64, offset: 7488)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !848, file: !761, line: 910, baseType: !162, size: 64, offset: 7552)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !848, file: !761, line: 911, baseType: !162, size: 64, offset: 7616)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !848, file: !761, line: 914, baseType: !1955, size: 640, offset: 7680)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1956, line: 123, size: 640, elements: !1957)
!1956 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1957 = !{!1958, !1964, !1965}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1955, file: !1956, line: 124, baseType: !1959, size: 576)
!1959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1960, size: 576, elements: !452)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1956, line: 108, size: 192, elements: !1961)
!1961 = !{!1962, !1963}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1960, file: !1956, line: 109, baseType: !282, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1960, file: !1956, line: 110, baseType: !980, size: 128, offset: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1955, file: !1956, line: 125, baseType: !11, size: 32, offset: 576)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1955, file: !1956, line: 126, baseType: !11, size: 32, offset: 608)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !848, file: !761, line: 917, baseType: !1967, size: 192, offset: 8320)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1956, line: 134, size: 192, elements: !1968)
!1968 = !{!1969, !1970}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1967, file: !1956, line: 135, baseType: !832, size: 128, align: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1967, file: !1956, line: 136, baseType: !11, size: 32, offset: 128)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !848, file: !761, line: 923, baseType: !1497, size: 64, offset: 8512)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !848, file: !761, line: 926, baseType: !1497, size: 64, offset: 8576)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !848, file: !761, line: 929, baseType: !1497, size: 64, offset: 8640)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !848, file: !761, line: 933, baseType: !1527, size: 64, offset: 8704)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !848, file: !761, line: 943, baseType: !1976, size: 128, offset: 8768)
!1976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 128, elements: !1977)
!1977 = !{!1978}
!1978 = !DISubrange(count: 16)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !848, file: !761, line: 945, baseType: !1980, size: 64, offset: 8896)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !761, line: 49, flags: DIFlagFwdDecl)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !848, file: !761, line: 956, baseType: !1983, size: 64, offset: 8960)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !761, line: 45, flags: DIFlagFwdDecl)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !848, file: !761, line: 959, baseType: !1986, size: 64, offset: 9024)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !761, line: 959, flags: DIFlagFwdDecl)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !848, file: !761, line: 962, baseType: !1989, size: 64, offset: 9088)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !761, line: 66, flags: DIFlagFwdDecl)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !848, file: !761, line: 966, baseType: !1992, size: 64, offset: 9152)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !761, line: 50, flags: DIFlagFwdDecl)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !848, file: !761, line: 969, baseType: !1995, size: 64, offset: 9216)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1997, line: 82, size: 7296, elements: !1998)
!1997 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1998 = !{!1999, !2000, !2001, !2002, !2003, !2004, !2005, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2034, !2043, !2044, !2046, !2047, !2048, !2051, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2081, !2082, !2089, !2090, !2091, !2092, !2093, !2094}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1996, file: !1997, line: 83, baseType: !860, size: 32)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1996, file: !1997, line: 84, baseType: !574, size: 32, offset: 32)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1996, file: !1997, line: 85, baseType: !159, size: 32, offset: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1996, file: !1997, line: 86, baseType: !167, size: 128, offset: 128)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1996, file: !1997, line: 88, baseType: !813, size: 128, offset: 256)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1996, file: !1997, line: 91, baseType: !847, size: 64, offset: 384)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1996, file: !1997, line: 94, baseType: !2006, size: 192, offset: 448)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2007, line: 30, size: 192, elements: !2008)
!2007 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!2008 = !{!2009, !2010}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2006, file: !2007, line: 31, baseType: !167, size: 128)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2006, file: !2007, line: 32, baseType: !2011, size: 64, offset: 128)
!2011 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2012, line: 25, baseType: !2013)
!2012 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2012, line: 23, size: 64, elements: !2014)
!2014 = !{!2015}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2013, file: !2012, line: 24, baseType: !1014, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1996, file: !1997, line: 97, baseType: !436, size: 64, offset: 640)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1996, file: !1997, line: 100, baseType: !159, size: 32, offset: 704)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1996, file: !1997, line: 106, baseType: !159, size: 32, offset: 736)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1996, file: !1997, line: 107, baseType: !847, size: 64, offset: 768)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1996, file: !1997, line: 110, baseType: !159, size: 32, offset: 832)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1996, file: !1997, line: 111, baseType: !11, size: 32, offset: 864)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1996, file: !1997, line: 122, baseType: !11, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1996, file: !1997, line: 123, baseType: !11, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1996, file: !1997, line: 128, baseType: !159, size: 32, offset: 928)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1996, file: !1997, line: 129, baseType: !167, size: 128, offset: 960)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1996, file: !1997, line: 132, baseType: !929, size: 512, offset: 1088)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1996, file: !1997, line: 133, baseType: !937, size: 64, offset: 1600)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1996, file: !1997, line: 140, baseType: !2029, size: 256, offset: 1664)
!2029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2030, size: 256, elements: !1519)
!2030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1997, line: 38, size: 128, elements: !2031)
!2031 = !{!2032, !2033}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2030, file: !1997, line: 39, baseType: !282, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2030, file: !1997, line: 40, baseType: !282, size: 64, offset: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1996, file: !1997, line: 146, baseType: !2035, size: 192, offset: 1920)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1997, line: 66, size: 192, elements: !2036)
!2036 = !{!2037}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2035, file: !1997, line: 67, baseType: !2038, size: 192)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1997, line: 47, size: 192, elements: !2039)
!2039 = !{!2040, !2041, !2042}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2038, file: !1997, line: 48, baseType: !564, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2038, file: !1997, line: 49, baseType: !564, size: 64, offset: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2038, file: !1997, line: 50, baseType: !564, size: 64, offset: 128)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1996, file: !1997, line: 150, baseType: !1955, size: 640, offset: 2112)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1996, file: !1997, line: 153, baseType: !2045, size: 256, offset: 2752)
!2045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1471, size: 256, elements: !1479)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1996, file: !1997, line: 159, baseType: !1471, size: 64, offset: 3008)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1996, file: !1997, line: 162, baseType: !159, size: 32, offset: 3072)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1996, file: !1997, line: 164, baseType: !2049, size: 64, offset: 3136)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1997, line: 164, flags: DIFlagFwdDecl)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1996, file: !1997, line: 175, baseType: !2052, size: 32, offset: 3200)
!2052 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !249, line: 805, baseType: !2053)
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !249, line: 798, size: 32, elements: !2054)
!2054 = !{!2055, !2056}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2053, file: !249, line: 803, baseType: !248, size: 32)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2053, file: !249, line: 804, baseType: !305, offset: 32)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1996, file: !1997, line: 176, baseType: !282, size: 64, offset: 3264)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1996, file: !1997, line: 176, baseType: !282, size: 64, offset: 3328)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1996, file: !1997, line: 176, baseType: !282, size: 64, offset: 3392)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1996, file: !1997, line: 176, baseType: !282, size: 64, offset: 3456)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1996, file: !1997, line: 177, baseType: !282, size: 64, offset: 3520)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1996, file: !1997, line: 178, baseType: !282, size: 64, offset: 3584)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1996, file: !1997, line: 179, baseType: !1943, size: 128, offset: 3648)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1996, file: !1997, line: 180, baseType: !162, size: 64, offset: 3776)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1996, file: !1997, line: 180, baseType: !162, size: 64, offset: 3840)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1996, file: !1997, line: 180, baseType: !162, size: 64, offset: 3904)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1996, file: !1997, line: 180, baseType: !162, size: 64, offset: 3968)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1996, file: !1997, line: 181, baseType: !162, size: 64, offset: 4032)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1996, file: !1997, line: 181, baseType: !162, size: 64, offset: 4096)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1996, file: !1997, line: 181, baseType: !162, size: 64, offset: 4160)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1996, file: !1997, line: 181, baseType: !162, size: 64, offset: 4224)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1996, file: !1997, line: 182, baseType: !162, size: 64, offset: 4288)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1996, file: !1997, line: 182, baseType: !162, size: 64, offset: 4352)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1996, file: !1997, line: 182, baseType: !162, size: 64, offset: 4416)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1996, file: !1997, line: 182, baseType: !162, size: 64, offset: 4480)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1996, file: !1997, line: 183, baseType: !162, size: 64, offset: 4544)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1996, file: !1997, line: 183, baseType: !162, size: 64, offset: 4608)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1996, file: !1997, line: 184, baseType: !2079, offset: 4672)
!2079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2080, line: 12, elements: !319)
!2080 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1996, file: !1997, line: 192, baseType: !284, size: 64, offset: 4672)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1996, file: !1997, line: 203, baseType: !2083, size: 2048, offset: 4736)
!2083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2084, size: 2048, elements: !1977)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2085, line: 43, size: 128, elements: !2086)
!2085 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2086 = !{!2087, !2088}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2084, file: !2085, line: 44, baseType: !1177, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2084, file: !2085, line: 45, baseType: !1177, size: 64, offset: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1996, file: !1997, line: 220, baseType: !384, size: 8, offset: 6784)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1996, file: !1997, line: 221, baseType: !1561, size: 16, offset: 6800)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1996, file: !1997, line: 222, baseType: !1561, size: 16, offset: 6816)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1996, file: !1997, line: 224, baseType: !1022, size: 64, offset: 6848)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1996, file: !1997, line: 227, baseType: !558, size: 192, offset: 6912)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1996, file: !1997, line: 233, baseType: !558, size: 192, offset: 7104)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !848, file: !761, line: 970, baseType: !2096, size: 64, offset: 9280)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1997, line: 20, size: 16576, elements: !2098)
!2098 = !{!2099, !2100, !2101, !2102}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2097, file: !1997, line: 21, baseType: !305)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2097, file: !1997, line: 22, baseType: !860, size: 32)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2097, file: !1997, line: 23, baseType: !813, size: 128, offset: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2097, file: !1997, line: 24, baseType: !2103, size: 16384, offset: 192)
!2103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2104, size: 16384, elements: !2124)
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2007, line: 49, size: 256, elements: !2105)
!2105 = !{!2106}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2104, file: !2007, line: 50, baseType: !2107, size: 256)
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2007, line: 35, size: 256, elements: !2108)
!2108 = !{!2109, !2116, !2117, !2123}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2107, file: !2007, line: 37, baseType: !2110, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2111, line: 19, baseType: !2112)
!2111 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2111, line: 18, baseType: !2114)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{null, !159}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2107, file: !2007, line: 38, baseType: !162, size: 64, offset: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2107, file: !2007, line: 44, baseType: !2118, size: 64, offset: 128)
!2118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2111, line: 22, baseType: !2119)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2111, line: 21, baseType: !2121)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{null}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2107, file: !2007, line: 46, baseType: !2011, size: 64, offset: 192)
!2124 = !{!2125}
!2125 = !DISubrange(count: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !848, file: !761, line: 971, baseType: !2011, size: 64, offset: 9344)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !848, file: !761, line: 972, baseType: !2011, size: 64, offset: 9408)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !848, file: !761, line: 974, baseType: !2011, size: 64, offset: 9472)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !848, file: !761, line: 975, baseType: !2006, size: 192, offset: 9536)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !848, file: !761, line: 976, baseType: !162, size: 64, offset: 9728)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !848, file: !761, line: 977, baseType: !1175, size: 64, offset: 9792)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !848, file: !761, line: 978, baseType: !11, size: 32, offset: 9856)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !848, file: !761, line: 980, baseType: !835, size: 64, offset: 9920)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !848, file: !761, line: 989, baseType: !2135, size: 128, offset: 9984)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2136, line: 35, size: 128, elements: !2137)
!2136 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2137 = !{!2138, !2139, !2140}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2135, file: !2136, line: 36, baseType: !159, size: 32)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2135, file: !2136, line: 37, baseType: !574, size: 32, offset: 32)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2135, file: !2136, line: 38, baseType: !2141, size: 64, offset: 64)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2136, line: 23, flags: DIFlagFwdDecl)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !848, file: !761, line: 992, baseType: !282, size: 64, offset: 10112)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !848, file: !761, line: 993, baseType: !282, size: 64, offset: 10176)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !848, file: !761, line: 996, baseType: !305, offset: 10240)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !848, file: !761, line: 999, baseType: !741, offset: 10240)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !848, file: !761, line: 1001, baseType: !2148, size: 64, offset: 10240)
!2148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !761, line: 636, size: 64, elements: !2149)
!2149 = !{!2150}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2148, file: !761, line: 637, baseType: !2151, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !848, file: !761, line: 1005, baseType: !983, size: 128, offset: 10304)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !848, file: !761, line: 1007, baseType: !847, size: 64, offset: 10432)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !848, file: !761, line: 1009, baseType: !2155, size: 64, offset: 10496)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !761, line: 1009, flags: DIFlagFwdDecl)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !848, file: !761, line: 1043, baseType: !163, size: 64, offset: 10560)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !848, file: !761, line: 1046, baseType: !2159, size: 64, offset: 10624)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !761, line: 41, flags: DIFlagFwdDecl)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !848, file: !761, line: 1050, baseType: !2162, size: 64, offset: 10688)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !761, line: 42, flags: DIFlagFwdDecl)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !848, file: !761, line: 1054, baseType: !2165, size: 64, offset: 10752)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !761, line: 55, flags: DIFlagFwdDecl)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !848, file: !761, line: 1056, baseType: !759, size: 64, offset: 10816)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !848, file: !761, line: 1058, baseType: !2169, size: 64, offset: 10880)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2171, line: 99, size: 704, elements: !2172)
!2171 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2172 = !{!2173, !2174, !2175, !2176, !2177, !2178, !2185, !2206, !2207}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2170, file: !2171, line: 100, baseType: !562, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2170, file: !2171, line: 101, baseType: !574, size: 32, offset: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2170, file: !2171, line: 102, baseType: !574, size: 32, offset: 96)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2170, file: !2171, line: 105, baseType: !305, offset: 128)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2170, file: !2171, line: 107, baseType: !214, size: 16, offset: 128)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2170, file: !2171, line: 109, baseType: !2179, size: 128, offset: 192)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !2180, line: 292, size: 128, elements: !2181)
!2180 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!2181 = !{!2182, !2183, !2184}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !2179, file: !2180, line: 293, baseType: !305)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !2179, file: !2180, line: 295, baseType: !160, size: 32)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !2179, file: !2180, line: 296, baseType: !163, size: 64, offset: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2170, file: !2171, line: 110, baseType: !2186, size: 64, offset: 320)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2171, line: 73, size: 448, elements: !2188)
!2188 = !{!2189, !2192, !2193, !2200, !2205}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2187, file: !2171, line: 74, baseType: !2190, size: 64)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2171, line: 74, flags: DIFlagFwdDecl)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2187, file: !2171, line: 75, baseType: !2169, size: 64, offset: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, scope: !2187, file: !2171, line: 83, baseType: !2194, size: 128, offset: 128)
!2194 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2187, file: !2171, line: 83, size: 128, elements: !2195)
!2195 = !{!2196, !2197}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2194, file: !2171, line: 84, baseType: !167, size: 128)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2194, file: !2171, line: 85, baseType: !2198, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !194, line: 117, flags: DIFlagFwdDecl)
!2200 = !DIDerivedType(tag: DW_TAG_member, scope: !2187, file: !2171, line: 87, baseType: !2201, size: 128, offset: 256)
!2201 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2187, file: !2171, line: 87, size: 128, elements: !2202)
!2202 = !{!2203, !2204}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2201, file: !2171, line: 88, baseType: !440, size: 128)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2201, file: !2171, line: 89, baseType: !832, size: 128, align: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2187, file: !2171, line: 92, baseType: !11, size: 32, offset: 384)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2170, file: !2171, line: 111, baseType: !436, size: 64, offset: 384)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2170, file: !2171, line: 113, baseType: !1824, size: 256, offset: 448)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !848, file: !761, line: 1061, baseType: !2209, size: 64, offset: 10944)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !761, line: 43, flags: DIFlagFwdDecl)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !848, file: !761, line: 1064, baseType: !162, size: 64, offset: 11008)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !848, file: !761, line: 1065, baseType: !2213, size: 64, offset: 11072)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2007, line: 14, baseType: !2215)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2007, line: 12, size: 384, elements: !2216)
!2216 = !{!2217}
!2217 = !DIDerivedType(tag: DW_TAG_member, scope: !2215, file: !2007, line: 13, baseType: !2218, size: 384)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2215, file: !2007, line: 13, size: 384, elements: !2219)
!2219 = !{!2220, !2221, !2222, !2223}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2218, file: !2007, line: 13, baseType: !159, size: 32)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2218, file: !2007, line: 13, baseType: !159, size: 32, offset: 32)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2218, file: !2007, line: 13, baseType: !159, size: 32, offset: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2218, file: !2007, line: 13, baseType: !2224, size: 256, offset: 128)
!2224 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2225, line: 32, size: 256, elements: !2226)
!2225 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2226 = !{!2227, !2232, !2245, !2251, !2260, !2280, !2285}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2224, file: !2225, line: 37, baseType: !2228, size: 64)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2224, file: !2225, line: 34, size: 64, elements: !2229)
!2229 = !{!2230, !2231}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2228, file: !2225, line: 35, baseType: !1920, size: 32)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2228, file: !2225, line: 36, baseType: !223, size: 32, offset: 32)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2224, file: !2225, line: 45, baseType: !2233, size: 192)
!2233 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2224, file: !2225, line: 40, size: 192, elements: !2234)
!2234 = !{!2235, !2237, !2238, !2244}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2233, file: !2225, line: 41, baseType: !2236, size: 32)
!2236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !224, line: 95, baseType: !159)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2233, file: !2225, line: 42, baseType: !159, size: 32, offset: 32)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2233, file: !2225, line: 43, baseType: !2239, size: 64, offset: 64)
!2239 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2225, line: 11, baseType: !2240)
!2240 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2225, line: 8, size: 64, elements: !2241)
!2241 = !{!2242, !2243}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2240, file: !2225, line: 9, baseType: !159, size: 32)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2240, file: !2225, line: 10, baseType: !163, size: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2233, file: !2225, line: 44, baseType: !159, size: 32, offset: 128)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2224, file: !2225, line: 52, baseType: !2246, size: 128)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2224, file: !2225, line: 48, size: 128, elements: !2247)
!2247 = !{!2248, !2249, !2250}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2246, file: !2225, line: 49, baseType: !1920, size: 32)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2246, file: !2225, line: 50, baseType: !223, size: 32, offset: 32)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2246, file: !2225, line: 51, baseType: !2239, size: 64, offset: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2224, file: !2225, line: 61, baseType: !2252, size: 256)
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2224, file: !2225, line: 55, size: 256, elements: !2253)
!2253 = !{!2254, !2255, !2256, !2257, !2259}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2252, file: !2225, line: 56, baseType: !1920, size: 32)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2252, file: !2225, line: 57, baseType: !223, size: 32, offset: 32)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2252, file: !2225, line: 58, baseType: !159, size: 32, offset: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2252, file: !2225, line: 59, baseType: !2258, size: 64, offset: 128)
!2258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !224, line: 94, baseType: !1174)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2252, file: !2225, line: 60, baseType: !2258, size: 64, offset: 192)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2224, file: !2225, line: 95, baseType: !2261, size: 256)
!2261 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2224, file: !2225, line: 64, size: 256, elements: !2262)
!2262 = !{!2263, !2264}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2261, file: !2225, line: 65, baseType: !163, size: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, scope: !2261, file: !2225, line: 77, baseType: !2265, size: 192, offset: 64)
!2265 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2261, file: !2225, line: 77, size: 192, elements: !2266)
!2266 = !{!2267, !2268, !2275}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2265, file: !2225, line: 82, baseType: !1561, size: 16)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2265, file: !2225, line: 88, baseType: !2269, size: 192)
!2269 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2265, file: !2225, line: 84, size: 192, elements: !2270)
!2270 = !{!2271, !2273, !2274}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2269, file: !2225, line: 85, baseType: !2272, size: 64)
!2272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 64, elements: !967)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2269, file: !2225, line: 86, baseType: !163, size: 64, offset: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2269, file: !2225, line: 87, baseType: !163, size: 64, offset: 128)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2265, file: !2225, line: 93, baseType: !2276, size: 96)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2265, file: !2225, line: 90, size: 96, elements: !2277)
!2277 = !{!2278, !2279}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2276, file: !2225, line: 91, baseType: !2272, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2276, file: !2225, line: 92, baseType: !278, size: 32, offset: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2224, file: !2225, line: 101, baseType: !2281, size: 128)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2224, file: !2225, line: 98, size: 128, elements: !2282)
!2282 = !{!2283, !2284}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2281, file: !2225, line: 99, baseType: !528, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2281, file: !2225, line: 100, baseType: !159, size: 32, offset: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2224, file: !2225, line: 108, baseType: !2286, size: 128)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2224, file: !2225, line: 104, size: 128, elements: !2287)
!2287 = !{!2288, !2289, !2290}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2286, file: !2225, line: 105, baseType: !163, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2286, file: !2225, line: 106, baseType: !159, size: 32, offset: 64)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2286, file: !2225, line: 107, baseType: !11, size: 32, offset: 96)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !848, file: !761, line: 1067, baseType: !2079, offset: 11136)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !848, file: !761, line: 1099, baseType: !2293, size: 64, offset: 11136)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !761, line: 56, flags: DIFlagFwdDecl)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !848, file: !761, line: 1103, baseType: !167, size: 128, offset: 11200)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !848, file: !761, line: 1104, baseType: !2297, size: 64, offset: 11328)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !761, line: 46, flags: DIFlagFwdDecl)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !848, file: !761, line: 1105, baseType: !558, size: 192, offset: 11392)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !848, file: !761, line: 1106, baseType: !11, size: 32, offset: 11584)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !848, file: !761, line: 1109, baseType: !2302, size: 128, offset: 11648)
!2302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2303, size: 128, elements: !1519)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !761, line: 51, flags: DIFlagFwdDecl)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !848, file: !761, line: 1110, baseType: !558, size: 192, offset: 11776)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !848, file: !761, line: 1111, baseType: !167, size: 128, offset: 11968)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !848, file: !761, line: 1173, baseType: !2308, size: 64, offset: 12096)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2310, line: 62, size: 256, align: 256, elements: !2311)
!2310 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2311 = !{!2312, !2313, !2314, !2319}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2309, file: !2310, line: 75, baseType: !278, size: 32)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2309, file: !2310, line: 90, baseType: !278, size: 32, offset: 32)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2309, file: !2310, line: 124, baseType: !2315, size: 64, offset: 64)
!2315 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2309, file: !2310, line: 109, size: 64, elements: !2316)
!2316 = !{!2317, !2318}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2315, file: !2310, line: 110, baseType: !283, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2315, file: !2310, line: 112, baseType: !283, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2309, file: !2310, line: 144, baseType: !278, size: 32, offset: 128)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !848, file: !761, line: 1174, baseType: !276, size: 32, offset: 12160)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !848, file: !761, line: 1179, baseType: !162, size: 64, offset: 12224)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !848, file: !761, line: 1182, baseType: !2323, size: 128, offset: 12288)
!2323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1756, line: 76, size: 128, elements: !2324)
!2324 = !{!2325, !2330, !2331}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2323, file: !1756, line: 85, baseType: !2326, size: 64)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2327, line: 7, size: 64, elements: !2328)
!2327 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2328 = !{!2329}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2326, file: !2327, line: 12, baseType: !1011, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2323, file: !1756, line: 88, baseType: !384, size: 8, offset: 64)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2323, file: !1756, line: 95, baseType: !384, size: 8, offset: 72)
!2332 = !DIDerivedType(tag: DW_TAG_member, scope: !848, file: !761, line: 1184, baseType: !2333, size: 128, offset: 12416)
!2333 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !848, file: !761, line: 1184, size: 128, elements: !2334)
!2334 = !{!2335, !2336}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2333, file: !761, line: 1185, baseType: !860, size: 32)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2333, file: !761, line: 1186, baseType: !832, size: 128, align: 64)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !848, file: !761, line: 1190, baseType: !1240, size: 64, offset: 12544)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !848, file: !761, line: 1192, baseType: !2339, size: 128, offset: 12608)
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1756, line: 64, size: 128, elements: !2340)
!2340 = !{!2341, !2342, !2343}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2339, file: !1756, line: 65, baseType: !192, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2339, file: !1756, line: 67, baseType: !278, size: 32, offset: 64)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2339, file: !1756, line: 68, baseType: !278, size: 32, offset: 96)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !848, file: !761, line: 1206, baseType: !159, size: 32, offset: 12736)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !848, file: !761, line: 1207, baseType: !159, size: 32, offset: 12768)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !848, file: !761, line: 1209, baseType: !162, size: 64, offset: 12800)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !848, file: !761, line: 1219, baseType: !282, size: 64, offset: 12864)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !848, file: !761, line: 1220, baseType: !282, size: 64, offset: 12928)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !848, file: !761, line: 1317, baseType: !159, size: 32, offset: 12992)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !848, file: !761, line: 1319, baseType: !847, size: 64, offset: 13056)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !848, file: !761, line: 1322, baseType: !182, size: 64, offset: 13120)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !848, file: !761, line: 1326, baseType: !860, size: 32, offset: 13184)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !848, file: !761, line: 1342, baseType: !163, size: 64, offset: 13248)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !848, file: !761, line: 1343, baseType: !283, size: 64, offset: 13312)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !848, file: !761, line: 1344, baseType: !282, size: 64, offset: 13376)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !848, file: !761, line: 1345, baseType: !283, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !848, file: !761, line: 1346, baseType: !283, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !848, file: !761, line: 1347, baseType: !283, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !848, file: !761, line: 1348, baseType: !832, size: 128, align: 64, offset: 13504)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !848, file: !761, line: 1358, baseType: !2361, size: 34816, offset: 13824)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2362, line: 485, size: 34816, elements: !2363)
!2362 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2363 = !{!2364, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2393, !2394, !2395, !2396, !2397, !2398, !2401, !2402, !2403}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2361, file: !2362, line: 487, baseType: !2365, size: 192)
!2365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2366, size: 192, elements: !452)
!2366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2367, line: 16, size: 64, elements: !2368)
!2367 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2368 = !{!2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2366, file: !2367, line: 17, baseType: !1199, size: 16)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2366, file: !2367, line: 18, baseType: !1199, size: 16, offset: 16)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2366, file: !2367, line: 19, baseType: !1199, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2366, file: !2367, line: 19, baseType: !1199, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2366, file: !2367, line: 19, baseType: !1199, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2366, file: !2367, line: 19, baseType: !1199, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2366, file: !2367, line: 19, baseType: !1199, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2366, file: !2367, line: 20, baseType: !1199, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2366, file: !2367, line: 20, baseType: !1199, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2366, file: !2367, line: 20, baseType: !1199, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2366, file: !2367, line: 20, baseType: !1199, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2366, file: !2367, line: 20, baseType: !1199, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2366, file: !2367, line: 20, baseType: !1199, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2361, file: !2362, line: 491, baseType: !162, size: 64, offset: 192)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2361, file: !2362, line: 495, baseType: !214, size: 16, offset: 256)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2361, file: !2362, line: 496, baseType: !214, size: 16, offset: 272)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2361, file: !2362, line: 497, baseType: !214, size: 16, offset: 288)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2361, file: !2362, line: 498, baseType: !214, size: 16, offset: 304)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2361, file: !2362, line: 502, baseType: !162, size: 64, offset: 320)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2361, file: !2362, line: 503, baseType: !162, size: 64, offset: 384)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2361, file: !2362, line: 514, baseType: !2390, size: 256, offset: 448)
!2390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2391, size: 256, elements: !1479)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2362, line: 483, flags: DIFlagFwdDecl)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2361, file: !2362, line: 516, baseType: !162, size: 64, offset: 704)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2361, file: !2362, line: 518, baseType: !162, size: 64, offset: 768)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2361, file: !2362, line: 520, baseType: !162, size: 64, offset: 832)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2361, file: !2362, line: 521, baseType: !162, size: 64, offset: 896)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2361, file: !2362, line: 522, baseType: !162, size: 64, offset: 960)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2361, file: !2362, line: 528, baseType: !2399, size: 64, offset: 1024)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2362, line: 10, flags: DIFlagFwdDecl)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2361, file: !2362, line: 535, baseType: !162, size: 64, offset: 1088)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2361, file: !2362, line: 537, baseType: !11, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2361, file: !2362, line: 540, baseType: !2404, size: 33280, offset: 1536)
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2405, line: 317, size: 33280, elements: !2406)
!2405 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2406 = !{!2407, !2408, !2409}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2404, file: !2405, line: 330, baseType: !11, size: 32)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2404, file: !2405, line: 337, baseType: !162, size: 64, offset: 64)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2404, file: !2405, line: 348, baseType: !2410, size: 32768, offset: 512)
!2410 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2405, line: 304, size: 32768, elements: !2411)
!2411 = !{!2412, !2427, !2464, !2514, !2527}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2410, file: !2405, line: 305, baseType: !2413, size: 896)
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2405, line: 12, size: 896, elements: !2414)
!2414 = !{!2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2426}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2413, file: !2405, line: 13, baseType: !276, size: 32)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2413, file: !2405, line: 14, baseType: !276, size: 32, offset: 32)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2413, file: !2405, line: 15, baseType: !276, size: 32, offset: 64)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2413, file: !2405, line: 16, baseType: !276, size: 32, offset: 96)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2413, file: !2405, line: 17, baseType: !276, size: 32, offset: 128)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2413, file: !2405, line: 18, baseType: !276, size: 32, offset: 160)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2413, file: !2405, line: 19, baseType: !276, size: 32, offset: 192)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2413, file: !2405, line: 22, baseType: !2423, size: 640, offset: 224)
!2423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 640, elements: !2424)
!2424 = !{!2425}
!2425 = !DISubrange(count: 20)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2413, file: !2405, line: 25, baseType: !276, size: 32, offset: 864)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2410, file: !2405, line: 306, baseType: !2428, size: 4096, align: 128)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2405, line: 34, size: 4096, align: 128, elements: !2429)
!2429 = !{!2430, !2431, !2432, !2433, !2434, !2449, !2450, !2451, !2453, !2455, !2459}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2428, file: !2405, line: 35, baseType: !1199, size: 16)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2428, file: !2405, line: 36, baseType: !1199, size: 16, offset: 16)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2428, file: !2405, line: 37, baseType: !1199, size: 16, offset: 32)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2428, file: !2405, line: 38, baseType: !1199, size: 16, offset: 48)
!2434 = !DIDerivedType(tag: DW_TAG_member, scope: !2428, file: !2405, line: 39, baseType: !2435, size: 128, offset: 64)
!2435 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2428, file: !2405, line: 39, size: 128, elements: !2436)
!2436 = !{!2437, !2442}
!2437 = !DIDerivedType(tag: DW_TAG_member, scope: !2435, file: !2405, line: 40, baseType: !2438, size: 128)
!2438 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2435, file: !2405, line: 40, size: 128, elements: !2439)
!2439 = !{!2440, !2441}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2438, file: !2405, line: 41, baseType: !282, size: 64)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2438, file: !2405, line: 42, baseType: !282, size: 64, offset: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, scope: !2435, file: !2405, line: 44, baseType: !2443, size: 128)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2435, file: !2405, line: 44, size: 128, elements: !2444)
!2444 = !{!2445, !2446, !2447, !2448}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2443, file: !2405, line: 45, baseType: !276, size: 32)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2443, file: !2405, line: 46, baseType: !276, size: 32, offset: 32)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2443, file: !2405, line: 47, baseType: !276, size: 32, offset: 64)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2443, file: !2405, line: 48, baseType: !276, size: 32, offset: 96)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2428, file: !2405, line: 51, baseType: !276, size: 32, offset: 192)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2428, file: !2405, line: 52, baseType: !276, size: 32, offset: 224)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2428, file: !2405, line: 55, baseType: !2452, size: 1024, offset: 256)
!2452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 1024, elements: !292)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2428, file: !2405, line: 58, baseType: !2454, size: 2048, offset: 1280)
!2454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 2048, elements: !2124)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2428, file: !2405, line: 60, baseType: !2456, size: 384, offset: 3328)
!2456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 384, elements: !2457)
!2457 = !{!2458}
!2458 = !DISubrange(count: 12)
!2459 = !DIDerivedType(tag: DW_TAG_member, scope: !2428, file: !2405, line: 62, baseType: !2460, size: 384, offset: 3712)
!2460 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2428, file: !2405, line: 62, size: 384, elements: !2461)
!2461 = !{!2462, !2463}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2460, file: !2405, line: 63, baseType: !2456, size: 384)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2460, file: !2405, line: 64, baseType: !2456, size: 384)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2410, file: !2405, line: 307, baseType: !2465, size: 1088)
!2465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2405, line: 79, size: 1088, elements: !2466)
!2466 = !{!2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2513}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2465, file: !2405, line: 80, baseType: !276, size: 32)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2465, file: !2405, line: 81, baseType: !276, size: 32, offset: 32)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2465, file: !2405, line: 82, baseType: !276, size: 32, offset: 64)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2465, file: !2405, line: 83, baseType: !276, size: 32, offset: 96)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2465, file: !2405, line: 84, baseType: !276, size: 32, offset: 128)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2465, file: !2405, line: 85, baseType: !276, size: 32, offset: 160)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2465, file: !2405, line: 86, baseType: !276, size: 32, offset: 192)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2465, file: !2405, line: 88, baseType: !2423, size: 640, offset: 224)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2465, file: !2405, line: 89, baseType: !996, size: 8, offset: 864)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2465, file: !2405, line: 90, baseType: !996, size: 8, offset: 872)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2465, file: !2405, line: 91, baseType: !996, size: 8, offset: 880)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2465, file: !2405, line: 92, baseType: !996, size: 8, offset: 888)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2465, file: !2405, line: 93, baseType: !996, size: 8, offset: 896)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2465, file: !2405, line: 94, baseType: !996, size: 8, offset: 904)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2465, file: !2405, line: 95, baseType: !2482, size: 64, offset: 960)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2484, line: 11, size: 128, elements: !2485)
!2484 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2485 = !{!2486, !2487}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2483, file: !2484, line: 12, baseType: !528, size: 64)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2483, file: !2484, line: 13, baseType: !2488, size: 64, offset: 64)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2490, line: 56, size: 1344, elements: !2491)
!2490 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2491 = !{!2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2489, file: !2490, line: 61, baseType: !162, size: 64)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2489, file: !2490, line: 62, baseType: !162, size: 64, offset: 64)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2489, file: !2490, line: 63, baseType: !162, size: 64, offset: 128)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2489, file: !2490, line: 64, baseType: !162, size: 64, offset: 192)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2489, file: !2490, line: 65, baseType: !162, size: 64, offset: 256)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2489, file: !2490, line: 66, baseType: !162, size: 64, offset: 320)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2489, file: !2490, line: 68, baseType: !162, size: 64, offset: 384)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2489, file: !2490, line: 69, baseType: !162, size: 64, offset: 448)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2489, file: !2490, line: 70, baseType: !162, size: 64, offset: 512)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2489, file: !2490, line: 71, baseType: !162, size: 64, offset: 576)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2489, file: !2490, line: 72, baseType: !162, size: 64, offset: 640)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2489, file: !2490, line: 73, baseType: !162, size: 64, offset: 704)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2489, file: !2490, line: 74, baseType: !162, size: 64, offset: 768)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2489, file: !2490, line: 75, baseType: !162, size: 64, offset: 832)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2489, file: !2490, line: 76, baseType: !162, size: 64, offset: 896)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2489, file: !2490, line: 81, baseType: !162, size: 64, offset: 960)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2489, file: !2490, line: 83, baseType: !162, size: 64, offset: 1024)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2489, file: !2490, line: 84, baseType: !162, size: 64, offset: 1088)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2489, file: !2490, line: 85, baseType: !162, size: 64, offset: 1152)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2489, file: !2490, line: 86, baseType: !162, size: 64, offset: 1216)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2489, file: !2490, line: 87, baseType: !162, size: 64, offset: 1280)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2465, file: !2405, line: 96, baseType: !276, size: 32, offset: 1024)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2410, file: !2405, line: 308, baseType: !2515, size: 4608, align: 512)
!2515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2405, line: 289, size: 4608, align: 512, elements: !2516)
!2516 = !{!2517, !2518, !2525}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2515, file: !2405, line: 290, baseType: !2428, size: 4096, align: 128)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2515, file: !2405, line: 291, baseType: !2519, size: 512, offset: 4096)
!2519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2405, line: 268, size: 512, elements: !2520)
!2520 = !{!2521, !2522, !2523}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2519, file: !2405, line: 269, baseType: !282, size: 64)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2519, file: !2405, line: 270, baseType: !282, size: 64, offset: 64)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2519, file: !2405, line: 271, baseType: !2524, size: 384, offset: 128)
!2524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 384, elements: !1579)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2515, file: !2405, line: 292, baseType: !2526, offset: 4608)
!2526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !996, elements: !1677)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2410, file: !2405, line: 309, baseType: !2528, size: 32768)
!2528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !996, size: 32768, elements: !2529)
!2529 = !{!2530}
!2530 = !DISubrange(count: 4096)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !821, file: !822, line: 16, baseType: !813, size: 128, offset: 448)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !821, file: !822, line: 17, baseType: !574, size: 32, offset: 576)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !394, file: !62, line: 1465, baseType: !163, size: 64, offset: 6400)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !394, file: !62, line: 1468, baseType: !276, size: 32, offset: 6464)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !394, file: !62, line: 1470, baseType: !609, size: 64, offset: 6528)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !394, file: !62, line: 1471, baseType: !609, size: 64, offset: 6592)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !394, file: !62, line: 1473, baseType: !278, size: 32, offset: 6656)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !394, file: !62, line: 1474, baseType: !2539, size: 64, offset: 6720)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !62, line: 603, flags: DIFlagFwdDecl)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !394, file: !62, line: 1477, baseType: !2542, size: 256, offset: 6784)
!2542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 256, elements: !292)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !394, file: !62, line: 1478, baseType: !2544, size: 128, offset: 7040)
!2544 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2545, line: 18, baseType: !2546)
!2545 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2545, line: 16, size: 128, elements: !2547)
!2547 = !{!2548}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2546, file: !2545, line: 17, baseType: !2549, size: 128)
!2549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !997, size: 128, elements: !1977)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !394, file: !62, line: 1480, baseType: !11, size: 32, offset: 7168)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !394, file: !62, line: 1481, baseType: !1463, size: 32, offset: 7200)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !394, file: !62, line: 1487, baseType: !558, size: 192, offset: 7232)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !394, file: !62, line: 1493, baseType: !6, size: 64, offset: 7424)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !394, file: !62, line: 1495, baseType: !322, size: 64, offset: 7488)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !394, file: !62, line: 1500, baseType: !159, size: 32, offset: 7552)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !394, file: !62, line: 1502, baseType: !2557, size: 448, offset: 7616)
!2557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !531, line: 60, size: 448, elements: !2558)
!2558 = !{!2559, !2564, !2565, !2566, !2567, !2568, !2569}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2557, file: !531, line: 61, baseType: !2560, size: 64)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{!162, !2563, !529}
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2557, file: !531, line: 63, baseType: !2560, size: 64, offset: 64)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2557, file: !531, line: 66, baseType: !528, size: 64, offset: 128)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2557, file: !531, line: 67, baseType: !159, size: 32, offset: 192)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2557, file: !531, line: 68, baseType: !11, size: 32, offset: 224)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2557, file: !531, line: 71, baseType: !167, size: 128, offset: 256)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2557, file: !531, line: 77, baseType: !2570, size: 64, offset: 384)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !394, file: !62, line: 1505, baseType: !562, size: 64, offset: 8064)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !394, file: !62, line: 1508, baseType: !562, size: 64, offset: 8128)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !394, file: !62, line: 1511, baseType: !159, size: 32, offset: 8192)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !394, file: !62, line: 1514, baseType: !1699, size: 32, offset: 8224)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !394, file: !62, line: 1517, baseType: !2576, size: 64, offset: 8256)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1825, line: 18, flags: DIFlagFwdDecl)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !394, file: !62, line: 1518, baseType: !436, size: 64, offset: 8320)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !394, file: !62, line: 1525, baseType: !1667, size: 64, offset: 8384)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !394, file: !62, line: 1532, baseType: !2581, size: 64, offset: 8448)
!2581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2582, line: 52, size: 64, elements: !2583)
!2582 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2583 = !{!2584}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2581, file: !2582, line: 53, baseType: !2585, size: 64)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2582, line: 40, size: 256, elements: !2587)
!2587 = !{!2588, !2589, !2594}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2586, file: !2582, line: 42, baseType: !305)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2586, file: !2582, line: 44, baseType: !2590, size: 192)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2582, line: 28, size: 192, elements: !2591)
!2591 = !{!2592, !2593}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2590, file: !2582, line: 29, baseType: !167, size: 128)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2590, file: !2582, line: 31, baseType: !528, size: 64, offset: 128)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2586, file: !2582, line: 49, baseType: !528, size: 64, offset: 192)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !394, file: !62, line: 1533, baseType: !2581, size: 64, offset: 8512)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !394, file: !62, line: 1534, baseType: !832, size: 128, align: 64, offset: 8576)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !394, file: !62, line: 1535, baseType: !1824, size: 256, offset: 8704)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !394, file: !62, line: 1537, baseType: !558, size: 192, offset: 8960)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !394, file: !62, line: 1542, baseType: !159, size: 32, offset: 9152)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !394, file: !62, line: 1545, baseType: !305, offset: 9184)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !394, file: !62, line: 1546, baseType: !167, size: 128, offset: 9216)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !394, file: !62, line: 1548, baseType: !305, offset: 9344)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !394, file: !62, line: 1549, baseType: !167, size: 128, offset: 9344)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !243, file: !244, line: 104, baseType: !162, size: 64, offset: 896)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !243, file: !244, line: 105, baseType: !163, size: 64, offset: 960)
!2606 = !DIDerivedType(tag: DW_TAG_member, scope: !243, file: !244, line: 107, baseType: !2607, size: 128, offset: 1024)
!2607 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !243, file: !244, line: 107, size: 128, elements: !2608)
!2608 = !{!2609, !2610}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2607, file: !244, line: 108, baseType: !167, size: 128)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2607, file: !244, line: 109, baseType: !2611, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !243, file: !244, line: 111, baseType: !167, size: 128, offset: 1152)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !243, file: !244, line: 112, baseType: !167, size: 128, offset: 1280)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !243, file: !244, line: 120, baseType: !2615, size: 128, offset: 1408)
!2615 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !243, file: !244, line: 116, size: 128, elements: !2616)
!2616 = !{!2617, !2618, !2619}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2615, file: !244, line: 117, baseType: !440, size: 128)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2615, file: !244, line: 118, baseType: !258, size: 128)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2615, file: !244, line: 119, baseType: !832, size: 128, align: 64)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !236, file: !62, line: 1866, baseType: !2621, size: 64, offset: 64)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = !DISubroutineType(types: !2623)
!2623 = !{!6, !242, !209, !2624}
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !2626, line: 10, size: 128, elements: !2627)
!2626 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!2627 = !{!2628, !2632}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2625, file: !2626, line: 11, baseType: !2629, size: 64)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = !DISubroutineType(types: !2631)
!2631 = !{null, !163}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2625, file: !2626, line: 12, baseType: !163, size: 64, offset: 64)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !236, file: !62, line: 1867, baseType: !2634, size: 64, offset: 128)
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = !DISubroutineType(types: !2636)
!2636 = !{!159, !209, !159}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !236, file: !62, line: 1868, baseType: !2638, size: 64, offset: 192)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{!2641, !209, !159}
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !62, line: 581, flags: DIFlagFwdDecl)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !236, file: !62, line: 1870, baseType: !2644, size: 64, offset: 256)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DISubroutineType(types: !2646)
!2646 = !{!159, !242, !365, !159}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !236, file: !62, line: 1872, baseType: !2648, size: 64, offset: 320)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = !DISubroutineType(types: !2650)
!2650 = !{!159, !209, !242, !213, !384}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !236, file: !62, line: 1873, baseType: !2652, size: 64, offset: 384)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!159, !242, !209, !242}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !236, file: !62, line: 1874, baseType: !2656, size: 64, offset: 448)
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = !DISubroutineType(types: !2658)
!2658 = !{!159, !209, !242}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !236, file: !62, line: 1875, baseType: !2660, size: 64, offset: 512)
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = !DISubroutineType(types: !2662)
!2662 = !{!159, !209, !242, !6}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !236, file: !62, line: 1876, baseType: !2664, size: 64, offset: 576)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = !DISubroutineType(types: !2666)
!2666 = !{!159, !209, !242, !213}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !236, file: !62, line: 1877, baseType: !2656, size: 64, offset: 640)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !236, file: !62, line: 1878, baseType: !2669, size: 64, offset: 704)
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{!159, !209, !242, !213, !398}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !236, file: !62, line: 1879, baseType: !2673, size: 64, offset: 768)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = !DISubroutineType(types: !2675)
!2675 = !{!159, !209, !242, !209, !242, !11}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !236, file: !62, line: 1881, baseType: !2677, size: 64, offset: 832)
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!159, !242, !2680}
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !62, line: 219, size: 640, elements: !2682)
!2682 = !{!2683, !2684, !2685, !2686, !2687, !2688, !2693, !2694, !2695}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !2681, file: !62, line: 220, baseType: !11, size: 32)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !2681, file: !62, line: 221, baseType: !213, size: 16, offset: 32)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !2681, file: !62, line: 222, baseType: !217, size: 32, offset: 64)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !2681, file: !62, line: 223, baseType: !226, size: 32, offset: 96)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !2681, file: !62, line: 224, baseType: !403, size: 64, offset: 128)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !2681, file: !62, line: 225, baseType: !2689, size: 128, offset: 192)
!2689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !610, line: 13, size: 128, elements: !2690)
!2690 = !{!2691, !2692}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2689, file: !610, line: 14, baseType: !609, size: 64)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2689, file: !610, line: 15, baseType: !528, size: 64, offset: 64)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !2681, file: !62, line: 226, baseType: !2689, size: 128, offset: 320)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !2681, file: !62, line: 227, baseType: !2689, size: 128, offset: 448)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !2681, file: !62, line: 234, baseType: !1143, size: 64, offset: 576)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !236, file: !62, line: 1882, baseType: !2697, size: 64, offset: 896)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!159, !382, !2700, !276, !11}
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !2702, line: 22, size: 1152, elements: !2703)
!2702 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!2703 = !{!2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721}
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !2701, file: !2702, line: 23, baseType: !276, size: 32)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2701, file: !2702, line: 24, baseType: !213, size: 16, offset: 32)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !2701, file: !2702, line: 25, baseType: !11, size: 32, offset: 64)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !2701, file: !2702, line: 26, baseType: !1557, size: 32, offset: 96)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !2701, file: !2702, line: 27, baseType: !282, size: 64, offset: 128)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !2701, file: !2702, line: 28, baseType: !282, size: 64, offset: 192)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2701, file: !2702, line: 37, baseType: !282, size: 64, offset: 256)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2701, file: !2702, line: 38, baseType: !398, size: 32, offset: 320)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !2701, file: !2702, line: 39, baseType: !398, size: 32, offset: 352)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2701, file: !2702, line: 40, baseType: !217, size: 32, offset: 384)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2701, file: !2702, line: 41, baseType: !226, size: 32, offset: 416)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2701, file: !2702, line: 42, baseType: !403, size: 64, offset: 448)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !2701, file: !2702, line: 43, baseType: !2689, size: 128, offset: 512)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !2701, file: !2702, line: 44, baseType: !2689, size: 128, offset: 640)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !2701, file: !2702, line: 45, baseType: !2689, size: 128, offset: 768)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !2701, file: !2702, line: 46, baseType: !2689, size: 128, offset: 896)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2701, file: !2702, line: 47, baseType: !282, size: 64, offset: 1024)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !2701, file: !2702, line: 48, baseType: !282, size: 64, offset: 1088)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !236, file: !62, line: 1883, baseType: !2723, size: 64, offset: 960)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!1172, !242, !365, !1175}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !236, file: !62, line: 1884, baseType: !2727, size: 64, offset: 1024)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{!159, !209, !2730, !282, !282}
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !62, line: 50, flags: DIFlagFwdDecl)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !236, file: !62, line: 1886, baseType: !2733, size: 64, offset: 1088)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = !DISubroutineType(types: !2735)
!2735 = !{!159, !209, !2736, !159}
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !236, file: !62, line: 1887, baseType: !2738, size: 64, offset: 1152)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!159, !209, !242, !1143, !11, !213}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !236, file: !62, line: 1890, baseType: !2664, size: 64, offset: 1216)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !236, file: !62, line: 1891, baseType: !2743, size: 64, offset: 1280)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = !DISubroutineType(types: !2745)
!2745 = !{!159, !209, !2641, !159}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !210, file: !62, line: 623, baseType: !393, size: 64, offset: 192)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !210, file: !62, line: 624, baseType: !205, size: 64, offset: 256)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !210, file: !62, line: 631, baseType: !162, size: 64, offset: 320)
!2749 = !DIDerivedType(tag: DW_TAG_member, scope: !210, file: !62, line: 639, baseType: !2750, size: 32, offset: 384)
!2750 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !210, file: !62, line: 639, size: 32, elements: !2751)
!2751 = !{!2752, !2754}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2750, file: !62, line: 640, baseType: !2753, size: 32)
!2753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2750, file: !62, line: 641, baseType: !11, size: 32)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !210, file: !62, line: 643, baseType: !398, size: 32, offset: 416)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !210, file: !62, line: 644, baseType: !403, size: 64, offset: 448)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !210, file: !62, line: 645, baseType: !2689, size: 128, offset: 512)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !210, file: !62, line: 646, baseType: !2689, size: 128, offset: 640)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !210, file: !62, line: 647, baseType: !2689, size: 128, offset: 768)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !210, file: !62, line: 648, baseType: !305, offset: 896)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !210, file: !62, line: 649, baseType: !214, size: 16, offset: 896)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !210, file: !62, line: 650, baseType: !996, size: 8, offset: 912)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !210, file: !62, line: 651, baseType: !996, size: 8, offset: 920)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !210, file: !62, line: 652, baseType: !723, size: 64, offset: 960)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !210, file: !62, line: 659, baseType: !162, size: 64, offset: 1024)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !210, file: !62, line: 660, baseType: !735, size: 256, offset: 1088)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !210, file: !62, line: 662, baseType: !162, size: 64, offset: 1344)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !210, file: !62, line: 663, baseType: !162, size: 64, offset: 1408)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !210, file: !62, line: 665, baseType: !440, size: 128, offset: 1472)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !210, file: !62, line: 666, baseType: !167, size: 128, offset: 1600)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !210, file: !62, line: 675, baseType: !167, size: 128, offset: 1728)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !210, file: !62, line: 676, baseType: !167, size: 128, offset: 1856)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !210, file: !62, line: 677, baseType: !167, size: 128, offset: 1984)
!2774 = !DIDerivedType(tag: DW_TAG_member, scope: !210, file: !62, line: 678, baseType: !2775, size: 128, offset: 2112)
!2775 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !210, file: !62, line: 678, size: 128, elements: !2776)
!2776 = !{!2777, !2778}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2775, file: !62, line: 679, baseType: !436, size: 64)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2775, file: !62, line: 680, baseType: !832, size: 128, align: 64)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !210, file: !62, line: 682, baseType: !564, size: 64, offset: 2240)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !210, file: !62, line: 683, baseType: !564, size: 64, offset: 2304)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !210, file: !62, line: 684, baseType: !574, size: 32, offset: 2368)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !210, file: !62, line: 685, baseType: !574, size: 32, offset: 2400)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !210, file: !62, line: 686, baseType: !574, size: 32, offset: 2432)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !210, file: !62, line: 688, baseType: !574, size: 32, offset: 2464)
!2785 = !DIDerivedType(tag: DW_TAG_member, scope: !210, file: !62, line: 690, baseType: !2786, size: 64, offset: 2496)
!2786 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !210, file: !62, line: 690, size: 64, elements: !2787)
!2787 = !{!2788, !2789}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2786, file: !62, line: 691, baseType: !1159, size: 64)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2786, file: !62, line: 692, baseType: !467, size: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !210, file: !62, line: 694, baseType: !2791, size: 64, offset: 2560)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !62, line: 1100, size: 384, elements: !2793)
!2793 = !{!2794, !2795, !2796, !2797}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2792, file: !62, line: 1101, baseType: !305)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2792, file: !62, line: 1102, baseType: !167, size: 128)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2792, file: !62, line: 1103, baseType: !167, size: 128, offset: 128)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2792, file: !62, line: 1104, baseType: !167, size: 128, offset: 256)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !210, file: !62, line: 695, baseType: !206, size: 1216, align: 64, offset: 2624)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !210, file: !62, line: 696, baseType: !167, size: 128, offset: 3840)
!2800 = !DIDerivedType(tag: DW_TAG_member, scope: !210, file: !62, line: 697, baseType: !2801, size: 64, offset: 3968)
!2801 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !210, file: !62, line: 697, size: 64, elements: !2802)
!2802 = !{!2803, !2804, !2805, !2808, !2809}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2801, file: !62, line: 698, baseType: !1240, size: 64)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2801, file: !62, line: 699, baseType: !756, size: 64)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2801, file: !62, line: 700, baseType: !2806, size: 64)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !62, line: 700, flags: DIFlagFwdDecl)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2801, file: !62, line: 701, baseType: !365, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2801, file: !62, line: 702, baseType: !11, size: 32)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !210, file: !62, line: 705, baseType: !278, size: 32, offset: 4032)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !210, file: !62, line: 708, baseType: !278, size: 32, offset: 4064)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !210, file: !62, line: 709, baseType: !2539, size: 64, offset: 4096)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !210, file: !62, line: 720, baseType: !163, size: 64, offset: 4160)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !206, file: !62, line: 453, baseType: !2179, size: 128, offset: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !206, file: !62, line: 454, baseType: !160, size: 32, offset: 192)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !206, file: !62, line: 455, baseType: !574, size: 32, offset: 224)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !206, file: !62, line: 460, baseType: !983, size: 128, offset: 256)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !206, file: !62, line: 461, baseType: !735, size: 256, offset: 384)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !206, file: !62, line: 462, baseType: !162, size: 64, offset: 640)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !206, file: !62, line: 463, baseType: !162, size: 64, offset: 704)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !206, file: !62, line: 464, baseType: !162, size: 64, offset: 768)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !206, file: !62, line: 465, baseType: !2823, size: 64, offset: 832)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2825)
!2825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !62, line: 367, size: 1408, elements: !2826)
!2826 = !{!2827, !2831, !2835, !2839, !2843, !2847, !2853, !2857, !2861, !2866, !2870, !2874, !2878, !2879, !2883, !2889, !2890, !2891, !2895, !2900, !2904, !2911}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !2825, file: !62, line: 368, baseType: !2828, size: 64)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = !DISubroutineType(types: !2830)
!2830 = !{!159, !192, !479}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !2825, file: !62, line: 369, baseType: !2832, size: 64, offset: 64)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{!159, !1143, !192}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !2825, file: !62, line: 372, baseType: !2836, size: 64, offset: 128)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{!159, !205, !479}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !2825, file: !62, line: 375, baseType: !2840, size: 64, offset: 192)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{!159, !192}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !2825, file: !62, line: 381, baseType: !2844, size: 64, offset: 256)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = !DISubroutineType(types: !2846)
!2846 = !{!159, !1143, !205, !166, !11}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !2825, file: !62, line: 383, baseType: !2848, size: 64, offset: 320)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{null, !2851}
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !62, line: 290, flags: DIFlagFwdDecl)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !2825, file: !62, line: 385, baseType: !2854, size: 64, offset: 384)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{!159, !1143, !205, !403, !11, !11, !191, !1389}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !2825, file: !62, line: 388, baseType: !2858, size: 64, offset: 448)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!159, !1143, !205, !403, !11, !11, !192, !163}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !2825, file: !62, line: 393, baseType: !2862, size: 64, offset: 512)
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = !DISubroutineType(types: !2864)
!2864 = !{!2865, !205, !2865}
!2865 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !161, line: 125, baseType: !282)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !2825, file: !62, line: 394, baseType: !2867, size: 64, offset: 576)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{null, !192, !11, !11}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !2825, file: !62, line: 395, baseType: !2871, size: 64, offset: 640)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{!159, !192, !160}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !2825, file: !62, line: 396, baseType: !2875, size: 64, offset: 704)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{null, !192}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !2825, file: !62, line: 397, baseType: !1184, size: 64, offset: 768)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !2825, file: !62, line: 402, baseType: !2880, size: 64, offset: 832)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{!159, !205, !192, !192, !24}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !2825, file: !62, line: 404, baseType: !2884, size: 64, offset: 896)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DISubroutineType(types: !2886)
!2886 = !{!384, !192, !2887}
!2887 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !2888, line: 305, baseType: !11)
!2888 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !2825, file: !62, line: 405, baseType: !2875, size: 64, offset: 960)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !2825, file: !62, line: 406, baseType: !2840, size: 64, offset: 1024)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !2825, file: !62, line: 407, baseType: !2892, size: 64, offset: 1088)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{!159, !192, !162, !162}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !2825, file: !62, line: 409, baseType: !2896, size: 64, offset: 1152)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{null, !192, !2899, !2899}
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !2825, file: !62, line: 410, baseType: !2901, size: 64, offset: 1216)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = !DISubroutineType(types: !2903)
!2903 = !{!159, !205, !192}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !2825, file: !62, line: 413, baseType: !2905, size: 64, offset: 1280)
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{!159, !2908, !1143, !2910}
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !62, line: 61, flags: DIFlagFwdDecl)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !2825, file: !62, line: 415, baseType: !2912, size: 64, offset: 1344)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{null, !1143}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !206, file: !62, line: 466, baseType: !162, size: 64, offset: 896)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !206, file: !62, line: 467, baseType: !1699, size: 32, offset: 960)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !206, file: !62, line: 468, baseType: !305, offset: 992)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !206, file: !62, line: 469, baseType: !167, size: 128, offset: 1024)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !206, file: !62, line: 470, baseType: !163, size: 64, offset: 1152)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !201, file: !194, line: 87, baseType: !162, size: 64, offset: 192)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !201, file: !194, line: 94, baseType: !162, size: 64, offset: 256)
!2922 = !DIDerivedType(tag: DW_TAG_member, scope: !198, file: !194, line: 96, baseType: !2923, size: 64)
!2923 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !198, file: !194, line: 96, size: 64, elements: !2924)
!2924 = !{!2925}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2923, file: !194, line: 101, baseType: !2926, size: 64)
!2926 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !161, line: 143, baseType: !282)
!2927 = !DIDerivedType(tag: DW_TAG_member, scope: !198, file: !194, line: 103, baseType: !2928, size: 320)
!2928 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !198, file: !194, line: 103, size: 320, elements: !2929)
!2929 = !{!2930, !2940, !2941, !2942}
!2930 = !DIDerivedType(tag: DW_TAG_member, scope: !2928, file: !194, line: 104, baseType: !2931, size: 128)
!2931 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2928, file: !194, line: 104, size: 128, elements: !2932)
!2932 = !{!2933, !2934}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !2931, file: !194, line: 105, baseType: !167, size: 128)
!2934 = !DIDerivedType(tag: DW_TAG_member, scope: !2931, file: !194, line: 106, baseType: !2935, size: 128)
!2935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2931, file: !194, line: 106, size: 128, elements: !2936)
!2936 = !{!2937, !2938, !2939}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2935, file: !194, line: 107, baseType: !192, size: 64)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2935, file: !194, line: 109, baseType: !159, size: 32, offset: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !2935, file: !194, line: 110, baseType: !159, size: 32, offset: 96)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !2928, file: !194, line: 117, baseType: !2198, size: 64, offset: 128)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !2928, file: !194, line: 119, baseType: !163, size: 64, offset: 192)
!2942 = !DIDerivedType(tag: DW_TAG_member, scope: !2928, file: !194, line: 120, baseType: !2943, size: 64, offset: 256)
!2943 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2928, file: !194, line: 120, size: 64, elements: !2944)
!2944 = !{!2945, !2946, !2947}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !2943, file: !194, line: 121, baseType: !163, size: 64)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !2943, file: !194, line: 122, baseType: !162, size: 64)
!2947 = !DIDerivedType(tag: DW_TAG_member, scope: !2943, file: !194, line: 123, baseType: !2948, size: 32)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2943, file: !194, line: 123, size: 32, elements: !2949)
!2949 = !{!2950, !2951, !2952}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !2948, file: !194, line: 124, baseType: !11, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !2948, file: !194, line: 125, baseType: !11, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2948, file: !194, line: 126, baseType: !11, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!2953 = !DIDerivedType(tag: DW_TAG_member, scope: !198, file: !194, line: 130, baseType: !2954, size: 192)
!2954 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !198, file: !194, line: 130, size: 192, elements: !2955)
!2955 = !{!2956, !2957, !2958, !2959, !2960}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2954, file: !194, line: 131, baseType: !162, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !2954, file: !194, line: 134, baseType: !288, size: 8, offset: 64)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !2954, file: !194, line: 135, baseType: !288, size: 8, offset: 72)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !2954, file: !194, line: 136, baseType: !574, size: 32, offset: 96)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !2954, file: !194, line: 137, baseType: !11, size: 32, offset: 128)
!2961 = !DIDerivedType(tag: DW_TAG_member, scope: !198, file: !194, line: 139, baseType: !2962, size: 256)
!2962 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !198, file: !194, line: 139, size: 256, elements: !2963)
!2963 = !{!2964, !2965, !2966}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !2962, file: !194, line: 140, baseType: !162, size: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !2962, file: !194, line: 141, baseType: !574, size: 32, offset: 64)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !2962, file: !194, line: 143, baseType: !167, size: 128, offset: 128)
!2967 = !DIDerivedType(tag: DW_TAG_member, scope: !198, file: !194, line: 145, baseType: !2968, size: 256)
!2968 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !198, file: !194, line: 145, size: 256, elements: !2969)
!2969 = !{!2970, !2971, !2972, !2973, !2978}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !2968, file: !194, line: 146, baseType: !162, size: 64)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !2968, file: !194, line: 147, baseType: !1114, size: 64, offset: 64)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !2968, file: !194, line: 148, baseType: !162, size: 64, offset: 128)
!2973 = !DIDerivedType(tag: DW_TAG_member, scope: !2968, file: !194, line: 149, baseType: !2974, size: 64, offset: 192)
!2974 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2968, file: !194, line: 149, size: 64, elements: !2975)
!2975 = !{!2976, !2977}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !2974, file: !194, line: 150, baseType: !1022, size: 64)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !2974, file: !194, line: 151, baseType: !574, size: 32)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2968, file: !194, line: 156, baseType: !305, offset: 256)
!2979 = !DIDerivedType(tag: DW_TAG_member, scope: !198, file: !194, line: 159, baseType: !2980, size: 128)
!2980 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !198, file: !194, line: 159, size: 128, elements: !2981)
!2981 = !{!2982, !3046}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2980, file: !194, line: 161, baseType: !2983, size: 64)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !49, line: 110, size: 1152, elements: !2985)
!2985 = !{!2986, !2996, !3017, !3018, !3019, !3020, !3021, !3033, !3034, !3035}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2984, file: !49, line: 111, baseType: !2987, size: 384)
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !49, line: 19, size: 384, elements: !2988)
!2988 = !{!2989, !2991, !2992, !2993, !2994, !2995}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2987, file: !49, line: 20, baseType: !2990, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !162)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2987, file: !49, line: 21, baseType: !2990, size: 64, offset: 64)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2987, file: !49, line: 22, baseType: !2990, size: 64, offset: 128)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2987, file: !49, line: 23, baseType: !162, size: 64, offset: 192)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2987, file: !49, line: 24, baseType: !162, size: 64, offset: 256)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2987, file: !49, line: 25, baseType: !162, size: 64, offset: 320)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2984, file: !49, line: 112, baseType: !2997, size: 64, offset: 384)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2999, line: 105, size: 128, elements: !3000)
!2999 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!3000 = !{!3001, !3002}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2998, file: !2999, line: 110, baseType: !162, size: 64)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2998, file: !2999, line: 118, baseType: !3003, size: 64, offset: 64)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2999, line: 95, size: 448, elements: !3005)
!3005 = !{!3006, !3007, !3012, !3013, !3014, !3015, !3016}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3004, file: !2999, line: 96, baseType: !562, size: 64)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3004, file: !2999, line: 97, baseType: !3008, size: 64, offset: 64)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2999, line: 60, baseType: !3010)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{null, !2997}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !3004, file: !2999, line: 98, baseType: !3008, size: 64, offset: 128)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !3004, file: !2999, line: 99, baseType: !384, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !3004, file: !2999, line: 100, baseType: !384, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3004, file: !2999, line: 101, baseType: !832, size: 128, align: 64, offset: 256)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3004, file: !2999, line: 102, baseType: !2997, size: 64, offset: 384)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2984, file: !49, line: 113, baseType: !2998, size: 128, offset: 448)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2984, file: !49, line: 114, baseType: !1799, size: 192, offset: 576)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2984, file: !49, line: 115, baseType: !48, size: 32, offset: 768)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2984, file: !49, line: 116, baseType: !11, size: 32, offset: 800)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2984, file: !49, line: 117, baseType: !3022, size: 64, offset: 832)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3024)
!3024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !49, line: 67, size: 256, elements: !3025)
!3025 = !{!3026, !3027, !3031, !3032}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !3024, file: !49, line: 73, baseType: !2875, size: 64)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !3024, file: !49, line: 78, baseType: !3028, size: 64, offset: 64)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{null, !2983}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !3024, file: !49, line: 83, baseType: !3028, size: 64, offset: 128)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !3024, file: !49, line: 89, baseType: !1075, size: 64, offset: 192)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2984, file: !49, line: 118, baseType: !163, size: 64, offset: 896)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2984, file: !49, line: 119, baseType: !159, size: 32, offset: 960)
!3035 = !DIDerivedType(tag: DW_TAG_member, scope: !2984, file: !49, line: 120, baseType: !3036, size: 128, offset: 1024)
!3036 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2984, file: !49, line: 120, size: 128, elements: !3037)
!3037 = !{!3038, !3044}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3036, file: !49, line: 121, baseType: !3039, size: 128)
!3039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !3040, line: 6, size: 128, elements: !3041)
!3040 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!3041 = !{!3042, !3043}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3039, file: !3040, line: 7, baseType: !282, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3039, file: !3040, line: 8, baseType: !282, size: 64, offset: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !3036, file: !49, line: 122, baseType: !3045)
!3045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3039, elements: !1677)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2980, file: !194, line: 162, baseType: !163, size: 64, offset: 64)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !198, file: !194, line: 176, baseType: !832, size: 128, align: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, scope: !193, file: !194, line: 179, baseType: !3049, size: 32, offset: 384)
!3049 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !193, file: !194, line: 179, size: 32, elements: !3050)
!3050 = !{!3051, !3052, !3053, !3054}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3049, file: !194, line: 184, baseType: !574, size: 32)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !3049, file: !194, line: 192, baseType: !11, size: 32)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3049, file: !194, line: 194, baseType: !11, size: 32)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !3049, file: !194, line: 195, baseType: !159, size: 32)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !193, file: !194, line: 199, baseType: !574, size: 32, offset: 416)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !183, file: !184, line: 62, baseType: !11, size: 32, offset: 320)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !183, file: !184, line: 63, baseType: !3058, size: 64, offset: 384)
!3058 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !161, line: 153, baseType: !282)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !183, file: !184, line: 64, baseType: !3060, size: 64, offset: 448)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "hvm", scope: !176, file: !3, line: 66, baseType: !3063, size: 2112)
!3063 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !176, file: !3, line: 62, size: 2112, elements: !3064)
!3064 = !{!3065, !3067, !3069}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3063, file: !3, line: 63, baseType: !3066, size: 1024)
!3066 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 1024, elements: !1977)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !3063, file: !3, line: 64, baseType: !3068, size: 1024, offset: 1024)
!3068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 1024, elements: !1977)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3063, file: !3, line: 65, baseType: !163, size: 64, offset: 2048)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !172, file: !3, line: 68, baseType: !3071, size: 512, offset: 2240)
!3071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3072, size: 512, elements: !1977)
!3072 = !DIDerivedType(tag: DW_TAG_typedef, name: "grant_handle_t", file: !3073, line: 242, baseType: !1557)
!3073 = !DIFile(filename: "./include/xen/interface/grant_table.h", directory: "/home/lizy2001/genbc/linux")
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "nr_handles", scope: !172, file: !3, line: 69, baseType: !11, size: 32, offset: 2752)
!3075 = !{!0, !3076, !4281, !4283, !4285, !4287}
!3076 = !DIGlobalVariableExpression(var: !3077, expr: !DIExpression())
!3077 = distinct !DIGlobalVariable(name: "ring_ops", scope: !22, file: !3, line: 95, type: !3078, isLocal: true, isDefinition: true)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3080)
!3080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenbus_ring_ops", file: !3, line: 88, size: 128, elements: !3081)
!3081 = !{!3082, !4277}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3080, file: !3, line: 89, baseType: !3083, size: 64)
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{!159, !3086, !4243, !4276, !11, !1389}
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3087, size: 64)
!3087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenbus_device", file: !3088, line: 71, size: 6784, elements: !3089)
!3088 = !DIFile(filename: "./include/xen/xenbus.h", directory: "/home/lizy2001/genbc/linux")
!3089 = !{!3090, !3091, !3092, !3093, !3094, !3104, !4233, !4234, !4235, !4236}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "devicetype", scope: !3087, file: !3088, line: 72, baseType: !6, size: 64)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !3087, file: !3088, line: 73, baseType: !6, size: 64, offset: 64)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "otherend", scope: !3087, file: !3088, line: 74, baseType: !6, size: 64, offset: 128)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "otherend_id", scope: !3087, file: !3088, line: 75, baseType: !159, size: 32, offset: 192)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "otherend_watch", scope: !3087, file: !3088, line: 76, baseType: !3095, size: 256, offset: 256)
!3095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenbus_watch", file: !3088, line: 57, size: 256, elements: !3096)
!3096 = !{!3097, !3098, !3099}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3095, file: !3088, line: 59, baseType: !167, size: 128)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3095, file: !3088, line: 62, baseType: !6, size: 64, offset: 128)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !3095, file: !3088, line: 65, baseType: !3100, size: 64, offset: 192)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{null, !3103, !6, !6}
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3087, file: !3088, line: 77, baseType: !3105, size: 5568, offset: 512)
!3105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !91, line: 461, size: 5568, elements: !3106)
!3106 = !{!3107, !3405, !3407, !3410, !3411, !3462, !3553, !3554, !3555, !3556, !3557, !3566, !3671, !3684, !4160, !4161, !4165, !4167, !4168, !4169, !4173, !4179, !4180, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4221, !4222, !4223, !4226, !4229, !4230, !4231, !4232}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3105, file: !91, line: 462, baseType: !3108, size: 512)
!3108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !3109, line: 64, size: 512, elements: !3110)
!3109 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!3110 = !{!3111, !3112, !3113, !3115, !3155, !3255, !3395, !3400, !3401, !3402, !3403, !3404}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3108, file: !3109, line: 65, baseType: !6, size: 64)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3108, file: !3109, line: 66, baseType: !167, size: 128, offset: 64)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3108, file: !3109, line: 67, baseType: !3114, size: 64, offset: 192)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !3108, file: !3109, line: 68, baseType: !3116, size: 64, offset: 256)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !3109, line: 192, size: 704, elements: !3118)
!3118 = !{!3119, !3120, !3121, !3122}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3117, file: !3109, line: 193, baseType: !167, size: 128)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3117, file: !3109, line: 194, baseType: !305, offset: 128)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3117, file: !3109, line: 195, baseType: !3108, size: 512, offset: 128)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !3117, file: !3109, line: 196, baseType: !3123, size: 64, offset: 640)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3125)
!3125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !3109, line: 156, size: 192, elements: !3126)
!3126 = !{!3127, !3132, !3137}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3125, file: !3109, line: 157, baseType: !3128, size: 64)
!3128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3129)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{!159, !3116, !3114}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3125, file: !3109, line: 158, baseType: !3133, size: 64, offset: 64)
!3133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3134)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{!6, !3116, !3114}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3125, file: !3109, line: 159, baseType: !3138, size: 64, offset: 128)
!3138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3139)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{!159, !3116, !3114, !3142}
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !3109, line: 148, size: 20736, elements: !3144)
!3144 = !{!3145, !3147, !3149, !3150, !3154}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !3143, file: !3109, line: 149, baseType: !3146, size: 192)
!3146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 192, elements: !452)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !3143, file: !3109, line: 150, baseType: !3148, size: 4096, offset: 192)
!3148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 4096, elements: !2124)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !3143, file: !3109, line: 151, baseType: !159, size: 32, offset: 4288)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3143, file: !3109, line: 152, baseType: !3151, size: 16384, offset: 4320)
!3151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 16384, elements: !3152)
!3152 = !{!3153}
!3153 = !DISubrange(count: 2048)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !3143, file: !3109, line: 153, baseType: !159, size: 32, offset: 20704)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !3108, file: !3109, line: 69, baseType: !3156, size: 64, offset: 320)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !3109, line: 138, size: 448, elements: !3158)
!3158 = !{!3159, !3163, !3182, !3184, !3217, !3245, !3249}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3157, file: !3109, line: 139, baseType: !3160, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = !DISubroutineType(types: !3162)
!3162 = !{null, !3114}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !3157, file: !3109, line: 140, baseType: !3164, size: 64, offset: 64)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3166)
!3166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !3167, line: 230, size: 128, elements: !3168)
!3167 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!3168 = !{!3169, !3178}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3166, file: !3167, line: 231, baseType: !3170, size: 64)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = !DISubroutineType(types: !3172)
!3172 = !{!1172, !3114, !3173, !365}
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !3167, line: 30, size: 128, elements: !3175)
!3175 = !{!3176, !3177}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3174, file: !3167, line: 31, baseType: !6, size: 64)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3174, file: !3167, line: 32, baseType: !213, size: 16, offset: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3166, file: !3167, line: 232, baseType: !3179, size: 64, offset: 64)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{!1172, !3114, !3173, !6, !1175}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !3157, file: !3109, line: 141, baseType: !3183, size: 64, offset: 128)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !3157, file: !3109, line: 142, baseType: !3185, size: 64, offset: 192)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3188)
!3188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !3167, line: 84, size: 320, elements: !3189)
!3189 = !{!3190, !3191, !3195, !3214, !3215}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3188, file: !3167, line: 85, baseType: !6, size: 64)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !3188, file: !3167, line: 86, baseType: !3192, size: 64, offset: 64)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{!213, !3114, !3173, !159}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !3188, file: !3167, line: 88, baseType: !3196, size: 64, offset: 128)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{!213, !3114, !3199, !159}
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !3167, line: 168, size: 448, elements: !3201)
!3201 = !{!3202, !3203, !3204, !3205, !3209, !3210}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3200, file: !3167, line: 169, baseType: !3174, size: 128)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3200, file: !3167, line: 170, baseType: !1175, size: 64, offset: 128)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3200, file: !3167, line: 171, baseType: !163, size: 64, offset: 192)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3200, file: !3167, line: 172, baseType: !3206, size: 64, offset: 256)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{!1172, !1143, !3114, !3199, !365, !403, !1175}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3200, file: !3167, line: 174, baseType: !3206, size: 64, offset: 320)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3200, file: !3167, line: 176, baseType: !3211, size: 64, offset: 384)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = !DISubroutineType(types: !3213)
!3213 = !{!159, !1143, !3114, !3199, !1029}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !3188, file: !3167, line: 90, baseType: !3183, size: 64, offset: 192)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !3188, file: !3167, line: 91, baseType: !3216, size: 64, offset: 256)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !3157, file: !3109, line: 143, baseType: !3218, size: 64, offset: 256)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{!3221, !3114}
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3223)
!3223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !79, line: 39, size: 384, elements: !3224)
!3224 = !{!3225, !3226, !3230, !3234, !3240, !3244}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3223, file: !79, line: 40, baseType: !78, size: 32)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3223, file: !79, line: 41, baseType: !3227, size: 64, offset: 64)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DISubroutineType(types: !3229)
!3229 = !{!384}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3223, file: !79, line: 42, baseType: !3231, size: 64, offset: 128)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = !DISubroutineType(types: !3233)
!3233 = !{!163}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3223, file: !79, line: 43, baseType: !3235, size: 64, offset: 192)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{!3060, !3238}
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !79, line: 19, flags: DIFlagFwdDecl)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3223, file: !79, line: 44, baseType: !3241, size: 64, offset: 256)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!3060}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3223, file: !79, line: 45, baseType: !2629, size: 64, offset: 320)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3157, file: !3109, line: 144, baseType: !3246, size: 64, offset: 320)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!3060, !3114}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3157, file: !3109, line: 145, baseType: !3250, size: 64, offset: 384)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{null, !3114, !3253, !3254}
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !3108, file: !3109, line: 70, baseType: !3256, size: 64, offset: 384)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !3258, line: 123, size: 1024, elements: !3259)
!3258 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!3259 = !{!3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3388, !3389, !3390, !3391, !3392}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3257, file: !3258, line: 124, baseType: !574, size: 32)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3257, file: !3258, line: 125, baseType: !574, size: 32, offset: 32)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3257, file: !3258, line: 135, baseType: !3256, size: 64, offset: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3257, file: !3258, line: 136, baseType: !6, size: 64, offset: 128)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3257, file: !3258, line: 138, baseType: !885, size: 192, align: 64, offset: 192)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3257, file: !3258, line: 140, baseType: !3060, size: 64, offset: 384)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3257, file: !3258, line: 141, baseType: !11, size: 32, offset: 448)
!3267 = !DIDerivedType(tag: DW_TAG_member, scope: !3257, file: !3258, line: 142, baseType: !3268, size: 256, offset: 512)
!3268 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3257, file: !3258, line: 142, size: 256, elements: !3269)
!3269 = !{!3270, !3316, !3320}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3268, file: !3258, line: 143, baseType: !3271, size: 192)
!3271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !3258, line: 91, size: 192, elements: !3272)
!3272 = !{!3273, !3274, !3275}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3271, file: !3258, line: 92, baseType: !162, size: 64)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3271, file: !3258, line: 94, baseType: !986, size: 64, offset: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3271, file: !3258, line: 100, baseType: !3276, size: 64, offset: 128)
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !3258, line: 180, size: 704, elements: !3278)
!3278 = !{!3279, !3280, !3281, !3288, !3289, !3290, !3314, !3315}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3277, file: !3258, line: 182, baseType: !3256, size: 64)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3277, file: !3258, line: 183, baseType: !11, size: 32, offset: 64)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3277, file: !3258, line: 186, baseType: !3282, size: 192, offset: 128)
!3282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3283, line: 19, size: 192, elements: !3284)
!3283 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3284 = !{!3285, !3286, !3287}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3282, file: !3283, line: 20, baseType: !2179, size: 128)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3282, file: !3283, line: 21, baseType: !11, size: 32, offset: 128)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3282, file: !3283, line: 22, baseType: !11, size: 32, offset: 160)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3277, file: !3258, line: 187, baseType: !276, size: 32, offset: 320)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3277, file: !3258, line: 188, baseType: !276, size: 32, offset: 352)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3277, file: !3258, line: 189, baseType: !3291, size: 64, offset: 384)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !3258, line: 168, size: 320, elements: !3293)
!3293 = !{!3294, !3298, !3302, !3306, !3310}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3292, file: !3258, line: 169, baseType: !3295, size: 64)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = !DISubroutineType(types: !3297)
!3297 = !{!159, !514, !3276}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3292, file: !3258, line: 171, baseType: !3299, size: 64, offset: 64)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = !DISubroutineType(types: !3301)
!3301 = !{!159, !3256, !6, !213}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3292, file: !3258, line: 173, baseType: !3303, size: 64, offset: 128)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{!159, !3256}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3292, file: !3258, line: 174, baseType: !3307, size: 64, offset: 192)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{!159, !3256, !3256, !6}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3292, file: !3258, line: 176, baseType: !3311, size: 64, offset: 256)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!159, !514, !3256, !3276}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3277, file: !3258, line: 192, baseType: !167, size: 128, offset: 448)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3277, file: !3258, line: 194, baseType: !813, size: 128, offset: 576)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3268, file: !3258, line: 144, baseType: !3317, size: 64)
!3317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !3258, line: 103, size: 64, elements: !3318)
!3318 = !{!3319}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3317, file: !3258, line: 104, baseType: !3256, size: 64)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3268, file: !3258, line: 145, baseType: !3321, size: 256)
!3321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !3258, line: 107, size: 256, elements: !3322)
!3322 = !{!3323, !3383, !3386, !3387}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3321, file: !3258, line: 108, baseType: !3324, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3326)
!3326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !3258, line: 217, size: 768, elements: !3327)
!3327 = !{!3328, !3348, !3352, !3356, !3360, !3364, !3368, !3372, !3373, !3374, !3375, !3379}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3326, file: !3258, line: 222, baseType: !3329, size: 64)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = !DISubroutineType(types: !3331)
!3331 = !{!159, !3332}
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !3258, line: 197, size: 1088, elements: !3334)
!3334 = !{!3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3333, file: !3258, line: 199, baseType: !3256, size: 64)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3333, file: !3258, line: 200, baseType: !1143, size: 64, offset: 64)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3333, file: !3258, line: 201, baseType: !514, size: 64, offset: 128)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3333, file: !3258, line: 202, baseType: !163, size: 64, offset: 192)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3333, file: !3258, line: 205, baseType: !558, size: 192, offset: 256)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3333, file: !3258, line: 206, baseType: !558, size: 192, offset: 448)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3333, file: !3258, line: 207, baseType: !159, size: 32, offset: 640)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3333, file: !3258, line: 208, baseType: !167, size: 128, offset: 704)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3333, file: !3258, line: 209, baseType: !365, size: 64, offset: 832)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3333, file: !3258, line: 211, baseType: !1175, size: 64, offset: 896)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3333, file: !3258, line: 212, baseType: !384, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3333, file: !3258, line: 213, baseType: !384, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3333, file: !3258, line: 214, baseType: !1057, size: 64, offset: 1024)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3326, file: !3258, line: 223, baseType: !3349, size: 64, offset: 64)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{null, !3332}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3326, file: !3258, line: 236, baseType: !3353, size: 64, offset: 128)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DISubroutineType(types: !3355)
!3355 = !{!159, !514, !163}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3326, file: !3258, line: 238, baseType: !3357, size: 64, offset: 192)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{!163, !514, !1178}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3326, file: !3258, line: 239, baseType: !3361, size: 64, offset: 256)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{!163, !514, !163, !1178}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3326, file: !3258, line: 240, baseType: !3365, size: 64, offset: 320)
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3366 = !DISubroutineType(types: !3367)
!3367 = !{null, !514, !163}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3326, file: !3258, line: 242, baseType: !3369, size: 64, offset: 384)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{!1172, !3332, !365, !1175, !403}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3326, file: !3258, line: 252, baseType: !1175, size: 64, offset: 448)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3326, file: !3258, line: 259, baseType: !384, size: 8, offset: 512)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3326, file: !3258, line: 260, baseType: !3369, size: 64, offset: 576)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3326, file: !3258, line: 263, baseType: !3376, size: 64, offset: 640)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{!1274, !3332, !1276}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3326, file: !3258, line: 266, baseType: !3380, size: 64, offset: 704)
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = !DISubroutineType(types: !3382)
!3382 = !{!159, !3332, !1029}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3321, file: !3258, line: 109, baseType: !3384, size: 64, offset: 64)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !3258, line: 31, flags: DIFlagFwdDecl)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3321, file: !3258, line: 110, baseType: !403, size: 64, offset: 128)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3321, file: !3258, line: 111, baseType: !3256, size: 64, offset: 192)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3257, file: !3258, line: 148, baseType: !163, size: 64, offset: 768)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3257, file: !3258, line: 154, baseType: !282, size: 64, offset: 832)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3257, file: !3258, line: 156, baseType: !214, size: 16, offset: 896)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3257, file: !3258, line: 157, baseType: !213, size: 16, offset: 912)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3257, file: !3258, line: 158, baseType: !3393, size: 64, offset: 960)
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !3258, line: 32, flags: DIFlagFwdDecl)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3108, file: !3109, line: 71, baseType: !3396, size: 32, offset: 448)
!3396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3397, line: 19, size: 32, elements: !3398)
!3397 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3398 = !{!3399}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3396, file: !3397, line: 20, baseType: !860, size: 32)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !3108, file: !3109, line: 75, baseType: !11, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !3108, file: !3109, line: 76, baseType: !11, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !3108, file: !3109, line: 77, baseType: !11, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !3108, file: !3109, line: 78, baseType: !11, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !3108, file: !3109, line: 79, baseType: !11, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3105, file: !91, line: 463, baseType: !3406, size: 64, offset: 512)
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3105, file: !91, line: 465, baseType: !3408, size: 64, offset: 576)
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !91, line: 36, flags: DIFlagFwdDecl)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3105, file: !91, line: 467, baseType: !6, size: 64, offset: 640)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3105, file: !91, line: 468, baseType: !3412, size: 64, offset: 704)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3414)
!3414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !91, line: 87, size: 384, elements: !3415)
!3415 = !{!3416, !3417, !3418, !3422, !3427, !3431}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3414, file: !91, line: 88, baseType: !6, size: 64)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3414, file: !91, line: 89, baseType: !3185, size: 64, offset: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3414, file: !91, line: 90, baseType: !3419, size: 64, offset: 128)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DISubroutineType(types: !3421)
!3421 = !{!159, !3406, !3142}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3414, file: !91, line: 91, baseType: !3423, size: 64, offset: 192)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{!365, !3406, !3426, !3253, !3254}
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3414, file: !91, line: 93, baseType: !3428, size: 64, offset: 256)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{null, !3406}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3414, file: !91, line: 95, baseType: !3432, size: 64, offset: 320)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3434)
!3434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !98, line: 278, size: 1472, elements: !3435)
!3435 = !{!3436, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3434, file: !98, line: 279, baseType: !3437, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{!159, !3406}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3434, file: !98, line: 280, baseType: !3428, size: 64, offset: 64)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3434, file: !98, line: 281, baseType: !3437, size: 64, offset: 128)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3434, file: !98, line: 282, baseType: !3437, size: 64, offset: 192)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3434, file: !98, line: 283, baseType: !3437, size: 64, offset: 256)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3434, file: !98, line: 284, baseType: !3437, size: 64, offset: 320)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3434, file: !98, line: 285, baseType: !3437, size: 64, offset: 384)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3434, file: !98, line: 286, baseType: !3437, size: 64, offset: 448)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3434, file: !98, line: 287, baseType: !3437, size: 64, offset: 512)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3434, file: !98, line: 288, baseType: !3437, size: 64, offset: 576)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3434, file: !98, line: 289, baseType: !3437, size: 64, offset: 640)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3434, file: !98, line: 290, baseType: !3437, size: 64, offset: 704)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3434, file: !98, line: 291, baseType: !3437, size: 64, offset: 768)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3434, file: !98, line: 292, baseType: !3437, size: 64, offset: 832)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3434, file: !98, line: 293, baseType: !3437, size: 64, offset: 896)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3434, file: !98, line: 294, baseType: !3437, size: 64, offset: 960)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3434, file: !98, line: 295, baseType: !3437, size: 64, offset: 1024)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3434, file: !98, line: 296, baseType: !3437, size: 64, offset: 1088)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3434, file: !98, line: 297, baseType: !3437, size: 64, offset: 1152)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3434, file: !98, line: 298, baseType: !3437, size: 64, offset: 1216)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3434, file: !98, line: 299, baseType: !3437, size: 64, offset: 1280)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3434, file: !98, line: 300, baseType: !3437, size: 64, offset: 1344)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3434, file: !98, line: 301, baseType: !3437, size: 64, offset: 1408)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3105, file: !91, line: 470, baseType: !3463, size: 64, offset: 768)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3465, line: 82, size: 1408, elements: !3466)
!3465 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3466 = !{!3467, !3468, !3469, !3470, !3471, !3472, !3473, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3548, !3551, !3552}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3464, file: !3465, line: 83, baseType: !6, size: 64)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3464, file: !3465, line: 84, baseType: !6, size: 64, offset: 64)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3464, file: !3465, line: 85, baseType: !3406, size: 64, offset: 128)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3464, file: !3465, line: 86, baseType: !3185, size: 64, offset: 192)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3464, file: !3465, line: 87, baseType: !3185, size: 64, offset: 256)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3464, file: !3465, line: 88, baseType: !3185, size: 64, offset: 320)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3464, file: !3465, line: 90, baseType: !3474, size: 64, offset: 384)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{!159, !3406, !3477}
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !85, line: 95, size: 1152, elements: !3479)
!3479 = !{!3480, !3481, !3482, !3483, !3484, !3485, !3486, !3499, !3512, !3513, !3514, !3515, !3516, !3524, !3525, !3526, !3527, !3528, !3529}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3478, file: !85, line: 96, baseType: !6, size: 64)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3478, file: !85, line: 97, baseType: !3463, size: 64, offset: 64)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3478, file: !85, line: 99, baseType: !431, size: 64, offset: 128)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3478, file: !85, line: 100, baseType: !6, size: 64, offset: 192)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3478, file: !85, line: 102, baseType: !384, size: 8, offset: 256)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3478, file: !85, line: 103, baseType: !84, size: 32, offset: 288)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3478, file: !85, line: 105, baseType: !3487, size: 64, offset: 320)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3489)
!3489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3490, line: 262, size: 1600, elements: !3491)
!3490 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3491 = !{!3492, !3493, !3494, !3498}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3489, file: !3490, line: 263, baseType: !2542, size: 256)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3489, file: !3490, line: 264, baseType: !2542, size: 256, offset: 256)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3489, file: !3490, line: 265, baseType: !3495, size: 1024, offset: 512)
!3495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 1024, elements: !3496)
!3496 = !{!3497}
!3497 = !DISubrange(count: 128)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3489, file: !3490, line: 266, baseType: !3060, size: 64, offset: 1536)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3478, file: !85, line: 106, baseType: !3500, size: 64, offset: 384)
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3502)
!3502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3490, line: 210, size: 256, elements: !3503)
!3503 = !{!3504, !3508, !3510, !3511}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3502, file: !3490, line: 211, baseType: !3505, size: 72)
!3505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !997, size: 72, elements: !3506)
!3506 = !{!3507}
!3507 = !DISubrange(count: 9)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3502, file: !3490, line: 212, baseType: !3509, size: 64, offset: 128)
!3509 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3490, line: 14, baseType: !162)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3502, file: !3490, line: 213, baseType: !278, size: 32, offset: 192)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3502, file: !3490, line: 214, baseType: !278, size: 32, offset: 224)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3478, file: !85, line: 108, baseType: !3437, size: 64, offset: 448)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3478, file: !85, line: 109, baseType: !3428, size: 64, offset: 512)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3478, file: !85, line: 110, baseType: !3437, size: 64, offset: 576)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3478, file: !85, line: 111, baseType: !3428, size: 64, offset: 640)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3478, file: !85, line: 112, baseType: !3517, size: 64, offset: 704)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{!159, !3406, !3520}
!3520 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !98, line: 52, baseType: !3521)
!3521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !98, line: 50, size: 32, elements: !3522)
!3522 = !{!3523}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3521, file: !98, line: 51, baseType: !159, size: 32)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3478, file: !85, line: 113, baseType: !3437, size: 64, offset: 768)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3478, file: !85, line: 114, baseType: !3185, size: 64, offset: 832)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3478, file: !85, line: 115, baseType: !3185, size: 64, offset: 896)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3478, file: !85, line: 117, baseType: !3432, size: 64, offset: 960)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3478, file: !85, line: 118, baseType: !3428, size: 64, offset: 1024)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3478, file: !85, line: 120, baseType: !3530, size: 64, offset: 1088)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !85, line: 120, flags: DIFlagFwdDecl)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3464, file: !3465, line: 91, baseType: !3419, size: 64, offset: 448)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3464, file: !3465, line: 92, baseType: !3437, size: 64, offset: 512)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3464, file: !3465, line: 93, baseType: !3428, size: 64, offset: 576)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3464, file: !3465, line: 94, baseType: !3437, size: 64, offset: 640)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3464, file: !3465, line: 95, baseType: !3428, size: 64, offset: 704)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3464, file: !3465, line: 97, baseType: !3437, size: 64, offset: 768)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3464, file: !3465, line: 98, baseType: !3437, size: 64, offset: 832)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3464, file: !3465, line: 100, baseType: !3517, size: 64, offset: 896)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3464, file: !3465, line: 101, baseType: !3437, size: 64, offset: 960)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3464, file: !3465, line: 103, baseType: !3437, size: 64, offset: 1024)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3464, file: !3465, line: 105, baseType: !3437, size: 64, offset: 1088)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3464, file: !3465, line: 107, baseType: !3432, size: 64, offset: 1152)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3464, file: !3465, line: 109, baseType: !3545, size: 64, offset: 1216)
!3545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64)
!3546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3547)
!3547 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3465, line: 109, flags: DIFlagFwdDecl)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3464, file: !3465, line: 111, baseType: !3549, size: 64, offset: 1280)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3465, line: 111, flags: DIFlagFwdDecl)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3464, file: !3465, line: 112, baseType: !446, offset: 1344)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3464, file: !3465, line: 114, baseType: !384, size: 8, offset: 1344)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3105, file: !91, line: 471, baseType: !3477, size: 64, offset: 832)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3105, file: !91, line: 473, baseType: !163, size: 64, offset: 896)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3105, file: !91, line: 475, baseType: !163, size: 64, offset: 960)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3105, file: !91, line: 480, baseType: !558, size: 192, offset: 1024)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3105, file: !91, line: 484, baseType: !3558, size: 576, offset: 1216)
!3558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !91, line: 361, size: 576, elements: !3559)
!3559 = !{!3560, !3561, !3562, !3563, !3564, !3565}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3558, file: !91, line: 362, baseType: !167, size: 128)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3558, file: !91, line: 363, baseType: !167, size: 128, offset: 128)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3558, file: !91, line: 364, baseType: !167, size: 128, offset: 256)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3558, file: !91, line: 365, baseType: !167, size: 128, offset: 384)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3558, file: !91, line: 366, baseType: !384, size: 8, offset: 512)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3558, file: !91, line: 367, baseType: !90, size: 32, offset: 544)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3105, file: !91, line: 485, baseType: !3567, size: 2304, offset: 1792)
!3567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !98, line: 565, size: 2304, elements: !3568)
!3568 = !{!3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3664, !3668}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3567, file: !98, line: 566, baseType: !3520, size: 32)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3567, file: !98, line: 567, baseType: !11, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3567, file: !98, line: 568, baseType: !11, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3567, file: !98, line: 569, baseType: !384, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3567, file: !98, line: 570, baseType: !384, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3567, file: !98, line: 571, baseType: !384, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3567, file: !98, line: 572, baseType: !384, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3567, file: !98, line: 573, baseType: !384, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3567, file: !98, line: 574, baseType: !384, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3567, file: !98, line: 575, baseType: !384, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3567, file: !98, line: 576, baseType: !384, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3567, file: !98, line: 577, baseType: !276, size: 32, offset: 64)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3567, file: !98, line: 578, baseType: !305, offset: 96)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3567, file: !98, line: 580, baseType: !167, size: 128, offset: 128)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3567, file: !98, line: 581, baseType: !1799, size: 192, offset: 256)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3567, file: !98, line: 582, baseType: !3585, size: 64, offset: 448)
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3587, line: 43, size: 1472, elements: !3588)
!3587 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3588 = !{!3589, !3590, !3591, !3592, !3593, !3596, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3586, file: !3587, line: 44, baseType: !6, size: 64)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3586, file: !3587, line: 45, baseType: !159, size: 32, offset: 64)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3586, file: !3587, line: 46, baseType: !167, size: 128, offset: 128)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3586, file: !3587, line: 47, baseType: !305, offset: 256)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3586, file: !3587, line: 48, baseType: !3594, size: 64, offset: 256)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !98, line: 533, flags: DIFlagFwdDecl)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3586, file: !3587, line: 49, baseType: !3597, size: 320, offset: 320)
!3597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3598, line: 11, size: 320, elements: !3599)
!3598 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3599 = !{!3600, !3601, !3602, !3607}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3597, file: !3598, line: 16, baseType: !440, size: 128)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3597, file: !3598, line: 17, baseType: !162, size: 64, offset: 128)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3597, file: !3598, line: 18, baseType: !3603, size: 64, offset: 192)
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!3604 = !DISubroutineType(types: !3605)
!3605 = !{null, !3606}
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3597, file: !3598, line: 19, baseType: !276, size: 32, offset: 256)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3586, file: !3587, line: 50, baseType: !162, size: 64, offset: 640)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3586, file: !3587, line: 51, baseType: !937, size: 64, offset: 704)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3586, file: !3587, line: 52, baseType: !937, size: 64, offset: 768)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3586, file: !3587, line: 53, baseType: !937, size: 64, offset: 832)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3586, file: !3587, line: 54, baseType: !937, size: 64, offset: 896)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3586, file: !3587, line: 55, baseType: !937, size: 64, offset: 960)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3586, file: !3587, line: 56, baseType: !162, size: 64, offset: 1024)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3586, file: !3587, line: 57, baseType: !162, size: 64, offset: 1088)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3586, file: !3587, line: 58, baseType: !162, size: 64, offset: 1152)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3586, file: !3587, line: 59, baseType: !162, size: 64, offset: 1216)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3586, file: !3587, line: 60, baseType: !162, size: 64, offset: 1280)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3586, file: !3587, line: 61, baseType: !3406, size: 64, offset: 1344)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3586, file: !3587, line: 62, baseType: !384, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3586, file: !3587, line: 63, baseType: !384, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3567, file: !98, line: 583, baseType: !384, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3567, file: !98, line: 584, baseType: !384, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3567, file: !98, line: 585, baseType: !384, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3567, file: !98, line: 586, baseType: !11, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3567, file: !98, line: 587, baseType: !11, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3567, file: !98, line: 592, baseType: !929, size: 512, offset: 576)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3567, file: !98, line: 593, baseType: !282, size: 64, offset: 1088)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3567, file: !98, line: 594, baseType: !1824, size: 256, offset: 1152)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3567, file: !98, line: 595, baseType: !813, size: 128, offset: 1408)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3567, file: !98, line: 596, baseType: !3594, size: 64, offset: 1536)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3567, file: !98, line: 597, baseType: !574, size: 32, offset: 1600)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3567, file: !98, line: 598, baseType: !574, size: 32, offset: 1632)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3567, file: !98, line: 599, baseType: !11, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3567, file: !98, line: 600, baseType: !11, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3567, file: !98, line: 601, baseType: !11, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3567, file: !98, line: 602, baseType: !11, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3567, file: !98, line: 603, baseType: !11, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3567, file: !98, line: 604, baseType: !384, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3567, file: !98, line: 605, baseType: !11, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3567, file: !98, line: 606, baseType: !11, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3567, file: !98, line: 607, baseType: !11, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3567, file: !98, line: 608, baseType: !11, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3567, file: !98, line: 609, baseType: !11, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3567, file: !98, line: 610, baseType: !11, size: 32, offset: 1696)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3567, file: !98, line: 611, baseType: !97, size: 32, offset: 1728)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3567, file: !98, line: 612, baseType: !105, size: 32, offset: 1760)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3567, file: !98, line: 613, baseType: !159, size: 32, offset: 1792)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3567, file: !98, line: 614, baseType: !159, size: 32, offset: 1824)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3567, file: !98, line: 615, baseType: !282, size: 64, offset: 1856)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3567, file: !98, line: 616, baseType: !282, size: 64, offset: 1920)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3567, file: !98, line: 617, baseType: !282, size: 64, offset: 1984)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3567, file: !98, line: 618, baseType: !282, size: 64, offset: 2048)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3567, file: !98, line: 620, baseType: !3655, size: 64, offset: 2112)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !98, line: 536, size: 256, elements: !3657)
!3657 = !{!3658, !3659, !3660, !3661}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3656, file: !98, line: 537, baseType: !305)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3656, file: !98, line: 538, baseType: !11, size: 32)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3656, file: !98, line: 540, baseType: !167, size: 128, offset: 64)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3656, file: !98, line: 543, baseType: !3662, size: 64, offset: 192)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !98, line: 534, flags: DIFlagFwdDecl)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3567, file: !98, line: 621, baseType: !3665, size: 64, offset: 2176)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = !DISubroutineType(types: !3667)
!3667 = !{null, !3406, !1535}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3567, file: !98, line: 622, baseType: !3669, size: 64, offset: 2240)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !98, line: 622, flags: DIFlagFwdDecl)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3105, file: !91, line: 486, baseType: !3672, size: 64, offset: 4096)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !98, line: 642, size: 1792, elements: !3674)
!3674 = !{!3675, !3676, !3677, !3681, !3682, !3683}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3673, file: !98, line: 643, baseType: !3434, size: 1472)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3673, file: !98, line: 644, baseType: !3437, size: 64, offset: 1472)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3673, file: !98, line: 645, baseType: !3678, size: 64, offset: 1536)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DISubroutineType(types: !3680)
!3680 = !{null, !3406, !384}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3673, file: !98, line: 646, baseType: !3437, size: 64, offset: 1600)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3673, file: !98, line: 647, baseType: !3428, size: 64, offset: 1664)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3673, file: !98, line: 648, baseType: !3428, size: 64, offset: 1728)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !3105, file: !91, line: 493, baseType: !3685, size: 64, offset: 4160)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !112, line: 162, size: 1088, elements: !3687)
!3687 = !{!3688, !3689, !3690, !4021, !4022, !4023, !4024, !4025, !4026, !4152, !4153, !4154, !4155, !4156, !4157, !4158}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3686, file: !112, line: 163, baseType: !167, size: 128)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3686, file: !112, line: 164, baseType: !6, size: 64, offset: 128)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3686, file: !112, line: 165, baseType: !3691, size: 64, offset: 192)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3693)
!3693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !112, line: 105, size: 640, elements: !3694)
!3694 = !{!3695, !3813, !3824, !3829, !3833, !3840, !3844, !3848, !4013, !4017}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3693, file: !112, line: 106, baseType: !3696, size: 64)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!159, !3685, !3699, !111}
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3701, line: 51, size: 1344, elements: !3702)
!3701 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3702 = !{!3703, !3704, !3706, !3707, !3797, !3806, !3807, !3808, !3809, !3810, !3811, !3812}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3700, file: !3701, line: 52, baseType: !6, size: 64)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3700, file: !3701, line: 53, baseType: !3705, size: 32, offset: 64)
!3705 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3701, line: 28, baseType: !276)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3700, file: !3701, line: 54, baseType: !6, size: 64, offset: 128)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3700, file: !3701, line: 55, baseType: !3708, size: 192, offset: 192)
!3708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3709, line: 17, size: 192, elements: !3710)
!3709 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3710 = !{!3711, !3713, !3796}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3708, file: !3709, line: 18, baseType: !3712, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3708, file: !3709, line: 19, baseType: !3714, size: 64, offset: 64)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3716)
!3716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3709, line: 110, size: 1152, elements: !3717)
!3717 = !{!3718, !3722, !3726, !3732, !3738, !3742, !3746, !3751, !3755, !3756, !3760, !3764, !3768, !3779, !3780, !3781, !3782, !3792}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3716, file: !3709, line: 111, baseType: !3719, size: 64)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!3712, !3712}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3716, file: !3709, line: 112, baseType: !3723, size: 64, offset: 64)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{null, !3712}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3716, file: !3709, line: 113, baseType: !3727, size: 64, offset: 128)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!384, !3730}
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3708)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3716, file: !3709, line: 114, baseType: !3733, size: 64, offset: 192)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!3060, !3730, !3736}
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3105)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3716, file: !3709, line: 116, baseType: !3739, size: 64, offset: 256)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!384, !3730, !6}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3716, file: !3709, line: 118, baseType: !3743, size: 64, offset: 320)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{!159, !3730, !6, !11, !163, !1175}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3716, file: !3709, line: 123, baseType: !3747, size: 64, offset: 384)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{!159, !3730, !6, !3750, !1175}
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3716, file: !3709, line: 126, baseType: !3752, size: 64, offset: 448)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{!6, !3730}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3716, file: !3709, line: 127, baseType: !3752, size: 64, offset: 512)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3716, file: !3709, line: 128, baseType: !3757, size: 64, offset: 576)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!3712, !3730}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3716, file: !3709, line: 130, baseType: !3761, size: 64, offset: 640)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = !DISubroutineType(types: !3763)
!3763 = !{!3712, !3730, !3712}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3716, file: !3709, line: 133, baseType: !3765, size: 64, offset: 704)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DISubroutineType(types: !3767)
!3767 = !{!3712, !3730, !6}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3716, file: !3709, line: 135, baseType: !3769, size: 64, offset: 768)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!159, !3730, !6, !6, !11, !11, !3772}
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3709, line: 43, size: 640, elements: !3774)
!3774 = !{!3775, !3776, !3777}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3773, file: !3709, line: 44, baseType: !3712, size: 64)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3773, file: !3709, line: 45, baseType: !11, size: 32, offset: 64)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3773, file: !3709, line: 46, baseType: !3778, size: 512, offset: 128)
!3778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 512, elements: !967)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3716, file: !3709, line: 140, baseType: !3761, size: 64, offset: 832)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3716, file: !3709, line: 143, baseType: !3757, size: 64, offset: 896)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3716, file: !3709, line: 145, baseType: !3719, size: 64, offset: 960)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3716, file: !3709, line: 146, baseType: !3783, size: 64, offset: 1024)
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{!159, !3730, !3786}
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3709, line: 29, size: 128, elements: !3788)
!3788 = !{!3789, !3790, !3791}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3787, file: !3709, line: 30, baseType: !11, size: 32)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3787, file: !3709, line: 31, baseType: !11, size: 32, offset: 32)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3787, file: !3709, line: 32, baseType: !3730, size: 64, offset: 64)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3716, file: !3709, line: 148, baseType: !3793, size: 64, offset: 1088)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{!159, !3730, !3406}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3708, file: !3709, line: 20, baseType: !3406, size: 64, offset: 128)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3700, file: !3701, line: 57, baseType: !3798, size: 64, offset: 384)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3701, line: 31, size: 704, elements: !3800)
!3800 = !{!3801, !3802, !3803, !3804, !3805}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3799, file: !3701, line: 32, baseType: !365, size: 64)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3799, file: !3701, line: 33, baseType: !159, size: 32, offset: 64)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3799, file: !3701, line: 34, baseType: !163, size: 64, offset: 128)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3799, file: !3701, line: 35, baseType: !3798, size: 64, offset: 192)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3799, file: !3701, line: 43, baseType: !3200, size: 448, offset: 256)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3700, file: !3701, line: 58, baseType: !3798, size: 64, offset: 448)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3700, file: !3701, line: 59, baseType: !3699, size: 64, offset: 512)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3700, file: !3701, line: 60, baseType: !3699, size: 64, offset: 576)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3700, file: !3701, line: 61, baseType: !3699, size: 64, offset: 640)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3700, file: !3701, line: 63, baseType: !3108, size: 512, offset: 704)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3700, file: !3701, line: 65, baseType: !162, size: 64, offset: 1216)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3700, file: !3701, line: 66, baseType: !163, size: 64, offset: 1280)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3693, file: !112, line: 108, baseType: !3814, size: 64, offset: 64)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{!159, !3685, !3817, !111}
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !112, line: 63, size: 640, elements: !3819)
!3819 = !{!3820, !3821, !3822}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3818, file: !112, line: 64, baseType: !3712, size: 64)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3818, file: !112, line: 65, baseType: !159, size: 32, offset: 64)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3818, file: !112, line: 66, baseType: !3823, size: 512, offset: 96)
!3823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 512, elements: !1977)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3693, file: !112, line: 110, baseType: !3825, size: 64, offset: 128)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = !DISubroutineType(types: !3827)
!3827 = !{!159, !3685, !11, !3828}
!3828 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !161, line: 164, baseType: !162)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3693, file: !112, line: 111, baseType: !3830, size: 64, offset: 192)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{null, !3685, !11}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3693, file: !112, line: 112, baseType: !3834, size: 64, offset: 256)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{!159, !3685, !3699, !3837, !11, !3839, !841}
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !276)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3693, file: !112, line: 117, baseType: !3841, size: 64, offset: 320)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{!159, !3685, !11, !11, !163}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3693, file: !112, line: 119, baseType: !3845, size: 64, offset: 384)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DISubroutineType(types: !3847)
!3847 = !{null, !3685, !11, !11}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3693, file: !112, line: 121, baseType: !3849, size: 64, offset: 448)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!159, !3685, !3852, !384}
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !133, line: 175, size: 448, elements: !3854)
!3854 = !{!3855, !3856, !3857, !3858, !3931, !4010, !4011, !4012}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3853, file: !133, line: 176, baseType: !276, size: 32)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !3853, file: !133, line: 177, baseType: !11, size: 32, offset: 32)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq", scope: !3853, file: !133, line: 178, baseType: !162, size: 64, offset: 64)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !3853, file: !133, line: 179, baseType: !3859, size: 64, offset: 128)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_common_data", file: !133, line: 145, size: 256, elements: !3861)
!3861 = !{!3862, !3863, !3864, !3928}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "state_use_accessors", scope: !3860, file: !133, line: 146, baseType: !11, size: 32)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "handler_data", scope: !3860, file: !133, line: 150, baseType: !163, size: 64, offset: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "msi_desc", scope: !3860, file: !133, line: 151, baseType: !3865, size: 64, offset: 128)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_desc", file: !3867, line: 85, size: 768, elements: !3868)
!3867 = !DIFile(filename: "./include/linux/msi.h", directory: "/home/lizy2001/genbc/linux")
!3868 = !{!3869, !3870, !3871, !3872, !3873, !3879, !3885, !3889, !3890}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3866, file: !3867, line: 87, baseType: !167, size: 128)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !3866, file: !3867, line: 88, baseType: !11, size: 32, offset: 128)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "nvec_used", scope: !3866, file: !3867, line: 89, baseType: !11, size: 32, offset: 160)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3866, file: !3867, line: 90, baseType: !3406, size: 64, offset: 192)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !3866, file: !3867, line: 91, baseType: !3874, size: 96, offset: 256)
!3874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_msg", file: !3867, line: 8, size: 96, elements: !3875)
!3875 = !{!3876, !3877, !3878}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "address_lo", scope: !3874, file: !3867, line: 9, baseType: !276, size: 32)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "address_hi", scope: !3874, file: !3867, line: 10, baseType: !276, size: 32, offset: 32)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3874, file: !3867, line: 11, baseType: !276, size: 32, offset: 64)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !3866, file: !3867, line: 92, baseType: !3880, size: 64, offset: 384)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_affinity_desc", file: !126, line: 308, size: 128, elements: !3882)
!3882 = !{!3883, !3884}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3881, file: !126, line: 309, baseType: !1011, size: 64)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !3881, file: !126, line: 310, baseType: !11, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "write_msi_msg", scope: !3866, file: !3867, line: 97, baseType: !3886, size: 64, offset: 448)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{null, !3865, !163}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "write_msi_msg_data", scope: !3866, file: !3867, line: 98, baseType: !163, size: 64, offset: 512)
!3890 = !DIDerivedType(tag: DW_TAG_member, scope: !3866, file: !3867, line: 100, baseType: !3891, size: 192, offset: 576)
!3891 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3866, file: !3867, line: 100, size: 192, elements: !3892)
!3892 = !{!3893, !3913, !3920, !3924}
!3893 = !DIDerivedType(tag: DW_TAG_member, scope: !3891, file: !3867, line: 102, baseType: !3894, size: 192)
!3894 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3891, file: !3867, line: 102, size: 192, elements: !3895)
!3895 = !{!3896, !3897, !3908}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "masked", scope: !3894, file: !3867, line: 103, baseType: !276, size: 32)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "msi_attrib", scope: !3894, file: !3867, line: 113, baseType: !3898, size: 64, offset: 32)
!3898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3894, file: !3867, line: 104, size: 64, elements: !3899)
!3899 = !{!3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "is_msix", scope: !3898, file: !3867, line: 105, baseType: !996, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "multiple", scope: !3898, file: !3867, line: 106, baseType: !996, size: 3, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "multi_cap", scope: !3898, file: !3867, line: 107, baseType: !996, size: 3, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "maskbit", scope: !3898, file: !3867, line: 108, baseType: !996, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "is_64", scope: !3898, file: !3867, line: 109, baseType: !996, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtual", scope: !3898, file: !3867, line: 110, baseType: !996, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "entry_nr", scope: !3898, file: !3867, line: 111, baseType: !1199, size: 16, offset: 16)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "default_irq", scope: !3898, file: !3867, line: 112, baseType: !11, size: 32, offset: 32)
!3908 = !DIDerivedType(tag: DW_TAG_member, scope: !3894, file: !3867, line: 114, baseType: !3909, size: 64, offset: 128)
!3909 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3894, file: !3867, line: 114, size: 64, elements: !3910)
!3910 = !{!3911, !3912}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "mask_pos", scope: !3909, file: !3867, line: 115, baseType: !996, size: 8)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "mask_base", scope: !3909, file: !3867, line: 116, baseType: !163, size: 64)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "platform", scope: !3891, file: !3867, line: 127, baseType: !3914, size: 128)
!3914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_msi_desc", file: !3867, line: 37, size: 128, elements: !3915)
!3915 = !{!3916, !3919}
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "msi_priv_data", scope: !3914, file: !3867, line: 38, baseType: !3917, size: 64)
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3918, size: 64)
!3918 = !DICompositeType(tag: DW_TAG_structure_type, name: "platform_msi_priv_data", file: !3867, line: 19, flags: DIFlagFwdDecl)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "msi_index", scope: !3914, file: !3867, line: 39, baseType: !1199, size: 16, offset: 64)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "fsl_mc", scope: !3891, file: !3867, line: 128, baseType: !3921, size: 16)
!3921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsl_mc_msi_desc", file: !3867, line: 46, size: 16, elements: !3922)
!3922 = !{!3923}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "msi_index", scope: !3921, file: !3867, line: 47, baseType: !1199, size: 16)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "inta", scope: !3891, file: !3867, line: 129, baseType: !3925, size: 16)
!3925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ti_sci_inta_msi_desc", file: !3867, line: 54, size: 16, elements: !3926)
!3926 = !{!3927}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "dev_index", scope: !3925, file: !3867, line: 55, baseType: !1199, size: 16)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !3860, file: !133, line: 152, baseType: !3929, size: 64, offset: 192)
!3929 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !1010, line: 756, baseType: !3930)
!3930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1011, size: 64, elements: !1015)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !3853, file: !133, line: 180, baseType: !3932, size: 64, offset: 192)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip", file: !133, line: 503, size: 2304, elements: !3934)
!3934 = !{!3935, !3936, !3937, !3941, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3958, !3962, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3979, !3980, !3981, !3986, !3987, !3991, !3995, !3999, !4003, !4007, !4008, !4009}
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "parent_device", scope: !3933, file: !133, line: 504, baseType: !3406, size: 64)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3933, file: !133, line: 505, baseType: !6, size: 64, offset: 64)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "irq_startup", scope: !3933, file: !133, line: 506, baseType: !3938, size: 64, offset: 128)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = !DISubroutineType(types: !3940)
!3940 = !{!11, !3852}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "irq_shutdown", scope: !3933, file: !133, line: 507, baseType: !3942, size: 64, offset: 192)
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3943, size: 64)
!3943 = !DISubroutineType(types: !3944)
!3944 = !{null, !3852}
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "irq_enable", scope: !3933, file: !133, line: 508, baseType: !3942, size: 64, offset: 256)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "irq_disable", scope: !3933, file: !133, line: 509, baseType: !3942, size: 64, offset: 320)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "irq_ack", scope: !3933, file: !133, line: 511, baseType: !3942, size: 64, offset: 384)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !3933, file: !133, line: 512, baseType: !3942, size: 64, offset: 448)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask_ack", scope: !3933, file: !133, line: 513, baseType: !3942, size: 64, offset: 512)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "irq_unmask", scope: !3933, file: !133, line: 514, baseType: !3942, size: 64, offset: 576)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "irq_eoi", scope: !3933, file: !133, line: 515, baseType: !3942, size: 64, offset: 640)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_affinity", scope: !3933, file: !133, line: 517, baseType: !3953, size: 64, offset: 704)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DISubroutineType(types: !3955)
!3955 = !{!159, !3852, !3956, !384}
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1011)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "irq_retrigger", scope: !3933, file: !133, line: 518, baseType: !3959, size: 64, offset: 768)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = !DISubroutineType(types: !3961)
!3961 = !{!159, !3852}
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_type", scope: !3933, file: !133, line: 519, baseType: !3963, size: 64, offset: 832)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{!159, !3852, !11}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_wake", scope: !3933, file: !133, line: 520, baseType: !3963, size: 64, offset: 896)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_lock", scope: !3933, file: !133, line: 522, baseType: !3942, size: 64, offset: 960)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_sync_unlock", scope: !3933, file: !133, line: 523, baseType: !3942, size: 64, offset: 1024)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cpu_online", scope: !3933, file: !133, line: 525, baseType: !3942, size: 64, offset: 1088)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cpu_offline", scope: !3933, file: !133, line: 526, baseType: !3942, size: 64, offset: 1152)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "irq_suspend", scope: !3933, file: !133, line: 528, baseType: !3942, size: 64, offset: 1216)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "irq_resume", scope: !3933, file: !133, line: 529, baseType: !3942, size: 64, offset: 1280)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pm_shutdown", scope: !3933, file: !133, line: 530, baseType: !3942, size: 64, offset: 1344)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "irq_calc_mask", scope: !3933, file: !133, line: 532, baseType: !3942, size: 64, offset: 1408)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "irq_print_chip", scope: !3933, file: !133, line: 534, baseType: !3976, size: 64, offset: 1472)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = !DISubroutineType(types: !3978)
!3978 = !{null, !3852, !514}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "irq_request_resources", scope: !3933, file: !133, line: 535, baseType: !3959, size: 64, offset: 1536)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "irq_release_resources", scope: !3933, file: !133, line: 536, baseType: !3942, size: 64, offset: 1600)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "irq_compose_msi_msg", scope: !3933, file: !133, line: 538, baseType: !3982, size: 64, offset: 1664)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DISubroutineType(types: !3984)
!3984 = !{null, !3852, !3985}
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "irq_write_msi_msg", scope: !3933, file: !133, line: 539, baseType: !3982, size: 64, offset: 1728)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get_irqchip_state", scope: !3933, file: !133, line: 541, baseType: !3988, size: 64, offset: 1792)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{!159, !3852, !125, !2899}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_irqchip_state", scope: !3933, file: !133, line: 542, baseType: !3992, size: 64, offset: 1856)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!159, !3852, !125, !384}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_vcpu_affinity", scope: !3933, file: !133, line: 544, baseType: !3996, size: 64, offset: 1920)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!159, !3852, !163}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_single", scope: !3933, file: !133, line: 546, baseType: !4000, size: 64, offset: 1984)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = !DISubroutineType(types: !4002)
!4002 = !{null, !3852, !11}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_mask", scope: !3933, file: !133, line: 547, baseType: !4004, size: 64, offset: 2048)
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4005 = !DISubroutineType(types: !4006)
!4006 = !{null, !3852, !3956}
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_setup", scope: !3933, file: !133, line: 549, baseType: !3959, size: 64, offset: 2112)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_teardown", scope: !3933, file: !133, line: 550, baseType: !3942, size: 64, offset: 2176)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3933, file: !133, line: 552, baseType: !162, size: 64, offset: 2240)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3853, file: !133, line: 181, baseType: !3685, size: 64, offset: 256)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "parent_data", scope: !3853, file: !133, line: 183, baseType: !3852, size: 64, offset: 320)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "chip_data", scope: !3853, file: !133, line: 185, baseType: !163, size: 64, offset: 384)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3693, file: !112, line: 122, baseType: !4014, size: 64, offset: 512)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{null, !3685, !3852}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3693, file: !112, line: 123, baseType: !4018, size: 64, offset: 576)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!159, !3685, !3817, !3839, !841}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3686, file: !112, line: 166, baseType: !163, size: 64, offset: 256)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3686, file: !112, line: 167, baseType: !11, size: 32, offset: 320)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3686, file: !112, line: 168, baseType: !11, size: 32, offset: 352)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3686, file: !112, line: 171, baseType: !3712, size: 64, offset: 384)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3686, file: !112, line: 172, baseType: !111, size: 32, offset: 448)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3686, file: !112, line: 173, baseType: !4027, size: 64, offset: 512)
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !133, line: 1101, size: 192, elements: !4029)
!4029 = !{!4030, !4031, !4032, !4033, !4034, !4035}
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_per_chip", scope: !4028, file: !133, line: 1102, baseType: !11, size: 32)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "num_chips", scope: !4028, file: !133, line: 1103, baseType: !11, size: 32, offset: 32)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_clear", scope: !4028, file: !133, line: 1104, baseType: !11, size: 32, offset: 64)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_set", scope: !4028, file: !133, line: 1105, baseType: !11, size: 32, offset: 96)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "gc_flags", scope: !4028, file: !133, line: 1106, baseType: !132, size: 32, offset: 128)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !4028, file: !133, line: 1107, baseType: !4036, offset: 192)
!4036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4037, elements: !1838)
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_generic", file: !133, line: 1051, size: 960, elements: !4039)
!4039 = !{!4040, !4041, !4042, !4046, !4050, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068}
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4038, file: !133, line: 1052, baseType: !741)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "reg_base", scope: !4038, file: !133, line: 1053, baseType: !163, size: 64)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "reg_readl", scope: !4038, file: !133, line: 1054, baseType: !4043, size: 64, offset: 64)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{!276, !163}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "reg_writel", scope: !4038, file: !133, line: 1055, baseType: !4047, size: 64, offset: 128)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{null, !276, !163}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4038, file: !133, line: 1056, baseType: !4051, size: 64, offset: 192)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = !DISubroutineType(types: !4053)
!4053 = !{null, !4037}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4038, file: !133, line: 1057, baseType: !4051, size: 64, offset: 256)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "irq_base", scope: !4038, file: !133, line: 1058, baseType: !11, size: 32, offset: 320)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cnt", scope: !4038, file: !133, line: 1059, baseType: !11, size: 32, offset: 352)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !4038, file: !133, line: 1060, baseType: !276, size: 32, offset: 384)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "type_cache", scope: !4038, file: !133, line: 1061, baseType: !276, size: 32, offset: 416)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "polarity_cache", scope: !4038, file: !133, line: 1062, baseType: !276, size: 32, offset: 448)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "wake_enabled", scope: !4038, file: !133, line: 1063, baseType: !276, size: 32, offset: 480)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "wake_active", scope: !4038, file: !133, line: 1064, baseType: !276, size: 32, offset: 512)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "num_ct", scope: !4038, file: !133, line: 1065, baseType: !11, size: 32, offset: 544)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4038, file: !133, line: 1066, baseType: !163, size: 64, offset: 576)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !4038, file: !133, line: 1067, baseType: !162, size: 64, offset: 640)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !4038, file: !133, line: 1068, baseType: !162, size: 64, offset: 704)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4038, file: !133, line: 1069, baseType: !3685, size: 64, offset: 768)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4038, file: !133, line: 1070, baseType: !167, size: 128, offset: 832)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "chip_types", scope: !4038, file: !133, line: 1071, baseType: !4069, offset: 960)
!4069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4070, elements: !1838)
!4070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_type", file: !133, line: 1009, size: 2944, elements: !4071)
!4071 = !{!4072, !4073, !4083, !4149, !4150, !4151}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !4070, file: !133, line: 1010, baseType: !3933, size: 2304)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4070, file: !133, line: 1011, baseType: !4074, size: 448, offset: 2304)
!4074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_regs", file: !133, line: 986, size: 448, elements: !4075)
!4075 = !{!4076, !4077, !4078, !4079, !4080, !4081, !4082}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !4074, file: !133, line: 987, baseType: !162, size: 64)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !4074, file: !133, line: 988, baseType: !162, size: 64, offset: 64)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4074, file: !133, line: 989, baseType: !162, size: 64, offset: 128)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "ack", scope: !4074, file: !133, line: 990, baseType: !162, size: 64, offset: 192)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "eoi", scope: !4074, file: !133, line: 991, baseType: !162, size: 64, offset: 256)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4074, file: !133, line: 992, baseType: !162, size: 64, offset: 320)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !4074, file: !133, line: 993, baseType: !162, size: 64, offset: 384)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4070, file: !133, line: 1012, baseType: !4084, size: 64, offset: 2752)
!4084 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_flow_handler_t", file: !4085, line: 12, baseType: !4086)
!4085 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = !DISubroutineType(types: !4088)
!4088 = !{null, !4089}
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_desc", file: !4091, line: 55, size: 2880, elements: !4092)
!4091 = !DIFile(filename: "./include/linux/irqdesc.h", directory: "/home/lizy2001/genbc/linux")
!4092 = !{!4093, !4094, !4095, !4096, !4097, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "irq_common_data", scope: !4090, file: !4091, line: 56, baseType: !3860, size: 256)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "irq_data", scope: !4090, file: !4091, line: 57, baseType: !3853, size: 448, offset: 256)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "kstat_irqs", scope: !4090, file: !4091, line: 58, baseType: !841, size: 64, offset: 704)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "handle_irq", scope: !4090, file: !4091, line: 59, baseType: !4084, size: 64, offset: 768)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4090, file: !4091, line: 60, baseType: !4098, size: 64, offset: 832)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irqaction", file: !126, line: 110, size: 768, elements: !4100)
!4100 = !{!4101, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4099, file: !126, line: 111, baseType: !4102, size: 64)
!4102 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !126, line: 92, baseType: !4103)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{!4106, !159, !163}
!4106 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !141, line: 17, baseType: !140)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !4099, file: !126, line: 112, baseType: !163, size: 64, offset: 64)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_dev_id", scope: !4099, file: !126, line: 113, baseType: !163, size: 64, offset: 128)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4099, file: !126, line: 114, baseType: !4098, size: 64, offset: 192)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "thread_fn", scope: !4099, file: !126, line: 115, baseType: !4102, size: 64, offset: 256)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !4099, file: !126, line: 116, baseType: !847, size: 64, offset: 320)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4099, file: !126, line: 117, baseType: !4098, size: 64, offset: 384)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4099, file: !126, line: 118, baseType: !11, size: 32, offset: 448)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4099, file: !126, line: 119, baseType: !11, size: 32, offset: 480)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "thread_flags", scope: !4099, file: !126, line: 120, baseType: !162, size: 64, offset: 512)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "thread_mask", scope: !4099, file: !126, line: 121, baseType: !162, size: 64, offset: 576)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4099, file: !126, line: 122, baseType: !6, size: 64, offset: 640)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4099, file: !126, line: 123, baseType: !4119, size: 64, offset: 704)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !126, line: 123, flags: DIFlagFwdDecl)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "status_use_accessors", scope: !4090, file: !4091, line: 61, baseType: !11, size: 32, offset: 896)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "core_internal_state__do_not_mess_with_it", scope: !4090, file: !4091, line: 62, baseType: !11, size: 32, offset: 928)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4090, file: !4091, line: 63, baseType: !11, size: 32, offset: 960)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "wake_depth", scope: !4090, file: !4091, line: 64, baseType: !11, size: 32, offset: 992)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "tot_count", scope: !4090, file: !4091, line: 65, baseType: !11, size: 32, offset: 1024)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !4090, file: !4091, line: 66, baseType: !11, size: 32, offset: 1056)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "last_unhandled", scope: !4090, file: !4091, line: 67, baseType: !162, size: 64, offset: 1088)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_unhandled", scope: !4090, file: !4091, line: 68, baseType: !11, size: 32, offset: 1152)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled", scope: !4090, file: !4091, line: 69, baseType: !574, size: 32, offset: 1184)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled_last", scope: !4090, file: !4091, line: 70, baseType: !159, size: 32, offset: 1216)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4090, file: !4091, line: 71, baseType: !741, offset: 1248)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_enabled", scope: !4090, file: !4091, line: 72, baseType: !4133, size: 64, offset: 1280)
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_affinity", scope: !4090, file: !4091, line: 73, baseType: !3956, size: 64, offset: 1344)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "threads_oneshot", scope: !4090, file: !4091, line: 81, baseType: !162, size: 64, offset: 1408)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "threads_active", scope: !4090, file: !4091, line: 82, baseType: !574, size: 32, offset: 1472)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_threads", scope: !4090, file: !4091, line: 83, baseType: !813, size: 128, offset: 1536)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "nr_actions", scope: !4090, file: !4091, line: 85, baseType: !11, size: 32, offset: 1664)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "no_suspend_depth", scope: !4090, file: !4091, line: 86, baseType: !11, size: 32, offset: 1696)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "cond_suspend_depth", scope: !4090, file: !4091, line: 87, baseType: !11, size: 32, offset: 1728)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "force_resume_depth", scope: !4090, file: !4091, line: 88, baseType: !11, size: 32, offset: 1760)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4090, file: !4091, line: 91, baseType: !4119, size: 64, offset: 1792)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4090, file: !4091, line: 98, baseType: !832, size: 128, align: 64, offset: 1856)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4090, file: !4091, line: 99, baseType: !3108, size: 512, offset: 1984)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "request_mutex", scope: !4090, file: !4091, line: 101, baseType: !558, size: 192, offset: 2496)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "parent_irq", scope: !4090, file: !4091, line: 102, baseType: !159, size: 32, offset: 2688)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4090, file: !4091, line: 103, baseType: !431, size: 64, offset: 2752)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4090, file: !4091, line: 104, baseType: !6, size: 64, offset: 2816)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4070, file: !133, line: 1013, baseType: !276, size: 32, offset: 2816)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache_priv", scope: !4070, file: !133, line: 1014, baseType: !276, size: 32, offset: 2848)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !4070, file: !133, line: 1015, baseType: !1877, size: 64, offset: 2880)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3686, file: !112, line: 175, baseType: !3685, size: 64, offset: 576)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3686, file: !112, line: 182, baseType: !3828, size: 64, offset: 640)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3686, file: !112, line: 183, baseType: !11, size: 32, offset: 704)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3686, file: !112, line: 184, baseType: !11, size: 32, offset: 736)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3686, file: !112, line: 185, baseType: !2179, size: 128, offset: 768)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3686, file: !112, line: 186, baseType: !558, size: 192, offset: 896)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3686, file: !112, line: 187, baseType: !4159, offset: 1088)
!4159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, elements: !1838)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !3105, file: !91, line: 499, baseType: !167, size: 128, offset: 4224)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3105, file: !91, line: 502, baseType: !4162, size: 64, offset: 4352)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4164)
!4164 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !91, line: 502, flags: DIFlagFwdDecl)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3105, file: !91, line: 504, baseType: !4166, size: 64, offset: 4416)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3105, file: !91, line: 505, baseType: !282, size: 64, offset: 4480)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3105, file: !91, line: 510, baseType: !282, size: 64, offset: 4544)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3105, file: !91, line: 511, baseType: !4170, size: 64, offset: 4608)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4172)
!4172 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !91, line: 511, flags: DIFlagFwdDecl)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3105, file: !91, line: 513, baseType: !4174, size: 64, offset: 4672)
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !91, line: 288, size: 128, elements: !4176)
!4176 = !{!4177, !4178}
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4175, file: !91, line: 293, baseType: !11, size: 32)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4175, file: !91, line: 294, baseType: !162, size: 64, offset: 64)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3105, file: !91, line: 515, baseType: !167, size: 128, offset: 4736)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3105, file: !91, line: 526, baseType: !4181, offset: 4864)
!4181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4182, line: 5, elements: !319)
!4182 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3105, file: !91, line: 528, baseType: !3699, size: 64, offset: 4864)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3105, file: !91, line: 529, baseType: !3712, size: 64, offset: 4928)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3105, file: !91, line: 534, baseType: !398, size: 32, offset: 4992)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3105, file: !91, line: 535, baseType: !276, size: 32, offset: 5024)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3105, file: !91, line: 537, baseType: !305, offset: 5056)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3105, file: !91, line: 538, baseType: !167, size: 128, offset: 5056)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3105, file: !91, line: 540, baseType: !4190, size: 64, offset: 5184)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4192, line: 54, size: 960, elements: !4193)
!4192 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4193 = !{!4194, !4195, !4196, !4197, !4198, !4199, !4200, !4204, !4208, !4209, !4210, !4211, !4215, !4219, !4220}
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4191, file: !4192, line: 55, baseType: !6, size: 64)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4191, file: !4192, line: 56, baseType: !431, size: 64, offset: 64)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4191, file: !4192, line: 58, baseType: !3185, size: 64, offset: 128)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4191, file: !4192, line: 59, baseType: !3185, size: 64, offset: 192)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4191, file: !4192, line: 60, baseType: !3114, size: 64, offset: 256)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4191, file: !4192, line: 62, baseType: !3419, size: 64, offset: 320)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4191, file: !4192, line: 63, baseType: !4201, size: 64, offset: 384)
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4202, size: 64)
!4202 = !DISubroutineType(types: !4203)
!4203 = !{!365, !3406, !3426}
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4191, file: !4192, line: 65, baseType: !4205, size: 64, offset: 448)
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = !DISubroutineType(types: !4207)
!4207 = !{null, !4190}
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4191, file: !4192, line: 66, baseType: !3428, size: 64, offset: 512)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4191, file: !4192, line: 68, baseType: !3437, size: 64, offset: 576)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4191, file: !4192, line: 70, baseType: !3221, size: 64, offset: 640)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4191, file: !4192, line: 71, baseType: !4212, size: 64, offset: 704)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DISubroutineType(types: !4214)
!4214 = !{!3060, !3406}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4191, file: !4192, line: 73, baseType: !4216, size: 64, offset: 768)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = !DISubroutineType(types: !4218)
!4218 = !{null, !3406, !3253, !3254}
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4191, file: !4192, line: 75, baseType: !3432, size: 64, offset: 832)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4191, file: !4192, line: 77, baseType: !3549, size: 64, offset: 896)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3105, file: !91, line: 541, baseType: !3185, size: 64, offset: 5248)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3105, file: !91, line: 543, baseType: !3428, size: 64, offset: 5312)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3105, file: !91, line: 544, baseType: !4224, size: 64, offset: 5376)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !91, line: 45, flags: DIFlagFwdDecl)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3105, file: !91, line: 545, baseType: !4227, size: 64, offset: 5440)
!4227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4228, size: 64)
!4228 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !91, line: 47, flags: DIFlagFwdDecl)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3105, file: !91, line: 547, baseType: !384, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3105, file: !91, line: 548, baseType: !384, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3105, file: !91, line: 549, baseType: !384, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3105, file: !91, line: 550, baseType: !384, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3087, file: !3088, line: 78, baseType: !9, size: 32, offset: 6080)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "down", scope: !3087, file: !3088, line: 79, baseType: !1799, size: 192, offset: 6144)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3087, file: !3088, line: 80, baseType: !1824, size: 256, offset: 6336)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_sem", scope: !3087, file: !3088, line: 81, baseType: !4237, size: 192, offset: 6592)
!4237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "semaphore", file: !4238, line: 15, size: 192, elements: !4239)
!4238 = !DIFile(filename: "./include/linux/semaphore.h", directory: "/home/lizy2001/genbc/linux")
!4239 = !{!4240, !4241, !4242}
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4237, file: !4238, line: 16, baseType: !741)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4237, file: !4238, line: 17, baseType: !11, size: 32)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !4237, file: !4238, line: 18, baseType: !167, size: 128, offset: 64)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "map_ring_valloc", file: !3, line: 72, size: 9344, elements: !4245)
!4245 = !{!4246, !4247, !4248, !4250, !4267, !4275}
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4244, file: !3, line: 73, baseType: !171, size: 64)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !4244, file: !3, line: 76, baseType: !3068, size: 1024, offset: 64)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addrs", scope: !4244, file: !3, line: 77, baseType: !4249, size: 1024, offset: 1088)
!4249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3058, size: 1024, elements: !1977)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !4244, file: !3, line: 79, baseType: !4251, size: 4096, offset: 2112)
!4251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4252, size: 4096, elements: !1977)
!4252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gnttab_map_grant_ref", file: !3073, line: 262, size: 256, elements: !4253)
!4253 = !{!4254, !4256, !4257, !4259, !4263, !4265, !4266}
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "host_addr", scope: !4252, file: !3073, line: 264, baseType: !4255, size: 64)
!4255 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !161, line: 107, baseType: !282)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4252, file: !3073, line: 265, baseType: !1557, size: 32, offset: 64)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4252, file: !3073, line: 266, baseType: !4258, size: 32, offset: 96)
!4258 = !DIDerivedType(tag: DW_TAG_typedef, name: "grant_ref_t", file: !3073, line: 90, baseType: !1557)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !4252, file: !3073, line: 267, baseType: !4260, size: 16, offset: 128)
!4260 = !DIDerivedType(tag: DW_TAG_typedef, name: "domid_t", file: !4261, line: 437, baseType: !4262)
!4261 = !DIFile(filename: "./include/xen/interface/xen.h", directory: "/home/lizy2001/genbc/linux")
!4262 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !161, line: 103, baseType: !1199)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4252, file: !3073, line: 269, baseType: !4264, size: 16, offset: 144)
!4264 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !161, line: 96, baseType: !1784)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !4252, file: !3073, line: 270, baseType: !3072, size: 32, offset: 160)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "dev_bus_addr", scope: !4252, file: !3073, line: 271, baseType: !4255, size: 64, offset: 192)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !4244, file: !3, line: 80, baseType: !4268, size: 3072, offset: 6208)
!4268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4269, size: 3072, elements: !1977)
!4269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gnttab_unmap_grant_ref", file: !3073, line: 287, size: 192, elements: !4270)
!4270 = !{!4271, !4272, !4273, !4274}
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "host_addr", scope: !4269, file: !3073, line: 289, baseType: !4255, size: 64)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "dev_bus_addr", scope: !4269, file: !3073, line: 290, baseType: !4255, size: 64, offset: 64)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !4269, file: !3073, line: 291, baseType: !3072, size: 32, offset: 128)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4269, file: !3073, line: 293, baseType: !4264, size: 16, offset: 160)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !4244, file: !3, line: 82, baseType: !11, size: 32, offset: 9280)
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3080, file: !3, line: 92, baseType: !4278, size: 64, offset: 64)
!4278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4279, size: 64)
!4279 = !DISubroutineType(types: !4280)
!4280 = !{!159, !3086, !163}
!4281 = !DIGlobalVariableExpression(var: !4282, expr: !DIExpression())
!4282 = distinct !DIGlobalVariable(name: "ring_ops_pv", scope: !22, file: !3, line: 801, type: !3079, isLocal: true, isDefinition: true)
!4283 = !DIGlobalVariableExpression(var: !4284, expr: !DIExpression())
!4284 = distinct !DIGlobalVariable(name: "xenbus_valloc_lock", scope: !22, file: !3, line: 85, type: !305, isLocal: true, isDefinition: true)
!4285 = !DIGlobalVariableExpression(var: !4286, expr: !DIExpression())
!4286 = distinct !DIGlobalVariable(name: "xenbus_valloc_pages", scope: !22, file: !3, line: 86, type: !167, isLocal: true, isDefinition: true)
!4287 = !DIGlobalVariableExpression(var: !4288, expr: !DIExpression())
!4288 = distinct !DIGlobalVariable(name: "ring_ops_hvm", scope: !22, file: !3, line: 890, type: !3079, isLocal: true, isDefinition: true)
!4289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4290, size: 576, elements: !3506)
!4290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!4291 = !{!"rsp"}
!4292 = !{i32 7, !"Dwarf Version", i32 4}
!4293 = !{i32 2, !"Debug Info Version", i32 3}
!4294 = !{i32 1, !"wchar_size", i32 2}
!4295 = !{i32 1, !"Code Model", i32 2}
!4296 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4297 = !DILocalVariable(name: "state", arg: 1, scope: !2, file: !3, line: 97, type: !9)
!4298 = !DILocation(line: 97, column: 47, scope: !2)
!4299 = !DILocation(line: 110, column: 10, scope: !2)
!4300 = !DILocation(line: 110, column: 16, scope: !2)
!4301 = !DILocation(line: 110, column: 9, scope: !2)
!4302 = !DILocation(line: 110, column: 43, scope: !2)
!4303 = !DILocation(line: 110, column: 38, scope: !2)
!4304 = !DILocation(line: 110, column: 2, scope: !2)
!4305 = distinct !DISubprogram(name: "xenbus_watch_path", scope: !3, file: !3, line: 128, type: !4306, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !319)
!4306 = !DISubroutineType(types: !4307)
!4307 = !{!159, !3086, !6, !3103, !3100}
!4308 = !DILocalVariable(name: "dev", arg: 1, scope: !4305, file: !3, line: 128, type: !3086)
!4309 = !DILocation(line: 128, column: 45, scope: !4305)
!4310 = !DILocalVariable(name: "path", arg: 2, scope: !4305, file: !3, line: 128, type: !6)
!4311 = !DILocation(line: 128, column: 62, scope: !4305)
!4312 = !DILocalVariable(name: "watch", arg: 3, scope: !4305, file: !3, line: 129, type: !3103)
!4313 = !DILocation(line: 129, column: 30, scope: !4305)
!4314 = !DILocalVariable(name: "callback", arg: 4, scope: !4305, file: !3, line: 130, type: !3100)
!4315 = !DILocation(line: 130, column: 16, scope: !4305)
!4316 = !DILocalVariable(name: "err", scope: !4305, file: !3, line: 133, type: !159)
!4317 = !DILocation(line: 133, column: 6, scope: !4305)
!4318 = !DILocation(line: 135, column: 16, scope: !4305)
!4319 = !DILocation(line: 135, column: 2, scope: !4305)
!4320 = !DILocation(line: 135, column: 9, scope: !4305)
!4321 = !DILocation(line: 135, column: 14, scope: !4305)
!4322 = !DILocation(line: 136, column: 20, scope: !4305)
!4323 = !DILocation(line: 136, column: 2, scope: !4305)
!4324 = !DILocation(line: 136, column: 9, scope: !4305)
!4325 = !DILocation(line: 136, column: 18, scope: !4305)
!4326 = !DILocation(line: 138, column: 30, scope: !4305)
!4327 = !DILocation(line: 138, column: 8, scope: !4305)
!4328 = !DILocation(line: 138, column: 6, scope: !4305)
!4329 = !DILocation(line: 140, column: 6, scope: !4330)
!4330 = distinct !DILexicalBlock(scope: !4305, file: !3, line: 140, column: 6)
!4331 = !DILocation(line: 140, column: 6, scope: !4305)
!4332 = !DILocation(line: 141, column: 3, scope: !4333)
!4333 = distinct !DILexicalBlock(scope: !4330, file: !3, line: 140, column: 11)
!4334 = !DILocation(line: 141, column: 10, scope: !4333)
!4335 = !DILocation(line: 141, column: 15, scope: !4333)
!4336 = !DILocation(line: 142, column: 3, scope: !4333)
!4337 = !DILocation(line: 142, column: 10, scope: !4333)
!4338 = !DILocation(line: 142, column: 19, scope: !4333)
!4339 = !DILocation(line: 143, column: 20, scope: !4333)
!4340 = !DILocation(line: 143, column: 25, scope: !4333)
!4341 = !DILocation(line: 143, column: 52, scope: !4333)
!4342 = !DILocation(line: 143, column: 3, scope: !4333)
!4343 = !DILocation(line: 144, column: 2, scope: !4333)
!4344 = !DILocation(line: 146, column: 9, scope: !4305)
!4345 = !DILocation(line: 146, column: 2, scope: !4305)
!4346 = distinct !DISubprogram(name: "xenbus_dev_fatal", scope: !3, file: !3, line: 331, type: !4347, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !319)
!4347 = !DISubroutineType(types: !4348)
!4348 = !{null, !3086, !159, !6, null}
!4349 = !DILocalVariable(name: "dev", arg: 1, scope: !4346, file: !3, line: 331, type: !3086)
!4350 = !DILocation(line: 331, column: 45, scope: !4346)
!4351 = !DILocalVariable(name: "err", arg: 2, scope: !4346, file: !3, line: 331, type: !159)
!4352 = !DILocation(line: 331, column: 54, scope: !4346)
!4353 = !DILocalVariable(name: "fmt", arg: 3, scope: !4346, file: !3, line: 331, type: !6)
!4354 = !DILocation(line: 331, column: 71, scope: !4346)
!4355 = !DILocalVariable(name: "ap", scope: !4346, file: !3, line: 333, type: !4356)
!4356 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !4357, line: 99, baseType: !4358)
!4357 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdarg.h", directory: "")
!4358 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4357, line: 40, baseType: !4359)
!4359 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 173, baseType: !4360)
!4360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4361, size: 192, elements: !1015)
!4361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 173, size: 192, elements: !4362)
!4362 = !{!4363, !4364, !4365, !4366}
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4361, file: !3, line: 173, baseType: !11, size: 32)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4361, file: !3, line: 173, baseType: !11, size: 32, offset: 32)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4361, file: !3, line: 173, baseType: !163, size: 64, offset: 64)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4361, file: !3, line: 173, baseType: !163, size: 64, offset: 128)
!4367 = !DILocation(line: 333, column: 10, scope: !4346)
!4368 = !DILocation(line: 335, column: 2, scope: !4346)
!4369 = !DILocation(line: 336, column: 22, scope: !4346)
!4370 = !DILocation(line: 336, column: 27, scope: !4346)
!4371 = !DILocation(line: 336, column: 32, scope: !4346)
!4372 = !DILocation(line: 336, column: 37, scope: !4346)
!4373 = !DILocation(line: 336, column: 2, scope: !4346)
!4374 = !DILocation(line: 337, column: 2, scope: !4346)
!4375 = !DILocation(line: 339, column: 22, scope: !4346)
!4376 = !DILocation(line: 339, column: 2, scope: !4346)
!4377 = !DILocation(line: 340, column: 1, scope: !4346)
!4378 = distinct !DISubprogram(name: "xenbus_watch_pathfmt", scope: !3, file: !3, line: 166, type: !4379, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !319)
!4379 = !DISubroutineType(types: !4380)
!4380 = !{!159, !3086, !3103, !3100, !6, null}
!4381 = !DILocalVariable(name: "dev", arg: 1, scope: !4378, file: !3, line: 166, type: !3086)
!4382 = !DILocation(line: 166, column: 48, scope: !4378)
!4383 = !DILocalVariable(name: "watch", arg: 2, scope: !4378, file: !3, line: 167, type: !3103)
!4384 = !DILocation(line: 167, column: 26, scope: !4378)
!4385 = !DILocalVariable(name: "callback", arg: 3, scope: !4378, file: !3, line: 168, type: !3100)
!4386 = !DILocation(line: 168, column: 12, scope: !4378)
!4387 = !DILocalVariable(name: "pathfmt", arg: 4, scope: !4378, file: !3, line: 170, type: !6)
!4388 = !DILocation(line: 170, column: 17, scope: !4378)
!4389 = !DILocalVariable(name: "err", scope: !4378, file: !3, line: 172, type: !159)
!4390 = !DILocation(line: 172, column: 6, scope: !4378)
!4391 = !DILocalVariable(name: "ap", scope: !4378, file: !3, line: 173, type: !4356)
!4392 = !DILocation(line: 173, column: 10, scope: !4378)
!4393 = !DILocalVariable(name: "path", scope: !4378, file: !3, line: 174, type: !365)
!4394 = !DILocation(line: 174, column: 8, scope: !4378)
!4395 = !DILocation(line: 176, column: 2, scope: !4378)
!4396 = !DILocation(line: 177, column: 43, scope: !4378)
!4397 = !DILocation(line: 177, column: 52, scope: !4378)
!4398 = !DILocation(line: 177, column: 9, scope: !4378)
!4399 = !DILocation(line: 177, column: 7, scope: !4378)
!4400 = !DILocation(line: 178, column: 2, scope: !4378)
!4401 = !DILocation(line: 180, column: 7, scope: !4402)
!4402 = distinct !DILexicalBlock(scope: !4378, file: !3, line: 180, column: 6)
!4403 = !DILocation(line: 180, column: 6, scope: !4378)
!4404 = !DILocation(line: 181, column: 20, scope: !4405)
!4405 = distinct !DILexicalBlock(scope: !4402, file: !3, line: 180, column: 13)
!4406 = !DILocation(line: 181, column: 3, scope: !4405)
!4407 = !DILocation(line: 182, column: 3, scope: !4405)
!4408 = !DILocation(line: 184, column: 26, scope: !4378)
!4409 = !DILocation(line: 184, column: 31, scope: !4378)
!4410 = !DILocation(line: 184, column: 37, scope: !4378)
!4411 = !DILocation(line: 184, column: 44, scope: !4378)
!4412 = !DILocation(line: 184, column: 8, scope: !4378)
!4413 = !DILocation(line: 184, column: 6, scope: !4378)
!4414 = !DILocation(line: 186, column: 6, scope: !4415)
!4415 = distinct !DILexicalBlock(scope: !4378, file: !3, line: 186, column: 6)
!4416 = !DILocation(line: 186, column: 6, scope: !4378)
!4417 = !DILocation(line: 187, column: 9, scope: !4415)
!4418 = !DILocation(line: 187, column: 3, scope: !4415)
!4419 = !DILocation(line: 188, column: 9, scope: !4378)
!4420 = !DILocation(line: 188, column: 2, scope: !4378)
!4421 = !DILocation(line: 189, column: 1, scope: !4378)
!4422 = distinct !DISubprogram(name: "xenbus_switch_state", scope: !3, file: !3, line: 260, type: !4423, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !319)
!4423 = !DISubroutineType(types: !4424)
!4424 = !{!159, !3086, !9}
!4425 = !DILocalVariable(name: "dev", arg: 1, scope: !4422, file: !3, line: 260, type: !3086)
!4426 = !DILocation(line: 260, column: 47, scope: !4422)
!4427 = !DILocalVariable(name: "state", arg: 2, scope: !4422, file: !3, line: 260, type: !9)
!4428 = !DILocation(line: 260, column: 70, scope: !4422)
!4429 = !DILocation(line: 262, column: 31, scope: !4422)
!4430 = !DILocation(line: 262, column: 36, scope: !4422)
!4431 = !DILocation(line: 262, column: 9, scope: !4422)
!4432 = !DILocation(line: 262, column: 2, scope: !4422)
!4433 = distinct !DISubprogram(name: "__xenbus_switch_state", scope: !3, file: !3, line: 196, type: !4434, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !319)
!4434 = !DISubroutineType(types: !4435)
!4435 = !{!159, !3086, !9, !159}
!4436 = !DILocalVariable(name: "dev", arg: 1, scope: !4433, file: !3, line: 196, type: !3086)
!4437 = !DILocation(line: 196, column: 45, scope: !4433)
!4438 = !DILocalVariable(name: "state", arg: 2, scope: !4433, file: !3, line: 197, type: !9)
!4439 = !DILocation(line: 197, column: 27, scope: !4433)
!4440 = !DILocalVariable(name: "depth", arg: 3, scope: !4433, file: !3, line: 197, type: !159)
!4441 = !DILocation(line: 197, column: 38, scope: !4433)
!4442 = !DILocalVariable(name: "xbt", scope: !4433, file: !3, line: 212, type: !4443)
!4443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenbus_transaction", file: !3088, line: 133, size: 32, elements: !4444)
!4444 = !{!4445}
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4443, file: !3088, line: 135, baseType: !276, size: 32)
!4446 = !DILocation(line: 212, column: 28, scope: !4433)
!4447 = !DILocalVariable(name: "current_state", scope: !4433, file: !3, line: 213, type: !159)
!4448 = !DILocation(line: 213, column: 6, scope: !4433)
!4449 = !DILocalVariable(name: "err", scope: !4433, file: !3, line: 214, type: !159)
!4450 = !DILocation(line: 214, column: 6, scope: !4433)
!4451 = !DILocalVariable(name: "abort", scope: !4433, file: !3, line: 214, type: !159)
!4452 = !DILocation(line: 214, column: 11, scope: !4433)
!4453 = !DILocation(line: 216, column: 6, scope: !4454)
!4454 = distinct !DILexicalBlock(scope: !4433, file: !3, line: 216, column: 6)
!4455 = !DILocation(line: 216, column: 15, scope: !4454)
!4456 = !DILocation(line: 216, column: 20, scope: !4454)
!4457 = !DILocation(line: 216, column: 12, scope: !4454)
!4458 = !DILocation(line: 216, column: 6, scope: !4433)
!4459 = !DILocation(line: 217, column: 3, scope: !4454)
!4460 = !DILabel(scope: !4433, name: "again", file: !3, line: 219)
!4461 = !DILocation(line: 219, column: 1, scope: !4433)
!4462 = !DILocation(line: 220, column: 8, scope: !4433)
!4463 = !DILocation(line: 222, column: 8, scope: !4433)
!4464 = !DILocation(line: 222, column: 6, scope: !4433)
!4465 = !DILocation(line: 223, column: 6, scope: !4466)
!4466 = distinct !DILexicalBlock(scope: !4433, file: !3, line: 223, column: 6)
!4467 = !DILocation(line: 223, column: 6, scope: !4433)
!4468 = !DILocation(line: 224, column: 23, scope: !4469)
!4469 = distinct !DILexicalBlock(scope: !4466, file: !3, line: 223, column: 11)
!4470 = !DILocation(line: 224, column: 28, scope: !4469)
!4471 = !DILocation(line: 224, column: 35, scope: !4469)
!4472 = !DILocation(line: 224, column: 3, scope: !4469)
!4473 = !DILocation(line: 225, column: 3, scope: !4469)
!4474 = !DILocation(line: 228, column: 26, scope: !4433)
!4475 = !DILocation(line: 228, column: 31, scope: !4433)
!4476 = !DILocation(line: 228, column: 8, scope: !4433)
!4477 = !DILocation(line: 228, column: 6, scope: !4433)
!4478 = !DILocation(line: 229, column: 6, scope: !4479)
!4479 = distinct !DILexicalBlock(scope: !4433, file: !3, line: 229, column: 6)
!4480 = !DILocation(line: 229, column: 10, scope: !4479)
!4481 = !DILocation(line: 229, column: 6, scope: !4433)
!4482 = !DILocation(line: 230, column: 3, scope: !4479)
!4483 = !DILocation(line: 232, column: 27, scope: !4433)
!4484 = !DILocation(line: 232, column: 32, scope: !4433)
!4485 = !DILocation(line: 232, column: 57, scope: !4433)
!4486 = !DILocation(line: 232, column: 8, scope: !4433)
!4487 = !DILocation(line: 232, column: 6, scope: !4433)
!4488 = !DILocation(line: 233, column: 6, scope: !4489)
!4489 = distinct !DILexicalBlock(scope: !4433, file: !3, line: 233, column: 6)
!4490 = !DILocation(line: 233, column: 6, scope: !4433)
!4491 = !DILocation(line: 234, column: 23, scope: !4492)
!4492 = distinct !DILexicalBlock(scope: !4489, file: !3, line: 233, column: 11)
!4493 = !DILocation(line: 234, column: 28, scope: !4492)
!4494 = !DILocation(line: 234, column: 35, scope: !4492)
!4495 = !DILocation(line: 234, column: 3, scope: !4492)
!4496 = !DILocation(line: 235, column: 3, scope: !4492)
!4497 = !DILocation(line: 238, column: 8, scope: !4433)
!4498 = !DILocation(line: 238, column: 2, scope: !4433)
!4499 = !DILabel(scope: !4433, name: "abort", file: !3, line: 239)
!4500 = !DILocation(line: 239, column: 1, scope: !4433)
!4501 = !DILocation(line: 240, column: 36, scope: !4433)
!4502 = !DILocation(line: 240, column: 8, scope: !4433)
!4503 = !DILocation(line: 240, column: 6, scope: !4433)
!4504 = !DILocation(line: 241, column: 6, scope: !4505)
!4505 = distinct !DILexicalBlock(scope: !4433, file: !3, line: 241, column: 6)
!4506 = !DILocation(line: 241, column: 6, scope: !4433)
!4507 = !DILocation(line: 242, column: 7, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !4509, file: !3, line: 242, column: 7)
!4509 = distinct !DILexicalBlock(scope: !4505, file: !3, line: 241, column: 11)
!4510 = !DILocation(line: 242, column: 11, scope: !4508)
!4511 = !DILocation(line: 242, column: 22, scope: !4508)
!4512 = !DILocation(line: 242, column: 26, scope: !4508)
!4513 = !DILocation(line: 242, column: 7, scope: !4509)
!4514 = !DILocation(line: 243, column: 4, scope: !4508)
!4515 = !DILocation(line: 244, column: 23, scope: !4509)
!4516 = !DILocation(line: 244, column: 28, scope: !4509)
!4517 = !DILocation(line: 244, column: 35, scope: !4509)
!4518 = !DILocation(line: 244, column: 3, scope: !4509)
!4519 = !DILocation(line: 245, column: 2, scope: !4509)
!4520 = !DILocation(line: 246, column: 16, scope: !4505)
!4521 = !DILocation(line: 246, column: 3, scope: !4505)
!4522 = !DILocation(line: 246, column: 8, scope: !4505)
!4523 = !DILocation(line: 246, column: 14, scope: !4505)
!4524 = !DILocation(line: 248, column: 2, scope: !4433)
!4525 = !DILocation(line: 249, column: 1, scope: !4433)
!4526 = distinct !DISubprogram(name: "xenbus_frontend_closed", scope: !3, file: !3, line: 267, type: !4527, scopeLine: 268, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !319)
!4527 = !DISubroutineType(types: !4528)
!4528 = !{!159, !3086}
!4529 = !DILocalVariable(name: "dev", arg: 1, scope: !4526, file: !3, line: 267, type: !3086)
!4530 = !DILocation(line: 267, column: 50, scope: !4526)
!4531 = !DILocation(line: 269, column: 22, scope: !4526)
!4532 = !DILocation(line: 269, column: 2, scope: !4526)
!4533 = !DILocation(line: 270, column: 12, scope: !4526)
!4534 = !DILocation(line: 270, column: 17, scope: !4526)
!4535 = !DILocation(line: 270, column: 2, scope: !4526)
!4536 = !DILocation(line: 271, column: 2, scope: !4526)
!4537 = distinct !DISubprogram(name: "xenbus_dev_error", scope: !3, file: !3, line: 310, type: !4347, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !319)
!4538 = !DILocalVariable(name: "dev", arg: 1, scope: !4537, file: !3, line: 310, type: !3086)
!4539 = !DILocation(line: 310, column: 45, scope: !4537)
!4540 = !DILocalVariable(name: "err", arg: 2, scope: !4537, file: !3, line: 310, type: !159)
!4541 = !DILocation(line: 310, column: 54, scope: !4537)
!4542 = !DILocalVariable(name: "fmt", arg: 3, scope: !4537, file: !3, line: 310, type: !6)
!4543 = !DILocation(line: 310, column: 71, scope: !4537)
!4544 = !DILocalVariable(name: "ap", scope: !4537, file: !3, line: 312, type: !4356)
!4545 = !DILocation(line: 312, column: 10, scope: !4537)
!4546 = !DILocation(line: 314, column: 2, scope: !4537)
!4547 = !DILocation(line: 315, column: 22, scope: !4537)
!4548 = !DILocation(line: 315, column: 27, scope: !4537)
!4549 = !DILocation(line: 315, column: 32, scope: !4537)
!4550 = !DILocation(line: 315, column: 37, scope: !4537)
!4551 = !DILocation(line: 315, column: 2, scope: !4537)
!4552 = !DILocation(line: 316, column: 2, scope: !4537)
!4553 = !DILocation(line: 317, column: 1, scope: !4537)
!4554 = distinct !DISubprogram(name: "xenbus_va_dev_error", scope: !3, file: !3, line: 275, type: !4555, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !319)
!4555 = !DISubroutineType(types: !4556)
!4556 = !{null, !3086, !159, !6, !4557}
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4361, size: 64)
!4558 = !DILocalVariable(name: "s", arg: 1, scope: !4559, file: !147, line: 445, type: !2198)
!4559 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !147, file: !147, line: 445, type: !4560, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !319)
!4560 = !DISubroutineType(types: !4561)
!4561 = !{!163, !2198, !160, !1175}
!4562 = !DILocation(line: 445, column: 72, scope: !4559, inlinedAt: !4563)
!4563 = distinct !DILocation(line: 552, column: 10, scope: !4564, inlinedAt: !4569)
!4564 = distinct !DILexicalBlock(scope: !4565, file: !147, line: 540, column: 34)
!4565 = distinct !DILexicalBlock(scope: !4566, file: !147, line: 540, column: 6)
!4566 = distinct !DISubprogram(name: "kmalloc", scope: !147, file: !147, line: 538, type: !4567, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !319)
!4567 = !DISubroutineType(types: !4568)
!4568 = !{!163, !1175, !160}
!4569 = distinct !DILocation(line: 284, column: 18, scope: !4554)
!4570 = !DILocalVariable(name: "flags", arg: 2, scope: !4559, file: !147, line: 446, type: !160)
!4571 = !DILocation(line: 446, column: 9, scope: !4559, inlinedAt: !4563)
!4572 = !DILocalVariable(name: "size", arg: 3, scope: !4559, file: !147, line: 446, type: !1175)
!4573 = !DILocation(line: 446, column: 23, scope: !4559, inlinedAt: !4563)
!4574 = !DILocalVariable(name: "ret", scope: !4559, file: !147, line: 448, type: !163)
!4575 = !DILocation(line: 448, column: 8, scope: !4559, inlinedAt: !4563)
!4576 = !DILocalVariable(name: "flags", arg: 1, scope: !4577, file: !147, line: 318, type: !160)
!4577 = distinct !DISubprogram(name: "kmalloc_type", scope: !147, file: !147, line: 318, type: !4578, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !319)
!4578 = !DISubroutineType(types: !4579)
!4579 = !{!146, !160}
!4580 = !DILocation(line: 318, column: 67, scope: !4577, inlinedAt: !4581)
!4581 = distinct !DILocation(line: 553, column: 20, scope: !4564, inlinedAt: !4569)
!4582 = !DILocalVariable(name: "size", arg: 1, scope: !4583, file: !147, line: 346, type: !1175)
!4583 = distinct !DISubprogram(name: "kmalloc_index", scope: !147, file: !147, line: 346, type: !4584, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !319)
!4584 = !DISubroutineType(types: !4585)
!4585 = !{!11, !1175}
!4586 = !DILocation(line: 346, column: 58, scope: !4583, inlinedAt: !4587)
!4587 = distinct !DILocation(line: 547, column: 11, scope: !4564, inlinedAt: !4569)
!4588 = !DILocalVariable(name: "size", arg: 1, scope: !4589, file: !147, line: 472, type: !1175)
!4589 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !147, file: !147, line: 472, type: !4590, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !319)
!4590 = !DISubroutineType(types: !4591)
!4591 = !{!163, !1175, !160, !11}
!4592 = !DILocation(line: 472, column: 28, scope: !4589, inlinedAt: !4593)
!4593 = distinct !DILocation(line: 481, column: 9, scope: !4594, inlinedAt: !4595)
!4594 = distinct !DISubprogram(name: "kmalloc_large", scope: !147, file: !147, line: 478, type: !4567, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !319)
!4595 = distinct !DILocation(line: 545, column: 11, scope: !4596, inlinedAt: !4569)
!4596 = distinct !DILexicalBlock(scope: !4564, file: !147, line: 544, column: 7)
!4597 = !DILocalVariable(name: "flags", arg: 2, scope: !4589, file: !147, line: 472, type: !160)
!4598 = !DILocation(line: 472, column: 40, scope: !4589, inlinedAt: !4593)
!4599 = !DILocalVariable(name: "order", arg: 3, scope: !4589, file: !147, line: 472, type: !11)
!4600 = !DILocation(line: 472, column: 60, scope: !4589, inlinedAt: !4593)
!4601 = !DILocalVariable(name: "size", arg: 1, scope: !4594, file: !147, line: 478, type: !1175)
!4602 = !DILocation(line: 478, column: 51, scope: !4594, inlinedAt: !4595)
!4603 = !DILocalVariable(name: "flags", arg: 2, scope: !4594, file: !147, line: 478, type: !160)
!4604 = !DILocation(line: 478, column: 63, scope: !4594, inlinedAt: !4595)
!4605 = !DILocalVariable(name: "order", scope: !4594, file: !147, line: 480, type: !11)
!4606 = !DILocation(line: 480, column: 15, scope: !4594, inlinedAt: !4595)
!4607 = !DILocalVariable(name: "size", arg: 1, scope: !4566, file: !147, line: 538, type: !1175)
!4608 = !DILocation(line: 538, column: 45, scope: !4566, inlinedAt: !4569)
!4609 = !DILocalVariable(name: "flags", arg: 2, scope: !4566, file: !147, line: 538, type: !160)
!4610 = !DILocation(line: 538, column: 57, scope: !4566, inlinedAt: !4569)
!4611 = !DILocalVariable(name: "index", scope: !4564, file: !147, line: 542, type: !11)
!4612 = !DILocation(line: 542, column: 16, scope: !4564, inlinedAt: !4569)
!4613 = !DILocalVariable(name: "dev", arg: 1, scope: !4554, file: !3, line: 275, type: !3086)
!4614 = !DILocation(line: 275, column: 55, scope: !4554)
!4615 = !DILocalVariable(name: "err", arg: 2, scope: !4554, file: !3, line: 275, type: !159)
!4616 = !DILocation(line: 275, column: 64, scope: !4554)
!4617 = !DILocalVariable(name: "fmt", arg: 3, scope: !4554, file: !3, line: 276, type: !6)
!4618 = !DILocation(line: 276, column: 17, scope: !4554)
!4619 = !DILocalVariable(name: "ap", arg: 4, scope: !4554, file: !3, line: 276, type: !4557)
!4620 = !DILocation(line: 276, column: 30, scope: !4554)
!4621 = !DILocalVariable(name: "len", scope: !4554, file: !3, line: 278, type: !11)
!4622 = !DILocation(line: 278, column: 15, scope: !4554)
!4623 = !DILocalVariable(name: "printf_buffer", scope: !4554, file: !3, line: 279, type: !365)
!4624 = !DILocation(line: 279, column: 8, scope: !4554)
!4625 = !DILocalVariable(name: "path_buffer", scope: !4554, file: !3, line: 280, type: !365)
!4626 = !DILocation(line: 280, column: 8, scope: !4554)
!4627 = !DILocation(line: 540, column: 27, scope: !4565, inlinedAt: !4569)
!4628 = !DILocation(line: 540, column: 6, scope: !4565, inlinedAt: !4569)
!4629 = !DILocation(line: 540, column: 6, scope: !4566, inlinedAt: !4569)
!4630 = !DILocation(line: 544, column: 7, scope: !4596, inlinedAt: !4569)
!4631 = !DILocation(line: 544, column: 12, scope: !4596, inlinedAt: !4569)
!4632 = !DILocation(line: 544, column: 7, scope: !4564, inlinedAt: !4569)
!4633 = !DILocation(line: 545, column: 25, scope: !4596, inlinedAt: !4569)
!4634 = !DILocation(line: 545, column: 31, scope: !4596, inlinedAt: !4569)
!4635 = !DILocation(line: 480, column: 33, scope: !4594, inlinedAt: !4595)
!4636 = !DILocation(line: 480, column: 23, scope: !4594, inlinedAt: !4595)
!4637 = !DILocation(line: 481, column: 29, scope: !4594, inlinedAt: !4595)
!4638 = !DILocation(line: 481, column: 35, scope: !4594, inlinedAt: !4595)
!4639 = !DILocation(line: 481, column: 42, scope: !4594, inlinedAt: !4595)
!4640 = !DILocation(line: 474, column: 23, scope: !4589, inlinedAt: !4593)
!4641 = !DILocation(line: 474, column: 29, scope: !4589, inlinedAt: !4593)
!4642 = !DILocation(line: 474, column: 36, scope: !4589, inlinedAt: !4593)
!4643 = !DILocation(line: 474, column: 9, scope: !4589, inlinedAt: !4593)
!4644 = !DILocation(line: 545, column: 4, scope: !4596, inlinedAt: !4569)
!4645 = !DILocation(line: 547, column: 25, scope: !4564, inlinedAt: !4569)
!4646 = !DILocation(line: 348, column: 7, scope: !4647, inlinedAt: !4587)
!4647 = distinct !DILexicalBlock(scope: !4583, file: !147, line: 348, column: 6)
!4648 = !DILocation(line: 348, column: 6, scope: !4583, inlinedAt: !4587)
!4649 = !DILocation(line: 349, column: 3, scope: !4647, inlinedAt: !4587)
!4650 = !DILocation(line: 351, column: 6, scope: !4651, inlinedAt: !4587)
!4651 = distinct !DILexicalBlock(scope: !4583, file: !147, line: 351, column: 6)
!4652 = !DILocation(line: 351, column: 11, scope: !4651, inlinedAt: !4587)
!4653 = !DILocation(line: 351, column: 6, scope: !4583, inlinedAt: !4587)
!4654 = !DILocation(line: 352, column: 3, scope: !4651, inlinedAt: !4587)
!4655 = !DILocation(line: 354, column: 32, scope: !4656, inlinedAt: !4587)
!4656 = distinct !DILexicalBlock(scope: !4583, file: !147, line: 354, column: 6)
!4657 = !DILocation(line: 354, column: 37, scope: !4656, inlinedAt: !4587)
!4658 = !DILocation(line: 354, column: 42, scope: !4656, inlinedAt: !4587)
!4659 = !DILocation(line: 354, column: 45, scope: !4656, inlinedAt: !4587)
!4660 = !DILocation(line: 354, column: 50, scope: !4656, inlinedAt: !4587)
!4661 = !DILocation(line: 354, column: 6, scope: !4583, inlinedAt: !4587)
!4662 = !DILocation(line: 355, column: 3, scope: !4656, inlinedAt: !4587)
!4663 = !DILocation(line: 356, column: 32, scope: !4664, inlinedAt: !4587)
!4664 = distinct !DILexicalBlock(scope: !4583, file: !147, line: 356, column: 6)
!4665 = !DILocation(line: 356, column: 37, scope: !4664, inlinedAt: !4587)
!4666 = !DILocation(line: 356, column: 43, scope: !4664, inlinedAt: !4587)
!4667 = !DILocation(line: 356, column: 46, scope: !4664, inlinedAt: !4587)
!4668 = !DILocation(line: 356, column: 51, scope: !4664, inlinedAt: !4587)
!4669 = !DILocation(line: 356, column: 6, scope: !4583, inlinedAt: !4587)
!4670 = !DILocation(line: 357, column: 3, scope: !4664, inlinedAt: !4587)
!4671 = !DILocation(line: 358, column: 6, scope: !4672, inlinedAt: !4587)
!4672 = distinct !DILexicalBlock(scope: !4583, file: !147, line: 358, column: 6)
!4673 = !DILocation(line: 358, column: 11, scope: !4672, inlinedAt: !4587)
!4674 = !DILocation(line: 358, column: 6, scope: !4583, inlinedAt: !4587)
!4675 = !DILocation(line: 358, column: 26, scope: !4672, inlinedAt: !4587)
!4676 = !DILocation(line: 359, column: 6, scope: !4677, inlinedAt: !4587)
!4677 = distinct !DILexicalBlock(scope: !4583, file: !147, line: 359, column: 6)
!4678 = !DILocation(line: 359, column: 11, scope: !4677, inlinedAt: !4587)
!4679 = !DILocation(line: 359, column: 6, scope: !4583, inlinedAt: !4587)
!4680 = !DILocation(line: 359, column: 26, scope: !4677, inlinedAt: !4587)
!4681 = !DILocation(line: 360, column: 6, scope: !4682, inlinedAt: !4587)
!4682 = distinct !DILexicalBlock(scope: !4583, file: !147, line: 360, column: 6)
!4683 = !DILocation(line: 360, column: 11, scope: !4682, inlinedAt: !4587)
!4684 = !DILocation(line: 360, column: 6, scope: !4583, inlinedAt: !4587)
!4685 = !DILocation(line: 360, column: 26, scope: !4682, inlinedAt: !4587)
!4686 = !DILocation(line: 361, column: 6, scope: !4687, inlinedAt: !4587)
!4687 = distinct !DILexicalBlock(scope: !4583, file: !147, line: 361, column: 6)
!4688 = !DILocation(line: 361, column: 11, scope: !4687, inlinedAt: !4587)
!4689 = !DILocation(line: 361, column: 6, scope: !4583, inlinedAt: !4587)
!4690 = !DILocation(line: 361, column: 26, scope: !4687, inlinedAt: !4587)
!4691 = !DILocation(line: 362, column: 6, scope: !4692, inlinedAt: !4587)
!4692 = distinct !DILexicalBlock(scope: !4583, file: !147, line: 362, column: 6)
!4693 = !DILocation(line: 362, column: 11, scope: !4692, inlinedAt: !4587)
!4694 = !DILocation(line: 362, column: 6, scope: !4583, inlinedAt: !4587)
!4695 = !DILocation(line: 362, column: 26, scope: !4692, inlinedAt: !4587)
!4696 = !DILocation(line: 363, column: 6, scope: !4697, inlinedAt: !4587)
!4697 = distinct !DILexicalBlock(scope: !4583, file: !147, line: 363, column: 6)
!4698 = !DILocation(line: 363, column: 11, scope: !4697, inlinedAt: !4587)
!4699 = !DILocation(line: 363, column: 6, scope: !4583, inlinedAt: !4587)
!4700 = !DILocation(line: 363, column: 26, scope: !4697, inlinedAt: !4587)
!4701 = !DILocation(line: 364, column: 6, scope: !4702, inlinedAt: !4587)
!4702 = distinct !DILexicalBlock(scope: !4583, file: !147, line: 364, column: 6)
!4703 = !DILocation(line: 364, column: 11, scope: !4702, inlinedAt: !4587)
!4704 = !DILocation(line: 364, column: 6, scope: !4583, inlinedAt: !4587)
!4705 = !DILocation(line: 364, column: 26, scope: !4702, inlinedAt: !4587)
!4706 = !DILocation(line: 365, column: 6, scope: !4707, inlinedAt: !4587)
!4707 = distinct !DILexicalBlock(scope: !4583, file: !147, line: 365, column: 6)
!4708 = !DILocation(line: 365, column: 11, scope: !4707, inlinedAt: !4587)
!4709 = !DILocation(line: 365, column: 6, scope: !4583, inlinedAt: !4587)
!4710 = !DILocation(line: 365, column: 26, scope: !4707, inlinedAt: !4587)
!4711 = !DILocation(line: 366, column: 6, scope: !4712, inlinedAt: !4587)
!4712 = distinct !DILexicalBlock(scope: !4583, file: !147, line: 366, column: 6)
!4713 = !DILocation(line: 366, column: 11, scope: !4712, inlinedAt: !4587)
!4714 = !DILocation(line: 366, column: 6, scope: !4583, inlinedAt: !4587)
!4715 = !DILocation(line: 366, column: 26, scope: !4712, inlinedAt: !4587)
!4716 = !DILocation(line: 367, column: 6, scope: !4717, inlinedAt: !4587)
!4717 = distinct !DILexicalBlock(scope: !4583, file: !147, line: 367, column: 6)
!4718 = !DILocation(line: 367, column: 11, scope: !4717, inlinedAt: !4587)
!4719 = !DILocation(line: 367, column: 6, scope: !4583, inlinedAt: !4587)
!4720 = !DILocation(line: 367, column: 26, scope: !4717, inlinedAt: !4587)
!4721 = !DILocation(line: 368, column: 6, scope: !4722, inlinedAt: !4587)
!4722 = distinct !DILexicalBlock(scope: !4583, file: !147, line: 368, column: 6)
!4723 = !DILocation(line: 368, column: 11, scope: !4722, inlinedAt: !4587)
!4724 = !DILocation(line: 368, column: 6, scope: !4583, inlinedAt: !4587)
!4725 = !DILocation(line: 368, column: 26, scope: !4722, inlinedAt: !4587)
!4726 = !DILocation(line: 369, column: 6, scope: !4727, inlinedAt: !4587)
!4727 = distinct !DILexicalBlock(scope: !4583, file: !147, line: 369, column: 6)
!4728 = !DILocation(line: 369, column: 11, scope: !4727, inlinedAt: !4587)
!4729 = !DILocation(line: 369, column: 6, scope: !4583, inlinedAt: !4587)
!4730 = !DILocation(line: 369, column: 26, scope: !4727, inlinedAt: !4587)
!4731 = !DILocation(line: 370, column: 6, scope: !4732, inlinedAt: !4587)
!4732 = distinct !DILexicalBlock(scope: !4583, file: !147, line: 370, column: 6)
!4733 = !DILocation(line: 370, column: 11, scope: !4732, inlinedAt: !4587)
!4734 = !DILocation(line: 370, column: 6, scope: !4583, inlinedAt: !4587)
!4735 = !DILocation(line: 370, column: 26, scope: !4732, inlinedAt: !4587)
!4736 = !DILocation(line: 371, column: 6, scope: !4737, inlinedAt: !4587)
!4737 = distinct !DILexicalBlock(scope: !4583, file: !147, line: 371, column: 6)
!4738 = !DILocation(line: 371, column: 11, scope: !4737, inlinedAt: !4587)
!4739 = !DILocation(line: 371, column: 6, scope: !4583, inlinedAt: !4587)
!4740 = !DILocation(line: 371, column: 26, scope: !4737, inlinedAt: !4587)
!4741 = !DILocation(line: 372, column: 6, scope: !4742, inlinedAt: !4587)
!4742 = distinct !DILexicalBlock(scope: !4583, file: !147, line: 372, column: 6)
!4743 = !DILocation(line: 372, column: 11, scope: !4742, inlinedAt: !4587)
!4744 = !DILocation(line: 372, column: 6, scope: !4583, inlinedAt: !4587)
!4745 = !DILocation(line: 372, column: 26, scope: !4742, inlinedAt: !4587)
!4746 = !DILocation(line: 373, column: 6, scope: !4747, inlinedAt: !4587)
!4747 = distinct !DILexicalBlock(scope: !4583, file: !147, line: 373, column: 6)
!4748 = !DILocation(line: 373, column: 11, scope: !4747, inlinedAt: !4587)
!4749 = !DILocation(line: 373, column: 6, scope: !4583, inlinedAt: !4587)
!4750 = !DILocation(line: 373, column: 26, scope: !4747, inlinedAt: !4587)
!4751 = !DILocation(line: 374, column: 6, scope: !4752, inlinedAt: !4587)
!4752 = distinct !DILexicalBlock(scope: !4583, file: !147, line: 374, column: 6)
!4753 = !DILocation(line: 374, column: 11, scope: !4752, inlinedAt: !4587)
!4754 = !DILocation(line: 374, column: 6, scope: !4583, inlinedAt: !4587)
!4755 = !DILocation(line: 374, column: 26, scope: !4752, inlinedAt: !4587)
!4756 = !DILocation(line: 375, column: 6, scope: !4757, inlinedAt: !4587)
!4757 = distinct !DILexicalBlock(scope: !4583, file: !147, line: 375, column: 6)
!4758 = !DILocation(line: 375, column: 11, scope: !4757, inlinedAt: !4587)
!4759 = !DILocation(line: 375, column: 6, scope: !4583, inlinedAt: !4587)
!4760 = !DILocation(line: 375, column: 27, scope: !4757, inlinedAt: !4587)
!4761 = !DILocation(line: 376, column: 6, scope: !4762, inlinedAt: !4587)
!4762 = distinct !DILexicalBlock(scope: !4583, file: !147, line: 376, column: 6)
!4763 = !DILocation(line: 376, column: 11, scope: !4762, inlinedAt: !4587)
!4764 = !DILocation(line: 376, column: 6, scope: !4583, inlinedAt: !4587)
!4765 = !DILocation(line: 376, column: 32, scope: !4762, inlinedAt: !4587)
!4766 = !DILocation(line: 377, column: 6, scope: !4767, inlinedAt: !4587)
!4767 = distinct !DILexicalBlock(scope: !4583, file: !147, line: 377, column: 6)
!4768 = !DILocation(line: 377, column: 11, scope: !4767, inlinedAt: !4587)
!4769 = !DILocation(line: 377, column: 6, scope: !4583, inlinedAt: !4587)
!4770 = !DILocation(line: 377, column: 32, scope: !4767, inlinedAt: !4587)
!4771 = !DILocation(line: 378, column: 6, scope: !4772, inlinedAt: !4587)
!4772 = distinct !DILexicalBlock(scope: !4583, file: !147, line: 378, column: 6)
!4773 = !DILocation(line: 378, column: 11, scope: !4772, inlinedAt: !4587)
!4774 = !DILocation(line: 378, column: 6, scope: !4583, inlinedAt: !4587)
!4775 = !DILocation(line: 378, column: 32, scope: !4772, inlinedAt: !4587)
!4776 = !DILocation(line: 379, column: 6, scope: !4777, inlinedAt: !4587)
!4777 = distinct !DILexicalBlock(scope: !4583, file: !147, line: 379, column: 6)
!4778 = !DILocation(line: 379, column: 11, scope: !4777, inlinedAt: !4587)
!4779 = !DILocation(line: 379, column: 6, scope: !4583, inlinedAt: !4587)
!4780 = !DILocation(line: 379, column: 33, scope: !4777, inlinedAt: !4587)
!4781 = !DILocation(line: 380, column: 6, scope: !4782, inlinedAt: !4587)
!4782 = distinct !DILexicalBlock(scope: !4583, file: !147, line: 380, column: 6)
!4783 = !DILocation(line: 380, column: 11, scope: !4782, inlinedAt: !4587)
!4784 = !DILocation(line: 380, column: 6, scope: !4583, inlinedAt: !4587)
!4785 = !DILocation(line: 380, column: 33, scope: !4782, inlinedAt: !4587)
!4786 = !DILocation(line: 381, column: 6, scope: !4787, inlinedAt: !4587)
!4787 = distinct !DILexicalBlock(scope: !4583, file: !147, line: 381, column: 6)
!4788 = !DILocation(line: 381, column: 11, scope: !4787, inlinedAt: !4587)
!4789 = !DILocation(line: 381, column: 6, scope: !4583, inlinedAt: !4587)
!4790 = !DILocation(line: 381, column: 33, scope: !4787, inlinedAt: !4587)
!4791 = !DILocation(line: 382, column: 2, scope: !4792, inlinedAt: !4587)
!4792 = distinct !DILexicalBlock(scope: !4793, file: !147, line: 382, column: 2)
!4793 = distinct !DILexicalBlock(scope: !4583, file: !147, line: 382, column: 2)
!4794 = !{i32 -2142661805, i32 -2142661776, i32 -2142661730, i32 -2142661672, i32 -2142661618, i32 -2142661564, i32 -2142661509, i32 -2142661478}
!4795 = !DILocation(line: 382, column: 2, scope: !4796, inlinedAt: !4587)
!4796 = distinct !DILexicalBlock(scope: !4797, file: !147, line: 382, column: 2)
!4797 = distinct !DILexicalBlock(scope: !4793, file: !147, line: 382, column: 2)
!4798 = !{i32 -2142661035, i32 -2142661028, i32 -2142660974, i32 -2142660943, i32 -2142660913}
!4799 = !DILocation(line: 382, column: 2, scope: !4797, inlinedAt: !4587)
!4800 = !DILocation(line: 386, column: 1, scope: !4583, inlinedAt: !4587)
!4801 = !DILocation(line: 547, column: 9, scope: !4564, inlinedAt: !4569)
!4802 = !DILocation(line: 549, column: 8, scope: !4803, inlinedAt: !4569)
!4803 = distinct !DILexicalBlock(scope: !4564, file: !147, line: 549, column: 7)
!4804 = !DILocation(line: 549, column: 7, scope: !4564, inlinedAt: !4569)
!4805 = !DILocation(line: 550, column: 4, scope: !4803, inlinedAt: !4569)
!4806 = !DILocation(line: 553, column: 33, scope: !4564, inlinedAt: !4569)
!4807 = !DILocation(line: 325, column: 6, scope: !4808, inlinedAt: !4581)
!4808 = distinct !DILexicalBlock(scope: !4577, file: !147, line: 325, column: 6)
!4809 = !DILocation(line: 325, column: 6, scope: !4577, inlinedAt: !4581)
!4810 = !DILocation(line: 326, column: 3, scope: !4808, inlinedAt: !4581)
!4811 = !DILocation(line: 332, column: 9, scope: !4577, inlinedAt: !4581)
!4812 = !DILocation(line: 332, column: 15, scope: !4577, inlinedAt: !4581)
!4813 = !DILocation(line: 332, column: 2, scope: !4577, inlinedAt: !4581)
!4814 = !DILocation(line: 336, column: 1, scope: !4577, inlinedAt: !4581)
!4815 = !DILocation(line: 553, column: 5, scope: !4564, inlinedAt: !4569)
!4816 = !DILocation(line: 553, column: 41, scope: !4564, inlinedAt: !4569)
!4817 = !DILocation(line: 554, column: 5, scope: !4564, inlinedAt: !4569)
!4818 = !DILocation(line: 554, column: 12, scope: !4564, inlinedAt: !4569)
!4819 = !DILocation(line: 448, column: 31, scope: !4559, inlinedAt: !4563)
!4820 = !DILocation(line: 448, column: 34, scope: !4559, inlinedAt: !4563)
!4821 = !DILocation(line: 448, column: 14, scope: !4559, inlinedAt: !4563)
!4822 = !DILocation(line: 450, column: 22, scope: !4559, inlinedAt: !4563)
!4823 = !DILocation(line: 450, column: 25, scope: !4559, inlinedAt: !4563)
!4824 = !DILocation(line: 450, column: 30, scope: !4559, inlinedAt: !4563)
!4825 = !DILocation(line: 450, column: 36, scope: !4559, inlinedAt: !4563)
!4826 = !DILocation(line: 450, column: 8, scope: !4559, inlinedAt: !4563)
!4827 = !DILocation(line: 450, column: 6, scope: !4559, inlinedAt: !4563)
!4828 = !DILocation(line: 451, column: 9, scope: !4559, inlinedAt: !4563)
!4829 = !DILocation(line: 552, column: 3, scope: !4564, inlinedAt: !4569)
!4830 = !DILocation(line: 557, column: 19, scope: !4566, inlinedAt: !4569)
!4831 = !DILocation(line: 557, column: 25, scope: !4566, inlinedAt: !4569)
!4832 = !DILocation(line: 557, column: 9, scope: !4566, inlinedAt: !4569)
!4833 = !DILocation(line: 557, column: 2, scope: !4566, inlinedAt: !4569)
!4834 = !DILocation(line: 558, column: 1, scope: !4566, inlinedAt: !4569)
!4835 = !DILocation(line: 284, column: 16, scope: !4554)
!4836 = !DILocation(line: 285, column: 7, scope: !4837)
!4837 = distinct !DILexicalBlock(scope: !4554, file: !3, line: 285, column: 6)
!4838 = !DILocation(line: 285, column: 6, scope: !4554)
!4839 = !DILocation(line: 286, column: 3, scope: !4837)
!4840 = !DILocation(line: 288, column: 16, scope: !4554)
!4841 = !DILocation(line: 288, column: 39, scope: !4554)
!4842 = !DILocation(line: 288, column: 38, scope: !4554)
!4843 = !DILocation(line: 288, column: 8, scope: !4554)
!4844 = !DILocation(line: 288, column: 6, scope: !4554)
!4845 = !DILocation(line: 289, column: 12, scope: !4554)
!4846 = !DILocation(line: 289, column: 28, scope: !4554)
!4847 = !DILocation(line: 289, column: 26, scope: !4554)
!4848 = !DILocation(line: 289, column: 54, scope: !4554)
!4849 = !DILocation(line: 289, column: 52, scope: !4554)
!4850 = !DILocation(line: 289, column: 33, scope: !4554)
!4851 = !DILocation(line: 289, column: 59, scope: !4554)
!4852 = !DILocation(line: 289, column: 64, scope: !4554)
!4853 = !DILocation(line: 289, column: 2, scope: !4554)
!4854 = !DILocation(line: 291, column: 2, scope: !4554)
!4855 = !DILocation(line: 293, column: 50, scope: !4554)
!4856 = !DILocation(line: 293, column: 55, scope: !4554)
!4857 = !DILocation(line: 293, column: 16, scope: !4554)
!4858 = !DILocation(line: 293, column: 14, scope: !4554)
!4859 = !DILocation(line: 294, column: 6, scope: !4860)
!4860 = distinct !DILexicalBlock(scope: !4554, file: !3, line: 294, column: 6)
!4861 = !DILocation(line: 294, column: 6, scope: !4554)
!4862 = !DILocation(line: 295, column: 16, scope: !4860)
!4863 = !DILocation(line: 295, column: 25, scope: !4860)
!4864 = !DILocation(line: 295, column: 47, scope: !4860)
!4865 = !DILocation(line: 295, column: 3, scope: !4860)
!4866 = !DILocation(line: 297, column: 8, scope: !4554)
!4867 = !DILocation(line: 297, column: 2, scope: !4554)
!4868 = !DILocation(line: 298, column: 8, scope: !4554)
!4869 = !DILocation(line: 298, column: 2, scope: !4554)
!4870 = !DILocation(line: 299, column: 1, scope: !4554)
!4871 = distinct !DISubprogram(name: "xenbus_grant_ring", scope: !3, file: !3, line: 372, type: !4872, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !319)
!4872 = !DISubroutineType(types: !4873)
!4873 = !{!159, !3086, !163, !11, !4276}
!4874 = !DILocalVariable(name: "dev", arg: 1, scope: !4871, file: !3, line: 372, type: !3086)
!4875 = !DILocation(line: 372, column: 45, scope: !4871)
!4876 = !DILocalVariable(name: "vaddr", arg: 2, scope: !4871, file: !3, line: 372, type: !163)
!4877 = !DILocation(line: 372, column: 56, scope: !4871)
!4878 = !DILocalVariable(name: "nr_pages", arg: 3, scope: !4871, file: !3, line: 373, type: !11)
!4879 = !DILocation(line: 373, column: 22, scope: !4871)
!4880 = !DILocalVariable(name: "grefs", arg: 4, scope: !4871, file: !3, line: 373, type: !4276)
!4881 = !DILocation(line: 373, column: 45, scope: !4871)
!4882 = !DILocalVariable(name: "err", scope: !4871, file: !3, line: 375, type: !159)
!4883 = !DILocation(line: 375, column: 6, scope: !4871)
!4884 = !DILocalVariable(name: "i", scope: !4871, file: !3, line: 376, type: !159)
!4885 = !DILocation(line: 376, column: 6, scope: !4871)
!4886 = !DILocalVariable(name: "j", scope: !4871, file: !3, line: 376, type: !159)
!4887 = !DILocation(line: 376, column: 9, scope: !4871)
!4888 = !DILocation(line: 378, column: 9, scope: !4889)
!4889 = distinct !DILexicalBlock(scope: !4871, file: !3, line: 378, column: 2)
!4890 = !DILocation(line: 378, column: 7, scope: !4889)
!4891 = !DILocation(line: 378, column: 14, scope: !4892)
!4892 = distinct !DILexicalBlock(scope: !4889, file: !3, line: 378, column: 2)
!4893 = !DILocation(line: 378, column: 18, scope: !4892)
!4894 = !DILocation(line: 378, column: 16, scope: !4892)
!4895 = !DILocation(line: 378, column: 2, scope: !4889)
!4896 = !DILocalVariable(name: "gfn", scope: !4897, file: !3, line: 379, type: !162)
!4897 = distinct !DILexicalBlock(scope: !4892, file: !3, line: 378, column: 33)
!4898 = !DILocation(line: 379, column: 17, scope: !4897)
!4899 = !DILocation(line: 381, column: 23, scope: !4900)
!4900 = distinct !DILexicalBlock(scope: !4897, file: !3, line: 381, column: 7)
!4901 = !DILocation(line: 381, column: 7, scope: !4900)
!4902 = !DILocation(line: 381, column: 7, scope: !4897)
!4903 = !DILocation(line: 382, column: 36, scope: !4900)
!4904 = !DILocation(line: 382, column: 21, scope: !4900)
!4905 = !DILocation(line: 382, column: 10, scope: !4900)
!4906 = !DILocation(line: 382, column: 8, scope: !4900)
!4907 = !DILocation(line: 382, column: 4, scope: !4900)
!4908 = !DILocation(line: 384, column: 10, scope: !4900)
!4909 = !DILocation(line: 384, column: 8, scope: !4900)
!4910 = !DILocation(line: 386, column: 37, scope: !4897)
!4911 = !DILocation(line: 386, column: 42, scope: !4897)
!4912 = !DILocation(line: 386, column: 55, scope: !4897)
!4913 = !DILocation(line: 386, column: 9, scope: !4897)
!4914 = !DILocation(line: 386, column: 7, scope: !4897)
!4915 = !DILocation(line: 387, column: 7, scope: !4916)
!4916 = distinct !DILexicalBlock(scope: !4897, file: !3, line: 387, column: 7)
!4917 = !DILocation(line: 387, column: 11, scope: !4916)
!4918 = !DILocation(line: 387, column: 7, scope: !4897)
!4919 = !DILocation(line: 388, column: 21, scope: !4920)
!4920 = distinct !DILexicalBlock(scope: !4916, file: !3, line: 387, column: 16)
!4921 = !DILocation(line: 388, column: 26, scope: !4920)
!4922 = !DILocation(line: 388, column: 4, scope: !4920)
!4923 = !DILocation(line: 390, column: 4, scope: !4920)
!4924 = !DILocation(line: 392, column: 14, scope: !4897)
!4925 = !DILocation(line: 392, column: 3, scope: !4897)
!4926 = !DILocation(line: 392, column: 9, scope: !4897)
!4927 = !DILocation(line: 392, column: 12, scope: !4897)
!4928 = !DILocation(line: 394, column: 11, scope: !4897)
!4929 = !DILocation(line: 394, column: 17, scope: !4897)
!4930 = !DILocation(line: 394, column: 9, scope: !4897)
!4931 = !DILocation(line: 395, column: 2, scope: !4897)
!4932 = !DILocation(line: 378, column: 29, scope: !4892)
!4933 = !DILocation(line: 378, column: 2, scope: !4892)
!4934 = distinct !{!4934, !4895, !4935}
!4935 = !DILocation(line: 395, column: 2, scope: !4889)
!4936 = !DILocation(line: 397, column: 2, scope: !4871)
!4937 = !DILabel(scope: !4871, name: "fail", file: !3, line: 399)
!4938 = !DILocation(line: 399, column: 1, scope: !4871)
!4939 = !DILocation(line: 400, column: 9, scope: !4940)
!4940 = distinct !DILexicalBlock(scope: !4871, file: !3, line: 400, column: 2)
!4941 = !DILocation(line: 400, column: 7, scope: !4940)
!4942 = !DILocation(line: 400, column: 14, scope: !4943)
!4943 = distinct !DILexicalBlock(scope: !4940, file: !3, line: 400, column: 2)
!4944 = !DILocation(line: 400, column: 18, scope: !4943)
!4945 = !DILocation(line: 400, column: 16, scope: !4943)
!4946 = !DILocation(line: 400, column: 2, scope: !4940)
!4947 = !DILocation(line: 401, column: 33, scope: !4943)
!4948 = !DILocation(line: 401, column: 39, scope: !4943)
!4949 = !DILocation(line: 401, column: 3, scope: !4943)
!4950 = !DILocation(line: 400, column: 22, scope: !4943)
!4951 = !DILocation(line: 400, column: 2, scope: !4943)
!4952 = distinct !{!4952, !4946, !4953}
!4953 = !DILocation(line: 401, column: 44, scope: !4940)
!4954 = !DILocation(line: 402, column: 9, scope: !4871)
!4955 = !DILocation(line: 402, column: 2, scope: !4871)
!4956 = !DILocation(line: 403, column: 1, scope: !4871)
!4957 = distinct !DISubprogram(name: "pfn_to_gfn", scope: !4958, file: !4958, line: 251, type: !4959, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !319)
!4958 = !DIFile(filename: "./arch/x86/include/asm/xen/page.h", directory: "/home/lizy2001/genbc/linux")
!4959 = !DISubroutineType(types: !4960)
!4960 = !{!162, !162}
!4961 = !DILocalVariable(name: "pfn", arg: 1, scope: !4957, file: !4958, line: 251, type: !162)
!4962 = !DILocation(line: 251, column: 54, scope: !4957)
!4963 = !DILocation(line: 253, column: 6, scope: !4964)
!4964 = distinct !DILexicalBlock(scope: !4957, file: !4958, line: 253, column: 6)
!4965 = !DILocation(line: 253, column: 6, scope: !4957)
!4966 = !DILocation(line: 254, column: 10, scope: !4964)
!4967 = !DILocation(line: 254, column: 3, scope: !4964)
!4968 = !DILocation(line: 256, column: 21, scope: !4964)
!4969 = !DILocation(line: 256, column: 10, scope: !4964)
!4970 = !DILocation(line: 256, column: 3, scope: !4964)
!4971 = !DILocation(line: 257, column: 1, scope: !4957)
!4972 = distinct !DISubprogram(name: "__phys_addr_nodebug", scope: !4973, file: !4973, line: 18, type: !4959, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !319)
!4973 = !DIFile(filename: "./arch/x86/include/asm/page_64.h", directory: "/home/lizy2001/genbc/linux")
!4974 = !DILocalVariable(name: "x", arg: 1, scope: !4972, file: !4973, line: 18, type: !162)
!4975 = !DILocation(line: 18, column: 63, scope: !4972)
!4976 = !DILocalVariable(name: "y", scope: !4972, file: !4973, line: 20, type: !162)
!4977 = !DILocation(line: 20, column: 16, scope: !4972)
!4978 = !DILocation(line: 20, column: 20, scope: !4972)
!4979 = !DILocation(line: 20, column: 22, scope: !4972)
!4980 = !DILocation(line: 23, column: 6, scope: !4972)
!4981 = !DILocation(line: 23, column: 12, scope: !4972)
!4982 = !DILocation(line: 23, column: 16, scope: !4972)
!4983 = !DILocation(line: 23, column: 14, scope: !4972)
!4984 = !DILocation(line: 23, column: 11, scope: !4972)
!4985 = !DILocation(line: 23, column: 21, scope: !4972)
!4986 = !DILocation(line: 23, column: 55, scope: !4972)
!4987 = !DILocation(line: 23, column: 53, scope: !4972)
!4988 = !DILocation(line: 23, column: 8, scope: !4972)
!4989 = !DILocation(line: 23, column: 4, scope: !4972)
!4990 = !DILocation(line: 25, column: 9, scope: !4972)
!4991 = !DILocation(line: 25, column: 2, scope: !4972)
!4992 = distinct !DISubprogram(name: "xenbus_alloc_evtchn", scope: !3, file: !3, line: 413, type: !4993, scopeLine: 414, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !319)
!4993 = !DISubroutineType(types: !4994)
!4994 = !{!159, !3086, !4995}
!4995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4996, size: 64)
!4996 = !DIDerivedType(tag: DW_TAG_typedef, name: "evtchn_port_t", file: !4997, line: 15, baseType: !1557)
!4997 = !DIFile(filename: "./include/xen/interface/event_channel.h", directory: "/home/lizy2001/genbc/linux")
!4998 = !DILocalVariable(name: "dev", arg: 1, scope: !4992, file: !3, line: 413, type: !3086)
!4999 = !DILocation(line: 413, column: 47, scope: !4992)
!5000 = !DILocalVariable(name: "port", arg: 2, scope: !4992, file: !3, line: 413, type: !4995)
!5001 = !DILocation(line: 413, column: 67, scope: !4992)
!5002 = !DILocalVariable(name: "alloc_unbound", scope: !4992, file: !3, line: 415, type: !5003)
!5003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evtchn_alloc_unbound", file: !4997, line: 27, size: 64, elements: !5004)
!5004 = !{!5005, !5006, !5007}
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !5003, file: !4997, line: 29, baseType: !4260, size: 16)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "remote_dom", scope: !5003, file: !4997, line: 29, baseType: !4260, size: 16, offset: 16)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !5003, file: !4997, line: 31, baseType: !4996, size: 32, offset: 32)
!5008 = !DILocation(line: 415, column: 30, scope: !4992)
!5009 = !DILocalVariable(name: "err", scope: !4992, file: !3, line: 416, type: !159)
!5010 = !DILocation(line: 416, column: 6, scope: !4992)
!5011 = !DILocation(line: 418, column: 16, scope: !4992)
!5012 = !DILocation(line: 418, column: 20, scope: !4992)
!5013 = !DILocation(line: 419, column: 29, scope: !4992)
!5014 = !DILocation(line: 419, column: 34, scope: !4992)
!5015 = !DILocation(line: 419, column: 16, scope: !4992)
!5016 = !DILocation(line: 419, column: 27, scope: !4992)
!5017 = !DILocation(line: 422, column: 8, scope: !4992)
!5018 = !DILocation(line: 421, column: 8, scope: !4992)
!5019 = !DILocation(line: 421, column: 6, scope: !4992)
!5020 = !DILocation(line: 423, column: 6, scope: !5021)
!5021 = distinct !DILexicalBlock(scope: !4992, file: !3, line: 423, column: 6)
!5022 = !DILocation(line: 423, column: 6, scope: !4992)
!5023 = !DILocation(line: 424, column: 20, scope: !5021)
!5024 = !DILocation(line: 424, column: 25, scope: !5021)
!5025 = !DILocation(line: 424, column: 3, scope: !5021)
!5026 = !DILocation(line: 426, column: 25, scope: !5021)
!5027 = !DILocation(line: 426, column: 4, scope: !5021)
!5028 = !DILocation(line: 426, column: 9, scope: !5021)
!5029 = !DILocation(line: 428, column: 9, scope: !4992)
!5030 = !DILocation(line: 428, column: 2, scope: !4992)
!5031 = distinct !DISubprogram(name: "HYPERVISOR_event_channel_op", scope: !5032, file: !5032, line: 356, type: !5033, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !319)
!5032 = !DIFile(filename: "./arch/x86/include/asm/xen/hypercall.h", directory: "/home/lizy2001/genbc/linux")
!5033 = !DISubroutineType(types: !5034)
!5034 = !{!159, !159, !163}
!5035 = !DILocalVariable(name: "cmd", arg: 1, scope: !5031, file: !5032, line: 356, type: !159)
!5036 = !DILocation(line: 356, column: 33, scope: !5031)
!5037 = !DILocalVariable(name: "arg", arg: 2, scope: !5031, file: !5032, line: 356, type: !163)
!5038 = !DILocation(line: 356, column: 44, scope: !5031)
!5039 = !DILocalVariable(name: "__res", scope: !5040, file: !5032, line: 358, type: !162)
!5040 = distinct !DILexicalBlock(scope: !5031, file: !5032, line: 358, column: 9)
!5041 = !DILocation(line: 358, column: 9, scope: !5040)
!5042 = !DILocalVariable(name: "__arg1", scope: !5040, file: !5032, line: 358, type: !162)
!5043 = !DILocalVariable(name: "__arg2", scope: !5040, file: !5032, line: 358, type: !162)
!5044 = !DILocalVariable(name: "__arg3", scope: !5040, file: !5032, line: 358, type: !162)
!5045 = !DILocalVariable(name: "__arg4", scope: !5040, file: !5032, line: 358, type: !162)
!5046 = !DILocalVariable(name: "__arg5", scope: !5040, file: !5032, line: 358, type: !162)
!5047 = !{i32 -2141609176}
!5048 = !DILocation(line: 358, column: 2, scope: !5031)
!5049 = distinct !DISubprogram(name: "xenbus_free_evtchn", scope: !3, file: !3, line: 436, type: !5050, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !319)
!5050 = !DISubroutineType(types: !5051)
!5051 = !{!159, !3086, !4996}
!5052 = !DILocalVariable(name: "dev", arg: 1, scope: !5049, file: !3, line: 436, type: !3086)
!5053 = !DILocation(line: 436, column: 46, scope: !5049)
!5054 = !DILocalVariable(name: "port", arg: 2, scope: !5049, file: !3, line: 436, type: !4996)
!5055 = !DILocation(line: 436, column: 65, scope: !5049)
!5056 = !DILocalVariable(name: "close", scope: !5049, file: !3, line: 438, type: !5057)
!5057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evtchn_close", file: !4997, line: 104, size: 32, elements: !5058)
!5058 = !{!5059}
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !5057, file: !4997, line: 106, baseType: !4996, size: 32)
!5060 = !DILocation(line: 438, column: 22, scope: !5049)
!5061 = !DILocalVariable(name: "err", scope: !5049, file: !3, line: 439, type: !159)
!5062 = !DILocation(line: 439, column: 6, scope: !5049)
!5063 = !DILocation(line: 441, column: 15, scope: !5049)
!5064 = !DILocation(line: 441, column: 8, scope: !5049)
!5065 = !DILocation(line: 441, column: 13, scope: !5049)
!5066 = !DILocation(line: 443, column: 52, scope: !5049)
!5067 = !DILocation(line: 443, column: 8, scope: !5049)
!5068 = !DILocation(line: 443, column: 6, scope: !5049)
!5069 = !DILocation(line: 444, column: 6, scope: !5070)
!5070 = distinct !DILexicalBlock(scope: !5049, file: !3, line: 444, column: 6)
!5071 = !DILocation(line: 444, column: 6, scope: !5049)
!5072 = !DILocation(line: 445, column: 20, scope: !5070)
!5073 = !DILocation(line: 445, column: 25, scope: !5070)
!5074 = !DILocation(line: 445, column: 58, scope: !5070)
!5075 = !DILocation(line: 445, column: 3, scope: !5070)
!5076 = !DILocation(line: 447, column: 9, scope: !5049)
!5077 = !DILocation(line: 447, column: 2, scope: !5049)
!5078 = distinct !DISubprogram(name: "xenbus_map_ring_valloc", scope: !3, file: !3, line: 466, type: !5079, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !319)
!5079 = !DISubroutineType(types: !5080)
!5080 = !{!159, !3086, !4276, !11, !1389}
!5081 = !DILocalVariable(name: "dev", arg: 1, scope: !5078, file: !3, line: 466, type: !3086)
!5082 = !DILocation(line: 466, column: 50, scope: !5078)
!5083 = !DILocalVariable(name: "gnt_refs", arg: 2, scope: !5078, file: !3, line: 466, type: !4276)
!5084 = !DILocation(line: 466, column: 68, scope: !5078)
!5085 = !DILocalVariable(name: "nr_grefs", arg: 3, scope: !5078, file: !3, line: 467, type: !11)
!5086 = !DILocation(line: 467, column: 20, scope: !5078)
!5087 = !DILocalVariable(name: "vaddr", arg: 4, scope: !5078, file: !3, line: 467, type: !1389)
!5088 = !DILocation(line: 467, column: 37, scope: !5078)
!5089 = !DILocalVariable(name: "err", scope: !5078, file: !3, line: 469, type: !159)
!5090 = !DILocation(line: 469, column: 6, scope: !5078)
!5091 = !DILocalVariable(name: "info", scope: !5078, file: !3, line: 470, type: !4243)
!5092 = !DILocation(line: 470, column: 26, scope: !5078)
!5093 = !DILocation(line: 472, column: 3, scope: !5078)
!5094 = !DILocation(line: 472, column: 9, scope: !5078)
!5095 = !DILocation(line: 474, column: 6, scope: !5096)
!5096 = distinct !DILexicalBlock(scope: !5078, file: !3, line: 474, column: 6)
!5097 = !DILocation(line: 474, column: 15, scope: !5096)
!5098 = !DILocation(line: 474, column: 6, scope: !5078)
!5099 = !DILocation(line: 475, column: 3, scope: !5096)
!5100 = !DILocation(line: 477, column: 9, scope: !5078)
!5101 = !DILocation(line: 477, column: 7, scope: !5078)
!5102 = !DILocation(line: 478, column: 7, scope: !5103)
!5103 = distinct !DILexicalBlock(scope: !5078, file: !3, line: 478, column: 6)
!5104 = !DILocation(line: 478, column: 6, scope: !5078)
!5105 = !DILocation(line: 479, column: 3, scope: !5103)
!5106 = !DILocation(line: 481, column: 15, scope: !5078)
!5107 = !DILocation(line: 481, column: 2, scope: !5078)
!5108 = !DILocation(line: 481, column: 8, scope: !5078)
!5109 = !DILocation(line: 481, column: 13, scope: !5078)
!5110 = !DILocation(line: 482, column: 7, scope: !5111)
!5111 = distinct !DILexicalBlock(scope: !5078, file: !3, line: 482, column: 6)
!5112 = !DILocation(line: 482, column: 13, scope: !5111)
!5113 = !DILocation(line: 482, column: 6, scope: !5078)
!5114 = !DILocation(line: 483, column: 7, scope: !5111)
!5115 = !DILocation(line: 483, column: 3, scope: !5111)
!5116 = !DILocation(line: 485, column: 9, scope: !5111)
!5117 = !DILocation(line: 485, column: 19, scope: !5111)
!5118 = !DILocation(line: 485, column: 23, scope: !5111)
!5119 = !DILocation(line: 485, column: 28, scope: !5111)
!5120 = !DILocation(line: 485, column: 34, scope: !5111)
!5121 = !DILocation(line: 485, column: 44, scope: !5111)
!5122 = !DILocation(line: 485, column: 54, scope: !5111)
!5123 = !DILocation(line: 485, column: 7, scope: !5111)
!5124 = !DILocation(line: 487, column: 8, scope: !5078)
!5125 = !DILocation(line: 487, column: 14, scope: !5078)
!5126 = !DILocation(line: 487, column: 2, scope: !5078)
!5127 = !DILocation(line: 488, column: 8, scope: !5078)
!5128 = !DILocation(line: 488, column: 2, scope: !5078)
!5129 = !DILocation(line: 489, column: 9, scope: !5078)
!5130 = !DILocation(line: 489, column: 2, scope: !5078)
!5131 = !DILocation(line: 490, column: 1, scope: !5078)
!5132 = distinct !DISubprogram(name: "kzalloc", scope: !147, file: !147, line: 662, type: !4567, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !319)
!5133 = !DILocation(line: 445, column: 72, scope: !4559, inlinedAt: !5134)
!5134 = distinct !DILocation(line: 552, column: 10, scope: !4564, inlinedAt: !5135)
!5135 = distinct !DILocation(line: 664, column: 9, scope: !5132)
!5136 = !DILocation(line: 446, column: 9, scope: !4559, inlinedAt: !5134)
!5137 = !DILocation(line: 446, column: 23, scope: !4559, inlinedAt: !5134)
!5138 = !DILocation(line: 448, column: 8, scope: !4559, inlinedAt: !5134)
!5139 = !DILocation(line: 318, column: 67, scope: !4577, inlinedAt: !5140)
!5140 = distinct !DILocation(line: 553, column: 20, scope: !4564, inlinedAt: !5135)
!5141 = !DILocation(line: 346, column: 58, scope: !4583, inlinedAt: !5142)
!5142 = distinct !DILocation(line: 547, column: 11, scope: !4564, inlinedAt: !5135)
!5143 = !DILocation(line: 472, column: 28, scope: !4589, inlinedAt: !5144)
!5144 = distinct !DILocation(line: 481, column: 9, scope: !4594, inlinedAt: !5145)
!5145 = distinct !DILocation(line: 545, column: 11, scope: !4596, inlinedAt: !5135)
!5146 = !DILocation(line: 472, column: 40, scope: !4589, inlinedAt: !5144)
!5147 = !DILocation(line: 472, column: 60, scope: !4589, inlinedAt: !5144)
!5148 = !DILocation(line: 478, column: 51, scope: !4594, inlinedAt: !5145)
!5149 = !DILocation(line: 478, column: 63, scope: !4594, inlinedAt: !5145)
!5150 = !DILocation(line: 480, column: 15, scope: !4594, inlinedAt: !5145)
!5151 = !DILocation(line: 538, column: 45, scope: !4566, inlinedAt: !5135)
!5152 = !DILocation(line: 538, column: 57, scope: !4566, inlinedAt: !5135)
!5153 = !DILocation(line: 542, column: 16, scope: !4564, inlinedAt: !5135)
!5154 = !DILocalVariable(name: "size", arg: 1, scope: !5132, file: !147, line: 662, type: !1175)
!5155 = !DILocation(line: 662, column: 36, scope: !5132)
!5156 = !DILocalVariable(name: "flags", arg: 2, scope: !5132, file: !147, line: 662, type: !160)
!5157 = !DILocation(line: 662, column: 48, scope: !5132)
!5158 = !DILocation(line: 664, column: 17, scope: !5132)
!5159 = !DILocation(line: 664, column: 23, scope: !5132)
!5160 = !DILocation(line: 664, column: 29, scope: !5132)
!5161 = !DILocation(line: 540, column: 27, scope: !4565, inlinedAt: !5135)
!5162 = !DILocation(line: 540, column: 6, scope: !4565, inlinedAt: !5135)
!5163 = !DILocation(line: 540, column: 6, scope: !4566, inlinedAt: !5135)
!5164 = !DILocation(line: 544, column: 7, scope: !4596, inlinedAt: !5135)
!5165 = !DILocation(line: 544, column: 12, scope: !4596, inlinedAt: !5135)
!5166 = !DILocation(line: 544, column: 7, scope: !4564, inlinedAt: !5135)
!5167 = !DILocation(line: 545, column: 25, scope: !4596, inlinedAt: !5135)
!5168 = !DILocation(line: 545, column: 31, scope: !4596, inlinedAt: !5135)
!5169 = !DILocation(line: 480, column: 33, scope: !4594, inlinedAt: !5145)
!5170 = !DILocation(line: 480, column: 23, scope: !4594, inlinedAt: !5145)
!5171 = !DILocation(line: 481, column: 29, scope: !4594, inlinedAt: !5145)
!5172 = !DILocation(line: 481, column: 35, scope: !4594, inlinedAt: !5145)
!5173 = !DILocation(line: 481, column: 42, scope: !4594, inlinedAt: !5145)
!5174 = !DILocation(line: 474, column: 23, scope: !4589, inlinedAt: !5144)
!5175 = !DILocation(line: 474, column: 29, scope: !4589, inlinedAt: !5144)
!5176 = !DILocation(line: 474, column: 36, scope: !4589, inlinedAt: !5144)
!5177 = !DILocation(line: 474, column: 9, scope: !4589, inlinedAt: !5144)
!5178 = !DILocation(line: 545, column: 4, scope: !4596, inlinedAt: !5135)
!5179 = !DILocation(line: 547, column: 25, scope: !4564, inlinedAt: !5135)
!5180 = !DILocation(line: 348, column: 7, scope: !4647, inlinedAt: !5142)
!5181 = !DILocation(line: 348, column: 6, scope: !4583, inlinedAt: !5142)
!5182 = !DILocation(line: 349, column: 3, scope: !4647, inlinedAt: !5142)
!5183 = !DILocation(line: 351, column: 6, scope: !4651, inlinedAt: !5142)
!5184 = !DILocation(line: 351, column: 11, scope: !4651, inlinedAt: !5142)
!5185 = !DILocation(line: 351, column: 6, scope: !4583, inlinedAt: !5142)
!5186 = !DILocation(line: 352, column: 3, scope: !4651, inlinedAt: !5142)
!5187 = !DILocation(line: 354, column: 32, scope: !4656, inlinedAt: !5142)
!5188 = !DILocation(line: 354, column: 37, scope: !4656, inlinedAt: !5142)
!5189 = !DILocation(line: 354, column: 42, scope: !4656, inlinedAt: !5142)
!5190 = !DILocation(line: 354, column: 45, scope: !4656, inlinedAt: !5142)
!5191 = !DILocation(line: 354, column: 50, scope: !4656, inlinedAt: !5142)
!5192 = !DILocation(line: 354, column: 6, scope: !4583, inlinedAt: !5142)
!5193 = !DILocation(line: 355, column: 3, scope: !4656, inlinedAt: !5142)
!5194 = !DILocation(line: 356, column: 32, scope: !4664, inlinedAt: !5142)
!5195 = !DILocation(line: 356, column: 37, scope: !4664, inlinedAt: !5142)
!5196 = !DILocation(line: 356, column: 43, scope: !4664, inlinedAt: !5142)
!5197 = !DILocation(line: 356, column: 46, scope: !4664, inlinedAt: !5142)
!5198 = !DILocation(line: 356, column: 51, scope: !4664, inlinedAt: !5142)
!5199 = !DILocation(line: 356, column: 6, scope: !4583, inlinedAt: !5142)
!5200 = !DILocation(line: 357, column: 3, scope: !4664, inlinedAt: !5142)
!5201 = !DILocation(line: 358, column: 6, scope: !4672, inlinedAt: !5142)
!5202 = !DILocation(line: 358, column: 11, scope: !4672, inlinedAt: !5142)
!5203 = !DILocation(line: 358, column: 6, scope: !4583, inlinedAt: !5142)
!5204 = !DILocation(line: 358, column: 26, scope: !4672, inlinedAt: !5142)
!5205 = !DILocation(line: 359, column: 6, scope: !4677, inlinedAt: !5142)
!5206 = !DILocation(line: 359, column: 11, scope: !4677, inlinedAt: !5142)
!5207 = !DILocation(line: 359, column: 6, scope: !4583, inlinedAt: !5142)
!5208 = !DILocation(line: 359, column: 26, scope: !4677, inlinedAt: !5142)
!5209 = !DILocation(line: 360, column: 6, scope: !4682, inlinedAt: !5142)
!5210 = !DILocation(line: 360, column: 11, scope: !4682, inlinedAt: !5142)
!5211 = !DILocation(line: 360, column: 6, scope: !4583, inlinedAt: !5142)
!5212 = !DILocation(line: 360, column: 26, scope: !4682, inlinedAt: !5142)
!5213 = !DILocation(line: 361, column: 6, scope: !4687, inlinedAt: !5142)
!5214 = !DILocation(line: 361, column: 11, scope: !4687, inlinedAt: !5142)
!5215 = !DILocation(line: 361, column: 6, scope: !4583, inlinedAt: !5142)
!5216 = !DILocation(line: 361, column: 26, scope: !4687, inlinedAt: !5142)
!5217 = !DILocation(line: 362, column: 6, scope: !4692, inlinedAt: !5142)
!5218 = !DILocation(line: 362, column: 11, scope: !4692, inlinedAt: !5142)
!5219 = !DILocation(line: 362, column: 6, scope: !4583, inlinedAt: !5142)
!5220 = !DILocation(line: 362, column: 26, scope: !4692, inlinedAt: !5142)
!5221 = !DILocation(line: 363, column: 6, scope: !4697, inlinedAt: !5142)
!5222 = !DILocation(line: 363, column: 11, scope: !4697, inlinedAt: !5142)
!5223 = !DILocation(line: 363, column: 6, scope: !4583, inlinedAt: !5142)
!5224 = !DILocation(line: 363, column: 26, scope: !4697, inlinedAt: !5142)
!5225 = !DILocation(line: 364, column: 6, scope: !4702, inlinedAt: !5142)
!5226 = !DILocation(line: 364, column: 11, scope: !4702, inlinedAt: !5142)
!5227 = !DILocation(line: 364, column: 6, scope: !4583, inlinedAt: !5142)
!5228 = !DILocation(line: 364, column: 26, scope: !4702, inlinedAt: !5142)
!5229 = !DILocation(line: 365, column: 6, scope: !4707, inlinedAt: !5142)
!5230 = !DILocation(line: 365, column: 11, scope: !4707, inlinedAt: !5142)
!5231 = !DILocation(line: 365, column: 6, scope: !4583, inlinedAt: !5142)
!5232 = !DILocation(line: 365, column: 26, scope: !4707, inlinedAt: !5142)
!5233 = !DILocation(line: 366, column: 6, scope: !4712, inlinedAt: !5142)
!5234 = !DILocation(line: 366, column: 11, scope: !4712, inlinedAt: !5142)
!5235 = !DILocation(line: 366, column: 6, scope: !4583, inlinedAt: !5142)
!5236 = !DILocation(line: 366, column: 26, scope: !4712, inlinedAt: !5142)
!5237 = !DILocation(line: 367, column: 6, scope: !4717, inlinedAt: !5142)
!5238 = !DILocation(line: 367, column: 11, scope: !4717, inlinedAt: !5142)
!5239 = !DILocation(line: 367, column: 6, scope: !4583, inlinedAt: !5142)
!5240 = !DILocation(line: 367, column: 26, scope: !4717, inlinedAt: !5142)
!5241 = !DILocation(line: 368, column: 6, scope: !4722, inlinedAt: !5142)
!5242 = !DILocation(line: 368, column: 11, scope: !4722, inlinedAt: !5142)
!5243 = !DILocation(line: 368, column: 6, scope: !4583, inlinedAt: !5142)
!5244 = !DILocation(line: 368, column: 26, scope: !4722, inlinedAt: !5142)
!5245 = !DILocation(line: 369, column: 6, scope: !4727, inlinedAt: !5142)
!5246 = !DILocation(line: 369, column: 11, scope: !4727, inlinedAt: !5142)
!5247 = !DILocation(line: 369, column: 6, scope: !4583, inlinedAt: !5142)
!5248 = !DILocation(line: 369, column: 26, scope: !4727, inlinedAt: !5142)
!5249 = !DILocation(line: 370, column: 6, scope: !4732, inlinedAt: !5142)
!5250 = !DILocation(line: 370, column: 11, scope: !4732, inlinedAt: !5142)
!5251 = !DILocation(line: 370, column: 6, scope: !4583, inlinedAt: !5142)
!5252 = !DILocation(line: 370, column: 26, scope: !4732, inlinedAt: !5142)
!5253 = !DILocation(line: 371, column: 6, scope: !4737, inlinedAt: !5142)
!5254 = !DILocation(line: 371, column: 11, scope: !4737, inlinedAt: !5142)
!5255 = !DILocation(line: 371, column: 6, scope: !4583, inlinedAt: !5142)
!5256 = !DILocation(line: 371, column: 26, scope: !4737, inlinedAt: !5142)
!5257 = !DILocation(line: 372, column: 6, scope: !4742, inlinedAt: !5142)
!5258 = !DILocation(line: 372, column: 11, scope: !4742, inlinedAt: !5142)
!5259 = !DILocation(line: 372, column: 6, scope: !4583, inlinedAt: !5142)
!5260 = !DILocation(line: 372, column: 26, scope: !4742, inlinedAt: !5142)
!5261 = !DILocation(line: 373, column: 6, scope: !4747, inlinedAt: !5142)
!5262 = !DILocation(line: 373, column: 11, scope: !4747, inlinedAt: !5142)
!5263 = !DILocation(line: 373, column: 6, scope: !4583, inlinedAt: !5142)
!5264 = !DILocation(line: 373, column: 26, scope: !4747, inlinedAt: !5142)
!5265 = !DILocation(line: 374, column: 6, scope: !4752, inlinedAt: !5142)
!5266 = !DILocation(line: 374, column: 11, scope: !4752, inlinedAt: !5142)
!5267 = !DILocation(line: 374, column: 6, scope: !4583, inlinedAt: !5142)
!5268 = !DILocation(line: 374, column: 26, scope: !4752, inlinedAt: !5142)
!5269 = !DILocation(line: 375, column: 6, scope: !4757, inlinedAt: !5142)
!5270 = !DILocation(line: 375, column: 11, scope: !4757, inlinedAt: !5142)
!5271 = !DILocation(line: 375, column: 6, scope: !4583, inlinedAt: !5142)
!5272 = !DILocation(line: 375, column: 27, scope: !4757, inlinedAt: !5142)
!5273 = !DILocation(line: 376, column: 6, scope: !4762, inlinedAt: !5142)
!5274 = !DILocation(line: 376, column: 11, scope: !4762, inlinedAt: !5142)
!5275 = !DILocation(line: 376, column: 6, scope: !4583, inlinedAt: !5142)
!5276 = !DILocation(line: 376, column: 32, scope: !4762, inlinedAt: !5142)
!5277 = !DILocation(line: 377, column: 6, scope: !4767, inlinedAt: !5142)
!5278 = !DILocation(line: 377, column: 11, scope: !4767, inlinedAt: !5142)
!5279 = !DILocation(line: 377, column: 6, scope: !4583, inlinedAt: !5142)
!5280 = !DILocation(line: 377, column: 32, scope: !4767, inlinedAt: !5142)
!5281 = !DILocation(line: 378, column: 6, scope: !4772, inlinedAt: !5142)
!5282 = !DILocation(line: 378, column: 11, scope: !4772, inlinedAt: !5142)
!5283 = !DILocation(line: 378, column: 6, scope: !4583, inlinedAt: !5142)
!5284 = !DILocation(line: 378, column: 32, scope: !4772, inlinedAt: !5142)
!5285 = !DILocation(line: 379, column: 6, scope: !4777, inlinedAt: !5142)
!5286 = !DILocation(line: 379, column: 11, scope: !4777, inlinedAt: !5142)
!5287 = !DILocation(line: 379, column: 6, scope: !4583, inlinedAt: !5142)
!5288 = !DILocation(line: 379, column: 33, scope: !4777, inlinedAt: !5142)
!5289 = !DILocation(line: 380, column: 6, scope: !4782, inlinedAt: !5142)
!5290 = !DILocation(line: 380, column: 11, scope: !4782, inlinedAt: !5142)
!5291 = !DILocation(line: 380, column: 6, scope: !4583, inlinedAt: !5142)
!5292 = !DILocation(line: 380, column: 33, scope: !4782, inlinedAt: !5142)
!5293 = !DILocation(line: 381, column: 6, scope: !4787, inlinedAt: !5142)
!5294 = !DILocation(line: 381, column: 11, scope: !4787, inlinedAt: !5142)
!5295 = !DILocation(line: 381, column: 6, scope: !4583, inlinedAt: !5142)
!5296 = !DILocation(line: 381, column: 33, scope: !4787, inlinedAt: !5142)
!5297 = !DILocation(line: 382, column: 2, scope: !4792, inlinedAt: !5142)
!5298 = !DILocation(line: 382, column: 2, scope: !4796, inlinedAt: !5142)
!5299 = !DILocation(line: 382, column: 2, scope: !4797, inlinedAt: !5142)
!5300 = !DILocation(line: 386, column: 1, scope: !4583, inlinedAt: !5142)
!5301 = !DILocation(line: 547, column: 9, scope: !4564, inlinedAt: !5135)
!5302 = !DILocation(line: 549, column: 8, scope: !4803, inlinedAt: !5135)
!5303 = !DILocation(line: 549, column: 7, scope: !4564, inlinedAt: !5135)
!5304 = !DILocation(line: 550, column: 4, scope: !4803, inlinedAt: !5135)
!5305 = !DILocation(line: 553, column: 33, scope: !4564, inlinedAt: !5135)
!5306 = !DILocation(line: 325, column: 6, scope: !4808, inlinedAt: !5140)
!5307 = !DILocation(line: 325, column: 6, scope: !4577, inlinedAt: !5140)
!5308 = !DILocation(line: 326, column: 3, scope: !4808, inlinedAt: !5140)
!5309 = !DILocation(line: 332, column: 9, scope: !4577, inlinedAt: !5140)
!5310 = !DILocation(line: 332, column: 15, scope: !4577, inlinedAt: !5140)
!5311 = !DILocation(line: 332, column: 2, scope: !4577, inlinedAt: !5140)
!5312 = !DILocation(line: 336, column: 1, scope: !4577, inlinedAt: !5140)
!5313 = !DILocation(line: 553, column: 5, scope: !4564, inlinedAt: !5135)
!5314 = !DILocation(line: 553, column: 41, scope: !4564, inlinedAt: !5135)
!5315 = !DILocation(line: 554, column: 5, scope: !4564, inlinedAt: !5135)
!5316 = !DILocation(line: 554, column: 12, scope: !4564, inlinedAt: !5135)
!5317 = !DILocation(line: 448, column: 31, scope: !4559, inlinedAt: !5134)
!5318 = !DILocation(line: 448, column: 34, scope: !4559, inlinedAt: !5134)
!5319 = !DILocation(line: 448, column: 14, scope: !4559, inlinedAt: !5134)
!5320 = !DILocation(line: 450, column: 22, scope: !4559, inlinedAt: !5134)
!5321 = !DILocation(line: 450, column: 25, scope: !4559, inlinedAt: !5134)
!5322 = !DILocation(line: 450, column: 30, scope: !4559, inlinedAt: !5134)
!5323 = !DILocation(line: 450, column: 36, scope: !4559, inlinedAt: !5134)
!5324 = !DILocation(line: 450, column: 8, scope: !4559, inlinedAt: !5134)
!5325 = !DILocation(line: 450, column: 6, scope: !4559, inlinedAt: !5134)
!5326 = !DILocation(line: 451, column: 9, scope: !4559, inlinedAt: !5134)
!5327 = !DILocation(line: 552, column: 3, scope: !4564, inlinedAt: !5135)
!5328 = !DILocation(line: 557, column: 19, scope: !4566, inlinedAt: !5135)
!5329 = !DILocation(line: 557, column: 25, scope: !4566, inlinedAt: !5135)
!5330 = !DILocation(line: 557, column: 9, scope: !4566, inlinedAt: !5135)
!5331 = !DILocation(line: 557, column: 2, scope: !4566, inlinedAt: !5135)
!5332 = !DILocation(line: 558, column: 1, scope: !4566, inlinedAt: !5135)
!5333 = !DILocation(line: 664, column: 2, scope: !5132)
!5334 = distinct !DISubprogram(name: "xenbus_unmap_ring_vfree", scope: !3, file: !3, line: 679, type: !4279, scopeLine: 680, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !319)
!5335 = !DILocalVariable(name: "dev", arg: 1, scope: !5334, file: !3, line: 679, type: !3086)
!5336 = !DILocation(line: 679, column: 51, scope: !5334)
!5337 = !DILocalVariable(name: "vaddr", arg: 2, scope: !5334, file: !3, line: 679, type: !163)
!5338 = !DILocation(line: 679, column: 62, scope: !5334)
!5339 = !DILocation(line: 681, column: 9, scope: !5334)
!5340 = !DILocation(line: 681, column: 19, scope: !5334)
!5341 = !DILocation(line: 681, column: 25, scope: !5334)
!5342 = !DILocation(line: 681, column: 30, scope: !5334)
!5343 = !DILocation(line: 681, column: 2, scope: !5334)
!5344 = distinct !DISubprogram(name: "xenbus_read_driver_state", scope: !3, file: !3, line: 879, type: !5345, scopeLine: 880, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !319)
!5345 = !DISubroutineType(types: !5346)
!5346 = !{!9, !6}
!5347 = !DILocalVariable(name: "path", arg: 1, scope: !5344, file: !3, line: 879, type: !6)
!5348 = !DILocation(line: 879, column: 56, scope: !5344)
!5349 = !DILocalVariable(name: "result", scope: !5344, file: !3, line: 881, type: !9)
!5350 = !DILocation(line: 881, column: 20, scope: !5344)
!5351 = !DILocalVariable(name: "err", scope: !5344, file: !3, line: 882, type: !159)
!5352 = !DILocation(line: 882, column: 6, scope: !5344)
!5353 = !DILocation(line: 882, column: 26, scope: !5344)
!5354 = !DILocation(line: 882, column: 35, scope: !5344)
!5355 = !DILocation(line: 882, column: 12, scope: !5344)
!5356 = !DILocation(line: 883, column: 6, scope: !5357)
!5357 = distinct !DILexicalBlock(scope: !5344, file: !3, line: 883, column: 6)
!5358 = !DILocation(line: 883, column: 6, scope: !5344)
!5359 = !DILocation(line: 884, column: 10, scope: !5357)
!5360 = !DILocation(line: 884, column: 3, scope: !5357)
!5361 = !DILocation(line: 886, column: 9, scope: !5344)
!5362 = !DILocation(line: 886, column: 2, scope: !5344)
!5363 = distinct !DISubprogram(name: "xenbus_ring_ops_init", scope: !3, file: !3, line: 895, type: !2121, scopeLine: 896, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !319)
!5364 = !DILocation(line: 898, column: 7, scope: !5365)
!5365 = distinct !DILexicalBlock(scope: !5363, file: !3, line: 898, column: 6)
!5366 = !DILocation(line: 898, column: 6, scope: !5363)
!5367 = !DILocation(line: 899, column: 12, scope: !5365)
!5368 = !DILocation(line: 899, column: 3, scope: !5365)
!5369 = !DILocation(line: 902, column: 12, scope: !5365)
!5370 = !DILocation(line: 903, column: 1, scope: !5363)
!5371 = distinct !DISubprogram(name: "xen_feature", scope: !5372, file: !5372, line: 19, type: !1425, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !319)
!5372 = !DIFile(filename: "./include/xen/features.h", directory: "/home/lizy2001/genbc/linux")
!5373 = !DILocalVariable(name: "flag", arg: 1, scope: !5371, file: !5372, line: 19, type: !159)
!5374 = !DILocation(line: 19, column: 35, scope: !5371)
!5375 = !DILocation(line: 21, column: 22, scope: !5371)
!5376 = !DILocation(line: 21, column: 9, scope: !5371)
!5377 = !DILocation(line: 21, column: 2, scope: !5371)
!5378 = distinct !DISubprogram(name: "xenbus_switch_fatal", scope: !3, file: !3, line: 347, type: !5379, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !319)
!5379 = !DISubroutineType(types: !5380)
!5380 = !{null, !3086, !159, !159, !6, null}
!5381 = !DILocalVariable(name: "dev", arg: 1, scope: !5378, file: !3, line: 347, type: !3086)
!5382 = !DILocation(line: 347, column: 55, scope: !5378)
!5383 = !DILocalVariable(name: "depth", arg: 2, scope: !5378, file: !3, line: 347, type: !159)
!5384 = !DILocation(line: 347, column: 64, scope: !5378)
!5385 = !DILocalVariable(name: "err", arg: 3, scope: !5378, file: !3, line: 347, type: !159)
!5386 = !DILocation(line: 347, column: 75, scope: !5378)
!5387 = !DILocalVariable(name: "fmt", arg: 4, scope: !5378, file: !3, line: 348, type: !6)
!5388 = !DILocation(line: 348, column: 17, scope: !5378)
!5389 = !DILocalVariable(name: "ap", scope: !5378, file: !3, line: 350, type: !4356)
!5390 = !DILocation(line: 350, column: 10, scope: !5378)
!5391 = !DILocation(line: 352, column: 2, scope: !5378)
!5392 = !DILocation(line: 353, column: 22, scope: !5378)
!5393 = !DILocation(line: 353, column: 27, scope: !5378)
!5394 = !DILocation(line: 353, column: 32, scope: !5378)
!5395 = !DILocation(line: 353, column: 37, scope: !5378)
!5396 = !DILocation(line: 353, column: 2, scope: !5378)
!5397 = !DILocation(line: 354, column: 2, scope: !5378)
!5398 = !DILocation(line: 356, column: 7, scope: !5399)
!5399 = distinct !DILexicalBlock(scope: !5378, file: !3, line: 356, column: 6)
!5400 = !DILocation(line: 356, column: 6, scope: !5378)
!5401 = !DILocation(line: 357, column: 25, scope: !5399)
!5402 = !DILocation(line: 357, column: 3, scope: !5399)
!5403 = !DILocation(line: 358, column: 1, scope: !5378)
!5404 = distinct !DISubprogram(name: "get_order", scope: !5405, file: !5405, line: 29, type: !5406, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !319)
!5405 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5406 = !DISubroutineType(types: !5407)
!5407 = !{!159, !162}
!5408 = !DILocalVariable(name: "x", arg: 1, scope: !5409, file: !5410, line: 366, type: !283)
!5409 = distinct !DISubprogram(name: "fls64", scope: !5410, file: !5410, line: 366, type: !5411, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !319)
!5410 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5411 = !DISubroutineType(types: !5412)
!5412 = !{!159, !283}
!5413 = !DILocation(line: 366, column: 40, scope: !5409, inlinedAt: !5414)
!5414 = distinct !DILocation(line: 46, column: 9, scope: !5404)
!5415 = !DILocalVariable(name: "bitpos", scope: !5409, file: !5410, line: 368, type: !159)
!5416 = !DILocation(line: 368, column: 6, scope: !5409, inlinedAt: !5414)
!5417 = !DILocalVariable(name: "size", arg: 1, scope: !5404, file: !5405, line: 29, type: !162)
!5418 = !DILocation(line: 29, column: 63, scope: !5404)
!5419 = !DILocation(line: 31, column: 27, scope: !5420)
!5420 = distinct !DILexicalBlock(scope: !5404, file: !5405, line: 31, column: 6)
!5421 = !DILocation(line: 31, column: 6, scope: !5420)
!5422 = !DILocation(line: 31, column: 6, scope: !5404)
!5423 = !DILocation(line: 32, column: 8, scope: !5424)
!5424 = distinct !DILexicalBlock(scope: !5425, file: !5405, line: 32, column: 7)
!5425 = distinct !DILexicalBlock(scope: !5420, file: !5405, line: 31, column: 34)
!5426 = !DILocation(line: 32, column: 7, scope: !5425)
!5427 = !DILocation(line: 33, column: 4, scope: !5424)
!5428 = !DILocation(line: 35, column: 7, scope: !5429)
!5429 = distinct !DILexicalBlock(scope: !5425, file: !5405, line: 35, column: 7)
!5430 = !DILocation(line: 35, column: 12, scope: !5429)
!5431 = !DILocation(line: 35, column: 7, scope: !5425)
!5432 = !DILocation(line: 36, column: 4, scope: !5429)
!5433 = !DILocation(line: 38, column: 10, scope: !5425)
!5434 = !DILocation(line: 38, column: 28, scope: !5425)
!5435 = !DILocation(line: 38, column: 41, scope: !5425)
!5436 = !DILocation(line: 38, column: 3, scope: !5425)
!5437 = !DILocation(line: 41, column: 6, scope: !5404)
!5438 = !DILocation(line: 42, column: 7, scope: !5404)
!5439 = !DILocation(line: 46, column: 15, scope: !5404)
!5440 = !DILocation(line: 374, column: 2, scope: !5409, inlinedAt: !5414)
!5441 = !DILocation(line: 376, column: 14, scope: !5409, inlinedAt: !5414)
!5442 = !{i32 388265}
!5443 = !DILocation(line: 377, column: 9, scope: !5409, inlinedAt: !5414)
!5444 = !DILocation(line: 377, column: 16, scope: !5409, inlinedAt: !5414)
!5445 = !DILocation(line: 46, column: 2, scope: !5404)
!5446 = !DILocation(line: 48, column: 1, scope: !5404)
!5447 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5448, file: !5448, line: 30, type: !5449, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !319)
!5448 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5449 = !DISubroutineType(types: !5450)
!5450 = !{!159, !282}
!5451 = !DILocation(line: 366, column: 40, scope: !5409, inlinedAt: !5452)
!5452 = distinct !DILocation(line: 32, column: 9, scope: !5447)
!5453 = !DILocation(line: 368, column: 6, scope: !5409, inlinedAt: !5452)
!5454 = !DILocalVariable(name: "n", arg: 1, scope: !5447, file: !5448, line: 30, type: !282)
!5455 = !DILocation(line: 30, column: 21, scope: !5447)
!5456 = !DILocation(line: 32, column: 15, scope: !5447)
!5457 = !DILocation(line: 374, column: 2, scope: !5409, inlinedAt: !5452)
!5458 = !DILocation(line: 376, column: 14, scope: !5409, inlinedAt: !5452)
!5459 = !DILocation(line: 377, column: 9, scope: !5409, inlinedAt: !5452)
!5460 = !DILocation(line: 377, column: 16, scope: !5409, inlinedAt: !5452)
!5461 = !DILocation(line: 32, column: 18, scope: !5447)
!5462 = !DILocation(line: 32, column: 2, scope: !5447)
!5463 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5464, file: !5464, line: 137, type: !5465, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !319)
!5464 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5465 = !DISubroutineType(types: !5466)
!5466 = !{!163, !2198, !3060, !1175, !160}
!5467 = !DILocalVariable(name: "s", arg: 1, scope: !5463, file: !5464, line: 137, type: !2198)
!5468 = !DILocation(line: 137, column: 54, scope: !5463)
!5469 = !DILocalVariable(name: "object", arg: 2, scope: !5463, file: !5464, line: 137, type: !3060)
!5470 = !DILocation(line: 137, column: 69, scope: !5463)
!5471 = !DILocalVariable(name: "size", arg: 3, scope: !5463, file: !5464, line: 138, type: !1175)
!5472 = !DILocation(line: 138, column: 12, scope: !5463)
!5473 = !DILocalVariable(name: "flags", arg: 4, scope: !5463, file: !5464, line: 138, type: !160)
!5474 = !DILocation(line: 138, column: 24, scope: !5463)
!5475 = !DILocation(line: 140, column: 17, scope: !5463)
!5476 = !DILocation(line: 140, column: 2, scope: !5463)
!5477 = distinct !DISubprogram(name: "pfn_to_mfn", scope: !4958, file: !4958, line: 164, type: !4959, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !319)
!5478 = !DILocalVariable(name: "pfn", arg: 1, scope: !5477, file: !4958, line: 164, type: !162)
!5479 = !DILocation(line: 164, column: 54, scope: !5477)
!5480 = !DILocalVariable(name: "mfn", scope: !5477, file: !4958, line: 166, type: !162)
!5481 = !DILocation(line: 166, column: 16, scope: !5477)
!5482 = !DILocation(line: 173, column: 6, scope: !5483)
!5483 = distinct !DILexicalBlock(scope: !5477, file: !4958, line: 173, column: 6)
!5484 = !DILocation(line: 173, column: 6, scope: !5477)
!5485 = !DILocation(line: 174, column: 10, scope: !5483)
!5486 = !DILocation(line: 174, column: 3, scope: !5483)
!5487 = !DILocation(line: 176, column: 21, scope: !5477)
!5488 = !DILocation(line: 176, column: 8, scope: !5477)
!5489 = !DILocation(line: 176, column: 6, scope: !5477)
!5490 = !DILocation(line: 178, column: 6, scope: !5491)
!5491 = distinct !DILexicalBlock(scope: !5477, file: !4958, line: 178, column: 6)
!5492 = !DILocation(line: 178, column: 10, scope: !5491)
!5493 = !DILocation(line: 178, column: 6, scope: !5477)
!5494 = !DILocation(line: 179, column: 7, scope: !5491)
!5495 = !DILocation(line: 179, column: 3, scope: !5491)
!5496 = !DILocation(line: 181, column: 9, scope: !5477)
!5497 = !DILocation(line: 181, column: 2, scope: !5477)
!5498 = !DILocation(line: 182, column: 1, scope: !5477)
!5499 = distinct !DISubprogram(name: "__pfn_to_mfn", scope: !4958, file: !4958, line: 141, type: !4959, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !319)
!5500 = !DILocalVariable(name: "pfn", arg: 1, scope: !5499, file: !4958, line: 141, type: !162)
!5501 = !DILocation(line: 141, column: 56, scope: !5499)
!5502 = !DILocalVariable(name: "mfn", scope: !5499, file: !4958, line: 143, type: !162)
!5503 = !DILocation(line: 143, column: 16, scope: !5499)
!5504 = !DILocation(line: 145, column: 6, scope: !5505)
!5505 = distinct !DILexicalBlock(scope: !5499, file: !4958, line: 145, column: 6)
!5506 = !DILocation(line: 145, column: 12, scope: !5505)
!5507 = !DILocation(line: 145, column: 10, scope: !5505)
!5508 = !DILocation(line: 145, column: 6, scope: !5499)
!5509 = !DILocation(line: 146, column: 9, scope: !5505)
!5510 = !DILocation(line: 146, column: 22, scope: !5505)
!5511 = !DILocation(line: 146, column: 7, scope: !5505)
!5512 = !DILocation(line: 146, column: 3, scope: !5505)
!5513 = !DILocation(line: 147, column: 11, scope: !5514)
!5514 = distinct !DILexicalBlock(scope: !5505, file: !4958, line: 147, column: 11)
!5515 = !DILocation(line: 147, column: 11, scope: !5505)
!5516 = !DILocation(line: 148, column: 30, scope: !5514)
!5517 = !DILocation(line: 148, column: 10, scope: !5514)
!5518 = !DILocation(line: 148, column: 3, scope: !5514)
!5519 = !DILocation(line: 150, column: 10, scope: !5514)
!5520 = !DILocation(line: 150, column: 3, scope: !5514)
!5521 = !DILocation(line: 152, column: 6, scope: !5522)
!5522 = distinct !DILexicalBlock(scope: !5499, file: !4958, line: 152, column: 6)
!5523 = !DILocation(line: 152, column: 6, scope: !5499)
!5524 = !DILocation(line: 153, column: 30, scope: !5522)
!5525 = !DILocation(line: 153, column: 10, scope: !5522)
!5526 = !DILocation(line: 153, column: 3, scope: !5522)
!5527 = !DILocation(line: 155, column: 9, scope: !5499)
!5528 = !DILocation(line: 155, column: 2, scope: !5499)
!5529 = !DILocation(line: 156, column: 1, scope: !5499)
!5530 = distinct !DISubprogram(name: "xenbus_map_ring_pv", scope: !3, file: !3, line: 694, type: !3084, scopeLine: 699, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !319)
!5531 = !DILocalVariable(name: "lock", arg: 1, scope: !5532, file: !5533, line: 392, type: !1112)
!5532 = distinct !DISubprogram(name: "spin_unlock", scope: !5533, file: !5533, line: 392, type: !5534, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !319)
!5533 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!5534 = !DISubroutineType(types: !5535)
!5535 = !{null, !1112}
!5536 = !DILocation(line: 392, column: 53, scope: !5532, inlinedAt: !5537)
!5537 = distinct !DILocation(line: 722, column: 2, scope: !5530)
!5538 = !DILocalVariable(name: "lock", arg: 1, scope: !5539, file: !5533, line: 352, type: !1112)
!5539 = distinct !DISubprogram(name: "spin_lock", scope: !5533, file: !5533, line: 352, type: !5534, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !319)
!5540 = !DILocation(line: 352, column: 51, scope: !5539, inlinedAt: !5541)
!5541 = distinct !DILocation(line: 720, column: 2, scope: !5530)
!5542 = !DILocalVariable(name: "dev", arg: 1, scope: !5530, file: !3, line: 694, type: !3086)
!5543 = !DILocation(line: 694, column: 53, scope: !5530)
!5544 = !DILocalVariable(name: "info", arg: 2, scope: !5530, file: !3, line: 695, type: !4243)
!5545 = !DILocation(line: 695, column: 34, scope: !5530)
!5546 = !DILocalVariable(name: "gnt_refs", arg: 3, scope: !5530, file: !3, line: 696, type: !4276)
!5547 = !DILocation(line: 696, column: 23, scope: !5530)
!5548 = !DILocalVariable(name: "nr_grefs", arg: 4, scope: !5530, file: !3, line: 697, type: !11)
!5549 = !DILocation(line: 697, column: 23, scope: !5530)
!5550 = !DILocalVariable(name: "vaddr", arg: 5, scope: !5530, file: !3, line: 698, type: !1389)
!5551 = !DILocation(line: 698, column: 17, scope: !5530)
!5552 = !DILocalVariable(name: "node", scope: !5530, file: !3, line: 700, type: !171)
!5553 = !DILocation(line: 700, column: 26, scope: !5530)
!5554 = !DILocation(line: 700, column: 33, scope: !5530)
!5555 = !DILocation(line: 700, column: 39, scope: !5530)
!5556 = !DILocalVariable(name: "area", scope: !5530, file: !3, line: 701, type: !182)
!5557 = !DILocation(line: 701, column: 20, scope: !5530)
!5558 = !DILocalVariable(name: "leaked", scope: !5530, file: !3, line: 702, type: !384)
!5559 = !DILocation(line: 702, column: 7, scope: !5530)
!5560 = !DILocalVariable(name: "err", scope: !5530, file: !3, line: 703, type: !159)
!5561 = !DILocation(line: 703, column: 6, scope: !5530)
!5562 = !DILocation(line: 705, column: 37, scope: !5530)
!5563 = !DILocation(line: 705, column: 35, scope: !5530)
!5564 = !DILocation(line: 705, column: 9, scope: !5530)
!5565 = !DILocation(line: 705, column: 7, scope: !5530)
!5566 = !DILocation(line: 706, column: 7, scope: !5567)
!5567 = distinct !DILexicalBlock(scope: !5530, file: !3, line: 706, column: 6)
!5568 = !DILocation(line: 706, column: 6, scope: !5530)
!5569 = !DILocation(line: 707, column: 3, scope: !5567)
!5570 = !DILocation(line: 708, column: 51, scope: !5571)
!5571 = distinct !DILexicalBlock(scope: !5530, file: !3, line: 708, column: 6)
!5572 = !DILocation(line: 708, column: 57, scope: !5571)
!5573 = !DILocation(line: 708, column: 36, scope: !5571)
!5574 = !DILocation(line: 709, column: 21, scope: !5571)
!5575 = !DILocation(line: 709, column: 19, scope: !5571)
!5576 = !DILocation(line: 709, column: 47, scope: !5571)
!5577 = !DILocation(line: 708, column: 6, scope: !5571)
!5578 = !DILocation(line: 708, column: 6, scope: !5530)
!5579 = !DILocation(line: 710, column: 3, scope: !5571)
!5580 = !DILocation(line: 711, column: 26, scope: !5530)
!5581 = !DILocation(line: 711, column: 31, scope: !5530)
!5582 = !DILocation(line: 711, column: 41, scope: !5530)
!5583 = !DILocation(line: 711, column: 51, scope: !5530)
!5584 = !DILocation(line: 711, column: 57, scope: !5530)
!5585 = !DILocation(line: 712, column: 5, scope: !5530)
!5586 = !DILocation(line: 711, column: 8, scope: !5530)
!5587 = !DILocation(line: 711, column: 6, scope: !5530)
!5588 = !DILocation(line: 714, column: 6, scope: !5589)
!5589 = distinct !DILexicalBlock(scope: !5530, file: !3, line: 714, column: 6)
!5590 = !DILocation(line: 714, column: 6, scope: !5530)
!5591 = !DILocation(line: 715, column: 3, scope: !5589)
!5592 = !DILocation(line: 717, column: 21, scope: !5530)
!5593 = !DILocation(line: 717, column: 2, scope: !5530)
!5594 = !DILocation(line: 717, column: 8, scope: !5530)
!5595 = !DILocation(line: 717, column: 19, scope: !5530)
!5596 = !DILocation(line: 718, column: 18, scope: !5530)
!5597 = !DILocation(line: 718, column: 2, scope: !5530)
!5598 = !DILocation(line: 718, column: 8, scope: !5530)
!5599 = !DILocation(line: 718, column: 11, scope: !5530)
!5600 = !DILocation(line: 718, column: 16, scope: !5530)
!5601 = !DILocation(line: 354, column: 2, scope: !5602, inlinedAt: !5541)
!5602 = distinct !DILexicalBlock(scope: !5539, file: !5533, line: 354, column: 2)
!5603 = !{i32 -2145433782}
!5604 = !DILocation(line: 354, column: 2, scope: !5605, inlinedAt: !5541)
!5605 = distinct !DILexicalBlock(scope: !5602, file: !5533, line: 354, column: 2)
!5606 = !DILocation(line: 721, column: 12, scope: !5530)
!5607 = !DILocation(line: 721, column: 18, scope: !5530)
!5608 = !DILocation(line: 721, column: 2, scope: !5530)
!5609 = !DILocation(line: 394, column: 2, scope: !5610, inlinedAt: !5537)
!5610 = distinct !DILexicalBlock(scope: !5532, file: !5533, line: 394, column: 2)
!5611 = !{i32 -2145431421}
!5612 = !DILocation(line: 394, column: 2, scope: !5613, inlinedAt: !5537)
!5613 = distinct !DILexicalBlock(scope: !5610, file: !5533, line: 394, column: 2)
!5614 = !DILocation(line: 724, column: 11, scope: !5530)
!5615 = !DILocation(line: 724, column: 17, scope: !5530)
!5616 = !DILocation(line: 724, column: 3, scope: !5530)
!5617 = !DILocation(line: 724, column: 9, scope: !5530)
!5618 = !DILocation(line: 725, column: 2, scope: !5530)
!5619 = !DILocation(line: 725, column: 8, scope: !5530)
!5620 = !DILocation(line: 725, column: 13, scope: !5530)
!5621 = !DILocation(line: 727, column: 2, scope: !5530)
!5622 = !DILabel(scope: !5530, name: "failed", file: !3, line: 729)
!5623 = !DILocation(line: 729, column: 1, scope: !5530)
!5624 = !DILocation(line: 730, column: 7, scope: !5625)
!5625 = distinct !DILexicalBlock(scope: !5530, file: !3, line: 730, column: 6)
!5626 = !DILocation(line: 730, column: 6, scope: !5530)
!5627 = !DILocation(line: 731, column: 16, scope: !5625)
!5628 = !DILocation(line: 731, column: 3, scope: !5625)
!5629 = !DILocation(line: 733, column: 3, scope: !5625)
!5630 = !DILocation(line: 735, column: 9, scope: !5530)
!5631 = !DILocation(line: 735, column: 2, scope: !5530)
!5632 = !DILocation(line: 736, column: 1, scope: !5530)
!5633 = distinct !DISubprogram(name: "xenbus_unmap_ring_pv", scope: !3, file: !3, line: 738, type: !4279, scopeLine: 739, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !319)
!5634 = !DILocation(line: 392, column: 53, scope: !5532, inlinedAt: !5635)
!5635 = distinct !DILocation(line: 756, column: 2, scope: !5633)
!5636 = !DILocation(line: 352, column: 51, scope: !5539, inlinedAt: !5637)
!5637 = distinct !DILocation(line: 747, column: 2, scope: !5633)
!5638 = !DILocalVariable(name: "dev", arg: 1, scope: !5633, file: !3, line: 738, type: !3086)
!5639 = !DILocation(line: 738, column: 55, scope: !5633)
!5640 = !DILocalVariable(name: "vaddr", arg: 2, scope: !5633, file: !3, line: 738, type: !163)
!5641 = !DILocation(line: 738, column: 66, scope: !5633)
!5642 = !DILocalVariable(name: "node", scope: !5633, file: !3, line: 740, type: !171)
!5643 = !DILocation(line: 740, column: 26, scope: !5633)
!5644 = !DILocalVariable(name: "unmap", scope: !5633, file: !3, line: 741, type: !4268)
!5645 = !DILocation(line: 741, column: 32, scope: !5633)
!5646 = !DILocalVariable(name: "level", scope: !5633, file: !3, line: 742, type: !11)
!5647 = !DILocation(line: 742, column: 15, scope: !5633)
!5648 = !DILocalVariable(name: "i", scope: !5633, file: !3, line: 743, type: !159)
!5649 = !DILocation(line: 743, column: 6, scope: !5633)
!5650 = !DILocalVariable(name: "leaked", scope: !5633, file: !3, line: 744, type: !384)
!5651 = !DILocation(line: 744, column: 7, scope: !5633)
!5652 = !DILocalVariable(name: "err", scope: !5633, file: !3, line: 745, type: !159)
!5653 = !DILocation(line: 745, column: 6, scope: !5633)
!5654 = !DILocation(line: 354, column: 2, scope: !5602, inlinedAt: !5637)
!5655 = !DILocation(line: 354, column: 2, scope: !5605, inlinedAt: !5637)
!5656 = !DILocalVariable(name: "__mptr", scope: !5657, file: !3, line: 748, type: !163)
!5657 = distinct !DILexicalBlock(scope: !5658, file: !3, line: 748, column: 2)
!5658 = distinct !DILexicalBlock(scope: !5633, file: !3, line: 748, column: 2)
!5659 = !DILocation(line: 748, column: 2, scope: !5657)
!5660 = !DILocation(line: 748, column: 2, scope: !5661)
!5661 = distinct !DILexicalBlock(scope: !5657, file: !3, line: 748, column: 2)
!5662 = !DILocation(line: 748, column: 2, scope: !5658)
!5663 = !DILocation(line: 748, column: 2, scope: !5664)
!5664 = distinct !DILexicalBlock(scope: !5658, file: !3, line: 748, column: 2)
!5665 = !DILocation(line: 749, column: 7, scope: !5666)
!5666 = distinct !DILexicalBlock(scope: !5667, file: !3, line: 749, column: 7)
!5667 = distinct !DILexicalBlock(scope: !5664, file: !3, line: 748, column: 56)
!5668 = !DILocation(line: 749, column: 13, scope: !5666)
!5669 = !DILocation(line: 749, column: 16, scope: !5666)
!5670 = !DILocation(line: 749, column: 22, scope: !5666)
!5671 = !DILocation(line: 749, column: 30, scope: !5666)
!5672 = !DILocation(line: 749, column: 27, scope: !5666)
!5673 = !DILocation(line: 749, column: 7, scope: !5667)
!5674 = !DILocation(line: 750, column: 14, scope: !5675)
!5675 = distinct !DILexicalBlock(scope: !5666, file: !3, line: 749, column: 37)
!5676 = !DILocation(line: 750, column: 20, scope: !5675)
!5677 = !DILocation(line: 750, column: 4, scope: !5675)
!5678 = !DILocation(line: 751, column: 4, scope: !5675)
!5679 = !DILocation(line: 753, column: 2, scope: !5667)
!5680 = !DILocalVariable(name: "__mptr", scope: !5681, file: !3, line: 748, type: !163)
!5681 = distinct !DILexicalBlock(scope: !5664, file: !3, line: 748, column: 2)
!5682 = !DILocation(line: 748, column: 2, scope: !5681)
!5683 = !DILocation(line: 748, column: 2, scope: !5684)
!5684 = distinct !DILexicalBlock(scope: !5681, file: !3, line: 748, column: 2)
!5685 = distinct !{!5685, !5662, !5686}
!5686 = !DILocation(line: 753, column: 2, scope: !5658)
!5687 = !DILocation(line: 754, column: 7, scope: !5633)
!5688 = !DILocation(line: 754, column: 2, scope: !5633)
!5689 = !DILabel(scope: !5633, name: "found", file: !3, line: 755)
!5690 = !DILocation(line: 755, column: 2, scope: !5633)
!5691 = !DILocation(line: 394, column: 2, scope: !5610, inlinedAt: !5635)
!5692 = !DILocation(line: 394, column: 2, scope: !5613, inlinedAt: !5635)
!5693 = !DILocation(line: 758, column: 7, scope: !5694)
!5694 = distinct !DILexicalBlock(scope: !5633, file: !3, line: 758, column: 6)
!5695 = !DILocation(line: 758, column: 6, scope: !5633)
!5696 = !DILocation(line: 759, column: 20, scope: !5697)
!5697 = distinct !DILexicalBlock(scope: !5694, file: !3, line: 758, column: 13)
!5698 = !DILocation(line: 760, column: 46, scope: !5697)
!5699 = !DILocation(line: 759, column: 3, scope: !5697)
!5700 = !DILocation(line: 761, column: 3, scope: !5697)
!5701 = !DILocation(line: 764, column: 9, scope: !5702)
!5702 = distinct !DILexicalBlock(scope: !5633, file: !3, line: 764, column: 2)
!5703 = !DILocation(line: 764, column: 7, scope: !5702)
!5704 = !DILocation(line: 764, column: 14, scope: !5705)
!5705 = distinct !DILexicalBlock(scope: !5702, file: !3, line: 764, column: 2)
!5706 = !DILocation(line: 764, column: 18, scope: !5705)
!5707 = !DILocation(line: 764, column: 24, scope: !5705)
!5708 = !DILocation(line: 764, column: 16, scope: !5705)
!5709 = !DILocation(line: 764, column: 2, scope: !5702)
!5710 = !DILocalVariable(name: "addr", scope: !5711, file: !3, line: 765, type: !162)
!5711 = distinct !DILexicalBlock(scope: !5705, file: !3, line: 764, column: 41)
!5712 = !DILocation(line: 765, column: 17, scope: !5711)
!5713 = !DILocation(line: 767, column: 17, scope: !5711)
!5714 = !DILocation(line: 767, column: 11, scope: !5711)
!5715 = !DILocation(line: 767, column: 3, scope: !5711)
!5716 = !DILocation(line: 768, column: 25, scope: !5711)
!5717 = !DILocation(line: 768, column: 10, scope: !5711)
!5718 = !DILocation(line: 768, column: 50, scope: !5711)
!5719 = !DILocation(line: 768, column: 48, scope: !5711)
!5720 = !DILocation(line: 768, column: 31, scope: !5711)
!5721 = !DILocation(line: 768, column: 8, scope: !5711)
!5722 = !DILocation(line: 770, column: 19, scope: !5711)
!5723 = !DILocation(line: 770, column: 4, scope: !5711)
!5724 = !DILocation(line: 769, column: 24, scope: !5711)
!5725 = !DILocation(line: 770, column: 34, scope: !5711)
!5726 = !DILocation(line: 769, column: 9, scope: !5711)
!5727 = !DILocation(line: 769, column: 3, scope: !5711)
!5728 = !DILocation(line: 769, column: 12, scope: !5711)
!5729 = !DILocation(line: 769, column: 22, scope: !5711)
!5730 = !DILocation(line: 771, column: 9, scope: !5711)
!5731 = !DILocation(line: 771, column: 3, scope: !5711)
!5732 = !DILocation(line: 771, column: 12, scope: !5711)
!5733 = !DILocation(line: 771, column: 25, scope: !5711)
!5734 = !DILocation(line: 772, column: 21, scope: !5711)
!5735 = !DILocation(line: 772, column: 27, scope: !5711)
!5736 = !DILocation(line: 772, column: 35, scope: !5711)
!5737 = !DILocation(line: 772, column: 9, scope: !5711)
!5738 = !DILocation(line: 772, column: 3, scope: !5711)
!5739 = !DILocation(line: 772, column: 12, scope: !5711)
!5740 = !DILocation(line: 772, column: 19, scope: !5711)
!5741 = !DILocation(line: 773, column: 2, scope: !5711)
!5742 = !DILocation(line: 764, column: 37, scope: !5705)
!5743 = !DILocation(line: 764, column: 2, scope: !5705)
!5744 = distinct !{!5744, !5709, !5745}
!5745 = !DILocation(line: 773, column: 2, scope: !5702)
!5746 = !DILocation(line: 775, column: 58, scope: !5747)
!5747 = distinct !DILexicalBlock(scope: !5633, file: !3, line: 775, column: 6)
!5748 = !DILocation(line: 775, column: 65, scope: !5747)
!5749 = !DILocation(line: 775, column: 6, scope: !5747)
!5750 = !DILocation(line: 775, column: 6, scope: !5633)
!5751 = !DILocation(line: 776, column: 3, scope: !5747)
!5752 = !DILocation(line: 776, column: 3, scope: !5753)
!5753 = distinct !DILexicalBlock(scope: !5747, file: !3, line: 776, column: 3)
!5754 = !DILocation(line: 776, column: 3, scope: !5755)
!5755 = distinct !DILexicalBlock(scope: !5753, file: !3, line: 776, column: 3)
!5756 = !DILocation(line: 776, column: 3, scope: !5757)
!5757 = distinct !DILexicalBlock(scope: !5753, file: !3, line: 776, column: 3)
!5758 = !{i32 -2141515773, i32 -2141515744, i32 -2141515698, i32 -2141515640, i32 -2141515586, i32 -2141515532, i32 -2141515477, i32 -2141515446}
!5759 = !DILocation(line: 776, column: 3, scope: !5760)
!5760 = distinct !DILexicalBlock(scope: !5761, file: !3, line: 776, column: 3)
!5761 = distinct !DILexicalBlock(scope: !5753, file: !3, line: 776, column: 3)
!5762 = !{i32 -2141514989, i32 -2141514982, i32 -2141514928, i32 -2141514897, i32 -2141514867}
!5763 = !DILocation(line: 776, column: 3, scope: !5761)
!5764 = !DILocation(line: 778, column: 6, scope: !5633)
!5765 = !DILocation(line: 779, column: 9, scope: !5633)
!5766 = !DILocation(line: 780, column: 9, scope: !5767)
!5767 = distinct !DILexicalBlock(scope: !5633, file: !3, line: 780, column: 2)
!5768 = !DILocation(line: 780, column: 7, scope: !5767)
!5769 = !DILocation(line: 780, column: 14, scope: !5770)
!5770 = distinct !DILexicalBlock(scope: !5767, file: !3, line: 780, column: 2)
!5771 = !DILocation(line: 780, column: 18, scope: !5770)
!5772 = !DILocation(line: 780, column: 24, scope: !5770)
!5773 = !DILocation(line: 780, column: 16, scope: !5770)
!5774 = !DILocation(line: 780, column: 2, scope: !5767)
!5775 = !DILocation(line: 781, column: 13, scope: !5776)
!5776 = distinct !DILexicalBlock(scope: !5777, file: !3, line: 781, column: 7)
!5777 = distinct !DILexicalBlock(scope: !5770, file: !3, line: 780, column: 41)
!5778 = !DILocation(line: 781, column: 7, scope: !5776)
!5779 = !DILocation(line: 781, column: 16, scope: !5776)
!5780 = !DILocation(line: 781, column: 23, scope: !5776)
!5781 = !DILocation(line: 781, column: 7, scope: !5777)
!5782 = !DILocation(line: 782, column: 11, scope: !5783)
!5783 = distinct !DILexicalBlock(scope: !5776, file: !3, line: 781, column: 38)
!5784 = !DILocation(line: 783, column: 21, scope: !5783)
!5785 = !DILocation(line: 783, column: 32, scope: !5783)
!5786 = !DILocation(line: 783, column: 26, scope: !5783)
!5787 = !DILocation(line: 783, column: 35, scope: !5783)
!5788 = !DILocation(line: 785, column: 7, scope: !5783)
!5789 = !DILocation(line: 785, column: 13, scope: !5783)
!5790 = !DILocation(line: 785, column: 21, scope: !5783)
!5791 = !DILocation(line: 785, column: 31, scope: !5783)
!5792 = !DILocation(line: 785, column: 25, scope: !5783)
!5793 = !DILocation(line: 785, column: 34, scope: !5783)
!5794 = !DILocation(line: 783, column: 4, scope: !5783)
!5795 = !DILocation(line: 786, column: 16, scope: !5783)
!5796 = !DILocation(line: 786, column: 10, scope: !5783)
!5797 = !DILocation(line: 786, column: 19, scope: !5783)
!5798 = !DILocation(line: 786, column: 8, scope: !5783)
!5799 = !DILocation(line: 787, column: 4, scope: !5783)
!5800 = !DILocation(line: 789, column: 2, scope: !5777)
!5801 = !DILocation(line: 780, column: 37, scope: !5770)
!5802 = !DILocation(line: 780, column: 2, scope: !5770)
!5803 = distinct !{!5803, !5774, !5804}
!5804 = !DILocation(line: 789, column: 2, scope: !5767)
!5805 = !DILocation(line: 791, column: 7, scope: !5806)
!5806 = distinct !DILexicalBlock(scope: !5633, file: !3, line: 791, column: 6)
!5807 = !DILocation(line: 791, column: 6, scope: !5633)
!5808 = !DILocation(line: 792, column: 16, scope: !5806)
!5809 = !DILocation(line: 792, column: 22, scope: !5806)
!5810 = !DILocation(line: 792, column: 25, scope: !5806)
!5811 = !DILocation(line: 792, column: 3, scope: !5806)
!5812 = !DILocation(line: 794, column: 3, scope: !5806)
!5813 = !DILocation(line: 797, column: 8, scope: !5633)
!5814 = !DILocation(line: 797, column: 2, scope: !5633)
!5815 = !DILocation(line: 798, column: 9, scope: !5633)
!5816 = !DILocation(line: 798, column: 2, scope: !5633)
!5817 = !DILocation(line: 799, column: 1, scope: !5633)
!5818 = distinct !DISubprogram(name: "map_ring_apply", scope: !3, file: !3, line: 686, type: !5819, scopeLine: 687, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !319)
!5819 = !DISubroutineType(types: !5820)
!5820 = !{!159, !1110, !162, !163}
!5821 = !DILocalVariable(name: "pte", arg: 1, scope: !5818, file: !3, line: 686, type: !1110)
!5822 = !DILocation(line: 686, column: 34, scope: !5818)
!5823 = !DILocalVariable(name: "addr", arg: 2, scope: !5818, file: !3, line: 686, type: !162)
!5824 = !DILocation(line: 686, column: 53, scope: !5818)
!5825 = !DILocalVariable(name: "data", arg: 3, scope: !5818, file: !3, line: 686, type: !163)
!5826 = !DILocation(line: 686, column: 65, scope: !5818)
!5827 = !DILocalVariable(name: "info", scope: !5818, file: !3, line: 688, type: !4243)
!5828 = !DILocation(line: 688, column: 26, scope: !5818)
!5829 = !DILocation(line: 688, column: 33, scope: !5818)
!5830 = !DILocation(line: 690, column: 60, scope: !5818)
!5831 = !DILocation(line: 690, column: 34, scope: !5818)
!5832 = !DILocation(line: 690, column: 65, scope: !5818)
!5833 = !DILocation(line: 690, column: 2, scope: !5818)
!5834 = !DILocation(line: 690, column: 8, scope: !5818)
!5835 = !DILocation(line: 690, column: 19, scope: !5818)
!5836 = !DILocation(line: 690, column: 25, scope: !5818)
!5837 = !DILocation(line: 690, column: 28, scope: !5818)
!5838 = !DILocation(line: 690, column: 32, scope: !5818)
!5839 = !DILocation(line: 691, column: 2, scope: !5818)
!5840 = distinct !DISubprogram(name: "__xenbus_map_ring", scope: !3, file: !3, line: 496, type: !5841, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !319)
!5841 = !DISubroutineType(types: !5842)
!5842 = !{!159, !3086, !4276, !11, !5843, !4243, !11, !2899}
!5843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!5844 = !DILocalVariable(name: "dev", arg: 1, scope: !5840, file: !3, line: 496, type: !3086)
!5845 = !DILocation(line: 496, column: 52, scope: !5840)
!5846 = !DILocalVariable(name: "gnt_refs", arg: 2, scope: !5840, file: !3, line: 497, type: !4276)
!5847 = !DILocation(line: 497, column: 22, scope: !5840)
!5848 = !DILocalVariable(name: "nr_grefs", arg: 3, scope: !5840, file: !3, line: 498, type: !11)
!5849 = !DILocation(line: 498, column: 22, scope: !5840)
!5850 = !DILocalVariable(name: "handles", arg: 4, scope: !5840, file: !3, line: 499, type: !5843)
!5851 = !DILocation(line: 499, column: 25, scope: !5840)
!5852 = !DILocalVariable(name: "info", arg: 5, scope: !5840, file: !3, line: 500, type: !4243)
!5853 = !DILocation(line: 500, column: 33, scope: !5840)
!5854 = !DILocalVariable(name: "flags", arg: 6, scope: !5840, file: !3, line: 501, type: !11)
!5855 = !DILocation(line: 501, column: 22, scope: !5840)
!5856 = !DILocalVariable(name: "leaked", arg: 7, scope: !5840, file: !3, line: 502, type: !2899)
!5857 = !DILocation(line: 502, column: 15, scope: !5840)
!5858 = !DILocalVariable(name: "i", scope: !5840, file: !3, line: 504, type: !159)
!5859 = !DILocation(line: 504, column: 6, scope: !5840)
!5860 = !DILocalVariable(name: "j", scope: !5840, file: !3, line: 504, type: !159)
!5861 = !DILocation(line: 504, column: 9, scope: !5840)
!5862 = !DILocation(line: 506, column: 6, scope: !5863)
!5863 = distinct !DILexicalBlock(scope: !5840, file: !3, line: 506, column: 6)
!5864 = !DILocation(line: 506, column: 15, scope: !5863)
!5865 = !DILocation(line: 506, column: 6, scope: !5840)
!5866 = !DILocation(line: 507, column: 3, scope: !5863)
!5867 = !DILocation(line: 509, column: 9, scope: !5868)
!5868 = distinct !DILexicalBlock(scope: !5840, file: !3, line: 509, column: 2)
!5869 = !DILocation(line: 509, column: 7, scope: !5868)
!5870 = !DILocation(line: 509, column: 14, scope: !5871)
!5871 = distinct !DILexicalBlock(scope: !5868, file: !3, line: 509, column: 2)
!5872 = !DILocation(line: 509, column: 18, scope: !5871)
!5873 = !DILocation(line: 509, column: 16, scope: !5871)
!5874 = !DILocation(line: 509, column: 2, scope: !5868)
!5875 = !DILocation(line: 510, column: 22, scope: !5876)
!5876 = distinct !DILexicalBlock(scope: !5871, file: !3, line: 509, column: 33)
!5877 = !DILocation(line: 510, column: 28, scope: !5876)
!5878 = !DILocation(line: 510, column: 32, scope: !5876)
!5879 = !DILocation(line: 510, column: 36, scope: !5876)
!5880 = !DILocation(line: 510, column: 42, scope: !5876)
!5881 = !DILocation(line: 510, column: 53, scope: !5876)
!5882 = !DILocation(line: 510, column: 57, scope: !5876)
!5883 = !DILocation(line: 511, column: 7, scope: !5876)
!5884 = !DILocation(line: 511, column: 16, scope: !5876)
!5885 = !DILocation(line: 511, column: 20, scope: !5876)
!5886 = !DILocation(line: 511, column: 25, scope: !5876)
!5887 = !DILocation(line: 510, column: 3, scope: !5876)
!5888 = !DILocation(line: 512, column: 3, scope: !5876)
!5889 = !DILocation(line: 512, column: 11, scope: !5876)
!5890 = !DILocation(line: 512, column: 14, scope: !5876)
!5891 = !DILocation(line: 513, column: 2, scope: !5876)
!5892 = !DILocation(line: 509, column: 29, scope: !5871)
!5893 = !DILocation(line: 509, column: 2, scope: !5871)
!5894 = distinct !{!5894, !5874, !5895}
!5895 = !DILocation(line: 513, column: 2, scope: !5868)
!5896 = !DILocation(line: 515, column: 19, scope: !5840)
!5897 = !DILocation(line: 515, column: 25, scope: !5840)
!5898 = !DILocation(line: 515, column: 30, scope: !5840)
!5899 = !DILocation(line: 515, column: 2, scope: !5840)
!5900 = !DILocation(line: 517, column: 9, scope: !5901)
!5901 = distinct !DILexicalBlock(scope: !5840, file: !3, line: 517, column: 2)
!5902 = !DILocation(line: 517, column: 7, scope: !5901)
!5903 = !DILocation(line: 517, column: 14, scope: !5904)
!5904 = distinct !DILexicalBlock(scope: !5901, file: !3, line: 517, column: 2)
!5905 = !DILocation(line: 517, column: 18, scope: !5904)
!5906 = !DILocation(line: 517, column: 16, scope: !5904)
!5907 = !DILocation(line: 517, column: 2, scope: !5901)
!5908 = !DILocation(line: 518, column: 7, scope: !5909)
!5909 = distinct !DILexicalBlock(scope: !5910, file: !3, line: 518, column: 7)
!5910 = distinct !DILexicalBlock(scope: !5904, file: !3, line: 517, column: 33)
!5911 = !DILocation(line: 518, column: 13, scope: !5909)
!5912 = !DILocation(line: 518, column: 17, scope: !5909)
!5913 = !DILocation(line: 518, column: 20, scope: !5909)
!5914 = !DILocation(line: 518, column: 27, scope: !5909)
!5915 = !DILocation(line: 518, column: 7, scope: !5910)
!5916 = !DILocation(line: 519, column: 21, scope: !5917)
!5917 = distinct !DILexicalBlock(scope: !5909, file: !3, line: 518, column: 42)
!5918 = !DILocation(line: 519, column: 26, scope: !5917)
!5919 = !DILocation(line: 519, column: 32, scope: !5917)
!5920 = !DILocation(line: 519, column: 36, scope: !5917)
!5921 = !DILocation(line: 519, column: 39, scope: !5917)
!5922 = !DILocation(line: 521, column: 7, scope: !5917)
!5923 = !DILocation(line: 521, column: 16, scope: !5917)
!5924 = !DILocation(line: 521, column: 20, scope: !5917)
!5925 = !DILocation(line: 521, column: 25, scope: !5917)
!5926 = !DILocation(line: 519, column: 4, scope: !5917)
!5927 = !DILocation(line: 522, column: 4, scope: !5917)
!5928 = !DILocation(line: 524, column: 17, scope: !5909)
!5929 = !DILocation(line: 524, column: 23, scope: !5909)
!5930 = !DILocation(line: 524, column: 27, scope: !5909)
!5931 = !DILocation(line: 524, column: 30, scope: !5909)
!5932 = !DILocation(line: 524, column: 4, scope: !5909)
!5933 = !DILocation(line: 524, column: 12, scope: !5909)
!5934 = !DILocation(line: 524, column: 15, scope: !5909)
!5935 = !DILocation(line: 525, column: 2, scope: !5910)
!5936 = !DILocation(line: 517, column: 29, scope: !5904)
!5937 = !DILocation(line: 517, column: 2, scope: !5904)
!5938 = distinct !{!5938, !5907, !5939}
!5939 = !DILocation(line: 525, column: 2, scope: !5901)
!5940 = !DILocation(line: 527, column: 2, scope: !5840)
!5941 = !DILabel(scope: !5840, name: "fail", file: !3, line: 529)
!5942 = !DILocation(line: 529, column: 2, scope: !5840)
!5943 = !DILocation(line: 530, column: 13, scope: !5944)
!5944 = distinct !DILexicalBlock(scope: !5840, file: !3, line: 530, column: 2)
!5945 = !DILocation(line: 530, column: 9, scope: !5944)
!5946 = !DILocation(line: 530, column: 7, scope: !5944)
!5947 = !DILocation(line: 530, column: 18, scope: !5948)
!5948 = distinct !DILexicalBlock(scope: !5944, file: !3, line: 530, column: 2)
!5949 = !DILocation(line: 530, column: 22, scope: !5948)
!5950 = !DILocation(line: 530, column: 20, scope: !5948)
!5951 = !DILocation(line: 530, column: 2, scope: !5944)
!5952 = !DILocation(line: 531, column: 7, scope: !5953)
!5953 = distinct !DILexicalBlock(scope: !5954, file: !3, line: 531, column: 7)
!5954 = distinct !DILexicalBlock(scope: !5948, file: !3, line: 530, column: 37)
!5955 = !DILocation(line: 531, column: 15, scope: !5953)
!5956 = !DILocation(line: 531, column: 18, scope: !5953)
!5957 = !DILocation(line: 531, column: 7, scope: !5954)
!5958 = !DILocation(line: 532, column: 25, scope: !5959)
!5959 = distinct !DILexicalBlock(scope: !5953, file: !3, line: 531, column: 43)
!5960 = !DILocation(line: 532, column: 31, scope: !5959)
!5961 = !DILocation(line: 532, column: 37, scope: !5959)
!5962 = !DILocation(line: 533, column: 10, scope: !5959)
!5963 = !DILocation(line: 533, column: 16, scope: !5959)
!5964 = !DILocation(line: 533, column: 27, scope: !5959)
!5965 = !DILocation(line: 534, column: 27, scope: !5959)
!5966 = !DILocation(line: 534, column: 35, scope: !5959)
!5967 = !DILocation(line: 532, column: 4, scope: !5959)
!5968 = !DILocation(line: 535, column: 5, scope: !5959)
!5969 = !DILocation(line: 536, column: 3, scope: !5959)
!5970 = !DILocation(line: 537, column: 2, scope: !5954)
!5971 = !DILocation(line: 530, column: 33, scope: !5948)
!5972 = !DILocation(line: 530, column: 2, scope: !5948)
!5973 = distinct !{!5973, !5951, !5974}
!5974 = !DILocation(line: 537, column: 2, scope: !5944)
!5975 = !DILocation(line: 539, column: 58, scope: !5976)
!5976 = distinct !DILexicalBlock(scope: !5840, file: !3, line: 539, column: 6)
!5977 = !DILocation(line: 539, column: 64, scope: !5976)
!5978 = !DILocation(line: 539, column: 71, scope: !5976)
!5979 = !DILocation(line: 539, column: 6, scope: !5976)
!5980 = !DILocation(line: 539, column: 6, scope: !5840)
!5981 = !DILocation(line: 540, column: 3, scope: !5976)
!5982 = !DILocation(line: 540, column: 3, scope: !5983)
!5983 = distinct !DILexicalBlock(scope: !5976, file: !3, line: 540, column: 3)
!5984 = !DILocation(line: 540, column: 3, scope: !5985)
!5985 = distinct !DILexicalBlock(scope: !5983, file: !3, line: 540, column: 3)
!5986 = !DILocation(line: 540, column: 3, scope: !5987)
!5987 = distinct !DILexicalBlock(scope: !5983, file: !3, line: 540, column: 3)
!5988 = !{i32 -2141524582, i32 -2141524553, i32 -2141524507, i32 -2141524449, i32 -2141524395, i32 -2141524341, i32 -2141524286, i32 -2141524255}
!5989 = !DILocation(line: 540, column: 3, scope: !5990)
!5990 = distinct !DILexicalBlock(scope: !5991, file: !3, line: 540, column: 3)
!5991 = distinct !DILexicalBlock(scope: !5983, file: !3, line: 540, column: 3)
!5992 = !{i32 -2141523798, i32 -2141523791, i32 -2141523737, i32 -2141523706, i32 -2141523676}
!5993 = !DILocation(line: 540, column: 3, scope: !5991)
!5994 = !DILocation(line: 542, column: 3, scope: !5840)
!5995 = !DILocation(line: 542, column: 10, scope: !5840)
!5996 = !DILocation(line: 543, column: 9, scope: !5997)
!5997 = distinct !DILexicalBlock(scope: !5840, file: !3, line: 543, column: 2)
!5998 = !DILocation(line: 543, column: 7, scope: !5997)
!5999 = !DILocation(line: 543, column: 14, scope: !6000)
!6000 = distinct !DILexicalBlock(scope: !5997, file: !3, line: 543, column: 2)
!6001 = !DILocation(line: 543, column: 18, scope: !6000)
!6002 = !DILocation(line: 543, column: 16, scope: !6000)
!6003 = !DILocation(line: 543, column: 2, scope: !5997)
!6004 = !DILocation(line: 544, column: 7, scope: !6005)
!6005 = distinct !DILexicalBlock(scope: !6006, file: !3, line: 544, column: 7)
!6006 = distinct !DILexicalBlock(scope: !6000, file: !3, line: 543, column: 26)
!6007 = !DILocation(line: 544, column: 13, scope: !6005)
!6008 = !DILocation(line: 544, column: 19, scope: !6005)
!6009 = !DILocation(line: 544, column: 22, scope: !6005)
!6010 = !DILocation(line: 544, column: 29, scope: !6005)
!6011 = !DILocation(line: 544, column: 7, scope: !6006)
!6012 = !DILocation(line: 545, column: 5, scope: !6013)
!6013 = distinct !DILexicalBlock(scope: !6005, file: !3, line: 544, column: 44)
!6014 = !DILocation(line: 545, column: 12, scope: !6013)
!6015 = !DILocation(line: 546, column: 4, scope: !6013)
!6016 = !DILocation(line: 548, column: 2, scope: !6006)
!6017 = !DILocation(line: 543, column: 22, scope: !6000)
!6018 = !DILocation(line: 543, column: 2, scope: !6000)
!6019 = distinct !{!6019, !6003, !6020}
!6020 = !DILocation(line: 548, column: 2, scope: !5997)
!6021 = !DILocation(line: 550, column: 2, scope: !5840)
!6022 = !DILocation(line: 551, column: 1, scope: !5840)
!6023 = distinct !DISubprogram(name: "list_add", scope: !6024, file: !6024, line: 84, type: !6025, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !319)
!6024 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!6025 = !DISubroutineType(types: !6026)
!6026 = !{null, !166, !166}
!6027 = !DILocalVariable(name: "new", arg: 1, scope: !6023, file: !6024, line: 84, type: !166)
!6028 = !DILocation(line: 84, column: 47, scope: !6023)
!6029 = !DILocalVariable(name: "head", arg: 2, scope: !6023, file: !6024, line: 84, type: !166)
!6030 = !DILocation(line: 84, column: 70, scope: !6023)
!6031 = !DILocation(line: 86, column: 13, scope: !6023)
!6032 = !DILocation(line: 86, column: 18, scope: !6023)
!6033 = !DILocation(line: 86, column: 24, scope: !6023)
!6034 = !DILocation(line: 86, column: 30, scope: !6023)
!6035 = !DILocation(line: 86, column: 2, scope: !6023)
!6036 = !DILocation(line: 87, column: 1, scope: !6023)
!6037 = distinct !DISubprogram(name: "gnttab_set_map_op", scope: !6038, file: !6038, line: 147, type: !6039, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !319)
!6038 = !DIFile(filename: "./include/xen/grant_table.h", directory: "/home/lizy2001/genbc/linux")
!6039 = !DISubroutineType(types: !6040)
!6040 = !{null, !6041, !3058, !1557, !4258, !4260}
!6041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!6042 = !DILocalVariable(name: "map", arg: 1, scope: !6037, file: !6038, line: 147, type: !6041)
!6043 = !DILocation(line: 147, column: 48, scope: !6037)
!6044 = !DILocalVariable(name: "addr", arg: 2, scope: !6037, file: !6038, line: 147, type: !3058)
!6045 = !DILocation(line: 147, column: 65, scope: !6037)
!6046 = !DILocalVariable(name: "flags", arg: 3, scope: !6037, file: !6038, line: 148, type: !1557)
!6047 = !DILocation(line: 148, column: 14, scope: !6037)
!6048 = !DILocalVariable(name: "ref", arg: 4, scope: !6037, file: !6038, line: 148, type: !4258)
!6049 = !DILocation(line: 148, column: 33, scope: !6037)
!6050 = !DILocalVariable(name: "domid", arg: 5, scope: !6037, file: !6038, line: 148, type: !4260)
!6051 = !DILocation(line: 148, column: 46, scope: !6037)
!6052 = !DILocation(line: 150, column: 6, scope: !6053)
!6053 = distinct !DILexicalBlock(scope: !6037, file: !6038, line: 150, column: 6)
!6054 = !DILocation(line: 150, column: 12, scope: !6053)
!6055 = !DILocation(line: 150, column: 6, scope: !6037)
!6056 = !DILocation(line: 151, column: 20, scope: !6053)
!6057 = !DILocation(line: 151, column: 3, scope: !6053)
!6058 = !DILocation(line: 151, column: 8, scope: !6053)
!6059 = !DILocation(line: 151, column: 18, scope: !6053)
!6060 = !DILocation(line: 152, column: 11, scope: !6061)
!6061 = distinct !DILexicalBlock(scope: !6053, file: !6038, line: 152, column: 11)
!6062 = !DILocation(line: 152, column: 11, scope: !6053)
!6063 = !DILocation(line: 153, column: 20, scope: !6061)
!6064 = !DILocation(line: 153, column: 3, scope: !6061)
!6065 = !DILocation(line: 153, column: 8, scope: !6061)
!6066 = !DILocation(line: 153, column: 18, scope: !6061)
!6067 = !DILocation(line: 155, column: 20, scope: !6061)
!6068 = !DILocation(line: 155, column: 3, scope: !6061)
!6069 = !DILocation(line: 155, column: 8, scope: !6061)
!6070 = !DILocation(line: 155, column: 18, scope: !6061)
!6071 = !DILocation(line: 157, column: 15, scope: !6037)
!6072 = !DILocation(line: 157, column: 2, scope: !6037)
!6073 = !DILocation(line: 157, column: 7, scope: !6037)
!6074 = !DILocation(line: 157, column: 13, scope: !6037)
!6075 = !DILocation(line: 158, column: 13, scope: !6037)
!6076 = !DILocation(line: 158, column: 2, scope: !6037)
!6077 = !DILocation(line: 158, column: 7, scope: !6037)
!6078 = !DILocation(line: 158, column: 11, scope: !6037)
!6079 = !DILocation(line: 159, column: 13, scope: !6037)
!6080 = !DILocation(line: 159, column: 2, scope: !6037)
!6081 = !DILocation(line: 159, column: 7, scope: !6037)
!6082 = !DILocation(line: 159, column: 11, scope: !6037)
!6083 = !DILocation(line: 160, column: 1, scope: !6037)
!6084 = distinct !DISubprogram(name: "gnttab_set_unmap_op", scope: !6038, file: !6038, line: 163, type: !6085, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !319)
!6085 = !DISubroutineType(types: !6086)
!6086 = !{null, !6087, !3058, !1557, !3072}
!6087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4269, size: 64)
!6088 = !DILocalVariable(name: "unmap", arg: 1, scope: !6084, file: !6038, line: 163, type: !6087)
!6089 = !DILocation(line: 163, column: 52, scope: !6084)
!6090 = !DILocalVariable(name: "addr", arg: 2, scope: !6084, file: !6038, line: 163, type: !3058)
!6091 = !DILocation(line: 163, column: 71, scope: !6084)
!6092 = !DILocalVariable(name: "flags", arg: 3, scope: !6084, file: !6038, line: 164, type: !1557)
!6093 = !DILocation(line: 164, column: 16, scope: !6084)
!6094 = !DILocalVariable(name: "handle", arg: 4, scope: !6084, file: !6038, line: 164, type: !3072)
!6095 = !DILocation(line: 164, column: 38, scope: !6084)
!6096 = !DILocation(line: 166, column: 6, scope: !6097)
!6097 = distinct !DILexicalBlock(scope: !6084, file: !6038, line: 166, column: 6)
!6098 = !DILocation(line: 166, column: 12, scope: !6097)
!6099 = !DILocation(line: 166, column: 6, scope: !6084)
!6100 = !DILocation(line: 167, column: 22, scope: !6097)
!6101 = !DILocation(line: 167, column: 3, scope: !6097)
!6102 = !DILocation(line: 167, column: 10, scope: !6097)
!6103 = !DILocation(line: 167, column: 20, scope: !6097)
!6104 = !DILocation(line: 168, column: 11, scope: !6105)
!6105 = distinct !DILexicalBlock(scope: !6097, file: !6038, line: 168, column: 11)
!6106 = !DILocation(line: 168, column: 11, scope: !6097)
!6107 = !DILocation(line: 169, column: 22, scope: !6105)
!6108 = !DILocation(line: 169, column: 3, scope: !6105)
!6109 = !DILocation(line: 169, column: 10, scope: !6105)
!6110 = !DILocation(line: 169, column: 20, scope: !6105)
!6111 = !DILocation(line: 171, column: 22, scope: !6105)
!6112 = !DILocation(line: 171, column: 3, scope: !6105)
!6113 = !DILocation(line: 171, column: 10, scope: !6105)
!6114 = !DILocation(line: 171, column: 20, scope: !6105)
!6115 = !DILocation(line: 173, column: 18, scope: !6084)
!6116 = !DILocation(line: 173, column: 2, scope: !6084)
!6117 = !DILocation(line: 173, column: 9, scope: !6084)
!6118 = !DILocation(line: 173, column: 16, scope: !6084)
!6119 = !DILocation(line: 174, column: 2, scope: !6084)
!6120 = !DILocation(line: 174, column: 9, scope: !6084)
!6121 = !DILocation(line: 174, column: 22, scope: !6084)
!6122 = !DILocation(line: 175, column: 1, scope: !6084)
!6123 = distinct !DISubprogram(name: "HYPERVISOR_grant_table_op", scope: !5032, file: !5032, line: 380, type: !6124, scopeLine: 381, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !319)
!6124 = !DISubroutineType(types: !6125)
!6125 = !{!159, !11, !163, !11}
!6126 = !DILocalVariable(name: "cmd", arg: 1, scope: !6123, file: !5032, line: 380, type: !11)
!6127 = !DILocation(line: 380, column: 40, scope: !6123)
!6128 = !DILocalVariable(name: "uop", arg: 2, scope: !6123, file: !5032, line: 380, type: !163)
!6129 = !DILocation(line: 380, column: 51, scope: !6123)
!6130 = !DILocalVariable(name: "count", arg: 3, scope: !6123, file: !5032, line: 380, type: !11)
!6131 = !DILocation(line: 380, column: 69, scope: !6123)
!6132 = !DILocalVariable(name: "__res", scope: !6133, file: !5032, line: 382, type: !162)
!6133 = distinct !DILexicalBlock(scope: !6123, file: !5032, line: 382, column: 9)
!6134 = !DILocation(line: 382, column: 9, scope: !6133)
!6135 = !DILocalVariable(name: "__arg1", scope: !6133, file: !5032, line: 382, type: !162)
!6136 = !DILocalVariable(name: "__arg2", scope: !6133, file: !5032, line: 382, type: !162)
!6137 = !DILocalVariable(name: "__arg3", scope: !6133, file: !5032, line: 382, type: !162)
!6138 = !DILocalVariable(name: "__arg4", scope: !6133, file: !5032, line: 382, type: !162)
!6139 = !DILocalVariable(name: "__arg5", scope: !6133, file: !5032, line: 382, type: !162)
!6140 = !{i32 -2141603447}
!6141 = !DILocation(line: 382, column: 2, scope: !6123)
!6142 = distinct !DISubprogram(name: "__list_add", scope: !6024, file: !6024, line: 63, type: !6143, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !319)
!6143 = !DISubroutineType(types: !6144)
!6144 = !{null, !166, !166, !166}
!6145 = !DILocalVariable(name: "new", arg: 1, scope: !6142, file: !6024, line: 63, type: !166)
!6146 = !DILocation(line: 63, column: 49, scope: !6142)
!6147 = !DILocalVariable(name: "prev", arg: 2, scope: !6142, file: !6024, line: 64, type: !166)
!6148 = !DILocation(line: 64, column: 28, scope: !6142)
!6149 = !DILocalVariable(name: "next", arg: 3, scope: !6142, file: !6024, line: 65, type: !166)
!6150 = !DILocation(line: 65, column: 28, scope: !6142)
!6151 = !DILocation(line: 67, column: 24, scope: !6152)
!6152 = distinct !DILexicalBlock(scope: !6142, file: !6024, line: 67, column: 6)
!6153 = !DILocation(line: 67, column: 29, scope: !6152)
!6154 = !DILocation(line: 67, column: 35, scope: !6152)
!6155 = !DILocation(line: 67, column: 7, scope: !6152)
!6156 = !DILocation(line: 67, column: 6, scope: !6142)
!6157 = !DILocation(line: 68, column: 3, scope: !6152)
!6158 = !DILocation(line: 70, column: 15, scope: !6142)
!6159 = !DILocation(line: 70, column: 2, scope: !6142)
!6160 = !DILocation(line: 70, column: 8, scope: !6142)
!6161 = !DILocation(line: 70, column: 13, scope: !6142)
!6162 = !DILocation(line: 71, column: 14, scope: !6142)
!6163 = !DILocation(line: 71, column: 2, scope: !6142)
!6164 = !DILocation(line: 71, column: 7, scope: !6142)
!6165 = !DILocation(line: 71, column: 12, scope: !6142)
!6166 = !DILocation(line: 72, column: 14, scope: !6142)
!6167 = !DILocation(line: 72, column: 2, scope: !6142)
!6168 = !DILocation(line: 72, column: 7, scope: !6142)
!6169 = !DILocation(line: 72, column: 12, scope: !6142)
!6170 = !DILocation(line: 73, column: 2, scope: !6142)
!6171 = !DILocation(line: 73, column: 2, scope: !6172)
!6172 = distinct !DILexicalBlock(scope: !6142, file: !6024, line: 73, column: 2)
!6173 = !DILocation(line: 73, column: 2, scope: !6174)
!6174 = distinct !DILexicalBlock(scope: !6172, file: !6024, line: 73, column: 2)
!6175 = !DILocation(line: 73, column: 2, scope: !6176)
!6176 = distinct !DILexicalBlock(scope: !6172, file: !6024, line: 73, column: 2)
!6177 = !DILocation(line: 74, column: 1, scope: !6142)
!6178 = distinct !DISubprogram(name: "__list_add_valid", scope: !6024, file: !6024, line: 45, type: !6179, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !319)
!6179 = !DISubroutineType(types: !6180)
!6180 = !{!384, !166, !166, !166}
!6181 = !DILocalVariable(name: "new", arg: 1, scope: !6178, file: !6024, line: 45, type: !166)
!6182 = !DILocation(line: 45, column: 55, scope: !6178)
!6183 = !DILocalVariable(name: "prev", arg: 2, scope: !6178, file: !6024, line: 46, type: !166)
!6184 = !DILocation(line: 46, column: 23, scope: !6178)
!6185 = !DILocalVariable(name: "next", arg: 3, scope: !6178, file: !6024, line: 47, type: !166)
!6186 = !DILocation(line: 47, column: 23, scope: !6178)
!6187 = !DILocation(line: 49, column: 2, scope: !6178)
!6188 = distinct !DISubprogram(name: "list_del", scope: !6024, file: !6024, line: 144, type: !6189, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !319)
!6189 = !DISubroutineType(types: !6190)
!6190 = !{null, !166}
!6191 = !DILocalVariable(name: "entry", arg: 1, scope: !6188, file: !6024, line: 144, type: !166)
!6192 = !DILocation(line: 144, column: 47, scope: !6188)
!6193 = !DILocation(line: 146, column: 19, scope: !6188)
!6194 = !DILocation(line: 146, column: 2, scope: !6188)
!6195 = !DILocation(line: 147, column: 2, scope: !6188)
!6196 = !DILocation(line: 147, column: 9, scope: !6188)
!6197 = !DILocation(line: 147, column: 14, scope: !6188)
!6198 = !DILocation(line: 148, column: 2, scope: !6188)
!6199 = !DILocation(line: 148, column: 9, scope: !6188)
!6200 = !DILocation(line: 148, column: 14, scope: !6188)
!6201 = !DILocation(line: 149, column: 1, scope: !6188)
!6202 = distinct !DISubprogram(name: "__list_del_entry", scope: !6024, file: !6024, line: 130, type: !6189, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !319)
!6203 = !DILocalVariable(name: "entry", arg: 1, scope: !6202, file: !6024, line: 130, type: !166)
!6204 = !DILocation(line: 130, column: 55, scope: !6202)
!6205 = !DILocation(line: 132, column: 30, scope: !6206)
!6206 = distinct !DILexicalBlock(scope: !6202, file: !6024, line: 132, column: 6)
!6207 = !DILocation(line: 132, column: 7, scope: !6206)
!6208 = !DILocation(line: 132, column: 6, scope: !6202)
!6209 = !DILocation(line: 133, column: 3, scope: !6206)
!6210 = !DILocation(line: 135, column: 13, scope: !6202)
!6211 = !DILocation(line: 135, column: 20, scope: !6202)
!6212 = !DILocation(line: 135, column: 26, scope: !6202)
!6213 = !DILocation(line: 135, column: 33, scope: !6202)
!6214 = !DILocation(line: 135, column: 2, scope: !6202)
!6215 = !DILocation(line: 136, column: 1, scope: !6202)
!6216 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !6024, file: !6024, line: 51, type: !6217, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !319)
!6217 = !DISubroutineType(types: !6218)
!6218 = !{!384, !166}
!6219 = !DILocalVariable(name: "entry", arg: 1, scope: !6216, file: !6024, line: 51, type: !166)
!6220 = !DILocation(line: 51, column: 61, scope: !6216)
!6221 = !DILocation(line: 53, column: 2, scope: !6216)
!6222 = distinct !DISubprogram(name: "__list_del", scope: !6024, file: !6024, line: 110, type: !6025, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !319)
!6223 = !DILocalVariable(name: "prev", arg: 1, scope: !6222, file: !6024, line: 110, type: !166)
!6224 = !DILocation(line: 110, column: 50, scope: !6222)
!6225 = !DILocalVariable(name: "next", arg: 2, scope: !6222, file: !6024, line: 110, type: !166)
!6226 = !DILocation(line: 110, column: 75, scope: !6222)
!6227 = !DILocation(line: 112, column: 15, scope: !6222)
!6228 = !DILocation(line: 112, column: 2, scope: !6222)
!6229 = !DILocation(line: 112, column: 8, scope: !6222)
!6230 = !DILocation(line: 112, column: 13, scope: !6222)
!6231 = !DILocation(line: 113, column: 2, scope: !6222)
!6232 = !DILocation(line: 113, column: 2, scope: !6233)
!6233 = distinct !DILexicalBlock(scope: !6222, file: !6024, line: 113, column: 2)
!6234 = !DILocation(line: 113, column: 2, scope: !6235)
!6235 = distinct !DILexicalBlock(scope: !6233, file: !6024, line: 113, column: 2)
!6236 = !DILocation(line: 113, column: 2, scope: !6237)
!6237 = distinct !DILexicalBlock(scope: !6233, file: !6024, line: 113, column: 2)
!6238 = !DILocation(line: 114, column: 1, scope: !6222)
!6239 = distinct !DISubprogram(name: "xenbus_map_ring_hvm", scope: !3, file: !3, line: 609, type: !3084, scopeLine: 614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !319)
!6240 = !DILocation(line: 392, column: 53, scope: !5532, inlinedAt: !6241)
!6241 = distinct !DILocation(line: 647, column: 2, scope: !6239)
!6242 = !DILocation(line: 352, column: 51, scope: !5539, inlinedAt: !6243)
!6243 = distinct !DILocation(line: 645, column: 2, scope: !6239)
!6244 = !DILocalVariable(name: "dev", arg: 1, scope: !6239, file: !3, line: 609, type: !3086)
!6245 = !DILocation(line: 609, column: 54, scope: !6239)
!6246 = !DILocalVariable(name: "info", arg: 2, scope: !6239, file: !3, line: 610, type: !4243)
!6247 = !DILocation(line: 610, column: 35, scope: !6239)
!6248 = !DILocalVariable(name: "gnt_ref", arg: 3, scope: !6239, file: !3, line: 611, type: !4276)
!6249 = !DILocation(line: 611, column: 24, scope: !6239)
!6250 = !DILocalVariable(name: "nr_grefs", arg: 4, scope: !6239, file: !3, line: 612, type: !11)
!6251 = !DILocation(line: 612, column: 24, scope: !6239)
!6252 = !DILocalVariable(name: "vaddr", arg: 5, scope: !6239, file: !3, line: 613, type: !1389)
!6253 = !DILocation(line: 613, column: 18, scope: !6239)
!6254 = !DILocalVariable(name: "node", scope: !6239, file: !3, line: 615, type: !171)
!6255 = !DILocation(line: 615, column: 26, scope: !6239)
!6256 = !DILocation(line: 615, column: 33, scope: !6239)
!6257 = !DILocation(line: 615, column: 39, scope: !6239)
!6258 = !DILocalVariable(name: "err", scope: !6239, file: !3, line: 616, type: !159)
!6259 = !DILocation(line: 616, column: 6, scope: !6239)
!6260 = !DILocalVariable(name: "addr", scope: !6239, file: !3, line: 617, type: !163)
!6261 = !DILocation(line: 617, column: 8, scope: !6239)
!6262 = !DILocalVariable(name: "leaked", scope: !6239, file: !3, line: 618, type: !384)
!6263 = !DILocation(line: 618, column: 7, scope: !6239)
!6264 = !DILocalVariable(name: "nr_pages", scope: !6239, file: !3, line: 619, type: !11)
!6265 = !DILocation(line: 619, column: 15, scope: !6239)
!6266 = !DILocation(line: 619, column: 26, scope: !6239)
!6267 = !DILocation(line: 621, column: 36, scope: !6239)
!6268 = !DILocation(line: 621, column: 46, scope: !6239)
!6269 = !DILocation(line: 621, column: 52, scope: !6239)
!6270 = !DILocation(line: 621, column: 56, scope: !6239)
!6271 = !DILocation(line: 621, column: 8, scope: !6239)
!6272 = !DILocation(line: 621, column: 6, scope: !6239)
!6273 = !DILocation(line: 622, column: 6, scope: !6274)
!6274 = distinct !DILexicalBlock(scope: !6239, file: !3, line: 622, column: 6)
!6275 = !DILocation(line: 622, column: 6, scope: !6239)
!6276 = !DILocation(line: 623, column: 3, scope: !6274)
!6277 = !DILocation(line: 625, column: 23, scope: !6239)
!6278 = !DILocation(line: 625, column: 29, scope: !6239)
!6279 = !DILocation(line: 625, column: 33, scope: !6239)
!6280 = !DILocation(line: 625, column: 40, scope: !6239)
!6281 = !DILocation(line: 627, column: 9, scope: !6239)
!6282 = !DILocation(line: 625, column: 2, scope: !6239)
!6283 = !DILocation(line: 629, column: 26, scope: !6239)
!6284 = !DILocation(line: 629, column: 31, scope: !6239)
!6285 = !DILocation(line: 629, column: 40, scope: !6239)
!6286 = !DILocation(line: 629, column: 50, scope: !6239)
!6287 = !DILocation(line: 629, column: 56, scope: !6239)
!6288 = !DILocation(line: 630, column: 5, scope: !6239)
!6289 = !DILocation(line: 629, column: 8, scope: !6239)
!6290 = !DILocation(line: 629, column: 6, scope: !6239)
!6291 = !DILocation(line: 631, column: 21, scope: !6239)
!6292 = !DILocation(line: 631, column: 2, scope: !6239)
!6293 = !DILocation(line: 631, column: 8, scope: !6239)
!6294 = !DILocation(line: 631, column: 19, scope: !6239)
!6295 = !DILocation(line: 633, column: 6, scope: !6296)
!6296 = distinct !DILexicalBlock(scope: !6239, file: !3, line: 633, column: 6)
!6297 = !DILocation(line: 633, column: 6, scope: !6239)
!6298 = !DILocation(line: 634, column: 3, scope: !6296)
!6299 = !DILocation(line: 636, column: 14, scope: !6239)
!6300 = !DILocation(line: 636, column: 20, scope: !6239)
!6301 = !DILocation(line: 636, column: 24, scope: !6239)
!6302 = !DILocation(line: 636, column: 31, scope: !6239)
!6303 = !DILocation(line: 637, column: 7, scope: !6239)
!6304 = !DILocation(line: 636, column: 9, scope: !6239)
!6305 = !DILocation(line: 636, column: 7, scope: !6239)
!6306 = !DILocation(line: 638, column: 7, scope: !6307)
!6307 = distinct !DILexicalBlock(scope: !6239, file: !3, line: 638, column: 6)
!6308 = !DILocation(line: 638, column: 6, scope: !6239)
!6309 = !DILocation(line: 639, column: 7, scope: !6310)
!6310 = distinct !DILexicalBlock(scope: !6307, file: !3, line: 638, column: 13)
!6311 = !DILocation(line: 640, column: 3, scope: !6310)
!6312 = !DILocation(line: 643, column: 19, scope: !6239)
!6313 = !DILocation(line: 643, column: 2, scope: !6239)
!6314 = !DILocation(line: 643, column: 8, scope: !6239)
!6315 = !DILocation(line: 643, column: 12, scope: !6239)
!6316 = !DILocation(line: 643, column: 17, scope: !6239)
!6317 = !DILocation(line: 354, column: 2, scope: !5602, inlinedAt: !6243)
!6318 = !DILocation(line: 354, column: 2, scope: !5605, inlinedAt: !6243)
!6319 = !DILocation(line: 646, column: 12, scope: !6239)
!6320 = !DILocation(line: 646, column: 18, scope: !6239)
!6321 = !DILocation(line: 646, column: 2, scope: !6239)
!6322 = !DILocation(line: 394, column: 2, scope: !5610, inlinedAt: !6241)
!6323 = !DILocation(line: 394, column: 2, scope: !5613, inlinedAt: !6241)
!6324 = !DILocation(line: 649, column: 11, scope: !6239)
!6325 = !DILocation(line: 649, column: 3, scope: !6239)
!6326 = !DILocation(line: 649, column: 9, scope: !6239)
!6327 = !DILocation(line: 650, column: 2, scope: !6239)
!6328 = !DILocation(line: 650, column: 8, scope: !6239)
!6329 = !DILocation(line: 650, column: 13, scope: !6239)
!6330 = !DILocation(line: 652, column: 2, scope: !6239)
!6331 = !DILabel(scope: !6239, name: "out_xenbus_unmap_ring", file: !3, line: 654)
!6332 = !DILocation(line: 654, column: 2, scope: !6239)
!6333 = !DILocation(line: 655, column: 7, scope: !6334)
!6334 = distinct !DILexicalBlock(scope: !6239, file: !3, line: 655, column: 6)
!6335 = !DILocation(line: 655, column: 6, scope: !6239)
!6336 = !DILocation(line: 656, column: 21, scope: !6334)
!6337 = !DILocation(line: 656, column: 26, scope: !6334)
!6338 = !DILocation(line: 656, column: 32, scope: !6334)
!6339 = !DILocation(line: 656, column: 41, scope: !6334)
!6340 = !DILocation(line: 656, column: 51, scope: !6334)
!6341 = !DILocation(line: 656, column: 57, scope: !6334)
!6342 = !DILocation(line: 656, column: 3, scope: !6334)
!6343 = !DILocation(line: 658, column: 3, scope: !6334)
!6344 = !DILabel(scope: !6239, name: "out_free_ballooned_pages", file: !3, line: 660)
!6345 = !DILocation(line: 660, column: 2, scope: !6239)
!6346 = !DILocation(line: 661, column: 7, scope: !6347)
!6347 = distinct !DILexicalBlock(scope: !6239, file: !3, line: 661, column: 6)
!6348 = !DILocation(line: 661, column: 6, scope: !6239)
!6349 = !DILocation(line: 662, column: 30, scope: !6347)
!6350 = !DILocation(line: 662, column: 40, scope: !6347)
!6351 = !DILocation(line: 662, column: 46, scope: !6347)
!6352 = !DILocation(line: 662, column: 50, scope: !6347)
!6353 = !DILocation(line: 662, column: 3, scope: !6347)
!6354 = !DILabel(scope: !6239, name: "out_err", file: !3, line: 663)
!6355 = !DILocation(line: 663, column: 2, scope: !6239)
!6356 = !DILocation(line: 664, column: 9, scope: !6239)
!6357 = !DILocation(line: 664, column: 2, scope: !6239)
!6358 = !DILocation(line: 665, column: 1, scope: !6239)
!6359 = distinct !DISubprogram(name: "xenbus_unmap_ring_hvm", scope: !3, file: !3, line: 825, type: !4279, scopeLine: 826, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !319)
!6360 = !DILocation(line: 392, column: 53, scope: !5532, inlinedAt: !6361)
!6361 = distinct !DILocation(line: 845, column: 2, scope: !6359)
!6362 = !DILocation(line: 352, column: 51, scope: !5539, inlinedAt: !6363)
!6363 = distinct !DILocation(line: 835, column: 2, scope: !6359)
!6364 = !DILocalVariable(name: "dev", arg: 1, scope: !6359, file: !3, line: 825, type: !3086)
!6365 = !DILocation(line: 825, column: 56, scope: !6359)
!6366 = !DILocalVariable(name: "vaddr", arg: 2, scope: !6359, file: !3, line: 825, type: !163)
!6367 = !DILocation(line: 825, column: 67, scope: !6359)
!6368 = !DILocalVariable(name: "rv", scope: !6359, file: !3, line: 827, type: !159)
!6369 = !DILocation(line: 827, column: 6, scope: !6359)
!6370 = !DILocalVariable(name: "node", scope: !6359, file: !3, line: 828, type: !171)
!6371 = !DILocation(line: 828, column: 26, scope: !6359)
!6372 = !DILocalVariable(name: "addr", scope: !6359, file: !3, line: 829, type: !163)
!6373 = !DILocation(line: 829, column: 8, scope: !6359)
!6374 = !DILocalVariable(name: "info", scope: !6359, file: !3, line: 830, type: !6375)
!6375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unmap_ring_hvm", file: !3, line: 807, size: 1088, elements: !6376)
!6376 = !{!6377, !6378}
!6377 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !6375, file: !3, line: 809, baseType: !11, size: 32)
!6378 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !6375, file: !3, line: 810, baseType: !3068, size: 1024, offset: 64)
!6379 = !DILocation(line: 830, column: 24, scope: !6359)
!6380 = !DILocalVariable(name: "nr_pages", scope: !6359, file: !3, line: 833, type: !11)
!6381 = !DILocation(line: 833, column: 15, scope: !6359)
!6382 = !DILocation(line: 354, column: 2, scope: !5602, inlinedAt: !6363)
!6383 = !DILocation(line: 354, column: 2, scope: !5605, inlinedAt: !6363)
!6384 = !DILocalVariable(name: "__mptr", scope: !6385, file: !3, line: 836, type: !163)
!6385 = distinct !DILexicalBlock(scope: !6386, file: !3, line: 836, column: 2)
!6386 = distinct !DILexicalBlock(scope: !6359, file: !3, line: 836, column: 2)
!6387 = !DILocation(line: 836, column: 2, scope: !6385)
!6388 = !DILocation(line: 836, column: 2, scope: !6389)
!6389 = distinct !DILexicalBlock(scope: !6385, file: !3, line: 836, column: 2)
!6390 = !DILocation(line: 836, column: 2, scope: !6386)
!6391 = !DILocation(line: 836, column: 2, scope: !6392)
!6392 = distinct !DILexicalBlock(scope: !6386, file: !3, line: 836, column: 2)
!6393 = !DILocation(line: 837, column: 10, scope: !6394)
!6394 = distinct !DILexicalBlock(scope: !6392, file: !3, line: 836, column: 56)
!6395 = !DILocation(line: 837, column: 16, scope: !6394)
!6396 = !DILocation(line: 837, column: 20, scope: !6394)
!6397 = !DILocation(line: 837, column: 8, scope: !6394)
!6398 = !DILocation(line: 838, column: 7, scope: !6399)
!6399 = distinct !DILexicalBlock(scope: !6394, file: !3, line: 838, column: 7)
!6400 = !DILocation(line: 838, column: 15, scope: !6399)
!6401 = !DILocation(line: 838, column: 12, scope: !6399)
!6402 = !DILocation(line: 838, column: 7, scope: !6394)
!6403 = !DILocation(line: 839, column: 14, scope: !6404)
!6404 = distinct !DILexicalBlock(scope: !6399, file: !3, line: 838, column: 22)
!6405 = !DILocation(line: 839, column: 20, scope: !6404)
!6406 = !DILocation(line: 839, column: 4, scope: !6404)
!6407 = !DILocation(line: 840, column: 4, scope: !6404)
!6408 = !DILocation(line: 842, column: 2, scope: !6394)
!6409 = !DILocalVariable(name: "__mptr", scope: !6410, file: !3, line: 836, type: !163)
!6410 = distinct !DILexicalBlock(scope: !6392, file: !3, line: 836, column: 2)
!6411 = !DILocation(line: 836, column: 2, scope: !6410)
!6412 = !DILocation(line: 836, column: 2, scope: !6413)
!6413 = distinct !DILexicalBlock(scope: !6410, file: !3, line: 836, column: 2)
!6414 = distinct !{!6414, !6390, !6415}
!6415 = !DILocation(line: 842, column: 2, scope: !6386)
!6416 = !DILocation(line: 843, column: 14, scope: !6359)
!6417 = !DILocation(line: 843, column: 7, scope: !6359)
!6418 = !DILocation(line: 843, column: 2, scope: !6359)
!6419 = !DILabel(scope: !6359, name: "found", file: !3, line: 844)
!6420 = !DILocation(line: 844, column: 2, scope: !6359)
!6421 = !DILocation(line: 394, column: 2, scope: !5610, inlinedAt: !6361)
!6422 = !DILocation(line: 394, column: 2, scope: !5613, inlinedAt: !6361)
!6423 = !DILocation(line: 847, column: 7, scope: !6424)
!6424 = distinct !DILexicalBlock(scope: !6359, file: !3, line: 847, column: 6)
!6425 = !DILocation(line: 847, column: 6, scope: !6359)
!6426 = !DILocation(line: 848, column: 20, scope: !6427)
!6427 = distinct !DILexicalBlock(scope: !6424, file: !3, line: 847, column: 13)
!6428 = !DILocation(line: 849, column: 46, scope: !6427)
!6429 = !DILocation(line: 848, column: 3, scope: !6427)
!6430 = !DILocation(line: 850, column: 3, scope: !6427)
!6431 = !DILocation(line: 853, column: 13, scope: !6359)
!6432 = !DILocation(line: 853, column: 11, scope: !6359)
!6433 = !DILocation(line: 855, column: 23, scope: !6359)
!6434 = !DILocation(line: 855, column: 29, scope: !6359)
!6435 = !DILocation(line: 855, column: 33, scope: !6359)
!6436 = !DILocation(line: 855, column: 40, scope: !6359)
!6437 = !DILocation(line: 855, column: 46, scope: !6359)
!6438 = !DILocation(line: 857, column: 9, scope: !6359)
!6439 = !DILocation(line: 855, column: 2, scope: !6359)
!6440 = !DILocation(line: 859, column: 25, scope: !6359)
!6441 = !DILocation(line: 859, column: 30, scope: !6359)
!6442 = !DILocation(line: 859, column: 36, scope: !6359)
!6443 = !DILocation(line: 859, column: 45, scope: !6359)
!6444 = !DILocation(line: 859, column: 51, scope: !6359)
!6445 = !DILocation(line: 860, column: 16, scope: !6359)
!6446 = !DILocation(line: 860, column: 11, scope: !6359)
!6447 = !DILocation(line: 859, column: 7, scope: !6359)
!6448 = !DILocation(line: 859, column: 5, scope: !6359)
!6449 = !DILocation(line: 861, column: 7, scope: !6450)
!6450 = distinct !DILexicalBlock(scope: !6359, file: !3, line: 861, column: 6)
!6451 = !DILocation(line: 861, column: 6, scope: !6359)
!6452 = !DILocation(line: 862, column: 10, scope: !6453)
!6453 = distinct !DILexicalBlock(scope: !6450, file: !3, line: 861, column: 11)
!6454 = !DILocation(line: 862, column: 3, scope: !6453)
!6455 = !DILocation(line: 863, column: 30, scope: !6453)
!6456 = !DILocation(line: 863, column: 40, scope: !6453)
!6457 = !DILocation(line: 863, column: 46, scope: !6453)
!6458 = !DILocation(line: 863, column: 50, scope: !6453)
!6459 = !DILocation(line: 863, column: 3, scope: !6453)
!6460 = !DILocation(line: 864, column: 2, scope: !6453)
!6461 = !DILocalVariable(name: "__ret_warn_on", scope: !6462, file: !3, line: 866, type: !159)
!6462 = distinct !DILexicalBlock(scope: !6450, file: !3, line: 866, column: 3)
!6463 = !DILocation(line: 866, column: 3, scope: !6462)
!6464 = !DILocation(line: 866, column: 3, scope: !6465)
!6465 = distinct !DILexicalBlock(scope: !6462, file: !3, line: 866, column: 3)
!6466 = !DILocation(line: 866, column: 3, scope: !6467)
!6467 = distinct !DILexicalBlock(scope: !6465, file: !3, line: 866, column: 3)
!6468 = !DILocation(line: 866, column: 3, scope: !6469)
!6469 = distinct !DILexicalBlock(scope: !6467, file: !3, line: 866, column: 3)
!6470 = !DILocation(line: 866, column: 3, scope: !6471)
!6471 = distinct !DILexicalBlock(scope: !6467, file: !3, line: 866, column: 3)
!6472 = !DILocation(line: 866, column: 3, scope: !6473)
!6473 = distinct !DILexicalBlock(scope: !6471, file: !3, line: 866, column: 3)
!6474 = !DILocation(line: 866, column: 3, scope: !6475)
!6475 = distinct !DILexicalBlock(scope: !6471, file: !3, line: 866, column: 3)
!6476 = !{i32 -2141509319, i32 -2141509290, i32 -2141509244, i32 -2141509186, i32 -2141509132, i32 -2141509078, i32 -2141509023, i32 -2141508992}
!6477 = !DILocation(line: 866, column: 3, scope: !6478)
!6478 = distinct !DILexicalBlock(scope: !6471, file: !3, line: 866, column: 3)
!6479 = !{i32 -2141508565, i32 -2141508558, i32 -2141508506, i32 -2141508475, i32 -2141508445}
!6480 = !DILocation(line: 866, column: 3, scope: !6481)
!6481 = distinct !DILexicalBlock(scope: !6471, file: !3, line: 866, column: 3)
!6482 = !DILocation(line: 866, column: 3, scope: !6483)
!6483 = distinct !DILexicalBlock(scope: !6467, file: !3, line: 866, column: 3)
!6484 = !DILocation(line: 868, column: 8, scope: !6359)
!6485 = !DILocation(line: 868, column: 2, scope: !6359)
!6486 = !DILocation(line: 869, column: 9, scope: !6359)
!6487 = !DILocation(line: 869, column: 2, scope: !6359)
!6488 = !DILocation(line: 870, column: 1, scope: !6359)
!6489 = distinct !DISubprogram(name: "xenbus_map_ring_setup_grant_hvm", scope: !3, file: !3, line: 595, type: !6490, scopeLine: 599, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !319)
!6490 = !DISubroutineType(types: !6491)
!6491 = !{null, !162, !11, !11, !163}
!6492 = !DILocalVariable(name: "gfn", arg: 1, scope: !6489, file: !3, line: 595, type: !162)
!6493 = !DILocation(line: 595, column: 59, scope: !6489)
!6494 = !DILocalVariable(name: "goffset", arg: 2, scope: !6489, file: !3, line: 596, type: !11)
!6495 = !DILocation(line: 596, column: 23, scope: !6489)
!6496 = !DILocalVariable(name: "len", arg: 3, scope: !6489, file: !3, line: 597, type: !11)
!6497 = !DILocation(line: 597, column: 23, scope: !6489)
!6498 = !DILocalVariable(name: "data", arg: 4, scope: !6489, file: !3, line: 598, type: !163)
!6499 = !DILocation(line: 598, column: 16, scope: !6489)
!6500 = !DILocalVariable(name: "info", scope: !6489, file: !3, line: 600, type: !4243)
!6501 = !DILocation(line: 600, column: 26, scope: !6489)
!6502 = !DILocation(line: 600, column: 33, scope: !6489)
!6503 = !DILocalVariable(name: "vaddr", scope: !6489, file: !3, line: 601, type: !162)
!6504 = !DILocation(line: 601, column: 16, scope: !6489)
!6505 = !DILocation(line: 601, column: 39, scope: !6489)
!6506 = !DILocation(line: 601, column: 24, scope: !6489)
!6507 = !DILocation(line: 603, column: 32, scope: !6489)
!6508 = !DILocation(line: 603, column: 2, scope: !6489)
!6509 = !DILocation(line: 603, column: 8, scope: !6489)
!6510 = !DILocation(line: 603, column: 19, scope: !6489)
!6511 = !DILocation(line: 603, column: 25, scope: !6489)
!6512 = !DILocation(line: 603, column: 30, scope: !6489)
!6513 = !DILocation(line: 604, column: 27, scope: !6489)
!6514 = !DILocation(line: 604, column: 2, scope: !6489)
!6515 = !DILocation(line: 604, column: 8, scope: !6489)
!6516 = !DILocation(line: 604, column: 14, scope: !6489)
!6517 = !DILocation(line: 604, column: 20, scope: !6489)
!6518 = !DILocation(line: 604, column: 25, scope: !6489)
!6519 = !DILocation(line: 606, column: 2, scope: !6489)
!6520 = !DILocation(line: 606, column: 8, scope: !6489)
!6521 = !DILocation(line: 606, column: 11, scope: !6489)
!6522 = !DILocation(line: 607, column: 1, scope: !6489)
!6523 = distinct !DISubprogram(name: "xenbus_unmap_ring", scope: !3, file: !3, line: 564, type: !6524, scopeLine: 566, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !319)
!6524 = !DISubroutineType(types: !6525)
!6525 = !{!159, !3086, !5843, !11, !3839}
!6526 = !DILocalVariable(name: "dev", arg: 1, scope: !6523, file: !3, line: 564, type: !3086)
!6527 = !DILocation(line: 564, column: 52, scope: !6523)
!6528 = !DILocalVariable(name: "handles", arg: 2, scope: !6523, file: !3, line: 564, type: !5843)
!6529 = !DILocation(line: 564, column: 73, scope: !6523)
!6530 = !DILocalVariable(name: "nr_handles", arg: 3, scope: !6523, file: !3, line: 565, type: !11)
!6531 = !DILocation(line: 565, column: 22, scope: !6523)
!6532 = !DILocalVariable(name: "vaddrs", arg: 4, scope: !6523, file: !3, line: 565, type: !3839)
!6533 = !DILocation(line: 565, column: 49, scope: !6523)
!6534 = !DILocalVariable(name: "unmap", scope: !6523, file: !3, line: 567, type: !4268)
!6535 = !DILocation(line: 567, column: 32, scope: !6523)
!6536 = !DILocalVariable(name: "i", scope: !6523, file: !3, line: 568, type: !159)
!6537 = !DILocation(line: 568, column: 6, scope: !6523)
!6538 = !DILocalVariable(name: "err", scope: !6523, file: !3, line: 569, type: !159)
!6539 = !DILocation(line: 569, column: 6, scope: !6523)
!6540 = !DILocation(line: 571, column: 6, scope: !6541)
!6541 = distinct !DILexicalBlock(scope: !6523, file: !3, line: 571, column: 6)
!6542 = !DILocation(line: 571, column: 17, scope: !6541)
!6543 = !DILocation(line: 571, column: 6, scope: !6523)
!6544 = !DILocation(line: 572, column: 3, scope: !6541)
!6545 = !DILocation(line: 574, column: 9, scope: !6546)
!6546 = distinct !DILexicalBlock(scope: !6523, file: !3, line: 574, column: 2)
!6547 = !DILocation(line: 574, column: 7, scope: !6546)
!6548 = !DILocation(line: 574, column: 14, scope: !6549)
!6549 = distinct !DILexicalBlock(scope: !6546, file: !3, line: 574, column: 2)
!6550 = !DILocation(line: 574, column: 18, scope: !6549)
!6551 = !DILocation(line: 574, column: 16, scope: !6549)
!6552 = !DILocation(line: 574, column: 2, scope: !6546)
!6553 = !DILocation(line: 575, column: 30, scope: !6549)
!6554 = !DILocation(line: 575, column: 24, scope: !6549)
!6555 = !DILocation(line: 575, column: 34, scope: !6549)
!6556 = !DILocation(line: 575, column: 41, scope: !6549)
!6557 = !DILocation(line: 576, column: 26, scope: !6549)
!6558 = !DILocation(line: 576, column: 34, scope: !6549)
!6559 = !DILocation(line: 575, column: 3, scope: !6549)
!6560 = !DILocation(line: 574, column: 31, scope: !6549)
!6561 = !DILocation(line: 574, column: 2, scope: !6549)
!6562 = distinct !{!6562, !6552, !6563}
!6563 = !DILocation(line: 576, column: 36, scope: !6546)
!6564 = !DILocation(line: 578, column: 58, scope: !6565)
!6565 = distinct !DILexicalBlock(scope: !6523, file: !3, line: 578, column: 6)
!6566 = !DILocation(line: 578, column: 65, scope: !6565)
!6567 = !DILocation(line: 578, column: 6, scope: !6565)
!6568 = !DILocation(line: 578, column: 6, scope: !6523)
!6569 = !DILocation(line: 579, column: 3, scope: !6565)
!6570 = !DILocation(line: 579, column: 3, scope: !6571)
!6571 = distinct !DILexicalBlock(scope: !6565, file: !3, line: 579, column: 3)
!6572 = !DILocation(line: 579, column: 3, scope: !6573)
!6573 = distinct !DILexicalBlock(scope: !6571, file: !3, line: 579, column: 3)
!6574 = !DILocation(line: 579, column: 3, scope: !6575)
!6575 = distinct !DILexicalBlock(scope: !6571, file: !3, line: 579, column: 3)
!6576 = !{i32 -2141523358, i32 -2141523329, i32 -2141523283, i32 -2141523225, i32 -2141523171, i32 -2141523117, i32 -2141523062, i32 -2141523031}
!6577 = !DILocation(line: 579, column: 3, scope: !6578)
!6578 = distinct !DILexicalBlock(scope: !6579, file: !3, line: 579, column: 3)
!6579 = distinct !DILexicalBlock(scope: !6571, file: !3, line: 579, column: 3)
!6580 = !{i32 -2141522574, i32 -2141522567, i32 -2141522513, i32 -2141522482, i32 -2141522452}
!6581 = !DILocation(line: 579, column: 3, scope: !6579)
!6582 = !DILocation(line: 581, column: 6, scope: !6523)
!6583 = !DILocation(line: 582, column: 9, scope: !6584)
!6584 = distinct !DILexicalBlock(scope: !6523, file: !3, line: 582, column: 2)
!6585 = !DILocation(line: 582, column: 7, scope: !6584)
!6586 = !DILocation(line: 582, column: 14, scope: !6587)
!6587 = distinct !DILexicalBlock(scope: !6584, file: !3, line: 582, column: 2)
!6588 = !DILocation(line: 582, column: 18, scope: !6587)
!6589 = !DILocation(line: 582, column: 16, scope: !6587)
!6590 = !DILocation(line: 582, column: 2, scope: !6584)
!6591 = !DILocation(line: 583, column: 13, scope: !6592)
!6592 = distinct !DILexicalBlock(scope: !6593, file: !3, line: 583, column: 7)
!6593 = distinct !DILexicalBlock(scope: !6587, file: !3, line: 582, column: 35)
!6594 = !DILocation(line: 583, column: 7, scope: !6592)
!6595 = !DILocation(line: 583, column: 16, scope: !6592)
!6596 = !DILocation(line: 583, column: 23, scope: !6592)
!6597 = !DILocation(line: 583, column: 7, scope: !6593)
!6598 = !DILocation(line: 584, column: 21, scope: !6599)
!6599 = distinct !DILexicalBlock(scope: !6592, file: !3, line: 583, column: 38)
!6600 = !DILocation(line: 584, column: 32, scope: !6599)
!6601 = !DILocation(line: 584, column: 26, scope: !6599)
!6602 = !DILocation(line: 584, column: 35, scope: !6599)
!6603 = !DILocation(line: 586, column: 7, scope: !6599)
!6604 = !DILocation(line: 586, column: 15, scope: !6599)
!6605 = !DILocation(line: 586, column: 25, scope: !6599)
!6606 = !DILocation(line: 586, column: 19, scope: !6599)
!6607 = !DILocation(line: 586, column: 28, scope: !6599)
!6608 = !DILocation(line: 584, column: 4, scope: !6599)
!6609 = !DILocation(line: 587, column: 16, scope: !6599)
!6610 = !DILocation(line: 587, column: 10, scope: !6599)
!6611 = !DILocation(line: 587, column: 19, scope: !6599)
!6612 = !DILocation(line: 587, column: 8, scope: !6599)
!6613 = !DILocation(line: 588, column: 4, scope: !6599)
!6614 = !DILocation(line: 590, column: 2, scope: !6593)
!6615 = !DILocation(line: 582, column: 31, scope: !6587)
!6616 = !DILocation(line: 582, column: 2, scope: !6587)
!6617 = distinct !{!6617, !6590, !6618}
!6618 = !DILocation(line: 590, column: 2, scope: !6584)
!6619 = !DILocation(line: 592, column: 9, scope: !6523)
!6620 = !DILocation(line: 592, column: 2, scope: !6523)
!6621 = !DILocation(line: 593, column: 1, scope: !6523)
!6622 = distinct !DISubprogram(name: "gfn_to_pfn", scope: !4958, file: !4958, line: 259, type: !4959, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !319)
!6623 = !DILocalVariable(name: "gfn", arg: 1, scope: !6622, file: !4958, line: 259, type: !162)
!6624 = !DILocation(line: 259, column: 54, scope: !6622)
!6625 = !DILocation(line: 261, column: 6, scope: !6626)
!6626 = distinct !DILexicalBlock(scope: !6622, file: !4958, line: 261, column: 6)
!6627 = !DILocation(line: 261, column: 6, scope: !6622)
!6628 = !DILocation(line: 262, column: 10, scope: !6626)
!6629 = !DILocation(line: 262, column: 3, scope: !6626)
!6630 = !DILocation(line: 264, column: 21, scope: !6626)
!6631 = !DILocation(line: 264, column: 10, scope: !6626)
!6632 = !DILocation(line: 264, column: 3, scope: !6626)
!6633 = !DILocation(line: 265, column: 1, scope: !6622)
!6634 = distinct !DISubprogram(name: "mfn_to_pfn", scope: !4958, file: !4958, line: 212, type: !4959, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !319)
!6635 = !DILocalVariable(name: "mfn", arg: 1, scope: !6634, file: !4958, line: 212, type: !162)
!6636 = !DILocation(line: 212, column: 54, scope: !6634)
!6637 = !DILocalVariable(name: "pfn", scope: !6634, file: !4958, line: 214, type: !162)
!6638 = !DILocation(line: 214, column: 16, scope: !6634)
!6639 = !DILocation(line: 221, column: 6, scope: !6640)
!6640 = distinct !DILexicalBlock(scope: !6634, file: !4958, line: 221, column: 6)
!6641 = !DILocation(line: 221, column: 6, scope: !6634)
!6642 = !DILocation(line: 222, column: 10, scope: !6640)
!6643 = !DILocation(line: 222, column: 3, scope: !6640)
!6644 = !DILocation(line: 224, column: 32, scope: !6634)
!6645 = !DILocation(line: 224, column: 8, scope: !6634)
!6646 = !DILocation(line: 224, column: 6, scope: !6634)
!6647 = !DILocation(line: 225, column: 19, scope: !6648)
!6648 = distinct !DILexicalBlock(scope: !6634, file: !4958, line: 225, column: 6)
!6649 = !DILocation(line: 225, column: 6, scope: !6648)
!6650 = !DILocation(line: 225, column: 27, scope: !6648)
!6651 = !DILocation(line: 225, column: 24, scope: !6648)
!6652 = !DILocation(line: 225, column: 6, scope: !6634)
!6653 = !DILocation(line: 226, column: 7, scope: !6648)
!6654 = !DILocation(line: 226, column: 3, scope: !6648)
!6655 = !DILocation(line: 232, column: 6, scope: !6656)
!6656 = distinct !DILexicalBlock(scope: !6634, file: !4958, line: 232, column: 6)
!6657 = !DILocation(line: 232, column: 10, scope: !6656)
!6658 = !DILocation(line: 232, column: 16, scope: !6656)
!6659 = !DILocation(line: 232, column: 32, scope: !6656)
!6660 = !DILocation(line: 232, column: 19, scope: !6656)
!6661 = !DILocation(line: 232, column: 40, scope: !6656)
!6662 = !DILocation(line: 232, column: 37, scope: !6656)
!6663 = !DILocation(line: 232, column: 6, scope: !6634)
!6664 = !DILocation(line: 233, column: 9, scope: !6656)
!6665 = !DILocation(line: 233, column: 7, scope: !6656)
!6666 = !DILocation(line: 233, column: 3, scope: !6656)
!6667 = !DILocation(line: 235, column: 9, scope: !6634)
!6668 = !DILocation(line: 235, column: 2, scope: !6634)
!6669 = !DILocation(line: 236, column: 1, scope: !6634)
!6670 = distinct !DISubprogram(name: "mfn_to_pfn_no_overrides", scope: !4958, file: !4958, line: 192, type: !4959, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !319)
!6671 = !DILocalVariable(name: "mfn", arg: 1, scope: !6670, file: !4958, line: 192, type: !162)
!6672 = !DILocation(line: 192, column: 67, scope: !6670)
!6673 = !DILocalVariable(name: "pfn", scope: !6670, file: !4958, line: 194, type: !162)
!6674 = !DILocation(line: 194, column: 16, scope: !6670)
!6675 = !DILocalVariable(name: "ret", scope: !6670, file: !4958, line: 195, type: !159)
!6676 = !DILocation(line: 195, column: 6, scope: !6670)
!6677 = !DILocation(line: 197, column: 6, scope: !6678)
!6678 = distinct !DILexicalBlock(scope: !6670, file: !4958, line: 197, column: 6)
!6679 = !DILocation(line: 197, column: 6, scope: !6670)
!6680 = !DILocation(line: 198, column: 3, scope: !6678)
!6681 = !DILocation(line: 205, column: 29, scope: !6670)
!6682 = !DILocation(line: 205, column: 53, scope: !6670)
!6683 = !DILocation(line: 205, column: 8, scope: !6670)
!6684 = !DILocation(line: 205, column: 6, scope: !6670)
!6685 = !DILocation(line: 206, column: 6, scope: !6686)
!6686 = distinct !DILexicalBlock(scope: !6670, file: !4958, line: 206, column: 6)
!6687 = !DILocation(line: 206, column: 10, scope: !6686)
!6688 = !DILocation(line: 206, column: 6, scope: !6670)
!6689 = !DILocation(line: 207, column: 3, scope: !6686)
!6690 = !DILocation(line: 209, column: 9, scope: !6670)
!6691 = !DILocation(line: 209, column: 2, scope: !6670)
!6692 = !DILocation(line: 210, column: 1, scope: !6670)
!6693 = distinct !DISubprogram(name: "xen_safe_read_ulong", scope: !4958, file: !4958, line: 110, type: !6694, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !319)
!6694 = !DISubroutineType(types: !6695)
!6695 = !{!159, !6696, !3839}
!6696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!6697 = !DILocalVariable(name: "addr", arg: 1, scope: !6693, file: !4958, line: 110, type: !6696)
!6698 = !DILocation(line: 110, column: 60, scope: !6693)
!6699 = !DILocalVariable(name: "val", arg: 2, scope: !6693, file: !4958, line: 111, type: !3839)
!6700 = !DILocation(line: 111, column: 26, scope: !6693)
!6701 = !DILocalVariable(name: "ret", scope: !6693, file: !4958, line: 113, type: !159)
!6702 = !DILocation(line: 113, column: 6, scope: !6693)
!6703 = !DILocalVariable(name: "rval", scope: !6693, file: !4958, line: 114, type: !162)
!6704 = !DILocation(line: 114, column: 16, scope: !6693)
!6705 = !DILocation(line: 116, column: 2, scope: !6693)
!6706 = !DILocation(line: 124, column: 22, scope: !6693)
!6707 = !{i32 4844613, i32 4844648, i32 4844662, i32 4844697, i32 4844726, i32 4844747, i32 -2142286559, i32 -2142286515, i32 -2142286492, i32 -2142286459, i32 -2142286428, i32 -2142286372}
!6708 = !DILocation(line: 125, column: 9, scope: !6693)
!6709 = !DILocation(line: 125, column: 3, scope: !6693)
!6710 = !DILocation(line: 125, column: 7, scope: !6693)
!6711 = !DILocation(line: 127, column: 9, scope: !6693)
!6712 = !DILocation(line: 127, column: 2, scope: !6693)
!6713 = distinct !DISubprogram(name: "xenbus_unmap_ring_setup_grant_hvm", scope: !3, file: !3, line: 813, type: !6490, scopeLine: 817, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !319)
!6714 = !DILocalVariable(name: "gfn", arg: 1, scope: !6713, file: !3, line: 813, type: !162)
!6715 = !DILocation(line: 813, column: 61, scope: !6713)
!6716 = !DILocalVariable(name: "goffset", arg: 2, scope: !6713, file: !3, line: 814, type: !11)
!6717 = !DILocation(line: 814, column: 25, scope: !6713)
!6718 = !DILocalVariable(name: "len", arg: 3, scope: !6713, file: !3, line: 815, type: !11)
!6719 = !DILocation(line: 815, column: 25, scope: !6713)
!6720 = !DILocalVariable(name: "data", arg: 4, scope: !6713, file: !3, line: 816, type: !163)
!6721 = !DILocation(line: 816, column: 18, scope: !6713)
!6722 = !DILocalVariable(name: "info", scope: !6713, file: !3, line: 818, type: !6723)
!6723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6375, size: 64)
!6724 = !DILocation(line: 818, column: 25, scope: !6713)
!6725 = !DILocation(line: 818, column: 32, scope: !6713)
!6726 = !DILocation(line: 820, column: 42, scope: !6713)
!6727 = !DILocation(line: 820, column: 27, scope: !6713)
!6728 = !DILocation(line: 820, column: 2, scope: !6713)
!6729 = !DILocation(line: 820, column: 8, scope: !6713)
!6730 = !DILocation(line: 820, column: 14, scope: !6713)
!6731 = !DILocation(line: 820, column: 20, scope: !6713)
!6732 = !DILocation(line: 820, column: 25, scope: !6713)
!6733 = !DILocation(line: 822, column: 2, scope: !6713)
!6734 = !DILocation(line: 822, column: 8, scope: !6713)
!6735 = !DILocation(line: 822, column: 11, scope: !6713)
!6736 = !DILocation(line: 823, column: 1, scope: !6713)
