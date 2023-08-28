; ModuleID = '../bcout/drivers/xen/swiotlb-xen.llvm.bc'
source_filename = "drivers/xen/swiotlb-xen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

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
%struct.page = type { i64, %union.anon.2, %union.anon.52, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
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
%struct.vdso_image = type opaque
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
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
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
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
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
%struct.of_device_id = type opaque
%struct.acpi_device_id = type opaque
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
%struct.irq_domain = type opaque
%struct.dma_map_ops = type { {}*, void (%struct.device*, i64, i8*, i64, i64)*, %struct.page* (%struct.device*, i64, i64*, i32, i32)*, void (%struct.device*, i64, %struct.page*, i64, i32)*, i8* (%struct.device*, i64, i64*, i32, i32)*, void (%struct.device*, i64, i8*, i64, i32)*, i32 (%struct.device*, %struct.vm_area_struct*, i8*, i64, i64, i64)*, i32 (%struct.device*, %struct.sg_table*, i8*, i64, i64, i64)*, i64 (%struct.device*, %struct.page*, i64, i64, i32, i64)*, void (%struct.device*, i64, i64, i32, i64)*, i32 (%struct.device*, %struct.scatterlist*, i32, i32, i64)*, void (%struct.device*, %struct.scatterlist*, i32, i32, i64)*, i64 (%struct.device*, i64, i64, i32, i64)*, void (%struct.device*, i64, i64, i32, i64)*, void (%struct.device*, i64, i64, i32)*, void (%struct.device*, i64, i64, i32)*, void (%struct.device*, %struct.scatterlist*, i32, i32)*, void (%struct.device*, %struct.scatterlist*, i32, i32)*, void (%struct.device*, i8*, i64, i32)*, i32 (%struct.device*, i64)*, i64 (%struct.device*)*, i64 (%struct.device*)*, i64 (%struct.device*)* }
%struct.bus_dma_region = type { i64, i64, i64, i64 }
%struct.device_dma_parameters = type { i32, i64 }
%struct.dev_archdata = type {}
%struct.device_node = type opaque
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.sg_table = type { %struct.scatterlist*, i32, i32 }
%struct.scatterlist = type { i64, i32, i32, i64, i32 }
%struct.cpuinfo_x86 = type { i8, i8, i8, i8, i32, [3 x i32], i8, i8, i8, i8, i32, i32, %union.anon.65, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8 }
%union.anon.65 = type { i64, [72 x i8] }
%struct.mem_section = type { i64, %struct.mem_section_usage* }
%struct.mem_section_usage = type { [1 x i64], [0 x i64] }

@xen_io_tlb_nslabs = internal global i64 0, align 8, !dbg !0
@io_tlb_start = external dso_local global i64, align 8
@xen_io_tlb_start = internal global i8* null, align 8, !dbg !3904
@.str = private unnamed_addr constant [46 x i8] c"%s: Failed to allocate %lu bytes align=0x%lx\0A\00", align 1
@__func__.xen_swiotlb_init = private unnamed_addr constant [17 x i8] c"xen_swiotlb_init\00", align 1
@.str.1 = private unnamed_addr constant [78 x i8] c"\014xen:swiotlb_xen: Warning: only able to allocate %ld MB for software IO TLB\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Cannot allocate SWIOTLB buffer\00", align 1
@xen_io_tlb_end = internal global i8* null, align 8, !dbg !3906
@.str.3 = private unnamed_addr constant [38 x i8] c"\016xen:swiotlb_xen: Lowering to %luMB\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"\013xen:swiotlb_xen: %s (rc:%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"%s (rc:%d)\00", align 1
@xen_swiotlb_dma_ops = dso_local constant { i8* (%struct.device*, i64, i64*, i32, i64)*, void (%struct.device*, i64, i8*, i64, i64)*, %struct.page* (%struct.device*, i64, i64*, i32, i32)*, void (%struct.device*, i64, %struct.page*, i64, i32)*, i8* (%struct.device*, i64, i64*, i32, i32)*, void (%struct.device*, i64, i8*, i64, i32)*, i32 (%struct.device*, %struct.vm_area_struct*, i8*, i64, i64, i64)*, i32 (%struct.device*, %struct.sg_table*, i8*, i64, i64, i64)*, i64 (%struct.device*, %struct.page*, i64, i64, i32, i64)*, void (%struct.device*, i64, i64, i32, i64)*, i32 (%struct.device*, %struct.scatterlist*, i32, i32, i64)*, void (%struct.device*, %struct.scatterlist*, i32, i32, i64)*, i64 (%struct.device*, i64, i64, i32, i64)*, void (%struct.device*, i64, i64, i32, i64)*, void (%struct.device*, i64, i64, i32)*, void (%struct.device*, i64, i64, i32)*, void (%struct.device*, %struct.scatterlist*, i32, i32)*, void (%struct.device*, %struct.scatterlist*, i32, i32)*, void (%struct.device*, i8*, i64, i32)*, i32 (%struct.device*, i64)*, i64 (%struct.device*)*, i64 (%struct.device*)*, i64 (%struct.device*)* } { i8* (%struct.device*, i64, i64*, i32, i64)* @xen_swiotlb_alloc_coherent, void (%struct.device*, i64, i8*, i64, i64)* @xen_swiotlb_free_coherent, %struct.page* (%struct.device*, i64, i64*, i32, i32)* @dma_common_alloc_pages, void (%struct.device*, i64, %struct.page*, i64, i32)* @dma_common_free_pages, i8* (%struct.device*, i64, i64*, i32, i32)* null, void (%struct.device*, i64, i8*, i64, i32)* null, i32 (%struct.device*, %struct.vm_area_struct*, i8*, i64, i64, i64)* @dma_common_mmap, i32 (%struct.device*, %struct.sg_table*, i8*, i64, i64, i64)* @dma_common_get_sgtable, i64 (%struct.device*, %struct.page*, i64, i64, i32, i64)* @xen_swiotlb_map_page, void (%struct.device*, i64, i64, i32, i64)* @xen_swiotlb_unmap_page, i32 (%struct.device*, %struct.scatterlist*, i32, i32, i64)* @xen_swiotlb_map_sg, void (%struct.device*, %struct.scatterlist*, i32, i32, i64)* @xen_swiotlb_unmap_sg, i64 (%struct.device*, i64, i64, i32, i64)* null, void (%struct.device*, i64, i64, i32, i64)* null, void (%struct.device*, i64, i64, i32)* @xen_swiotlb_sync_single_for_cpu, void (%struct.device*, i64, i64, i32)* @xen_swiotlb_sync_single_for_device, void (%struct.device*, %struct.scatterlist*, i32, i32)* @xen_swiotlb_sync_sg_for_cpu, void (%struct.device*, %struct.scatterlist*, i32, i32)* @xen_swiotlb_sync_sg_for_device, void (%struct.device*, i8*, i64, i32)* null, i32 (%struct.device*, i64)* @xen_swiotlb_dma_supported, i64 (%struct.device*)* null, i64 (%struct.device*)* null, i64 (%struct.device*)* null }, align 8, !dbg !3362
@page_offset_base = external dso_local global i64, align 8
@phys_base = external dso_local global i64, align 8
@.str.6 = private unnamed_addr constant [36 x i8] c"Cannot allocate Xen-SWIOTLB buffer\0A\00", align 1
@.str.7 = private unnamed_addr constant [176 x i8] c"Failed to get contiguous memory for DMA from Xen!\0AYou either: don't have the permissions, do not have enough free memory under 4GB, or the hypervisor memory is too fragmented!\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@vmemmap_base = external dso_local global i64, align 8
@xen_features = external dso_local global [32 x i8], align 16
@xen_p2m_size = external dso_local global i64, align 8
@xen_p2m_addr = external dso_local global i64*, align 8
@xen_max_p2m_pfn = external dso_local global i64, align 8
@.str.9 = private unnamed_addr constant [26 x i8] c"drivers/xen/swiotlb-xen.c\00", align 1
@machine_to_phys_nr = external dso_local global i64, align 8
@machine_to_phys_mapping = external dso_local global i64*, align 8
@swiotlb_force = external dso_local global i32, align 4
@min_low_pfn = external dso_local global i64, align 8
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@mem_section = external dso_local global %struct.mem_section**, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @xen_swiotlb_init(i32 %verbose, i1 zeroext %early) #0 section ".ref.text" !dbg !3913 {
entry:
  %retval = alloca i32, align 4
  %verbose.addr = alloca i32, align 4
  %early.addr = alloca i8, align 1
  %bytes = alloca i64, align 8
  %order = alloca i64, align 8
  %rc = alloca i32, align 4
  %m_ret = alloca i32, align 4
  %repeat = alloca i32, align 4
  %__UNIQUE_ID___x236 = alloca i64, align 8
  %__UNIQUE_ID___y237 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store i32 %verbose, i32* %verbose.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %verbose.addr, metadata !3916, metadata !DIExpression()), !dbg !3917
  %frombool = zext i1 %early to i8
  store i8 %frombool, i8* %early.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %early.addr, metadata !3918, metadata !DIExpression()), !dbg !3919
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !3920, metadata !DIExpression()), !dbg !3921
  call void @llvm.dbg.declare(metadata i64* %order, metadata !3922, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !3924, metadata !DIExpression()), !dbg !3925
  store i32 -12, i32* %rc, align 4, !dbg !3925
  call void @llvm.dbg.declare(metadata i32* %m_ret, metadata !3926, metadata !DIExpression()), !dbg !3927
  store i32 0, i32* %m_ret, align 4, !dbg !3927
  call void @llvm.dbg.declare(metadata i32* %repeat, metadata !3928, metadata !DIExpression()), !dbg !3929
  store i32 3, i32* %repeat, align 4, !dbg !3929
  %call = call i64 @swiotlb_nr_tbl() #9, !dbg !3930
  store i64 %call, i64* @xen_io_tlb_nslabs, align 8, !dbg !3931
  br label %retry, !dbg !3932

retry:                                            ; preds = %cond.end, %entry
  call void @llvm.dbg.label(metadata !3933), !dbg !3934
  %0 = load i64, i64* @xen_io_tlb_nslabs, align 8, !dbg !3935
  %call1 = call i64 @xen_set_nslabs(i64 %0) #9, !dbg !3936
  store i64 %call1, i64* %bytes, align 8, !dbg !3937
  %1 = load i64, i64* @xen_io_tlb_nslabs, align 8, !dbg !3938
  %shl = shl i64 %1, 11, !dbg !3939
  %call2 = call i32 @get_order(i64 %shl) #10, !dbg !3940
  %conv = sext i32 %call2 to i64, !dbg !3940
  store i64 %conv, i64* %order, align 8, !dbg !3941
  %2 = load i64, i64* @io_tlb_start, align 8, !dbg !3942
  %cmp = icmp ne i64 %2, 0, !dbg !3944
  br i1 %cmp, label %if.then, label %if.end, !dbg !3945

if.then:                                          ; preds = %retry
  %3 = load i64, i64* @io_tlb_start, align 8, !dbg !3946
  %call4 = call i8* @phys_to_virt(i64 %3) #9, !dbg !3948
  store i8* %call4, i8** @xen_io_tlb_start, align 8, !dbg !3949
  br label %end, !dbg !3950

if.end:                                           ; preds = %retry
  %4 = load i8, i8* %early.addr, align 1, !dbg !3951
  %tobool = trunc i8 %4 to i1, !dbg !3951
  br i1 %tobool, label %if.then5, label %if.else, !dbg !3953

if.then5:                                         ; preds = %if.end
  %5 = load i64, i64* %bytes, align 8, !dbg !3954
  %add = add i64 %5, 4095, !dbg !3954
  %and = and i64 %add, -4096, !dbg !3954
  %call6 = call i8* @memblock_alloc(i64 %and, i64 4096) #11, !dbg !3956
  store i8* %call6, i8** @xen_io_tlb_start, align 8, !dbg !3957
  %6 = load i8*, i8** @xen_io_tlb_start, align 8, !dbg !3958
  %tobool7 = icmp ne i8* %6, null, !dbg !3958
  br i1 %tobool7, label %if.end11, label %if.then8, !dbg !3960

if.then8:                                         ; preds = %if.then5
  %7 = load i64, i64* %bytes, align 8, !dbg !3961
  %add9 = add i64 %7, 4095, !dbg !3961
  %and10 = and i64 %add9, -4096, !dbg !3961
  call void (i8*, ...) @panic(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.xen_swiotlb_init, i64 0, i64 0), i64 %and10, i64 4096) #12, !dbg !3962
  unreachable, !dbg !3962

if.end11:                                         ; preds = %if.then5
  br label %if.end32, !dbg !3963

if.else:                                          ; preds = %if.end
  br label %while.cond, !dbg !3964

while.cond:                                       ; preds = %if.end19, %if.else
  %8 = load i64, i64* %order, align 8, !dbg !3966
  %sh_prom = trunc i64 %8 to i32, !dbg !3967
  %shl12 = shl i32 2, %sh_prom, !dbg !3967
  %cmp13 = icmp sgt i32 %shl12, 512, !dbg !3968
  br i1 %cmp13, label %while.body, label %while.end, !dbg !3964

while.body:                                       ; preds = %while.cond
  %9 = load i64, i64* %order, align 8, !dbg !3969
  %conv15 = trunc i64 %9 to i32, !dbg !3969
  %call16 = call i64 @xen_get_swiotlb_free_pages(i32 %conv15) #9, !dbg !3971
  %10 = inttoptr i64 %call16 to i8*, !dbg !3972
  store i8* %10, i8** @xen_io_tlb_start, align 8, !dbg !3973
  %11 = load i8*, i8** @xen_io_tlb_start, align 8, !dbg !3974
  %tobool17 = icmp ne i8* %11, null, !dbg !3974
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !3976

if.then18:                                        ; preds = %while.body
  br label %while.end, !dbg !3977

if.end19:                                         ; preds = %while.body
  %12 = load i64, i64* %order, align 8, !dbg !3978
  %dec = add i64 %12, -1, !dbg !3978
  store i64 %dec, i64* %order, align 8, !dbg !3978
  br label %while.cond, !dbg !3964, !llvm.loop !3979

while.end:                                        ; preds = %if.then18, %while.cond
  %13 = load i64, i64* %order, align 8, !dbg !3981
  %14 = load i64, i64* %bytes, align 8, !dbg !3983
  %call20 = call i32 @get_order(i64 %14) #10, !dbg !3984
  %conv21 = sext i32 %call20 to i64, !dbg !3984
  %cmp22 = icmp ne i64 %13, %conv21, !dbg !3985
  br i1 %cmp22, label %if.then24, label %if.end31, !dbg !3986

if.then24:                                        ; preds = %while.end
  %15 = load i64, i64* %order, align 8, !dbg !3987
  %shl25 = shl i64 4096, %15, !dbg !3987
  %shr = lshr i64 %shl25, 20, !dbg !3987
  %call26 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i64 %shr) #11, !dbg !3987
  %16 = load i64, i64* %order, align 8, !dbg !3989
  %sh_prom27 = trunc i64 %16 to i32, !dbg !3990
  %shl28 = shl i32 2, %sh_prom27, !dbg !3990
  %conv29 = sext i32 %shl28 to i64, !dbg !3991
  store i64 %conv29, i64* @xen_io_tlb_nslabs, align 8, !dbg !3992
  %17 = load i64, i64* @xen_io_tlb_nslabs, align 8, !dbg !3993
  %shl30 = shl i64 %17, 11, !dbg !3994
  store i64 %shl30, i64* %bytes, align 8, !dbg !3995
  br label %if.end31, !dbg !3996

if.end31:                                         ; preds = %if.then24, %while.end
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end11
  %18 = load i8*, i8** @xen_io_tlb_start, align 8, !dbg !3997
  %tobool33 = icmp ne i8* %18, null, !dbg !3997
  br i1 %tobool33, label %if.end35, label %if.then34, !dbg !3999

if.then34:                                        ; preds = %if.end32
  store i32 1, i32* %m_ret, align 4, !dbg !4000
  br label %error, !dbg !4002

if.end35:                                         ; preds = %if.end32
  %19 = load i8*, i8** @xen_io_tlb_start, align 8, !dbg !4003
  %20 = load i64, i64* %bytes, align 8, !dbg !4004
  %21 = load i64, i64* @xen_io_tlb_nslabs, align 8, !dbg !4005
  %call36 = call i32 @xen_swiotlb_fixup(i8* %19, i64 %20, i64 %21) #9, !dbg !4006
  store i32 %call36, i32* %rc, align 4, !dbg !4007
  %22 = load i32, i32* %rc, align 4, !dbg !4008
  %tobool37 = icmp ne i32 %22, 0, !dbg !4008
  br i1 %tobool37, label %if.then38, label %if.end48, !dbg !4010

if.then38:                                        ; preds = %if.end35
  %23 = load i8, i8* %early.addr, align 1, !dbg !4011
  %tobool39 = trunc i8 %23 to i1, !dbg !4011
  br i1 %tobool39, label %if.then40, label %if.else45, !dbg !4014

if.then40:                                        ; preds = %if.then38
  %24 = load i8*, i8** @xen_io_tlb_start, align 8, !dbg !4015
  %25 = ptrtoint i8* %24 to i64, !dbg !4015
  %call41 = call i64 @__phys_addr_nodebug(i64 %25) #9, !dbg !4015
  %26 = load i64, i64* %bytes, align 8, !dbg !4016
  %add42 = add i64 %26, 4095, !dbg !4016
  %and43 = and i64 %add42, -4096, !dbg !4016
  %call44 = call i32 @memblock_free(i64 %call41, i64 %and43) #9, !dbg !4017
  br label %if.end47, !dbg !4017

if.else45:                                        ; preds = %if.then38
  %27 = load i8*, i8** @xen_io_tlb_start, align 8, !dbg !4018
  %28 = ptrtoint i8* %27 to i64, !dbg !4020
  %29 = load i64, i64* %order, align 8, !dbg !4021
  %conv46 = trunc i64 %29 to i32, !dbg !4021
  call void @free_pages(i64 %28, i32 %conv46) #9, !dbg !4022
  store i8* null, i8** @xen_io_tlb_start, align 8, !dbg !4023
  br label %if.end47

if.end47:                                         ; preds = %if.else45, %if.then40
  store i32 2, i32* %m_ret, align 4, !dbg !4024
  br label %error, !dbg !4025

if.end48:                                         ; preds = %if.end35
  %30 = load i8, i8* %early.addr, align 1, !dbg !4026
  %tobool49 = trunc i8 %30 to i1, !dbg !4026
  br i1 %tobool49, label %if.then50, label %if.else55, !dbg !4028

if.then50:                                        ; preds = %if.end48
  %31 = load i8*, i8** @xen_io_tlb_start, align 8, !dbg !4029
  %32 = load i64, i64* @xen_io_tlb_nslabs, align 8, !dbg !4032
  %33 = load i32, i32* %verbose.addr, align 4, !dbg !4033
  %call51 = call i32 @swiotlb_init_with_tbl(i8* %31, i64 %32, i32 %33) #9, !dbg !4034
  %tobool52 = icmp ne i32 %call51, 0, !dbg !4034
  br i1 %tobool52, label %if.then53, label %if.end54, !dbg !4035

if.then53:                                        ; preds = %if.then50
  call void (i8*, ...) @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0)) #12, !dbg !4036
  unreachable, !dbg !4036

if.end54:                                         ; preds = %if.then50
  store i32 0, i32* %rc, align 4, !dbg !4037
  br label %if.end57, !dbg !4038

if.else55:                                        ; preds = %if.end48
  %34 = load i8*, i8** @xen_io_tlb_start, align 8, !dbg !4039
  %35 = load i64, i64* @xen_io_tlb_nslabs, align 8, !dbg !4040
  %call56 = call i32 @swiotlb_late_init_with_tbl(i8* %34, i64 %35) #9, !dbg !4041
  store i32 %call56, i32* %rc, align 4, !dbg !4042
  br label %if.end57

if.end57:                                         ; preds = %if.else55, %if.end54
  br label %end, !dbg !4026

end:                                              ; preds = %if.end57, %if.then
  call void @llvm.dbg.label(metadata !4043), !dbg !4044
  %36 = load i8*, i8** @xen_io_tlb_start, align 8, !dbg !4045
  %37 = load i64, i64* %bytes, align 8, !dbg !4046
  %add.ptr = getelementptr i8, i8* %36, i64 %37, !dbg !4047
  store i8* %add.ptr, i8** @xen_io_tlb_end, align 8, !dbg !4048
  %38 = load i32, i32* %rc, align 4, !dbg !4049
  %tobool58 = icmp ne i32 %38, 0, !dbg !4049
  br i1 %tobool58, label %if.end60, label %if.then59, !dbg !4051

if.then59:                                        ; preds = %end
  call void @swiotlb_set_max_segment(i32 4096) #9, !dbg !4052
  br label %if.end60, !dbg !4052

if.end60:                                         ; preds = %if.then59, %end
  %39 = load i32, i32* %rc, align 4, !dbg !4053
  store i32 %39, i32* %retval, align 4, !dbg !4054
  br label %return, !dbg !4054

error:                                            ; preds = %if.end47, %if.then34
  call void @llvm.dbg.label(metadata !4055), !dbg !4056
  %40 = load i32, i32* %repeat, align 4, !dbg !4057
  %dec61 = add i32 %40, -1, !dbg !4057
  store i32 %dec61, i32* %repeat, align 4, !dbg !4057
  %tobool62 = icmp ne i32 %40, 0, !dbg !4057
  br i1 %tobool62, label %if.then63, label %if.end70, !dbg !4059

if.then63:                                        ; preds = %error
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x236, metadata !4060, metadata !DIExpression()), !dbg !4063
  store i64 1024, i64* %__UNIQUE_ID___x236, align 8, !dbg !4063
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y237, metadata !4064, metadata !DIExpression()), !dbg !4063
  %41 = load i64, i64* @xen_io_tlb_nslabs, align 8, !dbg !4063
  %shr64 = lshr i64 %41, 1, !dbg !4063
  store i64 %shr64, i64* %__UNIQUE_ID___y237, align 8, !dbg !4063
  %42 = load i64, i64* %__UNIQUE_ID___x236, align 8, !dbg !4063
  %43 = load i64, i64* %__UNIQUE_ID___y237, align 8, !dbg !4063
  %cmp65 = icmp ugt i64 %42, %43, !dbg !4063
  br i1 %cmp65, label %cond.true, label %cond.false, !dbg !4063

cond.true:                                        ; preds = %if.then63
  %44 = load i64, i64* %__UNIQUE_ID___x236, align 8, !dbg !4063
  br label %cond.end, !dbg !4063

cond.false:                                       ; preds = %if.then63
  %45 = load i64, i64* %__UNIQUE_ID___y237, align 8, !dbg !4063
  br label %cond.end, !dbg !4063

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %44, %cond.true ], [ %45, %cond.false ], !dbg !4063
  store i64 %cond, i64* %tmp, align 8, !dbg !4063
  %46 = load i64, i64* %tmp, align 8, !dbg !4063
  store i64 %46, i64* @xen_io_tlb_nslabs, align 8, !dbg !4065
  %47 = load i64, i64* @xen_io_tlb_nslabs, align 8, !dbg !4066
  %shl67 = shl i64 %47, 11, !dbg !4066
  %shr68 = lshr i64 %shl67, 20, !dbg !4066
  %call69 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 %shr68) #11, !dbg !4066
  br label %retry, !dbg !4067

if.end70:                                         ; preds = %error
  %48 = load i32, i32* %m_ret, align 4, !dbg !4068
  %call71 = call i8* @xen_swiotlb_error(i32 %48) #9, !dbg !4068
  %49 = load i32, i32* %rc, align 4, !dbg !4068
  %call72 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %call71, i32 %49) #11, !dbg !4068
  %50 = load i8, i8* %early.addr, align 1, !dbg !4069
  %tobool73 = trunc i8 %50 to i1, !dbg !4069
  br i1 %tobool73, label %if.then74, label %if.else76, !dbg !4071

if.then74:                                        ; preds = %if.end70
  %51 = load i32, i32* %m_ret, align 4, !dbg !4072
  %call75 = call i8* @xen_swiotlb_error(i32 %51) #9, !dbg !4073
  %52 = load i32, i32* %rc, align 4, !dbg !4074
  call void (i8*, ...) @panic(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %call75, i32 %52) #12, !dbg !4075
  unreachable, !dbg !4075

if.else76:                                        ; preds = %if.end70
  %53 = load i8*, i8** @xen_io_tlb_start, align 8, !dbg !4076
  %54 = ptrtoint i8* %53 to i64, !dbg !4077
  %55 = load i64, i64* %order, align 8, !dbg !4078
  %conv77 = trunc i64 %55 to i32, !dbg !4078
  call void @free_pages(i64 %54, i32 %conv77) #9, !dbg !4079
  br label %if.end78

if.end78:                                         ; preds = %if.else76
  %56 = load i32, i32* %rc, align 4, !dbg !4080
  store i32 %56, i32* %retval, align 4, !dbg !4081
  br label %return, !dbg !4081

return:                                           ; preds = %if.end78, %if.end60
  %57 = load i32, i32* %retval, align 4, !dbg !4082
  ret i32 %57, !dbg !4082
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i64 @swiotlb_nr_tbl() #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @xen_set_nslabs(i64 %nr_tbl) #0 !dbg !4083 {
entry:
  %nr_tbl.addr = alloca i64, align 8
  store i64 %nr_tbl, i64* %nr_tbl.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr_tbl.addr, metadata !4086, metadata !DIExpression()), !dbg !4087
  %0 = load i64, i64* %nr_tbl.addr, align 8, !dbg !4088
  %tobool = icmp ne i64 %0, 0, !dbg !4088
  br i1 %tobool, label %if.else, label %if.then, !dbg !4090

if.then:                                          ; preds = %entry
  store i64 32768, i64* @xen_io_tlb_nslabs, align 8, !dbg !4091
  %1 = load i64, i64* @xen_io_tlb_nslabs, align 8, !dbg !4093
  %add = add i64 %1, 127, !dbg !4093
  %and = and i64 %add, -128, !dbg !4093
  store i64 %and, i64* @xen_io_tlb_nslabs, align 8, !dbg !4094
  br label %if.end, !dbg !4095

if.else:                                          ; preds = %entry
  %2 = load i64, i64* %nr_tbl.addr, align 8, !dbg !4096
  store i64 %2, i64* @xen_io_tlb_nslabs, align 8, !dbg !4097
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i64, i64* @xen_io_tlb_nslabs, align 8, !dbg !4098
  %shl = shl i64 %3, 11, !dbg !4099
  ret i64 %shl, !dbg !4100
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #3 !dbg !4101 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4105, metadata !DIExpression()), !dbg !4110
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4112, metadata !DIExpression()), !dbg !4113
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4114, metadata !DIExpression()), !dbg !4115
  %0 = load i64, i64* %size.addr, align 8, !dbg !4116
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4118
  br i1 %1, label %if.then, label %if.end447, !dbg !4119

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4120
  %tobool = icmp ne i64 %2, 0, !dbg !4120
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4123

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4124
  br label %return, !dbg !4124

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4125
  %cmp = icmp ult i64 %3, 4096, !dbg !4127
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4128

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4129
  br label %return, !dbg !4129

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub = sub i64 %4, 1, !dbg !4130
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4130
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4130

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub4 = sub i64 %6, 1, !dbg !4130
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4130
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4130

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub6 = sub i64 %8, 1, !dbg !4130
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4130
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4130

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4130

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub9 = sub i64 %9, 1, !dbg !4130
  %and = and i64 %sub9, -9223372036854775808, !dbg !4130
  %tobool10 = icmp ne i64 %and, 0, !dbg !4130
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4130

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4130

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub13 = sub i64 %10, 1, !dbg !4130
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4130
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4130
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4130

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4130

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub18 = sub i64 %11, 1, !dbg !4130
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4130
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4130
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4130

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4130

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub23 = sub i64 %12, 1, !dbg !4130
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4130
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4130
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4130

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4130

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub28 = sub i64 %13, 1, !dbg !4130
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4130
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4130
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4130

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4130

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub33 = sub i64 %14, 1, !dbg !4130
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4130
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4130
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4130

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4130

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub38 = sub i64 %15, 1, !dbg !4130
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4130
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4130
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4130

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4130

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub43 = sub i64 %16, 1, !dbg !4130
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4130
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4130
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4130

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4130

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub48 = sub i64 %17, 1, !dbg !4130
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4130
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4130
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4130

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4130

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub53 = sub i64 %18, 1, !dbg !4130
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4130
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4130
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4130

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4130

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub58 = sub i64 %19, 1, !dbg !4130
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4130
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4130
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4130

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4130

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub63 = sub i64 %20, 1, !dbg !4130
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4130
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4130
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4130

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4130

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub68 = sub i64 %21, 1, !dbg !4130
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4130
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4130
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4130

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4130

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub73 = sub i64 %22, 1, !dbg !4130
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4130
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4130
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4130

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4130

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub78 = sub i64 %23, 1, !dbg !4130
  %and79 = and i64 %sub78, 562949953421312, !dbg !4130
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4130
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4130

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4130

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub83 = sub i64 %24, 1, !dbg !4130
  %and84 = and i64 %sub83, 281474976710656, !dbg !4130
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4130
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4130

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4130

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub88 = sub i64 %25, 1, !dbg !4130
  %and89 = and i64 %sub88, 140737488355328, !dbg !4130
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4130
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4130

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4130

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub93 = sub i64 %26, 1, !dbg !4130
  %and94 = and i64 %sub93, 70368744177664, !dbg !4130
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4130
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4130

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4130

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub98 = sub i64 %27, 1, !dbg !4130
  %and99 = and i64 %sub98, 35184372088832, !dbg !4130
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4130
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4130

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4130

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub103 = sub i64 %28, 1, !dbg !4130
  %and104 = and i64 %sub103, 17592186044416, !dbg !4130
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4130
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4130

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4130

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub108 = sub i64 %29, 1, !dbg !4130
  %and109 = and i64 %sub108, 8796093022208, !dbg !4130
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4130
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4130

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4130

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub113 = sub i64 %30, 1, !dbg !4130
  %and114 = and i64 %sub113, 4398046511104, !dbg !4130
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4130
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4130

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4130

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub118 = sub i64 %31, 1, !dbg !4130
  %and119 = and i64 %sub118, 2199023255552, !dbg !4130
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4130
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4130

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4130

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub123 = sub i64 %32, 1, !dbg !4130
  %and124 = and i64 %sub123, 1099511627776, !dbg !4130
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4130
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4130

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4130

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub128 = sub i64 %33, 1, !dbg !4130
  %and129 = and i64 %sub128, 549755813888, !dbg !4130
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4130
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4130

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4130

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub133 = sub i64 %34, 1, !dbg !4130
  %and134 = and i64 %sub133, 274877906944, !dbg !4130
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4130
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4130

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4130

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub138 = sub i64 %35, 1, !dbg !4130
  %and139 = and i64 %sub138, 137438953472, !dbg !4130
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4130
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4130

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4130

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub143 = sub i64 %36, 1, !dbg !4130
  %and144 = and i64 %sub143, 68719476736, !dbg !4130
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4130
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4130

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4130

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub148 = sub i64 %37, 1, !dbg !4130
  %and149 = and i64 %sub148, 34359738368, !dbg !4130
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4130
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4130

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4130

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub153 = sub i64 %38, 1, !dbg !4130
  %and154 = and i64 %sub153, 17179869184, !dbg !4130
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4130
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4130

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4130

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub158 = sub i64 %39, 1, !dbg !4130
  %and159 = and i64 %sub158, 8589934592, !dbg !4130
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4130
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4130

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4130

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub163 = sub i64 %40, 1, !dbg !4130
  %and164 = and i64 %sub163, 4294967296, !dbg !4130
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4130
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4130

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4130

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub168 = sub i64 %41, 1, !dbg !4130
  %and169 = and i64 %sub168, 2147483648, !dbg !4130
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4130
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4130

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4130

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub173 = sub i64 %42, 1, !dbg !4130
  %and174 = and i64 %sub173, 1073741824, !dbg !4130
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4130
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4130

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4130

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub178 = sub i64 %43, 1, !dbg !4130
  %and179 = and i64 %sub178, 536870912, !dbg !4130
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4130
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4130

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4130

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub183 = sub i64 %44, 1, !dbg !4130
  %and184 = and i64 %sub183, 268435456, !dbg !4130
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4130
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4130

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4130

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub188 = sub i64 %45, 1, !dbg !4130
  %and189 = and i64 %sub188, 134217728, !dbg !4130
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4130
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4130

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4130

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub193 = sub i64 %46, 1, !dbg !4130
  %and194 = and i64 %sub193, 67108864, !dbg !4130
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4130
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4130

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4130

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub198 = sub i64 %47, 1, !dbg !4130
  %and199 = and i64 %sub198, 33554432, !dbg !4130
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4130
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4130

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4130

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub203 = sub i64 %48, 1, !dbg !4130
  %and204 = and i64 %sub203, 16777216, !dbg !4130
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4130
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4130

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4130

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub208 = sub i64 %49, 1, !dbg !4130
  %and209 = and i64 %sub208, 8388608, !dbg !4130
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4130
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4130

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4130

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub213 = sub i64 %50, 1, !dbg !4130
  %and214 = and i64 %sub213, 4194304, !dbg !4130
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4130
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4130

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4130

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub218 = sub i64 %51, 1, !dbg !4130
  %and219 = and i64 %sub218, 2097152, !dbg !4130
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4130
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4130

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4130

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub223 = sub i64 %52, 1, !dbg !4130
  %and224 = and i64 %sub223, 1048576, !dbg !4130
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4130
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4130

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4130

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub228 = sub i64 %53, 1, !dbg !4130
  %and229 = and i64 %sub228, 524288, !dbg !4130
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4130
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4130

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4130

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub233 = sub i64 %54, 1, !dbg !4130
  %and234 = and i64 %sub233, 262144, !dbg !4130
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4130
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4130

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4130

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub238 = sub i64 %55, 1, !dbg !4130
  %and239 = and i64 %sub238, 131072, !dbg !4130
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4130
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4130

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4130

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub243 = sub i64 %56, 1, !dbg !4130
  %and244 = and i64 %sub243, 65536, !dbg !4130
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4130
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4130

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4130

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub248 = sub i64 %57, 1, !dbg !4130
  %and249 = and i64 %sub248, 32768, !dbg !4130
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4130
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4130

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4130

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub253 = sub i64 %58, 1, !dbg !4130
  %and254 = and i64 %sub253, 16384, !dbg !4130
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4130
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4130

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4130

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub258 = sub i64 %59, 1, !dbg !4130
  %and259 = and i64 %sub258, 8192, !dbg !4130
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4130
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4130

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4130

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub263 = sub i64 %60, 1, !dbg !4130
  %and264 = and i64 %sub263, 4096, !dbg !4130
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4130
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4130

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4130

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub268 = sub i64 %61, 1, !dbg !4130
  %and269 = and i64 %sub268, 2048, !dbg !4130
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4130
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4130

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4130

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub273 = sub i64 %62, 1, !dbg !4130
  %and274 = and i64 %sub273, 1024, !dbg !4130
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4130
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4130

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4130

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub278 = sub i64 %63, 1, !dbg !4130
  %and279 = and i64 %sub278, 512, !dbg !4130
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4130
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4130

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4130

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub283 = sub i64 %64, 1, !dbg !4130
  %and284 = and i64 %sub283, 256, !dbg !4130
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4130
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4130

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4130

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub288 = sub i64 %65, 1, !dbg !4130
  %and289 = and i64 %sub288, 128, !dbg !4130
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4130
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4130

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4130

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub293 = sub i64 %66, 1, !dbg !4130
  %and294 = and i64 %sub293, 64, !dbg !4130
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4130
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4130

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4130

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub298 = sub i64 %67, 1, !dbg !4130
  %and299 = and i64 %sub298, 32, !dbg !4130
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4130
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4130

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4130

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub303 = sub i64 %68, 1, !dbg !4130
  %and304 = and i64 %sub303, 16, !dbg !4130
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4130
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4130

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4130

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub308 = sub i64 %69, 1, !dbg !4130
  %and309 = and i64 %sub308, 8, !dbg !4130
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4130
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4130

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4130

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub313 = sub i64 %70, 1, !dbg !4130
  %and314 = and i64 %sub313, 4, !dbg !4130
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4130
  %71 = zext i1 %tobool315 to i64, !dbg !4130
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4130
  br label %cond.end, !dbg !4130

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4130
  br label %cond.end317, !dbg !4130

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4130
  br label %cond.end319, !dbg !4130

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4130
  br label %cond.end321, !dbg !4130

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4130
  br label %cond.end323, !dbg !4130

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4130
  br label %cond.end325, !dbg !4130

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4130
  br label %cond.end327, !dbg !4130

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4130
  br label %cond.end329, !dbg !4130

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4130
  br label %cond.end331, !dbg !4130

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4130
  br label %cond.end333, !dbg !4130

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4130
  br label %cond.end335, !dbg !4130

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4130
  br label %cond.end337, !dbg !4130

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4130
  br label %cond.end339, !dbg !4130

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4130
  br label %cond.end341, !dbg !4130

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4130
  br label %cond.end343, !dbg !4130

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4130
  br label %cond.end345, !dbg !4130

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4130
  br label %cond.end347, !dbg !4130

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4130
  br label %cond.end349, !dbg !4130

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4130
  br label %cond.end351, !dbg !4130

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4130
  br label %cond.end353, !dbg !4130

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4130
  br label %cond.end355, !dbg !4130

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4130
  br label %cond.end357, !dbg !4130

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4130
  br label %cond.end359, !dbg !4130

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4130
  br label %cond.end361, !dbg !4130

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4130
  br label %cond.end363, !dbg !4130

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4130
  br label %cond.end365, !dbg !4130

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4130
  br label %cond.end367, !dbg !4130

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4130
  br label %cond.end369, !dbg !4130

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4130
  br label %cond.end371, !dbg !4130

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4130
  br label %cond.end373, !dbg !4130

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4130
  br label %cond.end375, !dbg !4130

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4130
  br label %cond.end377, !dbg !4130

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4130
  br label %cond.end379, !dbg !4130

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4130
  br label %cond.end381, !dbg !4130

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4130
  br label %cond.end383, !dbg !4130

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4130
  br label %cond.end385, !dbg !4130

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4130
  br label %cond.end387, !dbg !4130

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4130
  br label %cond.end389, !dbg !4130

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4130
  br label %cond.end391, !dbg !4130

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4130
  br label %cond.end393, !dbg !4130

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4130
  br label %cond.end395, !dbg !4130

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4130
  br label %cond.end397, !dbg !4130

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4130
  br label %cond.end399, !dbg !4130

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4130
  br label %cond.end401, !dbg !4130

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4130
  br label %cond.end403, !dbg !4130

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4130
  br label %cond.end405, !dbg !4130

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4130
  br label %cond.end407, !dbg !4130

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4130
  br label %cond.end409, !dbg !4130

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4130
  br label %cond.end411, !dbg !4130

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4130
  br label %cond.end413, !dbg !4130

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4130
  br label %cond.end415, !dbg !4130

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4130
  br label %cond.end417, !dbg !4130

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4130
  br label %cond.end419, !dbg !4130

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4130
  br label %cond.end421, !dbg !4130

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4130
  br label %cond.end423, !dbg !4130

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4130
  br label %cond.end425, !dbg !4130

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4130
  br label %cond.end427, !dbg !4130

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4130
  br label %cond.end429, !dbg !4130

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4130
  br label %cond.end431, !dbg !4130

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4130
  br label %cond.end433, !dbg !4130

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4130
  br label %cond.end435, !dbg !4130

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4130
  br label %cond.end437, !dbg !4130

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4130
  br label %cond.end440, !dbg !4130

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4130

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4130
  br label %cond.end444, !dbg !4130

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4130
  %sub443 = sub i64 %72, 1, !dbg !4130
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !4130
  br label %cond.end444, !dbg !4130

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4130
  %sub446 = sub i32 %cond445, 12, !dbg !4131
  %add = add i32 %sub446, 1, !dbg !4132
  store i32 %add, i32* %retval, align 4, !dbg !4133
  br label %return, !dbg !4133

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4134
  %dec = add i64 %73, -1, !dbg !4134
  store i64 %dec, i64* %size.addr, align 8, !dbg !4134
  %74 = load i64, i64* %size.addr, align 8, !dbg !4135
  %shr = lshr i64 %74, 12, !dbg !4135
  store i64 %shr, i64* %size.addr, align 8, !dbg !4135
  %75 = load i64, i64* %size.addr, align 8, !dbg !4136
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4113
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4137
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4138
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !4137, !srcloc !4139
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4137
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4140
  %add.i = add i32 %79, 1, !dbg !4141
  store i32 %add.i, i32* %retval, align 4, !dbg !4142
  br label %return, !dbg !4142

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4143
  ret i32 %80, !dbg !4143
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @phys_to_virt(i64 %address) #0 !dbg !4144 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, i64* %address.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %address.addr, metadata !4148, metadata !DIExpression()), !dbg !4149
  %0 = load i64, i64* %address.addr, align 8, !dbg !4150
  %1 = load i64, i64* @page_offset_base, align 8, !dbg !4150
  %add = add i64 %0, %1, !dbg !4150
  %2 = inttoptr i64 %add to i8*, !dbg !4150
  ret i8* %2, !dbg !4151
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i8* @memblock_alloc(i64 %size, i64 %align) #4 section ".init.text" !dbg !4152 {
entry:
  %size.addr = alloca i64, align 8
  %align.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4156, metadata !DIExpression()), !dbg !4157
  store i64 %align, i64* %align.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %align.addr, metadata !4158, metadata !DIExpression()), !dbg !4159
  %0 = load i64, i64* %size.addr, align 8, !dbg !4160
  %1 = load i64, i64* %align.addr, align 8, !dbg !4161
  %call = call i8* @memblock_alloc_try_nid(i64 %0, i64 %1, i64 0, i64 0, i32 -1) #9, !dbg !4162
  ret i8* %call, !dbg !4163
}

; Function Attrs: cold noredzone noreturn
declare dso_local void @panic(i8*, ...) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @xen_get_swiotlb_free_pages(i32 %order) #0 !dbg !4164 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !4168, metadata !DIExpression()), !dbg !4169
  %0 = load i32, i32* %order.addr, align 4, !dbg !4170
  %call = call i64 @__get_free_pages(i32 8192, i32 %0) #9, !dbg !4171
  ret i64 %call, !dbg !4172
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_swiotlb_fixup(i8* %buf, i64 %size, i64 %nslabs) #0 !dbg !4173 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %nslabs.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  %dma_bits = alloca i32, align 4
  %dma_handle = alloca i64, align 8
  %p = alloca i64, align 8
  %slabs = alloca i32, align 4
  %__UNIQUE_ID___x234 = alloca i64, align 8
  %__UNIQUE_ID___y235 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4176, metadata !DIExpression()), !dbg !4177
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4178, metadata !DIExpression()), !dbg !4179
  store i64 %nslabs, i64* %nslabs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nslabs.addr, metadata !4180, metadata !DIExpression()), !dbg !4181
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4182, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !4184, metadata !DIExpression()), !dbg !4185
  call void @llvm.dbg.declare(metadata i32* %dma_bits, metadata !4186, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.declare(metadata i64* %dma_handle, metadata !4188, metadata !DIExpression()), !dbg !4189
  call void @llvm.dbg.declare(metadata i64* %p, metadata !4190, metadata !DIExpression()), !dbg !4191
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !4192
  %call = call i64 @virt_to_phys(i8* %0) #9, !dbg !4193
  store i64 %call, i64* %p, align 8, !dbg !4191
  %call1 = call i32 @get_order(i64 262144) #10, !dbg !4194
  %add = add i32 %call1, 12, !dbg !4195
  store i32 %add, i32* %dma_bits, align 4, !dbg !4196
  store i32 0, i32* %i, align 4, !dbg !4197
  br label %do.body, !dbg !4198

do.body:                                          ; preds = %do.cond15, %entry
  call void @llvm.dbg.declare(metadata i32* %slabs, metadata !4199, metadata !DIExpression()), !dbg !4201
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x234, metadata !4202, metadata !DIExpression()), !dbg !4204
  %1 = load i64, i64* %nslabs.addr, align 8, !dbg !4204
  %2 = load i32, i32* %i, align 4, !dbg !4204
  %conv = sext i32 %2 to i64, !dbg !4204
  %sub = sub i64 %1, %conv, !dbg !4204
  store i64 %sub, i64* %__UNIQUE_ID___x234, align 8, !dbg !4204
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y235, metadata !4205, metadata !DIExpression()), !dbg !4204
  store i64 128, i64* %__UNIQUE_ID___y235, align 8, !dbg !4204
  %3 = load i64, i64* %__UNIQUE_ID___x234, align 8, !dbg !4204
  %4 = load i64, i64* %__UNIQUE_ID___y235, align 8, !dbg !4204
  %cmp = icmp ult i64 %3, %4, !dbg !4204
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !4204

cond.true:                                        ; preds = %do.body
  %5 = load i64, i64* %__UNIQUE_ID___x234, align 8, !dbg !4204
  br label %cond.end, !dbg !4204

cond.false:                                       ; preds = %do.body
  %6 = load i64, i64* %__UNIQUE_ID___y235, align 8, !dbg !4204
  br label %cond.end, !dbg !4204

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %5, %cond.true ], [ %6, %cond.false ], !dbg !4204
  store i64 %cond, i64* %tmp, align 8, !dbg !4204
  %7 = load i64, i64* %tmp, align 8, !dbg !4204
  %conv3 = trunc i64 %7 to i32, !dbg !4206
  store i32 %conv3, i32* %slabs, align 4, !dbg !4201
  br label %do.body4, !dbg !4207

do.body4:                                         ; preds = %land.end, %cond.end
  %8 = load i64, i64* %p, align 8, !dbg !4208
  %9 = load i32, i32* %i, align 4, !dbg !4210
  %shl = shl i32 %9, 11, !dbg !4211
  %conv5 = sext i32 %shl to i64, !dbg !4212
  %add6 = add i64 %8, %conv5, !dbg !4213
  %10 = load i32, i32* %slabs, align 4, !dbg !4214
  %shl7 = shl i32 %10, 11, !dbg !4215
  %conv8 = sext i32 %shl7 to i64, !dbg !4214
  %call9 = call i32 @get_order(i64 %conv8) #10, !dbg !4216
  %11 = load i32, i32* %dma_bits, align 4, !dbg !4217
  %call10 = call i32 @xen_create_contiguous_region(i64 %add6, i32 %call9, i32 %11, i64* %dma_handle) #9, !dbg !4218
  store i32 %call10, i32* %rc, align 4, !dbg !4219
  br label %do.cond, !dbg !4220

do.cond:                                          ; preds = %do.body4
  %12 = load i32, i32* %rc, align 4, !dbg !4221
  %tobool = icmp ne i32 %12, 0, !dbg !4221
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !4222

land.rhs:                                         ; preds = %do.cond
  %13 = load i32, i32* %dma_bits, align 4, !dbg !4223
  %inc = add i32 %13, 1, !dbg !4223
  store i32 %inc, i32* %dma_bits, align 4, !dbg !4223
  %cmp11 = icmp slt i32 %13, 32, !dbg !4224
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %14 = phi i1 [ false, %do.cond ], [ %cmp11, %land.rhs ], !dbg !4225
  br i1 %14, label %do.body4, label %do.end, !dbg !4220, !llvm.loop !4226

do.end:                                           ; preds = %land.end
  %15 = load i32, i32* %rc, align 4, !dbg !4228
  %tobool13 = icmp ne i32 %15, 0, !dbg !4228
  br i1 %tobool13, label %if.then, label %if.end, !dbg !4230

if.then:                                          ; preds = %do.end
  %16 = load i32, i32* %rc, align 4, !dbg !4231
  store i32 %16, i32* %retval, align 4, !dbg !4232
  br label %return, !dbg !4232

if.end:                                           ; preds = %do.end
  %17 = load i32, i32* %slabs, align 4, !dbg !4233
  %18 = load i32, i32* %i, align 4, !dbg !4234
  %add14 = add i32 %18, %17, !dbg !4234
  store i32 %add14, i32* %i, align 4, !dbg !4234
  br label %do.cond15, !dbg !4235

do.cond15:                                        ; preds = %if.end
  %19 = load i32, i32* %i, align 4, !dbg !4236
  %conv16 = sext i32 %19 to i64, !dbg !4236
  %20 = load i64, i64* %nslabs.addr, align 8, !dbg !4237
  %cmp17 = icmp ult i64 %conv16, %20, !dbg !4238
  br i1 %cmp17, label %do.body, label %do.end19, !dbg !4235, !llvm.loop !4239

do.end19:                                         ; preds = %do.cond15
  store i32 0, i32* %retval, align 4, !dbg !4241
  br label %return, !dbg !4241

return:                                           ; preds = %do.end19, %if.then
  %21 = load i32, i32* %retval, align 4, !dbg !4242
  ret i32 %21, !dbg !4242
}

; Function Attrs: noredzone
declare dso_local i32 @memblock_free(i64, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @__phys_addr_nodebug(i64 %x) #0 !dbg !4243 {
entry:
  %x.addr = alloca i64, align 8
  %y = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr, metadata !4245, metadata !DIExpression()), !dbg !4246
  call void @llvm.dbg.declare(metadata i64* %y, metadata !4247, metadata !DIExpression()), !dbg !4248
  %0 = load i64, i64* %x.addr, align 8, !dbg !4249
  %sub = sub i64 %0, -2147483648, !dbg !4250
  store i64 %sub, i64* %y, align 8, !dbg !4248
  %1 = load i64, i64* %y, align 8, !dbg !4251
  %2 = load i64, i64* %x.addr, align 8, !dbg !4252
  %3 = load i64, i64* %y, align 8, !dbg !4253
  %cmp = icmp ugt i64 %2, %3, !dbg !4254
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !4255

cond.true:                                        ; preds = %entry
  %4 = load i64, i64* @phys_base, align 8, !dbg !4256
  br label %cond.end, !dbg !4255

cond.false:                                       ; preds = %entry
  %5 = load i64, i64* @page_offset_base, align 8, !dbg !4257
  %sub1 = sub i64 -2147483648, %5, !dbg !4258
  br label %cond.end, !dbg !4255

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %sub1, %cond.false ], !dbg !4255
  %add = add i64 %1, %cond, !dbg !4259
  store i64 %add, i64* %x.addr, align 8, !dbg !4260
  %6 = load i64, i64* %x.addr, align 8, !dbg !4261
  ret i64 %6, !dbg !4262
}

; Function Attrs: noredzone
declare dso_local void @free_pages(i64, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @swiotlb_init_with_tbl(i8*, i64, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @swiotlb_late_init_with_tbl(i8*, i64) #2

; Function Attrs: noredzone
declare dso_local void @swiotlb_set_max_segment(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @xen_swiotlb_error(i32 %err) #0 !dbg !4263 {
entry:
  %retval = alloca i8*, align 8
  %err.addr = alloca i32, align 4
  store i32 %err, i32* %err.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %err.addr, metadata !4266, metadata !DIExpression()), !dbg !4267
  %0 = load i32, i32* %err.addr, align 4, !dbg !4268
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ], !dbg !4269

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8** %retval, align 8, !dbg !4270
  br label %return, !dbg !4270

sw.bb1:                                           ; preds = %entry
  store i8* getelementptr inbounds ([176 x i8], [176 x i8]* @.str.7, i64 0, i64 0), i8** %retval, align 8, !dbg !4272
  br label %return, !dbg !4272

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !4273

sw.epilog:                                        ; preds = %sw.default
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8** %retval, align 8, !dbg !4274
  br label %return, !dbg !4274

return:                                           ; preds = %sw.epilog, %sw.bb1, %sw.bb
  %1 = load i8*, i8** %retval, align 8, !dbg !4275
  ret i8* %1, !dbg !4275
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @xen_swiotlb_alloc_coherent(%struct.device* %hwdev, i64 %size, i64* %dma_handle, i32 %flags, i64 %attrs) #0 !dbg !4276 {
entry:
  %page.addr.i = alloca %struct.page*, align 8
  call void @llvm.dbg.declare(metadata %struct.page** %page.addr.i, metadata !4277, metadata !DIExpression()), !dbg !4279
  %tmp.i = alloca %struct.page*, align 8
  %tmp1.i = alloca %struct.page*, align 8
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4105, metadata !DIExpression()), !dbg !4283
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4112, metadata !DIExpression()), !dbg !4286
  %retval = alloca i8*, align 8
  %hwdev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %dma_handle.addr = alloca i64*, align 8
  %flags.addr = alloca i32, align 4
  %attrs.addr = alloca i64, align 8
  %ret = alloca i8*, align 8
  %order = alloca i32, align 4
  %dma_mask = alloca i64, align 8
  %phys = alloca i64, align 8
  %dev_addr = alloca i64, align 8
  store %struct.device* %hwdev, %struct.device** %hwdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %hwdev.addr, metadata !4287, metadata !DIExpression()), !dbg !4288
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4289, metadata !DIExpression()), !dbg !4290
  store i64* %dma_handle, i64** %dma_handle.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %dma_handle.addr, metadata !4291, metadata !DIExpression()), !dbg !4292
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4293, metadata !DIExpression()), !dbg !4294
  store i64 %attrs, i64* %attrs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %attrs.addr, metadata !4295, metadata !DIExpression()), !dbg !4296
  call void @llvm.dbg.declare(metadata i8** %ret, metadata !4297, metadata !DIExpression()), !dbg !4298
  call void @llvm.dbg.declare(metadata i32* %order, metadata !4299, metadata !DIExpression()), !dbg !4300
  %0 = load i64, i64* %size.addr, align 8, !dbg !4301
  %call = call i32 @get_order(i64 %0) #10, !dbg !4302
  store i32 %call, i32* %order, align 4, !dbg !4300
  call void @llvm.dbg.declare(metadata i64* %dma_mask, metadata !4303, metadata !DIExpression()), !dbg !4304
  store i64 4294967295, i64* %dma_mask, align 8, !dbg !4304
  call void @llvm.dbg.declare(metadata i64* %phys, metadata !4305, metadata !DIExpression()), !dbg !4306
  call void @llvm.dbg.declare(metadata i64* %dev_addr, metadata !4307, metadata !DIExpression()), !dbg !4308
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4309
  %and = and i32 %1, -4, !dbg !4309
  store i32 %and, i32* %flags.addr, align 4, !dbg !4309
  %2 = load i32, i32* %order, align 4, !dbg !4310
  %add = add i32 %2, 12, !dbg !4311
  %sh_prom = zext i32 %add to i64, !dbg !4312
  %shl = shl i64 1, %sh_prom, !dbg !4312
  store i64 %shl, i64* %size.addr, align 8, !dbg !4313
  %3 = load %struct.device*, %struct.device** %hwdev.addr, align 8, !dbg !4314
  %4 = load i64, i64* %size.addr, align 8, !dbg !4315
  %5 = load i64*, i64** %dma_handle.addr, align 8, !dbg !4316
  %6 = load i32, i32* %flags.addr, align 4, !dbg !4317
  %7 = load i64, i64* %attrs.addr, align 8, !dbg !4318
  %call1 = call i8* @xen_alloc_coherent_pages(%struct.device* %3, i64 %4, i64* %5, i32 %6, i64 %7) #9, !dbg !4319
  store i8* %call1, i8** %ret, align 8, !dbg !4320
  %8 = load i8*, i8** %ret, align 8, !dbg !4321
  %tobool = icmp ne i8* %8, null, !dbg !4321
  br i1 %tobool, label %if.end, label %if.then, !dbg !4323

if.then:                                          ; preds = %entry
  %9 = load i8*, i8** %ret, align 8, !dbg !4324
  store i8* %9, i8** %retval, align 8, !dbg !4325
  br label %return, !dbg !4325

if.end:                                           ; preds = %entry
  %10 = load %struct.device*, %struct.device** %hwdev.addr, align 8, !dbg !4326
  %tobool2 = icmp ne %struct.device* %10, null, !dbg !4326
  br i1 %tobool2, label %land.lhs.true, label %if.end6, !dbg !4328

land.lhs.true:                                    ; preds = %if.end
  %11 = load %struct.device*, %struct.device** %hwdev.addr, align 8, !dbg !4329
  %coherent_dma_mask = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 17, !dbg !4330
  %12 = load i64, i64* %coherent_dma_mask, align 8, !dbg !4330
  %tobool3 = icmp ne i64 %12, 0, !dbg !4329
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !4331

if.then4:                                         ; preds = %land.lhs.true
  %13 = load %struct.device*, %struct.device** %hwdev.addr, align 8, !dbg !4332
  %coherent_dma_mask5 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 17, !dbg !4333
  %14 = load i64, i64* %coherent_dma_mask5, align 8, !dbg !4333
  store i64 %14, i64* %dma_mask, align 8, !dbg !4334
  br label %if.end6, !dbg !4335

if.end6:                                          ; preds = %if.then4, %land.lhs.true, %if.end
  %15 = load %struct.device*, %struct.device** %hwdev.addr, align 8, !dbg !4336
  %16 = load i64*, i64** %dma_handle.addr, align 8, !dbg !4337
  %17 = load i64, i64* %16, align 8, !dbg !4338
  %call7 = call i64 @dma_to_phys(%struct.device* %15, i64 %17) #9, !dbg !4339
  store i64 %call7, i64* %phys, align 8, !dbg !4340
  %18 = load %struct.device*, %struct.device** %hwdev.addr, align 8, !dbg !4341
  %19 = load i64, i64* %phys, align 8, !dbg !4342
  %call8 = call i64 @xen_phys_to_dma(%struct.device* %18, i64 %19) #9, !dbg !4343
  store i64 %call8, i64* %dev_addr, align 8, !dbg !4344
  %20 = load i64, i64* %dev_addr, align 8, !dbg !4345
  %21 = load i64, i64* %size.addr, align 8, !dbg !4346
  %add9 = add i64 %20, %21, !dbg !4347
  %sub = sub i64 %add9, 1, !dbg !4348
  %22 = load i64, i64* %dma_mask, align 8, !dbg !4349
  %cmp = icmp ule i64 %sub, %22, !dbg !4350
  br i1 %cmp, label %land.lhs.true10, label %if.else, !dbg !4351

land.lhs.true10:                                  ; preds = %if.end6
  %23 = load i64, i64* %phys, align 8, !dbg !4352
  %24 = load i64, i64* %size.addr, align 8, !dbg !4353
  %call11 = call i32 @range_straddles_page_boundary(i64 %23, i64 %24) #9, !dbg !4354
  %tobool12 = icmp ne i32 %call11, 0, !dbg !4354
  br i1 %tobool12, label %if.else, label %if.then13, !dbg !4355

if.then13:                                        ; preds = %land.lhs.true10
  %25 = load i64, i64* %dev_addr, align 8, !dbg !4356
  %26 = load i64*, i64** %dma_handle.addr, align 8, !dbg !4357
  store i64 %25, i64* %26, align 8, !dbg !4358
  br label %if.end21, !dbg !4359

if.else:                                          ; preds = %land.lhs.true10, %if.end6
  %27 = load i64, i64* %phys, align 8, !dbg !4360
  %28 = load i32, i32* %order, align 4, !dbg !4361
  %29 = load i64, i64* %dma_mask, align 8, !dbg !4362
  store i64 %29, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4286
  %30 = load i32, i32* %bitpos.i, align 4, !dbg !4363
  %31 = load i64, i64* %x.addr.i, align 8, !dbg !4364
  %32 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %31, i32 %30) #13, !dbg !4363, !srcloc !4139
  store i32 %32, i32* %bitpos.i, align 4, !dbg !4363
  %33 = load i32, i32* %bitpos.i, align 4, !dbg !4365
  %add.i = add i32 %33, 1, !dbg !4366
  %34 = load i64*, i64** %dma_handle.addr, align 8, !dbg !4367
  %call15 = call i32 @xen_create_contiguous_region(i64 %27, i32 %28, i32 %add.i, i64* %34) #9, !dbg !4368
  %cmp16 = icmp ne i32 %call15, 0, !dbg !4369
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !4370

if.then17:                                        ; preds = %if.else
  %35 = load %struct.device*, %struct.device** %hwdev.addr, align 8, !dbg !4371
  %36 = load i64, i64* %size.addr, align 8, !dbg !4373
  %37 = load i8*, i8** %ret, align 8, !dbg !4374
  %38 = load i64, i64* %phys, align 8, !dbg !4375
  %39 = load i64, i64* %attrs.addr, align 8, !dbg !4376
  call void @xen_free_coherent_pages(%struct.device* %35, i64 %36, i8* %37, i64 %38, i64 %39) #9, !dbg !4377
  store i8* null, i8** %retval, align 8, !dbg !4378
  br label %return, !dbg !4378

if.end18:                                         ; preds = %if.else
  %40 = load %struct.device*, %struct.device** %hwdev.addr, align 8, !dbg !4379
  %41 = load i64*, i64** %dma_handle.addr, align 8, !dbg !4380
  %42 = load i64, i64* %41, align 8, !dbg !4381
  %call19 = call i64 @phys_to_dma(%struct.device* %40, i64 %42) #9, !dbg !4382
  %43 = load i64*, i64** %dma_handle.addr, align 8, !dbg !4383
  store i64 %call19, i64* %43, align 8, !dbg !4384
  %44 = load i64, i64* @vmemmap_base, align 8, !dbg !4385
  %45 = inttoptr i64 %44 to %struct.page*, !dbg !4385
  %46 = load i8*, i8** %ret, align 8, !dbg !4385
  %47 = ptrtoint i8* %46 to i64, !dbg !4385
  %call20 = call i64 @__phys_addr_nodebug(i64 %47) #9, !dbg !4385
  %shr = lshr i64 %call20, 12, !dbg !4385
  %add.ptr = getelementptr %struct.page, %struct.page* %45, i64 %shr, !dbg !4385
  store %struct.page* %add.ptr, %struct.page** %page.addr.i, align 8
  %48 = load %struct.page*, %struct.page** %page.addr.i, align 8, !dbg !4386
  store %struct.page* %48, %struct.page** %tmp1.i, align 8, !dbg !4386
  %49 = load %struct.page*, %struct.page** %tmp1.i, align 8, !dbg !4386
  store %struct.page* %49, %struct.page** %tmp.i, align 8, !dbg !4389
  %50 = load %struct.page*, %struct.page** %tmp.i, align 8, !dbg !4389
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %50, i32 0, i32 0, !dbg !4279
  call void @set_bit(i64 10, i64* %flags.i) #14, !dbg !4279
  br label %if.end21

if.end21:                                         ; preds = %if.end18, %if.then13
  %51 = load i8*, i8** %ret, align 8, !dbg !4390
  %52 = load i64, i64* %size.addr, align 8, !dbg !4391
  call void @llvm.memset.p0i8.i64(i8* align 1 %51, i8 0, i64 %52, i1 false), !dbg !4392
  %53 = load i8*, i8** %ret, align 8, !dbg !4393
  store i8* %53, i8** %retval, align 8, !dbg !4394
  br label %return, !dbg !4394

return:                                           ; preds = %if.end21, %if.then17, %if.then
  %54 = load i8*, i8** %retval, align 8, !dbg !4395
  ret i8* %54, !dbg !4395
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xen_swiotlb_free_coherent(%struct.device* %hwdev, i64 %size, i8* %vaddr, i64 %dev_addr, i64 %attrs) #0 !dbg !4396 {
entry:
  %page.addr.i = alloca %struct.page*, align 8
  call void @llvm.dbg.declare(metadata %struct.page** %page.addr.i, metadata !4397, metadata !DIExpression()), !dbg !4399
  %tmp.i = alloca %struct.page*, align 8
  %tmp1.i = alloca %struct.page*, align 8
  %hwdev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %vaddr.addr = alloca i8*, align 8
  %dev_addr.addr = alloca i64, align 8
  %attrs.addr = alloca i64, align 8
  %order = alloca i32, align 4
  %phys = alloca i64, align 8
  %dma_mask = alloca i64, align 8
  %page = alloca %struct.page*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.device* %hwdev, %struct.device** %hwdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %hwdev.addr, metadata !4402, metadata !DIExpression()), !dbg !4403
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4404, metadata !DIExpression()), !dbg !4405
  store i8* %vaddr, i8** %vaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %vaddr.addr, metadata !4406, metadata !DIExpression()), !dbg !4407
  store i64 %dev_addr, i64* %dev_addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dev_addr.addr, metadata !4408, metadata !DIExpression()), !dbg !4409
  store i64 %attrs, i64* %attrs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %attrs.addr, metadata !4410, metadata !DIExpression()), !dbg !4411
  call void @llvm.dbg.declare(metadata i32* %order, metadata !4412, metadata !DIExpression()), !dbg !4413
  %0 = load i64, i64* %size.addr, align 8, !dbg !4414
  %call = call i32 @get_order(i64 %0) #10, !dbg !4415
  store i32 %call, i32* %order, align 4, !dbg !4413
  call void @llvm.dbg.declare(metadata i64* %phys, metadata !4416, metadata !DIExpression()), !dbg !4417
  call void @llvm.dbg.declare(metadata i64* %dma_mask, metadata !4418, metadata !DIExpression()), !dbg !4419
  store i64 4294967295, i64* %dma_mask, align 8, !dbg !4419
  call void @llvm.dbg.declare(metadata %struct.page** %page, metadata !4420, metadata !DIExpression()), !dbg !4421
  %1 = load %struct.device*, %struct.device** %hwdev.addr, align 8, !dbg !4422
  %tobool = icmp ne %struct.device* %1, null, !dbg !4422
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4424

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.device*, %struct.device** %hwdev.addr, align 8, !dbg !4425
  %coherent_dma_mask = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 17, !dbg !4426
  %3 = load i64, i64* %coherent_dma_mask, align 8, !dbg !4426
  %tobool1 = icmp ne i64 %3, 0, !dbg !4425
  br i1 %tobool1, label %if.then, label %if.end, !dbg !4427

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.device*, %struct.device** %hwdev.addr, align 8, !dbg !4428
  %coherent_dma_mask2 = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 17, !dbg !4429
  %5 = load i64, i64* %coherent_dma_mask2, align 8, !dbg !4429
  store i64 %5, i64* %dma_mask, align 8, !dbg !4430
  br label %if.end, !dbg !4431

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %6 = load %struct.device*, %struct.device** %hwdev.addr, align 8, !dbg !4432
  %7 = load i64, i64* %dev_addr.addr, align 8, !dbg !4433
  %call3 = call i64 @xen_dma_to_phys(%struct.device* %6, i64 %7) #9, !dbg !4434
  store i64 %call3, i64* %phys, align 8, !dbg !4435
  %8 = load i32, i32* %order, align 4, !dbg !4436
  %add = add i32 %8, 12, !dbg !4437
  %sh_prom = zext i32 %add to i64, !dbg !4438
  %shl = shl i64 1, %sh_prom, !dbg !4438
  store i64 %shl, i64* %size.addr, align 8, !dbg !4439
  %9 = load i8*, i8** %vaddr.addr, align 8, !dbg !4440
  %call4 = call zeroext i1 @is_vmalloc_addr(i8* %9) #9, !dbg !4442
  br i1 %call4, label %if.then5, label %if.else, !dbg !4443

if.then5:                                         ; preds = %if.end
  %10 = load i8*, i8** %vaddr.addr, align 8, !dbg !4444
  %call6 = call %struct.page* @vmalloc_to_page(i8* %10) #9, !dbg !4445
  store %struct.page* %call6, %struct.page** %page, align 8, !dbg !4446
  br label %if.end8, !dbg !4447

if.else:                                          ; preds = %if.end
  %11 = load i64, i64* @vmemmap_base, align 8, !dbg !4448
  %12 = inttoptr i64 %11 to %struct.page*, !dbg !4448
  %13 = load i8*, i8** %vaddr.addr, align 8, !dbg !4448
  %14 = ptrtoint i8* %13 to i64, !dbg !4448
  %call7 = call i64 @__phys_addr_nodebug(i64 %14) #9, !dbg !4448
  %shr = lshr i64 %call7, 12, !dbg !4448
  %add.ptr = getelementptr %struct.page, %struct.page* %12, i64 %shr, !dbg !4448
  store %struct.page* %add.ptr, %struct.page** %page, align 8, !dbg !4449
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4450, metadata !DIExpression()), !dbg !4452
  %15 = load i64, i64* %dev_addr.addr, align 8, !dbg !4452
  %16 = load i64, i64* %size.addr, align 8, !dbg !4452
  %add9 = add i64 %15, %16, !dbg !4452
  %sub = sub i64 %add9, 1, !dbg !4452
  %17 = load i64, i64* %dma_mask, align 8, !dbg !4452
  %cmp = icmp ugt i64 %sub, %17, !dbg !4452
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !4452

lor.rhs:                                          ; preds = %if.end8
  %18 = load i64, i64* %phys, align 8, !dbg !4452
  %19 = load i64, i64* %size.addr, align 8, !dbg !4452
  %call10 = call i32 @range_straddles_page_boundary(i64 %18, i64 %19) #9, !dbg !4452
  %tobool11 = icmp ne i32 %call10, 0, !dbg !4452
  br label %lor.end, !dbg !4452

lor.end:                                          ; preds = %lor.rhs, %if.end8
  %20 = phi i1 [ true, %if.end8 ], [ %tobool11, %lor.rhs ]
  %lnot = xor i1 %20, true, !dbg !4452
  %lnot12 = xor i1 %lnot, true, !dbg !4452
  %lnot.ext = zext i1 %lnot12 to i32, !dbg !4452
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !4452
  %21 = load i32, i32* %__ret_warn_on, align 4, !dbg !4453
  %tobool13 = icmp ne i32 %21, 0, !dbg !4453
  %lnot14 = xor i1 %tobool13, true, !dbg !4453
  %lnot16 = xor i1 %lnot14, true, !dbg !4453
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !4453
  %conv = sext i32 %lnot.ext17 to i64, !dbg !4453
  %tobool18 = icmp ne i64 %conv, 0, !dbg !4453
  br i1 %tobool18, label %if.then19, label %if.end26, !dbg !4452

if.then19:                                        ; preds = %lor.end
  br label %do.body, !dbg !4453

do.body:                                          ; preds = %if.then19
  br label %do.body20, !dbg !4455

do.body20:                                        ; preds = %do.body
  br label %do.end, !dbg !4457

do.end:                                           ; preds = %do.body20
  br label %do.body21, !dbg !4455

do.body21:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 358, i32 2305, i64 12) #15, !dbg !4459, !srcloc !4461
  br label %do.end22, !dbg !4459

do.end22:                                         ; preds = %do.body21
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 238) #15, !dbg !4462, !srcloc !4464
  br label %do.body23, !dbg !4455

do.body23:                                        ; preds = %do.end22
  br label %do.end24, !dbg !4465

do.end24:                                         ; preds = %do.body23
  br label %do.end25, !dbg !4455

do.end25:                                         ; preds = %do.end24
  br label %if.end26, !dbg !4455

if.end26:                                         ; preds = %do.end25, %lor.end
  %22 = load i32, i32* %__ret_warn_on, align 4, !dbg !4452
  %tobool27 = icmp ne i32 %22, 0, !dbg !4452
  %lnot28 = xor i1 %tobool27, true, !dbg !4452
  %lnot30 = xor i1 %lnot28, true, !dbg !4452
  %lnot.ext31 = zext i1 %lnot30 to i32, !dbg !4452
  %conv32 = sext i32 %lnot.ext31 to i64, !dbg !4452
  store i64 %conv32, i64* %tmp, align 8, !dbg !4453
  %23 = load i64, i64* %tmp, align 8, !dbg !4452
  %tobool33 = icmp ne i64 %23, 0, !dbg !4467
  br i1 %tobool33, label %if.end38, label %land.lhs.true34, !dbg !4468

land.lhs.true34:                                  ; preds = %if.end26
  %24 = load %struct.page*, %struct.page** %page, align 8, !dbg !4469
  store %struct.page* %24, %struct.page** %page.addr.i, align 8
  %25 = load %struct.page*, %struct.page** %page.addr.i, align 8, !dbg !4470
  store %struct.page* %25, %struct.page** %tmp1.i, align 8, !dbg !4470
  %26 = load %struct.page*, %struct.page** %tmp1.i, align 8, !dbg !4470
  store %struct.page* %26, %struct.page** %tmp.i, align 8, !dbg !4473
  %27 = load %struct.page*, %struct.page** %tmp.i, align 8, !dbg !4473
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %27, i32 0, i32 0, !dbg !4399
  %call.i = call zeroext i1 @test_and_clear_bit(i64 10, i64* %flags.i) #14, !dbg !4399
  %conv.i = zext i1 %call.i to i32, !dbg !4399
  %tobool36 = icmp ne i32 %conv.i, 0, !dbg !4474
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !4475

if.then37:                                        ; preds = %land.lhs.true34
  %28 = load i64, i64* %phys, align 8, !dbg !4476
  %29 = load i32, i32* %order, align 4, !dbg !4477
  call void @xen_destroy_contiguous_region(i64 %28, i32 %29) #9, !dbg !4478
  br label %if.end38, !dbg !4478

if.end38:                                         ; preds = %if.then37, %land.lhs.true34, %if.end26
  %30 = load %struct.device*, %struct.device** %hwdev.addr, align 8, !dbg !4479
  %31 = load i64, i64* %size.addr, align 8, !dbg !4480
  %32 = load i8*, i8** %vaddr.addr, align 8, !dbg !4481
  %33 = load %struct.device*, %struct.device** %hwdev.addr, align 8, !dbg !4482
  %34 = load i64, i64* %phys, align 8, !dbg !4483
  %call39 = call i64 @phys_to_dma(%struct.device* %33, i64 %34) #9, !dbg !4484
  %35 = load i64, i64* %attrs.addr, align 8, !dbg !4485
  call void @xen_free_coherent_pages(%struct.device* %30, i64 %31, i8* %32, i64 %call39, i64 %35) #9, !dbg !4486
  ret void, !dbg !4487
}

; Function Attrs: noredzone
declare dso_local %struct.page* @dma_common_alloc_pages(%struct.device*, i64, i64*, i32, i32) #2

; Function Attrs: noredzone
declare dso_local void @dma_common_free_pages(%struct.device*, i64, %struct.page*, i64, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @dma_common_mmap(%struct.device*, %struct.vm_area_struct*, i8*, i64, i64, i64) #2

; Function Attrs: noredzone
declare dso_local i32 @dma_common_get_sgtable(%struct.device*, %struct.sg_table*, i8*, i64, i64, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @xen_swiotlb_map_page(%struct.device* %dev, %struct.page* %page, i64 %offset, i64 %size, i32 %dir, i64 %attrs) #0 !dbg !4488 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %page.addr = alloca %struct.page*, align 8
  %offset.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %dir.addr = alloca i32, align 4
  %attrs.addr = alloca i64, align 8
  %map = alloca i64, align 8
  %phys = alloca i64, align 8
  %dev_addr = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4489, metadata !DIExpression()), !dbg !4490
  store %struct.page* %page, %struct.page** %page.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.page** %page.addr, metadata !4491, metadata !DIExpression()), !dbg !4492
  store i64 %offset, i64* %offset.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %offset.addr, metadata !4493, metadata !DIExpression()), !dbg !4494
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4495, metadata !DIExpression()), !dbg !4496
  store i32 %dir, i32* %dir.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dir.addr, metadata !4497, metadata !DIExpression()), !dbg !4498
  store i64 %attrs, i64* %attrs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %attrs.addr, metadata !4499, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.declare(metadata i64* %map, metadata !4501, metadata !DIExpression()), !dbg !4502
  call void @llvm.dbg.declare(metadata i64* %phys, metadata !4503, metadata !DIExpression()), !dbg !4504
  %0 = load %struct.page*, %struct.page** %page.addr, align 8, !dbg !4505
  %1 = load i64, i64* @vmemmap_base, align 8, !dbg !4505
  %2 = inttoptr i64 %1 to %struct.page*, !dbg !4505
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %0 to i64, !dbg !4505
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %2 to i64, !dbg !4505
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4505
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !4505
  %shl = shl i64 %sub.ptr.div, 12, !dbg !4505
  %3 = load i64, i64* %offset.addr, align 8, !dbg !4506
  %add = add i64 %shl, %3, !dbg !4507
  store i64 %add, i64* %phys, align 8, !dbg !4504
  call void @llvm.dbg.declare(metadata i64* %dev_addr, metadata !4508, metadata !DIExpression()), !dbg !4509
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4510
  %5 = load i64, i64* %phys, align 8, !dbg !4511
  %call = call i64 @xen_phys_to_dma(%struct.device* %4, i64 %5) #9, !dbg !4512
  store i64 %call, i64* %dev_addr, align 8, !dbg !4509
  br label %do.body, !dbg !4513

do.body:                                          ; preds = %entry
  %6 = load i32, i32* %dir.addr, align 4, !dbg !4514
  %cmp = icmp eq i32 %6, 3, !dbg !4514
  %lnot = xor i1 %cmp, true, !dbg !4514
  %lnot1 = xor i1 %lnot, true, !dbg !4514
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4514
  %conv = sext i32 %lnot.ext to i64, !dbg !4514
  %tobool = icmp ne i64 %conv, 0, !dbg !4514
  br i1 %tobool, label %if.then, label %if.end, !dbg !4517

if.then:                                          ; preds = %do.body
  br label %do.body2, !dbg !4514

do.body2:                                         ; preds = %if.then
  br label %do.body3, !dbg !4518

do.body3:                                         ; preds = %do.body2
  br label %do.end, !dbg !4520

do.end:                                           ; preds = %do.body3
  br label %do.body4, !dbg !4518

do.body4:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 381, i32 0, i64 12) #15, !dbg !4522, !srcloc !4524
  br label %do.end5, !dbg !4522

do.end5:                                          ; preds = %do.body4
  br label %do.body6, !dbg !4518

do.body6:                                         ; preds = %do.end5
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 239) #15, !dbg !4525, !srcloc !4528
  unreachable, !dbg !4529

do.end7:                                          ; No predecessors!
  br label %do.end8, !dbg !4518

do.end8:                                          ; preds = %do.end7
  br label %if.end, !dbg !4518

if.end:                                           ; preds = %do.end8, %do.body
  br label %do.end9, !dbg !4517

do.end9:                                          ; preds = %if.end
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4530
  %8 = load i64, i64* %dev_addr, align 8, !dbg !4532
  %9 = load i64, i64* %size.addr, align 8, !dbg !4533
  %call10 = call zeroext i1 @dma_capable(%struct.device* %7, i64 %8, i64 %9, i1 zeroext true) #9, !dbg !4534
  br i1 %call10, label %land.lhs.true, label %if.end20, !dbg !4535

land.lhs.true:                                    ; preds = %do.end9
  %10 = load i64, i64* %phys, align 8, !dbg !4536
  %11 = load i64, i64* %size.addr, align 8, !dbg !4537
  %call12 = call i32 @range_straddles_page_boundary(i64 %10, i64 %11) #9, !dbg !4538
  %tobool13 = icmp ne i32 %call12, 0, !dbg !4538
  br i1 %tobool13, label %if.end20, label %land.lhs.true14, !dbg !4539

land.lhs.true14:                                  ; preds = %land.lhs.true
  %12 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4540
  %13 = load i64, i64* %phys, align 8, !dbg !4541
  %14 = load i64, i64* %dev_addr, align 8, !dbg !4542
  %call15 = call zeroext i1 @xen_arch_need_swiotlb(%struct.device* %12, i64 %13, i64 %14) #9, !dbg !4543
  br i1 %call15, label %if.end20, label %land.lhs.true16, !dbg !4544

land.lhs.true16:                                  ; preds = %land.lhs.true14
  %15 = load i32, i32* @swiotlb_force, align 4, !dbg !4545
  %cmp17 = icmp ne i32 %15, 1, !dbg !4546
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !4547

if.then19:                                        ; preds = %land.lhs.true16
  br label %done, !dbg !4548

if.end20:                                         ; preds = %land.lhs.true16, %land.lhs.true14, %land.lhs.true, %do.end9
  %16 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4549
  %17 = load i64, i64* %dev_addr, align 8, !dbg !4550
  %18 = load i64, i64* %size.addr, align 8, !dbg !4551
  %19 = load i32, i32* @swiotlb_force, align 4, !dbg !4552
  call void @trace_swiotlb_bounced(%struct.device* %16, i64 %17, i64 %18, i32 %19) #9, !dbg !4553
  %20 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4554
  %21 = load i64, i64* %phys, align 8, !dbg !4555
  %22 = load i64, i64* %size.addr, align 8, !dbg !4556
  %23 = load i64, i64* %size.addr, align 8, !dbg !4557
  %24 = load i32, i32* %dir.addr, align 4, !dbg !4558
  %25 = load i64, i64* %attrs.addr, align 8, !dbg !4559
  %call21 = call i64 @swiotlb_tbl_map_single(%struct.device* %20, i64 %21, i64 %22, i64 %23, i32 %24, i64 %25) #9, !dbg !4560
  store i64 %call21, i64* %map, align 8, !dbg !4561
  %26 = load i64, i64* %map, align 8, !dbg !4562
  %cmp22 = icmp eq i64 %26, -1, !dbg !4564
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !4565

if.then24:                                        ; preds = %if.end20
  store i64 -1, i64* %retval, align 8, !dbg !4566
  br label %return, !dbg !4566

if.end25:                                         ; preds = %if.end20
  %27 = load i64, i64* %map, align 8, !dbg !4567
  store i64 %27, i64* %phys, align 8, !dbg !4568
  %28 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4569
  %29 = load i64, i64* %map, align 8, !dbg !4570
  %call26 = call i64 @xen_phys_to_dma(%struct.device* %28, i64 %29) #9, !dbg !4571
  store i64 %call26, i64* %dev_addr, align 8, !dbg !4572
  %30 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4573
  %31 = load i64, i64* %dev_addr, align 8, !dbg !4573
  %32 = load i64, i64* %size.addr, align 8, !dbg !4573
  %call27 = call zeroext i1 @dma_capable(%struct.device* %30, i64 %31, i64 %32, i1 zeroext true) #9, !dbg !4573
  %lnot28 = xor i1 %call27, true, !dbg !4573
  %lnot30 = xor i1 %lnot28, true, !dbg !4573
  %lnot32 = xor i1 %lnot30, true, !dbg !4573
  %lnot.ext33 = zext i1 %lnot32 to i32, !dbg !4573
  %conv34 = sext i32 %lnot.ext33 to i64, !dbg !4573
  %tobool35 = icmp ne i64 %conv34, 0, !dbg !4573
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !4575

if.then36:                                        ; preds = %if.end25
  %33 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4576
  %34 = load i64, i64* %map, align 8, !dbg !4578
  %35 = load i64, i64* %size.addr, align 8, !dbg !4579
  %36 = load i64, i64* %size.addr, align 8, !dbg !4580
  %37 = load i32, i32* %dir.addr, align 4, !dbg !4581
  %38 = load i64, i64* %attrs.addr, align 8, !dbg !4582
  %or = or i64 %38, 32, !dbg !4583
  call void @swiotlb_tbl_unmap_single(%struct.device* %33, i64 %34, i64 %35, i64 %36, i32 %37, i64 %or) #9, !dbg !4584
  store i64 -1, i64* %retval, align 8, !dbg !4585
  br label %return, !dbg !4585

if.end37:                                         ; preds = %if.end25
  br label %done, !dbg !4573

done:                                             ; preds = %if.end37, %if.then19
  call void @llvm.dbg.label(metadata !4586), !dbg !4587
  %39 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4588
  %call38 = call zeroext i1 @dev_is_dma_coherent(%struct.device* %39) #9, !dbg !4590
  br i1 %call38, label %if.end47, label %land.lhs.true39, !dbg !4591

land.lhs.true39:                                  ; preds = %done
  %40 = load i64, i64* %attrs.addr, align 8, !dbg !4592
  %and = and i64 %40, 32, !dbg !4593
  %tobool40 = icmp ne i64 %and, 0, !dbg !4593
  br i1 %tobool40, label %if.end47, label %if.then41, !dbg !4594

if.then41:                                        ; preds = %land.lhs.true39
  %41 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4595
  %42 = load i64, i64* %dev_addr, align 8, !dbg !4595
  %call42 = call i64 @dma_to_phys(%struct.device* %41, i64 %42) #9, !dbg !4595
  %shr = lshr i64 %call42, 12, !dbg !4595
  %call43 = call i32 @pfn_valid(i64 %shr) #9, !dbg !4598
  %tobool44 = icmp ne i32 %call43, 0, !dbg !4598
  br i1 %tobool44, label %if.then45, label %if.else, !dbg !4599

if.then45:                                        ; preds = %if.then41
  %43 = load i64, i64* %phys, align 8, !dbg !4600
  %44 = load i64, i64* %size.addr, align 8, !dbg !4601
  %45 = load i32, i32* %dir.addr, align 4, !dbg !4602
  call void @arch_sync_dma_for_device(i64 %43, i64 %44, i32 %45) #9, !dbg !4603
  br label %if.end46, !dbg !4603

if.else:                                          ; preds = %if.then41
  %46 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4604
  %47 = load i64, i64* %dev_addr, align 8, !dbg !4605
  %48 = load i64, i64* %size.addr, align 8, !dbg !4606
  %49 = load i32, i32* %dir.addr, align 4, !dbg !4607
  call void @xen_dma_sync_for_device(%struct.device* %46, i64 %47, i64 %48, i32 %49) #9, !dbg !4608
  br label %if.end46

if.end46:                                         ; preds = %if.else, %if.then45
  br label %if.end47, !dbg !4609

if.end47:                                         ; preds = %if.end46, %land.lhs.true39, %done
  %50 = load i64, i64* %dev_addr, align 8, !dbg !4610
  store i64 %50, i64* %retval, align 8, !dbg !4611
  br label %return, !dbg !4611

return:                                           ; preds = %if.end47, %if.then36, %if.then24
  %51 = load i64, i64* %retval, align 8, !dbg !4612
  ret i64 %51, !dbg !4612
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xen_swiotlb_unmap_page(%struct.device* %hwdev, i64 %dev_addr, i64 %size, i32 %dir, i64 %attrs) #0 !dbg !4613 {
entry:
  %hwdev.addr = alloca %struct.device*, align 8
  %dev_addr.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %dir.addr = alloca i32, align 4
  %attrs.addr = alloca i64, align 8
  %paddr = alloca i64, align 8
  store %struct.device* %hwdev, %struct.device** %hwdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %hwdev.addr, metadata !4614, metadata !DIExpression()), !dbg !4615
  store i64 %dev_addr, i64* %dev_addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dev_addr.addr, metadata !4616, metadata !DIExpression()), !dbg !4617
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4618, metadata !DIExpression()), !dbg !4619
  store i32 %dir, i32* %dir.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dir.addr, metadata !4620, metadata !DIExpression()), !dbg !4621
  store i64 %attrs, i64* %attrs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %attrs.addr, metadata !4622, metadata !DIExpression()), !dbg !4623
  call void @llvm.dbg.declare(metadata i64* %paddr, metadata !4624, metadata !DIExpression()), !dbg !4625
  %0 = load %struct.device*, %struct.device** %hwdev.addr, align 8, !dbg !4626
  %1 = load i64, i64* %dev_addr.addr, align 8, !dbg !4627
  %call = call i64 @xen_dma_to_phys(%struct.device* %0, i64 %1) #9, !dbg !4628
  store i64 %call, i64* %paddr, align 8, !dbg !4625
  br label %do.body, !dbg !4629

do.body:                                          ; preds = %entry
  %2 = load i32, i32* %dir.addr, align 4, !dbg !4630
  %cmp = icmp eq i32 %2, 3, !dbg !4630
  %lnot = xor i1 %cmp, true, !dbg !4630
  %lnot1 = xor i1 %lnot, true, !dbg !4630
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4630
  %conv = sext i32 %lnot.ext to i64, !dbg !4630
  %tobool = icmp ne i64 %conv, 0, !dbg !4630
  br i1 %tobool, label %if.then, label %if.end, !dbg !4633

if.then:                                          ; preds = %do.body
  br label %do.body2, !dbg !4630

do.body2:                                         ; preds = %if.then
  br label %do.body3, !dbg !4634

do.body3:                                         ; preds = %do.body2
  br label %do.end, !dbg !4636

do.end:                                           ; preds = %do.body3
  br label %do.body4, !dbg !4634

do.body4:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 437, i32 0, i64 12) #15, !dbg !4638, !srcloc !4640
  br label %do.end5, !dbg !4638

do.end5:                                          ; preds = %do.body4
  br label %do.body6, !dbg !4634

do.body6:                                         ; preds = %do.end5
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 240) #15, !dbg !4641, !srcloc !4644
  unreachable, !dbg !4645

do.end7:                                          ; No predecessors!
  br label %do.end8, !dbg !4634

do.end8:                                          ; preds = %do.end7
  br label %if.end, !dbg !4634

if.end:                                           ; preds = %do.end8, %do.body
  br label %do.end9, !dbg !4633

do.end9:                                          ; preds = %if.end
  %3 = load %struct.device*, %struct.device** %hwdev.addr, align 8, !dbg !4646
  %call10 = call zeroext i1 @dev_is_dma_coherent(%struct.device* %3) #9, !dbg !4648
  br i1 %call10, label %if.end18, label %land.lhs.true, !dbg !4649

land.lhs.true:                                    ; preds = %do.end9
  %4 = load i64, i64* %attrs.addr, align 8, !dbg !4650
  %and = and i64 %4, 32, !dbg !4651
  %tobool11 = icmp ne i64 %and, 0, !dbg !4651
  br i1 %tobool11, label %if.end18, label %if.then12, !dbg !4652

if.then12:                                        ; preds = %land.lhs.true
  %5 = load %struct.device*, %struct.device** %hwdev.addr, align 8, !dbg !4653
  %6 = load i64, i64* %dev_addr.addr, align 8, !dbg !4653
  %call13 = call i64 @dma_to_phys(%struct.device* %5, i64 %6) #9, !dbg !4653
  %shr = lshr i64 %call13, 12, !dbg !4653
  %call14 = call i32 @pfn_valid(i64 %shr) #9, !dbg !4656
  %tobool15 = icmp ne i32 %call14, 0, !dbg !4656
  br i1 %tobool15, label %if.then16, label %if.else, !dbg !4657

if.then16:                                        ; preds = %if.then12
  %7 = load i64, i64* %paddr, align 8, !dbg !4658
  %8 = load i64, i64* %size.addr, align 8, !dbg !4659
  %9 = load i32, i32* %dir.addr, align 4, !dbg !4660
  call void @arch_sync_dma_for_cpu(i64 %7, i64 %8, i32 %9) #9, !dbg !4661
  br label %if.end17, !dbg !4661

if.else:                                          ; preds = %if.then12
  %10 = load %struct.device*, %struct.device** %hwdev.addr, align 8, !dbg !4662
  %11 = load i64, i64* %dev_addr.addr, align 8, !dbg !4663
  %12 = load i64, i64* %size.addr, align 8, !dbg !4664
  %13 = load i32, i32* %dir.addr, align 4, !dbg !4665
  call void @xen_dma_sync_for_cpu(%struct.device* %10, i64 %11, i64 %12, i32 %13) #9, !dbg !4666
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then16
  br label %if.end18, !dbg !4667

if.end18:                                         ; preds = %if.end17, %land.lhs.true, %do.end9
  %14 = load %struct.device*, %struct.device** %hwdev.addr, align 8, !dbg !4668
  %15 = load i64, i64* %dev_addr.addr, align 8, !dbg !4670
  %call19 = call i32 @is_xen_swiotlb_buffer(%struct.device* %14, i64 %15) #9, !dbg !4671
  %tobool20 = icmp ne i32 %call19, 0, !dbg !4671
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !4672

if.then21:                                        ; preds = %if.end18
  %16 = load %struct.device*, %struct.device** %hwdev.addr, align 8, !dbg !4673
  %17 = load i64, i64* %paddr, align 8, !dbg !4674
  %18 = load i64, i64* %size.addr, align 8, !dbg !4675
  %19 = load i64, i64* %size.addr, align 8, !dbg !4676
  %20 = load i32, i32* %dir.addr, align 4, !dbg !4677
  %21 = load i64, i64* %attrs.addr, align 8, !dbg !4678
  call void @swiotlb_tbl_unmap_single(%struct.device* %16, i64 %17, i64 %18, i64 %19, i32 %20, i64 %21) #9, !dbg !4679
  br label %if.end22, !dbg !4679

if.end22:                                         ; preds = %if.then21, %if.end18
  ret void, !dbg !4680
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_swiotlb_map_sg(%struct.device* %dev, %struct.scatterlist* %sgl, i32 %nelems, i32 %dir, i64 %attrs) #0 !dbg !4681 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %sgl.addr = alloca %struct.scatterlist*, align 8
  %nelems.addr = alloca i32, align 4
  %dir.addr = alloca i32, align 4
  %attrs.addr = alloca i64, align 8
  %sg = alloca %struct.scatterlist*, align 8
  %i = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4682, metadata !DIExpression()), !dbg !4683
  store %struct.scatterlist* %sgl, %struct.scatterlist** %sgl.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.scatterlist** %sgl.addr, metadata !4684, metadata !DIExpression()), !dbg !4685
  store i32 %nelems, i32* %nelems.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nelems.addr, metadata !4686, metadata !DIExpression()), !dbg !4687
  store i32 %dir, i32* %dir.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dir.addr, metadata !4688, metadata !DIExpression()), !dbg !4689
  store i64 %attrs, i64* %attrs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %attrs.addr, metadata !4690, metadata !DIExpression()), !dbg !4691
  call void @llvm.dbg.declare(metadata %struct.scatterlist** %sg, metadata !4692, metadata !DIExpression()), !dbg !4693
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4694, metadata !DIExpression()), !dbg !4695
  br label %do.body, !dbg !4696

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %dir.addr, align 4, !dbg !4697
  %cmp = icmp eq i32 %0, 3, !dbg !4697
  %lnot = xor i1 %cmp, true, !dbg !4697
  %lnot1 = xor i1 %lnot, true, !dbg !4697
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4697
  %conv = sext i32 %lnot.ext to i64, !dbg !4697
  %tobool = icmp ne i64 %conv, 0, !dbg !4697
  br i1 %tobool, label %if.then, label %if.end, !dbg !4700

if.then:                                          ; preds = %do.body
  br label %do.body2, !dbg !4697

do.body2:                                         ; preds = %if.then
  br label %do.body3, !dbg !4701

do.body3:                                         ; preds = %do.body2
  br label %do.end, !dbg !4703

do.end:                                           ; preds = %do.body3
  br label %do.body4, !dbg !4701

do.body4:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 511, i32 0, i64 12) #15, !dbg !4705, !srcloc !4707
  br label %do.end5, !dbg !4705

do.end5:                                          ; preds = %do.body4
  br label %do.body6, !dbg !4701

do.body6:                                         ; preds = %do.end5
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 242) #15, !dbg !4708, !srcloc !4711
  unreachable, !dbg !4712

do.end7:                                          ; No predecessors!
  br label %do.end8, !dbg !4701

do.end8:                                          ; preds = %do.end7
  br label %if.end, !dbg !4701

if.end:                                           ; preds = %do.end8, %do.body
  br label %do.end9, !dbg !4700

do.end9:                                          ; preds = %if.end
  store i32 0, i32* %i, align 4, !dbg !4713
  %1 = load %struct.scatterlist*, %struct.scatterlist** %sgl.addr, align 8, !dbg !4713
  store %struct.scatterlist* %1, %struct.scatterlist** %sg, align 8, !dbg !4713
  br label %for.cond, !dbg !4713

for.cond:                                         ; preds = %for.inc, %do.end9
  %2 = load i32, i32* %i, align 4, !dbg !4715
  %3 = load i32, i32* %nelems.addr, align 4, !dbg !4715
  %cmp10 = icmp slt i32 %2, %3, !dbg !4715
  br i1 %cmp10, label %for.body, label %for.end, !dbg !4713

for.body:                                         ; preds = %for.cond
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4717
  %5 = load %struct.scatterlist*, %struct.scatterlist** %sg, align 8, !dbg !4719
  %call = call %struct.page* @sg_page(%struct.scatterlist* %5) #9, !dbg !4720
  %6 = load %struct.scatterlist*, %struct.scatterlist** %sg, align 8, !dbg !4721
  %offset = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %6, i32 0, i32 1, !dbg !4722
  %7 = load i32, i32* %offset, align 8, !dbg !4722
  %conv12 = zext i32 %7 to i64, !dbg !4721
  %8 = load %struct.scatterlist*, %struct.scatterlist** %sg, align 8, !dbg !4723
  %length = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %8, i32 0, i32 2, !dbg !4724
  %9 = load i32, i32* %length, align 4, !dbg !4724
  %conv13 = zext i32 %9 to i64, !dbg !4723
  %10 = load i32, i32* %dir.addr, align 4, !dbg !4725
  %11 = load i64, i64* %attrs.addr, align 8, !dbg !4726
  %call14 = call i64 @xen_swiotlb_map_page(%struct.device* %4, %struct.page* %call, i64 %conv12, i64 %conv13, i32 %10, i64 %11) #9, !dbg !4727
  %12 = load %struct.scatterlist*, %struct.scatterlist** %sg, align 8, !dbg !4728
  %dma_address = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %12, i32 0, i32 3, !dbg !4729
  store i64 %call14, i64* %dma_address, align 8, !dbg !4730
  %13 = load %struct.scatterlist*, %struct.scatterlist** %sg, align 8, !dbg !4731
  %dma_address15 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %13, i32 0, i32 3, !dbg !4733
  %14 = load i64, i64* %dma_address15, align 8, !dbg !4733
  %cmp16 = icmp eq i64 %14, -1, !dbg !4734
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !4735

if.then18:                                        ; preds = %for.body
  br label %out_unmap, !dbg !4736

if.end19:                                         ; preds = %for.body
  %15 = load %struct.scatterlist*, %struct.scatterlist** %sg, align 8, !dbg !4737
  %length20 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %15, i32 0, i32 2, !dbg !4738
  %16 = load i32, i32* %length20, align 4, !dbg !4738
  %17 = load %struct.scatterlist*, %struct.scatterlist** %sg, align 8, !dbg !4739
  %dma_length = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %17, i32 0, i32 4, !dbg !4739
  store i32 %16, i32* %dma_length, align 8, !dbg !4740
  br label %for.inc, !dbg !4741

for.inc:                                          ; preds = %if.end19
  %18 = load i32, i32* %i, align 4, !dbg !4715
  %inc = add i32 %18, 1, !dbg !4715
  store i32 %inc, i32* %i, align 4, !dbg !4715
  %19 = load %struct.scatterlist*, %struct.scatterlist** %sg, align 8, !dbg !4715
  %call21 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %19) #9, !dbg !4715
  store %struct.scatterlist* %call21, %struct.scatterlist** %sg, align 8, !dbg !4715
  br label %for.cond, !dbg !4715, !llvm.loop !4742

for.end:                                          ; preds = %for.cond
  %20 = load i32, i32* %nelems.addr, align 4, !dbg !4744
  store i32 %20, i32* %retval, align 4, !dbg !4745
  br label %return, !dbg !4745

out_unmap:                                        ; preds = %if.then18
  call void @llvm.dbg.label(metadata !4746), !dbg !4747
  %21 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4748
  %22 = load %struct.scatterlist*, %struct.scatterlist** %sgl.addr, align 8, !dbg !4749
  %23 = load i32, i32* %i, align 4, !dbg !4750
  %24 = load i32, i32* %dir.addr, align 4, !dbg !4751
  %25 = load i64, i64* %attrs.addr, align 8, !dbg !4752
  %or = or i64 %25, 32, !dbg !4753
  call void @xen_swiotlb_unmap_sg(%struct.device* %21, %struct.scatterlist* %22, i32 %23, i32 %24, i64 %or) #9, !dbg !4754
  %26 = load %struct.scatterlist*, %struct.scatterlist** %sgl.addr, align 8, !dbg !4755
  %dma_length22 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %26, i32 0, i32 4, !dbg !4755
  store i32 0, i32* %dma_length22, align 8, !dbg !4756
  store i32 0, i32* %retval, align 4, !dbg !4757
  br label %return, !dbg !4757

return:                                           ; preds = %out_unmap, %for.end
  %27 = load i32, i32* %retval, align 4, !dbg !4758
  ret i32 %27, !dbg !4758
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xen_swiotlb_unmap_sg(%struct.device* %hwdev, %struct.scatterlist* %sgl, i32 %nelems, i32 %dir, i64 %attrs) #0 !dbg !4759 {
entry:
  %hwdev.addr = alloca %struct.device*, align 8
  %sgl.addr = alloca %struct.scatterlist*, align 8
  %nelems.addr = alloca i32, align 4
  %dir.addr = alloca i32, align 4
  %attrs.addr = alloca i64, align 8
  %sg = alloca %struct.scatterlist*, align 8
  %i = alloca i32, align 4
  store %struct.device* %hwdev, %struct.device** %hwdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %hwdev.addr, metadata !4760, metadata !DIExpression()), !dbg !4761
  store %struct.scatterlist* %sgl, %struct.scatterlist** %sgl.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.scatterlist** %sgl.addr, metadata !4762, metadata !DIExpression()), !dbg !4763
  store i32 %nelems, i32* %nelems.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nelems.addr, metadata !4764, metadata !DIExpression()), !dbg !4765
  store i32 %dir, i32* %dir.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dir.addr, metadata !4766, metadata !DIExpression()), !dbg !4767
  store i64 %attrs, i64* %attrs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %attrs.addr, metadata !4768, metadata !DIExpression()), !dbg !4769
  call void @llvm.dbg.declare(metadata %struct.scatterlist** %sg, metadata !4770, metadata !DIExpression()), !dbg !4771
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4772, metadata !DIExpression()), !dbg !4773
  br label %do.body, !dbg !4774

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %dir.addr, align 4, !dbg !4775
  %cmp = icmp eq i32 %0, 3, !dbg !4775
  %lnot = xor i1 %cmp, true, !dbg !4775
  %lnot1 = xor i1 %lnot, true, !dbg !4775
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4775
  %conv = sext i32 %lnot.ext to i64, !dbg !4775
  %tobool = icmp ne i64 %conv, 0, !dbg !4775
  br i1 %tobool, label %if.then, label %if.end, !dbg !4778

if.then:                                          ; preds = %do.body
  br label %do.body2, !dbg !4775

do.body2:                                         ; preds = %if.then
  br label %do.body3, !dbg !4779

do.body3:                                         ; preds = %do.body2
  br label %do.end, !dbg !4781

do.end:                                           ; preds = %do.body3
  br label %do.body4, !dbg !4779

do.body4:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 496, i32 0, i64 12) #15, !dbg !4783, !srcloc !4785
  br label %do.end5, !dbg !4783

do.end5:                                          ; preds = %do.body4
  br label %do.body6, !dbg !4779

do.body6:                                         ; preds = %do.end5
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 241) #15, !dbg !4786, !srcloc !4789
  unreachable, !dbg !4790

do.end7:                                          ; No predecessors!
  br label %do.end8, !dbg !4779

do.end8:                                          ; preds = %do.end7
  br label %if.end, !dbg !4779

if.end:                                           ; preds = %do.end8, %do.body
  br label %do.end9, !dbg !4778

do.end9:                                          ; preds = %if.end
  store i32 0, i32* %i, align 4, !dbg !4791
  %1 = load %struct.scatterlist*, %struct.scatterlist** %sgl.addr, align 8, !dbg !4791
  store %struct.scatterlist* %1, %struct.scatterlist** %sg, align 8, !dbg !4791
  br label %for.cond, !dbg !4791

for.cond:                                         ; preds = %for.inc, %do.end9
  %2 = load i32, i32* %i, align 4, !dbg !4793
  %3 = load i32, i32* %nelems.addr, align 4, !dbg !4793
  %cmp10 = icmp slt i32 %2, %3, !dbg !4793
  br i1 %cmp10, label %for.body, label %for.end, !dbg !4791

for.body:                                         ; preds = %for.cond
  %4 = load %struct.device*, %struct.device** %hwdev.addr, align 8, !dbg !4795
  %5 = load %struct.scatterlist*, %struct.scatterlist** %sg, align 8, !dbg !4796
  %dma_address = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %5, i32 0, i32 3, !dbg !4797
  %6 = load i64, i64* %dma_address, align 8, !dbg !4797
  %7 = load %struct.scatterlist*, %struct.scatterlist** %sg, align 8, !dbg !4798
  %dma_length = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %7, i32 0, i32 4, !dbg !4798
  %8 = load i32, i32* %dma_length, align 8, !dbg !4798
  %conv12 = zext i32 %8 to i64, !dbg !4798
  %9 = load i32, i32* %dir.addr, align 4, !dbg !4799
  %10 = load i64, i64* %attrs.addr, align 8, !dbg !4800
  call void @xen_swiotlb_unmap_page(%struct.device* %4, i64 %6, i64 %conv12, i32 %9, i64 %10) #9, !dbg !4801
  br label %for.inc, !dbg !4801

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !4793
  %inc = add i32 %11, 1, !dbg !4793
  store i32 %inc, i32* %i, align 4, !dbg !4793
  %12 = load %struct.scatterlist*, %struct.scatterlist** %sg, align 8, !dbg !4793
  %call = call %struct.scatterlist* @sg_next(%struct.scatterlist* %12) #9, !dbg !4793
  store %struct.scatterlist* %call, %struct.scatterlist** %sg, align 8, !dbg !4793
  br label %for.cond, !dbg !4793, !llvm.loop !4802

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4804
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xen_swiotlb_sync_single_for_cpu(%struct.device* %dev, i64 %dma_addr, i64 %size, i32 %dir) #0 !dbg !4805 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %dma_addr.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %dir.addr = alloca i32, align 4
  %paddr = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4806, metadata !DIExpression()), !dbg !4807
  store i64 %dma_addr, i64* %dma_addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dma_addr.addr, metadata !4808, metadata !DIExpression()), !dbg !4809
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4810, metadata !DIExpression()), !dbg !4811
  store i32 %dir, i32* %dir.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dir.addr, metadata !4812, metadata !DIExpression()), !dbg !4813
  call void @llvm.dbg.declare(metadata i64* %paddr, metadata !4814, metadata !DIExpression()), !dbg !4815
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4816
  %1 = load i64, i64* %dma_addr.addr, align 8, !dbg !4817
  %call = call i64 @xen_dma_to_phys(%struct.device* %0, i64 %1) #9, !dbg !4818
  store i64 %call, i64* %paddr, align 8, !dbg !4815
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4819
  %call1 = call zeroext i1 @dev_is_dma_coherent(%struct.device* %2) #9, !dbg !4821
  br i1 %call1, label %if.end5, label %if.then, !dbg !4822

if.then:                                          ; preds = %entry
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4823
  %4 = load i64, i64* %dma_addr.addr, align 8, !dbg !4823
  %call2 = call i64 @dma_to_phys(%struct.device* %3, i64 %4) #9, !dbg !4823
  %shr = lshr i64 %call2, 12, !dbg !4823
  %call3 = call i32 @pfn_valid(i64 %shr) #9, !dbg !4826
  %tobool = icmp ne i32 %call3, 0, !dbg !4826
  br i1 %tobool, label %if.then4, label %if.else, !dbg !4827

if.then4:                                         ; preds = %if.then
  %5 = load i64, i64* %paddr, align 8, !dbg !4828
  %6 = load i64, i64* %size.addr, align 8, !dbg !4829
  %7 = load i32, i32* %dir.addr, align 4, !dbg !4830
  call void @arch_sync_dma_for_cpu(i64 %5, i64 %6, i32 %7) #9, !dbg !4831
  br label %if.end, !dbg !4831

if.else:                                          ; preds = %if.then
  %8 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4832
  %9 = load i64, i64* %dma_addr.addr, align 8, !dbg !4833
  %10 = load i64, i64* %size.addr, align 8, !dbg !4834
  %11 = load i32, i32* %dir.addr, align 4, !dbg !4835
  call void @xen_dma_sync_for_cpu(%struct.device* %8, i64 %9, i64 %10, i32 %11) #9, !dbg !4836
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  br label %if.end5, !dbg !4837

if.end5:                                          ; preds = %if.end, %entry
  %12 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4838
  %13 = load i64, i64* %dma_addr.addr, align 8, !dbg !4840
  %call6 = call i32 @is_xen_swiotlb_buffer(%struct.device* %12, i64 %13) #9, !dbg !4841
  %tobool7 = icmp ne i32 %call6, 0, !dbg !4841
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !4842

if.then8:                                         ; preds = %if.end5
  %14 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4843
  %15 = load i64, i64* %paddr, align 8, !dbg !4844
  %16 = load i64, i64* %size.addr, align 8, !dbg !4845
  %17 = load i32, i32* %dir.addr, align 4, !dbg !4846
  call void @swiotlb_tbl_sync_single(%struct.device* %14, i64 %15, i64 %16, i32 %17, i32 0) #9, !dbg !4847
  br label %if.end9, !dbg !4847

if.end9:                                          ; preds = %if.then8, %if.end5
  ret void, !dbg !4848
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xen_swiotlb_sync_single_for_device(%struct.device* %dev, i64 %dma_addr, i64 %size, i32 %dir) #0 !dbg !4849 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %dma_addr.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %dir.addr = alloca i32, align 4
  %paddr = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4850, metadata !DIExpression()), !dbg !4851
  store i64 %dma_addr, i64* %dma_addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dma_addr.addr, metadata !4852, metadata !DIExpression()), !dbg !4853
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4854, metadata !DIExpression()), !dbg !4855
  store i32 %dir, i32* %dir.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dir.addr, metadata !4856, metadata !DIExpression()), !dbg !4857
  call void @llvm.dbg.declare(metadata i64* %paddr, metadata !4858, metadata !DIExpression()), !dbg !4859
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4860
  %1 = load i64, i64* %dma_addr.addr, align 8, !dbg !4861
  %call = call i64 @xen_dma_to_phys(%struct.device* %0, i64 %1) #9, !dbg !4862
  store i64 %call, i64* %paddr, align 8, !dbg !4859
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4863
  %3 = load i64, i64* %dma_addr.addr, align 8, !dbg !4865
  %call1 = call i32 @is_xen_swiotlb_buffer(%struct.device* %2, i64 %3) #9, !dbg !4866
  %tobool = icmp ne i32 %call1, 0, !dbg !4866
  br i1 %tobool, label %if.then, label %if.end, !dbg !4867

if.then:                                          ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4868
  %5 = load i64, i64* %paddr, align 8, !dbg !4869
  %6 = load i64, i64* %size.addr, align 8, !dbg !4870
  %7 = load i32, i32* %dir.addr, align 4, !dbg !4871
  call void @swiotlb_tbl_sync_single(%struct.device* %4, i64 %5, i64 %6, i32 %7, i32 1) #9, !dbg !4872
  br label %if.end, !dbg !4872

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4873
  %call2 = call zeroext i1 @dev_is_dma_coherent(%struct.device* %8) #9, !dbg !4875
  br i1 %call2, label %if.end9, label %if.then3, !dbg !4876

if.then3:                                         ; preds = %if.end
  %9 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4877
  %10 = load i64, i64* %dma_addr.addr, align 8, !dbg !4877
  %call4 = call i64 @dma_to_phys(%struct.device* %9, i64 %10) #9, !dbg !4877
  %shr = lshr i64 %call4, 12, !dbg !4877
  %call5 = call i32 @pfn_valid(i64 %shr) #9, !dbg !4880
  %tobool6 = icmp ne i32 %call5, 0, !dbg !4880
  br i1 %tobool6, label %if.then7, label %if.else, !dbg !4881

if.then7:                                         ; preds = %if.then3
  %11 = load i64, i64* %paddr, align 8, !dbg !4882
  %12 = load i64, i64* %size.addr, align 8, !dbg !4883
  %13 = load i32, i32* %dir.addr, align 4, !dbg !4884
  call void @arch_sync_dma_for_device(i64 %11, i64 %12, i32 %13) #9, !dbg !4885
  br label %if.end8, !dbg !4885

if.else:                                          ; preds = %if.then3
  %14 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4886
  %15 = load i64, i64* %dma_addr.addr, align 8, !dbg !4887
  %16 = load i64, i64* %size.addr, align 8, !dbg !4888
  %17 = load i32, i32* %dir.addr, align 4, !dbg !4889
  call void @xen_dma_sync_for_device(%struct.device* %14, i64 %15, i64 %16, i32 %17) #9, !dbg !4890
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then7
  br label %if.end9, !dbg !4891

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !4892
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xen_swiotlb_sync_sg_for_cpu(%struct.device* %dev, %struct.scatterlist* %sgl, i32 %nelems, i32 %dir) #0 !dbg !4893 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %sgl.addr = alloca %struct.scatterlist*, align 8
  %nelems.addr = alloca i32, align 4
  %dir.addr = alloca i32, align 4
  %sg = alloca %struct.scatterlist*, align 8
  %i = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4894, metadata !DIExpression()), !dbg !4895
  store %struct.scatterlist* %sgl, %struct.scatterlist** %sgl.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.scatterlist** %sgl.addr, metadata !4896, metadata !DIExpression()), !dbg !4897
  store i32 %nelems, i32* %nelems.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nelems.addr, metadata !4898, metadata !DIExpression()), !dbg !4899
  store i32 %dir, i32* %dir.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dir.addr, metadata !4900, metadata !DIExpression()), !dbg !4901
  call void @llvm.dbg.declare(metadata %struct.scatterlist** %sg, metadata !4902, metadata !DIExpression()), !dbg !4903
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4904, metadata !DIExpression()), !dbg !4905
  store i32 0, i32* %i, align 4, !dbg !4906
  %0 = load %struct.scatterlist*, %struct.scatterlist** %sgl.addr, align 8, !dbg !4906
  store %struct.scatterlist* %0, %struct.scatterlist** %sg, align 8, !dbg !4906
  br label %for.cond, !dbg !4906

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !4908
  %2 = load i32, i32* %nelems.addr, align 4, !dbg !4908
  %cmp = icmp slt i32 %1, %2, !dbg !4908
  br i1 %cmp, label %for.body, label %for.end, !dbg !4906

for.body:                                         ; preds = %for.cond
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4910
  %4 = load %struct.scatterlist*, %struct.scatterlist** %sg, align 8, !dbg !4912
  %dma_address = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %4, i32 0, i32 3, !dbg !4913
  %5 = load i64, i64* %dma_address, align 8, !dbg !4913
  %6 = load %struct.scatterlist*, %struct.scatterlist** %sg, align 8, !dbg !4914
  %length = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %6, i32 0, i32 2, !dbg !4915
  %7 = load i32, i32* %length, align 4, !dbg !4915
  %conv = zext i32 %7 to i64, !dbg !4914
  %8 = load i32, i32* %dir.addr, align 4, !dbg !4916
  call void @xen_swiotlb_sync_single_for_cpu(%struct.device* %3, i64 %5, i64 %conv, i32 %8) #9, !dbg !4917
  br label %for.inc, !dbg !4918

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !4908
  %inc = add i32 %9, 1, !dbg !4908
  store i32 %inc, i32* %i, align 4, !dbg !4908
  %10 = load %struct.scatterlist*, %struct.scatterlist** %sg, align 8, !dbg !4908
  %call = call %struct.scatterlist* @sg_next(%struct.scatterlist* %10) #9, !dbg !4908
  store %struct.scatterlist* %call, %struct.scatterlist** %sg, align 8, !dbg !4908
  br label %for.cond, !dbg !4908, !llvm.loop !4919

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4921
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xen_swiotlb_sync_sg_for_device(%struct.device* %dev, %struct.scatterlist* %sgl, i32 %nelems, i32 %dir) #0 !dbg !4922 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %sgl.addr = alloca %struct.scatterlist*, align 8
  %nelems.addr = alloca i32, align 4
  %dir.addr = alloca i32, align 4
  %sg = alloca %struct.scatterlist*, align 8
  %i = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4923, metadata !DIExpression()), !dbg !4924
  store %struct.scatterlist* %sgl, %struct.scatterlist** %sgl.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.scatterlist** %sgl.addr, metadata !4925, metadata !DIExpression()), !dbg !4926
  store i32 %nelems, i32* %nelems.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nelems.addr, metadata !4927, metadata !DIExpression()), !dbg !4928
  store i32 %dir, i32* %dir.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dir.addr, metadata !4929, metadata !DIExpression()), !dbg !4930
  call void @llvm.dbg.declare(metadata %struct.scatterlist** %sg, metadata !4931, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4933, metadata !DIExpression()), !dbg !4934
  store i32 0, i32* %i, align 4, !dbg !4935
  %0 = load %struct.scatterlist*, %struct.scatterlist** %sgl.addr, align 8, !dbg !4935
  store %struct.scatterlist* %0, %struct.scatterlist** %sg, align 8, !dbg !4935
  br label %for.cond, !dbg !4935

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !4937
  %2 = load i32, i32* %nelems.addr, align 4, !dbg !4937
  %cmp = icmp slt i32 %1, %2, !dbg !4937
  br i1 %cmp, label %for.body, label %for.end, !dbg !4935

for.body:                                         ; preds = %for.cond
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4939
  %4 = load %struct.scatterlist*, %struct.scatterlist** %sg, align 8, !dbg !4941
  %dma_address = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %4, i32 0, i32 3, !dbg !4942
  %5 = load i64, i64* %dma_address, align 8, !dbg !4942
  %6 = load %struct.scatterlist*, %struct.scatterlist** %sg, align 8, !dbg !4943
  %length = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %6, i32 0, i32 2, !dbg !4944
  %7 = load i32, i32* %length, align 4, !dbg !4944
  %conv = zext i32 %7 to i64, !dbg !4943
  %8 = load i32, i32* %dir.addr, align 4, !dbg !4945
  call void @xen_swiotlb_sync_single_for_device(%struct.device* %3, i64 %5, i64 %conv, i32 %8) #9, !dbg !4946
  br label %for.inc, !dbg !4947

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !4937
  %inc = add i32 %9, 1, !dbg !4937
  store i32 %inc, i32* %i, align 4, !dbg !4937
  %10 = load %struct.scatterlist*, %struct.scatterlist** %sg, align 8, !dbg !4937
  %call = call %struct.scatterlist* @sg_next(%struct.scatterlist* %10) #9, !dbg !4937
  store %struct.scatterlist* %call, %struct.scatterlist** %sg, align 8, !dbg !4937
  br label %for.cond, !dbg !4937, !llvm.loop !4948

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4950
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_swiotlb_dma_supported(%struct.device* %hwdev, i64 %mask) #0 !dbg !4951 {
entry:
  %hwdev.addr = alloca %struct.device*, align 8
  %mask.addr = alloca i64, align 8
  store %struct.device* %hwdev, %struct.device** %hwdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %hwdev.addr, metadata !4952, metadata !DIExpression()), !dbg !4953
  store i64 %mask, i64* %mask.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %mask.addr, metadata !4954, metadata !DIExpression()), !dbg !4955
  %0 = load %struct.device*, %struct.device** %hwdev.addr, align 8, !dbg !4956
  %1 = load i8*, i8** @xen_io_tlb_end, align 8, !dbg !4957
  %add.ptr = getelementptr i8, i8* %1, i64 -1, !dbg !4958
  %call = call i64 @xen_virt_to_bus(%struct.device* %0, i8* %add.ptr) #9, !dbg !4959
  %2 = load i64, i64* %mask.addr, align 8, !dbg !4960
  %cmp = icmp ule i64 %call, %2, !dbg !4961
  %conv = zext i1 %cmp to i32, !dbg !4961
  ret i32 %conv, !dbg !4962
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #3 !dbg !4963 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4105, metadata !DIExpression()), !dbg !4967
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4112, metadata !DIExpression()), !dbg !4969
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4970, metadata !DIExpression()), !dbg !4971
  %0 = load i64, i64* %n.addr, align 8, !dbg !4972
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4969
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4973
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4974
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !4973, !srcloc !4139
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4973
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4975
  %add.i = add i32 %4, 1, !dbg !4976
  %sub = sub i32 %add.i, 1, !dbg !4977
  ret i32 %sub, !dbg !4978
}

; Function Attrs: noredzone
declare dso_local i8* @memblock_alloc_try_nid(i64, i64, i64, i64, i32) #2

; Function Attrs: noredzone
declare dso_local i64 @__get_free_pages(i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @virt_to_phys(i8* %address) #0 !dbg !4979 {
entry:
  %address.addr = alloca i8*, align 8
  store i8* %address, i8** %address.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %address.addr, metadata !4984, metadata !DIExpression()), !dbg !4985
  %0 = load i8*, i8** %address.addr, align 8, !dbg !4986
  %1 = ptrtoint i8* %0 to i64, !dbg !4986
  %call = call i64 @__phys_addr_nodebug(i64 %1) #9, !dbg !4986
  ret i64 %call, !dbg !4987
}

; Function Attrs: noredzone
declare dso_local i32 @xen_create_contiguous_region(i64, i32, i32, i64*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @xen_alloc_coherent_pages(%struct.device* %hwdev, i64 %size, i64* %dma_handle, i32 %flags, i64 %attrs) #0 !dbg !4988 {
entry:
  %hwdev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %dma_handle.addr = alloca i64*, align 8
  %flags.addr = alloca i32, align 4
  %attrs.addr = alloca i64, align 8
  %vstart = alloca i8*, align 8
  store %struct.device* %hwdev, %struct.device** %hwdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %hwdev.addr, metadata !4990, metadata !DIExpression()), !dbg !4991
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4992, metadata !DIExpression()), !dbg !4993
  store i64* %dma_handle, i64** %dma_handle.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %dma_handle.addr, metadata !4994, metadata !DIExpression()), !dbg !4995
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4996, metadata !DIExpression()), !dbg !4997
  store i64 %attrs, i64* %attrs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %attrs.addr, metadata !4998, metadata !DIExpression()), !dbg !4999
  call void @llvm.dbg.declare(metadata i8** %vstart, metadata !5000, metadata !DIExpression()), !dbg !5001
  %0 = load i32, i32* %flags.addr, align 4, !dbg !5002
  %1 = load i64, i64* %size.addr, align 8, !dbg !5003
  %call = call i32 @get_order(i64 %1) #10, !dbg !5004
  %call1 = call i64 @__get_free_pages(i32 %0, i32 %call) #9, !dbg !5005
  %2 = inttoptr i64 %call1 to i8*, !dbg !5006
  store i8* %2, i8** %vstart, align 8, !dbg !5001
  %3 = load i8*, i8** %vstart, align 8, !dbg !5007
  %call2 = call i64 @virt_to_phys(i8* %3) #9, !dbg !5008
  %4 = load i64*, i64** %dma_handle.addr, align 8, !dbg !5009
  store i64 %call2, i64* %4, align 8, !dbg !5010
  %5 = load i8*, i8** %vstart, align 8, !dbg !5011
  ret i8* %5, !dbg !5012
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @dma_to_phys(%struct.device* %dev, i64 %dma_addr) #0 !dbg !5013 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %dma_addr.addr = alloca i64, align 8
  %paddr = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5016, metadata !DIExpression()), !dbg !5017
  store i64 %dma_addr, i64* %dma_addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dma_addr.addr, metadata !5018, metadata !DIExpression()), !dbg !5019
  call void @llvm.dbg.declare(metadata i64* %paddr, metadata !5020, metadata !DIExpression()), !dbg !5021
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5022
  %dma_range_map = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 19, !dbg !5024
  %1 = load %struct.bus_dma_region*, %struct.bus_dma_region** %dma_range_map, align 8, !dbg !5024
  %tobool = icmp ne %struct.bus_dma_region* %1, null, !dbg !5022
  br i1 %tobool, label %if.then, label %if.else, !dbg !5025

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5026
  %3 = load i64, i64* %dma_addr.addr, align 8, !dbg !5027
  %call = call i64 @translate_dma_to_phys(%struct.device* %2, i64 %3) #9, !dbg !5028
  store i64 %call, i64* %paddr, align 8, !dbg !5029
  br label %if.end, !dbg !5030

if.else:                                          ; preds = %entry
  %4 = load i64, i64* %dma_addr.addr, align 8, !dbg !5031
  store i64 %4, i64* %paddr, align 8, !dbg !5032
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i64, i64* %paddr, align 8, !dbg !5033
  ret i64 %5, !dbg !5034
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @xen_phys_to_dma(%struct.device* %dev, i64 %paddr) #0 !dbg !5035 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %paddr.addr = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5038, metadata !DIExpression()), !dbg !5039
  store i64 %paddr, i64* %paddr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %paddr.addr, metadata !5040, metadata !DIExpression()), !dbg !5041
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5042
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5043
  %2 = load i64, i64* %paddr.addr, align 8, !dbg !5044
  %call = call i64 @xen_phys_to_bus(%struct.device* %1, i64 %2) #9, !dbg !5045
  %call1 = call i64 @phys_to_dma(%struct.device* %0, i64 %call) #9, !dbg !5046
  ret i64 %call1, !dbg !5047
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @range_straddles_page_boundary(i64 %p, i64 %size) #0 !dbg !5048 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %next_bfn = alloca i64, align 8
  %xen_pfn = alloca i64, align 8
  %i = alloca i32, align 4
  %nr_pages = alloca i32, align 4
  store i64 %p, i64* %p.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %p.addr, metadata !5051, metadata !DIExpression()), !dbg !5052
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5053, metadata !DIExpression()), !dbg !5054
  call void @llvm.dbg.declare(metadata i64* %next_bfn, metadata !5055, metadata !DIExpression()), !dbg !5056
  call void @llvm.dbg.declare(metadata i64* %xen_pfn, metadata !5057, metadata !DIExpression()), !dbg !5058
  %0 = load i64, i64* %p.addr, align 8, !dbg !5059
  %shr = lshr i64 %0, 12, !dbg !5059
  store i64 %shr, i64* %xen_pfn, align 8, !dbg !5058
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5060, metadata !DIExpression()), !dbg !5061
  call void @llvm.dbg.declare(metadata i32* %nr_pages, metadata !5062, metadata !DIExpression()), !dbg !5063
  %1 = load i64, i64* %p.addr, align 8, !dbg !5064
  %and = and i64 %1, 4095, !dbg !5064
  %2 = load i64, i64* %size.addr, align 8, !dbg !5064
  %add = add i64 %and, %2, !dbg !5064
  %add1 = add i64 %add, 4096, !dbg !5064
  %sub = sub i64 %add1, 1, !dbg !5064
  %shr2 = lshr i64 %sub, 12, !dbg !5064
  %conv = trunc i64 %shr2 to i32, !dbg !5064
  store i32 %conv, i32* %nr_pages, align 4, !dbg !5063
  %3 = load i64, i64* %xen_pfn, align 8, !dbg !5065
  %call = call i64 @pfn_to_gfn(i64 %3) #9, !dbg !5065
  store i64 %call, i64* %next_bfn, align 8, !dbg !5066
  store i32 1, i32* %i, align 4, !dbg !5067
  br label %for.cond, !dbg !5069

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !dbg !5070
  %5 = load i32, i32* %nr_pages, align 4, !dbg !5072
  %cmp = icmp ult i32 %4, %5, !dbg !5073
  br i1 %cmp, label %for.body, label %for.end, !dbg !5074

for.body:                                         ; preds = %for.cond
  %6 = load i64, i64* %xen_pfn, align 8, !dbg !5075
  %inc = add i64 %6, 1, !dbg !5075
  store i64 %inc, i64* %xen_pfn, align 8, !dbg !5075
  %call4 = call i64 @pfn_to_gfn(i64 %inc) #9, !dbg !5075
  %7 = load i64, i64* %next_bfn, align 8, !dbg !5077
  %inc5 = add i64 %7, 1, !dbg !5077
  store i64 %inc5, i64* %next_bfn, align 8, !dbg !5077
  %cmp6 = icmp ne i64 %call4, %inc5, !dbg !5078
  br i1 %cmp6, label %if.then, label %if.end, !dbg !5079

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval, align 4, !dbg !5080
  br label %return, !dbg !5080

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5081

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4, !dbg !5082
  %inc8 = add i32 %8, 1, !dbg !5082
  store i32 %inc8, i32* %i, align 4, !dbg !5082
  br label %for.cond, !dbg !5083, !llvm.loop !5084

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !5086
  br label %return, !dbg !5086

return:                                           ; preds = %for.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !5087
  ret i32 %9, !dbg !5087
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xen_free_coherent_pages(%struct.device* %hwdev, i64 %size, i8* %cpu_addr, i64 %dma_handle, i64 %attrs) #0 !dbg !5088 {
entry:
  %hwdev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %cpu_addr.addr = alloca i8*, align 8
  %dma_handle.addr = alloca i64, align 8
  %attrs.addr = alloca i64, align 8
  store %struct.device* %hwdev, %struct.device** %hwdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %hwdev.addr, metadata !5089, metadata !DIExpression()), !dbg !5090
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5091, metadata !DIExpression()), !dbg !5092
  store i8* %cpu_addr, i8** %cpu_addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %cpu_addr.addr, metadata !5093, metadata !DIExpression()), !dbg !5094
  store i64 %dma_handle, i64* %dma_handle.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dma_handle.addr, metadata !5095, metadata !DIExpression()), !dbg !5096
  store i64 %attrs, i64* %attrs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %attrs.addr, metadata !5097, metadata !DIExpression()), !dbg !5098
  %0 = load i8*, i8** %cpu_addr.addr, align 8, !dbg !5099
  %1 = ptrtoint i8* %0 to i64, !dbg !5100
  %2 = load i64, i64* %size.addr, align 8, !dbg !5101
  %call = call i32 @get_order(i64 %2) #10, !dbg !5102
  call void @free_pages(i64 %1, i32 %call) #9, !dbg !5103
  ret void, !dbg !5104
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @phys_to_dma(%struct.device* %dev, i64 %paddr) #0 !dbg !5105 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %paddr.addr = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5106, metadata !DIExpression()), !dbg !5107
  store i64 %paddr, i64* %paddr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %paddr.addr, metadata !5108, metadata !DIExpression()), !dbg !5109
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5110
  %1 = load i64, i64* %paddr.addr, align 8, !dbg !5110
  %call = call i64 @phys_to_dma_unencrypted(%struct.device* %0, i64 %1) #9, !dbg !5110
  ret i64 %call, !dbg !5111
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @translate_dma_to_phys(%struct.device* %dev, i64 %dma_addr) #0 !dbg !5112 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %dma_addr.addr = alloca i64, align 8
  %m = alloca %struct.bus_dma_region*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5113, metadata !DIExpression()), !dbg !5114
  store i64 %dma_addr, i64* %dma_addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dma_addr.addr, metadata !5115, metadata !DIExpression()), !dbg !5116
  call void @llvm.dbg.declare(metadata %struct.bus_dma_region** %m, metadata !5117, metadata !DIExpression()), !dbg !5118
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5119
  %dma_range_map = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 19, !dbg !5121
  %1 = load %struct.bus_dma_region*, %struct.bus_dma_region** %dma_range_map, align 8, !dbg !5121
  store %struct.bus_dma_region* %1, %struct.bus_dma_region** %m, align 8, !dbg !5122
  br label %for.cond, !dbg !5123

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.bus_dma_region*, %struct.bus_dma_region** %m, align 8, !dbg !5124
  %size = getelementptr inbounds %struct.bus_dma_region, %struct.bus_dma_region* %2, i32 0, i32 2, !dbg !5126
  %3 = load i64, i64* %size, align 8, !dbg !5126
  %tobool = icmp ne i64 %3, 0, !dbg !5127
  br i1 %tobool, label %for.body, label %for.end, !dbg !5127

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %dma_addr.addr, align 8, !dbg !5128
  %5 = load %struct.bus_dma_region*, %struct.bus_dma_region** %m, align 8, !dbg !5130
  %dma_start = getelementptr inbounds %struct.bus_dma_region, %struct.bus_dma_region* %5, i32 0, i32 1, !dbg !5131
  %6 = load i64, i64* %dma_start, align 8, !dbg !5131
  %cmp = icmp uge i64 %4, %6, !dbg !5132
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5133

land.lhs.true:                                    ; preds = %for.body
  %7 = load i64, i64* %dma_addr.addr, align 8, !dbg !5134
  %8 = load %struct.bus_dma_region*, %struct.bus_dma_region** %m, align 8, !dbg !5135
  %dma_start1 = getelementptr inbounds %struct.bus_dma_region, %struct.bus_dma_region* %8, i32 0, i32 1, !dbg !5136
  %9 = load i64, i64* %dma_start1, align 8, !dbg !5136
  %sub = sub i64 %7, %9, !dbg !5137
  %10 = load %struct.bus_dma_region*, %struct.bus_dma_region** %m, align 8, !dbg !5138
  %size2 = getelementptr inbounds %struct.bus_dma_region, %struct.bus_dma_region* %10, i32 0, i32 2, !dbg !5139
  %11 = load i64, i64* %size2, align 8, !dbg !5139
  %cmp3 = icmp ult i64 %sub, %11, !dbg !5140
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5141

if.then:                                          ; preds = %land.lhs.true
  %12 = load i64, i64* %dma_addr.addr, align 8, !dbg !5142
  %13 = load %struct.bus_dma_region*, %struct.bus_dma_region** %m, align 8, !dbg !5143
  %offset = getelementptr inbounds %struct.bus_dma_region, %struct.bus_dma_region* %13, i32 0, i32 3, !dbg !5144
  %14 = load i64, i64* %offset, align 8, !dbg !5144
  %add = add i64 %12, %14, !dbg !5145
  store i64 %add, i64* %retval, align 8, !dbg !5146
  br label %return, !dbg !5146

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !5139

for.inc:                                          ; preds = %if.end
  %15 = load %struct.bus_dma_region*, %struct.bus_dma_region** %m, align 8, !dbg !5147
  %incdec.ptr = getelementptr %struct.bus_dma_region, %struct.bus_dma_region* %15, i32 1, !dbg !5147
  store %struct.bus_dma_region* %incdec.ptr, %struct.bus_dma_region** %m, align 8, !dbg !5147
  br label %for.cond, !dbg !5148, !llvm.loop !5149

for.end:                                          ; preds = %for.cond
  store i64 -1, i64* %retval, align 8, !dbg !5151
  br label %return, !dbg !5151

return:                                           ; preds = %for.end, %if.then
  %16 = load i64, i64* %retval, align 8, !dbg !5152
  ret i64 %16, !dbg !5152
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @xen_phys_to_bus(%struct.device* %dev, i64 %paddr) #0 !dbg !5153 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %paddr.addr = alloca i64, align 8
  %bfn = alloca i64, align 8
  %baddr = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5156, metadata !DIExpression()), !dbg !5157
  store i64 %paddr, i64* %paddr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %paddr.addr, metadata !5158, metadata !DIExpression()), !dbg !5159
  call void @llvm.dbg.declare(metadata i64* %bfn, metadata !5160, metadata !DIExpression()), !dbg !5161
  %0 = load i64, i64* %paddr.addr, align 8, !dbg !5162
  %shr = lshr i64 %0, 12, !dbg !5162
  %call = call i64 @pfn_to_gfn(i64 %shr) #9, !dbg !5162
  store i64 %call, i64* %bfn, align 8, !dbg !5161
  call void @llvm.dbg.declare(metadata i64* %baddr, metadata !5163, metadata !DIExpression()), !dbg !5164
  %1 = load i64, i64* %bfn, align 8, !dbg !5165
  %shl = shl i64 %1, 12, !dbg !5166
  store i64 %shl, i64* %baddr, align 8, !dbg !5164
  %2 = load i64, i64* %paddr.addr, align 8, !dbg !5167
  %and = and i64 %2, 4095, !dbg !5168
  %3 = load i64, i64* %baddr, align 8, !dbg !5169
  %or = or i64 %3, %and, !dbg !5169
  store i64 %or, i64* %baddr, align 8, !dbg !5169
  %4 = load i64, i64* %baddr, align 8, !dbg !5170
  ret i64 %4, !dbg !5171
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pfn_to_gfn(i64 %pfn) #0 !dbg !5172 {
entry:
  %retval = alloca i64, align 8
  %pfn.addr = alloca i64, align 8
  store i64 %pfn, i64* %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pfn.addr, metadata !5173, metadata !DIExpression()), !dbg !5174
  %call = call i32 @xen_feature(i32 2) #9, !dbg !5175
  %tobool = icmp ne i32 %call, 0, !dbg !5175
  br i1 %tobool, label %if.then, label %if.else, !dbg !5177

if.then:                                          ; preds = %entry
  %0 = load i64, i64* %pfn.addr, align 8, !dbg !5178
  store i64 %0, i64* %retval, align 8, !dbg !5179
  br label %return, !dbg !5179

if.else:                                          ; preds = %entry
  %1 = load i64, i64* %pfn.addr, align 8, !dbg !5180
  %call1 = call i64 @pfn_to_mfn(i64 %1) #9, !dbg !5181
  store i64 %call1, i64* %retval, align 8, !dbg !5182
  br label %return, !dbg !5182

return:                                           ; preds = %if.else, %if.then
  %2 = load i64, i64* %retval, align 8, !dbg !5183
  ret i64 %2, !dbg !5183
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_feature(i32 %flag) #0 !dbg !5184 {
entry:
  %flag.addr = alloca i32, align 4
  store i32 %flag, i32* %flag.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flag.addr, metadata !5186, metadata !DIExpression()), !dbg !5187
  %0 = load i32, i32* %flag.addr, align 4, !dbg !5188
  %idxprom = sext i32 %0 to i64, !dbg !5189
  %arrayidx = getelementptr [32 x i8], [32 x i8]* @xen_features, i64 0, i64 %idxprom, !dbg !5189
  %1 = load i8, i8* %arrayidx, align 1, !dbg !5189
  %conv = zext i8 %1 to i32, !dbg !5189
  ret i32 %conv, !dbg !5190
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pfn_to_mfn(i64 %pfn) #0 !dbg !5191 {
entry:
  %retval = alloca i64, align 8
  %pfn.addr = alloca i64, align 8
  %mfn = alloca i64, align 8
  store i64 %pfn, i64* %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pfn.addr, metadata !5192, metadata !DIExpression()), !dbg !5193
  call void @llvm.dbg.declare(metadata i64* %mfn, metadata !5194, metadata !DIExpression()), !dbg !5195
  %call = call i32 @xen_feature(i32 2) #9, !dbg !5196
  %tobool = icmp ne i32 %call, 0, !dbg !5196
  br i1 %tobool, label %if.then, label %if.end, !dbg !5198

if.then:                                          ; preds = %entry
  %0 = load i64, i64* %pfn.addr, align 8, !dbg !5199
  store i64 %0, i64* %retval, align 8, !dbg !5200
  br label %return, !dbg !5200

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %pfn.addr, align 8, !dbg !5201
  %call1 = call i64 @__pfn_to_mfn(i64 %1) #9, !dbg !5202
  store i64 %call1, i64* %mfn, align 8, !dbg !5203
  %2 = load i64, i64* %mfn, align 8, !dbg !5204
  %cmp = icmp ne i64 %2, -1, !dbg !5206
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5207

if.then2:                                         ; preds = %if.end
  %3 = load i64, i64* %mfn, align 8, !dbg !5208
  %and = and i64 %3, 4611686018427387903, !dbg !5208
  store i64 %and, i64* %mfn, align 8, !dbg !5208
  br label %if.end3, !dbg !5209

if.end3:                                          ; preds = %if.then2, %if.end
  %4 = load i64, i64* %mfn, align 8, !dbg !5210
  store i64 %4, i64* %retval, align 8, !dbg !5211
  br label %return, !dbg !5211

return:                                           ; preds = %if.end3, %if.then
  %5 = load i64, i64* %retval, align 8, !dbg !5212
  ret i64 %5, !dbg !5212
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @__pfn_to_mfn(i64 %pfn) #0 !dbg !5213 {
entry:
  %retval = alloca i64, align 8
  %pfn.addr = alloca i64, align 8
  %mfn = alloca i64, align 8
  store i64 %pfn, i64* %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pfn.addr, metadata !5214, metadata !DIExpression()), !dbg !5215
  call void @llvm.dbg.declare(metadata i64* %mfn, metadata !5216, metadata !DIExpression()), !dbg !5217
  %0 = load i64, i64* %pfn.addr, align 8, !dbg !5218
  %1 = load i64, i64* @xen_p2m_size, align 8, !dbg !5220
  %cmp = icmp ult i64 %0, %1, !dbg !5221
  br i1 %cmp, label %if.then, label %if.else, !dbg !5222

if.then:                                          ; preds = %entry
  %2 = load i64*, i64** @xen_p2m_addr, align 8, !dbg !5223
  %3 = load i64, i64* %pfn.addr, align 8, !dbg !5224
  %arrayidx = getelementptr i64, i64* %2, i64 %3, !dbg !5223
  %4 = load i64, i64* %arrayidx, align 8, !dbg !5223
  store i64 %4, i64* %mfn, align 8, !dbg !5225
  br label %if.end, !dbg !5226

if.else:                                          ; preds = %entry
  %5 = load i64, i64* %pfn.addr, align 8, !dbg !5227
  %6 = load i64, i64* @xen_max_p2m_pfn, align 8, !dbg !5227
  %cmp1 = icmp ult i64 %5, %6, !dbg !5227
  %lnot = xor i1 %cmp1, true, !dbg !5227
  %lnot2 = xor i1 %lnot, true, !dbg !5227
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5227
  %conv = sext i32 %lnot.ext to i64, !dbg !5227
  %tobool = icmp ne i64 %conv, 0, !dbg !5227
  br i1 %tobool, label %if.then3, label %if.else4, !dbg !5229

if.then3:                                         ; preds = %if.else
  %7 = load i64, i64* %pfn.addr, align 8, !dbg !5230
  %call = call i64 @get_phys_to_machine(i64 %7) #9, !dbg !5231
  store i64 %call, i64* %retval, align 8, !dbg !5232
  br label %return, !dbg !5232

if.else4:                                         ; preds = %if.else
  %8 = load i64, i64* %pfn.addr, align 8, !dbg !5233
  %or = or i64 %8, 4611686018427387904, !dbg !5233
  store i64 %or, i64* %retval, align 8, !dbg !5234
  br label %return, !dbg !5234

if.end:                                           ; preds = %if.then
  %9 = load i64, i64* %mfn, align 8, !dbg !5235
  %cmp5 = icmp eq i64 %9, -1, !dbg !5235
  %lnot7 = xor i1 %cmp5, true, !dbg !5235
  %lnot9 = xor i1 %lnot7, true, !dbg !5235
  %lnot.ext10 = zext i1 %lnot9 to i32, !dbg !5235
  %conv11 = sext i32 %lnot.ext10 to i64, !dbg !5235
  %tobool12 = icmp ne i64 %conv11, 0, !dbg !5235
  br i1 %tobool12, label %if.then13, label %if.end15, !dbg !5237

if.then13:                                        ; preds = %if.end
  %10 = load i64, i64* %pfn.addr, align 8, !dbg !5238
  %call14 = call i64 @get_phys_to_machine(i64 %10) #9, !dbg !5239
  store i64 %call14, i64* %retval, align 8, !dbg !5240
  br label %return, !dbg !5240

if.end15:                                         ; preds = %if.end
  %11 = load i64, i64* %mfn, align 8, !dbg !5241
  store i64 %11, i64* %retval, align 8, !dbg !5242
  br label %return, !dbg !5242

return:                                           ; preds = %if.end15, %if.then13, %if.else4, %if.then3
  %12 = load i64, i64* %retval, align 8, !dbg !5243
  ret i64 %12, !dbg !5243
}

; Function Attrs: noredzone
declare dso_local i64 @get_phys_to_machine(i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @phys_to_dma_unencrypted(%struct.device* %dev, i64 %paddr) #0 !dbg !5244 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %paddr.addr = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5245, metadata !DIExpression()), !dbg !5246
  store i64 %paddr, i64* %paddr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %paddr.addr, metadata !5247, metadata !DIExpression()), !dbg !5248
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5249
  %dma_range_map = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 19, !dbg !5251
  %1 = load %struct.bus_dma_region*, %struct.bus_dma_region** %dma_range_map, align 8, !dbg !5251
  %tobool = icmp ne %struct.bus_dma_region* %1, null, !dbg !5249
  br i1 %tobool, label %if.then, label %if.end, !dbg !5252

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5253
  %3 = load i64, i64* %paddr.addr, align 8, !dbg !5254
  %call = call i64 @translate_phys_to_dma(%struct.device* %2, i64 %3) #9, !dbg !5255
  store i64 %call, i64* %retval, align 8, !dbg !5256
  br label %return, !dbg !5256

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %paddr.addr, align 8, !dbg !5257
  store i64 %4, i64* %retval, align 8, !dbg !5258
  br label %return, !dbg !5258

return:                                           ; preds = %if.end, %if.then
  %5 = load i64, i64* %retval, align 8, !dbg !5259
  ret i64 %5, !dbg !5259
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @translate_phys_to_dma(%struct.device* %dev, i64 %paddr) #0 !dbg !5260 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %paddr.addr = alloca i64, align 8
  %m = alloca %struct.bus_dma_region*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5261, metadata !DIExpression()), !dbg !5262
  store i64 %paddr, i64* %paddr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %paddr.addr, metadata !5263, metadata !DIExpression()), !dbg !5264
  call void @llvm.dbg.declare(metadata %struct.bus_dma_region** %m, metadata !5265, metadata !DIExpression()), !dbg !5266
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5267
  %dma_range_map = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 19, !dbg !5269
  %1 = load %struct.bus_dma_region*, %struct.bus_dma_region** %dma_range_map, align 8, !dbg !5269
  store %struct.bus_dma_region* %1, %struct.bus_dma_region** %m, align 8, !dbg !5270
  br label %for.cond, !dbg !5271

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.bus_dma_region*, %struct.bus_dma_region** %m, align 8, !dbg !5272
  %size = getelementptr inbounds %struct.bus_dma_region, %struct.bus_dma_region* %2, i32 0, i32 2, !dbg !5274
  %3 = load i64, i64* %size, align 8, !dbg !5274
  %tobool = icmp ne i64 %3, 0, !dbg !5275
  br i1 %tobool, label %for.body, label %for.end, !dbg !5275

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %paddr.addr, align 8, !dbg !5276
  %5 = load %struct.bus_dma_region*, %struct.bus_dma_region** %m, align 8, !dbg !5278
  %cpu_start = getelementptr inbounds %struct.bus_dma_region, %struct.bus_dma_region* %5, i32 0, i32 0, !dbg !5279
  %6 = load i64, i64* %cpu_start, align 8, !dbg !5279
  %cmp = icmp uge i64 %4, %6, !dbg !5280
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5281

land.lhs.true:                                    ; preds = %for.body
  %7 = load i64, i64* %paddr.addr, align 8, !dbg !5282
  %8 = load %struct.bus_dma_region*, %struct.bus_dma_region** %m, align 8, !dbg !5283
  %cpu_start1 = getelementptr inbounds %struct.bus_dma_region, %struct.bus_dma_region* %8, i32 0, i32 0, !dbg !5284
  %9 = load i64, i64* %cpu_start1, align 8, !dbg !5284
  %sub = sub i64 %7, %9, !dbg !5285
  %10 = load %struct.bus_dma_region*, %struct.bus_dma_region** %m, align 8, !dbg !5286
  %size2 = getelementptr inbounds %struct.bus_dma_region, %struct.bus_dma_region* %10, i32 0, i32 2, !dbg !5287
  %11 = load i64, i64* %size2, align 8, !dbg !5287
  %cmp3 = icmp ult i64 %sub, %11, !dbg !5288
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5289

if.then:                                          ; preds = %land.lhs.true
  %12 = load i64, i64* %paddr.addr, align 8, !dbg !5290
  %13 = load %struct.bus_dma_region*, %struct.bus_dma_region** %m, align 8, !dbg !5291
  %offset = getelementptr inbounds %struct.bus_dma_region, %struct.bus_dma_region* %13, i32 0, i32 3, !dbg !5292
  %14 = load i64, i64* %offset, align 8, !dbg !5292
  %sub4 = sub i64 %12, %14, !dbg !5293
  store i64 %sub4, i64* %retval, align 8, !dbg !5294
  br label %return, !dbg !5294

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !5287

for.inc:                                          ; preds = %if.end
  %15 = load %struct.bus_dma_region*, %struct.bus_dma_region** %m, align 8, !dbg !5295
  %incdec.ptr = getelementptr %struct.bus_dma_region, %struct.bus_dma_region* %15, i32 1, !dbg !5295
  store %struct.bus_dma_region* %incdec.ptr, %struct.bus_dma_region** %m, align 8, !dbg !5295
  br label %for.cond, !dbg !5296, !llvm.loop !5297

for.end:                                          ; preds = %for.cond
  store i64 -1, i64* %retval, align 8, !dbg !5299
  br label %return, !dbg !5299

return:                                           ; preds = %for.end, %if.then
  %16 = load i64, i64* %retval, align 8, !dbg !5300
  ret i64 %16, !dbg !5300
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_bit(i64 %nr, i64* %addr) #0 !dbg !5301 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5307, metadata !DIExpression()), !dbg !5309
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5311, metadata !DIExpression()), !dbg !5312
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5313, metadata !DIExpression()), !dbg !5320
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5322, metadata !DIExpression()), !dbg !5323
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5324, metadata !DIExpression()), !dbg !5325
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5326, metadata !DIExpression()), !dbg !5327
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5328
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5329
  %div = sdiv i64 %1, 64, !dbg !5329
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5330
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5328
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5331
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5332
  %conv.i = trunc i64 %4 to i32, !dbg !5332
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #14, !dbg !5333
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5334
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5334
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #14, !dbg !5334
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5335
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !5336
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !5337
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #15, !dbg !5339
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !5340

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !5341
  %12 = bitcast i64* %11 to i8*, !dbg !5341
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !5341
  %shr.i = ashr i64 %13, 3, !dbg !5341
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !5341
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !5343
  %and.i = and i64 %14, 7, !dbg !5343
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !5343
  %shl.i = shl i32 1, %sh_prom.i, !dbg !5343
  call void asm sideeffect "orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %shl.i, i8* %add.ptr.i) #15, !dbg !5344, !srcloc !5345
  br label %arch_set_bit.exit, !dbg !5346

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !5347
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !5349
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #15, !dbg !5350, !srcloc !5351
  br label %arch_set_bit.exit

arch_set_bit.exit:                                ; preds = %if.then.i, %if.else.i
  ret void, !dbg !5352
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !5353 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5357, metadata !DIExpression()), !dbg !5358
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5359, metadata !DIExpression()), !dbg !5360
  ret i1 true, !dbg !5361
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !5362 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5366, metadata !DIExpression()), !dbg !5367
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5368, metadata !DIExpression()), !dbg !5369
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5370, metadata !DIExpression()), !dbg !5371
  ret void, !dbg !5372
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @xen_dma_to_phys(%struct.device* %dev, i64 %dma_addr) #0 !dbg !5373 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %dma_addr.addr = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5374, metadata !DIExpression()), !dbg !5375
  store i64 %dma_addr, i64* %dma_addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dma_addr.addr, metadata !5376, metadata !DIExpression()), !dbg !5377
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5378
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5379
  %2 = load i64, i64* %dma_addr.addr, align 8, !dbg !5380
  %call = call i64 @dma_to_phys(%struct.device* %1, i64 %2) #9, !dbg !5381
  %call1 = call i64 @xen_bus_to_phys(%struct.device* %0, i64 %call) #9, !dbg !5382
  ret i64 %call1, !dbg !5383
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @is_vmalloc_addr(i8*) #2

; Function Attrs: noredzone
declare dso_local %struct.page* @vmalloc_to_page(i8*) #2

; Function Attrs: noredzone
declare dso_local void @xen_destroy_contiguous_region(i64, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @xen_bus_to_phys(%struct.device* %dev, i64 %baddr) #0 !dbg !5384 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %baddr.addr = alloca i64, align 8
  %xen_pfn = alloca i64, align 8
  %paddr = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5385, metadata !DIExpression()), !dbg !5386
  store i64 %baddr, i64* %baddr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %baddr.addr, metadata !5387, metadata !DIExpression()), !dbg !5388
  call void @llvm.dbg.declare(metadata i64* %xen_pfn, metadata !5389, metadata !DIExpression()), !dbg !5390
  %0 = load i64, i64* %baddr.addr, align 8, !dbg !5391
  %shr = lshr i64 %0, 12, !dbg !5391
  %call = call i64 @gfn_to_pfn(i64 %shr) #9, !dbg !5391
  store i64 %call, i64* %xen_pfn, align 8, !dbg !5390
  call void @llvm.dbg.declare(metadata i64* %paddr, metadata !5392, metadata !DIExpression()), !dbg !5393
  %1 = load i64, i64* %xen_pfn, align 8, !dbg !5394
  %shl = shl i64 %1, 12, !dbg !5395
  %2 = load i64, i64* %baddr.addr, align 8, !dbg !5396
  %and = and i64 %2, 4095, !dbg !5397
  %or = or i64 %shl, %and, !dbg !5398
  store i64 %or, i64* %paddr, align 8, !dbg !5393
  %3 = load i64, i64* %paddr, align 8, !dbg !5399
  ret i64 %3, !dbg !5400
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @gfn_to_pfn(i64 %gfn) #0 !dbg !5401 {
entry:
  %retval = alloca i64, align 8
  %gfn.addr = alloca i64, align 8
  store i64 %gfn, i64* %gfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %gfn.addr, metadata !5402, metadata !DIExpression()), !dbg !5403
  %call = call i32 @xen_feature(i32 2) #9, !dbg !5404
  %tobool = icmp ne i32 %call, 0, !dbg !5404
  br i1 %tobool, label %if.then, label %if.else, !dbg !5406

if.then:                                          ; preds = %entry
  %0 = load i64, i64* %gfn.addr, align 8, !dbg !5407
  store i64 %0, i64* %retval, align 8, !dbg !5408
  br label %return, !dbg !5408

if.else:                                          ; preds = %entry
  %1 = load i64, i64* %gfn.addr, align 8, !dbg !5409
  %call1 = call i64 @mfn_to_pfn(i64 %1) #9, !dbg !5410
  store i64 %call1, i64* %retval, align 8, !dbg !5411
  br label %return, !dbg !5411

return:                                           ; preds = %if.else, %if.then
  %2 = load i64, i64* %retval, align 8, !dbg !5412
  ret i64 %2, !dbg !5412
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @mfn_to_pfn(i64 %mfn) #0 !dbg !5413 {
entry:
  %retval = alloca i64, align 8
  %mfn.addr = alloca i64, align 8
  %pfn = alloca i64, align 8
  store i64 %mfn, i64* %mfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %mfn.addr, metadata !5414, metadata !DIExpression()), !dbg !5415
  call void @llvm.dbg.declare(metadata i64* %pfn, metadata !5416, metadata !DIExpression()), !dbg !5417
  %call = call i32 @xen_feature(i32 2) #9, !dbg !5418
  %tobool = icmp ne i32 %call, 0, !dbg !5418
  br i1 %tobool, label %if.then, label %if.end, !dbg !5420

if.then:                                          ; preds = %entry
  %0 = load i64, i64* %mfn.addr, align 8, !dbg !5421
  store i64 %0, i64* %retval, align 8, !dbg !5422
  br label %return, !dbg !5422

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %mfn.addr, align 8, !dbg !5423
  %call1 = call i64 @mfn_to_pfn_no_overrides(i64 %1) #9, !dbg !5424
  store i64 %call1, i64* %pfn, align 8, !dbg !5425
  %2 = load i64, i64* %pfn, align 8, !dbg !5426
  %call2 = call i64 @__pfn_to_mfn(i64 %2) #9, !dbg !5428
  %3 = load i64, i64* %mfn.addr, align 8, !dbg !5429
  %cmp = icmp ne i64 %call2, %3, !dbg !5430
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !5431

if.then3:                                         ; preds = %if.end
  store i64 -1, i64* %pfn, align 8, !dbg !5432
  br label %if.end4, !dbg !5433

if.end4:                                          ; preds = %if.then3, %if.end
  %4 = load i64, i64* %pfn, align 8, !dbg !5434
  %cmp5 = icmp eq i64 %4, -1, !dbg !5436
  br i1 %cmp5, label %land.lhs.true, label %if.end9, !dbg !5437

land.lhs.true:                                    ; preds = %if.end4
  %5 = load i64, i64* %mfn.addr, align 8, !dbg !5438
  %call6 = call i64 @__pfn_to_mfn(i64 %5) #9, !dbg !5439
  %6 = load i64, i64* %mfn.addr, align 8, !dbg !5440
  %or = or i64 %6, 4611686018427387904, !dbg !5440
  %cmp7 = icmp eq i64 %call6, %or, !dbg !5441
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !5442

if.then8:                                         ; preds = %land.lhs.true
  %7 = load i64, i64* %mfn.addr, align 8, !dbg !5443
  store i64 %7, i64* %pfn, align 8, !dbg !5444
  br label %if.end9, !dbg !5445

if.end9:                                          ; preds = %if.then8, %land.lhs.true, %if.end4
  %8 = load i64, i64* %pfn, align 8, !dbg !5446
  store i64 %8, i64* %retval, align 8, !dbg !5447
  br label %return, !dbg !5447

return:                                           ; preds = %if.end9, %if.then
  %9 = load i64, i64* %retval, align 8, !dbg !5448
  ret i64 %9, !dbg !5448
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @mfn_to_pfn_no_overrides(i64 %mfn) #0 !dbg !5449 {
entry:
  %retval = alloca i64, align 8
  %mfn.addr = alloca i64, align 8
  %pfn = alloca i64, align 8
  %ret = alloca i32, align 4
  store i64 %mfn, i64* %mfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %mfn.addr, metadata !5450, metadata !DIExpression()), !dbg !5451
  call void @llvm.dbg.declare(metadata i64* %pfn, metadata !5452, metadata !DIExpression()), !dbg !5453
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5454, metadata !DIExpression()), !dbg !5455
  %0 = load i64, i64* %mfn.addr, align 8, !dbg !5456
  %1 = load i64, i64* @machine_to_phys_nr, align 8, !dbg !5456
  %cmp = icmp uge i64 %0, %1, !dbg !5456
  %lnot = xor i1 %cmp, true, !dbg !5456
  %lnot1 = xor i1 %lnot, true, !dbg !5456
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5456
  %conv = sext i32 %lnot.ext to i64, !dbg !5456
  %tobool = icmp ne i64 %conv, 0, !dbg !5456
  br i1 %tobool, label %if.then, label %if.end, !dbg !5458

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval, align 8, !dbg !5459
  br label %return, !dbg !5459

if.end:                                           ; preds = %entry
  %2 = load i64*, i64** @machine_to_phys_mapping, align 8, !dbg !5460
  %3 = load i64, i64* %mfn.addr, align 8, !dbg !5461
  %arrayidx = getelementptr i64, i64* %2, i64 %3, !dbg !5460
  %call = call i32 @xen_safe_read_ulong(i64* %arrayidx, i64* %pfn) #9, !dbg !5462
  store i32 %call, i32* %ret, align 4, !dbg !5463
  %4 = load i32, i32* %ret, align 4, !dbg !5464
  %cmp2 = icmp slt i32 %4, 0, !dbg !5466
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !5467

if.then4:                                         ; preds = %if.end
  store i64 -1, i64* %retval, align 8, !dbg !5468
  br label %return, !dbg !5468

if.end5:                                          ; preds = %if.end
  %5 = load i64, i64* %pfn, align 8, !dbg !5469
  store i64 %5, i64* %retval, align 8, !dbg !5470
  br label %return, !dbg !5470

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %6 = load i64, i64* %retval, align 8, !dbg !5471
  ret i64 %6, !dbg !5471
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_safe_read_ulong(i64* %addr, i64* %val) #0 !dbg !5472 {
entry:
  %addr.addr = alloca i64*, align 8
  %val.addr = alloca i64*, align 8
  %ret = alloca i32, align 4
  %rval = alloca i64, align 8
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5476, metadata !DIExpression()), !dbg !5477
  store i64* %val, i64** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %val.addr, metadata !5478, metadata !DIExpression()), !dbg !5479
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5480, metadata !DIExpression()), !dbg !5481
  store i32 0, i32* %ret, align 4, !dbg !5481
  call void @llvm.dbg.declare(metadata i64* %rval, metadata !5482, metadata !DIExpression()), !dbg !5483
  store i64 -1, i64* %rval, align 8, !dbg !5483
  %0 = load i32, i32* %ret, align 4, !dbg !5484
  %1 = load i64, i64* %rval, align 8, !dbg !5484
  %2 = load i64*, i64** %addr.addr, align 8, !dbg !5485
  %3 = call { i32, i64 } asm sideeffect "1: mov $2, $1\0A2:\0A.section .fixup, \22ax\22\0A3: sub $$1, $0\0A   jmp 2b\0A.previous\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (3b) - .\0A .long (ex_handler_default) - .\0A .popsection\0A", "=r,=r,*m,0,1,~{dirflag},~{fpsr},~{flags}"(i64* %2, i32 %0, i64 %1) #15, !dbg !5484, !srcloc !5486
  %asmresult = extractvalue { i32, i64 } %3, 0, !dbg !5484
  %asmresult1 = extractvalue { i32, i64 } %3, 1, !dbg !5484
  store i32 %asmresult, i32* %ret, align 4, !dbg !5484
  store i64 %asmresult1, i64* %rval, align 8, !dbg !5484
  %4 = load i64, i64* %rval, align 8, !dbg !5487
  %5 = load i64*, i64** %val.addr, align 8, !dbg !5488
  store i64 %4, i64* %5, align 8, !dbg !5489
  %6 = load i32, i32* %ret, align 4, !dbg !5490
  ret i32 %6, !dbg !5491
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_and_clear_bit(i64 %nr, i64* %addr) #0 !dbg !5492 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5495, metadata !DIExpression()), !dbg !5497
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5499, metadata !DIExpression()), !dbg !5500
  %c.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %c.i, metadata !5501, metadata !DIExpression()), !dbg !5503
  %tmp.i = alloca i8, align 1
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5504, metadata !DIExpression()), !dbg !5506
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5508, metadata !DIExpression()), !dbg !5509
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5510, metadata !DIExpression()), !dbg !5511
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5512, metadata !DIExpression()), !dbg !5513
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5514
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5515
  %div = sdiv i64 %1, 64, !dbg !5515
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5516
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5514
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5517
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5518
  %conv.i = trunc i64 %4 to i32, !dbg !5518
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #14, !dbg !5519
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5520
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5520
  call void @kcsan_check_access(i8* %5, i64 %6, i32 7) #14, !dbg !5520
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5521
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !5522
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !5503
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !5503
  %11 = call i8 asm sideeffect " btrq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10, i64* %9) #15, !dbg !5503, !srcloc !5523
  store i8 %11, i8* %c.i, align 1, !dbg !5503
  %12 = load i8, i8* %c.i, align 1, !dbg !5503
  %tobool.i = trunc i8 %12 to i1, !dbg !5503
  %frombool.i = zext i1 %tobool.i to i8, !dbg !5503
  store i8 %frombool.i, i8* %tmp.i, align 1, !dbg !5503
  %13 = load i8, i8* %tmp.i, align 1, !dbg !5503
  %tobool1.i = trunc i8 %13 to i1, !dbg !5503
  ret i1 %tobool1.i, !dbg !5524
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @dma_capable(%struct.device* %dev, i64 %addr, i64 %size, i1 zeroext %is_ram) #0 !dbg !5525 {
entry:
  %retval = alloca i1, align 1
  %dev.addr = alloca %struct.device*, align 8
  %addr.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %is_ram.addr = alloca i8, align 1
  %end = alloca i64, align 8
  %__UNIQUE_ID___x226 = alloca i64, align 8
  %__UNIQUE_ID___y227 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__x = alloca i64, align 8
  %__y = alloca i64, align 8
  %tmp6 = alloca i64, align 8
  %__UNIQUE_ID___x228 = alloca i64, align 8
  %__UNIQUE_ID___y229 = alloca i64, align 8
  %tmp13 = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5528, metadata !DIExpression()), !dbg !5529
  store i64 %addr, i64* %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %addr.addr, metadata !5530, metadata !DIExpression()), !dbg !5531
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5532, metadata !DIExpression()), !dbg !5533
  %frombool = zext i1 %is_ram to i8
  store i8 %frombool, i8* %is_ram.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %is_ram.addr, metadata !5534, metadata !DIExpression()), !dbg !5535
  call void @llvm.dbg.declare(metadata i64* %end, metadata !5536, metadata !DIExpression()), !dbg !5537
  %0 = load i64, i64* %addr.addr, align 8, !dbg !5538
  %1 = load i64, i64* %size.addr, align 8, !dbg !5539
  %add = add i64 %0, %1, !dbg !5540
  %sub = sub i64 %add, 1, !dbg !5541
  store i64 %sub, i64* %end, align 8, !dbg !5537
  %2 = load i64, i64* %addr.addr, align 8, !dbg !5542
  %cmp = icmp eq i64 %2, -1, !dbg !5544
  br i1 %cmp, label %if.then, label %if.end, !dbg !5545

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !5546
  br label %return, !dbg !5546

if.end:                                           ; preds = %entry
  %3 = load i8, i8* %is_ram.addr, align 1, !dbg !5547
  %tobool = trunc i8 %3 to i1, !dbg !5547
  br i1 %tobool, label %land.lhs.true, label %if.end5, !dbg !5549

land.lhs.true:                                    ; preds = %if.end
  br i1 true, label %if.end5, label %land.lhs.true1, !dbg !5550

land.lhs.true1:                                   ; preds = %land.lhs.true
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x226, metadata !5551, metadata !DIExpression()), !dbg !5553
  %4 = load i64, i64* %addr.addr, align 8, !dbg !5553
  store i64 %4, i64* %__UNIQUE_ID___x226, align 8, !dbg !5553
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y227, metadata !5554, metadata !DIExpression()), !dbg !5553
  %5 = load i64, i64* %end, align 8, !dbg !5553
  store i64 %5, i64* %__UNIQUE_ID___y227, align 8, !dbg !5553
  %6 = load i64, i64* %__UNIQUE_ID___x226, align 8, !dbg !5553
  %7 = load i64, i64* %__UNIQUE_ID___y227, align 8, !dbg !5553
  %cmp2 = icmp ult i64 %6, %7, !dbg !5553
  br i1 %cmp2, label %cond.true, label %cond.false, !dbg !5553

cond.true:                                        ; preds = %land.lhs.true1
  %8 = load i64, i64* %__UNIQUE_ID___x226, align 8, !dbg !5553
  br label %cond.end, !dbg !5553

cond.false:                                       ; preds = %land.lhs.true1
  %9 = load i64, i64* %__UNIQUE_ID___y227, align 8, !dbg !5553
  br label %cond.end, !dbg !5553

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %8, %cond.true ], [ %9, %cond.false ], !dbg !5553
  store i64 %cond, i64* %tmp, align 8, !dbg !5553
  %10 = load i64, i64* %tmp, align 8, !dbg !5553
  %11 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5555
  %12 = load i64, i64* @min_low_pfn, align 8, !dbg !5556
  %shl = shl i64 %12, 12, !dbg !5556
  %call = call i64 @phys_to_dma(%struct.device* %11, i64 %shl) #9, !dbg !5557
  %cmp3 = icmp ult i64 %10, %call, !dbg !5558
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !5559

if.then4:                                         ; preds = %cond.end
  store i1 false, i1* %retval, align 1, !dbg !5560
  br label %return, !dbg !5560

if.end5:                                          ; preds = %cond.end, %land.lhs.true, %if.end
  %13 = load i64, i64* %end, align 8, !dbg !5561
  call void @llvm.dbg.declare(metadata i64* %__x, metadata !5562, metadata !DIExpression()), !dbg !5564
  %14 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5564
  %dma_mask = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 16, !dbg !5564
  %15 = load i64*, i64** %dma_mask, align 8, !dbg !5564
  %16 = load i64, i64* %15, align 8, !dbg !5564
  store i64 %16, i64* %__x, align 8, !dbg !5564
  call void @llvm.dbg.declare(metadata i64* %__y, metadata !5565, metadata !DIExpression()), !dbg !5564
  %17 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5564
  %bus_dma_limit = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 18, !dbg !5564
  %18 = load i64, i64* %bus_dma_limit, align 8, !dbg !5564
  store i64 %18, i64* %__y, align 8, !dbg !5564
  %19 = load i64, i64* %__x, align 8, !dbg !5564
  %cmp7 = icmp eq i64 %19, 0, !dbg !5564
  br i1 %cmp7, label %cond.true8, label %cond.false9, !dbg !5564

cond.true8:                                       ; preds = %if.end5
  %20 = load i64, i64* %__y, align 8, !dbg !5564
  br label %cond.end21, !dbg !5564

cond.false9:                                      ; preds = %if.end5
  %21 = load i64, i64* %__y, align 8, !dbg !5564
  %cmp10 = icmp eq i64 %21, 0, !dbg !5564
  br i1 %cmp10, label %cond.true11, label %cond.false12, !dbg !5564

cond.true11:                                      ; preds = %cond.false9
  %22 = load i64, i64* %__x, align 8, !dbg !5564
  br label %cond.end19, !dbg !5564

cond.false12:                                     ; preds = %cond.false9
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x228, metadata !5566, metadata !DIExpression()), !dbg !5568
  %23 = load i64, i64* %__x, align 8, !dbg !5568
  store i64 %23, i64* %__UNIQUE_ID___x228, align 8, !dbg !5568
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y229, metadata !5569, metadata !DIExpression()), !dbg !5568
  %24 = load i64, i64* %__y, align 8, !dbg !5568
  store i64 %24, i64* %__UNIQUE_ID___y229, align 8, !dbg !5568
  %25 = load i64, i64* %__UNIQUE_ID___x228, align 8, !dbg !5568
  %26 = load i64, i64* %__UNIQUE_ID___y229, align 8, !dbg !5568
  %cmp14 = icmp ult i64 %25, %26, !dbg !5568
  br i1 %cmp14, label %cond.true15, label %cond.false16, !dbg !5568

cond.true15:                                      ; preds = %cond.false12
  %27 = load i64, i64* %__UNIQUE_ID___x228, align 8, !dbg !5568
  br label %cond.end17, !dbg !5568

cond.false16:                                     ; preds = %cond.false12
  %28 = load i64, i64* %__UNIQUE_ID___y229, align 8, !dbg !5568
  br label %cond.end17, !dbg !5568

cond.end17:                                       ; preds = %cond.false16, %cond.true15
  %cond18 = phi i64 [ %27, %cond.true15 ], [ %28, %cond.false16 ], !dbg !5568
  store i64 %cond18, i64* %tmp13, align 8, !dbg !5568
  %29 = load i64, i64* %tmp13, align 8, !dbg !5568
  br label %cond.end19, !dbg !5564

cond.end19:                                       ; preds = %cond.end17, %cond.true11
  %cond20 = phi i64 [ %22, %cond.true11 ], [ %29, %cond.end17 ], !dbg !5564
  br label %cond.end21, !dbg !5564

cond.end21:                                       ; preds = %cond.end19, %cond.true8
  %cond22 = phi i64 [ %20, %cond.true8 ], [ %cond20, %cond.end19 ], !dbg !5564
  store i64 %cond22, i64* %tmp6, align 8, !dbg !5564
  %30 = load i64, i64* %tmp6, align 8, !dbg !5564
  %cmp23 = icmp ule i64 %13, %30, !dbg !5570
  store i1 %cmp23, i1* %retval, align 1, !dbg !5571
  br label %return, !dbg !5571

return:                                           ; preds = %cond.end21, %if.then4, %if.then
  %31 = load i1, i1* %retval, align 1, !dbg !5572
  ret i1 %31, !dbg !5572
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @xen_arch_need_swiotlb(%struct.device* %dev, i64 %phys, i64 %dev_addr) #0 !dbg !5573 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %phys.addr = alloca i64, align 8
  %dev_addr.addr = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5576, metadata !DIExpression()), !dbg !5577
  store i64 %phys, i64* %phys.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %phys.addr, metadata !5578, metadata !DIExpression()), !dbg !5579
  store i64 %dev_addr, i64* %dev_addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dev_addr.addr, metadata !5580, metadata !DIExpression()), !dbg !5581
  ret i1 false, !dbg !5582
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @trace_swiotlb_bounced(%struct.device* %dev, i64 %dev_addr, i64 %size, i32 %swiotlb_force) #0 !dbg !5583 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %dev_addr.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %swiotlb_force.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5587, metadata !DIExpression()), !dbg !5588
  store i64 %dev_addr, i64* %dev_addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dev_addr.addr, metadata !5589, metadata !DIExpression()), !dbg !5588
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5590, metadata !DIExpression()), !dbg !5588
  store i32 %swiotlb_force, i32* %swiotlb_force.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %swiotlb_force.addr, metadata !5591, metadata !DIExpression()), !dbg !5588
  ret void, !dbg !5588
}

; Function Attrs: noredzone
declare dso_local i64 @swiotlb_tbl_map_single(%struct.device*, i64, i64, i64, i32, i64) #2

; Function Attrs: noredzone
declare dso_local void @swiotlb_tbl_unmap_single(%struct.device*, i64, i64, i64, i32, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @dev_is_dma_coherent(%struct.device* %dev) #0 !dbg !5592 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5595, metadata !DIExpression()), !dbg !5596
  ret i1 true, !dbg !5597
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pfn_valid(i64 %pfn) #0 !dbg !5598 {
entry:
  %retval.i = alloca i1, align 1
  %bit.addr.i = alloca i16, align 2
  call void @llvm.dbg.declare(metadata i16* %bit.addr.i, metadata !5599, metadata !DIExpression()), !dbg !5604
  %retval = alloca i32, align 4
  %pfn.addr = alloca i64, align 8
  %ms = alloca %struct.mem_section*, align 8
  store i64 %pfn, i64* %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pfn.addr, metadata !5607, metadata !DIExpression()), !dbg !5608
  call void @llvm.dbg.declare(metadata %struct.mem_section** %ms, metadata !5609, metadata !DIExpression()), !dbg !5621
  %0 = load i64, i64* %pfn.addr, align 8, !dbg !5622
  %call = call i64 @pfn_to_section_nr(i64 %0) #9, !dbg !5623
  store i16 528, i16* %bit.addr.i, align 2
  %1 = load i16, i16* %bit.addr.i, align 2, !dbg !5624
  %2 = load i16, i16* %bit.addr.i, align 2, !dbg !5624
  %conv.i = zext i16 %2 to i32, !dbg !5624
  %and.i = and i32 %conv.i, 7, !dbg !5624
  %shl.i = shl i32 1, %and.i, !dbg !5624
  %3 = load i16, i16* %bit.addr.i, align 2, !dbg !5624
  %conv1.i = zext i16 %3 to i32, !dbg !5624
  %shr.i = ashr i32 %conv1.i, 3, !dbg !5624
  %idxprom.i = sext i32 %shr.i to i64, !dbg !5624
  %arrayidx.i = getelementptr i8, i8* bitcast (%union.anon.65* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 12) to i8*), i64 %idxprom.i, !dbg !5624
  callbr void asm sideeffect "1: jmp 6f\0A2:\0A.skip -(((5f-4f) - (2b-1b)) > 0) * ((5f-4f) - (2b-1b)),0x90\0A3:\0A.section .altinstructions,\22a\22\0A .long 1b - .\0A .long 4f - .\0A .word ${1:P}\0A .byte 3b - 1b\0A .byte 5f - 4f\0A .byte 3b - 2b\0A.previous\0A.section .altinstr_replacement,\22ax\22\0A4: jmp ${5:l}\0A5:\0A.previous\0A.section .altinstructions,\22a\22\0A .long 1b - .\0A .long 0\0A .word ${0:P}\0A .byte 3b - 1b\0A .byte 0\0A .byte 0\0A.previous\0A.section .altinstr_aux,\22ax\22\0A6:\0A testb $2,$3\0A jnz ${4:l}\0A jmp ${5:l}\0A.previous\0A", "i,i,i,*m,X,X,~{dirflag},~{fpsr},~{flags}"(i16 %1, i32 117, i32 %shl.i, i8* %arrayidx.i, i8* blockaddress(@pfn_valid, %t_yes.i), i8* blockaddress(@pfn_valid, %t_no.i)) #15
          to label %asm.fallthrough.i [label %t_yes.i, label %t_no.i], !dbg !5624, !srcloc !5625

asm.fallthrough.i:                                ; preds = %entry
  br label %t_yes.i, !dbg !5624

t_yes.i:                                          ; preds = %asm.fallthrough.i, %entry
  call void @llvm.dbg.label(metadata !5626), !dbg !5627
  store i1 true, i1* %retval.i, align 1, !dbg !5628
  br label %_static_cpu_has.exit, !dbg !5628

t_no.i:                                           ; preds = %entry
  call void @llvm.dbg.label(metadata !5629), !dbg !5630
  store i1 false, i1* %retval.i, align 1, !dbg !5631
  br label %_static_cpu_has.exit, !dbg !5631

_static_cpu_has.exit:                             ; preds = %t_yes.i, %t_no.i
  %4 = load i1, i1* %retval.i, align 1, !dbg !5632
  %5 = zext i1 %4 to i64, !dbg !5633
  %cond = select i1 %4, i32 52, i32 46, !dbg !5633
  %sub = sub i32 %cond, 27, !dbg !5633
  %sh_prom = zext i32 %sub to i64, !dbg !5633
  %shl = shl i64 1, %sh_prom, !dbg !5633
  %cmp = icmp uge i64 %call, %shl, !dbg !5634
  br i1 %cmp, label %if.then, label %if.end, !dbg !5635

if.then:                                          ; preds = %_static_cpu_has.exit
  store i32 0, i32* %retval, align 4, !dbg !5636
  br label %return, !dbg !5636

if.end:                                           ; preds = %_static_cpu_has.exit
  %6 = load i64, i64* %pfn.addr, align 8, !dbg !5637
  %call2 = call i64 @pfn_to_section_nr(i64 %6) #9, !dbg !5638
  %call3 = call %struct.mem_section* @__nr_to_section(i64 %call2) #9, !dbg !5639
  store %struct.mem_section* %call3, %struct.mem_section** %ms, align 8, !dbg !5640
  %7 = load %struct.mem_section*, %struct.mem_section** %ms, align 8, !dbg !5641
  %call4 = call i32 @valid_section(%struct.mem_section* %7) #9, !dbg !5643
  %tobool = icmp ne i32 %call4, 0, !dbg !5643
  br i1 %tobool, label %if.end6, label %if.then5, !dbg !5644

if.then5:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5645
  br label %return, !dbg !5645

if.end6:                                          ; preds = %if.end
  %8 = load %struct.mem_section*, %struct.mem_section** %ms, align 8, !dbg !5646
  %call7 = call i32 @early_section(%struct.mem_section* %8) #9, !dbg !5647
  %tobool8 = icmp ne i32 %call7, 0, !dbg !5647
  br i1 %tobool8, label %lor.end, label %lor.rhs, !dbg !5648

lor.rhs:                                          ; preds = %if.end6
  %9 = load %struct.mem_section*, %struct.mem_section** %ms, align 8, !dbg !5649
  %10 = load i64, i64* %pfn.addr, align 8, !dbg !5650
  %call9 = call i32 @pfn_section_valid(%struct.mem_section* %9, i64 %10) #9, !dbg !5651
  %tobool10 = icmp ne i32 %call9, 0, !dbg !5648
  br label %lor.end, !dbg !5648

lor.end:                                          ; preds = %lor.rhs, %if.end6
  %11 = phi i1 [ true, %if.end6 ], [ %tobool10, %lor.rhs ]
  %lor.ext = zext i1 %11 to i32, !dbg !5648
  store i32 %lor.ext, i32* %retval, align 4, !dbg !5652
  br label %return, !dbg !5652

return:                                           ; preds = %lor.end, %if.then5, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !5653
  ret i32 %12, !dbg !5653
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_sync_dma_for_device(i64 %paddr, i64 %size, i32 %dir) #0 !dbg !5654 {
entry:
  %paddr.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %dir.addr = alloca i32, align 4
  store i64 %paddr, i64* %paddr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %paddr.addr, metadata !5657, metadata !DIExpression()), !dbg !5658
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5659, metadata !DIExpression()), !dbg !5660
  store i32 %dir, i32* %dir.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dir.addr, metadata !5661, metadata !DIExpression()), !dbg !5662
  ret void, !dbg !5663
}

; Function Attrs: noredzone
declare dso_local void @xen_dma_sync_for_device(%struct.device*, i64, i64, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pfn_to_section_nr(i64 %pfn) #0 !dbg !5664 {
entry:
  %pfn.addr = alloca i64, align 8
  store i64 %pfn, i64* %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pfn.addr, metadata !5665, metadata !DIExpression()), !dbg !5666
  %0 = load i64, i64* %pfn.addr, align 8, !dbg !5667
  %shr = lshr i64 %0, 15, !dbg !5668
  ret i64 %shr, !dbg !5669
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.mem_section* @__nr_to_section(i64 %nr) #0 !dbg !5670 {
entry:
  %retval = alloca %struct.mem_section*, align 8
  %nr.addr = alloca i64, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5673, metadata !DIExpression()), !dbg !5674
  %0 = load %struct.mem_section**, %struct.mem_section*** @mem_section, align 8, !dbg !5675
  %tobool = icmp ne %struct.mem_section** %0, null, !dbg !5675
  br i1 %tobool, label %if.end, label %if.then, !dbg !5677

if.then:                                          ; preds = %entry
  store %struct.mem_section* null, %struct.mem_section** %retval, align 8, !dbg !5678
  br label %return, !dbg !5678

if.end:                                           ; preds = %entry
  %1 = load %struct.mem_section**, %struct.mem_section*** @mem_section, align 8, !dbg !5679
  %2 = load i64, i64* %nr.addr, align 8, !dbg !5681
  %div = udiv i64 %2, 256, !dbg !5681
  %arrayidx = getelementptr %struct.mem_section*, %struct.mem_section** %1, i64 %div, !dbg !5679
  %3 = load %struct.mem_section*, %struct.mem_section** %arrayidx, align 8, !dbg !5679
  %tobool1 = icmp ne %struct.mem_section* %3, null, !dbg !5679
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !5682

if.then2:                                         ; preds = %if.end
  store %struct.mem_section* null, %struct.mem_section** %retval, align 8, !dbg !5683
  br label %return, !dbg !5683

if.end3:                                          ; preds = %if.end
  %4 = load %struct.mem_section**, %struct.mem_section*** @mem_section, align 8, !dbg !5684
  %5 = load i64, i64* %nr.addr, align 8, !dbg !5685
  %div4 = udiv i64 %5, 256, !dbg !5685
  %arrayidx5 = getelementptr %struct.mem_section*, %struct.mem_section** %4, i64 %div4, !dbg !5684
  %6 = load %struct.mem_section*, %struct.mem_section** %arrayidx5, align 8, !dbg !5684
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5686
  %and = and i64 %7, 255, !dbg !5687
  %arrayidx6 = getelementptr %struct.mem_section, %struct.mem_section* %6, i64 %and, !dbg !5684
  store %struct.mem_section* %arrayidx6, %struct.mem_section** %retval, align 8, !dbg !5688
  br label %return, !dbg !5688

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %8 = load %struct.mem_section*, %struct.mem_section** %retval, align 8, !dbg !5689
  ret %struct.mem_section* %8, !dbg !5689
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @valid_section(%struct.mem_section* %section) #0 !dbg !5690 {
entry:
  %section.addr = alloca %struct.mem_section*, align 8
  store %struct.mem_section* %section, %struct.mem_section** %section.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mem_section** %section.addr, metadata !5693, metadata !DIExpression()), !dbg !5694
  %0 = load %struct.mem_section*, %struct.mem_section** %section.addr, align 8, !dbg !5695
  %tobool = icmp ne %struct.mem_section* %0, null, !dbg !5695
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !5696

land.rhs:                                         ; preds = %entry
  %1 = load %struct.mem_section*, %struct.mem_section** %section.addr, align 8, !dbg !5697
  %section_mem_map = getelementptr inbounds %struct.mem_section, %struct.mem_section* %1, i32 0, i32 0, !dbg !5698
  %2 = load i64, i64* %section_mem_map, align 8, !dbg !5698
  %and = and i64 %2, 2, !dbg !5699
  %tobool1 = icmp ne i64 %and, 0, !dbg !5696
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ], !dbg !5700
  %land.ext = zext i1 %3 to i32, !dbg !5696
  ret i32 %land.ext, !dbg !5701
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @early_section(%struct.mem_section* %section) #0 !dbg !5702 {
entry:
  %section.addr = alloca %struct.mem_section*, align 8
  store %struct.mem_section* %section, %struct.mem_section** %section.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mem_section** %section.addr, metadata !5703, metadata !DIExpression()), !dbg !5704
  %0 = load %struct.mem_section*, %struct.mem_section** %section.addr, align 8, !dbg !5705
  %tobool = icmp ne %struct.mem_section* %0, null, !dbg !5705
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !5706

land.rhs:                                         ; preds = %entry
  %1 = load %struct.mem_section*, %struct.mem_section** %section.addr, align 8, !dbg !5707
  %section_mem_map = getelementptr inbounds %struct.mem_section, %struct.mem_section* %1, i32 0, i32 0, !dbg !5708
  %2 = load i64, i64* %section_mem_map, align 8, !dbg !5708
  %and = and i64 %2, 8, !dbg !5709
  %tobool1 = icmp ne i64 %and, 0, !dbg !5706
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ], !dbg !5710
  %land.ext = zext i1 %3 to i32, !dbg !5706
  ret i32 %land.ext, !dbg !5711
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pfn_section_valid(%struct.mem_section* %ms, i64 %pfn) #0 !dbg !5712 {
entry:
  %ms.addr = alloca %struct.mem_section*, align 8
  %pfn.addr = alloca i64, align 8
  %idx = alloca i32, align 4
  store %struct.mem_section* %ms, %struct.mem_section** %ms.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mem_section** %ms.addr, metadata !5715, metadata !DIExpression()), !dbg !5716
  store i64 %pfn, i64* %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pfn.addr, metadata !5717, metadata !DIExpression()), !dbg !5718
  call void @llvm.dbg.declare(metadata i32* %idx, metadata !5719, metadata !DIExpression()), !dbg !5720
  %0 = load i64, i64* %pfn.addr, align 8, !dbg !5721
  %call = call i32 @subsection_map_index(i64 %0) #9, !dbg !5722
  store i32 %call, i32* %idx, align 4, !dbg !5720
  %1 = load i32, i32* %idx, align 4, !dbg !5723
  %conv = sext i32 %1 to i64, !dbg !5723
  %2 = load %struct.mem_section*, %struct.mem_section** %ms.addr, align 8, !dbg !5724
  %usage = getelementptr inbounds %struct.mem_section, %struct.mem_section* %2, i32 0, i32 1, !dbg !5725
  %3 = load %struct.mem_section_usage*, %struct.mem_section_usage** %usage, align 8, !dbg !5725
  %subsection_map = getelementptr inbounds %struct.mem_section_usage, %struct.mem_section_usage* %3, i32 0, i32 0, !dbg !5726
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %subsection_map, i64 0, i64 0, !dbg !5724
  %call1 = call zeroext i1 @test_bit(i64 %conv, i64* %arraydecay) #9, !dbg !5727
  %conv2 = zext i1 %call1 to i32, !dbg !5727
  ret i32 %conv2, !dbg !5728
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @subsection_map_index(i64 %pfn) #0 !dbg !5729 {
entry:
  %pfn.addr = alloca i64, align 8
  store i64 %pfn, i64* %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pfn.addr, metadata !5730, metadata !DIExpression()), !dbg !5731
  %0 = load i64, i64* %pfn.addr, align 8, !dbg !5732
  %and = and i64 %0, 32767, !dbg !5733
  %div = udiv i64 %and, 512, !dbg !5734
  %conv = trunc i64 %div to i32, !dbg !5735
  ret i32 %conv, !dbg !5736
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #0 !dbg !5737 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !5743, metadata !DIExpression()), !dbg !5745
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !5747, metadata !DIExpression()), !dbg !5748
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !5749, metadata !DIExpression()), !dbg !5750
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5751, metadata !DIExpression()), !dbg !5753
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5755, metadata !DIExpression()), !dbg !5756
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5757, metadata !DIExpression()), !dbg !5759
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5761, metadata !DIExpression()), !dbg !5762
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5763, metadata !DIExpression()), !dbg !5764
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5765, metadata !DIExpression()), !dbg !5766
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5767
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5768
  %div = sdiv i64 %1, 64, !dbg !5768
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5769
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5767
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5770
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5771
  %conv.i = trunc i64 %4 to i32, !dbg !5771
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #14, !dbg !5772
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5773
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5773
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #14, !dbg !5773
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5774
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !5774
  br i1 %8, label %cond.true, label %cond.false, !dbg !5774

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !5774
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !5774
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !5775
  %and.i = and i64 %11, 63, !dbg !5776
  %shl.i = shl i64 1, %and.i, !dbg !5777
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !5778
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !5779
  %shr.i = ashr i64 %13, 6, !dbg !5780
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !5778
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !5778
  %and1.i = and i64 %shl.i, %14, !dbg !5781
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !5782
  %conv = zext i1 %cmp.i to i32, !dbg !5774
  br label %cond.end, !dbg !5774

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !5774
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !5774
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !5783
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !5784
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #15, !dbg !5785, !srcloc !5786
  store i8 %19, i8* %oldbit.i, align 1, !dbg !5785
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !5787
  %tobool.i = trunc i8 %20 to i1, !dbg !5787
  %conv2 = zext i1 %tobool.i to i32, !dbg !5774
  br label %cond.end, !dbg !5774

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5774
  %tobool = icmp ne i32 %cond, 0, !dbg !5774
  ret i1 %tobool, !dbg !5788
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !5789 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5790, metadata !DIExpression()), !dbg !5791
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5792, metadata !DIExpression()), !dbg !5793
  ret i1 true, !dbg !5794
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_sync_dma_for_cpu(i64 %paddr, i64 %size, i32 %dir) #0 !dbg !5795 {
entry:
  %paddr.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %dir.addr = alloca i32, align 4
  store i64 %paddr, i64* %paddr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %paddr.addr, metadata !5796, metadata !DIExpression()), !dbg !5797
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5798, metadata !DIExpression()), !dbg !5799
  store i32 %dir, i32* %dir.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dir.addr, metadata !5800, metadata !DIExpression()), !dbg !5801
  ret void, !dbg !5802
}

; Function Attrs: noredzone
declare dso_local void @xen_dma_sync_for_cpu(%struct.device*, i64, i64, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @is_xen_swiotlb_buffer(%struct.device* %dev, i64 %dma_addr) #0 !dbg !5803 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %dma_addr.addr = alloca i64, align 8
  %bfn = alloca i64, align 8
  %xen_pfn = alloca i64, align 8
  %paddr = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5806, metadata !DIExpression()), !dbg !5807
  store i64 %dma_addr, i64* %dma_addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dma_addr.addr, metadata !5808, metadata !DIExpression()), !dbg !5809
  call void @llvm.dbg.declare(metadata i64* %bfn, metadata !5810, metadata !DIExpression()), !dbg !5811
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5812
  %1 = load i64, i64* %dma_addr.addr, align 8, !dbg !5812
  %call = call i64 @dma_to_phys(%struct.device* %0, i64 %1) #9, !dbg !5812
  %shr = lshr i64 %call, 12, !dbg !5812
  store i64 %shr, i64* %bfn, align 8, !dbg !5811
  call void @llvm.dbg.declare(metadata i64* %xen_pfn, metadata !5813, metadata !DIExpression()), !dbg !5814
  %2 = load i64, i64* %bfn, align 8, !dbg !5815
  %call1 = call i64 @bfn_to_local_pfn(i64 %2) #9, !dbg !5816
  store i64 %call1, i64* %xen_pfn, align 8, !dbg !5814
  call void @llvm.dbg.declare(metadata i64* %paddr, metadata !5817, metadata !DIExpression()), !dbg !5818
  %3 = load i64, i64* %xen_pfn, align 8, !dbg !5819
  %shl = shl i64 %3, 12, !dbg !5820
  store i64 %shl, i64* %paddr, align 8, !dbg !5818
  %4 = load i64, i64* %paddr, align 8, !dbg !5821
  %shr2 = lshr i64 %4, 12, !dbg !5821
  %call3 = call i32 @pfn_valid(i64 %shr2) #9, !dbg !5823
  %tobool = icmp ne i32 %call3, 0, !dbg !5823
  br i1 %tobool, label %if.then, label %if.end, !dbg !5824

if.then:                                          ; preds = %entry
  %5 = load i64, i64* %paddr, align 8, !dbg !5825
  %6 = load i8*, i8** @xen_io_tlb_start, align 8, !dbg !5827
  %call4 = call i64 @virt_to_phys(i8* %6) #9, !dbg !5828
  %cmp = icmp uge i64 %5, %call4, !dbg !5829
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5830

land.rhs:                                         ; preds = %if.then
  %7 = load i64, i64* %paddr, align 8, !dbg !5831
  %8 = load i8*, i8** @xen_io_tlb_end, align 8, !dbg !5832
  %call5 = call i64 @virt_to_phys(i8* %8) #9, !dbg !5833
  %cmp6 = icmp ult i64 %7, %call5, !dbg !5834
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %9 = phi i1 [ false, %if.then ], [ %cmp6, %land.rhs ], !dbg !5835
  %land.ext = zext i1 %9 to i32, !dbg !5830
  store i32 %land.ext, i32* %retval, align 4, !dbg !5836
  br label %return, !dbg !5836

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5837
  br label %return, !dbg !5837

return:                                           ; preds = %if.end, %land.end
  %10 = load i32, i32* %retval, align 4, !dbg !5838
  ret i32 %10, !dbg !5838
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @bfn_to_local_pfn(i64 %mfn) #0 !dbg !5839 {
entry:
  %retval = alloca i64, align 8
  %mfn.addr = alloca i64, align 8
  %pfn = alloca i64, align 8
  store i64 %mfn, i64* %mfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %mfn.addr, metadata !5840, metadata !DIExpression()), !dbg !5841
  call void @llvm.dbg.declare(metadata i64* %pfn, metadata !5842, metadata !DIExpression()), !dbg !5843
  %call = call i32 @xen_feature(i32 2) #9, !dbg !5844
  %tobool = icmp ne i32 %call, 0, !dbg !5844
  br i1 %tobool, label %if.then, label %if.end, !dbg !5846

if.then:                                          ; preds = %entry
  %0 = load i64, i64* %mfn.addr, align 8, !dbg !5847
  store i64 %0, i64* %retval, align 8, !dbg !5848
  br label %return, !dbg !5848

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %mfn.addr, align 8, !dbg !5849
  %call1 = call i64 @mfn_to_pfn(i64 %1) #9, !dbg !5850
  store i64 %call1, i64* %pfn, align 8, !dbg !5851
  %2 = load i64, i64* %pfn, align 8, !dbg !5852
  %call2 = call i64 @__pfn_to_mfn(i64 %2) #9, !dbg !5854
  %3 = load i64, i64* %mfn.addr, align 8, !dbg !5855
  %cmp = icmp ne i64 %call2, %3, !dbg !5856
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !5857

if.then3:                                         ; preds = %if.end
  store i64 -1, i64* %retval, align 8, !dbg !5858
  br label %return, !dbg !5858

if.end4:                                          ; preds = %if.end
  %4 = load i64, i64* %pfn, align 8, !dbg !5859
  store i64 %4, i64* %retval, align 8, !dbg !5860
  br label %return, !dbg !5860

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %5 = load i64, i64* %retval, align 8, !dbg !5861
  ret i64 %5, !dbg !5861
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.page* @sg_page(%struct.scatterlist* %sg) #0 !dbg !5862 {
entry:
  %sg.addr = alloca %struct.scatterlist*, align 8
  store %struct.scatterlist* %sg, %struct.scatterlist** %sg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.scatterlist** %sg.addr, metadata !5865, metadata !DIExpression()), !dbg !5866
  %0 = load %struct.scatterlist*, %struct.scatterlist** %sg.addr, align 8, !dbg !5867
  %page_link = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %0, i32 0, i32 0, !dbg !5868
  %1 = load i64, i64* %page_link, align 8, !dbg !5868
  %and = and i64 %1, -4, !dbg !5869
  %2 = inttoptr i64 %and to %struct.page*, !dbg !5870
  ret %struct.page* %2, !dbg !5871
}

; Function Attrs: noredzone
declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #2

; Function Attrs: noredzone
declare dso_local void @swiotlb_tbl_sync_single(%struct.device*, i64, i64, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @xen_virt_to_bus(%struct.device* %dev, i8* %address) #0 !dbg !5872 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %address.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5875, metadata !DIExpression()), !dbg !5876
  store i8* %address, i8** %address.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %address.addr, metadata !5877, metadata !DIExpression()), !dbg !5878
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5879
  %1 = load i8*, i8** %address.addr, align 8, !dbg !5880
  %call = call i64 @virt_to_phys(i8* %1) #9, !dbg !5881
  %call1 = call i64 @xen_phys_to_dma(%struct.device* %0, i64 %call) #9, !dbg !5882
  ret i64 %call1, !dbg !5883
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { cold noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone willreturn }
attributes #8 = { argmemonly nounwind willreturn }
attributes #9 = { noredzone }
attributes #10 = { noredzone nounwind readnone }
attributes #11 = { cold noredzone }
attributes #12 = { cold noredzone noreturn }
attributes #13 = { nounwind readonly }
attributes #14 = { noredzone nounwind }
attributes #15 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3908, !3909, !3910, !3911}
!llvm.ident = !{!3912}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "xen_io_tlb_nslabs", scope: !2, file: !3, line: 50, type: !160, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !159, globals: !3361, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/xen/swiotlb-xen.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !18, !24, !29, !35, !42, !48, !57, !65, !71, !77, !84, !92, !98, !105, !144, !149, !155}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xen_swiotlb_err", file: !3, line: 159, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10}
!8 = !DIEnumerator(name: "XEN_SWIOTLB_UNKNOWN", value: 0, isUnsigned: true)
!9 = !DIEnumerator(name: "XEN_SWIOTLB_ENOMEM", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "XEN_SWIOTLB_EFIXUP", value: 2, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !12, line: 15, baseType: !6, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!13 = !{!14, !15, !16, !17}
!14 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!15 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!16 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!17 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !19, line: 546, baseType: !6, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!20 = !{!21, !22, !23}
!21 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!22 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!23 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !25, line: 65, baseType: !6, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!26 = !{!27, !28}
!27 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!28 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !30, line: 16, baseType: !6, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!31 = !{!32, !33, !34}
!32 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!33 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!34 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !36, line: 59, baseType: !6, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!37 = !{!38, !39, !40, !41}
!38 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!39 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!40 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!41 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !43, line: 54, baseType: !6, size: 32, elements: !44)
!43 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!44 = !{!45, !46, !47}
!45 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!46 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!47 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !49, line: 296, baseType: !6, size: 32, elements: !50)
!49 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!50 = !{!51, !52, !53, !54, !55, !56}
!51 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!52 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!53 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!54 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!55 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!56 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !58, line: 9, baseType: !6, size: 32, elements: !59)
!58 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!59 = !{!60, !61, !62, !63, !64}
!60 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!61 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!62 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!63 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!64 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !66, line: 26, baseType: !6, size: 32, elements: !67)
!66 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!67 = !{!68, !69, !70}
!68 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!69 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!70 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !72, line: 44, baseType: !6, size: 32, elements: !73)
!72 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!73 = !{!74, !75, !76}
!74 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!75 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!76 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !78, line: 343, baseType: !6, size: 32, elements: !79)
!78 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!79 = !{!80, !81, !82, !83}
!80 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!81 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!82 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!83 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !85, line: 524, baseType: !6, size: 32, elements: !86)
!85 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!86 = !{!87, !88, !89, !90, !91}
!87 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!88 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!89 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!90 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!91 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !85, line: 502, baseType: !6, size: 32, elements: !93)
!93 = !{!94, !95, !96, !97}
!94 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!95 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!96 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!97 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_data_direction", file: !99, line: 5, baseType: !6, size: 32, elements: !100)
!99 = !DIFile(filename: "./include/linux/dma-direction.h", directory: "/home/lizy2001/genbc/linux")
!100 = !{!101, !102, !103, !104}
!101 = !DIEnumerator(name: "DMA_BIDIRECTIONAL", value: 0, isUnsigned: true)
!102 = !DIEnumerator(name: "DMA_TO_DEVICE", value: 1, isUnsigned: true)
!103 = !DIEnumerator(name: "DMA_FROM_DEVICE", value: 2, isUnsigned: true)
!104 = !DIEnumerator(name: "DMA_NONE", value: 3, isUnsigned: true)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pageflags", file: !106, line: 104, baseType: !6, size: 32, elements: !107)
!106 = !DIFile(filename: "./include/linux/page-flags.h", directory: "/home/lizy2001/genbc/linux")
!107 = !{!108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143}
!108 = !DIEnumerator(name: "PG_locked", value: 0, isUnsigned: true)
!109 = !DIEnumerator(name: "PG_referenced", value: 1, isUnsigned: true)
!110 = !DIEnumerator(name: "PG_uptodate", value: 2, isUnsigned: true)
!111 = !DIEnumerator(name: "PG_dirty", value: 3, isUnsigned: true)
!112 = !DIEnumerator(name: "PG_lru", value: 4, isUnsigned: true)
!113 = !DIEnumerator(name: "PG_active", value: 5, isUnsigned: true)
!114 = !DIEnumerator(name: "PG_workingset", value: 6, isUnsigned: true)
!115 = !DIEnumerator(name: "PG_waiters", value: 7, isUnsigned: true)
!116 = !DIEnumerator(name: "PG_error", value: 8, isUnsigned: true)
!117 = !DIEnumerator(name: "PG_slab", value: 9, isUnsigned: true)
!118 = !DIEnumerator(name: "PG_owner_priv_1", value: 10, isUnsigned: true)
!119 = !DIEnumerator(name: "PG_arch_1", value: 11, isUnsigned: true)
!120 = !DIEnumerator(name: "PG_reserved", value: 12, isUnsigned: true)
!121 = !DIEnumerator(name: "PG_private", value: 13, isUnsigned: true)
!122 = !DIEnumerator(name: "PG_private_2", value: 14, isUnsigned: true)
!123 = !DIEnumerator(name: "PG_writeback", value: 15, isUnsigned: true)
!124 = !DIEnumerator(name: "PG_head", value: 16, isUnsigned: true)
!125 = !DIEnumerator(name: "PG_mappedtodisk", value: 17, isUnsigned: true)
!126 = !DIEnumerator(name: "PG_reclaim", value: 18, isUnsigned: true)
!127 = !DIEnumerator(name: "PG_swapbacked", value: 19, isUnsigned: true)
!128 = !DIEnumerator(name: "PG_unevictable", value: 20, isUnsigned: true)
!129 = !DIEnumerator(name: "PG_mlocked", value: 21, isUnsigned: true)
!130 = !DIEnumerator(name: "PG_uncached", value: 22, isUnsigned: true)
!131 = !DIEnumerator(name: "PG_arch_2", value: 23, isUnsigned: true)
!132 = !DIEnumerator(name: "__NR_PAGEFLAGS", value: 24, isUnsigned: true)
!133 = !DIEnumerator(name: "PG_checked", value: 10, isUnsigned: true)
!134 = !DIEnumerator(name: "PG_swapcache", value: 10, isUnsigned: true)
!135 = !DIEnumerator(name: "PG_fscache", value: 14, isUnsigned: true)
!136 = !DIEnumerator(name: "PG_pinned", value: 10, isUnsigned: true)
!137 = !DIEnumerator(name: "PG_savepinned", value: 3, isUnsigned: true)
!138 = !DIEnumerator(name: "PG_foreign", value: 10, isUnsigned: true)
!139 = !DIEnumerator(name: "PG_xen_remapped", value: 10, isUnsigned: true)
!140 = !DIEnumerator(name: "PG_slob_free", value: 13, isUnsigned: true)
!141 = !DIEnumerator(name: "PG_double_map", value: 6, isUnsigned: true)
!142 = !DIEnumerator(name: "PG_isolated", value: 18, isUnsigned: true)
!143 = !DIEnumerator(name: "PG_reported", value: 2, isUnsigned: true)
!144 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !145, line: 10, baseType: !6, size: 32, elements: !146)
!145 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!146 = !{!147, !148}
!147 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!148 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "swiotlb_force", file: !150, line: 14, baseType: !6, size: 32, elements: !151)
!150 = !DIFile(filename: "./include/linux/swiotlb.h", directory: "/home/lizy2001/genbc/linux")
!151 = !{!152, !153, !154}
!152 = !DIEnumerator(name: "SWIOTLB_NORMAL", value: 0, isUnsigned: true)
!153 = !DIEnumerator(name: "SWIOTLB_FORCE", value: 1, isUnsigned: true)
!154 = !DIEnumerator(name: "SWIOTLB_NO_FORCE", value: 2, isUnsigned: true)
!155 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_sync_target", file: !150, line: 44, baseType: !6, size: 32, elements: !156)
!156 = !{!157, !158}
!157 = !DIEnumerator(name: "SYNC_FOR_CPU", value: 0, isUnsigned: true)
!158 = !DIEnumerator(name: "SYNC_FOR_DEVICE", value: 1, isUnsigned: true)
!159 = !{!160, !161, !162, !164, !170, !1739, !3357, !3359, !321, !3360}
!160 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !163, line: 148, baseType: !6)
!163 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !163, line: 143, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !166, line: 23, baseType: !167)
!166 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !168, line: 31, baseType: !169)
!168 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!169 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !172, line: 68, size: 512, align: 128, elements: !173)
!172 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!173 = !{!174, !175, !3349, !3356}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !171, file: !172, line: 69, baseType: !160, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, scope: !171, file: !172, line: 77, baseType: !176, size: 320, offset: 64)
!176 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !171, file: !172, line: 77, size: 320, elements: !177)
!177 = !{!178, !3224, !3228, !3254, !3262, !3268, !3280, !3348}
!178 = !DIDerivedType(tag: DW_TAG_member, scope: !176, file: !172, line: 78, baseType: !179, size: 320)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !176, file: !172, line: 78, size: 320, elements: !180)
!180 = !{!181, !187, !3222, !3223}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !179, file: !172, line: 84, baseType: !182, size: 128)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !163, line: 178, size: 128, elements: !183)
!183 = !{!184, !186}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !182, file: !163, line: 179, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !182, file: !163, line: 179, baseType: !185, size: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !179, file: !172, line: 86, baseType: !188, size: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !49, line: 451, size: 1216, align: 64, elements: !190)
!190 = !{!191, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3217, !3218, !3219, !3220, !3221}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !189, file: !49, line: 452, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !49, line: 610, size: 4224, elements: !194)
!194 = !{!195, !198, !199, !208, !215, !216, !2755, !2756, !2757, !2758, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2799, !2807, !2808, !2809, !3112, !3113, !3114, !3115}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !193, file: !49, line: 611, baseType: !196, size: 16)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !163, line: 19, baseType: !197)
!197 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !193, file: !49, line: 612, baseType: !197, size: 16, offset: 16)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !193, file: !49, line: 613, baseType: !200, size: 32, offset: 32)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !201, line: 23, baseType: !202)
!201 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !201, line: 21, size: 32, elements: !203)
!203 = !{!204}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !202, file: !201, line: 22, baseType: !205, size: 32)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !163, line: 32, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !207, line: 49, baseType: !6)
!207 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!208 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !193, file: !49, line: 614, baseType: !209, size: 32, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !201, line: 28, baseType: !210)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !201, line: 26, size: 32, elements: !211)
!211 = !{!212}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !210, file: !201, line: 27, baseType: !213, size: 32)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !163, line: 33, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !207, line: 50, baseType: !6)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !193, file: !49, line: 615, baseType: !6, size: 32, offset: 96)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !193, file: !49, line: 622, baseType: !217, size: 64, offset: 128)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !49, line: 1864, size: 1536, align: 512, elements: !220)
!220 = !{!221, !2629, !2642, !2646, !2652, !2656, !2660, !2664, !2668, !2672, !2676, !2677, !2681, !2685, !2705, !2731, !2735, !2741, !2746, !2750, !2751}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !219, file: !49, line: 1865, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!225, !192, !225, !6}
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !227, line: 89, size: 1536, elements: !228)
!227 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!228 = !{!229, !230, !240, !248, !249, !267, !268, !272, !300, !374, !2614, !2615, !2616, !2621, !2622, !2623}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !226, file: !227, line: 91, baseType: !6, size: 32)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !226, file: !227, line: 92, baseType: !231, size: 32, offset: 32)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !232, line: 277, baseType: !233)
!232 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !232, line: 277, size: 32, elements: !234)
!234 = !{!235}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !233, file: !232, line: 277, baseType: !236, size: 32)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !232, line: 70, baseType: !237)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !232, line: 65, size: 32, elements: !238)
!238 = !{!239}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !237, file: !232, line: 66, baseType: !6, size: 32)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !226, file: !227, line: 93, baseType: !241, size: 128, offset: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !242, line: 38, size: 128, elements: !243)
!242 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!243 = !{!244, !246}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !241, file: !242, line: 39, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !241, file: !242, line: 39, baseType: !247, size: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !226, file: !227, line: 94, baseType: !225, size: 64, offset: 192)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !226, file: !227, line: 95, baseType: !250, size: 128, offset: 256)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !227, line: 47, size: 128, elements: !251)
!251 = !{!252, !263}
!252 = !DIDerivedType(tag: DW_TAG_member, scope: !250, file: !227, line: 48, baseType: !253, size: 64)
!253 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !250, file: !227, line: 48, size: 64, elements: !254)
!254 = !{!255, !262}
!255 = !DIDerivedType(tag: DW_TAG_member, scope: !253, file: !227, line: 49, baseType: !256, size: 64)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !253, file: !227, line: 49, size: 64, elements: !257)
!257 = !{!258, !261}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !256, file: !227, line: 50, baseType: !259, size: 32)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !166, line: 21, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !168, line: 27, baseType: !6)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !256, file: !227, line: 50, baseType: !259, size: 32, offset: 32)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !253, file: !227, line: 52, baseType: !165, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !250, file: !227, line: 54, baseType: !264, size: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266)
!266 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !226, file: !227, line: 96, baseType: !192, size: 64, offset: 384)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !226, file: !227, line: 98, baseType: !269, size: 256, offset: 448)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 256, elements: !270)
!270 = !{!271}
!271 = !DISubrange(count: 32)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !226, file: !227, line: 101, baseType: !273, size: 32, offset: 704)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !274, line: 25, size: 32, elements: !275)
!274 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!275 = !{!276}
!276 = !DIDerivedType(tag: DW_TAG_member, scope: !273, file: !274, line: 26, baseType: !277, size: 32)
!277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !273, file: !274, line: 26, size: 32, elements: !278)
!278 = !{!279}
!279 = !DIDerivedType(tag: DW_TAG_member, scope: !277, file: !274, line: 30, baseType: !280, size: 32)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !277, file: !274, line: 30, size: 32, elements: !281)
!281 = !{!282, !298}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !280, file: !274, line: 31, baseType: !283)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !284, line: 83, baseType: !285)
!284 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !284, line: 71, elements: !286)
!286 = !{!287}
!287 = !DIDerivedType(tag: DW_TAG_member, scope: !285, file: !284, line: 72, baseType: !288)
!288 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !285, file: !284, line: 72, elements: !289)
!289 = !{!290}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !288, file: !284, line: 73, baseType: !291)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !284, line: 20, elements: !292)
!292 = !{!293}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !291, file: !284, line: 21, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !295, line: 25, baseType: !296)
!295 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !295, line: 25, elements: !297)
!297 = !{}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !280, file: !274, line: 32, baseType: !299, size: 32)
!299 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !226, file: !227, line: 102, baseType: !301, size: 64, offset: 768)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !303)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !227, line: 135, size: 1024, align: 512, elements: !304)
!304 = !{!305, !309, !310, !317, !326, !330, !334, !338, !339, !343, !348, !360, !368}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !303, file: !227, line: 136, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!299, !225, !6}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !303, file: !227, line: 137, baseType: !306, size: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !303, file: !227, line: 138, baseType: !311, size: 64, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!299, !314, !316}
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !226)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !303, file: !227, line: 139, baseType: !318, size: 64, offset: 192)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{!299, !314, !6, !321, !324}
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !323)
!323 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !250)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !303, file: !227, line: 141, baseType: !327, size: 64, offset: 256)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!299, !314}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !303, file: !227, line: 142, baseType: !331, size: 64, offset: 320)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!299, !225}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !303, file: !227, line: 143, baseType: !335, size: 64, offset: 384)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !225}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !303, file: !227, line: 144, baseType: !335, size: 64, offset: 448)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !303, file: !227, line: 145, baseType: !340, size: 64, offset: 512)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DISubroutineType(types: !342)
!342 = !{null, !225, !192}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !303, file: !227, line: 146, baseType: !344, size: 64, offset: 576)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{!347, !225, !347, !299}
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !303, file: !227, line: 147, baseType: !349, size: 64, offset: 640)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DISubroutineType(types: !351)
!351 = !{!352, !354}
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !227, line: 18, flags: DIFlagFwdDecl)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !356, line: 8, size: 128, elements: !357)
!356 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!357 = !{!358, !359}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !355, file: !356, line: 9, baseType: !352, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !355, file: !356, line: 10, baseType: !225, size: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !303, file: !227, line: 148, baseType: !361, size: 64, offset: 704)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{!299, !364, !366}
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !163, line: 30, baseType: !367)
!367 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !303, file: !227, line: 149, baseType: !369, size: 64, offset: 768)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{!225, !225, !372}
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !226, file: !227, line: 103, baseType: !375, size: 64, offset: 832)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !49, line: 1416, size: 9472, elements: !377)
!377 = !{!378, !379, !382, !383, !384, !388, !439, !2280, !2362, !2445, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2461, !2465, !2466, !2469, !2470, !2473, !2474, !2475, !2516, !2543, !2544, !2545, !2546, !2547, !2548, !2551, !2553, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2581, !2582, !2583, !2584, !2585, !2588, !2589, !2590, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !376, file: !49, line: 1417, baseType: !182, size: 128)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !376, file: !49, line: 1418, baseType: !380, size: 32, offset: 128)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !163, line: 16, baseType: !381)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !163, line: 13, baseType: !259)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !376, file: !49, line: 1419, baseType: !266, size: 8, offset: 160)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !376, file: !49, line: 1420, baseType: !160, size: 64, offset: 192)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !376, file: !49, line: 1421, baseType: !385, size: 64, offset: 256)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !163, line: 46, baseType: !386)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !207, line: 88, baseType: !387)
!387 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !376, file: !49, line: 1422, baseType: !389, size: 64, offset: 320)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !49, line: 2228, size: 576, elements: !391)
!391 = !{!392, !393, !394, !400, !404, !408, !412, !416, !417, !427, !430, !431, !432, !436, !437, !438}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !390, file: !49, line: 2229, baseType: !321, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !390, file: !49, line: 2230, baseType: !299, size: 32, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !390, file: !49, line: 2238, baseType: !395, size: 64, offset: 128)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{!299, !398}
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !49, line: 69, flags: DIFlagFwdDecl)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !390, file: !49, line: 2239, baseType: !401, size: 64, offset: 192)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !403)
!403 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !49, line: 70, flags: DIFlagFwdDecl)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !390, file: !49, line: 2240, baseType: !405, size: 64, offset: 256)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DISubroutineType(types: !407)
!407 = !{!225, !389, !299, !321, !161}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !390, file: !49, line: 2242, baseType: !409, size: 64, offset: 320)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{null, !375}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !390, file: !49, line: 2243, baseType: !413, size: 64, offset: 384)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !415, line: 76, flags: DIFlagFwdDecl)
!415 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!416 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !390, file: !49, line: 2244, baseType: !389, size: 64, offset: 448)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !390, file: !49, line: 2245, baseType: !418, size: 64, offset: 512)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !163, line: 182, size: 64, elements: !419)
!419 = !{!420}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !418, file: !163, line: 183, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !163, line: 186, size: 128, elements: !423)
!423 = !{!424, !425}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !422, file: !163, line: 187, baseType: !421, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !422, file: !163, line: 187, baseType: !426, size: 64, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !390, file: !49, line: 2247, baseType: !428, offset: 576)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !429, line: 187, elements: !297)
!429 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!430 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !390, file: !49, line: 2248, baseType: !428, offset: 576)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !390, file: !49, line: 2249, baseType: !428, offset: 576)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !390, file: !49, line: 2250, baseType: !433, offset: 576)
!433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !428, elements: !434)
!434 = !{!435}
!435 = !DISubrange(count: 3)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !390, file: !49, line: 2252, baseType: !428, offset: 576)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !390, file: !49, line: 2253, baseType: !428, offset: 576)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !390, file: !49, line: 2254, baseType: !428, offset: 576)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !376, file: !49, line: 1423, baseType: !440, size: 64, offset: 384)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !442)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !49, line: 1935, size: 1472, elements: !443)
!443 = !{!444, !448, !452, !453, !457, !463, !467, !468, !469, !473, !477, !478, !479, !480, !486, !491, !492, !2257, !2258, !2259, !2260, !2264, !2279}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !442, file: !49, line: 1936, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{!192, !375}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !442, file: !49, line: 1937, baseType: !449, size: 64, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DISubroutineType(types: !451)
!451 = !{null, !192}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !442, file: !49, line: 1938, baseType: !449, size: 64, offset: 128)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !442, file: !49, line: 1940, baseType: !454, size: 64, offset: 192)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{null, !192, !299}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !442, file: !49, line: 1941, baseType: !458, size: 64, offset: 256)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!299, !192, !461}
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !19, line: 40, flags: DIFlagFwdDecl)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !442, file: !49, line: 1942, baseType: !464, size: 64, offset: 320)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{!299, !192}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !442, file: !49, line: 1943, baseType: !449, size: 64, offset: 384)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !442, file: !49, line: 1944, baseType: !409, size: 64, offset: 448)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !442, file: !49, line: 1945, baseType: !470, size: 64, offset: 512)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!299, !375, !299}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !442, file: !49, line: 1946, baseType: !474, size: 64, offset: 576)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{!299, !375}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !442, file: !49, line: 1947, baseType: !474, size: 64, offset: 640)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !442, file: !49, line: 1948, baseType: !474, size: 64, offset: 704)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !442, file: !49, line: 1949, baseType: !474, size: 64, offset: 768)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !442, file: !49, line: 1950, baseType: !481, size: 64, offset: 832)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!299, !225, !484}
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !49, line: 57, flags: DIFlagFwdDecl)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !442, file: !49, line: 1951, baseType: !487, size: 64, offset: 896)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!299, !375, !490, !347}
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !442, file: !49, line: 1952, baseType: !409, size: 64, offset: 960)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !442, file: !49, line: 1954, baseType: !493, size: 64, offset: 1024)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!299, !496, !225}
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !498, line: 16, size: 896, elements: !499)
!498 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/lizy2001/genbc/linux")
!499 = !{!500, !501, !505, !506, !507, !508, !509, !510, !525, !547, !548, !2256}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !497, file: !498, line: 17, baseType: !347, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !497, file: !498, line: 18, baseType: !502, size: 64, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !163, line: 55, baseType: !503)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !207, line: 72, baseType: !504)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !207, line: 16, baseType: !160)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !497, file: !498, line: 19, baseType: !502, size: 64, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !497, file: !498, line: 20, baseType: !502, size: 64, offset: 192)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !497, file: !498, line: 21, baseType: !502, size: 64, offset: 256)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !497, file: !498, line: 22, baseType: !385, size: 64, offset: 320)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !497, file: !498, line: 23, baseType: !385, size: 64, offset: 384)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !497, file: !498, line: 24, baseType: !511, size: 192, offset: 448)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !512, line: 53, size: 192, elements: !513)
!512 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!513 = !{!514, !523, !524}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !511, file: !512, line: 54, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !516, line: 13, baseType: !517)
!516 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !163, line: 175, baseType: !518)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !163, line: 173, size: 64, elements: !519)
!519 = !{!520}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !518, file: !163, line: 174, baseType: !521, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !166, line: 22, baseType: !522)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !168, line: 30, baseType: !387)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !511, file: !512, line: 55, baseType: !283, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !511, file: !512, line: 59, baseType: !182, size: 128, offset: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !497, file: !498, line: 25, baseType: !526, size: 64, offset: 640)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !528)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !498, line: 31, size: 256, elements: !529)
!529 = !{!530, !535, !539, !543}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !528, file: !498, line: 32, baseType: !531, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!161, !496, !534}
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !528, file: !498, line: 33, baseType: !536, size: 64, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{null, !496, !161}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !528, file: !498, line: 34, baseType: !540, size: 64, offset: 128)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!161, !496, !161, !534}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !528, file: !498, line: 35, baseType: !544, size: 64, offset: 192)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!299, !496, !161}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !497, file: !498, line: 26, baseType: !299, size: 32, offset: 704)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !497, file: !498, line: 27, baseType: !549, size: 64, offset: 768)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !551)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !49, line: 916, size: 1856, align: 32, elements: !552)
!552 = !{!553, !571, !572, !573, !2220, !2221, !2222, !2223, !2224, !2226, !2227, !2228, !2237, !2238, !2247, !2248, !2249, !2250, !2251, !2252, !2255}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !551, file: !49, line: 920, baseType: !554, size: 128)
!554 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !551, file: !49, line: 917, size: 128, elements: !555)
!555 = !{!556, !562}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !554, file: !49, line: 918, baseType: !557, size: 64)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !558, line: 58, size: 64, elements: !559)
!558 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!559 = !{!560}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !557, file: !558, line: 59, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !554, file: !49, line: 919, baseType: !563, size: 128, align: 64)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !163, line: 216, size: 128, align: 64, elements: !564)
!564 = !{!565, !567}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !563, file: !163, line: 217, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !563, file: !163, line: 218, baseType: !568, size: 64, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{null, !566}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !551, file: !49, line: 921, baseType: !355, size: 128, offset: 128)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !551, file: !49, line: 922, baseType: !192, size: 64, offset: 256)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !551, file: !49, line: 923, baseType: !574, size: 64, offset: 320)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !576)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !49, line: 1822, size: 2048, elements: !577)
!577 = !{!578, !579, !584, !592, !596, !624, !625, !629, !642, !643, !666, !670, !671, !2052, !2053, !2057, !2062, !2063, !2067, !2071, !2180, !2184, !2185, !2189, !2190, !2194, !2198, !2203, !2207, !2211, !2215, !2219}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !576, file: !49, line: 1823, baseType: !413, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !576, file: !49, line: 1824, baseType: !580, size: 64, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{!385, !583, !385, !299}
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !576, file: !49, line: 1825, baseType: !585, size: 64, offset: 128)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{!588, !583, !347, !502, !534}
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !163, line: 60, baseType: !589)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !207, line: 73, baseType: !590)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !207, line: 15, baseType: !591)
!591 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !576, file: !49, line: 1826, baseType: !593, size: 64, offset: 192)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DISubroutineType(types: !595)
!595 = !{!588, !583, !321, !502, !534}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !576, file: !49, line: 1827, baseType: !597, size: 64, offset: 256)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DISubroutineType(types: !599)
!599 = !{!588, !600, !622}
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !49, line: 320, size: 384, elements: !602)
!602 = !{!603, !604, !605, !609, !610, !611, !614, !615}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !601, file: !49, line: 321, baseType: !583, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !601, file: !49, line: 326, baseType: !385, size: 64, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !601, file: !49, line: 327, baseType: !606, size: 64, offset: 128)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{null, !600, !591, !591}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !601, file: !49, line: 328, baseType: !161, size: 64, offset: 192)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !601, file: !49, line: 329, baseType: !299, size: 32, offset: 256)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !601, file: !49, line: 330, baseType: !612, size: 16, offset: 288)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !166, line: 19, baseType: !613)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !168, line: 24, baseType: !197)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !601, file: !49, line: 331, baseType: !612, size: 16, offset: 304)
!615 = !DIDerivedType(tag: DW_TAG_member, scope: !601, file: !49, line: 332, baseType: !616, size: 64, offset: 320)
!616 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !601, file: !49, line: 332, size: 64, elements: !617)
!617 = !{!618, !619}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !616, file: !49, line: 333, baseType: !6, size: 32)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !616, file: !49, line: 334, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !49, line: 334, flags: DIFlagFwdDecl)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !49, line: 64, flags: DIFlagFwdDecl)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !576, file: !49, line: 1828, baseType: !597, size: 64, offset: 320)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !576, file: !49, line: 1829, baseType: !626, size: 64, offset: 384)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DISubroutineType(types: !628)
!628 = !{!299, !600, !366}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !576, file: !49, line: 1830, baseType: !630, size: 64, offset: 448)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!299, !583, !633}
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !49, line: 1776, size: 128, elements: !635)
!635 = !{!636, !641}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !634, file: !49, line: 1777, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !49, line: 1773, baseType: !638)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{!299, !633, !321, !299, !385, !165, !6}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !634, file: !49, line: 1778, baseType: !385, size: 64, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !576, file: !49, line: 1831, baseType: !630, size: 64, offset: 512)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !576, file: !49, line: 1832, baseType: !644, size: 64, offset: 576)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{!647, !583, !649}
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !648, line: 52, baseType: !6)
!648 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !651, line: 43, size: 128, elements: !652)
!651 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!652 = !{!653, !665}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !650, file: !651, line: 44, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !651, line: 37, baseType: !655)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{null, !583, !658, !649}
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !660, line: 40, baseType: !661)
!660 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !660, line: 36, size: 128, elements: !662)
!662 = !{!663, !664}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !661, file: !660, line: 37, baseType: !283)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !661, file: !660, line: 38, baseType: !182, size: 128)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !650, file: !651, line: 45, baseType: !647, size: 32, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !576, file: !49, line: 1833, baseType: !667, size: 64, offset: 640)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{!591, !583, !6, !160}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !576, file: !49, line: 1834, baseType: !667, size: 64, offset: 704)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !576, file: !49, line: 1835, baseType: !672, size: 64, offset: 768)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{!299, !583, !675}
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !172, line: 305, size: 1472, elements: !677)
!677 = !{!678, !679, !680, !681, !682, !690, !691, !1945, !1951, !1952, !1957, !1958, !1961, !2046, !2047, !2048, !2049, !2050}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !676, file: !172, line: 308, baseType: !160, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !676, file: !172, line: 309, baseType: !160, size: 64, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !676, file: !172, line: 313, baseType: !675, size: 64, offset: 128)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !676, file: !172, line: 313, baseType: !675, size: 64, offset: 192)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !676, file: !172, line: 315, baseType: !683, size: 192, align: 64, offset: 256)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !684, line: 24, size: 192, align: 64, elements: !685)
!684 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!685 = !{!686, !687, !689}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !683, file: !684, line: 25, baseType: !160, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !683, file: !684, line: 26, baseType: !688, size: 64, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !683, file: !684, line: 27, baseType: !688, size: 64, offset: 128)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !676, file: !172, line: 323, baseType: !160, size: 64, offset: 448)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !676, file: !172, line: 327, baseType: !692, size: 64, offset: 512)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !172, line: 388, size: 7296, elements: !694)
!694 = !{!695, !1941}
!695 = !DIDerivedType(tag: DW_TAG_member, scope: !693, file: !172, line: 389, baseType: !696, size: 7296)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !693, file: !172, line: 389, size: 7296, elements: !697)
!697 = !{!698, !699, !703, !704, !708, !709, !710, !711, !712, !721, !726, !727, !728, !729, !730, !731, !732, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !767, !775, !778, !802, !803, !1925, !1926, !1929, !1930, !1931, !1934, !1935, !1936, !1939, !1940}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !696, file: !172, line: 390, baseType: !675, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !696, file: !172, line: 391, baseType: !700, size: 64, offset: 64)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !684, line: 31, size: 64, elements: !701)
!701 = !{!702}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !700, file: !684, line: 32, baseType: !688, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !696, file: !172, line: 392, baseType: !165, size: 64, offset: 128)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !696, file: !172, line: 394, baseType: !705, size: 64, offset: 192)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DISubroutineType(types: !707)
!707 = !{!160, !583, !160, !160, !160, !160}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !696, file: !172, line: 398, baseType: !160, size: 64, offset: 256)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !696, file: !172, line: 399, baseType: !160, size: 64, offset: 320)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !696, file: !172, line: 405, baseType: !160, size: 64, offset: 384)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !696, file: !172, line: 406, baseType: !160, size: 64, offset: 448)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !696, file: !172, line: 407, baseType: !713, size: 64, offset: 512)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !715, line: 286, baseType: !716)
!715 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !715, line: 286, size: 64, elements: !717)
!717 = !{!718}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !716, file: !715, line: 286, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !720, line: 18, baseType: !160)
!720 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!721 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !696, file: !172, line: 416, baseType: !722, size: 32, offset: 576)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !163, line: 168, baseType: !723)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !163, line: 166, size: 32, elements: !724)
!724 = !{!725}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !723, file: !163, line: 167, baseType: !299, size: 32)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !696, file: !172, line: 428, baseType: !722, size: 32, offset: 608)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !696, file: !172, line: 437, baseType: !722, size: 32, offset: 640)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !696, file: !172, line: 447, baseType: !722, size: 32, offset: 672)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !696, file: !172, line: 450, baseType: !515, size: 64, offset: 704)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !696, file: !172, line: 452, baseType: !299, size: 32, offset: 768)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !696, file: !172, line: 454, baseType: !283, offset: 800)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !696, file: !172, line: 457, baseType: !733, size: 256, offset: 832)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !734, line: 35, size: 256, elements: !735)
!734 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!735 = !{!736, !737, !738, !740}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !733, file: !734, line: 36, baseType: !515, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !733, file: !734, line: 42, baseType: !515, size: 64, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !733, file: !734, line: 46, baseType: !739, offset: 128)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !284, line: 29, baseType: !291)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !733, file: !734, line: 47, baseType: !182, size: 128, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !696, file: !172, line: 459, baseType: !182, size: 128, offset: 1088)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !696, file: !172, line: 466, baseType: !160, size: 64, offset: 1216)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !696, file: !172, line: 467, baseType: !160, size: 64, offset: 1280)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !696, file: !172, line: 469, baseType: !160, size: 64, offset: 1344)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !696, file: !172, line: 470, baseType: !160, size: 64, offset: 1408)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !696, file: !172, line: 471, baseType: !517, size: 64, offset: 1472)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !696, file: !172, line: 472, baseType: !160, size: 64, offset: 1536)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !696, file: !172, line: 473, baseType: !160, size: 64, offset: 1600)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !696, file: !172, line: 474, baseType: !160, size: 64, offset: 1664)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !696, file: !172, line: 475, baseType: !160, size: 64, offset: 1728)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !696, file: !172, line: 477, baseType: !283, offset: 1792)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !696, file: !172, line: 478, baseType: !160, size: 64, offset: 1792)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !696, file: !172, line: 478, baseType: !160, size: 64, offset: 1856)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !696, file: !172, line: 478, baseType: !160, size: 64, offset: 1920)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !696, file: !172, line: 478, baseType: !160, size: 64, offset: 1984)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !696, file: !172, line: 479, baseType: !160, size: 64, offset: 2048)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !696, file: !172, line: 479, baseType: !160, size: 64, offset: 2112)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !696, file: !172, line: 479, baseType: !160, size: 64, offset: 2176)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !696, file: !172, line: 480, baseType: !160, size: 64, offset: 2240)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !696, file: !172, line: 480, baseType: !160, size: 64, offset: 2304)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !696, file: !172, line: 480, baseType: !160, size: 64, offset: 2368)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !696, file: !172, line: 480, baseType: !160, size: 64, offset: 2432)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !696, file: !172, line: 482, baseType: !764, size: 2816, offset: 2496)
!764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 2816, elements: !765)
!765 = !{!766}
!766 = !DISubrange(count: 44)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !696, file: !172, line: 488, baseType: !768, size: 256, offset: 5312)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !769, line: 60, size: 256, elements: !770)
!769 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!770 = !{!771}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !768, file: !769, line: 61, baseType: !772, size: 256)
!772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !515, size: 256, elements: !773)
!773 = !{!774}
!774 = !DISubrange(count: 4)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !696, file: !172, line: 490, baseType: !776, size: 64, offset: 5568)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !172, line: 490, flags: DIFlagFwdDecl)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !696, file: !172, line: 493, baseType: !779, size: 896, offset: 5632)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !780, line: 53, baseType: !781)
!780 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !780, line: 13, size: 896, elements: !782)
!782 = !{!783, !784, !785, !786, !789, !790, !791, !792, !796, !797, !798}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !781, file: !780, line: 18, baseType: !165, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !781, file: !780, line: 28, baseType: !517, size: 64, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !781, file: !780, line: 31, baseType: !733, size: 256, offset: 128)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !781, file: !780, line: 32, baseType: !787, size: 64, offset: 384)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !780, line: 32, flags: DIFlagFwdDecl)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !781, file: !780, line: 37, baseType: !197, size: 16, offset: 448)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !781, file: !780, line: 40, baseType: !511, size: 192, offset: 512)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !781, file: !780, line: 41, baseType: !161, size: 64, offset: 704)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !781, file: !780, line: 42, baseType: !793, size: 64, offset: 768)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !795)
!795 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !780, line: 42, flags: DIFlagFwdDecl)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !781, file: !780, line: 44, baseType: !722, size: 32, offset: 832)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !781, file: !780, line: 50, baseType: !612, size: 16, offset: 864)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !781, file: !780, line: 51, baseType: !799, size: 16, offset: 880)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !166, line: 18, baseType: !800)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !168, line: 23, baseType: !801)
!801 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !696, file: !172, line: 495, baseType: !160, size: 64, offset: 6528)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !696, file: !172, line: 497, baseType: !804, size: 64, offset: 6592)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !172, line: 381, size: 384, elements: !806)
!806 = !{!807, !808, !1924}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !805, file: !172, line: 382, baseType: !722, size: 32)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !805, file: !172, line: 383, baseType: !809, size: 128, offset: 64)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !172, line: 376, size: 128, elements: !810)
!810 = !{!811, !1922}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !809, file: !172, line: 377, baseType: !812, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !814, line: 640, size: 48640, elements: !815)
!814 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!815 = !{!816, !822, !824, !825, !831, !832, !833, !834, !835, !836, !837, !838, !842, !860, !871, !960, !961, !962, !973, !974, !976, !977, !978, !979, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1063, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1095, !1097, !1098, !1099, !1111, !1112, !1113, !1114, !1115, !1116, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1140, !1145, !1332, !1333, !1334, !1335, !1339, !1342, !1345, !1348, !1351, !1354, !1455, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1503, !1504, !1505, !1506, !1507, !1512, !1513, !1514, !1517, !1518, !1521, !1524, !1527, !1530, !1581, !1584, !1585, !1664, !1665, !1668, !1669, !1672, !1673, !1674, !1678, !1679, !1680, !1693, !1694, !1695, !1705, !1710, !1713, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !813, file: !814, line: 646, baseType: !817, size: 128)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !818, line: 56, size: 128, elements: !819)
!818 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!819 = !{!820, !821}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !817, file: !818, line: 57, baseType: !160, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !817, file: !818, line: 58, baseType: !259, size: 32, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !813, file: !814, line: 649, baseType: !823, size: 64, offset: 128)
!823 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !591)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !813, file: !814, line: 657, baseType: !161, size: 64, offset: 192)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !813, file: !814, line: 658, baseType: !826, size: 32, offset: 256)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !827, line: 113, baseType: !828)
!827 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !827, line: 111, size: 32, elements: !829)
!829 = !{!830}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !828, file: !827, line: 112, baseType: !722, size: 32)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !813, file: !814, line: 660, baseType: !6, size: 32, offset: 288)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !813, file: !814, line: 661, baseType: !6, size: 32, offset: 320)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !813, file: !814, line: 684, baseType: !299, size: 32, offset: 352)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !813, file: !814, line: 686, baseType: !299, size: 32, offset: 384)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !813, file: !814, line: 687, baseType: !299, size: 32, offset: 416)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !813, file: !814, line: 688, baseType: !299, size: 32, offset: 448)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !813, file: !814, line: 689, baseType: !6, size: 32, offset: 480)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !813, file: !814, line: 691, baseType: !839, size: 64, offset: 512)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !841)
!841 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !814, line: 691, flags: DIFlagFwdDecl)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !813, file: !814, line: 692, baseType: !843, size: 832, offset: 576)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !814, line: 451, size: 832, elements: !844)
!844 = !{!845, !850, !851, !852, !853, !854, !855, !856, !857, !858}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !843, file: !814, line: 453, baseType: !846, size: 128)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !814, line: 325, size: 128, elements: !847)
!847 = !{!848, !849}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !846, file: !814, line: 326, baseType: !160, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !846, file: !814, line: 327, baseType: !259, size: 32, offset: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !843, file: !814, line: 454, baseType: !683, size: 192, align: 64, offset: 128)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !843, file: !814, line: 455, baseType: !182, size: 128, offset: 320)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !843, file: !814, line: 456, baseType: !6, size: 32, offset: 448)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !843, file: !814, line: 458, baseType: !165, size: 64, offset: 512)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !843, file: !814, line: 459, baseType: !165, size: 64, offset: 576)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !843, file: !814, line: 460, baseType: !165, size: 64, offset: 640)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !843, file: !814, line: 461, baseType: !165, size: 64, offset: 704)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !843, file: !814, line: 463, baseType: !165, size: 64, offset: 768)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !843, file: !814, line: 465, baseType: !859, offset: 832)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !814, line: 415, elements: !297)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !813, file: !814, line: 693, baseType: !861, size: 384, offset: 1408)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !814, line: 489, size: 384, elements: !862)
!862 = !{!863, !864, !865, !866, !867, !868, !869}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !861, file: !814, line: 490, baseType: !182, size: 128)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !861, file: !814, line: 491, baseType: !160, size: 64, offset: 128)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !861, file: !814, line: 492, baseType: !160, size: 64, offset: 192)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !861, file: !814, line: 493, baseType: !6, size: 32, offset: 256)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !861, file: !814, line: 494, baseType: !197, size: 16, offset: 288)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !861, file: !814, line: 495, baseType: !197, size: 16, offset: 304)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !861, file: !814, line: 497, baseType: !870, size: 64, offset: 320)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !813, file: !814, line: 697, baseType: !872, size: 1792, offset: 1792)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !814, line: 507, size: 1792, elements: !873)
!873 = !{!874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !957, !958}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !872, file: !814, line: 508, baseType: !683, size: 192, align: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !872, file: !814, line: 515, baseType: !165, size: 64, offset: 192)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !872, file: !814, line: 516, baseType: !165, size: 64, offset: 256)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !872, file: !814, line: 517, baseType: !165, size: 64, offset: 320)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !872, file: !814, line: 518, baseType: !165, size: 64, offset: 384)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !872, file: !814, line: 519, baseType: !165, size: 64, offset: 448)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !872, file: !814, line: 526, baseType: !521, size: 64, offset: 512)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !872, file: !814, line: 527, baseType: !165, size: 64, offset: 576)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !872, file: !814, line: 528, baseType: !6, size: 32, offset: 640)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !872, file: !814, line: 554, baseType: !6, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !872, file: !814, line: 555, baseType: !6, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !872, file: !814, line: 556, baseType: !6, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !872, file: !814, line: 557, baseType: !6, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !872, file: !814, line: 563, baseType: !888, size: 512, offset: 704)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !889)
!889 = !{!890, !898, !899, !904, !951, !954, !955, !956}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !888, file: !25, line: 119, baseType: !891, size: 256)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !892, line: 9, size: 256, elements: !893)
!892 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!893 = !{!894, !895}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !891, file: !892, line: 10, baseType: !683, size: 192, align: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !891, file: !892, line: 11, baseType: !896, size: 64, offset: 192)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !897, line: 29, baseType: !521)
!897 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!898 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !888, file: !25, line: 120, baseType: !896, size: 64, offset: 256)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !888, file: !25, line: 121, baseType: !900, size: 64, offset: 320)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DISubroutineType(types: !902)
!902 = !{!24, !903}
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !888, file: !25, line: 122, baseType: !905, size: 64, offset: 384)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !907)
!907 = !{!908, !928, !929, !932, !937, !938, !946, !950}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !906, file: !25, line: 160, baseType: !909, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 214, size: 4608, align: 512, elements: !911)
!911 = !{!912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !910, file: !25, line: 215, baseType: !739)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !910, file: !25, line: 216, baseType: !6, size: 32)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !910, file: !25, line: 217, baseType: !6, size: 32, offset: 32)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !910, file: !25, line: 218, baseType: !6, size: 32, offset: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !910, file: !25, line: 219, baseType: !6, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !910, file: !25, line: 220, baseType: !6, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !910, file: !25, line: 221, baseType: !6, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !910, file: !25, line: 222, baseType: !6, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !910, file: !25, line: 233, baseType: !896, size: 64, offset: 128)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !910, file: !25, line: 234, baseType: !903, size: 64, offset: 192)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !910, file: !25, line: 235, baseType: !896, size: 64, offset: 256)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !910, file: !25, line: 236, baseType: !903, size: 64, offset: 320)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !910, file: !25, line: 237, baseType: !925, size: 4096, offset: 512)
!925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !906, size: 4096, elements: !926)
!926 = !{!927}
!927 = !DISubrange(count: 8)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !906, file: !25, line: 161, baseType: !6, size: 32, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !906, file: !25, line: 162, baseType: !930, size: 32, offset: 96)
!930 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !163, line: 27, baseType: !931)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !207, line: 96, baseType: !299)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !906, file: !25, line: 163, baseType: !933, size: 32, offset: 128)
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !232, line: 276, baseType: !934)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !232, line: 276, size: 32, elements: !935)
!935 = !{!936}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !934, file: !232, line: 276, baseType: !236, size: 32)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !906, file: !25, line: 164, baseType: !903, size: 64, offset: 192)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !906, file: !25, line: 165, baseType: !939, size: 128, offset: 256)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !892, line: 14, size: 128, elements: !940)
!940 = !{!941}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !939, file: !892, line: 15, baseType: !942, size: 128)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !684, line: 125, size: 128, elements: !943)
!943 = !{!944, !945}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !942, file: !684, line: 126, baseType: !700, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !942, file: !684, line: 127, baseType: !688, size: 64, offset: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !906, file: !25, line: 166, baseType: !947, size: 64, offset: 384)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DISubroutineType(types: !949)
!949 = !{!896}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !906, file: !25, line: 167, baseType: !896, size: 64, offset: 448)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !888, file: !25, line: 123, baseType: !952, size: 8, offset: 448)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !166, line: 17, baseType: !953)
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !168, line: 21, baseType: !266)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !888, file: !25, line: 124, baseType: !952, size: 8, offset: 456)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !888, file: !25, line: 125, baseType: !952, size: 8, offset: 464)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !888, file: !25, line: 126, baseType: !952, size: 8, offset: 472)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !872, file: !814, line: 572, baseType: !888, size: 512, offset: 1216)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !872, file: !814, line: 580, baseType: !959, size: 64, offset: 1728)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !813, file: !814, line: 721, baseType: !6, size: 32, offset: 3584)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !813, file: !814, line: 722, baseType: !299, size: 32, offset: 3616)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !813, file: !814, line: 723, baseType: !963, size: 64, offset: 3648)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !965)
!965 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !966, line: 17, baseType: !967)
!966 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !966, line: 17, size: 64, elements: !968)
!968 = !{!969}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !967, file: !966, line: 17, baseType: !970, size: 64)
!970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 64, elements: !971)
!971 = !{!972}
!972 = !DISubrange(count: 1)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !813, file: !814, line: 724, baseType: !965, size: 64, offset: 3712)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !813, file: !814, line: 749, baseType: !975, offset: 3776)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !814, line: 290, elements: !297)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !813, file: !814, line: 751, baseType: !182, size: 128, offset: 3776)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !813, file: !814, line: 757, baseType: !692, size: 64, offset: 3904)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !813, file: !814, line: 758, baseType: !692, size: 64, offset: 3968)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !813, file: !814, line: 761, baseType: !980, size: 320, offset: 4032)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !769, line: 34, size: 320, elements: !981)
!981 = !{!982, !983}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !980, file: !769, line: 35, baseType: !165, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !980, file: !769, line: 36, baseType: !984, size: 256, offset: 64)
!984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !675, size: 256, elements: !773)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !813, file: !814, line: 766, baseType: !299, size: 32, offset: 4352)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !813, file: !814, line: 767, baseType: !299, size: 32, offset: 4384)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !813, file: !814, line: 768, baseType: !299, size: 32, offset: 4416)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !813, file: !814, line: 770, baseType: !299, size: 32, offset: 4448)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !813, file: !814, line: 772, baseType: !160, size: 64, offset: 4480)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !813, file: !814, line: 775, baseType: !6, size: 32, offset: 4544)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !813, file: !814, line: 778, baseType: !6, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !813, file: !814, line: 779, baseType: !6, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !813, file: !814, line: 780, baseType: !6, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !813, file: !814, line: 803, baseType: !6, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !813, file: !814, line: 806, baseType: !6, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !813, file: !814, line: 807, baseType: !6, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !813, file: !814, line: 809, baseType: !6, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !813, file: !814, line: 815, baseType: !6, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !813, file: !814, line: 831, baseType: !160, size: 64, offset: 4672)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !813, file: !814, line: 833, baseType: !1001, size: 384, offset: 4736)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !30, line: 25, size: 384, elements: !1002)
!1002 = !{!1003, !1008}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1001, file: !30, line: 26, baseType: !1004, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!591, !1007}
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, scope: !1001, file: !30, line: 27, baseType: !1009, size: 320, offset: 64)
!1009 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1001, file: !30, line: 27, size: 320, elements: !1010)
!1010 = !{!1011, !1021, !1048}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1009, file: !30, line: 36, baseType: !1012, size: 320)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1009, file: !30, line: 29, size: 320, elements: !1013)
!1013 = !{!1014, !1016, !1017, !1018, !1019, !1020}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1012, file: !30, line: 30, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1012, file: !30, line: 31, baseType: !259, size: 32, offset: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1012, file: !30, line: 32, baseType: !259, size: 32, offset: 96)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1012, file: !30, line: 33, baseType: !259, size: 32, offset: 128)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1012, file: !30, line: 34, baseType: !165, size: 64, offset: 192)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1012, file: !30, line: 35, baseType: !1015, size: 64, offset: 256)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1009, file: !30, line: 46, baseType: !1022, size: 192)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1009, file: !30, line: 38, size: 192, elements: !1023)
!1023 = !{!1024, !1025, !1026, !1047}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1022, file: !30, line: 39, baseType: !930, size: 32)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1022, file: !30, line: 40, baseType: !29, size: 32, offset: 32)
!1026 = !DIDerivedType(tag: DW_TAG_member, scope: !1022, file: !30, line: 41, baseType: !1027, size: 64, offset: 64)
!1027 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1022, file: !30, line: 41, size: 64, elements: !1028)
!1028 = !{!1029, !1037}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1027, file: !30, line: 42, baseType: !1030, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1032, line: 7, size: 128, elements: !1033)
!1032 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1033 = !{!1034, !1036}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1031, file: !1032, line: 8, baseType: !1035, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !207, line: 93, baseType: !387)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1031, file: !1032, line: 9, baseType: !387, size: 64, offset: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1027, file: !30, line: 43, baseType: !1038, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1040, line: 7, size: 64, elements: !1041)
!1040 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1041 = !{!1042, !1046}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1039, file: !1040, line: 8, baseType: !1043, size: 32)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1040, line: 5, baseType: !1044)
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !166, line: 20, baseType: !1045)
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !168, line: 26, baseType: !299)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1039, file: !1040, line: 9, baseType: !1044, size: 32, offset: 32)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1022, file: !30, line: 45, baseType: !165, size: 64, offset: 128)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1009, file: !30, line: 54, baseType: !1049, size: 256)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1009, file: !30, line: 48, size: 256, elements: !1050)
!1050 = !{!1051, !1059, !1060, !1061, !1062}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1049, file: !30, line: 49, baseType: !1052, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1054, line: 36, size: 64, elements: !1055)
!1054 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!1055 = !{!1056, !1057, !1058}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1053, file: !1054, line: 37, baseType: !299, size: 32)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1053, file: !1054, line: 38, baseType: !801, size: 16, offset: 32)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1053, file: !1054, line: 39, baseType: !801, size: 16, offset: 48)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1049, file: !30, line: 50, baseType: !299, size: 32, offset: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1049, file: !30, line: 51, baseType: !299, size: 32, offset: 96)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1049, file: !30, line: 52, baseType: !160, size: 64, offset: 128)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1049, file: !30, line: 53, baseType: !160, size: 64, offset: 192)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !813, file: !814, line: 835, baseType: !1064, size: 32, offset: 5120)
!1064 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !163, line: 22, baseType: !1065)
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !207, line: 28, baseType: !299)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !813, file: !814, line: 836, baseType: !1064, size: 32, offset: 5152)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !813, file: !814, line: 840, baseType: !160, size: 64, offset: 5184)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !813, file: !814, line: 849, baseType: !812, size: 64, offset: 5248)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !813, file: !814, line: 852, baseType: !812, size: 64, offset: 5312)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !813, file: !814, line: 857, baseType: !182, size: 128, offset: 5376)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !813, file: !814, line: 858, baseType: !182, size: 128, offset: 5504)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !813, file: !814, line: 859, baseType: !812, size: 64, offset: 5632)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !813, file: !814, line: 867, baseType: !182, size: 128, offset: 5696)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !813, file: !814, line: 868, baseType: !182, size: 128, offset: 5824)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !813, file: !814, line: 871, baseType: !1076, size: 64, offset: 5952)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !58, line: 59, size: 768, elements: !1078)
!1078 = !{!1079, !1080, !1081, !1082, !1084, !1085, !1086, !1087}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1077, file: !58, line: 61, baseType: !826, size: 32)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1077, file: !58, line: 62, baseType: !6, size: 32, offset: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1077, file: !58, line: 63, baseType: !283, offset: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1077, file: !58, line: 65, baseType: !1083, size: 256, offset: 64)
!1083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 256, elements: !773)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1077, file: !58, line: 66, baseType: !418, size: 64, offset: 320)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1077, file: !58, line: 68, baseType: !659, size: 128, offset: 384)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1077, file: !58, line: 69, baseType: !563, size: 128, align: 64, offset: 512)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1077, file: !58, line: 70, baseType: !1088, size: 128, offset: 640)
!1088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1089, size: 128, elements: !971)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !58, line: 54, size: 128, elements: !1090)
!1090 = !{!1091, !1092}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1089, file: !58, line: 55, baseType: !299, size: 32)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1089, file: !58, line: 56, baseType: !1093, size: 64, offset: 64)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !58, line: 56, flags: DIFlagFwdDecl)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !813, file: !814, line: 872, baseType: !1096, size: 512, offset: 6016)
!1096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !422, size: 512, elements: !773)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !813, file: !814, line: 873, baseType: !182, size: 128, offset: 6528)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !813, file: !814, line: 874, baseType: !182, size: 128, offset: 6656)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !813, file: !814, line: 876, baseType: !1100, size: 64, offset: 6784)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1102, line: 26, size: 192, elements: !1103)
!1102 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1103 = !{!1104, !1105}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1101, file: !1102, line: 27, baseType: !6, size: 32)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1101, file: !1102, line: 28, baseType: !1106, size: 128, offset: 64)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1107, line: 43, size: 128, elements: !1108)
!1107 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1108 = !{!1109, !1110}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1106, file: !1107, line: 44, baseType: !739)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1106, file: !1107, line: 45, baseType: !182, size: 128)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !813, file: !814, line: 879, baseType: !490, size: 64, offset: 6848)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !813, file: !814, line: 882, baseType: !490, size: 64, offset: 6912)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !813, file: !814, line: 884, baseType: !165, size: 64, offset: 6976)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !813, file: !814, line: 885, baseType: !165, size: 64, offset: 7040)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !813, file: !814, line: 890, baseType: !165, size: 64, offset: 7104)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !813, file: !814, line: 891, baseType: !1117, size: 128, offset: 7168)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !814, line: 242, size: 128, elements: !1118)
!1118 = !{!1119, !1120, !1121}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1117, file: !814, line: 244, baseType: !165, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1117, file: !814, line: 245, baseType: !165, size: 64, offset: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1117, file: !814, line: 246, baseType: !739, offset: 128)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !813, file: !814, line: 900, baseType: !160, size: 64, offset: 7296)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !813, file: !814, line: 901, baseType: !160, size: 64, offset: 7360)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !813, file: !814, line: 904, baseType: !165, size: 64, offset: 7424)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !813, file: !814, line: 907, baseType: !165, size: 64, offset: 7488)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !813, file: !814, line: 910, baseType: !160, size: 64, offset: 7552)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !813, file: !814, line: 911, baseType: !160, size: 64, offset: 7616)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !813, file: !814, line: 914, baseType: !1129, size: 640, offset: 7680)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1130, line: 123, size: 640, elements: !1131)
!1130 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1131 = !{!1132, !1138, !1139}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1129, file: !1130, line: 124, baseType: !1133, size: 576)
!1133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1134, size: 576, elements: !434)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1130, line: 108, size: 192, elements: !1135)
!1135 = !{!1136, !1137}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1134, file: !1130, line: 109, baseType: !165, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1134, file: !1130, line: 110, baseType: !939, size: 128, offset: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1129, file: !1130, line: 125, baseType: !6, size: 32, offset: 576)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1129, file: !1130, line: 126, baseType: !6, size: 32, offset: 608)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !813, file: !814, line: 917, baseType: !1141, size: 192, offset: 8320)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1130, line: 134, size: 192, elements: !1142)
!1142 = !{!1143, !1144}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1141, file: !1130, line: 135, baseType: !563, size: 128, align: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1141, file: !1130, line: 136, baseType: !6, size: 32, offset: 128)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !813, file: !814, line: 923, baseType: !1146, size: 64, offset: 8512)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1148)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1149, line: 111, size: 1280, elements: !1150)
!1149 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1150 = !{!1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1170, !1171, !1172, !1173, !1174, !1175, !1285, !1286, !1287, !1288, !1314, !1317, !1327}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1148, file: !1149, line: 112, baseType: !722, size: 32)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1148, file: !1149, line: 120, baseType: !200, size: 32, offset: 32)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1148, file: !1149, line: 121, baseType: !209, size: 32, offset: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1148, file: !1149, line: 122, baseType: !200, size: 32, offset: 96)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1148, file: !1149, line: 123, baseType: !209, size: 32, offset: 128)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1148, file: !1149, line: 124, baseType: !200, size: 32, offset: 160)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1148, file: !1149, line: 125, baseType: !209, size: 32, offset: 192)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1148, file: !1149, line: 126, baseType: !200, size: 32, offset: 224)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1148, file: !1149, line: 127, baseType: !209, size: 32, offset: 256)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1148, file: !1149, line: 128, baseType: !6, size: 32, offset: 288)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1148, file: !1149, line: 129, baseType: !1162, size: 64, offset: 320)
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1163, line: 26, baseType: !1164)
!1163 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1163, line: 24, size: 64, elements: !1165)
!1165 = !{!1166}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1164, file: !1163, line: 25, baseType: !1167, size: 64)
!1167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 64, elements: !1168)
!1168 = !{!1169}
!1169 = !DISubrange(count: 2)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1148, file: !1149, line: 130, baseType: !1162, size: 64, offset: 384)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1148, file: !1149, line: 131, baseType: !1162, size: 64, offset: 448)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1148, file: !1149, line: 132, baseType: !1162, size: 64, offset: 512)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1148, file: !1149, line: 133, baseType: !1162, size: 64, offset: 576)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1148, file: !1149, line: 135, baseType: !266, size: 8, offset: 640)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1148, file: !1149, line: 137, baseType: !1176, size: 64, offset: 704)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1178, line: 189, size: 1664, elements: !1179)
!1178 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1179 = !{!1180, !1181, !1184, !1189, !1190, !1193, !1194, !1201, !1202, !1203, !1204, !1207, !1208, !1209, !1210, !1211, !1249, !1270}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1177, file: !1178, line: 190, baseType: !826, size: 32)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1177, file: !1178, line: 191, baseType: !1182, size: 32, offset: 32)
!1182 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1178, line: 28, baseType: !1183)
!1183 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !163, line: 98, baseType: !1044)
!1184 = !DIDerivedType(tag: DW_TAG_member, scope: !1177, file: !1178, line: 192, baseType: !1185, size: 192, offset: 64)
!1185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1177, file: !1178, line: 192, size: 192, elements: !1186)
!1186 = !{!1187, !1188}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1185, file: !1178, line: 193, baseType: !182, size: 128)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1185, file: !1178, line: 194, baseType: !683, size: 192, align: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1177, file: !1178, line: 199, baseType: !733, size: 256, offset: 256)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1177, file: !1178, line: 200, baseType: !1191, size: 64, offset: 512)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1178, line: 200, flags: DIFlagFwdDecl)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1177, file: !1178, line: 201, baseType: !161, size: 64, offset: 576)
!1194 = !DIDerivedType(tag: DW_TAG_member, scope: !1177, file: !1178, line: 202, baseType: !1195, size: 64, offset: 640)
!1195 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1177, file: !1178, line: 202, size: 64, elements: !1196)
!1196 = !{!1197, !1200}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1195, file: !1178, line: 203, baseType: !1198, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1199, line: 8, baseType: !522)
!1199 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1195, file: !1178, line: 204, baseType: !1198, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1177, file: !1178, line: 206, baseType: !1198, size: 64, offset: 704)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1177, file: !1178, line: 207, baseType: !200, size: 32, offset: 768)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1177, file: !1178, line: 208, baseType: !209, size: 32, offset: 800)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1177, file: !1178, line: 209, baseType: !1205, size: 32, offset: 832)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1178, line: 31, baseType: !1206)
!1206 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !163, line: 104, baseType: !259)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1177, file: !1178, line: 210, baseType: !197, size: 16, offset: 864)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1177, file: !1178, line: 211, baseType: !197, size: 16, offset: 880)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1177, file: !1178, line: 215, baseType: !801, size: 16, offset: 896)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1177, file: !1178, line: 222, baseType: !160, size: 64, offset: 960)
!1211 = !DIDerivedType(tag: DW_TAG_member, scope: !1177, file: !1178, line: 239, baseType: !1212, size: 320, offset: 1024)
!1212 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1177, file: !1178, line: 239, size: 320, elements: !1213)
!1213 = !{!1214, !1241}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1212, file: !1178, line: 240, baseType: !1215, size: 320)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1178, line: 108, size: 320, elements: !1216)
!1216 = !{!1217, !1218, !1230, !1233, !1240}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1215, file: !1178, line: 110, baseType: !160, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, scope: !1215, file: !1178, line: 111, baseType: !1219, size: 64, offset: 64)
!1219 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1215, file: !1178, line: 111, size: 64, elements: !1220)
!1220 = !{!1221, !1229}
!1221 = !DIDerivedType(tag: DW_TAG_member, scope: !1219, file: !1178, line: 112, baseType: !1222, size: 64)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1219, file: !1178, line: 112, size: 64, elements: !1223)
!1223 = !{!1224, !1225}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1222, file: !1178, line: 114, baseType: !612, size: 16)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1222, file: !1178, line: 115, baseType: !1226, size: 48, offset: 16)
!1226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 48, elements: !1227)
!1227 = !{!1228}
!1228 = !DISubrange(count: 6)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1219, file: !1178, line: 121, baseType: !160, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1215, file: !1178, line: 123, baseType: !1231, size: 64, offset: 128)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1178, line: 96, flags: DIFlagFwdDecl)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1215, file: !1178, line: 124, baseType: !1234, size: 64, offset: 192)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1178, line: 102, size: 192, elements: !1236)
!1236 = !{!1237, !1238, !1239}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1235, file: !1178, line: 103, baseType: !563, size: 128, align: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1235, file: !1178, line: 104, baseType: !826, size: 32, offset: 128)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1235, file: !1178, line: 105, baseType: !366, size: 8, offset: 160)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1215, file: !1178, line: 125, baseType: !321, size: 64, offset: 256)
!1241 = !DIDerivedType(tag: DW_TAG_member, scope: !1212, file: !1178, line: 241, baseType: !1242, size: 320)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1212, file: !1178, line: 241, size: 320, elements: !1243)
!1243 = !{!1244, !1245, !1246, !1247, !1248}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1242, file: !1178, line: 242, baseType: !160, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1242, file: !1178, line: 243, baseType: !160, size: 64, offset: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1242, file: !1178, line: 244, baseType: !1231, size: 64, offset: 128)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1242, file: !1178, line: 245, baseType: !1234, size: 64, offset: 192)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1242, file: !1178, line: 246, baseType: !347, size: 64, offset: 256)
!1249 = !DIDerivedType(tag: DW_TAG_member, scope: !1177, file: !1178, line: 254, baseType: !1250, size: 256, offset: 1344)
!1250 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1177, file: !1178, line: 254, size: 256, elements: !1251)
!1251 = !{!1252, !1258}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1250, file: !1178, line: 255, baseType: !1253, size: 256)
!1253 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1178, line: 128, size: 256, elements: !1254)
!1254 = !{!1255, !1256}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1253, file: !1178, line: 129, baseType: !161, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1253, file: !1178, line: 130, baseType: !1257, size: 256)
!1257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 256, elements: !773)
!1258 = !DIDerivedType(tag: DW_TAG_member, scope: !1250, file: !1178, line: 256, baseType: !1259, size: 256)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1250, file: !1178, line: 256, size: 256, elements: !1260)
!1260 = !{!1261, !1262}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1259, file: !1178, line: 258, baseType: !182, size: 128)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1259, file: !1178, line: 259, baseType: !1263, size: 128, offset: 128)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1264, line: 22, size: 128, elements: !1265)
!1264 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1265 = !{!1266, !1269}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1263, file: !1264, line: 23, baseType: !1267, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1264, line: 23, flags: DIFlagFwdDecl)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1263, file: !1264, line: 24, baseType: !160, size: 64, offset: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1177, file: !1178, line: 274, baseType: !1271, size: 64, offset: 1600)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1178, line: 170, size: 192, elements: !1273)
!1273 = !{!1274, !1283, !1284}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1272, file: !1178, line: 171, baseType: !1275, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1178, line: 165, baseType: !1276)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{!299, !1176, !1279, !1281, !1176}
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1232)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1253)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1272, file: !1178, line: 172, baseType: !1176, size: 64, offset: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1272, file: !1178, line: 173, baseType: !1231, size: 64, offset: 128)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1148, file: !1149, line: 138, baseType: !1176, size: 64, offset: 768)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1148, file: !1149, line: 139, baseType: !1176, size: 64, offset: 832)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1148, file: !1149, line: 140, baseType: !1176, size: 64, offset: 896)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1148, file: !1149, line: 145, baseType: !1289, size: 64, offset: 960)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1291, line: 13, size: 896, elements: !1292)
!1291 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1292 = !{!1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1290, file: !1291, line: 14, baseType: !826, size: 32)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1290, file: !1291, line: 15, baseType: !722, size: 32, offset: 32)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1290, file: !1291, line: 16, baseType: !722, size: 32, offset: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1290, file: !1291, line: 21, baseType: !515, size: 64, offset: 128)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1290, file: !1291, line: 27, baseType: !160, size: 64, offset: 192)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1290, file: !1291, line: 28, baseType: !160, size: 64, offset: 256)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1290, file: !1291, line: 29, baseType: !515, size: 64, offset: 320)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1290, file: !1291, line: 32, baseType: !422, size: 128, offset: 384)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1290, file: !1291, line: 33, baseType: !200, size: 32, offset: 512)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1290, file: !1291, line: 37, baseType: !515, size: 64, offset: 576)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1290, file: !1291, line: 44, baseType: !1304, size: 256, offset: 640)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1305, line: 15, size: 256, elements: !1306)
!1305 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1306 = !{!1307, !1308, !1309, !1310, !1311, !1312, !1313}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1304, file: !1305, line: 16, baseType: !739)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1304, file: !1305, line: 18, baseType: !299, size: 32)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1304, file: !1305, line: 19, baseType: !299, size: 32, offset: 32)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1304, file: !1305, line: 20, baseType: !299, size: 32, offset: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1304, file: !1305, line: 21, baseType: !299, size: 32, offset: 96)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1304, file: !1305, line: 22, baseType: !160, size: 64, offset: 128)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1304, file: !1305, line: 23, baseType: !160, size: 64, offset: 192)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1148, file: !1149, line: 146, baseType: !1315, size: 64, offset: 1024)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !172, line: 516, flags: DIFlagFwdDecl)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1148, file: !1149, line: 147, baseType: !1318, size: 64, offset: 1088)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1149, line: 25, size: 64, elements: !1320)
!1320 = !{!1321, !1322, !1323}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1319, file: !1149, line: 26, baseType: !722, size: 32)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1319, file: !1149, line: 27, baseType: !299, size: 32, offset: 32)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1319, file: !1149, line: 28, baseType: !1324, offset: 64)
!1324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, elements: !1325)
!1325 = !{!1326}
!1326 = !DISubrange(count: 0)
!1327 = !DIDerivedType(tag: DW_TAG_member, scope: !1148, file: !1149, line: 149, baseType: !1328, size: 128, offset: 1152)
!1328 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1148, file: !1149, line: 149, size: 128, elements: !1329)
!1329 = !{!1330, !1331}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1328, file: !1149, line: 150, baseType: !299, size: 32)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1328, file: !1149, line: 151, baseType: !563, size: 128, align: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !813, file: !814, line: 926, baseType: !1146, size: 64, offset: 8576)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !813, file: !814, line: 929, baseType: !1146, size: 64, offset: 8640)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !813, file: !814, line: 933, baseType: !1176, size: 64, offset: 8704)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !813, file: !814, line: 943, baseType: !1336, size: 128, offset: 8768)
!1336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 128, elements: !1337)
!1337 = !{!1338}
!1338 = !DISubrange(count: 16)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !813, file: !814, line: 945, baseType: !1340, size: 64, offset: 8896)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !814, line: 49, flags: DIFlagFwdDecl)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !813, file: !814, line: 956, baseType: !1343, size: 64, offset: 8960)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !814, line: 45, flags: DIFlagFwdDecl)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !813, file: !814, line: 959, baseType: !1346, size: 64, offset: 9024)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !814, line: 959, flags: DIFlagFwdDecl)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !813, file: !814, line: 962, baseType: !1349, size: 64, offset: 9088)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !814, line: 66, flags: DIFlagFwdDecl)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !813, file: !814, line: 966, baseType: !1352, size: 64, offset: 9152)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !814, line: 50, flags: DIFlagFwdDecl)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !813, file: !814, line: 969, baseType: !1355, size: 64, offset: 9216)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1357, line: 82, size: 7296, elements: !1358)
!1357 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1358 = !{!1359, !1360, !1361, !1362, !1363, !1364, !1365, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1394, !1403, !1404, !1406, !1407, !1408, !1411, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1441, !1442, !1449, !1450, !1451, !1452, !1453, !1454}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1356, file: !1357, line: 83, baseType: !826, size: 32)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1356, file: !1357, line: 84, baseType: !722, size: 32, offset: 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1356, file: !1357, line: 85, baseType: !299, size: 32, offset: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1356, file: !1357, line: 86, baseType: !182, size: 128, offset: 128)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1356, file: !1357, line: 88, baseType: !659, size: 128, offset: 256)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1356, file: !1357, line: 91, baseType: !812, size: 64, offset: 384)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1356, file: !1357, line: 94, baseType: !1366, size: 192, offset: 448)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1367, line: 30, size: 192, elements: !1368)
!1367 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1368 = !{!1369, !1370}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1366, file: !1367, line: 31, baseType: !182, size: 128)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1366, file: !1367, line: 32, baseType: !1371, size: 64, offset: 128)
!1371 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1372, line: 25, baseType: !1373)
!1372 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1372, line: 23, size: 64, elements: !1374)
!1374 = !{!1375}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1373, file: !1372, line: 24, baseType: !970, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1356, file: !1357, line: 97, baseType: !418, size: 64, offset: 640)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1356, file: !1357, line: 100, baseType: !299, size: 32, offset: 704)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1356, file: !1357, line: 106, baseType: !299, size: 32, offset: 736)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1356, file: !1357, line: 107, baseType: !812, size: 64, offset: 768)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1356, file: !1357, line: 110, baseType: !299, size: 32, offset: 832)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1356, file: !1357, line: 111, baseType: !6, size: 32, offset: 864)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1356, file: !1357, line: 122, baseType: !6, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1356, file: !1357, line: 123, baseType: !6, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1356, file: !1357, line: 128, baseType: !299, size: 32, offset: 928)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1356, file: !1357, line: 129, baseType: !182, size: 128, offset: 960)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1356, file: !1357, line: 132, baseType: !888, size: 512, offset: 1088)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1356, file: !1357, line: 133, baseType: !896, size: 64, offset: 1600)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1356, file: !1357, line: 140, baseType: !1389, size: 256, offset: 1664)
!1389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1390, size: 256, elements: !1168)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1357, line: 38, size: 128, elements: !1391)
!1391 = !{!1392, !1393}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1390, file: !1357, line: 39, baseType: !165, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1390, file: !1357, line: 40, baseType: !165, size: 64, offset: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1356, file: !1357, line: 146, baseType: !1395, size: 192, offset: 1920)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1357, line: 66, size: 192, elements: !1396)
!1396 = !{!1397}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1395, file: !1357, line: 67, baseType: !1398, size: 192)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1357, line: 47, size: 192, elements: !1399)
!1399 = !{!1400, !1401, !1402}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1398, file: !1357, line: 48, baseType: !517, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1398, file: !1357, line: 49, baseType: !517, size: 64, offset: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1398, file: !1357, line: 50, baseType: !517, size: 64, offset: 128)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1356, file: !1357, line: 150, baseType: !1129, size: 640, offset: 2112)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1356, file: !1357, line: 153, baseType: !1405, size: 256, offset: 2752)
!1405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1076, size: 256, elements: !773)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1356, file: !1357, line: 159, baseType: !1076, size: 64, offset: 3008)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1356, file: !1357, line: 162, baseType: !299, size: 32, offset: 3072)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1356, file: !1357, line: 164, baseType: !1409, size: 64, offset: 3136)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1357, line: 164, flags: DIFlagFwdDecl)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1356, file: !1357, line: 175, baseType: !1412, size: 32, offset: 3200)
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !232, line: 805, baseType: !1413)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !232, line: 798, size: 32, elements: !1414)
!1414 = !{!1415, !1416}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1413, file: !232, line: 803, baseType: !231, size: 32)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1413, file: !232, line: 804, baseType: !283, offset: 32)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1356, file: !1357, line: 176, baseType: !165, size: 64, offset: 3264)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1356, file: !1357, line: 176, baseType: !165, size: 64, offset: 3328)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1356, file: !1357, line: 176, baseType: !165, size: 64, offset: 3392)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1356, file: !1357, line: 176, baseType: !165, size: 64, offset: 3456)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1356, file: !1357, line: 177, baseType: !165, size: 64, offset: 3520)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1356, file: !1357, line: 178, baseType: !165, size: 64, offset: 3584)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1356, file: !1357, line: 179, baseType: !1117, size: 128, offset: 3648)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1356, file: !1357, line: 180, baseType: !160, size: 64, offset: 3776)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1356, file: !1357, line: 180, baseType: !160, size: 64, offset: 3840)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1356, file: !1357, line: 180, baseType: !160, size: 64, offset: 3904)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1356, file: !1357, line: 180, baseType: !160, size: 64, offset: 3968)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1356, file: !1357, line: 181, baseType: !160, size: 64, offset: 4032)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1356, file: !1357, line: 181, baseType: !160, size: 64, offset: 4096)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1356, file: !1357, line: 181, baseType: !160, size: 64, offset: 4160)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1356, file: !1357, line: 181, baseType: !160, size: 64, offset: 4224)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1356, file: !1357, line: 182, baseType: !160, size: 64, offset: 4288)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1356, file: !1357, line: 182, baseType: !160, size: 64, offset: 4352)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1356, file: !1357, line: 182, baseType: !160, size: 64, offset: 4416)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1356, file: !1357, line: 182, baseType: !160, size: 64, offset: 4480)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1356, file: !1357, line: 183, baseType: !160, size: 64, offset: 4544)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1356, file: !1357, line: 183, baseType: !160, size: 64, offset: 4608)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1356, file: !1357, line: 184, baseType: !1439, offset: 4672)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1440, line: 12, elements: !297)
!1440 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1356, file: !1357, line: 192, baseType: !169, size: 64, offset: 4672)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1356, file: !1357, line: 203, baseType: !1443, size: 2048, offset: 4736)
!1443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1444, size: 2048, elements: !1337)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1445, line: 43, size: 128, elements: !1446)
!1445 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1446 = !{!1447, !1448}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1444, file: !1445, line: 44, baseType: !504, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1444, file: !1445, line: 45, baseType: !504, size: 64, offset: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1356, file: !1357, line: 220, baseType: !366, size: 8, offset: 6784)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1356, file: !1357, line: 221, baseType: !801, size: 16, offset: 6800)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1356, file: !1357, line: 222, baseType: !801, size: 16, offset: 6816)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1356, file: !1357, line: 224, baseType: !692, size: 64, offset: 6848)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1356, file: !1357, line: 227, baseType: !511, size: 192, offset: 6912)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1356, file: !1357, line: 233, baseType: !511, size: 192, offset: 7104)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !813, file: !814, line: 970, baseType: !1456, size: 64, offset: 9280)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1357, line: 20, size: 16576, elements: !1458)
!1458 = !{!1459, !1460, !1461, !1462}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1457, file: !1357, line: 21, baseType: !283)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1457, file: !1357, line: 22, baseType: !826, size: 32)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1457, file: !1357, line: 23, baseType: !659, size: 128, offset: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1457, file: !1357, line: 24, baseType: !1463, size: 16384, offset: 192)
!1463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1464, size: 16384, elements: !1484)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1367, line: 49, size: 256, elements: !1465)
!1465 = !{!1466}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1464, file: !1367, line: 50, baseType: !1467, size: 256)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1367, line: 35, size: 256, elements: !1468)
!1468 = !{!1469, !1476, !1477, !1483}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1467, file: !1367, line: 37, baseType: !1470, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1471, line: 19, baseType: !1472)
!1471 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1471, line: 18, baseType: !1474)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{null, !299}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1467, file: !1367, line: 38, baseType: !160, size: 64, offset: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1467, file: !1367, line: 44, baseType: !1478, size: 64, offset: 128)
!1478 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1471, line: 22, baseType: !1479)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1471, line: 21, baseType: !1481)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{null}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1467, file: !1367, line: 46, baseType: !1371, size: 64, offset: 192)
!1484 = !{!1485}
!1485 = !DISubrange(count: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !813, file: !814, line: 971, baseType: !1371, size: 64, offset: 9344)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !813, file: !814, line: 972, baseType: !1371, size: 64, offset: 9408)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !813, file: !814, line: 974, baseType: !1371, size: 64, offset: 9472)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !813, file: !814, line: 975, baseType: !1366, size: 192, offset: 9536)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !813, file: !814, line: 976, baseType: !160, size: 64, offset: 9728)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !813, file: !814, line: 977, baseType: !502, size: 64, offset: 9792)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !813, file: !814, line: 978, baseType: !6, size: 32, offset: 9856)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !813, file: !814, line: 980, baseType: !566, size: 64, offset: 9920)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !813, file: !814, line: 989, baseType: !1495, size: 128, offset: 9984)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1496, line: 35, size: 128, elements: !1497)
!1496 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1497 = !{!1498, !1499, !1500}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1495, file: !1496, line: 36, baseType: !299, size: 32)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1495, file: !1496, line: 37, baseType: !722, size: 32, offset: 32)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1495, file: !1496, line: 38, baseType: !1501, size: 64, offset: 64)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1496, line: 23, flags: DIFlagFwdDecl)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !813, file: !814, line: 992, baseType: !165, size: 64, offset: 10112)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !813, file: !814, line: 993, baseType: !165, size: 64, offset: 10176)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !813, file: !814, line: 996, baseType: !283, offset: 10240)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !813, file: !814, line: 999, baseType: !739, offset: 10240)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !813, file: !814, line: 1001, baseType: !1508, size: 64, offset: 10240)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !814, line: 636, size: 64, elements: !1509)
!1509 = !{!1510}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1508, file: !814, line: 637, baseType: !1511, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !813, file: !814, line: 1005, baseType: !942, size: 128, offset: 10304)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !813, file: !814, line: 1007, baseType: !812, size: 64, offset: 10432)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !813, file: !814, line: 1009, baseType: !1515, size: 64, offset: 10496)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !814, line: 1009, flags: DIFlagFwdDecl)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !813, file: !814, line: 1043, baseType: !161, size: 64, offset: 10560)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !813, file: !814, line: 1046, baseType: !1519, size: 64, offset: 10624)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !814, line: 41, flags: DIFlagFwdDecl)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !813, file: !814, line: 1050, baseType: !1522, size: 64, offset: 10688)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !814, line: 42, flags: DIFlagFwdDecl)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !813, file: !814, line: 1054, baseType: !1525, size: 64, offset: 10752)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !814, line: 55, flags: DIFlagFwdDecl)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !813, file: !814, line: 1056, baseType: !1528, size: 64, offset: 10816)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !814, line: 40, flags: DIFlagFwdDecl)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !813, file: !814, line: 1058, baseType: !1531, size: 64, offset: 10880)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1533, line: 99, size: 704, elements: !1534)
!1533 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1534 = !{!1535, !1536, !1537, !1538, !1539, !1540, !1547, !1568, !1569}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1532, file: !1533, line: 100, baseType: !515, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1532, file: !1533, line: 101, baseType: !722, size: 32, offset: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1532, file: !1533, line: 102, baseType: !722, size: 32, offset: 96)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1532, file: !1533, line: 105, baseType: !283, offset: 128)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1532, file: !1533, line: 107, baseType: !197, size: 16, offset: 128)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1532, file: !1533, line: 109, baseType: !1541, size: 128, offset: 192)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1542, line: 292, size: 128, elements: !1543)
!1542 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1543 = !{!1544, !1545, !1546}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1541, file: !1542, line: 293, baseType: !283)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1541, file: !1542, line: 295, baseType: !162, size: 32)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1541, file: !1542, line: 296, baseType: !161, size: 64, offset: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1532, file: !1533, line: 110, baseType: !1548, size: 64, offset: 320)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1533, line: 73, size: 448, elements: !1550)
!1550 = !{!1551, !1554, !1555, !1562, !1567}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1549, file: !1533, line: 74, baseType: !1552, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1533, line: 74, flags: DIFlagFwdDecl)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1549, file: !1533, line: 75, baseType: !1531, size: 64, offset: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, scope: !1549, file: !1533, line: 83, baseType: !1556, size: 128, offset: 128)
!1556 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1549, file: !1533, line: 83, size: 128, elements: !1557)
!1557 = !{!1558, !1559}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1556, file: !1533, line: 84, baseType: !182, size: 128)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1556, file: !1533, line: 85, baseType: !1560, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !172, line: 117, flags: DIFlagFwdDecl)
!1562 = !DIDerivedType(tag: DW_TAG_member, scope: !1549, file: !1533, line: 87, baseType: !1563, size: 128, offset: 256)
!1563 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1549, file: !1533, line: 87, size: 128, elements: !1564)
!1564 = !{!1565, !1566}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1563, file: !1533, line: 88, baseType: !422, size: 128)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1563, file: !1533, line: 89, baseType: !563, size: 128, align: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1549, file: !1533, line: 92, baseType: !6, size: 32, offset: 384)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1532, file: !1533, line: 111, baseType: !418, size: 64, offset: 384)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1532, file: !1533, line: 113, baseType: !1570, size: 256, offset: 448)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1571, line: 102, size: 256, elements: !1572)
!1571 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1572 = !{!1573, !1574, !1575}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1570, file: !1571, line: 103, baseType: !515, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1570, file: !1571, line: 104, baseType: !182, size: 128, offset: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1570, file: !1571, line: 105, baseType: !1576, size: 64, offset: 192)
!1576 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1571, line: 21, baseType: !1577)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{null, !1580}
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !813, file: !814, line: 1061, baseType: !1582, size: 64, offset: 10944)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !814, line: 43, flags: DIFlagFwdDecl)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !813, file: !814, line: 1064, baseType: !160, size: 64, offset: 11008)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !813, file: !814, line: 1065, baseType: !1586, size: 64, offset: 11072)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1367, line: 14, baseType: !1588)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1367, line: 12, size: 384, elements: !1589)
!1589 = !{!1590}
!1590 = !DIDerivedType(tag: DW_TAG_member, scope: !1588, file: !1367, line: 13, baseType: !1591, size: 384)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1588, file: !1367, line: 13, size: 384, elements: !1592)
!1592 = !{!1593, !1594, !1595, !1596}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1591, file: !1367, line: 13, baseType: !299, size: 32)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1591, file: !1367, line: 13, baseType: !299, size: 32, offset: 32)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1591, file: !1367, line: 13, baseType: !299, size: 32, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1591, file: !1367, line: 13, baseType: !1597, size: 256, offset: 128)
!1597 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1598, line: 32, size: 256, elements: !1599)
!1598 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1599 = !{!1600, !1605, !1618, !1624, !1633, !1653, !1658}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1597, file: !1598, line: 37, baseType: !1601, size: 64)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1597, file: !1598, line: 34, size: 64, elements: !1602)
!1602 = !{!1603, !1604}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1601, file: !1598, line: 35, baseType: !1065, size: 32)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1601, file: !1598, line: 36, baseType: !206, size: 32, offset: 32)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1597, file: !1598, line: 45, baseType: !1606, size: 192)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1597, file: !1598, line: 40, size: 192, elements: !1607)
!1607 = !{!1608, !1610, !1611, !1617}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1606, file: !1598, line: 41, baseType: !1609, size: 32)
!1609 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !207, line: 95, baseType: !299)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1606, file: !1598, line: 42, baseType: !299, size: 32, offset: 32)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1606, file: !1598, line: 43, baseType: !1612, size: 64, offset: 64)
!1612 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1598, line: 11, baseType: !1613)
!1613 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1598, line: 8, size: 64, elements: !1614)
!1614 = !{!1615, !1616}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1613, file: !1598, line: 9, baseType: !299, size: 32)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1613, file: !1598, line: 10, baseType: !161, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1606, file: !1598, line: 44, baseType: !299, size: 32, offset: 128)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1597, file: !1598, line: 52, baseType: !1619, size: 128)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1597, file: !1598, line: 48, size: 128, elements: !1620)
!1620 = !{!1621, !1622, !1623}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1619, file: !1598, line: 49, baseType: !1065, size: 32)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1619, file: !1598, line: 50, baseType: !206, size: 32, offset: 32)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1619, file: !1598, line: 51, baseType: !1612, size: 64, offset: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1597, file: !1598, line: 61, baseType: !1625, size: 256)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1597, file: !1598, line: 55, size: 256, elements: !1626)
!1626 = !{!1627, !1628, !1629, !1630, !1632}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1625, file: !1598, line: 56, baseType: !1065, size: 32)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1625, file: !1598, line: 57, baseType: !206, size: 32, offset: 32)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1625, file: !1598, line: 58, baseType: !299, size: 32, offset: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1625, file: !1598, line: 59, baseType: !1631, size: 64, offset: 128)
!1631 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !207, line: 94, baseType: !590)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1625, file: !1598, line: 60, baseType: !1631, size: 64, offset: 192)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1597, file: !1598, line: 95, baseType: !1634, size: 256)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1597, file: !1598, line: 64, size: 256, elements: !1635)
!1635 = !{!1636, !1637}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1634, file: !1598, line: 65, baseType: !161, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, scope: !1634, file: !1598, line: 77, baseType: !1638, size: 192, offset: 64)
!1638 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1634, file: !1598, line: 77, size: 192, elements: !1639)
!1639 = !{!1640, !1641, !1648}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1638, file: !1598, line: 82, baseType: !801, size: 16)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1638, file: !1598, line: 88, baseType: !1642, size: 192)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1638, file: !1598, line: 84, size: 192, elements: !1643)
!1643 = !{!1644, !1646, !1647}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1642, file: !1598, line: 85, baseType: !1645, size: 64)
!1645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 64, elements: !926)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1642, file: !1598, line: 86, baseType: !161, size: 64, offset: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1642, file: !1598, line: 87, baseType: !161, size: 64, offset: 128)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1638, file: !1598, line: 93, baseType: !1649, size: 96)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1638, file: !1598, line: 90, size: 96, elements: !1650)
!1650 = !{!1651, !1652}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1649, file: !1598, line: 91, baseType: !1645, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1649, file: !1598, line: 92, baseType: !260, size: 32, offset: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1597, file: !1598, line: 101, baseType: !1654, size: 128)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1597, file: !1598, line: 98, size: 128, elements: !1655)
!1655 = !{!1656, !1657}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1654, file: !1598, line: 99, baseType: !591, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1654, file: !1598, line: 100, baseType: !299, size: 32, offset: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1597, file: !1598, line: 108, baseType: !1659, size: 128)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1597, file: !1598, line: 104, size: 128, elements: !1660)
!1660 = !{!1661, !1662, !1663}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1659, file: !1598, line: 105, baseType: !161, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1659, file: !1598, line: 106, baseType: !299, size: 32, offset: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1659, file: !1598, line: 107, baseType: !6, size: 32, offset: 96)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !813, file: !814, line: 1067, baseType: !1439, offset: 11136)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !813, file: !814, line: 1099, baseType: !1666, size: 64, offset: 11136)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !814, line: 56, flags: DIFlagFwdDecl)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !813, file: !814, line: 1103, baseType: !182, size: 128, offset: 11200)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !813, file: !814, line: 1104, baseType: !1670, size: 64, offset: 11328)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !814, line: 46, flags: DIFlagFwdDecl)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !813, file: !814, line: 1105, baseType: !511, size: 192, offset: 11392)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !813, file: !814, line: 1106, baseType: !6, size: 32, offset: 11584)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !813, file: !814, line: 1109, baseType: !1675, size: 128, offset: 11648)
!1675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1676, size: 128, elements: !1168)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !814, line: 51, flags: DIFlagFwdDecl)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !813, file: !814, line: 1110, baseType: !511, size: 192, offset: 11776)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !813, file: !814, line: 1111, baseType: !182, size: 128, offset: 11968)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !813, file: !814, line: 1173, baseType: !1681, size: 64, offset: 12096)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1683, line: 62, size: 256, align: 256, elements: !1684)
!1683 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1684 = !{!1685, !1686, !1687, !1692}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1682, file: !1683, line: 75, baseType: !260, size: 32)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1682, file: !1683, line: 90, baseType: !260, size: 32, offset: 32)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1682, file: !1683, line: 124, baseType: !1688, size: 64, offset: 64)
!1688 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1682, file: !1683, line: 109, size: 64, elements: !1689)
!1689 = !{!1690, !1691}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1688, file: !1683, line: 110, baseType: !167, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1688, file: !1683, line: 112, baseType: !167, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1682, file: !1683, line: 144, baseType: !260, size: 32, offset: 128)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !813, file: !814, line: 1174, baseType: !259, size: 32, offset: 12160)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !813, file: !814, line: 1179, baseType: !160, size: 64, offset: 12224)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !813, file: !814, line: 1182, baseType: !1696, size: 128, offset: 12288)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !769, line: 76, size: 128, elements: !1697)
!1697 = !{!1698, !1703, !1704}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1696, file: !769, line: 85, baseType: !1699, size: 64)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1700, line: 7, size: 64, elements: !1701)
!1700 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1701 = !{!1702}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1699, file: !1700, line: 12, baseType: !967, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1696, file: !769, line: 88, baseType: !366, size: 8, offset: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1696, file: !769, line: 95, baseType: !366, size: 8, offset: 72)
!1705 = !DIDerivedType(tag: DW_TAG_member, scope: !813, file: !814, line: 1184, baseType: !1706, size: 128, offset: 12416)
!1706 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !813, file: !814, line: 1184, size: 128, elements: !1707)
!1707 = !{!1708, !1709}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1706, file: !814, line: 1185, baseType: !826, size: 32)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1706, file: !814, line: 1186, baseType: !563, size: 128, align: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !813, file: !814, line: 1190, baseType: !1711, size: 64, offset: 12544)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !814, line: 53, flags: DIFlagFwdDecl)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !813, file: !814, line: 1192, baseType: !1714, size: 128, offset: 12608)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !769, line: 64, size: 128, elements: !1715)
!1715 = !{!1716, !1717, !1718}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1714, file: !769, line: 65, baseType: !170, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1714, file: !769, line: 67, baseType: !260, size: 32, offset: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1714, file: !769, line: 68, baseType: !260, size: 32, offset: 96)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !813, file: !814, line: 1206, baseType: !299, size: 32, offset: 12736)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !813, file: !814, line: 1207, baseType: !299, size: 32, offset: 12768)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !813, file: !814, line: 1209, baseType: !160, size: 64, offset: 12800)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !813, file: !814, line: 1219, baseType: !165, size: 64, offset: 12864)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !813, file: !814, line: 1220, baseType: !165, size: 64, offset: 12928)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !813, file: !814, line: 1317, baseType: !299, size: 32, offset: 12992)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !813, file: !814, line: 1319, baseType: !812, size: 64, offset: 13056)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !813, file: !814, line: 1322, baseType: !1727, size: 64, offset: 13120)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1729, line: 56, size: 512, elements: !1730)
!1729 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1730 = !{!1731, !1732, !1733, !1734, !1735, !1737, !1738, !1740}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1728, file: !1729, line: 57, baseType: !1727, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1728, file: !1729, line: 58, baseType: !161, size: 64, offset: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1728, file: !1729, line: 59, baseType: !160, size: 64, offset: 128)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1728, file: !1729, line: 60, baseType: !160, size: 64, offset: 192)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1728, file: !1729, line: 61, baseType: !1736, size: 64, offset: 256)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1728, file: !1729, line: 62, baseType: !6, size: 32, offset: 320)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1728, file: !1729, line: 63, baseType: !1739, size: 64, offset: 384)
!1739 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !163, line: 153, baseType: !165)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1728, file: !1729, line: 64, baseType: !1741, size: 64, offset: 448)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !813, file: !814, line: 1326, baseType: !826, size: 32, offset: 13184)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !813, file: !814, line: 1342, baseType: !161, size: 64, offset: 13248)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !813, file: !814, line: 1343, baseType: !167, size: 64, offset: 13312)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !813, file: !814, line: 1344, baseType: !165, size: 64, offset: 13376)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !813, file: !814, line: 1345, baseType: !167, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !813, file: !814, line: 1346, baseType: !167, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !813, file: !814, line: 1347, baseType: !167, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !813, file: !814, line: 1348, baseType: !563, size: 128, align: 64, offset: 13504)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !813, file: !814, line: 1358, baseType: !1752, size: 34816, offset: 13824)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1753, line: 485, size: 34816, elements: !1754)
!1753 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1754 = !{!1755, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1784, !1785, !1786, !1787, !1788, !1789, !1792, !1793, !1794}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1752, file: !1753, line: 487, baseType: !1756, size: 192)
!1756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1757, size: 192, elements: !434)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1758, line: 16, size: 64, elements: !1759)
!1758 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1759 = !{!1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1757, file: !1758, line: 17, baseType: !612, size: 16)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1757, file: !1758, line: 18, baseType: !612, size: 16, offset: 16)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1757, file: !1758, line: 19, baseType: !612, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1757, file: !1758, line: 19, baseType: !612, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1757, file: !1758, line: 19, baseType: !612, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1757, file: !1758, line: 19, baseType: !612, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1757, file: !1758, line: 19, baseType: !612, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1757, file: !1758, line: 20, baseType: !612, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1757, file: !1758, line: 20, baseType: !612, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1757, file: !1758, line: 20, baseType: !612, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1757, file: !1758, line: 20, baseType: !612, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1757, file: !1758, line: 20, baseType: !612, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1757, file: !1758, line: 20, baseType: !612, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1752, file: !1753, line: 491, baseType: !160, size: 64, offset: 192)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1752, file: !1753, line: 495, baseType: !197, size: 16, offset: 256)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1752, file: !1753, line: 496, baseType: !197, size: 16, offset: 272)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1752, file: !1753, line: 497, baseType: !197, size: 16, offset: 288)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1752, file: !1753, line: 498, baseType: !197, size: 16, offset: 304)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1752, file: !1753, line: 502, baseType: !160, size: 64, offset: 320)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1752, file: !1753, line: 503, baseType: !160, size: 64, offset: 384)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1752, file: !1753, line: 514, baseType: !1781, size: 256, offset: 448)
!1781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1782, size: 256, elements: !773)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1753, line: 483, flags: DIFlagFwdDecl)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1752, file: !1753, line: 516, baseType: !160, size: 64, offset: 704)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1752, file: !1753, line: 518, baseType: !160, size: 64, offset: 768)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1752, file: !1753, line: 520, baseType: !160, size: 64, offset: 832)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1752, file: !1753, line: 521, baseType: !160, size: 64, offset: 896)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1752, file: !1753, line: 522, baseType: !160, size: 64, offset: 960)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1752, file: !1753, line: 528, baseType: !1790, size: 64, offset: 1024)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1753, line: 10, flags: DIFlagFwdDecl)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1752, file: !1753, line: 535, baseType: !160, size: 64, offset: 1088)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1752, file: !1753, line: 537, baseType: !6, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1752, file: !1753, line: 540, baseType: !1795, size: 33280, offset: 1536)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1796, line: 317, size: 33280, elements: !1797)
!1796 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1797 = !{!1798, !1799, !1800}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1795, file: !1796, line: 330, baseType: !6, size: 32)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1795, file: !1796, line: 337, baseType: !160, size: 64, offset: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1795, file: !1796, line: 348, baseType: !1801, size: 32768, offset: 512)
!1801 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1796, line: 304, size: 32768, elements: !1802)
!1802 = !{!1803, !1818, !1855, !1905, !1918}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1801, file: !1796, line: 305, baseType: !1804, size: 896)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1796, line: 12, size: 896, elements: !1805)
!1805 = !{!1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1817}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1804, file: !1796, line: 13, baseType: !259, size: 32)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1804, file: !1796, line: 14, baseType: !259, size: 32, offset: 32)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1804, file: !1796, line: 15, baseType: !259, size: 32, offset: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1804, file: !1796, line: 16, baseType: !259, size: 32, offset: 96)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1804, file: !1796, line: 17, baseType: !259, size: 32, offset: 128)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1804, file: !1796, line: 18, baseType: !259, size: 32, offset: 160)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1804, file: !1796, line: 19, baseType: !259, size: 32, offset: 192)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1804, file: !1796, line: 22, baseType: !1814, size: 640, offset: 224)
!1814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 640, elements: !1815)
!1815 = !{!1816}
!1816 = !DISubrange(count: 20)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1804, file: !1796, line: 25, baseType: !259, size: 32, offset: 864)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1801, file: !1796, line: 306, baseType: !1819, size: 4096, align: 128)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1796, line: 34, size: 4096, align: 128, elements: !1820)
!1820 = !{!1821, !1822, !1823, !1824, !1825, !1840, !1841, !1842, !1844, !1846, !1850}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1819, file: !1796, line: 35, baseType: !612, size: 16)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1819, file: !1796, line: 36, baseType: !612, size: 16, offset: 16)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1819, file: !1796, line: 37, baseType: !612, size: 16, offset: 32)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1819, file: !1796, line: 38, baseType: !612, size: 16, offset: 48)
!1825 = !DIDerivedType(tag: DW_TAG_member, scope: !1819, file: !1796, line: 39, baseType: !1826, size: 128, offset: 64)
!1826 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1819, file: !1796, line: 39, size: 128, elements: !1827)
!1827 = !{!1828, !1833}
!1828 = !DIDerivedType(tag: DW_TAG_member, scope: !1826, file: !1796, line: 40, baseType: !1829, size: 128)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1826, file: !1796, line: 40, size: 128, elements: !1830)
!1830 = !{!1831, !1832}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1829, file: !1796, line: 41, baseType: !165, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1829, file: !1796, line: 42, baseType: !165, size: 64, offset: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, scope: !1826, file: !1796, line: 44, baseType: !1834, size: 128)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1826, file: !1796, line: 44, size: 128, elements: !1835)
!1835 = !{!1836, !1837, !1838, !1839}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1834, file: !1796, line: 45, baseType: !259, size: 32)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1834, file: !1796, line: 46, baseType: !259, size: 32, offset: 32)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1834, file: !1796, line: 47, baseType: !259, size: 32, offset: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1834, file: !1796, line: 48, baseType: !259, size: 32, offset: 96)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1819, file: !1796, line: 51, baseType: !259, size: 32, offset: 192)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1819, file: !1796, line: 52, baseType: !259, size: 32, offset: 224)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1819, file: !1796, line: 55, baseType: !1843, size: 1024, offset: 256)
!1843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 1024, elements: !270)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1819, file: !1796, line: 58, baseType: !1845, size: 2048, offset: 1280)
!1845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 2048, elements: !1484)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1819, file: !1796, line: 60, baseType: !1847, size: 384, offset: 3328)
!1847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 384, elements: !1848)
!1848 = !{!1849}
!1849 = !DISubrange(count: 12)
!1850 = !DIDerivedType(tag: DW_TAG_member, scope: !1819, file: !1796, line: 62, baseType: !1851, size: 384, offset: 3712)
!1851 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1819, file: !1796, line: 62, size: 384, elements: !1852)
!1852 = !{!1853, !1854}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1851, file: !1796, line: 63, baseType: !1847, size: 384)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1851, file: !1796, line: 64, baseType: !1847, size: 384)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1801, file: !1796, line: 307, baseType: !1856, size: 1088)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1796, line: 79, size: 1088, elements: !1857)
!1857 = !{!1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1904}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1856, file: !1796, line: 80, baseType: !259, size: 32)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1856, file: !1796, line: 81, baseType: !259, size: 32, offset: 32)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1856, file: !1796, line: 82, baseType: !259, size: 32, offset: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1856, file: !1796, line: 83, baseType: !259, size: 32, offset: 96)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1856, file: !1796, line: 84, baseType: !259, size: 32, offset: 128)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1856, file: !1796, line: 85, baseType: !259, size: 32, offset: 160)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1856, file: !1796, line: 86, baseType: !259, size: 32, offset: 192)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1856, file: !1796, line: 88, baseType: !1814, size: 640, offset: 224)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1856, file: !1796, line: 89, baseType: !952, size: 8, offset: 864)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1856, file: !1796, line: 90, baseType: !952, size: 8, offset: 872)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1856, file: !1796, line: 91, baseType: !952, size: 8, offset: 880)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1856, file: !1796, line: 92, baseType: !952, size: 8, offset: 888)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1856, file: !1796, line: 93, baseType: !952, size: 8, offset: 896)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1856, file: !1796, line: 94, baseType: !952, size: 8, offset: 904)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1856, file: !1796, line: 95, baseType: !1873, size: 64, offset: 960)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1875, line: 11, size: 128, elements: !1876)
!1875 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1876 = !{!1877, !1878}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1874, file: !1875, line: 12, baseType: !591, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1874, file: !1875, line: 13, baseType: !1879, size: 64, offset: 64)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1881, line: 56, size: 1344, elements: !1882)
!1881 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1882 = !{!1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1880, file: !1881, line: 61, baseType: !160, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1880, file: !1881, line: 62, baseType: !160, size: 64, offset: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1880, file: !1881, line: 63, baseType: !160, size: 64, offset: 128)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1880, file: !1881, line: 64, baseType: !160, size: 64, offset: 192)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1880, file: !1881, line: 65, baseType: !160, size: 64, offset: 256)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1880, file: !1881, line: 66, baseType: !160, size: 64, offset: 320)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1880, file: !1881, line: 68, baseType: !160, size: 64, offset: 384)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1880, file: !1881, line: 69, baseType: !160, size: 64, offset: 448)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1880, file: !1881, line: 70, baseType: !160, size: 64, offset: 512)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1880, file: !1881, line: 71, baseType: !160, size: 64, offset: 576)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1880, file: !1881, line: 72, baseType: !160, size: 64, offset: 640)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1880, file: !1881, line: 73, baseType: !160, size: 64, offset: 704)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1880, file: !1881, line: 74, baseType: !160, size: 64, offset: 768)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1880, file: !1881, line: 75, baseType: !160, size: 64, offset: 832)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1880, file: !1881, line: 76, baseType: !160, size: 64, offset: 896)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1880, file: !1881, line: 81, baseType: !160, size: 64, offset: 960)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1880, file: !1881, line: 83, baseType: !160, size: 64, offset: 1024)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1880, file: !1881, line: 84, baseType: !160, size: 64, offset: 1088)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1880, file: !1881, line: 85, baseType: !160, size: 64, offset: 1152)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1880, file: !1881, line: 86, baseType: !160, size: 64, offset: 1216)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1880, file: !1881, line: 87, baseType: !160, size: 64, offset: 1280)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1856, file: !1796, line: 96, baseType: !259, size: 32, offset: 1024)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1801, file: !1796, line: 308, baseType: !1906, size: 4608, align: 512)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1796, line: 289, size: 4608, align: 512, elements: !1907)
!1907 = !{!1908, !1909, !1916}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1906, file: !1796, line: 290, baseType: !1819, size: 4096, align: 128)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1906, file: !1796, line: 291, baseType: !1910, size: 512, offset: 4096)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1796, line: 268, size: 512, elements: !1911)
!1911 = !{!1912, !1913, !1914}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1910, file: !1796, line: 269, baseType: !165, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1910, file: !1796, line: 270, baseType: !165, size: 64, offset: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1910, file: !1796, line: 271, baseType: !1915, size: 384, offset: 128)
!1915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 384, elements: !1227)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1906, file: !1796, line: 292, baseType: !1917, offset: 4608)
!1917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !952, elements: !1325)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1801, file: !1796, line: 309, baseType: !1919, size: 32768)
!1919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !952, size: 32768, elements: !1920)
!1920 = !{!1921}
!1921 = !DISubrange(count: 4096)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !809, file: !172, line: 378, baseType: !1923, size: 64, offset: 64)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !805, file: !172, line: 384, baseType: !1101, size: 192, offset: 192)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !696, file: !172, line: 500, baseType: !283, offset: 6656)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !696, file: !172, line: 501, baseType: !1927, size: 64, offset: 6656)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !172, line: 387, flags: DIFlagFwdDecl)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !696, file: !172, line: 516, baseType: !1315, size: 64, offset: 6720)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !696, file: !172, line: 519, baseType: !583, size: 64, offset: 6784)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !696, file: !172, line: 521, baseType: !1932, size: 64, offset: 6848)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !172, line: 521, flags: DIFlagFwdDecl)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !696, file: !172, line: 545, baseType: !722, size: 32, offset: 6912)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !696, file: !172, line: 548, baseType: !366, size: 8, offset: 6944)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !696, file: !172, line: 550, baseType: !1937, offset: 6952)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1938, line: 142, elements: !297)
!1938 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !696, file: !172, line: 554, baseType: !1570, size: 256, offset: 6976)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !696, file: !172, line: 557, baseType: !259, size: 32, offset: 7232)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !693, file: !172, line: 565, baseType: !1942, offset: 7296)
!1942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, elements: !1943)
!1943 = !{!1944}
!1944 = !DISubrange(count: -1)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !676, file: !172, line: 333, baseType: !1946, size: 64, offset: 576)
!1946 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !715, line: 284, baseType: !1947)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !715, line: 284, size: 64, elements: !1948)
!1948 = !{!1949}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1947, file: !715, line: 284, baseType: !1950, size: 64)
!1950 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !720, line: 19, baseType: !160)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !676, file: !172, line: 334, baseType: !160, size: 64, offset: 640)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !676, file: !172, line: 343, baseType: !1953, size: 256, offset: 704)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !676, file: !172, line: 340, size: 256, elements: !1954)
!1954 = !{!1955, !1956}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1953, file: !172, line: 341, baseType: !683, size: 192, align: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1953, file: !172, line: 342, baseType: !160, size: 64, offset: 192)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !676, file: !172, line: 351, baseType: !182, size: 128, offset: 960)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !676, file: !172, line: 353, baseType: !1959, size: 64, offset: 1088)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !172, line: 353, flags: DIFlagFwdDecl)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !676, file: !172, line: 356, baseType: !1962, size: 64, offset: 1152)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1964)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !19, line: 557, size: 832, elements: !1965)
!1965 = !{!1966, !1970, !1971, !1975, !1979, !2020, !2024, !2028, !2032, !2033, !2034, !2038, !2042}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1964, file: !19, line: 558, baseType: !1967, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{null, !675}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1964, file: !19, line: 559, baseType: !1967, size: 64, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1964, file: !19, line: 560, baseType: !1972, size: 64, offset: 128)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!299, !675, !160}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1964, file: !19, line: 561, baseType: !1976, size: 64, offset: 192)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{!299, !675}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1964, file: !19, line: 562, baseType: !1980, size: 64, offset: 256)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{!1983, !1984}
!1983 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !172, line: 682, baseType: !6)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !19, line: 508, size: 768, elements: !1986)
!1986 = !{!1987, !1988, !1989, !1990, !1991, !1992, !1999, !2006, !2012, !2013, !2014, !2016, !2018}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1985, file: !19, line: 509, baseType: !675, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1985, file: !19, line: 510, baseType: !6, size: 32, offset: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1985, file: !19, line: 511, baseType: !162, size: 32, offset: 96)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1985, file: !19, line: 512, baseType: !160, size: 64, offset: 128)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1985, file: !19, line: 513, baseType: !160, size: 64, offset: 192)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1985, file: !19, line: 514, baseType: !1993, size: 64, offset: 256)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !715, line: 385, baseType: !1995)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !715, line: 385, size: 64, elements: !1996)
!1996 = !{!1997}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1995, file: !715, line: 385, baseType: !1998, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !720, line: 15, baseType: !160)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1985, file: !19, line: 516, baseType: !2000, size: 64, offset: 320)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !715, line: 359, baseType: !2002)
!2002 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !715, line: 359, size: 64, elements: !2003)
!2003 = !{!2004}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2002, file: !715, line: 359, baseType: !2005, size: 64)
!2005 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !720, line: 16, baseType: !160)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1985, file: !19, line: 519, baseType: !2007, size: 64, offset: 384)
!2007 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !720, line: 21, baseType: !2008)
!2008 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !720, line: 21, size: 64, elements: !2009)
!2009 = !{!2010}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2008, file: !720, line: 21, baseType: !2011, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !720, line: 14, baseType: !160)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1985, file: !19, line: 521, baseType: !170, size: 64, offset: 448)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1985, file: !19, line: 522, baseType: !170, size: 64, offset: 512)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1985, file: !19, line: 528, baseType: !2015, size: 64, offset: 576)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1985, file: !19, line: 532, baseType: !2017, size: 64, offset: 640)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1985, file: !19, line: 536, baseType: !2019, size: 64, offset: 704)
!2019 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !715, line: 509, baseType: !170)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1964, file: !19, line: 563, baseType: !2021, size: 64, offset: 320)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!1983, !1984, !18}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1964, file: !19, line: 565, baseType: !2025, size: 64, offset: 384)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{null, !1984, !160, !160}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1964, file: !19, line: 567, baseType: !2029, size: 64, offset: 448)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!160, !675}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1964, file: !19, line: 571, baseType: !1980, size: 64, offset: 512)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1964, file: !19, line: 574, baseType: !1980, size: 64, offset: 576)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1964, file: !19, line: 579, baseType: !2035, size: 64, offset: 640)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DISubroutineType(types: !2037)
!2037 = !{!299, !675, !160, !161, !299, !299}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1964, file: !19, line: 585, baseType: !2039, size: 64, offset: 704)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!321, !675}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1964, file: !19, line: 615, baseType: !2043, size: 64, offset: 768)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{!170, !675, !160}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !676, file: !172, line: 359, baseType: !160, size: 64, offset: 1216)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !676, file: !172, line: 361, baseType: !583, size: 64, offset: 1280)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !676, file: !172, line: 362, baseType: !161, size: 64, offset: 1344)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !676, file: !172, line: 365, baseType: !515, size: 64, offset: 1408)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !676, file: !172, line: 373, baseType: !2051, offset: 1472)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !172, line: 296, elements: !297)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !576, file: !49, line: 1836, baseType: !160, size: 64, offset: 832)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !576, file: !49, line: 1837, baseType: !2054, size: 64, offset: 896)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{!299, !192, !583}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !576, file: !49, line: 1838, baseType: !2058, size: 64, offset: 960)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{!299, !583, !2061}
!2061 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !49, line: 1007, baseType: !161)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !576, file: !49, line: 1839, baseType: !2054, size: 64, offset: 1024)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !576, file: !49, line: 1840, baseType: !2064, size: 64, offset: 1088)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!299, !583, !385, !385, !299}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !576, file: !49, line: 1841, baseType: !2068, size: 64, offset: 1152)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{!299, !299, !583, !299}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !576, file: !49, line: 1842, baseType: !2072, size: 64, offset: 1216)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DISubroutineType(types: !2074)
!2074 = !{!299, !583, !299, !2075}
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !49, line: 1062, size: 1664, elements: !2077)
!2077 = !{!2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2109, !2110, !2111, !2124, !2156}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2076, file: !49, line: 1063, baseType: !2075, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2076, file: !49, line: 1064, baseType: !182, size: 128, offset: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2076, file: !49, line: 1065, baseType: !422, size: 128, offset: 192)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2076, file: !49, line: 1066, baseType: !182, size: 128, offset: 320)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2076, file: !49, line: 1069, baseType: !182, size: 128, offset: 448)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2076, file: !49, line: 1072, baseType: !2061, size: 64, offset: 576)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2076, file: !49, line: 1073, baseType: !6, size: 32, offset: 640)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2076, file: !49, line: 1074, baseType: !266, size: 8, offset: 672)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2076, file: !49, line: 1075, baseType: !6, size: 32, offset: 704)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2076, file: !49, line: 1076, baseType: !299, size: 32, offset: 736)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2076, file: !49, line: 1077, baseType: !659, size: 128, offset: 768)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2076, file: !49, line: 1078, baseType: !583, size: 64, offset: 896)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2076, file: !49, line: 1079, baseType: !385, size: 64, offset: 960)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2076, file: !49, line: 1080, baseType: !385, size: 64, offset: 1024)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2076, file: !49, line: 1082, baseType: !2093, size: 64, offset: 1088)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !49, line: 1314, size: 320, elements: !2095)
!2095 = !{!2096, !2104, !2105, !2106, !2107, !2108}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2094, file: !49, line: 1315, baseType: !2097)
!2097 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2098, line: 20, baseType: !2099)
!2098 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2098, line: 11, elements: !2100)
!2100 = !{!2101}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2099, file: !2098, line: 12, baseType: !2102)
!2102 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !295, line: 33, baseType: !2103)
!2103 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !295, line: 31, elements: !297)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2094, file: !49, line: 1316, baseType: !299, size: 32)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2094, file: !49, line: 1317, baseType: !299, size: 32, offset: 32)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2094, file: !49, line: 1318, baseType: !2093, size: 64, offset: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2094, file: !49, line: 1319, baseType: !583, size: 64, offset: 128)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2094, file: !49, line: 1320, baseType: !563, size: 128, align: 64, offset: 192)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2076, file: !49, line: 1084, baseType: !160, size: 64, offset: 1152)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2076, file: !49, line: 1085, baseType: !160, size: 64, offset: 1216)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2076, file: !49, line: 1087, baseType: !2112, size: 64, offset: 1280)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2114)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !49, line: 1011, size: 128, elements: !2115)
!2115 = !{!2116, !2120}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2114, file: !49, line: 1012, baseType: !2117, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{null, !2075, !2075}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2114, file: !49, line: 1013, baseType: !2121, size: 64, offset: 64)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{null, !2075}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2076, file: !49, line: 1088, baseType: !2125, size: 64, offset: 1344)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2127)
!2127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !49, line: 1016, size: 512, elements: !2128)
!2128 = !{!2129, !2133, !2137, !2138, !2142, !2146, !2150, !2155}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2127, file: !49, line: 1017, baseType: !2130, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!2061, !2061}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2127, file: !49, line: 1018, baseType: !2134, size: 64, offset: 64)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{null, !2061}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2127, file: !49, line: 1019, baseType: !2121, size: 64, offset: 128)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2127, file: !49, line: 1020, baseType: !2139, size: 64, offset: 192)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!299, !2075, !299}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2127, file: !49, line: 1021, baseType: !2143, size: 64, offset: 256)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!366, !2075}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2127, file: !49, line: 1022, baseType: !2147, size: 64, offset: 320)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!299, !2075, !299, !185}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2127, file: !49, line: 1023, baseType: !2151, size: 64, offset: 384)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{null, !2075, !2154}
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2127, file: !49, line: 1024, baseType: !2143, size: 64, offset: 448)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2076, file: !49, line: 1097, baseType: !2157, size: 256, offset: 1408)
!2157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2076, file: !49, line: 1089, size: 256, elements: !2158)
!2158 = !{!2159, !2168, !2174}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2157, file: !49, line: 1090, baseType: !2160, size: 256)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2161, line: 10, size: 256, elements: !2162)
!2161 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2162 = !{!2163, !2164, !2167}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2160, file: !2161, line: 11, baseType: !259, size: 32)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2160, file: !2161, line: 12, baseType: !2165, size: 64, offset: 64)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2161, line: 5, flags: DIFlagFwdDecl)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2160, file: !2161, line: 13, baseType: !182, size: 128, offset: 128)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2157, file: !49, line: 1091, baseType: !2169, size: 64)
!2169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2161, line: 17, size: 64, elements: !2170)
!2170 = !{!2171}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2169, file: !2161, line: 18, baseType: !2172, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2161, line: 16, flags: DIFlagFwdDecl)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2157, file: !49, line: 1096, baseType: !2175, size: 192)
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2157, file: !49, line: 1092, size: 192, elements: !2176)
!2176 = !{!2177, !2178, !2179}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2175, file: !49, line: 1093, baseType: !182, size: 128)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2175, file: !49, line: 1094, baseType: !299, size: 32, offset: 128)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2175, file: !49, line: 1095, baseType: !6, size: 32, offset: 160)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !576, file: !49, line: 1843, baseType: !2181, size: 64, offset: 1280)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!588, !583, !170, !299, !502, !534, !299}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !576, file: !49, line: 1844, baseType: !705, size: 64, offset: 1344)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !576, file: !49, line: 1845, baseType: !2186, size: 64, offset: 1408)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{!299, !299}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !576, file: !49, line: 1846, baseType: !2072, size: 64, offset: 1472)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !576, file: !49, line: 1847, baseType: !2191, size: 64, offset: 1536)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{!588, !1711, !583, !534, !502, !6}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !576, file: !49, line: 1848, baseType: !2195, size: 64, offset: 1600)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!588, !583, !534, !1711, !502, !6}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !576, file: !49, line: 1849, baseType: !2199, size: 64, offset: 1664)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{!299, !583, !591, !2202, !2154}
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !576, file: !49, line: 1850, baseType: !2204, size: 64, offset: 1728)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!591, !583, !299, !385, !385}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !576, file: !49, line: 1852, baseType: !2208, size: 64, offset: 1792)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{null, !496, !583}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !576, file: !49, line: 1856, baseType: !2212, size: 64, offset: 1856)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{!588, !583, !385, !583, !385, !502, !6}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !576, file: !49, line: 1858, baseType: !2216, size: 64, offset: 1920)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!385, !583, !385, !583, !385, !385, !6}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !576, file: !49, line: 1861, baseType: !2064, size: 64, offset: 1984)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !551, file: !49, line: 929, baseType: !283, offset: 384)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !551, file: !49, line: 930, baseType: !48, size: 32, offset: 384)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !551, file: !49, line: 931, baseType: !515, size: 64, offset: 448)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !551, file: !49, line: 932, baseType: !6, size: 32, offset: 512)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !551, file: !49, line: 933, baseType: !2225, size: 32, offset: 544)
!2225 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !163, line: 150, baseType: !6)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !551, file: !49, line: 934, baseType: !511, size: 192, offset: 576)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !551, file: !49, line: 935, baseType: !385, size: 64, offset: 768)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !551, file: !49, line: 936, baseType: !2229, size: 192, offset: 832)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !49, line: 885, size: 192, elements: !2230)
!2230 = !{!2231, !2232, !2233, !2234, !2235, !2236}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2229, file: !49, line: 886, baseType: !2097)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2229, file: !49, line: 887, baseType: !1076, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2229, file: !49, line: 888, baseType: !57, size: 32, offset: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2229, file: !49, line: 889, baseType: !200, size: 32, offset: 96)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2229, file: !49, line: 889, baseType: !200, size: 32, offset: 128)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2229, file: !49, line: 890, baseType: !299, size: 32, offset: 160)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !551, file: !49, line: 937, baseType: !1146, size: 64, offset: 1024)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !551, file: !49, line: 938, baseType: !2239, size: 256, offset: 1088)
!2239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !49, line: 896, size: 256, elements: !2240)
!2240 = !{!2241, !2242, !2243, !2244, !2245, !2246}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2239, file: !49, line: 897, baseType: !160, size: 64)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2239, file: !49, line: 898, baseType: !6, size: 32, offset: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2239, file: !49, line: 899, baseType: !6, size: 32, offset: 96)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2239, file: !49, line: 902, baseType: !6, size: 32, offset: 128)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2239, file: !49, line: 903, baseType: !6, size: 32, offset: 160)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2239, file: !49, line: 904, baseType: !385, size: 64, offset: 192)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !551, file: !49, line: 940, baseType: !165, size: 64, offset: 1344)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !551, file: !49, line: 945, baseType: !161, size: 64, offset: 1408)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !551, file: !49, line: 949, baseType: !182, size: 128, offset: 1472)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !551, file: !49, line: 950, baseType: !182, size: 128, offset: 1600)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !551, file: !49, line: 952, baseType: !188, size: 64, offset: 1728)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !551, file: !49, line: 953, baseType: !2253, size: 32, offset: 1792)
!2253 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2254, line: 8, baseType: !259)
!2254 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !551, file: !49, line: 954, baseType: !2253, size: 32, offset: 1824)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !497, file: !498, line: 28, baseType: !161, size: 64, offset: 832)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !442, file: !49, line: 1955, baseType: !493, size: 64, offset: 1088)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !442, file: !49, line: 1956, baseType: !493, size: 64, offset: 1152)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !442, file: !49, line: 1957, baseType: !493, size: 64, offset: 1216)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !442, file: !49, line: 1963, baseType: !2261, size: 64, offset: 1280)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{!299, !375, !170, !162}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !442, file: !49, line: 1964, baseType: !2265, size: 64, offset: 1344)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!591, !375, !2268}
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2270, line: 12, size: 256, elements: !2271)
!2270 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2271 = !{!2272, !2273, !2274, !2275, !2276}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2269, file: !2270, line: 13, baseType: !162, size: 32)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2269, file: !2270, line: 16, baseType: !299, size: 32, offset: 32)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2269, file: !2270, line: 23, baseType: !160, size: 64, offset: 64)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2269, file: !2270, line: 30, baseType: !160, size: 64, offset: 128)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2269, file: !2270, line: 33, baseType: !2277, size: 64, offset: 192)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !172, line: 27, flags: DIFlagFwdDecl)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !442, file: !49, line: 1966, baseType: !2265, size: 64, offset: 1408)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !376, file: !49, line: 1424, baseType: !2281, size: 64, offset: 448)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2283)
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !43, line: 322, size: 704, elements: !2284)
!2284 = !{!2285, !2331, !2335, !2339, !2340, !2341, !2342, !2343, !2348, !2353, !2357}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2283, file: !43, line: 323, baseType: !2286, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = !DISubroutineType(types: !2288)
!2288 = !{!299, !2289}
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !43, line: 294, size: 1600, elements: !2291)
!2291 = !{!2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2316, !2317, !2318}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2290, file: !43, line: 295, baseType: !422, size: 128)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2290, file: !43, line: 296, baseType: !182, size: 128, offset: 128)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2290, file: !43, line: 297, baseType: !182, size: 128, offset: 256)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2290, file: !43, line: 298, baseType: !182, size: 128, offset: 384)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2290, file: !43, line: 299, baseType: !511, size: 192, offset: 512)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2290, file: !43, line: 300, baseType: !283, offset: 704)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2290, file: !43, line: 301, baseType: !722, size: 32, offset: 704)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2290, file: !43, line: 302, baseType: !375, size: 64, offset: 768)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2290, file: !43, line: 303, baseType: !2301, size: 64, offset: 832)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !43, line: 68, size: 64, elements: !2302)
!2302 = !{!2303, !2315}
!2303 = !DIDerivedType(tag: DW_TAG_member, scope: !2301, file: !43, line: 69, baseType: !2304, size: 32)
!2304 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2301, file: !43, line: 69, size: 32, elements: !2305)
!2305 = !{!2306, !2307, !2308}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2304, file: !43, line: 70, baseType: !200, size: 32)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2304, file: !43, line: 71, baseType: !209, size: 32)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2304, file: !43, line: 72, baseType: !2309, size: 32)
!2309 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2310, line: 24, baseType: !2311)
!2310 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2310, line: 22, size: 32, elements: !2312)
!2312 = !{!2313}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2311, file: !2310, line: 23, baseType: !2314, size: 32)
!2314 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2310, line: 20, baseType: !206)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2301, file: !43, line: 74, baseType: !42, size: 32, offset: 32)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2290, file: !43, line: 304, baseType: !385, size: 64, offset: 896)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2290, file: !43, line: 305, baseType: !160, size: 64, offset: 960)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2290, file: !43, line: 306, baseType: !2319, size: 576, offset: 1024)
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !43, line: 205, size: 576, elements: !2320)
!2320 = !{!2321, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2319, file: !43, line: 206, baseType: !2322, size: 64)
!2322 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !43, line: 66, baseType: !387)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2319, file: !43, line: 207, baseType: !2322, size: 64, offset: 64)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2319, file: !43, line: 208, baseType: !2322, size: 64, offset: 128)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2319, file: !43, line: 209, baseType: !2322, size: 64, offset: 192)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2319, file: !43, line: 210, baseType: !2322, size: 64, offset: 256)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2319, file: !43, line: 211, baseType: !2322, size: 64, offset: 320)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2319, file: !43, line: 212, baseType: !2322, size: 64, offset: 384)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2319, file: !43, line: 213, baseType: !1198, size: 64, offset: 448)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2319, file: !43, line: 214, baseType: !1198, size: 64, offset: 512)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2283, file: !43, line: 324, baseType: !2332, size: 64, offset: 64)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{!2289, !375, !299}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2283, file: !43, line: 325, baseType: !2336, size: 64, offset: 128)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{null, !2289}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2283, file: !43, line: 326, baseType: !2286, size: 64, offset: 192)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2283, file: !43, line: 327, baseType: !2286, size: 64, offset: 256)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2283, file: !43, line: 328, baseType: !2286, size: 64, offset: 320)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2283, file: !43, line: 329, baseType: !470, size: 64, offset: 384)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2283, file: !43, line: 332, baseType: !2344, size: 64, offset: 448)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{!2347, !192}
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2283, file: !43, line: 333, baseType: !2349, size: 64, offset: 512)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!299, !192, !2352}
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2283, file: !43, line: 335, baseType: !2354, size: 64, offset: 576)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!299, !192, !2347}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2283, file: !43, line: 337, baseType: !2358, size: 64, offset: 640)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!299, !375, !2361}
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !376, file: !49, line: 1425, baseType: !2363, size: 64, offset: 512)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2365)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !43, line: 428, size: 704, elements: !2366)
!2366 = !{!2367, !2371, !2372, !2376, !2377, !2378, !2393, !2416, !2420, !2421, !2444}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2365, file: !43, line: 429, baseType: !2368, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!299, !375, !299, !299, !364}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2365, file: !43, line: 430, baseType: !470, size: 64, offset: 64)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2365, file: !43, line: 431, baseType: !2373, size: 64, offset: 128)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!299, !375, !6}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2365, file: !43, line: 432, baseType: !2373, size: 64, offset: 192)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2365, file: !43, line: 433, baseType: !470, size: 64, offset: 256)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2365, file: !43, line: 434, baseType: !2379, size: 64, offset: 320)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{!299, !375, !299, !2382}
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !43, line: 415, size: 256, elements: !2384)
!2384 = !{!2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2383, file: !43, line: 416, baseType: !299, size: 32)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2383, file: !43, line: 417, baseType: !6, size: 32, offset: 32)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2383, file: !43, line: 418, baseType: !6, size: 32, offset: 64)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2383, file: !43, line: 420, baseType: !6, size: 32, offset: 96)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2383, file: !43, line: 421, baseType: !6, size: 32, offset: 128)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2383, file: !43, line: 422, baseType: !6, size: 32, offset: 160)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2383, file: !43, line: 423, baseType: !6, size: 32, offset: 192)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2383, file: !43, line: 424, baseType: !6, size: 32, offset: 224)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2365, file: !43, line: 435, baseType: !2394, size: 64, offset: 384)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!299, !375, !2301, !2397}
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !43, line: 343, size: 960, elements: !2399)
!2399 = !{!2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2398, file: !43, line: 344, baseType: !299, size: 32)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2398, file: !43, line: 345, baseType: !165, size: 64, offset: 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2398, file: !43, line: 346, baseType: !165, size: 64, offset: 128)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2398, file: !43, line: 347, baseType: !165, size: 64, offset: 192)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2398, file: !43, line: 348, baseType: !165, size: 64, offset: 256)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2398, file: !43, line: 349, baseType: !165, size: 64, offset: 320)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2398, file: !43, line: 350, baseType: !165, size: 64, offset: 384)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2398, file: !43, line: 351, baseType: !521, size: 64, offset: 448)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2398, file: !43, line: 353, baseType: !521, size: 64, offset: 512)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2398, file: !43, line: 354, baseType: !299, size: 32, offset: 576)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2398, file: !43, line: 355, baseType: !299, size: 32, offset: 608)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2398, file: !43, line: 356, baseType: !165, size: 64, offset: 640)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2398, file: !43, line: 357, baseType: !165, size: 64, offset: 704)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2398, file: !43, line: 358, baseType: !165, size: 64, offset: 768)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2398, file: !43, line: 359, baseType: !521, size: 64, offset: 832)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2398, file: !43, line: 360, baseType: !299, size: 32, offset: 896)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2365, file: !43, line: 436, baseType: !2417, size: 64, offset: 448)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!299, !375, !2361, !2397}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2365, file: !43, line: 438, baseType: !2394, size: 64, offset: 512)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2365, file: !43, line: 439, baseType: !2422, size: 64, offset: 576)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!299, !375, !2425}
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !43, line: 409, size: 1408, elements: !2427)
!2427 = !{!2428, !2429}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2426, file: !43, line: 410, baseType: !6, size: 32)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2426, file: !43, line: 411, baseType: !2430, size: 1344, offset: 64)
!2430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2431, size: 1344, elements: !434)
!2431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !43, line: 395, size: 448, elements: !2432)
!2432 = !{!2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2443}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2431, file: !43, line: 396, baseType: !6, size: 32)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2431, file: !43, line: 397, baseType: !6, size: 32, offset: 32)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2431, file: !43, line: 399, baseType: !6, size: 32, offset: 64)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2431, file: !43, line: 400, baseType: !6, size: 32, offset: 96)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2431, file: !43, line: 401, baseType: !6, size: 32, offset: 128)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2431, file: !43, line: 402, baseType: !6, size: 32, offset: 160)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2431, file: !43, line: 403, baseType: !6, size: 32, offset: 192)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2431, file: !43, line: 404, baseType: !169, size: 64, offset: 256)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2431, file: !43, line: 405, baseType: !2442, size: 64, offset: 320)
!2442 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !163, line: 126, baseType: !165)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2431, file: !43, line: 406, baseType: !2442, size: 64, offset: 384)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2365, file: !43, line: 440, baseType: !2373, size: 64, offset: 640)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !376, file: !49, line: 1426, baseType: !2446, size: 64, offset: 576)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2448)
!2448 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !49, line: 49, flags: DIFlagFwdDecl)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !376, file: !49, line: 1427, baseType: !160, size: 64, offset: 640)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !376, file: !49, line: 1428, baseType: !160, size: 64, offset: 704)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !376, file: !49, line: 1429, baseType: !160, size: 64, offset: 768)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !376, file: !49, line: 1430, baseType: !225, size: 64, offset: 832)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !376, file: !49, line: 1431, baseType: !733, size: 256, offset: 896)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !376, file: !49, line: 1432, baseType: !299, size: 32, offset: 1152)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !376, file: !49, line: 1433, baseType: !722, size: 32, offset: 1184)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !376, file: !49, line: 1437, baseType: !2457, size: 64, offset: 1216)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2460)
!2460 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !49, line: 1437, flags: DIFlagFwdDecl)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !376, file: !49, line: 1449, baseType: !2462, size: 64, offset: 1280)
!2462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !242, line: 34, size: 64, elements: !2463)
!2463 = !{!2464}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2462, file: !242, line: 35, baseType: !245, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !376, file: !49, line: 1450, baseType: !182, size: 128, offset: 1344)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !376, file: !49, line: 1451, baseType: !2467, size: 64, offset: 1472)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !49, line: 699, flags: DIFlagFwdDecl)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !376, file: !49, line: 1452, baseType: !1528, size: 64, offset: 1536)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !376, file: !49, line: 1453, baseType: !2471, size: 64, offset: 1600)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !49, line: 1453, flags: DIFlagFwdDecl)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !376, file: !49, line: 1454, baseType: !422, size: 128, offset: 1664)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !376, file: !49, line: 1455, baseType: !6, size: 32, offset: 1792)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !376, file: !49, line: 1456, baseType: !2476, size: 2432, offset: 1856)
!2476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !43, line: 518, size: 2432, elements: !2477)
!2477 = !{!2478, !2479, !2480, !2482, !2514}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2476, file: !43, line: 519, baseType: !6, size: 32)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2476, file: !43, line: 520, baseType: !733, size: 256, offset: 64)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2476, file: !43, line: 521, baseType: !2481, size: 192, offset: 320)
!2481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 192, elements: !434)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2476, file: !43, line: 522, baseType: !2483, size: 1728, offset: 512)
!2483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2484, size: 1728, elements: !434)
!2484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !43, line: 222, size: 576, elements: !2485)
!2485 = !{!2486, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2484, file: !43, line: 223, baseType: !2487, size: 64)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !43, line: 443, size: 256, elements: !2489)
!2489 = !{!2490, !2491, !2504, !2505}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2488, file: !43, line: 444, baseType: !299, size: 32)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2488, file: !43, line: 445, baseType: !2492, size: 64, offset: 64)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2494)
!2494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !43, line: 310, size: 512, elements: !2495)
!2495 = !{!2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2494, file: !43, line: 311, baseType: !470, size: 64)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2494, file: !43, line: 312, baseType: !470, size: 64, offset: 64)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2494, file: !43, line: 313, baseType: !470, size: 64, offset: 128)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2494, file: !43, line: 314, baseType: !470, size: 64, offset: 192)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2494, file: !43, line: 315, baseType: !2286, size: 64, offset: 256)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2494, file: !43, line: 316, baseType: !2286, size: 64, offset: 320)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2494, file: !43, line: 317, baseType: !2286, size: 64, offset: 384)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2494, file: !43, line: 318, baseType: !2358, size: 64, offset: 448)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2488, file: !43, line: 446, baseType: !413, size: 64, offset: 128)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2488, file: !43, line: 447, baseType: !2487, size: 64, offset: 192)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2484, file: !43, line: 224, baseType: !299, size: 32, offset: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2484, file: !43, line: 226, baseType: !182, size: 128, offset: 128)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2484, file: !43, line: 227, baseType: !160, size: 64, offset: 256)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2484, file: !43, line: 228, baseType: !6, size: 32, offset: 320)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2484, file: !43, line: 229, baseType: !6, size: 32, offset: 352)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2484, file: !43, line: 230, baseType: !2322, size: 64, offset: 384)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2484, file: !43, line: 231, baseType: !2322, size: 64, offset: 448)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2484, file: !43, line: 232, baseType: !161, size: 64, offset: 512)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2476, file: !43, line: 523, baseType: !2515, size: 192, offset: 2240)
!2515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2492, size: 192, elements: !434)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !376, file: !49, line: 1458, baseType: !2517, size: 2112, offset: 4288)
!2517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !49, line: 1410, size: 2112, elements: !2518)
!2518 = !{!2519, !2520, !2521}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2517, file: !49, line: 1411, baseType: !299, size: 32)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2517, file: !49, line: 1412, baseType: !659, size: 128, offset: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2517, file: !49, line: 1413, baseType: !2522, size: 1920, offset: 192)
!2522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2523, size: 1920, elements: !434)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2524, line: 12, size: 640, elements: !2525)
!2524 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2525 = !{!2526, !2534, !2536, !2541, !2542}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2523, file: !2524, line: 13, baseType: !2527, size: 320)
!2527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2528, line: 17, size: 320, elements: !2529)
!2528 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2529 = !{!2530, !2531, !2532, !2533}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2527, file: !2528, line: 18, baseType: !299, size: 32)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2527, file: !2528, line: 19, baseType: !299, size: 32, offset: 32)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2527, file: !2528, line: 20, baseType: !659, size: 128, offset: 64)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2527, file: !2528, line: 22, baseType: !563, size: 128, align: 64, offset: 192)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2523, file: !2524, line: 14, baseType: !2535, size: 64, offset: 320)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2523, file: !2524, line: 15, baseType: !2537, size: 64, offset: 384)
!2537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2538, line: 16, size: 64, elements: !2539)
!2538 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2539 = !{!2540}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2537, file: !2538, line: 17, baseType: !812, size: 64)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2523, file: !2524, line: 16, baseType: !659, size: 128, offset: 448)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2523, file: !2524, line: 17, baseType: !722, size: 32, offset: 576)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !376, file: !49, line: 1465, baseType: !161, size: 64, offset: 6400)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !376, file: !49, line: 1468, baseType: !259, size: 32, offset: 6464)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !376, file: !49, line: 1470, baseType: !1198, size: 64, offset: 6528)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !376, file: !49, line: 1471, baseType: !1198, size: 64, offset: 6592)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !376, file: !49, line: 1473, baseType: !260, size: 32, offset: 6656)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !376, file: !49, line: 1474, baseType: !2549, size: 64, offset: 6720)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !49, line: 603, flags: DIFlagFwdDecl)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !376, file: !49, line: 1477, baseType: !2552, size: 256, offset: 6784)
!2552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 256, elements: !270)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !376, file: !49, line: 1478, baseType: !2554, size: 128, offset: 7040)
!2554 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2555, line: 18, baseType: !2556)
!2555 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2556 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2555, line: 16, size: 128, elements: !2557)
!2557 = !{!2558}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2556, file: !2555, line: 17, baseType: !2559, size: 128)
!2559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !953, size: 128, elements: !1337)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !376, file: !49, line: 1480, baseType: !6, size: 32, offset: 7168)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !376, file: !49, line: 1481, baseType: !2225, size: 32, offset: 7200)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !376, file: !49, line: 1487, baseType: !511, size: 192, offset: 7232)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !376, file: !49, line: 1493, baseType: !321, size: 64, offset: 7424)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !376, file: !49, line: 1495, baseType: !301, size: 64, offset: 7488)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !376, file: !49, line: 1500, baseType: !299, size: 32, offset: 7552)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !376, file: !49, line: 1502, baseType: !2567, size: 448, offset: 7616)
!2567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2270, line: 60, size: 448, elements: !2568)
!2568 = !{!2569, !2574, !2575, !2576, !2577, !2578, !2579}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2567, file: !2270, line: 61, baseType: !2570, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{!160, !2573, !2268}
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2567, file: !2270, line: 63, baseType: !2570, size: 64, offset: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2567, file: !2270, line: 66, baseType: !591, size: 64, offset: 128)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2567, file: !2270, line: 67, baseType: !299, size: 32, offset: 192)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2567, file: !2270, line: 68, baseType: !6, size: 32, offset: 224)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2567, file: !2270, line: 71, baseType: !182, size: 128, offset: 256)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2567, file: !2270, line: 77, baseType: !2580, size: 64, offset: 384)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !376, file: !49, line: 1505, baseType: !515, size: 64, offset: 8064)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !376, file: !49, line: 1508, baseType: !515, size: 64, offset: 8128)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !376, file: !49, line: 1511, baseType: !299, size: 32, offset: 8192)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !376, file: !49, line: 1514, baseType: !2253, size: 32, offset: 8224)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !376, file: !49, line: 1517, baseType: !2586, size: 64, offset: 8256)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1571, line: 18, flags: DIFlagFwdDecl)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !376, file: !49, line: 1518, baseType: !418, size: 64, offset: 8320)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !376, file: !49, line: 1525, baseType: !1315, size: 64, offset: 8384)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !376, file: !49, line: 1532, baseType: !2591, size: 64, offset: 8448)
!2591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2592, line: 52, size: 64, elements: !2593)
!2592 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2593 = !{!2594}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2591, file: !2592, line: 53, baseType: !2595, size: 64)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2592, line: 40, size: 256, elements: !2597)
!2597 = !{!2598, !2599, !2604}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2596, file: !2592, line: 42, baseType: !283)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2596, file: !2592, line: 44, baseType: !2600, size: 192)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2592, line: 28, size: 192, elements: !2601)
!2601 = !{!2602, !2603}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2600, file: !2592, line: 29, baseType: !182, size: 128)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2600, file: !2592, line: 31, baseType: !591, size: 64, offset: 128)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2596, file: !2592, line: 49, baseType: !591, size: 64, offset: 192)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !376, file: !49, line: 1533, baseType: !2591, size: 64, offset: 8512)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !376, file: !49, line: 1534, baseType: !563, size: 128, align: 64, offset: 8576)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !376, file: !49, line: 1535, baseType: !1570, size: 256, offset: 8704)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !376, file: !49, line: 1537, baseType: !511, size: 192, offset: 8960)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !376, file: !49, line: 1542, baseType: !299, size: 32, offset: 9152)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !376, file: !49, line: 1545, baseType: !283, offset: 9184)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !376, file: !49, line: 1546, baseType: !182, size: 128, offset: 9216)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !376, file: !49, line: 1548, baseType: !283, offset: 9344)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !376, file: !49, line: 1549, baseType: !182, size: 128, offset: 9344)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !226, file: !227, line: 104, baseType: !160, size: 64, offset: 896)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !226, file: !227, line: 105, baseType: !161, size: 64, offset: 960)
!2616 = !DIDerivedType(tag: DW_TAG_member, scope: !226, file: !227, line: 107, baseType: !2617, size: 128, offset: 1024)
!2617 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !226, file: !227, line: 107, size: 128, elements: !2618)
!2618 = !{!2619, !2620}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2617, file: !227, line: 108, baseType: !182, size: 128)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2617, file: !227, line: 109, baseType: !658, size: 64)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !226, file: !227, line: 111, baseType: !182, size: 128, offset: 1152)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !226, file: !227, line: 112, baseType: !182, size: 128, offset: 1280)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !226, file: !227, line: 120, baseType: !2624, size: 128, offset: 1408)
!2624 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !226, file: !227, line: 116, size: 128, elements: !2625)
!2625 = !{!2626, !2627, !2628}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2624, file: !227, line: 117, baseType: !422, size: 128)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2624, file: !227, line: 118, baseType: !241, size: 128)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2624, file: !227, line: 119, baseType: !563, size: 128, align: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !219, file: !49, line: 1866, baseType: !2630, size: 64, offset: 64)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!321, !225, !192, !2633}
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !2635, line: 10, size: 128, elements: !2636)
!2635 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!2636 = !{!2637, !2641}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2634, file: !2635, line: 11, baseType: !2638, size: 64)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{null, !161}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2634, file: !2635, line: 12, baseType: !161, size: 64, offset: 64)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !219, file: !49, line: 1867, baseType: !2643, size: 64, offset: 128)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{!299, !192, !299}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !219, file: !49, line: 1868, baseType: !2647, size: 64, offset: 192)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = !DISubroutineType(types: !2649)
!2649 = !{!2650, !192, !299}
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !49, line: 581, flags: DIFlagFwdDecl)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !219, file: !49, line: 1870, baseType: !2653, size: 64, offset: 256)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{!299, !225, !347, !299}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !219, file: !49, line: 1872, baseType: !2657, size: 64, offset: 320)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{!299, !192, !225, !196, !366}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !219, file: !49, line: 1873, baseType: !2661, size: 64, offset: 384)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = !DISubroutineType(types: !2663)
!2663 = !{!299, !225, !192, !225}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !219, file: !49, line: 1874, baseType: !2665, size: 64, offset: 448)
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2666 = !DISubroutineType(types: !2667)
!2667 = !{!299, !192, !225}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !219, file: !49, line: 1875, baseType: !2669, size: 64, offset: 512)
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{!299, !192, !225, !321}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !219, file: !49, line: 1876, baseType: !2673, size: 64, offset: 576)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = !DISubroutineType(types: !2675)
!2675 = !{!299, !192, !225, !196}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !219, file: !49, line: 1877, baseType: !2665, size: 64, offset: 640)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !219, file: !49, line: 1878, baseType: !2678, size: 64, offset: 704)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!299, !192, !225, !196, !380}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !219, file: !49, line: 1879, baseType: !2682, size: 64, offset: 768)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!299, !192, !225, !192, !225, !6}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !219, file: !49, line: 1881, baseType: !2686, size: 64, offset: 832)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DISubroutineType(types: !2688)
!2688 = !{!299, !225, !2689}
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !49, line: 219, size: 640, elements: !2691)
!2691 = !{!2692, !2693, !2694, !2695, !2696, !2697, !2702, !2703, !2704}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !2690, file: !49, line: 220, baseType: !6, size: 32)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !2690, file: !49, line: 221, baseType: !196, size: 16, offset: 32)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !2690, file: !49, line: 222, baseType: !200, size: 32, offset: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !2690, file: !49, line: 223, baseType: !209, size: 32, offset: 96)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !2690, file: !49, line: 224, baseType: !385, size: 64, offset: 128)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !2690, file: !49, line: 225, baseType: !2698, size: 128, offset: 192)
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1199, line: 13, size: 128, elements: !2699)
!2699 = !{!2700, !2701}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2698, file: !1199, line: 14, baseType: !1198, size: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2698, file: !1199, line: 15, baseType: !591, size: 64, offset: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !2690, file: !49, line: 226, baseType: !2698, size: 128, offset: 320)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !2690, file: !49, line: 227, baseType: !2698, size: 128, offset: 448)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !2690, file: !49, line: 234, baseType: !583, size: 64, offset: 576)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !219, file: !49, line: 1882, baseType: !2706, size: 64, offset: 896)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = !DISubroutineType(types: !2708)
!2708 = !{!299, !364, !2709, !259, !6}
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !2711, line: 22, size: 1152, elements: !2712)
!2711 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!2712 = !{!2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !2710, file: !2711, line: 23, baseType: !259, size: 32)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2710, file: !2711, line: 24, baseType: !196, size: 16, offset: 32)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !2710, file: !2711, line: 25, baseType: !6, size: 32, offset: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !2710, file: !2711, line: 26, baseType: !1206, size: 32, offset: 96)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !2710, file: !2711, line: 27, baseType: !165, size: 64, offset: 128)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !2710, file: !2711, line: 28, baseType: !165, size: 64, offset: 192)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2710, file: !2711, line: 37, baseType: !165, size: 64, offset: 256)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2710, file: !2711, line: 38, baseType: !380, size: 32, offset: 320)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !2710, file: !2711, line: 39, baseType: !380, size: 32, offset: 352)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2710, file: !2711, line: 40, baseType: !200, size: 32, offset: 384)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2710, file: !2711, line: 41, baseType: !209, size: 32, offset: 416)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2710, file: !2711, line: 42, baseType: !385, size: 64, offset: 448)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !2710, file: !2711, line: 43, baseType: !2698, size: 128, offset: 512)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !2710, file: !2711, line: 44, baseType: !2698, size: 128, offset: 640)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !2710, file: !2711, line: 45, baseType: !2698, size: 128, offset: 768)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !2710, file: !2711, line: 46, baseType: !2698, size: 128, offset: 896)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2710, file: !2711, line: 47, baseType: !165, size: 64, offset: 1024)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !2710, file: !2711, line: 48, baseType: !165, size: 64, offset: 1088)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !219, file: !49, line: 1883, baseType: !2732, size: 64, offset: 960)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!588, !225, !347, !502}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !219, file: !49, line: 1884, baseType: !2736, size: 64, offset: 1024)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{!299, !192, !2739, !165, !165}
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !49, line: 50, flags: DIFlagFwdDecl)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !219, file: !49, line: 1886, baseType: !2742, size: 64, offset: 1088)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{!299, !192, !2745, !299}
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !219, file: !49, line: 1887, baseType: !2747, size: 64, offset: 1152)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{!299, !192, !225, !583, !6, !196}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !219, file: !49, line: 1890, baseType: !2673, size: 64, offset: 1216)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !219, file: !49, line: 1891, baseType: !2752, size: 64, offset: 1280)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!299, !192, !2650, !299}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !193, file: !49, line: 623, baseType: !375, size: 64, offset: 192)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !193, file: !49, line: 624, baseType: !188, size: 64, offset: 256)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !193, file: !49, line: 631, baseType: !160, size: 64, offset: 320)
!2758 = !DIDerivedType(tag: DW_TAG_member, scope: !193, file: !49, line: 639, baseType: !2759, size: 32, offset: 384)
!2759 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !193, file: !49, line: 639, size: 32, elements: !2760)
!2760 = !{!2761, !2763}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2759, file: !49, line: 640, baseType: !2762, size: 32)
!2762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2759, file: !49, line: 641, baseType: !6, size: 32)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !193, file: !49, line: 643, baseType: !380, size: 32, offset: 416)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !193, file: !49, line: 644, baseType: !385, size: 64, offset: 448)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !193, file: !49, line: 645, baseType: !2698, size: 128, offset: 512)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !193, file: !49, line: 646, baseType: !2698, size: 128, offset: 640)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !193, file: !49, line: 647, baseType: !2698, size: 128, offset: 768)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !193, file: !49, line: 648, baseType: !283, offset: 896)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !193, file: !49, line: 649, baseType: !197, size: 16, offset: 896)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !193, file: !49, line: 650, baseType: !952, size: 8, offset: 912)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !193, file: !49, line: 651, baseType: !952, size: 8, offset: 920)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !193, file: !49, line: 652, baseType: !2442, size: 64, offset: 960)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !193, file: !49, line: 659, baseType: !160, size: 64, offset: 1024)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !193, file: !49, line: 660, baseType: !733, size: 256, offset: 1088)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !193, file: !49, line: 662, baseType: !160, size: 64, offset: 1344)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !193, file: !49, line: 663, baseType: !160, size: 64, offset: 1408)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !193, file: !49, line: 665, baseType: !422, size: 128, offset: 1472)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !193, file: !49, line: 666, baseType: !182, size: 128, offset: 1600)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !193, file: !49, line: 675, baseType: !182, size: 128, offset: 1728)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !193, file: !49, line: 676, baseType: !182, size: 128, offset: 1856)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !193, file: !49, line: 677, baseType: !182, size: 128, offset: 1984)
!2783 = !DIDerivedType(tag: DW_TAG_member, scope: !193, file: !49, line: 678, baseType: !2784, size: 128, offset: 2112)
!2784 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !193, file: !49, line: 678, size: 128, elements: !2785)
!2785 = !{!2786, !2787}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2784, file: !49, line: 679, baseType: !418, size: 64)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2784, file: !49, line: 680, baseType: !563, size: 128, align: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !193, file: !49, line: 682, baseType: !517, size: 64, offset: 2240)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !193, file: !49, line: 683, baseType: !517, size: 64, offset: 2304)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !193, file: !49, line: 684, baseType: !722, size: 32, offset: 2368)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !193, file: !49, line: 685, baseType: !722, size: 32, offset: 2400)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !193, file: !49, line: 686, baseType: !722, size: 32, offset: 2432)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !193, file: !49, line: 688, baseType: !722, size: 32, offset: 2464)
!2794 = !DIDerivedType(tag: DW_TAG_member, scope: !193, file: !49, line: 690, baseType: !2795, size: 64, offset: 2496)
!2795 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !193, file: !49, line: 690, size: 64, elements: !2796)
!2796 = !{!2797, !2798}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2795, file: !49, line: 691, baseType: !574, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2795, file: !49, line: 692, baseType: !449, size: 64)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !193, file: !49, line: 694, baseType: !2800, size: 64, offset: 2560)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !49, line: 1100, size: 384, elements: !2802)
!2802 = !{!2803, !2804, !2805, !2806}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2801, file: !49, line: 1101, baseType: !283)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2801, file: !49, line: 1102, baseType: !182, size: 128)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2801, file: !49, line: 1103, baseType: !182, size: 128, offset: 128)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2801, file: !49, line: 1104, baseType: !182, size: 128, offset: 256)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !193, file: !49, line: 695, baseType: !189, size: 1216, align: 64, offset: 2624)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !193, file: !49, line: 696, baseType: !182, size: 128, offset: 3840)
!2809 = !DIDerivedType(tag: DW_TAG_member, scope: !193, file: !49, line: 697, baseType: !2810, size: 64, offset: 3968)
!2810 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !193, file: !49, line: 697, size: 64, elements: !2811)
!2811 = !{!2812, !2813, !2814, !3110, !3111}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2810, file: !49, line: 698, baseType: !1711, size: 64)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2810, file: !49, line: 699, baseType: !2467, size: 64)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2810, file: !49, line: 700, baseType: !2815, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !2817, line: 14, size: 832, elements: !2818)
!2817 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!2818 = !{!2819, !3105, !3106, !3107, !3108, !3109}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2816, file: !2817, line: 15, baseType: !2820, size: 512)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !2821, line: 64, size: 512, elements: !2822)
!2821 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!2822 = !{!2823, !2824, !2825, !2827, !2867, !2967, !3095, !3100, !3101, !3102, !3103, !3104}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2820, file: !2821, line: 65, baseType: !321, size: 64)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2820, file: !2821, line: 66, baseType: !182, size: 128, offset: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2820, file: !2821, line: 67, baseType: !2826, size: 64, offset: 192)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !2820, file: !2821, line: 68, baseType: !2828, size: 64, offset: 256)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !2821, line: 192, size: 704, elements: !2830)
!2830 = !{!2831, !2832, !2833, !2834}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2829, file: !2821, line: 193, baseType: !182, size: 128)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !2829, file: !2821, line: 194, baseType: !283, offset: 128)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2829, file: !2821, line: 195, baseType: !2820, size: 512, offset: 128)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !2829, file: !2821, line: 196, baseType: !2835, size: 64, offset: 640)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2837)
!2837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !2821, line: 156, size: 192, elements: !2838)
!2838 = !{!2839, !2844, !2849}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2837, file: !2821, line: 157, baseType: !2840, size: 64)
!2840 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2841)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!299, !2828, !2826}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2837, file: !2821, line: 158, baseType: !2845, size: 64, offset: 64)
!2845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2846)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = !DISubroutineType(types: !2848)
!2848 = !{!321, !2828, !2826}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2837, file: !2821, line: 159, baseType: !2850, size: 64, offset: 128)
!2850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2851)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{!299, !2828, !2826, !2854}
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !2821, line: 148, size: 20736, elements: !2856)
!2856 = !{!2857, !2859, !2861, !2862, !2866}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !2855, file: !2821, line: 149, baseType: !2858, size: 192)
!2858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 192, elements: !434)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !2855, file: !2821, line: 150, baseType: !2860, size: 4096, offset: 192)
!2860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 4096, elements: !1484)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !2855, file: !2821, line: 151, baseType: !299, size: 32, offset: 4288)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2855, file: !2821, line: 152, baseType: !2863, size: 16384, offset: 4320)
!2863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 16384, elements: !2864)
!2864 = !{!2865}
!2865 = !DISubrange(count: 2048)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !2855, file: !2821, line: 153, baseType: !299, size: 32, offset: 20704)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !2820, file: !2821, line: 69, baseType: !2868, size: 64, offset: 320)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !2821, line: 138, size: 448, elements: !2870)
!2870 = !{!2871, !2875, !2894, !2896, !2929, !2957, !2961}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2869, file: !2821, line: 139, baseType: !2872, size: 64)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{null, !2826}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !2869, file: !2821, line: 140, baseType: !2876, size: 64, offset: 64)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2878)
!2878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !2879, line: 230, size: 128, elements: !2880)
!2879 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!2880 = !{!2881, !2890}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2878, file: !2879, line: 231, baseType: !2882, size: 64)
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2883, size: 64)
!2883 = !DISubroutineType(types: !2884)
!2884 = !{!588, !2826, !2885, !347}
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !2879, line: 30, size: 128, elements: !2887)
!2887 = !{!2888, !2889}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2886, file: !2879, line: 31, baseType: !321, size: 64)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2886, file: !2879, line: 32, baseType: !196, size: 16, offset: 64)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2878, file: !2879, line: 232, baseType: !2891, size: 64, offset: 64)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{!588, !2826, !2885, !321, !502}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !2869, file: !2821, line: 141, baseType: !2895, size: 64, offset: 128)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !2869, file: !2821, line: 142, baseType: !2897, size: 64, offset: 192)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2900)
!2900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !2879, line: 84, size: 320, elements: !2901)
!2901 = !{!2902, !2903, !2907, !2926, !2927}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2900, file: !2879, line: 85, baseType: !321, size: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !2900, file: !2879, line: 86, baseType: !2904, size: 64, offset: 64)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!196, !2826, !2885, !299}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !2900, file: !2879, line: 88, baseType: !2908, size: 64, offset: 128)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!196, !2826, !2911, !299}
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !2879, line: 168, size: 448, elements: !2913)
!2913 = !{!2914, !2915, !2916, !2917, !2921, !2922}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2912, file: !2879, line: 169, baseType: !2886, size: 128)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2912, file: !2879, line: 170, baseType: !502, size: 64, offset: 128)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2912, file: !2879, line: 171, baseType: !161, size: 64, offset: 192)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2912, file: !2879, line: 172, baseType: !2918, size: 64, offset: 256)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{!588, !583, !2826, !2911, !347, !385, !502}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2912, file: !2879, line: 174, baseType: !2918, size: 64, offset: 320)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2912, file: !2879, line: 176, baseType: !2923, size: 64, offset: 384)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = !DISubroutineType(types: !2925)
!2925 = !{!299, !583, !2826, !2911, !675}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !2900, file: !2879, line: 90, baseType: !2895, size: 64, offset: 192)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !2900, file: !2879, line: 91, baseType: !2928, size: 64, offset: 256)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !2869, file: !2821, line: 143, baseType: !2930, size: 64, offset: 256)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!2933, !2826}
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2935)
!2935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !66, line: 39, size: 384, elements: !2936)
!2936 = !{!2937, !2938, !2942, !2946, !2952, !2956}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2935, file: !66, line: 40, baseType: !65, size: 32)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2935, file: !66, line: 41, baseType: !2939, size: 64, offset: 64)
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!366}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2935, file: !66, line: 42, baseType: !2943, size: 64, offset: 128)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DISubroutineType(types: !2945)
!2945 = !{!161}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2935, file: !66, line: 43, baseType: !2947, size: 64, offset: 192)
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{!1741, !2950}
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !66, line: 19, flags: DIFlagFwdDecl)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2935, file: !66, line: 44, baseType: !2953, size: 64, offset: 256)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DISubroutineType(types: !2955)
!2955 = !{!1741}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2935, file: !66, line: 45, baseType: !2638, size: 64, offset: 320)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2869, file: !2821, line: 144, baseType: !2958, size: 64, offset: 320)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!1741, !2826}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2869, file: !2821, line: 145, baseType: !2962, size: 64, offset: 384)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{null, !2826, !2965, !2966}
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !2820, file: !2821, line: 70, baseType: !2968, size: 64, offset: 384)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2970, line: 123, size: 1024, elements: !2971)
!2970 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!2971 = !{!2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !3088, !3089, !3090, !3091, !3092}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2969, file: !2970, line: 124, baseType: !722, size: 32)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2969, file: !2970, line: 125, baseType: !722, size: 32, offset: 32)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2969, file: !2970, line: 135, baseType: !2968, size: 64, offset: 64)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2969, file: !2970, line: 136, baseType: !321, size: 64, offset: 128)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2969, file: !2970, line: 138, baseType: !683, size: 192, align: 64, offset: 192)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2969, file: !2970, line: 140, baseType: !1741, size: 64, offset: 384)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2969, file: !2970, line: 141, baseType: !6, size: 32, offset: 448)
!2979 = !DIDerivedType(tag: DW_TAG_member, scope: !2969, file: !2970, line: 142, baseType: !2980, size: 256, offset: 512)
!2980 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2969, file: !2970, line: 142, size: 256, elements: !2981)
!2981 = !{!2982, !3028, !3032}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2980, file: !2970, line: 143, baseType: !2983, size: 192)
!2983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2970, line: 91, size: 192, elements: !2984)
!2984 = !{!2985, !2986, !2987}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2983, file: !2970, line: 92, baseType: !160, size: 64)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2983, file: !2970, line: 94, baseType: !700, size: 64, offset: 64)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2983, file: !2970, line: 100, baseType: !2988, size: 64, offset: 128)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2970, line: 180, size: 704, elements: !2990)
!2990 = !{!2991, !2992, !2993, !3000, !3001, !3002, !3026, !3027}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2989, file: !2970, line: 182, baseType: !2968, size: 64)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2989, file: !2970, line: 183, baseType: !6, size: 32, offset: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !2989, file: !2970, line: 186, baseType: !2994, size: 192, offset: 128)
!2994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !2995, line: 19, size: 192, elements: !2996)
!2995 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!2996 = !{!2997, !2998, !2999}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !2994, file: !2995, line: 20, baseType: !1541, size: 128)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !2994, file: !2995, line: 21, baseType: !6, size: 32, offset: 128)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !2994, file: !2995, line: 22, baseType: !6, size: 32, offset: 160)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !2989, file: !2970, line: 187, baseType: !259, size: 32, offset: 320)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !2989, file: !2970, line: 188, baseType: !259, size: 32, offset: 352)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !2989, file: !2970, line: 189, baseType: !3003, size: 64, offset: 384)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !2970, line: 168, size: 320, elements: !3005)
!3005 = !{!3006, !3010, !3014, !3018, !3022}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3004, file: !2970, line: 169, baseType: !3007, size: 64)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!299, !496, !2988}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3004, file: !2970, line: 171, baseType: !3011, size: 64, offset: 64)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!299, !2968, !321, !196}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3004, file: !2970, line: 173, baseType: !3015, size: 64, offset: 128)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{!299, !2968}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3004, file: !2970, line: 174, baseType: !3019, size: 64, offset: 192)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!299, !2968, !2968, !321}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3004, file: !2970, line: 176, baseType: !3023, size: 64, offset: 256)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!299, !496, !2968, !2988}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !2989, file: !2970, line: 192, baseType: !182, size: 128, offset: 448)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !2989, file: !2970, line: 194, baseType: !659, size: 128, offset: 576)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2980, file: !2970, line: 144, baseType: !3029, size: 64)
!3029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2970, line: 103, size: 64, elements: !3030)
!3030 = !{!3031}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3029, file: !2970, line: 104, baseType: !2968, size: 64)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2980, file: !2970, line: 145, baseType: !3033, size: 256)
!3033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2970, line: 107, size: 256, elements: !3034)
!3034 = !{!3035, !3083, !3086, !3087}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3033, file: !2970, line: 108, baseType: !3036, size: 64)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3038)
!3038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2970, line: 217, size: 768, elements: !3039)
!3039 = !{!3040, !3060, !3064, !3065, !3066, !3067, !3068, !3072, !3073, !3074, !3075, !3079}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3038, file: !2970, line: 222, baseType: !3041, size: 64)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{!299, !3044}
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2970, line: 197, size: 1088, elements: !3046)
!3046 = !{!3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3045, file: !2970, line: 199, baseType: !2968, size: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3045, file: !2970, line: 200, baseType: !583, size: 64, offset: 64)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3045, file: !2970, line: 201, baseType: !496, size: 64, offset: 128)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3045, file: !2970, line: 202, baseType: !161, size: 64, offset: 192)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3045, file: !2970, line: 205, baseType: !511, size: 192, offset: 256)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3045, file: !2970, line: 206, baseType: !511, size: 192, offset: 448)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3045, file: !2970, line: 207, baseType: !299, size: 32, offset: 640)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3045, file: !2970, line: 208, baseType: !182, size: 128, offset: 704)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3045, file: !2970, line: 209, baseType: !347, size: 64, offset: 832)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3045, file: !2970, line: 211, baseType: !502, size: 64, offset: 896)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3045, file: !2970, line: 212, baseType: !366, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3045, file: !2970, line: 213, baseType: !366, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3045, file: !2970, line: 214, baseType: !1962, size: 64, offset: 1024)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3038, file: !2970, line: 223, baseType: !3061, size: 64, offset: 64)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{null, !3044}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3038, file: !2970, line: 236, baseType: !544, size: 64, offset: 128)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3038, file: !2970, line: 238, baseType: !531, size: 64, offset: 192)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3038, file: !2970, line: 239, baseType: !540, size: 64, offset: 256)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3038, file: !2970, line: 240, baseType: !536, size: 64, offset: 320)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3038, file: !2970, line: 242, baseType: !3069, size: 64, offset: 384)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = !DISubroutineType(types: !3071)
!3071 = !{!588, !3044, !347, !502, !385}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3038, file: !2970, line: 252, baseType: !502, size: 64, offset: 448)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3038, file: !2970, line: 259, baseType: !366, size: 8, offset: 512)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3038, file: !2970, line: 260, baseType: !3069, size: 64, offset: 576)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3038, file: !2970, line: 263, baseType: !3076, size: 64, offset: 640)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!647, !3044, !649}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3038, file: !2970, line: 266, baseType: !3080, size: 64, offset: 704)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{!299, !3044, !675}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3033, file: !2970, line: 109, baseType: !3084, size: 64, offset: 64)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2970, line: 31, flags: DIFlagFwdDecl)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3033, file: !2970, line: 110, baseType: !385, size: 64, offset: 128)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3033, file: !2970, line: 111, baseType: !2968, size: 64, offset: 192)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2969, file: !2970, line: 148, baseType: !161, size: 64, offset: 768)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2969, file: !2970, line: 154, baseType: !165, size: 64, offset: 832)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2969, file: !2970, line: 156, baseType: !197, size: 16, offset: 896)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2969, file: !2970, line: 157, baseType: !196, size: 16, offset: 912)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2969, file: !2970, line: 158, baseType: !3093, size: 64, offset: 960)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2970, line: 32, flags: DIFlagFwdDecl)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2820, file: !2821, line: 71, baseType: !3096, size: 32, offset: 448)
!3096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3097, line: 19, size: 32, elements: !3098)
!3097 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3098 = !{!3099}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3096, file: !3097, line: 20, baseType: !826, size: 32)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !2820, file: !2821, line: 75, baseType: !6, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !2820, file: !2821, line: 76, baseType: !6, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !2820, file: !2821, line: 77, baseType: !6, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !2820, file: !2821, line: 78, baseType: !6, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !2820, file: !2821, line: 79, baseType: !6, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2816, file: !2817, line: 16, baseType: !413, size: 64, offset: 512)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2816, file: !2817, line: 17, baseType: !574, size: 64, offset: 576)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2816, file: !2817, line: 18, baseType: !182, size: 128, offset: 640)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2816, file: !2817, line: 19, baseType: !380, size: 32, offset: 768)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2816, file: !2817, line: 20, baseType: !6, size: 32, offset: 800)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2810, file: !49, line: 701, baseType: !347, size: 64)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2810, file: !49, line: 702, baseType: !6, size: 32)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !193, file: !49, line: 705, baseType: !260, size: 32, offset: 4032)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !193, file: !49, line: 708, baseType: !260, size: 32, offset: 4064)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !193, file: !49, line: 709, baseType: !2549, size: 64, offset: 4096)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !193, file: !49, line: 720, baseType: !161, size: 64, offset: 4160)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !189, file: !49, line: 453, baseType: !1541, size: 128, offset: 64)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !189, file: !49, line: 454, baseType: !162, size: 32, offset: 192)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !189, file: !49, line: 455, baseType: !722, size: 32, offset: 224)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !189, file: !49, line: 460, baseType: !942, size: 128, offset: 256)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !189, file: !49, line: 461, baseType: !733, size: 256, offset: 384)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !189, file: !49, line: 462, baseType: !160, size: 64, offset: 640)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !189, file: !49, line: 463, baseType: !160, size: 64, offset: 704)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !189, file: !49, line: 464, baseType: !160, size: 64, offset: 768)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !189, file: !49, line: 465, baseType: !3125, size: 64, offset: 832)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3127)
!3127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !49, line: 367, size: 1408, elements: !3128)
!3128 = !{!3129, !3133, !3137, !3141, !3145, !3149, !3155, !3159, !3163, !3168, !3172, !3176, !3180, !3181, !3185, !3191, !3192, !3193, !3197, !3202, !3206, !3213}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3127, file: !49, line: 368, baseType: !3130, size: 64)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!299, !170, !461}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !3127, file: !49, line: 369, baseType: !3134, size: 64, offset: 64)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{!299, !583, !170}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3127, file: !49, line: 372, baseType: !3138, size: 64, offset: 128)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{!299, !188, !461}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !3127, file: !49, line: 375, baseType: !3142, size: 64, offset: 192)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{!299, !170}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !3127, file: !49, line: 381, baseType: !3146, size: 64, offset: 256)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{!299, !583, !188, !185, !6}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3127, file: !49, line: 383, baseType: !3150, size: 64, offset: 320)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{null, !3153}
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !49, line: 290, flags: DIFlagFwdDecl)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3127, file: !49, line: 385, baseType: !3156, size: 64, offset: 384)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!299, !583, !188, !385, !6, !6, !1736, !2154}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3127, file: !49, line: 388, baseType: !3160, size: 64, offset: 448)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = !DISubroutineType(types: !3162)
!3162 = !{!299, !583, !188, !385, !6, !6, !170, !161}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3127, file: !49, line: 393, baseType: !3164, size: 64, offset: 512)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{!3167, !188, !3167}
!3167 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !163, line: 125, baseType: !165)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !3127, file: !49, line: 394, baseType: !3169, size: 64, offset: 576)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{null, !170, !6, !6}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !3127, file: !49, line: 395, baseType: !3173, size: 64, offset: 640)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!299, !170, !162}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !3127, file: !49, line: 396, baseType: !3177, size: 64, offset: 704)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{null, !170}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3127, file: !49, line: 397, baseType: !597, size: 64, offset: 768)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !3127, file: !49, line: 402, baseType: !3182, size: 64, offset: 832)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!299, !188, !170, !170, !11}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !3127, file: !49, line: 404, baseType: !3186, size: 64, offset: 896)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!366, !170, !3189}
!3189 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !3190, line: 305, baseType: !6)
!3190 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !3127, file: !49, line: 405, baseType: !3177, size: 64, offset: 960)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !3127, file: !49, line: 406, baseType: !3142, size: 64, offset: 1024)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3127, file: !49, line: 407, baseType: !3194, size: 64, offset: 1088)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{!299, !170, !160, !160}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3127, file: !49, line: 409, baseType: !3198, size: 64, offset: 1152)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = !DISubroutineType(types: !3200)
!3200 = !{null, !170, !3201, !3201}
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3127, file: !49, line: 410, baseType: !3203, size: 64, offset: 1216)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{!299, !188, !170}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3127, file: !49, line: 413, baseType: !3207, size: 64, offset: 1280)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = !DISubroutineType(types: !3209)
!3209 = !{!299, !3210, !583, !3212}
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !49, line: 61, flags: DIFlagFwdDecl)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3127, file: !49, line: 415, baseType: !3214, size: 64, offset: 1344)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{null, !583}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !189, file: !49, line: 466, baseType: !160, size: 64, offset: 896)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !189, file: !49, line: 467, baseType: !2253, size: 32, offset: 960)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !189, file: !49, line: 468, baseType: !283, offset: 992)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !189, file: !49, line: 469, baseType: !182, size: 128, offset: 1024)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !189, file: !49, line: 470, baseType: !161, size: 64, offset: 1152)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !179, file: !172, line: 87, baseType: !160, size: 64, offset: 192)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !179, file: !172, line: 94, baseType: !160, size: 64, offset: 256)
!3224 = !DIDerivedType(tag: DW_TAG_member, scope: !176, file: !172, line: 96, baseType: !3225, size: 64)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !176, file: !172, line: 96, size: 64, elements: !3226)
!3226 = !{!3227}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3225, file: !172, line: 101, baseType: !164, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, scope: !176, file: !172, line: 103, baseType: !3229, size: 320)
!3229 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !176, file: !172, line: 103, size: 320, elements: !3230)
!3230 = !{!3231, !3241, !3242, !3243}
!3231 = !DIDerivedType(tag: DW_TAG_member, scope: !3229, file: !172, line: 104, baseType: !3232, size: 128)
!3232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3229, file: !172, line: 104, size: 128, elements: !3233)
!3233 = !{!3234, !3235}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !3232, file: !172, line: 105, baseType: !182, size: 128)
!3235 = !DIDerivedType(tag: DW_TAG_member, scope: !3232, file: !172, line: 106, baseType: !3236, size: 128)
!3236 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3232, file: !172, line: 106, size: 128, elements: !3237)
!3237 = !{!3238, !3239, !3240}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3236, file: !172, line: 107, baseType: !170, size: 64)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3236, file: !172, line: 109, baseType: !299, size: 32, offset: 64)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !3236, file: !172, line: 110, baseType: !299, size: 32, offset: 96)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !3229, file: !172, line: 117, baseType: !1560, size: 64, offset: 128)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !3229, file: !172, line: 119, baseType: !161, size: 64, offset: 192)
!3243 = !DIDerivedType(tag: DW_TAG_member, scope: !3229, file: !172, line: 120, baseType: !3244, size: 64, offset: 256)
!3244 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3229, file: !172, line: 120, size: 64, elements: !3245)
!3245 = !{!3246, !3247, !3248}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !3244, file: !172, line: 121, baseType: !161, size: 64)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !3244, file: !172, line: 122, baseType: !160, size: 64)
!3248 = !DIDerivedType(tag: DW_TAG_member, scope: !3244, file: !172, line: 123, baseType: !3249, size: 32)
!3249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3244, file: !172, line: 123, size: 32, elements: !3250)
!3250 = !{!3251, !3252, !3253}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !3249, file: !172, line: 124, baseType: !6, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !3249, file: !172, line: 125, baseType: !6, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3249, file: !172, line: 126, baseType: !6, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!3254 = !DIDerivedType(tag: DW_TAG_member, scope: !176, file: !172, line: 130, baseType: !3255, size: 192)
!3255 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !176, file: !172, line: 130, size: 192, elements: !3256)
!3256 = !{!3257, !3258, !3259, !3260, !3261}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !3255, file: !172, line: 131, baseType: !160, size: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !3255, file: !172, line: 134, baseType: !266, size: 8, offset: 64)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !3255, file: !172, line: 135, baseType: !266, size: 8, offset: 72)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !3255, file: !172, line: 136, baseType: !722, size: 32, offset: 96)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !3255, file: !172, line: 137, baseType: !6, size: 32, offset: 128)
!3262 = !DIDerivedType(tag: DW_TAG_member, scope: !176, file: !172, line: 139, baseType: !3263, size: 256)
!3263 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !176, file: !172, line: 139, size: 256, elements: !3264)
!3264 = !{!3265, !3266, !3267}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !3263, file: !172, line: 140, baseType: !160, size: 64)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !3263, file: !172, line: 141, baseType: !722, size: 32, offset: 64)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !3263, file: !172, line: 143, baseType: !182, size: 128, offset: 128)
!3268 = !DIDerivedType(tag: DW_TAG_member, scope: !176, file: !172, line: 145, baseType: !3269, size: 256)
!3269 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !176, file: !172, line: 145, size: 256, elements: !3270)
!3270 = !{!3271, !3272, !3273, !3274, !3279}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !3269, file: !172, line: 146, baseType: !160, size: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !3269, file: !172, line: 147, baseType: !2019, size: 64, offset: 64)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !3269, file: !172, line: 148, baseType: !160, size: 64, offset: 128)
!3274 = !DIDerivedType(tag: DW_TAG_member, scope: !3269, file: !172, line: 149, baseType: !3275, size: 64, offset: 192)
!3275 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3269, file: !172, line: 149, size: 64, elements: !3276)
!3276 = !{!3277, !3278}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !3275, file: !172, line: 150, baseType: !692, size: 64)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !3275, file: !172, line: 151, baseType: !722, size: 32)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !3269, file: !172, line: 156, baseType: !283, offset: 256)
!3280 = !DIDerivedType(tag: DW_TAG_member, scope: !176, file: !172, line: 159, baseType: !3281, size: 128)
!3281 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !176, file: !172, line: 159, size: 128, elements: !3282)
!3282 = !{!3283, !3347}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !3281, file: !172, line: 161, baseType: !3284, size: 64)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !36, line: 110, size: 1152, elements: !3286)
!3286 = !{!3287, !3297, !3318, !3319, !3320, !3321, !3322, !3334, !3335, !3336}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !3285, file: !36, line: 111, baseType: !3288, size: 384)
!3288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !36, line: 19, size: 384, elements: !3289)
!3289 = !{!3290, !3292, !3293, !3294, !3295, !3296}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !3288, file: !36, line: 20, baseType: !3291, size: 64)
!3291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !160)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !3288, file: !36, line: 21, baseType: !3291, size: 64, offset: 64)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !3288, file: !36, line: 22, baseType: !3291, size: 64, offset: 128)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3288, file: !36, line: 23, baseType: !160, size: 64, offset: 192)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !3288, file: !36, line: 24, baseType: !160, size: 64, offset: 256)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3288, file: !36, line: 25, baseType: !160, size: 64, offset: 320)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3285, file: !36, line: 112, baseType: !3298, size: 64, offset: 384)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !3300, line: 105, size: 128, elements: !3301)
!3300 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!3301 = !{!3302, !3303}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !3299, file: !3300, line: 110, baseType: !160, size: 64)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3299, file: !3300, line: 118, baseType: !3304, size: 64, offset: 64)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !3300, line: 95, size: 448, elements: !3306)
!3306 = !{!3307, !3308, !3313, !3314, !3315, !3316, !3317}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3305, file: !3300, line: 96, baseType: !515, size: 64)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3305, file: !3300, line: 97, baseType: !3309, size: 64, offset: 64)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !3300, line: 60, baseType: !3311)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{null, !3298}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !3305, file: !3300, line: 98, baseType: !3309, size: 64, offset: 128)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !3305, file: !3300, line: 99, baseType: !366, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !3305, file: !3300, line: 100, baseType: !366, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3305, file: !3300, line: 101, baseType: !563, size: 128, align: 64, offset: 256)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3305, file: !3300, line: 102, baseType: !3298, size: 64, offset: 384)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !3285, file: !36, line: 113, baseType: !3299, size: 128, offset: 448)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !3285, file: !36, line: 114, baseType: !1101, size: 192, offset: 576)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3285, file: !36, line: 115, baseType: !35, size: 32, offset: 768)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3285, file: !36, line: 116, baseType: !6, size: 32, offset: 800)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3285, file: !36, line: 117, baseType: !3323, size: 64, offset: 832)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3325)
!3325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !36, line: 67, size: 256, elements: !3326)
!3326 = !{!3327, !3328, !3332, !3333}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !3325, file: !36, line: 73, baseType: !3177, size: 64)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !3325, file: !36, line: 78, baseType: !3329, size: 64, offset: 64)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = !DISubroutineType(types: !3331)
!3331 = !{null, !3284}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !3325, file: !36, line: 83, baseType: !3329, size: 64, offset: 128)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !3325, file: !36, line: 89, baseType: !1980, size: 64, offset: 192)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3285, file: !36, line: 118, baseType: !161, size: 64, offset: 896)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !3285, file: !36, line: 119, baseType: !299, size: 32, offset: 960)
!3336 = !DIDerivedType(tag: DW_TAG_member, scope: !3285, file: !36, line: 120, baseType: !3337, size: 128, offset: 1024)
!3337 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3285, file: !36, line: 120, size: 128, elements: !3338)
!3338 = !{!3339, !3345}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3337, file: !36, line: 121, baseType: !3340, size: 128)
!3340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !3341, line: 6, size: 128, elements: !3342)
!3341 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!3342 = !{!3343, !3344}
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3340, file: !3341, line: 7, baseType: !165, size: 64)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3340, file: !3341, line: 8, baseType: !165, size: 64, offset: 64)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !3337, file: !36, line: 122, baseType: !3346)
!3346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3340, elements: !1325)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !3281, file: !172, line: 162, baseType: !161, size: 64, offset: 64)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !176, file: !172, line: 176, baseType: !563, size: 128, align: 64)
!3349 = !DIDerivedType(tag: DW_TAG_member, scope: !171, file: !172, line: 179, baseType: !3350, size: 32, offset: 384)
!3350 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !171, file: !172, line: 179, size: 32, elements: !3351)
!3351 = !{!3352, !3353, !3354, !3355}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3350, file: !172, line: 184, baseType: !722, size: 32)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !3350, file: !172, line: 192, baseType: !6, size: 32)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3350, file: !172, line: 194, baseType: !6, size: 32)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !3350, file: !172, line: 195, baseType: !299, size: 32)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !171, file: !172, line: 199, baseType: !722, size: 32, offset: 416)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !323)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!3361 = !{!3362, !3904, !3906, !0}
!3362 = !DIGlobalVariableExpression(var: !3363, expr: !DIExpression())
!3363 = distinct !DIGlobalVariable(name: "xen_swiotlb_dma_ops", scope: !2, file: !3, line: 566, type: !3364, isLocal: false, isDefinition: true)
!3364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3365)
!3365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !3366, line: 14, size: 1472, elements: !3367)
!3366 = !DIFile(filename: "./include/linux/dma-map-ops.h", directory: "/home/lizy2001/genbc/linux")
!3367 = !{!3368, !3810, !3814, !3818, !3822, !3826, !3830, !3834, !3853, !3857, !3861, !3865, !3869, !3873, !3874, !3878, !3879, !3883, !3884, !3888, !3892, !3896, !3900}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3365, file: !3366, line: 15, baseType: !3369, size: 64)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{!161, !3372, !502, !3809, !162, !160}
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !78, line: 461, size: 5568, elements: !3374)
!3374 = !{!3375, !3376, !3377, !3380, !3381, !3432, !3505, !3506, !3507, !3508, !3509, !3518, !3623, !3636, !3640, !3641, !3643, !3645, !3646, !3647, !3657, !3663, !3664, !3667, !3671, !3761, !3762, !3763, !3764, !3765, !3797, !3798, !3799, !3802, !3805, !3806, !3807, !3808}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3373, file: !78, line: 462, baseType: !2820, size: 512)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3373, file: !78, line: 463, baseType: !3372, size: 64, offset: 512)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3373, file: !78, line: 465, baseType: !3378, size: 64, offset: 576)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !78, line: 36, flags: DIFlagFwdDecl)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3373, file: !78, line: 467, baseType: !321, size: 64, offset: 640)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3373, file: !78, line: 468, baseType: !3382, size: 64, offset: 704)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3384)
!3384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !78, line: 87, size: 384, elements: !3385)
!3385 = !{!3386, !3387, !3388, !3392, !3397, !3401}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3384, file: !78, line: 88, baseType: !321, size: 64)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3384, file: !78, line: 89, baseType: !2897, size: 64, offset: 64)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3384, file: !78, line: 90, baseType: !3389, size: 64, offset: 128)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{!299, !3372, !2854}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3384, file: !78, line: 91, baseType: !3393, size: 64, offset: 192)
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = !DISubroutineType(types: !3395)
!3395 = !{!347, !3372, !3396, !2965, !2966}
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3384, file: !78, line: 93, baseType: !3398, size: 64, offset: 256)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{null, !3372}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3384, file: !78, line: 95, baseType: !3402, size: 64, offset: 320)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3404)
!3404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !85, line: 278, size: 1472, elements: !3405)
!3405 = !{!3406, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3404, file: !85, line: 279, baseType: !3407, size: 64)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = !DISubroutineType(types: !3409)
!3409 = !{!299, !3372}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3404, file: !85, line: 280, baseType: !3398, size: 64, offset: 64)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3404, file: !85, line: 281, baseType: !3407, size: 64, offset: 128)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3404, file: !85, line: 282, baseType: !3407, size: 64, offset: 192)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3404, file: !85, line: 283, baseType: !3407, size: 64, offset: 256)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3404, file: !85, line: 284, baseType: !3407, size: 64, offset: 320)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3404, file: !85, line: 285, baseType: !3407, size: 64, offset: 384)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3404, file: !85, line: 286, baseType: !3407, size: 64, offset: 448)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3404, file: !85, line: 287, baseType: !3407, size: 64, offset: 512)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3404, file: !85, line: 288, baseType: !3407, size: 64, offset: 576)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3404, file: !85, line: 289, baseType: !3407, size: 64, offset: 640)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3404, file: !85, line: 290, baseType: !3407, size: 64, offset: 704)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3404, file: !85, line: 291, baseType: !3407, size: 64, offset: 768)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3404, file: !85, line: 292, baseType: !3407, size: 64, offset: 832)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3404, file: !85, line: 293, baseType: !3407, size: 64, offset: 896)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3404, file: !85, line: 294, baseType: !3407, size: 64, offset: 960)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3404, file: !85, line: 295, baseType: !3407, size: 64, offset: 1024)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3404, file: !85, line: 296, baseType: !3407, size: 64, offset: 1088)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3404, file: !85, line: 297, baseType: !3407, size: 64, offset: 1152)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3404, file: !85, line: 298, baseType: !3407, size: 64, offset: 1216)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3404, file: !85, line: 299, baseType: !3407, size: 64, offset: 1280)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3404, file: !85, line: 300, baseType: !3407, size: 64, offset: 1344)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3404, file: !85, line: 301, baseType: !3407, size: 64, offset: 1408)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3373, file: !78, line: 470, baseType: !3433, size: 64, offset: 768)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3435, line: 82, size: 1408, elements: !3436)
!3435 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3436 = !{!3437, !3438, !3439, !3440, !3441, !3442, !3443, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3500, !3503, !3504}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3434, file: !3435, line: 83, baseType: !321, size: 64)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3434, file: !3435, line: 84, baseType: !321, size: 64, offset: 64)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3434, file: !3435, line: 85, baseType: !3372, size: 64, offset: 128)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3434, file: !3435, line: 86, baseType: !2897, size: 64, offset: 192)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3434, file: !3435, line: 87, baseType: !2897, size: 64, offset: 256)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3434, file: !3435, line: 88, baseType: !2897, size: 64, offset: 320)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3434, file: !3435, line: 90, baseType: !3444, size: 64, offset: 384)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DISubroutineType(types: !3446)
!3446 = !{!299, !3372, !3447}
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !72, line: 95, size: 1152, elements: !3449)
!3449 = !{!3450, !3451, !3452, !3453, !3454, !3455, !3456, !3460, !3464, !3465, !3466, !3467, !3468, !3476, !3477, !3478, !3479, !3480, !3481}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3448, file: !72, line: 96, baseType: !321, size: 64)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3448, file: !72, line: 97, baseType: !3433, size: 64, offset: 64)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3448, file: !72, line: 99, baseType: !413, size: 64, offset: 128)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3448, file: !72, line: 100, baseType: !321, size: 64, offset: 192)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3448, file: !72, line: 102, baseType: !366, size: 8, offset: 256)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3448, file: !72, line: 103, baseType: !71, size: 32, offset: 288)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3448, file: !72, line: 105, baseType: !3457, size: 64, offset: 320)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3459)
!3459 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !72, line: 105, flags: DIFlagFwdDecl)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3448, file: !72, line: 106, baseType: !3461, size: 64, offset: 384)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3463)
!3463 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !72, line: 106, flags: DIFlagFwdDecl)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3448, file: !72, line: 108, baseType: !3407, size: 64, offset: 448)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3448, file: !72, line: 109, baseType: !3398, size: 64, offset: 512)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3448, file: !72, line: 110, baseType: !3407, size: 64, offset: 576)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3448, file: !72, line: 111, baseType: !3398, size: 64, offset: 640)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3448, file: !72, line: 112, baseType: !3469, size: 64, offset: 704)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = !DISubroutineType(types: !3471)
!3471 = !{!299, !3372, !3472}
!3472 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !85, line: 52, baseType: !3473)
!3473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !85, line: 50, size: 32, elements: !3474)
!3474 = !{!3475}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3473, file: !85, line: 51, baseType: !299, size: 32)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3448, file: !72, line: 113, baseType: !3407, size: 64, offset: 768)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3448, file: !72, line: 114, baseType: !2897, size: 64, offset: 832)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3448, file: !72, line: 115, baseType: !2897, size: 64, offset: 896)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3448, file: !72, line: 117, baseType: !3402, size: 64, offset: 960)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3448, file: !72, line: 118, baseType: !3398, size: 64, offset: 1024)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3448, file: !72, line: 120, baseType: !3482, size: 64, offset: 1088)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !72, line: 120, flags: DIFlagFwdDecl)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3434, file: !3435, line: 91, baseType: !3389, size: 64, offset: 448)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3434, file: !3435, line: 92, baseType: !3407, size: 64, offset: 512)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3434, file: !3435, line: 93, baseType: !3398, size: 64, offset: 576)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3434, file: !3435, line: 94, baseType: !3407, size: 64, offset: 640)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3434, file: !3435, line: 95, baseType: !3398, size: 64, offset: 704)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3434, file: !3435, line: 97, baseType: !3407, size: 64, offset: 768)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3434, file: !3435, line: 98, baseType: !3407, size: 64, offset: 832)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3434, file: !3435, line: 100, baseType: !3469, size: 64, offset: 896)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3434, file: !3435, line: 101, baseType: !3407, size: 64, offset: 960)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3434, file: !3435, line: 103, baseType: !3407, size: 64, offset: 1024)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3434, file: !3435, line: 105, baseType: !3407, size: 64, offset: 1088)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3434, file: !3435, line: 107, baseType: !3402, size: 64, offset: 1152)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3434, file: !3435, line: 109, baseType: !3497, size: 64, offset: 1216)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3499)
!3499 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3435, line: 109, flags: DIFlagFwdDecl)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3434, file: !3435, line: 111, baseType: !3501, size: 64, offset: 1280)
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3502, size: 64)
!3502 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3435, line: 111, flags: DIFlagFwdDecl)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3434, file: !3435, line: 112, baseType: !428, offset: 1344)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3434, file: !3435, line: 114, baseType: !366, size: 8, offset: 1344)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3373, file: !78, line: 471, baseType: !3447, size: 64, offset: 832)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3373, file: !78, line: 473, baseType: !161, size: 64, offset: 896)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3373, file: !78, line: 475, baseType: !161, size: 64, offset: 960)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3373, file: !78, line: 480, baseType: !511, size: 192, offset: 1024)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3373, file: !78, line: 484, baseType: !3510, size: 576, offset: 1216)
!3510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !78, line: 361, size: 576, elements: !3511)
!3511 = !{!3512, !3513, !3514, !3515, !3516, !3517}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3510, file: !78, line: 362, baseType: !182, size: 128)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3510, file: !78, line: 363, baseType: !182, size: 128, offset: 128)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3510, file: !78, line: 364, baseType: !182, size: 128, offset: 256)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3510, file: !78, line: 365, baseType: !182, size: 128, offset: 384)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3510, file: !78, line: 366, baseType: !366, size: 8, offset: 512)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3510, file: !78, line: 367, baseType: !77, size: 32, offset: 544)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3373, file: !78, line: 485, baseType: !3519, size: 2304, offset: 1792)
!3519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !85, line: 565, size: 2304, elements: !3520)
!3520 = !{!3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3616, !3620}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3519, file: !85, line: 566, baseType: !3472, size: 32)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3519, file: !85, line: 567, baseType: !6, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3519, file: !85, line: 568, baseType: !6, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3519, file: !85, line: 569, baseType: !366, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3519, file: !85, line: 570, baseType: !366, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3519, file: !85, line: 571, baseType: !366, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3519, file: !85, line: 572, baseType: !366, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3519, file: !85, line: 573, baseType: !366, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3519, file: !85, line: 574, baseType: !366, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3519, file: !85, line: 575, baseType: !366, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3519, file: !85, line: 576, baseType: !366, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3519, file: !85, line: 577, baseType: !259, size: 32, offset: 64)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3519, file: !85, line: 578, baseType: !283, offset: 96)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3519, file: !85, line: 580, baseType: !182, size: 128, offset: 128)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3519, file: !85, line: 581, baseType: !1101, size: 192, offset: 256)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3519, file: !85, line: 582, baseType: !3537, size: 64, offset: 448)
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3539, line: 43, size: 1472, elements: !3540)
!3539 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3540 = !{!3541, !3542, !3543, !3544, !3545, !3548, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3538, file: !3539, line: 44, baseType: !321, size: 64)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3538, file: !3539, line: 45, baseType: !299, size: 32, offset: 64)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3538, file: !3539, line: 46, baseType: !182, size: 128, offset: 128)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3538, file: !3539, line: 47, baseType: !283, offset: 256)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3538, file: !3539, line: 48, baseType: !3546, size: 64, offset: 256)
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3547 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !85, line: 533, flags: DIFlagFwdDecl)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3538, file: !3539, line: 49, baseType: !3549, size: 320, offset: 320)
!3549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3550, line: 11, size: 320, elements: !3551)
!3550 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3551 = !{!3552, !3553, !3554, !3559}
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3549, file: !3550, line: 16, baseType: !422, size: 128)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3549, file: !3550, line: 17, baseType: !160, size: 64, offset: 128)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3549, file: !3550, line: 18, baseType: !3555, size: 64, offset: 192)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = !DISubroutineType(types: !3557)
!3557 = !{null, !3558}
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3549, file: !3550, line: 19, baseType: !259, size: 32, offset: 256)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3538, file: !3539, line: 50, baseType: !160, size: 64, offset: 640)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3538, file: !3539, line: 51, baseType: !896, size: 64, offset: 704)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3538, file: !3539, line: 52, baseType: !896, size: 64, offset: 768)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3538, file: !3539, line: 53, baseType: !896, size: 64, offset: 832)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3538, file: !3539, line: 54, baseType: !896, size: 64, offset: 896)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3538, file: !3539, line: 55, baseType: !896, size: 64, offset: 960)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3538, file: !3539, line: 56, baseType: !160, size: 64, offset: 1024)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3538, file: !3539, line: 57, baseType: !160, size: 64, offset: 1088)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3538, file: !3539, line: 58, baseType: !160, size: 64, offset: 1152)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3538, file: !3539, line: 59, baseType: !160, size: 64, offset: 1216)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3538, file: !3539, line: 60, baseType: !160, size: 64, offset: 1280)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3538, file: !3539, line: 61, baseType: !3372, size: 64, offset: 1344)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3538, file: !3539, line: 62, baseType: !366, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3538, file: !3539, line: 63, baseType: !366, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3519, file: !85, line: 583, baseType: !366, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3519, file: !85, line: 584, baseType: !366, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3519, file: !85, line: 585, baseType: !366, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3519, file: !85, line: 586, baseType: !6, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3519, file: !85, line: 587, baseType: !6, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3519, file: !85, line: 592, baseType: !888, size: 512, offset: 576)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3519, file: !85, line: 593, baseType: !165, size: 64, offset: 1088)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3519, file: !85, line: 594, baseType: !1570, size: 256, offset: 1152)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3519, file: !85, line: 595, baseType: !659, size: 128, offset: 1408)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3519, file: !85, line: 596, baseType: !3546, size: 64, offset: 1536)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3519, file: !85, line: 597, baseType: !722, size: 32, offset: 1600)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3519, file: !85, line: 598, baseType: !722, size: 32, offset: 1632)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3519, file: !85, line: 599, baseType: !6, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3519, file: !85, line: 600, baseType: !6, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3519, file: !85, line: 601, baseType: !6, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3519, file: !85, line: 602, baseType: !6, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3519, file: !85, line: 603, baseType: !6, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3519, file: !85, line: 604, baseType: !366, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3519, file: !85, line: 605, baseType: !6, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3519, file: !85, line: 606, baseType: !6, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3519, file: !85, line: 607, baseType: !6, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3519, file: !85, line: 608, baseType: !6, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3519, file: !85, line: 609, baseType: !6, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3519, file: !85, line: 610, baseType: !6, size: 32, offset: 1696)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3519, file: !85, line: 611, baseType: !84, size: 32, offset: 1728)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3519, file: !85, line: 612, baseType: !92, size: 32, offset: 1760)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3519, file: !85, line: 613, baseType: !299, size: 32, offset: 1792)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3519, file: !85, line: 614, baseType: !299, size: 32, offset: 1824)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3519, file: !85, line: 615, baseType: !165, size: 64, offset: 1856)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3519, file: !85, line: 616, baseType: !165, size: 64, offset: 1920)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3519, file: !85, line: 617, baseType: !165, size: 64, offset: 1984)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3519, file: !85, line: 618, baseType: !165, size: 64, offset: 2048)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3519, file: !85, line: 620, baseType: !3607, size: 64, offset: 2112)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !85, line: 536, size: 256, elements: !3609)
!3609 = !{!3610, !3611, !3612, !3613}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3608, file: !85, line: 537, baseType: !283)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3608, file: !85, line: 538, baseType: !6, size: 32)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3608, file: !85, line: 540, baseType: !182, size: 128, offset: 64)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3608, file: !85, line: 543, baseType: !3614, size: 64, offset: 192)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !85, line: 534, flags: DIFlagFwdDecl)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3519, file: !85, line: 621, baseType: !3617, size: 64, offset: 2176)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = !DISubroutineType(types: !3619)
!3619 = !{null, !3372, !1044}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3519, file: !85, line: 622, baseType: !3621, size: 64, offset: 2240)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !85, line: 622, flags: DIFlagFwdDecl)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3373, file: !78, line: 486, baseType: !3624, size: 64, offset: 4096)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !85, line: 642, size: 1792, elements: !3626)
!3626 = !{!3627, !3628, !3629, !3633, !3634, !3635}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3625, file: !85, line: 643, baseType: !3404, size: 1472)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3625, file: !85, line: 644, baseType: !3407, size: 64, offset: 1472)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3625, file: !85, line: 645, baseType: !3630, size: 64, offset: 1536)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DISubroutineType(types: !3632)
!3632 = !{null, !3372, !366}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3625, file: !85, line: 646, baseType: !3407, size: 64, offset: 1600)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3625, file: !85, line: 647, baseType: !3398, size: 64, offset: 1664)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3625, file: !85, line: 648, baseType: !3398, size: 64, offset: 1728)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !3373, file: !78, line: 493, baseType: !3637, size: 64, offset: 4160)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3639, line: 13, flags: DIFlagFwdDecl)
!3639 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/lizy2001/genbc/linux")
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !3373, file: !78, line: 499, baseType: !182, size: 128, offset: 4224)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3373, file: !78, line: 502, baseType: !3642, size: 64, offset: 4352)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3373, file: !78, line: 504, baseType: !3644, size: 64, offset: 4416)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3373, file: !78, line: 505, baseType: !165, size: 64, offset: 4480)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3373, file: !78, line: 510, baseType: !165, size: 64, offset: 4544)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3373, file: !78, line: 511, baseType: !3648, size: 64, offset: 4608)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3650)
!3650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !3651, line: 20, size: 256, elements: !3652)
!3651 = !DIFile(filename: "./include/linux/dma-direct.h", directory: "/home/lizy2001/genbc/linux")
!3652 = !{!3653, !3654, !3655, !3656}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_start", scope: !3650, file: !3651, line: 21, baseType: !1739, size: 64)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "dma_start", scope: !3650, file: !3651, line: 22, baseType: !164, size: 64, offset: 64)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3650, file: !3651, line: 23, baseType: !165, size: 64, offset: 128)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3650, file: !3651, line: 24, baseType: !165, size: 64, offset: 192)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3373, file: !78, line: 513, baseType: !3658, size: 64, offset: 4672)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !78, line: 288, size: 128, elements: !3660)
!3660 = !{!3661, !3662}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3659, file: !78, line: 293, baseType: !6, size: 32)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3659, file: !78, line: 294, baseType: !160, size: 64, offset: 64)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3373, file: !78, line: 515, baseType: !182, size: 128, offset: 4736)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3373, file: !78, line: 526, baseType: !3665, offset: 4864)
!3665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3666, line: 5, elements: !297)
!3666 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3373, file: !78, line: 528, baseType: !3668, size: 64, offset: 4864)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3670, line: 14, flags: DIFlagFwdDecl)
!3670 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3373, file: !78, line: 529, baseType: !3672, size: 64, offset: 4928)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3674, line: 17, size: 192, elements: !3675)
!3674 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3675 = !{!3676, !3677, !3760}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3673, file: !3674, line: 18, baseType: !3672, size: 64)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3673, file: !3674, line: 19, baseType: !3678, size: 64, offset: 64)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3680)
!3680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3674, line: 110, size: 1152, elements: !3681)
!3681 = !{!3682, !3686, !3690, !3696, !3702, !3706, !3710, !3715, !3719, !3720, !3724, !3728, !3732, !3743, !3744, !3745, !3746, !3756}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3680, file: !3674, line: 111, baseType: !3683, size: 64)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{!3672, !3672}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3680, file: !3674, line: 112, baseType: !3687, size: 64, offset: 64)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{null, !3672}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3680, file: !3674, line: 113, baseType: !3691, size: 64, offset: 128)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!366, !3694}
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3673)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3680, file: !3674, line: 114, baseType: !3697, size: 64, offset: 192)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!1741, !3694, !3700}
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3373)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3680, file: !3674, line: 116, baseType: !3703, size: 64, offset: 256)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!366, !3694, !321}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3680, file: !3674, line: 118, baseType: !3707, size: 64, offset: 320)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{!299, !3694, !321, !6, !161, !502}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3680, file: !3674, line: 123, baseType: !3711, size: 64, offset: 384)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{!299, !3694, !321, !3714, !502}
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3680, file: !3674, line: 126, baseType: !3716, size: 64, offset: 448)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = !DISubroutineType(types: !3718)
!3718 = !{!321, !3694}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3680, file: !3674, line: 127, baseType: !3716, size: 64, offset: 512)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3680, file: !3674, line: 128, baseType: !3721, size: 64, offset: 576)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{!3672, !3694}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3680, file: !3674, line: 130, baseType: !3725, size: 64, offset: 640)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{!3672, !3694, !3672}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3680, file: !3674, line: 133, baseType: !3729, size: 64, offset: 704)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!3672, !3694, !321}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3680, file: !3674, line: 135, baseType: !3733, size: 64, offset: 768)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!299, !3694, !321, !321, !6, !6, !3736}
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3674, line: 43, size: 640, elements: !3738)
!3738 = !{!3739, !3740, !3741}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3737, file: !3674, line: 44, baseType: !3672, size: 64)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3737, file: !3674, line: 45, baseType: !6, size: 32, offset: 64)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3737, file: !3674, line: 46, baseType: !3742, size: 512, offset: 128)
!3742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 512, elements: !926)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3680, file: !3674, line: 140, baseType: !3725, size: 64, offset: 832)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3680, file: !3674, line: 143, baseType: !3721, size: 64, offset: 896)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3680, file: !3674, line: 145, baseType: !3683, size: 64, offset: 960)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3680, file: !3674, line: 146, baseType: !3747, size: 64, offset: 1024)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{!299, !3694, !3750}
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3674, line: 29, size: 128, elements: !3752)
!3752 = !{!3753, !3754, !3755}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3751, file: !3674, line: 30, baseType: !6, size: 32)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3751, file: !3674, line: 31, baseType: !6, size: 32, offset: 32)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3751, file: !3674, line: 32, baseType: !3694, size: 64, offset: 64)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3680, file: !3674, line: 148, baseType: !3757, size: 64, offset: 1088)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!299, !3694, !3372}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3673, file: !3674, line: 20, baseType: !3372, size: 64, offset: 128)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3373, file: !78, line: 534, baseType: !380, size: 32, offset: 4992)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3373, file: !78, line: 535, baseType: !259, size: 32, offset: 5024)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3373, file: !78, line: 537, baseType: !283, offset: 5056)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3373, file: !78, line: 538, baseType: !182, size: 128, offset: 5056)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3373, file: !78, line: 540, baseType: !3766, size: 64, offset: 5184)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3768, line: 54, size: 960, elements: !3769)
!3768 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3769 = !{!3770, !3771, !3772, !3773, !3774, !3775, !3776, !3780, !3784, !3785, !3786, !3787, !3791, !3795, !3796}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3767, file: !3768, line: 55, baseType: !321, size: 64)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3767, file: !3768, line: 56, baseType: !413, size: 64, offset: 64)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3767, file: !3768, line: 58, baseType: !2897, size: 64, offset: 128)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3767, file: !3768, line: 59, baseType: !2897, size: 64, offset: 192)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3767, file: !3768, line: 60, baseType: !2826, size: 64, offset: 256)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3767, file: !3768, line: 62, baseType: !3389, size: 64, offset: 320)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3767, file: !3768, line: 63, baseType: !3777, size: 64, offset: 384)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!347, !3372, !3396}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3767, file: !3768, line: 65, baseType: !3781, size: 64, offset: 448)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{null, !3766}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3767, file: !3768, line: 66, baseType: !3398, size: 64, offset: 512)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3767, file: !3768, line: 68, baseType: !3407, size: 64, offset: 576)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3767, file: !3768, line: 70, baseType: !2933, size: 64, offset: 640)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3767, file: !3768, line: 71, baseType: !3788, size: 64, offset: 704)
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = !DISubroutineType(types: !3790)
!3790 = !{!1741, !3372}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3767, file: !3768, line: 73, baseType: !3792, size: 64, offset: 768)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DISubroutineType(types: !3794)
!3794 = !{null, !3372, !2965, !2966}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3767, file: !3768, line: 75, baseType: !3402, size: 64, offset: 832)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3767, file: !3768, line: 77, baseType: !3501, size: 64, offset: 896)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3373, file: !78, line: 541, baseType: !2897, size: 64, offset: 5248)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3373, file: !78, line: 543, baseType: !3398, size: 64, offset: 5312)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3373, file: !78, line: 544, baseType: !3800, size: 64, offset: 5376)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !78, line: 45, flags: DIFlagFwdDecl)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3373, file: !78, line: 545, baseType: !3803, size: 64, offset: 5440)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !78, line: 47, flags: DIFlagFwdDecl)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3373, file: !78, line: 547, baseType: !366, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3373, file: !78, line: 548, baseType: !366, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3373, file: !78, line: 549, baseType: !366, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3373, file: !78, line: 550, baseType: !366, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3365, file: !3366, line: 18, baseType: !3811, size: 64, offset: 64)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{null, !3372, !502, !161, !164, !160}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_pages", scope: !3365, file: !3366, line: 20, baseType: !3815, size: 64, offset: 128)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DISubroutineType(types: !3817)
!3817 = !{!170, !3372, !502, !3809, !98, !162}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "free_pages", scope: !3365, file: !3366, line: 23, baseType: !3819, size: 64, offset: 192)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = !DISubroutineType(types: !3821)
!3821 = !{null, !3372, !502, !170, !164, !98}
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_noncoherent", scope: !3365, file: !3366, line: 25, baseType: !3823, size: 64, offset: 256)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = !DISubroutineType(types: !3825)
!3825 = !{!161, !3372, !502, !3809, !98, !162}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "free_noncoherent", scope: !3365, file: !3366, line: 28, baseType: !3827, size: 64, offset: 320)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DISubroutineType(types: !3829)
!3829 = !{null, !3372, !502, !161, !164, !98}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3365, file: !3366, line: 30, baseType: !3831, size: 64, offset: 384)
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = !DISubroutineType(types: !3833)
!3833 = !{!299, !3372, !675, !161, !164, !502, !160}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "get_sgtable", scope: !3365, file: !3366, line: 33, baseType: !3835, size: 64, offset: 448)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{!299, !3372, !3838, !161, !164, !502, !160}
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sg_table", file: !3840, line: 42, size: 128, elements: !3841)
!3840 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/lizy2001/genbc/linux")
!3841 = !{!3842, !3851, !3852}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "sgl", scope: !3839, file: !3840, line: 43, baseType: !3843, size: 64)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !3840, line: 11, size: 256, elements: !3845)
!3845 = !{!3846, !3847, !3848, !3849, !3850}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !3844, file: !3840, line: 12, baseType: !160, size: 64)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3844, file: !3840, line: 13, baseType: !6, size: 32, offset: 64)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3844, file: !3840, line: 14, baseType: !6, size: 32, offset: 96)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !3844, file: !3840, line: 15, baseType: !164, size: 64, offset: 128)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !3844, file: !3840, line: 17, baseType: !6, size: 32, offset: 192)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "nents", scope: !3839, file: !3840, line: 44, baseType: !6, size: 32, offset: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "orig_nents", scope: !3839, file: !3840, line: 45, baseType: !6, size: 32, offset: 96)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "map_page", scope: !3365, file: !3366, line: 37, baseType: !3854, size: 64, offset: 512)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = !DISubroutineType(types: !3856)
!3856 = !{!164, !3372, !170, !160, !502, !98, !160}
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_page", scope: !3365, file: !3366, line: 40, baseType: !3858, size: 64, offset: 576)
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = !DISubroutineType(types: !3860)
!3860 = !{null, !3372, !164, !502, !98, !160}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "map_sg", scope: !3365, file: !3366, line: 47, baseType: !3862, size: 64, offset: 640)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = !DISubroutineType(types: !3864)
!3864 = !{!299, !3372, !3843, !299, !98, !160}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_sg", scope: !3365, file: !3366, line: 49, baseType: !3866, size: 64, offset: 704)
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3867 = !DISubroutineType(types: !3868)
!3868 = !{null, !3372, !3843, !299, !98, !160}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "map_resource", scope: !3365, file: !3366, line: 51, baseType: !3870, size: 64, offset: 768)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{!164, !3372, !1739, !502, !98, !160}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_resource", scope: !3365, file: !3366, line: 54, baseType: !3858, size: 64, offset: 832)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "sync_single_for_cpu", scope: !3365, file: !3366, line: 57, baseType: !3875, size: 64, offset: 896)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{null, !3372, !164, !502, !98}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "sync_single_for_device", scope: !3365, file: !3366, line: 59, baseType: !3875, size: 64, offset: 960)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "sync_sg_for_cpu", scope: !3365, file: !3366, line: 62, baseType: !3880, size: 64, offset: 1024)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = !DISubroutineType(types: !3882)
!3882 = !{null, !3372, !3843, !299, !98}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "sync_sg_for_device", scope: !3365, file: !3366, line: 64, baseType: !3880, size: 64, offset: 1088)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "cache_sync", scope: !3365, file: !3366, line: 66, baseType: !3885, size: 64, offset: 1152)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{null, !3372, !161, !502, !98}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "dma_supported", scope: !3365, file: !3366, line: 68, baseType: !3889, size: 64, offset: 1216)
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = !DISubroutineType(types: !3891)
!3891 = !{!299, !3372, !165}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "get_required_mask", scope: !3365, file: !3366, line: 69, baseType: !3893, size: 64, offset: 1280)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DISubroutineType(types: !3895)
!3895 = !{!165, !3372}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "max_mapping_size", scope: !3365, file: !3366, line: 70, baseType: !3897, size: 64, offset: 1344)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{!502, !3372}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "get_merge_boundary", scope: !3365, file: !3366, line: 71, baseType: !3901, size: 64, offset: 1408)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{!160, !3372}
!3904 = !DIGlobalVariableExpression(var: !3905, expr: !DIExpression())
!3905 = distinct !DIGlobalVariable(name: "xen_io_tlb_start", scope: !2, file: !3, line: 49, type: !347, isLocal: true, isDefinition: true)
!3906 = !DIGlobalVariableExpression(var: !3907, expr: !DIExpression())
!3907 = distinct !DIGlobalVariable(name: "xen_io_tlb_end", scope: !2, file: !3, line: 49, type: !347, isLocal: true, isDefinition: true)
!3908 = !{i32 7, !"Dwarf Version", i32 4}
!3909 = !{i32 2, !"Debug Info Version", i32 3}
!3910 = !{i32 1, !"wchar_size", i32 2}
!3911 = !{i32 1, !"Code Model", i32 2}
!3912 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!3913 = distinct !DISubprogram(name: "xen_swiotlb_init", scope: !3, file: !3, line: 180, type: !3914, scopeLine: 181, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !297)
!3914 = !DISubroutineType(types: !3915)
!3915 = !{!299, !299, !366}
!3916 = !DILocalVariable(name: "verbose", arg: 1, scope: !3913, file: !3, line: 180, type: !299)
!3917 = !DILocation(line: 180, column: 32, scope: !3913)
!3918 = !DILocalVariable(name: "early", arg: 2, scope: !3913, file: !3, line: 180, type: !366)
!3919 = !DILocation(line: 180, column: 46, scope: !3913)
!3920 = !DILocalVariable(name: "bytes", scope: !3913, file: !3, line: 182, type: !160)
!3921 = !DILocation(line: 182, column: 16, scope: !3913)
!3922 = !DILocalVariable(name: "order", scope: !3913, file: !3, line: 182, type: !160)
!3923 = !DILocation(line: 182, column: 23, scope: !3913)
!3924 = !DILocalVariable(name: "rc", scope: !3913, file: !3, line: 183, type: !299)
!3925 = !DILocation(line: 183, column: 6, scope: !3913)
!3926 = !DILocalVariable(name: "m_ret", scope: !3913, file: !3, line: 184, type: !5)
!3927 = !DILocation(line: 184, column: 23, scope: !3913)
!3928 = !DILocalVariable(name: "repeat", scope: !3913, file: !3, line: 185, type: !6)
!3929 = !DILocation(line: 185, column: 15, scope: !3913)
!3930 = !DILocation(line: 187, column: 22, scope: !3913)
!3931 = !DILocation(line: 187, column: 20, scope: !3913)
!3932 = !DILocation(line: 187, column: 2, scope: !3913)
!3933 = !DILabel(scope: !3913, name: "retry", file: !3, line: 188)
!3934 = !DILocation(line: 188, column: 1, scope: !3913)
!3935 = !DILocation(line: 189, column: 25, scope: !3913)
!3936 = !DILocation(line: 189, column: 10, scope: !3913)
!3937 = !DILocation(line: 189, column: 8, scope: !3913)
!3938 = !DILocation(line: 190, column: 20, scope: !3913)
!3939 = !DILocation(line: 190, column: 38, scope: !3913)
!3940 = !DILocation(line: 190, column: 10, scope: !3913)
!3941 = !DILocation(line: 190, column: 8, scope: !3913)
!3942 = !DILocation(line: 195, column: 6, scope: !3943)
!3943 = distinct !DILexicalBlock(scope: !3913, file: !3, line: 195, column: 6)
!3944 = !DILocation(line: 195, column: 19, scope: !3943)
!3945 = !DILocation(line: 195, column: 6, scope: !3913)
!3946 = !DILocation(line: 196, column: 35, scope: !3947)
!3947 = distinct !DILexicalBlock(scope: !3943, file: !3, line: 195, column: 25)
!3948 = !DILocation(line: 196, column: 22, scope: !3947)
!3949 = !DILocation(line: 196, column: 20, scope: !3947)
!3950 = !DILocation(line: 197, column: 3, scope: !3947)
!3951 = !DILocation(line: 203, column: 6, scope: !3952)
!3952 = distinct !DILexicalBlock(scope: !3913, file: !3, line: 203, column: 6)
!3953 = !DILocation(line: 203, column: 6, scope: !3913)
!3954 = !DILocation(line: 204, column: 37, scope: !3955)
!3955 = distinct !DILexicalBlock(scope: !3952, file: !3, line: 203, column: 13)
!3956 = !DILocation(line: 204, column: 22, scope: !3955)
!3957 = !DILocation(line: 204, column: 20, scope: !3955)
!3958 = !DILocation(line: 206, column: 8, scope: !3959)
!3959 = distinct !DILexicalBlock(scope: !3955, file: !3, line: 206, column: 7)
!3960 = !DILocation(line: 206, column: 7, scope: !3955)
!3961 = !DILocation(line: 208, column: 20, scope: !3959)
!3962 = !DILocation(line: 207, column: 4, scope: !3959)
!3963 = !DILocation(line: 209, column: 2, scope: !3955)
!3964 = !DILocation(line: 212, column: 3, scope: !3965)
!3965 = distinct !DILexicalBlock(scope: !3952, file: !3, line: 209, column: 9)
!3966 = !DILocation(line: 212, column: 29, scope: !3965)
!3967 = !DILocation(line: 212, column: 26, scope: !3965)
!3968 = !DILocation(line: 212, column: 36, scope: !3965)
!3969 = !DILocation(line: 213, column: 58, scope: !3970)
!3970 = distinct !DILexicalBlock(scope: !3965, file: !3, line: 212, column: 56)
!3971 = !DILocation(line: 213, column: 31, scope: !3970)
!3972 = !DILocation(line: 213, column: 23, scope: !3970)
!3973 = !DILocation(line: 213, column: 21, scope: !3970)
!3974 = !DILocation(line: 214, column: 8, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !3970, file: !3, line: 214, column: 8)
!3976 = !DILocation(line: 214, column: 8, scope: !3970)
!3977 = !DILocation(line: 215, column: 5, scope: !3975)
!3978 = !DILocation(line: 216, column: 9, scope: !3970)
!3979 = distinct !{!3979, !3964, !3980}
!3980 = !DILocation(line: 217, column: 3, scope: !3965)
!3981 = !DILocation(line: 218, column: 7, scope: !3982)
!3982 = distinct !DILexicalBlock(scope: !3965, file: !3, line: 218, column: 7)
!3983 = !DILocation(line: 218, column: 26, scope: !3982)
!3984 = !DILocation(line: 218, column: 16, scope: !3982)
!3985 = !DILocation(line: 218, column: 13, scope: !3982)
!3986 = !DILocation(line: 218, column: 7, scope: !3965)
!3987 = !DILocation(line: 219, column: 4, scope: !3988)
!3988 = distinct !DILexicalBlock(scope: !3982, file: !3, line: 218, column: 34)
!3989 = !DILocation(line: 221, column: 42, scope: !3988)
!3990 = !DILocation(line: 221, column: 39, scope: !3988)
!3991 = !DILocation(line: 221, column: 24, scope: !3988)
!3992 = !DILocation(line: 221, column: 22, scope: !3988)
!3993 = !DILocation(line: 222, column: 12, scope: !3988)
!3994 = !DILocation(line: 222, column: 30, scope: !3988)
!3995 = !DILocation(line: 222, column: 10, scope: !3988)
!3996 = !DILocation(line: 223, column: 3, scope: !3988)
!3997 = !DILocation(line: 225, column: 7, scope: !3998)
!3998 = distinct !DILexicalBlock(scope: !3913, file: !3, line: 225, column: 6)
!3999 = !DILocation(line: 225, column: 6, scope: !3913)
!4000 = !DILocation(line: 226, column: 9, scope: !4001)
!4001 = distinct !DILexicalBlock(scope: !3998, file: !3, line: 225, column: 25)
!4002 = !DILocation(line: 227, column: 3, scope: !4001)
!4003 = !DILocation(line: 232, column: 25, scope: !3913)
!4004 = !DILocation(line: 233, column: 11, scope: !3913)
!4005 = !DILocation(line: 234, column: 11, scope: !3913)
!4006 = !DILocation(line: 232, column: 7, scope: !3913)
!4007 = !DILocation(line: 232, column: 5, scope: !3913)
!4008 = !DILocation(line: 235, column: 6, scope: !4009)
!4009 = distinct !DILexicalBlock(scope: !3913, file: !3, line: 235, column: 6)
!4010 = !DILocation(line: 235, column: 6, scope: !3913)
!4011 = !DILocation(line: 236, column: 7, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !4013, file: !3, line: 236, column: 7)
!4013 = distinct !DILexicalBlock(scope: !4009, file: !3, line: 235, column: 10)
!4014 = !DILocation(line: 236, column: 7, scope: !4013)
!4015 = !DILocation(line: 237, column: 18, scope: !4012)
!4016 = !DILocation(line: 238, column: 11, scope: !4012)
!4017 = !DILocation(line: 237, column: 4, scope: !4012)
!4018 = !DILocation(line: 240, column: 30, scope: !4019)
!4019 = distinct !DILexicalBlock(scope: !4012, file: !3, line: 239, column: 8)
!4020 = !DILocation(line: 240, column: 15, scope: !4019)
!4021 = !DILocation(line: 240, column: 48, scope: !4019)
!4022 = !DILocation(line: 240, column: 4, scope: !4019)
!4023 = !DILocation(line: 241, column: 21, scope: !4019)
!4024 = !DILocation(line: 243, column: 9, scope: !4013)
!4025 = !DILocation(line: 244, column: 3, scope: !4013)
!4026 = !DILocation(line: 246, column: 6, scope: !4027)
!4027 = distinct !DILexicalBlock(scope: !3913, file: !3, line: 246, column: 6)
!4028 = !DILocation(line: 246, column: 6, scope: !3913)
!4029 = !DILocation(line: 247, column: 29, scope: !4030)
!4030 = distinct !DILexicalBlock(scope: !4031, file: !3, line: 247, column: 7)
!4031 = distinct !DILexicalBlock(scope: !4027, file: !3, line: 246, column: 13)
!4032 = !DILocation(line: 247, column: 47, scope: !4030)
!4033 = !DILocation(line: 248, column: 5, scope: !4030)
!4034 = !DILocation(line: 247, column: 7, scope: !4030)
!4035 = !DILocation(line: 247, column: 7, scope: !4031)
!4036 = !DILocation(line: 249, column: 4, scope: !4030)
!4037 = !DILocation(line: 250, column: 6, scope: !4031)
!4038 = !DILocation(line: 251, column: 2, scope: !4031)
!4039 = !DILocation(line: 252, column: 35, scope: !4027)
!4040 = !DILocation(line: 252, column: 53, scope: !4027)
!4041 = !DILocation(line: 252, column: 8, scope: !4027)
!4042 = !DILocation(line: 252, column: 6, scope: !4027)
!4043 = !DILabel(scope: !3913, name: "end", file: !3, line: 254)
!4044 = !DILocation(line: 254, column: 1, scope: !3913)
!4045 = !DILocation(line: 255, column: 19, scope: !3913)
!4046 = !DILocation(line: 255, column: 38, scope: !3913)
!4047 = !DILocation(line: 255, column: 36, scope: !3913)
!4048 = !DILocation(line: 255, column: 17, scope: !3913)
!4049 = !DILocation(line: 256, column: 7, scope: !4050)
!4050 = distinct !DILexicalBlock(scope: !3913, file: !3, line: 256, column: 6)
!4051 = !DILocation(line: 256, column: 6, scope: !3913)
!4052 = !DILocation(line: 257, column: 3, scope: !4050)
!4053 = !DILocation(line: 259, column: 9, scope: !3913)
!4054 = !DILocation(line: 259, column: 2, scope: !3913)
!4055 = !DILabel(scope: !3913, name: "error", file: !3, line: 260)
!4056 = !DILocation(line: 260, column: 1, scope: !3913)
!4057 = !DILocation(line: 261, column: 12, scope: !4058)
!4058 = distinct !DILexicalBlock(scope: !3913, file: !3, line: 261, column: 6)
!4059 = !DILocation(line: 261, column: 6, scope: !3913)
!4060 = !DILocalVariable(name: "__UNIQUE_ID___x236", scope: !4061, file: !3, line: 262, type: !160)
!4061 = distinct !DILexicalBlock(scope: !4062, file: !3, line: 262, column: 23)
!4062 = distinct !DILexicalBlock(scope: !4058, file: !3, line: 261, column: 16)
!4063 = !DILocation(line: 262, column: 23, scope: !4061)
!4064 = !DILocalVariable(name: "__UNIQUE_ID___y237", scope: !4061, file: !3, line: 262, type: !160)
!4065 = !DILocation(line: 262, column: 21, scope: !4062)
!4066 = !DILocation(line: 264, column: 3, scope: !4062)
!4067 = !DILocation(line: 266, column: 3, scope: !4062)
!4068 = !DILocation(line: 268, column: 2, scope: !3913)
!4069 = !DILocation(line: 269, column: 6, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !3913, file: !3, line: 269, column: 6)
!4071 = !DILocation(line: 269, column: 6, scope: !3913)
!4072 = !DILocation(line: 270, column: 41, scope: !4070)
!4073 = !DILocation(line: 270, column: 23, scope: !4070)
!4074 = !DILocation(line: 270, column: 49, scope: !4070)
!4075 = !DILocation(line: 270, column: 3, scope: !4070)
!4076 = !DILocation(line: 272, column: 29, scope: !4070)
!4077 = !DILocation(line: 272, column: 14, scope: !4070)
!4078 = !DILocation(line: 272, column: 47, scope: !4070)
!4079 = !DILocation(line: 272, column: 3, scope: !4070)
!4080 = !DILocation(line: 273, column: 9, scope: !3913)
!4081 = !DILocation(line: 273, column: 2, scope: !3913)
!4082 = !DILocation(line: 274, column: 1, scope: !3913)
!4083 = distinct !DISubprogram(name: "xen_set_nslabs", scope: !3, file: !3, line: 148, type: !4084, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!4084 = !DISubroutineType(types: !4085)
!4085 = !{!160, !160}
!4086 = !DILocalVariable(name: "nr_tbl", arg: 1, scope: !4083, file: !3, line: 148, type: !160)
!4087 = !DILocation(line: 148, column: 51, scope: !4083)
!4088 = !DILocation(line: 150, column: 7, scope: !4089)
!4089 = distinct !DILexicalBlock(scope: !4083, file: !3, line: 150, column: 6)
!4090 = !DILocation(line: 150, column: 6, scope: !4083)
!4091 = !DILocation(line: 151, column: 21, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !4089, file: !3, line: 150, column: 15)
!4093 = !DILocation(line: 152, column: 23, scope: !4092)
!4094 = !DILocation(line: 152, column: 21, scope: !4092)
!4095 = !DILocation(line: 153, column: 2, scope: !4092)
!4096 = !DILocation(line: 154, column: 23, scope: !4089)
!4097 = !DILocation(line: 154, column: 21, scope: !4089)
!4098 = !DILocation(line: 156, column: 9, scope: !4083)
!4099 = !DILocation(line: 156, column: 27, scope: !4083)
!4100 = !DILocation(line: 156, column: 2, scope: !4083)
!4101 = distinct !DISubprogram(name: "get_order", scope: !4102, file: !4102, line: 29, type: !4103, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!4102 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4103 = !DISubroutineType(types: !4104)
!4104 = !{!299, !160}
!4105 = !DILocalVariable(name: "x", arg: 1, scope: !4106, file: !4107, line: 366, type: !167)
!4106 = distinct !DISubprogram(name: "fls64", scope: !4107, file: !4107, line: 366, type: !4108, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!4107 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4108 = !DISubroutineType(types: !4109)
!4109 = !{!299, !167}
!4110 = !DILocation(line: 366, column: 40, scope: !4106, inlinedAt: !4111)
!4111 = distinct !DILocation(line: 46, column: 9, scope: !4101)
!4112 = !DILocalVariable(name: "bitpos", scope: !4106, file: !4107, line: 368, type: !299)
!4113 = !DILocation(line: 368, column: 6, scope: !4106, inlinedAt: !4111)
!4114 = !DILocalVariable(name: "size", arg: 1, scope: !4101, file: !4102, line: 29, type: !160)
!4115 = !DILocation(line: 29, column: 63, scope: !4101)
!4116 = !DILocation(line: 31, column: 27, scope: !4117)
!4117 = distinct !DILexicalBlock(scope: !4101, file: !4102, line: 31, column: 6)
!4118 = !DILocation(line: 31, column: 6, scope: !4117)
!4119 = !DILocation(line: 31, column: 6, scope: !4101)
!4120 = !DILocation(line: 32, column: 8, scope: !4121)
!4121 = distinct !DILexicalBlock(scope: !4122, file: !4102, line: 32, column: 7)
!4122 = distinct !DILexicalBlock(scope: !4117, file: !4102, line: 31, column: 34)
!4123 = !DILocation(line: 32, column: 7, scope: !4122)
!4124 = !DILocation(line: 33, column: 4, scope: !4121)
!4125 = !DILocation(line: 35, column: 7, scope: !4126)
!4126 = distinct !DILexicalBlock(scope: !4122, file: !4102, line: 35, column: 7)
!4127 = !DILocation(line: 35, column: 12, scope: !4126)
!4128 = !DILocation(line: 35, column: 7, scope: !4122)
!4129 = !DILocation(line: 36, column: 4, scope: !4126)
!4130 = !DILocation(line: 38, column: 10, scope: !4122)
!4131 = !DILocation(line: 38, column: 28, scope: !4122)
!4132 = !DILocation(line: 38, column: 41, scope: !4122)
!4133 = !DILocation(line: 38, column: 3, scope: !4122)
!4134 = !DILocation(line: 41, column: 6, scope: !4101)
!4135 = !DILocation(line: 42, column: 7, scope: !4101)
!4136 = !DILocation(line: 46, column: 15, scope: !4101)
!4137 = !DILocation(line: 374, column: 2, scope: !4106, inlinedAt: !4111)
!4138 = !DILocation(line: 376, column: 14, scope: !4106, inlinedAt: !4111)
!4139 = !{i32 412399}
!4140 = !DILocation(line: 377, column: 9, scope: !4106, inlinedAt: !4111)
!4141 = !DILocation(line: 377, column: 16, scope: !4106, inlinedAt: !4111)
!4142 = !DILocation(line: 46, column: 2, scope: !4101)
!4143 = !DILocation(line: 48, column: 1, scope: !4101)
!4144 = distinct !DISubprogram(name: "phys_to_virt", scope: !4145, file: !4145, line: 148, type: !4146, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!4145 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!4146 = !DISubroutineType(types: !4147)
!4147 = !{!161, !1739}
!4148 = !DILocalVariable(name: "address", arg: 1, scope: !4144, file: !4145, line: 148, type: !1739)
!4149 = !DILocation(line: 148, column: 46, scope: !4144)
!4150 = !DILocation(line: 150, column: 9, scope: !4144)
!4151 = !DILocation(line: 150, column: 2, scope: !4144)
!4152 = distinct !DISubprogram(name: "memblock_alloc", scope: !4153, file: !4153, line: 407, type: !4154, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!4153 = !DIFile(filename: "./include/linux/memblock.h", directory: "/home/lizy2001/genbc/linux")
!4154 = !DISubroutineType(types: !4155)
!4155 = !{!161, !1739, !1739}
!4156 = !DILocalVariable(name: "size", arg: 1, scope: !4152, file: !4153, line: 407, type: !1739)
!4157 = !DILocation(line: 407, column: 56, scope: !4152)
!4158 = !DILocalVariable(name: "align", arg: 2, scope: !4152, file: !4153, line: 407, type: !1739)
!4159 = !DILocation(line: 407, column: 75, scope: !4152)
!4160 = !DILocation(line: 409, column: 32, scope: !4152)
!4161 = !DILocation(line: 409, column: 38, scope: !4152)
!4162 = !DILocation(line: 409, column: 9, scope: !4152)
!4163 = !DILocation(line: 409, column: 2, scope: !4152)
!4164 = distinct !DISubprogram(name: "xen_get_swiotlb_free_pages", scope: !4165, file: !4165, line: 368, type: !4166, scopeLine: 369, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!4165 = !DIFile(filename: "./arch/x86/include/asm/xen/page.h", directory: "/home/lizy2001/genbc/linux")
!4166 = !DISubroutineType(types: !4167)
!4167 = !{!160, !6}
!4168 = !DILocalVariable(name: "order", arg: 1, scope: !4164, file: !4165, line: 368, type: !6)
!4169 = !DILocation(line: 368, column: 69, scope: !4164)
!4170 = !DILocation(line: 370, column: 40, scope: !4164)
!4171 = !DILocation(line: 370, column: 9, scope: !4164)
!4172 = !DILocation(line: 370, column: 2, scope: !4164)
!4173 = distinct !DISubprogram(name: "xen_swiotlb_fixup", scope: !3, file: !3, line: 122, type: !4174, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!4174 = !DISubroutineType(types: !4175)
!4175 = !{!299, !161, !502, !160}
!4176 = !DILocalVariable(name: "buf", arg: 1, scope: !4173, file: !3, line: 122, type: !161)
!4177 = !DILocation(line: 122, column: 25, scope: !4173)
!4178 = !DILocalVariable(name: "size", arg: 2, scope: !4173, file: !3, line: 122, type: !502)
!4179 = !DILocation(line: 122, column: 37, scope: !4173)
!4180 = !DILocalVariable(name: "nslabs", arg: 3, scope: !4173, file: !3, line: 122, type: !160)
!4181 = !DILocation(line: 122, column: 57, scope: !4173)
!4182 = !DILocalVariable(name: "i", scope: !4173, file: !3, line: 124, type: !299)
!4183 = !DILocation(line: 124, column: 6, scope: !4173)
!4184 = !DILocalVariable(name: "rc", scope: !4173, file: !3, line: 124, type: !299)
!4185 = !DILocation(line: 124, column: 9, scope: !4173)
!4186 = !DILocalVariable(name: "dma_bits", scope: !4173, file: !3, line: 125, type: !299)
!4187 = !DILocation(line: 125, column: 6, scope: !4173)
!4188 = !DILocalVariable(name: "dma_handle", scope: !4173, file: !3, line: 126, type: !164)
!4189 = !DILocation(line: 126, column: 13, scope: !4173)
!4190 = !DILocalVariable(name: "p", scope: !4173, file: !3, line: 127, type: !1739)
!4191 = !DILocation(line: 127, column: 14, scope: !4173)
!4192 = !DILocation(line: 127, column: 31, scope: !4173)
!4193 = !DILocation(line: 127, column: 18, scope: !4173)
!4194 = !DILocation(line: 129, column: 13, scope: !4173)
!4195 = !DILocation(line: 129, column: 55, scope: !4173)
!4196 = !DILocation(line: 129, column: 11, scope: !4173)
!4197 = !DILocation(line: 131, column: 4, scope: !4173)
!4198 = !DILocation(line: 132, column: 2, scope: !4173)
!4199 = !DILocalVariable(name: "slabs", scope: !4200, file: !3, line: 133, type: !299)
!4200 = distinct !DILexicalBlock(scope: !4173, file: !3, line: 132, column: 5)
!4201 = !DILocation(line: 133, column: 7, scope: !4200)
!4202 = !DILocalVariable(name: "__UNIQUE_ID___x234", scope: !4203, file: !3, line: 133, type: !160)
!4203 = distinct !DILexicalBlock(scope: !4200, file: !3, line: 133, column: 15)
!4204 = !DILocation(line: 133, column: 15, scope: !4203)
!4205 = !DILocalVariable(name: "__UNIQUE_ID___y235", scope: !4203, file: !3, line: 133, type: !160)
!4206 = !DILocation(line: 133, column: 15, scope: !4200)
!4207 = !DILocation(line: 135, column: 3, scope: !4200)
!4208 = !DILocation(line: 137, column: 5, scope: !4209)
!4209 = distinct !DILexicalBlock(scope: !4200, file: !3, line: 135, column: 6)
!4210 = !DILocation(line: 137, column: 10, scope: !4209)
!4211 = !DILocation(line: 137, column: 12, scope: !4209)
!4212 = !DILocation(line: 137, column: 9, scope: !4209)
!4213 = !DILocation(line: 137, column: 7, scope: !4209)
!4214 = !DILocation(line: 138, column: 15, scope: !4209)
!4215 = !DILocation(line: 138, column: 21, scope: !4209)
!4216 = !DILocation(line: 138, column: 5, scope: !4209)
!4217 = !DILocation(line: 139, column: 5, scope: !4209)
!4218 = !DILocation(line: 136, column: 9, scope: !4209)
!4219 = !DILocation(line: 136, column: 7, scope: !4209)
!4220 = !DILocation(line: 140, column: 3, scope: !4209)
!4221 = !DILocation(line: 140, column: 12, scope: !4200)
!4222 = !DILocation(line: 140, column: 15, scope: !4200)
!4223 = !DILocation(line: 140, column: 26, scope: !4200)
!4224 = !DILocation(line: 140, column: 29, scope: !4200)
!4225 = !DILocation(line: 0, scope: !4200)
!4226 = distinct !{!4226, !4207, !4227}
!4227 = !DILocation(line: 140, column: 43, scope: !4200)
!4228 = !DILocation(line: 141, column: 7, scope: !4229)
!4229 = distinct !DILexicalBlock(scope: !4200, file: !3, line: 141, column: 7)
!4230 = !DILocation(line: 141, column: 7, scope: !4200)
!4231 = !DILocation(line: 142, column: 11, scope: !4229)
!4232 = !DILocation(line: 142, column: 4, scope: !4229)
!4233 = !DILocation(line: 144, column: 8, scope: !4200)
!4234 = !DILocation(line: 144, column: 5, scope: !4200)
!4235 = !DILocation(line: 145, column: 2, scope: !4200)
!4236 = !DILocation(line: 145, column: 11, scope: !4173)
!4237 = !DILocation(line: 145, column: 15, scope: !4173)
!4238 = !DILocation(line: 145, column: 13, scope: !4173)
!4239 = distinct !{!4239, !4198, !4240}
!4240 = !DILocation(line: 145, column: 21, scope: !4173)
!4241 = !DILocation(line: 146, column: 2, scope: !4173)
!4242 = !DILocation(line: 147, column: 1, scope: !4173)
!4243 = distinct !DISubprogram(name: "__phys_addr_nodebug", scope: !4244, file: !4244, line: 18, type: !4084, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!4244 = !DIFile(filename: "./arch/x86/include/asm/page_64.h", directory: "/home/lizy2001/genbc/linux")
!4245 = !DILocalVariable(name: "x", arg: 1, scope: !4243, file: !4244, line: 18, type: !160)
!4246 = !DILocation(line: 18, column: 63, scope: !4243)
!4247 = !DILocalVariable(name: "y", scope: !4243, file: !4244, line: 20, type: !160)
!4248 = !DILocation(line: 20, column: 16, scope: !4243)
!4249 = !DILocation(line: 20, column: 20, scope: !4243)
!4250 = !DILocation(line: 20, column: 22, scope: !4243)
!4251 = !DILocation(line: 23, column: 6, scope: !4243)
!4252 = !DILocation(line: 23, column: 12, scope: !4243)
!4253 = !DILocation(line: 23, column: 16, scope: !4243)
!4254 = !DILocation(line: 23, column: 14, scope: !4243)
!4255 = !DILocation(line: 23, column: 11, scope: !4243)
!4256 = !DILocation(line: 23, column: 21, scope: !4243)
!4257 = !DILocation(line: 23, column: 55, scope: !4243)
!4258 = !DILocation(line: 23, column: 53, scope: !4243)
!4259 = !DILocation(line: 23, column: 8, scope: !4243)
!4260 = !DILocation(line: 23, column: 4, scope: !4243)
!4261 = !DILocation(line: 25, column: 9, scope: !4243)
!4262 = !DILocation(line: 25, column: 2, scope: !4243)
!4263 = distinct !DISubprogram(name: "xen_swiotlb_error", scope: !3, file: !3, line: 165, type: !4264, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!4264 = !DISubroutineType(types: !4265)
!4265 = !{!321, !5}
!4266 = !DILocalVariable(name: "err", arg: 1, scope: !4263, file: !3, line: 165, type: !5)
!4267 = !DILocation(line: 165, column: 59, scope: !4263)
!4268 = !DILocation(line: 167, column: 10, scope: !4263)
!4269 = !DILocation(line: 167, column: 2, scope: !4263)
!4270 = !DILocation(line: 169, column: 3, scope: !4271)
!4271 = distinct !DILexicalBlock(scope: !4263, file: !3, line: 167, column: 15)
!4272 = !DILocation(line: 171, column: 3, scope: !4271)
!4273 = !DILocation(line: 176, column: 3, scope: !4271)
!4274 = !DILocation(line: 178, column: 2, scope: !4263)
!4275 = !DILocation(line: 179, column: 1, scope: !4263)
!4276 = distinct !DISubprogram(name: "xen_swiotlb_alloc_coherent", scope: !3, file: !3, line: 277, type: !3370, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!4277 = !DILocalVariable(name: "page", arg: 1, scope: !4278, file: !106, line: 351, type: !170)
!4278 = distinct !DISubprogram(name: "SetPageXenRemapped", scope: !106, file: !106, line: 351, type: !3178, scopeLine: 351, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!4279 = !DILocation(line: 351, column: 1, scope: !4278, inlinedAt: !4280)
!4280 = distinct !DILocation(line: 327, column: 3, scope: !4281)
!4281 = distinct !DILexicalBlock(scope: !4282, file: !3, line: 320, column: 7)
!4282 = distinct !DILexicalBlock(scope: !4276, file: !3, line: 317, column: 6)
!4283 = !DILocation(line: 366, column: 40, scope: !4106, inlinedAt: !4284)
!4284 = distinct !DILocation(line: 322, column: 8, scope: !4285)
!4285 = distinct !DILexicalBlock(scope: !4281, file: !3, line: 321, column: 7)
!4286 = !DILocation(line: 368, column: 6, scope: !4106, inlinedAt: !4284)
!4287 = !DILocalVariable(name: "hwdev", arg: 1, scope: !4276, file: !3, line: 277, type: !3372)
!4288 = !DILocation(line: 277, column: 43, scope: !4276)
!4289 = !DILocalVariable(name: "size", arg: 2, scope: !4276, file: !3, line: 277, type: !502)
!4290 = !DILocation(line: 277, column: 57, scope: !4276)
!4291 = !DILocalVariable(name: "dma_handle", arg: 3, scope: !4276, file: !3, line: 278, type: !3809)
!4292 = !DILocation(line: 278, column: 19, scope: !4276)
!4293 = !DILocalVariable(name: "flags", arg: 4, scope: !4276, file: !3, line: 278, type: !162)
!4294 = !DILocation(line: 278, column: 37, scope: !4276)
!4295 = !DILocalVariable(name: "attrs", arg: 5, scope: !4276, file: !3, line: 279, type: !160)
!4296 = !DILocation(line: 279, column: 21, scope: !4276)
!4297 = !DILocalVariable(name: "ret", scope: !4276, file: !3, line: 281, type: !161)
!4298 = !DILocation(line: 281, column: 8, scope: !4276)
!4299 = !DILocalVariable(name: "order", scope: !4276, file: !3, line: 282, type: !299)
!4300 = !DILocation(line: 282, column: 6, scope: !4276)
!4301 = !DILocation(line: 282, column: 24, scope: !4276)
!4302 = !DILocation(line: 282, column: 14, scope: !4276)
!4303 = !DILocalVariable(name: "dma_mask", scope: !4276, file: !3, line: 283, type: !165)
!4304 = !DILocation(line: 283, column: 6, scope: !4276)
!4305 = !DILocalVariable(name: "phys", scope: !4276, file: !3, line: 284, type: !1739)
!4306 = !DILocation(line: 284, column: 14, scope: !4276)
!4307 = !DILocalVariable(name: "dev_addr", scope: !4276, file: !3, line: 285, type: !164)
!4308 = !DILocation(line: 285, column: 13, scope: !4276)
!4309 = !DILocation(line: 293, column: 8, scope: !4276)
!4310 = !DILocation(line: 296, column: 17, scope: !4276)
!4311 = !DILocation(line: 296, column: 23, scope: !4276)
!4312 = !DILocation(line: 296, column: 13, scope: !4276)
!4313 = !DILocation(line: 296, column: 7, scope: !4276)
!4314 = !DILocation(line: 303, column: 33, scope: !4276)
!4315 = !DILocation(line: 303, column: 40, scope: !4276)
!4316 = !DILocation(line: 303, column: 46, scope: !4276)
!4317 = !DILocation(line: 303, column: 58, scope: !4276)
!4318 = !DILocation(line: 303, column: 65, scope: !4276)
!4319 = !DILocation(line: 303, column: 8, scope: !4276)
!4320 = !DILocation(line: 303, column: 6, scope: !4276)
!4321 = !DILocation(line: 305, column: 7, scope: !4322)
!4322 = distinct !DILexicalBlock(scope: !4276, file: !3, line: 305, column: 6)
!4323 = !DILocation(line: 305, column: 6, scope: !4276)
!4324 = !DILocation(line: 306, column: 10, scope: !4322)
!4325 = !DILocation(line: 306, column: 3, scope: !4322)
!4326 = !DILocation(line: 308, column: 6, scope: !4327)
!4327 = distinct !DILexicalBlock(scope: !4276, file: !3, line: 308, column: 6)
!4328 = !DILocation(line: 308, column: 12, scope: !4327)
!4329 = !DILocation(line: 308, column: 15, scope: !4327)
!4330 = !DILocation(line: 308, column: 22, scope: !4327)
!4331 = !DILocation(line: 308, column: 6, scope: !4276)
!4332 = !DILocation(line: 309, column: 14, scope: !4327)
!4333 = !DILocation(line: 309, column: 21, scope: !4327)
!4334 = !DILocation(line: 309, column: 12, scope: !4327)
!4335 = !DILocation(line: 309, column: 3, scope: !4327)
!4336 = !DILocation(line: 315, column: 21, scope: !4276)
!4337 = !DILocation(line: 315, column: 29, scope: !4276)
!4338 = !DILocation(line: 315, column: 28, scope: !4276)
!4339 = !DILocation(line: 315, column: 9, scope: !4276)
!4340 = !DILocation(line: 315, column: 7, scope: !4276)
!4341 = !DILocation(line: 316, column: 29, scope: !4276)
!4342 = !DILocation(line: 316, column: 36, scope: !4276)
!4343 = !DILocation(line: 316, column: 13, scope: !4276)
!4344 = !DILocation(line: 316, column: 11, scope: !4276)
!4345 = !DILocation(line: 317, column: 8, scope: !4282)
!4346 = !DILocation(line: 317, column: 19, scope: !4282)
!4347 = !DILocation(line: 317, column: 17, scope: !4282)
!4348 = !DILocation(line: 317, column: 24, scope: !4282)
!4349 = !DILocation(line: 317, column: 31, scope: !4282)
!4350 = !DILocation(line: 317, column: 28, scope: !4282)
!4351 = !DILocation(line: 317, column: 42, scope: !4282)
!4352 = !DILocation(line: 318, column: 37, scope: !4282)
!4353 = !DILocation(line: 318, column: 43, scope: !4282)
!4354 = !DILocation(line: 318, column: 7, scope: !4282)
!4355 = !DILocation(line: 317, column: 6, scope: !4276)
!4356 = !DILocation(line: 319, column: 17, scope: !4282)
!4357 = !DILocation(line: 319, column: 4, scope: !4282)
!4358 = !DILocation(line: 319, column: 15, scope: !4282)
!4359 = !DILocation(line: 319, column: 3, scope: !4282)
!4360 = !DILocation(line: 321, column: 36, scope: !4285)
!4361 = !DILocation(line: 321, column: 42, scope: !4285)
!4362 = !DILocation(line: 322, column: 14, scope: !4285)
!4363 = !DILocation(line: 374, column: 2, scope: !4106, inlinedAt: !4284)
!4364 = !DILocation(line: 376, column: 14, scope: !4106, inlinedAt: !4284)
!4365 = !DILocation(line: 377, column: 9, scope: !4106, inlinedAt: !4284)
!4366 = !DILocation(line: 377, column: 16, scope: !4106, inlinedAt: !4284)
!4367 = !DILocation(line: 322, column: 25, scope: !4285)
!4368 = !DILocation(line: 321, column: 7, scope: !4285)
!4369 = !DILocation(line: 322, column: 37, scope: !4285)
!4370 = !DILocation(line: 321, column: 7, scope: !4281)
!4371 = !DILocation(line: 323, column: 28, scope: !4372)
!4372 = distinct !DILexicalBlock(scope: !4285, file: !3, line: 322, column: 43)
!4373 = !DILocation(line: 323, column: 35, scope: !4372)
!4374 = !DILocation(line: 323, column: 41, scope: !4372)
!4375 = !DILocation(line: 323, column: 58, scope: !4372)
!4376 = !DILocation(line: 323, column: 64, scope: !4372)
!4377 = !DILocation(line: 323, column: 4, scope: !4372)
!4378 = !DILocation(line: 324, column: 4, scope: !4372)
!4379 = !DILocation(line: 326, column: 29, scope: !4281)
!4380 = !DILocation(line: 326, column: 37, scope: !4281)
!4381 = !DILocation(line: 326, column: 36, scope: !4281)
!4382 = !DILocation(line: 326, column: 17, scope: !4281)
!4383 = !DILocation(line: 326, column: 4, scope: !4281)
!4384 = !DILocation(line: 326, column: 15, scope: !4281)
!4385 = !DILocation(line: 327, column: 22, scope: !4281)
!4386 = !DILocation(line: 351, column: 1, scope: !4387, inlinedAt: !4280)
!4387 = distinct !DILexicalBlock(scope: !4388, file: !106, line: 351, column: 1)
!4388 = distinct !DILexicalBlock(scope: !4278, file: !106, line: 351, column: 1)
!4389 = !DILocation(line: 351, column: 1, scope: !4388, inlinedAt: !4280)
!4390 = !DILocation(line: 329, column: 9, scope: !4276)
!4391 = !DILocation(line: 329, column: 17, scope: !4276)
!4392 = !DILocation(line: 329, column: 2, scope: !4276)
!4393 = !DILocation(line: 330, column: 9, scope: !4276)
!4394 = !DILocation(line: 330, column: 2, scope: !4276)
!4395 = !DILocation(line: 331, column: 1, scope: !4276)
!4396 = distinct !DISubprogram(name: "xen_swiotlb_free_coherent", scope: !3, file: !3, line: 334, type: !3812, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!4397 = !DILocalVariable(name: "page", arg: 1, scope: !4398, file: !106, line: 352, type: !170)
!4398 = distinct !DISubprogram(name: "TestClearPageXenRemapped", scope: !106, file: !106, line: 352, type: !3143, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!4399 = !DILocation(line: 352, column: 2, scope: !4398, inlinedAt: !4400)
!4400 = distinct !DILocation(line: 359, column: 6, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4396, file: !3, line: 357, column: 6)
!4402 = !DILocalVariable(name: "hwdev", arg: 1, scope: !4396, file: !3, line: 334, type: !3372)
!4403 = !DILocation(line: 334, column: 42, scope: !4396)
!4404 = !DILocalVariable(name: "size", arg: 2, scope: !4396, file: !3, line: 334, type: !502)
!4405 = !DILocation(line: 334, column: 56, scope: !4396)
!4406 = !DILocalVariable(name: "vaddr", arg: 3, scope: !4396, file: !3, line: 334, type: !161)
!4407 = !DILocation(line: 334, column: 68, scope: !4396)
!4408 = !DILocalVariable(name: "dev_addr", arg: 4, scope: !4396, file: !3, line: 335, type: !164)
!4409 = !DILocation(line: 335, column: 17, scope: !4396)
!4410 = !DILocalVariable(name: "attrs", arg: 5, scope: !4396, file: !3, line: 335, type: !160)
!4411 = !DILocation(line: 335, column: 41, scope: !4396)
!4412 = !DILocalVariable(name: "order", scope: !4396, file: !3, line: 337, type: !299)
!4413 = !DILocation(line: 337, column: 6, scope: !4396)
!4414 = !DILocation(line: 337, column: 24, scope: !4396)
!4415 = !DILocation(line: 337, column: 14, scope: !4396)
!4416 = !DILocalVariable(name: "phys", scope: !4396, file: !3, line: 338, type: !1739)
!4417 = !DILocation(line: 338, column: 14, scope: !4396)
!4418 = !DILocalVariable(name: "dma_mask", scope: !4396, file: !3, line: 339, type: !165)
!4419 = !DILocation(line: 339, column: 6, scope: !4396)
!4420 = !DILocalVariable(name: "page", scope: !4396, file: !3, line: 340, type: !170)
!4421 = !DILocation(line: 340, column: 15, scope: !4396)
!4422 = !DILocation(line: 342, column: 6, scope: !4423)
!4423 = distinct !DILexicalBlock(scope: !4396, file: !3, line: 342, column: 6)
!4424 = !DILocation(line: 342, column: 12, scope: !4423)
!4425 = !DILocation(line: 342, column: 15, scope: !4423)
!4426 = !DILocation(line: 342, column: 22, scope: !4423)
!4427 = !DILocation(line: 342, column: 6, scope: !4396)
!4428 = !DILocation(line: 343, column: 14, scope: !4423)
!4429 = !DILocation(line: 343, column: 21, scope: !4423)
!4430 = !DILocation(line: 343, column: 12, scope: !4423)
!4431 = !DILocation(line: 343, column: 3, scope: !4423)
!4432 = !DILocation(line: 347, column: 25, scope: !4396)
!4433 = !DILocation(line: 347, column: 32, scope: !4396)
!4434 = !DILocation(line: 347, column: 9, scope: !4396)
!4435 = !DILocation(line: 347, column: 7, scope: !4396)
!4436 = !DILocation(line: 350, column: 17, scope: !4396)
!4437 = !DILocation(line: 350, column: 23, scope: !4396)
!4438 = !DILocation(line: 350, column: 13, scope: !4396)
!4439 = !DILocation(line: 350, column: 7, scope: !4396)
!4440 = !DILocation(line: 352, column: 22, scope: !4441)
!4441 = distinct !DILexicalBlock(scope: !4396, file: !3, line: 352, column: 6)
!4442 = !DILocation(line: 352, column: 6, scope: !4441)
!4443 = !DILocation(line: 352, column: 6, scope: !4396)
!4444 = !DILocation(line: 353, column: 26, scope: !4441)
!4445 = !DILocation(line: 353, column: 10, scope: !4441)
!4446 = !DILocation(line: 353, column: 8, scope: !4441)
!4447 = !DILocation(line: 353, column: 3, scope: !4441)
!4448 = !DILocation(line: 355, column: 10, scope: !4441)
!4449 = !DILocation(line: 355, column: 8, scope: !4441)
!4450 = !DILocalVariable(name: "__ret_warn_on", scope: !4451, file: !3, line: 357, type: !299)
!4451 = distinct !DILexicalBlock(scope: !4401, file: !3, line: 357, column: 7)
!4452 = !DILocation(line: 357, column: 7, scope: !4451)
!4453 = !DILocation(line: 357, column: 7, scope: !4454)
!4454 = distinct !DILexicalBlock(scope: !4451, file: !3, line: 357, column: 7)
!4455 = !DILocation(line: 357, column: 7, scope: !4456)
!4456 = distinct !DILexicalBlock(scope: !4454, file: !3, line: 357, column: 7)
!4457 = !DILocation(line: 357, column: 7, scope: !4458)
!4458 = distinct !DILexicalBlock(scope: !4456, file: !3, line: 357, column: 7)
!4459 = !DILocation(line: 357, column: 7, scope: !4460)
!4460 = distinct !DILexicalBlock(scope: !4456, file: !3, line: 357, column: 7)
!4461 = !{i32 -2141797986, i32 -2141797957, i32 -2141797911, i32 -2141797853, i32 -2141797799, i32 -2141797745, i32 -2141797690, i32 -2141797659}
!4462 = !DILocation(line: 357, column: 7, scope: !4463)
!4463 = distinct !DILexicalBlock(scope: !4456, file: !3, line: 357, column: 7)
!4464 = !{i32 -2141797252, i32 -2141797245, i32 -2141797193, i32 -2141797162, i32 -2141797132}
!4465 = !DILocation(line: 357, column: 7, scope: !4466)
!4466 = distinct !DILexicalBlock(scope: !4456, file: !3, line: 357, column: 7)
!4467 = !DILocation(line: 357, column: 7, scope: !4401)
!4468 = !DILocation(line: 358, column: 51, scope: !4401)
!4469 = !DILocation(line: 359, column: 31, scope: !4401)
!4470 = !DILocation(line: 352, column: 2, scope: !4471, inlinedAt: !4400)
!4471 = distinct !DILexicalBlock(scope: !4472, file: !106, line: 352, column: 2)
!4472 = distinct !DILexicalBlock(scope: !4398, file: !106, line: 352, column: 2)
!4473 = !DILocation(line: 352, column: 2, scope: !4472, inlinedAt: !4400)
!4474 = !DILocation(line: 359, column: 6, scope: !4401)
!4475 = !DILocation(line: 357, column: 6, scope: !4396)
!4476 = !DILocation(line: 360, column: 33, scope: !4401)
!4477 = !DILocation(line: 360, column: 39, scope: !4401)
!4478 = !DILocation(line: 360, column: 3, scope: !4401)
!4479 = !DILocation(line: 362, column: 26, scope: !4396)
!4480 = !DILocation(line: 362, column: 33, scope: !4396)
!4481 = !DILocation(line: 362, column: 39, scope: !4396)
!4482 = !DILocation(line: 362, column: 58, scope: !4396)
!4483 = !DILocation(line: 362, column: 65, scope: !4396)
!4484 = !DILocation(line: 362, column: 46, scope: !4396)
!4485 = !DILocation(line: 363, column: 5, scope: !4396)
!4486 = !DILocation(line: 362, column: 2, scope: !4396)
!4487 = !DILocation(line: 364, column: 1, scope: !4396)
!4488 = distinct !DISubprogram(name: "xen_swiotlb_map_page", scope: !3, file: !3, line: 373, type: !3855, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!4489 = !DILocalVariable(name: "dev", arg: 1, scope: !4488, file: !3, line: 373, type: !3372)
!4490 = !DILocation(line: 373, column: 55, scope: !4488)
!4491 = !DILocalVariable(name: "page", arg: 2, scope: !4488, file: !3, line: 373, type: !170)
!4492 = !DILocation(line: 373, column: 73, scope: !4488)
!4493 = !DILocalVariable(name: "offset", arg: 3, scope: !4488, file: !3, line: 374, type: !160)
!4494 = !DILocation(line: 374, column: 19, scope: !4488)
!4495 = !DILocalVariable(name: "size", arg: 4, scope: !4488, file: !3, line: 374, type: !502)
!4496 = !DILocation(line: 374, column: 34, scope: !4488)
!4497 = !DILocalVariable(name: "dir", arg: 5, scope: !4488, file: !3, line: 375, type: !98)
!4498 = !DILocation(line: 375, column: 29, scope: !4488)
!4499 = !DILocalVariable(name: "attrs", arg: 6, scope: !4488, file: !3, line: 376, type: !160)
!4500 = !DILocation(line: 376, column: 19, scope: !4488)
!4501 = !DILocalVariable(name: "map", scope: !4488, file: !3, line: 378, type: !1739)
!4502 = !DILocation(line: 378, column: 14, scope: !4488)
!4503 = !DILocalVariable(name: "phys", scope: !4488, file: !3, line: 378, type: !1739)
!4504 = !DILocation(line: 378, column: 19, scope: !4488)
!4505 = !DILocation(line: 378, column: 26, scope: !4488)
!4506 = !DILocation(line: 378, column: 47, scope: !4488)
!4507 = !DILocation(line: 378, column: 45, scope: !4488)
!4508 = !DILocalVariable(name: "dev_addr", scope: !4488, file: !3, line: 379, type: !164)
!4509 = !DILocation(line: 379, column: 13, scope: !4488)
!4510 = !DILocation(line: 379, column: 40, scope: !4488)
!4511 = !DILocation(line: 379, column: 45, scope: !4488)
!4512 = !DILocation(line: 379, column: 24, scope: !4488)
!4513 = !DILocation(line: 381, column: 2, scope: !4488)
!4514 = !DILocation(line: 381, column: 2, scope: !4515)
!4515 = distinct !DILexicalBlock(scope: !4516, file: !3, line: 381, column: 2)
!4516 = distinct !DILexicalBlock(scope: !4488, file: !3, line: 381, column: 2)
!4517 = !DILocation(line: 381, column: 2, scope: !4516)
!4518 = !DILocation(line: 381, column: 2, scope: !4519)
!4519 = distinct !DILexicalBlock(scope: !4515, file: !3, line: 381, column: 2)
!4520 = !DILocation(line: 381, column: 2, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !4519, file: !3, line: 381, column: 2)
!4522 = !DILocation(line: 381, column: 2, scope: !4523)
!4523 = distinct !DILexicalBlock(scope: !4519, file: !3, line: 381, column: 2)
!4524 = !{i32 -2141796611, i32 -2141796582, i32 -2141796536, i32 -2141796478, i32 -2141796424, i32 -2141796370, i32 -2141796315, i32 -2141796284}
!4525 = !DILocation(line: 381, column: 2, scope: !4526)
!4526 = distinct !DILexicalBlock(scope: !4527, file: !3, line: 381, column: 2)
!4527 = distinct !DILexicalBlock(scope: !4519, file: !3, line: 381, column: 2)
!4528 = !{i32 -2141795836, i32 -2141795829, i32 -2141795775, i32 -2141795744, i32 -2141795714}
!4529 = !DILocation(line: 381, column: 2, scope: !4527)
!4530 = !DILocation(line: 387, column: 18, scope: !4531)
!4531 = distinct !DILexicalBlock(scope: !4488, file: !3, line: 387, column: 6)
!4532 = !DILocation(line: 387, column: 23, scope: !4531)
!4533 = !DILocation(line: 387, column: 33, scope: !4531)
!4534 = !DILocation(line: 387, column: 6, scope: !4531)
!4535 = !DILocation(line: 387, column: 45, scope: !4531)
!4536 = !DILocation(line: 388, column: 37, scope: !4531)
!4537 = !DILocation(line: 388, column: 43, scope: !4531)
!4538 = !DILocation(line: 388, column: 7, scope: !4531)
!4539 = !DILocation(line: 388, column: 49, scope: !4531)
!4540 = !DILocation(line: 389, column: 26, scope: !4531)
!4541 = !DILocation(line: 389, column: 31, scope: !4531)
!4542 = !DILocation(line: 389, column: 37, scope: !4531)
!4543 = !DILocation(line: 389, column: 4, scope: !4531)
!4544 = !DILocation(line: 389, column: 47, scope: !4531)
!4545 = !DILocation(line: 390, column: 3, scope: !4531)
!4546 = !DILocation(line: 390, column: 17, scope: !4531)
!4547 = !DILocation(line: 387, column: 6, scope: !4488)
!4548 = !DILocation(line: 391, column: 3, scope: !4531)
!4549 = !DILocation(line: 396, column: 24, scope: !4488)
!4550 = !DILocation(line: 396, column: 29, scope: !4488)
!4551 = !DILocation(line: 396, column: 39, scope: !4488)
!4552 = !DILocation(line: 396, column: 45, scope: !4488)
!4553 = !DILocation(line: 396, column: 2, scope: !4488)
!4554 = !DILocation(line: 398, column: 31, scope: !4488)
!4555 = !DILocation(line: 398, column: 36, scope: !4488)
!4556 = !DILocation(line: 398, column: 42, scope: !4488)
!4557 = !DILocation(line: 398, column: 48, scope: !4488)
!4558 = !DILocation(line: 398, column: 54, scope: !4488)
!4559 = !DILocation(line: 398, column: 59, scope: !4488)
!4560 = !DILocation(line: 398, column: 8, scope: !4488)
!4561 = !DILocation(line: 398, column: 6, scope: !4488)
!4562 = !DILocation(line: 399, column: 6, scope: !4563)
!4563 = distinct !DILexicalBlock(scope: !4488, file: !3, line: 399, column: 6)
!4564 = !DILocation(line: 399, column: 10, scope: !4563)
!4565 = !DILocation(line: 399, column: 6, scope: !4488)
!4566 = !DILocation(line: 400, column: 3, scope: !4563)
!4567 = !DILocation(line: 402, column: 9, scope: !4488)
!4568 = !DILocation(line: 402, column: 7, scope: !4488)
!4569 = !DILocation(line: 403, column: 29, scope: !4488)
!4570 = !DILocation(line: 403, column: 34, scope: !4488)
!4571 = !DILocation(line: 403, column: 13, scope: !4488)
!4572 = !DILocation(line: 403, column: 11, scope: !4488)
!4573 = !DILocation(line: 408, column: 6, scope: !4574)
!4574 = distinct !DILexicalBlock(scope: !4488, file: !3, line: 408, column: 6)
!4575 = !DILocation(line: 408, column: 6, scope: !4488)
!4576 = !DILocation(line: 409, column: 28, scope: !4577)
!4577 = distinct !DILexicalBlock(scope: !4574, file: !3, line: 408, column: 57)
!4578 = !DILocation(line: 409, column: 33, scope: !4577)
!4579 = !DILocation(line: 409, column: 38, scope: !4577)
!4580 = !DILocation(line: 409, column: 44, scope: !4577)
!4581 = !DILocation(line: 409, column: 50, scope: !4577)
!4582 = !DILocation(line: 410, column: 5, scope: !4577)
!4583 = !DILocation(line: 410, column: 11, scope: !4577)
!4584 = !DILocation(line: 409, column: 3, scope: !4577)
!4585 = !DILocation(line: 411, column: 3, scope: !4577)
!4586 = !DILabel(scope: !4488, name: "done", file: !3, line: 414)
!4587 = !DILocation(line: 414, column: 1, scope: !4488)
!4588 = !DILocation(line: 415, column: 27, scope: !4589)
!4589 = distinct !DILexicalBlock(scope: !4488, file: !3, line: 415, column: 6)
!4590 = !DILocation(line: 415, column: 7, scope: !4589)
!4591 = !DILocation(line: 415, column: 32, scope: !4589)
!4592 = !DILocation(line: 415, column: 37, scope: !4589)
!4593 = !DILocation(line: 415, column: 43, scope: !4589)
!4594 = !DILocation(line: 415, column: 6, scope: !4488)
!4595 = !DILocation(line: 416, column: 17, scope: !4596)
!4596 = distinct !DILexicalBlock(scope: !4597, file: !3, line: 416, column: 7)
!4597 = distinct !DILexicalBlock(scope: !4589, file: !3, line: 415, column: 70)
!4598 = !DILocation(line: 416, column: 7, scope: !4596)
!4599 = !DILocation(line: 416, column: 7, scope: !4597)
!4600 = !DILocation(line: 417, column: 29, scope: !4596)
!4601 = !DILocation(line: 417, column: 35, scope: !4596)
!4602 = !DILocation(line: 417, column: 41, scope: !4596)
!4603 = !DILocation(line: 417, column: 4, scope: !4596)
!4604 = !DILocation(line: 419, column: 28, scope: !4596)
!4605 = !DILocation(line: 419, column: 33, scope: !4596)
!4606 = !DILocation(line: 419, column: 43, scope: !4596)
!4607 = !DILocation(line: 419, column: 49, scope: !4596)
!4608 = !DILocation(line: 419, column: 4, scope: !4596)
!4609 = !DILocation(line: 420, column: 2, scope: !4597)
!4610 = !DILocation(line: 421, column: 9, scope: !4488)
!4611 = !DILocation(line: 421, column: 2, scope: !4488)
!4612 = !DILocation(line: 422, column: 1, scope: !4488)
!4613 = distinct !DISubprogram(name: "xen_swiotlb_unmap_page", scope: !3, file: !3, line: 432, type: !3859, scopeLine: 434, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!4614 = !DILocalVariable(name: "hwdev", arg: 1, scope: !4613, file: !3, line: 432, type: !3372)
!4615 = !DILocation(line: 432, column: 51, scope: !4613)
!4616 = !DILocalVariable(name: "dev_addr", arg: 2, scope: !4613, file: !3, line: 432, type: !164)
!4617 = !DILocation(line: 432, column: 69, scope: !4613)
!4618 = !DILocalVariable(name: "size", arg: 3, scope: !4613, file: !3, line: 433, type: !502)
!4619 = !DILocation(line: 433, column: 10, scope: !4613)
!4620 = !DILocalVariable(name: "dir", arg: 4, scope: !4613, file: !3, line: 433, type: !98)
!4621 = !DILocation(line: 433, column: 40, scope: !4613)
!4622 = !DILocalVariable(name: "attrs", arg: 5, scope: !4613, file: !3, line: 433, type: !160)
!4623 = !DILocation(line: 433, column: 59, scope: !4613)
!4624 = !DILocalVariable(name: "paddr", scope: !4613, file: !3, line: 435, type: !1739)
!4625 = !DILocation(line: 435, column: 14, scope: !4613)
!4626 = !DILocation(line: 435, column: 38, scope: !4613)
!4627 = !DILocation(line: 435, column: 45, scope: !4613)
!4628 = !DILocation(line: 435, column: 22, scope: !4613)
!4629 = !DILocation(line: 437, column: 2, scope: !4613)
!4630 = !DILocation(line: 437, column: 2, scope: !4631)
!4631 = distinct !DILexicalBlock(scope: !4632, file: !3, line: 437, column: 2)
!4632 = distinct !DILexicalBlock(scope: !4613, file: !3, line: 437, column: 2)
!4633 = !DILocation(line: 437, column: 2, scope: !4632)
!4634 = !DILocation(line: 437, column: 2, scope: !4635)
!4635 = distinct !DILexicalBlock(scope: !4631, file: !3, line: 437, column: 2)
!4636 = !DILocation(line: 437, column: 2, scope: !4637)
!4637 = distinct !DILexicalBlock(scope: !4635, file: !3, line: 437, column: 2)
!4638 = !DILocation(line: 437, column: 2, scope: !4639)
!4639 = distinct !DILexicalBlock(scope: !4635, file: !3, line: 437, column: 2)
!4640 = !{i32 -2141795211, i32 -2141795182, i32 -2141795136, i32 -2141795078, i32 -2141795024, i32 -2141794970, i32 -2141794915, i32 -2141794884}
!4641 = !DILocation(line: 437, column: 2, scope: !4642)
!4642 = distinct !DILexicalBlock(scope: !4643, file: !3, line: 437, column: 2)
!4643 = distinct !DILexicalBlock(scope: !4635, file: !3, line: 437, column: 2)
!4644 = !{i32 -2141794436, i32 -2141794429, i32 -2141794375, i32 -2141794344, i32 -2141794314}
!4645 = !DILocation(line: 437, column: 2, scope: !4643)
!4646 = !DILocation(line: 439, column: 27, scope: !4647)
!4647 = distinct !DILexicalBlock(scope: !4613, file: !3, line: 439, column: 6)
!4648 = !DILocation(line: 439, column: 7, scope: !4647)
!4649 = !DILocation(line: 439, column: 34, scope: !4647)
!4650 = !DILocation(line: 439, column: 39, scope: !4647)
!4651 = !DILocation(line: 439, column: 45, scope: !4647)
!4652 = !DILocation(line: 439, column: 6, scope: !4613)
!4653 = !DILocation(line: 440, column: 17, scope: !4654)
!4654 = distinct !DILexicalBlock(scope: !4655, file: !3, line: 440, column: 7)
!4655 = distinct !DILexicalBlock(scope: !4647, file: !3, line: 439, column: 72)
!4656 = !DILocation(line: 440, column: 7, scope: !4654)
!4657 = !DILocation(line: 440, column: 7, scope: !4655)
!4658 = !DILocation(line: 441, column: 26, scope: !4654)
!4659 = !DILocation(line: 441, column: 33, scope: !4654)
!4660 = !DILocation(line: 441, column: 39, scope: !4654)
!4661 = !DILocation(line: 441, column: 4, scope: !4654)
!4662 = !DILocation(line: 443, column: 25, scope: !4654)
!4663 = !DILocation(line: 443, column: 32, scope: !4654)
!4664 = !DILocation(line: 443, column: 42, scope: !4654)
!4665 = !DILocation(line: 443, column: 48, scope: !4654)
!4666 = !DILocation(line: 443, column: 4, scope: !4654)
!4667 = !DILocation(line: 444, column: 2, scope: !4655)
!4668 = !DILocation(line: 447, column: 28, scope: !4669)
!4669 = distinct !DILexicalBlock(scope: !4613, file: !3, line: 447, column: 6)
!4670 = !DILocation(line: 447, column: 35, scope: !4669)
!4671 = !DILocation(line: 447, column: 6, scope: !4669)
!4672 = !DILocation(line: 447, column: 6, scope: !4613)
!4673 = !DILocation(line: 448, column: 28, scope: !4669)
!4674 = !DILocation(line: 448, column: 35, scope: !4669)
!4675 = !DILocation(line: 448, column: 42, scope: !4669)
!4676 = !DILocation(line: 448, column: 48, scope: !4669)
!4677 = !DILocation(line: 448, column: 54, scope: !4669)
!4678 = !DILocation(line: 448, column: 59, scope: !4669)
!4679 = !DILocation(line: 448, column: 3, scope: !4669)
!4680 = !DILocation(line: 449, column: 1, scope: !4613)
!4681 = distinct !DISubprogram(name: "xen_swiotlb_map_sg", scope: !3, file: !3, line: 505, type: !3863, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!4682 = !DILocalVariable(name: "dev", arg: 1, scope: !4681, file: !3, line: 505, type: !3372)
!4683 = !DILocation(line: 505, column: 35, scope: !4681)
!4684 = !DILocalVariable(name: "sgl", arg: 2, scope: !4681, file: !3, line: 505, type: !3843)
!4685 = !DILocation(line: 505, column: 60, scope: !4681)
!4686 = !DILocalVariable(name: "nelems", arg: 3, scope: !4681, file: !3, line: 505, type: !299)
!4687 = !DILocation(line: 505, column: 69, scope: !4681)
!4688 = !DILocalVariable(name: "dir", arg: 4, scope: !4681, file: !3, line: 506, type: !98)
!4689 = !DILocation(line: 506, column: 27, scope: !4681)
!4690 = !DILocalVariable(name: "attrs", arg: 5, scope: !4681, file: !3, line: 506, type: !160)
!4691 = !DILocation(line: 506, column: 46, scope: !4681)
!4692 = !DILocalVariable(name: "sg", scope: !4681, file: !3, line: 508, type: !3843)
!4693 = !DILocation(line: 508, column: 22, scope: !4681)
!4694 = !DILocalVariable(name: "i", scope: !4681, file: !3, line: 509, type: !299)
!4695 = !DILocation(line: 509, column: 6, scope: !4681)
!4696 = !DILocation(line: 511, column: 2, scope: !4681)
!4697 = !DILocation(line: 511, column: 2, scope: !4698)
!4698 = distinct !DILexicalBlock(scope: !4699, file: !3, line: 511, column: 2)
!4699 = distinct !DILexicalBlock(scope: !4681, file: !3, line: 511, column: 2)
!4700 = !DILocation(line: 511, column: 2, scope: !4699)
!4701 = !DILocation(line: 511, column: 2, scope: !4702)
!4702 = distinct !DILexicalBlock(scope: !4698, file: !3, line: 511, column: 2)
!4703 = !DILocation(line: 511, column: 2, scope: !4704)
!4704 = distinct !DILexicalBlock(scope: !4702, file: !3, line: 511, column: 2)
!4705 = !DILocation(line: 511, column: 2, scope: !4706)
!4706 = distinct !DILexicalBlock(scope: !4702, file: !3, line: 511, column: 2)
!4707 = !{i32 -2141792514, i32 -2141792485, i32 -2141792439, i32 -2141792381, i32 -2141792327, i32 -2141792273, i32 -2141792218, i32 -2141792187}
!4708 = !DILocation(line: 511, column: 2, scope: !4709)
!4709 = distinct !DILexicalBlock(scope: !4710, file: !3, line: 511, column: 2)
!4710 = distinct !DILexicalBlock(scope: !4702, file: !3, line: 511, column: 2)
!4711 = !{i32 -2141791739, i32 -2141791732, i32 -2141791678, i32 -2141791647, i32 -2141791617}
!4712 = !DILocation(line: 511, column: 2, scope: !4710)
!4713 = !DILocation(line: 513, column: 2, scope: !4714)
!4714 = distinct !DILexicalBlock(scope: !4681, file: !3, line: 513, column: 2)
!4715 = !DILocation(line: 513, column: 2, scope: !4716)
!4716 = distinct !DILexicalBlock(scope: !4714, file: !3, line: 513, column: 2)
!4717 = !DILocation(line: 514, column: 42, scope: !4718)
!4718 = distinct !DILexicalBlock(scope: !4716, file: !3, line: 513, column: 34)
!4719 = !DILocation(line: 514, column: 55, scope: !4718)
!4720 = !DILocation(line: 514, column: 47, scope: !4718)
!4721 = !DILocation(line: 515, column: 5, scope: !4718)
!4722 = !DILocation(line: 515, column: 9, scope: !4718)
!4723 = !DILocation(line: 515, column: 17, scope: !4718)
!4724 = !DILocation(line: 515, column: 21, scope: !4718)
!4725 = !DILocation(line: 515, column: 29, scope: !4718)
!4726 = !DILocation(line: 515, column: 34, scope: !4718)
!4727 = !DILocation(line: 514, column: 21, scope: !4718)
!4728 = !DILocation(line: 514, column: 3, scope: !4718)
!4729 = !DILocation(line: 514, column: 7, scope: !4718)
!4730 = !DILocation(line: 514, column: 19, scope: !4718)
!4731 = !DILocation(line: 516, column: 7, scope: !4732)
!4732 = distinct !DILexicalBlock(scope: !4718, file: !3, line: 516, column: 7)
!4733 = !DILocation(line: 516, column: 11, scope: !4732)
!4734 = !DILocation(line: 516, column: 23, scope: !4732)
!4735 = !DILocation(line: 516, column: 7, scope: !4718)
!4736 = !DILocation(line: 517, column: 4, scope: !4732)
!4737 = !DILocation(line: 518, column: 20, scope: !4718)
!4738 = !DILocation(line: 518, column: 24, scope: !4718)
!4739 = !DILocation(line: 518, column: 3, scope: !4718)
!4740 = !DILocation(line: 518, column: 18, scope: !4718)
!4741 = !DILocation(line: 519, column: 2, scope: !4718)
!4742 = distinct !{!4742, !4713, !4743}
!4743 = !DILocation(line: 519, column: 2, scope: !4714)
!4744 = !DILocation(line: 521, column: 9, scope: !4681)
!4745 = !DILocation(line: 521, column: 2, scope: !4681)
!4746 = !DILabel(scope: !4681, name: "out_unmap", file: !3, line: 522)
!4747 = !DILocation(line: 522, column: 1, scope: !4681)
!4748 = !DILocation(line: 523, column: 23, scope: !4681)
!4749 = !DILocation(line: 523, column: 28, scope: !4681)
!4750 = !DILocation(line: 523, column: 33, scope: !4681)
!4751 = !DILocation(line: 523, column: 36, scope: !4681)
!4752 = !DILocation(line: 523, column: 41, scope: !4681)
!4753 = !DILocation(line: 523, column: 47, scope: !4681)
!4754 = !DILocation(line: 523, column: 2, scope: !4681)
!4755 = !DILocation(line: 524, column: 2, scope: !4681)
!4756 = !DILocation(line: 524, column: 18, scope: !4681)
!4757 = !DILocation(line: 525, column: 2, scope: !4681)
!4758 = !DILocation(line: 526, column: 1, scope: !4681)
!4759 = distinct !DISubprogram(name: "xen_swiotlb_unmap_sg", scope: !3, file: !3, line: 490, type: !3867, scopeLine: 492, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!4760 = !DILocalVariable(name: "hwdev", arg: 1, scope: !4759, file: !3, line: 490, type: !3372)
!4761 = !DILocation(line: 490, column: 37, scope: !4759)
!4762 = !DILocalVariable(name: "sgl", arg: 2, scope: !4759, file: !3, line: 490, type: !3843)
!4763 = !DILocation(line: 490, column: 64, scope: !4759)
!4764 = !DILocalVariable(name: "nelems", arg: 3, scope: !4759, file: !3, line: 490, type: !299)
!4765 = !DILocation(line: 490, column: 73, scope: !4759)
!4766 = !DILocalVariable(name: "dir", arg: 4, scope: !4759, file: !3, line: 491, type: !98)
!4767 = !DILocation(line: 491, column: 27, scope: !4759)
!4768 = !DILocalVariable(name: "attrs", arg: 5, scope: !4759, file: !3, line: 491, type: !160)
!4769 = !DILocation(line: 491, column: 46, scope: !4759)
!4770 = !DILocalVariable(name: "sg", scope: !4759, file: !3, line: 493, type: !3843)
!4771 = !DILocation(line: 493, column: 22, scope: !4759)
!4772 = !DILocalVariable(name: "i", scope: !4759, file: !3, line: 494, type: !299)
!4773 = !DILocation(line: 494, column: 6, scope: !4759)
!4774 = !DILocation(line: 496, column: 2, scope: !4759)
!4775 = !DILocation(line: 496, column: 2, scope: !4776)
!4776 = distinct !DILexicalBlock(scope: !4777, file: !3, line: 496, column: 2)
!4777 = distinct !DILexicalBlock(scope: !4759, file: !3, line: 496, column: 2)
!4778 = !DILocation(line: 496, column: 2, scope: !4777)
!4779 = !DILocation(line: 496, column: 2, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !4776, file: !3, line: 496, column: 2)
!4781 = !DILocation(line: 496, column: 2, scope: !4782)
!4782 = distinct !DILexicalBlock(scope: !4780, file: !3, line: 496, column: 2)
!4783 = !DILocation(line: 496, column: 2, scope: !4784)
!4784 = distinct !DILexicalBlock(scope: !4780, file: !3, line: 496, column: 2)
!4785 = !{i32 -2141793838, i32 -2141793809, i32 -2141793763, i32 -2141793705, i32 -2141793651, i32 -2141793597, i32 -2141793542, i32 -2141793511}
!4786 = !DILocation(line: 496, column: 2, scope: !4787)
!4787 = distinct !DILexicalBlock(scope: !4788, file: !3, line: 496, column: 2)
!4788 = distinct !DILexicalBlock(scope: !4780, file: !3, line: 496, column: 2)
!4789 = !{i32 -2141793063, i32 -2141793056, i32 -2141793002, i32 -2141792971, i32 -2141792941}
!4790 = !DILocation(line: 496, column: 2, scope: !4788)
!4791 = !DILocation(line: 498, column: 2, scope: !4792)
!4792 = distinct !DILexicalBlock(scope: !4759, file: !3, line: 498, column: 2)
!4793 = !DILocation(line: 498, column: 2, scope: !4794)
!4794 = distinct !DILexicalBlock(scope: !4792, file: !3, line: 498, column: 2)
!4795 = !DILocation(line: 499, column: 26, scope: !4794)
!4796 = !DILocation(line: 499, column: 33, scope: !4794)
!4797 = !DILocation(line: 499, column: 37, scope: !4794)
!4798 = !DILocation(line: 499, column: 50, scope: !4794)
!4799 = !DILocation(line: 500, column: 5, scope: !4794)
!4800 = !DILocation(line: 500, column: 10, scope: !4794)
!4801 = !DILocation(line: 499, column: 3, scope: !4794)
!4802 = distinct !{!4802, !4791, !4803}
!4803 = !DILocation(line: 500, column: 15, scope: !4792)
!4804 = !DILocation(line: 502, column: 1, scope: !4759)
!4805 = distinct !DISubprogram(name: "xen_swiotlb_sync_single_for_cpu", scope: !3, file: !3, line: 452, type: !3876, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!4806 = !DILocalVariable(name: "dev", arg: 1, scope: !4805, file: !3, line: 452, type: !3372)
!4807 = !DILocation(line: 452, column: 48, scope: !4805)
!4808 = !DILocalVariable(name: "dma_addr", arg: 2, scope: !4805, file: !3, line: 452, type: !164)
!4809 = !DILocation(line: 452, column: 64, scope: !4805)
!4810 = !DILocalVariable(name: "size", arg: 3, scope: !4805, file: !3, line: 453, type: !502)
!4811 = !DILocation(line: 453, column: 10, scope: !4805)
!4812 = !DILocalVariable(name: "dir", arg: 4, scope: !4805, file: !3, line: 453, type: !98)
!4813 = !DILocation(line: 453, column: 40, scope: !4805)
!4814 = !DILocalVariable(name: "paddr", scope: !4805, file: !3, line: 455, type: !1739)
!4815 = !DILocation(line: 455, column: 14, scope: !4805)
!4816 = !DILocation(line: 455, column: 38, scope: !4805)
!4817 = !DILocation(line: 455, column: 43, scope: !4805)
!4818 = !DILocation(line: 455, column: 22, scope: !4805)
!4819 = !DILocation(line: 457, column: 27, scope: !4820)
!4820 = distinct !DILexicalBlock(scope: !4805, file: !3, line: 457, column: 6)
!4821 = !DILocation(line: 457, column: 7, scope: !4820)
!4822 = !DILocation(line: 457, column: 6, scope: !4805)
!4823 = !DILocation(line: 458, column: 17, scope: !4824)
!4824 = distinct !DILexicalBlock(scope: !4825, file: !3, line: 458, column: 7)
!4825 = distinct !DILexicalBlock(scope: !4820, file: !3, line: 457, column: 33)
!4826 = !DILocation(line: 458, column: 7, scope: !4824)
!4827 = !DILocation(line: 458, column: 7, scope: !4825)
!4828 = !DILocation(line: 459, column: 26, scope: !4824)
!4829 = !DILocation(line: 459, column: 33, scope: !4824)
!4830 = !DILocation(line: 459, column: 39, scope: !4824)
!4831 = !DILocation(line: 459, column: 4, scope: !4824)
!4832 = !DILocation(line: 461, column: 25, scope: !4824)
!4833 = !DILocation(line: 461, column: 30, scope: !4824)
!4834 = !DILocation(line: 461, column: 40, scope: !4824)
!4835 = !DILocation(line: 461, column: 46, scope: !4824)
!4836 = !DILocation(line: 461, column: 4, scope: !4824)
!4837 = !DILocation(line: 462, column: 2, scope: !4825)
!4838 = !DILocation(line: 464, column: 28, scope: !4839)
!4839 = distinct !DILexicalBlock(scope: !4805, file: !3, line: 464, column: 6)
!4840 = !DILocation(line: 464, column: 33, scope: !4839)
!4841 = !DILocation(line: 464, column: 6, scope: !4839)
!4842 = !DILocation(line: 464, column: 6, scope: !4805)
!4843 = !DILocation(line: 465, column: 27, scope: !4839)
!4844 = !DILocation(line: 465, column: 32, scope: !4839)
!4845 = !DILocation(line: 465, column: 39, scope: !4839)
!4846 = !DILocation(line: 465, column: 45, scope: !4839)
!4847 = !DILocation(line: 465, column: 3, scope: !4839)
!4848 = !DILocation(line: 466, column: 1, scope: !4805)
!4849 = distinct !DISubprogram(name: "xen_swiotlb_sync_single_for_device", scope: !3, file: !3, line: 469, type: !3876, scopeLine: 471, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!4850 = !DILocalVariable(name: "dev", arg: 1, scope: !4849, file: !3, line: 469, type: !3372)
!4851 = !DILocation(line: 469, column: 51, scope: !4849)
!4852 = !DILocalVariable(name: "dma_addr", arg: 2, scope: !4849, file: !3, line: 469, type: !164)
!4853 = !DILocation(line: 469, column: 67, scope: !4849)
!4854 = !DILocalVariable(name: "size", arg: 3, scope: !4849, file: !3, line: 470, type: !502)
!4855 = !DILocation(line: 470, column: 10, scope: !4849)
!4856 = !DILocalVariable(name: "dir", arg: 4, scope: !4849, file: !3, line: 470, type: !98)
!4857 = !DILocation(line: 470, column: 40, scope: !4849)
!4858 = !DILocalVariable(name: "paddr", scope: !4849, file: !3, line: 472, type: !1739)
!4859 = !DILocation(line: 472, column: 14, scope: !4849)
!4860 = !DILocation(line: 472, column: 38, scope: !4849)
!4861 = !DILocation(line: 472, column: 43, scope: !4849)
!4862 = !DILocation(line: 472, column: 22, scope: !4849)
!4863 = !DILocation(line: 474, column: 28, scope: !4864)
!4864 = distinct !DILexicalBlock(scope: !4849, file: !3, line: 474, column: 6)
!4865 = !DILocation(line: 474, column: 33, scope: !4864)
!4866 = !DILocation(line: 474, column: 6, scope: !4864)
!4867 = !DILocation(line: 474, column: 6, scope: !4849)
!4868 = !DILocation(line: 475, column: 27, scope: !4864)
!4869 = !DILocation(line: 475, column: 32, scope: !4864)
!4870 = !DILocation(line: 475, column: 39, scope: !4864)
!4871 = !DILocation(line: 475, column: 45, scope: !4864)
!4872 = !DILocation(line: 475, column: 3, scope: !4864)
!4873 = !DILocation(line: 477, column: 27, scope: !4874)
!4874 = distinct !DILexicalBlock(scope: !4849, file: !3, line: 477, column: 6)
!4875 = !DILocation(line: 477, column: 7, scope: !4874)
!4876 = !DILocation(line: 477, column: 6, scope: !4849)
!4877 = !DILocation(line: 478, column: 17, scope: !4878)
!4878 = distinct !DILexicalBlock(scope: !4879, file: !3, line: 478, column: 7)
!4879 = distinct !DILexicalBlock(scope: !4874, file: !3, line: 477, column: 33)
!4880 = !DILocation(line: 478, column: 7, scope: !4878)
!4881 = !DILocation(line: 478, column: 7, scope: !4879)
!4882 = !DILocation(line: 479, column: 29, scope: !4878)
!4883 = !DILocation(line: 479, column: 36, scope: !4878)
!4884 = !DILocation(line: 479, column: 42, scope: !4878)
!4885 = !DILocation(line: 479, column: 4, scope: !4878)
!4886 = !DILocation(line: 481, column: 28, scope: !4878)
!4887 = !DILocation(line: 481, column: 33, scope: !4878)
!4888 = !DILocation(line: 481, column: 43, scope: !4878)
!4889 = !DILocation(line: 481, column: 49, scope: !4878)
!4890 = !DILocation(line: 481, column: 4, scope: !4878)
!4891 = !DILocation(line: 482, column: 2, scope: !4879)
!4892 = !DILocation(line: 483, column: 1, scope: !4849)
!4893 = distinct !DISubprogram(name: "xen_swiotlb_sync_sg_for_cpu", scope: !3, file: !3, line: 529, type: !3881, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!4894 = !DILocalVariable(name: "dev", arg: 1, scope: !4893, file: !3, line: 529, type: !3372)
!4895 = !DILocation(line: 529, column: 44, scope: !4893)
!4896 = !DILocalVariable(name: "sgl", arg: 2, scope: !4893, file: !3, line: 529, type: !3843)
!4897 = !DILocation(line: 529, column: 69, scope: !4893)
!4898 = !DILocalVariable(name: "nelems", arg: 3, scope: !4893, file: !3, line: 530, type: !299)
!4899 = !DILocation(line: 530, column: 12, scope: !4893)
!4900 = !DILocalVariable(name: "dir", arg: 4, scope: !4893, file: !3, line: 530, type: !98)
!4901 = !DILocation(line: 530, column: 44, scope: !4893)
!4902 = !DILocalVariable(name: "sg", scope: !4893, file: !3, line: 532, type: !3843)
!4903 = !DILocation(line: 532, column: 22, scope: !4893)
!4904 = !DILocalVariable(name: "i", scope: !4893, file: !3, line: 533, type: !299)
!4905 = !DILocation(line: 533, column: 6, scope: !4893)
!4906 = !DILocation(line: 535, column: 2, scope: !4907)
!4907 = distinct !DILexicalBlock(scope: !4893, file: !3, line: 535, column: 2)
!4908 = !DILocation(line: 535, column: 2, scope: !4909)
!4909 = distinct !DILexicalBlock(scope: !4907, file: !3, line: 535, column: 2)
!4910 = !DILocation(line: 536, column: 35, scope: !4911)
!4911 = distinct !DILexicalBlock(scope: !4909, file: !3, line: 535, column: 34)
!4912 = !DILocation(line: 536, column: 40, scope: !4911)
!4913 = !DILocation(line: 536, column: 44, scope: !4911)
!4914 = !DILocation(line: 537, column: 5, scope: !4911)
!4915 = !DILocation(line: 537, column: 9, scope: !4911)
!4916 = !DILocation(line: 537, column: 17, scope: !4911)
!4917 = !DILocation(line: 536, column: 3, scope: !4911)
!4918 = !DILocation(line: 538, column: 2, scope: !4911)
!4919 = distinct !{!4919, !4906, !4920}
!4920 = !DILocation(line: 538, column: 2, scope: !4907)
!4921 = !DILocation(line: 539, column: 1, scope: !4893)
!4922 = distinct !DISubprogram(name: "xen_swiotlb_sync_sg_for_device", scope: !3, file: !3, line: 542, type: !3881, scopeLine: 544, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!4923 = !DILocalVariable(name: "dev", arg: 1, scope: !4922, file: !3, line: 542, type: !3372)
!4924 = !DILocation(line: 542, column: 47, scope: !4922)
!4925 = !DILocalVariable(name: "sgl", arg: 2, scope: !4922, file: !3, line: 542, type: !3843)
!4926 = !DILocation(line: 542, column: 72, scope: !4922)
!4927 = !DILocalVariable(name: "nelems", arg: 3, scope: !4922, file: !3, line: 543, type: !299)
!4928 = !DILocation(line: 543, column: 15, scope: !4922)
!4929 = !DILocalVariable(name: "dir", arg: 4, scope: !4922, file: !3, line: 543, type: !98)
!4930 = !DILocation(line: 543, column: 47, scope: !4922)
!4931 = !DILocalVariable(name: "sg", scope: !4922, file: !3, line: 545, type: !3843)
!4932 = !DILocation(line: 545, column: 22, scope: !4922)
!4933 = !DILocalVariable(name: "i", scope: !4922, file: !3, line: 546, type: !299)
!4934 = !DILocation(line: 546, column: 6, scope: !4922)
!4935 = !DILocation(line: 548, column: 2, scope: !4936)
!4936 = distinct !DILexicalBlock(scope: !4922, file: !3, line: 548, column: 2)
!4937 = !DILocation(line: 548, column: 2, scope: !4938)
!4938 = distinct !DILexicalBlock(scope: !4936, file: !3, line: 548, column: 2)
!4939 = !DILocation(line: 549, column: 38, scope: !4940)
!4940 = distinct !DILexicalBlock(scope: !4938, file: !3, line: 548, column: 34)
!4941 = !DILocation(line: 549, column: 43, scope: !4940)
!4942 = !DILocation(line: 549, column: 47, scope: !4940)
!4943 = !DILocation(line: 550, column: 5, scope: !4940)
!4944 = !DILocation(line: 550, column: 9, scope: !4940)
!4945 = !DILocation(line: 550, column: 17, scope: !4940)
!4946 = !DILocation(line: 549, column: 3, scope: !4940)
!4947 = !DILocation(line: 551, column: 2, scope: !4940)
!4948 = distinct !{!4948, !4935, !4949}
!4949 = !DILocation(line: 551, column: 2, scope: !4936)
!4950 = !DILocation(line: 552, column: 1, scope: !4922)
!4951 = distinct !DISubprogram(name: "xen_swiotlb_dma_supported", scope: !3, file: !3, line: 561, type: !3890, scopeLine: 562, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!4952 = !DILocalVariable(name: "hwdev", arg: 1, scope: !4951, file: !3, line: 561, type: !3372)
!4953 = !DILocation(line: 561, column: 42, scope: !4951)
!4954 = !DILocalVariable(name: "mask", arg: 2, scope: !4951, file: !3, line: 561, type: !165)
!4955 = !DILocation(line: 561, column: 53, scope: !4951)
!4956 = !DILocation(line: 563, column: 25, scope: !4951)
!4957 = !DILocation(line: 563, column: 32, scope: !4951)
!4958 = !DILocation(line: 563, column: 47, scope: !4951)
!4959 = !DILocation(line: 563, column: 9, scope: !4951)
!4960 = !DILocation(line: 563, column: 55, scope: !4951)
!4961 = !DILocation(line: 563, column: 52, scope: !4951)
!4962 = !DILocation(line: 563, column: 2, scope: !4951)
!4963 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4964, file: !4964, line: 30, type: !4965, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!4964 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4965 = !DISubroutineType(types: !4966)
!4966 = !{!299, !165}
!4967 = !DILocation(line: 366, column: 40, scope: !4106, inlinedAt: !4968)
!4968 = distinct !DILocation(line: 32, column: 9, scope: !4963)
!4969 = !DILocation(line: 368, column: 6, scope: !4106, inlinedAt: !4968)
!4970 = !DILocalVariable(name: "n", arg: 1, scope: !4963, file: !4964, line: 30, type: !165)
!4971 = !DILocation(line: 30, column: 21, scope: !4963)
!4972 = !DILocation(line: 32, column: 15, scope: !4963)
!4973 = !DILocation(line: 374, column: 2, scope: !4106, inlinedAt: !4968)
!4974 = !DILocation(line: 376, column: 14, scope: !4106, inlinedAt: !4968)
!4975 = !DILocation(line: 377, column: 9, scope: !4106, inlinedAt: !4968)
!4976 = !DILocation(line: 377, column: 16, scope: !4106, inlinedAt: !4968)
!4977 = !DILocation(line: 32, column: 18, scope: !4963)
!4978 = !DILocation(line: 32, column: 2, scope: !4963)
!4979 = distinct !DISubprogram(name: "virt_to_phys", scope: !4145, file: !4145, line: 129, type: !4980, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!4980 = !DISubroutineType(types: !4981)
!4981 = !{!1739, !4982}
!4982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4983, size: 64)
!4983 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4984 = !DILocalVariable(name: "address", arg: 1, scope: !4979, file: !4145, line: 129, type: !4982)
!4985 = !DILocation(line: 129, column: 55, scope: !4979)
!4986 = !DILocation(line: 131, column: 9, scope: !4979)
!4987 = !DILocation(line: 131, column: 2, scope: !4979)
!4988 = distinct !DISubprogram(name: "xen_alloc_coherent_pages", scope: !4989, file: !4989, line: 8, type: !3370, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!4989 = !DIFile(filename: "./arch/x86/include/asm/xen/page-coherent.h", directory: "/home/lizy2001/genbc/linux")
!4990 = !DILocalVariable(name: "hwdev", arg: 1, scope: !4988, file: !4989, line: 8, type: !3372)
!4991 = !DILocation(line: 8, column: 61, scope: !4988)
!4992 = !DILocalVariable(name: "size", arg: 2, scope: !4988, file: !4989, line: 8, type: !502)
!4993 = !DILocation(line: 8, column: 75, scope: !4988)
!4994 = !DILocalVariable(name: "dma_handle", arg: 3, scope: !4988, file: !4989, line: 9, type: !3809)
!4995 = !DILocation(line: 9, column: 15, scope: !4988)
!4996 = !DILocalVariable(name: "flags", arg: 4, scope: !4988, file: !4989, line: 9, type: !162)
!4997 = !DILocation(line: 9, column: 33, scope: !4988)
!4998 = !DILocalVariable(name: "attrs", arg: 5, scope: !4988, file: !4989, line: 10, type: !160)
!4999 = !DILocation(line: 10, column: 17, scope: !4988)
!5000 = !DILocalVariable(name: "vstart", scope: !4988, file: !4989, line: 12, type: !161)
!5001 = !DILocation(line: 12, column: 8, scope: !4988)
!5002 = !DILocation(line: 12, column: 41, scope: !4988)
!5003 = !DILocation(line: 12, column: 58, scope: !4988)
!5004 = !DILocation(line: 12, column: 48, scope: !4988)
!5005 = !DILocation(line: 12, column: 24, scope: !4988)
!5006 = !DILocation(line: 12, column: 17, scope: !4988)
!5007 = !DILocation(line: 13, column: 29, scope: !4988)
!5008 = !DILocation(line: 13, column: 16, scope: !4988)
!5009 = !DILocation(line: 13, column: 3, scope: !4988)
!5010 = !DILocation(line: 13, column: 14, scope: !4988)
!5011 = !DILocation(line: 14, column: 9, scope: !4988)
!5012 = !DILocation(line: 14, column: 2, scope: !4988)
!5013 = distinct !DISubprogram(name: "dma_to_phys", scope: !3651, file: !3651, line: 77, type: !5014, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5014 = !DISubroutineType(types: !5015)
!5015 = !{!1739, !3372, !164}
!5016 = !DILocalVariable(name: "dev", arg: 1, scope: !5013, file: !3651, line: 77, type: !3372)
!5017 = !DILocation(line: 77, column: 54, scope: !5013)
!5018 = !DILocalVariable(name: "dma_addr", arg: 2, scope: !5013, file: !3651, line: 77, type: !164)
!5019 = !DILocation(line: 77, column: 70, scope: !5013)
!5020 = !DILocalVariable(name: "paddr", scope: !5013, file: !3651, line: 79, type: !1739)
!5021 = !DILocation(line: 79, column: 14, scope: !5013)
!5022 = !DILocation(line: 81, column: 6, scope: !5023)
!5023 = distinct !DILexicalBlock(scope: !5013, file: !3651, line: 81, column: 6)
!5024 = !DILocation(line: 81, column: 11, scope: !5023)
!5025 = !DILocation(line: 81, column: 6, scope: !5013)
!5026 = !DILocation(line: 82, column: 33, scope: !5023)
!5027 = !DILocation(line: 82, column: 38, scope: !5023)
!5028 = !DILocation(line: 82, column: 11, scope: !5023)
!5029 = !DILocation(line: 82, column: 9, scope: !5023)
!5030 = !DILocation(line: 82, column: 3, scope: !5023)
!5031 = !DILocation(line: 84, column: 11, scope: !5023)
!5032 = !DILocation(line: 84, column: 9, scope: !5023)
!5033 = !DILocation(line: 86, column: 9, scope: !5013)
!5034 = !DILocation(line: 86, column: 2, scope: !5013)
!5035 = distinct !DISubprogram(name: "xen_phys_to_dma", scope: !3, file: !3, line: 64, type: !5036, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5036 = !DISubroutineType(types: !5037)
!5037 = !{!164, !3372, !1739}
!5038 = !DILocalVariable(name: "dev", arg: 1, scope: !5035, file: !3, line: 64, type: !3372)
!5039 = !DILocation(line: 64, column: 57, scope: !5035)
!5040 = !DILocalVariable(name: "paddr", arg: 2, scope: !5035, file: !3, line: 64, type: !1739)
!5041 = !DILocation(line: 64, column: 74, scope: !5035)
!5042 = !DILocation(line: 66, column: 21, scope: !5035)
!5043 = !DILocation(line: 66, column: 42, scope: !5035)
!5044 = !DILocation(line: 66, column: 47, scope: !5035)
!5045 = !DILocation(line: 66, column: 26, scope: !5035)
!5046 = !DILocation(line: 66, column: 9, scope: !5035)
!5047 = !DILocation(line: 66, column: 2, scope: !5035)
!5048 = distinct !DISubprogram(name: "range_straddles_page_boundary", scope: !3, file: !3, line: 90, type: !5049, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5049 = !DISubroutineType(types: !5050)
!5050 = !{!299, !1739, !502}
!5051 = !DILocalVariable(name: "p", arg: 1, scope: !5048, file: !3, line: 90, type: !1739)
!5052 = !DILocation(line: 90, column: 61, scope: !5048)
!5053 = !DILocalVariable(name: "size", arg: 2, scope: !5048, file: !3, line: 90, type: !502)
!5054 = !DILocation(line: 90, column: 71, scope: !5048)
!5055 = !DILocalVariable(name: "next_bfn", scope: !5048, file: !3, line: 92, type: !160)
!5056 = !DILocation(line: 92, column: 16, scope: !5048)
!5057 = !DILocalVariable(name: "xen_pfn", scope: !5048, file: !3, line: 92, type: !160)
!5058 = !DILocation(line: 92, column: 26, scope: !5048)
!5059 = !DILocation(line: 92, column: 36, scope: !5048)
!5060 = !DILocalVariable(name: "i", scope: !5048, file: !3, line: 93, type: !6)
!5061 = !DILocation(line: 93, column: 15, scope: !5048)
!5062 = !DILocalVariable(name: "nr_pages", scope: !5048, file: !3, line: 93, type: !6)
!5063 = !DILocation(line: 93, column: 18, scope: !5048)
!5064 = !DILocation(line: 93, column: 29, scope: !5048)
!5065 = !DILocation(line: 95, column: 13, scope: !5048)
!5066 = !DILocation(line: 95, column: 11, scope: !5048)
!5067 = !DILocation(line: 97, column: 9, scope: !5068)
!5068 = distinct !DILexicalBlock(scope: !5048, file: !3, line: 97, column: 2)
!5069 = !DILocation(line: 97, column: 7, scope: !5068)
!5070 = !DILocation(line: 97, column: 14, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !5068, file: !3, line: 97, column: 2)
!5072 = !DILocation(line: 97, column: 18, scope: !5071)
!5073 = !DILocation(line: 97, column: 16, scope: !5071)
!5074 = !DILocation(line: 97, column: 2, scope: !5068)
!5075 = !DILocation(line: 98, column: 7, scope: !5076)
!5076 = distinct !DILexicalBlock(scope: !5071, file: !3, line: 98, column: 7)
!5077 = !DILocation(line: 98, column: 32, scope: !5076)
!5078 = !DILocation(line: 98, column: 29, scope: !5076)
!5079 = !DILocation(line: 98, column: 7, scope: !5071)
!5080 = !DILocation(line: 99, column: 4, scope: !5076)
!5081 = !DILocation(line: 98, column: 34, scope: !5076)
!5082 = !DILocation(line: 97, column: 29, scope: !5071)
!5083 = !DILocation(line: 97, column: 2, scope: !5071)
!5084 = distinct !{!5084, !5074, !5085}
!5085 = !DILocation(line: 99, column: 11, scope: !5068)
!5086 = !DILocation(line: 101, column: 2, scope: !5048)
!5087 = !DILocation(line: 102, column: 1, scope: !5048)
!5088 = distinct !DISubprogram(name: "xen_free_coherent_pages", scope: !4989, file: !4989, line: 17, type: !3812, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5089 = !DILocalVariable(name: "hwdev", arg: 1, scope: !5088, file: !4989, line: 17, type: !3372)
!5090 = !DILocation(line: 17, column: 59, scope: !5088)
!5091 = !DILocalVariable(name: "size", arg: 2, scope: !5088, file: !4989, line: 17, type: !502)
!5092 = !DILocation(line: 17, column: 73, scope: !5088)
!5093 = !DILocalVariable(name: "cpu_addr", arg: 3, scope: !5088, file: !4989, line: 18, type: !161)
!5094 = !DILocation(line: 18, column: 9, scope: !5088)
!5095 = !DILocalVariable(name: "dma_handle", arg: 4, scope: !5088, file: !4989, line: 18, type: !164)
!5096 = !DILocation(line: 18, column: 30, scope: !5088)
!5097 = !DILocalVariable(name: "attrs", arg: 5, scope: !5088, file: !4989, line: 19, type: !160)
!5098 = !DILocation(line: 19, column: 17, scope: !5088)
!5099 = !DILocation(line: 21, column: 29, scope: !5088)
!5100 = !DILocation(line: 21, column: 13, scope: !5088)
!5101 = !DILocation(line: 21, column: 49, scope: !5088)
!5102 = !DILocation(line: 21, column: 39, scope: !5088)
!5103 = !DILocation(line: 21, column: 2, scope: !5088)
!5104 = !DILocation(line: 22, column: 1, scope: !5088)
!5105 = distinct !DISubprogram(name: "phys_to_dma", scope: !3651, file: !3651, line: 72, type: !5036, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5106 = !DILocalVariable(name: "dev", arg: 1, scope: !5105, file: !3651, line: 72, type: !3372)
!5107 = !DILocation(line: 72, column: 53, scope: !5105)
!5108 = !DILocalVariable(name: "paddr", arg: 2, scope: !5105, file: !3651, line: 72, type: !1739)
!5109 = !DILocation(line: 72, column: 70, scope: !5105)
!5110 = !DILocation(line: 74, column: 9, scope: !5105)
!5111 = !DILocation(line: 74, column: 2, scope: !5105)
!5112 = distinct !DISubprogram(name: "translate_dma_to_phys", scope: !3651, file: !3651, line: 40, type: !5014, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5113 = !DILocalVariable(name: "dev", arg: 1, scope: !5112, file: !3651, line: 40, type: !3372)
!5114 = !DILocation(line: 40, column: 64, scope: !5112)
!5115 = !DILocalVariable(name: "dma_addr", arg: 2, scope: !5112, file: !3651, line: 41, type: !164)
!5116 = !DILocation(line: 41, column: 14, scope: !5112)
!5117 = !DILocalVariable(name: "m", scope: !5112, file: !3651, line: 43, type: !3648)
!5118 = !DILocation(line: 43, column: 31, scope: !5112)
!5119 = !DILocation(line: 45, column: 11, scope: !5120)
!5120 = distinct !DILexicalBlock(scope: !5112, file: !3651, line: 45, column: 2)
!5121 = !DILocation(line: 45, column: 16, scope: !5120)
!5122 = !DILocation(line: 45, column: 9, scope: !5120)
!5123 = !DILocation(line: 45, column: 7, scope: !5120)
!5124 = !DILocation(line: 45, column: 31, scope: !5125)
!5125 = distinct !DILexicalBlock(scope: !5120, file: !3651, line: 45, column: 2)
!5126 = !DILocation(line: 45, column: 34, scope: !5125)
!5127 = !DILocation(line: 45, column: 2, scope: !5120)
!5128 = !DILocation(line: 46, column: 7, scope: !5129)
!5129 = distinct !DILexicalBlock(scope: !5125, file: !3651, line: 46, column: 7)
!5130 = !DILocation(line: 46, column: 19, scope: !5129)
!5131 = !DILocation(line: 46, column: 22, scope: !5129)
!5132 = !DILocation(line: 46, column: 16, scope: !5129)
!5133 = !DILocation(line: 46, column: 32, scope: !5129)
!5134 = !DILocation(line: 46, column: 35, scope: !5129)
!5135 = !DILocation(line: 46, column: 46, scope: !5129)
!5136 = !DILocation(line: 46, column: 49, scope: !5129)
!5137 = !DILocation(line: 46, column: 44, scope: !5129)
!5138 = !DILocation(line: 46, column: 61, scope: !5129)
!5139 = !DILocation(line: 46, column: 64, scope: !5129)
!5140 = !DILocation(line: 46, column: 59, scope: !5129)
!5141 = !DILocation(line: 46, column: 7, scope: !5125)
!5142 = !DILocation(line: 47, column: 24, scope: !5129)
!5143 = !DILocation(line: 47, column: 35, scope: !5129)
!5144 = !DILocation(line: 47, column: 38, scope: !5129)
!5145 = !DILocation(line: 47, column: 33, scope: !5129)
!5146 = !DILocation(line: 47, column: 4, scope: !5129)
!5147 = !DILocation(line: 45, column: 41, scope: !5125)
!5148 = !DILocation(line: 45, column: 2, scope: !5125)
!5149 = distinct !{!5149, !5127, !5150}
!5150 = !DILocation(line: 47, column: 38, scope: !5120)
!5151 = !DILocation(line: 49, column: 2, scope: !5112)
!5152 = !DILocation(line: 50, column: 1, scope: !5112)
!5153 = distinct !DISubprogram(name: "xen_phys_to_bus", scope: !3, file: !3, line: 55, type: !5154, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5154 = !DISubroutineType(types: !5155)
!5155 = !{!1739, !3372, !1739}
!5156 = !DILocalVariable(name: "dev", arg: 1, scope: !5153, file: !3, line: 55, type: !3372)
!5157 = !DILocation(line: 55, column: 58, scope: !5153)
!5158 = !DILocalVariable(name: "paddr", arg: 2, scope: !5153, file: !3, line: 55, type: !1739)
!5159 = !DILocation(line: 55, column: 75, scope: !5153)
!5160 = !DILocalVariable(name: "bfn", scope: !5153, file: !3, line: 57, type: !160)
!5161 = !DILocation(line: 57, column: 16, scope: !5153)
!5162 = !DILocation(line: 57, column: 22, scope: !5153)
!5163 = !DILocalVariable(name: "baddr", scope: !5153, file: !3, line: 58, type: !1739)
!5164 = !DILocation(line: 58, column: 14, scope: !5153)
!5165 = !DILocation(line: 58, column: 35, scope: !5153)
!5166 = !DILocation(line: 58, column: 39, scope: !5153)
!5167 = !DILocation(line: 60, column: 11, scope: !5153)
!5168 = !DILocation(line: 60, column: 17, scope: !5153)
!5169 = !DILocation(line: 60, column: 8, scope: !5153)
!5170 = !DILocation(line: 61, column: 9, scope: !5153)
!5171 = !DILocation(line: 61, column: 2, scope: !5153)
!5172 = distinct !DISubprogram(name: "pfn_to_gfn", scope: !4165, file: !4165, line: 251, type: !4084, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5173 = !DILocalVariable(name: "pfn", arg: 1, scope: !5172, file: !4165, line: 251, type: !160)
!5174 = !DILocation(line: 251, column: 54, scope: !5172)
!5175 = !DILocation(line: 253, column: 6, scope: !5176)
!5176 = distinct !DILexicalBlock(scope: !5172, file: !4165, line: 253, column: 6)
!5177 = !DILocation(line: 253, column: 6, scope: !5172)
!5178 = !DILocation(line: 254, column: 10, scope: !5176)
!5179 = !DILocation(line: 254, column: 3, scope: !5176)
!5180 = !DILocation(line: 256, column: 21, scope: !5176)
!5181 = !DILocation(line: 256, column: 10, scope: !5176)
!5182 = !DILocation(line: 256, column: 3, scope: !5176)
!5183 = !DILocation(line: 257, column: 1, scope: !5172)
!5184 = distinct !DISubprogram(name: "xen_feature", scope: !5185, file: !5185, line: 19, type: !2187, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5185 = !DIFile(filename: "./include/xen/features.h", directory: "/home/lizy2001/genbc/linux")
!5186 = !DILocalVariable(name: "flag", arg: 1, scope: !5184, file: !5185, line: 19, type: !299)
!5187 = !DILocation(line: 19, column: 35, scope: !5184)
!5188 = !DILocation(line: 21, column: 22, scope: !5184)
!5189 = !DILocation(line: 21, column: 9, scope: !5184)
!5190 = !DILocation(line: 21, column: 2, scope: !5184)
!5191 = distinct !DISubprogram(name: "pfn_to_mfn", scope: !4165, file: !4165, line: 164, type: !4084, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5192 = !DILocalVariable(name: "pfn", arg: 1, scope: !5191, file: !4165, line: 164, type: !160)
!5193 = !DILocation(line: 164, column: 54, scope: !5191)
!5194 = !DILocalVariable(name: "mfn", scope: !5191, file: !4165, line: 166, type: !160)
!5195 = !DILocation(line: 166, column: 16, scope: !5191)
!5196 = !DILocation(line: 173, column: 6, scope: !5197)
!5197 = distinct !DILexicalBlock(scope: !5191, file: !4165, line: 173, column: 6)
!5198 = !DILocation(line: 173, column: 6, scope: !5191)
!5199 = !DILocation(line: 174, column: 10, scope: !5197)
!5200 = !DILocation(line: 174, column: 3, scope: !5197)
!5201 = !DILocation(line: 176, column: 21, scope: !5191)
!5202 = !DILocation(line: 176, column: 8, scope: !5191)
!5203 = !DILocation(line: 176, column: 6, scope: !5191)
!5204 = !DILocation(line: 178, column: 6, scope: !5205)
!5205 = distinct !DILexicalBlock(scope: !5191, file: !4165, line: 178, column: 6)
!5206 = !DILocation(line: 178, column: 10, scope: !5205)
!5207 = !DILocation(line: 178, column: 6, scope: !5191)
!5208 = !DILocation(line: 179, column: 7, scope: !5205)
!5209 = !DILocation(line: 179, column: 3, scope: !5205)
!5210 = !DILocation(line: 181, column: 9, scope: !5191)
!5211 = !DILocation(line: 181, column: 2, scope: !5191)
!5212 = !DILocation(line: 182, column: 1, scope: !5191)
!5213 = distinct !DISubprogram(name: "__pfn_to_mfn", scope: !4165, file: !4165, line: 141, type: !4084, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5214 = !DILocalVariable(name: "pfn", arg: 1, scope: !5213, file: !4165, line: 141, type: !160)
!5215 = !DILocation(line: 141, column: 56, scope: !5213)
!5216 = !DILocalVariable(name: "mfn", scope: !5213, file: !4165, line: 143, type: !160)
!5217 = !DILocation(line: 143, column: 16, scope: !5213)
!5218 = !DILocation(line: 145, column: 6, scope: !5219)
!5219 = distinct !DILexicalBlock(scope: !5213, file: !4165, line: 145, column: 6)
!5220 = !DILocation(line: 145, column: 12, scope: !5219)
!5221 = !DILocation(line: 145, column: 10, scope: !5219)
!5222 = !DILocation(line: 145, column: 6, scope: !5213)
!5223 = !DILocation(line: 146, column: 9, scope: !5219)
!5224 = !DILocation(line: 146, column: 22, scope: !5219)
!5225 = !DILocation(line: 146, column: 7, scope: !5219)
!5226 = !DILocation(line: 146, column: 3, scope: !5219)
!5227 = !DILocation(line: 147, column: 11, scope: !5228)
!5228 = distinct !DILexicalBlock(scope: !5219, file: !4165, line: 147, column: 11)
!5229 = !DILocation(line: 147, column: 11, scope: !5219)
!5230 = !DILocation(line: 148, column: 30, scope: !5228)
!5231 = !DILocation(line: 148, column: 10, scope: !5228)
!5232 = !DILocation(line: 148, column: 3, scope: !5228)
!5233 = !DILocation(line: 150, column: 10, scope: !5228)
!5234 = !DILocation(line: 150, column: 3, scope: !5228)
!5235 = !DILocation(line: 152, column: 6, scope: !5236)
!5236 = distinct !DILexicalBlock(scope: !5213, file: !4165, line: 152, column: 6)
!5237 = !DILocation(line: 152, column: 6, scope: !5213)
!5238 = !DILocation(line: 153, column: 30, scope: !5236)
!5239 = !DILocation(line: 153, column: 10, scope: !5236)
!5240 = !DILocation(line: 153, column: 3, scope: !5236)
!5241 = !DILocation(line: 155, column: 9, scope: !5213)
!5242 = !DILocation(line: 155, column: 2, scope: !5213)
!5243 = !DILocation(line: 156, column: 1, scope: !5213)
!5244 = distinct !DISubprogram(name: "phys_to_dma_unencrypted", scope: !3651, file: !3651, line: 58, type: !5036, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5245 = !DILocalVariable(name: "dev", arg: 1, scope: !5244, file: !3651, line: 58, type: !3372)
!5246 = !DILocation(line: 58, column: 65, scope: !5244)
!5247 = !DILocalVariable(name: "paddr", arg: 2, scope: !5244, file: !3651, line: 59, type: !1739)
!5248 = !DILocation(line: 59, column: 15, scope: !5244)
!5249 = !DILocation(line: 61, column: 6, scope: !5250)
!5250 = distinct !DILexicalBlock(scope: !5244, file: !3651, line: 61, column: 6)
!5251 = !DILocation(line: 61, column: 11, scope: !5250)
!5252 = !DILocation(line: 61, column: 6, scope: !5244)
!5253 = !DILocation(line: 62, column: 32, scope: !5250)
!5254 = !DILocation(line: 62, column: 37, scope: !5250)
!5255 = !DILocation(line: 62, column: 10, scope: !5250)
!5256 = !DILocation(line: 62, column: 3, scope: !5250)
!5257 = !DILocation(line: 63, column: 9, scope: !5244)
!5258 = !DILocation(line: 63, column: 2, scope: !5244)
!5259 = !DILocation(line: 64, column: 1, scope: !5244)
!5260 = distinct !DISubprogram(name: "translate_phys_to_dma", scope: !3651, file: !3651, line: 27, type: !5036, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5261 = !DILocalVariable(name: "dev", arg: 1, scope: !5260, file: !3651, line: 27, type: !3372)
!5262 = !DILocation(line: 27, column: 63, scope: !5260)
!5263 = !DILocalVariable(name: "paddr", arg: 2, scope: !5260, file: !3651, line: 28, type: !1739)
!5264 = !DILocation(line: 28, column: 15, scope: !5260)
!5265 = !DILocalVariable(name: "m", scope: !5260, file: !3651, line: 30, type: !3648)
!5266 = !DILocation(line: 30, column: 31, scope: !5260)
!5267 = !DILocation(line: 32, column: 11, scope: !5268)
!5268 = distinct !DILexicalBlock(scope: !5260, file: !3651, line: 32, column: 2)
!5269 = !DILocation(line: 32, column: 16, scope: !5268)
!5270 = !DILocation(line: 32, column: 9, scope: !5268)
!5271 = !DILocation(line: 32, column: 7, scope: !5268)
!5272 = !DILocation(line: 32, column: 31, scope: !5273)
!5273 = distinct !DILexicalBlock(scope: !5268, file: !3651, line: 32, column: 2)
!5274 = !DILocation(line: 32, column: 34, scope: !5273)
!5275 = !DILocation(line: 32, column: 2, scope: !5268)
!5276 = !DILocation(line: 33, column: 7, scope: !5277)
!5277 = distinct !DILexicalBlock(scope: !5273, file: !3651, line: 33, column: 7)
!5278 = !DILocation(line: 33, column: 16, scope: !5277)
!5279 = !DILocation(line: 33, column: 19, scope: !5277)
!5280 = !DILocation(line: 33, column: 13, scope: !5277)
!5281 = !DILocation(line: 33, column: 29, scope: !5277)
!5282 = !DILocation(line: 33, column: 32, scope: !5277)
!5283 = !DILocation(line: 33, column: 40, scope: !5277)
!5284 = !DILocation(line: 33, column: 43, scope: !5277)
!5285 = !DILocation(line: 33, column: 38, scope: !5277)
!5286 = !DILocation(line: 33, column: 55, scope: !5277)
!5287 = !DILocation(line: 33, column: 58, scope: !5277)
!5288 = !DILocation(line: 33, column: 53, scope: !5277)
!5289 = !DILocation(line: 33, column: 7, scope: !5273)
!5290 = !DILocation(line: 34, column: 23, scope: !5277)
!5291 = !DILocation(line: 34, column: 31, scope: !5277)
!5292 = !DILocation(line: 34, column: 34, scope: !5277)
!5293 = !DILocation(line: 34, column: 29, scope: !5277)
!5294 = !DILocation(line: 34, column: 4, scope: !5277)
!5295 = !DILocation(line: 32, column: 41, scope: !5273)
!5296 = !DILocation(line: 32, column: 2, scope: !5273)
!5297 = distinct !{!5297, !5275, !5298}
!5298 = !DILocation(line: 34, column: 34, scope: !5268)
!5299 = !DILocation(line: 37, column: 2, scope: !5260)
!5300 = !DILocation(line: 38, column: 1, scope: !5260)
!5301 = distinct !DISubprogram(name: "set_bit", scope: !5302, file: !5302, line: 26, type: !5303, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5302 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!5303 = !DISubroutineType(types: !5304)
!5304 = !{null, !591, !5305}
!5305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5306, size: 64)
!5306 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !160)
!5307 = !DILocalVariable(name: "nr", arg: 1, scope: !5308, file: !4107, line: 52, type: !591)
!5308 = distinct !DISubprogram(name: "arch_set_bit", scope: !4107, file: !4107, line: 52, type: !5303, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5309 = !DILocation(line: 52, column: 19, scope: !5308, inlinedAt: !5310)
!5310 = distinct !DILocation(line: 29, column: 2, scope: !5301)
!5311 = !DILocalVariable(name: "addr", arg: 2, scope: !5308, file: !4107, line: 52, type: !5305)
!5312 = !DILocation(line: 52, column: 47, scope: !5308, inlinedAt: !5310)
!5313 = !DILocalVariable(name: "v", arg: 1, scope: !5314, file: !5315, line: 84, type: !5318)
!5314 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !5315, file: !5315, line: 84, type: !5316, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5315 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5316 = !DISubroutineType(types: !5317)
!5317 = !{null, !5318, !502}
!5318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5319, size: 64)
!5319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4983)
!5320 = !DILocation(line: 84, column: 74, scope: !5314, inlinedAt: !5321)
!5321 = distinct !DILocation(line: 28, column: 2, scope: !5301)
!5322 = !DILocalVariable(name: "size", arg: 2, scope: !5314, file: !5315, line: 84, type: !502)
!5323 = !DILocation(line: 84, column: 84, scope: !5314, inlinedAt: !5321)
!5324 = !DILocalVariable(name: "nr", arg: 1, scope: !5301, file: !5302, line: 26, type: !591)
!5325 = !DILocation(line: 26, column: 33, scope: !5301)
!5326 = !DILocalVariable(name: "addr", arg: 2, scope: !5301, file: !5302, line: 26, type: !5305)
!5327 = !DILocation(line: 26, column: 61, scope: !5301)
!5328 = !DILocation(line: 28, column: 26, scope: !5301)
!5329 = !DILocation(line: 28, column: 33, scope: !5301)
!5330 = !DILocation(line: 28, column: 31, scope: !5301)
!5331 = !DILocation(line: 86, column: 20, scope: !5314, inlinedAt: !5321)
!5332 = !DILocation(line: 86, column: 23, scope: !5314, inlinedAt: !5321)
!5333 = !DILocation(line: 86, column: 2, scope: !5314, inlinedAt: !5321)
!5334 = !DILocation(line: 87, column: 2, scope: !5314, inlinedAt: !5321)
!5335 = !DILocation(line: 29, column: 15, scope: !5301)
!5336 = !DILocation(line: 29, column: 19, scope: !5301)
!5337 = !DILocation(line: 54, column: 27, scope: !5338, inlinedAt: !5310)
!5338 = distinct !DILexicalBlock(scope: !5308, file: !4107, line: 54, column: 6)
!5339 = !DILocation(line: 54, column: 6, scope: !5338, inlinedAt: !5310)
!5340 = !DILocation(line: 54, column: 6, scope: !5308, inlinedAt: !5310)
!5341 = !DILocation(line: 56, column: 6, scope: !5342, inlinedAt: !5310)
!5342 = distinct !DILexicalBlock(scope: !5338, file: !4107, line: 54, column: 32)
!5343 = !DILocation(line: 57, column: 12, scope: !5342, inlinedAt: !5310)
!5344 = !DILocation(line: 55, column: 3, scope: !5342, inlinedAt: !5310)
!5345 = !{i32 -2147039822}
!5346 = !DILocation(line: 59, column: 2, scope: !5342, inlinedAt: !5310)
!5347 = !DILocation(line: 61, column: 8, scope: !5348, inlinedAt: !5310)
!5348 = distinct !DILexicalBlock(scope: !5338, file: !4107, line: 59, column: 9)
!5349 = !DILocation(line: 61, column: 32, scope: !5348, inlinedAt: !5310)
!5350 = !DILocation(line: 60, column: 3, scope: !5348, inlinedAt: !5310)
!5351 = !{i32 -2147039690}
!5352 = !DILocation(line: 30, column: 1, scope: !5301)
!5353 = distinct !DISubprogram(name: "kasan_check_write", scope: !5354, file: !5354, line: 38, type: !5355, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5354 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5355 = !DISubroutineType(types: !5356)
!5356 = !{!366, !5318, !6}
!5357 = !DILocalVariable(name: "p", arg: 1, scope: !5353, file: !5354, line: 38, type: !5318)
!5358 = !DILocation(line: 38, column: 59, scope: !5353)
!5359 = !DILocalVariable(name: "size", arg: 2, scope: !5353, file: !5354, line: 38, type: !6)
!5360 = !DILocation(line: 38, column: 75, scope: !5353)
!5361 = !DILocation(line: 40, column: 2, scope: !5353)
!5362 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5363, file: !5363, line: 178, type: !5364, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5363 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5364 = !DISubroutineType(types: !5365)
!5365 = !{null, !5318, !502, !299}
!5366 = !DILocalVariable(name: "ptr", arg: 1, scope: !5362, file: !5363, line: 178, type: !5318)
!5367 = !DILocation(line: 178, column: 60, scope: !5362)
!5368 = !DILocalVariable(name: "size", arg: 2, scope: !5362, file: !5363, line: 178, type: !502)
!5369 = !DILocation(line: 178, column: 72, scope: !5362)
!5370 = !DILocalVariable(name: "type", arg: 3, scope: !5362, file: !5363, line: 179, type: !299)
!5371 = !DILocation(line: 179, column: 15, scope: !5362)
!5372 = !DILocation(line: 179, column: 23, scope: !5362)
!5373 = distinct !DISubprogram(name: "xen_dma_to_phys", scope: !3, file: !3, line: 79, type: !5014, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5374 = !DILocalVariable(name: "dev", arg: 1, scope: !5373, file: !3, line: 79, type: !3372)
!5375 = !DILocation(line: 79, column: 58, scope: !5373)
!5376 = !DILocalVariable(name: "dma_addr", arg: 2, scope: !5373, file: !3, line: 80, type: !164)
!5377 = !DILocation(line: 80, column: 19, scope: !5373)
!5378 = !DILocation(line: 82, column: 25, scope: !5373)
!5379 = !DILocation(line: 82, column: 42, scope: !5373)
!5380 = !DILocation(line: 82, column: 47, scope: !5373)
!5381 = !DILocation(line: 82, column: 30, scope: !5373)
!5382 = !DILocation(line: 82, column: 9, scope: !5373)
!5383 = !DILocation(line: 82, column: 2, scope: !5373)
!5384 = distinct !DISubprogram(name: "xen_bus_to_phys", scope: !3, file: !3, line: 69, type: !5154, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5385 = !DILocalVariable(name: "dev", arg: 1, scope: !5384, file: !3, line: 69, type: !3372)
!5386 = !DILocation(line: 69, column: 58, scope: !5384)
!5387 = !DILocalVariable(name: "baddr", arg: 2, scope: !5384, file: !3, line: 70, type: !1739)
!5388 = !DILocation(line: 70, column: 20, scope: !5384)
!5389 = !DILocalVariable(name: "xen_pfn", scope: !5384, file: !3, line: 72, type: !160)
!5390 = !DILocation(line: 72, column: 16, scope: !5384)
!5391 = !DILocation(line: 72, column: 26, scope: !5384)
!5392 = !DILocalVariable(name: "paddr", scope: !5384, file: !3, line: 73, type: !1739)
!5393 = !DILocation(line: 73, column: 14, scope: !5384)
!5394 = !DILocation(line: 73, column: 23, scope: !5384)
!5395 = !DILocation(line: 73, column: 31, scope: !5384)
!5396 = !DILocation(line: 74, column: 9, scope: !5384)
!5397 = !DILocation(line: 74, column: 15, scope: !5384)
!5398 = !DILocation(line: 73, column: 50, scope: !5384)
!5399 = !DILocation(line: 76, column: 9, scope: !5384)
!5400 = !DILocation(line: 76, column: 2, scope: !5384)
!5401 = distinct !DISubprogram(name: "gfn_to_pfn", scope: !4165, file: !4165, line: 259, type: !4084, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5402 = !DILocalVariable(name: "gfn", arg: 1, scope: !5401, file: !4165, line: 259, type: !160)
!5403 = !DILocation(line: 259, column: 54, scope: !5401)
!5404 = !DILocation(line: 261, column: 6, scope: !5405)
!5405 = distinct !DILexicalBlock(scope: !5401, file: !4165, line: 261, column: 6)
!5406 = !DILocation(line: 261, column: 6, scope: !5401)
!5407 = !DILocation(line: 262, column: 10, scope: !5405)
!5408 = !DILocation(line: 262, column: 3, scope: !5405)
!5409 = !DILocation(line: 264, column: 21, scope: !5405)
!5410 = !DILocation(line: 264, column: 10, scope: !5405)
!5411 = !DILocation(line: 264, column: 3, scope: !5405)
!5412 = !DILocation(line: 265, column: 1, scope: !5401)
!5413 = distinct !DISubprogram(name: "mfn_to_pfn", scope: !4165, file: !4165, line: 212, type: !4084, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5414 = !DILocalVariable(name: "mfn", arg: 1, scope: !5413, file: !4165, line: 212, type: !160)
!5415 = !DILocation(line: 212, column: 54, scope: !5413)
!5416 = !DILocalVariable(name: "pfn", scope: !5413, file: !4165, line: 214, type: !160)
!5417 = !DILocation(line: 214, column: 16, scope: !5413)
!5418 = !DILocation(line: 221, column: 6, scope: !5419)
!5419 = distinct !DILexicalBlock(scope: !5413, file: !4165, line: 221, column: 6)
!5420 = !DILocation(line: 221, column: 6, scope: !5413)
!5421 = !DILocation(line: 222, column: 10, scope: !5419)
!5422 = !DILocation(line: 222, column: 3, scope: !5419)
!5423 = !DILocation(line: 224, column: 32, scope: !5413)
!5424 = !DILocation(line: 224, column: 8, scope: !5413)
!5425 = !DILocation(line: 224, column: 6, scope: !5413)
!5426 = !DILocation(line: 225, column: 19, scope: !5427)
!5427 = distinct !DILexicalBlock(scope: !5413, file: !4165, line: 225, column: 6)
!5428 = !DILocation(line: 225, column: 6, scope: !5427)
!5429 = !DILocation(line: 225, column: 27, scope: !5427)
!5430 = !DILocation(line: 225, column: 24, scope: !5427)
!5431 = !DILocation(line: 225, column: 6, scope: !5413)
!5432 = !DILocation(line: 226, column: 7, scope: !5427)
!5433 = !DILocation(line: 226, column: 3, scope: !5427)
!5434 = !DILocation(line: 232, column: 6, scope: !5435)
!5435 = distinct !DILexicalBlock(scope: !5413, file: !4165, line: 232, column: 6)
!5436 = !DILocation(line: 232, column: 10, scope: !5435)
!5437 = !DILocation(line: 232, column: 16, scope: !5435)
!5438 = !DILocation(line: 232, column: 32, scope: !5435)
!5439 = !DILocation(line: 232, column: 19, scope: !5435)
!5440 = !DILocation(line: 232, column: 40, scope: !5435)
!5441 = !DILocation(line: 232, column: 37, scope: !5435)
!5442 = !DILocation(line: 232, column: 6, scope: !5413)
!5443 = !DILocation(line: 233, column: 9, scope: !5435)
!5444 = !DILocation(line: 233, column: 7, scope: !5435)
!5445 = !DILocation(line: 233, column: 3, scope: !5435)
!5446 = !DILocation(line: 235, column: 9, scope: !5413)
!5447 = !DILocation(line: 235, column: 2, scope: !5413)
!5448 = !DILocation(line: 236, column: 1, scope: !5413)
!5449 = distinct !DISubprogram(name: "mfn_to_pfn_no_overrides", scope: !4165, file: !4165, line: 192, type: !4084, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5450 = !DILocalVariable(name: "mfn", arg: 1, scope: !5449, file: !4165, line: 192, type: !160)
!5451 = !DILocation(line: 192, column: 67, scope: !5449)
!5452 = !DILocalVariable(name: "pfn", scope: !5449, file: !4165, line: 194, type: !160)
!5453 = !DILocation(line: 194, column: 16, scope: !5449)
!5454 = !DILocalVariable(name: "ret", scope: !5449, file: !4165, line: 195, type: !299)
!5455 = !DILocation(line: 195, column: 6, scope: !5449)
!5456 = !DILocation(line: 197, column: 6, scope: !5457)
!5457 = distinct !DILexicalBlock(scope: !5449, file: !4165, line: 197, column: 6)
!5458 = !DILocation(line: 197, column: 6, scope: !5449)
!5459 = !DILocation(line: 198, column: 3, scope: !5457)
!5460 = !DILocation(line: 205, column: 29, scope: !5449)
!5461 = !DILocation(line: 205, column: 53, scope: !5449)
!5462 = !DILocation(line: 205, column: 8, scope: !5449)
!5463 = !DILocation(line: 205, column: 6, scope: !5449)
!5464 = !DILocation(line: 206, column: 6, scope: !5465)
!5465 = distinct !DILexicalBlock(scope: !5449, file: !4165, line: 206, column: 6)
!5466 = !DILocation(line: 206, column: 10, scope: !5465)
!5467 = !DILocation(line: 206, column: 6, scope: !5449)
!5468 = !DILocation(line: 207, column: 3, scope: !5465)
!5469 = !DILocation(line: 209, column: 9, scope: !5449)
!5470 = !DILocation(line: 209, column: 2, scope: !5449)
!5471 = !DILocation(line: 210, column: 1, scope: !5449)
!5472 = distinct !DISubprogram(name: "xen_safe_read_ulong", scope: !4165, file: !4165, line: 110, type: !5473, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5473 = !DISubroutineType(types: !5474)
!5474 = !{!299, !5475, !3360}
!5475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!5476 = !DILocalVariable(name: "addr", arg: 1, scope: !5472, file: !4165, line: 110, type: !5475)
!5477 = !DILocation(line: 110, column: 60, scope: !5472)
!5478 = !DILocalVariable(name: "val", arg: 2, scope: !5472, file: !4165, line: 111, type: !3360)
!5479 = !DILocation(line: 111, column: 26, scope: !5472)
!5480 = !DILocalVariable(name: "ret", scope: !5472, file: !4165, line: 113, type: !299)
!5481 = !DILocation(line: 113, column: 6, scope: !5472)
!5482 = !DILocalVariable(name: "rval", scope: !5472, file: !4165, line: 114, type: !160)
!5483 = !DILocation(line: 114, column: 16, scope: !5472)
!5484 = !DILocation(line: 116, column: 2, scope: !5472)
!5485 = !DILocation(line: 124, column: 22, scope: !5472)
!5486 = !{i32 5247769, i32 5247804, i32 5247818, i32 5247853, i32 5247882, i32 5247903, i32 -2142146226, i32 -2142146182, i32 -2142146159, i32 -2142146126, i32 -2142146095, i32 -2142146039}
!5487 = !DILocation(line: 125, column: 9, scope: !5472)
!5488 = !DILocation(line: 125, column: 3, scope: !5472)
!5489 = !DILocation(line: 125, column: 7, scope: !5472)
!5490 = !DILocation(line: 127, column: 9, scope: !5472)
!5491 = !DILocation(line: 127, column: 2, scope: !5472)
!5492 = distinct !DISubprogram(name: "test_and_clear_bit", scope: !5302, file: !5302, line: 81, type: !5493, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5493 = !DISubroutineType(types: !5494)
!5494 = !{!366, !591, !5305}
!5495 = !DILocalVariable(name: "nr", arg: 1, scope: !5496, file: !4107, line: 160, type: !591)
!5496 = distinct !DISubprogram(name: "arch_test_and_clear_bit", scope: !4107, file: !4107, line: 160, type: !5493, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5497 = !DILocation(line: 160, column: 30, scope: !5496, inlinedAt: !5498)
!5498 = distinct !DILocation(line: 84, column: 9, scope: !5492)
!5499 = !DILocalVariable(name: "addr", arg: 2, scope: !5496, file: !4107, line: 160, type: !5305)
!5500 = !DILocation(line: 160, column: 58, scope: !5496, inlinedAt: !5498)
!5501 = !DILocalVariable(name: "c", scope: !5502, file: !4107, line: 162, type: !366)
!5502 = distinct !DILexicalBlock(scope: !5496, file: !4107, line: 162, column: 9)
!5503 = !DILocation(line: 162, column: 9, scope: !5502, inlinedAt: !5498)
!5504 = !DILocalVariable(name: "v", arg: 1, scope: !5505, file: !5315, line: 99, type: !5318)
!5505 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5315, file: !5315, line: 99, type: !5316, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5506 = !DILocation(line: 99, column: 79, scope: !5505, inlinedAt: !5507)
!5507 = distinct !DILocation(line: 83, column: 2, scope: !5492)
!5508 = !DILocalVariable(name: "size", arg: 2, scope: !5505, file: !5315, line: 99, type: !502)
!5509 = !DILocation(line: 99, column: 89, scope: !5505, inlinedAt: !5507)
!5510 = !DILocalVariable(name: "nr", arg: 1, scope: !5492, file: !5302, line: 81, type: !591)
!5511 = !DILocation(line: 81, column: 44, scope: !5492)
!5512 = !DILocalVariable(name: "addr", arg: 2, scope: !5492, file: !5302, line: 81, type: !5305)
!5513 = !DILocation(line: 81, column: 72, scope: !5492)
!5514 = !DILocation(line: 83, column: 31, scope: !5492)
!5515 = !DILocation(line: 83, column: 38, scope: !5492)
!5516 = !DILocation(line: 83, column: 36, scope: !5492)
!5517 = !DILocation(line: 101, column: 20, scope: !5505, inlinedAt: !5507)
!5518 = !DILocation(line: 101, column: 23, scope: !5505, inlinedAt: !5507)
!5519 = !DILocation(line: 101, column: 2, scope: !5505, inlinedAt: !5507)
!5520 = !DILocation(line: 102, column: 2, scope: !5505, inlinedAt: !5507)
!5521 = !DILocation(line: 84, column: 33, scope: !5492)
!5522 = !DILocation(line: 84, column: 37, scope: !5492)
!5523 = !{i32 -2147033424, i32 -2147033328}
!5524 = !DILocation(line: 84, column: 2, scope: !5492)
!5525 = distinct !DISubprogram(name: "dma_capable", scope: !3651, file: !3651, line: 99, type: !5526, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5526 = !DISubroutineType(types: !5527)
!5527 = !{!366, !3372, !164, !502, !366}
!5528 = !DILocalVariable(name: "dev", arg: 1, scope: !5525, file: !3651, line: 99, type: !3372)
!5529 = !DILocation(line: 99, column: 47, scope: !5525)
!5530 = !DILocalVariable(name: "addr", arg: 2, scope: !5525, file: !3651, line: 99, type: !164)
!5531 = !DILocation(line: 99, column: 63, scope: !5525)
!5532 = !DILocalVariable(name: "size", arg: 3, scope: !5525, file: !3651, line: 99, type: !502)
!5533 = !DILocation(line: 99, column: 76, scope: !5525)
!5534 = !DILocalVariable(name: "is_ram", arg: 4, scope: !5525, file: !3651, line: 100, type: !366)
!5535 = !DILocation(line: 100, column: 8, scope: !5525)
!5536 = !DILocalVariable(name: "end", scope: !5525, file: !3651, line: 102, type: !164)
!5537 = !DILocation(line: 102, column: 13, scope: !5525)
!5538 = !DILocation(line: 102, column: 19, scope: !5525)
!5539 = !DILocation(line: 102, column: 26, scope: !5525)
!5540 = !DILocation(line: 102, column: 24, scope: !5525)
!5541 = !DILocation(line: 102, column: 31, scope: !5525)
!5542 = !DILocation(line: 104, column: 6, scope: !5543)
!5543 = distinct !DILexicalBlock(scope: !5525, file: !3651, line: 104, column: 6)
!5544 = !DILocation(line: 104, column: 11, scope: !5543)
!5545 = !DILocation(line: 104, column: 6, scope: !5525)
!5546 = !DILocation(line: 105, column: 3, scope: !5543)
!5547 = !DILocation(line: 106, column: 6, scope: !5548)
!5548 = distinct !DILexicalBlock(scope: !5525, file: !3651, line: 106, column: 6)
!5549 = !DILocation(line: 106, column: 13, scope: !5548)
!5550 = !DILocation(line: 106, column: 58, scope: !5548)
!5551 = !DILocalVariable(name: "__UNIQUE_ID___x226", scope: !5552, file: !3651, line: 107, type: !164)
!5552 = distinct !DILexicalBlock(scope: !5548, file: !3651, line: 107, column: 6)
!5553 = !DILocation(line: 107, column: 6, scope: !5552)
!5554 = !DILocalVariable(name: "__UNIQUE_ID___y227", scope: !5552, file: !3651, line: 107, type: !164)
!5555 = !DILocation(line: 107, column: 35, scope: !5548)
!5556 = !DILocation(line: 107, column: 40, scope: !5548)
!5557 = !DILocation(line: 107, column: 23, scope: !5548)
!5558 = !DILocation(line: 107, column: 21, scope: !5548)
!5559 = !DILocation(line: 106, column: 6, scope: !5525)
!5560 = !DILocation(line: 108, column: 3, scope: !5548)
!5561 = !DILocation(line: 110, column: 9, scope: !5525)
!5562 = !DILocalVariable(name: "__x", scope: !5563, file: !3651, line: 110, type: !165)
!5563 = distinct !DILexicalBlock(scope: !5525, file: !3651, line: 110, column: 16)
!5564 = !DILocation(line: 110, column: 16, scope: !5563)
!5565 = !DILocalVariable(name: "__y", scope: !5563, file: !3651, line: 110, type: !165)
!5566 = !DILocalVariable(name: "__UNIQUE_ID___x228", scope: !5567, file: !3651, line: 110, type: !165)
!5567 = distinct !DILexicalBlock(scope: !5563, file: !3651, line: 110, column: 16)
!5568 = !DILocation(line: 110, column: 16, scope: !5567)
!5569 = !DILocalVariable(name: "__UNIQUE_ID___y229", scope: !5567, file: !3651, line: 110, type: !165)
!5570 = !DILocation(line: 110, column: 13, scope: !5525)
!5571 = !DILocation(line: 110, column: 2, scope: !5525)
!5572 = !DILocation(line: 111, column: 1, scope: !5525)
!5573 = distinct !DISubprogram(name: "xen_arch_need_swiotlb", scope: !4165, file: !4165, line: 361, type: !5574, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5574 = !DISubroutineType(types: !5575)
!5575 = !{!366, !3372, !1739, !164}
!5576 = !DILocalVariable(name: "dev", arg: 1, scope: !5573, file: !4165, line: 361, type: !3372)
!5577 = !DILocation(line: 361, column: 57, scope: !5573)
!5578 = !DILocalVariable(name: "phys", arg: 2, scope: !5573, file: !4165, line: 362, type: !1739)
!5579 = !DILocation(line: 362, column: 19, scope: !5573)
!5580 = !DILocalVariable(name: "dev_addr", arg: 3, scope: !5573, file: !4165, line: 363, type: !164)
!5581 = !DILocation(line: 363, column: 18, scope: !5573)
!5582 = !DILocation(line: 365, column: 2, scope: !5573)
!5583 = distinct !DISubprogram(name: "trace_swiotlb_bounced", scope: !5584, file: !5584, line: 10, type: !5585, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5584 = !DIFile(filename: "./include/trace/events/swiotlb.h", directory: "/home/lizy2001/genbc/linux")
!5585 = !DISubroutineType(types: !5586)
!5586 = !{null, !3372, !164, !502, !149}
!5587 = !DILocalVariable(name: "dev", arg: 1, scope: !5583, file: !5584, line: 10, type: !3372)
!5588 = !DILocation(line: 10, column: 1, scope: !5583)
!5589 = !DILocalVariable(name: "dev_addr", arg: 2, scope: !5583, file: !5584, line: 10, type: !164)
!5590 = !DILocalVariable(name: "size", arg: 3, scope: !5583, file: !5584, line: 10, type: !502)
!5591 = !DILocalVariable(name: "swiotlb_force", arg: 4, scope: !5583, file: !5584, line: 10, type: !149)
!5592 = distinct !DISubprogram(name: "dev_is_dma_coherent", scope: !3366, file: !3366, line: 239, type: !5593, scopeLine: 240, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5593 = !DISubroutineType(types: !5594)
!5594 = !{!366, !3372}
!5595 = !DILocalVariable(name: "dev", arg: 1, scope: !5592, file: !3366, line: 239, type: !3372)
!5596 = !DILocation(line: 239, column: 55, scope: !5592)
!5597 = !DILocation(line: 241, column: 2, scope: !5592)
!5598 = distinct !DISubprogram(name: "pfn_valid", scope: !3190, file: !3190, line: 1374, type: !4103, scopeLine: 1375, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5599 = !DILocalVariable(name: "bit", arg: 1, scope: !5600, file: !5601, line: 173, type: !612)
!5600 = distinct !DISubprogram(name: "_static_cpu_has", scope: !5601, file: !5601, line: 173, type: !5602, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5601 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/lizy2001/genbc/linux")
!5602 = !DISubroutineType(types: !5603)
!5603 = !{!366, !612}
!5604 = !DILocation(line: 173, column: 49, scope: !5600, inlinedAt: !5605)
!5605 = distinct !DILocation(line: 1378, column: 32, scope: !5606)
!5606 = distinct !DILexicalBlock(scope: !5598, file: !3190, line: 1378, column: 6)
!5607 = !DILocalVariable(name: "pfn", arg: 1, scope: !5598, file: !3190, line: 1374, type: !160)
!5608 = !DILocation(line: 1374, column: 43, scope: !5598)
!5609 = !DILocalVariable(name: "ms", scope: !5598, file: !3190, line: 1376, type: !5610)
!5610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5611, size: 64)
!5611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_section", file: !3190, line: 1213, size: 128, elements: !5612)
!5612 = !{!5613, !5614}
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "section_mem_map", scope: !5611, file: !3190, line: 1226, baseType: !160, size: 64)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !5611, file: !3190, line: 1228, baseType: !5615, size: 64, offset: 64)
!5615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5616, size: 64)
!5616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_section_usage", file: !3190, line: 1201, size: 64, elements: !5617)
!5617 = !{!5618, !5619}
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "subsection_map", scope: !5616, file: !3190, line: 1203, baseType: !970, size: 64)
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "pageblock_flags", scope: !5616, file: !3190, line: 1206, baseType: !5620, offset: 64)
!5620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, elements: !1325)
!5621 = !DILocation(line: 1376, column: 22, scope: !5598)
!5622 = !DILocation(line: 1378, column: 24, scope: !5606)
!5623 = !DILocation(line: 1378, column: 6, scope: !5606)
!5624 = !DILocation(line: 175, column: 2, scope: !5600, inlinedAt: !5605)
!5625 = !{i32 -2145501622, i32 -2145501604, i32 -2145501594, i32 -2145501520, i32 -2145501510, i32 -2145501471, i32 -2145501432, i32 -2145501392, i32 -2145501345, i32 -2145501308, i32 -2145501270, i32 -2145501233, i32 -2145501216, i32 -2145501171, i32 -2145501148, i32 -2145501138, i32 -2145501121, i32 -2145501082, i32 -2145501043, i32 -2145501004, i32 -2145500959, i32 -2145500922, i32 -2145500889, i32 -2145500857, i32 -2145500840, i32 -2145500803, i32 -2145500793, i32 -2145500757, i32 -2145500735, i32 -2145500714}
!5626 = !DILabel(scope: !5600, name: "t_yes", file: !5601, line: 211)
!5627 = !DILocation(line: 211, column: 1, scope: !5600, inlinedAt: !5605)
!5628 = !DILocation(line: 212, column: 2, scope: !5600, inlinedAt: !5605)
!5629 = !DILabel(scope: !5600, name: "t_no", file: !5601, line: 213)
!5630 = !DILocation(line: 213, column: 1, scope: !5600, inlinedAt: !5605)
!5631 = !DILocation(line: 214, column: 2, scope: !5600, inlinedAt: !5605)
!5632 = !DILocation(line: 215, column: 1, scope: !5600, inlinedAt: !5605)
!5633 = !DILocation(line: 1378, column: 32, scope: !5606)
!5634 = !DILocation(line: 1378, column: 29, scope: !5606)
!5635 = !DILocation(line: 1378, column: 6, scope: !5598)
!5636 = !DILocation(line: 1379, column: 3, scope: !5606)
!5637 = !DILocation(line: 1380, column: 41, scope: !5598)
!5638 = !DILocation(line: 1380, column: 23, scope: !5598)
!5639 = !DILocation(line: 1380, column: 7, scope: !5598)
!5640 = !DILocation(line: 1380, column: 5, scope: !5598)
!5641 = !DILocation(line: 1381, column: 21, scope: !5642)
!5642 = distinct !DILexicalBlock(scope: !5598, file: !3190, line: 1381, column: 6)
!5643 = !DILocation(line: 1381, column: 7, scope: !5642)
!5644 = !DILocation(line: 1381, column: 6, scope: !5598)
!5645 = !DILocation(line: 1382, column: 3, scope: !5642)
!5646 = !DILocation(line: 1387, column: 23, scope: !5598)
!5647 = !DILocation(line: 1387, column: 9, scope: !5598)
!5648 = !DILocation(line: 1387, column: 27, scope: !5598)
!5649 = !DILocation(line: 1387, column: 48, scope: !5598)
!5650 = !DILocation(line: 1387, column: 52, scope: !5598)
!5651 = !DILocation(line: 1387, column: 30, scope: !5598)
!5652 = !DILocation(line: 1387, column: 2, scope: !5598)
!5653 = !DILocation(line: 1388, column: 1, scope: !5598)
!5654 = distinct !DISubprogram(name: "arch_sync_dma_for_device", scope: !3366, file: !3366, line: 274, type: !5655, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5655 = !DISubroutineType(types: !5656)
!5656 = !{null, !1739, !502, !98}
!5657 = !DILocalVariable(name: "paddr", arg: 1, scope: !5654, file: !3366, line: 274, type: !1739)
!5658 = !DILocation(line: 274, column: 57, scope: !5654)
!5659 = !DILocalVariable(name: "size", arg: 2, scope: !5654, file: !3366, line: 274, type: !502)
!5660 = !DILocation(line: 274, column: 71, scope: !5654)
!5661 = !DILocalVariable(name: "dir", arg: 3, scope: !5654, file: !3366, line: 275, type: !98)
!5662 = !DILocation(line: 275, column: 27, scope: !5654)
!5663 = !DILocation(line: 277, column: 1, scope: !5654)
!5664 = distinct !DISubprogram(name: "pfn_to_section_nr", scope: !3190, file: !3190, line: 1173, type: !4084, scopeLine: 1174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5665 = !DILocalVariable(name: "pfn", arg: 1, scope: !5664, file: !3190, line: 1173, type: !160)
!5666 = !DILocation(line: 1173, column: 61, scope: !5664)
!5667 = !DILocation(line: 1175, column: 9, scope: !5664)
!5668 = !DILocation(line: 1175, column: 13, scope: !5664)
!5669 = !DILocation(line: 1175, column: 2, scope: !5664)
!5670 = distinct !DISubprogram(name: "__nr_to_section", scope: !3190, file: !3190, line: 1264, type: !5671, scopeLine: 1265, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5671 = !DISubroutineType(types: !5672)
!5672 = !{!5610, !160}
!5673 = !DILocalVariable(name: "nr", arg: 1, scope: !5670, file: !3190, line: 1264, type: !160)
!5674 = !DILocation(line: 1264, column: 65, scope: !5670)
!5675 = !DILocation(line: 1267, column: 7, scope: !5676)
!5676 = distinct !DILexicalBlock(scope: !5670, file: !3190, line: 1267, column: 6)
!5677 = !DILocation(line: 1267, column: 6, scope: !5670)
!5678 = !DILocation(line: 1268, column: 3, scope: !5676)
!5679 = !DILocation(line: 1270, column: 7, scope: !5680)
!5680 = distinct !DILexicalBlock(scope: !5670, file: !3190, line: 1270, column: 6)
!5681 = !DILocation(line: 1270, column: 19, scope: !5680)
!5682 = !DILocation(line: 1270, column: 6, scope: !5670)
!5683 = !DILocation(line: 1271, column: 3, scope: !5680)
!5684 = !DILocation(line: 1272, column: 10, scope: !5670)
!5685 = !DILocation(line: 1272, column: 22, scope: !5670)
!5686 = !DILocation(line: 1272, column: 46, scope: !5670)
!5687 = !DILocation(line: 1272, column: 49, scope: !5670)
!5688 = !DILocation(line: 1272, column: 2, scope: !5670)
!5689 = !DILocation(line: 1273, column: 1, scope: !5670)
!5690 = distinct !DISubprogram(name: "valid_section", scope: !3190, file: !3190, line: 1315, type: !5691, scopeLine: 1316, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5691 = !DISubroutineType(types: !5692)
!5692 = !{!299, !5610}
!5693 = !DILocalVariable(name: "section", arg: 1, scope: !5690, file: !3190, line: 1315, type: !5610)
!5694 = !DILocation(line: 1315, column: 53, scope: !5690)
!5695 = !DILocation(line: 1317, column: 10, scope: !5690)
!5696 = !DILocation(line: 1317, column: 18, scope: !5690)
!5697 = !DILocation(line: 1317, column: 22, scope: !5690)
!5698 = !DILocation(line: 1317, column: 31, scope: !5690)
!5699 = !DILocation(line: 1317, column: 47, scope: !5690)
!5700 = !DILocation(line: 0, scope: !5690)
!5701 = !DILocation(line: 1317, column: 2, scope: !5690)
!5702 = distinct !DISubprogram(name: "early_section", scope: !3190, file: !3190, line: 1320, type: !5691, scopeLine: 1321, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5703 = !DILocalVariable(name: "section", arg: 1, scope: !5702, file: !3190, line: 1320, type: !5610)
!5704 = !DILocation(line: 1320, column: 53, scope: !5702)
!5705 = !DILocation(line: 1322, column: 10, scope: !5702)
!5706 = !DILocation(line: 1322, column: 18, scope: !5702)
!5707 = !DILocation(line: 1322, column: 22, scope: !5702)
!5708 = !DILocation(line: 1322, column: 31, scope: !5702)
!5709 = !DILocation(line: 1322, column: 47, scope: !5702)
!5710 = !DILocation(line: 0, scope: !5702)
!5711 = !DILocation(line: 1322, column: 2, scope: !5702)
!5712 = distinct !DISubprogram(name: "pfn_section_valid", scope: !3190, file: !3190, line: 1360, type: !5713, scopeLine: 1361, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5713 = !DISubroutineType(types: !5714)
!5714 = !{!299, !5610, !160}
!5715 = !DILocalVariable(name: "ms", arg: 1, scope: !5712, file: !3190, line: 1360, type: !5610)
!5716 = !DILocation(line: 1360, column: 57, scope: !5712)
!5717 = !DILocalVariable(name: "pfn", arg: 2, scope: !5712, file: !3190, line: 1360, type: !160)
!5718 = !DILocation(line: 1360, column: 75, scope: !5712)
!5719 = !DILocalVariable(name: "idx", scope: !5712, file: !3190, line: 1362, type: !299)
!5720 = !DILocation(line: 1362, column: 6, scope: !5712)
!5721 = !DILocation(line: 1362, column: 33, scope: !5712)
!5722 = !DILocation(line: 1362, column: 12, scope: !5712)
!5723 = !DILocation(line: 1364, column: 18, scope: !5712)
!5724 = !DILocation(line: 1364, column: 23, scope: !5712)
!5725 = !DILocation(line: 1364, column: 27, scope: !5712)
!5726 = !DILocation(line: 1364, column: 34, scope: !5712)
!5727 = !DILocation(line: 1364, column: 9, scope: !5712)
!5728 = !DILocation(line: 1364, column: 2, scope: !5712)
!5729 = distinct !DISubprogram(name: "subsection_map_index", scope: !3190, file: !3190, line: 1354, type: !4103, scopeLine: 1355, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5730 = !DILocalVariable(name: "pfn", arg: 1, scope: !5729, file: !3190, line: 1354, type: !160)
!5731 = !DILocation(line: 1354, column: 54, scope: !5729)
!5732 = !DILocation(line: 1356, column: 10, scope: !5729)
!5733 = !DILocation(line: 1356, column: 14, scope: !5729)
!5734 = !DILocation(line: 1356, column: 38, scope: !5729)
!5735 = !DILocation(line: 1356, column: 9, scope: !5729)
!5736 = !DILocation(line: 1356, column: 2, scope: !5729)
!5737 = distinct !DISubprogram(name: "test_bit", scope: !5738, file: !5738, line: 132, type: !5739, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5738 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!5739 = !DISubroutineType(types: !5740)
!5740 = !{!366, !591, !5741}
!5741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5742, size: 64)
!5742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5306)
!5743 = !DILocalVariable(name: "nr", arg: 1, scope: !5744, file: !4107, line: 210, type: !591)
!5744 = distinct !DISubprogram(name: "variable_test_bit", scope: !4107, file: !4107, line: 210, type: !5739, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5745 = !DILocation(line: 210, column: 52, scope: !5744, inlinedAt: !5746)
!5746 = distinct !DILocation(line: 135, column: 9, scope: !5737)
!5747 = !DILocalVariable(name: "addr", arg: 2, scope: !5744, file: !4107, line: 210, type: !5741)
!5748 = !DILocation(line: 210, column: 86, scope: !5744, inlinedAt: !5746)
!5749 = !DILocalVariable(name: "oldbit", scope: !5744, file: !4107, line: 212, type: !366)
!5750 = !DILocation(line: 212, column: 7, scope: !5744, inlinedAt: !5746)
!5751 = !DILocalVariable(name: "nr", arg: 1, scope: !5752, file: !4107, line: 204, type: !591)
!5752 = distinct !DISubprogram(name: "constant_test_bit", scope: !4107, file: !4107, line: 204, type: !5739, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5753 = !DILocation(line: 204, column: 52, scope: !5752, inlinedAt: !5754)
!5754 = distinct !DILocation(line: 135, column: 9, scope: !5737)
!5755 = !DILocalVariable(name: "addr", arg: 2, scope: !5752, file: !4107, line: 204, type: !5741)
!5756 = !DILocation(line: 204, column: 86, scope: !5752, inlinedAt: !5754)
!5757 = !DILocalVariable(name: "v", arg: 1, scope: !5758, file: !5315, line: 69, type: !5318)
!5758 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5315, file: !5315, line: 69, type: !5316, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5759 = !DILocation(line: 69, column: 73, scope: !5758, inlinedAt: !5760)
!5760 = distinct !DILocation(line: 134, column: 2, scope: !5737)
!5761 = !DILocalVariable(name: "size", arg: 2, scope: !5758, file: !5315, line: 69, type: !502)
!5762 = !DILocation(line: 69, column: 83, scope: !5758, inlinedAt: !5760)
!5763 = !DILocalVariable(name: "nr", arg: 1, scope: !5737, file: !5738, line: 132, type: !591)
!5764 = !DILocation(line: 132, column: 34, scope: !5737)
!5765 = !DILocalVariable(name: "addr", arg: 2, scope: !5737, file: !5738, line: 132, type: !5741)
!5766 = !DILocation(line: 132, column: 68, scope: !5737)
!5767 = !DILocation(line: 134, column: 25, scope: !5737)
!5768 = !DILocation(line: 134, column: 32, scope: !5737)
!5769 = !DILocation(line: 134, column: 30, scope: !5737)
!5770 = !DILocation(line: 71, column: 19, scope: !5758, inlinedAt: !5760)
!5771 = !DILocation(line: 71, column: 22, scope: !5758, inlinedAt: !5760)
!5772 = !DILocation(line: 71, column: 2, scope: !5758, inlinedAt: !5760)
!5773 = !DILocation(line: 72, column: 2, scope: !5758, inlinedAt: !5760)
!5774 = !DILocation(line: 135, column: 9, scope: !5737)
!5775 = !DILocation(line: 206, column: 19, scope: !5752, inlinedAt: !5754)
!5776 = !DILocation(line: 206, column: 22, scope: !5752, inlinedAt: !5754)
!5777 = !DILocation(line: 206, column: 15, scope: !5752, inlinedAt: !5754)
!5778 = !DILocation(line: 207, column: 4, scope: !5752, inlinedAt: !5754)
!5779 = !DILocation(line: 207, column: 9, scope: !5752, inlinedAt: !5754)
!5780 = !DILocation(line: 207, column: 12, scope: !5752, inlinedAt: !5754)
!5781 = !DILocation(line: 206, column: 44, scope: !5752, inlinedAt: !5754)
!5782 = !DILocation(line: 207, column: 37, scope: !5752, inlinedAt: !5754)
!5783 = !DILocation(line: 217, column: 33, scope: !5744, inlinedAt: !5746)
!5784 = !DILocation(line: 217, column: 46, scope: !5744, inlinedAt: !5746)
!5785 = !DILocation(line: 214, column: 2, scope: !5744, inlinedAt: !5746)
!5786 = !{i32 -2147030574, i32 -2147030514}
!5787 = !DILocation(line: 219, column: 9, scope: !5744, inlinedAt: !5746)
!5788 = !DILocation(line: 135, column: 2, scope: !5737)
!5789 = distinct !DISubprogram(name: "kasan_check_read", scope: !5354, file: !5354, line: 34, type: !5355, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5790 = !DILocalVariable(name: "p", arg: 1, scope: !5789, file: !5354, line: 34, type: !5318)
!5791 = !DILocation(line: 34, column: 58, scope: !5789)
!5792 = !DILocalVariable(name: "size", arg: 2, scope: !5789, file: !5354, line: 34, type: !6)
!5793 = !DILocation(line: 34, column: 74, scope: !5789)
!5794 = !DILocation(line: 36, column: 2, scope: !5789)
!5795 = distinct !DISubprogram(name: "arch_sync_dma_for_cpu", scope: !3366, file: !3366, line: 284, type: !5655, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5796 = !DILocalVariable(name: "paddr", arg: 1, scope: !5795, file: !3366, line: 284, type: !1739)
!5797 = !DILocation(line: 284, column: 54, scope: !5795)
!5798 = !DILocalVariable(name: "size", arg: 2, scope: !5795, file: !3366, line: 284, type: !502)
!5799 = !DILocation(line: 284, column: 68, scope: !5795)
!5800 = !DILocalVariable(name: "dir", arg: 3, scope: !5795, file: !3366, line: 285, type: !98)
!5801 = !DILocation(line: 285, column: 27, scope: !5795)
!5802 = !DILocation(line: 287, column: 1, scope: !5795)
!5803 = distinct !DISubprogram(name: "is_xen_swiotlb_buffer", scope: !3, file: !3, line: 104, type: !5804, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5804 = !DISubroutineType(types: !5805)
!5805 = !{!299, !3372, !164}
!5806 = !DILocalVariable(name: "dev", arg: 1, scope: !5803, file: !3, line: 104, type: !3372)
!5807 = !DILocation(line: 104, column: 49, scope: !5803)
!5808 = !DILocalVariable(name: "dma_addr", arg: 2, scope: !5803, file: !3, line: 104, type: !164)
!5809 = !DILocation(line: 104, column: 65, scope: !5803)
!5810 = !DILocalVariable(name: "bfn", scope: !5803, file: !3, line: 106, type: !160)
!5811 = !DILocation(line: 106, column: 16, scope: !5803)
!5812 = !DILocation(line: 106, column: 22, scope: !5803)
!5813 = !DILocalVariable(name: "xen_pfn", scope: !5803, file: !3, line: 107, type: !160)
!5814 = !DILocation(line: 107, column: 16, scope: !5803)
!5815 = !DILocation(line: 107, column: 43, scope: !5803)
!5816 = !DILocation(line: 107, column: 26, scope: !5803)
!5817 = !DILocalVariable(name: "paddr", scope: !5803, file: !3, line: 108, type: !1739)
!5818 = !DILocation(line: 108, column: 14, scope: !5803)
!5819 = !DILocation(line: 108, column: 35, scope: !5803)
!5820 = !DILocation(line: 108, column: 43, scope: !5803)
!5821 = !DILocation(line: 114, column: 16, scope: !5822)
!5822 = distinct !DILexicalBlock(scope: !5803, file: !3, line: 114, column: 6)
!5823 = !DILocation(line: 114, column: 6, scope: !5822)
!5824 = !DILocation(line: 114, column: 6, scope: !5803)
!5825 = !DILocation(line: 115, column: 10, scope: !5826)
!5826 = distinct !DILexicalBlock(scope: !5822, file: !3, line: 114, column: 34)
!5827 = !DILocation(line: 115, column: 32, scope: !5826)
!5828 = !DILocation(line: 115, column: 19, scope: !5826)
!5829 = !DILocation(line: 115, column: 16, scope: !5826)
!5830 = !DILocation(line: 115, column: 50, scope: !5826)
!5831 = !DILocation(line: 116, column: 10, scope: !5826)
!5832 = !DILocation(line: 116, column: 31, scope: !5826)
!5833 = !DILocation(line: 116, column: 18, scope: !5826)
!5834 = !DILocation(line: 116, column: 16, scope: !5826)
!5835 = !DILocation(line: 0, scope: !5826)
!5836 = !DILocation(line: 115, column: 3, scope: !5826)
!5837 = !DILocation(line: 118, column: 2, scope: !5803)
!5838 = !DILocation(line: 119, column: 1, scope: !5803)
!5839 = distinct !DISubprogram(name: "bfn_to_local_pfn", scope: !4165, file: !4165, line: 291, type: !4084, scopeLine: 292, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5840 = !DILocalVariable(name: "mfn", arg: 1, scope: !5839, file: !4165, line: 291, type: !160)
!5841 = !DILocation(line: 291, column: 60, scope: !5839)
!5842 = !DILocalVariable(name: "pfn", scope: !5839, file: !4165, line: 293, type: !160)
!5843 = !DILocation(line: 293, column: 16, scope: !5839)
!5844 = !DILocation(line: 295, column: 6, scope: !5845)
!5845 = distinct !DILexicalBlock(scope: !5839, file: !4165, line: 295, column: 6)
!5846 = !DILocation(line: 295, column: 6, scope: !5839)
!5847 = !DILocation(line: 296, column: 10, scope: !5845)
!5848 = !DILocation(line: 296, column: 3, scope: !5845)
!5849 = !DILocation(line: 298, column: 19, scope: !5839)
!5850 = !DILocation(line: 298, column: 8, scope: !5839)
!5851 = !DILocation(line: 298, column: 6, scope: !5839)
!5852 = !DILocation(line: 299, column: 19, scope: !5853)
!5853 = distinct !DILexicalBlock(scope: !5839, file: !4165, line: 299, column: 6)
!5854 = !DILocation(line: 299, column: 6, scope: !5853)
!5855 = !DILocation(line: 299, column: 27, scope: !5853)
!5856 = !DILocation(line: 299, column: 24, scope: !5853)
!5857 = !DILocation(line: 299, column: 6, scope: !5839)
!5858 = !DILocation(line: 300, column: 3, scope: !5853)
!5859 = !DILocation(line: 301, column: 9, scope: !5839)
!5860 = !DILocation(line: 301, column: 2, scope: !5839)
!5861 = !DILocation(line: 302, column: 1, scope: !5839)
!5862 = distinct !DISubprogram(name: "sg_page", scope: !3840, file: !3840, line: 124, type: !5863, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5863 = !DISubroutineType(types: !5864)
!5864 = !{!170, !3843}
!5865 = !DILocalVariable(name: "sg", arg: 1, scope: !5862, file: !3840, line: 124, type: !3843)
!5866 = !DILocation(line: 124, column: 56, scope: !5862)
!5867 = !DILocation(line: 129, column: 26, scope: !5862)
!5868 = !DILocation(line: 129, column: 31, scope: !5862)
!5869 = !DILocation(line: 129, column: 41, scope: !5862)
!5870 = !DILocation(line: 129, column: 9, scope: !5862)
!5871 = !DILocation(line: 129, column: 2, scope: !5862)
!5872 = distinct !DISubprogram(name: "xen_virt_to_bus", scope: !3, file: !3, line: 85, type: !5873, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5873 = !DISubroutineType(types: !5874)
!5874 = !{!164, !3372, !161}
!5875 = !DILocalVariable(name: "dev", arg: 1, scope: !5872, file: !3, line: 85, type: !3372)
!5876 = !DILocation(line: 85, column: 57, scope: !5872)
!5877 = !DILocalVariable(name: "address", arg: 2, scope: !5872, file: !3, line: 85, type: !161)
!5878 = !DILocation(line: 85, column: 68, scope: !5872)
!5879 = !DILocation(line: 87, column: 25, scope: !5872)
!5880 = !DILocation(line: 87, column: 43, scope: !5872)
!5881 = !DILocation(line: 87, column: 30, scope: !5872)
!5882 = !DILocation(line: 87, column: 9, scope: !5872)
!5883 = !DILocation(line: 87, column: 2, scope: !5872)
