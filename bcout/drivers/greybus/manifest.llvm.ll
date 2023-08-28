; ModuleID = '../bcout/drivers/greybus/manifest.llvm.bc'
source_filename = "drivers/greybus/manifest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.kmem_cache = type opaque
%struct.gb_interface = type { %struct.device, %struct.gb_control*, %struct.list_head, %struct.list_head, %struct.list_head, i8, i8, i8, i32, i32, i32, i32, i32, i64, %struct.gb_host_device*, %struct.gb_module*, i64, %struct.mutex, i8, i8, i8, i8, i8, i8, i8, %struct.work_struct, %struct.completion }
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
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.gb_control = type { %struct.device, %struct.gb_interface*, %struct.gb_connection*, i8, i8, i8, i8, i8*, i8* }
%struct.gb_connection = type { %struct.gb_host_device*, %struct.gb_interface*, %struct.gb_bundle*, %struct.kref, i16, i16, %struct.list_head, %struct.list_head, i32 (%struct.gb_operation*)*, i64, %struct.mutex, %struct.spinlock, i32, %struct.list_head, [16 x i8], %struct.workqueue_struct*, %struct.atomic_t, i8*, i8 }
%struct.gb_bundle = type { %struct.device, %struct.gb_interface*, i8, i8, i8, i8, i64, %struct.greybus_descriptor_cport*, %struct.list_head, i8*, %struct.list_head }
%struct.greybus_descriptor_cport = type { i16, i8, i8 }
%struct.gb_operation = type { %struct.gb_connection*, %struct.gb_message*, %struct.gb_message*, i64, i8, i16, i32, %struct.work_struct, void (%struct.gb_operation*)*, %struct.completion, %struct.timer_list, %struct.kref, %struct.atomic_t, i32, %struct.list_head, i8* }
%struct.gb_message = type { %struct.gb_operation*, %struct.gb_operation_msg_hdr*, i8*, i64, i8*, i8* }
%struct.gb_operation_msg_hdr = type { i16, i16, i8, i8, [2 x i8] }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.gb_host_device = type { %struct.device, i32, %struct.gb_hd_driver*, %struct.list_head, %struct.list_head, %struct.ida, i64, i64, %struct.gb_svc*, [0 x i64] }
%struct.gb_hd_driver = type { i64, i32 (%struct.gb_host_device*, i32, i64)*, void (%struct.gb_host_device*, i16)*, i32 (%struct.gb_host_device*, i16, i64)*, i32 (%struct.gb_host_device*, i16)*, i32 (%struct.gb_host_device*, i16)*, i32 (%struct.gb_host_device*, i16)*, i32 (%struct.gb_host_device*, i16, i8, i32)*, i32 (%struct.gb_host_device*, i16, i64, i32)*, i32 (%struct.gb_host_device*, i16)*, i32 (%struct.gb_host_device*, i16, %struct.gb_message*, i32)*, void (%struct.gb_message*)*, i32 (%struct.gb_host_device*, i16)*, i32 (%struct.gb_host_device*, i16)*, i32 (%struct.gb_host_device*, i8*, i16, i8, i1)* }
%struct.ida = type { %struct.xarray }
%struct.gb_svc = type { %struct.device, %struct.gb_host_device*, %struct.gb_connection*, i32, %struct.ida, %struct.workqueue_struct*, i16, i8, i8, i8, %struct.gb_svc_watchdog*, i32, %struct.dentry*, %struct.svc_debugfs_pwrmon_rail* }
%struct.gb_svc_watchdog = type opaque
%struct.svc_debugfs_pwrmon_rail = type { i8, %struct.gb_svc* }
%struct.gb_module = type { %struct.device, %struct.gb_host_device*, %struct.list_head, i8, i64, i8, [0 x %struct.gb_interface*] }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.greybus_manifest = type { %struct.greybus_manifest_header, [0 x %struct.greybus_descriptor] }
%struct.greybus_manifest_header = type { i16, i8, i8 }
%struct.greybus_descriptor = type { %struct.greybus_descriptor_header, %union.anon.65 }
%struct.greybus_descriptor_header = type { i16, i8, i8 }
%union.anon.65 = type { %struct.greybus_descriptor_cport }
%struct.manifest_desc = type { %struct.list_head, i64, i8*, i32 }
%struct.greybus_descriptor_string = type { i8, i8, [0 x i8] }
%struct.greybus_descriptor_interface = type { i8, i8, i8, i8 }
%struct.greybus_descriptor_bundle = type { i8, i8, [2 x i8] }

@.str = private unnamed_addr constant [27 x i8] c"drivers/greybus/manifest.c\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"short manifest (%zu < %zu)\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"manifest size mismatch (%zu != %u)\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"manifest version too new (%u.%u > %u.%u)\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"manifest must have 1 interface descriptor (%u found)\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"excess descriptors in interface manifest\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"manifest too small (%zu < %zu)\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"descriptor too big (%zu > %zu)\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"invalid descriptor type (%u)\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"%s descriptor too small (%zu < %zu)\0A\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"%s descriptor size mismatch (want %zu got %zu)\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"interface\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"cport\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"bundle\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.17 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"manifest bundle descriptors not valid\0A\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"bundle %u cannot use control class\0A\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"invalid cport id found (%02u)\0A\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"duplicate CPort %u found\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @gb_manifest_parse(%struct.gb_interface* %intf, i8* %data, i64 %size) #0 !dbg !4057 {
entry:
  %retval = alloca i1, align 1
  %intf.addr = alloca %struct.gb_interface*, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %manifest = alloca %struct.greybus_manifest*, align 8
  %header = alloca %struct.greybus_manifest_header*, align 8
  %desc = alloca %struct.greybus_descriptor*, align 8
  %descriptor = alloca %struct.manifest_desc*, align 8
  %interface_desc = alloca %struct.manifest_desc*, align 8
  %manifest_size = alloca i16, align 2
  %found = alloca i32, align 4
  %result = alloca i8, align 1
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %desc_size = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp56 = alloca %struct.manifest_desc*, align 8
  %__mptr70 = alloca i8*, align 8
  %tmp75 = alloca %struct.manifest_desc*, align 8
  store %struct.gb_interface* %intf, %struct.gb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_interface** %intf.addr, metadata !4060, metadata !DIExpression()), !dbg !4061
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4062, metadata !DIExpression()), !dbg !4063
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4064, metadata !DIExpression()), !dbg !4065
  call void @llvm.dbg.declare(metadata %struct.greybus_manifest** %manifest, metadata !4066, metadata !DIExpression()), !dbg !4078
  call void @llvm.dbg.declare(metadata %struct.greybus_manifest_header** %header, metadata !4079, metadata !DIExpression()), !dbg !4081
  call void @llvm.dbg.declare(metadata %struct.greybus_descriptor** %desc, metadata !4082, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.declare(metadata %struct.manifest_desc** %descriptor, metadata !4084, metadata !DIExpression()), !dbg !4085
  call void @llvm.dbg.declare(metadata %struct.manifest_desc** %interface_desc, metadata !4086, metadata !DIExpression()), !dbg !4087
  store %struct.manifest_desc* null, %struct.manifest_desc** %interface_desc, align 8, !dbg !4087
  call void @llvm.dbg.declare(metadata i16* %manifest_size, metadata !4088, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.declare(metadata i32* %found, metadata !4090, metadata !DIExpression()), !dbg !4091
  store i32 0, i32* %found, align 4, !dbg !4091
  call void @llvm.dbg.declare(metadata i8* %result, metadata !4092, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4094, metadata !DIExpression()), !dbg !4097
  %0 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4097
  %manifest_descs = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %0, i32 0, i32 4, !dbg !4097
  %call = call i32 @list_empty(%struct.list_head* %manifest_descs) #8, !dbg !4097
  %tobool = icmp ne i32 %call, 0, !dbg !4097
  %lnot = xor i1 %tobool, true, !dbg !4097
  %lnot1 = xor i1 %lnot, true, !dbg !4097
  %lnot2 = xor i1 %lnot1, true, !dbg !4097
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4097
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !4097
  %1 = load i32, i32* %__ret_warn_on, align 4, !dbg !4098
  %tobool3 = icmp ne i32 %1, 0, !dbg !4098
  %lnot4 = xor i1 %tobool3, true, !dbg !4098
  %lnot6 = xor i1 %lnot4, true, !dbg !4098
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !4098
  %conv = sext i32 %lnot.ext7 to i64, !dbg !4098
  %tobool8 = icmp ne i64 %conv, 0, !dbg !4098
  br i1 %tobool8, label %if.then, label %if.end, !dbg !4097

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4098

do.body:                                          ; preds = %if.then
  br label %do.body9, !dbg !4100

do.body9:                                         ; preds = %do.body
  br label %do.end, !dbg !4102

do.end:                                           ; preds = %do.body9
  br label %do.body10, !dbg !4100

do.body10:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 464, i32 2305, i64 12) #9, !dbg !4104, !srcloc !4106
  br label %do.end11, !dbg !4104

do.end11:                                         ; preds = %do.body10
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 252) #9, !dbg !4107, !srcloc !4109
  br label %do.body12, !dbg !4100

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !4110

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !4100

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !4100

if.end:                                           ; preds = %do.end14, %entry
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !4097
  %tobool15 = icmp ne i32 %2, 0, !dbg !4097
  %lnot16 = xor i1 %tobool15, true, !dbg !4097
  %lnot18 = xor i1 %lnot16, true, !dbg !4097
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !4097
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !4097
  store i64 %conv20, i64* %tmp, align 8, !dbg !4098
  %3 = load i64, i64* %tmp, align 8, !dbg !4097
  %tobool21 = icmp ne i64 %3, 0, !dbg !4112
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !4113

if.then22:                                        ; preds = %if.end
  store i1 false, i1* %retval, align 1, !dbg !4114
  br label %return, !dbg !4114

if.end23:                                         ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4115
  %cmp = icmp ult i64 %4, 4, !dbg !4117
  br i1 %cmp, label %if.then25, label %if.end26, !dbg !4118

if.then25:                                        ; preds = %if.end23
  %5 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4119
  %dev = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %5, i32 0, i32 0, !dbg !4119
  %6 = load i64, i64* %size.addr, align 8, !dbg !4119
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %6, i64 4) #10, !dbg !4119
  store i1 false, i1* %retval, align 1, !dbg !4121
  br label %return, !dbg !4121

if.end26:                                         ; preds = %if.end23
  %7 = load i8*, i8** %data.addr, align 8, !dbg !4122
  %8 = bitcast i8* %7 to %struct.greybus_manifest*, !dbg !4122
  store %struct.greybus_manifest* %8, %struct.greybus_manifest** %manifest, align 8, !dbg !4123
  %9 = load %struct.greybus_manifest*, %struct.greybus_manifest** %manifest, align 8, !dbg !4124
  %header27 = getelementptr inbounds %struct.greybus_manifest, %struct.greybus_manifest* %9, i32 0, i32 0, !dbg !4125
  store %struct.greybus_manifest_header* %header27, %struct.greybus_manifest_header** %header, align 8, !dbg !4126
  %10 = load %struct.greybus_manifest_header*, %struct.greybus_manifest_header** %header, align 8, !dbg !4127
  %size28 = getelementptr inbounds %struct.greybus_manifest_header, %struct.greybus_manifest_header* %10, i32 0, i32 0, !dbg !4127
  %11 = load i16, i16* %size28, align 1, !dbg !4127
  store i16 %11, i16* %manifest_size, align 2, !dbg !4128
  %12 = load i16, i16* %manifest_size, align 2, !dbg !4129
  %conv29 = zext i16 %12 to i64, !dbg !4129
  %13 = load i64, i64* %size.addr, align 8, !dbg !4131
  %cmp30 = icmp ne i64 %conv29, %13, !dbg !4132
  br i1 %cmp30, label %if.then32, label %if.end35, !dbg !4133

if.then32:                                        ; preds = %if.end26
  %14 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4134
  %dev33 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %14, i32 0, i32 0, !dbg !4134
  %15 = load i64, i64* %size.addr, align 8, !dbg !4134
  %16 = load i16, i16* %manifest_size, align 2, !dbg !4134
  %conv34 = zext i16 %16 to i32, !dbg !4134
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev33, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %15, i32 %conv34) #10, !dbg !4134
  store i1 false, i1* %retval, align 1, !dbg !4136
  br label %return, !dbg !4136

if.end35:                                         ; preds = %if.end26
  %17 = load %struct.greybus_manifest_header*, %struct.greybus_manifest_header** %header, align 8, !dbg !4137
  %version_major = getelementptr inbounds %struct.greybus_manifest_header, %struct.greybus_manifest_header* %17, i32 0, i32 1, !dbg !4139
  %18 = load i8, i8* %version_major, align 1, !dbg !4139
  %conv36 = zext i8 %18 to i32, !dbg !4137
  %cmp37 = icmp sgt i32 %conv36, 0, !dbg !4140
  br i1 %cmp37, label %if.then39, label %if.end44, !dbg !4141

if.then39:                                        ; preds = %if.end35
  %19 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4142
  %dev40 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %19, i32 0, i32 0, !dbg !4142
  %20 = load %struct.greybus_manifest_header*, %struct.greybus_manifest_header** %header, align 8, !dbg !4142
  %version_major41 = getelementptr inbounds %struct.greybus_manifest_header, %struct.greybus_manifest_header* %20, i32 0, i32 1, !dbg !4142
  %21 = load i8, i8* %version_major41, align 1, !dbg !4142
  %conv42 = zext i8 %21 to i32, !dbg !4142
  %22 = load %struct.greybus_manifest_header*, %struct.greybus_manifest_header** %header, align 8, !dbg !4142
  %version_minor = getelementptr inbounds %struct.greybus_manifest_header, %struct.greybus_manifest_header* %22, i32 0, i32 2, !dbg !4142
  %23 = load i8, i8* %version_minor, align 1, !dbg !4142
  %conv43 = zext i8 %23 to i32, !dbg !4142
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev40, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %conv42, i32 %conv43, i32 0, i32 1) #10, !dbg !4142
  store i1 false, i1* %retval, align 1, !dbg !4144
  br label %return, !dbg !4144

if.end44:                                         ; preds = %if.end35
  %24 = load %struct.greybus_manifest*, %struct.greybus_manifest** %manifest, align 8, !dbg !4145
  %descriptors = getelementptr inbounds %struct.greybus_manifest, %struct.greybus_manifest* %24, i32 0, i32 1, !dbg !4146
  %arraydecay = getelementptr inbounds [0 x %struct.greybus_descriptor], [0 x %struct.greybus_descriptor]* %descriptors, i64 0, i64 0, !dbg !4145
  store %struct.greybus_descriptor* %arraydecay, %struct.greybus_descriptor** %desc, align 8, !dbg !4147
  %25 = load i64, i64* %size.addr, align 8, !dbg !4148
  %sub = sub i64 %25, 4, !dbg !4148
  store i64 %sub, i64* %size.addr, align 8, !dbg !4148
  br label %while.cond, !dbg !4149

while.cond:                                       ; preds = %if.end50, %if.end44
  %26 = load i64, i64* %size.addr, align 8, !dbg !4150
  %tobool45 = icmp ne i64 %26, 0, !dbg !4149
  br i1 %tobool45, label %while.body, label %while.end, !dbg !4149

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i32* %desc_size, metadata !4151, metadata !DIExpression()), !dbg !4153
  %27 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4154
  %28 = load %struct.greybus_descriptor*, %struct.greybus_descriptor** %desc, align 8, !dbg !4155
  %29 = load i64, i64* %size.addr, align 8, !dbg !4156
  %call46 = call i32 @identify_descriptor(%struct.gb_interface* %27, %struct.greybus_descriptor* %28, i64 %29) #8, !dbg !4157
  store i32 %call46, i32* %desc_size, align 4, !dbg !4158
  %30 = load i32, i32* %desc_size, align 4, !dbg !4159
  %cmp47 = icmp slt i32 %30, 0, !dbg !4161
  br i1 %cmp47, label %if.then49, label %if.end50, !dbg !4162

if.then49:                                        ; preds = %while.body
  store i8 0, i8* %result, align 1, !dbg !4163
  br label %out, !dbg !4165

if.end50:                                         ; preds = %while.body
  %31 = load %struct.greybus_descriptor*, %struct.greybus_descriptor** %desc, align 8, !dbg !4166
  %32 = bitcast %struct.greybus_descriptor* %31 to i8*, !dbg !4167
  %33 = load i32, i32* %desc_size, align 4, !dbg !4168
  %idx.ext = sext i32 %33 to i64, !dbg !4169
  %add.ptr = getelementptr i8, i8* %32, i64 %idx.ext, !dbg !4169
  %34 = bitcast i8* %add.ptr to %struct.greybus_descriptor*, !dbg !4170
  store %struct.greybus_descriptor* %34, %struct.greybus_descriptor** %desc, align 8, !dbg !4171
  %35 = load i32, i32* %desc_size, align 4, !dbg !4172
  %conv51 = sext i32 %35 to i64, !dbg !4172
  %36 = load i64, i64* %size.addr, align 8, !dbg !4173
  %sub52 = sub i64 %36, %conv51, !dbg !4173
  store i64 %sub52, i64* %size.addr, align 8, !dbg !4173
  br label %while.cond, !dbg !4149, !llvm.loop !4174

while.end:                                        ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4176, metadata !DIExpression()), !dbg !4179
  %37 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4179
  %manifest_descs53 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %37, i32 0, i32 4, !dbg !4179
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %manifest_descs53, i32 0, i32 0, !dbg !4179
  %38 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4179
  %39 = bitcast %struct.list_head* %38 to i8*, !dbg !4179
  store i8* %39, i8** %__mptr, align 8, !dbg !4179
  br label %do.body54, !dbg !4179

do.body54:                                        ; preds = %while.end
  br label %do.end55, !dbg !4180

do.end55:                                         ; preds = %do.body54
  %40 = load i8*, i8** %__mptr, align 8, !dbg !4179
  %add.ptr57 = getelementptr i8, i8* %40, i64 0, !dbg !4179
  %41 = bitcast i8* %add.ptr57 to %struct.manifest_desc*, !dbg !4179
  store %struct.manifest_desc* %41, %struct.manifest_desc** %tmp56, align 8, !dbg !4180
  %42 = load %struct.manifest_desc*, %struct.manifest_desc** %tmp56, align 8, !dbg !4179
  store %struct.manifest_desc* %42, %struct.manifest_desc** %descriptor, align 8, !dbg !4182
  br label %for.cond, !dbg !4182

for.cond:                                         ; preds = %do.end74, %do.end55
  %43 = load %struct.manifest_desc*, %struct.manifest_desc** %descriptor, align 8, !dbg !4183
  %links = getelementptr inbounds %struct.manifest_desc, %struct.manifest_desc* %43, i32 0, i32 0, !dbg !4183
  %44 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4183
  %manifest_descs58 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %44, i32 0, i32 4, !dbg !4183
  %cmp59 = icmp eq %struct.list_head* %links, %manifest_descs58, !dbg !4183
  %lnot61 = xor i1 %cmp59, true, !dbg !4183
  br i1 %lnot61, label %for.body, label %for.end, !dbg !4182

for.body:                                         ; preds = %for.cond
  %45 = load %struct.manifest_desc*, %struct.manifest_desc** %descriptor, align 8, !dbg !4185
  %type = getelementptr inbounds %struct.manifest_desc, %struct.manifest_desc* %45, i32 0, i32 3, !dbg !4188
  %46 = load i32, i32* %type, align 8, !dbg !4188
  %cmp63 = icmp eq i32 %46, 1, !dbg !4189
  br i1 %cmp63, label %if.then65, label %if.end69, !dbg !4190

if.then65:                                        ; preds = %for.body
  %47 = load i32, i32* %found, align 4, !dbg !4191
  %inc = add i32 %47, 1, !dbg !4191
  store i32 %inc, i32* %found, align 4, !dbg !4191
  %tobool66 = icmp ne i32 %47, 0, !dbg !4191
  br i1 %tobool66, label %if.end68, label %if.then67, !dbg !4193

if.then67:                                        ; preds = %if.then65
  %48 = load %struct.manifest_desc*, %struct.manifest_desc** %descriptor, align 8, !dbg !4194
  store %struct.manifest_desc* %48, %struct.manifest_desc** %interface_desc, align 8, !dbg !4195
  br label %if.end68, !dbg !4196

if.end68:                                         ; preds = %if.then67, %if.then65
  br label %if.end69, !dbg !4191

if.end69:                                         ; preds = %if.end68, %for.body
  br label %for.inc, !dbg !4197

for.inc:                                          ; preds = %if.end69
  call void @llvm.dbg.declare(metadata i8** %__mptr70, metadata !4198, metadata !DIExpression()), !dbg !4200
  %49 = load %struct.manifest_desc*, %struct.manifest_desc** %descriptor, align 8, !dbg !4200
  %links71 = getelementptr inbounds %struct.manifest_desc, %struct.manifest_desc* %49, i32 0, i32 0, !dbg !4200
  %next72 = getelementptr inbounds %struct.list_head, %struct.list_head* %links71, i32 0, i32 0, !dbg !4200
  %50 = load %struct.list_head*, %struct.list_head** %next72, align 8, !dbg !4200
  %51 = bitcast %struct.list_head* %50 to i8*, !dbg !4200
  store i8* %51, i8** %__mptr70, align 8, !dbg !4200
  br label %do.body73, !dbg !4200

do.body73:                                        ; preds = %for.inc
  br label %do.end74, !dbg !4201

do.end74:                                         ; preds = %do.body73
  %52 = load i8*, i8** %__mptr70, align 8, !dbg !4200
  %add.ptr76 = getelementptr i8, i8* %52, i64 0, !dbg !4200
  %53 = bitcast i8* %add.ptr76 to %struct.manifest_desc*, !dbg !4200
  store %struct.manifest_desc* %53, %struct.manifest_desc** %tmp75, align 8, !dbg !4201
  %54 = load %struct.manifest_desc*, %struct.manifest_desc** %tmp75, align 8, !dbg !4200
  store %struct.manifest_desc* %54, %struct.manifest_desc** %descriptor, align 8, !dbg !4183
  br label %for.cond, !dbg !4183, !llvm.loop !4203

for.end:                                          ; preds = %for.cond
  %55 = load i32, i32* %found, align 4, !dbg !4205
  %cmp77 = icmp ne i32 %55, 1, !dbg !4207
  br i1 %cmp77, label %if.then79, label %if.end81, !dbg !4208

if.then79:                                        ; preds = %for.end
  %56 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4209
  %dev80 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %56, i32 0, i32 0, !dbg !4209
  %57 = load i32, i32* %found, align 4, !dbg !4209
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev80, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %57) #10, !dbg !4209
  store i8 0, i8* %result, align 1, !dbg !4211
  br label %out, !dbg !4212

if.end81:                                         ; preds = %for.end
  %58 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4213
  %59 = load %struct.manifest_desc*, %struct.manifest_desc** %interface_desc, align 8, !dbg !4214
  %call82 = call zeroext i1 @gb_manifest_parse_interface(%struct.gb_interface* %58, %struct.manifest_desc* %59) #8, !dbg !4215
  %frombool = zext i1 %call82 to i8, !dbg !4216
  store i8 %frombool, i8* %result, align 1, !dbg !4216
  %60 = load i8, i8* %result, align 1, !dbg !4217
  %tobool83 = trunc i8 %60 to i1, !dbg !4217
  br i1 %tobool83, label %land.lhs.true, label %if.end90, !dbg !4219

land.lhs.true:                                    ; preds = %if.end81
  %61 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4220
  %manifest_descs85 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %61, i32 0, i32 4, !dbg !4221
  %call86 = call i32 @list_empty(%struct.list_head* %manifest_descs85) #8, !dbg !4222
  %tobool87 = icmp ne i32 %call86, 0, !dbg !4222
  br i1 %tobool87, label %if.end90, label %if.then88, !dbg !4223

if.then88:                                        ; preds = %land.lhs.true
  %62 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4224
  %dev89 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %62, i32 0, i32 0, !dbg !4224
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev89, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !4224
  br label %if.end90, !dbg !4224

if.end90:                                         ; preds = %if.then88, %land.lhs.true, %if.end81
  br label %out, !dbg !4225

out:                                              ; preds = %if.end90, %if.then79, %if.then49
  call void @llvm.dbg.label(metadata !4226), !dbg !4227
  %63 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4228
  call void @release_manifest_descriptors(%struct.gb_interface* %63) #8, !dbg !4229
  %64 = load i8, i8* %result, align 1, !dbg !4230
  %tobool91 = trunc i8 %64 to i1, !dbg !4230
  store i1 %tobool91, i1* %retval, align 1, !dbg !4231
  br label %return, !dbg !4231

return:                                           ; preds = %out, %if.then39, %if.then32, %if.then25, %if.then22
  %65 = load i1, i1* %retval, align 1, !dbg !4232
  ret i1 %65, !dbg !4232
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @list_empty(%struct.list_head* %head) #0 !dbg !4233 {
entry:
  %head.addr = alloca %struct.list_head*, align 8
  %tmp = alloca %struct.list_head*, align 8
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !4239, metadata !DIExpression()), !dbg !4240
  br label %do.body, !dbg !4241

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4243

do.end:                                           ; preds = %do.body
  %0 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4241
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !4241
  %1 = load volatile %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4241
  store %struct.list_head* %1, %struct.list_head** %tmp, align 8, !dbg !4243
  %2 = load %struct.list_head*, %struct.list_head** %tmp, align 8, !dbg !4241
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4245
  %cmp = icmp eq %struct.list_head* %2, %3, !dbg !4246
  %conv = zext i1 %cmp to i32, !dbg !4246
  ret i32 %conv, !dbg !4247
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @identify_descriptor(%struct.gb_interface* %intf, %struct.greybus_descriptor* %desc, i64 %size) #0 !dbg !4248 {
entry:
  %retval = alloca i32, align 4
  %intf.addr = alloca %struct.gb_interface*, align 8
  %desc.addr = alloca %struct.greybus_descriptor*, align 8
  %size.addr = alloca i64, align 8
  %desc_header = alloca %struct.greybus_descriptor_header*, align 8
  %descriptor = alloca %struct.manifest_desc*, align 8
  %desc_size = alloca i64, align 8
  %expected_size = alloca i64, align 8
  store %struct.gb_interface* %intf, %struct.gb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_interface** %intf.addr, metadata !4251, metadata !DIExpression()), !dbg !4252
  store %struct.greybus_descriptor* %desc, %struct.greybus_descriptor** %desc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.greybus_descriptor** %desc.addr, metadata !4253, metadata !DIExpression()), !dbg !4254
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4255, metadata !DIExpression()), !dbg !4256
  call void @llvm.dbg.declare(metadata %struct.greybus_descriptor_header** %desc_header, metadata !4257, metadata !DIExpression()), !dbg !4259
  %0 = load %struct.greybus_descriptor*, %struct.greybus_descriptor** %desc.addr, align 8, !dbg !4260
  %header = getelementptr inbounds %struct.greybus_descriptor, %struct.greybus_descriptor* %0, i32 0, i32 0, !dbg !4261
  store %struct.greybus_descriptor_header* %header, %struct.greybus_descriptor_header** %desc_header, align 8, !dbg !4259
  call void @llvm.dbg.declare(metadata %struct.manifest_desc** %descriptor, metadata !4262, metadata !DIExpression()), !dbg !4263
  call void @llvm.dbg.declare(metadata i64* %desc_size, metadata !4264, metadata !DIExpression()), !dbg !4265
  call void @llvm.dbg.declare(metadata i64* %expected_size, metadata !4266, metadata !DIExpression()), !dbg !4267
  %1 = load i64, i64* %size.addr, align 8, !dbg !4268
  %cmp = icmp ult i64 %1, 4, !dbg !4270
  br i1 %cmp, label %if.then, label %if.end, !dbg !4271

if.then:                                          ; preds = %entry
  %2 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4272
  %dev = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %2, i32 0, i32 0, !dbg !4272
  %3 = load i64, i64* %size.addr, align 8, !dbg !4272
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i64 %3, i64 4) #10, !dbg !4272
  store i32 -22, i32* %retval, align 4, !dbg !4274
  br label %return, !dbg !4274

if.end:                                           ; preds = %entry
  %4 = load %struct.greybus_descriptor_header*, %struct.greybus_descriptor_header** %desc_header, align 8, !dbg !4275
  %size1 = getelementptr inbounds %struct.greybus_descriptor_header, %struct.greybus_descriptor_header* %4, i32 0, i32 0, !dbg !4275
  %5 = load i16, i16* %size1, align 1, !dbg !4275
  %conv = zext i16 %5 to i64, !dbg !4275
  store i64 %conv, i64* %desc_size, align 8, !dbg !4276
  %6 = load i64, i64* %desc_size, align 8, !dbg !4277
  %7 = load i64, i64* %size.addr, align 8, !dbg !4279
  %cmp2 = icmp ugt i64 %6, %7, !dbg !4280
  br i1 %cmp2, label %if.then4, label %if.end6, !dbg !4281

if.then4:                                         ; preds = %if.end
  %8 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4282
  %dev5 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %8, i32 0, i32 0, !dbg !4282
  %9 = load i64, i64* %desc_size, align 8, !dbg !4282
  %10 = load i64, i64* %size.addr, align 8, !dbg !4282
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev5, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i64 %9, i64 %10) #10, !dbg !4282
  store i32 -22, i32* %retval, align 4, !dbg !4284
  br label %return, !dbg !4284

if.end6:                                          ; preds = %if.end
  store i64 4, i64* %expected_size, align 8, !dbg !4285
  %11 = load %struct.greybus_descriptor_header*, %struct.greybus_descriptor_header** %desc_header, align 8, !dbg !4286
  %type = getelementptr inbounds %struct.greybus_descriptor_header, %struct.greybus_descriptor_header* %11, i32 0, i32 1, !dbg !4287
  %12 = load i8, i8* %type, align 1, !dbg !4287
  %conv7 = zext i8 %12 to i32, !dbg !4286
  switch i32 %conv7, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb11
    i32 3, label %sw.bb13
    i32 4, label %sw.bb15
    i32 0, label %sw.bb17
  ], !dbg !4288

sw.bb:                                            ; preds = %if.end6
  %13 = load i64, i64* %expected_size, align 8, !dbg !4289
  %add = add i64 %13, 2, !dbg !4289
  store i64 %add, i64* %expected_size, align 8, !dbg !4289
  %14 = load %struct.greybus_descriptor*, %struct.greybus_descriptor** %desc.addr, align 8, !dbg !4291
  %15 = getelementptr inbounds %struct.greybus_descriptor, %struct.greybus_descriptor* %14, i32 0, i32 1, !dbg !4292
  %string = bitcast %union.anon.65* %15 to %struct.greybus_descriptor_string*, !dbg !4292
  %length = getelementptr inbounds %struct.greybus_descriptor_string, %struct.greybus_descriptor_string* %string, i32 0, i32 0, !dbg !4293
  %16 = load i8, i8* %length, align 1, !dbg !4293
  %conv8 = zext i8 %16 to i64, !dbg !4291
  %17 = load i64, i64* %expected_size, align 8, !dbg !4294
  %add9 = add i64 %17, %conv8, !dbg !4294
  store i64 %add9, i64* %expected_size, align 8, !dbg !4294
  %18 = load i64, i64* %expected_size, align 8, !dbg !4295
  %add10 = add i64 %18, 3, !dbg !4295
  %and = and i64 %add10, -4, !dbg !4295
  store i64 %and, i64* %expected_size, align 8, !dbg !4296
  br label %sw.epilog, !dbg !4297

sw.bb11:                                          ; preds = %if.end6
  %19 = load i64, i64* %expected_size, align 8, !dbg !4298
  %add12 = add i64 %19, 4, !dbg !4298
  store i64 %add12, i64* %expected_size, align 8, !dbg !4298
  br label %sw.epilog, !dbg !4299

sw.bb13:                                          ; preds = %if.end6
  %20 = load i64, i64* %expected_size, align 8, !dbg !4300
  %add14 = add i64 %20, 4, !dbg !4300
  store i64 %add14, i64* %expected_size, align 8, !dbg !4300
  br label %sw.epilog, !dbg !4301

sw.bb15:                                          ; preds = %if.end6
  %21 = load i64, i64* %expected_size, align 8, !dbg !4302
  %add16 = add i64 %21, 4, !dbg !4302
  store i64 %add16, i64* %expected_size, align 8, !dbg !4302
  br label %sw.epilog, !dbg !4303

sw.bb17:                                          ; preds = %if.end6
  br label %sw.default, !dbg !4303

sw.default:                                       ; preds = %if.end6, %sw.bb17
  %22 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4304
  %dev18 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %22, i32 0, i32 0, !dbg !4304
  %23 = load %struct.greybus_descriptor_header*, %struct.greybus_descriptor_header** %desc_header, align 8, !dbg !4304
  %type19 = getelementptr inbounds %struct.greybus_descriptor_header, %struct.greybus_descriptor_header* %23, i32 0, i32 1, !dbg !4304
  %24 = load i8, i8* %type19, align 1, !dbg !4304
  %conv20 = zext i8 %24 to i32, !dbg !4304
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %conv20) #10, !dbg !4304
  store i32 -22, i32* %retval, align 4, !dbg !4305
  br label %return, !dbg !4305

sw.epilog:                                        ; preds = %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb
  %25 = load i64, i64* %desc_size, align 8, !dbg !4306
  %26 = load i64, i64* %expected_size, align 8, !dbg !4308
  %cmp21 = icmp ult i64 %25, %26, !dbg !4309
  br i1 %cmp21, label %if.then23, label %if.end26, !dbg !4310

if.then23:                                        ; preds = %sw.epilog
  %27 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4311
  %dev24 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %27, i32 0, i32 0, !dbg !4311
  %28 = load %struct.greybus_descriptor_header*, %struct.greybus_descriptor_header** %desc_header, align 8, !dbg !4311
  %type25 = getelementptr inbounds %struct.greybus_descriptor_header, %struct.greybus_descriptor_header* %28, i32 0, i32 1, !dbg !4311
  %29 = load i8, i8* %type25, align 1, !dbg !4311
  %call = call i8* @get_descriptor_type_string(i8 zeroext %29) #8, !dbg !4311
  %30 = load i64, i64* %desc_size, align 8, !dbg !4311
  %31 = load i64, i64* %expected_size, align 8, !dbg !4311
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev24, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i8* %call, i64 %30, i64 %31) #10, !dbg !4311
  store i32 -22, i32* %retval, align 4, !dbg !4313
  br label %return, !dbg !4313

if.end26:                                         ; preds = %sw.epilog
  %32 = load i64, i64* %desc_size, align 8, !dbg !4314
  %33 = load i64, i64* %expected_size, align 8, !dbg !4316
  %cmp27 = icmp ugt i64 %32, %33, !dbg !4317
  br i1 %cmp27, label %if.then29, label %if.end33, !dbg !4318

if.then29:                                        ; preds = %if.end26
  %34 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4319
  %dev30 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %34, i32 0, i32 0, !dbg !4319
  %35 = load %struct.greybus_descriptor_header*, %struct.greybus_descriptor_header** %desc_header, align 8, !dbg !4319
  %type31 = getelementptr inbounds %struct.greybus_descriptor_header, %struct.greybus_descriptor_header* %35, i32 0, i32 1, !dbg !4319
  %36 = load i8, i8* %type31, align 1, !dbg !4319
  %call32 = call i8* @get_descriptor_type_string(i8 zeroext %36) #8, !dbg !4319
  %37 = load i64, i64* %expected_size, align 8, !dbg !4319
  %38 = load i64, i64* %desc_size, align 8, !dbg !4319
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev30, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0), i8* %call32, i64 %37, i64 %38) #10, !dbg !4319
  br label %if.end33, !dbg !4321

if.end33:                                         ; preds = %if.then29, %if.end26
  %call34 = call i8* @kzalloc(i64 40, i32 3264) #8, !dbg !4322
  %39 = bitcast i8* %call34 to %struct.manifest_desc*, !dbg !4322
  store %struct.manifest_desc* %39, %struct.manifest_desc** %descriptor, align 8, !dbg !4323
  %40 = load %struct.manifest_desc*, %struct.manifest_desc** %descriptor, align 8, !dbg !4324
  %tobool = icmp ne %struct.manifest_desc* %40, null, !dbg !4324
  br i1 %tobool, label %if.end36, label %if.then35, !dbg !4326

if.then35:                                        ; preds = %if.end33
  store i32 -12, i32* %retval, align 4, !dbg !4327
  br label %return, !dbg !4327

if.end36:                                         ; preds = %if.end33
  %41 = load i64, i64* %desc_size, align 8, !dbg !4328
  %42 = load %struct.manifest_desc*, %struct.manifest_desc** %descriptor, align 8, !dbg !4329
  %size37 = getelementptr inbounds %struct.manifest_desc, %struct.manifest_desc* %42, i32 0, i32 1, !dbg !4330
  store i64 %41, i64* %size37, align 8, !dbg !4331
  %43 = load %struct.greybus_descriptor*, %struct.greybus_descriptor** %desc.addr, align 8, !dbg !4332
  %44 = bitcast %struct.greybus_descriptor* %43 to i8*, !dbg !4333
  %add.ptr = getelementptr i8, i8* %44, i64 4, !dbg !4334
  %45 = load %struct.manifest_desc*, %struct.manifest_desc** %descriptor, align 8, !dbg !4335
  %data = getelementptr inbounds %struct.manifest_desc, %struct.manifest_desc* %45, i32 0, i32 2, !dbg !4336
  store i8* %add.ptr, i8** %data, align 8, !dbg !4337
  %46 = load %struct.greybus_descriptor_header*, %struct.greybus_descriptor_header** %desc_header, align 8, !dbg !4338
  %type38 = getelementptr inbounds %struct.greybus_descriptor_header, %struct.greybus_descriptor_header* %46, i32 0, i32 1, !dbg !4339
  %47 = load i8, i8* %type38, align 1, !dbg !4339
  %conv39 = zext i8 %47 to i32, !dbg !4338
  %48 = load %struct.manifest_desc*, %struct.manifest_desc** %descriptor, align 8, !dbg !4340
  %type40 = getelementptr inbounds %struct.manifest_desc, %struct.manifest_desc* %48, i32 0, i32 3, !dbg !4341
  store i32 %conv39, i32* %type40, align 8, !dbg !4342
  %49 = load %struct.manifest_desc*, %struct.manifest_desc** %descriptor, align 8, !dbg !4343
  %links = getelementptr inbounds %struct.manifest_desc, %struct.manifest_desc* %49, i32 0, i32 0, !dbg !4344
  %50 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4345
  %manifest_descs = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %50, i32 0, i32 4, !dbg !4346
  call void @list_add_tail(%struct.list_head* %links, %struct.list_head* %manifest_descs) #8, !dbg !4347
  %51 = load i64, i64* %desc_size, align 8, !dbg !4348
  %conv41 = trunc i64 %51 to i32, !dbg !4348
  store i32 %conv41, i32* %retval, align 4, !dbg !4349
  br label %return, !dbg !4349

return:                                           ; preds = %if.end36, %if.then35, %if.then23, %sw.default, %if.then4, %if.then
  %52 = load i32, i32* %retval, align 4, !dbg !4350
  ret i32 %52, !dbg !4350
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @gb_manifest_parse_interface(%struct.gb_interface* %intf, %struct.manifest_desc* %interface_desc) #0 !dbg !4351 {
entry:
  %retval = alloca i1, align 1
  %intf.addr = alloca %struct.gb_interface*, align 8
  %interface_desc.addr = alloca %struct.manifest_desc*, align 8
  %desc_intf = alloca %struct.greybus_descriptor_interface*, align 8
  %control = alloca %struct.gb_control*, align 8
  %str = alloca i8*, align 8
  store %struct.gb_interface* %intf, %struct.gb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_interface** %intf.addr, metadata !4354, metadata !DIExpression()), !dbg !4355
  store %struct.manifest_desc* %interface_desc, %struct.manifest_desc** %interface_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.manifest_desc** %interface_desc.addr, metadata !4356, metadata !DIExpression()), !dbg !4357
  call void @llvm.dbg.declare(metadata %struct.greybus_descriptor_interface** %desc_intf, metadata !4358, metadata !DIExpression()), !dbg !4360
  %0 = load %struct.manifest_desc*, %struct.manifest_desc** %interface_desc.addr, align 8, !dbg !4361
  %data = getelementptr inbounds %struct.manifest_desc, %struct.manifest_desc* %0, i32 0, i32 2, !dbg !4362
  %1 = load i8*, i8** %data, align 8, !dbg !4362
  %2 = bitcast i8* %1 to %struct.greybus_descriptor_interface*, !dbg !4361
  store %struct.greybus_descriptor_interface* %2, %struct.greybus_descriptor_interface** %desc_intf, align 8, !dbg !4360
  call void @llvm.dbg.declare(metadata %struct.gb_control** %control, metadata !4363, metadata !DIExpression()), !dbg !4364
  %3 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4365
  %control1 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %3, i32 0, i32 1, !dbg !4366
  %4 = load %struct.gb_control*, %struct.gb_control** %control1, align 8, !dbg !4366
  store %struct.gb_control* %4, %struct.gb_control** %control, align 8, !dbg !4364
  call void @llvm.dbg.declare(metadata i8** %str, metadata !4367, metadata !DIExpression()), !dbg !4368
  %5 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4369
  %6 = load %struct.greybus_descriptor_interface*, %struct.greybus_descriptor_interface** %desc_intf, align 8, !dbg !4370
  %vendor_stringid = getelementptr inbounds %struct.greybus_descriptor_interface, %struct.greybus_descriptor_interface* %6, i32 0, i32 0, !dbg !4371
  %7 = load i8, i8* %vendor_stringid, align 1, !dbg !4371
  %call = call i8* @gb_string_get(%struct.gb_interface* %5, i8 zeroext %7) #8, !dbg !4372
  store i8* %call, i8** %str, align 8, !dbg !4373
  %8 = load i8*, i8** %str, align 8, !dbg !4374
  %call2 = call zeroext i1 @IS_ERR(i8* %8) #8, !dbg !4376
  br i1 %call2, label %if.then, label %if.end, !dbg !4377

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !4378
  br label %return, !dbg !4378

if.end:                                           ; preds = %entry
  %9 = load i8*, i8** %str, align 8, !dbg !4379
  %10 = load %struct.gb_control*, %struct.gb_control** %control, align 8, !dbg !4380
  %vendor_string = getelementptr inbounds %struct.gb_control, %struct.gb_control* %10, i32 0, i32 7, !dbg !4381
  store i8* %9, i8** %vendor_string, align 8, !dbg !4382
  %11 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4383
  %12 = load %struct.greybus_descriptor_interface*, %struct.greybus_descriptor_interface** %desc_intf, align 8, !dbg !4384
  %product_stringid = getelementptr inbounds %struct.greybus_descriptor_interface, %struct.greybus_descriptor_interface* %12, i32 0, i32 1, !dbg !4385
  %13 = load i8, i8* %product_stringid, align 1, !dbg !4385
  %call3 = call i8* @gb_string_get(%struct.gb_interface* %11, i8 zeroext %13) #8, !dbg !4386
  store i8* %call3, i8** %str, align 8, !dbg !4387
  %14 = load i8*, i8** %str, align 8, !dbg !4388
  %call4 = call zeroext i1 @IS_ERR(i8* %14) #8, !dbg !4390
  br i1 %call4, label %if.then5, label %if.end6, !dbg !4391

if.then5:                                         ; preds = %if.end
  br label %out_free_vendor_string, !dbg !4392

if.end6:                                          ; preds = %if.end
  %15 = load i8*, i8** %str, align 8, !dbg !4393
  %16 = load %struct.gb_control*, %struct.gb_control** %control, align 8, !dbg !4394
  %product_string = getelementptr inbounds %struct.gb_control, %struct.gb_control* %16, i32 0, i32 8, !dbg !4395
  store i8* %15, i8** %product_string, align 8, !dbg !4396
  %17 = load %struct.greybus_descriptor_interface*, %struct.greybus_descriptor_interface** %desc_intf, align 8, !dbg !4397
  %features = getelementptr inbounds %struct.greybus_descriptor_interface, %struct.greybus_descriptor_interface* %17, i32 0, i32 2, !dbg !4398
  %18 = load i8, i8* %features, align 1, !dbg !4398
  %19 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4399
  %features7 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %19, i32 0, i32 7, !dbg !4400
  store i8 %18, i8* %features7, align 2, !dbg !4401
  %20 = load %struct.manifest_desc*, %struct.manifest_desc** %interface_desc.addr, align 8, !dbg !4402
  call void @release_manifest_descriptor(%struct.manifest_desc* %20) #8, !dbg !4403
  %21 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4404
  %call8 = call i32 @gb_manifest_parse_bundles(%struct.gb_interface* %21) #8, !dbg !4406
  %tobool = icmp ne i32 %call8, 0, !dbg !4406
  br i1 %tobool, label %if.end10, label %if.then9, !dbg !4407

if.then9:                                         ; preds = %if.end6
  %22 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4408
  %dev = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %22, i32 0, i32 0, !dbg !4408
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18, i64 0, i64 0)) #10, !dbg !4408
  br label %out_err, !dbg !4410

if.end10:                                         ; preds = %if.end6
  store i1 true, i1* %retval, align 1, !dbg !4411
  br label %return, !dbg !4411

out_err:                                          ; preds = %if.then9
  call void @llvm.dbg.label(metadata !4412), !dbg !4413
  %23 = load %struct.gb_control*, %struct.gb_control** %control, align 8, !dbg !4414
  %product_string11 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %23, i32 0, i32 8, !dbg !4415
  %24 = load i8*, i8** %product_string11, align 8, !dbg !4415
  call void @kfree(i8* %24) #8, !dbg !4416
  %25 = load %struct.gb_control*, %struct.gb_control** %control, align 8, !dbg !4417
  %product_string12 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %25, i32 0, i32 8, !dbg !4418
  store i8* null, i8** %product_string12, align 8, !dbg !4419
  br label %out_free_vendor_string, !dbg !4417

out_free_vendor_string:                           ; preds = %out_err, %if.then5
  call void @llvm.dbg.label(metadata !4420), !dbg !4421
  %26 = load %struct.gb_control*, %struct.gb_control** %control, align 8, !dbg !4422
  %vendor_string13 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %26, i32 0, i32 7, !dbg !4423
  %27 = load i8*, i8** %vendor_string13, align 8, !dbg !4423
  call void @kfree(i8* %27) #8, !dbg !4424
  %28 = load %struct.gb_control*, %struct.gb_control** %control, align 8, !dbg !4425
  %vendor_string14 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %28, i32 0, i32 7, !dbg !4426
  store i8* null, i8** %vendor_string14, align 8, !dbg !4427
  store i1 false, i1* %retval, align 1, !dbg !4428
  br label %return, !dbg !4428

return:                                           ; preds = %out_free_vendor_string, %if.end10, %if.then
  %29 = load i1, i1* %retval, align 1, !dbg !4429
  ret i1 %29, !dbg !4429
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @release_manifest_descriptors(%struct.gb_interface* %intf) #0 !dbg !4430 {
entry:
  %intf.addr = alloca %struct.gb_interface*, align 8
  %descriptor = alloca %struct.manifest_desc*, align 8
  %next = alloca %struct.manifest_desc*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.manifest_desc*, align 8
  %__mptr2 = alloca i8*, align 8
  %tmp6 = alloca %struct.manifest_desc*, align 8
  %__mptr10 = alloca i8*, align 8
  %tmp15 = alloca %struct.manifest_desc*, align 8
  store %struct.gb_interface* %intf, %struct.gb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_interface** %intf.addr, metadata !4433, metadata !DIExpression()), !dbg !4434
  call void @llvm.dbg.declare(metadata %struct.manifest_desc** %descriptor, metadata !4435, metadata !DIExpression()), !dbg !4436
  call void @llvm.dbg.declare(metadata %struct.manifest_desc** %next, metadata !4437, metadata !DIExpression()), !dbg !4438
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4439, metadata !DIExpression()), !dbg !4442
  %0 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4442
  %manifest_descs = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %0, i32 0, i32 4, !dbg !4442
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %manifest_descs, i32 0, i32 0, !dbg !4442
  %1 = load %struct.list_head*, %struct.list_head** %next1, align 8, !dbg !4442
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !4442
  store i8* %2, i8** %__mptr, align 8, !dbg !4442
  br label %do.body, !dbg !4442

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4443

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !4442
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !4442
  %4 = bitcast i8* %add.ptr to %struct.manifest_desc*, !dbg !4442
  store %struct.manifest_desc* %4, %struct.manifest_desc** %tmp, align 8, !dbg !4443
  %5 = load %struct.manifest_desc*, %struct.manifest_desc** %tmp, align 8, !dbg !4442
  store %struct.manifest_desc* %5, %struct.manifest_desc** %descriptor, align 8, !dbg !4445
  call void @llvm.dbg.declare(metadata i8** %__mptr2, metadata !4446, metadata !DIExpression()), !dbg !4448
  %6 = load %struct.manifest_desc*, %struct.manifest_desc** %descriptor, align 8, !dbg !4448
  %links = getelementptr inbounds %struct.manifest_desc, %struct.manifest_desc* %6, i32 0, i32 0, !dbg !4448
  %next3 = getelementptr inbounds %struct.list_head, %struct.list_head* %links, i32 0, i32 0, !dbg !4448
  %7 = load %struct.list_head*, %struct.list_head** %next3, align 8, !dbg !4448
  %8 = bitcast %struct.list_head* %7 to i8*, !dbg !4448
  store i8* %8, i8** %__mptr2, align 8, !dbg !4448
  br label %do.body4, !dbg !4448

do.body4:                                         ; preds = %do.end
  br label %do.end5, !dbg !4449

do.end5:                                          ; preds = %do.body4
  %9 = load i8*, i8** %__mptr2, align 8, !dbg !4448
  %add.ptr7 = getelementptr i8, i8* %9, i64 0, !dbg !4448
  %10 = bitcast i8* %add.ptr7 to %struct.manifest_desc*, !dbg !4448
  store %struct.manifest_desc* %10, %struct.manifest_desc** %tmp6, align 8, !dbg !4449
  %11 = load %struct.manifest_desc*, %struct.manifest_desc** %tmp6, align 8, !dbg !4448
  store %struct.manifest_desc* %11, %struct.manifest_desc** %next, align 8, !dbg !4445
  br label %for.cond, !dbg !4445

for.cond:                                         ; preds = %do.end14, %do.end5
  %12 = load %struct.manifest_desc*, %struct.manifest_desc** %descriptor, align 8, !dbg !4451
  %links8 = getelementptr inbounds %struct.manifest_desc, %struct.manifest_desc* %12, i32 0, i32 0, !dbg !4451
  %13 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4451
  %manifest_descs9 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %13, i32 0, i32 4, !dbg !4451
  %cmp = icmp eq %struct.list_head* %links8, %manifest_descs9, !dbg !4451
  %lnot = xor i1 %cmp, true, !dbg !4451
  br i1 %lnot, label %for.body, label %for.end, !dbg !4445

for.body:                                         ; preds = %for.cond
  %14 = load %struct.manifest_desc*, %struct.manifest_desc** %descriptor, align 8, !dbg !4453
  call void @release_manifest_descriptor(%struct.manifest_desc* %14) #8, !dbg !4454
  br label %for.inc, !dbg !4454

for.inc:                                          ; preds = %for.body
  %15 = load %struct.manifest_desc*, %struct.manifest_desc** %next, align 8, !dbg !4451
  store %struct.manifest_desc* %15, %struct.manifest_desc** %descriptor, align 8, !dbg !4451
  call void @llvm.dbg.declare(metadata i8** %__mptr10, metadata !4455, metadata !DIExpression()), !dbg !4457
  %16 = load %struct.manifest_desc*, %struct.manifest_desc** %next, align 8, !dbg !4457
  %links11 = getelementptr inbounds %struct.manifest_desc, %struct.manifest_desc* %16, i32 0, i32 0, !dbg !4457
  %next12 = getelementptr inbounds %struct.list_head, %struct.list_head* %links11, i32 0, i32 0, !dbg !4457
  %17 = load %struct.list_head*, %struct.list_head** %next12, align 8, !dbg !4457
  %18 = bitcast %struct.list_head* %17 to i8*, !dbg !4457
  store i8* %18, i8** %__mptr10, align 8, !dbg !4457
  br label %do.body13, !dbg !4457

do.body13:                                        ; preds = %for.inc
  br label %do.end14, !dbg !4458

do.end14:                                         ; preds = %do.body13
  %19 = load i8*, i8** %__mptr10, align 8, !dbg !4457
  %add.ptr16 = getelementptr i8, i8* %19, i64 0, !dbg !4457
  %20 = bitcast i8* %add.ptr16 to %struct.manifest_desc*, !dbg !4457
  store %struct.manifest_desc* %20, %struct.manifest_desc** %tmp15, align 8, !dbg !4458
  %21 = load %struct.manifest_desc*, %struct.manifest_desc** %tmp15, align 8, !dbg !4457
  store %struct.manifest_desc* %21, %struct.manifest_desc** %next, align 8, !dbg !4451
  br label %for.cond, !dbg !4451, !llvm.loop !4460

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4462
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @get_descriptor_type_string(i8 zeroext %type) #0 !dbg !4463 {
entry:
  %retval = alloca i8*, align 8
  %type.addr = alloca i8, align 1
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i8 %type, i8* %type.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %type.addr, metadata !4466, metadata !DIExpression()), !dbg !4467
  %0 = load i8, i8* %type.addr, align 1, !dbg !4468
  %conv = zext i8 %0 to i32, !dbg !4468
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb1
    i32 1, label %sw.bb2
    i32 4, label %sw.bb3
    i32 3, label %sw.bb4
  ], !dbg !4469

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8** %retval, align 8, !dbg !4470
  br label %return, !dbg !4470

sw.bb1:                                           ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8** %retval, align 8, !dbg !4472
  br label %return, !dbg !4472

sw.bb2:                                           ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8** %retval, align 8, !dbg !4473
  br label %return, !dbg !4473

sw.bb3:                                           ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8** %retval, align 8, !dbg !4474
  br label %return, !dbg !4474

sw.bb4:                                           ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8** %retval, align 8, !dbg !4475
  br label %return, !dbg !4475

sw.default:                                       ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4476, metadata !DIExpression()), !dbg !4478
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !4478
  %1 = load i32, i32* %__ret_warn_on, align 4, !dbg !4479
  %tobool = icmp ne i32 %1, 0, !dbg !4479
  %lnot = xor i1 %tobool, true, !dbg !4479
  %lnot5 = xor i1 %lnot, true, !dbg !4479
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !4479
  %conv6 = sext i32 %lnot.ext to i64, !dbg !4479
  %tobool7 = icmp ne i64 %conv6, 0, !dbg !4479
  br i1 %tobool7, label %if.then, label %if.end, !dbg !4478

if.then:                                          ; preds = %sw.default
  br label %do.body, !dbg !4479

do.body:                                          ; preds = %if.then
  br label %do.body8, !dbg !4481

do.body8:                                         ; preds = %do.body
  br label %do.end, !dbg !4483

do.end:                                           ; preds = %do.body8
  br label %do.body9, !dbg !4481

do.body9:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 25, i32 2305, i64 12) #9, !dbg !4485, !srcloc !4487
  br label %do.end10, !dbg !4485

do.end10:                                         ; preds = %do.body9
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 229) #9, !dbg !4488, !srcloc !4490
  br label %do.body11, !dbg !4481

do.body11:                                        ; preds = %do.end10
  br label %do.end12, !dbg !4491

do.end12:                                         ; preds = %do.body11
  br label %do.end13, !dbg !4481

do.end13:                                         ; preds = %do.end12
  br label %if.end, !dbg !4481

if.end:                                           ; preds = %do.end13, %sw.default
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !4478
  %tobool14 = icmp ne i32 %2, 0, !dbg !4478
  %lnot15 = xor i1 %tobool14, true, !dbg !4478
  %lnot17 = xor i1 %lnot15, true, !dbg !4478
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !4478
  %conv19 = sext i32 %lnot.ext18 to i64, !dbg !4478
  store i64 %conv19, i64* %tmp, align 8, !dbg !4479
  %3 = load i64, i64* %tmp, align 8, !dbg !4478
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8** %retval, align 8, !dbg !4493
  br label %return, !dbg !4493

return:                                           ; preds = %if.end, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %4 = load i8*, i8** %retval, align 8, !dbg !4494
  ret i8* %4, !dbg !4494
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4495 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4498, metadata !DIExpression()), !dbg !4502
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4508, metadata !DIExpression()), !dbg !4509
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4510, metadata !DIExpression()), !dbg !4511
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4512, metadata !DIExpression()), !dbg !4513
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4514, metadata !DIExpression()), !dbg !4518
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4520, metadata !DIExpression()), !dbg !4524
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4526, metadata !DIExpression()), !dbg !4530
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4535, metadata !DIExpression()), !dbg !4536
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4537, metadata !DIExpression()), !dbg !4538
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4539, metadata !DIExpression()), !dbg !4540
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4541, metadata !DIExpression()), !dbg !4542
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4543, metadata !DIExpression()), !dbg !4544
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4545, metadata !DIExpression()), !dbg !4546
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4547, metadata !DIExpression()), !dbg !4548
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4549, metadata !DIExpression()), !dbg !4550
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4551, metadata !DIExpression()), !dbg !4552
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4553, metadata !DIExpression()), !dbg !4554
  %0 = load i64, i64* %size.addr, align 8, !dbg !4555
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4556
  %or = or i32 %1, 256, !dbg !4557
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4558
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !4559
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4560

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4561
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4562
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4563

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4564
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4565
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4566
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !4567
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4544
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4568
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4569
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4570
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4571
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4572
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4573
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !4574
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4574
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4574
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4574
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !4574
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4575
  br label %kmalloc.exit, !dbg !4575

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4576
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4577
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4577
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4579

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4580
  br label %kmalloc_index.exit.i, !dbg !4580

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4581
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4583
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4584

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4585
  br label %kmalloc_index.exit.i, !dbg !4585

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4586
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4588
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4589

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4590
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4591
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4592

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4593
  br label %kmalloc_index.exit.i, !dbg !4593

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4594
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4596
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4597

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4598
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4599
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4600

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4601
  br label %kmalloc_index.exit.i, !dbg !4601

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4602
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4604
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4605

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4606
  br label %kmalloc_index.exit.i, !dbg !4606

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4607
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4609
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4610

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4611
  br label %kmalloc_index.exit.i, !dbg !4611

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4612
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4614
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4615

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4616
  br label %kmalloc_index.exit.i, !dbg !4616

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4617
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4619
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4620

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4621
  br label %kmalloc_index.exit.i, !dbg !4621

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4622
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4624
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4625

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4626
  br label %kmalloc_index.exit.i, !dbg !4626

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4627
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4629
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4630

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4631
  br label %kmalloc_index.exit.i, !dbg !4631

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4632
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4634
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4635

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4636
  br label %kmalloc_index.exit.i, !dbg !4636

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4637
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4639
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4640

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4641
  br label %kmalloc_index.exit.i, !dbg !4641

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4642
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4644
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4645

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4646
  br label %kmalloc_index.exit.i, !dbg !4646

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4647
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4649
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4650

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4651
  br label %kmalloc_index.exit.i, !dbg !4651

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4652
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4654
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4655

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4656
  br label %kmalloc_index.exit.i, !dbg !4656

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4657
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4659
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4660

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4661
  br label %kmalloc_index.exit.i, !dbg !4661

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4662
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4664
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4665

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4666
  br label %kmalloc_index.exit.i, !dbg !4666

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4667
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4669
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4670

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4671
  br label %kmalloc_index.exit.i, !dbg !4671

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4672
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4674
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4675

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4676
  br label %kmalloc_index.exit.i, !dbg !4676

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4677
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4679
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4680

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4681
  br label %kmalloc_index.exit.i, !dbg !4681

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4682
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4684
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4685

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4686
  br label %kmalloc_index.exit.i, !dbg !4686

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4687
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4689
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4690

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4691
  br label %kmalloc_index.exit.i, !dbg !4691

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4692
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4694
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4695

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4696
  br label %kmalloc_index.exit.i, !dbg !4696

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4697
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4699
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4700

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4701
  br label %kmalloc_index.exit.i, !dbg !4701

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4702
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4704
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4705

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4706
  br label %kmalloc_index.exit.i, !dbg !4706

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4707
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4709
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4710

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4711
  br label %kmalloc_index.exit.i, !dbg !4711

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4712
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4714
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4715

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4716
  br label %kmalloc_index.exit.i, !dbg !4716

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4717
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4719
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4720

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4721
  br label %kmalloc_index.exit.i, !dbg !4721

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !4722, !srcloc !4725
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #9, !dbg !4726, !srcloc !4729
  unreachable, !dbg !4730

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4731
  store i32 %45, i32* %index.i, align 4, !dbg !4732
  %46 = load i32, i32* %index.i, align 4, !dbg !4733
  %tobool.i = icmp ne i32 %46, 0, !dbg !4733
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4735

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4736
  br label %kmalloc.exit, !dbg !4736

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4737
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4738
  %and.i.i = and i32 %48, 17, !dbg !4738
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4738
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4738
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4738
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4738
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4740

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4741
  br label %kmalloc_type.exit.i, !dbg !4741

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4742
  %and2.i.i = and i32 %49, 1, !dbg !4743
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4742
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4742
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4742
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4744
  br label %kmalloc_type.exit.i, !dbg !4744

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4745
  %idxprom.i = zext i32 %51 to i64, !dbg !4746
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4746
  %52 = load i32, i32* %index.i, align 4, !dbg !4747
  %idxprom6.i = zext i32 %52 to i64, !dbg !4746
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4746
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4746
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4748
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4749
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4750
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4751
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !4752
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4752
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4752
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4752
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !4752
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4513
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4753
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4754
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4755
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4756
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !4757
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4758
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4759
  store i8* %62, i8** %retval.i, align 8, !dbg !4760
  br label %kmalloc.exit, !dbg !4760

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4761
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4762
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !4763
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4763
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4763
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4763
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !4763
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4764
  br label %kmalloc.exit, !dbg !4764

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4765
  ret i8* %65, !dbg !4766
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !4767 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4770, metadata !DIExpression()), !dbg !4771
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !4772, metadata !DIExpression()), !dbg !4773
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4774
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4775
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !4776
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !4776
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4777
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #8, !dbg !4778
  ret void, !dbg !4779
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #4

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !4780 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4784, metadata !DIExpression()), !dbg !4789
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4791, metadata !DIExpression()), !dbg !4792
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4793, metadata !DIExpression()), !dbg !4794
  %0 = load i64, i64* %size.addr, align 8, !dbg !4795
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4797
  br i1 %1, label %if.then, label %if.end447, !dbg !4798

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4799
  %tobool = icmp ne i64 %2, 0, !dbg !4799
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4802

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4803
  br label %return, !dbg !4803

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4804
  %cmp = icmp ult i64 %3, 4096, !dbg !4806
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4807

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4808
  br label %return, !dbg !4808

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub = sub i64 %4, 1, !dbg !4809
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4809
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4809

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub4 = sub i64 %6, 1, !dbg !4809
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4809
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4809

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub6 = sub i64 %8, 1, !dbg !4809
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4809
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4809

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4809

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub9 = sub i64 %9, 1, !dbg !4809
  %and = and i64 %sub9, -9223372036854775808, !dbg !4809
  %tobool10 = icmp ne i64 %and, 0, !dbg !4809
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4809

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4809

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub13 = sub i64 %10, 1, !dbg !4809
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4809
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4809
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4809

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4809

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub18 = sub i64 %11, 1, !dbg !4809
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4809
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4809
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4809

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4809

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub23 = sub i64 %12, 1, !dbg !4809
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4809
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4809
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4809

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4809

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub28 = sub i64 %13, 1, !dbg !4809
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4809
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4809
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4809

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4809

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub33 = sub i64 %14, 1, !dbg !4809
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4809
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4809
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4809

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4809

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub38 = sub i64 %15, 1, !dbg !4809
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4809
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4809
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4809

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4809

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub43 = sub i64 %16, 1, !dbg !4809
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4809
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4809
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4809

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4809

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub48 = sub i64 %17, 1, !dbg !4809
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4809
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4809
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4809

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4809

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub53 = sub i64 %18, 1, !dbg !4809
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4809
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4809
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4809

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4809

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub58 = sub i64 %19, 1, !dbg !4809
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4809
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4809
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4809

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4809

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub63 = sub i64 %20, 1, !dbg !4809
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4809
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4809
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4809

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4809

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub68 = sub i64 %21, 1, !dbg !4809
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4809
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4809
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4809

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4809

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub73 = sub i64 %22, 1, !dbg !4809
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4809
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4809
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4809

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4809

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub78 = sub i64 %23, 1, !dbg !4809
  %and79 = and i64 %sub78, 562949953421312, !dbg !4809
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4809
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4809

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4809

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub83 = sub i64 %24, 1, !dbg !4809
  %and84 = and i64 %sub83, 281474976710656, !dbg !4809
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4809
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4809

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4809

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub88 = sub i64 %25, 1, !dbg !4809
  %and89 = and i64 %sub88, 140737488355328, !dbg !4809
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4809
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4809

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4809

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub93 = sub i64 %26, 1, !dbg !4809
  %and94 = and i64 %sub93, 70368744177664, !dbg !4809
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4809
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4809

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4809

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub98 = sub i64 %27, 1, !dbg !4809
  %and99 = and i64 %sub98, 35184372088832, !dbg !4809
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4809
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4809

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4809

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub103 = sub i64 %28, 1, !dbg !4809
  %and104 = and i64 %sub103, 17592186044416, !dbg !4809
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4809
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4809

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4809

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub108 = sub i64 %29, 1, !dbg !4809
  %and109 = and i64 %sub108, 8796093022208, !dbg !4809
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4809
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4809

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4809

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub113 = sub i64 %30, 1, !dbg !4809
  %and114 = and i64 %sub113, 4398046511104, !dbg !4809
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4809
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4809

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4809

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub118 = sub i64 %31, 1, !dbg !4809
  %and119 = and i64 %sub118, 2199023255552, !dbg !4809
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4809
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4809

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4809

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub123 = sub i64 %32, 1, !dbg !4809
  %and124 = and i64 %sub123, 1099511627776, !dbg !4809
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4809
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4809

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4809

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub128 = sub i64 %33, 1, !dbg !4809
  %and129 = and i64 %sub128, 549755813888, !dbg !4809
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4809
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4809

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4809

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub133 = sub i64 %34, 1, !dbg !4809
  %and134 = and i64 %sub133, 274877906944, !dbg !4809
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4809
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4809

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4809

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub138 = sub i64 %35, 1, !dbg !4809
  %and139 = and i64 %sub138, 137438953472, !dbg !4809
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4809
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4809

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4809

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub143 = sub i64 %36, 1, !dbg !4809
  %and144 = and i64 %sub143, 68719476736, !dbg !4809
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4809
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4809

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4809

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub148 = sub i64 %37, 1, !dbg !4809
  %and149 = and i64 %sub148, 34359738368, !dbg !4809
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4809
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4809

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4809

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub153 = sub i64 %38, 1, !dbg !4809
  %and154 = and i64 %sub153, 17179869184, !dbg !4809
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4809
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4809

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4809

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub158 = sub i64 %39, 1, !dbg !4809
  %and159 = and i64 %sub158, 8589934592, !dbg !4809
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4809
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4809

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4809

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub163 = sub i64 %40, 1, !dbg !4809
  %and164 = and i64 %sub163, 4294967296, !dbg !4809
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4809
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4809

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4809

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub168 = sub i64 %41, 1, !dbg !4809
  %and169 = and i64 %sub168, 2147483648, !dbg !4809
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4809
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4809

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4809

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub173 = sub i64 %42, 1, !dbg !4809
  %and174 = and i64 %sub173, 1073741824, !dbg !4809
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4809
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4809

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4809

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub178 = sub i64 %43, 1, !dbg !4809
  %and179 = and i64 %sub178, 536870912, !dbg !4809
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4809
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4809

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4809

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub183 = sub i64 %44, 1, !dbg !4809
  %and184 = and i64 %sub183, 268435456, !dbg !4809
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4809
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4809

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4809

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub188 = sub i64 %45, 1, !dbg !4809
  %and189 = and i64 %sub188, 134217728, !dbg !4809
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4809
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4809

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4809

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub193 = sub i64 %46, 1, !dbg !4809
  %and194 = and i64 %sub193, 67108864, !dbg !4809
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4809
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4809

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4809

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub198 = sub i64 %47, 1, !dbg !4809
  %and199 = and i64 %sub198, 33554432, !dbg !4809
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4809
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4809

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4809

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub203 = sub i64 %48, 1, !dbg !4809
  %and204 = and i64 %sub203, 16777216, !dbg !4809
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4809
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4809

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4809

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub208 = sub i64 %49, 1, !dbg !4809
  %and209 = and i64 %sub208, 8388608, !dbg !4809
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4809
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4809

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4809

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub213 = sub i64 %50, 1, !dbg !4809
  %and214 = and i64 %sub213, 4194304, !dbg !4809
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4809
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4809

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4809

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub218 = sub i64 %51, 1, !dbg !4809
  %and219 = and i64 %sub218, 2097152, !dbg !4809
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4809
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4809

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4809

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub223 = sub i64 %52, 1, !dbg !4809
  %and224 = and i64 %sub223, 1048576, !dbg !4809
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4809
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4809

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4809

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub228 = sub i64 %53, 1, !dbg !4809
  %and229 = and i64 %sub228, 524288, !dbg !4809
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4809
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4809

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4809

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub233 = sub i64 %54, 1, !dbg !4809
  %and234 = and i64 %sub233, 262144, !dbg !4809
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4809
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4809

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4809

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub238 = sub i64 %55, 1, !dbg !4809
  %and239 = and i64 %sub238, 131072, !dbg !4809
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4809
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4809

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4809

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub243 = sub i64 %56, 1, !dbg !4809
  %and244 = and i64 %sub243, 65536, !dbg !4809
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4809
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4809

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4809

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub248 = sub i64 %57, 1, !dbg !4809
  %and249 = and i64 %sub248, 32768, !dbg !4809
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4809
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4809

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4809

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub253 = sub i64 %58, 1, !dbg !4809
  %and254 = and i64 %sub253, 16384, !dbg !4809
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4809
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4809

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4809

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub258 = sub i64 %59, 1, !dbg !4809
  %and259 = and i64 %sub258, 8192, !dbg !4809
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4809
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4809

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4809

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub263 = sub i64 %60, 1, !dbg !4809
  %and264 = and i64 %sub263, 4096, !dbg !4809
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4809
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4809

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4809

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub268 = sub i64 %61, 1, !dbg !4809
  %and269 = and i64 %sub268, 2048, !dbg !4809
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4809
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4809

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4809

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub273 = sub i64 %62, 1, !dbg !4809
  %and274 = and i64 %sub273, 1024, !dbg !4809
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4809
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4809

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4809

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub278 = sub i64 %63, 1, !dbg !4809
  %and279 = and i64 %sub278, 512, !dbg !4809
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4809
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4809

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4809

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub283 = sub i64 %64, 1, !dbg !4809
  %and284 = and i64 %sub283, 256, !dbg !4809
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4809
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4809

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4809

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub288 = sub i64 %65, 1, !dbg !4809
  %and289 = and i64 %sub288, 128, !dbg !4809
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4809
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4809

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4809

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub293 = sub i64 %66, 1, !dbg !4809
  %and294 = and i64 %sub293, 64, !dbg !4809
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4809
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4809

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4809

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub298 = sub i64 %67, 1, !dbg !4809
  %and299 = and i64 %sub298, 32, !dbg !4809
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4809
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4809

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4809

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub303 = sub i64 %68, 1, !dbg !4809
  %and304 = and i64 %sub303, 16, !dbg !4809
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4809
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4809

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4809

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub308 = sub i64 %69, 1, !dbg !4809
  %and309 = and i64 %sub308, 8, !dbg !4809
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4809
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4809

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4809

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub313 = sub i64 %70, 1, !dbg !4809
  %and314 = and i64 %sub313, 4, !dbg !4809
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4809
  %71 = zext i1 %tobool315 to i64, !dbg !4809
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4809
  br label %cond.end, !dbg !4809

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4809
  br label %cond.end317, !dbg !4809

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4809
  br label %cond.end319, !dbg !4809

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4809
  br label %cond.end321, !dbg !4809

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4809
  br label %cond.end323, !dbg !4809

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4809
  br label %cond.end325, !dbg !4809

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4809
  br label %cond.end327, !dbg !4809

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4809
  br label %cond.end329, !dbg !4809

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4809
  br label %cond.end331, !dbg !4809

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4809
  br label %cond.end333, !dbg !4809

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4809
  br label %cond.end335, !dbg !4809

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4809
  br label %cond.end337, !dbg !4809

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4809
  br label %cond.end339, !dbg !4809

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4809
  br label %cond.end341, !dbg !4809

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4809
  br label %cond.end343, !dbg !4809

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4809
  br label %cond.end345, !dbg !4809

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4809
  br label %cond.end347, !dbg !4809

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4809
  br label %cond.end349, !dbg !4809

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4809
  br label %cond.end351, !dbg !4809

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4809
  br label %cond.end353, !dbg !4809

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4809
  br label %cond.end355, !dbg !4809

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4809
  br label %cond.end357, !dbg !4809

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4809
  br label %cond.end359, !dbg !4809

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4809
  br label %cond.end361, !dbg !4809

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4809
  br label %cond.end363, !dbg !4809

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4809
  br label %cond.end365, !dbg !4809

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4809
  br label %cond.end367, !dbg !4809

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4809
  br label %cond.end369, !dbg !4809

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4809
  br label %cond.end371, !dbg !4809

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4809
  br label %cond.end373, !dbg !4809

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4809
  br label %cond.end375, !dbg !4809

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4809
  br label %cond.end377, !dbg !4809

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4809
  br label %cond.end379, !dbg !4809

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4809
  br label %cond.end381, !dbg !4809

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4809
  br label %cond.end383, !dbg !4809

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4809
  br label %cond.end385, !dbg !4809

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4809
  br label %cond.end387, !dbg !4809

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4809
  br label %cond.end389, !dbg !4809

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4809
  br label %cond.end391, !dbg !4809

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4809
  br label %cond.end393, !dbg !4809

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4809
  br label %cond.end395, !dbg !4809

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4809
  br label %cond.end397, !dbg !4809

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4809
  br label %cond.end399, !dbg !4809

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4809
  br label %cond.end401, !dbg !4809

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4809
  br label %cond.end403, !dbg !4809

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4809
  br label %cond.end405, !dbg !4809

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4809
  br label %cond.end407, !dbg !4809

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4809
  br label %cond.end409, !dbg !4809

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4809
  br label %cond.end411, !dbg !4809

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4809
  br label %cond.end413, !dbg !4809

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4809
  br label %cond.end415, !dbg !4809

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4809
  br label %cond.end417, !dbg !4809

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4809
  br label %cond.end419, !dbg !4809

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4809
  br label %cond.end421, !dbg !4809

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4809
  br label %cond.end423, !dbg !4809

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4809
  br label %cond.end425, !dbg !4809

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4809
  br label %cond.end427, !dbg !4809

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4809
  br label %cond.end429, !dbg !4809

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4809
  br label %cond.end431, !dbg !4809

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4809
  br label %cond.end433, !dbg !4809

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4809
  br label %cond.end435, !dbg !4809

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4809
  br label %cond.end437, !dbg !4809

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4809
  br label %cond.end440, !dbg !4809

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4809

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4809
  br label %cond.end444, !dbg !4809

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4809
  %sub443 = sub i64 %72, 1, !dbg !4809
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !4809
  br label %cond.end444, !dbg !4809

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4809
  %sub446 = sub i32 %cond445, 12, !dbg !4810
  %add = add i32 %sub446, 1, !dbg !4811
  store i32 %add, i32* %retval, align 4, !dbg !4812
  br label %return, !dbg !4812

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4813
  %dec = add i64 %73, -1, !dbg !4813
  store i64 %dec, i64* %size.addr, align 8, !dbg !4813
  %74 = load i64, i64* %size.addr, align 8, !dbg !4814
  %shr = lshr i64 %74, 12, !dbg !4814
  store i64 %shr, i64* %size.addr, align 8, !dbg !4814
  %75 = load i64, i64* %size.addr, align 8, !dbg !4815
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4792
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4816
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4817
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !4816, !srcloc !4818
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4816
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4819
  %add.i = add i32 %79, 1, !dbg !4820
  store i32 %add.i, i32* %retval, align 4, !dbg !4821
  br label %return, !dbg !4821

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4822
  ret i32 %80, !dbg !4822
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !4823 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4784, metadata !DIExpression()), !dbg !4827
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4791, metadata !DIExpression()), !dbg !4829
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4830, metadata !DIExpression()), !dbg !4831
  %0 = load i64, i64* %n.addr, align 8, !dbg !4832
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4829
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4833
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4834
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !4833, !srcloc !4818
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4833
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4835
  %add.i = add i32 %4, 1, !dbg !4836
  %sub = sub i32 %add.i, 1, !dbg !4837
  ret i32 %sub, !dbg !4838
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4839 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4843, metadata !DIExpression()), !dbg !4844
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4845, metadata !DIExpression()), !dbg !4846
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4847, metadata !DIExpression()), !dbg !4848
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4849, metadata !DIExpression()), !dbg !4850
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4851
  ret i8* %0, !dbg !4852
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !4853 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4856, metadata !DIExpression()), !dbg !4857
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !4858, metadata !DIExpression()), !dbg !4859
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !4860, metadata !DIExpression()), !dbg !4861
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4862
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4864
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4865
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #8, !dbg !4866
  br i1 %call, label %if.end, label %if.then, !dbg !4867

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !4868

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4869
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4870
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !4871
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !4872
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4873
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4874
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !4875
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !4876
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4877
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4878
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !4879
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !4880
  br label %do.body, !dbg !4881

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !4882

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !4884

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !4882

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4886
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4886
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !4886
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !4886
  br label %do.end7, !dbg !4886

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !4882

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !4888
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !4889 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4892, metadata !DIExpression()), !dbg !4893
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !4894, metadata !DIExpression()), !dbg !4895
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !4896, metadata !DIExpression()), !dbg !4897
  ret i1 true, !dbg !4898
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @gb_string_get(%struct.gb_interface* %intf, i8 zeroext %string_id) #0 !dbg !4899 {
entry:
  %retval = alloca i8*, align 8
  %intf.addr = alloca %struct.gb_interface*, align 8
  %string_id.addr = alloca i8, align 1
  %desc_string = alloca %struct.greybus_descriptor_string*, align 8
  %descriptor = alloca %struct.manifest_desc*, align 8
  %found = alloca i8, align 1
  %string = alloca i8*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.manifest_desc*, align 8
  %__mptr10 = alloca i8*, align 8
  %tmp15 = alloca %struct.manifest_desc*, align 8
  store %struct.gb_interface* %intf, %struct.gb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_interface** %intf.addr, metadata !4902, metadata !DIExpression()), !dbg !4903
  store i8 %string_id, i8* %string_id.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %string_id.addr, metadata !4904, metadata !DIExpression()), !dbg !4905
  call void @llvm.dbg.declare(metadata %struct.greybus_descriptor_string** %desc_string, metadata !4906, metadata !DIExpression()), !dbg !4908
  call void @llvm.dbg.declare(metadata %struct.manifest_desc** %descriptor, metadata !4909, metadata !DIExpression()), !dbg !4910
  call void @llvm.dbg.declare(metadata i8* %found, metadata !4911, metadata !DIExpression()), !dbg !4912
  store i8 0, i8* %found, align 1, !dbg !4912
  call void @llvm.dbg.declare(metadata i8** %string, metadata !4913, metadata !DIExpression()), !dbg !4914
  %0 = load i8, i8* %string_id.addr, align 1, !dbg !4915
  %tobool = icmp ne i8 %0, 0, !dbg !4915
  br i1 %tobool, label %if.end, label %if.then, !dbg !4917

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !4918
  br label %return, !dbg !4918

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4919, metadata !DIExpression()), !dbg !4922
  %1 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4922
  %manifest_descs = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %1, i32 0, i32 4, !dbg !4922
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %manifest_descs, i32 0, i32 0, !dbg !4922
  %2 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4922
  %3 = bitcast %struct.list_head* %2 to i8*, !dbg !4922
  store i8* %3, i8** %__mptr, align 8, !dbg !4922
  br label %do.body, !dbg !4922

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !4923

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !4922
  %add.ptr = getelementptr i8, i8* %4, i64 0, !dbg !4922
  %5 = bitcast i8* %add.ptr to %struct.manifest_desc*, !dbg !4922
  store %struct.manifest_desc* %5, %struct.manifest_desc** %tmp, align 8, !dbg !4923
  %6 = load %struct.manifest_desc*, %struct.manifest_desc** %tmp, align 8, !dbg !4922
  store %struct.manifest_desc* %6, %struct.manifest_desc** %descriptor, align 8, !dbg !4925
  br label %for.cond, !dbg !4925

for.cond:                                         ; preds = %do.end14, %do.end
  %7 = load %struct.manifest_desc*, %struct.manifest_desc** %descriptor, align 8, !dbg !4926
  %links = getelementptr inbounds %struct.manifest_desc, %struct.manifest_desc* %7, i32 0, i32 0, !dbg !4926
  %8 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4926
  %manifest_descs1 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %8, i32 0, i32 4, !dbg !4926
  %cmp = icmp eq %struct.list_head* %links, %manifest_descs1, !dbg !4926
  %lnot = xor i1 %cmp, true, !dbg !4926
  br i1 %lnot, label %for.body, label %for.end, !dbg !4925

for.body:                                         ; preds = %for.cond
  %9 = load %struct.manifest_desc*, %struct.manifest_desc** %descriptor, align 8, !dbg !4928
  %type = getelementptr inbounds %struct.manifest_desc, %struct.manifest_desc* %9, i32 0, i32 3, !dbg !4931
  %10 = load i32, i32* %type, align 8, !dbg !4931
  %cmp2 = icmp ne i32 %10, 2, !dbg !4932
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !4933

if.then3:                                         ; preds = %for.body
  br label %for.inc, !dbg !4934

if.end4:                                          ; preds = %for.body
  %11 = load %struct.manifest_desc*, %struct.manifest_desc** %descriptor, align 8, !dbg !4935
  %data = getelementptr inbounds %struct.manifest_desc, %struct.manifest_desc* %11, i32 0, i32 2, !dbg !4936
  %12 = load i8*, i8** %data, align 8, !dbg !4936
  %13 = bitcast i8* %12 to %struct.greybus_descriptor_string*, !dbg !4935
  store %struct.greybus_descriptor_string* %13, %struct.greybus_descriptor_string** %desc_string, align 8, !dbg !4937
  %14 = load %struct.greybus_descriptor_string*, %struct.greybus_descriptor_string** %desc_string, align 8, !dbg !4938
  %id = getelementptr inbounds %struct.greybus_descriptor_string, %struct.greybus_descriptor_string* %14, i32 0, i32 1, !dbg !4940
  %15 = load i8, i8* %id, align 1, !dbg !4940
  %conv = zext i8 %15 to i32, !dbg !4938
  %16 = load i8, i8* %string_id.addr, align 1, !dbg !4941
  %conv5 = zext i8 %16 to i32, !dbg !4941
  %cmp6 = icmp eq i32 %conv, %conv5, !dbg !4942
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !4943

if.then8:                                         ; preds = %if.end4
  store i8 1, i8* %found, align 1, !dbg !4944
  br label %for.end, !dbg !4946

if.end9:                                          ; preds = %if.end4
  br label %for.inc, !dbg !4947

for.inc:                                          ; preds = %if.end9, %if.then3
  call void @llvm.dbg.declare(metadata i8** %__mptr10, metadata !4948, metadata !DIExpression()), !dbg !4950
  %17 = load %struct.manifest_desc*, %struct.manifest_desc** %descriptor, align 8, !dbg !4950
  %links11 = getelementptr inbounds %struct.manifest_desc, %struct.manifest_desc* %17, i32 0, i32 0, !dbg !4950
  %next12 = getelementptr inbounds %struct.list_head, %struct.list_head* %links11, i32 0, i32 0, !dbg !4950
  %18 = load %struct.list_head*, %struct.list_head** %next12, align 8, !dbg !4950
  %19 = bitcast %struct.list_head* %18 to i8*, !dbg !4950
  store i8* %19, i8** %__mptr10, align 8, !dbg !4950
  br label %do.body13, !dbg !4950

do.body13:                                        ; preds = %for.inc
  br label %do.end14, !dbg !4951

do.end14:                                         ; preds = %do.body13
  %20 = load i8*, i8** %__mptr10, align 8, !dbg !4950
  %add.ptr16 = getelementptr i8, i8* %20, i64 0, !dbg !4950
  %21 = bitcast i8* %add.ptr16 to %struct.manifest_desc*, !dbg !4950
  store %struct.manifest_desc* %21, %struct.manifest_desc** %tmp15, align 8, !dbg !4951
  %22 = load %struct.manifest_desc*, %struct.manifest_desc** %tmp15, align 8, !dbg !4950
  store %struct.manifest_desc* %22, %struct.manifest_desc** %descriptor, align 8, !dbg !4926
  br label %for.cond, !dbg !4926, !llvm.loop !4953

for.end:                                          ; preds = %if.then8, %for.cond
  %23 = load i8, i8* %found, align 1, !dbg !4955
  %tobool17 = trunc i8 %23 to i1, !dbg !4955
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !4957

if.then18:                                        ; preds = %for.end
  %call = call i8* @ERR_PTR(i64 -2) #8, !dbg !4958
  store i8* %call, i8** %retval, align 8, !dbg !4959
  br label %return, !dbg !4959

if.end19:                                         ; preds = %for.end
  %24 = load %struct.greybus_descriptor_string*, %struct.greybus_descriptor_string** %desc_string, align 8, !dbg !4960
  %string20 = getelementptr inbounds %struct.greybus_descriptor_string, %struct.greybus_descriptor_string* %24, i32 0, i32 2, !dbg !4961
  %25 = bitcast [0 x i8]* %string20 to i8*, !dbg !4962
  %26 = load %struct.greybus_descriptor_string*, %struct.greybus_descriptor_string** %desc_string, align 8, !dbg !4963
  %length = getelementptr inbounds %struct.greybus_descriptor_string, %struct.greybus_descriptor_string* %26, i32 0, i32 0, !dbg !4964
  %27 = load i8, i8* %length, align 1, !dbg !4964
  %conv21 = zext i8 %27 to i32, !dbg !4963
  %add = add i32 %conv21, 1, !dbg !4965
  %conv22 = sext i32 %add to i64, !dbg !4963
  %call23 = call i8* @kmemdup(i8* %25, i64 %conv22, i32 3264) #8, !dbg !4966
  store i8* %call23, i8** %string, align 8, !dbg !4967
  %28 = load i8*, i8** %string, align 8, !dbg !4968
  %tobool24 = icmp ne i8* %28, null, !dbg !4968
  br i1 %tobool24, label %if.end27, label %if.then25, !dbg !4970

if.then25:                                        ; preds = %if.end19
  %call26 = call i8* @ERR_PTR(i64 -12) #8, !dbg !4971
  store i8* %call26, i8** %retval, align 8, !dbg !4972
  br label %return, !dbg !4972

if.end27:                                         ; preds = %if.end19
  %29 = load i8*, i8** %string, align 8, !dbg !4973
  %30 = load %struct.greybus_descriptor_string*, %struct.greybus_descriptor_string** %desc_string, align 8, !dbg !4974
  %length28 = getelementptr inbounds %struct.greybus_descriptor_string, %struct.greybus_descriptor_string* %30, i32 0, i32 0, !dbg !4975
  %31 = load i8, i8* %length28, align 1, !dbg !4975
  %idxprom = zext i8 %31 to i64, !dbg !4973
  %arrayidx = getelementptr i8, i8* %29, i64 %idxprom, !dbg !4973
  store i8 0, i8* %arrayidx, align 1, !dbg !4976
  %32 = load %struct.manifest_desc*, %struct.manifest_desc** %descriptor, align 8, !dbg !4977
  call void @release_manifest_descriptor(%struct.manifest_desc* %32) #8, !dbg !4978
  %33 = load i8*, i8** %string, align 8, !dbg !4979
  store i8* %33, i8** %retval, align 8, !dbg !4980
  br label %return, !dbg !4980

return:                                           ; preds = %if.end27, %if.then25, %if.then18, %if.then
  %34 = load i8*, i8** %retval, align 8, !dbg !4981
  ret i8* %34, !dbg !4981
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !4982 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4986, metadata !DIExpression()), !dbg !4987
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4988
  %1 = ptrtoint i8* %0 to i64, !dbg !4988
  %2 = inttoptr i64 %1 to i8*, !dbg !4988
  %3 = ptrtoint i8* %2 to i64, !dbg !4988
  %cmp = icmp uge i64 %3, -4095, !dbg !4988
  %lnot = xor i1 %cmp, true, !dbg !4988
  %lnot1 = xor i1 %lnot, true, !dbg !4988
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4988
  %conv = sext i32 %lnot.ext to i64, !dbg !4988
  %tobool = icmp ne i64 %conv, 0, !dbg !4988
  ret i1 %tobool, !dbg !4989
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @release_manifest_descriptor(%struct.manifest_desc* %descriptor) #0 !dbg !4990 {
entry:
  %descriptor.addr = alloca %struct.manifest_desc*, align 8
  store %struct.manifest_desc* %descriptor, %struct.manifest_desc** %descriptor.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.manifest_desc** %descriptor.addr, metadata !4993, metadata !DIExpression()), !dbg !4994
  %0 = load %struct.manifest_desc*, %struct.manifest_desc** %descriptor.addr, align 8, !dbg !4995
  %links = getelementptr inbounds %struct.manifest_desc, %struct.manifest_desc* %0, i32 0, i32 0, !dbg !4996
  call void @list_del(%struct.list_head* %links) #8, !dbg !4997
  %1 = load %struct.manifest_desc*, %struct.manifest_desc** %descriptor.addr, align 8, !dbg !4998
  %2 = bitcast %struct.manifest_desc* %1 to i8*, !dbg !4998
  call void @kfree(i8* %2) #8, !dbg !4999
  ret void, !dbg !5000
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gb_manifest_parse_bundles(%struct.gb_interface* %intf) #0 !dbg !5001 {
entry:
  %retval = alloca i32, align 4
  %intf.addr = alloca %struct.gb_interface*, align 8
  %desc = alloca %struct.manifest_desc*, align 8
  %bundle = alloca %struct.gb_bundle*, align 8
  %bundle_next = alloca %struct.gb_bundle*, align 8
  %count = alloca i32, align 4
  %bundle_id = alloca i8, align 1
  %class = alloca i8, align 1
  %desc_bundle = alloca %struct.greybus_descriptor_bundle*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.gb_bundle*, align 8
  %__mptr17 = alloca i8*, align 8
  %tmp21 = alloca %struct.gb_bundle*, align 8
  %__mptr27 = alloca i8*, align 8
  %tmp32 = alloca %struct.gb_bundle*, align 8
  store %struct.gb_interface* %intf, %struct.gb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_interface** %intf.addr, metadata !5004, metadata !DIExpression()), !dbg !5005
  call void @llvm.dbg.declare(metadata %struct.manifest_desc** %desc, metadata !5006, metadata !DIExpression()), !dbg !5007
  call void @llvm.dbg.declare(metadata %struct.gb_bundle** %bundle, metadata !5008, metadata !DIExpression()), !dbg !5009
  call void @llvm.dbg.declare(metadata %struct.gb_bundle** %bundle_next, metadata !5010, metadata !DIExpression()), !dbg !5011
  call void @llvm.dbg.declare(metadata i32* %count, metadata !5012, metadata !DIExpression()), !dbg !5013
  store i32 0, i32* %count, align 4, !dbg !5013
  call void @llvm.dbg.declare(metadata i8* %bundle_id, metadata !5014, metadata !DIExpression()), !dbg !5015
  call void @llvm.dbg.declare(metadata i8* %class, metadata !5016, metadata !DIExpression()), !dbg !5017
  br label %while.cond, !dbg !5018

while.cond:                                       ; preds = %if.end16, %if.then15, %if.then, %entry
  %0 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !5019
  %call = call %struct.manifest_desc* @get_next_bundle_desc(%struct.gb_interface* %0) #8, !dbg !5020
  store %struct.manifest_desc* %call, %struct.manifest_desc** %desc, align 8, !dbg !5021
  %tobool = icmp ne %struct.manifest_desc* %call, null, !dbg !5018
  br i1 %tobool, label %while.body, label %while.end, !dbg !5018

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata %struct.greybus_descriptor_bundle** %desc_bundle, metadata !5022, metadata !DIExpression()), !dbg !5025
  %1 = load %struct.manifest_desc*, %struct.manifest_desc** %desc, align 8, !dbg !5026
  %data = getelementptr inbounds %struct.manifest_desc, %struct.manifest_desc* %1, i32 0, i32 2, !dbg !5027
  %2 = load i8*, i8** %data, align 8, !dbg !5027
  %3 = bitcast i8* %2 to %struct.greybus_descriptor_bundle*, !dbg !5026
  store %struct.greybus_descriptor_bundle* %3, %struct.greybus_descriptor_bundle** %desc_bundle, align 8, !dbg !5028
  %4 = load %struct.greybus_descriptor_bundle*, %struct.greybus_descriptor_bundle** %desc_bundle, align 8, !dbg !5029
  %id = getelementptr inbounds %struct.greybus_descriptor_bundle, %struct.greybus_descriptor_bundle* %4, i32 0, i32 0, !dbg !5030
  %5 = load i8, i8* %id, align 1, !dbg !5030
  store i8 %5, i8* %bundle_id, align 1, !dbg !5031
  %6 = load %struct.greybus_descriptor_bundle*, %struct.greybus_descriptor_bundle** %desc_bundle, align 8, !dbg !5032
  %class1 = getelementptr inbounds %struct.greybus_descriptor_bundle, %struct.greybus_descriptor_bundle* %6, i32 0, i32 1, !dbg !5033
  %7 = load i8, i8* %class1, align 1, !dbg !5033
  store i8 %7, i8* %class, align 1, !dbg !5034
  %8 = load %struct.manifest_desc*, %struct.manifest_desc** %desc, align 8, !dbg !5035
  call void @release_manifest_descriptor(%struct.manifest_desc* %8) #8, !dbg !5036
  %9 = load i8, i8* %bundle_id, align 1, !dbg !5037
  %conv = zext i8 %9 to i32, !dbg !5037
  %cmp = icmp eq i32 %conv, 0, !dbg !5039
  br i1 %cmp, label %if.then, label %if.end, !dbg !5040

if.then:                                          ; preds = %while.body
  %10 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !5041
  %manifest_descs = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %10, i32 0, i32 4, !dbg !5043
  %11 = load i8, i8* %bundle_id, align 1, !dbg !5044
  call void @release_cport_descriptors(%struct.list_head* %manifest_descs, i8 zeroext %11) #8, !dbg !5045
  br label %while.cond, !dbg !5046, !llvm.loop !5047

if.end:                                           ; preds = %while.body
  %12 = load i8, i8* %class, align 1, !dbg !5049
  %conv3 = zext i8 %12 to i32, !dbg !5049
  %cmp4 = icmp eq i32 %conv3, 0, !dbg !5051
  br i1 %cmp4, label %if.then6, label %if.end8, !dbg !5052

if.then6:                                         ; preds = %if.end
  %13 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !5053
  %dev = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %13, i32 0, i32 0, !dbg !5053
  %14 = load i8, i8* %bundle_id, align 1, !dbg !5053
  %conv7 = zext i8 %14 to i32, !dbg !5053
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i64 0, i64 0), i32 %conv7) #10, !dbg !5053
  br label %cleanup, !dbg !5055

if.end8:                                          ; preds = %if.end
  %15 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !5056
  %16 = load i8, i8* %bundle_id, align 1, !dbg !5057
  %17 = load i8, i8* %class, align 1, !dbg !5058
  %call9 = call %struct.gb_bundle* @gb_bundle_create(%struct.gb_interface* %15, i8 zeroext %16, i8 zeroext %17) #8, !dbg !5059
  store %struct.gb_bundle* %call9, %struct.gb_bundle** %bundle, align 8, !dbg !5060
  %18 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !5061
  %tobool10 = icmp ne %struct.gb_bundle* %18, null, !dbg !5061
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !5063

if.then11:                                        ; preds = %if.end8
  br label %cleanup, !dbg !5064

if.end12:                                         ; preds = %if.end8
  %19 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !5065
  %call13 = call i32 @gb_manifest_parse_cports(%struct.gb_bundle* %19) #8, !dbg !5067
  %tobool14 = icmp ne i32 %call13, 0, !dbg !5067
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !5068

if.then15:                                        ; preds = %if.end12
  %20 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !5069
  call void @gb_bundle_destroy(%struct.gb_bundle* %20) #8, !dbg !5071
  br label %while.cond, !dbg !5072, !llvm.loop !5047

if.end16:                                         ; preds = %if.end12
  %21 = load i32, i32* %count, align 4, !dbg !5073
  %inc = add i32 %21, 1, !dbg !5073
  store i32 %inc, i32* %count, align 4, !dbg !5073
  br label %while.cond, !dbg !5018, !llvm.loop !5047

while.end:                                        ; preds = %while.cond
  %22 = load i32, i32* %count, align 4, !dbg !5074
  store i32 %22, i32* %retval, align 4, !dbg !5075
  br label %return, !dbg !5075

cleanup:                                          ; preds = %if.then11, %if.then6
  call void @llvm.dbg.label(metadata !5076), !dbg !5077
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5078, metadata !DIExpression()), !dbg !5081
  %23 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !5081
  %bundles = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %23, i32 0, i32 2, !dbg !5081
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %bundles, i32 0, i32 0, !dbg !5081
  %24 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5081
  %25 = bitcast %struct.list_head* %24 to i8*, !dbg !5081
  store i8* %25, i8** %__mptr, align 8, !dbg !5081
  br label %do.body, !dbg !5081

do.body:                                          ; preds = %cleanup
  br label %do.end, !dbg !5082

do.end:                                           ; preds = %do.body
  %26 = load i8*, i8** %__mptr, align 8, !dbg !5081
  %add.ptr = getelementptr i8, i8* %26, i64 -752, !dbg !5081
  %27 = bitcast i8* %add.ptr to %struct.gb_bundle*, !dbg !5081
  store %struct.gb_bundle* %27, %struct.gb_bundle** %tmp, align 8, !dbg !5082
  %28 = load %struct.gb_bundle*, %struct.gb_bundle** %tmp, align 8, !dbg !5081
  store %struct.gb_bundle* %28, %struct.gb_bundle** %bundle, align 8, !dbg !5084
  call void @llvm.dbg.declare(metadata i8** %__mptr17, metadata !5085, metadata !DIExpression()), !dbg !5087
  %29 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !5087
  %links = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %29, i32 0, i32 10, !dbg !5087
  %next18 = getelementptr inbounds %struct.list_head, %struct.list_head* %links, i32 0, i32 0, !dbg !5087
  %30 = load %struct.list_head*, %struct.list_head** %next18, align 8, !dbg !5087
  %31 = bitcast %struct.list_head* %30 to i8*, !dbg !5087
  store i8* %31, i8** %__mptr17, align 8, !dbg !5087
  br label %do.body19, !dbg !5087

do.body19:                                        ; preds = %do.end
  br label %do.end20, !dbg !5088

do.end20:                                         ; preds = %do.body19
  %32 = load i8*, i8** %__mptr17, align 8, !dbg !5087
  %add.ptr22 = getelementptr i8, i8* %32, i64 -752, !dbg !5087
  %33 = bitcast i8* %add.ptr22 to %struct.gb_bundle*, !dbg !5087
  store %struct.gb_bundle* %33, %struct.gb_bundle** %tmp21, align 8, !dbg !5088
  %34 = load %struct.gb_bundle*, %struct.gb_bundle** %tmp21, align 8, !dbg !5087
  store %struct.gb_bundle* %34, %struct.gb_bundle** %bundle_next, align 8, !dbg !5084
  br label %for.cond, !dbg !5084

for.cond:                                         ; preds = %do.end31, %do.end20
  %35 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !5090
  %links23 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %35, i32 0, i32 10, !dbg !5090
  %36 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !5090
  %bundles24 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %36, i32 0, i32 2, !dbg !5090
  %cmp25 = icmp eq %struct.list_head* %links23, %bundles24, !dbg !5090
  %lnot = xor i1 %cmp25, true, !dbg !5090
  br i1 %lnot, label %for.body, label %for.end, !dbg !5084

for.body:                                         ; preds = %for.cond
  %37 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !5092
  call void @gb_bundle_destroy(%struct.gb_bundle* %37) #8, !dbg !5094
  %38 = load i32, i32* %count, align 4, !dbg !5095
  %dec = add i32 %38, -1, !dbg !5095
  store i32 %dec, i32* %count, align 4, !dbg !5095
  br label %for.inc, !dbg !5096

for.inc:                                          ; preds = %for.body
  %39 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle_next, align 8, !dbg !5090
  store %struct.gb_bundle* %39, %struct.gb_bundle** %bundle, align 8, !dbg !5090
  call void @llvm.dbg.declare(metadata i8** %__mptr27, metadata !5097, metadata !DIExpression()), !dbg !5099
  %40 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle_next, align 8, !dbg !5099
  %links28 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %40, i32 0, i32 10, !dbg !5099
  %next29 = getelementptr inbounds %struct.list_head, %struct.list_head* %links28, i32 0, i32 0, !dbg !5099
  %41 = load %struct.list_head*, %struct.list_head** %next29, align 8, !dbg !5099
  %42 = bitcast %struct.list_head* %41 to i8*, !dbg !5099
  store i8* %42, i8** %__mptr27, align 8, !dbg !5099
  br label %do.body30, !dbg !5099

do.body30:                                        ; preds = %for.inc
  br label %do.end31, !dbg !5100

do.end31:                                         ; preds = %do.body30
  %43 = load i8*, i8** %__mptr27, align 8, !dbg !5099
  %add.ptr33 = getelementptr i8, i8* %43, i64 -752, !dbg !5099
  %44 = bitcast i8* %add.ptr33 to %struct.gb_bundle*, !dbg !5099
  store %struct.gb_bundle* %44, %struct.gb_bundle** %tmp32, align 8, !dbg !5100
  %45 = load %struct.gb_bundle*, %struct.gb_bundle** %tmp32, align 8, !dbg !5099
  store %struct.gb_bundle* %45, %struct.gb_bundle** %bundle_next, align 8, !dbg !5090
  br label %for.cond, !dbg !5090, !llvm.loop !5102

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !5104
  br label %return, !dbg !5104

return:                                           ; preds = %for.end, %while.end
  %46 = load i32, i32* %retval, align 4, !dbg !5105
  ret i32 %46, !dbg !5105
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !5106 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !5109, metadata !DIExpression()), !dbg !5110
  %0 = load i64, i64* %error.addr, align 8, !dbg !5111
  %1 = inttoptr i64 %0 to i8*, !dbg !5112
  ret i8* %1, !dbg !5113
}

; Function Attrs: noredzone
declare dso_local i8* @kmemdup(i8*, i64, i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !5114 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5117, metadata !DIExpression()), !dbg !5118
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5119
  call void @__list_del_entry(%struct.list_head* %0) #8, !dbg !5120
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5121
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !5122
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !5123
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5124
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !5125
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !5126
  ret void, !dbg !5127
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !5128 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5129, metadata !DIExpression()), !dbg !5130
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5131
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #8, !dbg !5133
  br i1 %call, label %if.end, label %if.then, !dbg !5134

if.then:                                          ; preds = %entry
  br label %return, !dbg !5135

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5136
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5137
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !5137
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5138
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !5139
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5139
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #8, !dbg !5140
  br label %return, !dbg !5141

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5141
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !5142 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5145, metadata !DIExpression()), !dbg !5146
  ret i1 true, !dbg !5147
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5148 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5149, metadata !DIExpression()), !dbg !5150
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5151, metadata !DIExpression()), !dbg !5152
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5153
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5154
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5155
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !5156
  br label %do.body, !dbg !5157

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5158

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !5160

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !5158

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5162
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5162
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !5162
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !5162
  br label %do.end5, !dbg !5162

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !5158

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5164
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.manifest_desc* @get_next_bundle_desc(%struct.gb_interface* %intf) #0 !dbg !5165 {
entry:
  %retval = alloca %struct.manifest_desc*, align 8
  %intf.addr = alloca %struct.gb_interface*, align 8
  %descriptor = alloca %struct.manifest_desc*, align 8
  %next = alloca %struct.manifest_desc*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.manifest_desc*, align 8
  %__mptr2 = alloca i8*, align 8
  %tmp6 = alloca %struct.manifest_desc*, align 8
  %__mptr11 = alloca i8*, align 8
  %tmp16 = alloca %struct.manifest_desc*, align 8
  store %struct.gb_interface* %intf, %struct.gb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_interface** %intf.addr, metadata !5168, metadata !DIExpression()), !dbg !5169
  call void @llvm.dbg.declare(metadata %struct.manifest_desc** %descriptor, metadata !5170, metadata !DIExpression()), !dbg !5171
  call void @llvm.dbg.declare(metadata %struct.manifest_desc** %next, metadata !5172, metadata !DIExpression()), !dbg !5173
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5174, metadata !DIExpression()), !dbg !5177
  %0 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !5177
  %manifest_descs = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %0, i32 0, i32 4, !dbg !5177
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %manifest_descs, i32 0, i32 0, !dbg !5177
  %1 = load %struct.list_head*, %struct.list_head** %next1, align 8, !dbg !5177
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !5177
  store i8* %2, i8** %__mptr, align 8, !dbg !5177
  br label %do.body, !dbg !5177

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5178

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !5177
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !5177
  %4 = bitcast i8* %add.ptr to %struct.manifest_desc*, !dbg !5177
  store %struct.manifest_desc* %4, %struct.manifest_desc** %tmp, align 8, !dbg !5178
  %5 = load %struct.manifest_desc*, %struct.manifest_desc** %tmp, align 8, !dbg !5177
  store %struct.manifest_desc* %5, %struct.manifest_desc** %descriptor, align 8, !dbg !5180
  call void @llvm.dbg.declare(metadata i8** %__mptr2, metadata !5181, metadata !DIExpression()), !dbg !5183
  %6 = load %struct.manifest_desc*, %struct.manifest_desc** %descriptor, align 8, !dbg !5183
  %links = getelementptr inbounds %struct.manifest_desc, %struct.manifest_desc* %6, i32 0, i32 0, !dbg !5183
  %next3 = getelementptr inbounds %struct.list_head, %struct.list_head* %links, i32 0, i32 0, !dbg !5183
  %7 = load %struct.list_head*, %struct.list_head** %next3, align 8, !dbg !5183
  %8 = bitcast %struct.list_head* %7 to i8*, !dbg !5183
  store i8* %8, i8** %__mptr2, align 8, !dbg !5183
  br label %do.body4, !dbg !5183

do.body4:                                         ; preds = %do.end
  br label %do.end5, !dbg !5184

do.end5:                                          ; preds = %do.body4
  %9 = load i8*, i8** %__mptr2, align 8, !dbg !5183
  %add.ptr7 = getelementptr i8, i8* %9, i64 0, !dbg !5183
  %10 = bitcast i8* %add.ptr7 to %struct.manifest_desc*, !dbg !5183
  store %struct.manifest_desc* %10, %struct.manifest_desc** %tmp6, align 8, !dbg !5184
  %11 = load %struct.manifest_desc*, %struct.manifest_desc** %tmp6, align 8, !dbg !5183
  store %struct.manifest_desc* %11, %struct.manifest_desc** %next, align 8, !dbg !5180
  br label %for.cond, !dbg !5180

for.cond:                                         ; preds = %do.end15, %do.end5
  %12 = load %struct.manifest_desc*, %struct.manifest_desc** %descriptor, align 8, !dbg !5186
  %links8 = getelementptr inbounds %struct.manifest_desc, %struct.manifest_desc* %12, i32 0, i32 0, !dbg !5186
  %13 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !5186
  %manifest_descs9 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %13, i32 0, i32 4, !dbg !5186
  %cmp = icmp eq %struct.list_head* %links8, %manifest_descs9, !dbg !5186
  %lnot = xor i1 %cmp, true, !dbg !5186
  br i1 %lnot, label %for.body, label %for.end, !dbg !5180

for.body:                                         ; preds = %for.cond
  %14 = load %struct.manifest_desc*, %struct.manifest_desc** %descriptor, align 8, !dbg !5188
  %type = getelementptr inbounds %struct.manifest_desc, %struct.manifest_desc* %14, i32 0, i32 3, !dbg !5190
  %15 = load i32, i32* %type, align 8, !dbg !5190
  %cmp10 = icmp eq i32 %15, 3, !dbg !5191
  br i1 %cmp10, label %if.then, label %if.end, !dbg !5192

if.then:                                          ; preds = %for.body
  %16 = load %struct.manifest_desc*, %struct.manifest_desc** %descriptor, align 8, !dbg !5193
  store %struct.manifest_desc* %16, %struct.manifest_desc** %retval, align 8, !dbg !5194
  br label %return, !dbg !5194

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5195

for.inc:                                          ; preds = %if.end
  %17 = load %struct.manifest_desc*, %struct.manifest_desc** %next, align 8, !dbg !5186
  store %struct.manifest_desc* %17, %struct.manifest_desc** %descriptor, align 8, !dbg !5186
  call void @llvm.dbg.declare(metadata i8** %__mptr11, metadata !5196, metadata !DIExpression()), !dbg !5198
  %18 = load %struct.manifest_desc*, %struct.manifest_desc** %next, align 8, !dbg !5198
  %links12 = getelementptr inbounds %struct.manifest_desc, %struct.manifest_desc* %18, i32 0, i32 0, !dbg !5198
  %next13 = getelementptr inbounds %struct.list_head, %struct.list_head* %links12, i32 0, i32 0, !dbg !5198
  %19 = load %struct.list_head*, %struct.list_head** %next13, align 8, !dbg !5198
  %20 = bitcast %struct.list_head* %19 to i8*, !dbg !5198
  store i8* %20, i8** %__mptr11, align 8, !dbg !5198
  br label %do.body14, !dbg !5198

do.body14:                                        ; preds = %for.inc
  br label %do.end15, !dbg !5199

do.end15:                                         ; preds = %do.body14
  %21 = load i8*, i8** %__mptr11, align 8, !dbg !5198
  %add.ptr17 = getelementptr i8, i8* %21, i64 0, !dbg !5198
  %22 = bitcast i8* %add.ptr17 to %struct.manifest_desc*, !dbg !5198
  store %struct.manifest_desc* %22, %struct.manifest_desc** %tmp16, align 8, !dbg !5199
  %23 = load %struct.manifest_desc*, %struct.manifest_desc** %tmp16, align 8, !dbg !5198
  store %struct.manifest_desc* %23, %struct.manifest_desc** %next, align 8, !dbg !5186
  br label %for.cond, !dbg !5186, !llvm.loop !5201

for.end:                                          ; preds = %for.cond
  store %struct.manifest_desc* null, %struct.manifest_desc** %retval, align 8, !dbg !5203
  br label %return, !dbg !5203

return:                                           ; preds = %for.end, %if.then
  %24 = load %struct.manifest_desc*, %struct.manifest_desc** %retval, align 8, !dbg !5204
  ret %struct.manifest_desc* %24, !dbg !5204
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @release_cport_descriptors(%struct.list_head* %head, i8 zeroext %bundle_id) #0 !dbg !5205 {
entry:
  %head.addr = alloca %struct.list_head*, align 8
  %bundle_id.addr = alloca i8, align 1
  %desc = alloca %struct.manifest_desc*, align 8
  %tmp = alloca %struct.manifest_desc*, align 8
  %desc_cport = alloca %struct.greybus_descriptor_cport*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.manifest_desc*, align 8
  %__mptr2 = alloca i8*, align 8
  %tmp6 = alloca %struct.manifest_desc*, align 8
  %__mptr15 = alloca i8*, align 8
  %tmp20 = alloca %struct.manifest_desc*, align 8
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !5208, metadata !DIExpression()), !dbg !5209
  store i8 %bundle_id, i8* %bundle_id.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %bundle_id.addr, metadata !5210, metadata !DIExpression()), !dbg !5211
  call void @llvm.dbg.declare(metadata %struct.manifest_desc** %desc, metadata !5212, metadata !DIExpression()), !dbg !5213
  call void @llvm.dbg.declare(metadata %struct.manifest_desc** %tmp, metadata !5214, metadata !DIExpression()), !dbg !5215
  call void @llvm.dbg.declare(metadata %struct.greybus_descriptor_cport** %desc_cport, metadata !5216, metadata !DIExpression()), !dbg !5217
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5218, metadata !DIExpression()), !dbg !5221
  %0 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5221
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !5221
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5221
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !5221
  store i8* %2, i8** %__mptr, align 8, !dbg !5221
  br label %do.body, !dbg !5221

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5222

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !5221
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !5221
  %4 = bitcast i8* %add.ptr to %struct.manifest_desc*, !dbg !5221
  store %struct.manifest_desc* %4, %struct.manifest_desc** %tmp1, align 8, !dbg !5222
  %5 = load %struct.manifest_desc*, %struct.manifest_desc** %tmp1, align 8, !dbg !5221
  store %struct.manifest_desc* %5, %struct.manifest_desc** %desc, align 8, !dbg !5224
  call void @llvm.dbg.declare(metadata i8** %__mptr2, metadata !5225, metadata !DIExpression()), !dbg !5227
  %6 = load %struct.manifest_desc*, %struct.manifest_desc** %desc, align 8, !dbg !5227
  %links = getelementptr inbounds %struct.manifest_desc, %struct.manifest_desc* %6, i32 0, i32 0, !dbg !5227
  %next3 = getelementptr inbounds %struct.list_head, %struct.list_head* %links, i32 0, i32 0, !dbg !5227
  %7 = load %struct.list_head*, %struct.list_head** %next3, align 8, !dbg !5227
  %8 = bitcast %struct.list_head* %7 to i8*, !dbg !5227
  store i8* %8, i8** %__mptr2, align 8, !dbg !5227
  br label %do.body4, !dbg !5227

do.body4:                                         ; preds = %do.end
  br label %do.end5, !dbg !5228

do.end5:                                          ; preds = %do.body4
  %9 = load i8*, i8** %__mptr2, align 8, !dbg !5227
  %add.ptr7 = getelementptr i8, i8* %9, i64 0, !dbg !5227
  %10 = bitcast i8* %add.ptr7 to %struct.manifest_desc*, !dbg !5227
  store %struct.manifest_desc* %10, %struct.manifest_desc** %tmp6, align 8, !dbg !5228
  %11 = load %struct.manifest_desc*, %struct.manifest_desc** %tmp6, align 8, !dbg !5227
  store %struct.manifest_desc* %11, %struct.manifest_desc** %tmp, align 8, !dbg !5224
  br label %for.cond, !dbg !5224

for.cond:                                         ; preds = %do.end19, %do.end5
  %12 = load %struct.manifest_desc*, %struct.manifest_desc** %desc, align 8, !dbg !5230
  %links8 = getelementptr inbounds %struct.manifest_desc, %struct.manifest_desc* %12, i32 0, i32 0, !dbg !5230
  %13 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5230
  %cmp = icmp eq %struct.list_head* %links8, %13, !dbg !5230
  %lnot = xor i1 %cmp, true, !dbg !5230
  br i1 %lnot, label %for.body, label %for.end, !dbg !5224

for.body:                                         ; preds = %for.cond
  %14 = load %struct.manifest_desc*, %struct.manifest_desc** %desc, align 8, !dbg !5232
  %data = getelementptr inbounds %struct.manifest_desc, %struct.manifest_desc* %14, i32 0, i32 2, !dbg !5234
  %15 = load i8*, i8** %data, align 8, !dbg !5234
  %16 = bitcast i8* %15 to %struct.greybus_descriptor_cport*, !dbg !5232
  store %struct.greybus_descriptor_cport* %16, %struct.greybus_descriptor_cport** %desc_cport, align 8, !dbg !5235
  %17 = load %struct.manifest_desc*, %struct.manifest_desc** %desc, align 8, !dbg !5236
  %type = getelementptr inbounds %struct.manifest_desc, %struct.manifest_desc* %17, i32 0, i32 3, !dbg !5238
  %18 = load i32, i32* %type, align 8, !dbg !5238
  %cmp9 = icmp ne i32 %18, 4, !dbg !5239
  br i1 %cmp9, label %if.then, label %if.end, !dbg !5240

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !5241

if.end:                                           ; preds = %for.body
  %19 = load %struct.greybus_descriptor_cport*, %struct.greybus_descriptor_cport** %desc_cport, align 8, !dbg !5242
  %bundle = getelementptr inbounds %struct.greybus_descriptor_cport, %struct.greybus_descriptor_cport* %19, i32 0, i32 1, !dbg !5244
  %20 = load i8, i8* %bundle, align 1, !dbg !5244
  %conv = zext i8 %20 to i32, !dbg !5242
  %21 = load i8, i8* %bundle_id.addr, align 1, !dbg !5245
  %conv10 = zext i8 %21 to i32, !dbg !5245
  %cmp11 = icmp eq i32 %conv, %conv10, !dbg !5246
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !5247

if.then13:                                        ; preds = %if.end
  %22 = load %struct.manifest_desc*, %struct.manifest_desc** %desc, align 8, !dbg !5248
  call void @release_manifest_descriptor(%struct.manifest_desc* %22) #8, !dbg !5249
  br label %if.end14, !dbg !5249

if.end14:                                         ; preds = %if.then13, %if.end
  br label %for.inc, !dbg !5250

for.inc:                                          ; preds = %if.end14, %if.then
  %23 = load %struct.manifest_desc*, %struct.manifest_desc** %tmp, align 8, !dbg !5230
  store %struct.manifest_desc* %23, %struct.manifest_desc** %desc, align 8, !dbg !5230
  call void @llvm.dbg.declare(metadata i8** %__mptr15, metadata !5251, metadata !DIExpression()), !dbg !5253
  %24 = load %struct.manifest_desc*, %struct.manifest_desc** %tmp, align 8, !dbg !5253
  %links16 = getelementptr inbounds %struct.manifest_desc, %struct.manifest_desc* %24, i32 0, i32 0, !dbg !5253
  %next17 = getelementptr inbounds %struct.list_head, %struct.list_head* %links16, i32 0, i32 0, !dbg !5253
  %25 = load %struct.list_head*, %struct.list_head** %next17, align 8, !dbg !5253
  %26 = bitcast %struct.list_head* %25 to i8*, !dbg !5253
  store i8* %26, i8** %__mptr15, align 8, !dbg !5253
  br label %do.body18, !dbg !5253

do.body18:                                        ; preds = %for.inc
  br label %do.end19, !dbg !5254

do.end19:                                         ; preds = %do.body18
  %27 = load i8*, i8** %__mptr15, align 8, !dbg !5253
  %add.ptr21 = getelementptr i8, i8* %27, i64 0, !dbg !5253
  %28 = bitcast i8* %add.ptr21 to %struct.manifest_desc*, !dbg !5253
  store %struct.manifest_desc* %28, %struct.manifest_desc** %tmp20, align 8, !dbg !5254
  %29 = load %struct.manifest_desc*, %struct.manifest_desc** %tmp20, align 8, !dbg !5253
  store %struct.manifest_desc* %29, %struct.manifest_desc** %tmp, align 8, !dbg !5230
  br label %for.cond, !dbg !5230, !llvm.loop !5256

for.end:                                          ; preds = %for.cond
  ret void, !dbg !5258
}

; Function Attrs: noredzone
declare dso_local %struct.gb_bundle* @gb_bundle_create(%struct.gb_interface*, i8 zeroext, i8 zeroext) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gb_manifest_parse_cports(%struct.gb_bundle* %bundle) #0 !dbg !5259 {
entry:
  %retval = alloca i32, align 4
  %bundle.addr = alloca %struct.gb_bundle*, align 8
  %intf = alloca %struct.gb_interface*, align 8
  %desc_cport = alloca %struct.greybus_descriptor_cport*, align 8
  %desc = alloca %struct.manifest_desc*, align 8
  %next = alloca %struct.manifest_desc*, align 8
  %tmp = alloca %struct.manifest_desc*, align 8
  %list = alloca %struct.list_head, align 8
  %bundle_id = alloca i8, align 1
  %cport_id = alloca i16, align 2
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp4 = alloca %struct.manifest_desc*, align 8
  %__mptr5 = alloca i8*, align 8
  %tmp9 = alloca %struct.manifest_desc*, align 8
  %__mptr32 = alloca i8*, align 8
  %tmp36 = alloca %struct.manifest_desc*, align 8
  %__mptr54 = alloca i8*, align 8
  %tmp59 = alloca %struct.manifest_desc*, align 8
  %__mptr63 = alloca i8*, align 8
  %tmp68 = alloca %struct.manifest_desc*, align 8
  %__mptr79 = alloca i8*, align 8
  %tmp83 = alloca %struct.manifest_desc*, align 8
  %__mptr85 = alloca i8*, align 8
  %tmp90 = alloca %struct.manifest_desc*, align 8
  %__mptr102 = alloca i8*, align 8
  %tmp107 = alloca %struct.manifest_desc*, align 8
  store %struct.gb_bundle* %bundle, %struct.gb_bundle** %bundle.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_bundle** %bundle.addr, metadata !5262, metadata !DIExpression()), !dbg !5263
  call void @llvm.dbg.declare(metadata %struct.gb_interface** %intf, metadata !5264, metadata !DIExpression()), !dbg !5265
  %0 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle.addr, align 8, !dbg !5266
  %intf1 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %0, i32 0, i32 1, !dbg !5267
  %1 = load %struct.gb_interface*, %struct.gb_interface** %intf1, align 8, !dbg !5267
  store %struct.gb_interface* %1, %struct.gb_interface** %intf, align 8, !dbg !5265
  call void @llvm.dbg.declare(metadata %struct.greybus_descriptor_cport** %desc_cport, metadata !5268, metadata !DIExpression()), !dbg !5269
  call void @llvm.dbg.declare(metadata %struct.manifest_desc** %desc, metadata !5270, metadata !DIExpression()), !dbg !5271
  call void @llvm.dbg.declare(metadata %struct.manifest_desc** %next, metadata !5272, metadata !DIExpression()), !dbg !5273
  call void @llvm.dbg.declare(metadata %struct.manifest_desc** %tmp, metadata !5274, metadata !DIExpression()), !dbg !5275
  call void @llvm.dbg.declare(metadata %struct.list_head* %list, metadata !5276, metadata !DIExpression()), !dbg !5277
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i32 0, i32 0, !dbg !5277
  store %struct.list_head* %list, %struct.list_head** %next2, align 8, !dbg !5277
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i32 0, i32 1, !dbg !5277
  store %struct.list_head* %list, %struct.list_head** %prev, align 8, !dbg !5277
  call void @llvm.dbg.declare(metadata i8* %bundle_id, metadata !5278, metadata !DIExpression()), !dbg !5279
  %2 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle.addr, align 8, !dbg !5280
  %id = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %2, i32 0, i32 2, !dbg !5281
  %3 = load i8, i8* %id, align 8, !dbg !5281
  store i8 %3, i8* %bundle_id, align 1, !dbg !5279
  call void @llvm.dbg.declare(metadata i16* %cport_id, metadata !5282, metadata !DIExpression()), !dbg !5283
  call void @llvm.dbg.declare(metadata i32* %count, metadata !5284, metadata !DIExpression()), !dbg !5285
  store i32 0, i32* %count, align 4, !dbg !5285
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5286, metadata !DIExpression()), !dbg !5287
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5288, metadata !DIExpression()), !dbg !5291
  %4 = load %struct.gb_interface*, %struct.gb_interface** %intf, align 8, !dbg !5291
  %manifest_descs = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %4, i32 0, i32 4, !dbg !5291
  %next3 = getelementptr inbounds %struct.list_head, %struct.list_head* %manifest_descs, i32 0, i32 0, !dbg !5291
  %5 = load %struct.list_head*, %struct.list_head** %next3, align 8, !dbg !5291
  %6 = bitcast %struct.list_head* %5 to i8*, !dbg !5291
  store i8* %6, i8** %__mptr, align 8, !dbg !5291
  br label %do.body, !dbg !5291

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5292

do.end:                                           ; preds = %do.body
  %7 = load i8*, i8** %__mptr, align 8, !dbg !5291
  %add.ptr = getelementptr i8, i8* %7, i64 0, !dbg !5291
  %8 = bitcast i8* %add.ptr to %struct.manifest_desc*, !dbg !5291
  store %struct.manifest_desc* %8, %struct.manifest_desc** %tmp4, align 8, !dbg !5292
  %9 = load %struct.manifest_desc*, %struct.manifest_desc** %tmp4, align 8, !dbg !5291
  store %struct.manifest_desc* %9, %struct.manifest_desc** %desc, align 8, !dbg !5294
  call void @llvm.dbg.declare(metadata i8** %__mptr5, metadata !5295, metadata !DIExpression()), !dbg !5297
  %10 = load %struct.manifest_desc*, %struct.manifest_desc** %desc, align 8, !dbg !5297
  %links = getelementptr inbounds %struct.manifest_desc, %struct.manifest_desc* %10, i32 0, i32 0, !dbg !5297
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %links, i32 0, i32 0, !dbg !5297
  %11 = load %struct.list_head*, %struct.list_head** %next6, align 8, !dbg !5297
  %12 = bitcast %struct.list_head* %11 to i8*, !dbg !5297
  store i8* %12, i8** %__mptr5, align 8, !dbg !5297
  br label %do.body7, !dbg !5297

do.body7:                                         ; preds = %do.end
  br label %do.end8, !dbg !5298

do.end8:                                          ; preds = %do.body7
  %13 = load i8*, i8** %__mptr5, align 8, !dbg !5297
  %add.ptr10 = getelementptr i8, i8* %13, i64 0, !dbg !5297
  %14 = bitcast i8* %add.ptr10 to %struct.manifest_desc*, !dbg !5297
  store %struct.manifest_desc* %14, %struct.manifest_desc** %tmp9, align 8, !dbg !5298
  %15 = load %struct.manifest_desc*, %struct.manifest_desc** %tmp9, align 8, !dbg !5297
  store %struct.manifest_desc* %15, %struct.manifest_desc** %next, align 8, !dbg !5294
  br label %for.cond, !dbg !5294

for.cond:                                         ; preds = %do.end67, %do.end8
  %16 = load %struct.manifest_desc*, %struct.manifest_desc** %desc, align 8, !dbg !5300
  %links11 = getelementptr inbounds %struct.manifest_desc, %struct.manifest_desc* %16, i32 0, i32 0, !dbg !5300
  %17 = load %struct.gb_interface*, %struct.gb_interface** %intf, align 8, !dbg !5300
  %manifest_descs12 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %17, i32 0, i32 4, !dbg !5300
  %cmp = icmp eq %struct.list_head* %links11, %manifest_descs12, !dbg !5300
  %lnot = xor i1 %cmp, true, !dbg !5300
  br i1 %lnot, label %for.body, label %for.end70, !dbg !5294

for.body:                                         ; preds = %for.cond
  %18 = load %struct.manifest_desc*, %struct.manifest_desc** %desc, align 8, !dbg !5302
  %type = getelementptr inbounds %struct.manifest_desc, %struct.manifest_desc* %18, i32 0, i32 3, !dbg !5305
  %19 = load i32, i32* %type, align 8, !dbg !5305
  %cmp13 = icmp ne i32 %19, 4, !dbg !5306
  br i1 %cmp13, label %if.then, label %if.end, !dbg !5307

if.then:                                          ; preds = %for.body
  br label %for.inc62, !dbg !5308

if.end:                                           ; preds = %for.body
  %20 = load %struct.manifest_desc*, %struct.manifest_desc** %desc, align 8, !dbg !5309
  %data = getelementptr inbounds %struct.manifest_desc, %struct.manifest_desc* %20, i32 0, i32 2, !dbg !5310
  %21 = load i8*, i8** %data, align 8, !dbg !5310
  %22 = bitcast i8* %21 to %struct.greybus_descriptor_cport*, !dbg !5309
  store %struct.greybus_descriptor_cport* %22, %struct.greybus_descriptor_cport** %desc_cport, align 8, !dbg !5311
  %23 = load %struct.greybus_descriptor_cport*, %struct.greybus_descriptor_cport** %desc_cport, align 8, !dbg !5312
  %bundle14 = getelementptr inbounds %struct.greybus_descriptor_cport, %struct.greybus_descriptor_cport* %23, i32 0, i32 1, !dbg !5314
  %24 = load i8, i8* %bundle14, align 1, !dbg !5314
  %conv = zext i8 %24 to i32, !dbg !5312
  %25 = load i8, i8* %bundle_id, align 1, !dbg !5315
  %conv15 = zext i8 %25 to i32, !dbg !5315
  %cmp16 = icmp ne i32 %conv, %conv15, !dbg !5316
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !5317

if.then18:                                        ; preds = %if.end
  br label %for.inc62, !dbg !5318

if.end19:                                         ; preds = %if.end
  %26 = load %struct.greybus_descriptor_cport*, %struct.greybus_descriptor_cport** %desc_cport, align 8, !dbg !5319
  %id20 = getelementptr inbounds %struct.greybus_descriptor_cport, %struct.greybus_descriptor_cport* %26, i32 0, i32 0, !dbg !5319
  %27 = load i16, i16* %id20, align 1, !dbg !5319
  store i16 %27, i16* %cport_id, align 2, !dbg !5320
  %28 = load i16, i16* %cport_id, align 2, !dbg !5321
  %conv21 = zext i16 %28 to i32, !dbg !5321
  %cmp22 = icmp sgt i32 %conv21, 4095, !dbg !5323
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !5324

if.then24:                                        ; preds = %if.end19
  br label %exit, !dbg !5325

if.end25:                                         ; preds = %if.end19
  %29 = load i16, i16* %cport_id, align 2, !dbg !5326
  %conv26 = zext i16 %29 to i32, !dbg !5326
  %cmp27 = icmp eq i32 %conv26, 0, !dbg !5328
  br i1 %cmp27, label %if.then29, label %if.end31, !dbg !5329

if.then29:                                        ; preds = %if.end25
  %30 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle.addr, align 8, !dbg !5330
  %dev = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %30, i32 0, i32 0, !dbg !5330
  %31 = load i16, i16* %cport_id, align 2, !dbg !5330
  %conv30 = zext i16 %31 to i32, !dbg !5330
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0), i32 %conv30) #10, !dbg !5330
  br label %exit, !dbg !5332

if.end31:                                         ; preds = %if.end25
  call void @llvm.dbg.declare(metadata i8** %__mptr32, metadata !5333, metadata !DIExpression()), !dbg !5336
  %next33 = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i32 0, i32 0, !dbg !5336
  %32 = load %struct.list_head*, %struct.list_head** %next33, align 8, !dbg !5336
  %33 = bitcast %struct.list_head* %32 to i8*, !dbg !5336
  store i8* %33, i8** %__mptr32, align 8, !dbg !5336
  br label %do.body34, !dbg !5336

do.body34:                                        ; preds = %if.end31
  br label %do.end35, !dbg !5337

do.end35:                                         ; preds = %do.body34
  %34 = load i8*, i8** %__mptr32, align 8, !dbg !5336
  %add.ptr37 = getelementptr i8, i8* %34, i64 0, !dbg !5336
  %35 = bitcast i8* %add.ptr37 to %struct.manifest_desc*, !dbg !5336
  store %struct.manifest_desc* %35, %struct.manifest_desc** %tmp36, align 8, !dbg !5337
  %36 = load %struct.manifest_desc*, %struct.manifest_desc** %tmp36, align 8, !dbg !5336
  store %struct.manifest_desc* %36, %struct.manifest_desc** %tmp, align 8, !dbg !5339
  br label %for.cond38, !dbg !5339

for.cond38:                                       ; preds = %do.end58, %do.end35
  %37 = load %struct.manifest_desc*, %struct.manifest_desc** %tmp, align 8, !dbg !5340
  %links39 = getelementptr inbounds %struct.manifest_desc, %struct.manifest_desc* %37, i32 0, i32 0, !dbg !5340
  %cmp40 = icmp eq %struct.list_head* %links39, %list, !dbg !5340
  %lnot42 = xor i1 %cmp40, true, !dbg !5340
  br i1 %lnot42, label %for.body43, label %for.end, !dbg !5339

for.body43:                                       ; preds = %for.cond38
  %38 = load %struct.manifest_desc*, %struct.manifest_desc** %tmp, align 8, !dbg !5342
  %data44 = getelementptr inbounds %struct.manifest_desc, %struct.manifest_desc* %38, i32 0, i32 2, !dbg !5344
  %39 = load i8*, i8** %data44, align 8, !dbg !5344
  %40 = bitcast i8* %39 to %struct.greybus_descriptor_cport*, !dbg !5342
  store %struct.greybus_descriptor_cport* %40, %struct.greybus_descriptor_cport** %desc_cport, align 8, !dbg !5345
  %41 = load i16, i16* %cport_id, align 2, !dbg !5346
  %conv45 = zext i16 %41 to i32, !dbg !5346
  %42 = load %struct.greybus_descriptor_cport*, %struct.greybus_descriptor_cport** %desc_cport, align 8, !dbg !5348
  %id46 = getelementptr inbounds %struct.greybus_descriptor_cport, %struct.greybus_descriptor_cport* %42, i32 0, i32 0, !dbg !5348
  %43 = load i16, i16* %id46, align 1, !dbg !5348
  %conv47 = zext i16 %43 to i32, !dbg !5348
  %cmp48 = icmp eq i32 %conv45, %conv47, !dbg !5349
  br i1 %cmp48, label %if.then50, label %if.end53, !dbg !5350

if.then50:                                        ; preds = %for.body43
  %44 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle.addr, align 8, !dbg !5351
  %dev51 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %44, i32 0, i32 0, !dbg !5351
  %45 = load i16, i16* %cport_id, align 2, !dbg !5351
  %conv52 = zext i16 %45 to i32, !dbg !5351
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0), i32 %conv52) #10, !dbg !5351
  br label %exit, !dbg !5353

if.end53:                                         ; preds = %for.body43
  br label %for.inc, !dbg !5354

for.inc:                                          ; preds = %if.end53
  call void @llvm.dbg.declare(metadata i8** %__mptr54, metadata !5355, metadata !DIExpression()), !dbg !5357
  %46 = load %struct.manifest_desc*, %struct.manifest_desc** %tmp, align 8, !dbg !5357
  %links55 = getelementptr inbounds %struct.manifest_desc, %struct.manifest_desc* %46, i32 0, i32 0, !dbg !5357
  %next56 = getelementptr inbounds %struct.list_head, %struct.list_head* %links55, i32 0, i32 0, !dbg !5357
  %47 = load %struct.list_head*, %struct.list_head** %next56, align 8, !dbg !5357
  %48 = bitcast %struct.list_head* %47 to i8*, !dbg !5357
  store i8* %48, i8** %__mptr54, align 8, !dbg !5357
  br label %do.body57, !dbg !5357

do.body57:                                        ; preds = %for.inc
  br label %do.end58, !dbg !5358

do.end58:                                         ; preds = %do.body57
  %49 = load i8*, i8** %__mptr54, align 8, !dbg !5357
  %add.ptr60 = getelementptr i8, i8* %49, i64 0, !dbg !5357
  %50 = bitcast i8* %add.ptr60 to %struct.manifest_desc*, !dbg !5357
  store %struct.manifest_desc* %50, %struct.manifest_desc** %tmp59, align 8, !dbg !5358
  %51 = load %struct.manifest_desc*, %struct.manifest_desc** %tmp59, align 8, !dbg !5357
  store %struct.manifest_desc* %51, %struct.manifest_desc** %tmp, align 8, !dbg !5340
  br label %for.cond38, !dbg !5340, !llvm.loop !5360

for.end:                                          ; preds = %for.cond38
  %52 = load %struct.manifest_desc*, %struct.manifest_desc** %desc, align 8, !dbg !5362
  %links61 = getelementptr inbounds %struct.manifest_desc, %struct.manifest_desc* %52, i32 0, i32 0, !dbg !5363
  call void @list_move_tail(%struct.list_head* %links61, %struct.list_head* %list) #8, !dbg !5364
  %53 = load i32, i32* %count, align 4, !dbg !5365
  %inc = add i32 %53, 1, !dbg !5365
  store i32 %inc, i32* %count, align 4, !dbg !5365
  br label %for.inc62, !dbg !5366

for.inc62:                                        ; preds = %for.end, %if.then18, %if.then
  %54 = load %struct.manifest_desc*, %struct.manifest_desc** %next, align 8, !dbg !5300
  store %struct.manifest_desc* %54, %struct.manifest_desc** %desc, align 8, !dbg !5300
  call void @llvm.dbg.declare(metadata i8** %__mptr63, metadata !5367, metadata !DIExpression()), !dbg !5369
  %55 = load %struct.manifest_desc*, %struct.manifest_desc** %next, align 8, !dbg !5369
  %links64 = getelementptr inbounds %struct.manifest_desc, %struct.manifest_desc* %55, i32 0, i32 0, !dbg !5369
  %next65 = getelementptr inbounds %struct.list_head, %struct.list_head* %links64, i32 0, i32 0, !dbg !5369
  %56 = load %struct.list_head*, %struct.list_head** %next65, align 8, !dbg !5369
  %57 = bitcast %struct.list_head* %56 to i8*, !dbg !5369
  store i8* %57, i8** %__mptr63, align 8, !dbg !5369
  br label %do.body66, !dbg !5369

do.body66:                                        ; preds = %for.inc62
  br label %do.end67, !dbg !5370

do.end67:                                         ; preds = %do.body66
  %58 = load i8*, i8** %__mptr63, align 8, !dbg !5369
  %add.ptr69 = getelementptr i8, i8* %58, i64 0, !dbg !5369
  %59 = bitcast i8* %add.ptr69 to %struct.manifest_desc*, !dbg !5369
  store %struct.manifest_desc* %59, %struct.manifest_desc** %tmp68, align 8, !dbg !5370
  %60 = load %struct.manifest_desc*, %struct.manifest_desc** %tmp68, align 8, !dbg !5369
  store %struct.manifest_desc* %60, %struct.manifest_desc** %next, align 8, !dbg !5300
  br label %for.cond, !dbg !5300, !llvm.loop !5372

for.end70:                                        ; preds = %for.cond
  %61 = load i32, i32* %count, align 4, !dbg !5374
  %tobool = icmp ne i32 %61, 0, !dbg !5374
  br i1 %tobool, label %if.end72, label %if.then71, !dbg !5376

if.then71:                                        ; preds = %for.end70
  store i32 0, i32* %retval, align 4, !dbg !5377
  br label %return, !dbg !5377

if.end72:                                         ; preds = %for.end70
  %62 = load i32, i32* %count, align 4, !dbg !5378
  %conv73 = zext i32 %62 to i64, !dbg !5378
  %call = call i8* @kcalloc(i64 %conv73, i64 4, i32 3264) #8, !dbg !5379
  %63 = bitcast i8* %call to %struct.greybus_descriptor_cport*, !dbg !5379
  %64 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle.addr, align 8, !dbg !5380
  %cport_desc = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %64, i32 0, i32 7, !dbg !5381
  store %struct.greybus_descriptor_cport* %63, %struct.greybus_descriptor_cport** %cport_desc, align 8, !dbg !5382
  %65 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle.addr, align 8, !dbg !5383
  %cport_desc74 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %65, i32 0, i32 7, !dbg !5385
  %66 = load %struct.greybus_descriptor_cport*, %struct.greybus_descriptor_cport** %cport_desc74, align 8, !dbg !5385
  %tobool75 = icmp ne %struct.greybus_descriptor_cport* %66, null, !dbg !5383
  br i1 %tobool75, label %if.end77, label %if.then76, !dbg !5386

if.then76:                                        ; preds = %if.end72
  br label %exit, !dbg !5387

if.end77:                                         ; preds = %if.end72
  %67 = load i32, i32* %count, align 4, !dbg !5388
  %conv78 = zext i32 %67 to i64, !dbg !5388
  %68 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle.addr, align 8, !dbg !5389
  %num_cports = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %68, i32 0, i32 6, !dbg !5390
  store i64 %conv78, i64* %num_cports, align 8, !dbg !5391
  store i32 0, i32* %i, align 4, !dbg !5392
  call void @llvm.dbg.declare(metadata i8** %__mptr79, metadata !5393, metadata !DIExpression()), !dbg !5396
  %next80 = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i32 0, i32 0, !dbg !5396
  %69 = load %struct.list_head*, %struct.list_head** %next80, align 8, !dbg !5396
  %70 = bitcast %struct.list_head* %69 to i8*, !dbg !5396
  store i8* %70, i8** %__mptr79, align 8, !dbg !5396
  br label %do.body81, !dbg !5396

do.body81:                                        ; preds = %if.end77
  br label %do.end82, !dbg !5397

do.end82:                                         ; preds = %do.body81
  %71 = load i8*, i8** %__mptr79, align 8, !dbg !5396
  %add.ptr84 = getelementptr i8, i8* %71, i64 0, !dbg !5396
  %72 = bitcast i8* %add.ptr84 to %struct.manifest_desc*, !dbg !5396
  store %struct.manifest_desc* %72, %struct.manifest_desc** %tmp83, align 8, !dbg !5397
  %73 = load %struct.manifest_desc*, %struct.manifest_desc** %tmp83, align 8, !dbg !5396
  store %struct.manifest_desc* %73, %struct.manifest_desc** %desc, align 8, !dbg !5399
  call void @llvm.dbg.declare(metadata i8** %__mptr85, metadata !5400, metadata !DIExpression()), !dbg !5402
  %74 = load %struct.manifest_desc*, %struct.manifest_desc** %desc, align 8, !dbg !5402
  %links86 = getelementptr inbounds %struct.manifest_desc, %struct.manifest_desc* %74, i32 0, i32 0, !dbg !5402
  %next87 = getelementptr inbounds %struct.list_head, %struct.list_head* %links86, i32 0, i32 0, !dbg !5402
  %75 = load %struct.list_head*, %struct.list_head** %next87, align 8, !dbg !5402
  %76 = bitcast %struct.list_head* %75 to i8*, !dbg !5402
  store i8* %76, i8** %__mptr85, align 8, !dbg !5402
  br label %do.body88, !dbg !5402

do.body88:                                        ; preds = %do.end82
  br label %do.end89, !dbg !5403

do.end89:                                         ; preds = %do.body88
  %77 = load i8*, i8** %__mptr85, align 8, !dbg !5402
  %add.ptr91 = getelementptr i8, i8* %77, i64 0, !dbg !5402
  %78 = bitcast i8* %add.ptr91 to %struct.manifest_desc*, !dbg !5402
  store %struct.manifest_desc* %78, %struct.manifest_desc** %tmp90, align 8, !dbg !5403
  %79 = load %struct.manifest_desc*, %struct.manifest_desc** %tmp90, align 8, !dbg !5402
  store %struct.manifest_desc* %79, %struct.manifest_desc** %next, align 8, !dbg !5399
  br label %for.cond92, !dbg !5399

for.cond92:                                       ; preds = %do.end106, %do.end89
  %80 = load %struct.manifest_desc*, %struct.manifest_desc** %desc, align 8, !dbg !5405
  %links93 = getelementptr inbounds %struct.manifest_desc, %struct.manifest_desc* %80, i32 0, i32 0, !dbg !5405
  %cmp94 = icmp eq %struct.list_head* %links93, %list, !dbg !5405
  %lnot96 = xor i1 %cmp94, true, !dbg !5405
  br i1 %lnot96, label %for.body97, label %for.end109, !dbg !5399

for.body97:                                       ; preds = %for.cond92
  %81 = load %struct.manifest_desc*, %struct.manifest_desc** %desc, align 8, !dbg !5407
  %data98 = getelementptr inbounds %struct.manifest_desc, %struct.manifest_desc* %81, i32 0, i32 2, !dbg !5409
  %82 = load i8*, i8** %data98, align 8, !dbg !5409
  %83 = bitcast i8* %82 to %struct.greybus_descriptor_cport*, !dbg !5407
  store %struct.greybus_descriptor_cport* %83, %struct.greybus_descriptor_cport** %desc_cport, align 8, !dbg !5410
  %84 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle.addr, align 8, !dbg !5411
  %cport_desc99 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %84, i32 0, i32 7, !dbg !5412
  %85 = load %struct.greybus_descriptor_cport*, %struct.greybus_descriptor_cport** %cport_desc99, align 8, !dbg !5412
  %86 = load i32, i32* %i, align 4, !dbg !5413
  %inc100 = add i32 %86, 1, !dbg !5413
  store i32 %inc100, i32* %i, align 4, !dbg !5413
  %idxprom = sext i32 %86 to i64, !dbg !5411
  %arrayidx = getelementptr %struct.greybus_descriptor_cport, %struct.greybus_descriptor_cport* %85, i64 %idxprom, !dbg !5411
  %87 = bitcast %struct.greybus_descriptor_cport* %arrayidx to i8*, !dbg !5414
  %88 = load %struct.greybus_descriptor_cport*, %struct.greybus_descriptor_cport** %desc_cport, align 8, !dbg !5415
  %89 = bitcast %struct.greybus_descriptor_cport* %88 to i8*, !dbg !5414
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %87, i8* align 1 %89, i64 4, i1 false), !dbg !5414
  %90 = load %struct.manifest_desc*, %struct.manifest_desc** %desc, align 8, !dbg !5416
  call void @release_manifest_descriptor(%struct.manifest_desc* %90) #8, !dbg !5417
  br label %for.inc101, !dbg !5418

for.inc101:                                       ; preds = %for.body97
  %91 = load %struct.manifest_desc*, %struct.manifest_desc** %next, align 8, !dbg !5405
  store %struct.manifest_desc* %91, %struct.manifest_desc** %desc, align 8, !dbg !5405
  call void @llvm.dbg.declare(metadata i8** %__mptr102, metadata !5419, metadata !DIExpression()), !dbg !5421
  %92 = load %struct.manifest_desc*, %struct.manifest_desc** %next, align 8, !dbg !5421
  %links103 = getelementptr inbounds %struct.manifest_desc, %struct.manifest_desc* %92, i32 0, i32 0, !dbg !5421
  %next104 = getelementptr inbounds %struct.list_head, %struct.list_head* %links103, i32 0, i32 0, !dbg !5421
  %93 = load %struct.list_head*, %struct.list_head** %next104, align 8, !dbg !5421
  %94 = bitcast %struct.list_head* %93 to i8*, !dbg !5421
  store i8* %94, i8** %__mptr102, align 8, !dbg !5421
  br label %do.body105, !dbg !5421

do.body105:                                       ; preds = %for.inc101
  br label %do.end106, !dbg !5422

do.end106:                                        ; preds = %do.body105
  %95 = load i8*, i8** %__mptr102, align 8, !dbg !5421
  %add.ptr108 = getelementptr i8, i8* %95, i64 0, !dbg !5421
  %96 = bitcast i8* %add.ptr108 to %struct.manifest_desc*, !dbg !5421
  store %struct.manifest_desc* %96, %struct.manifest_desc** %tmp107, align 8, !dbg !5422
  %97 = load %struct.manifest_desc*, %struct.manifest_desc** %tmp107, align 8, !dbg !5421
  store %struct.manifest_desc* %97, %struct.manifest_desc** %next, align 8, !dbg !5405
  br label %for.cond92, !dbg !5405, !llvm.loop !5424

for.end109:                                       ; preds = %for.cond92
  %98 = load i32, i32* %count, align 4, !dbg !5426
  store i32 %98, i32* %retval, align 4, !dbg !5427
  br label %return, !dbg !5427

exit:                                             ; preds = %if.then76, %if.then50, %if.then29, %if.then24
  call void @llvm.dbg.label(metadata !5428), !dbg !5429
  %99 = load i8, i8* %bundle_id, align 1, !dbg !5430
  call void @release_cport_descriptors(%struct.list_head* %list, i8 zeroext %99) #8, !dbg !5431
  %100 = load %struct.gb_interface*, %struct.gb_interface** %intf, align 8, !dbg !5432
  %manifest_descs110 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %100, i32 0, i32 4, !dbg !5433
  %101 = load i8, i8* %bundle_id, align 1, !dbg !5434
  call void @release_cport_descriptors(%struct.list_head* %manifest_descs110, i8 zeroext %101) #8, !dbg !5435
  store i32 0, i32* %retval, align 4, !dbg !5436
  br label %return, !dbg !5436

return:                                           ; preds = %exit, %for.end109, %if.then71
  %102 = load i32, i32* %retval, align 4, !dbg !5437
  ret i32 %102, !dbg !5437
}

; Function Attrs: noredzone
declare dso_local void @gb_bundle_destroy(%struct.gb_bundle*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_move_tail(%struct.list_head* %list, %struct.list_head* %head) #0 !dbg !5438 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !5439, metadata !DIExpression()), !dbg !5440
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !5441, metadata !DIExpression()), !dbg !5442
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5443
  call void @__list_del_entry(%struct.list_head* %0) #8, !dbg !5444
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5445
  %2 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5446
  call void @list_add_tail(%struct.list_head* %1, %struct.list_head* %2) #8, !dbg !5447
  ret void, !dbg !5448
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kcalloc(i64 %n, i64 %size, i32 %flags) #0 !dbg !5449 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5452, metadata !DIExpression()), !dbg !5453
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5454, metadata !DIExpression()), !dbg !5455
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5456, metadata !DIExpression()), !dbg !5457
  %0 = load i64, i64* %n.addr, align 8, !dbg !5458
  %1 = load i64, i64* %size.addr, align 8, !dbg !5459
  %2 = load i32, i32* %flags.addr, align 4, !dbg !5460
  %or = or i32 %2, 256, !dbg !5461
  %call = call i8* @kmalloc_array(i64 %0, i64 %1, i32 %or) #8, !dbg !5462
  ret i8* %call, !dbg !5463
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmalloc_array(i64 %n, i64 %size, i32 %flags) #0 !dbg !5464 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4498, metadata !DIExpression()), !dbg !5465
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4508, metadata !DIExpression()), !dbg !5469
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4510, metadata !DIExpression()), !dbg !5470
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4512, metadata !DIExpression()), !dbg !5471
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4514, metadata !DIExpression()), !dbg !5472
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4520, metadata !DIExpression()), !dbg !5474
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4526, metadata !DIExpression()), !dbg !5476
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4535, metadata !DIExpression()), !dbg !5479
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4537, metadata !DIExpression()), !dbg !5480
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4539, metadata !DIExpression()), !dbg !5481
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4541, metadata !DIExpression()), !dbg !5482
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4543, metadata !DIExpression()), !dbg !5483
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4545, metadata !DIExpression()), !dbg !5484
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4547, metadata !DIExpression()), !dbg !5485
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4549, metadata !DIExpression()), !dbg !5486
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
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5487, metadata !DIExpression()), !dbg !5488
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5489, metadata !DIExpression()), !dbg !5490
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5491, metadata !DIExpression()), !dbg !5492
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !5493, metadata !DIExpression()), !dbg !5494
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !5495, metadata !DIExpression()), !dbg !5498
  %0 = load i64, i64* %n.addr, align 8, !dbg !5498
  store i64 %0, i64* %__a, align 8, !dbg !5498
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !5499, metadata !DIExpression()), !dbg !5498
  %1 = load i64, i64* %size.addr, align 8, !dbg !5498
  store i64 %1, i64* %__b, align 8, !dbg !5498
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !5500, metadata !DIExpression()), !dbg !5498
  store i64* %bytes, i64** %__d, align 8, !dbg !5498
  %cmp = icmp eq i64* %__a, %__b, !dbg !5498
  %conv = zext i1 %cmp to i32, !dbg !5498
  %2 = load i64*, i64** %__d, align 8, !dbg !5498
  %cmp1 = icmp eq i64* %__a, %2, !dbg !5498
  %conv2 = zext i1 %cmp1 to i32, !dbg !5498
  %3 = load i64, i64* %__a, align 8, !dbg !5498
  %4 = load i64, i64* %__b, align 8, !dbg !5498
  %5 = load i64*, i64** %__d, align 8, !dbg !5498
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !5498
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !5498
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !5498
  store i64 %8, i64* %5, align 8, !dbg !5498
  %frombool = zext i1 %7 to i8, !dbg !5498
  store i8 %frombool, i8* %tmp, align 1, !dbg !5498
  %9 = load i8, i8* %tmp, align 1, !dbg !5498
  %tobool = trunc i8 %9 to i1, !dbg !5498
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #8, !dbg !5502
  %lnot = xor i1 %call, true, !dbg !5502
  %lnot3 = xor i1 %lnot, true, !dbg !5502
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5502
  %conv4 = sext i32 %lnot.ext to i64, !dbg !5502
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !5502
  br i1 %tobool5, label %if.then, label %if.end, !dbg !5503

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !5504
  br label %return, !dbg !5504

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %n.addr, align 8, !dbg !5505
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !5506
  br i1 %11, label %land.lhs.true, label %if.end8, !dbg !5507

land.lhs.true:                                    ; preds = %if.end
  %12 = load i64, i64* %size.addr, align 8, !dbg !5508
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !5509
  br i1 %13, label %if.then6, label %if.end8, !dbg !5510

if.then6:                                         ; preds = %land.lhs.true
  %14 = load i64, i64* %bytes, align 8, !dbg !5511
  %15 = load i32, i32* %flags.addr, align 4, !dbg !5512
  store i64 %14, i64* %size.addr.i, align 8
  store i32 %15, i32* %flags.addr.i, align 4
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !5513
  %17 = call i1 @llvm.is.constant.i64(i64 %16) #9, !dbg !5514
  br i1 %17, label %if.then.i, label %if.end9.i, !dbg !5515

if.then.i:                                        ; preds = %if.then6
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !5516
  %cmp.i = icmp ugt i64 %18, 8192, !dbg !5517
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5518

if.then1.i:                                       ; preds = %if.then.i
  %19 = load i64, i64* %size.addr.i, align 8, !dbg !5519
  %20 = load i32, i32* %flags.addr.i, align 4, !dbg !5520
  store i64 %19, i64* %size.addr.i.i, align 8
  store i32 %20, i32* %flags.addr.i.i, align 4
  %21 = load i64, i64* %size.addr.i.i, align 8, !dbg !5521
  %call.i.i = call i32 @get_order(i64 %21) #11, !dbg !5522
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5483
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !5523
  %23 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5524
  %24 = load i32, i32* %order.i.i, align 4, !dbg !5525
  store i64 %22, i64* %size.addr.i.i.i, align 8
  store i32 %23, i32* %flags.addr.i.i.i, align 4
  store i32 %24, i32* %order.addr.i.i.i, align 4
  %25 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5526
  %26 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5527
  %27 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5528
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %25, i32 %26, i32 %27) #12, !dbg !5529
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5529
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5529
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5529
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !5529
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5530
  br label %kmalloc.exit, !dbg !5530

if.end.i:                                         ; preds = %if.then.i
  %28 = load i64, i64* %size.addr.i, align 8, !dbg !5531
  store i64 %28, i64* %size.addr.i11.i, align 8
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5532
  %tobool.i.i = icmp ne i64 %29, 0, !dbg !5532
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5533

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5534
  br label %kmalloc_index.exit.i, !dbg !5534

if.end.i.i:                                       ; preds = %if.end.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5535
  %cmp.i.i = icmp ule i64 %30, 8, !dbg !5536
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5537

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5538
  br label %kmalloc_index.exit.i, !dbg !5538

if.end2.i.i:                                      ; preds = %if.end.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5539
  %cmp3.i.i = icmp ugt i64 %31, 64, !dbg !5540
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5541

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5542
  %cmp4.i.i = icmp ule i64 %32, 96, !dbg !5543
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5544

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5545
  br label %kmalloc_index.exit.i, !dbg !5545

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5546
  %cmp7.i.i = icmp ugt i64 %33, 128, !dbg !5547
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5548

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5549
  %cmp9.i.i = icmp ule i64 %34, 192, !dbg !5550
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5551

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5552
  br label %kmalloc_index.exit.i, !dbg !5552

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5553
  %cmp12.i.i = icmp ule i64 %35, 8, !dbg !5554
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5555

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5556
  br label %kmalloc_index.exit.i, !dbg !5556

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5557
  %cmp15.i.i = icmp ule i64 %36, 16, !dbg !5558
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5559

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5560
  br label %kmalloc_index.exit.i, !dbg !5560

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5561
  %cmp18.i.i = icmp ule i64 %37, 32, !dbg !5562
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5563

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5564
  br label %kmalloc_index.exit.i, !dbg !5564

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5565
  %cmp21.i.i = icmp ule i64 %38, 64, !dbg !5566
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5567

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5568
  br label %kmalloc_index.exit.i, !dbg !5568

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5569
  %cmp24.i.i = icmp ule i64 %39, 128, !dbg !5570
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5571

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5572
  br label %kmalloc_index.exit.i, !dbg !5572

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5573
  %cmp27.i.i = icmp ule i64 %40, 256, !dbg !5574
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5575

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5576
  br label %kmalloc_index.exit.i, !dbg !5576

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5577
  %cmp30.i.i = icmp ule i64 %41, 512, !dbg !5578
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5579

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5580
  br label %kmalloc_index.exit.i, !dbg !5580

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5581
  %cmp33.i.i = icmp ule i64 %42, 1024, !dbg !5582
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5583

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5584
  br label %kmalloc_index.exit.i, !dbg !5584

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5585
  %cmp36.i.i = icmp ule i64 %43, 2048, !dbg !5586
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5587

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5588
  br label %kmalloc_index.exit.i, !dbg !5588

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5589
  %cmp39.i.i = icmp ule i64 %44, 4096, !dbg !5590
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5591

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5592
  br label %kmalloc_index.exit.i, !dbg !5592

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5593
  %cmp42.i.i = icmp ule i64 %45, 8192, !dbg !5594
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5595

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5596
  br label %kmalloc_index.exit.i, !dbg !5596

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5597
  %cmp45.i.i = icmp ule i64 %46, 16384, !dbg !5598
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5599

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5600
  br label %kmalloc_index.exit.i, !dbg !5600

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5601
  %cmp48.i.i = icmp ule i64 %47, 32768, !dbg !5602
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5603

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5604
  br label %kmalloc_index.exit.i, !dbg !5604

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5605
  %cmp51.i.i = icmp ule i64 %48, 65536, !dbg !5606
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5607

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5608
  br label %kmalloc_index.exit.i, !dbg !5608

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5609
  %cmp54.i.i = icmp ule i64 %49, 131072, !dbg !5610
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5611

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5612
  br label %kmalloc_index.exit.i, !dbg !5612

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5613
  %cmp57.i.i = icmp ule i64 %50, 262144, !dbg !5614
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5615

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5616
  br label %kmalloc_index.exit.i, !dbg !5616

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5617
  %cmp60.i.i = icmp ule i64 %51, 524288, !dbg !5618
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5619

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5620
  br label %kmalloc_index.exit.i, !dbg !5620

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5621
  %cmp63.i.i = icmp ule i64 %52, 1048576, !dbg !5622
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5623

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5624
  br label %kmalloc_index.exit.i, !dbg !5624

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5625
  %cmp66.i.i = icmp ule i64 %53, 2097152, !dbg !5626
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5627

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5628
  br label %kmalloc_index.exit.i, !dbg !5628

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5629
  %cmp69.i.i = icmp ule i64 %54, 4194304, !dbg !5630
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5631

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5632
  br label %kmalloc_index.exit.i, !dbg !5632

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5633
  %cmp72.i.i = icmp ule i64 %55, 8388608, !dbg !5634
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5635

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5636
  br label %kmalloc_index.exit.i, !dbg !5636

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5637
  %cmp75.i.i = icmp ule i64 %56, 16777216, !dbg !5638
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5639

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5640
  br label %kmalloc_index.exit.i, !dbg !5640

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5641
  %cmp78.i.i = icmp ule i64 %57, 33554432, !dbg !5642
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5643

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5644
  br label %kmalloc_index.exit.i, !dbg !5644

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5645
  %cmp81.i.i = icmp ule i64 %58, 67108864, !dbg !5646
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5647

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5648
  br label %kmalloc_index.exit.i, !dbg !5648

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !5649, !srcloc !4725
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #9, !dbg !5650, !srcloc !4729
  unreachable, !dbg !5651

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %59 = load i32, i32* %retval.i.i, align 4, !dbg !5652
  store i32 %59, i32* %index.i, align 4, !dbg !5653
  %60 = load i32, i32* %index.i, align 4, !dbg !5654
  %tobool.i = icmp ne i32 %60, 0, !dbg !5654
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5655

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5656
  br label %kmalloc.exit, !dbg !5656

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %61 = load i32, i32* %flags.addr.i, align 4, !dbg !5657
  store i32 %61, i32* %flags.addr.i13.i, align 4
  %62 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5658
  %and.i.i = and i32 %62, 17, !dbg !5658
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5658
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5658
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5658
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5658
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5659

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5660
  br label %kmalloc_type.exit.i, !dbg !5660

if.end.i16.i:                                     ; preds = %if.end4.i
  %63 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5661
  %and2.i.i = and i32 %63, 1, !dbg !5662
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5661
  %64 = zext i1 %tobool3.i.i to i64, !dbg !5661
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5661
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5663
  br label %kmalloc_type.exit.i, !dbg !5663

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %65 = load i32, i32* %retval.i12.i, align 4, !dbg !5664
  %idxprom.i = zext i32 %65 to i64, !dbg !5665
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5665
  %66 = load i32, i32* %index.i, align 4, !dbg !5666
  %idxprom6.i = zext i32 %66 to i64, !dbg !5665
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5665
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5665
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !5667
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !5668
  store %struct.kmem_cache* %67, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %68, i32* %flags.addr.i17.i, align 4
  store i64 %69, i64* %size.addr.i18.i, align 8
  %70 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5669
  %71 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5670
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %70, i32 %71) #12, !dbg !5671
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5671
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5671
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5671
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !5671
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5471
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5672
  %73 = load i8*, i8** %ret.i.i, align 8, !dbg !5673
  %74 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5674
  %75 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5675
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %72, i8* %73, i64 %74, i32 %75) #12, !dbg !5676
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5677
  %76 = load i8*, i8** %ret.i.i, align 8, !dbg !5678
  store i8* %76, i8** %retval.i, align 8, !dbg !5679
  br label %kmalloc.exit, !dbg !5679

if.end9.i:                                        ; preds = %if.then6
  %77 = load i64, i64* %size.addr.i, align 8, !dbg !5680
  %78 = load i32, i32* %flags.addr.i, align 4, !dbg !5681
  %call10.i = call noalias i8* @__kmalloc(i64 %77, i32 %78) #12, !dbg !5682
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5682
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5682
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5682
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !5682
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5683
  br label %kmalloc.exit, !dbg !5683

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %79 = load i8*, i8** %retval.i, align 8, !dbg !5684
  store i8* %79, i8** %retval, align 8, !dbg !5685
  br label %return, !dbg !5685

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %80 = load i64, i64* %bytes, align 8, !dbg !5686
  %81 = load i32, i32* %flags.addr, align 4, !dbg !5687
  %call9 = call noalias i8* @__kmalloc(i64 %80, i32 %81) #8, !dbg !5688
  %ptrint = ptrtoint i8* %call9 to i64, !dbg !5688
  %maskedptr = and i64 %ptrint, 7, !dbg !5688
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !5688
  call void @llvm.assume(i1 %maskcond), !dbg !5688
  store i8* %call9, i8** %retval, align 8, !dbg !5689
  br label %return, !dbg !5689

return:                                           ; preds = %if.end8, %kmalloc.exit, %if.then
  %82 = load i8*, i8** %retval, align 8, !dbg !5690
  ret i8* %82, !dbg !5690
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #0 !dbg !5691 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !5695, metadata !DIExpression()), !dbg !5696
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !5697
  %tobool = trunc i8 %0 to i1, !dbg !5697
  %lnot = xor i1 %tobool, true, !dbg !5697
  %lnot1 = xor i1 %lnot, true, !dbg !5697
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5697
  %conv = sext i32 %lnot.ext to i64, !dbg !5697
  %tobool2 = icmp ne i64 %conv, 0, !dbg !5697
  ret i1 %tobool2, !dbg !5698
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone willreturn }
attributes #4 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind willreturn }
attributes #8 = { noredzone }
attributes #9 = { nounwind }
attributes #10 = { cold noredzone }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { noredzone nounwind }
attributes #13 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4052, !4053, !4054, !4055}
!llvm.ident = !{!4056}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !154, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/greybus/manifest.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3, !11, !17, !22, !28, !35, !41, !50, !58, !64, !70, !77, !85, !91, !97, !101, !108, !116, !124, !129, !136}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !4, line: 15, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !12, line: 546, baseType: !5, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!13 = !{!14, !15, !16}
!14 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!15 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!16 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !18, line: 65, baseType: !5, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!19 = !{!20, !21}
!20 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!21 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !23, line: 16, baseType: !5, size: 32, elements: !24)
!23 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!24 = !{!25, !26, !27}
!25 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!26 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!27 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !29, line: 59, baseType: !5, size: 32, elements: !30)
!29 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!30 = !{!31, !32, !33, !34}
!31 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!32 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!33 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!34 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !36, line: 54, baseType: !5, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!37 = !{!38, !39, !40}
!38 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!39 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!40 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !42, line: 296, baseType: !5, size: 32, elements: !43)
!42 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!43 = !{!44, !45, !46, !47, !48, !49}
!44 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!45 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!46 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!47 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!48 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!49 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !51, line: 9, baseType: !5, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!52 = !{!53, !54, !55, !56, !57}
!53 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!54 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!55 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!56 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!57 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !59, line: 26, baseType: !5, size: 32, elements: !60)
!59 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!60 = !{!61, !62, !63}
!61 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!62 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!63 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !65, line: 44, baseType: !5, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!66 = !{!67, !68, !69}
!67 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!68 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!69 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !71, line: 343, baseType: !5, size: 32, elements: !72)
!71 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!72 = !{!73, !74, !75, !76}
!73 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!74 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!75 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!76 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !78, line: 524, baseType: !5, size: 32, elements: !79)
!78 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!79 = !{!80, !81, !82, !83, !84}
!80 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!81 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!82 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!83 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!84 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !78, line: 502, baseType: !5, size: 32, elements: !86)
!86 = !{!87, !88, !89, !90}
!87 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!88 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!89 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!90 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gb_svc_state", file: !92, line: 21, baseType: !5, size: 32, elements: !93)
!92 = !DIFile(filename: "./include/linux/greybus/svc.h", directory: "/home/lizy2001/genbc/linux")
!93 = !{!94, !95, !96}
!94 = !DIEnumerator(name: "GB_SVC_STATE_RESET", value: 0, isUnsigned: true)
!95 = !DIEnumerator(name: "GB_SVC_STATE_PROTOCOL_VERSION", value: 1, isUnsigned: true)
!96 = !DIEnumerator(name: "GB_SVC_STATE_SVC_HELLO", value: 2, isUnsigned: true)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gb_svc_watchdog_bite", file: !92, line: 27, baseType: !5, size: 32, elements: !98)
!98 = !{!99, !100}
!99 = !DIEnumerator(name: "GB_SVC_WATCHDOG_BITE_RESET_UNIPRO", value: 0, isUnsigned: true)
!100 = !DIEnumerator(name: "GB_SVC_WATCHDOG_BITE_PANIC_KERNEL", value: 1, isUnsigned: true)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gb_connection_state", file: !102, line: 27, baseType: !5, size: 32, elements: !103)
!102 = !DIFile(filename: "./include/linux/greybus/connection.h", directory: "/home/lizy2001/genbc/linux")
!103 = !{!104, !105, !106, !107}
!104 = !DIEnumerator(name: "GB_CONNECTION_STATE_DISABLED", value: 0, isUnsigned: true)
!105 = !DIEnumerator(name: "GB_CONNECTION_STATE_ENABLED_TX", value: 1, isUnsigned: true)
!106 = !DIEnumerator(name: "GB_CONNECTION_STATE_ENABLED", value: 2, isUnsigned: true)
!107 = !DIEnumerator(name: "GB_CONNECTION_STATE_DISCONNECTING", value: 3, isUnsigned: true)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gb_interface_type", file: !109, line: 15, baseType: !5, size: 32, elements: !110)
!109 = !DIFile(filename: "./include/linux/greybus/interface.h", directory: "/home/lizy2001/genbc/linux")
!110 = !{!111, !112, !113, !114, !115}
!111 = !DIEnumerator(name: "GB_INTERFACE_TYPE_INVALID", value: 0, isUnsigned: true)
!112 = !DIEnumerator(name: "GB_INTERFACE_TYPE_UNKNOWN", value: 1, isUnsigned: true)
!113 = !DIEnumerator(name: "GB_INTERFACE_TYPE_DUMMY", value: 2, isUnsigned: true)
!114 = !DIEnumerator(name: "GB_INTERFACE_TYPE_UNIPRO", value: 3, isUnsigned: true)
!115 = !DIEnumerator(name: "GB_INTERFACE_TYPE_GREYBUS", value: 4, isUnsigned: true)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "greybus_descriptor_type", file: !117, line: 20, baseType: !5, size: 32, elements: !118)
!117 = !DIFile(filename: "./include/linux/greybus/greybus_manifest.h", directory: "/home/lizy2001/genbc/linux")
!118 = !{!119, !120, !121, !122, !123}
!119 = !DIEnumerator(name: "GREYBUS_TYPE_INVALID", value: 0, isUnsigned: true)
!120 = !DIEnumerator(name: "GREYBUS_TYPE_INTERFACE", value: 1, isUnsigned: true)
!121 = !DIEnumerator(name: "GREYBUS_TYPE_STRING", value: 2, isUnsigned: true)
!122 = !DIEnumerator(name: "GREYBUS_TYPE_BUNDLE", value: 3, isUnsigned: true)
!123 = !DIEnumerator(name: "GREYBUS_TYPE_CPORT", value: 4, isUnsigned: true)
!124 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !125, line: 10, baseType: !5, size: 32, elements: !126)
!125 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!126 = !{!127, !128}
!127 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!128 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !130, line: 305, baseType: !5, size: 32, elements: !131)
!130 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!131 = !{!132, !133, !134, !135}
!132 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!133 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!134 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!135 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!136 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "greybus_class_type", file: !117, line: 61, baseType: !5, size: 32, elements: !137)
!137 = !{!138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153}
!138 = !DIEnumerator(name: "GREYBUS_CLASS_CONTROL", value: 0, isUnsigned: true)
!139 = !DIEnumerator(name: "GREYBUS_CLASS_HID", value: 5, isUnsigned: true)
!140 = !DIEnumerator(name: "GREYBUS_CLASS_POWER_SUPPLY", value: 8, isUnsigned: true)
!141 = !DIEnumerator(name: "GREYBUS_CLASS_BRIDGED_PHY", value: 10, isUnsigned: true)
!142 = !DIEnumerator(name: "GREYBUS_CLASS_DISPLAY", value: 12, isUnsigned: true)
!143 = !DIEnumerator(name: "GREYBUS_CLASS_CAMERA", value: 13, isUnsigned: true)
!144 = !DIEnumerator(name: "GREYBUS_CLASS_SENSOR", value: 14, isUnsigned: true)
!145 = !DIEnumerator(name: "GREYBUS_CLASS_LIGHTS", value: 15, isUnsigned: true)
!146 = !DIEnumerator(name: "GREYBUS_CLASS_VIBRATOR", value: 16, isUnsigned: true)
!147 = !DIEnumerator(name: "GREYBUS_CLASS_LOOPBACK", value: 17, isUnsigned: true)
!148 = !DIEnumerator(name: "GREYBUS_CLASS_AUDIO", value: 18, isUnsigned: true)
!149 = !DIEnumerator(name: "GREYBUS_CLASS_BOOTROM", value: 21, isUnsigned: true)
!150 = !DIEnumerator(name: "GREYBUS_CLASS_FW_MANAGEMENT", value: 22, isUnsigned: true)
!151 = !DIEnumerator(name: "GREYBUS_CLASS_LOG", value: 23, isUnsigned: true)
!152 = !DIEnumerator(name: "GREYBUS_CLASS_RAW", value: 254, isUnsigned: true)
!153 = !DIEnumerator(name: "GREYBUS_CLASS_VENDOR", value: 255, isUnsigned: true)
!154 = !{!155, !158, !160, !205, !207, !208, !226, !219, !229, !230, !223, !231}
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !156, line: 24, baseType: !157)
!156 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!157 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !159, line: 29, baseType: !155)
!159 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "greybus_descriptor", file: !117, line: 160, size: 64, elements: !162)
!162 = !{!163, !171}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !161, file: !117, line: 161, baseType: !164, size: 32)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "greybus_descriptor_header", file: !117, line: 154, size: 32, elements: !165)
!165 = !{!166, !167, !170}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !164, file: !117, line: 155, baseType: !158, size: 16)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !164, file: !117, line: 156, baseType: !168, size: 8, offset: 16)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !156, line: 21, baseType: !169)
!169 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !164, file: !117, line: 157, baseType: !168, size: 8, offset: 24)
!171 = !DIDerivedType(tag: DW_TAG_member, scope: !161, file: !117, line: 162, baseType: !172, size: 32, offset: 32)
!172 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !161, file: !117, line: 162, size: 32, elements: !173)
!173 = !{!174, !183, !190, !199}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !172, file: !117, line: 163, baseType: !175, size: 16)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "greybus_descriptor_string", file: !117, line: 100, size: 16, elements: !176)
!176 = !{!177, !178, !179}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !175, file: !117, line: 101, baseType: !168, size: 8)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !175, file: !117, line: 102, baseType: !168, size: 8, offset: 8)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !175, file: !117, line: 103, baseType: !180, offset: 16)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 0)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "interface", scope: !172, file: !117, line: 164, baseType: !184, size: 32)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "greybus_descriptor_interface", file: !117, line: 110, size: 32, elements: !185)
!185 = !{!186, !187, !188, !189}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_stringid", scope: !184, file: !117, line: 111, baseType: !168, size: 8)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "product_stringid", scope: !184, file: !117, line: 112, baseType: !168, size: 8, offset: 8)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !184, file: !117, line: 113, baseType: !168, size: 8, offset: 16)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !184, file: !117, line: 114, baseType: !168, size: 8, offset: 24)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "bundle", scope: !172, file: !117, line: 165, baseType: !191, size: 32)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "greybus_descriptor_bundle", file: !117, line: 136, size: 32, elements: !192)
!192 = !{!193, !194, !195}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !191, file: !117, line: 137, baseType: !168, size: 8)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !191, file: !117, line: 138, baseType: !168, size: 8, offset: 8)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !191, file: !117, line: 139, baseType: !196, size: 16, offset: 16)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 16, elements: !197)
!197 = !{!198}
!198 = !DISubrange(count: 2)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "cport", scope: !172, file: !117, line: 166, baseType: !200, size: 32)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "greybus_descriptor_cport", file: !117, line: 148, size: 32, elements: !201)
!201 = !{!202, !203, !204}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !200, file: !117, line: 149, baseType: !158, size: 16)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "bundle", scope: !200, file: !117, line: 150, baseType: !168, size: 8, offset: 16)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_id", scope: !200, file: !117, line: 151, baseType: !168, size: 8, offset: 24)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "manifest_desc", file: !1, line: 37, size: 320, elements: !210)
!210 = !{!211, !218, !224, !225}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !209, file: !1, line: 38, baseType: !212, size: 128)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !213, line: 178, size: 128, elements: !214)
!213 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!214 = !{!215, !217}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !212, file: !213, line: 179, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !212, file: !213, line: 179, baseType: !216, size: 64, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !209, file: !1, line: 40, baseType: !219, size: 64, offset: 128)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !213, line: 55, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !221, line: 72, baseType: !222)
!221 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !221, line: 16, baseType: !223)
!223 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !209, file: !1, line: 41, baseType: !207, size: 64, offset: 192)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !209, file: !1, line: 42, baseType: !116, size: 32, offset: 256)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !216)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !213, line: 148, baseType: !5)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_bundle", file: !233, line: 20, size: 6144, elements: !234)
!233 = !DIFile(filename: "./include/linux/greybus/bundle.h", directory: "/home/lizy2001/genbc/linux")
!234 = !{!235, !3829, !4041, !4042, !4043, !4044, !4045, !4046, !4048, !4049, !4051}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !232, file: !233, line: 21, baseType: !236, size: 5568)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !71, line: 461, size: 5568, elements: !237)
!237 = !{!238, !3382, !3384, !3387, !3388, !3439, !3530, !3531, !3532, !3533, !3534, !3543, !3648, !3661, !3664, !3665, !3669, !3671, !3672, !3673, !3677, !3683, !3684, !3687, !3691, !3781, !3782, !3783, !3784, !3785, !3817, !3818, !3819, !3822, !3825, !3826, !3827, !3828}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !236, file: !71, line: 462, baseType: !239, size: 512)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !240, line: 64, size: 512, elements: !241)
!240 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!241 = !{!242, !245, !246, !248, !308, !3233, !3372, !3377, !3378, !3379, !3380, !3381}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !239, file: !240, line: 65, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !206)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !239, file: !240, line: 66, baseType: !212, size: 128, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !239, file: !240, line: 67, baseType: !247, size: 64, offset: 192)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !239, file: !240, line: 68, baseType: !249, size: 64, offset: 256)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !240, line: 192, size: 704, elements: !251)
!251 = !{!252, !253, !269, !270}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !250, file: !240, line: 193, baseType: !212, size: 128)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !250, file: !240, line: 194, baseType: !254, offset: 128)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !255, line: 83, baseType: !256)
!255 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !255, line: 71, elements: !257)
!257 = !{!258}
!258 = !DIDerivedType(tag: DW_TAG_member, scope: !256, file: !255, line: 72, baseType: !259)
!259 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !256, file: !255, line: 72, elements: !260)
!260 = !{!261}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !259, file: !255, line: 73, baseType: !262)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !255, line: 20, elements: !263)
!263 = !{!264}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !262, file: !255, line: 21, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !266, line: 25, baseType: !267)
!266 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !266, line: 25, elements: !268)
!268 = !{}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !250, file: !240, line: 195, baseType: !239, size: 512, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !250, file: !240, line: 196, baseType: !271, size: 64, offset: 640)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !273)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !240, line: 156, size: 192, elements: !274)
!274 = !{!275, !281, !286}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !273, file: !240, line: 157, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{!280, !249, !247}
!280 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !273, file: !240, line: 158, baseType: !282, size: 64, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{!243, !249, !247}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !273, file: !240, line: 159, baseType: !287, size: 64, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !288)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{!280, !249, !247, !291}
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !240, line: 148, size: 20736, elements: !293)
!293 = !{!294, !298, !302, !303, !307}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !292, file: !240, line: 149, baseType: !295, size: 192)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 192, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 3)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !292, file: !240, line: 150, baseType: !299, size: 4096, offset: 192)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 4096, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !292, file: !240, line: 151, baseType: !280, size: 32, offset: 4288)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !292, file: !240, line: 152, baseType: !304, size: 16384, offset: 4320)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 16384, elements: !305)
!305 = !{!306}
!306 = !DISubrange(count: 2048)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !292, file: !240, line: 153, baseType: !280, size: 32, offset: 20704)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !239, file: !240, line: 69, baseType: !309, size: 64, offset: 320)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !240, line: 138, size: 448, elements: !311)
!311 = !{!312, !316, !340, !342, !3195, !3223, !3227}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !310, file: !240, line: 139, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{null, !247}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !310, file: !240, line: 140, baseType: !317, size: 64, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !319)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !320, line: 230, size: 128, elements: !321)
!320 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!321 = !{!322, !336}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !319, file: !320, line: 231, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!326, !247, !330, !205}
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !213, line: 60, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !221, line: 73, baseType: !328)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !221, line: 15, baseType: !329)
!329 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !320, line: 30, size: 128, elements: !332)
!332 = !{!333, !334}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !331, file: !320, line: 31, baseType: !243, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !331, file: !320, line: 32, baseType: !335, size: 16, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !213, line: 19, baseType: !157)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !319, file: !320, line: 232, baseType: !337, size: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{!326, !247, !330, !243, !219}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !310, file: !240, line: 141, baseType: !341, size: 64, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !310, file: !240, line: 142, baseType: !343, size: 64, offset: 192)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !346)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !320, line: 84, size: 320, elements: !347)
!347 = !{!348, !349, !353, !3192, !3193}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !346, file: !320, line: 85, baseType: !243, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !346, file: !320, line: 86, baseType: !350, size: 64, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DISubroutineType(types: !352)
!352 = !{!335, !247, !330, !280}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !346, file: !320, line: 88, baseType: !354, size: 64, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DISubroutineType(types: !356)
!356 = !{!335, !247, !357, !280}
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !320, line: 168, size: 448, elements: !359)
!359 = !{!360, !361, !362, !363, !3187, !3188}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !358, file: !320, line: 169, baseType: !331, size: 128)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !358, file: !320, line: 170, baseType: !219, size: 64, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !358, file: !320, line: 171, baseType: !207, size: 64, offset: 192)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !358, file: !320, line: 172, baseType: !364, size: 64, offset: 256)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{!326, !367, !247, !357, !205, !544, !219}
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !42, line: 916, size: 1856, align: 32, elements: !369)
!369 = !{!370, !388, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3170, !3171, !3180, !3181, !3182, !3183, !3184, !3185, !3186}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !368, file: !42, line: 920, baseType: !371, size: 128)
!371 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !368, file: !42, line: 917, size: 128, elements: !372)
!372 = !{!373, !379}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !371, file: !42, line: 918, baseType: !374, size: 64)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !375, line: 58, size: 64, elements: !376)
!375 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!376 = !{!377}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !374, file: !375, line: 59, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !371, file: !42, line: 919, baseType: !380, size: 128, align: 64)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !213, line: 216, size: 128, align: 64, elements: !381)
!381 = !{!382, !384}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !380, file: !213, line: 217, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !380, file: !213, line: 218, baseType: !385, size: 64, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{null, !383}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !368, file: !42, line: 921, baseType: !389, size: 128, offset: 128)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !390, line: 8, size: 128, elements: !391)
!390 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!391 = !{!392, !396}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !389, file: !390, line: 9, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !395, line: 18, flags: DIFlagFwdDecl)
!395 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!396 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !389, file: !390, line: 10, baseType: !397, size: 64, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !395, line: 89, size: 1536, elements: !399)
!399 = !{!400, !401, !411, !419, !420, !441, !3120, !3122, !3134, !3135, !3136, !3137, !3138, !3144, !3145, !3146}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !398, file: !395, line: 91, baseType: !5, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !398, file: !395, line: 92, baseType: !402, size: 32, offset: 32)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !403, line: 277, baseType: !404)
!403 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !403, line: 277, size: 32, elements: !405)
!405 = !{!406}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !404, file: !403, line: 277, baseType: !407, size: 32)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !403, line: 70, baseType: !408)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !403, line: 65, size: 32, elements: !409)
!409 = !{!410}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !408, file: !403, line: 66, baseType: !5, size: 32)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !398, file: !395, line: 93, baseType: !412, size: 128, offset: 64)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !413, line: 38, size: 128, elements: !414)
!413 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!414 = !{!415, !417}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !412, file: !413, line: 39, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !412, file: !413, line: 39, baseType: !418, size: 64, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !398, file: !395, line: 94, baseType: !397, size: 64, offset: 192)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !398, file: !395, line: 95, baseType: !421, size: 128, offset: 256)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !395, line: 47, size: 128, elements: !422)
!422 = !{!423, !438}
!423 = !DIDerivedType(tag: DW_TAG_member, scope: !421, file: !395, line: 48, baseType: !424, size: 64)
!424 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !421, file: !395, line: 48, size: 64, elements: !425)
!425 = !{!426, !434}
!426 = !DIDerivedType(tag: DW_TAG_member, scope: !424, file: !395, line: 49, baseType: !427, size: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !424, file: !395, line: 49, size: 64, elements: !428)
!428 = !{!429, !433}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !427, file: !395, line: 50, baseType: !430, size: 32)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !431, line: 21, baseType: !432)
!431 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !156, line: 27, baseType: !5)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !427, file: !395, line: 50, baseType: !430, size: 32, offset: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !424, file: !395, line: 52, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !431, line: 23, baseType: !436)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !156, line: 31, baseType: !437)
!437 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !421, file: !395, line: 54, baseType: !439, size: 64, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !398, file: !395, line: 96, baseType: !442, size: 64, offset: 384)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !42, line: 610, size: 4224, elements: !444)
!444 = !{!445, !446, !447, !455, !462, !463, !611, !2832, !2833, !2834, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !3096, !3104, !3105, !3106, !3116, !3117, !3118, !3119}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !443, file: !42, line: 611, baseType: !335, size: 16)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !443, file: !42, line: 612, baseType: !157, size: 16, offset: 16)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !443, file: !42, line: 613, baseType: !448, size: 32, offset: 32)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !449, line: 23, baseType: !450)
!449 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !449, line: 21, size: 32, elements: !451)
!451 = !{!452}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !450, file: !449, line: 22, baseType: !453, size: 32)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !213, line: 32, baseType: !454)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !221, line: 49, baseType: !5)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !443, file: !42, line: 614, baseType: !456, size: 32, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !449, line: 28, baseType: !457)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !449, line: 26, size: 32, elements: !458)
!458 = !{!459}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !457, file: !449, line: 27, baseType: !460, size: 32)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !213, line: 33, baseType: !461)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !221, line: 50, baseType: !5)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !443, file: !42, line: 615, baseType: !5, size: 32, offset: 96)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !443, file: !42, line: 622, baseType: !464, size: 64, offset: 128)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !466)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !42, line: 1864, size: 1536, align: 512, elements: !467)
!467 = !{!468, !472, !485, !489, !495, !499, !505, !509, !513, !517, !521, !522, !528, !532, !558, !587, !591, !597, !602, !606, !607}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !466, file: !42, line: 1865, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{!397, !442, !397, !5}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !466, file: !42, line: 1866, baseType: !473, size: 64, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!243, !397, !442, !476}
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !478, line: 10, size: 128, elements: !479)
!478 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!479 = !{!480, !484}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !477, file: !478, line: 11, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{null, !207}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !477, file: !478, line: 12, baseType: !207, size: 64, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !466, file: !42, line: 1867, baseType: !486, size: 64, offset: 128)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!280, !442, !280}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !466, file: !42, line: 1868, baseType: !490, size: 64, offset: 192)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DISubroutineType(types: !492)
!492 = !{!493, !442, !280}
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !42, line: 581, flags: DIFlagFwdDecl)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !466, file: !42, line: 1870, baseType: !496, size: 64, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!280, !397, !205, !280}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !466, file: !42, line: 1872, baseType: !500, size: 64, offset: 320)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!280, !442, !397, !335, !503}
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !213, line: 30, baseType: !504)
!504 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !466, file: !42, line: 1873, baseType: !506, size: 64, offset: 384)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{!280, !397, !442, !397}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !466, file: !42, line: 1874, baseType: !510, size: 64, offset: 448)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!280, !442, !397}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !466, file: !42, line: 1875, baseType: !514, size: 64, offset: 512)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!280, !442, !397, !243}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !466, file: !42, line: 1876, baseType: !518, size: 64, offset: 576)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!280, !442, !397, !335}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !466, file: !42, line: 1877, baseType: !510, size: 64, offset: 640)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !466, file: !42, line: 1878, baseType: !523, size: 64, offset: 704)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{!280, !442, !397, !335, !526}
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !213, line: 16, baseType: !527)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !213, line: 13, baseType: !430)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !466, file: !42, line: 1879, baseType: !529, size: 64, offset: 768)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!280, !442, !397, !442, !397, !5}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !466, file: !42, line: 1881, baseType: !533, size: 64, offset: 832)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!280, !397, !536}
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !42, line: 219, size: 640, elements: !538)
!538 = !{!539, !540, !541, !542, !543, !547, !555, !556, !557}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !537, file: !42, line: 220, baseType: !5, size: 32)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !537, file: !42, line: 221, baseType: !335, size: 16, offset: 32)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !537, file: !42, line: 222, baseType: !448, size: 32, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !537, file: !42, line: 223, baseType: !456, size: 32, offset: 96)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !537, file: !42, line: 224, baseType: !544, size: 64, offset: 128)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !213, line: 46, baseType: !545)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !221, line: 88, baseType: !546)
!546 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !537, file: !42, line: 225, baseType: !548, size: 128, offset: 192)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !549, line: 13, size: 128, elements: !550)
!549 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!550 = !{!551, !554}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !548, file: !549, line: 14, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !549, line: 8, baseType: !553)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !156, line: 30, baseType: !546)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !548, file: !549, line: 15, baseType: !329, size: 64, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !537, file: !42, line: 226, baseType: !548, size: 128, offset: 320)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !537, file: !42, line: 227, baseType: !548, size: 128, offset: 448)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !537, file: !42, line: 234, baseType: !367, size: 64, offset: 576)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !466, file: !42, line: 1882, baseType: !559, size: 64, offset: 896)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{!280, !562, !564, !430, !5}
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !389)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !566, line: 22, size: 1152, elements: !567)
!566 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!567 = !{!568, !569, !570, !571, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !565, file: !566, line: 23, baseType: !430, size: 32)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !565, file: !566, line: 24, baseType: !335, size: 16, offset: 32)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !565, file: !566, line: 25, baseType: !5, size: 32, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !565, file: !566, line: 26, baseType: !572, size: 32, offset: 96)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !213, line: 104, baseType: !430)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !565, file: !566, line: 27, baseType: !435, size: 64, offset: 128)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !565, file: !566, line: 28, baseType: !435, size: 64, offset: 192)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !565, file: !566, line: 37, baseType: !435, size: 64, offset: 256)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !565, file: !566, line: 38, baseType: !526, size: 32, offset: 320)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !565, file: !566, line: 39, baseType: !526, size: 32, offset: 352)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !565, file: !566, line: 40, baseType: !448, size: 32, offset: 384)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !565, file: !566, line: 41, baseType: !456, size: 32, offset: 416)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !565, file: !566, line: 42, baseType: !544, size: 64, offset: 448)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !565, file: !566, line: 43, baseType: !548, size: 128, offset: 512)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !565, file: !566, line: 44, baseType: !548, size: 128, offset: 640)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !565, file: !566, line: 45, baseType: !548, size: 128, offset: 768)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !565, file: !566, line: 46, baseType: !548, size: 128, offset: 896)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !565, file: !566, line: 47, baseType: !435, size: 64, offset: 1024)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !565, file: !566, line: 48, baseType: !435, size: 64, offset: 1088)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !466, file: !42, line: 1883, baseType: !588, size: 64, offset: 960)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DISubroutineType(types: !590)
!590 = !{!326, !397, !205, !219}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !466, file: !42, line: 1884, baseType: !592, size: 64, offset: 1024)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{!280, !442, !595, !435, !435}
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !42, line: 50, flags: DIFlagFwdDecl)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !466, file: !42, line: 1886, baseType: !598, size: 64, offset: 1088)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{!280, !442, !601, !280}
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !466, file: !42, line: 1887, baseType: !603, size: 64, offset: 1152)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{!280, !442, !397, !367, !5, !335}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !466, file: !42, line: 1890, baseType: !518, size: 64, offset: 1216)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !466, file: !42, line: 1891, baseType: !608, size: 64, offset: 1280)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{!280, !442, !493, !280}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !443, file: !42, line: 623, baseType: !612, size: 64, offset: 192)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !42, line: 1416, size: 9472, elements: !614)
!614 = !{!615, !616, !617, !618, !619, !620, !670, !2439, !2521, !2604, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2620, !2624, !2625, !2628, !2629, !2632, !2633, !2634, !2675, !2702, !2703, !2704, !2705, !2706, !2707, !2710, !2712, !2719, !2720, !2722, !2723, !2724, !2783, !2784, !2799, !2800, !2801, !2802, !2803, !2806, !2807, !2808, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !613, file: !42, line: 1417, baseType: !212, size: 128)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !613, file: !42, line: 1418, baseType: !526, size: 32, offset: 128)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !613, file: !42, line: 1419, baseType: !169, size: 8, offset: 160)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !613, file: !42, line: 1420, baseType: !223, size: 64, offset: 192)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !613, file: !42, line: 1421, baseType: !544, size: 64, offset: 256)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !613, file: !42, line: 1422, baseType: !621, size: 64, offset: 320)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !42, line: 2228, size: 576, elements: !623)
!623 = !{!624, !625, !626, !633, !637, !641, !645, !649, !650, !660, !663, !664, !665, !667, !668, !669}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !622, file: !42, line: 2229, baseType: !243, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !622, file: !42, line: 2230, baseType: !280, size: 32, offset: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !622, file: !42, line: 2238, baseType: !627, size: 64, offset: 128)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!280, !630}
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !632, line: 28, flags: DIFlagFwdDecl)
!632 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!633 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !622, file: !42, line: 2239, baseType: !634, size: 64, offset: 192)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !636)
!636 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !42, line: 70, flags: DIFlagFwdDecl)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !622, file: !42, line: 2240, baseType: !638, size: 64, offset: 256)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{!397, !621, !280, !243, !207}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !622, file: !42, line: 2242, baseType: !642, size: 64, offset: 320)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{null, !612}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !622, file: !42, line: 2243, baseType: !646, size: 64, offset: 384)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !648, line: 76, flags: DIFlagFwdDecl)
!648 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!649 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !622, file: !42, line: 2244, baseType: !621, size: 64, offset: 448)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !622, file: !42, line: 2245, baseType: !651, size: 64, offset: 512)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !213, line: 182, size: 64, elements: !652)
!652 = !{!653}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !651, file: !213, line: 183, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !213, line: 186, size: 128, elements: !656)
!656 = !{!657, !658}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !655, file: !213, line: 187, baseType: !654, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !655, file: !213, line: 187, baseType: !659, size: 64, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !622, file: !42, line: 2247, baseType: !661, offset: 576)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !662, line: 187, elements: !268)
!662 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!663 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !622, file: !42, line: 2248, baseType: !661, offset: 576)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !622, file: !42, line: 2249, baseType: !661, offset: 576)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !622, file: !42, line: 2250, baseType: !666, offset: 576)
!666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !661, elements: !296)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !622, file: !42, line: 2252, baseType: !661, offset: 576)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !622, file: !42, line: 2253, baseType: !661, offset: 576)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !622, file: !42, line: 2254, baseType: !661, offset: 576)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !613, file: !42, line: 1423, baseType: !671, size: 64, offset: 384)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !673)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !42, line: 1935, size: 1472, elements: !674)
!674 = !{!675, !679, !683, !684, !688, !694, !698, !699, !700, !704, !708, !709, !710, !711, !717, !722, !723, !730, !731, !732, !733, !2423, !2438}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !673, file: !42, line: 1936, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DISubroutineType(types: !678)
!678 = !{!442, !612}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !673, file: !42, line: 1937, baseType: !680, size: 64, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{null, !442}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !673, file: !42, line: 1938, baseType: !680, size: 64, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !673, file: !42, line: 1940, baseType: !685, size: 64, offset: 192)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DISubroutineType(types: !687)
!687 = !{null, !442, !280}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !673, file: !42, line: 1941, baseType: !689, size: 64, offset: 256)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{!280, !442, !692}
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !12, line: 40, flags: DIFlagFwdDecl)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !673, file: !42, line: 1942, baseType: !695, size: 64, offset: 320)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{!280, !442}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !673, file: !42, line: 1943, baseType: !680, size: 64, offset: 384)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !673, file: !42, line: 1944, baseType: !642, size: 64, offset: 448)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !673, file: !42, line: 1945, baseType: !701, size: 64, offset: 512)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DISubroutineType(types: !703)
!703 = !{!280, !612, !280}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !673, file: !42, line: 1946, baseType: !705, size: 64, offset: 576)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DISubroutineType(types: !707)
!707 = !{!280, !612}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !673, file: !42, line: 1947, baseType: !705, size: 64, offset: 640)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !673, file: !42, line: 1948, baseType: !705, size: 64, offset: 704)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !673, file: !42, line: 1949, baseType: !705, size: 64, offset: 768)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !673, file: !42, line: 1950, baseType: !712, size: 64, offset: 832)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DISubroutineType(types: !714)
!714 = !{!280, !397, !715}
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !42, line: 57, flags: DIFlagFwdDecl)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !673, file: !42, line: 1951, baseType: !718, size: 64, offset: 896)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{!280, !612, !721, !205}
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !673, file: !42, line: 1952, baseType: !642, size: 64, offset: 960)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !673, file: !42, line: 1954, baseType: !724, size: 64, offset: 1024)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{!280, !727, !397}
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !729, line: 539, flags: DIFlagFwdDecl)
!729 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!730 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !673, file: !42, line: 1955, baseType: !724, size: 64, offset: 1088)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !673, file: !42, line: 1956, baseType: !724, size: 64, offset: 1152)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !673, file: !42, line: 1957, baseType: !724, size: 64, offset: 1216)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !673, file: !42, line: 1963, baseType: !734, size: 64, offset: 1280)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!280, !612, !737, !229}
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !739, line: 68, size: 512, align: 128, elements: !740)
!739 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!740 = !{!741, !742, !2415, !2422}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !738, file: !739, line: 69, baseType: !223, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, scope: !738, file: !739, line: 77, baseType: !743, size: 320, offset: 64)
!743 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !738, file: !739, line: 77, size: 320, elements: !744)
!744 = !{!745, !931, !936, !964, !972, !978, !2346, !2414}
!745 = !DIDerivedType(tag: DW_TAG_member, scope: !743, file: !739, line: 78, baseType: !746, size: 320)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !743, file: !739, line: 78, size: 320, elements: !747)
!747 = !{!748, !749, !929, !930}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !746, file: !739, line: 84, baseType: !212, size: 128)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !746, file: !739, line: 86, baseType: !750, size: 64, offset: 128)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !42, line: 451, size: 1216, align: 64, elements: !752)
!752 = !{!753, !754, !761, !762, !767, !782, !798, !799, !800, !801, !922, !923, !926, !927, !928}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !751, file: !42, line: 452, baseType: !442, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !751, file: !42, line: 453, baseType: !755, size: 128, offset: 64)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !756, line: 292, size: 128, elements: !757)
!756 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!757 = !{!758, !759, !760}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !755, file: !756, line: 293, baseType: !254)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !755, file: !756, line: 295, baseType: !229, size: 32)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !755, file: !756, line: 296, baseType: !207, size: 64, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !751, file: !42, line: 454, baseType: !229, size: 32, offset: 192)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !751, file: !42, line: 455, baseType: !763, size: 32, offset: 224)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !213, line: 168, baseType: !764)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !213, line: 166, size: 32, elements: !765)
!765 = !{!766}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !764, file: !213, line: 167, baseType: !280, size: 32)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !751, file: !42, line: 460, baseType: !768, size: 128, offset: 256)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !769, line: 125, size: 128, elements: !770)
!769 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!770 = !{!771, !781}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !768, file: !769, line: 126, baseType: !772, size: 64)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !769, line: 31, size: 64, elements: !773)
!773 = !{!774}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !772, file: !769, line: 32, baseType: !775, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !769, line: 24, size: 192, align: 64, elements: !777)
!777 = !{!778, !779, !780}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !776, file: !769, line: 25, baseType: !223, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !776, file: !769, line: 26, baseType: !775, size: 64, offset: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !776, file: !769, line: 27, baseType: !775, size: 64, offset: 128)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !768, file: !769, line: 127, baseType: !775, size: 64, offset: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !751, file: !42, line: 461, baseType: !783, size: 256, offset: 384)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !784, line: 35, size: 256, elements: !785)
!784 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!785 = !{!786, !794, !795, !797}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !783, file: !784, line: 36, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !788, line: 13, baseType: !789)
!788 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !213, line: 175, baseType: !790)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !213, line: 173, size: 64, elements: !791)
!791 = !{!792}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !790, file: !213, line: 174, baseType: !793, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !431, line: 22, baseType: !553)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !783, file: !784, line: 42, baseType: !787, size: 64, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !783, file: !784, line: 46, baseType: !796, offset: 128)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !255, line: 29, baseType: !262)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !783, file: !784, line: 47, baseType: !212, size: 128, offset: 128)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !751, file: !42, line: 462, baseType: !223, size: 64, offset: 640)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !751, file: !42, line: 463, baseType: !223, size: 64, offset: 704)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !751, file: !42, line: 464, baseType: !223, size: 64, offset: 768)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !751, file: !42, line: 465, baseType: !802, size: 64, offset: 832)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !804)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !42, line: 367, size: 1408, elements: !805)
!805 = !{!806, !810, !814, !818, !822, !826, !832, !838, !842, !847, !851, !855, !859, !886, !890, !896, !897, !898, !902, !907, !911, !918}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !804, file: !42, line: 368, baseType: !807, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DISubroutineType(types: !809)
!809 = !{!280, !737, !692}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !804, file: !42, line: 369, baseType: !811, size: 64, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DISubroutineType(types: !813)
!813 = !{!280, !367, !737}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !804, file: !42, line: 372, baseType: !815, size: 64, offset: 128)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DISubroutineType(types: !817)
!817 = !{!280, !750, !692}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !804, file: !42, line: 375, baseType: !819, size: 64, offset: 192)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DISubroutineType(types: !821)
!821 = !{!280, !737}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !804, file: !42, line: 381, baseType: !823, size: 64, offset: 256)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DISubroutineType(types: !825)
!825 = !{!280, !367, !750, !216, !5}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !804, file: !42, line: 383, baseType: !827, size: 64, offset: 320)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DISubroutineType(types: !829)
!829 = !{null, !830}
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !42, line: 290, flags: DIFlagFwdDecl)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !804, file: !42, line: 385, baseType: !833, size: 64, offset: 384)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{!280, !367, !750, !544, !5, !5, !836, !837}
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !804, file: !42, line: 388, baseType: !839, size: 64, offset: 448)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!280, !367, !750, !544, !5, !5, !737, !207}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !804, file: !42, line: 393, baseType: !843, size: 64, offset: 512)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{!846, !750, !846}
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !213, line: 125, baseType: !435)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !804, file: !42, line: 394, baseType: !848, size: 64, offset: 576)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DISubroutineType(types: !850)
!850 = !{null, !737, !5, !5}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !804, file: !42, line: 395, baseType: !852, size: 64, offset: 640)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{!280, !737, !229}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !804, file: !42, line: 396, baseType: !856, size: 64, offset: 704)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DISubroutineType(types: !858)
!858 = !{null, !737}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !804, file: !42, line: 397, baseType: !860, size: 64, offset: 768)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{!326, !863, !884}
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !42, line: 320, size: 384, elements: !865)
!865 = !{!866, !867, !868, !872, !873, !874, !876, !877}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !864, file: !42, line: 321, baseType: !367, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !864, file: !42, line: 326, baseType: !544, size: 64, offset: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !864, file: !42, line: 327, baseType: !869, size: 64, offset: 128)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{null, !863, !329, !329}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !864, file: !42, line: 328, baseType: !207, size: 64, offset: 192)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !864, file: !42, line: 329, baseType: !280, size: 32, offset: 256)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !864, file: !42, line: 330, baseType: !875, size: 16, offset: 288)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !431, line: 19, baseType: !155)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !864, file: !42, line: 331, baseType: !875, size: 16, offset: 304)
!877 = !DIDerivedType(tag: DW_TAG_member, scope: !864, file: !42, line: 332, baseType: !878, size: 64, offset: 320)
!878 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !864, file: !42, line: 332, size: 64, elements: !879)
!879 = !{!880, !881}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !878, file: !42, line: 333, baseType: !5, size: 32)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !878, file: !42, line: 334, baseType: !882, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !42, line: 334, flags: DIFlagFwdDecl)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !42, line: 64, flags: DIFlagFwdDecl)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !804, file: !42, line: 402, baseType: !887, size: 64, offset: 832)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DISubroutineType(types: !889)
!889 = !{!280, !750, !737, !737, !3}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !804, file: !42, line: 404, baseType: !891, size: 64, offset: 896)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{!503, !737, !894}
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !895, line: 305, baseType: !5)
!895 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!896 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !804, file: !42, line: 405, baseType: !856, size: 64, offset: 960)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !804, file: !42, line: 406, baseType: !819, size: 64, offset: 1024)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !804, file: !42, line: 407, baseType: !899, size: 64, offset: 1088)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DISubroutineType(types: !901)
!901 = !{!280, !737, !223, !223}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !804, file: !42, line: 409, baseType: !903, size: 64, offset: 1152)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DISubroutineType(types: !905)
!905 = !{null, !737, !906, !906}
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !804, file: !42, line: 410, baseType: !908, size: 64, offset: 1216)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DISubroutineType(types: !910)
!910 = !{!280, !750, !737}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !804, file: !42, line: 413, baseType: !912, size: 64, offset: 1280)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DISubroutineType(types: !914)
!914 = !{!280, !915, !367, !917}
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !42, line: 61, flags: DIFlagFwdDecl)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !804, file: !42, line: 415, baseType: !919, size: 64, offset: 1344)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DISubroutineType(types: !921)
!921 = !{null, !367}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !751, file: !42, line: 466, baseType: !223, size: 64, offset: 896)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !751, file: !42, line: 467, baseType: !924, size: 32, offset: 960)
!924 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !925, line: 8, baseType: !430)
!925 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!926 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !751, file: !42, line: 468, baseType: !254, offset: 992)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !751, file: !42, line: 469, baseType: !212, size: 128, offset: 1024)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !751, file: !42, line: 470, baseType: !207, size: 64, offset: 1152)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !746, file: !739, line: 87, baseType: !223, size: 64, offset: 192)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !746, file: !739, line: 94, baseType: !223, size: 64, offset: 256)
!931 = !DIDerivedType(tag: DW_TAG_member, scope: !743, file: !739, line: 96, baseType: !932, size: 64)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !743, file: !739, line: 96, size: 64, elements: !933)
!933 = !{!934}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !932, file: !739, line: 101, baseType: !935, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !213, line: 143, baseType: !435)
!936 = !DIDerivedType(tag: DW_TAG_member, scope: !743, file: !739, line: 103, baseType: !937, size: 320)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !743, file: !739, line: 103, size: 320, elements: !938)
!938 = !{!939, !949, !952, !953}
!939 = !DIDerivedType(tag: DW_TAG_member, scope: !937, file: !739, line: 104, baseType: !940, size: 128)
!940 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !937, file: !739, line: 104, size: 128, elements: !941)
!941 = !{!942, !943}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !940, file: !739, line: 105, baseType: !212, size: 128)
!943 = !DIDerivedType(tag: DW_TAG_member, scope: !940, file: !739, line: 106, baseType: !944, size: 128)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !940, file: !739, line: 106, size: 128, elements: !945)
!945 = !{!946, !947, !948}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !944, file: !739, line: 107, baseType: !737, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !944, file: !739, line: 109, baseType: !280, size: 32, offset: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !944, file: !739, line: 110, baseType: !280, size: 32, offset: 96)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !937, file: !739, line: 117, baseType: !950, size: 64, offset: 128)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !739, line: 117, flags: DIFlagFwdDecl)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !937, file: !739, line: 119, baseType: !207, size: 64, offset: 192)
!953 = !DIDerivedType(tag: DW_TAG_member, scope: !937, file: !739, line: 120, baseType: !954, size: 64, offset: 256)
!954 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !937, file: !739, line: 120, size: 64, elements: !955)
!955 = !{!956, !957, !958}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !954, file: !739, line: 121, baseType: !207, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !954, file: !739, line: 122, baseType: !223, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, scope: !954, file: !739, line: 123, baseType: !959, size: 32)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !954, file: !739, line: 123, size: 32, elements: !960)
!960 = !{!961, !962, !963}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !959, file: !739, line: 124, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !959, file: !739, line: 125, baseType: !5, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !959, file: !739, line: 126, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!964 = !DIDerivedType(tag: DW_TAG_member, scope: !743, file: !739, line: 130, baseType: !965, size: 192)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !743, file: !739, line: 130, size: 192, elements: !966)
!966 = !{!967, !968, !969, !970, !971}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !965, file: !739, line: 131, baseType: !223, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !965, file: !739, line: 134, baseType: !169, size: 8, offset: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !965, file: !739, line: 135, baseType: !169, size: 8, offset: 72)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !965, file: !739, line: 136, baseType: !763, size: 32, offset: 96)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !965, file: !739, line: 137, baseType: !5, size: 32, offset: 128)
!972 = !DIDerivedType(tag: DW_TAG_member, scope: !743, file: !739, line: 139, baseType: !973, size: 256)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !743, file: !739, line: 139, size: 256, elements: !974)
!974 = !{!975, !976, !977}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !973, file: !739, line: 140, baseType: !223, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !973, file: !739, line: 141, baseType: !763, size: 32, offset: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !973, file: !739, line: 143, baseType: !212, size: 128, offset: 128)
!978 = !DIDerivedType(tag: DW_TAG_member, scope: !743, file: !739, line: 145, baseType: !979, size: 256)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !743, file: !739, line: 145, size: 256, elements: !980)
!980 = !{!981, !982, !984, !985, !2345}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !979, file: !739, line: 146, baseType: !223, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !979, file: !739, line: 147, baseType: !983, size: 64, offset: 64)
!983 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !729, line: 509, baseType: !737)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !979, file: !739, line: 148, baseType: !223, size: 64, offset: 128)
!985 = !DIDerivedType(tag: DW_TAG_member, scope: !979, file: !739, line: 149, baseType: !986, size: 64, offset: 192)
!986 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !979, file: !739, line: 149, size: 64, elements: !987)
!987 = !{!988, !2344}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !986, file: !739, line: 150, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !739, line: 388, size: 7296, elements: !991)
!991 = !{!992, !2340}
!992 = !DIDerivedType(tag: DW_TAG_member, scope: !990, file: !739, line: 389, baseType: !993, size: 7296)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !990, file: !739, line: 389, size: 7296, elements: !994)
!994 = !{!995, !1113, !1114, !1115, !1119, !1120, !1121, !1122, !1123, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1164, !1172, !1175, !1221, !1222, !2324, !2325, !2328, !2329, !2330, !2333, !2334, !2335, !2338, !2339}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !993, file: !739, line: 390, baseType: !996, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !739, line: 305, size: 1472, elements: !998)
!998 = !{!999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1013, !1014, !1019, !1020, !1023, !1107, !1108, !1109, !1110, !1111}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !997, file: !739, line: 308, baseType: !223, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !997, file: !739, line: 309, baseType: !223, size: 64, offset: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !997, file: !739, line: 313, baseType: !996, size: 64, offset: 128)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !997, file: !739, line: 313, baseType: !996, size: 64, offset: 192)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !997, file: !739, line: 315, baseType: !776, size: 192, align: 64, offset: 256)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !997, file: !739, line: 323, baseType: !223, size: 64, offset: 448)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !997, file: !739, line: 327, baseType: !989, size: 64, offset: 512)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !997, file: !739, line: 333, baseType: !1007, size: 64, offset: 576)
!1007 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !729, line: 284, baseType: !1008)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !729, line: 284, size: 64, elements: !1009)
!1009 = !{!1010}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1008, file: !729, line: 284, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1012, line: 19, baseType: !223)
!1012 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !997, file: !739, line: 334, baseType: !223, size: 64, offset: 640)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !997, file: !739, line: 343, baseType: !1015, size: 256, offset: 704)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !997, file: !739, line: 340, size: 256, elements: !1016)
!1016 = !{!1017, !1018}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1015, file: !739, line: 341, baseType: !776, size: 192, align: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1015, file: !739, line: 342, baseType: !223, size: 64, offset: 192)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !997, file: !739, line: 351, baseType: !212, size: 128, offset: 960)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !997, file: !739, line: 353, baseType: !1021, size: 64, offset: 1088)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !739, line: 353, flags: DIFlagFwdDecl)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !997, file: !739, line: 356, baseType: !1024, size: 64, offset: 1152)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1026)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !12, line: 557, size: 832, elements: !1027)
!1027 = !{!1028, !1032, !1033, !1037, !1041, !1081, !1085, !1089, !1093, !1094, !1095, !1099, !1103}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1026, file: !12, line: 558, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{null, !996}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1026, file: !12, line: 559, baseType: !1029, size: 64, offset: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1026, file: !12, line: 560, baseType: !1034, size: 64, offset: 128)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!280, !996, !223}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1026, file: !12, line: 561, baseType: !1038, size: 64, offset: 192)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!280, !996}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1026, file: !12, line: 562, baseType: !1042, size: 64, offset: 256)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!1045, !1046}
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !739, line: 682, baseType: !5)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !12, line: 508, size: 768, elements: !1048)
!1048 = !{!1049, !1050, !1051, !1052, !1053, !1054, !1061, !1068, !1074, !1075, !1076, !1078, !1080}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1047, file: !12, line: 509, baseType: !996, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1047, file: !12, line: 510, baseType: !5, size: 32, offset: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1047, file: !12, line: 511, baseType: !229, size: 32, offset: 96)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1047, file: !12, line: 512, baseType: !223, size: 64, offset: 128)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1047, file: !12, line: 513, baseType: !223, size: 64, offset: 192)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1047, file: !12, line: 514, baseType: !1055, size: 64, offset: 256)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !729, line: 385, baseType: !1057)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !729, line: 385, size: 64, elements: !1058)
!1058 = !{!1059}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1057, file: !729, line: 385, baseType: !1060, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1012, line: 15, baseType: !223)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1047, file: !12, line: 516, baseType: !1062, size: 64, offset: 320)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !729, line: 359, baseType: !1064)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !729, line: 359, size: 64, elements: !1065)
!1065 = !{!1066}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1064, file: !729, line: 359, baseType: !1067, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1012, line: 16, baseType: !223)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1047, file: !12, line: 519, baseType: !1069, size: 64, offset: 384)
!1069 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1012, line: 21, baseType: !1070)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1012, line: 21, size: 64, elements: !1071)
!1071 = !{!1072}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1070, file: !1012, line: 21, baseType: !1073, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1012, line: 14, baseType: !223)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1047, file: !12, line: 521, baseType: !737, size: 64, offset: 448)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1047, file: !12, line: 522, baseType: !737, size: 64, offset: 512)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1047, file: !12, line: 528, baseType: !1077, size: 64, offset: 576)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1047, file: !12, line: 532, baseType: !1079, size: 64, offset: 640)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1047, file: !12, line: 536, baseType: !983, size: 64, offset: 704)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1026, file: !12, line: 563, baseType: !1082, size: 64, offset: 320)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!1045, !1046, !11}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1026, file: !12, line: 565, baseType: !1086, size: 64, offset: 384)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{null, !1046, !223, !223}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1026, file: !12, line: 567, baseType: !1090, size: 64, offset: 448)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!223, !996}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1026, file: !12, line: 571, baseType: !1042, size: 64, offset: 512)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1026, file: !12, line: 574, baseType: !1042, size: 64, offset: 576)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1026, file: !12, line: 579, baseType: !1096, size: 64, offset: 640)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!280, !996, !223, !207, !280, !280}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1026, file: !12, line: 585, baseType: !1100, size: 64, offset: 704)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!243, !996}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1026, file: !12, line: 615, baseType: !1104, size: 64, offset: 768)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!737, !996, !223}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !997, file: !739, line: 359, baseType: !223, size: 64, offset: 1216)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !997, file: !739, line: 361, baseType: !367, size: 64, offset: 1280)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !997, file: !739, line: 362, baseType: !207, size: 64, offset: 1344)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !997, file: !739, line: 365, baseType: !787, size: 64, offset: 1408)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !997, file: !739, line: 373, baseType: !1112, offset: 1472)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !739, line: 296, elements: !268)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !993, file: !739, line: 391, baseType: !772, size: 64, offset: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !993, file: !739, line: 392, baseType: !435, size: 64, offset: 128)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !993, file: !739, line: 394, baseType: !1116, size: 64, offset: 192)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{!223, !367, !223, !223, !223, !223}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !993, file: !739, line: 398, baseType: !223, size: 64, offset: 256)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !993, file: !739, line: 399, baseType: !223, size: 64, offset: 320)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !993, file: !739, line: 405, baseType: !223, size: 64, offset: 384)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !993, file: !739, line: 406, baseType: !223, size: 64, offset: 448)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !993, file: !739, line: 407, baseType: !1124, size: 64, offset: 512)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !729, line: 286, baseType: !1126)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !729, line: 286, size: 64, elements: !1127)
!1127 = !{!1128}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1126, file: !729, line: 286, baseType: !1129, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1012, line: 18, baseType: !223)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !993, file: !739, line: 416, baseType: !763, size: 32, offset: 576)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !993, file: !739, line: 428, baseType: !763, size: 32, offset: 608)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !993, file: !739, line: 437, baseType: !763, size: 32, offset: 640)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !993, file: !739, line: 447, baseType: !763, size: 32, offset: 672)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !993, file: !739, line: 450, baseType: !787, size: 64, offset: 704)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !993, file: !739, line: 452, baseType: !280, size: 32, offset: 768)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !993, file: !739, line: 454, baseType: !254, offset: 800)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !993, file: !739, line: 457, baseType: !783, size: 256, offset: 832)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !993, file: !739, line: 459, baseType: !212, size: 128, offset: 1088)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !993, file: !739, line: 466, baseType: !223, size: 64, offset: 1216)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !993, file: !739, line: 467, baseType: !223, size: 64, offset: 1280)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !993, file: !739, line: 469, baseType: !223, size: 64, offset: 1344)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !993, file: !739, line: 470, baseType: !223, size: 64, offset: 1408)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !993, file: !739, line: 471, baseType: !789, size: 64, offset: 1472)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !993, file: !739, line: 472, baseType: !223, size: 64, offset: 1536)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !993, file: !739, line: 473, baseType: !223, size: 64, offset: 1600)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !993, file: !739, line: 474, baseType: !223, size: 64, offset: 1664)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !993, file: !739, line: 475, baseType: !223, size: 64, offset: 1728)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !993, file: !739, line: 477, baseType: !254, offset: 1792)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !993, file: !739, line: 478, baseType: !223, size: 64, offset: 1792)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !993, file: !739, line: 478, baseType: !223, size: 64, offset: 1856)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !993, file: !739, line: 478, baseType: !223, size: 64, offset: 1920)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !993, file: !739, line: 478, baseType: !223, size: 64, offset: 1984)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !993, file: !739, line: 479, baseType: !223, size: 64, offset: 2048)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !993, file: !739, line: 479, baseType: !223, size: 64, offset: 2112)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !993, file: !739, line: 479, baseType: !223, size: 64, offset: 2176)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !993, file: !739, line: 480, baseType: !223, size: 64, offset: 2240)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !993, file: !739, line: 480, baseType: !223, size: 64, offset: 2304)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !993, file: !739, line: 480, baseType: !223, size: 64, offset: 2368)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !993, file: !739, line: 480, baseType: !223, size: 64, offset: 2432)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !993, file: !739, line: 482, baseType: !1161, size: 2816, offset: 2496)
!1161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 2816, elements: !1162)
!1162 = !{!1163}
!1163 = !DISubrange(count: 44)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !993, file: !739, line: 488, baseType: !1165, size: 256, offset: 5312)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1166, line: 60, size: 256, elements: !1167)
!1166 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1167 = !{!1168}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1165, file: !1166, line: 61, baseType: !1169, size: 256)
!1169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !787, size: 256, elements: !1170)
!1170 = !{!1171}
!1171 = !DISubrange(count: 4)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !993, file: !739, line: 490, baseType: !1173, size: 64, offset: 5568)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !739, line: 490, flags: DIFlagFwdDecl)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !993, file: !739, line: 493, baseType: !1176, size: 896, offset: 5632)
!1176 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1177, line: 53, baseType: !1178)
!1177 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1177, line: 13, size: 896, elements: !1179)
!1179 = !{!1180, !1181, !1182, !1183, !1186, !1187, !1194, !1195, !1215, !1216, !1217}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1178, file: !1177, line: 18, baseType: !435, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1178, file: !1177, line: 28, baseType: !789, size: 64, offset: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1178, file: !1177, line: 31, baseType: !783, size: 256, offset: 128)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1178, file: !1177, line: 32, baseType: !1184, size: 64, offset: 384)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1177, line: 32, flags: DIFlagFwdDecl)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1178, file: !1177, line: 37, baseType: !157, size: 16, offset: 448)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1178, file: !1177, line: 40, baseType: !1188, size: 192, offset: 512)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1189, line: 53, size: 192, elements: !1190)
!1189 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1190 = !{!1191, !1192, !1193}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1188, file: !1189, line: 54, baseType: !787, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1188, file: !1189, line: 55, baseType: !254, offset: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1188, file: !1189, line: 59, baseType: !212, size: 128, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1178, file: !1177, line: 41, baseType: !207, size: 64, offset: 704)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1178, file: !1177, line: 42, baseType: !1196, size: 64, offset: 768)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1198)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1199, line: 13, size: 896, elements: !1200)
!1199 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1200 = !{!1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1198, file: !1199, line: 14, baseType: !207, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1198, file: !1199, line: 15, baseType: !223, size: 64, offset: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1198, file: !1199, line: 17, baseType: !223, size: 64, offset: 128)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1198, file: !1199, line: 17, baseType: !223, size: 64, offset: 192)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1198, file: !1199, line: 19, baseType: !329, size: 64, offset: 256)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1198, file: !1199, line: 21, baseType: !329, size: 64, offset: 320)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1198, file: !1199, line: 22, baseType: !329, size: 64, offset: 384)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1198, file: !1199, line: 23, baseType: !329, size: 64, offset: 448)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1198, file: !1199, line: 24, baseType: !329, size: 64, offset: 512)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1198, file: !1199, line: 25, baseType: !329, size: 64, offset: 576)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1198, file: !1199, line: 26, baseType: !329, size: 64, offset: 640)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1198, file: !1199, line: 27, baseType: !329, size: 64, offset: 704)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1198, file: !1199, line: 28, baseType: !329, size: 64, offset: 768)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1198, file: !1199, line: 29, baseType: !329, size: 64, offset: 832)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1178, file: !1177, line: 44, baseType: !763, size: 32, offset: 832)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1178, file: !1177, line: 50, baseType: !875, size: 16, offset: 864)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1178, file: !1177, line: 51, baseType: !1218, size: 16, offset: 880)
!1218 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !431, line: 18, baseType: !1219)
!1219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !156, line: 23, baseType: !1220)
!1220 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !993, file: !739, line: 495, baseType: !223, size: 64, offset: 6528)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !993, file: !739, line: 497, baseType: !1223, size: 64, offset: 6592)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !739, line: 381, size: 384, elements: !1225)
!1225 = !{!1226, !1227, !2323}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1224, file: !739, line: 382, baseType: !763, size: 32)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1224, file: !739, line: 383, baseType: !1228, size: 128, offset: 64)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !739, line: 376, size: 128, elements: !1229)
!1229 = !{!1230, !2321}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1228, file: !739, line: 377, baseType: !1231, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1233, line: 640, size: 48640, elements: !1234)
!1233 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1234 = !{!1235, !1241, !1243, !1244, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1261, !1279, !1290, !1374, !1375, !1376, !1387, !1388, !1390, !1391, !1392, !1393, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1472, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1510, !1512, !1513, !1514, !1526, !1527, !1528, !1529, !1530, !1531, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1555, !1560, !1740, !1741, !1742, !1743, !1747, !1750, !1753, !1756, !1759, !1762, !1863, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1909, !1910, !1911, !1912, !1913, !1918, !1919, !1920, !1923, !1924, !1927, !1930, !1933, !1936, !1979, !1982, !1983, !2062, !2063, !2066, !2067, !2070, !2071, !2072, !2076, !2077, !2078, !2091, !2092, !2093, !2103, !2108, !2111, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1232, file: !1233, line: 646, baseType: !1236, size: 128)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1237, line: 56, size: 128, elements: !1238)
!1237 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1238 = !{!1239, !1240}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1236, file: !1237, line: 57, baseType: !223, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1236, file: !1237, line: 58, baseType: !430, size: 32, offset: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1232, file: !1233, line: 649, baseType: !1242, size: 64, offset: 128)
!1242 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !329)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1232, file: !1233, line: 657, baseType: !207, size: 64, offset: 192)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1232, file: !1233, line: 658, baseType: !1245, size: 32, offset: 256)
!1245 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1246, line: 113, baseType: !1247)
!1246 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1246, line: 111, size: 32, elements: !1248)
!1248 = !{!1249}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1247, file: !1246, line: 112, baseType: !763, size: 32)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1232, file: !1233, line: 660, baseType: !5, size: 32, offset: 288)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1232, file: !1233, line: 661, baseType: !5, size: 32, offset: 320)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1232, file: !1233, line: 684, baseType: !280, size: 32, offset: 352)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1232, file: !1233, line: 686, baseType: !280, size: 32, offset: 384)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1232, file: !1233, line: 687, baseType: !280, size: 32, offset: 416)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1232, file: !1233, line: 688, baseType: !280, size: 32, offset: 448)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1232, file: !1233, line: 689, baseType: !5, size: 32, offset: 480)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1232, file: !1233, line: 691, baseType: !1258, size: 64, offset: 512)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1260)
!1260 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1233, line: 691, flags: DIFlagFwdDecl)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1232, file: !1233, line: 692, baseType: !1262, size: 832, offset: 576)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1233, line: 451, size: 832, elements: !1263)
!1263 = !{!1264, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1262, file: !1233, line: 453, baseType: !1265, size: 128)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1233, line: 325, size: 128, elements: !1266)
!1266 = !{!1267, !1268}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1265, file: !1233, line: 326, baseType: !223, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1265, file: !1233, line: 327, baseType: !430, size: 32, offset: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1262, file: !1233, line: 454, baseType: !776, size: 192, align: 64, offset: 128)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1262, file: !1233, line: 455, baseType: !212, size: 128, offset: 320)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1262, file: !1233, line: 456, baseType: !5, size: 32, offset: 448)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1262, file: !1233, line: 458, baseType: !435, size: 64, offset: 512)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1262, file: !1233, line: 459, baseType: !435, size: 64, offset: 576)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1262, file: !1233, line: 460, baseType: !435, size: 64, offset: 640)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1262, file: !1233, line: 461, baseType: !435, size: 64, offset: 704)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1262, file: !1233, line: 463, baseType: !435, size: 64, offset: 768)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1262, file: !1233, line: 465, baseType: !1278, offset: 832)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1233, line: 415, elements: !268)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1232, file: !1233, line: 693, baseType: !1280, size: 384, offset: 1408)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1233, line: 489, size: 384, elements: !1281)
!1281 = !{!1282, !1283, !1284, !1285, !1286, !1287, !1288}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1280, file: !1233, line: 490, baseType: !212, size: 128)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1280, file: !1233, line: 491, baseType: !223, size: 64, offset: 128)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1280, file: !1233, line: 492, baseType: !223, size: 64, offset: 192)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1280, file: !1233, line: 493, baseType: !5, size: 32, offset: 256)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1280, file: !1233, line: 494, baseType: !157, size: 16, offset: 288)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1280, file: !1233, line: 495, baseType: !157, size: 16, offset: 304)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1280, file: !1233, line: 497, baseType: !1289, size: 64, offset: 320)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1232, file: !1233, line: 697, baseType: !1291, size: 1792, offset: 1792)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1233, line: 507, size: 1792, elements: !1292)
!1292 = !{!1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1371, !1372}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1291, file: !1233, line: 508, baseType: !776, size: 192, align: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1291, file: !1233, line: 515, baseType: !435, size: 64, offset: 192)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1291, file: !1233, line: 516, baseType: !435, size: 64, offset: 256)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1291, file: !1233, line: 517, baseType: !435, size: 64, offset: 320)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1291, file: !1233, line: 518, baseType: !435, size: 64, offset: 384)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1291, file: !1233, line: 519, baseType: !435, size: 64, offset: 448)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1291, file: !1233, line: 526, baseType: !793, size: 64, offset: 512)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1291, file: !1233, line: 527, baseType: !435, size: 64, offset: 576)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1291, file: !1233, line: 528, baseType: !5, size: 32, offset: 640)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1291, file: !1233, line: 554, baseType: !5, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1291, file: !1233, line: 555, baseType: !5, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1291, file: !1233, line: 556, baseType: !5, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1291, file: !1233, line: 557, baseType: !5, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1291, file: !1233, line: 563, baseType: !1307, size: 512, offset: 704)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !18, line: 118, size: 512, elements: !1308)
!1308 = !{!1309, !1317, !1318, !1323, !1366, !1368, !1369, !1370}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1307, file: !18, line: 119, baseType: !1310, size: 256)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1311, line: 9, size: 256, elements: !1312)
!1311 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1312 = !{!1313, !1314}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1310, file: !1311, line: 10, baseType: !776, size: 192, align: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1310, file: !1311, line: 11, baseType: !1315, size: 64, offset: 192)
!1315 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1316, line: 29, baseType: !793)
!1316 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1307, file: !18, line: 120, baseType: !1315, size: 64, offset: 256)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1307, file: !18, line: 121, baseType: !1319, size: 64, offset: 320)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{!17, !1322}
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1307, file: !18, line: 122, baseType: !1324, size: 64, offset: 384)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !18, line: 159, size: 512, align: 512, elements: !1326)
!1326 = !{!1327, !1347, !1348, !1351, !1356, !1357, !1361, !1365}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1325, file: !18, line: 160, baseType: !1328, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !18, line: 214, size: 4608, align: 512, elements: !1330)
!1330 = !{!1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1329, file: !18, line: 215, baseType: !796)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1329, file: !18, line: 216, baseType: !5, size: 32)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1329, file: !18, line: 217, baseType: !5, size: 32, offset: 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1329, file: !18, line: 218, baseType: !5, size: 32, offset: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1329, file: !18, line: 219, baseType: !5, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1329, file: !18, line: 220, baseType: !5, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1329, file: !18, line: 221, baseType: !5, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1329, file: !18, line: 222, baseType: !5, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1329, file: !18, line: 233, baseType: !1315, size: 64, offset: 128)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1329, file: !18, line: 234, baseType: !1322, size: 64, offset: 192)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1329, file: !18, line: 235, baseType: !1315, size: 64, offset: 256)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1329, file: !18, line: 236, baseType: !1322, size: 64, offset: 320)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1329, file: !18, line: 237, baseType: !1344, size: 4096, offset: 512)
!1344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1325, size: 4096, elements: !1345)
!1345 = !{!1346}
!1346 = !DISubrange(count: 8)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1325, file: !18, line: 161, baseType: !5, size: 32, offset: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1325, file: !18, line: 162, baseType: !1349, size: 32, offset: 96)
!1349 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !213, line: 27, baseType: !1350)
!1350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !221, line: 96, baseType: !280)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1325, file: !18, line: 163, baseType: !1352, size: 32, offset: 128)
!1352 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !403, line: 276, baseType: !1353)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !403, line: 276, size: 32, elements: !1354)
!1354 = !{!1355}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1353, file: !403, line: 276, baseType: !407, size: 32)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1325, file: !18, line: 164, baseType: !1322, size: 64, offset: 192)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1325, file: !18, line: 165, baseType: !1358, size: 128, offset: 256)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1311, line: 14, size: 128, elements: !1359)
!1359 = !{!1360}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1358, file: !1311, line: 15, baseType: !768, size: 128)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1325, file: !18, line: 166, baseType: !1362, size: 64, offset: 384)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!1315}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1325, file: !18, line: 167, baseType: !1315, size: 64, offset: 448)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1307, file: !18, line: 123, baseType: !1367, size: 8, offset: 448)
!1367 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !431, line: 17, baseType: !168)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1307, file: !18, line: 124, baseType: !1367, size: 8, offset: 456)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1307, file: !18, line: 125, baseType: !1367, size: 8, offset: 464)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1307, file: !18, line: 126, baseType: !1367, size: 8, offset: 472)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1291, file: !1233, line: 572, baseType: !1307, size: 512, offset: 1216)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1291, file: !1233, line: 580, baseType: !1373, size: 64, offset: 1728)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1232, file: !1233, line: 721, baseType: !5, size: 32, offset: 3584)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1232, file: !1233, line: 722, baseType: !280, size: 32, offset: 3616)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1232, file: !1233, line: 723, baseType: !1377, size: 64, offset: 3648)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1379)
!1379 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1380, line: 17, baseType: !1381)
!1380 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1380, line: 17, size: 64, elements: !1382)
!1382 = !{!1383}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1381, file: !1380, line: 17, baseType: !1384, size: 64)
!1384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 64, elements: !1385)
!1385 = !{!1386}
!1386 = !DISubrange(count: 1)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1232, file: !1233, line: 724, baseType: !1379, size: 64, offset: 3712)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1232, file: !1233, line: 749, baseType: !1389, offset: 3776)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1233, line: 290, elements: !268)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1232, file: !1233, line: 751, baseType: !212, size: 128, offset: 3776)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1232, file: !1233, line: 757, baseType: !989, size: 64, offset: 3904)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1232, file: !1233, line: 758, baseType: !989, size: 64, offset: 3968)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1232, file: !1233, line: 761, baseType: !1394, size: 320, offset: 4032)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1166, line: 34, size: 320, elements: !1395)
!1395 = !{!1396, !1397}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1394, file: !1166, line: 35, baseType: !435, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1394, file: !1166, line: 36, baseType: !1398, size: 256, offset: 64)
!1398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !996, size: 256, elements: !1170)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1232, file: !1233, line: 766, baseType: !280, size: 32, offset: 4352)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1232, file: !1233, line: 767, baseType: !280, size: 32, offset: 4384)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1232, file: !1233, line: 768, baseType: !280, size: 32, offset: 4416)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1232, file: !1233, line: 770, baseType: !280, size: 32, offset: 4448)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1232, file: !1233, line: 772, baseType: !223, size: 64, offset: 4480)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1232, file: !1233, line: 775, baseType: !5, size: 32, offset: 4544)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1232, file: !1233, line: 778, baseType: !5, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1232, file: !1233, line: 779, baseType: !5, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1232, file: !1233, line: 780, baseType: !5, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1232, file: !1233, line: 803, baseType: !5, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1232, file: !1233, line: 806, baseType: !5, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1232, file: !1233, line: 807, baseType: !5, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1232, file: !1233, line: 809, baseType: !5, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1232, file: !1233, line: 815, baseType: !5, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1232, file: !1233, line: 831, baseType: !223, size: 64, offset: 4672)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1232, file: !1233, line: 833, baseType: !1415, size: 384, offset: 4736)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !23, line: 25, size: 384, elements: !1416)
!1416 = !{!1417, !1422}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1415, file: !23, line: 26, baseType: !1418, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!329, !1421}
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, scope: !1415, file: !23, line: 27, baseType: !1423, size: 320, offset: 64)
!1423 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1415, file: !23, line: 27, size: 320, elements: !1424)
!1424 = !{!1425, !1435, !1462}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1423, file: !23, line: 36, baseType: !1426, size: 320)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1423, file: !23, line: 29, size: 320, elements: !1427)
!1427 = !{!1428, !1430, !1431, !1432, !1433, !1434}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1426, file: !23, line: 30, baseType: !1429, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1426, file: !23, line: 31, baseType: !430, size: 32, offset: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1426, file: !23, line: 32, baseType: !430, size: 32, offset: 96)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1426, file: !23, line: 33, baseType: !430, size: 32, offset: 128)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1426, file: !23, line: 34, baseType: !435, size: 64, offset: 192)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1426, file: !23, line: 35, baseType: !1429, size: 64, offset: 256)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1423, file: !23, line: 46, baseType: !1436, size: 192)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1423, file: !23, line: 38, size: 192, elements: !1437)
!1437 = !{!1438, !1439, !1440, !1461}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1436, file: !23, line: 39, baseType: !1349, size: 32)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1436, file: !23, line: 40, baseType: !22, size: 32, offset: 32)
!1440 = !DIDerivedType(tag: DW_TAG_member, scope: !1436, file: !23, line: 41, baseType: !1441, size: 64, offset: 64)
!1441 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1436, file: !23, line: 41, size: 64, elements: !1442)
!1442 = !{!1443, !1451}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1441, file: !23, line: 42, baseType: !1444, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1446, line: 7, size: 128, elements: !1447)
!1446 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1447 = !{!1448, !1450}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1445, file: !1446, line: 8, baseType: !1449, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !221, line: 93, baseType: !546)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1445, file: !1446, line: 9, baseType: !546, size: 64, offset: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1441, file: !23, line: 43, baseType: !1452, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1454, line: 7, size: 64, elements: !1455)
!1454 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1455 = !{!1456, !1460}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1453, file: !1454, line: 8, baseType: !1457, size: 32)
!1457 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1454, line: 5, baseType: !1458)
!1458 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !431, line: 20, baseType: !1459)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !156, line: 26, baseType: !280)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1453, file: !1454, line: 9, baseType: !1458, size: 32, offset: 32)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1436, file: !23, line: 45, baseType: !435, size: 64, offset: 128)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1423, file: !23, line: 54, baseType: !1463, size: 256)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1423, file: !23, line: 48, size: 256, elements: !1464)
!1464 = !{!1465, !1468, !1469, !1470, !1471}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1463, file: !23, line: 49, baseType: !1466, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !23, line: 14, flags: DIFlagFwdDecl)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1463, file: !23, line: 50, baseType: !280, size: 32, offset: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1463, file: !23, line: 51, baseType: !280, size: 32, offset: 96)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1463, file: !23, line: 52, baseType: !223, size: 64, offset: 128)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1463, file: !23, line: 53, baseType: !223, size: 64, offset: 192)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1232, file: !1233, line: 835, baseType: !1473, size: 32, offset: 5120)
!1473 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !213, line: 22, baseType: !1474)
!1474 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !221, line: 28, baseType: !280)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1232, file: !1233, line: 836, baseType: !1473, size: 32, offset: 5152)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1232, file: !1233, line: 840, baseType: !223, size: 64, offset: 5184)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1232, file: !1233, line: 849, baseType: !1231, size: 64, offset: 5248)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1232, file: !1233, line: 852, baseType: !1231, size: 64, offset: 5312)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1232, file: !1233, line: 857, baseType: !212, size: 128, offset: 5376)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1232, file: !1233, line: 858, baseType: !212, size: 128, offset: 5504)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1232, file: !1233, line: 859, baseType: !1231, size: 64, offset: 5632)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1232, file: !1233, line: 867, baseType: !212, size: 128, offset: 5696)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1232, file: !1233, line: 868, baseType: !212, size: 128, offset: 5824)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1232, file: !1233, line: 871, baseType: !1485, size: 64, offset: 5952)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !51, line: 59, size: 768, elements: !1487)
!1487 = !{!1488, !1489, !1490, !1491, !1493, !1494, !1501, !1502}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1486, file: !51, line: 61, baseType: !1245, size: 32)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1486, file: !51, line: 62, baseType: !5, size: 32, offset: 32)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1486, file: !51, line: 63, baseType: !254, offset: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1486, file: !51, line: 65, baseType: !1492, size: 256, offset: 64)
!1492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !651, size: 256, elements: !1170)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1486, file: !51, line: 66, baseType: !651, size: 64, offset: 320)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1486, file: !51, line: 68, baseType: !1495, size: 128, offset: 384)
!1495 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1496, line: 40, baseType: !1497)
!1496 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1496, line: 36, size: 128, elements: !1498)
!1498 = !{!1499, !1500}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1497, file: !1496, line: 37, baseType: !254)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1497, file: !1496, line: 38, baseType: !212, size: 128)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1486, file: !51, line: 69, baseType: !380, size: 128, align: 64, offset: 512)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1486, file: !51, line: 70, baseType: !1503, size: 128, offset: 640)
!1503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1504, size: 128, elements: !1385)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !51, line: 54, size: 128, elements: !1505)
!1505 = !{!1506, !1507}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1504, file: !51, line: 55, baseType: !280, size: 32)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1504, file: !51, line: 56, baseType: !1508, size: 64, offset: 64)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !51, line: 56, flags: DIFlagFwdDecl)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1232, file: !1233, line: 872, baseType: !1511, size: 512, offset: 6016)
!1511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !655, size: 512, elements: !1170)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1232, file: !1233, line: 873, baseType: !212, size: 128, offset: 6528)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1232, file: !1233, line: 874, baseType: !212, size: 128, offset: 6656)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1232, file: !1233, line: 876, baseType: !1515, size: 64, offset: 6784)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1517, line: 26, size: 192, elements: !1518)
!1517 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1518 = !{!1519, !1520}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1516, file: !1517, line: 27, baseType: !5, size: 32)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1516, file: !1517, line: 28, baseType: !1521, size: 128, offset: 64)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1522, line: 43, size: 128, elements: !1523)
!1522 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1523 = !{!1524, !1525}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1521, file: !1522, line: 44, baseType: !796)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1521, file: !1522, line: 45, baseType: !212, size: 128)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1232, file: !1233, line: 879, baseType: !721, size: 64, offset: 6848)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1232, file: !1233, line: 882, baseType: !721, size: 64, offset: 6912)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1232, file: !1233, line: 884, baseType: !435, size: 64, offset: 6976)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1232, file: !1233, line: 885, baseType: !435, size: 64, offset: 7040)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1232, file: !1233, line: 890, baseType: !435, size: 64, offset: 7104)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1232, file: !1233, line: 891, baseType: !1532, size: 128, offset: 7168)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1233, line: 242, size: 128, elements: !1533)
!1533 = !{!1534, !1535, !1536}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1532, file: !1233, line: 244, baseType: !435, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1532, file: !1233, line: 245, baseType: !435, size: 64, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1532, file: !1233, line: 246, baseType: !796, offset: 128)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1232, file: !1233, line: 900, baseType: !223, size: 64, offset: 7296)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1232, file: !1233, line: 901, baseType: !223, size: 64, offset: 7360)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1232, file: !1233, line: 904, baseType: !435, size: 64, offset: 7424)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1232, file: !1233, line: 907, baseType: !435, size: 64, offset: 7488)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1232, file: !1233, line: 910, baseType: !223, size: 64, offset: 7552)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1232, file: !1233, line: 911, baseType: !223, size: 64, offset: 7616)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1232, file: !1233, line: 914, baseType: !1544, size: 640, offset: 7680)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1545, line: 123, size: 640, elements: !1546)
!1545 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1546 = !{!1547, !1553, !1554}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1544, file: !1545, line: 124, baseType: !1548, size: 576)
!1548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1549, size: 576, elements: !296)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1545, line: 108, size: 192, elements: !1550)
!1550 = !{!1551, !1552}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1549, file: !1545, line: 109, baseType: !435, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1549, file: !1545, line: 110, baseType: !1358, size: 128, offset: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1544, file: !1545, line: 125, baseType: !5, size: 32, offset: 576)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1544, file: !1545, line: 126, baseType: !5, size: 32, offset: 608)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1232, file: !1233, line: 917, baseType: !1556, size: 192, offset: 8320)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1545, line: 134, size: 192, elements: !1557)
!1557 = !{!1558, !1559}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1556, file: !1545, line: 135, baseType: !380, size: 128, align: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1556, file: !1545, line: 136, baseType: !5, size: 32, offset: 128)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1232, file: !1233, line: 923, baseType: !1561, size: 64, offset: 8512)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1563)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1564, line: 111, size: 1280, elements: !1565)
!1564 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1565 = !{!1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1583, !1584, !1585, !1586, !1587, !1588, !1695, !1696, !1697, !1698, !1724, !1727, !1735}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1563, file: !1564, line: 112, baseType: !763, size: 32)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1563, file: !1564, line: 120, baseType: !448, size: 32, offset: 32)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1563, file: !1564, line: 121, baseType: !456, size: 32, offset: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1563, file: !1564, line: 122, baseType: !448, size: 32, offset: 96)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1563, file: !1564, line: 123, baseType: !456, size: 32, offset: 128)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1563, file: !1564, line: 124, baseType: !448, size: 32, offset: 160)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1563, file: !1564, line: 125, baseType: !456, size: 32, offset: 192)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1563, file: !1564, line: 126, baseType: !448, size: 32, offset: 224)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1563, file: !1564, line: 127, baseType: !456, size: 32, offset: 256)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1563, file: !1564, line: 128, baseType: !5, size: 32, offset: 288)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1563, file: !1564, line: 129, baseType: !1577, size: 64, offset: 320)
!1577 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1578, line: 26, baseType: !1579)
!1578 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1578, line: 24, size: 64, elements: !1580)
!1580 = !{!1581}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1579, file: !1578, line: 25, baseType: !1582, size: 64)
!1582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !432, size: 64, elements: !197)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1563, file: !1564, line: 130, baseType: !1577, size: 64, offset: 384)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1563, file: !1564, line: 131, baseType: !1577, size: 64, offset: 448)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1563, file: !1564, line: 132, baseType: !1577, size: 64, offset: 512)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1563, file: !1564, line: 133, baseType: !1577, size: 64, offset: 576)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1563, file: !1564, line: 135, baseType: !169, size: 8, offset: 640)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1563, file: !1564, line: 137, baseType: !1589, size: 64, offset: 704)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1591, line: 189, size: 1664, elements: !1592)
!1591 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1592 = !{!1593, !1594, !1597, !1602, !1603, !1606, !1607, !1612, !1613, !1614, !1615, !1617, !1618, !1619, !1620, !1621, !1659, !1680}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1590, file: !1591, line: 190, baseType: !1245, size: 32)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1590, file: !1591, line: 191, baseType: !1595, size: 32, offset: 32)
!1595 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1591, line: 28, baseType: !1596)
!1596 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !213, line: 98, baseType: !1458)
!1597 = !DIDerivedType(tag: DW_TAG_member, scope: !1590, file: !1591, line: 192, baseType: !1598, size: 192, offset: 64)
!1598 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1590, file: !1591, line: 192, size: 192, elements: !1599)
!1599 = !{!1600, !1601}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1598, file: !1591, line: 193, baseType: !212, size: 128)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1598, file: !1591, line: 194, baseType: !776, size: 192, align: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1590, file: !1591, line: 199, baseType: !783, size: 256, offset: 256)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1590, file: !1591, line: 200, baseType: !1604, size: 64, offset: 512)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1591, line: 200, flags: DIFlagFwdDecl)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1590, file: !1591, line: 201, baseType: !207, size: 64, offset: 576)
!1607 = !DIDerivedType(tag: DW_TAG_member, scope: !1590, file: !1591, line: 202, baseType: !1608, size: 64, offset: 640)
!1608 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1590, file: !1591, line: 202, size: 64, elements: !1609)
!1609 = !{!1610, !1611}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1608, file: !1591, line: 203, baseType: !552, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1608, file: !1591, line: 204, baseType: !552, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1590, file: !1591, line: 206, baseType: !552, size: 64, offset: 704)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1590, file: !1591, line: 207, baseType: !448, size: 32, offset: 768)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1590, file: !1591, line: 208, baseType: !456, size: 32, offset: 800)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1590, file: !1591, line: 209, baseType: !1616, size: 32, offset: 832)
!1616 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1591, line: 31, baseType: !572)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1590, file: !1591, line: 210, baseType: !157, size: 16, offset: 864)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1590, file: !1591, line: 211, baseType: !157, size: 16, offset: 880)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1590, file: !1591, line: 215, baseType: !1220, size: 16, offset: 896)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1590, file: !1591, line: 222, baseType: !223, size: 64, offset: 960)
!1621 = !DIDerivedType(tag: DW_TAG_member, scope: !1590, file: !1591, line: 239, baseType: !1622, size: 320, offset: 1024)
!1622 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1590, file: !1591, line: 239, size: 320, elements: !1623)
!1623 = !{!1624, !1651}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1622, file: !1591, line: 240, baseType: !1625, size: 320)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1591, line: 108, size: 320, elements: !1626)
!1626 = !{!1627, !1628, !1640, !1643, !1650}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1625, file: !1591, line: 110, baseType: !223, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, scope: !1625, file: !1591, line: 111, baseType: !1629, size: 64, offset: 64)
!1629 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1625, file: !1591, line: 111, size: 64, elements: !1630)
!1630 = !{!1631, !1639}
!1631 = !DIDerivedType(tag: DW_TAG_member, scope: !1629, file: !1591, line: 112, baseType: !1632, size: 64)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1629, file: !1591, line: 112, size: 64, elements: !1633)
!1633 = !{!1634, !1635}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1632, file: !1591, line: 114, baseType: !875, size: 16)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1632, file: !1591, line: 115, baseType: !1636, size: 48, offset: 16)
!1636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 48, elements: !1637)
!1637 = !{!1638}
!1638 = !DISubrange(count: 6)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1629, file: !1591, line: 121, baseType: !223, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1625, file: !1591, line: 123, baseType: !1641, size: 64, offset: 128)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1591, line: 96, flags: DIFlagFwdDecl)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1625, file: !1591, line: 124, baseType: !1644, size: 64, offset: 192)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1591, line: 102, size: 192, elements: !1646)
!1646 = !{!1647, !1648, !1649}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1645, file: !1591, line: 103, baseType: !380, size: 128, align: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1645, file: !1591, line: 104, baseType: !1245, size: 32, offset: 128)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1645, file: !1591, line: 105, baseType: !503, size: 8, offset: 160)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1625, file: !1591, line: 125, baseType: !243, size: 64, offset: 256)
!1651 = !DIDerivedType(tag: DW_TAG_member, scope: !1622, file: !1591, line: 241, baseType: !1652, size: 320)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1622, file: !1591, line: 241, size: 320, elements: !1653)
!1653 = !{!1654, !1655, !1656, !1657, !1658}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1652, file: !1591, line: 242, baseType: !223, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1652, file: !1591, line: 243, baseType: !223, size: 64, offset: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1652, file: !1591, line: 244, baseType: !1641, size: 64, offset: 128)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1652, file: !1591, line: 245, baseType: !1644, size: 64, offset: 192)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1652, file: !1591, line: 246, baseType: !205, size: 64, offset: 256)
!1659 = !DIDerivedType(tag: DW_TAG_member, scope: !1590, file: !1591, line: 254, baseType: !1660, size: 256, offset: 1344)
!1660 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1590, file: !1591, line: 254, size: 256, elements: !1661)
!1661 = !{!1662, !1668}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1660, file: !1591, line: 255, baseType: !1663, size: 256)
!1663 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1591, line: 128, size: 256, elements: !1664)
!1664 = !{!1665, !1666}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1663, file: !1591, line: 129, baseType: !207, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1663, file: !1591, line: 130, baseType: !1667, size: 256)
!1667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 256, elements: !1170)
!1668 = !DIDerivedType(tag: DW_TAG_member, scope: !1660, file: !1591, line: 256, baseType: !1669, size: 256)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1660, file: !1591, line: 256, size: 256, elements: !1670)
!1670 = !{!1671, !1672}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1669, file: !1591, line: 258, baseType: !212, size: 128)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1669, file: !1591, line: 259, baseType: !1673, size: 128, offset: 128)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1674, line: 22, size: 128, elements: !1675)
!1674 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1675 = !{!1676, !1679}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1673, file: !1674, line: 23, baseType: !1677, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1674, line: 23, flags: DIFlagFwdDecl)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1673, file: !1674, line: 24, baseType: !223, size: 64, offset: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1590, file: !1591, line: 274, baseType: !1681, size: 64, offset: 1600)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1591, line: 170, size: 192, elements: !1683)
!1683 = !{!1684, !1693, !1694}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1682, file: !1591, line: 171, baseType: !1685, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1591, line: 165, baseType: !1686)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!280, !1589, !1689, !1691, !1589}
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1642)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1663)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1682, file: !1591, line: 172, baseType: !1589, size: 64, offset: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1682, file: !1591, line: 173, baseType: !1641, size: 64, offset: 128)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1563, file: !1564, line: 138, baseType: !1589, size: 64, offset: 768)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1563, file: !1564, line: 139, baseType: !1589, size: 64, offset: 832)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1563, file: !1564, line: 140, baseType: !1589, size: 64, offset: 896)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1563, file: !1564, line: 145, baseType: !1699, size: 64, offset: 960)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1701, line: 13, size: 896, elements: !1702)
!1701 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1702 = !{!1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1700, file: !1701, line: 14, baseType: !1245, size: 32)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1700, file: !1701, line: 15, baseType: !763, size: 32, offset: 32)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1700, file: !1701, line: 16, baseType: !763, size: 32, offset: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1700, file: !1701, line: 21, baseType: !787, size: 64, offset: 128)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1700, file: !1701, line: 27, baseType: !223, size: 64, offset: 192)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1700, file: !1701, line: 28, baseType: !223, size: 64, offset: 256)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1700, file: !1701, line: 29, baseType: !787, size: 64, offset: 320)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1700, file: !1701, line: 32, baseType: !655, size: 128, offset: 384)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1700, file: !1701, line: 33, baseType: !448, size: 32, offset: 512)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1700, file: !1701, line: 37, baseType: !787, size: 64, offset: 576)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1700, file: !1701, line: 44, baseType: !1714, size: 256, offset: 640)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1715, line: 15, size: 256, elements: !1716)
!1715 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1716 = !{!1717, !1718, !1719, !1720, !1721, !1722, !1723}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1714, file: !1715, line: 16, baseType: !796)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1714, file: !1715, line: 18, baseType: !280, size: 32)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1714, file: !1715, line: 19, baseType: !280, size: 32, offset: 32)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1714, file: !1715, line: 20, baseType: !280, size: 32, offset: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1714, file: !1715, line: 21, baseType: !280, size: 32, offset: 96)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1714, file: !1715, line: 22, baseType: !223, size: 64, offset: 128)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1714, file: !1715, line: 23, baseType: !223, size: 64, offset: 192)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1563, file: !1564, line: 146, baseType: !1725, size: 64, offset: 1024)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !739, line: 516, flags: DIFlagFwdDecl)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1563, file: !1564, line: 147, baseType: !1728, size: 64, offset: 1088)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1564, line: 25, size: 64, elements: !1730)
!1730 = !{!1731, !1732, !1733}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1729, file: !1564, line: 26, baseType: !763, size: 32)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1729, file: !1564, line: 27, baseType: !280, size: 32, offset: 32)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1729, file: !1564, line: 28, baseType: !1734, offset: 64)
!1734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !456, elements: !181)
!1735 = !DIDerivedType(tag: DW_TAG_member, scope: !1563, file: !1564, line: 149, baseType: !1736, size: 128, offset: 1152)
!1736 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1563, file: !1564, line: 149, size: 128, elements: !1737)
!1737 = !{!1738, !1739}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1736, file: !1564, line: 150, baseType: !280, size: 32)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1736, file: !1564, line: 151, baseType: !380, size: 128, align: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1232, file: !1233, line: 926, baseType: !1561, size: 64, offset: 8576)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1232, file: !1233, line: 929, baseType: !1561, size: 64, offset: 8640)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1232, file: !1233, line: 933, baseType: !1589, size: 64, offset: 8704)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1232, file: !1233, line: 943, baseType: !1744, size: 128, offset: 8768)
!1744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 128, elements: !1745)
!1745 = !{!1746}
!1746 = !DISubrange(count: 16)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1232, file: !1233, line: 945, baseType: !1748, size: 64, offset: 8896)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1233, line: 49, flags: DIFlagFwdDecl)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1232, file: !1233, line: 956, baseType: !1751, size: 64, offset: 8960)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1233, line: 45, flags: DIFlagFwdDecl)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1232, file: !1233, line: 959, baseType: !1754, size: 64, offset: 9024)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1233, line: 959, flags: DIFlagFwdDecl)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1232, file: !1233, line: 962, baseType: !1757, size: 64, offset: 9088)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1233, line: 66, flags: DIFlagFwdDecl)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1232, file: !1233, line: 966, baseType: !1760, size: 64, offset: 9152)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1233, line: 50, flags: DIFlagFwdDecl)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1232, file: !1233, line: 969, baseType: !1763, size: 64, offset: 9216)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1765, line: 82, size: 7296, elements: !1766)
!1765 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1766 = !{!1767, !1768, !1769, !1770, !1771, !1772, !1773, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1802, !1811, !1812, !1814, !1815, !1816, !1819, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1849, !1850, !1857, !1858, !1859, !1860, !1861, !1862}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1764, file: !1765, line: 83, baseType: !1245, size: 32)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1764, file: !1765, line: 84, baseType: !763, size: 32, offset: 32)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1764, file: !1765, line: 85, baseType: !280, size: 32, offset: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1764, file: !1765, line: 86, baseType: !212, size: 128, offset: 128)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1764, file: !1765, line: 88, baseType: !1495, size: 128, offset: 256)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1764, file: !1765, line: 91, baseType: !1231, size: 64, offset: 384)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1764, file: !1765, line: 94, baseType: !1774, size: 192, offset: 448)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1775, line: 30, size: 192, elements: !1776)
!1775 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1776 = !{!1777, !1778}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1774, file: !1775, line: 31, baseType: !212, size: 128)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1774, file: !1775, line: 32, baseType: !1779, size: 64, offset: 128)
!1779 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1780, line: 25, baseType: !1781)
!1780 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1780, line: 23, size: 64, elements: !1782)
!1782 = !{!1783}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1781, file: !1780, line: 24, baseType: !1384, size: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1764, file: !1765, line: 97, baseType: !651, size: 64, offset: 640)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1764, file: !1765, line: 100, baseType: !280, size: 32, offset: 704)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1764, file: !1765, line: 106, baseType: !280, size: 32, offset: 736)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1764, file: !1765, line: 107, baseType: !1231, size: 64, offset: 768)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1764, file: !1765, line: 110, baseType: !280, size: 32, offset: 832)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1764, file: !1765, line: 111, baseType: !5, size: 32, offset: 864)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1764, file: !1765, line: 122, baseType: !5, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1764, file: !1765, line: 123, baseType: !5, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1764, file: !1765, line: 128, baseType: !280, size: 32, offset: 928)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1764, file: !1765, line: 129, baseType: !212, size: 128, offset: 960)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1764, file: !1765, line: 132, baseType: !1307, size: 512, offset: 1088)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1764, file: !1765, line: 133, baseType: !1315, size: 64, offset: 1600)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1764, file: !1765, line: 140, baseType: !1797, size: 256, offset: 1664)
!1797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1798, size: 256, elements: !197)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1765, line: 38, size: 128, elements: !1799)
!1799 = !{!1800, !1801}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1798, file: !1765, line: 39, baseType: !435, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1798, file: !1765, line: 40, baseType: !435, size: 64, offset: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1764, file: !1765, line: 146, baseType: !1803, size: 192, offset: 1920)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1765, line: 66, size: 192, elements: !1804)
!1804 = !{!1805}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1803, file: !1765, line: 67, baseType: !1806, size: 192)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1765, line: 47, size: 192, elements: !1807)
!1807 = !{!1808, !1809, !1810}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1806, file: !1765, line: 48, baseType: !789, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1806, file: !1765, line: 49, baseType: !789, size: 64, offset: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1806, file: !1765, line: 50, baseType: !789, size: 64, offset: 128)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1764, file: !1765, line: 150, baseType: !1544, size: 640, offset: 2112)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1764, file: !1765, line: 153, baseType: !1813, size: 256, offset: 2752)
!1813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1485, size: 256, elements: !1170)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1764, file: !1765, line: 159, baseType: !1485, size: 64, offset: 3008)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1764, file: !1765, line: 162, baseType: !280, size: 32, offset: 3072)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1764, file: !1765, line: 164, baseType: !1817, size: 64, offset: 3136)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1765, line: 164, flags: DIFlagFwdDecl)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1764, file: !1765, line: 175, baseType: !1820, size: 32, offset: 3200)
!1820 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !403, line: 805, baseType: !1821)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !403, line: 798, size: 32, elements: !1822)
!1822 = !{!1823, !1824}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1821, file: !403, line: 803, baseType: !402, size: 32)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1821, file: !403, line: 804, baseType: !254, offset: 32)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1764, file: !1765, line: 176, baseType: !435, size: 64, offset: 3264)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1764, file: !1765, line: 176, baseType: !435, size: 64, offset: 3328)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1764, file: !1765, line: 176, baseType: !435, size: 64, offset: 3392)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1764, file: !1765, line: 176, baseType: !435, size: 64, offset: 3456)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1764, file: !1765, line: 177, baseType: !435, size: 64, offset: 3520)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1764, file: !1765, line: 178, baseType: !435, size: 64, offset: 3584)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1764, file: !1765, line: 179, baseType: !1532, size: 128, offset: 3648)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1764, file: !1765, line: 180, baseType: !223, size: 64, offset: 3776)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1764, file: !1765, line: 180, baseType: !223, size: 64, offset: 3840)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1764, file: !1765, line: 180, baseType: !223, size: 64, offset: 3904)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1764, file: !1765, line: 180, baseType: !223, size: 64, offset: 3968)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1764, file: !1765, line: 181, baseType: !223, size: 64, offset: 4032)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1764, file: !1765, line: 181, baseType: !223, size: 64, offset: 4096)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1764, file: !1765, line: 181, baseType: !223, size: 64, offset: 4160)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1764, file: !1765, line: 181, baseType: !223, size: 64, offset: 4224)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1764, file: !1765, line: 182, baseType: !223, size: 64, offset: 4288)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1764, file: !1765, line: 182, baseType: !223, size: 64, offset: 4352)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1764, file: !1765, line: 182, baseType: !223, size: 64, offset: 4416)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1764, file: !1765, line: 182, baseType: !223, size: 64, offset: 4480)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1764, file: !1765, line: 183, baseType: !223, size: 64, offset: 4544)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1764, file: !1765, line: 183, baseType: !223, size: 64, offset: 4608)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1764, file: !1765, line: 184, baseType: !1847, offset: 4672)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1848, line: 12, elements: !268)
!1848 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1764, file: !1765, line: 192, baseType: !437, size: 64, offset: 4672)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1764, file: !1765, line: 203, baseType: !1851, size: 2048, offset: 4736)
!1851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1852, size: 2048, elements: !1745)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1853, line: 43, size: 128, elements: !1854)
!1853 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1854 = !{!1855, !1856}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1852, file: !1853, line: 44, baseType: !222, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1852, file: !1853, line: 45, baseType: !222, size: 64, offset: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1764, file: !1765, line: 220, baseType: !503, size: 8, offset: 6784)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1764, file: !1765, line: 221, baseType: !1220, size: 16, offset: 6800)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1764, file: !1765, line: 222, baseType: !1220, size: 16, offset: 6816)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1764, file: !1765, line: 224, baseType: !989, size: 64, offset: 6848)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1764, file: !1765, line: 227, baseType: !1188, size: 192, offset: 6912)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1764, file: !1765, line: 233, baseType: !1188, size: 192, offset: 7104)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1232, file: !1233, line: 970, baseType: !1864, size: 64, offset: 9280)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1765, line: 20, size: 16576, elements: !1866)
!1866 = !{!1867, !1868, !1869, !1870}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1865, file: !1765, line: 21, baseType: !254)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1865, file: !1765, line: 22, baseType: !1245, size: 32)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1865, file: !1765, line: 23, baseType: !1495, size: 128, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1865, file: !1765, line: 24, baseType: !1871, size: 16384, offset: 192)
!1871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1872, size: 16384, elements: !300)
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
!1883 = !{null, !280}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1875, file: !1775, line: 38, baseType: !223, size: 64, offset: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1875, file: !1775, line: 44, baseType: !1886, size: 64, offset: 128)
!1886 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1879, line: 22, baseType: !1887)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1879, line: 21, baseType: !1889)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{null}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1875, file: !1775, line: 46, baseType: !1779, size: 64, offset: 192)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1232, file: !1233, line: 971, baseType: !1779, size: 64, offset: 9344)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1232, file: !1233, line: 972, baseType: !1779, size: 64, offset: 9408)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1232, file: !1233, line: 974, baseType: !1779, size: 64, offset: 9472)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1232, file: !1233, line: 975, baseType: !1774, size: 192, offset: 9536)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1232, file: !1233, line: 976, baseType: !223, size: 64, offset: 9728)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1232, file: !1233, line: 977, baseType: !219, size: 64, offset: 9792)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1232, file: !1233, line: 978, baseType: !5, size: 32, offset: 9856)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1232, file: !1233, line: 980, baseType: !383, size: 64, offset: 9920)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1232, file: !1233, line: 989, baseType: !1901, size: 128, offset: 9984)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1902, line: 35, size: 128, elements: !1903)
!1902 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1903 = !{!1904, !1905, !1906}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1901, file: !1902, line: 36, baseType: !280, size: 32)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1901, file: !1902, line: 37, baseType: !763, size: 32, offset: 32)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1901, file: !1902, line: 38, baseType: !1907, size: 64, offset: 64)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1902, line: 23, flags: DIFlagFwdDecl)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1232, file: !1233, line: 992, baseType: !435, size: 64, offset: 10112)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1232, file: !1233, line: 993, baseType: !435, size: 64, offset: 10176)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1232, file: !1233, line: 996, baseType: !254, offset: 10240)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1232, file: !1233, line: 999, baseType: !796, offset: 10240)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1232, file: !1233, line: 1001, baseType: !1914, size: 64, offset: 10240)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1233, line: 636, size: 64, elements: !1915)
!1915 = !{!1916}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1914, file: !1233, line: 637, baseType: !1917, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1232, file: !1233, line: 1005, baseType: !768, size: 128, offset: 10304)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1232, file: !1233, line: 1007, baseType: !1231, size: 64, offset: 10432)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1232, file: !1233, line: 1009, baseType: !1921, size: 64, offset: 10496)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1233, line: 1009, flags: DIFlagFwdDecl)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1232, file: !1233, line: 1043, baseType: !207, size: 64, offset: 10560)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1232, file: !1233, line: 1046, baseType: !1925, size: 64, offset: 10624)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1233, line: 41, flags: DIFlagFwdDecl)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1232, file: !1233, line: 1050, baseType: !1928, size: 64, offset: 10688)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1233, line: 42, flags: DIFlagFwdDecl)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1232, file: !1233, line: 1054, baseType: !1931, size: 64, offset: 10752)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1233, line: 55, flags: DIFlagFwdDecl)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1232, file: !1233, line: 1056, baseType: !1934, size: 64, offset: 10816)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1233, line: 40, flags: DIFlagFwdDecl)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1232, file: !1233, line: 1058, baseType: !1937, size: 64, offset: 10880)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1939, line: 99, size: 704, elements: !1940)
!1939 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1940 = !{!1941, !1942, !1943, !1944, !1945, !1946, !1947, !1966, !1967}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1938, file: !1939, line: 100, baseType: !787, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1938, file: !1939, line: 101, baseType: !763, size: 32, offset: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1938, file: !1939, line: 102, baseType: !763, size: 32, offset: 96)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1938, file: !1939, line: 105, baseType: !254, offset: 128)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1938, file: !1939, line: 107, baseType: !157, size: 16, offset: 128)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1938, file: !1939, line: 109, baseType: !755, size: 128, offset: 192)
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
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1956, file: !1939, line: 84, baseType: !212, size: 128)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1956, file: !1939, line: 85, baseType: !950, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, scope: !1949, file: !1939, line: 87, baseType: !1961, size: 128, offset: 256)
!1961 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1949, file: !1939, line: 87, size: 128, elements: !1962)
!1962 = !{!1963, !1964}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1961, file: !1939, line: 88, baseType: !655, size: 128)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1961, file: !1939, line: 89, baseType: !380, size: 128, align: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1949, file: !1939, line: 92, baseType: !5, size: 32, offset: 384)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1938, file: !1939, line: 111, baseType: !651, size: 64, offset: 384)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1938, file: !1939, line: 113, baseType: !1968, size: 256, offset: 448)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1969, line: 102, size: 256, elements: !1970)
!1969 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1970 = !{!1971, !1972, !1973}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1968, file: !1969, line: 103, baseType: !787, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1968, file: !1969, line: 104, baseType: !212, size: 128, offset: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1968, file: !1969, line: 105, baseType: !1974, size: 64, offset: 192)
!1974 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1969, line: 21, baseType: !1975)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{null, !1978}
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1232, file: !1233, line: 1061, baseType: !1980, size: 64, offset: 10944)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1233, line: 43, flags: DIFlagFwdDecl)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1232, file: !1233, line: 1064, baseType: !223, size: 64, offset: 11008)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1232, file: !1233, line: 1065, baseType: !1984, size: 64, offset: 11072)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1775, line: 14, baseType: !1986)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1775, line: 12, size: 384, elements: !1987)
!1987 = !{!1988}
!1988 = !DIDerivedType(tag: DW_TAG_member, scope: !1986, file: !1775, line: 13, baseType: !1989, size: 384)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1986, file: !1775, line: 13, size: 384, elements: !1990)
!1990 = !{!1991, !1992, !1993, !1994}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1989, file: !1775, line: 13, baseType: !280, size: 32)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1989, file: !1775, line: 13, baseType: !280, size: 32, offset: 32)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1989, file: !1775, line: 13, baseType: !280, size: 32, offset: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1989, file: !1775, line: 13, baseType: !1995, size: 256, offset: 128)
!1995 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1996, line: 32, size: 256, elements: !1997)
!1996 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1997 = !{!1998, !2003, !2016, !2022, !2031, !2051, !2056}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1995, file: !1996, line: 37, baseType: !1999, size: 64)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1995, file: !1996, line: 34, size: 64, elements: !2000)
!2000 = !{!2001, !2002}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1999, file: !1996, line: 35, baseType: !1474, size: 32)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1999, file: !1996, line: 36, baseType: !454, size: 32, offset: 32)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1995, file: !1996, line: 45, baseType: !2004, size: 192)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1995, file: !1996, line: 40, size: 192, elements: !2005)
!2005 = !{!2006, !2008, !2009, !2015}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2004, file: !1996, line: 41, baseType: !2007, size: 32)
!2007 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !221, line: 95, baseType: !280)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2004, file: !1996, line: 42, baseType: !280, size: 32, offset: 32)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2004, file: !1996, line: 43, baseType: !2010, size: 64, offset: 64)
!2010 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1996, line: 11, baseType: !2011)
!2011 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1996, line: 8, size: 64, elements: !2012)
!2012 = !{!2013, !2014}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2011, file: !1996, line: 9, baseType: !280, size: 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2011, file: !1996, line: 10, baseType: !207, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2004, file: !1996, line: 44, baseType: !280, size: 32, offset: 128)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1995, file: !1996, line: 52, baseType: !2017, size: 128)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1995, file: !1996, line: 48, size: 128, elements: !2018)
!2018 = !{!2019, !2020, !2021}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2017, file: !1996, line: 49, baseType: !1474, size: 32)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2017, file: !1996, line: 50, baseType: !454, size: 32, offset: 32)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2017, file: !1996, line: 51, baseType: !2010, size: 64, offset: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1995, file: !1996, line: 61, baseType: !2023, size: 256)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1995, file: !1996, line: 55, size: 256, elements: !2024)
!2024 = !{!2025, !2026, !2027, !2028, !2030}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2023, file: !1996, line: 56, baseType: !1474, size: 32)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2023, file: !1996, line: 57, baseType: !454, size: 32, offset: 32)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2023, file: !1996, line: 58, baseType: !280, size: 32, offset: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2023, file: !1996, line: 59, baseType: !2029, size: 64, offset: 128)
!2029 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !221, line: 94, baseType: !328)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2023, file: !1996, line: 60, baseType: !2029, size: 64, offset: 192)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1995, file: !1996, line: 95, baseType: !2032, size: 256)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1995, file: !1996, line: 64, size: 256, elements: !2033)
!2033 = !{!2034, !2035}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2032, file: !1996, line: 65, baseType: !207, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, scope: !2032, file: !1996, line: 77, baseType: !2036, size: 192, offset: 64)
!2036 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2032, file: !1996, line: 77, size: 192, elements: !2037)
!2037 = !{!2038, !2039, !2046}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2036, file: !1996, line: 82, baseType: !1220, size: 16)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2036, file: !1996, line: 88, baseType: !2040, size: 192)
!2040 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2036, file: !1996, line: 84, size: 192, elements: !2041)
!2041 = !{!2042, !2044, !2045}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2040, file: !1996, line: 85, baseType: !2043, size: 64)
!2043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 64, elements: !1345)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2040, file: !1996, line: 86, baseType: !207, size: 64, offset: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2040, file: !1996, line: 87, baseType: !207, size: 64, offset: 128)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2036, file: !1996, line: 93, baseType: !2047, size: 96)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2036, file: !1996, line: 90, size: 96, elements: !2048)
!2048 = !{!2049, !2050}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2047, file: !1996, line: 91, baseType: !2043, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2047, file: !1996, line: 92, baseType: !432, size: 32, offset: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1995, file: !1996, line: 101, baseType: !2052, size: 128)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1995, file: !1996, line: 98, size: 128, elements: !2053)
!2053 = !{!2054, !2055}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2052, file: !1996, line: 99, baseType: !329, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2052, file: !1996, line: 100, baseType: !280, size: 32, offset: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1995, file: !1996, line: 108, baseType: !2057, size: 128)
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1995, file: !1996, line: 104, size: 128, elements: !2058)
!2058 = !{!2059, !2060, !2061}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2057, file: !1996, line: 105, baseType: !207, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2057, file: !1996, line: 106, baseType: !280, size: 32, offset: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2057, file: !1996, line: 107, baseType: !5, size: 32, offset: 96)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1232, file: !1233, line: 1067, baseType: !1847, offset: 11136)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1232, file: !1233, line: 1099, baseType: !2064, size: 64, offset: 11136)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1233, line: 56, flags: DIFlagFwdDecl)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1232, file: !1233, line: 1103, baseType: !212, size: 128, offset: 11200)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1232, file: !1233, line: 1104, baseType: !2068, size: 64, offset: 11328)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1233, line: 46, flags: DIFlagFwdDecl)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1232, file: !1233, line: 1105, baseType: !1188, size: 192, offset: 11392)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1232, file: !1233, line: 1106, baseType: !5, size: 32, offset: 11584)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1232, file: !1233, line: 1109, baseType: !2073, size: 128, offset: 11648)
!2073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2074, size: 128, elements: !197)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1233, line: 51, flags: DIFlagFwdDecl)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1232, file: !1233, line: 1110, baseType: !1188, size: 192, offset: 11776)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1232, file: !1233, line: 1111, baseType: !212, size: 128, offset: 11968)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1232, file: !1233, line: 1173, baseType: !2079, size: 64, offset: 12096)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2081, line: 62, size: 256, align: 256, elements: !2082)
!2081 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2082 = !{!2083, !2084, !2085, !2090}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2080, file: !2081, line: 75, baseType: !432, size: 32)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2080, file: !2081, line: 90, baseType: !432, size: 32, offset: 32)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2080, file: !2081, line: 124, baseType: !2086, size: 64, offset: 64)
!2086 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2080, file: !2081, line: 109, size: 64, elements: !2087)
!2087 = !{!2088, !2089}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2086, file: !2081, line: 110, baseType: !436, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2086, file: !2081, line: 112, baseType: !436, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2080, file: !2081, line: 144, baseType: !432, size: 32, offset: 128)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1232, file: !1233, line: 1174, baseType: !430, size: 32, offset: 12160)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1232, file: !1233, line: 1179, baseType: !223, size: 64, offset: 12224)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1232, file: !1233, line: 1182, baseType: !2094, size: 128, offset: 12288)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1166, line: 76, size: 128, elements: !2095)
!2095 = !{!2096, !2101, !2102}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2094, file: !1166, line: 85, baseType: !2097, size: 64)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2098, line: 7, size: 64, elements: !2099)
!2098 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2099 = !{!2100}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2097, file: !2098, line: 12, baseType: !1381, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2094, file: !1166, line: 88, baseType: !503, size: 8, offset: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2094, file: !1166, line: 95, baseType: !503, size: 8, offset: 72)
!2103 = !DIDerivedType(tag: DW_TAG_member, scope: !1232, file: !1233, line: 1184, baseType: !2104, size: 128, offset: 12416)
!2104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1232, file: !1233, line: 1184, size: 128, elements: !2105)
!2105 = !{!2106, !2107}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2104, file: !1233, line: 1185, baseType: !1245, size: 32)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2104, file: !1233, line: 1186, baseType: !380, size: 128, align: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1232, file: !1233, line: 1190, baseType: !2109, size: 64, offset: 12544)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1233, line: 53, flags: DIFlagFwdDecl)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1232, file: !1233, line: 1192, baseType: !2112, size: 128, offset: 12608)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1166, line: 64, size: 128, elements: !2113)
!2113 = !{!2114, !2115, !2116}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2112, file: !1166, line: 65, baseType: !737, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2112, file: !1166, line: 67, baseType: !432, size: 32, offset: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2112, file: !1166, line: 68, baseType: !432, size: 32, offset: 96)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1232, file: !1233, line: 1206, baseType: !280, size: 32, offset: 12736)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1232, file: !1233, line: 1207, baseType: !280, size: 32, offset: 12768)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1232, file: !1233, line: 1209, baseType: !223, size: 64, offset: 12800)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1232, file: !1233, line: 1219, baseType: !435, size: 64, offset: 12864)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1232, file: !1233, line: 1220, baseType: !435, size: 64, offset: 12928)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1232, file: !1233, line: 1317, baseType: !280, size: 32, offset: 12992)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1232, file: !1233, line: 1319, baseType: !1231, size: 64, offset: 13056)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1232, file: !1233, line: 1322, baseType: !2125, size: 64, offset: 13120)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2127, line: 56, size: 512, elements: !2128)
!2127 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2128 = !{!2129, !2130, !2131, !2132, !2133, !2134, !2135, !2137}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2126, file: !2127, line: 57, baseType: !2125, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2126, file: !2127, line: 58, baseType: !207, size: 64, offset: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2126, file: !2127, line: 59, baseType: !223, size: 64, offset: 128)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2126, file: !2127, line: 60, baseType: !223, size: 64, offset: 192)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2126, file: !2127, line: 61, baseType: !836, size: 64, offset: 256)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2126, file: !2127, line: 62, baseType: !5, size: 32, offset: 320)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2126, file: !2127, line: 63, baseType: !2136, size: 64, offset: 384)
!2136 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !213, line: 153, baseType: !435)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2126, file: !2127, line: 64, baseType: !2138, size: 64, offset: 448)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1232, file: !1233, line: 1326, baseType: !1245, size: 32, offset: 13184)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1232, file: !1233, line: 1342, baseType: !207, size: 64, offset: 13248)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1232, file: !1233, line: 1343, baseType: !436, size: 64, offset: 13312)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1232, file: !1233, line: 1344, baseType: !435, size: 64, offset: 13376)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1232, file: !1233, line: 1345, baseType: !436, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1232, file: !1233, line: 1346, baseType: !436, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1232, file: !1233, line: 1347, baseType: !436, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1232, file: !1233, line: 1348, baseType: !380, size: 128, align: 64, offset: 13504)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1232, file: !1233, line: 1358, baseType: !2149, size: 34816, offset: 13824)
!2149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2150, line: 485, size: 34816, elements: !2151)
!2150 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2151 = !{!2152, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2181, !2182, !2183, !2184, !2185, !2186, !2189, !2190, !2191}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2149, file: !2150, line: 487, baseType: !2153, size: 192)
!2153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2154, size: 192, elements: !296)
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2155, line: 16, size: 64, elements: !2156)
!2155 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2156 = !{!2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2154, file: !2155, line: 17, baseType: !875, size: 16)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2154, file: !2155, line: 18, baseType: !875, size: 16, offset: 16)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2154, file: !2155, line: 19, baseType: !875, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2154, file: !2155, line: 19, baseType: !875, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2154, file: !2155, line: 19, baseType: !875, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2154, file: !2155, line: 19, baseType: !875, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2154, file: !2155, line: 19, baseType: !875, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2154, file: !2155, line: 20, baseType: !875, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2154, file: !2155, line: 20, baseType: !875, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2154, file: !2155, line: 20, baseType: !875, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2154, file: !2155, line: 20, baseType: !875, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2154, file: !2155, line: 20, baseType: !875, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2154, file: !2155, line: 20, baseType: !875, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2149, file: !2150, line: 491, baseType: !223, size: 64, offset: 192)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2149, file: !2150, line: 495, baseType: !157, size: 16, offset: 256)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2149, file: !2150, line: 496, baseType: !157, size: 16, offset: 272)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2149, file: !2150, line: 497, baseType: !157, size: 16, offset: 288)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2149, file: !2150, line: 498, baseType: !157, size: 16, offset: 304)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2149, file: !2150, line: 502, baseType: !223, size: 64, offset: 320)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2149, file: !2150, line: 503, baseType: !223, size: 64, offset: 384)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2149, file: !2150, line: 514, baseType: !2178, size: 256, offset: 448)
!2178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2179, size: 256, elements: !1170)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2150, line: 483, flags: DIFlagFwdDecl)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2149, file: !2150, line: 516, baseType: !223, size: 64, offset: 704)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2149, file: !2150, line: 518, baseType: !223, size: 64, offset: 768)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2149, file: !2150, line: 520, baseType: !223, size: 64, offset: 832)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2149, file: !2150, line: 521, baseType: !223, size: 64, offset: 896)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2149, file: !2150, line: 522, baseType: !223, size: 64, offset: 960)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2149, file: !2150, line: 528, baseType: !2187, size: 64, offset: 1024)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2150, line: 10, flags: DIFlagFwdDecl)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2149, file: !2150, line: 535, baseType: !223, size: 64, offset: 1088)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2149, file: !2150, line: 537, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2149, file: !2150, line: 540, baseType: !2192, size: 33280, offset: 1536)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2193, line: 317, size: 33280, elements: !2194)
!2193 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2194 = !{!2195, !2196, !2197}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2192, file: !2193, line: 330, baseType: !5, size: 32)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2192, file: !2193, line: 337, baseType: !223, size: 64, offset: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2192, file: !2193, line: 348, baseType: !2198, size: 32768, offset: 512)
!2198 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2193, line: 304, size: 32768, elements: !2199)
!2199 = !{!2200, !2215, !2254, !2304, !2317}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2198, file: !2193, line: 305, baseType: !2201, size: 896)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2193, line: 12, size: 896, elements: !2202)
!2202 = !{!2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2214}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2201, file: !2193, line: 13, baseType: !430, size: 32)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2201, file: !2193, line: 14, baseType: !430, size: 32, offset: 32)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2201, file: !2193, line: 15, baseType: !430, size: 32, offset: 64)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2201, file: !2193, line: 16, baseType: !430, size: 32, offset: 96)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2201, file: !2193, line: 17, baseType: !430, size: 32, offset: 128)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2201, file: !2193, line: 18, baseType: !430, size: 32, offset: 160)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2201, file: !2193, line: 19, baseType: !430, size: 32, offset: 192)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2201, file: !2193, line: 22, baseType: !2211, size: 640, offset: 224)
!2211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !430, size: 640, elements: !2212)
!2212 = !{!2213}
!2213 = !DISubrange(count: 20)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2201, file: !2193, line: 25, baseType: !430, size: 32, offset: 864)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2198, file: !2193, line: 306, baseType: !2216, size: 4096, align: 128)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2193, line: 34, size: 4096, align: 128, elements: !2217)
!2217 = !{!2218, !2219, !2220, !2221, !2222, !2237, !2238, !2239, !2243, !2245, !2249}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2216, file: !2193, line: 35, baseType: !875, size: 16)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2216, file: !2193, line: 36, baseType: !875, size: 16, offset: 16)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2216, file: !2193, line: 37, baseType: !875, size: 16, offset: 32)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2216, file: !2193, line: 38, baseType: !875, size: 16, offset: 48)
!2222 = !DIDerivedType(tag: DW_TAG_member, scope: !2216, file: !2193, line: 39, baseType: !2223, size: 128, offset: 64)
!2223 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2216, file: !2193, line: 39, size: 128, elements: !2224)
!2224 = !{!2225, !2230}
!2225 = !DIDerivedType(tag: DW_TAG_member, scope: !2223, file: !2193, line: 40, baseType: !2226, size: 128)
!2226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2223, file: !2193, line: 40, size: 128, elements: !2227)
!2227 = !{!2228, !2229}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2226, file: !2193, line: 41, baseType: !435, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2226, file: !2193, line: 42, baseType: !435, size: 64, offset: 64)
!2230 = !DIDerivedType(tag: DW_TAG_member, scope: !2223, file: !2193, line: 44, baseType: !2231, size: 128)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2223, file: !2193, line: 44, size: 128, elements: !2232)
!2232 = !{!2233, !2234, !2235, !2236}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2231, file: !2193, line: 45, baseType: !430, size: 32)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2231, file: !2193, line: 46, baseType: !430, size: 32, offset: 32)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2231, file: !2193, line: 47, baseType: !430, size: 32, offset: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2231, file: !2193, line: 48, baseType: !430, size: 32, offset: 96)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2216, file: !2193, line: 51, baseType: !430, size: 32, offset: 192)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2216, file: !2193, line: 52, baseType: !430, size: 32, offset: 224)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2216, file: !2193, line: 55, baseType: !2240, size: 1024, offset: 256)
!2240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !430, size: 1024, elements: !2241)
!2241 = !{!2242}
!2242 = !DISubrange(count: 32)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2216, file: !2193, line: 58, baseType: !2244, size: 2048, offset: 1280)
!2244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !430, size: 2048, elements: !300)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2216, file: !2193, line: 60, baseType: !2246, size: 384, offset: 3328)
!2246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !430, size: 384, elements: !2247)
!2247 = !{!2248}
!2248 = !DISubrange(count: 12)
!2249 = !DIDerivedType(tag: DW_TAG_member, scope: !2216, file: !2193, line: 62, baseType: !2250, size: 384, offset: 3712)
!2250 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2216, file: !2193, line: 62, size: 384, elements: !2251)
!2251 = !{!2252, !2253}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2250, file: !2193, line: 63, baseType: !2246, size: 384)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2250, file: !2193, line: 64, baseType: !2246, size: 384)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2198, file: !2193, line: 307, baseType: !2255, size: 1088)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2193, line: 79, size: 1088, elements: !2256)
!2256 = !{!2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2303}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2255, file: !2193, line: 80, baseType: !430, size: 32)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2255, file: !2193, line: 81, baseType: !430, size: 32, offset: 32)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2255, file: !2193, line: 82, baseType: !430, size: 32, offset: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2255, file: !2193, line: 83, baseType: !430, size: 32, offset: 96)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2255, file: !2193, line: 84, baseType: !430, size: 32, offset: 128)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2255, file: !2193, line: 85, baseType: !430, size: 32, offset: 160)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2255, file: !2193, line: 86, baseType: !430, size: 32, offset: 192)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2255, file: !2193, line: 88, baseType: !2211, size: 640, offset: 224)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2255, file: !2193, line: 89, baseType: !1367, size: 8, offset: 864)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2255, file: !2193, line: 90, baseType: !1367, size: 8, offset: 872)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2255, file: !2193, line: 91, baseType: !1367, size: 8, offset: 880)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2255, file: !2193, line: 92, baseType: !1367, size: 8, offset: 888)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2255, file: !2193, line: 93, baseType: !1367, size: 8, offset: 896)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2255, file: !2193, line: 94, baseType: !1367, size: 8, offset: 904)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2255, file: !2193, line: 95, baseType: !2272, size: 64, offset: 960)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2274, line: 11, size: 128, elements: !2275)
!2274 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2275 = !{!2276, !2277}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2273, file: !2274, line: 12, baseType: !329, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2273, file: !2274, line: 13, baseType: !2278, size: 64, offset: 64)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2280, line: 56, size: 1344, elements: !2281)
!2280 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2281 = !{!2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2279, file: !2280, line: 61, baseType: !223, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2279, file: !2280, line: 62, baseType: !223, size: 64, offset: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2279, file: !2280, line: 63, baseType: !223, size: 64, offset: 128)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2279, file: !2280, line: 64, baseType: !223, size: 64, offset: 192)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2279, file: !2280, line: 65, baseType: !223, size: 64, offset: 256)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2279, file: !2280, line: 66, baseType: !223, size: 64, offset: 320)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2279, file: !2280, line: 68, baseType: !223, size: 64, offset: 384)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2279, file: !2280, line: 69, baseType: !223, size: 64, offset: 448)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2279, file: !2280, line: 70, baseType: !223, size: 64, offset: 512)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2279, file: !2280, line: 71, baseType: !223, size: 64, offset: 576)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2279, file: !2280, line: 72, baseType: !223, size: 64, offset: 640)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2279, file: !2280, line: 73, baseType: !223, size: 64, offset: 704)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2279, file: !2280, line: 74, baseType: !223, size: 64, offset: 768)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2279, file: !2280, line: 75, baseType: !223, size: 64, offset: 832)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2279, file: !2280, line: 76, baseType: !223, size: 64, offset: 896)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2279, file: !2280, line: 81, baseType: !223, size: 64, offset: 960)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2279, file: !2280, line: 83, baseType: !223, size: 64, offset: 1024)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2279, file: !2280, line: 84, baseType: !223, size: 64, offset: 1088)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2279, file: !2280, line: 85, baseType: !223, size: 64, offset: 1152)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2279, file: !2280, line: 86, baseType: !223, size: 64, offset: 1216)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2279, file: !2280, line: 87, baseType: !223, size: 64, offset: 1280)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2255, file: !2193, line: 96, baseType: !430, size: 32, offset: 1024)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2198, file: !2193, line: 308, baseType: !2305, size: 4608, align: 512)
!2305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2193, line: 289, size: 4608, align: 512, elements: !2306)
!2306 = !{!2307, !2308, !2315}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2305, file: !2193, line: 290, baseType: !2216, size: 4096, align: 128)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2305, file: !2193, line: 291, baseType: !2309, size: 512, offset: 4096)
!2309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2193, line: 268, size: 512, elements: !2310)
!2310 = !{!2311, !2312, !2313}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2309, file: !2193, line: 269, baseType: !435, size: 64)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2309, file: !2193, line: 270, baseType: !435, size: 64, offset: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2309, file: !2193, line: 271, baseType: !2314, size: 384, offset: 128)
!2314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 384, elements: !1637)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2305, file: !2193, line: 292, baseType: !2316, offset: 4608)
!2316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1367, elements: !181)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2198, file: !2193, line: 309, baseType: !2318, size: 32768)
!2318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1367, size: 32768, elements: !2319)
!2319 = !{!2320}
!2320 = !DISubrange(count: 4096)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1228, file: !739, line: 378, baseType: !2322, size: 64, offset: 64)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1224, file: !739, line: 384, baseType: !1516, size: 192, offset: 192)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !993, file: !739, line: 500, baseType: !254, offset: 6656)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !993, file: !739, line: 501, baseType: !2326, size: 64, offset: 6656)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !739, line: 387, flags: DIFlagFwdDecl)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !993, file: !739, line: 516, baseType: !1725, size: 64, offset: 6720)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !993, file: !739, line: 519, baseType: !367, size: 64, offset: 6784)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !993, file: !739, line: 521, baseType: !2331, size: 64, offset: 6848)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !739, line: 521, flags: DIFlagFwdDecl)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !993, file: !739, line: 545, baseType: !763, size: 32, offset: 6912)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !993, file: !739, line: 548, baseType: !503, size: 8, offset: 6944)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !993, file: !739, line: 550, baseType: !2336, offset: 6952)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2337, line: 142, elements: !268)
!2337 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !993, file: !739, line: 554, baseType: !1968, size: 256, offset: 6976)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !993, file: !739, line: 557, baseType: !430, size: 32, offset: 7232)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !990, file: !739, line: 565, baseType: !2341, offset: 7296)
!2341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, elements: !2342)
!2342 = !{!2343}
!2343 = !DISubrange(count: -1)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !986, file: !739, line: 151, baseType: !763, size: 32)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !979, file: !739, line: 156, baseType: !254, offset: 256)
!2346 = !DIDerivedType(tag: DW_TAG_member, scope: !743, file: !739, line: 159, baseType: !2347, size: 128)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !743, file: !739, line: 159, size: 128, elements: !2348)
!2348 = !{!2349, !2413}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2347, file: !739, line: 161, baseType: !2350, size: 64)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !29, line: 110, size: 1152, elements: !2352)
!2352 = !{!2353, !2363, !2384, !2385, !2386, !2387, !2388, !2400, !2401, !2402}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2351, file: !29, line: 111, baseType: !2354, size: 384)
!2354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !29, line: 19, size: 384, elements: !2355)
!2355 = !{!2356, !2358, !2359, !2360, !2361, !2362}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2354, file: !29, line: 20, baseType: !2357, size: 64)
!2357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !223)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2354, file: !29, line: 21, baseType: !2357, size: 64, offset: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2354, file: !29, line: 22, baseType: !2357, size: 64, offset: 128)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2354, file: !29, line: 23, baseType: !223, size: 64, offset: 192)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2354, file: !29, line: 24, baseType: !223, size: 64, offset: 256)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2354, file: !29, line: 25, baseType: !223, size: 64, offset: 320)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2351, file: !29, line: 112, baseType: !2364, size: 64, offset: 384)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2366, line: 105, size: 128, elements: !2367)
!2366 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2367 = !{!2368, !2369}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2365, file: !2366, line: 110, baseType: !223, size: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2365, file: !2366, line: 118, baseType: !2370, size: 64, offset: 64)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2366, line: 95, size: 448, elements: !2372)
!2372 = !{!2373, !2374, !2379, !2380, !2381, !2382, !2383}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2371, file: !2366, line: 96, baseType: !787, size: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2371, file: !2366, line: 97, baseType: !2375, size: 64, offset: 64)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2366, line: 60, baseType: !2377)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{null, !2364}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2371, file: !2366, line: 98, baseType: !2375, size: 64, offset: 128)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2371, file: !2366, line: 99, baseType: !503, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2371, file: !2366, line: 100, baseType: !503, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2371, file: !2366, line: 101, baseType: !380, size: 128, align: 64, offset: 256)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2371, file: !2366, line: 102, baseType: !2364, size: 64, offset: 384)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2351, file: !29, line: 113, baseType: !2365, size: 128, offset: 448)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2351, file: !29, line: 114, baseType: !1516, size: 192, offset: 576)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2351, file: !29, line: 115, baseType: !28, size: 32, offset: 768)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2351, file: !29, line: 116, baseType: !5, size: 32, offset: 800)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2351, file: !29, line: 117, baseType: !2389, size: 64, offset: 832)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2391)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !29, line: 67, size: 256, elements: !2392)
!2392 = !{!2393, !2394, !2398, !2399}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2391, file: !29, line: 73, baseType: !856, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2391, file: !29, line: 78, baseType: !2395, size: 64, offset: 64)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{null, !2350}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2391, file: !29, line: 83, baseType: !2395, size: 64, offset: 128)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2391, file: !29, line: 89, baseType: !1042, size: 64, offset: 192)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2351, file: !29, line: 118, baseType: !207, size: 64, offset: 896)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2351, file: !29, line: 119, baseType: !280, size: 32, offset: 960)
!2402 = !DIDerivedType(tag: DW_TAG_member, scope: !2351, file: !29, line: 120, baseType: !2403, size: 128, offset: 1024)
!2403 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2351, file: !29, line: 120, size: 128, elements: !2404)
!2404 = !{!2405, !2411}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2403, file: !29, line: 121, baseType: !2406, size: 128)
!2406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2407, line: 6, size: 128, elements: !2408)
!2407 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2408 = !{!2409, !2410}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2406, file: !2407, line: 7, baseType: !435, size: 64)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2406, file: !2407, line: 8, baseType: !435, size: 64, offset: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2403, file: !29, line: 122, baseType: !2412)
!2412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2406, elements: !181)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2347, file: !739, line: 162, baseType: !207, size: 64, offset: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !743, file: !739, line: 176, baseType: !380, size: 128, align: 64)
!2415 = !DIDerivedType(tag: DW_TAG_member, scope: !738, file: !739, line: 179, baseType: !2416, size: 32, offset: 384)
!2416 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !738, file: !739, line: 179, size: 32, elements: !2417)
!2417 = !{!2418, !2419, !2420, !2421}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2416, file: !739, line: 184, baseType: !763, size: 32)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2416, file: !739, line: 192, baseType: !5, size: 32)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2416, file: !739, line: 194, baseType: !5, size: 32)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2416, file: !739, line: 195, baseType: !280, size: 32)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !738, file: !739, line: 199, baseType: !763, size: 32, offset: 416)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !673, file: !42, line: 1964, baseType: !2424, size: 64, offset: 1344)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!329, !612, !2427}
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2429, line: 12, size: 256, elements: !2430)
!2429 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2430 = !{!2431, !2432, !2433, !2434, !2435}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2428, file: !2429, line: 13, baseType: !229, size: 32)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2428, file: !2429, line: 16, baseType: !280, size: 32, offset: 32)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2428, file: !2429, line: 23, baseType: !223, size: 64, offset: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2428, file: !2429, line: 30, baseType: !223, size: 64, offset: 128)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2428, file: !2429, line: 33, baseType: !2436, size: 64, offset: 192)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !739, line: 27, flags: DIFlagFwdDecl)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !673, file: !42, line: 1966, baseType: !2424, size: 64, offset: 1408)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !613, file: !42, line: 1424, baseType: !2440, size: 64, offset: 448)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2442)
!2442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !36, line: 322, size: 704, elements: !2443)
!2443 = !{!2444, !2490, !2494, !2498, !2499, !2500, !2501, !2502, !2507, !2512, !2516}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2442, file: !36, line: 323, baseType: !2445, size: 64)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!280, !2448}
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !36, line: 294, size: 1600, elements: !2450)
!2450 = !{!2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2475, !2476, !2477}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2449, file: !36, line: 295, baseType: !655, size: 128)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2449, file: !36, line: 296, baseType: !212, size: 128, offset: 128)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2449, file: !36, line: 297, baseType: !212, size: 128, offset: 256)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2449, file: !36, line: 298, baseType: !212, size: 128, offset: 384)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2449, file: !36, line: 299, baseType: !1188, size: 192, offset: 512)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2449, file: !36, line: 300, baseType: !254, offset: 704)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2449, file: !36, line: 301, baseType: !763, size: 32, offset: 704)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2449, file: !36, line: 302, baseType: !612, size: 64, offset: 768)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2449, file: !36, line: 303, baseType: !2460, size: 64, offset: 832)
!2460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !36, line: 68, size: 64, elements: !2461)
!2461 = !{!2462, !2474}
!2462 = !DIDerivedType(tag: DW_TAG_member, scope: !2460, file: !36, line: 69, baseType: !2463, size: 32)
!2463 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2460, file: !36, line: 69, size: 32, elements: !2464)
!2464 = !{!2465, !2466, !2467}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2463, file: !36, line: 70, baseType: !448, size: 32)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2463, file: !36, line: 71, baseType: !456, size: 32)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2463, file: !36, line: 72, baseType: !2468, size: 32)
!2468 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2469, line: 24, baseType: !2470)
!2469 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2470 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2469, line: 22, size: 32, elements: !2471)
!2471 = !{!2472}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2470, file: !2469, line: 23, baseType: !2473, size: 32)
!2473 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2469, line: 20, baseType: !454)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2460, file: !36, line: 74, baseType: !35, size: 32, offset: 32)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2449, file: !36, line: 304, baseType: !544, size: 64, offset: 896)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2449, file: !36, line: 305, baseType: !223, size: 64, offset: 960)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2449, file: !36, line: 306, baseType: !2478, size: 576, offset: 1024)
!2478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !36, line: 205, size: 576, elements: !2479)
!2479 = !{!2480, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2478, file: !36, line: 206, baseType: !2481, size: 64)
!2481 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !36, line: 66, baseType: !546)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2478, file: !36, line: 207, baseType: !2481, size: 64, offset: 64)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2478, file: !36, line: 208, baseType: !2481, size: 64, offset: 128)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2478, file: !36, line: 209, baseType: !2481, size: 64, offset: 192)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2478, file: !36, line: 210, baseType: !2481, size: 64, offset: 256)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2478, file: !36, line: 211, baseType: !2481, size: 64, offset: 320)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2478, file: !36, line: 212, baseType: !2481, size: 64, offset: 384)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2478, file: !36, line: 213, baseType: !552, size: 64, offset: 448)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2478, file: !36, line: 214, baseType: !552, size: 64, offset: 512)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2442, file: !36, line: 324, baseType: !2491, size: 64, offset: 64)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!2448, !612, !280}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2442, file: !36, line: 325, baseType: !2495, size: 64, offset: 128)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{null, !2448}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2442, file: !36, line: 326, baseType: !2445, size: 64, offset: 192)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2442, file: !36, line: 327, baseType: !2445, size: 64, offset: 256)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2442, file: !36, line: 328, baseType: !2445, size: 64, offset: 320)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2442, file: !36, line: 329, baseType: !701, size: 64, offset: 384)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2442, file: !36, line: 332, baseType: !2503, size: 64, offset: 448)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!2506, !442}
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2442, file: !36, line: 333, baseType: !2508, size: 64, offset: 512)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{!280, !442, !2511}
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2442, file: !36, line: 335, baseType: !2513, size: 64, offset: 576)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!280, !442, !2506}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2442, file: !36, line: 337, baseType: !2517, size: 64, offset: 640)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!280, !612, !2520}
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !613, file: !42, line: 1425, baseType: !2522, size: 64, offset: 512)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2524)
!2524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !36, line: 428, size: 704, elements: !2525)
!2525 = !{!2526, !2530, !2531, !2535, !2536, !2537, !2552, !2575, !2579, !2580, !2603}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2524, file: !36, line: 429, baseType: !2527, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!280, !612, !280, !280, !562}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2524, file: !36, line: 430, baseType: !701, size: 64, offset: 64)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2524, file: !36, line: 431, baseType: !2532, size: 64, offset: 128)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{!280, !612, !5}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2524, file: !36, line: 432, baseType: !2532, size: 64, offset: 192)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2524, file: !36, line: 433, baseType: !701, size: 64, offset: 256)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2524, file: !36, line: 434, baseType: !2538, size: 64, offset: 320)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{!280, !612, !280, !2541}
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !36, line: 415, size: 256, elements: !2543)
!2543 = !{!2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2542, file: !36, line: 416, baseType: !280, size: 32)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2542, file: !36, line: 417, baseType: !5, size: 32, offset: 32)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2542, file: !36, line: 418, baseType: !5, size: 32, offset: 64)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2542, file: !36, line: 420, baseType: !5, size: 32, offset: 96)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2542, file: !36, line: 421, baseType: !5, size: 32, offset: 128)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2542, file: !36, line: 422, baseType: !5, size: 32, offset: 160)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2542, file: !36, line: 423, baseType: !5, size: 32, offset: 192)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2542, file: !36, line: 424, baseType: !5, size: 32, offset: 224)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2524, file: !36, line: 435, baseType: !2553, size: 64, offset: 384)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DISubroutineType(types: !2555)
!2555 = !{!280, !612, !2460, !2556}
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !36, line: 343, size: 960, elements: !2558)
!2558 = !{!2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2557, file: !36, line: 344, baseType: !280, size: 32)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2557, file: !36, line: 345, baseType: !435, size: 64, offset: 64)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2557, file: !36, line: 346, baseType: !435, size: 64, offset: 128)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2557, file: !36, line: 347, baseType: !435, size: 64, offset: 192)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2557, file: !36, line: 348, baseType: !435, size: 64, offset: 256)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2557, file: !36, line: 349, baseType: !435, size: 64, offset: 320)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2557, file: !36, line: 350, baseType: !435, size: 64, offset: 384)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2557, file: !36, line: 351, baseType: !793, size: 64, offset: 448)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2557, file: !36, line: 353, baseType: !793, size: 64, offset: 512)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2557, file: !36, line: 354, baseType: !280, size: 32, offset: 576)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2557, file: !36, line: 355, baseType: !280, size: 32, offset: 608)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2557, file: !36, line: 356, baseType: !435, size: 64, offset: 640)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2557, file: !36, line: 357, baseType: !435, size: 64, offset: 704)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2557, file: !36, line: 358, baseType: !435, size: 64, offset: 768)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2557, file: !36, line: 359, baseType: !793, size: 64, offset: 832)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2557, file: !36, line: 360, baseType: !280, size: 32, offset: 896)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2524, file: !36, line: 436, baseType: !2576, size: 64, offset: 448)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!280, !612, !2520, !2556}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2524, file: !36, line: 438, baseType: !2553, size: 64, offset: 512)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2524, file: !36, line: 439, baseType: !2581, size: 64, offset: 576)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DISubroutineType(types: !2583)
!2583 = !{!280, !612, !2584}
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !36, line: 409, size: 1408, elements: !2586)
!2586 = !{!2587, !2588}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2585, file: !36, line: 410, baseType: !5, size: 32)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2585, file: !36, line: 411, baseType: !2589, size: 1344, offset: 64)
!2589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2590, size: 1344, elements: !296)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !36, line: 395, size: 448, elements: !2591)
!2591 = !{!2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2602}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2590, file: !36, line: 396, baseType: !5, size: 32)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2590, file: !36, line: 397, baseType: !5, size: 32, offset: 32)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2590, file: !36, line: 399, baseType: !5, size: 32, offset: 64)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2590, file: !36, line: 400, baseType: !5, size: 32, offset: 96)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2590, file: !36, line: 401, baseType: !5, size: 32, offset: 128)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2590, file: !36, line: 402, baseType: !5, size: 32, offset: 160)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2590, file: !36, line: 403, baseType: !5, size: 32, offset: 192)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2590, file: !36, line: 404, baseType: !437, size: 64, offset: 256)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2590, file: !36, line: 405, baseType: !2601, size: 64, offset: 320)
!2601 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !213, line: 126, baseType: !435)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2590, file: !36, line: 406, baseType: !2601, size: 64, offset: 384)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2524, file: !36, line: 440, baseType: !2532, size: 64, offset: 640)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !613, file: !42, line: 1426, baseType: !2605, size: 64, offset: 576)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2607)
!2607 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !42, line: 49, flags: DIFlagFwdDecl)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !613, file: !42, line: 1427, baseType: !223, size: 64, offset: 640)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !613, file: !42, line: 1428, baseType: !223, size: 64, offset: 704)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !613, file: !42, line: 1429, baseType: !223, size: 64, offset: 768)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !613, file: !42, line: 1430, baseType: !397, size: 64, offset: 832)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !613, file: !42, line: 1431, baseType: !783, size: 256, offset: 896)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !613, file: !42, line: 1432, baseType: !280, size: 32, offset: 1152)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !613, file: !42, line: 1433, baseType: !763, size: 32, offset: 1184)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !613, file: !42, line: 1437, baseType: !2616, size: 64, offset: 1216)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2619)
!2619 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !42, line: 1437, flags: DIFlagFwdDecl)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !613, file: !42, line: 1449, baseType: !2621, size: 64, offset: 1280)
!2621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !413, line: 34, size: 64, elements: !2622)
!2622 = !{!2623}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2621, file: !413, line: 35, baseType: !416, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !613, file: !42, line: 1450, baseType: !212, size: 128, offset: 1344)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !613, file: !42, line: 1451, baseType: !2626, size: 64, offset: 1472)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !42, line: 699, flags: DIFlagFwdDecl)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !613, file: !42, line: 1452, baseType: !1934, size: 64, offset: 1536)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !613, file: !42, line: 1453, baseType: !2630, size: 64, offset: 1600)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !42, line: 1453, flags: DIFlagFwdDecl)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !613, file: !42, line: 1454, baseType: !655, size: 128, offset: 1664)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !613, file: !42, line: 1455, baseType: !5, size: 32, offset: 1792)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !613, file: !42, line: 1456, baseType: !2635, size: 2432, offset: 1856)
!2635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !36, line: 518, size: 2432, elements: !2636)
!2636 = !{!2637, !2638, !2639, !2641, !2673}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2635, file: !36, line: 519, baseType: !5, size: 32)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2635, file: !36, line: 520, baseType: !783, size: 256, offset: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2635, file: !36, line: 521, baseType: !2640, size: 192, offset: 320)
!2640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 192, elements: !296)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2635, file: !36, line: 522, baseType: !2642, size: 1728, offset: 512)
!2642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2643, size: 1728, elements: !296)
!2643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !36, line: 222, size: 576, elements: !2644)
!2644 = !{!2645, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2643, file: !36, line: 223, baseType: !2646, size: 64)
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !36, line: 443, size: 256, elements: !2648)
!2648 = !{!2649, !2650, !2663, !2664}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2647, file: !36, line: 444, baseType: !280, size: 32)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2647, file: !36, line: 445, baseType: !2651, size: 64, offset: 64)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2653)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !36, line: 310, size: 512, elements: !2654)
!2654 = !{!2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2653, file: !36, line: 311, baseType: !701, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2653, file: !36, line: 312, baseType: !701, size: 64, offset: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2653, file: !36, line: 313, baseType: !701, size: 64, offset: 128)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2653, file: !36, line: 314, baseType: !701, size: 64, offset: 192)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2653, file: !36, line: 315, baseType: !2445, size: 64, offset: 256)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2653, file: !36, line: 316, baseType: !2445, size: 64, offset: 320)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2653, file: !36, line: 317, baseType: !2445, size: 64, offset: 384)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2653, file: !36, line: 318, baseType: !2517, size: 64, offset: 448)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2647, file: !36, line: 446, baseType: !646, size: 64, offset: 128)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2647, file: !36, line: 447, baseType: !2646, size: 64, offset: 192)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2643, file: !36, line: 224, baseType: !280, size: 32, offset: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2643, file: !36, line: 226, baseType: !212, size: 128, offset: 128)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2643, file: !36, line: 227, baseType: !223, size: 64, offset: 256)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2643, file: !36, line: 228, baseType: !5, size: 32, offset: 320)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2643, file: !36, line: 229, baseType: !5, size: 32, offset: 352)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2643, file: !36, line: 230, baseType: !2481, size: 64, offset: 384)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2643, file: !36, line: 231, baseType: !2481, size: 64, offset: 448)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2643, file: !36, line: 232, baseType: !207, size: 64, offset: 512)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2635, file: !36, line: 523, baseType: !2674, size: 192, offset: 2240)
!2674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2651, size: 192, elements: !296)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !613, file: !42, line: 1458, baseType: !2676, size: 2112, offset: 4288)
!2676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !42, line: 1410, size: 2112, elements: !2677)
!2677 = !{!2678, !2679, !2680}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2676, file: !42, line: 1411, baseType: !280, size: 32)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2676, file: !42, line: 1412, baseType: !1495, size: 128, offset: 64)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2676, file: !42, line: 1413, baseType: !2681, size: 1920, offset: 192)
!2681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2682, size: 1920, elements: !296)
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2683, line: 12, size: 640, elements: !2684)
!2683 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2684 = !{!2685, !2693, !2695, !2700, !2701}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2682, file: !2683, line: 13, baseType: !2686, size: 320)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2687, line: 17, size: 320, elements: !2688)
!2687 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2688 = !{!2689, !2690, !2691, !2692}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2686, file: !2687, line: 18, baseType: !280, size: 32)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2686, file: !2687, line: 19, baseType: !280, size: 32, offset: 32)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2686, file: !2687, line: 20, baseType: !1495, size: 128, offset: 64)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2686, file: !2687, line: 22, baseType: !380, size: 128, align: 64, offset: 192)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2682, file: !2683, line: 14, baseType: !2694, size: 64, offset: 320)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2682, file: !2683, line: 15, baseType: !2696, size: 64, offset: 384)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2697, line: 16, size: 64, elements: !2698)
!2697 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2698 = !{!2699}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2696, file: !2697, line: 17, baseType: !1231, size: 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2682, file: !2683, line: 16, baseType: !1495, size: 128, offset: 448)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2682, file: !2683, line: 17, baseType: !763, size: 32, offset: 576)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !613, file: !42, line: 1465, baseType: !207, size: 64, offset: 6400)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !613, file: !42, line: 1468, baseType: !430, size: 32, offset: 6464)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !613, file: !42, line: 1470, baseType: !552, size: 64, offset: 6528)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !613, file: !42, line: 1471, baseType: !552, size: 64, offset: 6592)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !613, file: !42, line: 1473, baseType: !432, size: 32, offset: 6656)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !613, file: !42, line: 1474, baseType: !2708, size: 64, offset: 6720)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !42, line: 603, flags: DIFlagFwdDecl)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !613, file: !42, line: 1477, baseType: !2711, size: 256, offset: 6784)
!2711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 256, elements: !2241)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !613, file: !42, line: 1478, baseType: !2713, size: 128, offset: 7040)
!2713 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2714, line: 18, baseType: !2715)
!2714 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2714, line: 16, size: 128, elements: !2716)
!2716 = !{!2717}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2715, file: !2714, line: 17, baseType: !2718, size: 128)
!2718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 128, elements: !1745)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !613, file: !42, line: 1480, baseType: !5, size: 32, offset: 7168)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !613, file: !42, line: 1481, baseType: !2721, size: 32, offset: 7200)
!2721 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !213, line: 150, baseType: !5)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !613, file: !42, line: 1487, baseType: !1188, size: 192, offset: 7232)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !613, file: !42, line: 1493, baseType: !243, size: 64, offset: 7424)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !613, file: !42, line: 1495, baseType: !2725, size: 64, offset: 7488)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2727)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !395, line: 135, size: 1024, align: 512, elements: !2728)
!2728 = !{!2729, !2733, !2734, !2741, !2747, !2751, !2755, !2759, !2760, !2764, !2768, !2773, !2777}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2727, file: !395, line: 136, baseType: !2730, size: 64)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{!280, !397, !5}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2727, file: !395, line: 137, baseType: !2730, size: 64, offset: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2727, file: !395, line: 138, baseType: !2735, size: 64, offset: 128)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!280, !2738, !2740}
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !398)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2727, file: !395, line: 139, baseType: !2742, size: 64, offset: 192)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{!280, !2738, !5, !243, !2745}
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !421)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2727, file: !395, line: 141, baseType: !2748, size: 64, offset: 256)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{!280, !2738}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2727, file: !395, line: 142, baseType: !2752, size: 64, offset: 320)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!280, !397}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2727, file: !395, line: 143, baseType: !2756, size: 64, offset: 384)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = !DISubroutineType(types: !2758)
!2758 = !{null, !397}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2727, file: !395, line: 144, baseType: !2756, size: 64, offset: 448)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2727, file: !395, line: 145, baseType: !2761, size: 64, offset: 512)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{null, !397, !442}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2727, file: !395, line: 146, baseType: !2765, size: 64, offset: 576)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!205, !397, !205, !280}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2727, file: !395, line: 147, baseType: !2769, size: 64, offset: 640)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{!393, !2772}
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2727, file: !395, line: 148, baseType: !2774, size: 64, offset: 704)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{!280, !562, !503}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2727, file: !395, line: 149, baseType: !2778, size: 64, offset: 768)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DISubroutineType(types: !2780)
!2780 = !{!397, !397, !2781}
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !443)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !613, file: !42, line: 1500, baseType: !280, size: 32, offset: 7552)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !613, file: !42, line: 1502, baseType: !2785, size: 448, offset: 7616)
!2785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2429, line: 60, size: 448, elements: !2786)
!2786 = !{!2787, !2792, !2793, !2794, !2795, !2796, !2797}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2785, file: !2429, line: 61, baseType: !2788, size: 64)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{!223, !2791, !2427}
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2785, file: !2429, line: 63, baseType: !2788, size: 64, offset: 64)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2785, file: !2429, line: 66, baseType: !329, size: 64, offset: 128)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2785, file: !2429, line: 67, baseType: !280, size: 32, offset: 192)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2785, file: !2429, line: 68, baseType: !5, size: 32, offset: 224)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2785, file: !2429, line: 71, baseType: !212, size: 128, offset: 256)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2785, file: !2429, line: 77, baseType: !2798, size: 64, offset: 384)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !613, file: !42, line: 1505, baseType: !787, size: 64, offset: 8064)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !613, file: !42, line: 1508, baseType: !787, size: 64, offset: 8128)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !613, file: !42, line: 1511, baseType: !280, size: 32, offset: 8192)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !613, file: !42, line: 1514, baseType: !924, size: 32, offset: 8224)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !613, file: !42, line: 1517, baseType: !2804, size: 64, offset: 8256)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1969, line: 18, flags: DIFlagFwdDecl)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !613, file: !42, line: 1518, baseType: !651, size: 64, offset: 8320)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !613, file: !42, line: 1525, baseType: !1725, size: 64, offset: 8384)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !613, file: !42, line: 1532, baseType: !2809, size: 64, offset: 8448)
!2809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2810, line: 52, size: 64, elements: !2811)
!2810 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2811 = !{!2812}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2809, file: !2810, line: 53, baseType: !2813, size: 64)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2810, line: 40, size: 256, elements: !2815)
!2815 = !{!2816, !2817, !2822}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2814, file: !2810, line: 42, baseType: !254)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2814, file: !2810, line: 44, baseType: !2818, size: 192)
!2818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2810, line: 28, size: 192, elements: !2819)
!2819 = !{!2820, !2821}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2818, file: !2810, line: 29, baseType: !212, size: 128)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2818, file: !2810, line: 31, baseType: !329, size: 64, offset: 128)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2814, file: !2810, line: 49, baseType: !329, size: 64, offset: 192)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !613, file: !42, line: 1533, baseType: !2809, size: 64, offset: 8512)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !613, file: !42, line: 1534, baseType: !380, size: 128, align: 64, offset: 8576)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !613, file: !42, line: 1535, baseType: !1968, size: 256, offset: 8704)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !613, file: !42, line: 1537, baseType: !1188, size: 192, offset: 8960)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !613, file: !42, line: 1542, baseType: !280, size: 32, offset: 9152)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !613, file: !42, line: 1545, baseType: !254, offset: 9184)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !613, file: !42, line: 1546, baseType: !212, size: 128, offset: 9216)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !613, file: !42, line: 1548, baseType: !254, offset: 9344)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !613, file: !42, line: 1549, baseType: !212, size: 128, offset: 9344)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !443, file: !42, line: 624, baseType: !750, size: 64, offset: 256)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !443, file: !42, line: 631, baseType: !223, size: 64, offset: 320)
!2834 = !DIDerivedType(tag: DW_TAG_member, scope: !443, file: !42, line: 639, baseType: !2835, size: 32, offset: 384)
!2835 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !443, file: !42, line: 639, size: 32, elements: !2836)
!2836 = !{!2837, !2839}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2835, file: !42, line: 640, baseType: !2838, size: 32)
!2838 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2835, file: !42, line: 641, baseType: !5, size: 32)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !443, file: !42, line: 643, baseType: !526, size: 32, offset: 416)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !443, file: !42, line: 644, baseType: !544, size: 64, offset: 448)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !443, file: !42, line: 645, baseType: !548, size: 128, offset: 512)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !443, file: !42, line: 646, baseType: !548, size: 128, offset: 640)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !443, file: !42, line: 647, baseType: !548, size: 128, offset: 768)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !443, file: !42, line: 648, baseType: !254, offset: 896)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !443, file: !42, line: 649, baseType: !157, size: 16, offset: 896)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !443, file: !42, line: 650, baseType: !1367, size: 8, offset: 912)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !443, file: !42, line: 651, baseType: !1367, size: 8, offset: 920)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !443, file: !42, line: 652, baseType: !2601, size: 64, offset: 960)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !443, file: !42, line: 659, baseType: !223, size: 64, offset: 1024)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !443, file: !42, line: 660, baseType: !783, size: 256, offset: 1088)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !443, file: !42, line: 662, baseType: !223, size: 64, offset: 1344)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !443, file: !42, line: 663, baseType: !223, size: 64, offset: 1408)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !443, file: !42, line: 665, baseType: !655, size: 128, offset: 1472)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !443, file: !42, line: 666, baseType: !212, size: 128, offset: 1600)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !443, file: !42, line: 675, baseType: !212, size: 128, offset: 1728)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !443, file: !42, line: 676, baseType: !212, size: 128, offset: 1856)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !443, file: !42, line: 677, baseType: !212, size: 128, offset: 1984)
!2859 = !DIDerivedType(tag: DW_TAG_member, scope: !443, file: !42, line: 678, baseType: !2860, size: 128, offset: 2112)
!2860 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !443, file: !42, line: 678, size: 128, elements: !2861)
!2861 = !{!2862, !2863}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2860, file: !42, line: 679, baseType: !651, size: 64)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2860, file: !42, line: 680, baseType: !380, size: 128, align: 64)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !443, file: !42, line: 682, baseType: !789, size: 64, offset: 2240)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !443, file: !42, line: 683, baseType: !789, size: 64, offset: 2304)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !443, file: !42, line: 684, baseType: !763, size: 32, offset: 2368)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !443, file: !42, line: 685, baseType: !763, size: 32, offset: 2400)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !443, file: !42, line: 686, baseType: !763, size: 32, offset: 2432)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !443, file: !42, line: 688, baseType: !763, size: 32, offset: 2464)
!2870 = !DIDerivedType(tag: DW_TAG_member, scope: !443, file: !42, line: 690, baseType: !2871, size: 64, offset: 2496)
!2871 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !443, file: !42, line: 690, size: 64, elements: !2872)
!2872 = !{!2873, !3095}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2871, file: !42, line: 691, baseType: !2874, size: 64)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2876)
!2876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !42, line: 1822, size: 2048, elements: !2877)
!2877 = !{!2878, !2879, !2883, !2888, !2892, !2893, !2894, !2898, !2911, !2912, !2919, !2923, !2924, !2928, !2929, !2933, !2938, !2939, !2943, !2947, !3055, !3059, !3060, !3064, !3065, !3069, !3073, !3078, !3082, !3086, !3090, !3094}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2876, file: !42, line: 1823, baseType: !646, size: 64)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2876, file: !42, line: 1824, baseType: !2880, size: 64, offset: 64)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{!544, !367, !544, !280}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2876, file: !42, line: 1825, baseType: !2884, size: 64, offset: 128)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DISubroutineType(types: !2886)
!2886 = !{!326, !367, !205, !219, !2887}
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2876, file: !42, line: 1826, baseType: !2889, size: 64, offset: 192)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!326, !367, !243, !219, !2887}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2876, file: !42, line: 1827, baseType: !860, size: 64, offset: 256)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2876, file: !42, line: 1828, baseType: !860, size: 64, offset: 320)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2876, file: !42, line: 1829, baseType: !2895, size: 64, offset: 384)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{!280, !863, !503}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2876, file: !42, line: 1830, baseType: !2899, size: 64, offset: 448)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{!280, !367, !2902}
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !42, line: 1776, size: 128, elements: !2904)
!2904 = !{!2905, !2910}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2903, file: !42, line: 1777, baseType: !2906, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !42, line: 1773, baseType: !2907)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!280, !2902, !243, !280, !544, !435, !5}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2903, file: !42, line: 1778, baseType: !544, size: 64, offset: 64)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2876, file: !42, line: 1831, baseType: !2899, size: 64, offset: 512)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2876, file: !42, line: 1832, baseType: !2913, size: 64, offset: 576)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{!2916, !367, !2917}
!2916 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !159, line: 52, baseType: !5)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !632, line: 27, flags: DIFlagFwdDecl)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2876, file: !42, line: 1833, baseType: !2920, size: 64, offset: 640)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{!329, !367, !5, !223}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2876, file: !42, line: 1834, baseType: !2920, size: 64, offset: 704)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2876, file: !42, line: 1835, baseType: !2925, size: 64, offset: 768)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!280, !367, !996}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2876, file: !42, line: 1836, baseType: !223, size: 64, offset: 832)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2876, file: !42, line: 1837, baseType: !2930, size: 64, offset: 896)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!280, !442, !367}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2876, file: !42, line: 1838, baseType: !2934, size: 64, offset: 960)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{!280, !367, !2937}
!2937 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !42, line: 1007, baseType: !207)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2876, file: !42, line: 1839, baseType: !2930, size: 64, offset: 1024)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2876, file: !42, line: 1840, baseType: !2940, size: 64, offset: 1088)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!280, !367, !544, !544, !280}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2876, file: !42, line: 1841, baseType: !2944, size: 64, offset: 1152)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{!280, !280, !367, !280}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2876, file: !42, line: 1842, baseType: !2948, size: 64, offset: 1216)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{!280, !367, !280, !2951}
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !42, line: 1062, size: 1664, elements: !2953)
!2953 = !{!2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2985, !2986, !2987, !3000, !3031}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2952, file: !42, line: 1063, baseType: !2951, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2952, file: !42, line: 1064, baseType: !212, size: 128, offset: 64)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2952, file: !42, line: 1065, baseType: !655, size: 128, offset: 192)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2952, file: !42, line: 1066, baseType: !212, size: 128, offset: 320)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2952, file: !42, line: 1069, baseType: !212, size: 128, offset: 448)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2952, file: !42, line: 1072, baseType: !2937, size: 64, offset: 576)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2952, file: !42, line: 1073, baseType: !5, size: 32, offset: 640)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2952, file: !42, line: 1074, baseType: !169, size: 8, offset: 672)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2952, file: !42, line: 1075, baseType: !5, size: 32, offset: 704)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2952, file: !42, line: 1076, baseType: !280, size: 32, offset: 736)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2952, file: !42, line: 1077, baseType: !1495, size: 128, offset: 768)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2952, file: !42, line: 1078, baseType: !367, size: 64, offset: 896)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2952, file: !42, line: 1079, baseType: !544, size: 64, offset: 960)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2952, file: !42, line: 1080, baseType: !544, size: 64, offset: 1024)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2952, file: !42, line: 1082, baseType: !2969, size: 64, offset: 1088)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !42, line: 1314, size: 320, elements: !2971)
!2971 = !{!2972, !2980, !2981, !2982, !2983, !2984}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2970, file: !42, line: 1315, baseType: !2973)
!2973 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2974, line: 20, baseType: !2975)
!2974 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2975 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2974, line: 11, elements: !2976)
!2976 = !{!2977}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2975, file: !2974, line: 12, baseType: !2978)
!2978 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !266, line: 33, baseType: !2979)
!2979 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !266, line: 31, elements: !268)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2970, file: !42, line: 1316, baseType: !280, size: 32)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2970, file: !42, line: 1317, baseType: !280, size: 32, offset: 32)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2970, file: !42, line: 1318, baseType: !2969, size: 64, offset: 64)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2970, file: !42, line: 1319, baseType: !367, size: 64, offset: 128)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2970, file: !42, line: 1320, baseType: !380, size: 128, align: 64, offset: 192)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2952, file: !42, line: 1084, baseType: !223, size: 64, offset: 1152)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2952, file: !42, line: 1085, baseType: !223, size: 64, offset: 1216)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2952, file: !42, line: 1087, baseType: !2988, size: 64, offset: 1280)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2990)
!2990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !42, line: 1011, size: 128, elements: !2991)
!2991 = !{!2992, !2996}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2990, file: !42, line: 1012, baseType: !2993, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{null, !2951, !2951}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2990, file: !42, line: 1013, baseType: !2997, size: 64, offset: 64)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{null, !2951}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2952, file: !42, line: 1088, baseType: !3001, size: 64, offset: 1344)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3003)
!3003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !42, line: 1016, size: 512, elements: !3004)
!3004 = !{!3005, !3009, !3013, !3014, !3018, !3022, !3026, !3030}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3003, file: !42, line: 1017, baseType: !3006, size: 64)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{!2937, !2937}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3003, file: !42, line: 1018, baseType: !3010, size: 64, offset: 64)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{null, !2937}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3003, file: !42, line: 1019, baseType: !2997, size: 64, offset: 128)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3003, file: !42, line: 1020, baseType: !3015, size: 64, offset: 192)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{!280, !2951, !280}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3003, file: !42, line: 1021, baseType: !3019, size: 64, offset: 256)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!503, !2951}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3003, file: !42, line: 1022, baseType: !3023, size: 64, offset: 320)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!280, !2951, !280, !216}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3003, file: !42, line: 1023, baseType: !3027, size: 64, offset: 384)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{null, !2951, !837}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3003, file: !42, line: 1024, baseType: !3019, size: 64, offset: 448)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2952, file: !42, line: 1097, baseType: !3032, size: 256, offset: 1408)
!3032 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2952, file: !42, line: 1089, size: 256, elements: !3033)
!3033 = !{!3034, !3043, !3049}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3032, file: !42, line: 1090, baseType: !3035, size: 256)
!3035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3036, line: 10, size: 256, elements: !3037)
!3036 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3037 = !{!3038, !3039, !3042}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3035, file: !3036, line: 11, baseType: !430, size: 32)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3035, file: !3036, line: 12, baseType: !3040, size: 64, offset: 64)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3036, line: 5, flags: DIFlagFwdDecl)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3035, file: !3036, line: 13, baseType: !212, size: 128, offset: 128)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3032, file: !42, line: 1091, baseType: !3044, size: 64)
!3044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3036, line: 17, size: 64, elements: !3045)
!3045 = !{!3046}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3044, file: !3036, line: 18, baseType: !3047, size: 64)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3036, line: 16, flags: DIFlagFwdDecl)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3032, file: !42, line: 1096, baseType: !3050, size: 192)
!3050 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3032, file: !42, line: 1092, size: 192, elements: !3051)
!3051 = !{!3052, !3053, !3054}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3050, file: !42, line: 1093, baseType: !212, size: 128)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3050, file: !42, line: 1094, baseType: !280, size: 32, offset: 128)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3050, file: !42, line: 1095, baseType: !5, size: 32, offset: 160)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2876, file: !42, line: 1843, baseType: !3056, size: 64, offset: 1280)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{!326, !367, !737, !280, !219, !2887, !280}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2876, file: !42, line: 1844, baseType: !1116, size: 64, offset: 1344)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2876, file: !42, line: 1845, baseType: !3061, size: 64, offset: 1408)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{!280, !280}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2876, file: !42, line: 1846, baseType: !2948, size: 64, offset: 1472)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2876, file: !42, line: 1847, baseType: !3066, size: 64, offset: 1536)
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{!326, !2109, !367, !2887, !219, !5}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2876, file: !42, line: 1848, baseType: !3070, size: 64, offset: 1600)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{!326, !367, !2887, !2109, !219, !5}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2876, file: !42, line: 1849, baseType: !3074, size: 64, offset: 1664)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{!280, !367, !329, !3077, !837}
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2876, file: !42, line: 1850, baseType: !3079, size: 64, offset: 1728)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{!329, !367, !280, !544, !544}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2876, file: !42, line: 1852, baseType: !3083, size: 64, offset: 1792)
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{null, !727, !367}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2876, file: !42, line: 1856, baseType: !3087, size: 64, offset: 1856)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!326, !367, !544, !367, !544, !219, !5}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2876, file: !42, line: 1858, baseType: !3091, size: 64, offset: 1920)
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3092, size: 64)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{!544, !367, !544, !367, !544, !544, !5}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2876, file: !42, line: 1861, baseType: !2940, size: 64, offset: 1984)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2871, file: !42, line: 692, baseType: !680, size: 64)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !443, file: !42, line: 694, baseType: !3097, size: 64, offset: 2560)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !42, line: 1100, size: 384, elements: !3099)
!3099 = !{!3100, !3101, !3102, !3103}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3098, file: !42, line: 1101, baseType: !254)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3098, file: !42, line: 1102, baseType: !212, size: 128)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3098, file: !42, line: 1103, baseType: !212, size: 128, offset: 128)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3098, file: !42, line: 1104, baseType: !212, size: 128, offset: 256)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !443, file: !42, line: 695, baseType: !751, size: 1216, align: 64, offset: 2624)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !443, file: !42, line: 696, baseType: !212, size: 128, offset: 3840)
!3106 = !DIDerivedType(tag: DW_TAG_member, scope: !443, file: !42, line: 697, baseType: !3107, size: 64, offset: 3968)
!3107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !443, file: !42, line: 697, size: 64, elements: !3108)
!3108 = !{!3109, !3110, !3111, !3114, !3115}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3107, file: !42, line: 698, baseType: !2109, size: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3107, file: !42, line: 699, baseType: !2626, size: 64)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3107, file: !42, line: 700, baseType: !3112, size: 64)
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3113 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !42, line: 700, flags: DIFlagFwdDecl)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3107, file: !42, line: 701, baseType: !205, size: 64)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3107, file: !42, line: 702, baseType: !5, size: 32)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !443, file: !42, line: 705, baseType: !432, size: 32, offset: 4032)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !443, file: !42, line: 708, baseType: !432, size: 32, offset: 4064)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !443, file: !42, line: 709, baseType: !2708, size: 64, offset: 4096)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !443, file: !42, line: 720, baseType: !207, size: 64, offset: 4160)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !398, file: !395, line: 98, baseType: !3121, size: 256, offset: 448)
!3121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 256, elements: !2241)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !398, file: !395, line: 101, baseType: !3123, size: 32, offset: 704)
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3124, line: 25, size: 32, elements: !3125)
!3124 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3125 = !{!3126}
!3126 = !DIDerivedType(tag: DW_TAG_member, scope: !3123, file: !3124, line: 26, baseType: !3127, size: 32)
!3127 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3123, file: !3124, line: 26, size: 32, elements: !3128)
!3128 = !{!3129}
!3129 = !DIDerivedType(tag: DW_TAG_member, scope: !3127, file: !3124, line: 30, baseType: !3130, size: 32)
!3130 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3127, file: !3124, line: 30, size: 32, elements: !3131)
!3131 = !{!3132, !3133}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3130, file: !3124, line: 31, baseType: !254)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3130, file: !3124, line: 32, baseType: !280, size: 32)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !398, file: !395, line: 102, baseType: !2725, size: 64, offset: 768)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !398, file: !395, line: 103, baseType: !612, size: 64, offset: 832)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !398, file: !395, line: 104, baseType: !223, size: 64, offset: 896)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !398, file: !395, line: 105, baseType: !207, size: 64, offset: 960)
!3138 = !DIDerivedType(tag: DW_TAG_member, scope: !398, file: !395, line: 107, baseType: !3139, size: 128, offset: 1024)
!3139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !398, file: !395, line: 107, size: 128, elements: !3140)
!3140 = !{!3141, !3142}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3139, file: !395, line: 108, baseType: !212, size: 128)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3139, file: !395, line: 109, baseType: !3143, size: 64)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !398, file: !395, line: 111, baseType: !212, size: 128, offset: 1152)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !398, file: !395, line: 112, baseType: !212, size: 128, offset: 1280)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !398, file: !395, line: 120, baseType: !3147, size: 128, offset: 1408)
!3147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !398, file: !395, line: 116, size: 128, elements: !3148)
!3148 = !{!3149, !3150, !3151}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3147, file: !395, line: 117, baseType: !655, size: 128)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3147, file: !395, line: 118, baseType: !412, size: 128)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3147, file: !395, line: 119, baseType: !380, size: 128, align: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !368, file: !42, line: 922, baseType: !442, size: 64, offset: 256)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !368, file: !42, line: 923, baseType: !2874, size: 64, offset: 320)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !368, file: !42, line: 929, baseType: !254, offset: 384)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !368, file: !42, line: 930, baseType: !41, size: 32, offset: 384)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !368, file: !42, line: 931, baseType: !787, size: 64, offset: 448)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !368, file: !42, line: 932, baseType: !5, size: 32, offset: 512)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !368, file: !42, line: 933, baseType: !2721, size: 32, offset: 544)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !368, file: !42, line: 934, baseType: !1188, size: 192, offset: 576)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !368, file: !42, line: 935, baseType: !544, size: 64, offset: 768)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !368, file: !42, line: 936, baseType: !3162, size: 192, offset: 832)
!3162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !42, line: 885, size: 192, elements: !3163)
!3163 = !{!3164, !3165, !3166, !3167, !3168, !3169}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3162, file: !42, line: 886, baseType: !2973)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3162, file: !42, line: 887, baseType: !1485, size: 64)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3162, file: !42, line: 888, baseType: !50, size: 32, offset: 64)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3162, file: !42, line: 889, baseType: !448, size: 32, offset: 96)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3162, file: !42, line: 889, baseType: !448, size: 32, offset: 128)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3162, file: !42, line: 890, baseType: !280, size: 32, offset: 160)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !368, file: !42, line: 937, baseType: !1561, size: 64, offset: 1024)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !368, file: !42, line: 938, baseType: !3172, size: 256, offset: 1088)
!3172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !42, line: 896, size: 256, elements: !3173)
!3173 = !{!3174, !3175, !3176, !3177, !3178, !3179}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3172, file: !42, line: 897, baseType: !223, size: 64)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3172, file: !42, line: 898, baseType: !5, size: 32, offset: 64)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3172, file: !42, line: 899, baseType: !5, size: 32, offset: 96)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3172, file: !42, line: 902, baseType: !5, size: 32, offset: 128)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3172, file: !42, line: 903, baseType: !5, size: 32, offset: 160)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3172, file: !42, line: 904, baseType: !544, size: 64, offset: 192)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !368, file: !42, line: 940, baseType: !435, size: 64, offset: 1344)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !368, file: !42, line: 945, baseType: !207, size: 64, offset: 1408)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !368, file: !42, line: 949, baseType: !212, size: 128, offset: 1472)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !368, file: !42, line: 950, baseType: !212, size: 128, offset: 1600)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !368, file: !42, line: 952, baseType: !750, size: 64, offset: 1728)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !368, file: !42, line: 953, baseType: !924, size: 32, offset: 1792)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !368, file: !42, line: 954, baseType: !924, size: 32, offset: 1824)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !358, file: !320, line: 174, baseType: !364, size: 64, offset: 320)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !358, file: !320, line: 176, baseType: !3189, size: 64, offset: 384)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{!280, !367, !247, !357, !996}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !346, file: !320, line: 90, baseType: !341, size: 64, offset: 192)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !346, file: !320, line: 91, baseType: !3194, size: 64, offset: 256)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !310, file: !240, line: 143, baseType: !3196, size: 64, offset: 256)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{!3199, !247}
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3201)
!3201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !59, line: 39, size: 384, elements: !3202)
!3202 = !{!3203, !3204, !3208, !3212, !3218, !3222}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3201, file: !59, line: 40, baseType: !58, size: 32)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3201, file: !59, line: 41, baseType: !3205, size: 64, offset: 64)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!503}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3201, file: !59, line: 42, baseType: !3209, size: 64, offset: 128)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!207}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3201, file: !59, line: 43, baseType: !3213, size: 64, offset: 192)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!2138, !3216}
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !59, line: 19, flags: DIFlagFwdDecl)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3201, file: !59, line: 44, baseType: !3219, size: 64, offset: 256)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{!2138}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3201, file: !59, line: 45, baseType: !481, size: 64, offset: 320)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !310, file: !240, line: 144, baseType: !3224, size: 64, offset: 320)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!2138, !247}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !310, file: !240, line: 145, baseType: !3228, size: 64, offset: 384)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{null, !247, !3231, !3232}
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !239, file: !240, line: 70, baseType: !3234, size: 64, offset: 384)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !632, line: 123, size: 1024, elements: !3236)
!3236 = !{!3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3365, !3366, !3367, !3368, !3369}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3235, file: !632, line: 124, baseType: !763, size: 32)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3235, file: !632, line: 125, baseType: !763, size: 32, offset: 32)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3235, file: !632, line: 135, baseType: !3234, size: 64, offset: 64)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3235, file: !632, line: 136, baseType: !243, size: 64, offset: 128)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3235, file: !632, line: 138, baseType: !776, size: 192, align: 64, offset: 192)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3235, file: !632, line: 140, baseType: !2138, size: 64, offset: 384)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3235, file: !632, line: 141, baseType: !5, size: 32, offset: 448)
!3244 = !DIDerivedType(tag: DW_TAG_member, scope: !3235, file: !632, line: 142, baseType: !3245, size: 256, offset: 512)
!3245 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3235, file: !632, line: 142, size: 256, elements: !3246)
!3246 = !{!3247, !3293, !3297}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3245, file: !632, line: 143, baseType: !3248, size: 192)
!3248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !632, line: 91, size: 192, elements: !3249)
!3249 = !{!3250, !3251, !3252}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3248, file: !632, line: 92, baseType: !223, size: 64)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3248, file: !632, line: 94, baseType: !772, size: 64, offset: 64)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3248, file: !632, line: 100, baseType: !3253, size: 64, offset: 128)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !632, line: 180, size: 704, elements: !3255)
!3255 = !{!3256, !3257, !3258, !3265, !3266, !3267, !3291, !3292}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3254, file: !632, line: 182, baseType: !3234, size: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3254, file: !632, line: 183, baseType: !5, size: 32, offset: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3254, file: !632, line: 186, baseType: !3259, size: 192, offset: 128)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3260, line: 19, size: 192, elements: !3261)
!3260 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3261 = !{!3262, !3263, !3264}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3259, file: !3260, line: 20, baseType: !755, size: 128)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3259, file: !3260, line: 21, baseType: !5, size: 32, offset: 128)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3259, file: !3260, line: 22, baseType: !5, size: 32, offset: 160)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3254, file: !632, line: 187, baseType: !430, size: 32, offset: 320)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3254, file: !632, line: 188, baseType: !430, size: 32, offset: 352)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3254, file: !632, line: 189, baseType: !3268, size: 64, offset: 384)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !632, line: 168, size: 320, elements: !3270)
!3270 = !{!3271, !3275, !3279, !3283, !3287}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3269, file: !632, line: 169, baseType: !3272, size: 64)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{!280, !727, !3253}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3269, file: !632, line: 171, baseType: !3276, size: 64, offset: 64)
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{!280, !3234, !243, !335}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3269, file: !632, line: 173, baseType: !3280, size: 64, offset: 128)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = !DISubroutineType(types: !3282)
!3282 = !{!280, !3234}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3269, file: !632, line: 174, baseType: !3284, size: 64, offset: 192)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = !DISubroutineType(types: !3286)
!3286 = !{!280, !3234, !3234, !243}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3269, file: !632, line: 176, baseType: !3288, size: 64, offset: 256)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = !DISubroutineType(types: !3290)
!3290 = !{!280, !727, !3234, !3253}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3254, file: !632, line: 192, baseType: !212, size: 128, offset: 448)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3254, file: !632, line: 194, baseType: !1495, size: 128, offset: 576)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3245, file: !632, line: 144, baseType: !3294, size: 64)
!3294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !632, line: 103, size: 64, elements: !3295)
!3295 = !{!3296}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3294, file: !632, line: 104, baseType: !3234, size: 64)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3245, file: !632, line: 145, baseType: !3298, size: 256)
!3298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !632, line: 107, size: 256, elements: !3299)
!3299 = !{!3300, !3360, !3363, !3364}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3298, file: !632, line: 108, baseType: !3301, size: 64)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3303)
!3303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !632, line: 217, size: 768, elements: !3304)
!3304 = !{!3305, !3325, !3329, !3333, !3337, !3341, !3345, !3349, !3350, !3351, !3352, !3356}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3303, file: !632, line: 222, baseType: !3306, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!280, !3309}
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !632, line: 197, size: 1088, elements: !3311)
!3311 = !{!3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3310, file: !632, line: 199, baseType: !3234, size: 64)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3310, file: !632, line: 200, baseType: !367, size: 64, offset: 64)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3310, file: !632, line: 201, baseType: !727, size: 64, offset: 128)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3310, file: !632, line: 202, baseType: !207, size: 64, offset: 192)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3310, file: !632, line: 205, baseType: !1188, size: 192, offset: 256)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3310, file: !632, line: 206, baseType: !1188, size: 192, offset: 448)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3310, file: !632, line: 207, baseType: !280, size: 32, offset: 640)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3310, file: !632, line: 208, baseType: !212, size: 128, offset: 704)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3310, file: !632, line: 209, baseType: !205, size: 64, offset: 832)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3310, file: !632, line: 211, baseType: !219, size: 64, offset: 896)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3310, file: !632, line: 212, baseType: !503, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3310, file: !632, line: 213, baseType: !503, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3310, file: !632, line: 214, baseType: !1024, size: 64, offset: 1024)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3303, file: !632, line: 223, baseType: !3326, size: 64, offset: 64)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DISubroutineType(types: !3328)
!3328 = !{null, !3309}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3303, file: !632, line: 236, baseType: !3330, size: 64, offset: 128)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!280, !727, !207}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3303, file: !632, line: 238, baseType: !3334, size: 64, offset: 192)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{!207, !727, !2887}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3303, file: !632, line: 239, baseType: !3338, size: 64, offset: 256)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DISubroutineType(types: !3340)
!3340 = !{!207, !727, !207, !2887}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3303, file: !632, line: 240, baseType: !3342, size: 64, offset: 320)
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3343 = !DISubroutineType(types: !3344)
!3344 = !{null, !727, !207}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3303, file: !632, line: 242, baseType: !3346, size: 64, offset: 384)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = !DISubroutineType(types: !3348)
!3348 = !{!326, !3309, !205, !219, !544}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3303, file: !632, line: 252, baseType: !219, size: 64, offset: 448)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3303, file: !632, line: 259, baseType: !503, size: 8, offset: 512)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3303, file: !632, line: 260, baseType: !3346, size: 64, offset: 576)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3303, file: !632, line: 263, baseType: !3353, size: 64, offset: 640)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DISubroutineType(types: !3355)
!3355 = !{!2916, !3309, !2917}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3303, file: !632, line: 266, baseType: !3357, size: 64, offset: 704)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{!280, !3309, !996}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3298, file: !632, line: 109, baseType: !3361, size: 64, offset: 64)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !632, line: 31, flags: DIFlagFwdDecl)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3298, file: !632, line: 110, baseType: !544, size: 64, offset: 128)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3298, file: !632, line: 111, baseType: !3234, size: 64, offset: 192)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3235, file: !632, line: 148, baseType: !207, size: 64, offset: 768)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3235, file: !632, line: 154, baseType: !435, size: 64, offset: 832)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3235, file: !632, line: 156, baseType: !157, size: 16, offset: 896)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3235, file: !632, line: 157, baseType: !335, size: 16, offset: 912)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3235, file: !632, line: 158, baseType: !3370, size: 64, offset: 960)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !632, line: 32, flags: DIFlagFwdDecl)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !239, file: !240, line: 71, baseType: !3373, size: 32, offset: 448)
!3373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3374, line: 19, size: 32, elements: !3375)
!3374 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3375 = !{!3376}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3373, file: !3374, line: 20, baseType: !1245, size: 32)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !239, file: !240, line: 75, baseType: !5, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !239, file: !240, line: 76, baseType: !5, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !239, file: !240, line: 77, baseType: !5, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !239, file: !240, line: 78, baseType: !5, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !239, file: !240, line: 79, baseType: !5, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !236, file: !71, line: 463, baseType: !3383, size: 64, offset: 512)
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !236, file: !71, line: 465, baseType: !3385, size: 64, offset: 576)
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !71, line: 36, flags: DIFlagFwdDecl)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !236, file: !71, line: 467, baseType: !243, size: 64, offset: 640)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !236, file: !71, line: 468, baseType: !3389, size: 64, offset: 704)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3391)
!3391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !71, line: 87, size: 384, elements: !3392)
!3392 = !{!3393, !3394, !3395, !3399, !3404, !3408}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3391, file: !71, line: 88, baseType: !243, size: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3391, file: !71, line: 89, baseType: !343, size: 64, offset: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3391, file: !71, line: 90, baseType: !3396, size: 64, offset: 128)
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3397, size: 64)
!3397 = !DISubroutineType(types: !3398)
!3398 = !{!280, !3383, !291}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3391, file: !71, line: 91, baseType: !3400, size: 64, offset: 192)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = !DISubroutineType(types: !3402)
!3402 = !{!205, !3383, !3403, !3231, !3232}
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3391, file: !71, line: 93, baseType: !3405, size: 64, offset: 256)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{null, !3383}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3391, file: !71, line: 95, baseType: !3409, size: 64, offset: 320)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3411)
!3411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !78, line: 278, size: 1472, elements: !3412)
!3412 = !{!3413, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3411, file: !78, line: 279, baseType: !3414, size: 64)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{!280, !3383}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3411, file: !78, line: 280, baseType: !3405, size: 64, offset: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3411, file: !78, line: 281, baseType: !3414, size: 64, offset: 128)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3411, file: !78, line: 282, baseType: !3414, size: 64, offset: 192)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3411, file: !78, line: 283, baseType: !3414, size: 64, offset: 256)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3411, file: !78, line: 284, baseType: !3414, size: 64, offset: 320)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3411, file: !78, line: 285, baseType: !3414, size: 64, offset: 384)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3411, file: !78, line: 286, baseType: !3414, size: 64, offset: 448)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3411, file: !78, line: 287, baseType: !3414, size: 64, offset: 512)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3411, file: !78, line: 288, baseType: !3414, size: 64, offset: 576)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3411, file: !78, line: 289, baseType: !3414, size: 64, offset: 640)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3411, file: !78, line: 290, baseType: !3414, size: 64, offset: 704)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3411, file: !78, line: 291, baseType: !3414, size: 64, offset: 768)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3411, file: !78, line: 292, baseType: !3414, size: 64, offset: 832)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3411, file: !78, line: 293, baseType: !3414, size: 64, offset: 896)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3411, file: !78, line: 294, baseType: !3414, size: 64, offset: 960)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3411, file: !78, line: 295, baseType: !3414, size: 64, offset: 1024)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3411, file: !78, line: 296, baseType: !3414, size: 64, offset: 1088)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3411, file: !78, line: 297, baseType: !3414, size: 64, offset: 1152)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3411, file: !78, line: 298, baseType: !3414, size: 64, offset: 1216)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3411, file: !78, line: 299, baseType: !3414, size: 64, offset: 1280)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3411, file: !78, line: 300, baseType: !3414, size: 64, offset: 1344)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3411, file: !78, line: 301, baseType: !3414, size: 64, offset: 1408)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !236, file: !71, line: 470, baseType: !3440, size: 64, offset: 768)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3442, line: 82, size: 1408, elements: !3443)
!3442 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3443 = !{!3444, !3445, !3446, !3447, !3448, !3449, !3450, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3525, !3528, !3529}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3441, file: !3442, line: 83, baseType: !243, size: 64)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3441, file: !3442, line: 84, baseType: !243, size: 64, offset: 64)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3441, file: !3442, line: 85, baseType: !3383, size: 64, offset: 128)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3441, file: !3442, line: 86, baseType: !343, size: 64, offset: 192)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3441, file: !3442, line: 87, baseType: !343, size: 64, offset: 256)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3441, file: !3442, line: 88, baseType: !343, size: 64, offset: 320)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3441, file: !3442, line: 90, baseType: !3451, size: 64, offset: 384)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DISubroutineType(types: !3453)
!3453 = !{!280, !3383, !3454}
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !65, line: 95, size: 1152, elements: !3456)
!3456 = !{!3457, !3458, !3459, !3460, !3461, !3462, !3463, !3476, !3489, !3490, !3491, !3492, !3493, !3501, !3502, !3503, !3504, !3505, !3506}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3455, file: !65, line: 96, baseType: !243, size: 64)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3455, file: !65, line: 97, baseType: !3440, size: 64, offset: 64)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3455, file: !65, line: 99, baseType: !646, size: 64, offset: 128)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3455, file: !65, line: 100, baseType: !243, size: 64, offset: 192)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3455, file: !65, line: 102, baseType: !503, size: 8, offset: 256)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3455, file: !65, line: 103, baseType: !64, size: 32, offset: 288)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3455, file: !65, line: 105, baseType: !3464, size: 64, offset: 320)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3466)
!3466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3467, line: 262, size: 1600, elements: !3468)
!3467 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3468 = !{!3469, !3470, !3471, !3475}
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3466, file: !3467, line: 263, baseType: !2711, size: 256)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3466, file: !3467, line: 264, baseType: !2711, size: 256, offset: 256)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3466, file: !3467, line: 265, baseType: !3472, size: 1024, offset: 512)
!3472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 1024, elements: !3473)
!3473 = !{!3474}
!3474 = !DISubrange(count: 128)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3466, file: !3467, line: 266, baseType: !2138, size: 64, offset: 1536)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3455, file: !65, line: 106, baseType: !3477, size: 64, offset: 384)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3479)
!3479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3467, line: 210, size: 256, elements: !3480)
!3480 = !{!3481, !3485, !3487, !3488}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3479, file: !3467, line: 211, baseType: !3482, size: 72)
!3482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 72, elements: !3483)
!3483 = !{!3484}
!3484 = !DISubrange(count: 9)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3479, file: !3467, line: 212, baseType: !3486, size: 64, offset: 128)
!3486 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3467, line: 14, baseType: !223)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3479, file: !3467, line: 213, baseType: !432, size: 32, offset: 192)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3479, file: !3467, line: 214, baseType: !432, size: 32, offset: 224)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3455, file: !65, line: 108, baseType: !3414, size: 64, offset: 448)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3455, file: !65, line: 109, baseType: !3405, size: 64, offset: 512)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3455, file: !65, line: 110, baseType: !3414, size: 64, offset: 576)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3455, file: !65, line: 111, baseType: !3405, size: 64, offset: 640)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3455, file: !65, line: 112, baseType: !3494, size: 64, offset: 704)
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3495 = !DISubroutineType(types: !3496)
!3496 = !{!280, !3383, !3497}
!3497 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !78, line: 52, baseType: !3498)
!3498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !78, line: 50, size: 32, elements: !3499)
!3499 = !{!3500}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3498, file: !78, line: 51, baseType: !280, size: 32)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3455, file: !65, line: 113, baseType: !3414, size: 64, offset: 768)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3455, file: !65, line: 114, baseType: !343, size: 64, offset: 832)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3455, file: !65, line: 115, baseType: !343, size: 64, offset: 896)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3455, file: !65, line: 117, baseType: !3409, size: 64, offset: 960)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3455, file: !65, line: 118, baseType: !3405, size: 64, offset: 1024)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3455, file: !65, line: 120, baseType: !3507, size: 64, offset: 1088)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !65, line: 120, flags: DIFlagFwdDecl)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3441, file: !3442, line: 91, baseType: !3396, size: 64, offset: 448)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3441, file: !3442, line: 92, baseType: !3414, size: 64, offset: 512)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3441, file: !3442, line: 93, baseType: !3405, size: 64, offset: 576)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3441, file: !3442, line: 94, baseType: !3414, size: 64, offset: 640)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3441, file: !3442, line: 95, baseType: !3405, size: 64, offset: 704)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3441, file: !3442, line: 97, baseType: !3414, size: 64, offset: 768)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3441, file: !3442, line: 98, baseType: !3414, size: 64, offset: 832)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3441, file: !3442, line: 100, baseType: !3494, size: 64, offset: 896)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3441, file: !3442, line: 101, baseType: !3414, size: 64, offset: 960)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3441, file: !3442, line: 103, baseType: !3414, size: 64, offset: 1024)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3441, file: !3442, line: 105, baseType: !3414, size: 64, offset: 1088)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3441, file: !3442, line: 107, baseType: !3409, size: 64, offset: 1152)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3441, file: !3442, line: 109, baseType: !3522, size: 64, offset: 1216)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3524)
!3524 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3442, line: 109, flags: DIFlagFwdDecl)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3441, file: !3442, line: 111, baseType: !3526, size: 64, offset: 1280)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3442, line: 111, flags: DIFlagFwdDecl)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3441, file: !3442, line: 112, baseType: !661, offset: 1344)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3441, file: !3442, line: 114, baseType: !503, size: 8, offset: 1344)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !236, file: !71, line: 471, baseType: !3454, size: 64, offset: 832)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !236, file: !71, line: 473, baseType: !207, size: 64, offset: 896)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !236, file: !71, line: 475, baseType: !207, size: 64, offset: 960)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !236, file: !71, line: 480, baseType: !1188, size: 192, offset: 1024)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !236, file: !71, line: 484, baseType: !3535, size: 576, offset: 1216)
!3535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !71, line: 361, size: 576, elements: !3536)
!3536 = !{!3537, !3538, !3539, !3540, !3541, !3542}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3535, file: !71, line: 362, baseType: !212, size: 128)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3535, file: !71, line: 363, baseType: !212, size: 128, offset: 128)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3535, file: !71, line: 364, baseType: !212, size: 128, offset: 256)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3535, file: !71, line: 365, baseType: !212, size: 128, offset: 384)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3535, file: !71, line: 366, baseType: !503, size: 8, offset: 512)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3535, file: !71, line: 367, baseType: !70, size: 32, offset: 544)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !236, file: !71, line: 485, baseType: !3544, size: 2304, offset: 1792)
!3544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !78, line: 565, size: 2304, elements: !3545)
!3545 = !{!3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3641, !3645}
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3544, file: !78, line: 566, baseType: !3497, size: 32)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3544, file: !78, line: 567, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3544, file: !78, line: 568, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3544, file: !78, line: 569, baseType: !503, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3544, file: !78, line: 570, baseType: !503, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3544, file: !78, line: 571, baseType: !503, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3544, file: !78, line: 572, baseType: !503, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3544, file: !78, line: 573, baseType: !503, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3544, file: !78, line: 574, baseType: !503, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3544, file: !78, line: 575, baseType: !503, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3544, file: !78, line: 576, baseType: !503, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3544, file: !78, line: 577, baseType: !430, size: 32, offset: 64)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3544, file: !78, line: 578, baseType: !254, offset: 96)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3544, file: !78, line: 580, baseType: !212, size: 128, offset: 128)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3544, file: !78, line: 581, baseType: !1516, size: 192, offset: 256)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3544, file: !78, line: 582, baseType: !3562, size: 64, offset: 448)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3564, line: 43, size: 1472, elements: !3565)
!3564 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3565 = !{!3566, !3567, !3568, !3569, !3570, !3573, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3563, file: !3564, line: 44, baseType: !243, size: 64)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3563, file: !3564, line: 45, baseType: !280, size: 32, offset: 64)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3563, file: !3564, line: 46, baseType: !212, size: 128, offset: 128)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3563, file: !3564, line: 47, baseType: !254, offset: 256)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3563, file: !3564, line: 48, baseType: !3571, size: 64, offset: 256)
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3572 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !78, line: 533, flags: DIFlagFwdDecl)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3563, file: !3564, line: 49, baseType: !3574, size: 320, offset: 320)
!3574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3575, line: 11, size: 320, elements: !3576)
!3575 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3576 = !{!3577, !3578, !3579, !3584}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3574, file: !3575, line: 16, baseType: !655, size: 128)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3574, file: !3575, line: 17, baseType: !223, size: 64, offset: 128)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3574, file: !3575, line: 18, baseType: !3580, size: 64, offset: 192)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = !DISubroutineType(types: !3582)
!3582 = !{null, !3583}
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3574, file: !3575, line: 19, baseType: !430, size: 32, offset: 256)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3563, file: !3564, line: 50, baseType: !223, size: 64, offset: 640)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3563, file: !3564, line: 51, baseType: !1315, size: 64, offset: 704)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3563, file: !3564, line: 52, baseType: !1315, size: 64, offset: 768)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3563, file: !3564, line: 53, baseType: !1315, size: 64, offset: 832)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3563, file: !3564, line: 54, baseType: !1315, size: 64, offset: 896)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3563, file: !3564, line: 55, baseType: !1315, size: 64, offset: 960)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3563, file: !3564, line: 56, baseType: !223, size: 64, offset: 1024)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3563, file: !3564, line: 57, baseType: !223, size: 64, offset: 1088)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3563, file: !3564, line: 58, baseType: !223, size: 64, offset: 1152)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3563, file: !3564, line: 59, baseType: !223, size: 64, offset: 1216)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3563, file: !3564, line: 60, baseType: !223, size: 64, offset: 1280)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3563, file: !3564, line: 61, baseType: !3383, size: 64, offset: 1344)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3563, file: !3564, line: 62, baseType: !503, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3563, file: !3564, line: 63, baseType: !503, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3544, file: !78, line: 583, baseType: !503, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3544, file: !78, line: 584, baseType: !503, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3544, file: !78, line: 585, baseType: !503, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3544, file: !78, line: 586, baseType: !5, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3544, file: !78, line: 587, baseType: !5, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3544, file: !78, line: 592, baseType: !1307, size: 512, offset: 576)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3544, file: !78, line: 593, baseType: !435, size: 64, offset: 1088)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3544, file: !78, line: 594, baseType: !1968, size: 256, offset: 1152)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3544, file: !78, line: 595, baseType: !1495, size: 128, offset: 1408)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3544, file: !78, line: 596, baseType: !3571, size: 64, offset: 1536)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3544, file: !78, line: 597, baseType: !763, size: 32, offset: 1600)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3544, file: !78, line: 598, baseType: !763, size: 32, offset: 1632)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3544, file: !78, line: 599, baseType: !5, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3544, file: !78, line: 600, baseType: !5, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3544, file: !78, line: 601, baseType: !5, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3544, file: !78, line: 602, baseType: !5, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3544, file: !78, line: 603, baseType: !5, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3544, file: !78, line: 604, baseType: !503, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3544, file: !78, line: 605, baseType: !5, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3544, file: !78, line: 606, baseType: !5, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3544, file: !78, line: 607, baseType: !5, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3544, file: !78, line: 608, baseType: !5, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3544, file: !78, line: 609, baseType: !5, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3544, file: !78, line: 610, baseType: !5, size: 32, offset: 1696)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3544, file: !78, line: 611, baseType: !77, size: 32, offset: 1728)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3544, file: !78, line: 612, baseType: !85, size: 32, offset: 1760)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3544, file: !78, line: 613, baseType: !280, size: 32, offset: 1792)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3544, file: !78, line: 614, baseType: !280, size: 32, offset: 1824)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3544, file: !78, line: 615, baseType: !435, size: 64, offset: 1856)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3544, file: !78, line: 616, baseType: !435, size: 64, offset: 1920)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3544, file: !78, line: 617, baseType: !435, size: 64, offset: 1984)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3544, file: !78, line: 618, baseType: !435, size: 64, offset: 2048)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3544, file: !78, line: 620, baseType: !3632, size: 64, offset: 2112)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !78, line: 536, size: 256, elements: !3634)
!3634 = !{!3635, !3636, !3637, !3638}
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3633, file: !78, line: 537, baseType: !254)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3633, file: !78, line: 538, baseType: !5, size: 32)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3633, file: !78, line: 540, baseType: !212, size: 128, offset: 64)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3633, file: !78, line: 543, baseType: !3639, size: 64, offset: 192)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !78, line: 534, flags: DIFlagFwdDecl)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3544, file: !78, line: 621, baseType: !3642, size: 64, offset: 2176)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{null, !3383, !1458}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3544, file: !78, line: 622, baseType: !3646, size: 64, offset: 2240)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !78, line: 622, flags: DIFlagFwdDecl)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !236, file: !71, line: 486, baseType: !3649, size: 64, offset: 4096)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !78, line: 642, size: 1792, elements: !3651)
!3651 = !{!3652, !3653, !3654, !3658, !3659, !3660}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3650, file: !78, line: 643, baseType: !3411, size: 1472)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3650, file: !78, line: 644, baseType: !3414, size: 64, offset: 1472)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3650, file: !78, line: 645, baseType: !3655, size: 64, offset: 1536)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DISubroutineType(types: !3657)
!3657 = !{null, !3383, !503}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3650, file: !78, line: 646, baseType: !3414, size: 64, offset: 1600)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3650, file: !78, line: 647, baseType: !3405, size: 64, offset: 1664)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3650, file: !78, line: 648, baseType: !3405, size: 64, offset: 1728)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !236, file: !71, line: 493, baseType: !3662, size: 64, offset: 4160)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !71, line: 493, flags: DIFlagFwdDecl)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !236, file: !71, line: 499, baseType: !212, size: 128, offset: 4224)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !236, file: !71, line: 502, baseType: !3666, size: 64, offset: 4352)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3668)
!3668 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !71, line: 502, flags: DIFlagFwdDecl)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !236, file: !71, line: 504, baseType: !3670, size: 64, offset: 4416)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !236, file: !71, line: 505, baseType: !435, size: 64, offset: 4480)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !236, file: !71, line: 510, baseType: !435, size: 64, offset: 4544)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !236, file: !71, line: 511, baseType: !3674, size: 64, offset: 4608)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3676)
!3676 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !71, line: 511, flags: DIFlagFwdDecl)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !236, file: !71, line: 513, baseType: !3678, size: 64, offset: 4672)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !71, line: 288, size: 128, elements: !3680)
!3680 = !{!3681, !3682}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3679, file: !71, line: 293, baseType: !5, size: 32)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3679, file: !71, line: 294, baseType: !223, size: 64, offset: 64)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !236, file: !71, line: 515, baseType: !212, size: 128, offset: 4736)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !236, file: !71, line: 526, baseType: !3685, offset: 4864)
!3685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3686, line: 5, elements: !268)
!3686 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !236, file: !71, line: 528, baseType: !3688, size: 64, offset: 4864)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3690, line: 14, flags: DIFlagFwdDecl)
!3690 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !236, file: !71, line: 529, baseType: !3692, size: 64, offset: 4928)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3694, line: 17, size: 192, elements: !3695)
!3694 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3695 = !{!3696, !3697, !3780}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3693, file: !3694, line: 18, baseType: !3692, size: 64)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3693, file: !3694, line: 19, baseType: !3698, size: 64, offset: 64)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3700)
!3700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3694, line: 110, size: 1152, elements: !3701)
!3701 = !{!3702, !3706, !3710, !3716, !3722, !3726, !3730, !3735, !3739, !3740, !3744, !3748, !3752, !3763, !3764, !3765, !3766, !3776}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3700, file: !3694, line: 111, baseType: !3703, size: 64)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!3692, !3692}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3700, file: !3694, line: 112, baseType: !3707, size: 64, offset: 64)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{null, !3692}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3700, file: !3694, line: 113, baseType: !3711, size: 64, offset: 128)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{!503, !3714}
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3693)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3700, file: !3694, line: 114, baseType: !3717, size: 64, offset: 192)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{!2138, !3714, !3720}
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !236)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3700, file: !3694, line: 116, baseType: !3723, size: 64, offset: 256)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!503, !3714, !243}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3700, file: !3694, line: 118, baseType: !3727, size: 64, offset: 320)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!280, !3714, !243, !5, !207, !219}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3700, file: !3694, line: 123, baseType: !3731, size: 64, offset: 384)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!280, !3714, !243, !3734, !219}
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3700, file: !3694, line: 126, baseType: !3736, size: 64, offset: 448)
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = !DISubroutineType(types: !3738)
!3738 = !{!243, !3714}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3700, file: !3694, line: 127, baseType: !3736, size: 64, offset: 512)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3700, file: !3694, line: 128, baseType: !3741, size: 64, offset: 576)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!3692, !3714}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3700, file: !3694, line: 130, baseType: !3745, size: 64, offset: 640)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{!3692, !3714, !3692}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3700, file: !3694, line: 133, baseType: !3749, size: 64, offset: 704)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{!3692, !3714, !243}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3700, file: !3694, line: 135, baseType: !3753, size: 64, offset: 768)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{!280, !3714, !243, !243, !5, !5, !3756}
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3694, line: 43, size: 640, elements: !3758)
!3758 = !{!3759, !3760, !3761}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3757, file: !3694, line: 44, baseType: !3692, size: 64)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3757, file: !3694, line: 45, baseType: !5, size: 32, offset: 64)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3757, file: !3694, line: 46, baseType: !3762, size: 512, offset: 128)
!3762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 512, elements: !1345)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3700, file: !3694, line: 140, baseType: !3745, size: 64, offset: 832)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3700, file: !3694, line: 143, baseType: !3741, size: 64, offset: 896)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3700, file: !3694, line: 145, baseType: !3703, size: 64, offset: 960)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3700, file: !3694, line: 146, baseType: !3767, size: 64, offset: 1024)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = !DISubroutineType(types: !3769)
!3769 = !{!280, !3714, !3770}
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3694, line: 29, size: 128, elements: !3772)
!3772 = !{!3773, !3774, !3775}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3771, file: !3694, line: 30, baseType: !5, size: 32)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3771, file: !3694, line: 31, baseType: !5, size: 32, offset: 32)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3771, file: !3694, line: 32, baseType: !3714, size: 64, offset: 64)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3700, file: !3694, line: 148, baseType: !3777, size: 64, offset: 1088)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!280, !3714, !3383}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3693, file: !3694, line: 20, baseType: !3383, size: 64, offset: 128)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !236, file: !71, line: 534, baseType: !526, size: 32, offset: 4992)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !236, file: !71, line: 535, baseType: !430, size: 32, offset: 5024)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !236, file: !71, line: 537, baseType: !254, offset: 5056)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !236, file: !71, line: 538, baseType: !212, size: 128, offset: 5056)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !236, file: !71, line: 540, baseType: !3786, size: 64, offset: 5184)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3788, line: 54, size: 960, elements: !3789)
!3788 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3789 = !{!3790, !3791, !3792, !3793, !3794, !3795, !3796, !3800, !3804, !3805, !3806, !3807, !3811, !3815, !3816}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3787, file: !3788, line: 55, baseType: !243, size: 64)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3787, file: !3788, line: 56, baseType: !646, size: 64, offset: 64)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3787, file: !3788, line: 58, baseType: !343, size: 64, offset: 128)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3787, file: !3788, line: 59, baseType: !343, size: 64, offset: 192)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3787, file: !3788, line: 60, baseType: !247, size: 64, offset: 256)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3787, file: !3788, line: 62, baseType: !3396, size: 64, offset: 320)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3787, file: !3788, line: 63, baseType: !3797, size: 64, offset: 384)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{!205, !3383, !3403}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3787, file: !3788, line: 65, baseType: !3801, size: 64, offset: 448)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{null, !3786}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3787, file: !3788, line: 66, baseType: !3405, size: 64, offset: 512)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3787, file: !3788, line: 68, baseType: !3414, size: 64, offset: 576)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3787, file: !3788, line: 70, baseType: !3199, size: 64, offset: 640)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3787, file: !3788, line: 71, baseType: !3808, size: 64, offset: 704)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{!2138, !3383}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3787, file: !3788, line: 73, baseType: !3812, size: 64, offset: 768)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{null, !3383, !3231, !3232}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3787, file: !3788, line: 75, baseType: !3409, size: 64, offset: 832)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3787, file: !3788, line: 77, baseType: !3526, size: 64, offset: 896)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !236, file: !71, line: 541, baseType: !343, size: 64, offset: 5248)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !236, file: !71, line: 543, baseType: !3405, size: 64, offset: 5312)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !236, file: !71, line: 544, baseType: !3820, size: 64, offset: 5376)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !71, line: 45, flags: DIFlagFwdDecl)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !236, file: !71, line: 545, baseType: !3823, size: 64, offset: 5440)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !71, line: 47, flags: DIFlagFwdDecl)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !236, file: !71, line: 547, baseType: !503, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !236, file: !71, line: 548, baseType: !503, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !236, file: !71, line: 549, baseType: !503, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !236, file: !71, line: 550, baseType: !503, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "intf", scope: !232, file: !233, line: 22, baseType: !3830, size: 64, offset: 5568)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_interface", file: !109, line: 31, size: 7168, elements: !3832)
!3832 = !{!3833, !3834, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3831, file: !109, line: 32, baseType: !236, size: 5568)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !3831, file: !109, line: 33, baseType: !3835, size: 64, offset: 5568)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_control", file: !3837, line: 15, size: 5888, elements: !3838)
!3837 = !DIFile(filename: "./include/linux/greybus/control.h", directory: "/home/lizy2001/genbc/linux")
!3838 = !{!3839, !3840, !3841, !3998, !3999, !4000, !4001, !4002, !4003}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3836, file: !3837, line: 16, baseType: !236, size: 5568)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "intf", scope: !3836, file: !3837, line: 17, baseType: !3830, size: 64, offset: 5568)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !3836, file: !3837, line: 19, baseType: !3842, size: 64, offset: 5632)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_connection", file: !102, line: 38, size: 1408, elements: !3844)
!3844 = !{!3845, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "hd", scope: !3843, file: !102, line: 39, baseType: !3846, size: 64)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_host_device", file: !3848, line: 44, size: 6272, elements: !3849)
!3848 = !DIFile(filename: "./include/linux/greybus/hd.h", directory: "/home/lizy2001/genbc/linux")
!3849 = !{!3850, !3851, !3852, !3941, !3942, !3943, !3947, !3948, !3949, !3974}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3847, file: !3848, line: 45, baseType: !236, size: 5568)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !3847, file: !3848, line: 46, baseType: !280, size: 32, offset: 5568)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3847, file: !3848, line: 47, baseType: !3853, size: 64, offset: 5632)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3855)
!3855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_hd_driver", file: !3848, line: 18, size: 960, elements: !3856)
!3856 = !{!3857, !3858, !3862, !3866, !3870, !3874, !3875, !3876, !3880, !3884, !3885, !3931, !3935, !3936, !3937}
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "hd_priv_size", scope: !3855, file: !3848, line: 19, baseType: !219, size: 64)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "cport_allocate", scope: !3855, file: !3848, line: 21, baseType: !3859, size: 64, offset: 64)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DISubroutineType(types: !3861)
!3861 = !{!280, !3846, !280, !223}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "cport_release", scope: !3855, file: !3848, line: 23, baseType: !3863, size: 64, offset: 128)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{null, !3846, !875}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "cport_enable", scope: !3855, file: !3848, line: 24, baseType: !3867, size: 64, offset: 192)
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3868 = !DISubroutineType(types: !3869)
!3869 = !{!280, !3846, !875, !223}
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "cport_disable", scope: !3855, file: !3848, line: 26, baseType: !3871, size: 64, offset: 256)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DISubroutineType(types: !3873)
!3873 = !{!280, !3846, !875}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "cport_connected", scope: !3855, file: !3848, line: 27, baseType: !3871, size: 64, offset: 320)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "cport_flush", scope: !3855, file: !3848, line: 28, baseType: !3871, size: 64, offset: 384)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "cport_shutdown", scope: !3855, file: !3848, line: 29, baseType: !3877, size: 64, offset: 448)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = !DISubroutineType(types: !3879)
!3879 = !{!280, !3846, !875, !1367, !5}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "cport_quiesce", scope: !3855, file: !3848, line: 31, baseType: !3881, size: 64, offset: 512)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = !DISubroutineType(types: !3883)
!3883 = !{!280, !3846, !875, !219, !5}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "cport_clear", scope: !3855, file: !3848, line: 33, baseType: !3871, size: 64, offset: 576)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "message_send", scope: !3855, file: !3848, line: 35, baseType: !3886, size: 64, offset: 640)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!280, !3846, !875, !3889, !229}
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_message", file: !3891, line: 52, size: 384, elements: !3892)
!3891 = !DIFile(filename: "./include/linux/greybus/operation.h", directory: "/home/lizy2001/genbc/linux")
!3892 = !{!3893, !3917, !3927, !3928, !3929, !3930}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "operation", scope: !3890, file: !3891, line: 53, baseType: !3894, size: 64)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_operation", file: !3891, line: 92, size: 1472, elements: !3896)
!3896 = !{!3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3910, !3911, !3912, !3913, !3914, !3915, !3916}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !3895, file: !3891, line: 93, baseType: !3842, size: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3895, file: !3891, line: 94, baseType: !3889, size: 64, offset: 64)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !3895, file: !3891, line: 95, baseType: !3889, size: 64, offset: 128)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3895, file: !3891, line: 97, baseType: !223, size: 64, offset: 192)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3895, file: !3891, line: 98, baseType: !1367, size: 8, offset: 256)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3895, file: !3891, line: 99, baseType: !875, size: 16, offset: 272)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "errno", scope: !3895, file: !3891, line: 100, baseType: !280, size: 32, offset: 288)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3895, file: !3891, line: 102, baseType: !1968, size: 256, offset: 320)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !3895, file: !3891, line: 103, baseType: !3906, size: 64, offset: 576)
!3906 = !DIDerivedType(tag: DW_TAG_typedef, name: "gb_operation_callback", file: !3891, line: 91, baseType: !3907)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = !DISubroutineType(types: !3909)
!3909 = !{null, !3894}
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3895, file: !3891, line: 104, baseType: !1516, size: 192, offset: 640)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3895, file: !3891, line: 105, baseType: !3574, size: 320, offset: 832)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3895, file: !3891, line: 107, baseType: !3373, size: 32, offset: 1152)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3895, file: !3891, line: 108, baseType: !763, size: 32, offset: 1184)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3895, file: !3891, line: 110, baseType: !280, size: 32, offset: 1216)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3895, file: !3891, line: 111, baseType: !212, size: 128, offset: 1280)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3895, file: !3891, line: 113, baseType: !207, size: 64, offset: 1408)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3890, file: !3891, line: 54, baseType: !3918, size: 64, offset: 64)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_operation_msg_hdr", file: !3920, line: 46, size: 64, elements: !3921)
!3920 = !DIFile(filename: "./include/linux/greybus/greybus_protocols.h", directory: "/home/lizy2001/genbc/linux")
!3921 = !{!3922, !3923, !3924, !3925, !3926}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3919, file: !3920, line: 47, baseType: !158, size: 16)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "operation_id", scope: !3919, file: !3920, line: 48, baseType: !158, size: 16, offset: 16)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3919, file: !3920, line: 49, baseType: !168, size: 8, offset: 32)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !3919, file: !3920, line: 50, baseType: !168, size: 8, offset: 40)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !3919, file: !3920, line: 51, baseType: !196, size: 16, offset: 48)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !3890, file: !3891, line: 56, baseType: !207, size: 64, offset: 128)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "payload_size", scope: !3890, file: !3891, line: 57, baseType: !219, size: 64, offset: 192)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3890, file: !3891, line: 59, baseType: !207, size: 64, offset: 256)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !3890, file: !3891, line: 61, baseType: !207, size: 64, offset: 320)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "message_cancel", scope: !3855, file: !3848, line: 37, baseType: !3932, size: 64, offset: 704)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{null, !3889}
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tag_enable", scope: !3855, file: !3848, line: 38, baseType: !3871, size: 64, offset: 768)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tag_disable", scope: !3855, file: !3848, line: 39, baseType: !3871, size: 64, offset: 832)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !3855, file: !3848, line: 40, baseType: !3938, size: 64, offset: 896)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = !DISubroutineType(types: !3940)
!3940 = !{!280, !3846, !207, !875, !1367, !503}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !3847, file: !3848, line: 49, baseType: !212, size: 128, offset: 5696)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "connections", scope: !3847, file: !3848, line: 50, baseType: !212, size: 128, offset: 5824)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "cport_id_map", scope: !3847, file: !3848, line: 51, baseType: !3944, size: 128, offset: 5952)
!3944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !3260, line: 244, size: 128, elements: !3945)
!3945 = !{!3946}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3944, file: !3260, line: 245, baseType: !755, size: 128)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "num_cports", scope: !3847, file: !3848, line: 54, baseType: !219, size: 64, offset: 6080)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_size_max", scope: !3847, file: !3848, line: 57, baseType: !219, size: 64, offset: 6144)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "svc", scope: !3847, file: !3848, line: 59, baseType: !3950, size: 64, offset: 6208)
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_svc", file: !92, line: 39, size: 6272, elements: !3952)
!3952 = !{!3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3966, !3967, !3968}
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3951, file: !92, line: 40, baseType: !236, size: 5568)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "hd", scope: !3951, file: !92, line: 42, baseType: !3846, size: 64, offset: 5568)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !3951, file: !92, line: 43, baseType: !3842, size: 64, offset: 5632)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3951, file: !92, line: 44, baseType: !91, size: 32, offset: 5696)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "device_id_map", scope: !3951, file: !92, line: 45, baseType: !3944, size: 128, offset: 5760)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3951, file: !92, line: 46, baseType: !2804, size: 64, offset: 5888)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "endo_id", scope: !3951, file: !92, line: 48, baseType: !875, size: 16, offset: 5952)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "ap_intf_id", scope: !3951, file: !92, line: 49, baseType: !1367, size: 8, offset: 5968)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_major", scope: !3951, file: !92, line: 51, baseType: !1367, size: 8, offset: 5976)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_minor", scope: !3951, file: !92, line: 52, baseType: !1367, size: 8, offset: 5984)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog", scope: !3951, file: !92, line: 54, baseType: !3964, size: 64, offset: 6016)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3965 = !DICompositeType(tag: DW_TAG_structure_type, name: "gb_svc_watchdog", file: !92, line: 32, flags: DIFlagFwdDecl)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3951, file: !92, line: 55, baseType: !97, size: 32, offset: 6080)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dentry", scope: !3951, file: !92, line: 57, baseType: !397, size: 64, offset: 6144)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "pwrmon_rails", scope: !3951, file: !92, line: 58, baseType: !3969, size: 64, offset: 6208)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "svc_debugfs_pwrmon_rail", file: !92, line: 34, size: 128, elements: !3971)
!3971 = !{!3972, !3973}
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3970, file: !92, line: 35, baseType: !1367, size: 8)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "svc", scope: !3970, file: !92, line: 36, baseType: !3950, size: 64, offset: 64)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "hd_priv", scope: !3847, file: !3848, line: 61, baseType: !3975, align: 64, offset: 6272)
!3975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, elements: !181)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "intf", scope: !3843, file: !102, line: 40, baseType: !3830, size: 64, offset: 64)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "bundle", scope: !3843, file: !102, line: 41, baseType: !231, size: 64, offset: 128)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3843, file: !102, line: 42, baseType: !3373, size: 32, offset: 192)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "hd_cport_id", scope: !3843, file: !102, line: 43, baseType: !875, size: 16, offset: 224)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "intf_cport_id", scope: !3843, file: !102, line: 44, baseType: !875, size: 16, offset: 240)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "hd_links", scope: !3843, file: !102, line: 46, baseType: !212, size: 128, offset: 256)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "bundle_links", scope: !3843, file: !102, line: 47, baseType: !212, size: 128, offset: 384)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !3843, file: !102, line: 49, baseType: !3984, size: 64, offset: 512)
!3984 = !DIDerivedType(tag: DW_TAG_typedef, name: "gb_request_handler_t", file: !102, line: 36, baseType: !3985)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{!280, !3894}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3843, file: !102, line: 50, baseType: !223, size: 64, offset: 576)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3843, file: !102, line: 52, baseType: !1188, size: 192, offset: 640)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3843, file: !102, line: 53, baseType: !254, offset: 832)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3843, file: !102, line: 54, baseType: !101, size: 32, offset: 832)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "operations", scope: !3843, file: !102, line: 55, baseType: !212, size: 128, offset: 896)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3843, file: !102, line: 57, baseType: !1744, size: 128, offset: 1024)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3843, file: !102, line: 58, baseType: !2804, size: 64, offset: 1152)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "op_cycle", scope: !3843, file: !102, line: 60, baseType: !763, size: 32, offset: 1216)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3843, file: !102, line: 62, baseType: !207, size: 64, offset: 1280)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "mode_switch", scope: !3843, file: !102, line: 64, baseType: !503, size: 8, offset: 1344)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_major", scope: !3836, file: !3837, line: 21, baseType: !1367, size: 8, offset: 5696)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_minor", scope: !3836, file: !3837, line: 22, baseType: !1367, size: 8, offset: 5704)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "has_bundle_activate", scope: !3836, file: !3837, line: 24, baseType: !503, size: 8, offset: 5712)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "has_bundle_version", scope: !3836, file: !3837, line: 25, baseType: !503, size: 8, offset: 5720)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_string", scope: !3836, file: !3837, line: 27, baseType: !205, size: 64, offset: 5760)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "product_string", scope: !3836, file: !3837, line: 28, baseType: !205, size: 64, offset: 5824)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "bundles", scope: !3831, file: !109, line: 35, baseType: !212, size: 128, offset: 5632)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "module_node", scope: !3831, file: !109, line: 36, baseType: !212, size: 128, offset: 5760)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "manifest_descs", scope: !3831, file: !109, line: 37, baseType: !212, size: 128, offset: 5888)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "interface_id", scope: !3831, file: !109, line: 38, baseType: !1367, size: 8, offset: 6016)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "device_id", scope: !3831, file: !109, line: 39, baseType: !1367, size: 8, offset: 6024)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !3831, file: !109, line: 40, baseType: !1367, size: 8, offset: 6032)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3831, file: !109, line: 42, baseType: !108, size: 32, offset: 6048)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "ddbl1_manufacturer_id", scope: !3831, file: !109, line: 44, baseType: !430, size: 32, offset: 6080)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "ddbl1_product_id", scope: !3831, file: !109, line: 45, baseType: !430, size: 32, offset: 6112)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_id", scope: !3831, file: !109, line: 46, baseType: !430, size: 32, offset: 6144)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "product_id", scope: !3831, file: !109, line: 47, baseType: !430, size: 32, offset: 6176)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "serial_number", scope: !3831, file: !109, line: 48, baseType: !435, size: 64, offset: 6208)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "hd", scope: !3831, file: !109, line: 50, baseType: !3846, size: 64, offset: 6272)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !3831, file: !109, line: 51, baseType: !4018, size: 64, offset: 6336)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_module", file: !4020, line: 15, size: 5952, elements: !4021)
!4020 = !DIFile(filename: "./include/linux/greybus/module.h", directory: "/home/lizy2001/genbc/linux")
!4021 = !{!4022, !4023, !4024, !4025, !4026, !4027, !4028}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4019, file: !4020, line: 16, baseType: !236, size: 5568)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "hd", scope: !4019, file: !4020, line: 17, baseType: !3846, size: 64, offset: 5568)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "hd_node", scope: !4019, file: !4020, line: 19, baseType: !212, size: 128, offset: 5632)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "module_id", scope: !4019, file: !4020, line: 21, baseType: !1367, size: 8, offset: 5760)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "num_interfaces", scope: !4019, file: !4020, line: 22, baseType: !219, size: 64, offset: 5824)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !4019, file: !4020, line: 24, baseType: !503, size: 8, offset: 5888)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "interfaces", scope: !4019, file: !4020, line: 26, baseType: !4029, offset: 5952)
!4029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3830, elements: !181)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !3831, file: !109, line: 53, baseType: !223, size: 64, offset: 6400)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3831, file: !109, line: 55, baseType: !1188, size: 192, offset: 6464)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !3831, file: !109, line: 57, baseType: !503, size: 8, offset: 6656)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "ejected", scope: !3831, file: !109, line: 59, baseType: !503, size: 8, offset: 6664)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !3831, file: !109, line: 60, baseType: !503, size: 8, offset: 6672)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3831, file: !109, line: 61, baseType: !503, size: 8, offset: 6680)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3831, file: !109, line: 62, baseType: !503, size: 8, offset: 6688)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "mode_switch", scope: !3831, file: !109, line: 63, baseType: !503, size: 8, offset: 6696)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "dme_read", scope: !3831, file: !109, line: 64, baseType: !503, size: 8, offset: 6704)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "mode_switch_work", scope: !3831, file: !109, line: 66, baseType: !1968, size: 256, offset: 6720)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "mode_switch_completion", scope: !3831, file: !109, line: 67, baseType: !1516, size: 192, offset: 6976)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !232, file: !233, line: 24, baseType: !1367, size: 8, offset: 5632)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !232, file: !233, line: 25, baseType: !1367, size: 8, offset: 5640)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "class_major", scope: !232, file: !233, line: 26, baseType: !1367, size: 8, offset: 5648)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "class_minor", scope: !232, file: !233, line: 27, baseType: !1367, size: 8, offset: 5656)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "num_cports", scope: !232, file: !233, line: 29, baseType: !219, size: 64, offset: 5696)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "cport_desc", scope: !232, file: !233, line: 30, baseType: !4047, size: 64, offset: 5760)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "connections", scope: !232, file: !233, line: 32, baseType: !212, size: 128, offset: 5824)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !232, file: !233, line: 33, baseType: !4050, size: 64, offset: 5952)
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !232, file: !233, line: 35, baseType: !212, size: 128, offset: 6016)
!4052 = !{i32 7, !"Dwarf Version", i32 4}
!4053 = !{i32 2, !"Debug Info Version", i32 3}
!4054 = !{i32 1, !"wchar_size", i32 2}
!4055 = !{i32 1, !"Code Model", i32 2}
!4056 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4057 = distinct !DISubprogram(name: "gb_manifest_parse", scope: !1, file: !1, line: 452, type: !4058, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !268)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{!503, !3830, !207, !219}
!4060 = !DILocalVariable(name: "intf", arg: 1, scope: !4057, file: !1, line: 452, type: !3830)
!4061 = !DILocation(line: 452, column: 45, scope: !4057)
!4062 = !DILocalVariable(name: "data", arg: 2, scope: !4057, file: !1, line: 452, type: !207)
!4063 = !DILocation(line: 452, column: 57, scope: !4057)
!4064 = !DILocalVariable(name: "size", arg: 3, scope: !4057, file: !1, line: 452, type: !219)
!4065 = !DILocation(line: 452, column: 70, scope: !4057)
!4066 = !DILocalVariable(name: "manifest", scope: !4057, file: !1, line: 454, type: !4067)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "greybus_manifest", file: !117, line: 176, size: 32, elements: !4069)
!4069 = !{!4070, !4076}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4068, file: !117, line: 177, baseType: !4071, size: 32)
!4071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "greybus_manifest_header", file: !117, line: 170, size: 32, elements: !4072)
!4072 = !{!4073, !4074, !4075}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4071, file: !117, line: 171, baseType: !158, size: 16)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "version_major", scope: !4071, file: !117, line: 172, baseType: !168, size: 8, offset: 16)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "version_minor", scope: !4071, file: !117, line: 173, baseType: !168, size: 8, offset: 24)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "descriptors", scope: !4068, file: !117, line: 178, baseType: !4077, offset: 32)
!4077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, elements: !181)
!4078 = !DILocation(line: 454, column: 27, scope: !4057)
!4079 = !DILocalVariable(name: "header", scope: !4057, file: !1, line: 455, type: !4080)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4071, size: 64)
!4081 = !DILocation(line: 455, column: 34, scope: !4057)
!4082 = !DILocalVariable(name: "desc", scope: !4057, file: !1, line: 456, type: !160)
!4083 = !DILocation(line: 456, column: 29, scope: !4057)
!4084 = !DILocalVariable(name: "descriptor", scope: !4057, file: !1, line: 457, type: !208)
!4085 = !DILocation(line: 457, column: 24, scope: !4057)
!4086 = !DILocalVariable(name: "interface_desc", scope: !4057, file: !1, line: 458, type: !208)
!4087 = !DILocation(line: 458, column: 24, scope: !4057)
!4088 = !DILocalVariable(name: "manifest_size", scope: !4057, file: !1, line: 459, type: !875)
!4089 = !DILocation(line: 459, column: 6, scope: !4057)
!4090 = !DILocalVariable(name: "found", scope: !4057, file: !1, line: 460, type: !430)
!4091 = !DILocation(line: 460, column: 6, scope: !4057)
!4092 = !DILocalVariable(name: "result", scope: !4057, file: !1, line: 461, type: !503)
!4093 = !DILocation(line: 461, column: 7, scope: !4057)
!4094 = !DILocalVariable(name: "__ret_warn_on", scope: !4095, file: !1, line: 464, type: !280)
!4095 = distinct !DILexicalBlock(scope: !4096, file: !1, line: 464, column: 6)
!4096 = distinct !DILexicalBlock(scope: !4057, file: !1, line: 464, column: 6)
!4097 = !DILocation(line: 464, column: 6, scope: !4095)
!4098 = !DILocation(line: 464, column: 6, scope: !4099)
!4099 = distinct !DILexicalBlock(scope: !4095, file: !1, line: 464, column: 6)
!4100 = !DILocation(line: 464, column: 6, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !4099, file: !1, line: 464, column: 6)
!4102 = !DILocation(line: 464, column: 6, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !4101, file: !1, line: 464, column: 6)
!4104 = !DILocation(line: 464, column: 6, scope: !4105)
!4105 = distinct !DILexicalBlock(scope: !4101, file: !1, line: 464, column: 6)
!4106 = !{i32 -2141942292, i32 -2141942263, i32 -2141942217, i32 -2141942159, i32 -2141942105, i32 -2141942051, i32 -2141941996, i32 -2141941965}
!4107 = !DILocation(line: 464, column: 6, scope: !4108)
!4108 = distinct !DILexicalBlock(scope: !4101, file: !1, line: 464, column: 6)
!4109 = !{i32 -2141941557, i32 -2141941550, i32 -2141941498, i32 -2141941467, i32 -2141941437}
!4110 = !DILocation(line: 464, column: 6, scope: !4111)
!4111 = distinct !DILexicalBlock(scope: !4101, file: !1, line: 464, column: 6)
!4112 = !DILocation(line: 464, column: 6, scope: !4096)
!4113 = !DILocation(line: 464, column: 6, scope: !4057)
!4114 = !DILocation(line: 465, column: 3, scope: !4096)
!4115 = !DILocation(line: 468, column: 6, scope: !4116)
!4116 = distinct !DILexicalBlock(scope: !4057, file: !1, line: 468, column: 6)
!4117 = !DILocation(line: 468, column: 11, scope: !4116)
!4118 = !DILocation(line: 468, column: 6, scope: !4057)
!4119 = !DILocation(line: 469, column: 3, scope: !4120)
!4120 = distinct !DILexicalBlock(scope: !4116, file: !1, line: 468, column: 30)
!4121 = !DILocation(line: 471, column: 3, scope: !4120)
!4122 = !DILocation(line: 475, column: 13, scope: !4057)
!4123 = !DILocation(line: 475, column: 11, scope: !4057)
!4124 = !DILocation(line: 476, column: 12, scope: !4057)
!4125 = !DILocation(line: 476, column: 22, scope: !4057)
!4126 = !DILocation(line: 476, column: 9, scope: !4057)
!4127 = !DILocation(line: 477, column: 18, scope: !4057)
!4128 = !DILocation(line: 477, column: 16, scope: !4057)
!4129 = !DILocation(line: 478, column: 6, scope: !4130)
!4130 = distinct !DILexicalBlock(scope: !4057, file: !1, line: 478, column: 6)
!4131 = !DILocation(line: 478, column: 23, scope: !4130)
!4132 = !DILocation(line: 478, column: 20, scope: !4130)
!4133 = !DILocation(line: 478, column: 6, scope: !4057)
!4134 = !DILocation(line: 479, column: 3, scope: !4135)
!4135 = distinct !DILexicalBlock(scope: !4130, file: !1, line: 478, column: 29)
!4136 = !DILocation(line: 481, column: 3, scope: !4135)
!4137 = !DILocation(line: 485, column: 6, scope: !4138)
!4138 = distinct !DILexicalBlock(scope: !4057, file: !1, line: 485, column: 6)
!4139 = !DILocation(line: 485, column: 14, scope: !4138)
!4140 = !DILocation(line: 485, column: 28, scope: !4138)
!4141 = !DILocation(line: 485, column: 6, scope: !4057)
!4142 = !DILocation(line: 486, column: 3, scope: !4143)
!4143 = distinct !DILexicalBlock(scope: !4138, file: !1, line: 485, column: 53)
!4144 = !DILocation(line: 489, column: 3, scope: !4143)
!4145 = !DILocation(line: 493, column: 9, scope: !4057)
!4146 = !DILocation(line: 493, column: 19, scope: !4057)
!4147 = !DILocation(line: 493, column: 7, scope: !4057)
!4148 = !DILocation(line: 494, column: 7, scope: !4057)
!4149 = !DILocation(line: 495, column: 2, scope: !4057)
!4150 = !DILocation(line: 495, column: 9, scope: !4057)
!4151 = !DILocalVariable(name: "desc_size", scope: !4152, file: !1, line: 496, type: !280)
!4152 = distinct !DILexicalBlock(scope: !4057, file: !1, line: 495, column: 15)
!4153 = !DILocation(line: 496, column: 7, scope: !4152)
!4154 = !DILocation(line: 498, column: 35, scope: !4152)
!4155 = !DILocation(line: 498, column: 41, scope: !4152)
!4156 = !DILocation(line: 498, column: 47, scope: !4152)
!4157 = !DILocation(line: 498, column: 15, scope: !4152)
!4158 = !DILocation(line: 498, column: 13, scope: !4152)
!4159 = !DILocation(line: 499, column: 7, scope: !4160)
!4160 = distinct !DILexicalBlock(scope: !4152, file: !1, line: 499, column: 7)
!4161 = !DILocation(line: 499, column: 17, scope: !4160)
!4162 = !DILocation(line: 499, column: 7, scope: !4152)
!4163 = !DILocation(line: 500, column: 11, scope: !4164)
!4164 = distinct !DILexicalBlock(scope: !4160, file: !1, line: 499, column: 22)
!4165 = !DILocation(line: 501, column: 4, scope: !4164)
!4166 = !DILocation(line: 503, column: 48, scope: !4152)
!4167 = !DILocation(line: 503, column: 40, scope: !4152)
!4168 = !DILocation(line: 503, column: 55, scope: !4152)
!4169 = !DILocation(line: 503, column: 53, scope: !4152)
!4170 = !DILocation(line: 503, column: 10, scope: !4152)
!4171 = !DILocation(line: 503, column: 8, scope: !4152)
!4172 = !DILocation(line: 504, column: 11, scope: !4152)
!4173 = !DILocation(line: 504, column: 8, scope: !4152)
!4174 = distinct !{!4174, !4149, !4175}
!4175 = !DILocation(line: 505, column: 2, scope: !4057)
!4176 = !DILocalVariable(name: "__mptr", scope: !4177, file: !1, line: 508, type: !207)
!4177 = distinct !DILexicalBlock(scope: !4178, file: !1, line: 508, column: 2)
!4178 = distinct !DILexicalBlock(scope: !4057, file: !1, line: 508, column: 2)
!4179 = !DILocation(line: 508, column: 2, scope: !4177)
!4180 = !DILocation(line: 508, column: 2, scope: !4181)
!4181 = distinct !DILexicalBlock(scope: !4177, file: !1, line: 508, column: 2)
!4182 = !DILocation(line: 508, column: 2, scope: !4178)
!4183 = !DILocation(line: 508, column: 2, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !4178, file: !1, line: 508, column: 2)
!4185 = !DILocation(line: 509, column: 7, scope: !4186)
!4186 = distinct !DILexicalBlock(scope: !4187, file: !1, line: 509, column: 7)
!4187 = distinct !DILexicalBlock(scope: !4184, file: !1, line: 508, column: 64)
!4188 = !DILocation(line: 509, column: 19, scope: !4186)
!4189 = !DILocation(line: 509, column: 24, scope: !4186)
!4190 = !DILocation(line: 509, column: 7, scope: !4187)
!4191 = !DILocation(line: 510, column: 14, scope: !4192)
!4192 = distinct !DILexicalBlock(scope: !4186, file: !1, line: 510, column: 8)
!4193 = !DILocation(line: 510, column: 8, scope: !4186)
!4194 = !DILocation(line: 511, column: 22, scope: !4192)
!4195 = !DILocation(line: 511, column: 20, scope: !4192)
!4196 = !DILocation(line: 511, column: 5, scope: !4192)
!4197 = !DILocation(line: 512, column: 2, scope: !4187)
!4198 = !DILocalVariable(name: "__mptr", scope: !4199, file: !1, line: 508, type: !207)
!4199 = distinct !DILexicalBlock(scope: !4184, file: !1, line: 508, column: 2)
!4200 = !DILocation(line: 508, column: 2, scope: !4199)
!4201 = !DILocation(line: 508, column: 2, scope: !4202)
!4202 = distinct !DILexicalBlock(scope: !4199, file: !1, line: 508, column: 2)
!4203 = distinct !{!4203, !4182, !4204}
!4204 = !DILocation(line: 512, column: 2, scope: !4178)
!4205 = !DILocation(line: 513, column: 6, scope: !4206)
!4206 = distinct !DILexicalBlock(scope: !4057, file: !1, line: 513, column: 6)
!4207 = !DILocation(line: 513, column: 12, scope: !4206)
!4208 = !DILocation(line: 513, column: 6, scope: !4057)
!4209 = !DILocation(line: 514, column: 3, scope: !4210)
!4210 = distinct !DILexicalBlock(scope: !4206, file: !1, line: 513, column: 18)
!4211 = !DILocation(line: 516, column: 10, scope: !4210)
!4212 = !DILocation(line: 517, column: 3, scope: !4210)
!4213 = !DILocation(line: 521, column: 39, scope: !4057)
!4214 = !DILocation(line: 521, column: 45, scope: !4057)
!4215 = !DILocation(line: 521, column: 11, scope: !4057)
!4216 = !DILocation(line: 521, column: 9, scope: !4057)
!4217 = !DILocation(line: 527, column: 6, scope: !4218)
!4218 = distinct !DILexicalBlock(scope: !4057, file: !1, line: 527, column: 6)
!4219 = !DILocation(line: 527, column: 13, scope: !4218)
!4220 = !DILocation(line: 527, column: 29, scope: !4218)
!4221 = !DILocation(line: 527, column: 35, scope: !4218)
!4222 = !DILocation(line: 527, column: 17, scope: !4218)
!4223 = !DILocation(line: 527, column: 6, scope: !4057)
!4224 = !DILocation(line: 528, column: 3, scope: !4218)
!4225 = !DILocation(line: 527, column: 49, scope: !4218)
!4226 = !DILabel(scope: !4057, name: "out", file: !1, line: 529)
!4227 = !DILocation(line: 529, column: 1, scope: !4057)
!4228 = !DILocation(line: 530, column: 31, scope: !4057)
!4229 = !DILocation(line: 530, column: 2, scope: !4057)
!4230 = !DILocation(line: 532, column: 9, scope: !4057)
!4231 = !DILocation(line: 532, column: 2, scope: !4057)
!4232 = !DILocation(line: 533, column: 1, scope: !4057)
!4233 = distinct !DISubprogram(name: "list_empty", scope: !4234, file: !4234, line: 280, type: !4235, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !268)
!4234 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!4235 = !DISubroutineType(types: !4236)
!4236 = !{!280, !4237}
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !212)
!4239 = !DILocalVariable(name: "head", arg: 1, scope: !4233, file: !4234, line: 280, type: !4237)
!4240 = !DILocation(line: 280, column: 54, scope: !4233)
!4241 = !DILocation(line: 282, column: 9, scope: !4242)
!4242 = distinct !DILexicalBlock(scope: !4233, file: !4234, line: 282, column: 9)
!4243 = !DILocation(line: 282, column: 9, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4242, file: !4234, line: 282, column: 9)
!4245 = !DILocation(line: 282, column: 34, scope: !4233)
!4246 = !DILocation(line: 282, column: 31, scope: !4233)
!4247 = !DILocation(line: 282, column: 2, scope: !4233)
!4248 = distinct !DISubprogram(name: "identify_descriptor", scope: !1, file: !1, line: 98, type: !4249, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !268)
!4249 = !DISubroutineType(types: !4250)
!4250 = !{!280, !3830, !160, !219}
!4251 = !DILocalVariable(name: "intf", arg: 1, scope: !4248, file: !1, line: 98, type: !3830)
!4252 = !DILocation(line: 98, column: 53, scope: !4248)
!4253 = !DILocalVariable(name: "desc", arg: 2, scope: !4248, file: !1, line: 99, type: !160)
!4254 = !DILocation(line: 99, column: 38, scope: !4248)
!4255 = !DILocalVariable(name: "size", arg: 3, scope: !4248, file: !1, line: 99, type: !219)
!4256 = !DILocation(line: 99, column: 51, scope: !4248)
!4257 = !DILocalVariable(name: "desc_header", scope: !4248, file: !1, line: 101, type: !4258)
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!4259 = !DILocation(line: 101, column: 36, scope: !4248)
!4260 = !DILocation(line: 101, column: 51, scope: !4248)
!4261 = !DILocation(line: 101, column: 57, scope: !4248)
!4262 = !DILocalVariable(name: "descriptor", scope: !4248, file: !1, line: 102, type: !208)
!4263 = !DILocation(line: 102, column: 24, scope: !4248)
!4264 = !DILocalVariable(name: "desc_size", scope: !4248, file: !1, line: 103, type: !219)
!4265 = !DILocation(line: 103, column: 9, scope: !4248)
!4266 = !DILocalVariable(name: "expected_size", scope: !4248, file: !1, line: 104, type: !219)
!4267 = !DILocation(line: 104, column: 9, scope: !4248)
!4268 = !DILocation(line: 106, column: 6, scope: !4269)
!4269 = distinct !DILexicalBlock(scope: !4248, file: !1, line: 106, column: 6)
!4270 = !DILocation(line: 106, column: 11, scope: !4269)
!4271 = !DILocation(line: 106, column: 6, scope: !4248)
!4272 = !DILocation(line: 107, column: 3, scope: !4273)
!4273 = distinct !DILexicalBlock(scope: !4269, file: !1, line: 106, column: 35)
!4274 = !DILocation(line: 109, column: 3, scope: !4273)
!4275 = !DILocation(line: 112, column: 14, scope: !4248)
!4276 = !DILocation(line: 112, column: 12, scope: !4248)
!4277 = !DILocation(line: 113, column: 6, scope: !4278)
!4278 = distinct !DILexicalBlock(scope: !4248, file: !1, line: 113, column: 6)
!4279 = !DILocation(line: 113, column: 18, scope: !4278)
!4280 = !DILocation(line: 113, column: 16, scope: !4278)
!4281 = !DILocation(line: 113, column: 6, scope: !4248)
!4282 = !DILocation(line: 114, column: 3, scope: !4283)
!4283 = distinct !DILexicalBlock(scope: !4278, file: !1, line: 113, column: 24)
!4284 = !DILocation(line: 116, column: 3, scope: !4283)
!4285 = !DILocation(line: 120, column: 16, scope: !4248)
!4286 = !DILocation(line: 122, column: 10, scope: !4248)
!4287 = !DILocation(line: 122, column: 23, scope: !4248)
!4288 = !DILocation(line: 122, column: 2, scope: !4248)
!4289 = !DILocation(line: 124, column: 17, scope: !4290)
!4290 = distinct !DILexicalBlock(scope: !4248, file: !1, line: 122, column: 29)
!4291 = !DILocation(line: 125, column: 20, scope: !4290)
!4292 = !DILocation(line: 125, column: 26, scope: !4290)
!4293 = !DILocation(line: 125, column: 33, scope: !4290)
!4294 = !DILocation(line: 125, column: 17, scope: !4290)
!4295 = !DILocation(line: 128, column: 19, scope: !4290)
!4296 = !DILocation(line: 128, column: 17, scope: !4290)
!4297 = !DILocation(line: 129, column: 3, scope: !4290)
!4298 = !DILocation(line: 131, column: 17, scope: !4290)
!4299 = !DILocation(line: 132, column: 3, scope: !4290)
!4300 = !DILocation(line: 134, column: 17, scope: !4290)
!4301 = !DILocation(line: 135, column: 3, scope: !4290)
!4302 = !DILocation(line: 137, column: 17, scope: !4290)
!4303 = !DILocation(line: 138, column: 3, scope: !4290)
!4304 = !DILocation(line: 141, column: 3, scope: !4290)
!4305 = !DILocation(line: 143, column: 3, scope: !4290)
!4306 = !DILocation(line: 146, column: 6, scope: !4307)
!4307 = distinct !DILexicalBlock(scope: !4248, file: !1, line: 146, column: 6)
!4308 = !DILocation(line: 146, column: 18, scope: !4307)
!4309 = !DILocation(line: 146, column: 16, scope: !4307)
!4310 = !DILocation(line: 146, column: 6, scope: !4248)
!4311 = !DILocation(line: 147, column: 3, scope: !4312)
!4312 = distinct !DILexicalBlock(scope: !4307, file: !1, line: 146, column: 33)
!4313 = !DILocation(line: 150, column: 3, scope: !4312)
!4314 = !DILocation(line: 154, column: 6, scope: !4315)
!4315 = distinct !DILexicalBlock(scope: !4248, file: !1, line: 154, column: 6)
!4316 = !DILocation(line: 154, column: 18, scope: !4315)
!4317 = !DILocation(line: 154, column: 16, scope: !4315)
!4318 = !DILocation(line: 154, column: 6, scope: !4248)
!4319 = !DILocation(line: 155, column: 3, scope: !4320)
!4320 = distinct !DILexicalBlock(scope: !4315, file: !1, line: 154, column: 33)
!4321 = !DILocation(line: 158, column: 2, scope: !4320)
!4322 = !DILocation(line: 160, column: 15, scope: !4248)
!4323 = !DILocation(line: 160, column: 13, scope: !4248)
!4324 = !DILocation(line: 161, column: 7, scope: !4325)
!4325 = distinct !DILexicalBlock(scope: !4248, file: !1, line: 161, column: 6)
!4326 = !DILocation(line: 161, column: 6, scope: !4248)
!4327 = !DILocation(line: 162, column: 3, scope: !4325)
!4328 = !DILocation(line: 164, column: 21, scope: !4248)
!4329 = !DILocation(line: 164, column: 2, scope: !4248)
!4330 = !DILocation(line: 164, column: 14, scope: !4248)
!4331 = !DILocation(line: 164, column: 19, scope: !4248)
!4332 = !DILocation(line: 165, column: 29, scope: !4248)
!4333 = !DILocation(line: 165, column: 21, scope: !4248)
!4334 = !DILocation(line: 165, column: 34, scope: !4248)
!4335 = !DILocation(line: 165, column: 2, scope: !4248)
!4336 = !DILocation(line: 165, column: 14, scope: !4248)
!4337 = !DILocation(line: 165, column: 19, scope: !4248)
!4338 = !DILocation(line: 166, column: 21, scope: !4248)
!4339 = !DILocation(line: 166, column: 34, scope: !4248)
!4340 = !DILocation(line: 166, column: 2, scope: !4248)
!4341 = !DILocation(line: 166, column: 14, scope: !4248)
!4342 = !DILocation(line: 166, column: 19, scope: !4248)
!4343 = !DILocation(line: 167, column: 17, scope: !4248)
!4344 = !DILocation(line: 167, column: 29, scope: !4248)
!4345 = !DILocation(line: 167, column: 37, scope: !4248)
!4346 = !DILocation(line: 167, column: 43, scope: !4248)
!4347 = !DILocation(line: 167, column: 2, scope: !4248)
!4348 = !DILocation(line: 171, column: 9, scope: !4248)
!4349 = !DILocation(line: 171, column: 2, scope: !4248)
!4350 = !DILocation(line: 172, column: 1, scope: !4248)
!4351 = distinct !DISubprogram(name: "gb_manifest_parse_interface", scope: !1, file: !1, line: 388, type: !4352, scopeLine: 390, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !268)
!4352 = !DISubroutineType(types: !4353)
!4353 = !{!503, !3830, !208}
!4354 = !DILocalVariable(name: "intf", arg: 1, scope: !4351, file: !1, line: 388, type: !3830)
!4355 = !DILocation(line: 388, column: 62, scope: !4351)
!4356 = !DILocalVariable(name: "interface_desc", arg: 2, scope: !4351, file: !1, line: 389, type: !208)
!4357 = !DILocation(line: 389, column: 28, scope: !4351)
!4358 = !DILocalVariable(name: "desc_intf", scope: !4351, file: !1, line: 391, type: !4359)
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!4360 = !DILocation(line: 391, column: 39, scope: !4351)
!4361 = !DILocation(line: 391, column: 51, scope: !4351)
!4362 = !DILocation(line: 391, column: 67, scope: !4351)
!4363 = !DILocalVariable(name: "control", scope: !4351, file: !1, line: 392, type: !3835)
!4364 = !DILocation(line: 392, column: 21, scope: !4351)
!4365 = !DILocation(line: 392, column: 31, scope: !4351)
!4366 = !DILocation(line: 392, column: 37, scope: !4351)
!4367 = !DILocalVariable(name: "str", scope: !4351, file: !1, line: 393, type: !205)
!4368 = !DILocation(line: 393, column: 8, scope: !4351)
!4369 = !DILocation(line: 396, column: 22, scope: !4351)
!4370 = !DILocation(line: 396, column: 28, scope: !4351)
!4371 = !DILocation(line: 396, column: 39, scope: !4351)
!4372 = !DILocation(line: 396, column: 8, scope: !4351)
!4373 = !DILocation(line: 396, column: 6, scope: !4351)
!4374 = !DILocation(line: 397, column: 13, scope: !4375)
!4375 = distinct !DILexicalBlock(scope: !4351, file: !1, line: 397, column: 6)
!4376 = !DILocation(line: 397, column: 6, scope: !4375)
!4377 = !DILocation(line: 397, column: 6, scope: !4351)
!4378 = !DILocation(line: 398, column: 3, scope: !4375)
!4379 = !DILocation(line: 399, column: 27, scope: !4351)
!4380 = !DILocation(line: 399, column: 2, scope: !4351)
!4381 = !DILocation(line: 399, column: 11, scope: !4351)
!4382 = !DILocation(line: 399, column: 25, scope: !4351)
!4383 = !DILocation(line: 401, column: 22, scope: !4351)
!4384 = !DILocation(line: 401, column: 28, scope: !4351)
!4385 = !DILocation(line: 401, column: 39, scope: !4351)
!4386 = !DILocation(line: 401, column: 8, scope: !4351)
!4387 = !DILocation(line: 401, column: 6, scope: !4351)
!4388 = !DILocation(line: 402, column: 13, scope: !4389)
!4389 = distinct !DILexicalBlock(scope: !4351, file: !1, line: 402, column: 6)
!4390 = !DILocation(line: 402, column: 6, scope: !4389)
!4391 = !DILocation(line: 402, column: 6, scope: !4351)
!4392 = !DILocation(line: 403, column: 3, scope: !4389)
!4393 = !DILocation(line: 404, column: 28, scope: !4351)
!4394 = !DILocation(line: 404, column: 2, scope: !4351)
!4395 = !DILocation(line: 404, column: 11, scope: !4351)
!4396 = !DILocation(line: 404, column: 26, scope: !4351)
!4397 = !DILocation(line: 407, column: 19, scope: !4351)
!4398 = !DILocation(line: 407, column: 30, scope: !4351)
!4399 = !DILocation(line: 407, column: 2, scope: !4351)
!4400 = !DILocation(line: 407, column: 8, scope: !4351)
!4401 = !DILocation(line: 407, column: 17, scope: !4351)
!4402 = !DILocation(line: 410, column: 30, scope: !4351)
!4403 = !DILocation(line: 410, column: 2, scope: !4351)
!4404 = !DILocation(line: 413, column: 33, scope: !4405)
!4405 = distinct !DILexicalBlock(scope: !4351, file: !1, line: 413, column: 6)
!4406 = !DILocation(line: 413, column: 7, scope: !4405)
!4407 = !DILocation(line: 413, column: 6, scope: !4351)
!4408 = !DILocation(line: 414, column: 3, scope: !4409)
!4409 = distinct !DILexicalBlock(scope: !4405, file: !1, line: 413, column: 40)
!4410 = !DILocation(line: 415, column: 3, scope: !4409)
!4411 = !DILocation(line: 418, column: 2, scope: !4351)
!4412 = !DILabel(scope: !4351, name: "out_err", file: !1, line: 419)
!4413 = !DILocation(line: 419, column: 1, scope: !4351)
!4414 = !DILocation(line: 420, column: 8, scope: !4351)
!4415 = !DILocation(line: 420, column: 17, scope: !4351)
!4416 = !DILocation(line: 420, column: 2, scope: !4351)
!4417 = !DILocation(line: 421, column: 2, scope: !4351)
!4418 = !DILocation(line: 421, column: 11, scope: !4351)
!4419 = !DILocation(line: 421, column: 26, scope: !4351)
!4420 = !DILabel(scope: !4351, name: "out_free_vendor_string", file: !1, line: 422)
!4421 = !DILocation(line: 422, column: 1, scope: !4351)
!4422 = !DILocation(line: 423, column: 8, scope: !4351)
!4423 = !DILocation(line: 423, column: 17, scope: !4351)
!4424 = !DILocation(line: 423, column: 2, scope: !4351)
!4425 = !DILocation(line: 424, column: 2, scope: !4351)
!4426 = !DILocation(line: 424, column: 11, scope: !4351)
!4427 = !DILocation(line: 424, column: 25, scope: !4351)
!4428 = !DILocation(line: 426, column: 2, scope: !4351)
!4429 = !DILocation(line: 427, column: 1, scope: !4351)
!4430 = distinct !DISubprogram(name: "release_manifest_descriptors", scope: !1, file: !1, line: 51, type: !4431, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !268)
!4431 = !DISubroutineType(types: !4432)
!4432 = !{null, !3830}
!4433 = !DILocalVariable(name: "intf", arg: 1, scope: !4430, file: !1, line: 51, type: !3830)
!4434 = !DILocation(line: 51, column: 63, scope: !4430)
!4435 = !DILocalVariable(name: "descriptor", scope: !4430, file: !1, line: 53, type: !208)
!4436 = !DILocation(line: 53, column: 24, scope: !4430)
!4437 = !DILocalVariable(name: "next", scope: !4430, file: !1, line: 54, type: !208)
!4438 = !DILocation(line: 54, column: 24, scope: !4430)
!4439 = !DILocalVariable(name: "__mptr", scope: !4440, file: !1, line: 56, type: !207)
!4440 = distinct !DILexicalBlock(scope: !4441, file: !1, line: 56, column: 2)
!4441 = distinct !DILexicalBlock(scope: !4430, file: !1, line: 56, column: 2)
!4442 = !DILocation(line: 56, column: 2, scope: !4440)
!4443 = !DILocation(line: 56, column: 2, scope: !4444)
!4444 = distinct !DILexicalBlock(scope: !4440, file: !1, line: 56, column: 2)
!4445 = !DILocation(line: 56, column: 2, scope: !4441)
!4446 = !DILocalVariable(name: "__mptr", scope: !4447, file: !1, line: 56, type: !207)
!4447 = distinct !DILexicalBlock(scope: !4441, file: !1, line: 56, column: 2)
!4448 = !DILocation(line: 56, column: 2, scope: !4447)
!4449 = !DILocation(line: 56, column: 2, scope: !4450)
!4450 = distinct !DILexicalBlock(scope: !4447, file: !1, line: 56, column: 2)
!4451 = !DILocation(line: 56, column: 2, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !4441, file: !1, line: 56, column: 2)
!4453 = !DILocation(line: 57, column: 31, scope: !4452)
!4454 = !DILocation(line: 57, column: 3, scope: !4452)
!4455 = !DILocalVariable(name: "__mptr", scope: !4456, file: !1, line: 56, type: !207)
!4456 = distinct !DILexicalBlock(scope: !4452, file: !1, line: 56, column: 2)
!4457 = !DILocation(line: 56, column: 2, scope: !4456)
!4458 = !DILocation(line: 56, column: 2, scope: !4459)
!4459 = distinct !DILexicalBlock(scope: !4456, file: !1, line: 56, column: 2)
!4460 = distinct !{!4460, !4445, !4461}
!4461 = !DILocation(line: 57, column: 41, scope: !4441)
!4462 = !DILocation(line: 58, column: 1, scope: !4430)
!4463 = distinct !DISubprogram(name: "get_descriptor_type_string", scope: !1, file: !1, line: 11, type: !4464, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !268)
!4464 = !DISubroutineType(types: !4465)
!4465 = !{!243, !1367}
!4466 = !DILocalVariable(name: "type", arg: 1, scope: !4463, file: !1, line: 11, type: !1367)
!4467 = !DILocation(line: 11, column: 50, scope: !4463)
!4468 = !DILocation(line: 13, column: 10, scope: !4463)
!4469 = !DILocation(line: 13, column: 2, scope: !4463)
!4470 = !DILocation(line: 15, column: 3, scope: !4471)
!4471 = distinct !DILexicalBlock(scope: !4463, file: !1, line: 13, column: 16)
!4472 = !DILocation(line: 17, column: 3, scope: !4471)
!4473 = !DILocation(line: 19, column: 3, scope: !4471)
!4474 = !DILocation(line: 21, column: 3, scope: !4471)
!4475 = !DILocation(line: 23, column: 3, scope: !4471)
!4476 = !DILocalVariable(name: "__ret_warn_on", scope: !4477, file: !1, line: 25, type: !280)
!4477 = distinct !DILexicalBlock(scope: !4471, file: !1, line: 25, column: 3)
!4478 = !DILocation(line: 25, column: 3, scope: !4477)
!4479 = !DILocation(line: 25, column: 3, scope: !4480)
!4480 = distinct !DILexicalBlock(scope: !4477, file: !1, line: 25, column: 3)
!4481 = !DILocation(line: 25, column: 3, scope: !4482)
!4482 = distinct !DILexicalBlock(scope: !4480, file: !1, line: 25, column: 3)
!4483 = !DILocation(line: 25, column: 3, scope: !4484)
!4484 = distinct !DILexicalBlock(scope: !4482, file: !1, line: 25, column: 3)
!4485 = !DILocation(line: 25, column: 3, scope: !4486)
!4486 = distinct !DILexicalBlock(scope: !4482, file: !1, line: 25, column: 3)
!4487 = !{i32 -2141989994, i32 -2141989965, i32 -2141989919, i32 -2141989861, i32 -2141989807, i32 -2141989753, i32 -2141989698, i32 -2141989667}
!4488 = !DILocation(line: 25, column: 3, scope: !4489)
!4489 = distinct !DILexicalBlock(scope: !4482, file: !1, line: 25, column: 3)
!4490 = !{i32 -2141989260, i32 -2141989253, i32 -2141989201, i32 -2141989170, i32 -2141989140}
!4491 = !DILocation(line: 25, column: 3, scope: !4492)
!4492 = distinct !DILexicalBlock(scope: !4482, file: !1, line: 25, column: 3)
!4493 = !DILocation(line: 26, column: 3, scope: !4471)
!4494 = !DILocation(line: 28, column: 1, scope: !4463)
!4495 = distinct !DISubprogram(name: "kzalloc", scope: !130, file: !130, line: 662, type: !4496, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !268)
!4496 = !DISubroutineType(types: !4497)
!4497 = !{!207, !219, !229}
!4498 = !DILocalVariable(name: "s", arg: 1, scope: !4499, file: !130, line: 445, type: !950)
!4499 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !130, file: !130, line: 445, type: !4500, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !268)
!4500 = !DISubroutineType(types: !4501)
!4501 = !{!207, !950, !229, !219}
!4502 = !DILocation(line: 445, column: 72, scope: !4499, inlinedAt: !4503)
!4503 = distinct !DILocation(line: 552, column: 10, scope: !4504, inlinedAt: !4507)
!4504 = distinct !DILexicalBlock(scope: !4505, file: !130, line: 540, column: 34)
!4505 = distinct !DILexicalBlock(scope: !4506, file: !130, line: 540, column: 6)
!4506 = distinct !DISubprogram(name: "kmalloc", scope: !130, file: !130, line: 538, type: !4496, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !268)
!4507 = distinct !DILocation(line: 664, column: 9, scope: !4495)
!4508 = !DILocalVariable(name: "flags", arg: 2, scope: !4499, file: !130, line: 446, type: !229)
!4509 = !DILocation(line: 446, column: 9, scope: !4499, inlinedAt: !4503)
!4510 = !DILocalVariable(name: "size", arg: 3, scope: !4499, file: !130, line: 446, type: !219)
!4511 = !DILocation(line: 446, column: 23, scope: !4499, inlinedAt: !4503)
!4512 = !DILocalVariable(name: "ret", scope: !4499, file: !130, line: 448, type: !207)
!4513 = !DILocation(line: 448, column: 8, scope: !4499, inlinedAt: !4503)
!4514 = !DILocalVariable(name: "flags", arg: 1, scope: !4515, file: !130, line: 318, type: !229)
!4515 = distinct !DISubprogram(name: "kmalloc_type", scope: !130, file: !130, line: 318, type: !4516, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !268)
!4516 = !DISubroutineType(types: !4517)
!4517 = !{!129, !229}
!4518 = !DILocation(line: 318, column: 67, scope: !4515, inlinedAt: !4519)
!4519 = distinct !DILocation(line: 553, column: 20, scope: !4504, inlinedAt: !4507)
!4520 = !DILocalVariable(name: "size", arg: 1, scope: !4521, file: !130, line: 346, type: !219)
!4521 = distinct !DISubprogram(name: "kmalloc_index", scope: !130, file: !130, line: 346, type: !4522, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !268)
!4522 = !DISubroutineType(types: !4523)
!4523 = !{!5, !219}
!4524 = !DILocation(line: 346, column: 58, scope: !4521, inlinedAt: !4525)
!4525 = distinct !DILocation(line: 547, column: 11, scope: !4504, inlinedAt: !4507)
!4526 = !DILocalVariable(name: "size", arg: 1, scope: !4527, file: !130, line: 472, type: !219)
!4527 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !130, file: !130, line: 472, type: !4528, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !268)
!4528 = !DISubroutineType(types: !4529)
!4529 = !{!207, !219, !229, !5}
!4530 = !DILocation(line: 472, column: 28, scope: !4527, inlinedAt: !4531)
!4531 = distinct !DILocation(line: 481, column: 9, scope: !4532, inlinedAt: !4533)
!4532 = distinct !DISubprogram(name: "kmalloc_large", scope: !130, file: !130, line: 478, type: !4496, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !268)
!4533 = distinct !DILocation(line: 545, column: 11, scope: !4534, inlinedAt: !4507)
!4534 = distinct !DILexicalBlock(scope: !4504, file: !130, line: 544, column: 7)
!4535 = !DILocalVariable(name: "flags", arg: 2, scope: !4527, file: !130, line: 472, type: !229)
!4536 = !DILocation(line: 472, column: 40, scope: !4527, inlinedAt: !4531)
!4537 = !DILocalVariable(name: "order", arg: 3, scope: !4527, file: !130, line: 472, type: !5)
!4538 = !DILocation(line: 472, column: 60, scope: !4527, inlinedAt: !4531)
!4539 = !DILocalVariable(name: "size", arg: 1, scope: !4532, file: !130, line: 478, type: !219)
!4540 = !DILocation(line: 478, column: 51, scope: !4532, inlinedAt: !4533)
!4541 = !DILocalVariable(name: "flags", arg: 2, scope: !4532, file: !130, line: 478, type: !229)
!4542 = !DILocation(line: 478, column: 63, scope: !4532, inlinedAt: !4533)
!4543 = !DILocalVariable(name: "order", scope: !4532, file: !130, line: 480, type: !5)
!4544 = !DILocation(line: 480, column: 15, scope: !4532, inlinedAt: !4533)
!4545 = !DILocalVariable(name: "size", arg: 1, scope: !4506, file: !130, line: 538, type: !219)
!4546 = !DILocation(line: 538, column: 45, scope: !4506, inlinedAt: !4507)
!4547 = !DILocalVariable(name: "flags", arg: 2, scope: !4506, file: !130, line: 538, type: !229)
!4548 = !DILocation(line: 538, column: 57, scope: !4506, inlinedAt: !4507)
!4549 = !DILocalVariable(name: "index", scope: !4504, file: !130, line: 542, type: !5)
!4550 = !DILocation(line: 542, column: 16, scope: !4504, inlinedAt: !4507)
!4551 = !DILocalVariable(name: "size", arg: 1, scope: !4495, file: !130, line: 662, type: !219)
!4552 = !DILocation(line: 662, column: 36, scope: !4495)
!4553 = !DILocalVariable(name: "flags", arg: 2, scope: !4495, file: !130, line: 662, type: !229)
!4554 = !DILocation(line: 662, column: 48, scope: !4495)
!4555 = !DILocation(line: 664, column: 17, scope: !4495)
!4556 = !DILocation(line: 664, column: 23, scope: !4495)
!4557 = !DILocation(line: 664, column: 29, scope: !4495)
!4558 = !DILocation(line: 540, column: 27, scope: !4505, inlinedAt: !4507)
!4559 = !DILocation(line: 540, column: 6, scope: !4505, inlinedAt: !4507)
!4560 = !DILocation(line: 540, column: 6, scope: !4506, inlinedAt: !4507)
!4561 = !DILocation(line: 544, column: 7, scope: !4534, inlinedAt: !4507)
!4562 = !DILocation(line: 544, column: 12, scope: !4534, inlinedAt: !4507)
!4563 = !DILocation(line: 544, column: 7, scope: !4504, inlinedAt: !4507)
!4564 = !DILocation(line: 545, column: 25, scope: !4534, inlinedAt: !4507)
!4565 = !DILocation(line: 545, column: 31, scope: !4534, inlinedAt: !4507)
!4566 = !DILocation(line: 480, column: 33, scope: !4532, inlinedAt: !4533)
!4567 = !DILocation(line: 480, column: 23, scope: !4532, inlinedAt: !4533)
!4568 = !DILocation(line: 481, column: 29, scope: !4532, inlinedAt: !4533)
!4569 = !DILocation(line: 481, column: 35, scope: !4532, inlinedAt: !4533)
!4570 = !DILocation(line: 481, column: 42, scope: !4532, inlinedAt: !4533)
!4571 = !DILocation(line: 474, column: 23, scope: !4527, inlinedAt: !4531)
!4572 = !DILocation(line: 474, column: 29, scope: !4527, inlinedAt: !4531)
!4573 = !DILocation(line: 474, column: 36, scope: !4527, inlinedAt: !4531)
!4574 = !DILocation(line: 474, column: 9, scope: !4527, inlinedAt: !4531)
!4575 = !DILocation(line: 545, column: 4, scope: !4534, inlinedAt: !4507)
!4576 = !DILocation(line: 547, column: 25, scope: !4504, inlinedAt: !4507)
!4577 = !DILocation(line: 348, column: 7, scope: !4578, inlinedAt: !4525)
!4578 = distinct !DILexicalBlock(scope: !4521, file: !130, line: 348, column: 6)
!4579 = !DILocation(line: 348, column: 6, scope: !4521, inlinedAt: !4525)
!4580 = !DILocation(line: 349, column: 3, scope: !4578, inlinedAt: !4525)
!4581 = !DILocation(line: 351, column: 6, scope: !4582, inlinedAt: !4525)
!4582 = distinct !DILexicalBlock(scope: !4521, file: !130, line: 351, column: 6)
!4583 = !DILocation(line: 351, column: 11, scope: !4582, inlinedAt: !4525)
!4584 = !DILocation(line: 351, column: 6, scope: !4521, inlinedAt: !4525)
!4585 = !DILocation(line: 352, column: 3, scope: !4582, inlinedAt: !4525)
!4586 = !DILocation(line: 354, column: 32, scope: !4587, inlinedAt: !4525)
!4587 = distinct !DILexicalBlock(scope: !4521, file: !130, line: 354, column: 6)
!4588 = !DILocation(line: 354, column: 37, scope: !4587, inlinedAt: !4525)
!4589 = !DILocation(line: 354, column: 42, scope: !4587, inlinedAt: !4525)
!4590 = !DILocation(line: 354, column: 45, scope: !4587, inlinedAt: !4525)
!4591 = !DILocation(line: 354, column: 50, scope: !4587, inlinedAt: !4525)
!4592 = !DILocation(line: 354, column: 6, scope: !4521, inlinedAt: !4525)
!4593 = !DILocation(line: 355, column: 3, scope: !4587, inlinedAt: !4525)
!4594 = !DILocation(line: 356, column: 32, scope: !4595, inlinedAt: !4525)
!4595 = distinct !DILexicalBlock(scope: !4521, file: !130, line: 356, column: 6)
!4596 = !DILocation(line: 356, column: 37, scope: !4595, inlinedAt: !4525)
!4597 = !DILocation(line: 356, column: 43, scope: !4595, inlinedAt: !4525)
!4598 = !DILocation(line: 356, column: 46, scope: !4595, inlinedAt: !4525)
!4599 = !DILocation(line: 356, column: 51, scope: !4595, inlinedAt: !4525)
!4600 = !DILocation(line: 356, column: 6, scope: !4521, inlinedAt: !4525)
!4601 = !DILocation(line: 357, column: 3, scope: !4595, inlinedAt: !4525)
!4602 = !DILocation(line: 358, column: 6, scope: !4603, inlinedAt: !4525)
!4603 = distinct !DILexicalBlock(scope: !4521, file: !130, line: 358, column: 6)
!4604 = !DILocation(line: 358, column: 11, scope: !4603, inlinedAt: !4525)
!4605 = !DILocation(line: 358, column: 6, scope: !4521, inlinedAt: !4525)
!4606 = !DILocation(line: 358, column: 26, scope: !4603, inlinedAt: !4525)
!4607 = !DILocation(line: 359, column: 6, scope: !4608, inlinedAt: !4525)
!4608 = distinct !DILexicalBlock(scope: !4521, file: !130, line: 359, column: 6)
!4609 = !DILocation(line: 359, column: 11, scope: !4608, inlinedAt: !4525)
!4610 = !DILocation(line: 359, column: 6, scope: !4521, inlinedAt: !4525)
!4611 = !DILocation(line: 359, column: 26, scope: !4608, inlinedAt: !4525)
!4612 = !DILocation(line: 360, column: 6, scope: !4613, inlinedAt: !4525)
!4613 = distinct !DILexicalBlock(scope: !4521, file: !130, line: 360, column: 6)
!4614 = !DILocation(line: 360, column: 11, scope: !4613, inlinedAt: !4525)
!4615 = !DILocation(line: 360, column: 6, scope: !4521, inlinedAt: !4525)
!4616 = !DILocation(line: 360, column: 26, scope: !4613, inlinedAt: !4525)
!4617 = !DILocation(line: 361, column: 6, scope: !4618, inlinedAt: !4525)
!4618 = distinct !DILexicalBlock(scope: !4521, file: !130, line: 361, column: 6)
!4619 = !DILocation(line: 361, column: 11, scope: !4618, inlinedAt: !4525)
!4620 = !DILocation(line: 361, column: 6, scope: !4521, inlinedAt: !4525)
!4621 = !DILocation(line: 361, column: 26, scope: !4618, inlinedAt: !4525)
!4622 = !DILocation(line: 362, column: 6, scope: !4623, inlinedAt: !4525)
!4623 = distinct !DILexicalBlock(scope: !4521, file: !130, line: 362, column: 6)
!4624 = !DILocation(line: 362, column: 11, scope: !4623, inlinedAt: !4525)
!4625 = !DILocation(line: 362, column: 6, scope: !4521, inlinedAt: !4525)
!4626 = !DILocation(line: 362, column: 26, scope: !4623, inlinedAt: !4525)
!4627 = !DILocation(line: 363, column: 6, scope: !4628, inlinedAt: !4525)
!4628 = distinct !DILexicalBlock(scope: !4521, file: !130, line: 363, column: 6)
!4629 = !DILocation(line: 363, column: 11, scope: !4628, inlinedAt: !4525)
!4630 = !DILocation(line: 363, column: 6, scope: !4521, inlinedAt: !4525)
!4631 = !DILocation(line: 363, column: 26, scope: !4628, inlinedAt: !4525)
!4632 = !DILocation(line: 364, column: 6, scope: !4633, inlinedAt: !4525)
!4633 = distinct !DILexicalBlock(scope: !4521, file: !130, line: 364, column: 6)
!4634 = !DILocation(line: 364, column: 11, scope: !4633, inlinedAt: !4525)
!4635 = !DILocation(line: 364, column: 6, scope: !4521, inlinedAt: !4525)
!4636 = !DILocation(line: 364, column: 26, scope: !4633, inlinedAt: !4525)
!4637 = !DILocation(line: 365, column: 6, scope: !4638, inlinedAt: !4525)
!4638 = distinct !DILexicalBlock(scope: !4521, file: !130, line: 365, column: 6)
!4639 = !DILocation(line: 365, column: 11, scope: !4638, inlinedAt: !4525)
!4640 = !DILocation(line: 365, column: 6, scope: !4521, inlinedAt: !4525)
!4641 = !DILocation(line: 365, column: 26, scope: !4638, inlinedAt: !4525)
!4642 = !DILocation(line: 366, column: 6, scope: !4643, inlinedAt: !4525)
!4643 = distinct !DILexicalBlock(scope: !4521, file: !130, line: 366, column: 6)
!4644 = !DILocation(line: 366, column: 11, scope: !4643, inlinedAt: !4525)
!4645 = !DILocation(line: 366, column: 6, scope: !4521, inlinedAt: !4525)
!4646 = !DILocation(line: 366, column: 26, scope: !4643, inlinedAt: !4525)
!4647 = !DILocation(line: 367, column: 6, scope: !4648, inlinedAt: !4525)
!4648 = distinct !DILexicalBlock(scope: !4521, file: !130, line: 367, column: 6)
!4649 = !DILocation(line: 367, column: 11, scope: !4648, inlinedAt: !4525)
!4650 = !DILocation(line: 367, column: 6, scope: !4521, inlinedAt: !4525)
!4651 = !DILocation(line: 367, column: 26, scope: !4648, inlinedAt: !4525)
!4652 = !DILocation(line: 368, column: 6, scope: !4653, inlinedAt: !4525)
!4653 = distinct !DILexicalBlock(scope: !4521, file: !130, line: 368, column: 6)
!4654 = !DILocation(line: 368, column: 11, scope: !4653, inlinedAt: !4525)
!4655 = !DILocation(line: 368, column: 6, scope: !4521, inlinedAt: !4525)
!4656 = !DILocation(line: 368, column: 26, scope: !4653, inlinedAt: !4525)
!4657 = !DILocation(line: 369, column: 6, scope: !4658, inlinedAt: !4525)
!4658 = distinct !DILexicalBlock(scope: !4521, file: !130, line: 369, column: 6)
!4659 = !DILocation(line: 369, column: 11, scope: !4658, inlinedAt: !4525)
!4660 = !DILocation(line: 369, column: 6, scope: !4521, inlinedAt: !4525)
!4661 = !DILocation(line: 369, column: 26, scope: !4658, inlinedAt: !4525)
!4662 = !DILocation(line: 370, column: 6, scope: !4663, inlinedAt: !4525)
!4663 = distinct !DILexicalBlock(scope: !4521, file: !130, line: 370, column: 6)
!4664 = !DILocation(line: 370, column: 11, scope: !4663, inlinedAt: !4525)
!4665 = !DILocation(line: 370, column: 6, scope: !4521, inlinedAt: !4525)
!4666 = !DILocation(line: 370, column: 26, scope: !4663, inlinedAt: !4525)
!4667 = !DILocation(line: 371, column: 6, scope: !4668, inlinedAt: !4525)
!4668 = distinct !DILexicalBlock(scope: !4521, file: !130, line: 371, column: 6)
!4669 = !DILocation(line: 371, column: 11, scope: !4668, inlinedAt: !4525)
!4670 = !DILocation(line: 371, column: 6, scope: !4521, inlinedAt: !4525)
!4671 = !DILocation(line: 371, column: 26, scope: !4668, inlinedAt: !4525)
!4672 = !DILocation(line: 372, column: 6, scope: !4673, inlinedAt: !4525)
!4673 = distinct !DILexicalBlock(scope: !4521, file: !130, line: 372, column: 6)
!4674 = !DILocation(line: 372, column: 11, scope: !4673, inlinedAt: !4525)
!4675 = !DILocation(line: 372, column: 6, scope: !4521, inlinedAt: !4525)
!4676 = !DILocation(line: 372, column: 26, scope: !4673, inlinedAt: !4525)
!4677 = !DILocation(line: 373, column: 6, scope: !4678, inlinedAt: !4525)
!4678 = distinct !DILexicalBlock(scope: !4521, file: !130, line: 373, column: 6)
!4679 = !DILocation(line: 373, column: 11, scope: !4678, inlinedAt: !4525)
!4680 = !DILocation(line: 373, column: 6, scope: !4521, inlinedAt: !4525)
!4681 = !DILocation(line: 373, column: 26, scope: !4678, inlinedAt: !4525)
!4682 = !DILocation(line: 374, column: 6, scope: !4683, inlinedAt: !4525)
!4683 = distinct !DILexicalBlock(scope: !4521, file: !130, line: 374, column: 6)
!4684 = !DILocation(line: 374, column: 11, scope: !4683, inlinedAt: !4525)
!4685 = !DILocation(line: 374, column: 6, scope: !4521, inlinedAt: !4525)
!4686 = !DILocation(line: 374, column: 26, scope: !4683, inlinedAt: !4525)
!4687 = !DILocation(line: 375, column: 6, scope: !4688, inlinedAt: !4525)
!4688 = distinct !DILexicalBlock(scope: !4521, file: !130, line: 375, column: 6)
!4689 = !DILocation(line: 375, column: 11, scope: !4688, inlinedAt: !4525)
!4690 = !DILocation(line: 375, column: 6, scope: !4521, inlinedAt: !4525)
!4691 = !DILocation(line: 375, column: 27, scope: !4688, inlinedAt: !4525)
!4692 = !DILocation(line: 376, column: 6, scope: !4693, inlinedAt: !4525)
!4693 = distinct !DILexicalBlock(scope: !4521, file: !130, line: 376, column: 6)
!4694 = !DILocation(line: 376, column: 11, scope: !4693, inlinedAt: !4525)
!4695 = !DILocation(line: 376, column: 6, scope: !4521, inlinedAt: !4525)
!4696 = !DILocation(line: 376, column: 32, scope: !4693, inlinedAt: !4525)
!4697 = !DILocation(line: 377, column: 6, scope: !4698, inlinedAt: !4525)
!4698 = distinct !DILexicalBlock(scope: !4521, file: !130, line: 377, column: 6)
!4699 = !DILocation(line: 377, column: 11, scope: !4698, inlinedAt: !4525)
!4700 = !DILocation(line: 377, column: 6, scope: !4521, inlinedAt: !4525)
!4701 = !DILocation(line: 377, column: 32, scope: !4698, inlinedAt: !4525)
!4702 = !DILocation(line: 378, column: 6, scope: !4703, inlinedAt: !4525)
!4703 = distinct !DILexicalBlock(scope: !4521, file: !130, line: 378, column: 6)
!4704 = !DILocation(line: 378, column: 11, scope: !4703, inlinedAt: !4525)
!4705 = !DILocation(line: 378, column: 6, scope: !4521, inlinedAt: !4525)
!4706 = !DILocation(line: 378, column: 32, scope: !4703, inlinedAt: !4525)
!4707 = !DILocation(line: 379, column: 6, scope: !4708, inlinedAt: !4525)
!4708 = distinct !DILexicalBlock(scope: !4521, file: !130, line: 379, column: 6)
!4709 = !DILocation(line: 379, column: 11, scope: !4708, inlinedAt: !4525)
!4710 = !DILocation(line: 379, column: 6, scope: !4521, inlinedAt: !4525)
!4711 = !DILocation(line: 379, column: 33, scope: !4708, inlinedAt: !4525)
!4712 = !DILocation(line: 380, column: 6, scope: !4713, inlinedAt: !4525)
!4713 = distinct !DILexicalBlock(scope: !4521, file: !130, line: 380, column: 6)
!4714 = !DILocation(line: 380, column: 11, scope: !4713, inlinedAt: !4525)
!4715 = !DILocation(line: 380, column: 6, scope: !4521, inlinedAt: !4525)
!4716 = !DILocation(line: 380, column: 33, scope: !4713, inlinedAt: !4525)
!4717 = !DILocation(line: 381, column: 6, scope: !4718, inlinedAt: !4525)
!4718 = distinct !DILexicalBlock(scope: !4521, file: !130, line: 381, column: 6)
!4719 = !DILocation(line: 381, column: 11, scope: !4718, inlinedAt: !4525)
!4720 = !DILocation(line: 381, column: 6, scope: !4521, inlinedAt: !4525)
!4721 = !DILocation(line: 381, column: 33, scope: !4718, inlinedAt: !4525)
!4722 = !DILocation(line: 382, column: 2, scope: !4723, inlinedAt: !4525)
!4723 = distinct !DILexicalBlock(scope: !4724, file: !130, line: 382, column: 2)
!4724 = distinct !DILexicalBlock(scope: !4521, file: !130, line: 382, column: 2)
!4725 = !{i32 -2144636263, i32 -2144636234, i32 -2144636188, i32 -2144636130, i32 -2144636076, i32 -2144636022, i32 -2144635967, i32 -2144635936}
!4726 = !DILocation(line: 382, column: 2, scope: !4727, inlinedAt: !4525)
!4727 = distinct !DILexicalBlock(scope: !4728, file: !130, line: 382, column: 2)
!4728 = distinct !DILexicalBlock(scope: !4724, file: !130, line: 382, column: 2)
!4729 = !{i32 -2144635493, i32 -2144635486, i32 -2144635432, i32 -2144635401, i32 -2144635371}
!4730 = !DILocation(line: 382, column: 2, scope: !4728, inlinedAt: !4525)
!4731 = !DILocation(line: 386, column: 1, scope: !4521, inlinedAt: !4525)
!4732 = !DILocation(line: 547, column: 9, scope: !4504, inlinedAt: !4507)
!4733 = !DILocation(line: 549, column: 8, scope: !4734, inlinedAt: !4507)
!4734 = distinct !DILexicalBlock(scope: !4504, file: !130, line: 549, column: 7)
!4735 = !DILocation(line: 549, column: 7, scope: !4504, inlinedAt: !4507)
!4736 = !DILocation(line: 550, column: 4, scope: !4734, inlinedAt: !4507)
!4737 = !DILocation(line: 553, column: 33, scope: !4504, inlinedAt: !4507)
!4738 = !DILocation(line: 325, column: 6, scope: !4739, inlinedAt: !4519)
!4739 = distinct !DILexicalBlock(scope: !4515, file: !130, line: 325, column: 6)
!4740 = !DILocation(line: 325, column: 6, scope: !4515, inlinedAt: !4519)
!4741 = !DILocation(line: 326, column: 3, scope: !4739, inlinedAt: !4519)
!4742 = !DILocation(line: 332, column: 9, scope: !4515, inlinedAt: !4519)
!4743 = !DILocation(line: 332, column: 15, scope: !4515, inlinedAt: !4519)
!4744 = !DILocation(line: 332, column: 2, scope: !4515, inlinedAt: !4519)
!4745 = !DILocation(line: 336, column: 1, scope: !4515, inlinedAt: !4519)
!4746 = !DILocation(line: 553, column: 5, scope: !4504, inlinedAt: !4507)
!4747 = !DILocation(line: 553, column: 41, scope: !4504, inlinedAt: !4507)
!4748 = !DILocation(line: 554, column: 5, scope: !4504, inlinedAt: !4507)
!4749 = !DILocation(line: 554, column: 12, scope: !4504, inlinedAt: !4507)
!4750 = !DILocation(line: 448, column: 31, scope: !4499, inlinedAt: !4503)
!4751 = !DILocation(line: 448, column: 34, scope: !4499, inlinedAt: !4503)
!4752 = !DILocation(line: 448, column: 14, scope: !4499, inlinedAt: !4503)
!4753 = !DILocation(line: 450, column: 22, scope: !4499, inlinedAt: !4503)
!4754 = !DILocation(line: 450, column: 25, scope: !4499, inlinedAt: !4503)
!4755 = !DILocation(line: 450, column: 30, scope: !4499, inlinedAt: !4503)
!4756 = !DILocation(line: 450, column: 36, scope: !4499, inlinedAt: !4503)
!4757 = !DILocation(line: 450, column: 8, scope: !4499, inlinedAt: !4503)
!4758 = !DILocation(line: 450, column: 6, scope: !4499, inlinedAt: !4503)
!4759 = !DILocation(line: 451, column: 9, scope: !4499, inlinedAt: !4503)
!4760 = !DILocation(line: 552, column: 3, scope: !4504, inlinedAt: !4507)
!4761 = !DILocation(line: 557, column: 19, scope: !4506, inlinedAt: !4507)
!4762 = !DILocation(line: 557, column: 25, scope: !4506, inlinedAt: !4507)
!4763 = !DILocation(line: 557, column: 9, scope: !4506, inlinedAt: !4507)
!4764 = !DILocation(line: 557, column: 2, scope: !4506, inlinedAt: !4507)
!4765 = !DILocation(line: 558, column: 1, scope: !4506, inlinedAt: !4507)
!4766 = !DILocation(line: 664, column: 2, scope: !4495)
!4767 = distinct !DISubprogram(name: "list_add_tail", scope: !4234, file: !4234, line: 98, type: !4768, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !268)
!4768 = !DISubroutineType(types: !4769)
!4769 = !{null, !216, !216}
!4770 = !DILocalVariable(name: "new", arg: 1, scope: !4767, file: !4234, line: 98, type: !216)
!4771 = !DILocation(line: 98, column: 52, scope: !4767)
!4772 = !DILocalVariable(name: "head", arg: 2, scope: !4767, file: !4234, line: 98, type: !216)
!4773 = !DILocation(line: 98, column: 75, scope: !4767)
!4774 = !DILocation(line: 100, column: 13, scope: !4767)
!4775 = !DILocation(line: 100, column: 18, scope: !4767)
!4776 = !DILocation(line: 100, column: 24, scope: !4767)
!4777 = !DILocation(line: 100, column: 30, scope: !4767)
!4778 = !DILocation(line: 100, column: 2, scope: !4767)
!4779 = !DILocation(line: 101, column: 1, scope: !4767)
!4780 = distinct !DISubprogram(name: "get_order", scope: !4781, file: !4781, line: 29, type: !4782, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !268)
!4781 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4782 = !DISubroutineType(types: !4783)
!4783 = !{!280, !223}
!4784 = !DILocalVariable(name: "x", arg: 1, scope: !4785, file: !4786, line: 366, type: !436)
!4785 = distinct !DISubprogram(name: "fls64", scope: !4786, file: !4786, line: 366, type: !4787, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !268)
!4786 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4787 = !DISubroutineType(types: !4788)
!4788 = !{!280, !436}
!4789 = !DILocation(line: 366, column: 40, scope: !4785, inlinedAt: !4790)
!4790 = distinct !DILocation(line: 46, column: 9, scope: !4780)
!4791 = !DILocalVariable(name: "bitpos", scope: !4785, file: !4786, line: 368, type: !280)
!4792 = !DILocation(line: 368, column: 6, scope: !4785, inlinedAt: !4790)
!4793 = !DILocalVariable(name: "size", arg: 1, scope: !4780, file: !4781, line: 29, type: !223)
!4794 = !DILocation(line: 29, column: 63, scope: !4780)
!4795 = !DILocation(line: 31, column: 27, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !4780, file: !4781, line: 31, column: 6)
!4797 = !DILocation(line: 31, column: 6, scope: !4796)
!4798 = !DILocation(line: 31, column: 6, scope: !4780)
!4799 = !DILocation(line: 32, column: 8, scope: !4800)
!4800 = distinct !DILexicalBlock(scope: !4801, file: !4781, line: 32, column: 7)
!4801 = distinct !DILexicalBlock(scope: !4796, file: !4781, line: 31, column: 34)
!4802 = !DILocation(line: 32, column: 7, scope: !4801)
!4803 = !DILocation(line: 33, column: 4, scope: !4800)
!4804 = !DILocation(line: 35, column: 7, scope: !4805)
!4805 = distinct !DILexicalBlock(scope: !4801, file: !4781, line: 35, column: 7)
!4806 = !DILocation(line: 35, column: 12, scope: !4805)
!4807 = !DILocation(line: 35, column: 7, scope: !4801)
!4808 = !DILocation(line: 36, column: 4, scope: !4805)
!4809 = !DILocation(line: 38, column: 10, scope: !4801)
!4810 = !DILocation(line: 38, column: 28, scope: !4801)
!4811 = !DILocation(line: 38, column: 41, scope: !4801)
!4812 = !DILocation(line: 38, column: 3, scope: !4801)
!4813 = !DILocation(line: 41, column: 6, scope: !4780)
!4814 = !DILocation(line: 42, column: 7, scope: !4780)
!4815 = !DILocation(line: 46, column: 15, scope: !4780)
!4816 = !DILocation(line: 374, column: 2, scope: !4785, inlinedAt: !4790)
!4817 = !DILocation(line: 376, column: 14, scope: !4785, inlinedAt: !4790)
!4818 = !{i32 257995}
!4819 = !DILocation(line: 377, column: 9, scope: !4785, inlinedAt: !4790)
!4820 = !DILocation(line: 377, column: 16, scope: !4785, inlinedAt: !4790)
!4821 = !DILocation(line: 46, column: 2, scope: !4780)
!4822 = !DILocation(line: 48, column: 1, scope: !4780)
!4823 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4824, file: !4824, line: 30, type: !4825, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !268)
!4824 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4825 = !DISubroutineType(types: !4826)
!4826 = !{!280, !435}
!4827 = !DILocation(line: 366, column: 40, scope: !4785, inlinedAt: !4828)
!4828 = distinct !DILocation(line: 32, column: 9, scope: !4823)
!4829 = !DILocation(line: 368, column: 6, scope: !4785, inlinedAt: !4828)
!4830 = !DILocalVariable(name: "n", arg: 1, scope: !4823, file: !4824, line: 30, type: !435)
!4831 = !DILocation(line: 30, column: 21, scope: !4823)
!4832 = !DILocation(line: 32, column: 15, scope: !4823)
!4833 = !DILocation(line: 374, column: 2, scope: !4785, inlinedAt: !4828)
!4834 = !DILocation(line: 376, column: 14, scope: !4785, inlinedAt: !4828)
!4835 = !DILocation(line: 377, column: 9, scope: !4785, inlinedAt: !4828)
!4836 = !DILocation(line: 377, column: 16, scope: !4785, inlinedAt: !4828)
!4837 = !DILocation(line: 32, column: 18, scope: !4823)
!4838 = !DILocation(line: 32, column: 2, scope: !4823)
!4839 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4840, file: !4840, line: 137, type: !4841, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !268)
!4840 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4841 = !DISubroutineType(types: !4842)
!4842 = !{!207, !950, !2138, !219, !229}
!4843 = !DILocalVariable(name: "s", arg: 1, scope: !4839, file: !4840, line: 137, type: !950)
!4844 = !DILocation(line: 137, column: 54, scope: !4839)
!4845 = !DILocalVariable(name: "object", arg: 2, scope: !4839, file: !4840, line: 137, type: !2138)
!4846 = !DILocation(line: 137, column: 69, scope: !4839)
!4847 = !DILocalVariable(name: "size", arg: 3, scope: !4839, file: !4840, line: 138, type: !219)
!4848 = !DILocation(line: 138, column: 12, scope: !4839)
!4849 = !DILocalVariable(name: "flags", arg: 4, scope: !4839, file: !4840, line: 138, type: !229)
!4850 = !DILocation(line: 138, column: 24, scope: !4839)
!4851 = !DILocation(line: 140, column: 17, scope: !4839)
!4852 = !DILocation(line: 140, column: 2, scope: !4839)
!4853 = distinct !DISubprogram(name: "__list_add", scope: !4234, file: !4234, line: 63, type: !4854, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !268)
!4854 = !DISubroutineType(types: !4855)
!4855 = !{null, !216, !216, !216}
!4856 = !DILocalVariable(name: "new", arg: 1, scope: !4853, file: !4234, line: 63, type: !216)
!4857 = !DILocation(line: 63, column: 49, scope: !4853)
!4858 = !DILocalVariable(name: "prev", arg: 2, scope: !4853, file: !4234, line: 64, type: !216)
!4859 = !DILocation(line: 64, column: 28, scope: !4853)
!4860 = !DILocalVariable(name: "next", arg: 3, scope: !4853, file: !4234, line: 65, type: !216)
!4861 = !DILocation(line: 65, column: 28, scope: !4853)
!4862 = !DILocation(line: 67, column: 24, scope: !4863)
!4863 = distinct !DILexicalBlock(scope: !4853, file: !4234, line: 67, column: 6)
!4864 = !DILocation(line: 67, column: 29, scope: !4863)
!4865 = !DILocation(line: 67, column: 35, scope: !4863)
!4866 = !DILocation(line: 67, column: 7, scope: !4863)
!4867 = !DILocation(line: 67, column: 6, scope: !4853)
!4868 = !DILocation(line: 68, column: 3, scope: !4863)
!4869 = !DILocation(line: 70, column: 15, scope: !4853)
!4870 = !DILocation(line: 70, column: 2, scope: !4853)
!4871 = !DILocation(line: 70, column: 8, scope: !4853)
!4872 = !DILocation(line: 70, column: 13, scope: !4853)
!4873 = !DILocation(line: 71, column: 14, scope: !4853)
!4874 = !DILocation(line: 71, column: 2, scope: !4853)
!4875 = !DILocation(line: 71, column: 7, scope: !4853)
!4876 = !DILocation(line: 71, column: 12, scope: !4853)
!4877 = !DILocation(line: 72, column: 14, scope: !4853)
!4878 = !DILocation(line: 72, column: 2, scope: !4853)
!4879 = !DILocation(line: 72, column: 7, scope: !4853)
!4880 = !DILocation(line: 72, column: 12, scope: !4853)
!4881 = !DILocation(line: 73, column: 2, scope: !4853)
!4882 = !DILocation(line: 73, column: 2, scope: !4883)
!4883 = distinct !DILexicalBlock(scope: !4853, file: !4234, line: 73, column: 2)
!4884 = !DILocation(line: 73, column: 2, scope: !4885)
!4885 = distinct !DILexicalBlock(scope: !4883, file: !4234, line: 73, column: 2)
!4886 = !DILocation(line: 73, column: 2, scope: !4887)
!4887 = distinct !DILexicalBlock(scope: !4883, file: !4234, line: 73, column: 2)
!4888 = !DILocation(line: 74, column: 1, scope: !4853)
!4889 = distinct !DISubprogram(name: "__list_add_valid", scope: !4234, file: !4234, line: 45, type: !4890, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !268)
!4890 = !DISubroutineType(types: !4891)
!4891 = !{!503, !216, !216, !216}
!4892 = !DILocalVariable(name: "new", arg: 1, scope: !4889, file: !4234, line: 45, type: !216)
!4893 = !DILocation(line: 45, column: 55, scope: !4889)
!4894 = !DILocalVariable(name: "prev", arg: 2, scope: !4889, file: !4234, line: 46, type: !216)
!4895 = !DILocation(line: 46, column: 23, scope: !4889)
!4896 = !DILocalVariable(name: "next", arg: 3, scope: !4889, file: !4234, line: 47, type: !216)
!4897 = !DILocation(line: 47, column: 23, scope: !4889)
!4898 = !DILocation(line: 49, column: 2, scope: !4889)
!4899 = distinct !DISubprogram(name: "gb_string_get", scope: !1, file: !1, line: 185, type: !4900, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !268)
!4900 = !DISubroutineType(types: !4901)
!4901 = !{!205, !3830, !1367}
!4902 = !DILocalVariable(name: "intf", arg: 1, scope: !4899, file: !1, line: 185, type: !3830)
!4903 = !DILocation(line: 185, column: 49, scope: !4899)
!4904 = !DILocalVariable(name: "string_id", arg: 2, scope: !4899, file: !1, line: 185, type: !1367)
!4905 = !DILocation(line: 185, column: 58, scope: !4899)
!4906 = !DILocalVariable(name: "desc_string", scope: !4899, file: !1, line: 187, type: !4907)
!4907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!4908 = !DILocation(line: 187, column: 36, scope: !4899)
!4909 = !DILocalVariable(name: "descriptor", scope: !4899, file: !1, line: 188, type: !208)
!4910 = !DILocation(line: 188, column: 24, scope: !4899)
!4911 = !DILocalVariable(name: "found", scope: !4899, file: !1, line: 189, type: !503)
!4912 = !DILocation(line: 189, column: 7, scope: !4899)
!4913 = !DILocalVariable(name: "string", scope: !4899, file: !1, line: 190, type: !205)
!4914 = !DILocation(line: 190, column: 8, scope: !4899)
!4915 = !DILocation(line: 193, column: 7, scope: !4916)
!4916 = distinct !DILexicalBlock(scope: !4899, file: !1, line: 193, column: 6)
!4917 = !DILocation(line: 193, column: 6, scope: !4899)
!4918 = !DILocation(line: 194, column: 3, scope: !4916)
!4919 = !DILocalVariable(name: "__mptr", scope: !4920, file: !1, line: 196, type: !207)
!4920 = distinct !DILexicalBlock(scope: !4921, file: !1, line: 196, column: 2)
!4921 = distinct !DILexicalBlock(scope: !4899, file: !1, line: 196, column: 2)
!4922 = !DILocation(line: 196, column: 2, scope: !4920)
!4923 = !DILocation(line: 196, column: 2, scope: !4924)
!4924 = distinct !DILexicalBlock(scope: !4920, file: !1, line: 196, column: 2)
!4925 = !DILocation(line: 196, column: 2, scope: !4921)
!4926 = !DILocation(line: 196, column: 2, scope: !4927)
!4927 = distinct !DILexicalBlock(scope: !4921, file: !1, line: 196, column: 2)
!4928 = !DILocation(line: 197, column: 7, scope: !4929)
!4929 = distinct !DILexicalBlock(scope: !4930, file: !1, line: 197, column: 7)
!4930 = distinct !DILexicalBlock(scope: !4927, file: !1, line: 196, column: 64)
!4931 = !DILocation(line: 197, column: 19, scope: !4929)
!4932 = !DILocation(line: 197, column: 24, scope: !4929)
!4933 = !DILocation(line: 197, column: 7, scope: !4930)
!4934 = !DILocation(line: 198, column: 4, scope: !4929)
!4935 = !DILocation(line: 200, column: 17, scope: !4930)
!4936 = !DILocation(line: 200, column: 29, scope: !4930)
!4937 = !DILocation(line: 200, column: 15, scope: !4930)
!4938 = !DILocation(line: 201, column: 7, scope: !4939)
!4939 = distinct !DILexicalBlock(scope: !4930, file: !1, line: 201, column: 7)
!4940 = !DILocation(line: 201, column: 20, scope: !4939)
!4941 = !DILocation(line: 201, column: 26, scope: !4939)
!4942 = !DILocation(line: 201, column: 23, scope: !4939)
!4943 = !DILocation(line: 201, column: 7, scope: !4930)
!4944 = !DILocation(line: 202, column: 10, scope: !4945)
!4945 = distinct !DILexicalBlock(scope: !4939, file: !1, line: 201, column: 37)
!4946 = !DILocation(line: 203, column: 4, scope: !4945)
!4947 = !DILocation(line: 205, column: 2, scope: !4930)
!4948 = !DILocalVariable(name: "__mptr", scope: !4949, file: !1, line: 196, type: !207)
!4949 = distinct !DILexicalBlock(scope: !4927, file: !1, line: 196, column: 2)
!4950 = !DILocation(line: 196, column: 2, scope: !4949)
!4951 = !DILocation(line: 196, column: 2, scope: !4952)
!4952 = distinct !DILexicalBlock(scope: !4949, file: !1, line: 196, column: 2)
!4953 = distinct !{!4953, !4925, !4954}
!4954 = !DILocation(line: 205, column: 2, scope: !4921)
!4955 = !DILocation(line: 206, column: 7, scope: !4956)
!4956 = distinct !DILexicalBlock(scope: !4899, file: !1, line: 206, column: 6)
!4957 = !DILocation(line: 206, column: 6, scope: !4899)
!4958 = !DILocation(line: 207, column: 10, scope: !4956)
!4959 = !DILocation(line: 207, column: 3, scope: !4956)
!4960 = !DILocation(line: 210, column: 20, scope: !4899)
!4961 = !DILocation(line: 210, column: 33, scope: !4899)
!4962 = !DILocation(line: 210, column: 19, scope: !4899)
!4963 = !DILocation(line: 210, column: 41, scope: !4899)
!4964 = !DILocation(line: 210, column: 54, scope: !4899)
!4965 = !DILocation(line: 210, column: 61, scope: !4899)
!4966 = !DILocation(line: 210, column: 11, scope: !4899)
!4967 = !DILocation(line: 210, column: 9, scope: !4899)
!4968 = !DILocation(line: 212, column: 7, scope: !4969)
!4969 = distinct !DILexicalBlock(scope: !4899, file: !1, line: 212, column: 6)
!4970 = !DILocation(line: 212, column: 6, scope: !4899)
!4971 = !DILocation(line: 213, column: 10, scope: !4969)
!4972 = !DILocation(line: 213, column: 3, scope: !4969)
!4973 = !DILocation(line: 214, column: 2, scope: !4899)
!4974 = !DILocation(line: 214, column: 9, scope: !4899)
!4975 = !DILocation(line: 214, column: 22, scope: !4899)
!4976 = !DILocation(line: 214, column: 30, scope: !4899)
!4977 = !DILocation(line: 217, column: 30, scope: !4899)
!4978 = !DILocation(line: 217, column: 2, scope: !4899)
!4979 = !DILocation(line: 219, column: 9, scope: !4899)
!4980 = !DILocation(line: 219, column: 2, scope: !4899)
!4981 = !DILocation(line: 220, column: 1, scope: !4899)
!4982 = distinct !DISubprogram(name: "IS_ERR", scope: !4983, file: !4983, line: 34, type: !4984, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !268)
!4983 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!4984 = !DISubroutineType(types: !4985)
!4985 = !{!503, !2138}
!4986 = !DILocalVariable(name: "ptr", arg: 1, scope: !4982, file: !4983, line: 34, type: !2138)
!4987 = !DILocation(line: 34, column: 60, scope: !4982)
!4988 = !DILocation(line: 36, column: 9, scope: !4982)
!4989 = !DILocation(line: 36, column: 2, scope: !4982)
!4990 = distinct !DISubprogram(name: "release_manifest_descriptor", scope: !1, file: !1, line: 45, type: !4991, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !268)
!4991 = !DISubroutineType(types: !4992)
!4992 = !{null, !208}
!4993 = !DILocalVariable(name: "descriptor", arg: 1, scope: !4990, file: !1, line: 45, type: !208)
!4994 = !DILocation(line: 45, column: 63, scope: !4990)
!4995 = !DILocation(line: 47, column: 12, scope: !4990)
!4996 = !DILocation(line: 47, column: 24, scope: !4990)
!4997 = !DILocation(line: 47, column: 2, scope: !4990)
!4998 = !DILocation(line: 48, column: 8, scope: !4990)
!4999 = !DILocation(line: 48, column: 2, scope: !4990)
!5000 = !DILocation(line: 49, column: 1, scope: !4990)
!5001 = distinct !DISubprogram(name: "gb_manifest_parse_bundles", scope: !1, file: !1, line: 312, type: !5002, scopeLine: 313, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !268)
!5002 = !DISubroutineType(types: !5003)
!5003 = !{!430, !3830}
!5004 = !DILocalVariable(name: "intf", arg: 1, scope: !5001, file: !1, line: 312, type: !3830)
!5005 = !DILocation(line: 312, column: 59, scope: !5001)
!5006 = !DILocalVariable(name: "desc", scope: !5001, file: !1, line: 314, type: !208)
!5007 = !DILocation(line: 314, column: 24, scope: !5001)
!5008 = !DILocalVariable(name: "bundle", scope: !5001, file: !1, line: 315, type: !231)
!5009 = !DILocation(line: 315, column: 20, scope: !5001)
!5010 = !DILocalVariable(name: "bundle_next", scope: !5001, file: !1, line: 316, type: !231)
!5011 = !DILocation(line: 316, column: 20, scope: !5001)
!5012 = !DILocalVariable(name: "count", scope: !5001, file: !1, line: 317, type: !430)
!5013 = !DILocation(line: 317, column: 6, scope: !5001)
!5014 = !DILocalVariable(name: "bundle_id", scope: !5001, file: !1, line: 318, type: !1367)
!5015 = !DILocation(line: 318, column: 5, scope: !5001)
!5016 = !DILocalVariable(name: "class", scope: !5001, file: !1, line: 319, type: !1367)
!5017 = !DILocation(line: 319, column: 5, scope: !5001)
!5018 = !DILocation(line: 321, column: 2, scope: !5001)
!5019 = !DILocation(line: 321, column: 38, scope: !5001)
!5020 = !DILocation(line: 321, column: 17, scope: !5001)
!5021 = !DILocation(line: 321, column: 15, scope: !5001)
!5022 = !DILocalVariable(name: "desc_bundle", scope: !5023, file: !1, line: 322, type: !5024)
!5023 = distinct !DILexicalBlock(scope: !5001, file: !1, line: 321, column: 46)
!5024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!5025 = !DILocation(line: 322, column: 37, scope: !5023)
!5026 = !DILocation(line: 325, column: 17, scope: !5023)
!5027 = !DILocation(line: 325, column: 23, scope: !5023)
!5028 = !DILocation(line: 325, column: 15, scope: !5023)
!5029 = !DILocation(line: 326, column: 15, scope: !5023)
!5030 = !DILocation(line: 326, column: 28, scope: !5023)
!5031 = !DILocation(line: 326, column: 13, scope: !5023)
!5032 = !DILocation(line: 327, column: 11, scope: !5023)
!5033 = !DILocation(line: 327, column: 24, scope: !5023)
!5034 = !DILocation(line: 327, column: 9, scope: !5023)
!5035 = !DILocation(line: 330, column: 31, scope: !5023)
!5036 = !DILocation(line: 330, column: 3, scope: !5023)
!5037 = !DILocation(line: 333, column: 7, scope: !5038)
!5038 = distinct !DILexicalBlock(scope: !5023, file: !1, line: 333, column: 7)
!5039 = !DILocation(line: 333, column: 17, scope: !5038)
!5040 = !DILocation(line: 333, column: 7, scope: !5023)
!5041 = !DILocation(line: 336, column: 31, scope: !5042)
!5042 = distinct !DILexicalBlock(scope: !5038, file: !1, line: 333, column: 42)
!5043 = !DILocation(line: 336, column: 37, scope: !5042)
!5044 = !DILocation(line: 337, column: 9, scope: !5042)
!5045 = !DILocation(line: 336, column: 4, scope: !5042)
!5046 = !DILocation(line: 338, column: 4, scope: !5042)
!5047 = distinct !{!5047, !5018, !5048}
!5048 = !DILocation(line: 376, column: 2, scope: !5001)
!5049 = !DILocation(line: 342, column: 7, scope: !5050)
!5050 = distinct !DILexicalBlock(scope: !5023, file: !1, line: 342, column: 7)
!5051 = !DILocation(line: 342, column: 13, scope: !5050)
!5052 = !DILocation(line: 342, column: 7, scope: !5023)
!5053 = !DILocation(line: 343, column: 4, scope: !5054)
!5054 = distinct !DILexicalBlock(scope: !5050, file: !1, line: 342, column: 39)
!5055 = !DILocation(line: 346, column: 4, scope: !5054)
!5056 = !DILocation(line: 349, column: 29, scope: !5023)
!5057 = !DILocation(line: 349, column: 35, scope: !5023)
!5058 = !DILocation(line: 349, column: 46, scope: !5023)
!5059 = !DILocation(line: 349, column: 12, scope: !5023)
!5060 = !DILocation(line: 349, column: 10, scope: !5023)
!5061 = !DILocation(line: 350, column: 8, scope: !5062)
!5062 = distinct !DILexicalBlock(scope: !5023, file: !1, line: 350, column: 7)
!5063 = !DILocation(line: 350, column: 7, scope: !5023)
!5064 = !DILocation(line: 351, column: 4, scope: !5062)
!5065 = !DILocation(line: 370, column: 33, scope: !5066)
!5066 = distinct !DILexicalBlock(scope: !5023, file: !1, line: 370, column: 7)
!5067 = !DILocation(line: 370, column: 8, scope: !5066)
!5068 = !DILocation(line: 370, column: 7, scope: !5023)
!5069 = !DILocation(line: 371, column: 22, scope: !5070)
!5070 = distinct !DILexicalBlock(scope: !5066, file: !1, line: 370, column: 42)
!5071 = !DILocation(line: 371, column: 4, scope: !5070)
!5072 = !DILocation(line: 372, column: 4, scope: !5070)
!5073 = !DILocation(line: 375, column: 8, scope: !5023)
!5074 = !DILocation(line: 378, column: 9, scope: !5001)
!5075 = !DILocation(line: 378, column: 2, scope: !5001)
!5076 = !DILabel(scope: !5001, name: "cleanup", file: !1, line: 379)
!5077 = !DILocation(line: 379, column: 1, scope: !5001)
!5078 = !DILocalVariable(name: "__mptr", scope: !5079, file: !1, line: 381, type: !207)
!5079 = distinct !DILexicalBlock(scope: !5080, file: !1, line: 381, column: 2)
!5080 = distinct !DILexicalBlock(scope: !5001, file: !1, line: 381, column: 2)
!5081 = !DILocation(line: 381, column: 2, scope: !5079)
!5082 = !DILocation(line: 381, column: 2, scope: !5083)
!5083 = distinct !DILexicalBlock(scope: !5079, file: !1, line: 381, column: 2)
!5084 = !DILocation(line: 381, column: 2, scope: !5080)
!5085 = !DILocalVariable(name: "__mptr", scope: !5086, file: !1, line: 381, type: !207)
!5086 = distinct !DILexicalBlock(scope: !5080, file: !1, line: 381, column: 2)
!5087 = !DILocation(line: 381, column: 2, scope: !5086)
!5088 = !DILocation(line: 381, column: 2, scope: !5089)
!5089 = distinct !DILexicalBlock(scope: !5086, file: !1, line: 381, column: 2)
!5090 = !DILocation(line: 381, column: 2, scope: !5091)
!5091 = distinct !DILexicalBlock(scope: !5080, file: !1, line: 381, column: 2)
!5092 = !DILocation(line: 382, column: 21, scope: !5093)
!5093 = distinct !DILexicalBlock(scope: !5091, file: !1, line: 381, column: 71)
!5094 = !DILocation(line: 382, column: 3, scope: !5093)
!5095 = !DILocation(line: 383, column: 8, scope: !5093)
!5096 = !DILocation(line: 384, column: 2, scope: !5093)
!5097 = !DILocalVariable(name: "__mptr", scope: !5098, file: !1, line: 381, type: !207)
!5098 = distinct !DILexicalBlock(scope: !5091, file: !1, line: 381, column: 2)
!5099 = !DILocation(line: 381, column: 2, scope: !5098)
!5100 = !DILocation(line: 381, column: 2, scope: !5101)
!5101 = distinct !DILexicalBlock(scope: !5098, file: !1, line: 381, column: 2)
!5102 = distinct !{!5102, !5084, !5103}
!5103 = !DILocation(line: 384, column: 2, scope: !5080)
!5104 = !DILocation(line: 385, column: 2, scope: !5001)
!5105 = !DILocation(line: 386, column: 1, scope: !5001)
!5106 = distinct !DISubprogram(name: "ERR_PTR", scope: !4983, file: !4983, line: 24, type: !5107, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !268)
!5107 = !DISubroutineType(types: !5108)
!5108 = !{!207, !329}
!5109 = !DILocalVariable(name: "error", arg: 1, scope: !5106, file: !4983, line: 24, type: !329)
!5110 = !DILocation(line: 24, column: 48, scope: !5106)
!5111 = !DILocation(line: 26, column: 18, scope: !5106)
!5112 = !DILocation(line: 26, column: 9, scope: !5106)
!5113 = !DILocation(line: 26, column: 2, scope: !5106)
!5114 = distinct !DISubprogram(name: "list_del", scope: !4234, file: !4234, line: 144, type: !5115, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !268)
!5115 = !DISubroutineType(types: !5116)
!5116 = !{null, !216}
!5117 = !DILocalVariable(name: "entry", arg: 1, scope: !5114, file: !4234, line: 144, type: !216)
!5118 = !DILocation(line: 144, column: 47, scope: !5114)
!5119 = !DILocation(line: 146, column: 19, scope: !5114)
!5120 = !DILocation(line: 146, column: 2, scope: !5114)
!5121 = !DILocation(line: 147, column: 2, scope: !5114)
!5122 = !DILocation(line: 147, column: 9, scope: !5114)
!5123 = !DILocation(line: 147, column: 14, scope: !5114)
!5124 = !DILocation(line: 148, column: 2, scope: !5114)
!5125 = !DILocation(line: 148, column: 9, scope: !5114)
!5126 = !DILocation(line: 148, column: 14, scope: !5114)
!5127 = !DILocation(line: 149, column: 1, scope: !5114)
!5128 = distinct !DISubprogram(name: "__list_del_entry", scope: !4234, file: !4234, line: 130, type: !5115, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !268)
!5129 = !DILocalVariable(name: "entry", arg: 1, scope: !5128, file: !4234, line: 130, type: !216)
!5130 = !DILocation(line: 130, column: 55, scope: !5128)
!5131 = !DILocation(line: 132, column: 30, scope: !5132)
!5132 = distinct !DILexicalBlock(scope: !5128, file: !4234, line: 132, column: 6)
!5133 = !DILocation(line: 132, column: 7, scope: !5132)
!5134 = !DILocation(line: 132, column: 6, scope: !5128)
!5135 = !DILocation(line: 133, column: 3, scope: !5132)
!5136 = !DILocation(line: 135, column: 13, scope: !5128)
!5137 = !DILocation(line: 135, column: 20, scope: !5128)
!5138 = !DILocation(line: 135, column: 26, scope: !5128)
!5139 = !DILocation(line: 135, column: 33, scope: !5128)
!5140 = !DILocation(line: 135, column: 2, scope: !5128)
!5141 = !DILocation(line: 136, column: 1, scope: !5128)
!5142 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !4234, file: !4234, line: 51, type: !5143, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !268)
!5143 = !DISubroutineType(types: !5144)
!5144 = !{!503, !216}
!5145 = !DILocalVariable(name: "entry", arg: 1, scope: !5142, file: !4234, line: 51, type: !216)
!5146 = !DILocation(line: 51, column: 61, scope: !5142)
!5147 = !DILocation(line: 53, column: 2, scope: !5142)
!5148 = distinct !DISubprogram(name: "__list_del", scope: !4234, file: !4234, line: 110, type: !4768, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !268)
!5149 = !DILocalVariable(name: "prev", arg: 1, scope: !5148, file: !4234, line: 110, type: !216)
!5150 = !DILocation(line: 110, column: 50, scope: !5148)
!5151 = !DILocalVariable(name: "next", arg: 2, scope: !5148, file: !4234, line: 110, type: !216)
!5152 = !DILocation(line: 110, column: 75, scope: !5148)
!5153 = !DILocation(line: 112, column: 15, scope: !5148)
!5154 = !DILocation(line: 112, column: 2, scope: !5148)
!5155 = !DILocation(line: 112, column: 8, scope: !5148)
!5156 = !DILocation(line: 112, column: 13, scope: !5148)
!5157 = !DILocation(line: 113, column: 2, scope: !5148)
!5158 = !DILocation(line: 113, column: 2, scope: !5159)
!5159 = distinct !DILexicalBlock(scope: !5148, file: !4234, line: 113, column: 2)
!5160 = !DILocation(line: 113, column: 2, scope: !5161)
!5161 = distinct !DILexicalBlock(scope: !5159, file: !4234, line: 113, column: 2)
!5162 = !DILocation(line: 113, column: 2, scope: !5163)
!5163 = distinct !DILexicalBlock(scope: !5159, file: !4234, line: 113, column: 2)
!5164 = !DILocation(line: 114, column: 1, scope: !5148)
!5165 = distinct !DISubprogram(name: "get_next_bundle_desc", scope: !1, file: !1, line: 76, type: !5166, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !268)
!5166 = !DISubroutineType(types: !5167)
!5167 = !{!208, !3830}
!5168 = !DILocalVariable(name: "intf", arg: 1, scope: !5165, file: !1, line: 76, type: !3830)
!5169 = !DILocation(line: 76, column: 72, scope: !5165)
!5170 = !DILocalVariable(name: "descriptor", scope: !5165, file: !1, line: 78, type: !208)
!5171 = !DILocation(line: 78, column: 24, scope: !5165)
!5172 = !DILocalVariable(name: "next", scope: !5165, file: !1, line: 79, type: !208)
!5173 = !DILocation(line: 79, column: 24, scope: !5165)
!5174 = !DILocalVariable(name: "__mptr", scope: !5175, file: !1, line: 81, type: !207)
!5175 = distinct !DILexicalBlock(scope: !5176, file: !1, line: 81, column: 2)
!5176 = distinct !DILexicalBlock(scope: !5165, file: !1, line: 81, column: 2)
!5177 = !DILocation(line: 81, column: 2, scope: !5175)
!5178 = !DILocation(line: 81, column: 2, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !5175, file: !1, line: 81, column: 2)
!5180 = !DILocation(line: 81, column: 2, scope: !5176)
!5181 = !DILocalVariable(name: "__mptr", scope: !5182, file: !1, line: 81, type: !207)
!5182 = distinct !DILexicalBlock(scope: !5176, file: !1, line: 81, column: 2)
!5183 = !DILocation(line: 81, column: 2, scope: !5182)
!5184 = !DILocation(line: 81, column: 2, scope: !5185)
!5185 = distinct !DILexicalBlock(scope: !5182, file: !1, line: 81, column: 2)
!5186 = !DILocation(line: 81, column: 2, scope: !5187)
!5187 = distinct !DILexicalBlock(scope: !5176, file: !1, line: 81, column: 2)
!5188 = !DILocation(line: 82, column: 7, scope: !5189)
!5189 = distinct !DILexicalBlock(scope: !5187, file: !1, line: 82, column: 7)
!5190 = !DILocation(line: 82, column: 19, scope: !5189)
!5191 = !DILocation(line: 82, column: 24, scope: !5189)
!5192 = !DILocation(line: 82, column: 7, scope: !5187)
!5193 = !DILocation(line: 83, column: 11, scope: !5189)
!5194 = !DILocation(line: 83, column: 4, scope: !5189)
!5195 = !DILocation(line: 82, column: 27, scope: !5189)
!5196 = !DILocalVariable(name: "__mptr", scope: !5197, file: !1, line: 81, type: !207)
!5197 = distinct !DILexicalBlock(scope: !5187, file: !1, line: 81, column: 2)
!5198 = !DILocation(line: 81, column: 2, scope: !5197)
!5199 = !DILocation(line: 81, column: 2, scope: !5200)
!5200 = distinct !DILexicalBlock(scope: !5197, file: !1, line: 81, column: 2)
!5201 = distinct !{!5201, !5180, !5202}
!5202 = !DILocation(line: 83, column: 11, scope: !5176)
!5203 = !DILocation(line: 85, column: 2, scope: !5165)
!5204 = !DILocation(line: 86, column: 1, scope: !5165)
!5205 = distinct !DISubprogram(name: "release_cport_descriptors", scope: !1, file: !1, line: 60, type: !5206, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !268)
!5206 = !DISubroutineType(types: !5207)
!5207 = !{null, !216, !1367}
!5208 = !DILocalVariable(name: "head", arg: 1, scope: !5205, file: !1, line: 60, type: !216)
!5209 = !DILocation(line: 60, column: 57, scope: !5205)
!5210 = !DILocalVariable(name: "bundle_id", arg: 2, scope: !5205, file: !1, line: 60, type: !1367)
!5211 = !DILocation(line: 60, column: 66, scope: !5205)
!5212 = !DILocalVariable(name: "desc", scope: !5205, file: !1, line: 62, type: !208)
!5213 = !DILocation(line: 62, column: 24, scope: !5205)
!5214 = !DILocalVariable(name: "tmp", scope: !5205, file: !1, line: 62, type: !208)
!5215 = !DILocation(line: 62, column: 31, scope: !5205)
!5216 = !DILocalVariable(name: "desc_cport", scope: !5205, file: !1, line: 63, type: !4047)
!5217 = !DILocation(line: 63, column: 35, scope: !5205)
!5218 = !DILocalVariable(name: "__mptr", scope: !5219, file: !1, line: 65, type: !207)
!5219 = distinct !DILexicalBlock(scope: !5220, file: !1, line: 65, column: 2)
!5220 = distinct !DILexicalBlock(scope: !5205, file: !1, line: 65, column: 2)
!5221 = !DILocation(line: 65, column: 2, scope: !5219)
!5222 = !DILocation(line: 65, column: 2, scope: !5223)
!5223 = distinct !DILexicalBlock(scope: !5219, file: !1, line: 65, column: 2)
!5224 = !DILocation(line: 65, column: 2, scope: !5220)
!5225 = !DILocalVariable(name: "__mptr", scope: !5226, file: !1, line: 65, type: !207)
!5226 = distinct !DILexicalBlock(scope: !5220, file: !1, line: 65, column: 2)
!5227 = !DILocation(line: 65, column: 2, scope: !5226)
!5228 = !DILocation(line: 65, column: 2, scope: !5229)
!5229 = distinct !DILexicalBlock(scope: !5226, file: !1, line: 65, column: 2)
!5230 = !DILocation(line: 65, column: 2, scope: !5231)
!5231 = distinct !DILexicalBlock(scope: !5220, file: !1, line: 65, column: 2)
!5232 = !DILocation(line: 66, column: 16, scope: !5233)
!5233 = distinct !DILexicalBlock(scope: !5231, file: !1, line: 65, column: 51)
!5234 = !DILocation(line: 66, column: 22, scope: !5233)
!5235 = !DILocation(line: 66, column: 14, scope: !5233)
!5236 = !DILocation(line: 68, column: 7, scope: !5237)
!5237 = distinct !DILexicalBlock(scope: !5233, file: !1, line: 68, column: 7)
!5238 = !DILocation(line: 68, column: 13, scope: !5237)
!5239 = !DILocation(line: 68, column: 18, scope: !5237)
!5240 = !DILocation(line: 68, column: 7, scope: !5233)
!5241 = !DILocation(line: 69, column: 4, scope: !5237)
!5242 = !DILocation(line: 71, column: 7, scope: !5243)
!5243 = distinct !DILexicalBlock(scope: !5233, file: !1, line: 71, column: 7)
!5244 = !DILocation(line: 71, column: 19, scope: !5243)
!5245 = !DILocation(line: 71, column: 29, scope: !5243)
!5246 = !DILocation(line: 71, column: 26, scope: !5243)
!5247 = !DILocation(line: 71, column: 7, scope: !5233)
!5248 = !DILocation(line: 72, column: 32, scope: !5243)
!5249 = !DILocation(line: 72, column: 4, scope: !5243)
!5250 = !DILocation(line: 73, column: 2, scope: !5233)
!5251 = !DILocalVariable(name: "__mptr", scope: !5252, file: !1, line: 65, type: !207)
!5252 = distinct !DILexicalBlock(scope: !5231, file: !1, line: 65, column: 2)
!5253 = !DILocation(line: 65, column: 2, scope: !5252)
!5254 = !DILocation(line: 65, column: 2, scope: !5255)
!5255 = distinct !DILexicalBlock(scope: !5252, file: !1, line: 65, column: 2)
!5256 = distinct !{!5256, !5224, !5257}
!5257 = !DILocation(line: 73, column: 2, scope: !5220)
!5258 = !DILocation(line: 74, column: 1, scope: !5205)
!5259 = distinct !DISubprogram(name: "gb_manifest_parse_cports", scope: !1, file: !1, line: 228, type: !5260, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !268)
!5260 = !DISubroutineType(types: !5261)
!5261 = !{!430, !231}
!5262 = !DILocalVariable(name: "bundle", arg: 1, scope: !5259, file: !1, line: 228, type: !231)
!5263 = !DILocation(line: 228, column: 55, scope: !5259)
!5264 = !DILocalVariable(name: "intf", scope: !5259, file: !1, line: 230, type: !3830)
!5265 = !DILocation(line: 230, column: 23, scope: !5259)
!5266 = !DILocation(line: 230, column: 30, scope: !5259)
!5267 = !DILocation(line: 230, column: 38, scope: !5259)
!5268 = !DILocalVariable(name: "desc_cport", scope: !5259, file: !1, line: 231, type: !4047)
!5269 = !DILocation(line: 231, column: 35, scope: !5259)
!5270 = !DILocalVariable(name: "desc", scope: !5259, file: !1, line: 232, type: !208)
!5271 = !DILocation(line: 232, column: 24, scope: !5259)
!5272 = !DILocalVariable(name: "next", scope: !5259, file: !1, line: 232, type: !208)
!5273 = !DILocation(line: 232, column: 31, scope: !5259)
!5274 = !DILocalVariable(name: "tmp", scope: !5259, file: !1, line: 232, type: !208)
!5275 = !DILocation(line: 232, column: 38, scope: !5259)
!5276 = !DILocalVariable(name: "list", scope: !5259, file: !1, line: 233, type: !212)
!5277 = !DILocation(line: 233, column: 2, scope: !5259)
!5278 = !DILocalVariable(name: "bundle_id", scope: !5259, file: !1, line: 234, type: !1367)
!5279 = !DILocation(line: 234, column: 5, scope: !5259)
!5280 = !DILocation(line: 234, column: 17, scope: !5259)
!5281 = !DILocation(line: 234, column: 25, scope: !5259)
!5282 = !DILocalVariable(name: "cport_id", scope: !5259, file: !1, line: 235, type: !875)
!5283 = !DILocation(line: 235, column: 6, scope: !5259)
!5284 = !DILocalVariable(name: "count", scope: !5259, file: !1, line: 236, type: !430)
!5285 = !DILocation(line: 236, column: 6, scope: !5259)
!5286 = !DILocalVariable(name: "i", scope: !5259, file: !1, line: 237, type: !280)
!5287 = !DILocation(line: 237, column: 6, scope: !5259)
!5288 = !DILocalVariable(name: "__mptr", scope: !5289, file: !1, line: 240, type: !207)
!5289 = distinct !DILexicalBlock(scope: !5290, file: !1, line: 240, column: 2)
!5290 = distinct !DILexicalBlock(scope: !5259, file: !1, line: 240, column: 2)
!5291 = !DILocation(line: 240, column: 2, scope: !5289)
!5292 = !DILocation(line: 240, column: 2, scope: !5293)
!5293 = distinct !DILexicalBlock(scope: !5289, file: !1, line: 240, column: 2)
!5294 = !DILocation(line: 240, column: 2, scope: !5290)
!5295 = !DILocalVariable(name: "__mptr", scope: !5296, file: !1, line: 240, type: !207)
!5296 = distinct !DILexicalBlock(scope: !5290, file: !1, line: 240, column: 2)
!5297 = !DILocation(line: 240, column: 2, scope: !5296)
!5298 = !DILocation(line: 240, column: 2, scope: !5299)
!5299 = distinct !DILexicalBlock(scope: !5296, file: !1, line: 240, column: 2)
!5300 = !DILocation(line: 240, column: 2, scope: !5301)
!5301 = distinct !DILexicalBlock(scope: !5290, file: !1, line: 240, column: 2)
!5302 = !DILocation(line: 241, column: 7, scope: !5303)
!5303 = distinct !DILexicalBlock(scope: !5304, file: !1, line: 241, column: 7)
!5304 = distinct !DILexicalBlock(scope: !5301, file: !1, line: 240, column: 69)
!5305 = !DILocation(line: 241, column: 13, scope: !5303)
!5306 = !DILocation(line: 241, column: 18, scope: !5303)
!5307 = !DILocation(line: 241, column: 7, scope: !5304)
!5308 = !DILocation(line: 242, column: 4, scope: !5303)
!5309 = !DILocation(line: 244, column: 16, scope: !5304)
!5310 = !DILocation(line: 244, column: 22, scope: !5304)
!5311 = !DILocation(line: 244, column: 14, scope: !5304)
!5312 = !DILocation(line: 245, column: 7, scope: !5313)
!5313 = distinct !DILexicalBlock(scope: !5304, file: !1, line: 245, column: 7)
!5314 = !DILocation(line: 245, column: 19, scope: !5313)
!5315 = !DILocation(line: 245, column: 29, scope: !5313)
!5316 = !DILocation(line: 245, column: 26, scope: !5313)
!5317 = !DILocation(line: 245, column: 7, scope: !5304)
!5318 = !DILocation(line: 246, column: 4, scope: !5313)
!5319 = !DILocation(line: 248, column: 14, scope: !5304)
!5320 = !DILocation(line: 248, column: 12, scope: !5304)
!5321 = !DILocation(line: 249, column: 7, scope: !5322)
!5322 = distinct !DILexicalBlock(scope: !5304, file: !1, line: 249, column: 7)
!5323 = !DILocation(line: 249, column: 16, scope: !5322)
!5324 = !DILocation(line: 249, column: 7, scope: !5304)
!5325 = !DILocation(line: 250, column: 4, scope: !5322)
!5326 = !DILocation(line: 253, column: 7, scope: !5327)
!5327 = distinct !DILexicalBlock(scope: !5304, file: !1, line: 253, column: 7)
!5328 = !DILocation(line: 253, column: 16, scope: !5327)
!5329 = !DILocation(line: 253, column: 7, scope: !5304)
!5330 = !DILocation(line: 254, column: 4, scope: !5331)
!5331 = distinct !DILexicalBlock(scope: !5327, file: !1, line: 253, column: 40)
!5332 = !DILocation(line: 256, column: 4, scope: !5331)
!5333 = !DILocalVariable(name: "__mptr", scope: !5334, file: !1, line: 263, type: !207)
!5334 = distinct !DILexicalBlock(scope: !5335, file: !1, line: 263, column: 3)
!5335 = distinct !DILexicalBlock(scope: !5304, file: !1, line: 263, column: 3)
!5336 = !DILocation(line: 263, column: 3, scope: !5334)
!5337 = !DILocation(line: 263, column: 3, scope: !5338)
!5338 = distinct !DILexicalBlock(scope: !5334, file: !1, line: 263, column: 3)
!5339 = !DILocation(line: 263, column: 3, scope: !5335)
!5340 = !DILocation(line: 263, column: 3, scope: !5341)
!5341 = distinct !DILexicalBlock(scope: !5335, file: !1, line: 263, column: 3)
!5342 = !DILocation(line: 264, column: 17, scope: !5343)
!5343 = distinct !DILexicalBlock(scope: !5341, file: !1, line: 263, column: 42)
!5344 = !DILocation(line: 264, column: 22, scope: !5343)
!5345 = !DILocation(line: 264, column: 15, scope: !5343)
!5346 = !DILocation(line: 265, column: 8, scope: !5347)
!5347 = distinct !DILexicalBlock(scope: !5343, file: !1, line: 265, column: 8)
!5348 = !DILocation(line: 265, column: 20, scope: !5347)
!5349 = !DILocation(line: 265, column: 17, scope: !5347)
!5350 = !DILocation(line: 265, column: 8, scope: !5343)
!5351 = !DILocation(line: 266, column: 5, scope: !5352)
!5352 = distinct !DILexicalBlock(scope: !5347, file: !1, line: 265, column: 49)
!5353 = !DILocation(line: 268, column: 5, scope: !5352)
!5354 = !DILocation(line: 270, column: 3, scope: !5343)
!5355 = !DILocalVariable(name: "__mptr", scope: !5356, file: !1, line: 263, type: !207)
!5356 = distinct !DILexicalBlock(scope: !5341, file: !1, line: 263, column: 3)
!5357 = !DILocation(line: 263, column: 3, scope: !5356)
!5358 = !DILocation(line: 263, column: 3, scope: !5359)
!5359 = distinct !DILexicalBlock(scope: !5356, file: !1, line: 263, column: 3)
!5360 = distinct !{!5360, !5339, !5361}
!5361 = !DILocation(line: 270, column: 3, scope: !5335)
!5362 = !DILocation(line: 271, column: 19, scope: !5304)
!5363 = !DILocation(line: 271, column: 25, scope: !5304)
!5364 = !DILocation(line: 271, column: 3, scope: !5304)
!5365 = !DILocation(line: 272, column: 8, scope: !5304)
!5366 = !DILocation(line: 273, column: 2, scope: !5304)
!5367 = !DILocalVariable(name: "__mptr", scope: !5368, file: !1, line: 240, type: !207)
!5368 = distinct !DILexicalBlock(scope: !5301, file: !1, line: 240, column: 2)
!5369 = !DILocation(line: 240, column: 2, scope: !5368)
!5370 = !DILocation(line: 240, column: 2, scope: !5371)
!5371 = distinct !DILexicalBlock(scope: !5368, file: !1, line: 240, column: 2)
!5372 = distinct !{!5372, !5294, !5373}
!5373 = !DILocation(line: 273, column: 2, scope: !5290)
!5374 = !DILocation(line: 275, column: 7, scope: !5375)
!5375 = distinct !DILexicalBlock(scope: !5259, file: !1, line: 275, column: 6)
!5376 = !DILocation(line: 275, column: 6, scope: !5259)
!5377 = !DILocation(line: 276, column: 3, scope: !5375)
!5378 = !DILocation(line: 278, column: 31, scope: !5259)
!5379 = !DILocation(line: 278, column: 23, scope: !5259)
!5380 = !DILocation(line: 278, column: 2, scope: !5259)
!5381 = !DILocation(line: 278, column: 10, scope: !5259)
!5382 = !DILocation(line: 278, column: 21, scope: !5259)
!5383 = !DILocation(line: 280, column: 7, scope: !5384)
!5384 = distinct !DILexicalBlock(scope: !5259, file: !1, line: 280, column: 6)
!5385 = !DILocation(line: 280, column: 15, scope: !5384)
!5386 = !DILocation(line: 280, column: 6, scope: !5259)
!5387 = !DILocation(line: 281, column: 3, scope: !5384)
!5388 = !DILocation(line: 283, column: 23, scope: !5259)
!5389 = !DILocation(line: 283, column: 2, scope: !5259)
!5390 = !DILocation(line: 283, column: 10, scope: !5259)
!5391 = !DILocation(line: 283, column: 21, scope: !5259)
!5392 = !DILocation(line: 285, column: 4, scope: !5259)
!5393 = !DILocalVariable(name: "__mptr", scope: !5394, file: !1, line: 286, type: !207)
!5394 = distinct !DILexicalBlock(scope: !5395, file: !1, line: 286, column: 2)
!5395 = distinct !DILexicalBlock(scope: !5259, file: !1, line: 286, column: 2)
!5396 = !DILocation(line: 286, column: 2, scope: !5394)
!5397 = !DILocation(line: 286, column: 2, scope: !5398)
!5398 = distinct !DILexicalBlock(scope: !5394, file: !1, line: 286, column: 2)
!5399 = !DILocation(line: 286, column: 2, scope: !5395)
!5400 = !DILocalVariable(name: "__mptr", scope: !5401, file: !1, line: 286, type: !207)
!5401 = distinct !DILexicalBlock(scope: !5395, file: !1, line: 286, column: 2)
!5402 = !DILocation(line: 286, column: 2, scope: !5401)
!5403 = !DILocation(line: 286, column: 2, scope: !5404)
!5404 = distinct !DILexicalBlock(scope: !5401, file: !1, line: 286, column: 2)
!5405 = !DILocation(line: 286, column: 2, scope: !5406)
!5406 = distinct !DILexicalBlock(scope: !5395, file: !1, line: 286, column: 2)
!5407 = !DILocation(line: 287, column: 16, scope: !5408)
!5408 = distinct !DILexicalBlock(scope: !5406, file: !1, line: 286, column: 53)
!5409 = !DILocation(line: 287, column: 22, scope: !5408)
!5410 = !DILocation(line: 287, column: 14, scope: !5408)
!5411 = !DILocation(line: 288, column: 11, scope: !5408)
!5412 = !DILocation(line: 288, column: 19, scope: !5408)
!5413 = !DILocation(line: 288, column: 31, scope: !5408)
!5414 = !DILocation(line: 288, column: 3, scope: !5408)
!5415 = !DILocation(line: 288, column: 36, scope: !5408)
!5416 = !DILocation(line: 292, column: 31, scope: !5408)
!5417 = !DILocation(line: 292, column: 3, scope: !5408)
!5418 = !DILocation(line: 293, column: 2, scope: !5408)
!5419 = !DILocalVariable(name: "__mptr", scope: !5420, file: !1, line: 286, type: !207)
!5420 = distinct !DILexicalBlock(scope: !5406, file: !1, line: 286, column: 2)
!5421 = !DILocation(line: 286, column: 2, scope: !5420)
!5422 = !DILocation(line: 286, column: 2, scope: !5423)
!5423 = distinct !DILexicalBlock(scope: !5420, file: !1, line: 286, column: 2)
!5424 = distinct !{!5424, !5399, !5425}
!5425 = !DILocation(line: 293, column: 2, scope: !5395)
!5426 = !DILocation(line: 295, column: 9, scope: !5259)
!5427 = !DILocation(line: 295, column: 2, scope: !5259)
!5428 = !DILabel(scope: !5259, name: "exit", file: !1, line: 296)
!5429 = !DILocation(line: 296, column: 1, scope: !5259)
!5430 = !DILocation(line: 297, column: 35, scope: !5259)
!5431 = !DILocation(line: 297, column: 2, scope: !5259)
!5432 = !DILocation(line: 302, column: 29, scope: !5259)
!5433 = !DILocation(line: 302, column: 35, scope: !5259)
!5434 = !DILocation(line: 302, column: 51, scope: !5259)
!5435 = !DILocation(line: 302, column: 2, scope: !5259)
!5436 = !DILocation(line: 304, column: 2, scope: !5259)
!5437 = !DILocation(line: 305, column: 1, scope: !5259)
!5438 = distinct !DISubprogram(name: "list_move_tail", scope: !4234, file: !4234, line: 224, type: !4768, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !268)
!5439 = !DILocalVariable(name: "list", arg: 1, scope: !5438, file: !4234, line: 224, type: !216)
!5440 = !DILocation(line: 224, column: 53, scope: !5438)
!5441 = !DILocalVariable(name: "head", arg: 2, scope: !5438, file: !4234, line: 225, type: !216)
!5442 = !DILocation(line: 225, column: 25, scope: !5438)
!5443 = !DILocation(line: 227, column: 19, scope: !5438)
!5444 = !DILocation(line: 227, column: 2, scope: !5438)
!5445 = !DILocation(line: 228, column: 16, scope: !5438)
!5446 = !DILocation(line: 228, column: 22, scope: !5438)
!5447 = !DILocation(line: 228, column: 2, scope: !5438)
!5448 = !DILocation(line: 229, column: 1, scope: !5438)
!5449 = distinct !DISubprogram(name: "kcalloc", scope: !130, file: !130, line: 601, type: !5450, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !268)
!5450 = !DISubroutineType(types: !5451)
!5451 = !{!207, !219, !219, !229}
!5452 = !DILocalVariable(name: "n", arg: 1, scope: !5449, file: !130, line: 601, type: !219)
!5453 = !DILocation(line: 601, column: 36, scope: !5449)
!5454 = !DILocalVariable(name: "size", arg: 2, scope: !5449, file: !130, line: 601, type: !219)
!5455 = !DILocation(line: 601, column: 46, scope: !5449)
!5456 = !DILocalVariable(name: "flags", arg: 3, scope: !5449, file: !130, line: 601, type: !229)
!5457 = !DILocation(line: 601, column: 58, scope: !5449)
!5458 = !DILocation(line: 603, column: 23, scope: !5449)
!5459 = !DILocation(line: 603, column: 26, scope: !5449)
!5460 = !DILocation(line: 603, column: 32, scope: !5449)
!5461 = !DILocation(line: 603, column: 38, scope: !5449)
!5462 = !DILocation(line: 603, column: 9, scope: !5449)
!5463 = !DILocation(line: 603, column: 2, scope: !5449)
!5464 = distinct !DISubprogram(name: "kmalloc_array", scope: !130, file: !130, line: 584, type: !5450, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !268)
!5465 = !DILocation(line: 445, column: 72, scope: !4499, inlinedAt: !5466)
!5466 = distinct !DILocation(line: 552, column: 10, scope: !4504, inlinedAt: !5467)
!5467 = distinct !DILocation(line: 591, column: 10, scope: !5468)
!5468 = distinct !DILexicalBlock(scope: !5464, file: !130, line: 590, column: 6)
!5469 = !DILocation(line: 446, column: 9, scope: !4499, inlinedAt: !5466)
!5470 = !DILocation(line: 446, column: 23, scope: !4499, inlinedAt: !5466)
!5471 = !DILocation(line: 448, column: 8, scope: !4499, inlinedAt: !5466)
!5472 = !DILocation(line: 318, column: 67, scope: !4515, inlinedAt: !5473)
!5473 = distinct !DILocation(line: 553, column: 20, scope: !4504, inlinedAt: !5467)
!5474 = !DILocation(line: 346, column: 58, scope: !4521, inlinedAt: !5475)
!5475 = distinct !DILocation(line: 547, column: 11, scope: !4504, inlinedAt: !5467)
!5476 = !DILocation(line: 472, column: 28, scope: !4527, inlinedAt: !5477)
!5477 = distinct !DILocation(line: 481, column: 9, scope: !4532, inlinedAt: !5478)
!5478 = distinct !DILocation(line: 545, column: 11, scope: !4534, inlinedAt: !5467)
!5479 = !DILocation(line: 472, column: 40, scope: !4527, inlinedAt: !5477)
!5480 = !DILocation(line: 472, column: 60, scope: !4527, inlinedAt: !5477)
!5481 = !DILocation(line: 478, column: 51, scope: !4532, inlinedAt: !5478)
!5482 = !DILocation(line: 478, column: 63, scope: !4532, inlinedAt: !5478)
!5483 = !DILocation(line: 480, column: 15, scope: !4532, inlinedAt: !5478)
!5484 = !DILocation(line: 538, column: 45, scope: !4506, inlinedAt: !5467)
!5485 = !DILocation(line: 538, column: 57, scope: !4506, inlinedAt: !5467)
!5486 = !DILocation(line: 542, column: 16, scope: !4504, inlinedAt: !5467)
!5487 = !DILocalVariable(name: "n", arg: 1, scope: !5464, file: !130, line: 584, type: !219)
!5488 = !DILocation(line: 584, column: 42, scope: !5464)
!5489 = !DILocalVariable(name: "size", arg: 2, scope: !5464, file: !130, line: 584, type: !219)
!5490 = !DILocation(line: 584, column: 52, scope: !5464)
!5491 = !DILocalVariable(name: "flags", arg: 3, scope: !5464, file: !130, line: 584, type: !229)
!5492 = !DILocation(line: 584, column: 64, scope: !5464)
!5493 = !DILocalVariable(name: "bytes", scope: !5464, file: !130, line: 586, type: !219)
!5494 = !DILocation(line: 586, column: 9, scope: !5464)
!5495 = !DILocalVariable(name: "__a", scope: !5496, file: !130, line: 588, type: !219)
!5496 = distinct !DILexicalBlock(scope: !5497, file: !130, line: 588, column: 6)
!5497 = distinct !DILexicalBlock(scope: !5464, file: !130, line: 588, column: 6)
!5498 = !DILocation(line: 588, column: 6, scope: !5496)
!5499 = !DILocalVariable(name: "__b", scope: !5496, file: !130, line: 588, type: !219)
!5500 = !DILocalVariable(name: "__d", scope: !5496, file: !130, line: 588, type: !5501)
!5501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!5502 = !DILocation(line: 588, column: 6, scope: !5497)
!5503 = !DILocation(line: 588, column: 6, scope: !5464)
!5504 = !DILocation(line: 589, column: 3, scope: !5497)
!5505 = !DILocation(line: 590, column: 27, scope: !5468)
!5506 = !DILocation(line: 590, column: 6, scope: !5468)
!5507 = !DILocation(line: 590, column: 30, scope: !5468)
!5508 = !DILocation(line: 590, column: 54, scope: !5468)
!5509 = !DILocation(line: 590, column: 33, scope: !5468)
!5510 = !DILocation(line: 590, column: 6, scope: !5464)
!5511 = !DILocation(line: 591, column: 18, scope: !5468)
!5512 = !DILocation(line: 591, column: 25, scope: !5468)
!5513 = !DILocation(line: 540, column: 27, scope: !4505, inlinedAt: !5467)
!5514 = !DILocation(line: 540, column: 6, scope: !4505, inlinedAt: !5467)
!5515 = !DILocation(line: 540, column: 6, scope: !4506, inlinedAt: !5467)
!5516 = !DILocation(line: 544, column: 7, scope: !4534, inlinedAt: !5467)
!5517 = !DILocation(line: 544, column: 12, scope: !4534, inlinedAt: !5467)
!5518 = !DILocation(line: 544, column: 7, scope: !4504, inlinedAt: !5467)
!5519 = !DILocation(line: 545, column: 25, scope: !4534, inlinedAt: !5467)
!5520 = !DILocation(line: 545, column: 31, scope: !4534, inlinedAt: !5467)
!5521 = !DILocation(line: 480, column: 33, scope: !4532, inlinedAt: !5478)
!5522 = !DILocation(line: 480, column: 23, scope: !4532, inlinedAt: !5478)
!5523 = !DILocation(line: 481, column: 29, scope: !4532, inlinedAt: !5478)
!5524 = !DILocation(line: 481, column: 35, scope: !4532, inlinedAt: !5478)
!5525 = !DILocation(line: 481, column: 42, scope: !4532, inlinedAt: !5478)
!5526 = !DILocation(line: 474, column: 23, scope: !4527, inlinedAt: !5477)
!5527 = !DILocation(line: 474, column: 29, scope: !4527, inlinedAt: !5477)
!5528 = !DILocation(line: 474, column: 36, scope: !4527, inlinedAt: !5477)
!5529 = !DILocation(line: 474, column: 9, scope: !4527, inlinedAt: !5477)
!5530 = !DILocation(line: 545, column: 4, scope: !4534, inlinedAt: !5467)
!5531 = !DILocation(line: 547, column: 25, scope: !4504, inlinedAt: !5467)
!5532 = !DILocation(line: 348, column: 7, scope: !4578, inlinedAt: !5475)
!5533 = !DILocation(line: 348, column: 6, scope: !4521, inlinedAt: !5475)
!5534 = !DILocation(line: 349, column: 3, scope: !4578, inlinedAt: !5475)
!5535 = !DILocation(line: 351, column: 6, scope: !4582, inlinedAt: !5475)
!5536 = !DILocation(line: 351, column: 11, scope: !4582, inlinedAt: !5475)
!5537 = !DILocation(line: 351, column: 6, scope: !4521, inlinedAt: !5475)
!5538 = !DILocation(line: 352, column: 3, scope: !4582, inlinedAt: !5475)
!5539 = !DILocation(line: 354, column: 32, scope: !4587, inlinedAt: !5475)
!5540 = !DILocation(line: 354, column: 37, scope: !4587, inlinedAt: !5475)
!5541 = !DILocation(line: 354, column: 42, scope: !4587, inlinedAt: !5475)
!5542 = !DILocation(line: 354, column: 45, scope: !4587, inlinedAt: !5475)
!5543 = !DILocation(line: 354, column: 50, scope: !4587, inlinedAt: !5475)
!5544 = !DILocation(line: 354, column: 6, scope: !4521, inlinedAt: !5475)
!5545 = !DILocation(line: 355, column: 3, scope: !4587, inlinedAt: !5475)
!5546 = !DILocation(line: 356, column: 32, scope: !4595, inlinedAt: !5475)
!5547 = !DILocation(line: 356, column: 37, scope: !4595, inlinedAt: !5475)
!5548 = !DILocation(line: 356, column: 43, scope: !4595, inlinedAt: !5475)
!5549 = !DILocation(line: 356, column: 46, scope: !4595, inlinedAt: !5475)
!5550 = !DILocation(line: 356, column: 51, scope: !4595, inlinedAt: !5475)
!5551 = !DILocation(line: 356, column: 6, scope: !4521, inlinedAt: !5475)
!5552 = !DILocation(line: 357, column: 3, scope: !4595, inlinedAt: !5475)
!5553 = !DILocation(line: 358, column: 6, scope: !4603, inlinedAt: !5475)
!5554 = !DILocation(line: 358, column: 11, scope: !4603, inlinedAt: !5475)
!5555 = !DILocation(line: 358, column: 6, scope: !4521, inlinedAt: !5475)
!5556 = !DILocation(line: 358, column: 26, scope: !4603, inlinedAt: !5475)
!5557 = !DILocation(line: 359, column: 6, scope: !4608, inlinedAt: !5475)
!5558 = !DILocation(line: 359, column: 11, scope: !4608, inlinedAt: !5475)
!5559 = !DILocation(line: 359, column: 6, scope: !4521, inlinedAt: !5475)
!5560 = !DILocation(line: 359, column: 26, scope: !4608, inlinedAt: !5475)
!5561 = !DILocation(line: 360, column: 6, scope: !4613, inlinedAt: !5475)
!5562 = !DILocation(line: 360, column: 11, scope: !4613, inlinedAt: !5475)
!5563 = !DILocation(line: 360, column: 6, scope: !4521, inlinedAt: !5475)
!5564 = !DILocation(line: 360, column: 26, scope: !4613, inlinedAt: !5475)
!5565 = !DILocation(line: 361, column: 6, scope: !4618, inlinedAt: !5475)
!5566 = !DILocation(line: 361, column: 11, scope: !4618, inlinedAt: !5475)
!5567 = !DILocation(line: 361, column: 6, scope: !4521, inlinedAt: !5475)
!5568 = !DILocation(line: 361, column: 26, scope: !4618, inlinedAt: !5475)
!5569 = !DILocation(line: 362, column: 6, scope: !4623, inlinedAt: !5475)
!5570 = !DILocation(line: 362, column: 11, scope: !4623, inlinedAt: !5475)
!5571 = !DILocation(line: 362, column: 6, scope: !4521, inlinedAt: !5475)
!5572 = !DILocation(line: 362, column: 26, scope: !4623, inlinedAt: !5475)
!5573 = !DILocation(line: 363, column: 6, scope: !4628, inlinedAt: !5475)
!5574 = !DILocation(line: 363, column: 11, scope: !4628, inlinedAt: !5475)
!5575 = !DILocation(line: 363, column: 6, scope: !4521, inlinedAt: !5475)
!5576 = !DILocation(line: 363, column: 26, scope: !4628, inlinedAt: !5475)
!5577 = !DILocation(line: 364, column: 6, scope: !4633, inlinedAt: !5475)
!5578 = !DILocation(line: 364, column: 11, scope: !4633, inlinedAt: !5475)
!5579 = !DILocation(line: 364, column: 6, scope: !4521, inlinedAt: !5475)
!5580 = !DILocation(line: 364, column: 26, scope: !4633, inlinedAt: !5475)
!5581 = !DILocation(line: 365, column: 6, scope: !4638, inlinedAt: !5475)
!5582 = !DILocation(line: 365, column: 11, scope: !4638, inlinedAt: !5475)
!5583 = !DILocation(line: 365, column: 6, scope: !4521, inlinedAt: !5475)
!5584 = !DILocation(line: 365, column: 26, scope: !4638, inlinedAt: !5475)
!5585 = !DILocation(line: 366, column: 6, scope: !4643, inlinedAt: !5475)
!5586 = !DILocation(line: 366, column: 11, scope: !4643, inlinedAt: !5475)
!5587 = !DILocation(line: 366, column: 6, scope: !4521, inlinedAt: !5475)
!5588 = !DILocation(line: 366, column: 26, scope: !4643, inlinedAt: !5475)
!5589 = !DILocation(line: 367, column: 6, scope: !4648, inlinedAt: !5475)
!5590 = !DILocation(line: 367, column: 11, scope: !4648, inlinedAt: !5475)
!5591 = !DILocation(line: 367, column: 6, scope: !4521, inlinedAt: !5475)
!5592 = !DILocation(line: 367, column: 26, scope: !4648, inlinedAt: !5475)
!5593 = !DILocation(line: 368, column: 6, scope: !4653, inlinedAt: !5475)
!5594 = !DILocation(line: 368, column: 11, scope: !4653, inlinedAt: !5475)
!5595 = !DILocation(line: 368, column: 6, scope: !4521, inlinedAt: !5475)
!5596 = !DILocation(line: 368, column: 26, scope: !4653, inlinedAt: !5475)
!5597 = !DILocation(line: 369, column: 6, scope: !4658, inlinedAt: !5475)
!5598 = !DILocation(line: 369, column: 11, scope: !4658, inlinedAt: !5475)
!5599 = !DILocation(line: 369, column: 6, scope: !4521, inlinedAt: !5475)
!5600 = !DILocation(line: 369, column: 26, scope: !4658, inlinedAt: !5475)
!5601 = !DILocation(line: 370, column: 6, scope: !4663, inlinedAt: !5475)
!5602 = !DILocation(line: 370, column: 11, scope: !4663, inlinedAt: !5475)
!5603 = !DILocation(line: 370, column: 6, scope: !4521, inlinedAt: !5475)
!5604 = !DILocation(line: 370, column: 26, scope: !4663, inlinedAt: !5475)
!5605 = !DILocation(line: 371, column: 6, scope: !4668, inlinedAt: !5475)
!5606 = !DILocation(line: 371, column: 11, scope: !4668, inlinedAt: !5475)
!5607 = !DILocation(line: 371, column: 6, scope: !4521, inlinedAt: !5475)
!5608 = !DILocation(line: 371, column: 26, scope: !4668, inlinedAt: !5475)
!5609 = !DILocation(line: 372, column: 6, scope: !4673, inlinedAt: !5475)
!5610 = !DILocation(line: 372, column: 11, scope: !4673, inlinedAt: !5475)
!5611 = !DILocation(line: 372, column: 6, scope: !4521, inlinedAt: !5475)
!5612 = !DILocation(line: 372, column: 26, scope: !4673, inlinedAt: !5475)
!5613 = !DILocation(line: 373, column: 6, scope: !4678, inlinedAt: !5475)
!5614 = !DILocation(line: 373, column: 11, scope: !4678, inlinedAt: !5475)
!5615 = !DILocation(line: 373, column: 6, scope: !4521, inlinedAt: !5475)
!5616 = !DILocation(line: 373, column: 26, scope: !4678, inlinedAt: !5475)
!5617 = !DILocation(line: 374, column: 6, scope: !4683, inlinedAt: !5475)
!5618 = !DILocation(line: 374, column: 11, scope: !4683, inlinedAt: !5475)
!5619 = !DILocation(line: 374, column: 6, scope: !4521, inlinedAt: !5475)
!5620 = !DILocation(line: 374, column: 26, scope: !4683, inlinedAt: !5475)
!5621 = !DILocation(line: 375, column: 6, scope: !4688, inlinedAt: !5475)
!5622 = !DILocation(line: 375, column: 11, scope: !4688, inlinedAt: !5475)
!5623 = !DILocation(line: 375, column: 6, scope: !4521, inlinedAt: !5475)
!5624 = !DILocation(line: 375, column: 27, scope: !4688, inlinedAt: !5475)
!5625 = !DILocation(line: 376, column: 6, scope: !4693, inlinedAt: !5475)
!5626 = !DILocation(line: 376, column: 11, scope: !4693, inlinedAt: !5475)
!5627 = !DILocation(line: 376, column: 6, scope: !4521, inlinedAt: !5475)
!5628 = !DILocation(line: 376, column: 32, scope: !4693, inlinedAt: !5475)
!5629 = !DILocation(line: 377, column: 6, scope: !4698, inlinedAt: !5475)
!5630 = !DILocation(line: 377, column: 11, scope: !4698, inlinedAt: !5475)
!5631 = !DILocation(line: 377, column: 6, scope: !4521, inlinedAt: !5475)
!5632 = !DILocation(line: 377, column: 32, scope: !4698, inlinedAt: !5475)
!5633 = !DILocation(line: 378, column: 6, scope: !4703, inlinedAt: !5475)
!5634 = !DILocation(line: 378, column: 11, scope: !4703, inlinedAt: !5475)
!5635 = !DILocation(line: 378, column: 6, scope: !4521, inlinedAt: !5475)
!5636 = !DILocation(line: 378, column: 32, scope: !4703, inlinedAt: !5475)
!5637 = !DILocation(line: 379, column: 6, scope: !4708, inlinedAt: !5475)
!5638 = !DILocation(line: 379, column: 11, scope: !4708, inlinedAt: !5475)
!5639 = !DILocation(line: 379, column: 6, scope: !4521, inlinedAt: !5475)
!5640 = !DILocation(line: 379, column: 33, scope: !4708, inlinedAt: !5475)
!5641 = !DILocation(line: 380, column: 6, scope: !4713, inlinedAt: !5475)
!5642 = !DILocation(line: 380, column: 11, scope: !4713, inlinedAt: !5475)
!5643 = !DILocation(line: 380, column: 6, scope: !4521, inlinedAt: !5475)
!5644 = !DILocation(line: 380, column: 33, scope: !4713, inlinedAt: !5475)
!5645 = !DILocation(line: 381, column: 6, scope: !4718, inlinedAt: !5475)
!5646 = !DILocation(line: 381, column: 11, scope: !4718, inlinedAt: !5475)
!5647 = !DILocation(line: 381, column: 6, scope: !4521, inlinedAt: !5475)
!5648 = !DILocation(line: 381, column: 33, scope: !4718, inlinedAt: !5475)
!5649 = !DILocation(line: 382, column: 2, scope: !4723, inlinedAt: !5475)
!5650 = !DILocation(line: 382, column: 2, scope: !4727, inlinedAt: !5475)
!5651 = !DILocation(line: 382, column: 2, scope: !4728, inlinedAt: !5475)
!5652 = !DILocation(line: 386, column: 1, scope: !4521, inlinedAt: !5475)
!5653 = !DILocation(line: 547, column: 9, scope: !4504, inlinedAt: !5467)
!5654 = !DILocation(line: 549, column: 8, scope: !4734, inlinedAt: !5467)
!5655 = !DILocation(line: 549, column: 7, scope: !4504, inlinedAt: !5467)
!5656 = !DILocation(line: 550, column: 4, scope: !4734, inlinedAt: !5467)
!5657 = !DILocation(line: 553, column: 33, scope: !4504, inlinedAt: !5467)
!5658 = !DILocation(line: 325, column: 6, scope: !4739, inlinedAt: !5473)
!5659 = !DILocation(line: 325, column: 6, scope: !4515, inlinedAt: !5473)
!5660 = !DILocation(line: 326, column: 3, scope: !4739, inlinedAt: !5473)
!5661 = !DILocation(line: 332, column: 9, scope: !4515, inlinedAt: !5473)
!5662 = !DILocation(line: 332, column: 15, scope: !4515, inlinedAt: !5473)
!5663 = !DILocation(line: 332, column: 2, scope: !4515, inlinedAt: !5473)
!5664 = !DILocation(line: 336, column: 1, scope: !4515, inlinedAt: !5473)
!5665 = !DILocation(line: 553, column: 5, scope: !4504, inlinedAt: !5467)
!5666 = !DILocation(line: 553, column: 41, scope: !4504, inlinedAt: !5467)
!5667 = !DILocation(line: 554, column: 5, scope: !4504, inlinedAt: !5467)
!5668 = !DILocation(line: 554, column: 12, scope: !4504, inlinedAt: !5467)
!5669 = !DILocation(line: 448, column: 31, scope: !4499, inlinedAt: !5466)
!5670 = !DILocation(line: 448, column: 34, scope: !4499, inlinedAt: !5466)
!5671 = !DILocation(line: 448, column: 14, scope: !4499, inlinedAt: !5466)
!5672 = !DILocation(line: 450, column: 22, scope: !4499, inlinedAt: !5466)
!5673 = !DILocation(line: 450, column: 25, scope: !4499, inlinedAt: !5466)
!5674 = !DILocation(line: 450, column: 30, scope: !4499, inlinedAt: !5466)
!5675 = !DILocation(line: 450, column: 36, scope: !4499, inlinedAt: !5466)
!5676 = !DILocation(line: 450, column: 8, scope: !4499, inlinedAt: !5466)
!5677 = !DILocation(line: 450, column: 6, scope: !4499, inlinedAt: !5466)
!5678 = !DILocation(line: 451, column: 9, scope: !4499, inlinedAt: !5466)
!5679 = !DILocation(line: 552, column: 3, scope: !4504, inlinedAt: !5467)
!5680 = !DILocation(line: 557, column: 19, scope: !4506, inlinedAt: !5467)
!5681 = !DILocation(line: 557, column: 25, scope: !4506, inlinedAt: !5467)
!5682 = !DILocation(line: 557, column: 9, scope: !4506, inlinedAt: !5467)
!5683 = !DILocation(line: 557, column: 2, scope: !4506, inlinedAt: !5467)
!5684 = !DILocation(line: 558, column: 1, scope: !4506, inlinedAt: !5467)
!5685 = !DILocation(line: 591, column: 3, scope: !5468)
!5686 = !DILocation(line: 592, column: 19, scope: !5464)
!5687 = !DILocation(line: 592, column: 26, scope: !5464)
!5688 = !DILocation(line: 592, column: 9, scope: !5464)
!5689 = !DILocation(line: 592, column: 2, scope: !5464)
!5690 = !DILocation(line: 593, column: 1, scope: !5464)
!5691 = distinct !DISubprogram(name: "__must_check_overflow", scope: !5692, file: !5692, line: 52, type: !5693, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !268)
!5692 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!5693 = !DISubroutineType(types: !5694)
!5694 = !{!503, !503}
!5695 = !DILocalVariable(name: "overflow", arg: 1, scope: !5691, file: !5692, line: 52, type: !503)
!5696 = !DILocation(line: 52, column: 60, scope: !5691)
!5697 = !DILocation(line: 54, column: 9, scope: !5691)
!5698 = !DILocation(line: 54, column: 2, scope: !5691)
