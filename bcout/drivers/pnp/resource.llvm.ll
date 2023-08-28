; ModuleID = '../bcout/drivers/pnp/resource.llvm.bc'
source_filename = "drivers/pnp/resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
%struct.kmem_cache = type opaque
%struct.pnp_dev = type { %struct.device, i64, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.pnp_protocol*, %struct.pnp_card*, %struct.pnp_driver*, %struct.pnp_card_link*, %struct.pnp_id*, i32, i32, i32, %struct.list_head, %struct.list_head, [50 x i8], i32, %struct.proc_dir_entry*, i8* }
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
%struct.pnp_protocol = type { %struct.list_head, i8*, i32 (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*)*, i1 (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*, i32)*, i32 (%struct.pnp_dev*)*, i8, %struct.device, %struct.list_head, %struct.list_head }
%struct.pnp_card = type { %struct.device, i8, %struct.list_head, %struct.list_head, %struct.list_head, %struct.pnp_protocol*, %struct.pnp_id*, [50 x i8], i8, i8, i32, i8, %struct.proc_dir_entry* }
%struct.pnp_driver = type { i8*, %struct.pnp_device_id*, i32, i32 (%struct.pnp_dev*, %struct.pnp_device_id*)*, void (%struct.pnp_dev*)*, void (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*, i32)*, i32 (%struct.pnp_dev*)*, %struct.device_driver }
%struct.pnp_device_id = type { [8 x i8], i64 }
%struct.pnp_card_link = type { %struct.pnp_card*, %struct.pnp_card_driver*, i8*, %struct.pm_message }
%struct.pnp_card_driver = type { %struct.list_head, i8*, %struct.pnp_card_device_id*, i32, i32 (%struct.pnp_card_link*, %struct.pnp_card_device_id*)*, void (%struct.pnp_card_link*)*, i32 (%struct.pnp_card_link*, i32)*, i32 (%struct.pnp_card_link*)*, %struct.pnp_driver }
%struct.pnp_card_device_id = type { [8 x i8], i64, [8 x %struct.anon.65] }
%struct.anon.65 = type { [8 x i8] }
%struct.pnp_id = type { [8 x i8], %struct.pnp_id* }
%struct.proc_dir_entry = type opaque
%struct.pnp_irq_mask_t = type { [4 x i64] }
%struct.pnp_option = type { %struct.list_head, i32, i64, %union.anon.66 }
%union.anon.66 = type { %struct.pnp_port }
%struct.pnp_port = type { i64, i64, i64, i64, i8 }
%struct.pnp_irq = type { %struct.pnp_irq_mask_t, i8 }
%struct.pnp_dma = type { i8, i8 }
%struct.pnp_mem = type { i64, i64, i64, i64, i8 }
%struct.pnp_resource = type { %struct.list_head, %struct.resource }
%struct.pci_dev = type <{ %struct.list_head, %struct.pci_bus*, %struct.pci_bus*, i8*, %struct.proc_dir_entry*, %struct.pci_slot*, i32, i16, i16, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, [6 x i8], i64*, %struct.pci_driver*, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, [4 x i8], %struct.pcie_link_state*, i8, [3 x i8], i32, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], [4 x i8], %struct.hlist_head, %struct.bin_attribute*, i32, [4 x i8], [17 x %struct.bin_attribute*], [17 x %struct.bin_attribute*], %struct.attribute_group**, %struct.pci_vpd*, %union.anon.67, i16, i8, i8, i16, [2 x i8], i64, i64, i8*, i64 }>
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
%union.anon.67 = type { %struct.pci_sriov* }
%struct.pci_sriov = type opaque

@ioport_resource = external dso_local global %struct.resource, align 8
@.str = private unnamed_addr constant [4 x i8] c"pnp\00", align 1
@pnp_reserve_io = internal global [16 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 16, !dbg !0
@pnp_global = external dso_local global %struct.list_head, align 8
@iomem_resource = external dso_local global %struct.resource, align 8
@pnp_reserve_mem = internal global [16 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 16, !dbg !3955
@pnp_reserve_irq = internal global [16 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 16, !dbg !3958
@pnp_reserve_dma = internal global [8 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 16, !dbg !3960
@.str.1 = private unnamed_addr constant [24 x i8] c"can't add resource %pR\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"can't add resource for IRQ %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%pR\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"can't add resource for DMA %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"can't add resource for IO %#llx-%#llx\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"can't add resource for MEM %#llx-%#llx\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"can't add resource for BUS %#llx-%#llx\0A\00", align 1
@__setup_str_pnp_setup_reserve_irq = internal constant [17 x i8] c"pnp_reserve_irq=\00", section ".init.rodata", align 1, !dbg !3963
@__setup_pnp_setup_reserve_irq = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__setup_str_pnp_setup_reserve_irq, i32 0, i32 0), i32 (i8*)* @pnp_setup_reserve_irq, i32 0 }, section ".init.setup", align 8, !dbg !3938
@__setup_str_pnp_setup_reserve_dma = internal constant [17 x i8] c"pnp_reserve_dma=\00", section ".init.rodata", align 1, !dbg !3968
@__setup_pnp_setup_reserve_dma = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__setup_str_pnp_setup_reserve_dma, i32 0, i32 0), i32 (i8*)* @pnp_setup_reserve_dma, i32 0 }, section ".init.setup", align 8, !dbg !3949
@__setup_str_pnp_setup_reserve_io = internal constant [16 x i8] c"pnp_reserve_io=\00", section ".init.rodata", align 1, !dbg !3970
@__setup_pnp_setup_reserve_io = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__setup_str_pnp_setup_reserve_io, i32 0, i32 0), i32 (i8*)* @pnp_setup_reserve_io, i32 0 }, section ".init.setup", align 8, !dbg !3951
@__setup_str_pnp_setup_reserve_mem = internal constant [17 x i8] c"pnp_reserve_mem=\00", section ".init.rodata", align 1, !dbg !3973
@__setup_pnp_setup_reserve_mem = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__setup_str_pnp_setup_reserve_mem, i32 0, i32 0), i32 (i8*)* @pnp_setup_reserve_mem, i32 0 }, section ".init.setup", align 8, !dbg !3953
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.9 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pnp_debug = external dso_local global i32, align 4
@.str.10 = private unnamed_addr constant [26 x i8] c"  device %s using irq %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"  legacy IDE device %s using irq %d\0A\00", align 1
@llvm.used = appending global [4 x i8*] [i8* bitcast (%struct.obs_kernel_param* @__setup_pnp_setup_reserve_irq to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_pnp_setup_reserve_dma to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_pnp_setup_reserve_io to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_pnp_setup_reserve_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pnp_register_irq_resource(%struct.pnp_dev* %dev, i32 %option_flags, %struct.pnp_irq_mask_t* %map, i8 zeroext %flags) #0 !dbg !3980 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %option_flags.addr = alloca i32, align 4
  %map.addr = alloca %struct.pnp_irq_mask_t*, align 8
  %flags.addr = alloca i8, align 1
  %option = alloca %struct.pnp_option*, align 8
  %irq = alloca %struct.pnp_irq*, align 8
  %i = alloca i32, align 4
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !3984, metadata !DIExpression()), !dbg !3985
  store i32 %option_flags, i32* %option_flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %option_flags.addr, metadata !3986, metadata !DIExpression()), !dbg !3987
  store %struct.pnp_irq_mask_t* %map, %struct.pnp_irq_mask_t** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_irq_mask_t** %map.addr, metadata !3988, metadata !DIExpression()), !dbg !3989
  store i8 %flags, i8* %flags.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %flags.addr, metadata !3990, metadata !DIExpression()), !dbg !3991
  call void @llvm.dbg.declare(metadata %struct.pnp_option** %option, metadata !3992, metadata !DIExpression()), !dbg !3993
  call void @llvm.dbg.declare(metadata %struct.pnp_irq** %irq, metadata !3994, metadata !DIExpression()), !dbg !3996
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !3997
  %1 = load i32, i32* %option_flags.addr, align 4, !dbg !3998
  %call = call %struct.pnp_option* @pnp_build_option(%struct.pnp_dev* %0, i64 1024, i32 %1) #9, !dbg !3999
  store %struct.pnp_option* %call, %struct.pnp_option** %option, align 8, !dbg !4000
  %2 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !4001
  %tobool = icmp ne %struct.pnp_option* %2, null, !dbg !4001
  br i1 %tobool, label %if.end, label %if.then, !dbg !4003

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !4004
  br label %return, !dbg !4004

if.end:                                           ; preds = %entry
  %3 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !4005
  %u = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %3, i32 0, i32 3, !dbg !4006
  %irq1 = bitcast %union.anon.66* %u to %struct.pnp_irq*, !dbg !4007
  store %struct.pnp_irq* %irq1, %struct.pnp_irq** %irq, align 8, !dbg !4008
  %4 = load %struct.pnp_irq*, %struct.pnp_irq** %irq, align 8, !dbg !4009
  %map2 = getelementptr inbounds %struct.pnp_irq, %struct.pnp_irq* %4, i32 0, i32 0, !dbg !4010
  %5 = load %struct.pnp_irq_mask_t*, %struct.pnp_irq_mask_t** %map.addr, align 8, !dbg !4011
  %6 = bitcast %struct.pnp_irq_mask_t* %map2 to i8*, !dbg !4012
  %7 = bitcast %struct.pnp_irq_mask_t* %5 to i8*, !dbg !4012
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %7, i64 32, i1 false), !dbg !4012
  %8 = load i8, i8* %flags.addr, align 1, !dbg !4013
  %9 = load %struct.pnp_irq*, %struct.pnp_irq** %irq, align 8, !dbg !4014
  %flags3 = getelementptr inbounds %struct.pnp_irq, %struct.pnp_irq* %9, i32 0, i32 1, !dbg !4015
  store i8 %8, i8* %flags3, align 8, !dbg !4016
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4017, metadata !DIExpression()), !dbg !4019
  store i32 0, i32* %i, align 4, !dbg !4020
  br label %for.cond, !dbg !4022

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, i32* %i, align 4, !dbg !4023
  %cmp = icmp slt i32 %10, 16, !dbg !4025
  br i1 %cmp, label %for.body, label %for.end, !dbg !4026

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4, !dbg !4027
  %conv = sext i32 %11 to i64, !dbg !4027
  %12 = load %struct.pnp_irq*, %struct.pnp_irq** %irq, align 8, !dbg !4029
  %map4 = getelementptr inbounds %struct.pnp_irq, %struct.pnp_irq* %12, i32 0, i32 0, !dbg !4030
  %bits = getelementptr inbounds %struct.pnp_irq_mask_t, %struct.pnp_irq_mask_t* %map4, i32 0, i32 0, !dbg !4031
  %arraydecay = getelementptr inbounds [4 x i64], [4 x i64]* %bits, i64 0, i64 0, !dbg !4029
  %call5 = call zeroext i1 @test_bit(i64 %conv, i64* %arraydecay) #9, !dbg !4032
  br i1 %call5, label %if.then6, label %if.end7, !dbg !4033

if.then6:                                         ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !dbg !4034
  call void @pcibios_penalize_isa_irq(i32 %13, i32 0) #9, !dbg !4035
  br label %if.end7, !dbg !4035

if.end7:                                          ; preds = %if.then6, %for.body
  br label %for.inc, !dbg !4036

for.inc:                                          ; preds = %if.end7
  %14 = load i32, i32* %i, align 4, !dbg !4037
  %inc = add i32 %14, 1, !dbg !4037
  store i32 %inc, i32* %i, align 4, !dbg !4037
  br label %for.cond, !dbg !4038, !llvm.loop !4039

for.end:                                          ; preds = %for.cond
  %15 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4041
  %16 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !4042
  call void @dbg_pnp_show_option(%struct.pnp_dev* %15, %struct.pnp_option* %16) #9, !dbg !4043
  store i32 0, i32* %retval, align 4, !dbg !4044
  br label %return, !dbg !4044

return:                                           ; preds = %for.end, %if.then
  %17 = load i32, i32* %retval, align 4, !dbg !4045
  ret i32 %17, !dbg !4045
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.pnp_option* @pnp_build_option(%struct.pnp_dev* %dev, i64 %type, i32 %option_flags) #0 !dbg !4046 {
entry:
  %retval = alloca %struct.pnp_option*, align 8
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %type.addr = alloca i64, align 8
  %option_flags.addr = alloca i32, align 4
  %option = alloca %struct.pnp_option*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !4049, metadata !DIExpression()), !dbg !4050
  store i64 %type, i64* %type.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %type.addr, metadata !4051, metadata !DIExpression()), !dbg !4052
  store i32 %option_flags, i32* %option_flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %option_flags.addr, metadata !4053, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.declare(metadata %struct.pnp_option** %option, metadata !4055, metadata !DIExpression()), !dbg !4056
  %call = call i8* @kzalloc(i64 72, i32 3264) #9, !dbg !4057
  %0 = bitcast i8* %call to %struct.pnp_option*, !dbg !4057
  store %struct.pnp_option* %0, %struct.pnp_option** %option, align 8, !dbg !4058
  %1 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !4059
  %tobool = icmp ne %struct.pnp_option* %1, null, !dbg !4059
  br i1 %tobool, label %if.end, label %if.then, !dbg !4061

if.then:                                          ; preds = %entry
  store %struct.pnp_option* null, %struct.pnp_option** %retval, align 8, !dbg !4062
  br label %return, !dbg !4062

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %option_flags.addr, align 4, !dbg !4063
  %3 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !4064
  %flags = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %3, i32 0, i32 1, !dbg !4065
  store i32 %2, i32* %flags, align 8, !dbg !4066
  %4 = load i64, i64* %type.addr, align 8, !dbg !4067
  %5 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !4068
  %type1 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %5, i32 0, i32 2, !dbg !4069
  store i64 %4, i64* %type1, align 8, !dbg !4070
  %6 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !4071
  %list = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %6, i32 0, i32 0, !dbg !4072
  %7 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4073
  %options = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %7, i32 0, i32 17, !dbg !4074
  call void @list_add_tail(%struct.list_head* %list, %struct.list_head* %options) #9, !dbg !4075
  %8 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !4076
  store %struct.pnp_option* %8, %struct.pnp_option** %retval, align 8, !dbg !4077
  br label %return, !dbg !4077

return:                                           ; preds = %if.end, %if.then
  %9 = load %struct.pnp_option*, %struct.pnp_option** %retval, align 8, !dbg !4078
  ret %struct.pnp_option* %9, !dbg !4078
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #0 !dbg !4079 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !4086, metadata !DIExpression()), !dbg !4089
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !4091, metadata !DIExpression()), !dbg !4092
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !4093, metadata !DIExpression()), !dbg !4094
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !4095, metadata !DIExpression()), !dbg !4097
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !4099, metadata !DIExpression()), !dbg !4100
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !4101, metadata !DIExpression()), !dbg !4109
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4111, metadata !DIExpression()), !dbg !4112
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !4113, metadata !DIExpression()), !dbg !4114
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !4115, metadata !DIExpression()), !dbg !4116
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !4117
  %1 = load i64, i64* %nr.addr, align 8, !dbg !4118
  %div = sdiv i64 %1, 64, !dbg !4118
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !4119
  %2 = bitcast i64* %add.ptr to i8*, !dbg !4117
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !4120
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4121
  %conv.i = trunc i64 %4 to i32, !dbg !4121
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #10, !dbg !4122
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !4123
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !4123
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #10, !dbg !4123
  %7 = load i64, i64* %nr.addr, align 8, !dbg !4124
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !4124
  br i1 %8, label %cond.true, label %cond.false, !dbg !4124

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !4124
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !4124
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !4125
  %and.i = and i64 %11, 63, !dbg !4126
  %shl.i = shl i64 1, %and.i, !dbg !4127
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !4128
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !4129
  %shr.i = ashr i64 %13, 6, !dbg !4130
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !4128
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !4128
  %and1.i = and i64 %shl.i, %14, !dbg !4131
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !4132
  %conv = zext i1 %cmp.i to i32, !dbg !4124
  br label %cond.end, !dbg !4124

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !4124
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !4124
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !4133
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !4134
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #11, !dbg !4135, !srcloc !4136
  store i8 %19, i8* %oldbit.i, align 1, !dbg !4135
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !4137
  %tobool.i = trunc i8 %20 to i1, !dbg !4137
  %conv2 = zext i1 %tobool.i to i32, !dbg !4124
  br label %cond.end, !dbg !4124

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !4124
  %tobool = icmp ne i32 %cond, 0, !dbg !4124
  ret i1 %tobool, !dbg !4138
}

; Function Attrs: noredzone
declare dso_local void @pcibios_penalize_isa_irq(i32, i32) #3

; Function Attrs: noredzone
declare dso_local void @dbg_pnp_show_option(%struct.pnp_dev*, %struct.pnp_option*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pnp_register_dma_resource(%struct.pnp_dev* %dev, i32 %option_flags, i8 zeroext %map, i8 zeroext %flags) #0 !dbg !4139 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %option_flags.addr = alloca i32, align 4
  %map.addr = alloca i8, align 1
  %flags.addr = alloca i8, align 1
  %option = alloca %struct.pnp_option*, align 8
  %dma = alloca %struct.pnp_dma*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !4142, metadata !DIExpression()), !dbg !4143
  store i32 %option_flags, i32* %option_flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %option_flags.addr, metadata !4144, metadata !DIExpression()), !dbg !4145
  store i8 %map, i8* %map.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %map.addr, metadata !4146, metadata !DIExpression()), !dbg !4147
  store i8 %flags, i8* %flags.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %flags.addr, metadata !4148, metadata !DIExpression()), !dbg !4149
  call void @llvm.dbg.declare(metadata %struct.pnp_option** %option, metadata !4150, metadata !DIExpression()), !dbg !4151
  call void @llvm.dbg.declare(metadata %struct.pnp_dma** %dma, metadata !4152, metadata !DIExpression()), !dbg !4154
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4155
  %1 = load i32, i32* %option_flags.addr, align 4, !dbg !4156
  %call = call %struct.pnp_option* @pnp_build_option(%struct.pnp_dev* %0, i64 2048, i32 %1) #9, !dbg !4157
  store %struct.pnp_option* %call, %struct.pnp_option** %option, align 8, !dbg !4158
  %2 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !4159
  %tobool = icmp ne %struct.pnp_option* %2, null, !dbg !4159
  br i1 %tobool, label %if.end, label %if.then, !dbg !4161

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !4162
  br label %return, !dbg !4162

if.end:                                           ; preds = %entry
  %3 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !4163
  %u = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %3, i32 0, i32 3, !dbg !4164
  %dma1 = bitcast %union.anon.66* %u to %struct.pnp_dma*, !dbg !4165
  store %struct.pnp_dma* %dma1, %struct.pnp_dma** %dma, align 8, !dbg !4166
  %4 = load i8, i8* %map.addr, align 1, !dbg !4167
  %5 = load %struct.pnp_dma*, %struct.pnp_dma** %dma, align 8, !dbg !4168
  %map2 = getelementptr inbounds %struct.pnp_dma, %struct.pnp_dma* %5, i32 0, i32 0, !dbg !4169
  store i8 %4, i8* %map2, align 1, !dbg !4170
  %6 = load i8, i8* %flags.addr, align 1, !dbg !4171
  %7 = load %struct.pnp_dma*, %struct.pnp_dma** %dma, align 8, !dbg !4172
  %flags3 = getelementptr inbounds %struct.pnp_dma, %struct.pnp_dma* %7, i32 0, i32 1, !dbg !4173
  store i8 %6, i8* %flags3, align 1, !dbg !4174
  %8 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4175
  %9 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !4176
  call void @dbg_pnp_show_option(%struct.pnp_dev* %8, %struct.pnp_option* %9) #9, !dbg !4177
  store i32 0, i32* %retval, align 4, !dbg !4178
  br label %return, !dbg !4178

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !4179
  ret i32 %10, !dbg !4179
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pnp_register_port_resource(%struct.pnp_dev* %dev, i32 %option_flags, i64 %min, i64 %max, i64 %align, i64 %size, i8 zeroext %flags) #0 !dbg !4180 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %option_flags.addr = alloca i32, align 4
  %min.addr = alloca i64, align 8
  %max.addr = alloca i64, align 8
  %align.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i8, align 1
  %option = alloca %struct.pnp_option*, align 8
  %port = alloca %struct.pnp_port*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !4183, metadata !DIExpression()), !dbg !4184
  store i32 %option_flags, i32* %option_flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %option_flags.addr, metadata !4185, metadata !DIExpression()), !dbg !4186
  store i64 %min, i64* %min.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %min.addr, metadata !4187, metadata !DIExpression()), !dbg !4188
  store i64 %max, i64* %max.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %max.addr, metadata !4189, metadata !DIExpression()), !dbg !4190
  store i64 %align, i64* %align.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %align.addr, metadata !4191, metadata !DIExpression()), !dbg !4192
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4193, metadata !DIExpression()), !dbg !4194
  store i8 %flags, i8* %flags.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %flags.addr, metadata !4195, metadata !DIExpression()), !dbg !4196
  call void @llvm.dbg.declare(metadata %struct.pnp_option** %option, metadata !4197, metadata !DIExpression()), !dbg !4198
  call void @llvm.dbg.declare(metadata %struct.pnp_port** %port, metadata !4199, metadata !DIExpression()), !dbg !4201
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4202
  %1 = load i32, i32* %option_flags.addr, align 4, !dbg !4203
  %call = call %struct.pnp_option* @pnp_build_option(%struct.pnp_dev* %0, i64 256, i32 %1) #9, !dbg !4204
  store %struct.pnp_option* %call, %struct.pnp_option** %option, align 8, !dbg !4205
  %2 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !4206
  %tobool = icmp ne %struct.pnp_option* %2, null, !dbg !4206
  br i1 %tobool, label %if.end, label %if.then, !dbg !4208

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !4209
  br label %return, !dbg !4209

if.end:                                           ; preds = %entry
  %3 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !4210
  %u = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %3, i32 0, i32 3, !dbg !4211
  %port1 = bitcast %union.anon.66* %u to %struct.pnp_port*, !dbg !4212
  store %struct.pnp_port* %port1, %struct.pnp_port** %port, align 8, !dbg !4213
  %4 = load i64, i64* %min.addr, align 8, !dbg !4214
  %5 = load %struct.pnp_port*, %struct.pnp_port** %port, align 8, !dbg !4215
  %min2 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %5, i32 0, i32 0, !dbg !4216
  store i64 %4, i64* %min2, align 8, !dbg !4217
  %6 = load i64, i64* %max.addr, align 8, !dbg !4218
  %7 = load %struct.pnp_port*, %struct.pnp_port** %port, align 8, !dbg !4219
  %max3 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %7, i32 0, i32 1, !dbg !4220
  store i64 %6, i64* %max3, align 8, !dbg !4221
  %8 = load i64, i64* %align.addr, align 8, !dbg !4222
  %9 = load %struct.pnp_port*, %struct.pnp_port** %port, align 8, !dbg !4223
  %align4 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %9, i32 0, i32 2, !dbg !4224
  store i64 %8, i64* %align4, align 8, !dbg !4225
  %10 = load i64, i64* %size.addr, align 8, !dbg !4226
  %11 = load %struct.pnp_port*, %struct.pnp_port** %port, align 8, !dbg !4227
  %size5 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %11, i32 0, i32 3, !dbg !4228
  store i64 %10, i64* %size5, align 8, !dbg !4229
  %12 = load i8, i8* %flags.addr, align 1, !dbg !4230
  %13 = load %struct.pnp_port*, %struct.pnp_port** %port, align 8, !dbg !4231
  %flags6 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %13, i32 0, i32 4, !dbg !4232
  store i8 %12, i8* %flags6, align 8, !dbg !4233
  %14 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4234
  %15 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !4235
  call void @dbg_pnp_show_option(%struct.pnp_dev* %14, %struct.pnp_option* %15) #9, !dbg !4236
  store i32 0, i32* %retval, align 4, !dbg !4237
  br label %return, !dbg !4237

return:                                           ; preds = %if.end, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !4238
  ret i32 %16, !dbg !4238
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pnp_register_mem_resource(%struct.pnp_dev* %dev, i32 %option_flags, i64 %min, i64 %max, i64 %align, i64 %size, i8 zeroext %flags) #0 !dbg !4239 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %option_flags.addr = alloca i32, align 4
  %min.addr = alloca i64, align 8
  %max.addr = alloca i64, align 8
  %align.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i8, align 1
  %option = alloca %struct.pnp_option*, align 8
  %mem = alloca %struct.pnp_mem*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !4240, metadata !DIExpression()), !dbg !4241
  store i32 %option_flags, i32* %option_flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %option_flags.addr, metadata !4242, metadata !DIExpression()), !dbg !4243
  store i64 %min, i64* %min.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %min.addr, metadata !4244, metadata !DIExpression()), !dbg !4245
  store i64 %max, i64* %max.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %max.addr, metadata !4246, metadata !DIExpression()), !dbg !4247
  store i64 %align, i64* %align.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %align.addr, metadata !4248, metadata !DIExpression()), !dbg !4249
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4250, metadata !DIExpression()), !dbg !4251
  store i8 %flags, i8* %flags.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %flags.addr, metadata !4252, metadata !DIExpression()), !dbg !4253
  call void @llvm.dbg.declare(metadata %struct.pnp_option** %option, metadata !4254, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.declare(metadata %struct.pnp_mem** %mem, metadata !4256, metadata !DIExpression()), !dbg !4258
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4259
  %1 = load i32, i32* %option_flags.addr, align 4, !dbg !4260
  %call = call %struct.pnp_option* @pnp_build_option(%struct.pnp_dev* %0, i64 512, i32 %1) #9, !dbg !4261
  store %struct.pnp_option* %call, %struct.pnp_option** %option, align 8, !dbg !4262
  %2 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !4263
  %tobool = icmp ne %struct.pnp_option* %2, null, !dbg !4263
  br i1 %tobool, label %if.end, label %if.then, !dbg !4265

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !4266
  br label %return, !dbg !4266

if.end:                                           ; preds = %entry
  %3 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !4267
  %u = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %3, i32 0, i32 3, !dbg !4268
  %mem1 = bitcast %union.anon.66* %u to %struct.pnp_mem*, !dbg !4269
  store %struct.pnp_mem* %mem1, %struct.pnp_mem** %mem, align 8, !dbg !4270
  %4 = load i64, i64* %min.addr, align 8, !dbg !4271
  %5 = load %struct.pnp_mem*, %struct.pnp_mem** %mem, align 8, !dbg !4272
  %min2 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %5, i32 0, i32 0, !dbg !4273
  store i64 %4, i64* %min2, align 8, !dbg !4274
  %6 = load i64, i64* %max.addr, align 8, !dbg !4275
  %7 = load %struct.pnp_mem*, %struct.pnp_mem** %mem, align 8, !dbg !4276
  %max3 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %7, i32 0, i32 1, !dbg !4277
  store i64 %6, i64* %max3, align 8, !dbg !4278
  %8 = load i64, i64* %align.addr, align 8, !dbg !4279
  %9 = load %struct.pnp_mem*, %struct.pnp_mem** %mem, align 8, !dbg !4280
  %align4 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %9, i32 0, i32 2, !dbg !4281
  store i64 %8, i64* %align4, align 8, !dbg !4282
  %10 = load i64, i64* %size.addr, align 8, !dbg !4283
  %11 = load %struct.pnp_mem*, %struct.pnp_mem** %mem, align 8, !dbg !4284
  %size5 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %11, i32 0, i32 3, !dbg !4285
  store i64 %10, i64* %size5, align 8, !dbg !4286
  %12 = load i8, i8* %flags.addr, align 1, !dbg !4287
  %13 = load %struct.pnp_mem*, %struct.pnp_mem** %mem, align 8, !dbg !4288
  %flags6 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %13, i32 0, i32 4, !dbg !4289
  store i8 %12, i8* %flags6, align 8, !dbg !4290
  %14 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4291
  %15 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !4292
  call void @dbg_pnp_show_option(%struct.pnp_dev* %14, %struct.pnp_option* %15) #9, !dbg !4293
  store i32 0, i32* %retval, align 4, !dbg !4294
  br label %return, !dbg !4294

return:                                           ; preds = %if.end, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !4295
  ret i32 %16, !dbg !4295
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pnp_free_options(%struct.pnp_dev* %dev) #0 !dbg !4296 {
entry:
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %option = alloca %struct.pnp_option*, align 8
  %tmp = alloca %struct.pnp_option*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.pnp_option*, align 8
  %__mptr2 = alloca i8*, align 8
  %tmp6 = alloca %struct.pnp_option*, align 8
  %__mptr11 = alloca i8*, align 8
  %tmp16 = alloca %struct.pnp_option*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !4297, metadata !DIExpression()), !dbg !4298
  call void @llvm.dbg.declare(metadata %struct.pnp_option** %option, metadata !4299, metadata !DIExpression()), !dbg !4300
  call void @llvm.dbg.declare(metadata %struct.pnp_option** %tmp, metadata !4301, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4303, metadata !DIExpression()), !dbg !4306
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4306
  %options = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %0, i32 0, i32 17, !dbg !4306
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %options, i32 0, i32 0, !dbg !4306
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4306
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !4306
  store i8* %2, i8** %__mptr, align 8, !dbg !4306
  br label %do.body, !dbg !4306

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4307

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !4306
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !4306
  %4 = bitcast i8* %add.ptr to %struct.pnp_option*, !dbg !4306
  store %struct.pnp_option* %4, %struct.pnp_option** %tmp1, align 8, !dbg !4307
  %5 = load %struct.pnp_option*, %struct.pnp_option** %tmp1, align 8, !dbg !4306
  store %struct.pnp_option* %5, %struct.pnp_option** %option, align 8, !dbg !4309
  call void @llvm.dbg.declare(metadata i8** %__mptr2, metadata !4310, metadata !DIExpression()), !dbg !4312
  %6 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !4312
  %list = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %6, i32 0, i32 0, !dbg !4312
  %next3 = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i32 0, i32 0, !dbg !4312
  %7 = load %struct.list_head*, %struct.list_head** %next3, align 8, !dbg !4312
  %8 = bitcast %struct.list_head* %7 to i8*, !dbg !4312
  store i8* %8, i8** %__mptr2, align 8, !dbg !4312
  br label %do.body4, !dbg !4312

do.body4:                                         ; preds = %do.end
  br label %do.end5, !dbg !4313

do.end5:                                          ; preds = %do.body4
  %9 = load i8*, i8** %__mptr2, align 8, !dbg !4312
  %add.ptr7 = getelementptr i8, i8* %9, i64 0, !dbg !4312
  %10 = bitcast i8* %add.ptr7 to %struct.pnp_option*, !dbg !4312
  store %struct.pnp_option* %10, %struct.pnp_option** %tmp6, align 8, !dbg !4313
  %11 = load %struct.pnp_option*, %struct.pnp_option** %tmp6, align 8, !dbg !4312
  store %struct.pnp_option* %11, %struct.pnp_option** %tmp, align 8, !dbg !4309
  br label %for.cond, !dbg !4309

for.cond:                                         ; preds = %do.end15, %do.end5
  %12 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !4315
  %list8 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %12, i32 0, i32 0, !dbg !4315
  %13 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4315
  %options9 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %13, i32 0, i32 17, !dbg !4315
  %cmp = icmp eq %struct.list_head* %list8, %options9, !dbg !4315
  %lnot = xor i1 %cmp, true, !dbg !4315
  br i1 %lnot, label %for.body, label %for.end, !dbg !4309

for.body:                                         ; preds = %for.cond
  %14 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !4317
  %list10 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %14, i32 0, i32 0, !dbg !4319
  call void @list_del(%struct.list_head* %list10) #9, !dbg !4320
  %15 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !4321
  %16 = bitcast %struct.pnp_option* %15 to i8*, !dbg !4321
  call void @kfree(i8* %16) #9, !dbg !4322
  br label %for.inc, !dbg !4323

for.inc:                                          ; preds = %for.body
  %17 = load %struct.pnp_option*, %struct.pnp_option** %tmp, align 8, !dbg !4315
  store %struct.pnp_option* %17, %struct.pnp_option** %option, align 8, !dbg !4315
  call void @llvm.dbg.declare(metadata i8** %__mptr11, metadata !4324, metadata !DIExpression()), !dbg !4326
  %18 = load %struct.pnp_option*, %struct.pnp_option** %tmp, align 8, !dbg !4326
  %list12 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %18, i32 0, i32 0, !dbg !4326
  %next13 = getelementptr inbounds %struct.list_head, %struct.list_head* %list12, i32 0, i32 0, !dbg !4326
  %19 = load %struct.list_head*, %struct.list_head** %next13, align 8, !dbg !4326
  %20 = bitcast %struct.list_head* %19 to i8*, !dbg !4326
  store i8* %20, i8** %__mptr11, align 8, !dbg !4326
  br label %do.body14, !dbg !4326

do.body14:                                        ; preds = %for.inc
  br label %do.end15, !dbg !4327

do.end15:                                         ; preds = %do.body14
  %21 = load i8*, i8** %__mptr11, align 8, !dbg !4326
  %add.ptr17 = getelementptr i8, i8* %21, i64 0, !dbg !4326
  %22 = bitcast i8* %add.ptr17 to %struct.pnp_option*, !dbg !4326
  store %struct.pnp_option* %22, %struct.pnp_option** %tmp16, align 8, !dbg !4327
  %23 = load %struct.pnp_option*, %struct.pnp_option** %tmp16, align 8, !dbg !4326
  store %struct.pnp_option* %23, %struct.pnp_option** %tmp, align 8, !dbg !4315
  br label %for.cond, !dbg !4315, !llvm.loop !4329

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4331
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !4332 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !4336, metadata !DIExpression()), !dbg !4337
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4338
  call void @__list_del_entry(%struct.list_head* %0) #9, !dbg !4339
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4340
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !4341
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !4342
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4343
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !4344
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !4345
  ret void, !dbg !4346
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pnp_check_port(%struct.pnp_dev* %dev, %struct.resource* %res) #0 !dbg !4347 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %res.addr = alloca %struct.resource*, align 8
  %i = alloca i32, align 4
  %tdev = alloca %struct.pnp_dev*, align 8
  %tres = alloca %struct.resource*, align 8
  %port = alloca i64*, align 8
  %end = alloca i64*, align 8
  %tport = alloca i64*, align 8
  %tend = alloca i64*, align 8
  %rport = alloca i32, align 4
  %rend = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pnp_dev*, align 8
  %__mptr86 = alloca i8*, align 8
  %tmp90 = alloca %struct.pnp_dev*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !4350, metadata !DIExpression()), !dbg !4351
  store %struct.resource* %res, %struct.resource** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %res.addr, metadata !4352, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4354, metadata !DIExpression()), !dbg !4355
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %tdev, metadata !4356, metadata !DIExpression()), !dbg !4357
  call void @llvm.dbg.declare(metadata %struct.resource** %tres, metadata !4358, metadata !DIExpression()), !dbg !4359
  call void @llvm.dbg.declare(metadata i64** %port, metadata !4360, metadata !DIExpression()), !dbg !4362
  call void @llvm.dbg.declare(metadata i64** %end, metadata !4363, metadata !DIExpression()), !dbg !4364
  call void @llvm.dbg.declare(metadata i64** %tport, metadata !4365, metadata !DIExpression()), !dbg !4366
  call void @llvm.dbg.declare(metadata i64** %tend, metadata !4367, metadata !DIExpression()), !dbg !4368
  %0 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4369
  %start = getelementptr inbounds %struct.resource, %struct.resource* %0, i32 0, i32 0, !dbg !4370
  store i64* %start, i64** %port, align 8, !dbg !4371
  %1 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4372
  %end1 = getelementptr inbounds %struct.resource, %struct.resource* %1, i32 0, i32 1, !dbg !4373
  store i64* %end1, i64** %end, align 8, !dbg !4374
  %2 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4375
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %2, i32 0, i32 3, !dbg !4375
  %3 = load i64, i64* %flags, align 8, !dbg !4375
  %and = and i64 %3, 268435456, !dbg !4375
  %tobool = icmp ne i64 %and, 0, !dbg !4375
  br i1 %tobool, label %if.then, label %if.end, !dbg !4377

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !4378
  br label %return, !dbg !4378

if.end:                                           ; preds = %entry
  %4 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4379
  %active = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %4, i32 0, i32 13, !dbg !4381
  %5 = load i32, i32* %active, align 8, !dbg !4381
  %tobool2 = icmp ne i32 %5, 0, !dbg !4379
  br i1 %tobool2, label %if.end9, label %if.then3, !dbg !4382

if.then3:                                         ; preds = %if.end
  %6 = load i64*, i64** %port, align 8, !dbg !4383
  %7 = load i64, i64* %6, align 8, !dbg !4383
  %8 = load i64*, i64** %end, align 8, !dbg !4383
  %9 = load i64, i64* %8, align 8, !dbg !4383
  %10 = load i64*, i64** %port, align 8, !dbg !4383
  %11 = load i64, i64* %10, align 8, !dbg !4383
  %sub = sub i64 %9, %11, !dbg !4383
  %add = add i64 %sub, 1, !dbg !4383
  %call = call %struct.resource* @__request_region(%struct.resource* @ioport_resource, i64 %7, i64 %add, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 0) #9, !dbg !4383
  %tobool4 = icmp ne %struct.resource* %call, null, !dbg !4383
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !4386

if.then5:                                         ; preds = %if.then3
  store i32 0, i32* %retval, align 4, !dbg !4387
  br label %return, !dbg !4387

if.end6:                                          ; preds = %if.then3
  %12 = load i64*, i64** %port, align 8, !dbg !4388
  %13 = load i64, i64* %12, align 8, !dbg !4388
  %14 = load i64*, i64** %end, align 8, !dbg !4388
  %15 = load i64, i64* %14, align 8, !dbg !4388
  %16 = load i64*, i64** %port, align 8, !dbg !4388
  %17 = load i64, i64* %16, align 8, !dbg !4388
  %sub7 = sub i64 %15, %17, !dbg !4388
  %add8 = add i64 %sub7, 1, !dbg !4388
  call void @__release_region(%struct.resource* @ioport_resource, i64 %13, i64 %add8) #9, !dbg !4388
  br label %if.end9, !dbg !4389

if.end9:                                          ; preds = %if.end6, %if.end
  store i32 0, i32* %i, align 4, !dbg !4390
  br label %for.cond, !dbg !4392

for.cond:                                         ; preds = %for.inc, %if.end9
  %18 = load i32, i32* %i, align 4, !dbg !4393
  %cmp = icmp slt i32 %18, 8, !dbg !4395
  br i1 %cmp, label %for.body, label %for.end, !dbg !4396

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %rport, metadata !4397, metadata !DIExpression()), !dbg !4399
  %19 = load i32, i32* %i, align 4, !dbg !4400
  %shl = shl i32 %19, 1, !dbg !4401
  %idxprom = sext i32 %shl to i64, !dbg !4402
  %arrayidx = getelementptr [16 x i32], [16 x i32]* @pnp_reserve_io, i64 0, i64 %idxprom, !dbg !4402
  %20 = load i32, i32* %arrayidx, align 4, !dbg !4402
  store i32 %20, i32* %rport, align 4, !dbg !4399
  call void @llvm.dbg.declare(metadata i32* %rend, metadata !4403, metadata !DIExpression()), !dbg !4404
  %21 = load i32, i32* %i, align 4, !dbg !4405
  %shl10 = shl i32 %21, 1, !dbg !4406
  %add11 = add i32 %shl10, 1, !dbg !4407
  %idxprom12 = sext i32 %add11 to i64, !dbg !4408
  %arrayidx13 = getelementptr [16 x i32], [16 x i32]* @pnp_reserve_io, i64 0, i64 %idxprom12, !dbg !4408
  %22 = load i32, i32* %arrayidx13, align 4, !dbg !4408
  %23 = load i32, i32* %rport, align 4, !dbg !4409
  %add14 = add i32 %22, %23, !dbg !4410
  %sub15 = sub i32 %add14, 1, !dbg !4411
  store i32 %sub15, i32* %rend, align 4, !dbg !4404
  %24 = load i64*, i64** %end, align 8, !dbg !4412
  %25 = load i64, i64* %24, align 8, !dbg !4412
  %26 = load i32, i32* %rport, align 4, !dbg !4412
  %conv = sext i32 %26 to i64, !dbg !4412
  %cmp16 = icmp ult i64 %25, %conv, !dbg !4412
  br i1 %cmp16, label %if.end22, label %lor.lhs.false, !dbg !4412

lor.lhs.false:                                    ; preds = %for.body
  %27 = load i32, i32* %rend, align 4, !dbg !4412
  %conv18 = sext i32 %27 to i64, !dbg !4412
  %28 = load i64*, i64** %port, align 8, !dbg !4412
  %29 = load i64, i64* %28, align 8, !dbg !4412
  %cmp19 = icmp ult i64 %conv18, %29, !dbg !4412
  br i1 %cmp19, label %if.end22, label %if.then21, !dbg !4414

if.then21:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %retval, align 4, !dbg !4415
  br label %return, !dbg !4415

if.end22:                                         ; preds = %lor.lhs.false, %for.body
  br label %for.inc, !dbg !4416

for.inc:                                          ; preds = %if.end22
  %30 = load i32, i32* %i, align 4, !dbg !4417
  %inc = add i32 %30, 1, !dbg !4417
  store i32 %inc, i32* %i, align 4, !dbg !4417
  br label %for.cond, !dbg !4418, !llvm.loop !4419

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !4421
  br label %for.cond23, !dbg !4423

for.cond23:                                       ; preds = %for.inc43, %for.end
  %31 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4424
  %32 = load i32, i32* %i, align 4, !dbg !4426
  %call24 = call %struct.resource* @pnp_get_resource(%struct.pnp_dev* %31, i64 256, i32 %32) #9, !dbg !4427
  store %struct.resource* %call24, %struct.resource** %tres, align 8, !dbg !4428
  %tobool25 = icmp ne %struct.resource* %call24, null, !dbg !4429
  br i1 %tobool25, label %for.body26, label %for.end45, !dbg !4429

for.body26:                                       ; preds = %for.cond23
  %33 = load %struct.resource*, %struct.resource** %tres, align 8, !dbg !4430
  %34 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4433
  %cmp27 = icmp ne %struct.resource* %33, %34, !dbg !4434
  br i1 %cmp27, label %land.lhs.true, label %if.end42, !dbg !4435

land.lhs.true:                                    ; preds = %for.body26
  %35 = load %struct.resource*, %struct.resource** %tres, align 8, !dbg !4436
  %flags29 = getelementptr inbounds %struct.resource, %struct.resource* %35, i32 0, i32 3, !dbg !4437
  %36 = load i64, i64* %flags29, align 8, !dbg !4437
  %and30 = and i64 %36, 256, !dbg !4438
  %tobool31 = icmp ne i64 %and30, 0, !dbg !4438
  br i1 %tobool31, label %if.then32, label %if.end42, !dbg !4439

if.then32:                                        ; preds = %land.lhs.true
  %37 = load %struct.resource*, %struct.resource** %tres, align 8, !dbg !4440
  %start33 = getelementptr inbounds %struct.resource, %struct.resource* %37, i32 0, i32 0, !dbg !4442
  store i64* %start33, i64** %tport, align 8, !dbg !4443
  %38 = load %struct.resource*, %struct.resource** %tres, align 8, !dbg !4444
  %end34 = getelementptr inbounds %struct.resource, %struct.resource* %38, i32 0, i32 1, !dbg !4445
  store i64* %end34, i64** %tend, align 8, !dbg !4446
  %39 = load i64*, i64** %end, align 8, !dbg !4447
  %40 = load i64, i64* %39, align 8, !dbg !4447
  %41 = load i64*, i64** %tport, align 8, !dbg !4447
  %42 = load i64, i64* %41, align 8, !dbg !4447
  %cmp35 = icmp ult i64 %40, %42, !dbg !4447
  br i1 %cmp35, label %if.end41, label %lor.lhs.false37, !dbg !4447

lor.lhs.false37:                                  ; preds = %if.then32
  %43 = load i64*, i64** %tend, align 8, !dbg !4447
  %44 = load i64, i64* %43, align 8, !dbg !4447
  %45 = load i64*, i64** %port, align 8, !dbg !4447
  %46 = load i64, i64* %45, align 8, !dbg !4447
  %cmp38 = icmp ult i64 %44, %46, !dbg !4447
  br i1 %cmp38, label %if.end41, label %if.then40, !dbg !4449

if.then40:                                        ; preds = %lor.lhs.false37
  store i32 0, i32* %retval, align 4, !dbg !4450
  br label %return, !dbg !4450

if.end41:                                         ; preds = %lor.lhs.false37, %if.then32
  br label %if.end42, !dbg !4451

if.end42:                                         ; preds = %if.end41, %land.lhs.true, %for.body26
  br label %for.inc43, !dbg !4452

for.inc43:                                        ; preds = %if.end42
  %47 = load i32, i32* %i, align 4, !dbg !4453
  %inc44 = add i32 %47, 1, !dbg !4453
  store i32 %inc44, i32* %i, align 4, !dbg !4453
  br label %for.cond23, !dbg !4454, !llvm.loop !4455

for.end45:                                        ; preds = %for.cond23
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4457, metadata !DIExpression()), !dbg !4460
  %48 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @pnp_global, i32 0, i32 0), align 8, !dbg !4460
  %49 = bitcast %struct.list_head* %48 to i8*, !dbg !4460
  store i8* %49, i8** %__mptr, align 8, !dbg !4460
  br label %do.body, !dbg !4460

do.body:                                          ; preds = %for.end45
  br label %do.end, !dbg !4461

do.end:                                           ; preds = %do.body
  %50 = load i8*, i8** %__mptr, align 8, !dbg !4460
  %add.ptr = getelementptr i8, i8* %50, i64 -712, !dbg !4460
  %51 = bitcast i8* %add.ptr to %struct.pnp_dev*, !dbg !4460
  store %struct.pnp_dev* %51, %struct.pnp_dev** %tmp, align 8, !dbg !4461
  %52 = load %struct.pnp_dev*, %struct.pnp_dev** %tmp, align 8, !dbg !4460
  store %struct.pnp_dev* %52, %struct.pnp_dev** %tdev, align 8, !dbg !4463
  br label %for.cond46, !dbg !4463

for.cond46:                                       ; preds = %do.end89, %do.end
  %53 = load %struct.pnp_dev*, %struct.pnp_dev** %tdev, align 8, !dbg !4464
  %global_list = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %53, i32 0, i32 4, !dbg !4464
  %cmp47 = icmp eq %struct.list_head* %global_list, @pnp_global, !dbg !4464
  %lnot = xor i1 %cmp47, true, !dbg !4464
  br i1 %lnot, label %for.body49, label %for.end92, !dbg !4463

for.body49:                                       ; preds = %for.cond46
  %54 = load %struct.pnp_dev*, %struct.pnp_dev** %tdev, align 8, !dbg !4466
  %55 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4469
  %cmp50 = icmp eq %struct.pnp_dev* %54, %55, !dbg !4470
  br i1 %cmp50, label %if.then52, label %if.end53, !dbg !4471

if.then52:                                        ; preds = %for.body49
  br label %for.inc85, !dbg !4472

if.end53:                                         ; preds = %for.body49
  store i32 0, i32* %i, align 4, !dbg !4473
  br label %for.cond54, !dbg !4475

for.cond54:                                       ; preds = %for.inc82, %if.end53
  %56 = load %struct.pnp_dev*, %struct.pnp_dev** %tdev, align 8, !dbg !4476
  %57 = load i32, i32* %i, align 4, !dbg !4478
  %call55 = call %struct.resource* @pnp_get_resource(%struct.pnp_dev* %56, i64 256, i32 %57) #9, !dbg !4479
  store %struct.resource* %call55, %struct.resource** %tres, align 8, !dbg !4480
  %tobool56 = icmp ne %struct.resource* %call55, null, !dbg !4481
  br i1 %tobool56, label %for.body57, label %for.end84, !dbg !4481

for.body57:                                       ; preds = %for.cond54
  %58 = load %struct.resource*, %struct.resource** %tres, align 8, !dbg !4482
  %flags58 = getelementptr inbounds %struct.resource, %struct.resource* %58, i32 0, i32 3, !dbg !4485
  %59 = load i64, i64* %flags58, align 8, !dbg !4485
  %and59 = and i64 %59, 256, !dbg !4486
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4486
  br i1 %tobool60, label %if.then61, label %if.end81, !dbg !4487

if.then61:                                        ; preds = %for.body57
  %60 = load %struct.resource*, %struct.resource** %tres, align 8, !dbg !4488
  %flags62 = getelementptr inbounds %struct.resource, %struct.resource* %60, i32 0, i32 3, !dbg !4488
  %61 = load i64, i64* %flags62, align 8, !dbg !4488
  %and63 = and i64 %61, 268435456, !dbg !4488
  %tobool64 = icmp ne i64 %and63, 0, !dbg !4488
  br i1 %tobool64, label %if.then65, label %if.end66, !dbg !4491

if.then65:                                        ; preds = %if.then61
  br label %for.inc82, !dbg !4492

if.end66:                                         ; preds = %if.then61
  %62 = load %struct.resource*, %struct.resource** %tres, align 8, !dbg !4493
  %flags67 = getelementptr inbounds %struct.resource, %struct.resource* %62, i32 0, i32 3, !dbg !4495
  %63 = load i64, i64* %flags67, align 8, !dbg !4495
  %and68 = and i64 %63, 2097152, !dbg !4496
  %tobool69 = icmp ne i64 %and68, 0, !dbg !4496
  br i1 %tobool69, label %if.then70, label %if.end71, !dbg !4497

if.then70:                                        ; preds = %if.end66
  br label %for.inc82, !dbg !4498

if.end71:                                         ; preds = %if.end66
  %64 = load %struct.resource*, %struct.resource** %tres, align 8, !dbg !4499
  %start72 = getelementptr inbounds %struct.resource, %struct.resource* %64, i32 0, i32 0, !dbg !4500
  store i64* %start72, i64** %tport, align 8, !dbg !4501
  %65 = load %struct.resource*, %struct.resource** %tres, align 8, !dbg !4502
  %end73 = getelementptr inbounds %struct.resource, %struct.resource* %65, i32 0, i32 1, !dbg !4503
  store i64* %end73, i64** %tend, align 8, !dbg !4504
  %66 = load i64*, i64** %end, align 8, !dbg !4505
  %67 = load i64, i64* %66, align 8, !dbg !4505
  %68 = load i64*, i64** %tport, align 8, !dbg !4505
  %69 = load i64, i64* %68, align 8, !dbg !4505
  %cmp74 = icmp ult i64 %67, %69, !dbg !4505
  br i1 %cmp74, label %if.end80, label %lor.lhs.false76, !dbg !4505

lor.lhs.false76:                                  ; preds = %if.end71
  %70 = load i64*, i64** %tend, align 8, !dbg !4505
  %71 = load i64, i64* %70, align 8, !dbg !4505
  %72 = load i64*, i64** %port, align 8, !dbg !4505
  %73 = load i64, i64* %72, align 8, !dbg !4505
  %cmp77 = icmp ult i64 %71, %73, !dbg !4505
  br i1 %cmp77, label %if.end80, label %if.then79, !dbg !4507

if.then79:                                        ; preds = %lor.lhs.false76
  store i32 0, i32* %retval, align 4, !dbg !4508
  br label %return, !dbg !4508

if.end80:                                         ; preds = %lor.lhs.false76, %if.end71
  br label %if.end81, !dbg !4509

if.end81:                                         ; preds = %if.end80, %for.body57
  br label %for.inc82, !dbg !4510

for.inc82:                                        ; preds = %if.end81, %if.then70, %if.then65
  %74 = load i32, i32* %i, align 4, !dbg !4511
  %inc83 = add i32 %74, 1, !dbg !4511
  store i32 %inc83, i32* %i, align 4, !dbg !4511
  br label %for.cond54, !dbg !4512, !llvm.loop !4513

for.end84:                                        ; preds = %for.cond54
  br label %for.inc85, !dbg !4515

for.inc85:                                        ; preds = %for.end84, %if.then52
  call void @llvm.dbg.declare(metadata i8** %__mptr86, metadata !4516, metadata !DIExpression()), !dbg !4518
  %75 = load %struct.pnp_dev*, %struct.pnp_dev** %tdev, align 8, !dbg !4518
  %global_list87 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %75, i32 0, i32 4, !dbg !4518
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %global_list87, i32 0, i32 0, !dbg !4518
  %76 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4518
  %77 = bitcast %struct.list_head* %76 to i8*, !dbg !4518
  store i8* %77, i8** %__mptr86, align 8, !dbg !4518
  br label %do.body88, !dbg !4518

do.body88:                                        ; preds = %for.inc85
  br label %do.end89, !dbg !4519

do.end89:                                         ; preds = %do.body88
  %78 = load i8*, i8** %__mptr86, align 8, !dbg !4518
  %add.ptr91 = getelementptr i8, i8* %78, i64 -712, !dbg !4518
  %79 = bitcast i8* %add.ptr91 to %struct.pnp_dev*, !dbg !4518
  store %struct.pnp_dev* %79, %struct.pnp_dev** %tmp90, align 8, !dbg !4519
  %80 = load %struct.pnp_dev*, %struct.pnp_dev** %tmp90, align 8, !dbg !4518
  store %struct.pnp_dev* %80, %struct.pnp_dev** %tdev, align 8, !dbg !4464
  br label %for.cond46, !dbg !4464, !llvm.loop !4521

for.end92:                                        ; preds = %for.cond46
  store i32 1, i32* %retval, align 4, !dbg !4523
  br label %return, !dbg !4523

return:                                           ; preds = %for.end92, %if.then79, %if.then40, %if.then21, %if.then5, %if.then
  %81 = load i32, i32* %retval, align 4, !dbg !4524
  ret i32 %81, !dbg !4524
}

; Function Attrs: noredzone
declare dso_local %struct.resource* @__request_region(%struct.resource*, i64, i64, i8*, i32) #3

; Function Attrs: noredzone
declare dso_local void @__release_region(%struct.resource*, i64, i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.resource* @pnp_get_resource(%struct.pnp_dev* %dev, i64 %type, i32 %num) #0 !dbg !4525 {
entry:
  %retval = alloca %struct.resource*, align 8
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %type.addr = alloca i64, align 8
  %num.addr = alloca i32, align 4
  %pnp_res = alloca %struct.pnp_resource*, align 8
  %res = alloca %struct.resource*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pnp_resource*, align 8
  %__mptr5 = alloca i8*, align 8
  %tmp10 = alloca %struct.pnp_resource*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !4528, metadata !DIExpression()), !dbg !4529
  store i64 %type, i64* %type.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %type.addr, metadata !4530, metadata !DIExpression()), !dbg !4531
  store i32 %num, i32* %num.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num.addr, metadata !4532, metadata !DIExpression()), !dbg !4533
  call void @llvm.dbg.declare(metadata %struct.pnp_resource** %pnp_res, metadata !4534, metadata !DIExpression()), !dbg !4535
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !4536, metadata !DIExpression()), !dbg !4537
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4538, metadata !DIExpression()), !dbg !4541
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4541
  %resources = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %0, i32 0, i32 16, !dbg !4541
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %resources, i32 0, i32 0, !dbg !4541
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4541
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !4541
  store i8* %2, i8** %__mptr, align 8, !dbg !4541
  br label %do.body, !dbg !4541

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4542

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !4541
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !4541
  %4 = bitcast i8* %add.ptr to %struct.pnp_resource*, !dbg !4541
  store %struct.pnp_resource* %4, %struct.pnp_resource** %tmp, align 8, !dbg !4542
  %5 = load %struct.pnp_resource*, %struct.pnp_resource** %tmp, align 8, !dbg !4541
  store %struct.pnp_resource* %5, %struct.pnp_resource** %pnp_res, align 8, !dbg !4544
  br label %for.cond, !dbg !4544

for.cond:                                         ; preds = %do.end9, %do.end
  %6 = load %struct.pnp_resource*, %struct.pnp_resource** %pnp_res, align 8, !dbg !4545
  %list = getelementptr inbounds %struct.pnp_resource, %struct.pnp_resource* %6, i32 0, i32 0, !dbg !4545
  %7 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4545
  %resources1 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %7, i32 0, i32 16, !dbg !4545
  %cmp = icmp eq %struct.list_head* %list, %resources1, !dbg !4545
  %lnot = xor i1 %cmp, true, !dbg !4545
  br i1 %lnot, label %for.body, label %for.end, !dbg !4544

for.body:                                         ; preds = %for.cond
  %8 = load %struct.pnp_resource*, %struct.pnp_resource** %pnp_res, align 8, !dbg !4547
  %res2 = getelementptr inbounds %struct.pnp_resource, %struct.pnp_resource* %8, i32 0, i32 1, !dbg !4549
  store %struct.resource* %res2, %struct.resource** %res, align 8, !dbg !4550
  %9 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4551
  %call = call i64 @pnp_resource_type(%struct.resource* %9) #9, !dbg !4553
  %10 = load i64, i64* %type.addr, align 8, !dbg !4554
  %cmp3 = icmp eq i64 %call, %10, !dbg !4555
  br i1 %cmp3, label %land.lhs.true, label %if.end, !dbg !4556

land.lhs.true:                                    ; preds = %for.body
  %11 = load i32, i32* %num.addr, align 4, !dbg !4557
  %dec = add i32 %11, -1, !dbg !4557
  store i32 %dec, i32* %num.addr, align 4, !dbg !4557
  %cmp4 = icmp eq i32 %11, 0, !dbg !4558
  br i1 %cmp4, label %if.then, label %if.end, !dbg !4559

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4560
  store %struct.resource* %12, %struct.resource** %retval, align 8, !dbg !4561
  br label %return, !dbg !4561

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !4562

for.inc:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr5, metadata !4563, metadata !DIExpression()), !dbg !4565
  %13 = load %struct.pnp_resource*, %struct.pnp_resource** %pnp_res, align 8, !dbg !4565
  %list6 = getelementptr inbounds %struct.pnp_resource, %struct.pnp_resource* %13, i32 0, i32 0, !dbg !4565
  %next7 = getelementptr inbounds %struct.list_head, %struct.list_head* %list6, i32 0, i32 0, !dbg !4565
  %14 = load %struct.list_head*, %struct.list_head** %next7, align 8, !dbg !4565
  %15 = bitcast %struct.list_head* %14 to i8*, !dbg !4565
  store i8* %15, i8** %__mptr5, align 8, !dbg !4565
  br label %do.body8, !dbg !4565

do.body8:                                         ; preds = %for.inc
  br label %do.end9, !dbg !4566

do.end9:                                          ; preds = %do.body8
  %16 = load i8*, i8** %__mptr5, align 8, !dbg !4565
  %add.ptr11 = getelementptr i8, i8* %16, i64 0, !dbg !4565
  %17 = bitcast i8* %add.ptr11 to %struct.pnp_resource*, !dbg !4565
  store %struct.pnp_resource* %17, %struct.pnp_resource** %tmp10, align 8, !dbg !4566
  %18 = load %struct.pnp_resource*, %struct.pnp_resource** %tmp10, align 8, !dbg !4565
  store %struct.pnp_resource* %18, %struct.pnp_resource** %pnp_res, align 8, !dbg !4545
  br label %for.cond, !dbg !4545, !llvm.loop !4568

for.end:                                          ; preds = %for.cond
  store %struct.resource* null, %struct.resource** %retval, align 8, !dbg !4570
  br label %return, !dbg !4570

return:                                           ; preds = %for.end, %if.then
  %19 = load %struct.resource*, %struct.resource** %retval, align 8, !dbg !4571
  ret %struct.resource* %19, !dbg !4571
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pnp_check_mem(%struct.pnp_dev* %dev, %struct.resource* %res) #0 !dbg !4572 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %res.addr = alloca %struct.resource*, align 8
  %i = alloca i32, align 4
  %tdev = alloca %struct.pnp_dev*, align 8
  %tres = alloca %struct.resource*, align 8
  %addr = alloca i64*, align 8
  %end = alloca i64*, align 8
  %taddr = alloca i64*, align 8
  %tend = alloca i64*, align 8
  %raddr = alloca i32, align 4
  %rend = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pnp_dev*, align 8
  %__mptr86 = alloca i8*, align 8
  %tmp90 = alloca %struct.pnp_dev*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !4573, metadata !DIExpression()), !dbg !4574
  store %struct.resource* %res, %struct.resource** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %res.addr, metadata !4575, metadata !DIExpression()), !dbg !4576
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4577, metadata !DIExpression()), !dbg !4578
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %tdev, metadata !4579, metadata !DIExpression()), !dbg !4580
  call void @llvm.dbg.declare(metadata %struct.resource** %tres, metadata !4581, metadata !DIExpression()), !dbg !4582
  call void @llvm.dbg.declare(metadata i64** %addr, metadata !4583, metadata !DIExpression()), !dbg !4584
  call void @llvm.dbg.declare(metadata i64** %end, metadata !4585, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.declare(metadata i64** %taddr, metadata !4587, metadata !DIExpression()), !dbg !4588
  call void @llvm.dbg.declare(metadata i64** %tend, metadata !4589, metadata !DIExpression()), !dbg !4590
  %0 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4591
  %start = getelementptr inbounds %struct.resource, %struct.resource* %0, i32 0, i32 0, !dbg !4592
  store i64* %start, i64** %addr, align 8, !dbg !4593
  %1 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4594
  %end1 = getelementptr inbounds %struct.resource, %struct.resource* %1, i32 0, i32 1, !dbg !4595
  store i64* %end1, i64** %end, align 8, !dbg !4596
  %2 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4597
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %2, i32 0, i32 3, !dbg !4597
  %3 = load i64, i64* %flags, align 8, !dbg !4597
  %and = and i64 %3, 268435456, !dbg !4597
  %tobool = icmp ne i64 %and, 0, !dbg !4597
  br i1 %tobool, label %if.then, label %if.end, !dbg !4599

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !4600
  br label %return, !dbg !4600

if.end:                                           ; preds = %entry
  %4 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4601
  %active = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %4, i32 0, i32 13, !dbg !4603
  %5 = load i32, i32* %active, align 8, !dbg !4603
  %tobool2 = icmp ne i32 %5, 0, !dbg !4601
  br i1 %tobool2, label %if.end9, label %if.then3, !dbg !4604

if.then3:                                         ; preds = %if.end
  %6 = load i64*, i64** %addr, align 8, !dbg !4605
  %7 = load i64, i64* %6, align 8, !dbg !4605
  %8 = load i64*, i64** %end, align 8, !dbg !4605
  %9 = load i64, i64* %8, align 8, !dbg !4605
  %10 = load i64*, i64** %addr, align 8, !dbg !4605
  %11 = load i64, i64* %10, align 8, !dbg !4605
  %sub = sub i64 %9, %11, !dbg !4605
  %add = add i64 %sub, 1, !dbg !4605
  %call = call %struct.resource* @__request_region(%struct.resource* @iomem_resource, i64 %7, i64 %add, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 0) #9, !dbg !4605
  %tobool4 = icmp ne %struct.resource* %call, null, !dbg !4605
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !4608

if.then5:                                         ; preds = %if.then3
  store i32 0, i32* %retval, align 4, !dbg !4609
  br label %return, !dbg !4609

if.end6:                                          ; preds = %if.then3
  %12 = load i64*, i64** %addr, align 8, !dbg !4610
  %13 = load i64, i64* %12, align 8, !dbg !4610
  %14 = load i64*, i64** %end, align 8, !dbg !4610
  %15 = load i64, i64* %14, align 8, !dbg !4610
  %16 = load i64*, i64** %addr, align 8, !dbg !4610
  %17 = load i64, i64* %16, align 8, !dbg !4610
  %sub7 = sub i64 %15, %17, !dbg !4610
  %add8 = add i64 %sub7, 1, !dbg !4610
  call void @__release_region(%struct.resource* @iomem_resource, i64 %13, i64 %add8) #9, !dbg !4610
  br label %if.end9, !dbg !4611

if.end9:                                          ; preds = %if.end6, %if.end
  store i32 0, i32* %i, align 4, !dbg !4612
  br label %for.cond, !dbg !4614

for.cond:                                         ; preds = %for.inc, %if.end9
  %18 = load i32, i32* %i, align 4, !dbg !4615
  %cmp = icmp slt i32 %18, 8, !dbg !4617
  br i1 %cmp, label %for.body, label %for.end, !dbg !4618

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %raddr, metadata !4619, metadata !DIExpression()), !dbg !4621
  %19 = load i32, i32* %i, align 4, !dbg !4622
  %shl = shl i32 %19, 1, !dbg !4623
  %idxprom = sext i32 %shl to i64, !dbg !4624
  %arrayidx = getelementptr [16 x i32], [16 x i32]* @pnp_reserve_mem, i64 0, i64 %idxprom, !dbg !4624
  %20 = load i32, i32* %arrayidx, align 4, !dbg !4624
  store i32 %20, i32* %raddr, align 4, !dbg !4621
  call void @llvm.dbg.declare(metadata i32* %rend, metadata !4625, metadata !DIExpression()), !dbg !4626
  %21 = load i32, i32* %i, align 4, !dbg !4627
  %shl10 = shl i32 %21, 1, !dbg !4628
  %add11 = add i32 %shl10, 1, !dbg !4629
  %idxprom12 = sext i32 %add11 to i64, !dbg !4630
  %arrayidx13 = getelementptr [16 x i32], [16 x i32]* @pnp_reserve_mem, i64 0, i64 %idxprom12, !dbg !4630
  %22 = load i32, i32* %arrayidx13, align 4, !dbg !4630
  %23 = load i32, i32* %raddr, align 4, !dbg !4631
  %add14 = add i32 %22, %23, !dbg !4632
  %sub15 = sub i32 %add14, 1, !dbg !4633
  store i32 %sub15, i32* %rend, align 4, !dbg !4626
  %24 = load i64*, i64** %end, align 8, !dbg !4634
  %25 = load i64, i64* %24, align 8, !dbg !4634
  %26 = load i32, i32* %raddr, align 4, !dbg !4634
  %conv = sext i32 %26 to i64, !dbg !4634
  %cmp16 = icmp ult i64 %25, %conv, !dbg !4634
  br i1 %cmp16, label %if.end22, label %lor.lhs.false, !dbg !4634

lor.lhs.false:                                    ; preds = %for.body
  %27 = load i32, i32* %rend, align 4, !dbg !4634
  %conv18 = sext i32 %27 to i64, !dbg !4634
  %28 = load i64*, i64** %addr, align 8, !dbg !4634
  %29 = load i64, i64* %28, align 8, !dbg !4634
  %cmp19 = icmp ult i64 %conv18, %29, !dbg !4634
  br i1 %cmp19, label %if.end22, label %if.then21, !dbg !4636

if.then21:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %retval, align 4, !dbg !4637
  br label %return, !dbg !4637

if.end22:                                         ; preds = %lor.lhs.false, %for.body
  br label %for.inc, !dbg !4638

for.inc:                                          ; preds = %if.end22
  %30 = load i32, i32* %i, align 4, !dbg !4639
  %inc = add i32 %30, 1, !dbg !4639
  store i32 %inc, i32* %i, align 4, !dbg !4639
  br label %for.cond, !dbg !4640, !llvm.loop !4641

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !4643
  br label %for.cond23, !dbg !4645

for.cond23:                                       ; preds = %for.inc43, %for.end
  %31 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4646
  %32 = load i32, i32* %i, align 4, !dbg !4648
  %call24 = call %struct.resource* @pnp_get_resource(%struct.pnp_dev* %31, i64 512, i32 %32) #9, !dbg !4649
  store %struct.resource* %call24, %struct.resource** %tres, align 8, !dbg !4650
  %tobool25 = icmp ne %struct.resource* %call24, null, !dbg !4651
  br i1 %tobool25, label %for.body26, label %for.end45, !dbg !4651

for.body26:                                       ; preds = %for.cond23
  %33 = load %struct.resource*, %struct.resource** %tres, align 8, !dbg !4652
  %34 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4655
  %cmp27 = icmp ne %struct.resource* %33, %34, !dbg !4656
  br i1 %cmp27, label %land.lhs.true, label %if.end42, !dbg !4657

land.lhs.true:                                    ; preds = %for.body26
  %35 = load %struct.resource*, %struct.resource** %tres, align 8, !dbg !4658
  %flags29 = getelementptr inbounds %struct.resource, %struct.resource* %35, i32 0, i32 3, !dbg !4659
  %36 = load i64, i64* %flags29, align 8, !dbg !4659
  %and30 = and i64 %36, 512, !dbg !4660
  %tobool31 = icmp ne i64 %and30, 0, !dbg !4660
  br i1 %tobool31, label %if.then32, label %if.end42, !dbg !4661

if.then32:                                        ; preds = %land.lhs.true
  %37 = load %struct.resource*, %struct.resource** %tres, align 8, !dbg !4662
  %start33 = getelementptr inbounds %struct.resource, %struct.resource* %37, i32 0, i32 0, !dbg !4664
  store i64* %start33, i64** %taddr, align 8, !dbg !4665
  %38 = load %struct.resource*, %struct.resource** %tres, align 8, !dbg !4666
  %end34 = getelementptr inbounds %struct.resource, %struct.resource* %38, i32 0, i32 1, !dbg !4667
  store i64* %end34, i64** %tend, align 8, !dbg !4668
  %39 = load i64*, i64** %end, align 8, !dbg !4669
  %40 = load i64, i64* %39, align 8, !dbg !4669
  %41 = load i64*, i64** %taddr, align 8, !dbg !4669
  %42 = load i64, i64* %41, align 8, !dbg !4669
  %cmp35 = icmp ult i64 %40, %42, !dbg !4669
  br i1 %cmp35, label %if.end41, label %lor.lhs.false37, !dbg !4669

lor.lhs.false37:                                  ; preds = %if.then32
  %43 = load i64*, i64** %tend, align 8, !dbg !4669
  %44 = load i64, i64* %43, align 8, !dbg !4669
  %45 = load i64*, i64** %addr, align 8, !dbg !4669
  %46 = load i64, i64* %45, align 8, !dbg !4669
  %cmp38 = icmp ult i64 %44, %46, !dbg !4669
  br i1 %cmp38, label %if.end41, label %if.then40, !dbg !4671

if.then40:                                        ; preds = %lor.lhs.false37
  store i32 0, i32* %retval, align 4, !dbg !4672
  br label %return, !dbg !4672

if.end41:                                         ; preds = %lor.lhs.false37, %if.then32
  br label %if.end42, !dbg !4673

if.end42:                                         ; preds = %if.end41, %land.lhs.true, %for.body26
  br label %for.inc43, !dbg !4674

for.inc43:                                        ; preds = %if.end42
  %47 = load i32, i32* %i, align 4, !dbg !4675
  %inc44 = add i32 %47, 1, !dbg !4675
  store i32 %inc44, i32* %i, align 4, !dbg !4675
  br label %for.cond23, !dbg !4676, !llvm.loop !4677

for.end45:                                        ; preds = %for.cond23
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4679, metadata !DIExpression()), !dbg !4682
  %48 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @pnp_global, i32 0, i32 0), align 8, !dbg !4682
  %49 = bitcast %struct.list_head* %48 to i8*, !dbg !4682
  store i8* %49, i8** %__mptr, align 8, !dbg !4682
  br label %do.body, !dbg !4682

do.body:                                          ; preds = %for.end45
  br label %do.end, !dbg !4683

do.end:                                           ; preds = %do.body
  %50 = load i8*, i8** %__mptr, align 8, !dbg !4682
  %add.ptr = getelementptr i8, i8* %50, i64 -712, !dbg !4682
  %51 = bitcast i8* %add.ptr to %struct.pnp_dev*, !dbg !4682
  store %struct.pnp_dev* %51, %struct.pnp_dev** %tmp, align 8, !dbg !4683
  %52 = load %struct.pnp_dev*, %struct.pnp_dev** %tmp, align 8, !dbg !4682
  store %struct.pnp_dev* %52, %struct.pnp_dev** %tdev, align 8, !dbg !4685
  br label %for.cond46, !dbg !4685

for.cond46:                                       ; preds = %do.end89, %do.end
  %53 = load %struct.pnp_dev*, %struct.pnp_dev** %tdev, align 8, !dbg !4686
  %global_list = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %53, i32 0, i32 4, !dbg !4686
  %cmp47 = icmp eq %struct.list_head* %global_list, @pnp_global, !dbg !4686
  %lnot = xor i1 %cmp47, true, !dbg !4686
  br i1 %lnot, label %for.body49, label %for.end92, !dbg !4685

for.body49:                                       ; preds = %for.cond46
  %54 = load %struct.pnp_dev*, %struct.pnp_dev** %tdev, align 8, !dbg !4688
  %55 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4691
  %cmp50 = icmp eq %struct.pnp_dev* %54, %55, !dbg !4692
  br i1 %cmp50, label %if.then52, label %if.end53, !dbg !4693

if.then52:                                        ; preds = %for.body49
  br label %for.inc85, !dbg !4694

if.end53:                                         ; preds = %for.body49
  store i32 0, i32* %i, align 4, !dbg !4695
  br label %for.cond54, !dbg !4697

for.cond54:                                       ; preds = %for.inc82, %if.end53
  %56 = load %struct.pnp_dev*, %struct.pnp_dev** %tdev, align 8, !dbg !4698
  %57 = load i32, i32* %i, align 4, !dbg !4700
  %call55 = call %struct.resource* @pnp_get_resource(%struct.pnp_dev* %56, i64 512, i32 %57) #9, !dbg !4701
  store %struct.resource* %call55, %struct.resource** %tres, align 8, !dbg !4702
  %tobool56 = icmp ne %struct.resource* %call55, null, !dbg !4703
  br i1 %tobool56, label %for.body57, label %for.end84, !dbg !4703

for.body57:                                       ; preds = %for.cond54
  %58 = load %struct.resource*, %struct.resource** %tres, align 8, !dbg !4704
  %flags58 = getelementptr inbounds %struct.resource, %struct.resource* %58, i32 0, i32 3, !dbg !4707
  %59 = load i64, i64* %flags58, align 8, !dbg !4707
  %and59 = and i64 %59, 512, !dbg !4708
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4708
  br i1 %tobool60, label %if.then61, label %if.end81, !dbg !4709

if.then61:                                        ; preds = %for.body57
  %60 = load %struct.resource*, %struct.resource** %tres, align 8, !dbg !4710
  %flags62 = getelementptr inbounds %struct.resource, %struct.resource* %60, i32 0, i32 3, !dbg !4710
  %61 = load i64, i64* %flags62, align 8, !dbg !4710
  %and63 = and i64 %61, 268435456, !dbg !4710
  %tobool64 = icmp ne i64 %and63, 0, !dbg !4710
  br i1 %tobool64, label %if.then65, label %if.end66, !dbg !4713

if.then65:                                        ; preds = %if.then61
  br label %for.inc82, !dbg !4714

if.end66:                                         ; preds = %if.then61
  %62 = load %struct.resource*, %struct.resource** %tres, align 8, !dbg !4715
  %flags67 = getelementptr inbounds %struct.resource, %struct.resource* %62, i32 0, i32 3, !dbg !4717
  %63 = load i64, i64* %flags67, align 8, !dbg !4717
  %and68 = and i64 %63, 2097152, !dbg !4718
  %tobool69 = icmp ne i64 %and68, 0, !dbg !4718
  br i1 %tobool69, label %if.then70, label %if.end71, !dbg !4719

if.then70:                                        ; preds = %if.end66
  br label %for.inc82, !dbg !4720

if.end71:                                         ; preds = %if.end66
  %64 = load %struct.resource*, %struct.resource** %tres, align 8, !dbg !4721
  %start72 = getelementptr inbounds %struct.resource, %struct.resource* %64, i32 0, i32 0, !dbg !4722
  store i64* %start72, i64** %taddr, align 8, !dbg !4723
  %65 = load %struct.resource*, %struct.resource** %tres, align 8, !dbg !4724
  %end73 = getelementptr inbounds %struct.resource, %struct.resource* %65, i32 0, i32 1, !dbg !4725
  store i64* %end73, i64** %tend, align 8, !dbg !4726
  %66 = load i64*, i64** %end, align 8, !dbg !4727
  %67 = load i64, i64* %66, align 8, !dbg !4727
  %68 = load i64*, i64** %taddr, align 8, !dbg !4727
  %69 = load i64, i64* %68, align 8, !dbg !4727
  %cmp74 = icmp ult i64 %67, %69, !dbg !4727
  br i1 %cmp74, label %if.end80, label %lor.lhs.false76, !dbg !4727

lor.lhs.false76:                                  ; preds = %if.end71
  %70 = load i64*, i64** %tend, align 8, !dbg !4727
  %71 = load i64, i64* %70, align 8, !dbg !4727
  %72 = load i64*, i64** %addr, align 8, !dbg !4727
  %73 = load i64, i64* %72, align 8, !dbg !4727
  %cmp77 = icmp ult i64 %71, %73, !dbg !4727
  br i1 %cmp77, label %if.end80, label %if.then79, !dbg !4729

if.then79:                                        ; preds = %lor.lhs.false76
  store i32 0, i32* %retval, align 4, !dbg !4730
  br label %return, !dbg !4730

if.end80:                                         ; preds = %lor.lhs.false76, %if.end71
  br label %if.end81, !dbg !4731

if.end81:                                         ; preds = %if.end80, %for.body57
  br label %for.inc82, !dbg !4732

for.inc82:                                        ; preds = %if.end81, %if.then70, %if.then65
  %74 = load i32, i32* %i, align 4, !dbg !4733
  %inc83 = add i32 %74, 1, !dbg !4733
  store i32 %inc83, i32* %i, align 4, !dbg !4733
  br label %for.cond54, !dbg !4734, !llvm.loop !4735

for.end84:                                        ; preds = %for.cond54
  br label %for.inc85, !dbg !4737

for.inc85:                                        ; preds = %for.end84, %if.then52
  call void @llvm.dbg.declare(metadata i8** %__mptr86, metadata !4738, metadata !DIExpression()), !dbg !4740
  %75 = load %struct.pnp_dev*, %struct.pnp_dev** %tdev, align 8, !dbg !4740
  %global_list87 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %75, i32 0, i32 4, !dbg !4740
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %global_list87, i32 0, i32 0, !dbg !4740
  %76 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4740
  %77 = bitcast %struct.list_head* %76 to i8*, !dbg !4740
  store i8* %77, i8** %__mptr86, align 8, !dbg !4740
  br label %do.body88, !dbg !4740

do.body88:                                        ; preds = %for.inc85
  br label %do.end89, !dbg !4741

do.end89:                                         ; preds = %do.body88
  %78 = load i8*, i8** %__mptr86, align 8, !dbg !4740
  %add.ptr91 = getelementptr i8, i8* %78, i64 -712, !dbg !4740
  %79 = bitcast i8* %add.ptr91 to %struct.pnp_dev*, !dbg !4740
  store %struct.pnp_dev* %79, %struct.pnp_dev** %tmp90, align 8, !dbg !4741
  %80 = load %struct.pnp_dev*, %struct.pnp_dev** %tmp90, align 8, !dbg !4740
  store %struct.pnp_dev* %80, %struct.pnp_dev** %tdev, align 8, !dbg !4686
  br label %for.cond46, !dbg !4686, !llvm.loop !4743

for.end92:                                        ; preds = %for.cond46
  store i32 1, i32* %retval, align 4, !dbg !4745
  br label %return, !dbg !4745

return:                                           ; preds = %for.end92, %if.then79, %if.then40, %if.then21, %if.then5, %if.then
  %81 = load i32, i32* %retval, align 4, !dbg !4746
  ret i32 %81, !dbg !4746
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pnp_check_irq(%struct.pnp_dev* %dev, %struct.resource* %res) #0 !dbg !4747 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %res.addr = alloca %struct.resource*, align 8
  %i = alloca i32, align 4
  %tdev = alloca %struct.pnp_dev*, align 8
  %tres = alloca %struct.resource*, align 8
  %irq = alloca i64*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pnp_dev*, align 8
  %__mptr72 = alloca i8*, align 8
  %tmp76 = alloca %struct.pnp_dev*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !4748, metadata !DIExpression()), !dbg !4749
  store %struct.resource* %res, %struct.resource** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %res.addr, metadata !4750, metadata !DIExpression()), !dbg !4751
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4752, metadata !DIExpression()), !dbg !4753
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %tdev, metadata !4754, metadata !DIExpression()), !dbg !4755
  call void @llvm.dbg.declare(metadata %struct.resource** %tres, metadata !4756, metadata !DIExpression()), !dbg !4757
  call void @llvm.dbg.declare(metadata i64** %irq, metadata !4758, metadata !DIExpression()), !dbg !4759
  %0 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4760
  %start = getelementptr inbounds %struct.resource, %struct.resource* %0, i32 0, i32 0, !dbg !4761
  store i64* %start, i64** %irq, align 8, !dbg !4762
  %1 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4763
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %1, i32 0, i32 3, !dbg !4763
  %2 = load i64, i64* %flags, align 8, !dbg !4763
  %and = and i64 %2, 268435456, !dbg !4763
  %tobool = icmp ne i64 %and, 0, !dbg !4763
  br i1 %tobool, label %if.then, label %if.end, !dbg !4765

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !4766
  br label %return, !dbg !4766

if.end:                                           ; preds = %entry
  %3 = load i64*, i64** %irq, align 8, !dbg !4767
  %4 = load i64, i64* %3, align 8, !dbg !4769
  %cmp = icmp ugt i64 %4, 15, !dbg !4770
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !4771

if.then1:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4772
  br label %return, !dbg !4772

if.end2:                                          ; preds = %if.end
  store i32 0, i32* %i, align 4, !dbg !4773
  br label %for.cond, !dbg !4775

for.cond:                                         ; preds = %for.inc, %if.end2
  %5 = load i32, i32* %i, align 4, !dbg !4776
  %cmp3 = icmp slt i32 %5, 16, !dbg !4778
  br i1 %cmp3, label %for.body, label %for.end, !dbg !4779

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !4780
  %idxprom = sext i32 %6 to i64, !dbg !4783
  %arrayidx = getelementptr [16 x i32], [16 x i32]* @pnp_reserve_irq, i64 0, i64 %idxprom, !dbg !4783
  %7 = load i32, i32* %arrayidx, align 4, !dbg !4783
  %conv = sext i32 %7 to i64, !dbg !4783
  %8 = load i64*, i64** %irq, align 8, !dbg !4784
  %9 = load i64, i64* %8, align 8, !dbg !4785
  %cmp4 = icmp eq i64 %conv, %9, !dbg !4786
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !4787

if.then6:                                         ; preds = %for.body
  store i32 0, i32* %retval, align 4, !dbg !4788
  br label %return, !dbg !4788

if.end7:                                          ; preds = %for.body
  br label %for.inc, !dbg !4789

for.inc:                                          ; preds = %if.end7
  %10 = load i32, i32* %i, align 4, !dbg !4790
  %inc = add i32 %10, 1, !dbg !4790
  store i32 %inc, i32* %i, align 4, !dbg !4790
  br label %for.cond, !dbg !4791, !llvm.loop !4792

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !4794
  br label %for.cond8, !dbg !4796

for.cond8:                                        ; preds = %for.inc23, %for.end
  %11 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4797
  %12 = load i32, i32* %i, align 4, !dbg !4799
  %call = call %struct.resource* @pnp_get_resource(%struct.pnp_dev* %11, i64 1024, i32 %12) #9, !dbg !4800
  store %struct.resource* %call, %struct.resource** %tres, align 8, !dbg !4801
  %tobool9 = icmp ne %struct.resource* %call, null, !dbg !4802
  br i1 %tobool9, label %for.body10, label %for.end25, !dbg !4802

for.body10:                                       ; preds = %for.cond8
  %13 = load %struct.resource*, %struct.resource** %tres, align 8, !dbg !4803
  %14 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4806
  %cmp11 = icmp ne %struct.resource* %13, %14, !dbg !4807
  br i1 %cmp11, label %land.lhs.true, label %if.end22, !dbg !4808

land.lhs.true:                                    ; preds = %for.body10
  %15 = load %struct.resource*, %struct.resource** %tres, align 8, !dbg !4809
  %flags13 = getelementptr inbounds %struct.resource, %struct.resource* %15, i32 0, i32 3, !dbg !4810
  %16 = load i64, i64* %flags13, align 8, !dbg !4810
  %and14 = and i64 %16, 1024, !dbg !4811
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4811
  br i1 %tobool15, label %if.then16, label %if.end22, !dbg !4812

if.then16:                                        ; preds = %land.lhs.true
  %17 = load %struct.resource*, %struct.resource** %tres, align 8, !dbg !4813
  %start17 = getelementptr inbounds %struct.resource, %struct.resource* %17, i32 0, i32 0, !dbg !4816
  %18 = load i64, i64* %start17, align 8, !dbg !4816
  %19 = load i64*, i64** %irq, align 8, !dbg !4817
  %20 = load i64, i64* %19, align 8, !dbg !4818
  %cmp18 = icmp eq i64 %18, %20, !dbg !4819
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !4820

if.then20:                                        ; preds = %if.then16
  store i32 0, i32* %retval, align 4, !dbg !4821
  br label %return, !dbg !4821

if.end21:                                         ; preds = %if.then16
  br label %if.end22, !dbg !4822

if.end22:                                         ; preds = %if.end21, %land.lhs.true, %for.body10
  br label %for.inc23, !dbg !4823

for.inc23:                                        ; preds = %if.end22
  %21 = load i32, i32* %i, align 4, !dbg !4824
  %inc24 = add i32 %21, 1, !dbg !4824
  store i32 %inc24, i32* %i, align 4, !dbg !4824
  br label %for.cond8, !dbg !4825, !llvm.loop !4826

for.end25:                                        ; preds = %for.cond8
  %22 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4828
  %23 = load i64*, i64** %irq, align 8, !dbg !4830
  %24 = load i64, i64* %23, align 8, !dbg !4831
  %conv26 = trunc i64 %24 to i32, !dbg !4831
  %call27 = call i32 @pci_uses_irq(%struct.pnp_dev* %22, i32 %conv26) #9, !dbg !4832
  %tobool28 = icmp ne i32 %call27, 0, !dbg !4832
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !4833

if.then29:                                        ; preds = %for.end25
  store i32 0, i32* %retval, align 4, !dbg !4834
  br label %return, !dbg !4834

if.end30:                                         ; preds = %for.end25
  %25 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4835
  %active = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %25, i32 0, i32 13, !dbg !4837
  %26 = load i32, i32* %active, align 8, !dbg !4837
  %tobool31 = icmp ne i32 %26, 0, !dbg !4835
  br i1 %tobool31, label %if.end40, label %if.then32, !dbg !4838

if.then32:                                        ; preds = %if.end30
  %27 = load i64*, i64** %irq, align 8, !dbg !4839
  %28 = load i64, i64* %27, align 8, !dbg !4842
  %conv33 = trunc i64 %28 to i32, !dbg !4842
  %call34 = call i32 @request_irq(i32 %conv33, i32 (i32, i8*)* @pnp_test_handler, i64 256, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* null) #9, !dbg !4843
  %tobool35 = icmp ne i32 %call34, 0, !dbg !4843
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !4844

if.then36:                                        ; preds = %if.then32
  store i32 0, i32* %retval, align 4, !dbg !4845
  br label %return, !dbg !4845

if.end37:                                         ; preds = %if.then32
  %29 = load i64*, i64** %irq, align 8, !dbg !4846
  %30 = load i64, i64* %29, align 8, !dbg !4847
  %conv38 = trunc i64 %30 to i32, !dbg !4847
  %call39 = call i8* @free_irq(i32 %conv38, i8* null) #9, !dbg !4848
  br label %if.end40, !dbg !4849

if.end40:                                         ; preds = %if.end37, %if.end30
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4850, metadata !DIExpression()), !dbg !4853
  %31 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @pnp_global, i32 0, i32 0), align 8, !dbg !4853
  %32 = bitcast %struct.list_head* %31 to i8*, !dbg !4853
  store i8* %32, i8** %__mptr, align 8, !dbg !4853
  br label %do.body, !dbg !4853

do.body:                                          ; preds = %if.end40
  br label %do.end, !dbg !4854

do.end:                                           ; preds = %do.body
  %33 = load i8*, i8** %__mptr, align 8, !dbg !4853
  %add.ptr = getelementptr i8, i8* %33, i64 -712, !dbg !4853
  %34 = bitcast i8* %add.ptr to %struct.pnp_dev*, !dbg !4853
  store %struct.pnp_dev* %34, %struct.pnp_dev** %tmp, align 8, !dbg !4854
  %35 = load %struct.pnp_dev*, %struct.pnp_dev** %tmp, align 8, !dbg !4853
  store %struct.pnp_dev* %35, %struct.pnp_dev** %tdev, align 8, !dbg !4856
  br label %for.cond41, !dbg !4856

for.cond41:                                       ; preds = %do.end75, %do.end
  %36 = load %struct.pnp_dev*, %struct.pnp_dev** %tdev, align 8, !dbg !4857
  %global_list = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %36, i32 0, i32 4, !dbg !4857
  %cmp42 = icmp eq %struct.list_head* %global_list, @pnp_global, !dbg !4857
  %lnot = xor i1 %cmp42, true, !dbg !4857
  br i1 %lnot, label %for.body44, label %for.end78, !dbg !4856

for.body44:                                       ; preds = %for.cond41
  %37 = load %struct.pnp_dev*, %struct.pnp_dev** %tdev, align 8, !dbg !4859
  %38 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4862
  %cmp45 = icmp eq %struct.pnp_dev* %37, %38, !dbg !4863
  br i1 %cmp45, label %if.then47, label %if.end48, !dbg !4864

if.then47:                                        ; preds = %for.body44
  br label %for.inc71, !dbg !4865

if.end48:                                         ; preds = %for.body44
  store i32 0, i32* %i, align 4, !dbg !4866
  br label %for.cond49, !dbg !4868

for.cond49:                                       ; preds = %for.inc68, %if.end48
  %39 = load %struct.pnp_dev*, %struct.pnp_dev** %tdev, align 8, !dbg !4869
  %40 = load i32, i32* %i, align 4, !dbg !4871
  %call50 = call %struct.resource* @pnp_get_resource(%struct.pnp_dev* %39, i64 1024, i32 %40) #9, !dbg !4872
  store %struct.resource* %call50, %struct.resource** %tres, align 8, !dbg !4873
  %tobool51 = icmp ne %struct.resource* %call50, null, !dbg !4874
  br i1 %tobool51, label %for.body52, label %for.end70, !dbg !4874

for.body52:                                       ; preds = %for.cond49
  %41 = load %struct.resource*, %struct.resource** %tres, align 8, !dbg !4875
  %flags53 = getelementptr inbounds %struct.resource, %struct.resource* %41, i32 0, i32 3, !dbg !4878
  %42 = load i64, i64* %flags53, align 8, !dbg !4878
  %and54 = and i64 %42, 1024, !dbg !4879
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4879
  br i1 %tobool55, label %if.then56, label %if.end67, !dbg !4880

if.then56:                                        ; preds = %for.body52
  %43 = load %struct.resource*, %struct.resource** %tres, align 8, !dbg !4881
  %flags57 = getelementptr inbounds %struct.resource, %struct.resource* %43, i32 0, i32 3, !dbg !4881
  %44 = load i64, i64* %flags57, align 8, !dbg !4881
  %and58 = and i64 %44, 268435456, !dbg !4881
  %tobool59 = icmp ne i64 %and58, 0, !dbg !4881
  br i1 %tobool59, label %if.then60, label %if.end61, !dbg !4884

if.then60:                                        ; preds = %if.then56
  br label %for.inc68, !dbg !4885

if.end61:                                         ; preds = %if.then56
  %45 = load %struct.resource*, %struct.resource** %tres, align 8, !dbg !4886
  %start62 = getelementptr inbounds %struct.resource, %struct.resource* %45, i32 0, i32 0, !dbg !4888
  %46 = load i64, i64* %start62, align 8, !dbg !4888
  %47 = load i64*, i64** %irq, align 8, !dbg !4889
  %48 = load i64, i64* %47, align 8, !dbg !4890
  %cmp63 = icmp eq i64 %46, %48, !dbg !4891
  br i1 %cmp63, label %if.then65, label %if.end66, !dbg !4892

if.then65:                                        ; preds = %if.end61
  store i32 0, i32* %retval, align 4, !dbg !4893
  br label %return, !dbg !4893

if.end66:                                         ; preds = %if.end61
  br label %if.end67, !dbg !4894

if.end67:                                         ; preds = %if.end66, %for.body52
  br label %for.inc68, !dbg !4895

for.inc68:                                        ; preds = %if.end67, %if.then60
  %49 = load i32, i32* %i, align 4, !dbg !4896
  %inc69 = add i32 %49, 1, !dbg !4896
  store i32 %inc69, i32* %i, align 4, !dbg !4896
  br label %for.cond49, !dbg !4897, !llvm.loop !4898

for.end70:                                        ; preds = %for.cond49
  br label %for.inc71, !dbg !4900

for.inc71:                                        ; preds = %for.end70, %if.then47
  call void @llvm.dbg.declare(metadata i8** %__mptr72, metadata !4901, metadata !DIExpression()), !dbg !4903
  %50 = load %struct.pnp_dev*, %struct.pnp_dev** %tdev, align 8, !dbg !4903
  %global_list73 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %50, i32 0, i32 4, !dbg !4903
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %global_list73, i32 0, i32 0, !dbg !4903
  %51 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4903
  %52 = bitcast %struct.list_head* %51 to i8*, !dbg !4903
  store i8* %52, i8** %__mptr72, align 8, !dbg !4903
  br label %do.body74, !dbg !4903

do.body74:                                        ; preds = %for.inc71
  br label %do.end75, !dbg !4904

do.end75:                                         ; preds = %do.body74
  %53 = load i8*, i8** %__mptr72, align 8, !dbg !4903
  %add.ptr77 = getelementptr i8, i8* %53, i64 -712, !dbg !4903
  %54 = bitcast i8* %add.ptr77 to %struct.pnp_dev*, !dbg !4903
  store %struct.pnp_dev* %54, %struct.pnp_dev** %tmp76, align 8, !dbg !4904
  %55 = load %struct.pnp_dev*, %struct.pnp_dev** %tmp76, align 8, !dbg !4903
  store %struct.pnp_dev* %55, %struct.pnp_dev** %tdev, align 8, !dbg !4857
  br label %for.cond41, !dbg !4857, !llvm.loop !4906

for.end78:                                        ; preds = %for.cond41
  store i32 1, i32* %retval, align 4, !dbg !4908
  br label %return, !dbg !4908

return:                                           ; preds = %for.end78, %if.then65, %if.then36, %if.then29, %if.then20, %if.then6, %if.then1, %if.then
  %56 = load i32, i32* %retval, align 4, !dbg !4909
  ret i32 %56, !dbg !4909
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci_uses_irq(%struct.pnp_dev* %pnp, i32 %irq) #0 !dbg !4910 {
entry:
  %retval = alloca i32, align 4
  %pnp.addr = alloca %struct.pnp_dev*, align 8
  %irq.addr = alloca i32, align 4
  %pci = alloca %struct.pci_dev*, align 8
  store %struct.pnp_dev* %pnp, %struct.pnp_dev** %pnp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %pnp.addr, metadata !4913, metadata !DIExpression()), !dbg !4914
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !4915, metadata !DIExpression()), !dbg !4916
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pci, metadata !4917, metadata !DIExpression()), !dbg !5178
  store %struct.pci_dev* null, %struct.pci_dev** %pci, align 8, !dbg !5178
  br label %while.cond, !dbg !5179

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pci, align 8, !dbg !5179
  %call = call %struct.pci_dev* @pci_get_device(i32 -1, i32 -1, %struct.pci_dev* %0) #9, !dbg !5179
  store %struct.pci_dev* %call, %struct.pci_dev** %pci, align 8, !dbg !5179
  %cmp = icmp ne %struct.pci_dev* %call, null, !dbg !5179
  br i1 %cmp, label %while.body, label %while.end, !dbg !5179

while.body:                                       ; preds = %while.cond
  %1 = load %struct.pnp_dev*, %struct.pnp_dev** %pnp.addr, align 8, !dbg !5180
  %2 = load %struct.pci_dev*, %struct.pci_dev** %pci, align 8, !dbg !5183
  %3 = load i32, i32* %irq.addr, align 4, !dbg !5184
  %call1 = call i32 @pci_dev_uses_irq(%struct.pnp_dev* %1, %struct.pci_dev* %2, i32 %3) #9, !dbg !5185
  %tobool = icmp ne i32 %call1, 0, !dbg !5185
  br i1 %tobool, label %if.then, label %if.end, !dbg !5186

if.then:                                          ; preds = %while.body
  %4 = load %struct.pci_dev*, %struct.pci_dev** %pci, align 8, !dbg !5187
  call void @pci_dev_put(%struct.pci_dev* %4) #9, !dbg !5189
  store i32 1, i32* %retval, align 4, !dbg !5190
  br label %return, !dbg !5190

if.end:                                           ; preds = %while.body
  br label %while.cond, !dbg !5179, !llvm.loop !5191

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval, align 4, !dbg !5193
  br label %return, !dbg !5193

return:                                           ; preds = %while.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !5194
  ret i32 %5, !dbg !5194
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @request_irq(i32 %irq, i32 (i32, i8*)* %handler, i64 %flags, i8* %name, i8* %dev) #0 !dbg !5195 {
entry:
  %irq.addr = alloca i32, align 4
  %handler.addr = alloca i32 (i32, i8*)*, align 8
  %flags.addr = alloca i64, align 8
  %name.addr = alloca i8*, align 8
  %dev.addr = alloca i8*, align 8
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !5203, metadata !DIExpression()), !dbg !5204
  store i32 (i32, i8*)* %handler, i32 (i32, i8*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i32, i8*)** %handler.addr, metadata !5205, metadata !DIExpression()), !dbg !5206
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !5207, metadata !DIExpression()), !dbg !5208
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !5209, metadata !DIExpression()), !dbg !5210
  store i8* %dev, i8** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev.addr, metadata !5211, metadata !DIExpression()), !dbg !5212
  %0 = load i32, i32* %irq.addr, align 4, !dbg !5213
  %1 = load i32 (i32, i8*)*, i32 (i32, i8*)** %handler.addr, align 8, !dbg !5214
  %2 = load i64, i64* %flags.addr, align 8, !dbg !5215
  %3 = load i8*, i8** %name.addr, align 8, !dbg !5216
  %4 = load i8*, i8** %dev.addr, align 8, !dbg !5217
  %call = call i32 @request_threaded_irq(i32 %0, i32 (i32, i8*)* %1, i32 (i32, i8*)* null, i64 %2, i8* %3, i8* %4) #9, !dbg !5218
  ret i32 %call, !dbg !5219
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pnp_test_handler(i32 %irq, i8* %dev_id) #0 !dbg !5220 {
entry:
  %irq.addr = alloca i32, align 4
  %dev_id.addr = alloca i8*, align 8
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !5221, metadata !DIExpression()), !dbg !5222
  store i8* %dev_id, i8** %dev_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev_id.addr, metadata !5223, metadata !DIExpression()), !dbg !5224
  ret i32 1, !dbg !5225
}

; Function Attrs: noredzone
declare dso_local i8* @free_irq(i32, i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pnp_check_dma(%struct.pnp_dev* %dev, %struct.resource* %res) #0 !dbg !5226 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %res.addr = alloca %struct.resource*, align 8
  %i = alloca i32, align 4
  %tdev = alloca %struct.pnp_dev*, align 8
  %tres = alloca %struct.resource*, align 8
  %dma = alloca i64*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pnp_dev*, align 8
  %__mptr67 = alloca i8*, align 8
  %tmp71 = alloca %struct.pnp_dev*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !5227, metadata !DIExpression()), !dbg !5228
  store %struct.resource* %res, %struct.resource** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %res.addr, metadata !5229, metadata !DIExpression()), !dbg !5230
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5231, metadata !DIExpression()), !dbg !5232
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %tdev, metadata !5233, metadata !DIExpression()), !dbg !5234
  call void @llvm.dbg.declare(metadata %struct.resource** %tres, metadata !5235, metadata !DIExpression()), !dbg !5236
  call void @llvm.dbg.declare(metadata i64** %dma, metadata !5237, metadata !DIExpression()), !dbg !5238
  %0 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !5239
  %start = getelementptr inbounds %struct.resource, %struct.resource* %0, i32 0, i32 0, !dbg !5240
  store i64* %start, i64** %dma, align 8, !dbg !5241
  %1 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !5242
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %1, i32 0, i32 3, !dbg !5242
  %2 = load i64, i64* %flags, align 8, !dbg !5242
  %and = and i64 %2, 268435456, !dbg !5242
  %tobool = icmp ne i64 %and, 0, !dbg !5242
  br i1 %tobool, label %if.then, label %if.end, !dbg !5244

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !5245
  br label %return, !dbg !5245

if.end:                                           ; preds = %entry
  %3 = load i64*, i64** %dma, align 8, !dbg !5246
  %4 = load i64, i64* %3, align 8, !dbg !5248
  %cmp = icmp eq i64 %4, 4, !dbg !5249
  br i1 %cmp, label %if.then2, label %lor.lhs.false, !dbg !5250

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i64*, i64** %dma, align 8, !dbg !5251
  %6 = load i64, i64* %5, align 8, !dbg !5252
  %cmp1 = icmp ugt i64 %6, 7, !dbg !5253
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !5254

if.then2:                                         ; preds = %lor.lhs.false, %if.end
  store i32 0, i32* %retval, align 4, !dbg !5255
  br label %return, !dbg !5255

if.end3:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4, !dbg !5256
  br label %for.cond, !dbg !5258

for.cond:                                         ; preds = %for.inc, %if.end3
  %7 = load i32, i32* %i, align 4, !dbg !5259
  %cmp4 = icmp slt i32 %7, 8, !dbg !5261
  br i1 %cmp4, label %for.body, label %for.end, !dbg !5262

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4, !dbg !5263
  %idxprom = sext i32 %8 to i64, !dbg !5266
  %arrayidx = getelementptr [8 x i32], [8 x i32]* @pnp_reserve_dma, i64 0, i64 %idxprom, !dbg !5266
  %9 = load i32, i32* %arrayidx, align 4, !dbg !5266
  %conv = sext i32 %9 to i64, !dbg !5266
  %10 = load i64*, i64** %dma, align 8, !dbg !5267
  %11 = load i64, i64* %10, align 8, !dbg !5268
  %cmp5 = icmp eq i64 %conv, %11, !dbg !5269
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !5270

if.then7:                                         ; preds = %for.body
  store i32 0, i32* %retval, align 4, !dbg !5271
  br label %return, !dbg !5271

if.end8:                                          ; preds = %for.body
  br label %for.inc, !dbg !5272

for.inc:                                          ; preds = %if.end8
  %12 = load i32, i32* %i, align 4, !dbg !5273
  %inc = add i32 %12, 1, !dbg !5273
  store i32 %inc, i32* %i, align 4, !dbg !5273
  br label %for.cond, !dbg !5274, !llvm.loop !5275

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !5277
  br label %for.cond9, !dbg !5279

for.cond9:                                        ; preds = %for.inc24, %for.end
  %13 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !5280
  %14 = load i32, i32* %i, align 4, !dbg !5282
  %call = call %struct.resource* @pnp_get_resource(%struct.pnp_dev* %13, i64 2048, i32 %14) #9, !dbg !5283
  store %struct.resource* %call, %struct.resource** %tres, align 8, !dbg !5284
  %tobool10 = icmp ne %struct.resource* %call, null, !dbg !5285
  br i1 %tobool10, label %for.body11, label %for.end26, !dbg !5285

for.body11:                                       ; preds = %for.cond9
  %15 = load %struct.resource*, %struct.resource** %tres, align 8, !dbg !5286
  %16 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !5289
  %cmp12 = icmp ne %struct.resource* %15, %16, !dbg !5290
  br i1 %cmp12, label %land.lhs.true, label %if.end23, !dbg !5291

land.lhs.true:                                    ; preds = %for.body11
  %17 = load %struct.resource*, %struct.resource** %tres, align 8, !dbg !5292
  %flags14 = getelementptr inbounds %struct.resource, %struct.resource* %17, i32 0, i32 3, !dbg !5293
  %18 = load i64, i64* %flags14, align 8, !dbg !5293
  %and15 = and i64 %18, 2048, !dbg !5294
  %tobool16 = icmp ne i64 %and15, 0, !dbg !5294
  br i1 %tobool16, label %if.then17, label %if.end23, !dbg !5295

if.then17:                                        ; preds = %land.lhs.true
  %19 = load %struct.resource*, %struct.resource** %tres, align 8, !dbg !5296
  %start18 = getelementptr inbounds %struct.resource, %struct.resource* %19, i32 0, i32 0, !dbg !5299
  %20 = load i64, i64* %start18, align 8, !dbg !5299
  %21 = load i64*, i64** %dma, align 8, !dbg !5300
  %22 = load i64, i64* %21, align 8, !dbg !5301
  %cmp19 = icmp eq i64 %20, %22, !dbg !5302
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !5303

if.then21:                                        ; preds = %if.then17
  store i32 0, i32* %retval, align 4, !dbg !5304
  br label %return, !dbg !5304

if.end22:                                         ; preds = %if.then17
  br label %if.end23, !dbg !5305

if.end23:                                         ; preds = %if.end22, %land.lhs.true, %for.body11
  br label %for.inc24, !dbg !5306

for.inc24:                                        ; preds = %if.end23
  %23 = load i32, i32* %i, align 4, !dbg !5307
  %inc25 = add i32 %23, 1, !dbg !5307
  store i32 %inc25, i32* %i, align 4, !dbg !5307
  br label %for.cond9, !dbg !5308, !llvm.loop !5309

for.end26:                                        ; preds = %for.cond9
  %24 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !5311
  %active = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %24, i32 0, i32 13, !dbg !5313
  %25 = load i32, i32* %active, align 8, !dbg !5313
  %tobool27 = icmp ne i32 %25, 0, !dbg !5311
  br i1 %tobool27, label %if.end35, label %if.then28, !dbg !5314

if.then28:                                        ; preds = %for.end26
  %26 = load i64*, i64** %dma, align 8, !dbg !5315
  %27 = load i64, i64* %26, align 8, !dbg !5318
  %conv29 = trunc i64 %27 to i32, !dbg !5318
  %call30 = call i32 @request_dma(i32 %conv29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #9, !dbg !5319
  %tobool31 = icmp ne i32 %call30, 0, !dbg !5319
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !5320

if.then32:                                        ; preds = %if.then28
  store i32 0, i32* %retval, align 4, !dbg !5321
  br label %return, !dbg !5321

if.end33:                                         ; preds = %if.then28
  %28 = load i64*, i64** %dma, align 8, !dbg !5322
  %29 = load i64, i64* %28, align 8, !dbg !5323
  %conv34 = trunc i64 %29 to i32, !dbg !5323
  call void @free_dma(i32 %conv34) #9, !dbg !5324
  br label %if.end35, !dbg !5325

if.end35:                                         ; preds = %if.end33, %for.end26
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5326, metadata !DIExpression()), !dbg !5329
  %30 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @pnp_global, i32 0, i32 0), align 8, !dbg !5329
  %31 = bitcast %struct.list_head* %30 to i8*, !dbg !5329
  store i8* %31, i8** %__mptr, align 8, !dbg !5329
  br label %do.body, !dbg !5329

do.body:                                          ; preds = %if.end35
  br label %do.end, !dbg !5330

do.end:                                           ; preds = %do.body
  %32 = load i8*, i8** %__mptr, align 8, !dbg !5329
  %add.ptr = getelementptr i8, i8* %32, i64 -712, !dbg !5329
  %33 = bitcast i8* %add.ptr to %struct.pnp_dev*, !dbg !5329
  store %struct.pnp_dev* %33, %struct.pnp_dev** %tmp, align 8, !dbg !5330
  %34 = load %struct.pnp_dev*, %struct.pnp_dev** %tmp, align 8, !dbg !5329
  store %struct.pnp_dev* %34, %struct.pnp_dev** %tdev, align 8, !dbg !5332
  br label %for.cond36, !dbg !5332

for.cond36:                                       ; preds = %do.end70, %do.end
  %35 = load %struct.pnp_dev*, %struct.pnp_dev** %tdev, align 8, !dbg !5333
  %global_list = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %35, i32 0, i32 4, !dbg !5333
  %cmp37 = icmp eq %struct.list_head* %global_list, @pnp_global, !dbg !5333
  %lnot = xor i1 %cmp37, true, !dbg !5333
  br i1 %lnot, label %for.body39, label %for.end73, !dbg !5332

for.body39:                                       ; preds = %for.cond36
  %36 = load %struct.pnp_dev*, %struct.pnp_dev** %tdev, align 8, !dbg !5335
  %37 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !5338
  %cmp40 = icmp eq %struct.pnp_dev* %36, %37, !dbg !5339
  br i1 %cmp40, label %if.then42, label %if.end43, !dbg !5340

if.then42:                                        ; preds = %for.body39
  br label %for.inc66, !dbg !5341

if.end43:                                         ; preds = %for.body39
  store i32 0, i32* %i, align 4, !dbg !5342
  br label %for.cond44, !dbg !5344

for.cond44:                                       ; preds = %for.inc63, %if.end43
  %38 = load %struct.pnp_dev*, %struct.pnp_dev** %tdev, align 8, !dbg !5345
  %39 = load i32, i32* %i, align 4, !dbg !5347
  %call45 = call %struct.resource* @pnp_get_resource(%struct.pnp_dev* %38, i64 2048, i32 %39) #9, !dbg !5348
  store %struct.resource* %call45, %struct.resource** %tres, align 8, !dbg !5349
  %tobool46 = icmp ne %struct.resource* %call45, null, !dbg !5350
  br i1 %tobool46, label %for.body47, label %for.end65, !dbg !5350

for.body47:                                       ; preds = %for.cond44
  %40 = load %struct.resource*, %struct.resource** %tres, align 8, !dbg !5351
  %flags48 = getelementptr inbounds %struct.resource, %struct.resource* %40, i32 0, i32 3, !dbg !5354
  %41 = load i64, i64* %flags48, align 8, !dbg !5354
  %and49 = and i64 %41, 2048, !dbg !5355
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5355
  br i1 %tobool50, label %if.then51, label %if.end62, !dbg !5356

if.then51:                                        ; preds = %for.body47
  %42 = load %struct.resource*, %struct.resource** %tres, align 8, !dbg !5357
  %flags52 = getelementptr inbounds %struct.resource, %struct.resource* %42, i32 0, i32 3, !dbg !5357
  %43 = load i64, i64* %flags52, align 8, !dbg !5357
  %and53 = and i64 %43, 268435456, !dbg !5357
  %tobool54 = icmp ne i64 %and53, 0, !dbg !5357
  br i1 %tobool54, label %if.then55, label %if.end56, !dbg !5360

if.then55:                                        ; preds = %if.then51
  br label %for.inc63, !dbg !5361

if.end56:                                         ; preds = %if.then51
  %44 = load %struct.resource*, %struct.resource** %tres, align 8, !dbg !5362
  %start57 = getelementptr inbounds %struct.resource, %struct.resource* %44, i32 0, i32 0, !dbg !5364
  %45 = load i64, i64* %start57, align 8, !dbg !5364
  %46 = load i64*, i64** %dma, align 8, !dbg !5365
  %47 = load i64, i64* %46, align 8, !dbg !5366
  %cmp58 = icmp eq i64 %45, %47, !dbg !5367
  br i1 %cmp58, label %if.then60, label %if.end61, !dbg !5368

if.then60:                                        ; preds = %if.end56
  store i32 0, i32* %retval, align 4, !dbg !5369
  br label %return, !dbg !5369

if.end61:                                         ; preds = %if.end56
  br label %if.end62, !dbg !5370

if.end62:                                         ; preds = %if.end61, %for.body47
  br label %for.inc63, !dbg !5371

for.inc63:                                        ; preds = %if.end62, %if.then55
  %48 = load i32, i32* %i, align 4, !dbg !5372
  %inc64 = add i32 %48, 1, !dbg !5372
  store i32 %inc64, i32* %i, align 4, !dbg !5372
  br label %for.cond44, !dbg !5373, !llvm.loop !5374

for.end65:                                        ; preds = %for.cond44
  br label %for.inc66, !dbg !5376

for.inc66:                                        ; preds = %for.end65, %if.then42
  call void @llvm.dbg.declare(metadata i8** %__mptr67, metadata !5377, metadata !DIExpression()), !dbg !5379
  %49 = load %struct.pnp_dev*, %struct.pnp_dev** %tdev, align 8, !dbg !5379
  %global_list68 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %49, i32 0, i32 4, !dbg !5379
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %global_list68, i32 0, i32 0, !dbg !5379
  %50 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5379
  %51 = bitcast %struct.list_head* %50 to i8*, !dbg !5379
  store i8* %51, i8** %__mptr67, align 8, !dbg !5379
  br label %do.body69, !dbg !5379

do.body69:                                        ; preds = %for.inc66
  br label %do.end70, !dbg !5380

do.end70:                                         ; preds = %do.body69
  %52 = load i8*, i8** %__mptr67, align 8, !dbg !5379
  %add.ptr72 = getelementptr i8, i8* %52, i64 -712, !dbg !5379
  %53 = bitcast i8* %add.ptr72 to %struct.pnp_dev*, !dbg !5379
  store %struct.pnp_dev* %53, %struct.pnp_dev** %tmp71, align 8, !dbg !5380
  %54 = load %struct.pnp_dev*, %struct.pnp_dev** %tmp71, align 8, !dbg !5379
  store %struct.pnp_dev* %54, %struct.pnp_dev** %tdev, align 8, !dbg !5333
  br label %for.cond36, !dbg !5333, !llvm.loop !5382

for.end73:                                        ; preds = %for.cond36
  store i32 1, i32* %retval, align 4, !dbg !5384
  br label %return, !dbg !5384

return:                                           ; preds = %for.end73, %if.then60, %if.then32, %if.then21, %if.then7, %if.then2, %if.then
  %55 = load i32, i32* %retval, align 4, !dbg !5385
  ret i32 %55, !dbg !5385
}

; Function Attrs: noredzone
declare dso_local i32 @request_dma(i32, i8*) #3

; Function Attrs: noredzone
declare dso_local void @free_dma(i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @pnp_resource_type(%struct.resource* %res) #0 !dbg !5386 {
entry:
  %res.addr = alloca %struct.resource*, align 8
  store %struct.resource* %res, %struct.resource** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %res.addr, metadata !5389, metadata !DIExpression()), !dbg !5390
  %0 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !5391
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %0, i32 0, i32 3, !dbg !5392
  %1 = load i64, i64* %flags, align 8, !dbg !5392
  %and = and i64 %1, 7936, !dbg !5393
  ret i64 %and, !dbg !5394
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.pnp_resource* @pnp_add_resource(%struct.pnp_dev* %dev, %struct.resource* %res) #0 !dbg !5395 {
entry:
  %retval = alloca %struct.pnp_resource*, align 8
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %res.addr = alloca %struct.resource*, align 8
  %pnp_res = alloca %struct.pnp_resource*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !5398, metadata !DIExpression()), !dbg !5399
  store %struct.resource* %res, %struct.resource** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %res.addr, metadata !5400, metadata !DIExpression()), !dbg !5401
  call void @llvm.dbg.declare(metadata %struct.pnp_resource** %pnp_res, metadata !5402, metadata !DIExpression()), !dbg !5403
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !5404
  %call = call %struct.pnp_resource* @pnp_new_resource(%struct.pnp_dev* %0) #9, !dbg !5405
  store %struct.pnp_resource* %call, %struct.pnp_resource** %pnp_res, align 8, !dbg !5406
  %1 = load %struct.pnp_resource*, %struct.pnp_resource** %pnp_res, align 8, !dbg !5407
  %tobool = icmp ne %struct.pnp_resource* %1, null, !dbg !5407
  br i1 %tobool, label %if.end, label %if.then, !dbg !5409

if.then:                                          ; preds = %entry
  %2 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !5410
  %dev1 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %2, i32 0, i32 0, !dbg !5410
  %3 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !5410
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), %struct.resource* %3) #12, !dbg !5410
  store %struct.pnp_resource* null, %struct.pnp_resource** %retval, align 8, !dbg !5412
  br label %return, !dbg !5412

if.end:                                           ; preds = %entry
  %4 = load %struct.pnp_resource*, %struct.pnp_resource** %pnp_res, align 8, !dbg !5413
  %res2 = getelementptr inbounds %struct.pnp_resource, %struct.pnp_resource* %4, i32 0, i32 1, !dbg !5414
  %5 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !5415
  %6 = bitcast %struct.resource* %res2 to i8*, !dbg !5416
  %7 = bitcast %struct.resource* %5 to i8*, !dbg !5416
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %7, i64 64, i1 false), !dbg !5416
  %8 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !5417
  %name = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %8, i32 0, i32 18, !dbg !5418
  %arraydecay = getelementptr inbounds [50 x i8], [50 x i8]* %name, i64 0, i64 0, !dbg !5417
  %9 = load %struct.pnp_resource*, %struct.pnp_resource** %pnp_res, align 8, !dbg !5419
  %res3 = getelementptr inbounds %struct.pnp_resource, %struct.pnp_resource* %9, i32 0, i32 1, !dbg !5420
  %name4 = getelementptr inbounds %struct.resource, %struct.resource* %res3, i32 0, i32 2, !dbg !5421
  store i8* %arraydecay, i8** %name4, align 8, !dbg !5422
  %10 = load %struct.pnp_resource*, %struct.pnp_resource** %pnp_res, align 8, !dbg !5423
  store %struct.pnp_resource* %10, %struct.pnp_resource** %retval, align 8, !dbg !5424
  br label %return, !dbg !5424

return:                                           ; preds = %if.end, %if.then
  %11 = load %struct.pnp_resource*, %struct.pnp_resource** %retval, align 8, !dbg !5425
  ret %struct.pnp_resource* %11, !dbg !5425
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.pnp_resource* @pnp_new_resource(%struct.pnp_dev* %dev) #0 !dbg !5426 {
entry:
  %retval = alloca %struct.pnp_resource*, align 8
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %pnp_res = alloca %struct.pnp_resource*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !5429, metadata !DIExpression()), !dbg !5430
  call void @llvm.dbg.declare(metadata %struct.pnp_resource** %pnp_res, metadata !5431, metadata !DIExpression()), !dbg !5432
  %call = call i8* @kzalloc(i64 80, i32 3264) #9, !dbg !5433
  %0 = bitcast i8* %call to %struct.pnp_resource*, !dbg !5433
  store %struct.pnp_resource* %0, %struct.pnp_resource** %pnp_res, align 8, !dbg !5434
  %1 = load %struct.pnp_resource*, %struct.pnp_resource** %pnp_res, align 8, !dbg !5435
  %tobool = icmp ne %struct.pnp_resource* %1, null, !dbg !5435
  br i1 %tobool, label %if.end, label %if.then, !dbg !5437

if.then:                                          ; preds = %entry
  store %struct.pnp_resource* null, %struct.pnp_resource** %retval, align 8, !dbg !5438
  br label %return, !dbg !5438

if.end:                                           ; preds = %entry
  %2 = load %struct.pnp_resource*, %struct.pnp_resource** %pnp_res, align 8, !dbg !5439
  %list = getelementptr inbounds %struct.pnp_resource, %struct.pnp_resource* %2, i32 0, i32 0, !dbg !5440
  %3 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !5441
  %resources = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %3, i32 0, i32 16, !dbg !5442
  call void @list_add_tail(%struct.list_head* %list, %struct.list_head* %resources) #9, !dbg !5443
  %4 = load %struct.pnp_resource*, %struct.pnp_resource** %pnp_res, align 8, !dbg !5444
  store %struct.pnp_resource* %4, %struct.pnp_resource** %retval, align 8, !dbg !5445
  br label %return, !dbg !5445

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct.pnp_resource*, %struct.pnp_resource** %retval, align 8, !dbg !5446
  ret %struct.pnp_resource* %5, !dbg !5446
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.pnp_resource* @pnp_add_irq_resource(%struct.pnp_dev* %dev, i32 %irq, i32 %flags) #0 !dbg !5447 {
entry:
  %retval = alloca %struct.pnp_resource*, align 8
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %irq.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %pnp_res = alloca %struct.pnp_resource*, align 8
  %res = alloca %struct.resource*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !5450, metadata !DIExpression()), !dbg !5451
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !5452, metadata !DIExpression()), !dbg !5453
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5454, metadata !DIExpression()), !dbg !5455
  call void @llvm.dbg.declare(metadata %struct.pnp_resource** %pnp_res, metadata !5456, metadata !DIExpression()), !dbg !5457
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !5458, metadata !DIExpression()), !dbg !5459
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !5460
  %call = call %struct.pnp_resource* @pnp_new_resource(%struct.pnp_dev* %0) #9, !dbg !5461
  store %struct.pnp_resource* %call, %struct.pnp_resource** %pnp_res, align 8, !dbg !5462
  %1 = load %struct.pnp_resource*, %struct.pnp_resource** %pnp_res, align 8, !dbg !5463
  %tobool = icmp ne %struct.pnp_resource* %1, null, !dbg !5463
  br i1 %tobool, label %if.end, label %if.then, !dbg !5465

if.then:                                          ; preds = %entry
  %2 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !5466
  %dev1 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %2, i32 0, i32 0, !dbg !5466
  %3 = load i32, i32* %irq.addr, align 4, !dbg !5466
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %3) #12, !dbg !5466
  store %struct.pnp_resource* null, %struct.pnp_resource** %retval, align 8, !dbg !5468
  br label %return, !dbg !5468

if.end:                                           ; preds = %entry
  %4 = load %struct.pnp_resource*, %struct.pnp_resource** %pnp_res, align 8, !dbg !5469
  %res2 = getelementptr inbounds %struct.pnp_resource, %struct.pnp_resource* %4, i32 0, i32 1, !dbg !5470
  store %struct.resource* %res2, %struct.resource** %res, align 8, !dbg !5471
  %5 = load i32, i32* %flags.addr, align 4, !dbg !5472
  %or = or i32 1024, %5, !dbg !5473
  %conv = sext i32 %or to i64, !dbg !5474
  %6 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5475
  %flags3 = getelementptr inbounds %struct.resource, %struct.resource* %6, i32 0, i32 3, !dbg !5476
  store i64 %conv, i64* %flags3, align 8, !dbg !5477
  %7 = load i32, i32* %irq.addr, align 4, !dbg !5478
  %conv4 = sext i32 %7 to i64, !dbg !5478
  %8 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5479
  %start = getelementptr inbounds %struct.resource, %struct.resource* %8, i32 0, i32 0, !dbg !5480
  store i64 %conv4, i64* %start, align 8, !dbg !5481
  %9 = load i32, i32* %irq.addr, align 4, !dbg !5482
  %conv5 = sext i32 %9 to i64, !dbg !5482
  %10 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5483
  %end = getelementptr inbounds %struct.resource, %struct.resource* %10, i32 0, i32 1, !dbg !5484
  store i64 %conv5, i64* %end, align 8, !dbg !5485
  %11 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !5486
  %dev6 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %11, i32 0, i32 0, !dbg !5487
  %12 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5488
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %struct.device* %dev6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %struct.resource* %12) #12, !dbg !5489
  %13 = load %struct.pnp_resource*, %struct.pnp_resource** %pnp_res, align 8, !dbg !5490
  store %struct.pnp_resource* %13, %struct.pnp_resource** %retval, align 8, !dbg !5491
  br label %return, !dbg !5491

return:                                           ; preds = %if.end, %if.then
  %14 = load %struct.pnp_resource*, %struct.pnp_resource** %retval, align 8, !dbg !5492
  ret %struct.pnp_resource* %14, !dbg !5492
}

; Function Attrs: cold noredzone
declare dso_local void @dev_printk(i8*, %struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.pnp_resource* @pnp_add_dma_resource(%struct.pnp_dev* %dev, i32 %dma, i32 %flags) #0 !dbg !5493 {
entry:
  %retval = alloca %struct.pnp_resource*, align 8
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %dma.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %pnp_res = alloca %struct.pnp_resource*, align 8
  %res = alloca %struct.resource*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !5494, metadata !DIExpression()), !dbg !5495
  store i32 %dma, i32* %dma.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dma.addr, metadata !5496, metadata !DIExpression()), !dbg !5497
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5498, metadata !DIExpression()), !dbg !5499
  call void @llvm.dbg.declare(metadata %struct.pnp_resource** %pnp_res, metadata !5500, metadata !DIExpression()), !dbg !5501
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !5502, metadata !DIExpression()), !dbg !5503
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !5504
  %call = call %struct.pnp_resource* @pnp_new_resource(%struct.pnp_dev* %0) #9, !dbg !5505
  store %struct.pnp_resource* %call, %struct.pnp_resource** %pnp_res, align 8, !dbg !5506
  %1 = load %struct.pnp_resource*, %struct.pnp_resource** %pnp_res, align 8, !dbg !5507
  %tobool = icmp ne %struct.pnp_resource* %1, null, !dbg !5507
  br i1 %tobool, label %if.end, label %if.then, !dbg !5509

if.then:                                          ; preds = %entry
  %2 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !5510
  %dev1 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %2, i32 0, i32 0, !dbg !5510
  %3 = load i32, i32* %dma.addr, align 4, !dbg !5510
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %3) #12, !dbg !5510
  store %struct.pnp_resource* null, %struct.pnp_resource** %retval, align 8, !dbg !5512
  br label %return, !dbg !5512

if.end:                                           ; preds = %entry
  %4 = load %struct.pnp_resource*, %struct.pnp_resource** %pnp_res, align 8, !dbg !5513
  %res2 = getelementptr inbounds %struct.pnp_resource, %struct.pnp_resource* %4, i32 0, i32 1, !dbg !5514
  store %struct.resource* %res2, %struct.resource** %res, align 8, !dbg !5515
  %5 = load i32, i32* %flags.addr, align 4, !dbg !5516
  %or = or i32 2048, %5, !dbg !5517
  %conv = sext i32 %or to i64, !dbg !5518
  %6 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5519
  %flags3 = getelementptr inbounds %struct.resource, %struct.resource* %6, i32 0, i32 3, !dbg !5520
  store i64 %conv, i64* %flags3, align 8, !dbg !5521
  %7 = load i32, i32* %dma.addr, align 4, !dbg !5522
  %conv4 = sext i32 %7 to i64, !dbg !5522
  %8 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5523
  %start = getelementptr inbounds %struct.resource, %struct.resource* %8, i32 0, i32 0, !dbg !5524
  store i64 %conv4, i64* %start, align 8, !dbg !5525
  %9 = load i32, i32* %dma.addr, align 4, !dbg !5526
  %conv5 = sext i32 %9 to i64, !dbg !5526
  %10 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5527
  %end = getelementptr inbounds %struct.resource, %struct.resource* %10, i32 0, i32 1, !dbg !5528
  store i64 %conv5, i64* %end, align 8, !dbg !5529
  %11 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !5530
  %dev6 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %11, i32 0, i32 0, !dbg !5531
  %12 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5532
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %struct.device* %dev6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %struct.resource* %12) #12, !dbg !5533
  %13 = load %struct.pnp_resource*, %struct.pnp_resource** %pnp_res, align 8, !dbg !5534
  store %struct.pnp_resource* %13, %struct.pnp_resource** %retval, align 8, !dbg !5535
  br label %return, !dbg !5535

return:                                           ; preds = %if.end, %if.then
  %14 = load %struct.pnp_resource*, %struct.pnp_resource** %retval, align 8, !dbg !5536
  ret %struct.pnp_resource* %14, !dbg !5536
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.pnp_resource* @pnp_add_io_resource(%struct.pnp_dev* %dev, i64 %start, i64 %end, i32 %flags) #0 !dbg !5537 {
entry:
  %retval = alloca %struct.pnp_resource*, align 8
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %pnp_res = alloca %struct.pnp_resource*, align 8
  %res = alloca %struct.resource*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !5540, metadata !DIExpression()), !dbg !5541
  store i64 %start, i64* %start.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %start.addr, metadata !5542, metadata !DIExpression()), !dbg !5543
  store i64 %end, i64* %end.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %end.addr, metadata !5544, metadata !DIExpression()), !dbg !5545
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5546, metadata !DIExpression()), !dbg !5547
  call void @llvm.dbg.declare(metadata %struct.pnp_resource** %pnp_res, metadata !5548, metadata !DIExpression()), !dbg !5549
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !5550, metadata !DIExpression()), !dbg !5551
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !5552
  %call = call %struct.pnp_resource* @pnp_new_resource(%struct.pnp_dev* %0) #9, !dbg !5553
  store %struct.pnp_resource* %call, %struct.pnp_resource** %pnp_res, align 8, !dbg !5554
  %1 = load %struct.pnp_resource*, %struct.pnp_resource** %pnp_res, align 8, !dbg !5555
  %tobool = icmp ne %struct.pnp_resource* %1, null, !dbg !5555
  br i1 %tobool, label %if.end, label %if.then, !dbg !5557

if.then:                                          ; preds = %entry
  %2 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !5558
  %dev1 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %2, i32 0, i32 0, !dbg !5558
  %3 = load i64, i64* %start.addr, align 8, !dbg !5558
  %4 = load i64, i64* %end.addr, align 8, !dbg !5558
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i64 %3, i64 %4) #12, !dbg !5558
  store %struct.pnp_resource* null, %struct.pnp_resource** %retval, align 8, !dbg !5560
  br label %return, !dbg !5560

if.end:                                           ; preds = %entry
  %5 = load %struct.pnp_resource*, %struct.pnp_resource** %pnp_res, align 8, !dbg !5561
  %res2 = getelementptr inbounds %struct.pnp_resource, %struct.pnp_resource* %5, i32 0, i32 1, !dbg !5562
  store %struct.resource* %res2, %struct.resource** %res, align 8, !dbg !5563
  %6 = load i32, i32* %flags.addr, align 4, !dbg !5564
  %or = or i32 256, %6, !dbg !5565
  %conv = sext i32 %or to i64, !dbg !5566
  %7 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5567
  %flags3 = getelementptr inbounds %struct.resource, %struct.resource* %7, i32 0, i32 3, !dbg !5568
  store i64 %conv, i64* %flags3, align 8, !dbg !5569
  %8 = load i64, i64* %start.addr, align 8, !dbg !5570
  %9 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5571
  %start4 = getelementptr inbounds %struct.resource, %struct.resource* %9, i32 0, i32 0, !dbg !5572
  store i64 %8, i64* %start4, align 8, !dbg !5573
  %10 = load i64, i64* %end.addr, align 8, !dbg !5574
  %11 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5575
  %end5 = getelementptr inbounds %struct.resource, %struct.resource* %11, i32 0, i32 1, !dbg !5576
  store i64 %10, i64* %end5, align 8, !dbg !5577
  %12 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !5578
  %dev6 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %12, i32 0, i32 0, !dbg !5579
  %13 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5580
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %struct.device* %dev6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %struct.resource* %13) #12, !dbg !5581
  %14 = load %struct.pnp_resource*, %struct.pnp_resource** %pnp_res, align 8, !dbg !5582
  store %struct.pnp_resource* %14, %struct.pnp_resource** %retval, align 8, !dbg !5583
  br label %return, !dbg !5583

return:                                           ; preds = %if.end, %if.then
  %15 = load %struct.pnp_resource*, %struct.pnp_resource** %retval, align 8, !dbg !5584
  ret %struct.pnp_resource* %15, !dbg !5584
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.pnp_resource* @pnp_add_mem_resource(%struct.pnp_dev* %dev, i64 %start, i64 %end, i32 %flags) #0 !dbg !5585 {
entry:
  %retval = alloca %struct.pnp_resource*, align 8
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %pnp_res = alloca %struct.pnp_resource*, align 8
  %res = alloca %struct.resource*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !5586, metadata !DIExpression()), !dbg !5587
  store i64 %start, i64* %start.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %start.addr, metadata !5588, metadata !DIExpression()), !dbg !5589
  store i64 %end, i64* %end.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %end.addr, metadata !5590, metadata !DIExpression()), !dbg !5591
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5592, metadata !DIExpression()), !dbg !5593
  call void @llvm.dbg.declare(metadata %struct.pnp_resource** %pnp_res, metadata !5594, metadata !DIExpression()), !dbg !5595
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !5596, metadata !DIExpression()), !dbg !5597
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !5598
  %call = call %struct.pnp_resource* @pnp_new_resource(%struct.pnp_dev* %0) #9, !dbg !5599
  store %struct.pnp_resource* %call, %struct.pnp_resource** %pnp_res, align 8, !dbg !5600
  %1 = load %struct.pnp_resource*, %struct.pnp_resource** %pnp_res, align 8, !dbg !5601
  %tobool = icmp ne %struct.pnp_resource* %1, null, !dbg !5601
  br i1 %tobool, label %if.end, label %if.then, !dbg !5603

if.then:                                          ; preds = %entry
  %2 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !5604
  %dev1 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %2, i32 0, i32 0, !dbg !5604
  %3 = load i64, i64* %start.addr, align 8, !dbg !5604
  %4 = load i64, i64* %end.addr, align 8, !dbg !5604
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i64 %3, i64 %4) #12, !dbg !5604
  store %struct.pnp_resource* null, %struct.pnp_resource** %retval, align 8, !dbg !5606
  br label %return, !dbg !5606

if.end:                                           ; preds = %entry
  %5 = load %struct.pnp_resource*, %struct.pnp_resource** %pnp_res, align 8, !dbg !5607
  %res2 = getelementptr inbounds %struct.pnp_resource, %struct.pnp_resource* %5, i32 0, i32 1, !dbg !5608
  store %struct.resource* %res2, %struct.resource** %res, align 8, !dbg !5609
  %6 = load i32, i32* %flags.addr, align 4, !dbg !5610
  %or = or i32 512, %6, !dbg !5611
  %conv = sext i32 %or to i64, !dbg !5612
  %7 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5613
  %flags3 = getelementptr inbounds %struct.resource, %struct.resource* %7, i32 0, i32 3, !dbg !5614
  store i64 %conv, i64* %flags3, align 8, !dbg !5615
  %8 = load i64, i64* %start.addr, align 8, !dbg !5616
  %9 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5617
  %start4 = getelementptr inbounds %struct.resource, %struct.resource* %9, i32 0, i32 0, !dbg !5618
  store i64 %8, i64* %start4, align 8, !dbg !5619
  %10 = load i64, i64* %end.addr, align 8, !dbg !5620
  %11 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5621
  %end5 = getelementptr inbounds %struct.resource, %struct.resource* %11, i32 0, i32 1, !dbg !5622
  store i64 %10, i64* %end5, align 8, !dbg !5623
  %12 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !5624
  %dev6 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %12, i32 0, i32 0, !dbg !5625
  %13 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5626
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %struct.device* %dev6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %struct.resource* %13) #12, !dbg !5627
  %14 = load %struct.pnp_resource*, %struct.pnp_resource** %pnp_res, align 8, !dbg !5628
  store %struct.pnp_resource* %14, %struct.pnp_resource** %retval, align 8, !dbg !5629
  br label %return, !dbg !5629

return:                                           ; preds = %if.end, %if.then
  %15 = load %struct.pnp_resource*, %struct.pnp_resource** %retval, align 8, !dbg !5630
  ret %struct.pnp_resource* %15, !dbg !5630
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.pnp_resource* @pnp_add_bus_resource(%struct.pnp_dev* %dev, i64 %start, i64 %end) #0 !dbg !5631 {
entry:
  %retval = alloca %struct.pnp_resource*, align 8
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %pnp_res = alloca %struct.pnp_resource*, align 8
  %res = alloca %struct.resource*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !5634, metadata !DIExpression()), !dbg !5635
  store i64 %start, i64* %start.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %start.addr, metadata !5636, metadata !DIExpression()), !dbg !5637
  store i64 %end, i64* %end.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %end.addr, metadata !5638, metadata !DIExpression()), !dbg !5639
  call void @llvm.dbg.declare(metadata %struct.pnp_resource** %pnp_res, metadata !5640, metadata !DIExpression()), !dbg !5641
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !5642, metadata !DIExpression()), !dbg !5643
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !5644
  %call = call %struct.pnp_resource* @pnp_new_resource(%struct.pnp_dev* %0) #9, !dbg !5645
  store %struct.pnp_resource* %call, %struct.pnp_resource** %pnp_res, align 8, !dbg !5646
  %1 = load %struct.pnp_resource*, %struct.pnp_resource** %pnp_res, align 8, !dbg !5647
  %tobool = icmp ne %struct.pnp_resource* %1, null, !dbg !5647
  br i1 %tobool, label %if.end, label %if.then, !dbg !5649

if.then:                                          ; preds = %entry
  %2 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !5650
  %dev1 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %2, i32 0, i32 0, !dbg !5650
  %3 = load i64, i64* %start.addr, align 8, !dbg !5650
  %4 = load i64, i64* %end.addr, align 8, !dbg !5650
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i64 %3, i64 %4) #12, !dbg !5650
  store %struct.pnp_resource* null, %struct.pnp_resource** %retval, align 8, !dbg !5652
  br label %return, !dbg !5652

if.end:                                           ; preds = %entry
  %5 = load %struct.pnp_resource*, %struct.pnp_resource** %pnp_res, align 8, !dbg !5653
  %res2 = getelementptr inbounds %struct.pnp_resource, %struct.pnp_resource* %5, i32 0, i32 1, !dbg !5654
  store %struct.resource* %res2, %struct.resource** %res, align 8, !dbg !5655
  %6 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5656
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %6, i32 0, i32 3, !dbg !5657
  store i64 4096, i64* %flags, align 8, !dbg !5658
  %7 = load i64, i64* %start.addr, align 8, !dbg !5659
  %8 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5660
  %start3 = getelementptr inbounds %struct.resource, %struct.resource* %8, i32 0, i32 0, !dbg !5661
  store i64 %7, i64* %start3, align 8, !dbg !5662
  %9 = load i64, i64* %end.addr, align 8, !dbg !5663
  %10 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5664
  %end4 = getelementptr inbounds %struct.resource, %struct.resource* %10, i32 0, i32 1, !dbg !5665
  store i64 %9, i64* %end4, align 8, !dbg !5666
  %11 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !5667
  %dev5 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %11, i32 0, i32 0, !dbg !5668
  %12 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5669
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %struct.device* %dev5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %struct.resource* %12) #12, !dbg !5670
  %13 = load %struct.pnp_resource*, %struct.pnp_resource** %pnp_res, align 8, !dbg !5671
  store %struct.pnp_resource* %13, %struct.pnp_resource** %retval, align 8, !dbg !5672
  br label %return, !dbg !5672

return:                                           ; preds = %if.end, %if.then
  %14 = load %struct.pnp_resource*, %struct.pnp_resource** %retval, align 8, !dbg !5673
  ret %struct.pnp_resource* %14, !dbg !5673
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pnp_possible_config(%struct.pnp_dev* %dev, i32 %type, i64 %start, i64 %size) #0 !dbg !5674 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %type.addr = alloca i32, align 4
  %start.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %option = alloca %struct.pnp_option*, align 8
  %port = alloca %struct.pnp_port*, align 8
  %mem = alloca %struct.pnp_mem*, align 8
  %irq = alloca %struct.pnp_irq*, align 8
  %dma = alloca %struct.pnp_dma*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pnp_option*, align 8
  %__mptr42 = alloca i8*, align 8
  %tmp47 = alloca %struct.pnp_option*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !5677, metadata !DIExpression()), !dbg !5678
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5679, metadata !DIExpression()), !dbg !5680
  store i64 %start, i64* %start.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %start.addr, metadata !5681, metadata !DIExpression()), !dbg !5682
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5683, metadata !DIExpression()), !dbg !5684
  call void @llvm.dbg.declare(metadata %struct.pnp_option** %option, metadata !5685, metadata !DIExpression()), !dbg !5686
  call void @llvm.dbg.declare(metadata %struct.pnp_port** %port, metadata !5687, metadata !DIExpression()), !dbg !5688
  call void @llvm.dbg.declare(metadata %struct.pnp_mem** %mem, metadata !5689, metadata !DIExpression()), !dbg !5690
  call void @llvm.dbg.declare(metadata %struct.pnp_irq** %irq, metadata !5691, metadata !DIExpression()), !dbg !5692
  call void @llvm.dbg.declare(metadata %struct.pnp_dma** %dma, metadata !5693, metadata !DIExpression()), !dbg !5694
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5695, metadata !DIExpression()), !dbg !5698
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !5698
  %options = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %0, i32 0, i32 17, !dbg !5698
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %options, i32 0, i32 0, !dbg !5698
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5698
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !5698
  store i8* %2, i8** %__mptr, align 8, !dbg !5698
  br label %do.body, !dbg !5698

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5699

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !5698
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !5698
  %4 = bitcast i8* %add.ptr to %struct.pnp_option*, !dbg !5698
  store %struct.pnp_option* %4, %struct.pnp_option** %tmp, align 8, !dbg !5699
  %5 = load %struct.pnp_option*, %struct.pnp_option** %tmp, align 8, !dbg !5698
  store %struct.pnp_option* %5, %struct.pnp_option** %option, align 8, !dbg !5701
  br label %for.cond, !dbg !5701

for.cond:                                         ; preds = %do.end46, %do.end
  %6 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !5702
  %list = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %6, i32 0, i32 0, !dbg !5702
  %7 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !5702
  %options1 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %7, i32 0, i32 17, !dbg !5702
  %cmp = icmp eq %struct.list_head* %list, %options1, !dbg !5702
  %lnot = xor i1 %cmp, true, !dbg !5702
  br i1 %lnot, label %for.body, label %for.end, !dbg !5701

for.body:                                         ; preds = %for.cond
  %8 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !5704
  %type2 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %8, i32 0, i32 2, !dbg !5707
  %9 = load i64, i64* %type2, align 8, !dbg !5707
  %10 = load i32, i32* %type.addr, align 4, !dbg !5708
  %conv = sext i32 %10 to i64, !dbg !5708
  %cmp3 = icmp ne i64 %9, %conv, !dbg !5709
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5710

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !5711

if.end:                                           ; preds = %for.body
  %11 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !5712
  %type5 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %11, i32 0, i32 2, !dbg !5713
  %12 = load i64, i64* %type5, align 8, !dbg !5713
  switch i64 %12, label %sw.epilog [
    i64 256, label %sw.bb
    i64 512, label %sw.bb14
    i64 1024, label %sw.bb26
    i64 2048, label %sw.bb35
  ], !dbg !5714

sw.bb:                                            ; preds = %if.end
  %13 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !5715
  %u = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %13, i32 0, i32 3, !dbg !5717
  %port6 = bitcast %union.anon.66* %u to %struct.pnp_port*, !dbg !5718
  store %struct.pnp_port* %port6, %struct.pnp_port** %port, align 8, !dbg !5719
  %14 = load %struct.pnp_port*, %struct.pnp_port** %port, align 8, !dbg !5720
  %min = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %14, i32 0, i32 0, !dbg !5722
  %15 = load i64, i64* %min, align 8, !dbg !5722
  %16 = load i64, i64* %start.addr, align 8, !dbg !5723
  %cmp7 = icmp eq i64 %15, %16, !dbg !5724
  br i1 %cmp7, label %land.lhs.true, label %if.end13, !dbg !5725

land.lhs.true:                                    ; preds = %sw.bb
  %17 = load %struct.pnp_port*, %struct.pnp_port** %port, align 8, !dbg !5726
  %size9 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %17, i32 0, i32 3, !dbg !5727
  %18 = load i64, i64* %size9, align 8, !dbg !5727
  %19 = load i64, i64* %size.addr, align 8, !dbg !5728
  %cmp10 = icmp eq i64 %18, %19, !dbg !5729
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !5730

if.then12:                                        ; preds = %land.lhs.true
  store i32 1, i32* %retval, align 4, !dbg !5731
  br label %return, !dbg !5731

if.end13:                                         ; preds = %land.lhs.true, %sw.bb
  br label %sw.epilog, !dbg !5732

sw.bb14:                                          ; preds = %if.end
  %20 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !5733
  %u15 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %20, i32 0, i32 3, !dbg !5734
  %mem16 = bitcast %union.anon.66* %u15 to %struct.pnp_mem*, !dbg !5735
  store %struct.pnp_mem* %mem16, %struct.pnp_mem** %mem, align 8, !dbg !5736
  %21 = load %struct.pnp_mem*, %struct.pnp_mem** %mem, align 8, !dbg !5737
  %min17 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %21, i32 0, i32 0, !dbg !5739
  %22 = load i64, i64* %min17, align 8, !dbg !5739
  %23 = load i64, i64* %start.addr, align 8, !dbg !5740
  %cmp18 = icmp eq i64 %22, %23, !dbg !5741
  br i1 %cmp18, label %land.lhs.true20, label %if.end25, !dbg !5742

land.lhs.true20:                                  ; preds = %sw.bb14
  %24 = load %struct.pnp_mem*, %struct.pnp_mem** %mem, align 8, !dbg !5743
  %size21 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %24, i32 0, i32 3, !dbg !5744
  %25 = load i64, i64* %size21, align 8, !dbg !5744
  %26 = load i64, i64* %size.addr, align 8, !dbg !5745
  %cmp22 = icmp eq i64 %25, %26, !dbg !5746
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !5747

if.then24:                                        ; preds = %land.lhs.true20
  store i32 1, i32* %retval, align 4, !dbg !5748
  br label %return, !dbg !5748

if.end25:                                         ; preds = %land.lhs.true20, %sw.bb14
  br label %sw.epilog, !dbg !5749

sw.bb26:                                          ; preds = %if.end
  %27 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !5750
  %u27 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %27, i32 0, i32 3, !dbg !5751
  %irq28 = bitcast %union.anon.66* %u27 to %struct.pnp_irq*, !dbg !5752
  store %struct.pnp_irq* %irq28, %struct.pnp_irq** %irq, align 8, !dbg !5753
  %28 = load i64, i64* %start.addr, align 8, !dbg !5754
  %cmp29 = icmp ult i64 %28, 256, !dbg !5756
  br i1 %cmp29, label %land.lhs.true31, label %if.end34, !dbg !5757

land.lhs.true31:                                  ; preds = %sw.bb26
  %29 = load i64, i64* %start.addr, align 8, !dbg !5758
  %30 = load %struct.pnp_irq*, %struct.pnp_irq** %irq, align 8, !dbg !5759
  %map = getelementptr inbounds %struct.pnp_irq, %struct.pnp_irq* %30, i32 0, i32 0, !dbg !5760
  %bits = getelementptr inbounds %struct.pnp_irq_mask_t, %struct.pnp_irq_mask_t* %map, i32 0, i32 0, !dbg !5761
  %arraydecay = getelementptr inbounds [4 x i64], [4 x i64]* %bits, i64 0, i64 0, !dbg !5759
  %call = call zeroext i1 @test_bit(i64 %29, i64* %arraydecay) #9, !dbg !5762
  br i1 %call, label %if.then33, label %if.end34, !dbg !5763

if.then33:                                        ; preds = %land.lhs.true31
  store i32 1, i32* %retval, align 4, !dbg !5764
  br label %return, !dbg !5764

if.end34:                                         ; preds = %land.lhs.true31, %sw.bb26
  br label %sw.epilog, !dbg !5765

sw.bb35:                                          ; preds = %if.end
  %31 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !5766
  %u36 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %31, i32 0, i32 3, !dbg !5767
  %dma37 = bitcast %union.anon.66* %u36 to %struct.pnp_dma*, !dbg !5768
  store %struct.pnp_dma* %dma37, %struct.pnp_dma** %dma, align 8, !dbg !5769
  %32 = load %struct.pnp_dma*, %struct.pnp_dma** %dma, align 8, !dbg !5770
  %map38 = getelementptr inbounds %struct.pnp_dma, %struct.pnp_dma* %32, i32 0, i32 0, !dbg !5772
  %33 = load i8, i8* %map38, align 1, !dbg !5772
  %conv39 = zext i8 %33 to i32, !dbg !5770
  %34 = load i64, i64* %start.addr, align 8, !dbg !5773
  %sh_prom = trunc i64 %34 to i32, !dbg !5774
  %shl = shl i32 1, %sh_prom, !dbg !5774
  %and = and i32 %conv39, %shl, !dbg !5775
  %tobool = icmp ne i32 %and, 0, !dbg !5775
  br i1 %tobool, label %if.then40, label %if.end41, !dbg !5776

if.then40:                                        ; preds = %sw.bb35
  store i32 1, i32* %retval, align 4, !dbg !5777
  br label %return, !dbg !5777

if.end41:                                         ; preds = %sw.bb35
  br label %sw.epilog, !dbg !5778

sw.epilog:                                        ; preds = %if.end, %if.end41, %if.end34, %if.end25, %if.end13
  br label %for.inc, !dbg !5779

for.inc:                                          ; preds = %sw.epilog, %if.then
  call void @llvm.dbg.declare(metadata i8** %__mptr42, metadata !5780, metadata !DIExpression()), !dbg !5782
  %35 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !5782
  %list43 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %35, i32 0, i32 0, !dbg !5782
  %next44 = getelementptr inbounds %struct.list_head, %struct.list_head* %list43, i32 0, i32 0, !dbg !5782
  %36 = load %struct.list_head*, %struct.list_head** %next44, align 8, !dbg !5782
  %37 = bitcast %struct.list_head* %36 to i8*, !dbg !5782
  store i8* %37, i8** %__mptr42, align 8, !dbg !5782
  br label %do.body45, !dbg !5782

do.body45:                                        ; preds = %for.inc
  br label %do.end46, !dbg !5783

do.end46:                                         ; preds = %do.body45
  %38 = load i8*, i8** %__mptr42, align 8, !dbg !5782
  %add.ptr48 = getelementptr i8, i8* %38, i64 0, !dbg !5782
  %39 = bitcast i8* %add.ptr48 to %struct.pnp_option*, !dbg !5782
  store %struct.pnp_option* %39, %struct.pnp_option** %tmp47, align 8, !dbg !5783
  %40 = load %struct.pnp_option*, %struct.pnp_option** %tmp47, align 8, !dbg !5782
  store %struct.pnp_option* %40, %struct.pnp_option** %option, align 8, !dbg !5702
  br label %for.cond, !dbg !5702, !llvm.loop !5785

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !5787
  br label %return, !dbg !5787

return:                                           ; preds = %for.end, %if.then40, %if.then33, %if.then24, %if.then12
  %41 = load i32, i32* %retval, align 4, !dbg !5788
  ret i32 %41, !dbg !5788
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pnp_range_reserved(i64 %start, i64 %end) #0 !dbg !5789 {
entry:
  %retval = alloca i32, align 4
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %dev = alloca %struct.pnp_dev*, align 8
  %pnp_res = alloca %struct.pnp_resource*, align 8
  %dev_start = alloca i64*, align 8
  %dev_end = alloca i64*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pnp_dev*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp4 = alloca %struct.pnp_resource*, align 8
  %__mptr16 = alloca i8*, align 8
  %tmp21 = alloca %struct.pnp_resource*, align 8
  %__mptr24 = alloca i8*, align 8
  %tmp29 = alloca %struct.pnp_dev*, align 8
  store i64 %start, i64* %start.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %start.addr, metadata !5792, metadata !DIExpression()), !dbg !5793
  store i64 %end, i64* %end.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %end.addr, metadata !5794, metadata !DIExpression()), !dbg !5795
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev, metadata !5796, metadata !DIExpression()), !dbg !5797
  call void @llvm.dbg.declare(metadata %struct.pnp_resource** %pnp_res, metadata !5798, metadata !DIExpression()), !dbg !5799
  call void @llvm.dbg.declare(metadata i64** %dev_start, metadata !5800, metadata !DIExpression()), !dbg !5801
  call void @llvm.dbg.declare(metadata i64** %dev_end, metadata !5802, metadata !DIExpression()), !dbg !5803
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5804, metadata !DIExpression()), !dbg !5807
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @pnp_global, i32 0, i32 0), align 8, !dbg !5807
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !5807
  store i8* %1, i8** %__mptr, align 8, !dbg !5807
  br label %do.body, !dbg !5807

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5808

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5807
  %add.ptr = getelementptr i8, i8* %2, i64 -712, !dbg !5807
  %3 = bitcast i8* %add.ptr to %struct.pnp_dev*, !dbg !5807
  store %struct.pnp_dev* %3, %struct.pnp_dev** %tmp, align 8, !dbg !5808
  %4 = load %struct.pnp_dev*, %struct.pnp_dev** %tmp, align 8, !dbg !5807
  store %struct.pnp_dev* %4, %struct.pnp_dev** %dev, align 8, !dbg !5810
  br label %for.cond, !dbg !5810

for.cond:                                         ; preds = %do.end28, %do.end
  %5 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !5811
  %global_list = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %5, i32 0, i32 4, !dbg !5811
  %cmp = icmp eq %struct.list_head* %global_list, @pnp_global, !dbg !5811
  %lnot = xor i1 %cmp, true, !dbg !5811
  br i1 %lnot, label %for.body, label %for.end31, !dbg !5810

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !5813, metadata !DIExpression()), !dbg !5817
  %6 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !5817
  %resources = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %6, i32 0, i32 16, !dbg !5817
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %resources, i32 0, i32 0, !dbg !5817
  %7 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5817
  %8 = bitcast %struct.list_head* %7 to i8*, !dbg !5817
  store i8* %8, i8** %__mptr1, align 8, !dbg !5817
  br label %do.body2, !dbg !5817

do.body2:                                         ; preds = %for.body
  br label %do.end3, !dbg !5818

do.end3:                                          ; preds = %do.body2
  %9 = load i8*, i8** %__mptr1, align 8, !dbg !5817
  %add.ptr5 = getelementptr i8, i8* %9, i64 0, !dbg !5817
  %10 = bitcast i8* %add.ptr5 to %struct.pnp_resource*, !dbg !5817
  store %struct.pnp_resource* %10, %struct.pnp_resource** %tmp4, align 8, !dbg !5818
  %11 = load %struct.pnp_resource*, %struct.pnp_resource** %tmp4, align 8, !dbg !5817
  store %struct.pnp_resource* %11, %struct.pnp_resource** %pnp_res, align 8, !dbg !5820
  br label %for.cond6, !dbg !5820

for.cond6:                                        ; preds = %do.end20, %do.end3
  %12 = load %struct.pnp_resource*, %struct.pnp_resource** %pnp_res, align 8, !dbg !5821
  %list = getelementptr inbounds %struct.pnp_resource, %struct.pnp_resource* %12, i32 0, i32 0, !dbg !5821
  %13 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !5821
  %resources7 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %13, i32 0, i32 16, !dbg !5821
  %cmp8 = icmp eq %struct.list_head* %list, %resources7, !dbg !5821
  %lnot9 = xor i1 %cmp8, true, !dbg !5821
  br i1 %lnot9, label %for.body10, label %for.end, !dbg !5820

for.body10:                                       ; preds = %for.cond6
  %14 = load %struct.pnp_resource*, %struct.pnp_resource** %pnp_res, align 8, !dbg !5823
  %res = getelementptr inbounds %struct.pnp_resource, %struct.pnp_resource* %14, i32 0, i32 1, !dbg !5825
  %start11 = getelementptr inbounds %struct.resource, %struct.resource* %res, i32 0, i32 0, !dbg !5826
  store i64* %start11, i64** %dev_start, align 8, !dbg !5827
  %15 = load %struct.pnp_resource*, %struct.pnp_resource** %pnp_res, align 8, !dbg !5828
  %res12 = getelementptr inbounds %struct.pnp_resource, %struct.pnp_resource* %15, i32 0, i32 1, !dbg !5829
  %end13 = getelementptr inbounds %struct.resource, %struct.resource* %res12, i32 0, i32 1, !dbg !5830
  store i64* %end13, i64** %dev_end, align 8, !dbg !5831
  %16 = load i64, i64* %end.addr, align 8, !dbg !5832
  %17 = load i64*, i64** %dev_start, align 8, !dbg !5832
  %18 = load i64, i64* %17, align 8, !dbg !5832
  %cmp14 = icmp ult i64 %16, %18, !dbg !5832
  br i1 %cmp14, label %if.end, label %lor.lhs.false, !dbg !5832

lor.lhs.false:                                    ; preds = %for.body10
  %19 = load i64*, i64** %dev_end, align 8, !dbg !5832
  %20 = load i64, i64* %19, align 8, !dbg !5832
  %21 = load i64, i64* %start.addr, align 8, !dbg !5832
  %cmp15 = icmp ult i64 %20, %21, !dbg !5832
  br i1 %cmp15, label %if.end, label %if.then, !dbg !5834

if.then:                                          ; preds = %lor.lhs.false
  store i32 1, i32* %retval, align 4, !dbg !5835
  br label %return, !dbg !5835

if.end:                                           ; preds = %lor.lhs.false, %for.body10
  br label %for.inc, !dbg !5836

for.inc:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr16, metadata !5837, metadata !DIExpression()), !dbg !5839
  %22 = load %struct.pnp_resource*, %struct.pnp_resource** %pnp_res, align 8, !dbg !5839
  %list17 = getelementptr inbounds %struct.pnp_resource, %struct.pnp_resource* %22, i32 0, i32 0, !dbg !5839
  %next18 = getelementptr inbounds %struct.list_head, %struct.list_head* %list17, i32 0, i32 0, !dbg !5839
  %23 = load %struct.list_head*, %struct.list_head** %next18, align 8, !dbg !5839
  %24 = bitcast %struct.list_head* %23 to i8*, !dbg !5839
  store i8* %24, i8** %__mptr16, align 8, !dbg !5839
  br label %do.body19, !dbg !5839

do.body19:                                        ; preds = %for.inc
  br label %do.end20, !dbg !5840

do.end20:                                         ; preds = %do.body19
  %25 = load i8*, i8** %__mptr16, align 8, !dbg !5839
  %add.ptr22 = getelementptr i8, i8* %25, i64 0, !dbg !5839
  %26 = bitcast i8* %add.ptr22 to %struct.pnp_resource*, !dbg !5839
  store %struct.pnp_resource* %26, %struct.pnp_resource** %tmp21, align 8, !dbg !5840
  %27 = load %struct.pnp_resource*, %struct.pnp_resource** %tmp21, align 8, !dbg !5839
  store %struct.pnp_resource* %27, %struct.pnp_resource** %pnp_res, align 8, !dbg !5821
  br label %for.cond6, !dbg !5821, !llvm.loop !5842

for.end:                                          ; preds = %for.cond6
  br label %for.inc23, !dbg !5844

for.inc23:                                        ; preds = %for.end
  call void @llvm.dbg.declare(metadata i8** %__mptr24, metadata !5845, metadata !DIExpression()), !dbg !5847
  %28 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !5847
  %global_list25 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %28, i32 0, i32 4, !dbg !5847
  %next26 = getelementptr inbounds %struct.list_head, %struct.list_head* %global_list25, i32 0, i32 0, !dbg !5847
  %29 = load %struct.list_head*, %struct.list_head** %next26, align 8, !dbg !5847
  %30 = bitcast %struct.list_head* %29 to i8*, !dbg !5847
  store i8* %30, i8** %__mptr24, align 8, !dbg !5847
  br label %do.body27, !dbg !5847

do.body27:                                        ; preds = %for.inc23
  br label %do.end28, !dbg !5848

do.end28:                                         ; preds = %do.body27
  %31 = load i8*, i8** %__mptr24, align 8, !dbg !5847
  %add.ptr30 = getelementptr i8, i8* %31, i64 -712, !dbg !5847
  %32 = bitcast i8* %add.ptr30 to %struct.pnp_dev*, !dbg !5847
  store %struct.pnp_dev* %32, %struct.pnp_dev** %tmp29, align 8, !dbg !5848
  %33 = load %struct.pnp_dev*, %struct.pnp_dev** %tmp29, align 8, !dbg !5847
  store %struct.pnp_dev* %33, %struct.pnp_dev** %dev, align 8, !dbg !5811
  br label %for.cond, !dbg !5811, !llvm.loop !5850

for.end31:                                        ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !5852
  br label %return, !dbg !5852

return:                                           ; preds = %for.end31, %if.then
  %34 = load i32, i32* %retval, align 4, !dbg !5853
  ret i32 %34, !dbg !5853
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @pnp_setup_reserve_irq(i8* %str) #5 section ".init.text" !dbg !5854 {
entry:
  %str.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !5855, metadata !DIExpression()), !dbg !5856
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5857, metadata !DIExpression()), !dbg !5858
  store i32 0, i32* %i, align 4, !dbg !5859
  br label %for.cond, !dbg !5861

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !5862
  %cmp = icmp slt i32 %0, 16, !dbg !5864
  br i1 %cmp, label %for.body, label %for.end, !dbg !5865

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !5866
  %idxprom = sext i32 %1 to i64, !dbg !5868
  %arrayidx = getelementptr [16 x i32], [16 x i32]* @pnp_reserve_irq, i64 0, i64 %idxprom, !dbg !5868
  %call = call i32 @get_option(i8** %str.addr, i32* %arrayidx) #9, !dbg !5869
  %cmp1 = icmp ne i32 %call, 2, !dbg !5870
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5871

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !5872

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5873

for.inc:                                          ; preds = %if.end
  %2 = load i32, i32* %i, align 4, !dbg !5874
  %inc = add i32 %2, 1, !dbg !5874
  store i32 %inc, i32* %i, align 4, !dbg !5874
  br label %for.cond, !dbg !5875, !llvm.loop !5876

for.end:                                          ; preds = %if.then, %for.cond
  ret i32 1, !dbg !5878
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @pnp_setup_reserve_dma(i8* %str) #5 section ".init.text" !dbg !5879 {
entry:
  %str.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !5880, metadata !DIExpression()), !dbg !5881
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5882, metadata !DIExpression()), !dbg !5883
  store i32 0, i32* %i, align 4, !dbg !5884
  br label %for.cond, !dbg !5886

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !5887
  %cmp = icmp slt i32 %0, 8, !dbg !5889
  br i1 %cmp, label %for.body, label %for.end, !dbg !5890

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !5891
  %idxprom = sext i32 %1 to i64, !dbg !5893
  %arrayidx = getelementptr [8 x i32], [8 x i32]* @pnp_reserve_dma, i64 0, i64 %idxprom, !dbg !5893
  %call = call i32 @get_option(i8** %str.addr, i32* %arrayidx) #9, !dbg !5894
  %cmp1 = icmp ne i32 %call, 2, !dbg !5895
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5896

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !5897

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5898

for.inc:                                          ; preds = %if.end
  %2 = load i32, i32* %i, align 4, !dbg !5899
  %inc = add i32 %2, 1, !dbg !5899
  store i32 %inc, i32* %i, align 4, !dbg !5899
  br label %for.cond, !dbg !5900, !llvm.loop !5901

for.end:                                          ; preds = %if.then, %for.cond
  ret i32 1, !dbg !5903
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @pnp_setup_reserve_io(i8* %str) #5 section ".init.text" !dbg !5904 {
entry:
  %str.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !5905, metadata !DIExpression()), !dbg !5906
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5907, metadata !DIExpression()), !dbg !5908
  store i32 0, i32* %i, align 4, !dbg !5909
  br label %for.cond, !dbg !5911

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !5912
  %cmp = icmp slt i32 %0, 16, !dbg !5914
  br i1 %cmp, label %for.body, label %for.end, !dbg !5915

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !5916
  %idxprom = sext i32 %1 to i64, !dbg !5918
  %arrayidx = getelementptr [16 x i32], [16 x i32]* @pnp_reserve_io, i64 0, i64 %idxprom, !dbg !5918
  %call = call i32 @get_option(i8** %str.addr, i32* %arrayidx) #9, !dbg !5919
  %cmp1 = icmp ne i32 %call, 2, !dbg !5920
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5921

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !5922

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5923

for.inc:                                          ; preds = %if.end
  %2 = load i32, i32* %i, align 4, !dbg !5924
  %inc = add i32 %2, 1, !dbg !5924
  store i32 %inc, i32* %i, align 4, !dbg !5924
  br label %for.cond, !dbg !5925, !llvm.loop !5926

for.end:                                          ; preds = %if.then, %for.cond
  ret i32 1, !dbg !5928
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @pnp_setup_reserve_mem(i8* %str) #5 section ".init.text" !dbg !5929 {
entry:
  %str.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !5930, metadata !DIExpression()), !dbg !5931
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5932, metadata !DIExpression()), !dbg !5933
  store i32 0, i32* %i, align 4, !dbg !5934
  br label %for.cond, !dbg !5936

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !5937
  %cmp = icmp slt i32 %0, 16, !dbg !5939
  br i1 %cmp, label %for.body, label %for.end, !dbg !5940

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !5941
  %idxprom = sext i32 %1 to i64, !dbg !5943
  %arrayidx = getelementptr [16 x i32], [16 x i32]* @pnp_reserve_mem, i64 0, i64 %idxprom, !dbg !5943
  %call = call i32 @get_option(i8** %str.addr, i32* %arrayidx) #9, !dbg !5944
  %cmp1 = icmp ne i32 %call, 2, !dbg !5945
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5946

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !5947

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5948

for.inc:                                          ; preds = %if.end
  %2 = load i32, i32* %i, align 4, !dbg !5949
  %inc = add i32 %2, 1, !dbg !5949
  store i32 %inc, i32* %i, align 4, !dbg !5949
  br label %for.cond, !dbg !5950, !llvm.loop !5951

for.end:                                          ; preds = %if.then, %for.cond
  ret i32 1, !dbg !5953
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !5954 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !5957, metadata !DIExpression()), !dbg !5961
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !5967, metadata !DIExpression()), !dbg !5968
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !5969, metadata !DIExpression()), !dbg !5970
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !5971, metadata !DIExpression()), !dbg !5972
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !5973, metadata !DIExpression()), !dbg !5977
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !5979, metadata !DIExpression()), !dbg !5983
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !5985, metadata !DIExpression()), !dbg !5989
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !5994, metadata !DIExpression()), !dbg !5995
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !5996, metadata !DIExpression()), !dbg !5997
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5998, metadata !DIExpression()), !dbg !5999
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !6000, metadata !DIExpression()), !dbg !6001
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !6002, metadata !DIExpression()), !dbg !6003
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !6004, metadata !DIExpression()), !dbg !6005
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !6006, metadata !DIExpression()), !dbg !6007
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !6008, metadata !DIExpression()), !dbg !6009
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6010, metadata !DIExpression()), !dbg !6011
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6012, metadata !DIExpression()), !dbg !6013
  %0 = load i64, i64* %size.addr, align 8, !dbg !6014
  %1 = load i32, i32* %flags.addr, align 4, !dbg !6015
  %or = or i32 %1, 256, !dbg !6016
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !6017
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #11, !dbg !6018
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !6019

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !6020
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !6021
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !6022

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !6023
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !6024
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !6025
  %call.i.i = call i32 @get_order(i64 %7) #13, !dbg !6026
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !6003
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !6027
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !6028
  %10 = load i32, i32* %order.i.i, align 4, !dbg !6029
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !6030
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !6031
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !6032
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #10, !dbg !6033
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !6033
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !6033
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !6033
  call void @llvm.assume(i1 %maskcond.i.i.i) #11, !dbg !6033
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !6034
  br label %kmalloc.exit, !dbg !6034

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !6035
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6036
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !6036
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !6038

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !6039
  br label %kmalloc_index.exit.i, !dbg !6039

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6040
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !6042
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !6043

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !6044
  br label %kmalloc_index.exit.i, !dbg !6044

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6045
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !6047
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !6048

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6049
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !6050
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !6051

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !6052
  br label %kmalloc_index.exit.i, !dbg !6052

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6053
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !6055
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !6056

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6057
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !6058
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !6059

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !6060
  br label %kmalloc_index.exit.i, !dbg !6060

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6061
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !6063
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !6064

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !6065
  br label %kmalloc_index.exit.i, !dbg !6065

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6066
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !6068
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !6069

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !6070
  br label %kmalloc_index.exit.i, !dbg !6070

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6071
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !6073
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !6074

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !6075
  br label %kmalloc_index.exit.i, !dbg !6075

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6076
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !6078
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !6079

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !6080
  br label %kmalloc_index.exit.i, !dbg !6080

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6081
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !6083
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !6084

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !6085
  br label %kmalloc_index.exit.i, !dbg !6085

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6086
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !6088
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !6089

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !6090
  br label %kmalloc_index.exit.i, !dbg !6090

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6091
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !6093
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !6094

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !6095
  br label %kmalloc_index.exit.i, !dbg !6095

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6096
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !6098
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !6099

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !6100
  br label %kmalloc_index.exit.i, !dbg !6100

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6101
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !6103
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !6104

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !6105
  br label %kmalloc_index.exit.i, !dbg !6105

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6106
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !6108
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !6109

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !6110
  br label %kmalloc_index.exit.i, !dbg !6110

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6111
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !6113
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !6114

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !6115
  br label %kmalloc_index.exit.i, !dbg !6115

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6116
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !6118
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !6119

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !6120
  br label %kmalloc_index.exit.i, !dbg !6120

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6121
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !6123
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !6124

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !6125
  br label %kmalloc_index.exit.i, !dbg !6125

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6126
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !6128
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !6129

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !6130
  br label %kmalloc_index.exit.i, !dbg !6130

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6131
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !6133
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !6134

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !6135
  br label %kmalloc_index.exit.i, !dbg !6135

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6136
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !6138
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !6139

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !6140
  br label %kmalloc_index.exit.i, !dbg !6140

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6141
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !6143
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !6144

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !6145
  br label %kmalloc_index.exit.i, !dbg !6145

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6146
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !6148
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !6149

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !6150
  br label %kmalloc_index.exit.i, !dbg !6150

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6151
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !6153
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !6154

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !6155
  br label %kmalloc_index.exit.i, !dbg !6155

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6156
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !6158
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !6159

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !6160
  br label %kmalloc_index.exit.i, !dbg !6160

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6161
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !6163
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !6164

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !6165
  br label %kmalloc_index.exit.i, !dbg !6165

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6166
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !6168
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !6169

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !6170
  br label %kmalloc_index.exit.i, !dbg !6170

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6171
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !6173
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !6174

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !6175
  br label %kmalloc_index.exit.i, !dbg !6175

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6176
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !6178
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !6179

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !6180
  br label %kmalloc_index.exit.i, !dbg !6180

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 382, i32 0, i64 12) #11, !dbg !6181, !srcloc !6184
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #11, !dbg !6185, !srcloc !6188
  unreachable, !dbg !6189

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !6190
  store i32 %45, i32* %index.i, align 4, !dbg !6191
  %46 = load i32, i32* %index.i, align 4, !dbg !6192
  %tobool.i = icmp ne i32 %46, 0, !dbg !6192
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !6194

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !6195
  br label %kmalloc.exit, !dbg !6195

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !6196
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6197
  %and.i.i = and i32 %48, 17, !dbg !6197
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !6197
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !6197
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !6197
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !6197
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !6199

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !6200
  br label %kmalloc_type.exit.i, !dbg !6200

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6201
  %and2.i.i = and i32 %49, 1, !dbg !6202
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !6201
  %50 = zext i1 %tobool3.i.i to i64, !dbg !6201
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !6201
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !6203
  br label %kmalloc_type.exit.i, !dbg !6203

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !6204
  %idxprom.i = zext i32 %51 to i64, !dbg !6205
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !6205
  %52 = load i32, i32* %index.i, align 4, !dbg !6206
  %idxprom6.i = zext i32 %52 to i64, !dbg !6205
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !6205
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !6205
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !6207
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !6208
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6209
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6210
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #10, !dbg !6211
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !6211
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !6211
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !6211
  call void @llvm.assume(i1 %maskcond.i.i) #11, !dbg !6211
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5972
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6212
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !6213
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !6214
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6215
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #10, !dbg !6216
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !6217
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !6218
  store i8* %62, i8** %retval.i, align 8, !dbg !6219
  br label %kmalloc.exit, !dbg !6219

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !6220
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !6221
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #10, !dbg !6222
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !6222
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !6222
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !6222
  call void @llvm.assume(i1 %maskcond.i) #11, !dbg !6222
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !6223
  br label %kmalloc.exit, !dbg !6223

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !6224
  ret i8* %65, !dbg !6225
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !6226 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !6229, metadata !DIExpression()), !dbg !6230
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !6231, metadata !DIExpression()), !dbg !6232
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6233
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !6234
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !6235
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !6235
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !6236
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #9, !dbg !6237
  ret void, !dbg !6238
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #7

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #8 !dbg !6239 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6243, metadata !DIExpression()), !dbg !6247
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6249, metadata !DIExpression()), !dbg !6250
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6251, metadata !DIExpression()), !dbg !6252
  %0 = load i64, i64* %size.addr, align 8, !dbg !6253
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6255
  br i1 %1, label %if.then, label %if.end447, !dbg !6256

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !6257
  %tobool = icmp ne i64 %2, 0, !dbg !6257
  br i1 %tobool, label %if.end, label %if.then1, !dbg !6260

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !6261
  br label %return, !dbg !6261

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !6262
  %cmp = icmp ult i64 %3, 4096, !dbg !6264
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !6265

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !6266
  br label %return, !dbg !6266

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub = sub i64 %4, 1, !dbg !6267
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !6267
  br i1 %5, label %cond.true, label %cond.false442, !dbg !6267

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub4 = sub i64 %6, 1, !dbg !6267
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !6267
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !6267

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub6 = sub i64 %8, 1, !dbg !6267
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !6267
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !6267

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !6267

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub9 = sub i64 %9, 1, !dbg !6267
  %and = and i64 %sub9, -9223372036854775808, !dbg !6267
  %tobool10 = icmp ne i64 %and, 0, !dbg !6267
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !6267

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !6267

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub13 = sub i64 %10, 1, !dbg !6267
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !6267
  %tobool15 = icmp ne i64 %and14, 0, !dbg !6267
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !6267

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !6267

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub18 = sub i64 %11, 1, !dbg !6267
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !6267
  %tobool20 = icmp ne i64 %and19, 0, !dbg !6267
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !6267

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !6267

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub23 = sub i64 %12, 1, !dbg !6267
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !6267
  %tobool25 = icmp ne i64 %and24, 0, !dbg !6267
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !6267

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !6267

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub28 = sub i64 %13, 1, !dbg !6267
  %and29 = and i64 %sub28, 576460752303423488, !dbg !6267
  %tobool30 = icmp ne i64 %and29, 0, !dbg !6267
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !6267

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !6267

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub33 = sub i64 %14, 1, !dbg !6267
  %and34 = and i64 %sub33, 288230376151711744, !dbg !6267
  %tobool35 = icmp ne i64 %and34, 0, !dbg !6267
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !6267

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !6267

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub38 = sub i64 %15, 1, !dbg !6267
  %and39 = and i64 %sub38, 144115188075855872, !dbg !6267
  %tobool40 = icmp ne i64 %and39, 0, !dbg !6267
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !6267

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !6267

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub43 = sub i64 %16, 1, !dbg !6267
  %and44 = and i64 %sub43, 72057594037927936, !dbg !6267
  %tobool45 = icmp ne i64 %and44, 0, !dbg !6267
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !6267

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !6267

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub48 = sub i64 %17, 1, !dbg !6267
  %and49 = and i64 %sub48, 36028797018963968, !dbg !6267
  %tobool50 = icmp ne i64 %and49, 0, !dbg !6267
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !6267

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !6267

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub53 = sub i64 %18, 1, !dbg !6267
  %and54 = and i64 %sub53, 18014398509481984, !dbg !6267
  %tobool55 = icmp ne i64 %and54, 0, !dbg !6267
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !6267

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !6267

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub58 = sub i64 %19, 1, !dbg !6267
  %and59 = and i64 %sub58, 9007199254740992, !dbg !6267
  %tobool60 = icmp ne i64 %and59, 0, !dbg !6267
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !6267

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !6267

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub63 = sub i64 %20, 1, !dbg !6267
  %and64 = and i64 %sub63, 4503599627370496, !dbg !6267
  %tobool65 = icmp ne i64 %and64, 0, !dbg !6267
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !6267

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !6267

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub68 = sub i64 %21, 1, !dbg !6267
  %and69 = and i64 %sub68, 2251799813685248, !dbg !6267
  %tobool70 = icmp ne i64 %and69, 0, !dbg !6267
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !6267

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !6267

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub73 = sub i64 %22, 1, !dbg !6267
  %and74 = and i64 %sub73, 1125899906842624, !dbg !6267
  %tobool75 = icmp ne i64 %and74, 0, !dbg !6267
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !6267

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !6267

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub78 = sub i64 %23, 1, !dbg !6267
  %and79 = and i64 %sub78, 562949953421312, !dbg !6267
  %tobool80 = icmp ne i64 %and79, 0, !dbg !6267
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !6267

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !6267

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub83 = sub i64 %24, 1, !dbg !6267
  %and84 = and i64 %sub83, 281474976710656, !dbg !6267
  %tobool85 = icmp ne i64 %and84, 0, !dbg !6267
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !6267

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !6267

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub88 = sub i64 %25, 1, !dbg !6267
  %and89 = and i64 %sub88, 140737488355328, !dbg !6267
  %tobool90 = icmp ne i64 %and89, 0, !dbg !6267
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !6267

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !6267

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub93 = sub i64 %26, 1, !dbg !6267
  %and94 = and i64 %sub93, 70368744177664, !dbg !6267
  %tobool95 = icmp ne i64 %and94, 0, !dbg !6267
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !6267

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !6267

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub98 = sub i64 %27, 1, !dbg !6267
  %and99 = and i64 %sub98, 35184372088832, !dbg !6267
  %tobool100 = icmp ne i64 %and99, 0, !dbg !6267
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !6267

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !6267

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub103 = sub i64 %28, 1, !dbg !6267
  %and104 = and i64 %sub103, 17592186044416, !dbg !6267
  %tobool105 = icmp ne i64 %and104, 0, !dbg !6267
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !6267

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !6267

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub108 = sub i64 %29, 1, !dbg !6267
  %and109 = and i64 %sub108, 8796093022208, !dbg !6267
  %tobool110 = icmp ne i64 %and109, 0, !dbg !6267
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !6267

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !6267

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub113 = sub i64 %30, 1, !dbg !6267
  %and114 = and i64 %sub113, 4398046511104, !dbg !6267
  %tobool115 = icmp ne i64 %and114, 0, !dbg !6267
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !6267

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !6267

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub118 = sub i64 %31, 1, !dbg !6267
  %and119 = and i64 %sub118, 2199023255552, !dbg !6267
  %tobool120 = icmp ne i64 %and119, 0, !dbg !6267
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !6267

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !6267

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub123 = sub i64 %32, 1, !dbg !6267
  %and124 = and i64 %sub123, 1099511627776, !dbg !6267
  %tobool125 = icmp ne i64 %and124, 0, !dbg !6267
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !6267

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !6267

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub128 = sub i64 %33, 1, !dbg !6267
  %and129 = and i64 %sub128, 549755813888, !dbg !6267
  %tobool130 = icmp ne i64 %and129, 0, !dbg !6267
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !6267

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !6267

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub133 = sub i64 %34, 1, !dbg !6267
  %and134 = and i64 %sub133, 274877906944, !dbg !6267
  %tobool135 = icmp ne i64 %and134, 0, !dbg !6267
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !6267

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !6267

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub138 = sub i64 %35, 1, !dbg !6267
  %and139 = and i64 %sub138, 137438953472, !dbg !6267
  %tobool140 = icmp ne i64 %and139, 0, !dbg !6267
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !6267

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !6267

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub143 = sub i64 %36, 1, !dbg !6267
  %and144 = and i64 %sub143, 68719476736, !dbg !6267
  %tobool145 = icmp ne i64 %and144, 0, !dbg !6267
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !6267

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !6267

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub148 = sub i64 %37, 1, !dbg !6267
  %and149 = and i64 %sub148, 34359738368, !dbg !6267
  %tobool150 = icmp ne i64 %and149, 0, !dbg !6267
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !6267

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !6267

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub153 = sub i64 %38, 1, !dbg !6267
  %and154 = and i64 %sub153, 17179869184, !dbg !6267
  %tobool155 = icmp ne i64 %and154, 0, !dbg !6267
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !6267

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !6267

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub158 = sub i64 %39, 1, !dbg !6267
  %and159 = and i64 %sub158, 8589934592, !dbg !6267
  %tobool160 = icmp ne i64 %and159, 0, !dbg !6267
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !6267

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !6267

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub163 = sub i64 %40, 1, !dbg !6267
  %and164 = and i64 %sub163, 4294967296, !dbg !6267
  %tobool165 = icmp ne i64 %and164, 0, !dbg !6267
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !6267

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !6267

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub168 = sub i64 %41, 1, !dbg !6267
  %and169 = and i64 %sub168, 2147483648, !dbg !6267
  %tobool170 = icmp ne i64 %and169, 0, !dbg !6267
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !6267

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !6267

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub173 = sub i64 %42, 1, !dbg !6267
  %and174 = and i64 %sub173, 1073741824, !dbg !6267
  %tobool175 = icmp ne i64 %and174, 0, !dbg !6267
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !6267

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !6267

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub178 = sub i64 %43, 1, !dbg !6267
  %and179 = and i64 %sub178, 536870912, !dbg !6267
  %tobool180 = icmp ne i64 %and179, 0, !dbg !6267
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !6267

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !6267

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub183 = sub i64 %44, 1, !dbg !6267
  %and184 = and i64 %sub183, 268435456, !dbg !6267
  %tobool185 = icmp ne i64 %and184, 0, !dbg !6267
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !6267

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !6267

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub188 = sub i64 %45, 1, !dbg !6267
  %and189 = and i64 %sub188, 134217728, !dbg !6267
  %tobool190 = icmp ne i64 %and189, 0, !dbg !6267
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !6267

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !6267

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub193 = sub i64 %46, 1, !dbg !6267
  %and194 = and i64 %sub193, 67108864, !dbg !6267
  %tobool195 = icmp ne i64 %and194, 0, !dbg !6267
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !6267

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !6267

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub198 = sub i64 %47, 1, !dbg !6267
  %and199 = and i64 %sub198, 33554432, !dbg !6267
  %tobool200 = icmp ne i64 %and199, 0, !dbg !6267
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !6267

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !6267

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub203 = sub i64 %48, 1, !dbg !6267
  %and204 = and i64 %sub203, 16777216, !dbg !6267
  %tobool205 = icmp ne i64 %and204, 0, !dbg !6267
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !6267

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !6267

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub208 = sub i64 %49, 1, !dbg !6267
  %and209 = and i64 %sub208, 8388608, !dbg !6267
  %tobool210 = icmp ne i64 %and209, 0, !dbg !6267
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !6267

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !6267

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub213 = sub i64 %50, 1, !dbg !6267
  %and214 = and i64 %sub213, 4194304, !dbg !6267
  %tobool215 = icmp ne i64 %and214, 0, !dbg !6267
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !6267

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !6267

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub218 = sub i64 %51, 1, !dbg !6267
  %and219 = and i64 %sub218, 2097152, !dbg !6267
  %tobool220 = icmp ne i64 %and219, 0, !dbg !6267
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !6267

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !6267

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub223 = sub i64 %52, 1, !dbg !6267
  %and224 = and i64 %sub223, 1048576, !dbg !6267
  %tobool225 = icmp ne i64 %and224, 0, !dbg !6267
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !6267

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !6267

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub228 = sub i64 %53, 1, !dbg !6267
  %and229 = and i64 %sub228, 524288, !dbg !6267
  %tobool230 = icmp ne i64 %and229, 0, !dbg !6267
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !6267

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !6267

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub233 = sub i64 %54, 1, !dbg !6267
  %and234 = and i64 %sub233, 262144, !dbg !6267
  %tobool235 = icmp ne i64 %and234, 0, !dbg !6267
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !6267

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !6267

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub238 = sub i64 %55, 1, !dbg !6267
  %and239 = and i64 %sub238, 131072, !dbg !6267
  %tobool240 = icmp ne i64 %and239, 0, !dbg !6267
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !6267

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !6267

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub243 = sub i64 %56, 1, !dbg !6267
  %and244 = and i64 %sub243, 65536, !dbg !6267
  %tobool245 = icmp ne i64 %and244, 0, !dbg !6267
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !6267

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !6267

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub248 = sub i64 %57, 1, !dbg !6267
  %and249 = and i64 %sub248, 32768, !dbg !6267
  %tobool250 = icmp ne i64 %and249, 0, !dbg !6267
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !6267

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !6267

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub253 = sub i64 %58, 1, !dbg !6267
  %and254 = and i64 %sub253, 16384, !dbg !6267
  %tobool255 = icmp ne i64 %and254, 0, !dbg !6267
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !6267

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !6267

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub258 = sub i64 %59, 1, !dbg !6267
  %and259 = and i64 %sub258, 8192, !dbg !6267
  %tobool260 = icmp ne i64 %and259, 0, !dbg !6267
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !6267

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !6267

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub263 = sub i64 %60, 1, !dbg !6267
  %and264 = and i64 %sub263, 4096, !dbg !6267
  %tobool265 = icmp ne i64 %and264, 0, !dbg !6267
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !6267

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !6267

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub268 = sub i64 %61, 1, !dbg !6267
  %and269 = and i64 %sub268, 2048, !dbg !6267
  %tobool270 = icmp ne i64 %and269, 0, !dbg !6267
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !6267

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !6267

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub273 = sub i64 %62, 1, !dbg !6267
  %and274 = and i64 %sub273, 1024, !dbg !6267
  %tobool275 = icmp ne i64 %and274, 0, !dbg !6267
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !6267

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !6267

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub278 = sub i64 %63, 1, !dbg !6267
  %and279 = and i64 %sub278, 512, !dbg !6267
  %tobool280 = icmp ne i64 %and279, 0, !dbg !6267
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !6267

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !6267

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub283 = sub i64 %64, 1, !dbg !6267
  %and284 = and i64 %sub283, 256, !dbg !6267
  %tobool285 = icmp ne i64 %and284, 0, !dbg !6267
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !6267

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !6267

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub288 = sub i64 %65, 1, !dbg !6267
  %and289 = and i64 %sub288, 128, !dbg !6267
  %tobool290 = icmp ne i64 %and289, 0, !dbg !6267
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !6267

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !6267

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub293 = sub i64 %66, 1, !dbg !6267
  %and294 = and i64 %sub293, 64, !dbg !6267
  %tobool295 = icmp ne i64 %and294, 0, !dbg !6267
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !6267

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !6267

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub298 = sub i64 %67, 1, !dbg !6267
  %and299 = and i64 %sub298, 32, !dbg !6267
  %tobool300 = icmp ne i64 %and299, 0, !dbg !6267
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !6267

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !6267

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub303 = sub i64 %68, 1, !dbg !6267
  %and304 = and i64 %sub303, 16, !dbg !6267
  %tobool305 = icmp ne i64 %and304, 0, !dbg !6267
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !6267

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !6267

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub308 = sub i64 %69, 1, !dbg !6267
  %and309 = and i64 %sub308, 8, !dbg !6267
  %tobool310 = icmp ne i64 %and309, 0, !dbg !6267
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !6267

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !6267

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub313 = sub i64 %70, 1, !dbg !6267
  %and314 = and i64 %sub313, 4, !dbg !6267
  %tobool315 = icmp ne i64 %and314, 0, !dbg !6267
  %71 = zext i1 %tobool315 to i64, !dbg !6267
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !6267
  br label %cond.end, !dbg !6267

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !6267
  br label %cond.end317, !dbg !6267

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !6267
  br label %cond.end319, !dbg !6267

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !6267
  br label %cond.end321, !dbg !6267

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !6267
  br label %cond.end323, !dbg !6267

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !6267
  br label %cond.end325, !dbg !6267

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !6267
  br label %cond.end327, !dbg !6267

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !6267
  br label %cond.end329, !dbg !6267

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !6267
  br label %cond.end331, !dbg !6267

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !6267
  br label %cond.end333, !dbg !6267

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !6267
  br label %cond.end335, !dbg !6267

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !6267
  br label %cond.end337, !dbg !6267

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !6267
  br label %cond.end339, !dbg !6267

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !6267
  br label %cond.end341, !dbg !6267

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !6267
  br label %cond.end343, !dbg !6267

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !6267
  br label %cond.end345, !dbg !6267

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !6267
  br label %cond.end347, !dbg !6267

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !6267
  br label %cond.end349, !dbg !6267

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !6267
  br label %cond.end351, !dbg !6267

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !6267
  br label %cond.end353, !dbg !6267

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !6267
  br label %cond.end355, !dbg !6267

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !6267
  br label %cond.end357, !dbg !6267

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !6267
  br label %cond.end359, !dbg !6267

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !6267
  br label %cond.end361, !dbg !6267

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !6267
  br label %cond.end363, !dbg !6267

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !6267
  br label %cond.end365, !dbg !6267

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !6267
  br label %cond.end367, !dbg !6267

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !6267
  br label %cond.end369, !dbg !6267

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !6267
  br label %cond.end371, !dbg !6267

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !6267
  br label %cond.end373, !dbg !6267

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !6267
  br label %cond.end375, !dbg !6267

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !6267
  br label %cond.end377, !dbg !6267

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !6267
  br label %cond.end379, !dbg !6267

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !6267
  br label %cond.end381, !dbg !6267

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !6267
  br label %cond.end383, !dbg !6267

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !6267
  br label %cond.end385, !dbg !6267

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !6267
  br label %cond.end387, !dbg !6267

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !6267
  br label %cond.end389, !dbg !6267

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !6267
  br label %cond.end391, !dbg !6267

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !6267
  br label %cond.end393, !dbg !6267

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !6267
  br label %cond.end395, !dbg !6267

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !6267
  br label %cond.end397, !dbg !6267

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !6267
  br label %cond.end399, !dbg !6267

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !6267
  br label %cond.end401, !dbg !6267

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !6267
  br label %cond.end403, !dbg !6267

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !6267
  br label %cond.end405, !dbg !6267

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !6267
  br label %cond.end407, !dbg !6267

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !6267
  br label %cond.end409, !dbg !6267

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !6267
  br label %cond.end411, !dbg !6267

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !6267
  br label %cond.end413, !dbg !6267

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !6267
  br label %cond.end415, !dbg !6267

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !6267
  br label %cond.end417, !dbg !6267

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !6267
  br label %cond.end419, !dbg !6267

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !6267
  br label %cond.end421, !dbg !6267

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !6267
  br label %cond.end423, !dbg !6267

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !6267
  br label %cond.end425, !dbg !6267

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !6267
  br label %cond.end427, !dbg !6267

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !6267
  br label %cond.end429, !dbg !6267

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !6267
  br label %cond.end431, !dbg !6267

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !6267
  br label %cond.end433, !dbg !6267

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !6267
  br label %cond.end435, !dbg !6267

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !6267
  br label %cond.end437, !dbg !6267

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !6267
  br label %cond.end440, !dbg !6267

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !6267

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !6267
  br label %cond.end444, !dbg !6267

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !6267
  %sub443 = sub i64 %72, 1, !dbg !6267
  %call = call i32 @__ilog2_u64(i64 %sub443) #13, !dbg !6267
  br label %cond.end444, !dbg !6267

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !6267
  %sub446 = sub i32 %cond445, 12, !dbg !6268
  %add = add i32 %sub446, 1, !dbg !6269
  store i32 %add, i32* %retval, align 4, !dbg !6270
  br label %return, !dbg !6270

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !6271
  %dec = add i64 %73, -1, !dbg !6271
  store i64 %dec, i64* %size.addr, align 8, !dbg !6271
  %74 = load i64, i64* %size.addr, align 8, !dbg !6272
  %shr = lshr i64 %74, 12, !dbg !6272
  store i64 %shr, i64* %size.addr, align 8, !dbg !6272
  %75 = load i64, i64* %size.addr, align 8, !dbg !6273
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6250
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !6274
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !6275
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #14, !dbg !6274, !srcloc !6276
  store i32 %78, i32* %bitpos.i, align 4, !dbg !6274
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !6277
  %add.i = add i32 %79, 1, !dbg !6278
  store i32 %add.i, i32* %retval, align 4, !dbg !6279
  br label %return, !dbg !6279

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !6280
  ret i32 %80, !dbg !6280
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #8 !dbg !6281 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6243, metadata !DIExpression()), !dbg !6285
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6249, metadata !DIExpression()), !dbg !6287
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !6288, metadata !DIExpression()), !dbg !6289
  %0 = load i64, i64* %n.addr, align 8, !dbg !6290
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6287
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !6291
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !6292
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #14, !dbg !6291, !srcloc !6276
  store i32 %3, i32* %bitpos.i, align 4, !dbg !6291
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !6293
  %add.i = add i32 %4, 1, !dbg !6294
  %sub = sub i32 %add.i, 1, !dbg !6295
  ret i32 %sub, !dbg !6296
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !6297 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !6301, metadata !DIExpression()), !dbg !6302
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !6303, metadata !DIExpression()), !dbg !6304
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6305, metadata !DIExpression()), !dbg !6306
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6307, metadata !DIExpression()), !dbg !6308
  %0 = load i8*, i8** %object.addr, align 8, !dbg !6309
  ret i8* %0, !dbg !6310
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !6311 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !6314, metadata !DIExpression()), !dbg !6315
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !6316, metadata !DIExpression()), !dbg !6317
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !6318, metadata !DIExpression()), !dbg !6319
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6320
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6322
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6323
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #9, !dbg !6324
  br i1 %call, label %if.end, label %if.then, !dbg !6325

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !6326

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6327
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6328
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !6329
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !6330
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6331
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6332
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !6333
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !6334
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6335
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6336
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !6337
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !6338
  br label %do.body, !dbg !6339

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !6340

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !6342

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !6340

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6344
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6344
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !6344
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !6344
  br label %do.end7, !dbg !6344

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !6340

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !6346
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !6347 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !6350, metadata !DIExpression()), !dbg !6351
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !6352, metadata !DIExpression()), !dbg !6353
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !6354, metadata !DIExpression()), !dbg !6355
  ret i1 true, !dbg !6356
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !6357 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !6361, metadata !DIExpression()), !dbg !6362
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !6363, metadata !DIExpression()), !dbg !6364
  ret i1 true, !dbg !6365
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !6366 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !6370, metadata !DIExpression()), !dbg !6371
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6372, metadata !DIExpression()), !dbg !6373
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !6374, metadata !DIExpression()), !dbg !6375
  ret void, !dbg !6376
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !6377 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !6378, metadata !DIExpression()), !dbg !6379
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6380
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #9, !dbg !6382
  br i1 %call, label %if.end, label %if.then, !dbg !6383

if.then:                                          ; preds = %entry
  br label %return, !dbg !6384

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6385
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !6386
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !6386
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6387
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !6388
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !6388
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #9, !dbg !6389
  br label %return, !dbg !6390

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6390
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !6391 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !6394, metadata !DIExpression()), !dbg !6395
  ret i1 true, !dbg !6396
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !6397 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !6398, metadata !DIExpression()), !dbg !6399
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !6400, metadata !DIExpression()), !dbg !6401
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6402
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6403
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !6404
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !6405
  br label %do.body, !dbg !6406

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6407

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6409

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6407

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6411
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6411
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !6411
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !6411
  br label %do.end5, !dbg !6411

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6407

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6413
}

; Function Attrs: noredzone
declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, %struct.pci_dev*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci_dev_uses_irq(%struct.pnp_dev* %pnp, %struct.pci_dev* %pci, i32 %irq) #0 !dbg !6414 {
entry:
  %retval = alloca i32, align 4
  %pnp.addr = alloca %struct.pnp_dev*, align 8
  %pci.addr = alloca %struct.pci_dev*, align 8
  %irq.addr = alloca i32, align 4
  %class = alloca i32, align 4
  %progif = alloca i8, align 1
  %tmp = alloca i32, align 4
  %tmp26 = alloca i32, align 4
  store %struct.pnp_dev* %pnp, %struct.pnp_dev** %pnp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %pnp.addr, metadata !6417, metadata !DIExpression()), !dbg !6418
  store %struct.pci_dev* %pci, %struct.pci_dev** %pci.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pci.addr, metadata !6419, metadata !DIExpression()), !dbg !6420
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !6421, metadata !DIExpression()), !dbg !6422
  call void @llvm.dbg.declare(metadata i32* %class, metadata !6423, metadata !DIExpression()), !dbg !6424
  call void @llvm.dbg.declare(metadata i8* %progif, metadata !6425, metadata !DIExpression()), !dbg !6426
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pci.addr, align 8, !dbg !6427
  %irq1 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 43, !dbg !6429
  %1 = load i32, i32* %irq1, align 4, !dbg !6429
  %2 = load i32, i32* %irq.addr, align 4, !dbg !6430
  %cmp = icmp eq i32 %1, %2, !dbg !6431
  br i1 %cmp, label %if.then, label %if.end3, !dbg !6432

if.then:                                          ; preds = %entry
  %3 = load i32, i32* @pnp_debug, align 4, !dbg !6433
  %tobool = icmp ne i32 %3, 0, !dbg !6433
  br i1 %tobool, label %if.then2, label %if.end, !dbg !6437

if.then2:                                         ; preds = %if.then
  %4 = load %struct.pnp_dev*, %struct.pnp_dev** %pnp.addr, align 8, !dbg !6433
  %dev = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %4, i32 0, i32 0, !dbg !6433
  %5 = load %struct.pci_dev*, %struct.pci_dev** %pci.addr, align 8, !dbg !6433
  %call = call i8* @pci_name(%struct.pci_dev* %5) #9, !dbg !6433
  %6 = load i32, i32* %irq.addr, align 4, !dbg !6433
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %struct.device* %dev, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i8* %call, i32 %6) #12, !dbg !6433
  br label %if.end, !dbg !6433

if.end:                                           ; preds = %if.then2, %if.then
  store i32 0, i32* %tmp, align 4, !dbg !6433
  %7 = load i32, i32* %tmp, align 4, !dbg !6437
  store i32 1, i32* %retval, align 4, !dbg !6438
  br label %return, !dbg !6438

if.end3:                                          ; preds = %entry
  %8 = load %struct.pci_dev*, %struct.pci_dev** %pci.addr, align 8, !dbg !6439
  %call4 = call i32 @pci_read_config_dword(%struct.pci_dev* %8, i32 8, i32* %class) #9, !dbg !6440
  %9 = load i32, i32* %class, align 4, !dbg !6441
  %shr = lshr i32 %9, 8, !dbg !6441
  store i32 %shr, i32* %class, align 4, !dbg !6441
  %10 = load i32, i32* %class, align 4, !dbg !6442
  %and = and i32 %10, 255, !dbg !6443
  %conv = trunc i32 %and to i8, !dbg !6442
  store i8 %conv, i8* %progif, align 1, !dbg !6444
  %11 = load i32, i32* %class, align 4, !dbg !6445
  %shr5 = lshr i32 %11, 8, !dbg !6445
  store i32 %shr5, i32* %class, align 4, !dbg !6445
  %12 = load i32, i32* %class, align 4, !dbg !6446
  %cmp6 = icmp eq i32 %12, 257, !dbg !6448
  br i1 %cmp6, label %if.then8, label %if.end29, !dbg !6449

if.then8:                                         ; preds = %if.end3
  %13 = load i8, i8* %progif, align 1, !dbg !6450
  %conv9 = zext i8 %13 to i32, !dbg !6450
  %and10 = and i32 %conv9, 5, !dbg !6453
  %cmp11 = icmp ne i32 %and10, 5, !dbg !6454
  br i1 %cmp11, label %if.then13, label %if.end28, !dbg !6455

if.then13:                                        ; preds = %if.then8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %pci.addr, align 8, !dbg !6456
  %call14 = call i32 @pci_get_legacy_ide_irq(%struct.pci_dev* %14, i32 0) #9, !dbg !6458
  %15 = load i32, i32* %irq.addr, align 4, !dbg !6459
  %cmp15 = icmp eq i32 %call14, %15, !dbg !6460
  br i1 %cmp15, label %if.then20, label %lor.lhs.false, !dbg !6461

lor.lhs.false:                                    ; preds = %if.then13
  %16 = load %struct.pci_dev*, %struct.pci_dev** %pci.addr, align 8, !dbg !6462
  %call17 = call i32 @pci_get_legacy_ide_irq(%struct.pci_dev* %16, i32 1) #9, !dbg !6463
  %17 = load i32, i32* %irq.addr, align 4, !dbg !6464
  %cmp18 = icmp eq i32 %call17, %17, !dbg !6465
  br i1 %cmp18, label %if.then20, label %if.end27, !dbg !6466

if.then20:                                        ; preds = %lor.lhs.false, %if.then13
  %18 = load i32, i32* @pnp_debug, align 4, !dbg !6467
  %tobool21 = icmp ne i32 %18, 0, !dbg !6467
  br i1 %tobool21, label %if.then22, label %if.end25, !dbg !6471

if.then22:                                        ; preds = %if.then20
  %19 = load %struct.pnp_dev*, %struct.pnp_dev** %pnp.addr, align 8, !dbg !6467
  %dev23 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %19, i32 0, i32 0, !dbg !6467
  %20 = load %struct.pci_dev*, %struct.pci_dev** %pci.addr, align 8, !dbg !6467
  %call24 = call i8* @pci_name(%struct.pci_dev* %20) #9, !dbg !6467
  %21 = load i32, i32* %irq.addr, align 4, !dbg !6467
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %struct.device* %dev23, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0), i8* %call24, i32 %21) #12, !dbg !6467
  br label %if.end25, !dbg !6467

if.end25:                                         ; preds = %if.then22, %if.then20
  store i32 0, i32* %tmp26, align 4, !dbg !6467
  %22 = load i32, i32* %tmp26, align 4, !dbg !6471
  store i32 1, i32* %retval, align 4, !dbg !6472
  br label %return, !dbg !6472

if.end27:                                         ; preds = %lor.lhs.false
  br label %if.end28, !dbg !6464

if.end28:                                         ; preds = %if.end27, %if.then8
  br label %if.end29, !dbg !6473

if.end29:                                         ; preds = %if.end28, %if.end3
  store i32 0, i32* %retval, align 4, !dbg !6474
  br label %return, !dbg !6474

return:                                           ; preds = %if.end29, %if.end25, %if.end
  %23 = load i32, i32* %retval, align 4, !dbg !6475
  ret i32 %23, !dbg !6475
}

; Function Attrs: noredzone
declare dso_local void @pci_dev_put(%struct.pci_dev*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @pci_name(%struct.pci_dev* %pdev) #0 !dbg !6476 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !6481, metadata !DIExpression()), !dbg !6482
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !6483
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 41, !dbg !6484
  %call = call i8* @dev_name(%struct.device* %dev) #9, !dbg !6485
  ret i8* %call, !dbg !6486
}

; Function Attrs: noredzone
declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci_get_legacy_ide_irq(%struct.pci_dev* %dev, i32 %channel) #0 !dbg !6487 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %channel.addr = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !6489, metadata !DIExpression()), !dbg !6490
  store i32 %channel, i32* %channel.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %channel.addr, metadata !6491, metadata !DIExpression()), !dbg !6492
  %0 = load i32, i32* %channel.addr, align 4, !dbg !6493
  %tobool = icmp ne i32 %0, 0, !dbg !6493
  %1 = zext i1 %tobool to i64, !dbg !6493
  %cond = select i1 %tobool, i32 15, i32 14, !dbg !6493
  ret i32 %cond, !dbg !6494
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #0 !dbg !6495 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6498, metadata !DIExpression()), !dbg !6499
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6500
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !6502
  %1 = load i8*, i8** %init_name, align 8, !dbg !6502
  %tobool = icmp ne i8* %1, null, !dbg !6500
  br i1 %tobool, label %if.then, label %if.end, !dbg !6503

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6504
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !6505
  %3 = load i8*, i8** %init_name1, align 8, !dbg !6505
  store i8* %3, i8** %retval, align 8, !dbg !6506
  br label %return, !dbg !6506

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6507
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !6508
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #9, !dbg !6509
  store i8* %call, i8** %retval, align 8, !dbg !6510
  br label %return, !dbg !6510

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !6511
  ret i8* %5, !dbg !6511
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #0 !dbg !6512 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !6517, metadata !DIExpression()), !dbg !6518
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !6519
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !6520
  %1 = load i8*, i8** %name, align 8, !dbg !6520
  ret i8* %1, !dbg !6521
}

; Function Attrs: noredzone
declare dso_local i32 @request_threaded_irq(i32, i32 (i32, i8*)*, i32 (i32, i8*)*, i64, i8*, i8*) #3

; Function Attrs: noredzone
declare dso_local i32 @get_option(i8**, i32*) #3

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { nounwind willreturn }
attributes #8 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noredzone }
attributes #10 = { noredzone nounwind }
attributes #11 = { nounwind }
attributes #12 = { cold noredzone }
attributes #13 = { noredzone nounwind readnone }
attributes #14 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3975, !3976, !3977, !3978}
!llvm.ident = !{!3979}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pnp_reserve_io", scope: !2, file: !3, line: 28, type: !3957, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !111, globals: !3937, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/pnp/resource.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !100, !105}
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
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !94, line: 305, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!95 = !{!96, !97, !98, !99}
!96 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!97 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!98 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!99 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !101, line: 10, baseType: !7, size: 32, elements: !102)
!101 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!102 = !{!103, !104}
!103 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!104 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !106, line: 11, baseType: !7, size: 32, elements: !107)
!106 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!107 = !{!108, !109, !110}
!108 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!109 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!110 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!111 = !{!112, !113, !171, !3917, !140, !703, !3934, !3936}
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_option", file: !115, line: 68, size: 576, elements: !116)
!115 = !DIFile(filename: "drivers/pnp/base.h", directory: "/home/lizy2001/genbc/linux")
!116 = !{!117, !124, !125, !127}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !114, file: !115, line: 69, baseType: !118, size: 128)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !119, line: 178, size: 128, elements: !120)
!119 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!120 = !{!121, !123}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !118, file: !119, line: 179, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !118, file: !119, line: 179, baseType: !122, size: 64, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !114, file: !115, line: 70, baseType: !7, size: 32, offset: 128)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !114, file: !115, line: 72, baseType: !126, size: 64, offset: 192)
!126 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !114, file: !115, line: 78, baseType: !128, size: 320, offset: 256)
!128 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !114, file: !115, line: 73, size: 320, elements: !129)
!129 = !{!130, !146, !158, !163}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !128, file: !115, line: 74, baseType: !131, size: 320)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_port", file: !115, line: 28, size: 320, elements: !132)
!132 = !{!133, !141, !142, !143, !144}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !131, file: !115, line: 29, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !119, line: 158, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !119, line: 153, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !137, line: 23, baseType: !138)
!137 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !139, line: 31, baseType: !140)
!139 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!140 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !131, file: !115, line: 30, baseType: !134, size: 64, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !131, file: !115, line: 31, baseType: !134, size: 64, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !131, file: !115, line: 32, baseType: !134, size: 64, offset: 192)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !131, file: !115, line: 33, baseType: !145, size: 8, offset: 256)
!145 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !128, file: !115, line: 75, baseType: !147, size: 320)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_irq", file: !115, line: 39, size: 320, elements: !148)
!148 = !{!149, !157}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !147, file: !115, line: 40, baseType: !150, size: 256)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "pnp_irq_mask_t", file: !115, line: 37, baseType: !151)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !115, line: 37, size: 256, elements: !152)
!152 = !{!153}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !151, file: !115, line: 37, baseType: !154, size: 256)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 256, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 4)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !147, file: !115, line: 41, baseType: !145, size: 8, offset: 256)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !128, file: !115, line: 76, baseType: !159, size: 16)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_dma", file: !115, line: 44, size: 16, elements: !160)
!160 = !{!161, !162}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !159, file: !115, line: 45, baseType: !145, size: 8)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !159, file: !115, line: 46, baseType: !145, size: 8, offset: 8)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !128, file: !115, line: 77, baseType: !164, size: 320)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_mem", file: !115, line: 49, size: 320, elements: !165)
!165 = !{!166, !167, !168, !169, !170}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !164, file: !115, line: 50, baseType: !134, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !164, file: !115, line: 51, baseType: !134, size: 64, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !164, file: !115, line: 52, baseType: !134, size: 64, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !164, file: !115, line: 53, baseType: !134, size: 64, offset: 192)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !164, file: !115, line: 54, baseType: !145, size: 8, offset: 256)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_dev", file: !173, line: 243, size: 7488, elements: !174)
!173 = !DIFile(filename: "./include/linux/pnp.h", directory: "/home/lizy2001/genbc/linux")
!174 = !{!175, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3810, !3838, !3864, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !172, file: !173, line: 244, baseType: !176, size: 5568)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !177)
!177 = !{!178, !3331, !3333, !3336, !3337, !3388, !3479, !3480, !3481, !3482, !3483, !3492, !3597, !3610, !3613, !3614, !3618, !3620, !3621, !3622, !3626, !3632, !3633, !3636, !3640, !3730, !3731, !3732, !3733, !3734, !3766, !3767, !3768, !3771, !3774, !3775, !3776, !3777}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !176, file: !73, line: 462, baseType: !179, size: 512)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !180, line: 64, size: 512, elements: !181)
!180 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!181 = !{!182, !186, !187, !189, !250, !3182, !3321, !3326, !3327, !3328, !3329, !3330}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !179, file: !180, line: 65, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!185 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !179, file: !180, line: 66, baseType: !118, size: 128, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !179, file: !180, line: 67, baseType: !188, size: 64, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !179, file: !180, line: 68, baseType: !190, size: 64, offset: 256)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !180, line: 192, size: 704, elements: !192)
!192 = !{!193, !194, !210, !211}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !191, file: !180, line: 193, baseType: !118, size: 128)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !191, file: !180, line: 194, baseType: !195, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !196, line: 83, baseType: !197)
!196 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !196, line: 71, elements: !198)
!198 = !{!199}
!199 = !DIDerivedType(tag: DW_TAG_member, scope: !197, file: !196, line: 72, baseType: !200)
!200 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !197, file: !196, line: 72, elements: !201)
!201 = !{!202}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !200, file: !196, line: 73, baseType: !203)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !196, line: 20, elements: !204)
!204 = !{!205}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !203, file: !196, line: 21, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !207, line: 25, baseType: !208)
!207 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !207, line: 25, elements: !209)
!209 = !{}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !191, file: !180, line: 195, baseType: !179, size: 512, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !191, file: !180, line: 196, baseType: !212, size: 64, offset: 640)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !214)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !180, line: 156, size: 192, elements: !215)
!215 = !{!216, !222, !227}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !214, file: !180, line: 157, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!221, !190, !188}
!221 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !214, file: !180, line: 158, baseType: !223, size: 64, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{!183, !190, !188}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !214, file: !180, line: 159, baseType: !228, size: 64, offset: 128)
!228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!221, !190, !188, !232}
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !180, line: 148, size: 20736, elements: !234)
!234 = !{!235, !240, !244, !245, !249}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !233, file: !180, line: 149, baseType: !236, size: 192)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 192, elements: !238)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!238 = !{!239}
!239 = !DISubrange(count: 3)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !233, file: !180, line: 150, baseType: !241, size: 4096, offset: 192)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 4096, elements: !242)
!242 = !{!243}
!243 = !DISubrange(count: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !233, file: !180, line: 151, baseType: !221, size: 32, offset: 4288)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !233, file: !180, line: 152, baseType: !246, size: 16384, offset: 4320)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 16384, elements: !247)
!247 = !{!248}
!248 = !DISubrange(count: 2048)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !233, file: !180, line: 153, baseType: !221, size: 32, offset: 20704)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !179, file: !180, line: 69, baseType: !251, size: 64, offset: 320)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !180, line: 138, size: 448, elements: !253)
!253 = !{!254, !258, !287, !289, !3144, !3172, !3176}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !252, file: !180, line: 139, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{null, !188}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !252, file: !180, line: 140, baseType: !259, size: 64, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !262, line: 230, size: 128, elements: !263)
!262 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!263 = !{!264, !280}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !261, file: !262, line: 231, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{!268, !188, !273, !237}
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !119, line: 60, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !270, line: 73, baseType: !271)
!270 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !270, line: 15, baseType: !272)
!272 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !262, line: 30, size: 128, elements: !275)
!275 = !{!276, !277}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !274, file: !262, line: 31, baseType: !183, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !274, file: !262, line: 32, baseType: !278, size: 16, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !119, line: 19, baseType: !279)
!279 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !261, file: !262, line: 232, baseType: !281, size: 64, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!268, !188, !273, !183, !284}
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !119, line: 55, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !270, line: 72, baseType: !286)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !270, line: 16, baseType: !126)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !252, file: !180, line: 141, baseType: !288, size: 64, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !252, file: !180, line: 142, baseType: !290, size: 64, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !293)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !262, line: 84, size: 320, elements: !294)
!294 = !{!295, !296, !300, !3141, !3142}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !293, file: !262, line: 85, baseType: !183, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !293, file: !262, line: 86, baseType: !297, size: 64, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DISubroutineType(types: !299)
!299 = !{!278, !188, !273, !221}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !293, file: !262, line: 88, baseType: !301, size: 64, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{!278, !188, !304, !221}
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !262, line: 168, size: 448, elements: !306)
!306 = !{!307, !308, !309, !310, !3136, !3137}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !305, file: !262, line: 169, baseType: !274, size: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !305, file: !262, line: 170, baseType: !284, size: 64, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !305, file: !262, line: 171, baseType: !112, size: 64, offset: 192)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !305, file: !262, line: 172, baseType: !311, size: 64, offset: 256)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!268, !314, !188, !304, !237, !487, !284}
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !316)
!316 = !{!317, !335, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3119, !3120, !3129, !3130, !3131, !3132, !3133, !3134, !3135}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !315, file: !44, line: 920, baseType: !318, size: 128)
!318 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !315, file: !44, line: 917, size: 128, elements: !319)
!319 = !{!320, !326}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !318, file: !44, line: 918, baseType: !321, size: 64)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !322, line: 58, size: 64, elements: !323)
!322 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!323 = !{!324}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !321, file: !322, line: 59, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !318, file: !44, line: 919, baseType: !327, size: 128, align: 64)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !119, line: 216, size: 128, align: 64, elements: !328)
!328 = !{!329, !331}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !327, file: !119, line: 217, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !327, file: !119, line: 218, baseType: !332, size: 64, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{null, !330}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !315, file: !44, line: 921, baseType: !336, size: 128, offset: 128)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !337, line: 8, size: 128, elements: !338)
!337 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!338 = !{!339, !343}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !336, file: !337, line: 9, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !342, line: 18, flags: DIFlagFwdDecl)
!342 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!343 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !336, file: !337, line: 10, baseType: !344, size: 64, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !342, line: 89, size: 1536, elements: !346)
!346 = !{!347, !348, !358, !366, !367, !384, !3069, !3071, !3083, !3084, !3085, !3086, !3087, !3093, !3094, !3095}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !345, file: !342, line: 91, baseType: !7, size: 32)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !345, file: !342, line: 92, baseType: !349, size: 32, offset: 32)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !350, line: 277, baseType: !351)
!350 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !350, line: 277, size: 32, elements: !352)
!352 = !{!353}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !351, file: !350, line: 277, baseType: !354, size: 32)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !350, line: 70, baseType: !355)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !350, line: 65, size: 32, elements: !356)
!356 = !{!357}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !355, file: !350, line: 66, baseType: !7, size: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !345, file: !342, line: 93, baseType: !359, size: 128, offset: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !360, line: 38, size: 128, elements: !361)
!360 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!361 = !{!362, !364}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !359, file: !360, line: 39, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !359, file: !360, line: 39, baseType: !365, size: 64, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !345, file: !342, line: 94, baseType: !344, size: 64, offset: 192)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !345, file: !342, line: 95, baseType: !368, size: 128, offset: 256)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !342, line: 47, size: 128, elements: !369)
!369 = !{!370, !381}
!370 = !DIDerivedType(tag: DW_TAG_member, scope: !368, file: !342, line: 48, baseType: !371, size: 64)
!371 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !368, file: !342, line: 48, size: 64, elements: !372)
!372 = !{!373, !380}
!373 = !DIDerivedType(tag: DW_TAG_member, scope: !371, file: !342, line: 49, baseType: !374, size: 64)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !371, file: !342, line: 49, size: 64, elements: !375)
!375 = !{!376, !379}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !374, file: !342, line: 50, baseType: !377, size: 32)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !137, line: 21, baseType: !378)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !139, line: 27, baseType: !7)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !374, file: !342, line: 50, baseType: !377, size: 32, offset: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !371, file: !342, line: 52, baseType: !136, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !368, file: !342, line: 54, baseType: !382, size: 64, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !345, file: !342, line: 96, baseType: !385, size: 64, offset: 384)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !387)
!387 = !{!388, !389, !390, !398, !405, !406, !554, !2780, !2781, !2782, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !3045, !3053, !3054, !3055, !3065, !3066, !3067, !3068}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !386, file: !44, line: 611, baseType: !278, size: 16)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !386, file: !44, line: 612, baseType: !279, size: 16, offset: 16)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !386, file: !44, line: 613, baseType: !391, size: 32, offset: 32)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !392, line: 23, baseType: !393)
!392 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !392, line: 21, size: 32, elements: !394)
!394 = !{!395}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !393, file: !392, line: 22, baseType: !396, size: 32)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !119, line: 32, baseType: !397)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !270, line: 49, baseType: !7)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !386, file: !44, line: 614, baseType: !399, size: 32, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !392, line: 28, baseType: !400)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !392, line: 26, size: 32, elements: !401)
!401 = !{!402}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !400, file: !392, line: 27, baseType: !403, size: 32)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !119, line: 33, baseType: !404)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !270, line: 50, baseType: !7)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !386, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !386, file: !44, line: 622, baseType: !407, size: 64, offset: 128)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !409)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !410)
!410 = !{!411, !415, !428, !432, !438, !442, !448, !452, !456, !460, !464, !465, !471, !475, !501, !530, !534, !540, !545, !549, !550}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !409, file: !44, line: 1865, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{!344, !385, !344, !7}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !409, file: !44, line: 1866, baseType: !416, size: 64, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{!183, !344, !385, !419}
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !421, line: 10, size: 128, elements: !422)
!421 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!422 = !{!423, !427}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !420, file: !421, line: 11, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{null, !112}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !420, file: !421, line: 12, baseType: !112, size: 64, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !409, file: !44, line: 1867, baseType: !429, size: 64, offset: 128)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{!221, !385, !221}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !409, file: !44, line: 1868, baseType: !433, size: 64, offset: 192)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DISubroutineType(types: !435)
!435 = !{!436, !385, !221}
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !409, file: !44, line: 1870, baseType: !439, size: 64, offset: 256)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{!221, !344, !237, !221}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !409, file: !44, line: 1872, baseType: !443, size: 64, offset: 320)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DISubroutineType(types: !445)
!445 = !{!221, !385, !344, !278, !446}
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !119, line: 30, baseType: !447)
!447 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !409, file: !44, line: 1873, baseType: !449, size: 64, offset: 384)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DISubroutineType(types: !451)
!451 = !{!221, !344, !385, !344}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !409, file: !44, line: 1874, baseType: !453, size: 64, offset: 448)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DISubroutineType(types: !455)
!455 = !{!221, !385, !344}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !409, file: !44, line: 1875, baseType: !457, size: 64, offset: 512)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{!221, !385, !344, !183}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !409, file: !44, line: 1876, baseType: !461, size: 64, offset: 576)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{!221, !385, !344, !278}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !409, file: !44, line: 1877, baseType: !453, size: 64, offset: 640)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !409, file: !44, line: 1878, baseType: !466, size: 64, offset: 704)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!221, !385, !344, !278, !469}
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !119, line: 16, baseType: !470)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !119, line: 13, baseType: !377)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !409, file: !44, line: 1879, baseType: !472, size: 64, offset: 768)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{!221, !385, !344, !385, !344, !7}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !409, file: !44, line: 1881, baseType: !476, size: 64, offset: 832)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!221, !344, !479}
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !481)
!481 = !{!482, !483, !484, !485, !486, !490, !498, !499, !500}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !480, file: !44, line: 220, baseType: !7, size: 32)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !480, file: !44, line: 221, baseType: !278, size: 16, offset: 32)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !480, file: !44, line: 222, baseType: !391, size: 32, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !480, file: !44, line: 223, baseType: !399, size: 32, offset: 96)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !480, file: !44, line: 224, baseType: !487, size: 64, offset: 128)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !119, line: 46, baseType: !488)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !270, line: 88, baseType: !489)
!489 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !480, file: !44, line: 225, baseType: !491, size: 128, offset: 192)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !492, line: 13, size: 128, elements: !493)
!492 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!493 = !{!494, !497}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !491, file: !492, line: 14, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !492, line: 8, baseType: !496)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !139, line: 30, baseType: !489)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !491, file: !492, line: 15, baseType: !272, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !480, file: !44, line: 226, baseType: !491, size: 128, offset: 320)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !480, file: !44, line: 227, baseType: !491, size: 128, offset: 448)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !480, file: !44, line: 234, baseType: !314, size: 64, offset: 576)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !409, file: !44, line: 1882, baseType: !502, size: 64, offset: 896)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{!221, !505, !507, !377, !7}
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !336)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !509, line: 22, size: 1152, elements: !510)
!509 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!510 = !{!511, !512, !513, !514, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !508, file: !509, line: 23, baseType: !377, size: 32)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !508, file: !509, line: 24, baseType: !278, size: 16, offset: 32)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !508, file: !509, line: 25, baseType: !7, size: 32, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !508, file: !509, line: 26, baseType: !515, size: 32, offset: 96)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !119, line: 104, baseType: !377)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !508, file: !509, line: 27, baseType: !136, size: 64, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !508, file: !509, line: 28, baseType: !136, size: 64, offset: 192)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !508, file: !509, line: 37, baseType: !136, size: 64, offset: 256)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !508, file: !509, line: 38, baseType: !469, size: 32, offset: 320)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !508, file: !509, line: 39, baseType: !469, size: 32, offset: 352)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !508, file: !509, line: 40, baseType: !391, size: 32, offset: 384)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !508, file: !509, line: 41, baseType: !399, size: 32, offset: 416)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !508, file: !509, line: 42, baseType: !487, size: 64, offset: 448)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !508, file: !509, line: 43, baseType: !491, size: 128, offset: 512)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !508, file: !509, line: 44, baseType: !491, size: 128, offset: 640)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !508, file: !509, line: 45, baseType: !491, size: 128, offset: 768)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !508, file: !509, line: 46, baseType: !491, size: 128, offset: 896)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !508, file: !509, line: 47, baseType: !136, size: 64, offset: 1024)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !508, file: !509, line: 48, baseType: !136, size: 64, offset: 1088)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !409, file: !44, line: 1883, baseType: !531, size: 64, offset: 960)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!268, !344, !237, !284}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !409, file: !44, line: 1884, baseType: !535, size: 64, offset: 1024)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!221, !385, !538, !136, !136}
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !409, file: !44, line: 1886, baseType: !541, size: 64, offset: 1088)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!221, !385, !544, !221}
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !409, file: !44, line: 1887, baseType: !546, size: 64, offset: 1152)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{!221, !385, !344, !314, !7, !278}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !409, file: !44, line: 1890, baseType: !461, size: 64, offset: 1216)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !409, file: !44, line: 1891, baseType: !551, size: 64, offset: 1280)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{!221, !385, !436, !221}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !386, file: !44, line: 623, baseType: !555, size: 64, offset: 192)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !557)
!557 = !{!558, !559, !560, !561, !562, !563, !613, !2387, !2469, !2552, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2568, !2572, !2573, !2576, !2577, !2580, !2581, !2582, !2623, !2650, !2651, !2652, !2653, !2654, !2655, !2658, !2660, !2667, !2668, !2670, !2671, !2672, !2731, !2732, !2747, !2748, !2749, !2750, !2751, !2754, !2755, !2756, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !556, file: !44, line: 1417, baseType: !118, size: 128)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !556, file: !44, line: 1418, baseType: !469, size: 32, offset: 128)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !556, file: !44, line: 1419, baseType: !145, size: 8, offset: 160)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !556, file: !44, line: 1420, baseType: !126, size: 64, offset: 192)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !556, file: !44, line: 1421, baseType: !487, size: 64, offset: 256)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !556, file: !44, line: 1422, baseType: !564, size: 64, offset: 320)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !566)
!566 = !{!567, !568, !569, !576, !580, !584, !588, !592, !593, !603, !606, !607, !608, !610, !611, !612}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !565, file: !44, line: 2229, baseType: !183, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !565, file: !44, line: 2230, baseType: !221, size: 32, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !565, file: !44, line: 2238, baseType: !570, size: 64, offset: 128)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DISubroutineType(types: !572)
!572 = !{!221, !573}
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !575, line: 28, flags: DIFlagFwdDecl)
!575 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!576 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !565, file: !44, line: 2239, baseType: !577, size: 64, offset: 192)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !579)
!579 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !565, file: !44, line: 2240, baseType: !581, size: 64, offset: 256)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{!344, !564, !221, !183, !112}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !565, file: !44, line: 2242, baseType: !585, size: 64, offset: 320)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{null, !555}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !565, file: !44, line: 2243, baseType: !589, size: 64, offset: 384)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !591, line: 76, flags: DIFlagFwdDecl)
!591 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!592 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !565, file: !44, line: 2244, baseType: !564, size: 64, offset: 448)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !565, file: !44, line: 2245, baseType: !594, size: 64, offset: 512)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !119, line: 182, size: 64, elements: !595)
!595 = !{!596}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !594, file: !119, line: 183, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !119, line: 186, size: 128, elements: !599)
!599 = !{!600, !601}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !598, file: !119, line: 187, baseType: !597, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !598, file: !119, line: 187, baseType: !602, size: 64, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !565, file: !44, line: 2247, baseType: !604, offset: 576)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !605, line: 187, elements: !209)
!605 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!606 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !565, file: !44, line: 2248, baseType: !604, offset: 576)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !565, file: !44, line: 2249, baseType: !604, offset: 576)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !565, file: !44, line: 2250, baseType: !609, offset: 576)
!609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !604, elements: !238)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !565, file: !44, line: 2252, baseType: !604, offset: 576)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !565, file: !44, line: 2253, baseType: !604, offset: 576)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !565, file: !44, line: 2254, baseType: !604, offset: 576)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !556, file: !44, line: 1423, baseType: !614, size: 64, offset: 384)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !616)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !617)
!617 = !{!618, !622, !626, !627, !631, !637, !641, !642, !643, !647, !651, !652, !653, !654, !660, !665, !666, !673, !674, !675, !676, !2371, !2386}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !616, file: !44, line: 1936, baseType: !619, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{!385, !555}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !616, file: !44, line: 1937, baseType: !623, size: 64, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{null, !385}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !616, file: !44, line: 1938, baseType: !623, size: 64, offset: 128)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !616, file: !44, line: 1940, baseType: !628, size: 64, offset: 192)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{null, !385, !221}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !616, file: !44, line: 1941, baseType: !632, size: 64, offset: 256)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{!221, !385, !635}
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !616, file: !44, line: 1942, baseType: !638, size: 64, offset: 320)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{!221, !385}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !616, file: !44, line: 1943, baseType: !623, size: 64, offset: 384)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !616, file: !44, line: 1944, baseType: !585, size: 64, offset: 448)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !616, file: !44, line: 1945, baseType: !644, size: 64, offset: 512)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{!221, !555, !221}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !616, file: !44, line: 1946, baseType: !648, size: 64, offset: 576)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!221, !555}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !616, file: !44, line: 1947, baseType: !648, size: 64, offset: 640)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !616, file: !44, line: 1948, baseType: !648, size: 64, offset: 704)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !616, file: !44, line: 1949, baseType: !648, size: 64, offset: 768)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !616, file: !44, line: 1950, baseType: !655, size: 64, offset: 832)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{!221, !344, !658}
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !616, file: !44, line: 1951, baseType: !661, size: 64, offset: 896)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{!221, !555, !664, !237}
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !616, file: !44, line: 1952, baseType: !585, size: 64, offset: 960)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !616, file: !44, line: 1954, baseType: !667, size: 64, offset: 1024)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{!221, !670, !344}
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !672, line: 539, flags: DIFlagFwdDecl)
!672 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!673 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !616, file: !44, line: 1955, baseType: !667, size: 64, offset: 1088)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !616, file: !44, line: 1956, baseType: !667, size: 64, offset: 1152)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !616, file: !44, line: 1957, baseType: !667, size: 64, offset: 1216)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !616, file: !44, line: 1963, baseType: !677, size: 64, offset: 1280)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{!221, !555, !680, !703}
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !682, line: 68, size: 512, align: 128, elements: !683)
!682 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!683 = !{!684, !685, !2363, !2370}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !681, file: !682, line: 69, baseType: !126, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, scope: !681, file: !682, line: 77, baseType: !686, size: 320, offset: 64)
!686 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !681, file: !682, line: 77, size: 320, elements: !687)
!687 = !{!688, !876, !881, !909, !917, !923, !2294, !2362}
!688 = !DIDerivedType(tag: DW_TAG_member, scope: !686, file: !682, line: 78, baseType: !689, size: 320)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !686, file: !682, line: 78, size: 320, elements: !690)
!690 = !{!691, !692, !874, !875}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !689, file: !682, line: 84, baseType: !118, size: 128)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !689, file: !682, line: 86, baseType: !693, size: 64, offset: 128)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !695)
!695 = !{!696, !697, !705, !706, !711, !726, !742, !743, !744, !745, !867, !868, !871, !872, !873}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !694, file: !44, line: 452, baseType: !385, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !694, file: !44, line: 453, baseType: !698, size: 128, offset: 64)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !699, line: 292, size: 128, elements: !700)
!699 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!700 = !{!701, !702, !704}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !698, file: !699, line: 293, baseType: !195)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !698, file: !699, line: 295, baseType: !703, size: 32)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !119, line: 148, baseType: !7)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !698, file: !699, line: 296, baseType: !112, size: 64, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !694, file: !44, line: 454, baseType: !703, size: 32, offset: 192)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !694, file: !44, line: 455, baseType: !707, size: 32, offset: 224)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !119, line: 168, baseType: !708)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !119, line: 166, size: 32, elements: !709)
!709 = !{!710}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !708, file: !119, line: 167, baseType: !221, size: 32)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !694, file: !44, line: 460, baseType: !712, size: 128, offset: 256)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !713, line: 125, size: 128, elements: !714)
!713 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!714 = !{!715, !725}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !712, file: !713, line: 126, baseType: !716, size: 64)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !713, line: 31, size: 64, elements: !717)
!717 = !{!718}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !716, file: !713, line: 32, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !713, line: 24, size: 192, align: 64, elements: !721)
!721 = !{!722, !723, !724}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !720, file: !713, line: 25, baseType: !126, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !720, file: !713, line: 26, baseType: !719, size: 64, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !720, file: !713, line: 27, baseType: !719, size: 64, offset: 128)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !712, file: !713, line: 127, baseType: !719, size: 64, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !694, file: !44, line: 461, baseType: !727, size: 256, offset: 384)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !728, line: 35, size: 256, elements: !729)
!728 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!729 = !{!730, !738, !739, !741}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !727, file: !728, line: 36, baseType: !731, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !732, line: 13, baseType: !733)
!732 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !119, line: 175, baseType: !734)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !119, line: 173, size: 64, elements: !735)
!735 = !{!736}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !734, file: !119, line: 174, baseType: !737, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !137, line: 22, baseType: !496)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !727, file: !728, line: 42, baseType: !731, size: 64, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !727, file: !728, line: 46, baseType: !740, offset: 128)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !196, line: 29, baseType: !203)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !727, file: !728, line: 47, baseType: !118, size: 128, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !694, file: !44, line: 462, baseType: !126, size: 64, offset: 640)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !694, file: !44, line: 463, baseType: !126, size: 64, offset: 704)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !694, file: !44, line: 464, baseType: !126, size: 64, offset: 768)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !694, file: !44, line: 465, baseType: !746, size: 64, offset: 832)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !748)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !749)
!749 = !{!750, !754, !758, !762, !766, !770, !776, !782, !786, !791, !795, !799, !803, !831, !835, !841, !842, !843, !847, !852, !856, !863}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !748, file: !44, line: 368, baseType: !751, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{!221, !680, !635}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !748, file: !44, line: 369, baseType: !755, size: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{!221, !314, !680}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !748, file: !44, line: 372, baseType: !759, size: 64, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{!221, !693, !635}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !748, file: !44, line: 375, baseType: !763, size: 64, offset: 192)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{!221, !680}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !748, file: !44, line: 381, baseType: !767, size: 64, offset: 256)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DISubroutineType(types: !769)
!769 = !{!221, !314, !693, !122, !7}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !748, file: !44, line: 383, baseType: !771, size: 64, offset: 320)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{null, !774}
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !748, file: !44, line: 385, baseType: !777, size: 64, offset: 384)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DISubroutineType(types: !779)
!779 = !{!221, !314, !693, !487, !7, !7, !780, !781}
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !748, file: !44, line: 388, baseType: !783, size: 64, offset: 448)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DISubroutineType(types: !785)
!785 = !{!221, !314, !693, !487, !7, !7, !680, !112}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !748, file: !44, line: 393, baseType: !787, size: 64, offset: 512)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DISubroutineType(types: !789)
!789 = !{!790, !693, !790}
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !119, line: 125, baseType: !136)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !748, file: !44, line: 394, baseType: !792, size: 64, offset: 576)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{null, !680, !7, !7}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !748, file: !44, line: 395, baseType: !796, size: 64, offset: 640)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{!221, !680, !703}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !748, file: !44, line: 396, baseType: !800, size: 64, offset: 704)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DISubroutineType(types: !802)
!802 = !{null, !680}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !748, file: !44, line: 397, baseType: !804, size: 64, offset: 768)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DISubroutineType(types: !806)
!806 = !{!268, !807, !829}
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !809)
!809 = !{!810, !811, !812, !816, !817, !818, !821, !822}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !808, file: !44, line: 321, baseType: !314, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !808, file: !44, line: 326, baseType: !487, size: 64, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !808, file: !44, line: 327, baseType: !813, size: 64, offset: 128)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{null, !807, !272, !272}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !808, file: !44, line: 328, baseType: !112, size: 64, offset: 192)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !808, file: !44, line: 329, baseType: !221, size: 32, offset: 256)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !808, file: !44, line: 330, baseType: !819, size: 16, offset: 288)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !137, line: 19, baseType: !820)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !139, line: 24, baseType: !279)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !808, file: !44, line: 331, baseType: !819, size: 16, offset: 304)
!822 = !DIDerivedType(tag: DW_TAG_member, scope: !808, file: !44, line: 332, baseType: !823, size: 64, offset: 320)
!823 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !808, file: !44, line: 332, size: 64, elements: !824)
!824 = !{!825, !826}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !823, file: !44, line: 333, baseType: !7, size: 32)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !823, file: !44, line: 334, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !748, file: !44, line: 402, baseType: !832, size: 64, offset: 832)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DISubroutineType(types: !834)
!834 = !{!221, !693, !680, !680, !5}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !748, file: !44, line: 404, baseType: !836, size: 64, offset: 896)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{!446, !680, !839}
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !840, line: 305, baseType: !7)
!840 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!841 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !748, file: !44, line: 405, baseType: !800, size: 64, offset: 960)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !748, file: !44, line: 406, baseType: !763, size: 64, offset: 1024)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !748, file: !44, line: 407, baseType: !844, size: 64, offset: 1088)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DISubroutineType(types: !846)
!846 = !{!221, !680, !126, !126}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !748, file: !44, line: 409, baseType: !848, size: 64, offset: 1152)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DISubroutineType(types: !850)
!850 = !{null, !680, !851, !851}
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !748, file: !44, line: 410, baseType: !853, size: 64, offset: 1216)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!221, !693, !680}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !748, file: !44, line: 413, baseType: !857, size: 64, offset: 1280)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{!221, !860, !314, !862}
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !748, file: !44, line: 415, baseType: !864, size: 64, offset: 1344)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DISubroutineType(types: !866)
!866 = !{null, !314}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !694, file: !44, line: 466, baseType: !126, size: 64, offset: 896)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !694, file: !44, line: 467, baseType: !869, size: 32, offset: 960)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !870, line: 8, baseType: !377)
!870 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!871 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !694, file: !44, line: 468, baseType: !195, offset: 992)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !694, file: !44, line: 469, baseType: !118, size: 128, offset: 1024)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !694, file: !44, line: 470, baseType: !112, size: 64, offset: 1152)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !689, file: !682, line: 87, baseType: !126, size: 64, offset: 192)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !689, file: !682, line: 94, baseType: !126, size: 64, offset: 256)
!876 = !DIDerivedType(tag: DW_TAG_member, scope: !686, file: !682, line: 96, baseType: !877, size: 64)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !686, file: !682, line: 96, size: 64, elements: !878)
!878 = !{!879}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !877, file: !682, line: 101, baseType: !880, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !119, line: 143, baseType: !136)
!881 = !DIDerivedType(tag: DW_TAG_member, scope: !686, file: !682, line: 103, baseType: !882, size: 320)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !686, file: !682, line: 103, size: 320, elements: !883)
!883 = !{!884, !894, !897, !898}
!884 = !DIDerivedType(tag: DW_TAG_member, scope: !882, file: !682, line: 104, baseType: !885, size: 128)
!885 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !882, file: !682, line: 104, size: 128, elements: !886)
!886 = !{!887, !888}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !885, file: !682, line: 105, baseType: !118, size: 128)
!888 = !DIDerivedType(tag: DW_TAG_member, scope: !885, file: !682, line: 106, baseType: !889, size: 128)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !885, file: !682, line: 106, size: 128, elements: !890)
!890 = !{!891, !892, !893}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !889, file: !682, line: 107, baseType: !680, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !889, file: !682, line: 109, baseType: !221, size: 32, offset: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !889, file: !682, line: 110, baseType: !221, size: 32, offset: 96)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !882, file: !682, line: 117, baseType: !895, size: 64, offset: 128)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !682, line: 117, flags: DIFlagFwdDecl)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !882, file: !682, line: 119, baseType: !112, size: 64, offset: 192)
!898 = !DIDerivedType(tag: DW_TAG_member, scope: !882, file: !682, line: 120, baseType: !899, size: 64, offset: 256)
!899 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !882, file: !682, line: 120, size: 64, elements: !900)
!900 = !{!901, !902, !903}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !899, file: !682, line: 121, baseType: !112, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !899, file: !682, line: 122, baseType: !126, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, scope: !899, file: !682, line: 123, baseType: !904, size: 32)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !899, file: !682, line: 123, size: 32, elements: !905)
!905 = !{!906, !907, !908}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !904, file: !682, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !904, file: !682, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !904, file: !682, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!909 = !DIDerivedType(tag: DW_TAG_member, scope: !686, file: !682, line: 130, baseType: !910, size: 192)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !686, file: !682, line: 130, size: 192, elements: !911)
!911 = !{!912, !913, !914, !915, !916}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !910, file: !682, line: 131, baseType: !126, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !910, file: !682, line: 134, baseType: !145, size: 8, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !910, file: !682, line: 135, baseType: !145, size: 8, offset: 72)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !910, file: !682, line: 136, baseType: !707, size: 32, offset: 96)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !910, file: !682, line: 137, baseType: !7, size: 32, offset: 128)
!917 = !DIDerivedType(tag: DW_TAG_member, scope: !686, file: !682, line: 139, baseType: !918, size: 256)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !686, file: !682, line: 139, size: 256, elements: !919)
!919 = !{!920, !921, !922}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !918, file: !682, line: 140, baseType: !126, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !918, file: !682, line: 141, baseType: !707, size: 32, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !918, file: !682, line: 143, baseType: !118, size: 128, offset: 128)
!923 = !DIDerivedType(tag: DW_TAG_member, scope: !686, file: !682, line: 145, baseType: !924, size: 256)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !686, file: !682, line: 145, size: 256, elements: !925)
!925 = !{!926, !927, !929, !930, !2293}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !924, file: !682, line: 146, baseType: !126, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !924, file: !682, line: 147, baseType: !928, size: 64, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !672, line: 509, baseType: !680)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !924, file: !682, line: 148, baseType: !126, size: 64, offset: 128)
!930 = !DIDerivedType(tag: DW_TAG_member, scope: !924, file: !682, line: 149, baseType: !931, size: 64, offset: 192)
!931 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !924, file: !682, line: 149, size: 64, elements: !932)
!932 = !{!933, !2292}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !931, file: !682, line: 150, baseType: !934, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !682, line: 388, size: 7296, elements: !936)
!936 = !{!937, !2288}
!937 = !DIDerivedType(tag: DW_TAG_member, scope: !935, file: !682, line: 389, baseType: !938, size: 7296)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !935, file: !682, line: 389, size: 7296, elements: !939)
!939 = !{!940, !1058, !1059, !1060, !1064, !1065, !1066, !1067, !1068, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1109, !1115, !1118, !1164, !1165, !2272, !2273, !2276, !2277, !2278, !2281, !2282, !2283, !2286, !2287}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !938, file: !682, line: 390, baseType: !941, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !682, line: 305, size: 1472, elements: !943)
!943 = !{!944, !945, !946, !947, !948, !949, !950, !951, !958, !959, !964, !965, !968, !1052, !1053, !1054, !1055, !1056}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !942, file: !682, line: 308, baseType: !126, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !942, file: !682, line: 309, baseType: !126, size: 64, offset: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !942, file: !682, line: 313, baseType: !941, size: 64, offset: 128)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !942, file: !682, line: 313, baseType: !941, size: 64, offset: 192)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !942, file: !682, line: 315, baseType: !720, size: 192, align: 64, offset: 256)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !942, file: !682, line: 323, baseType: !126, size: 64, offset: 448)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !942, file: !682, line: 327, baseType: !934, size: 64, offset: 512)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !942, file: !682, line: 333, baseType: !952, size: 64, offset: 576)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !672, line: 284, baseType: !953)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !672, line: 284, size: 64, elements: !954)
!954 = !{!955}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !953, file: !672, line: 284, baseType: !956, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !957, line: 19, baseType: !126)
!957 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!958 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !942, file: !682, line: 334, baseType: !126, size: 64, offset: 640)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !942, file: !682, line: 343, baseType: !960, size: 256, offset: 704)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !942, file: !682, line: 340, size: 256, elements: !961)
!961 = !{!962, !963}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !960, file: !682, line: 341, baseType: !720, size: 192, align: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !960, file: !682, line: 342, baseType: !126, size: 64, offset: 192)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !942, file: !682, line: 351, baseType: !118, size: 128, offset: 960)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !942, file: !682, line: 353, baseType: !966, size: 64, offset: 1088)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !682, line: 353, flags: DIFlagFwdDecl)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !942, file: !682, line: 356, baseType: !969, size: 64, offset: 1152)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !971)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !972)
!972 = !{!973, !977, !978, !982, !986, !1026, !1030, !1034, !1038, !1039, !1040, !1044, !1048}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !971, file: !14, line: 558, baseType: !974, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DISubroutineType(types: !976)
!976 = !{null, !941}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !971, file: !14, line: 559, baseType: !974, size: 64, offset: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !971, file: !14, line: 560, baseType: !979, size: 64, offset: 128)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DISubroutineType(types: !981)
!981 = !{!221, !941, !126}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !971, file: !14, line: 561, baseType: !983, size: 64, offset: 192)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DISubroutineType(types: !985)
!985 = !{!221, !941}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !971, file: !14, line: 562, baseType: !987, size: 64, offset: 256)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{!990, !991}
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !682, line: 682, baseType: !7)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !993)
!993 = !{!994, !995, !996, !997, !998, !999, !1006, !1013, !1019, !1020, !1021, !1023, !1025}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !992, file: !14, line: 509, baseType: !941, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !992, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !992, file: !14, line: 511, baseType: !703, size: 32, offset: 96)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !992, file: !14, line: 512, baseType: !126, size: 64, offset: 128)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !992, file: !14, line: 513, baseType: !126, size: 64, offset: 192)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !992, file: !14, line: 514, baseType: !1000, size: 64, offset: 256)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !672, line: 385, baseType: !1002)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !672, line: 385, size: 64, elements: !1003)
!1003 = !{!1004}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1002, file: !672, line: 385, baseType: !1005, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !957, line: 15, baseType: !126)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !992, file: !14, line: 516, baseType: !1007, size: 64, offset: 320)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !672, line: 359, baseType: !1009)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !672, line: 359, size: 64, elements: !1010)
!1010 = !{!1011}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1009, file: !672, line: 359, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !957, line: 16, baseType: !126)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !992, file: !14, line: 519, baseType: !1014, size: 64, offset: 384)
!1014 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !957, line: 21, baseType: !1015)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !957, line: 21, size: 64, elements: !1016)
!1016 = !{!1017}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1015, file: !957, line: 21, baseType: !1018, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !957, line: 14, baseType: !126)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !992, file: !14, line: 521, baseType: !680, size: 64, offset: 448)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !992, file: !14, line: 522, baseType: !680, size: 64, offset: 512)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !992, file: !14, line: 528, baseType: !1022, size: 64, offset: 576)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !992, file: !14, line: 532, baseType: !1024, size: 64, offset: 640)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !992, file: !14, line: 536, baseType: !928, size: 64, offset: 704)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !971, file: !14, line: 563, baseType: !1027, size: 64, offset: 320)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!990, !991, !13}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !971, file: !14, line: 565, baseType: !1031, size: 64, offset: 384)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{null, !991, !126, !126}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !971, file: !14, line: 567, baseType: !1035, size: 64, offset: 448)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!126, !941}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !971, file: !14, line: 571, baseType: !987, size: 64, offset: 512)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !971, file: !14, line: 574, baseType: !987, size: 64, offset: 576)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !971, file: !14, line: 579, baseType: !1041, size: 64, offset: 640)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!221, !941, !126, !112, !221, !221}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !971, file: !14, line: 585, baseType: !1045, size: 64, offset: 704)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!183, !941}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !971, file: !14, line: 615, baseType: !1049, size: 64, offset: 768)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!680, !941, !126}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !942, file: !682, line: 359, baseType: !126, size: 64, offset: 1216)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !942, file: !682, line: 361, baseType: !314, size: 64, offset: 1280)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !942, file: !682, line: 362, baseType: !112, size: 64, offset: 1344)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !942, file: !682, line: 365, baseType: !731, size: 64, offset: 1408)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !942, file: !682, line: 373, baseType: !1057, offset: 1472)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !682, line: 296, elements: !209)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !938, file: !682, line: 391, baseType: !716, size: 64, offset: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !938, file: !682, line: 392, baseType: !136, size: 64, offset: 128)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !938, file: !682, line: 394, baseType: !1061, size: 64, offset: 192)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!126, !314, !126, !126, !126, !126}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !938, file: !682, line: 398, baseType: !126, size: 64, offset: 256)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !938, file: !682, line: 399, baseType: !126, size: 64, offset: 320)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !938, file: !682, line: 405, baseType: !126, size: 64, offset: 384)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !938, file: !682, line: 406, baseType: !126, size: 64, offset: 448)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !938, file: !682, line: 407, baseType: !1069, size: 64, offset: 512)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !672, line: 286, baseType: !1071)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !672, line: 286, size: 64, elements: !1072)
!1072 = !{!1073}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1071, file: !672, line: 286, baseType: !1074, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !957, line: 18, baseType: !126)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !938, file: !682, line: 416, baseType: !707, size: 32, offset: 576)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !938, file: !682, line: 428, baseType: !707, size: 32, offset: 608)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !938, file: !682, line: 437, baseType: !707, size: 32, offset: 640)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !938, file: !682, line: 447, baseType: !707, size: 32, offset: 672)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !938, file: !682, line: 450, baseType: !731, size: 64, offset: 704)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !938, file: !682, line: 452, baseType: !221, size: 32, offset: 768)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !938, file: !682, line: 454, baseType: !195, offset: 800)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !938, file: !682, line: 457, baseType: !727, size: 256, offset: 832)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !938, file: !682, line: 459, baseType: !118, size: 128, offset: 1088)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !938, file: !682, line: 466, baseType: !126, size: 64, offset: 1216)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !938, file: !682, line: 467, baseType: !126, size: 64, offset: 1280)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !938, file: !682, line: 469, baseType: !126, size: 64, offset: 1344)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !938, file: !682, line: 470, baseType: !126, size: 64, offset: 1408)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !938, file: !682, line: 471, baseType: !733, size: 64, offset: 1472)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !938, file: !682, line: 472, baseType: !126, size: 64, offset: 1536)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !938, file: !682, line: 473, baseType: !126, size: 64, offset: 1600)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !938, file: !682, line: 474, baseType: !126, size: 64, offset: 1664)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !938, file: !682, line: 475, baseType: !126, size: 64, offset: 1728)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !938, file: !682, line: 477, baseType: !195, offset: 1792)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !938, file: !682, line: 478, baseType: !126, size: 64, offset: 1792)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !938, file: !682, line: 478, baseType: !126, size: 64, offset: 1856)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !938, file: !682, line: 478, baseType: !126, size: 64, offset: 1920)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !938, file: !682, line: 478, baseType: !126, size: 64, offset: 1984)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !938, file: !682, line: 479, baseType: !126, size: 64, offset: 2048)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !938, file: !682, line: 479, baseType: !126, size: 64, offset: 2112)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !938, file: !682, line: 479, baseType: !126, size: 64, offset: 2176)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !938, file: !682, line: 480, baseType: !126, size: 64, offset: 2240)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !938, file: !682, line: 480, baseType: !126, size: 64, offset: 2304)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !938, file: !682, line: 480, baseType: !126, size: 64, offset: 2368)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !938, file: !682, line: 480, baseType: !126, size: 64, offset: 2432)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !938, file: !682, line: 482, baseType: !1106, size: 2816, offset: 2496)
!1106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 2816, elements: !1107)
!1107 = !{!1108}
!1108 = !DISubrange(count: 44)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !938, file: !682, line: 488, baseType: !1110, size: 256, offset: 5312)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1111, line: 60, size: 256, elements: !1112)
!1111 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1112 = !{!1113}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1110, file: !1111, line: 61, baseType: !1114, size: 256)
!1114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !731, size: 256, elements: !155)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !938, file: !682, line: 490, baseType: !1116, size: 64, offset: 5568)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !682, line: 490, flags: DIFlagFwdDecl)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !938, file: !682, line: 493, baseType: !1119, size: 896, offset: 5632)
!1119 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1120, line: 53, baseType: !1121)
!1120 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1120, line: 13, size: 896, elements: !1122)
!1122 = !{!1123, !1124, !1125, !1126, !1129, !1130, !1137, !1138, !1158, !1159, !1160}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1121, file: !1120, line: 18, baseType: !136, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1121, file: !1120, line: 28, baseType: !733, size: 64, offset: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1121, file: !1120, line: 31, baseType: !727, size: 256, offset: 128)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1121, file: !1120, line: 32, baseType: !1127, size: 64, offset: 384)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1120, line: 32, flags: DIFlagFwdDecl)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1121, file: !1120, line: 37, baseType: !279, size: 16, offset: 448)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1121, file: !1120, line: 40, baseType: !1131, size: 192, offset: 512)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1132, line: 53, size: 192, elements: !1133)
!1132 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1133 = !{!1134, !1135, !1136}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1131, file: !1132, line: 54, baseType: !731, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1131, file: !1132, line: 55, baseType: !195, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1131, file: !1132, line: 59, baseType: !118, size: 128, offset: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1121, file: !1120, line: 41, baseType: !112, size: 64, offset: 704)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1121, file: !1120, line: 42, baseType: !1139, size: 64, offset: 768)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1141)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1142, line: 13, size: 896, elements: !1143)
!1142 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1143 = !{!1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1141, file: !1142, line: 14, baseType: !112, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1141, file: !1142, line: 15, baseType: !126, size: 64, offset: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1141, file: !1142, line: 17, baseType: !126, size: 64, offset: 128)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1141, file: !1142, line: 17, baseType: !126, size: 64, offset: 192)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1141, file: !1142, line: 19, baseType: !272, size: 64, offset: 256)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1141, file: !1142, line: 21, baseType: !272, size: 64, offset: 320)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1141, file: !1142, line: 22, baseType: !272, size: 64, offset: 384)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1141, file: !1142, line: 23, baseType: !272, size: 64, offset: 448)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1141, file: !1142, line: 24, baseType: !272, size: 64, offset: 512)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1141, file: !1142, line: 25, baseType: !272, size: 64, offset: 576)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1141, file: !1142, line: 26, baseType: !272, size: 64, offset: 640)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1141, file: !1142, line: 27, baseType: !272, size: 64, offset: 704)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1141, file: !1142, line: 28, baseType: !272, size: 64, offset: 768)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1141, file: !1142, line: 29, baseType: !272, size: 64, offset: 832)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1121, file: !1120, line: 44, baseType: !707, size: 32, offset: 832)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1121, file: !1120, line: 50, baseType: !819, size: 16, offset: 864)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1121, file: !1120, line: 51, baseType: !1161, size: 16, offset: 880)
!1161 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !137, line: 18, baseType: !1162)
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !139, line: 23, baseType: !1163)
!1163 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !938, file: !682, line: 495, baseType: !126, size: 64, offset: 6528)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !938, file: !682, line: 497, baseType: !1166, size: 64, offset: 6592)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !682, line: 381, size: 384, elements: !1168)
!1168 = !{!1169, !1170, !2271}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1167, file: !682, line: 382, baseType: !707, size: 32)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1167, file: !682, line: 383, baseType: !1171, size: 128, offset: 64)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !682, line: 376, size: 128, elements: !1172)
!1172 = !{!1173, !2269}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1171, file: !682, line: 377, baseType: !1174, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1176, line: 640, size: 48640, elements: !1177)
!1176 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1177 = !{!1178, !1184, !1186, !1187, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1204, !1222, !1233, !1318, !1319, !1320, !1331, !1332, !1334, !1335, !1336, !1337, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1416, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1454, !1456, !1457, !1458, !1470, !1471, !1472, !1473, !1474, !1475, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1499, !1504, !1688, !1689, !1690, !1691, !1695, !1698, !1701, !1704, !1707, !1711, !1812, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1858, !1859, !1860, !1861, !1862, !1867, !1868, !1869, !1872, !1873, !1876, !1879, !1882, !1885, !1928, !1931, !1932, !2011, !2012, !2015, !2016, !2019, !2020, !2021, !2025, !2026, !2027, !2040, !2041, !2042, !2052, !2057, !2060, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1175, file: !1176, line: 646, baseType: !1179, size: 128)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1180, line: 56, size: 128, elements: !1181)
!1180 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1181 = !{!1182, !1183}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1179, file: !1180, line: 57, baseType: !126, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1179, file: !1180, line: 58, baseType: !377, size: 32, offset: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1175, file: !1176, line: 649, baseType: !1185, size: 64, offset: 128)
!1185 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !272)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1175, file: !1176, line: 657, baseType: !112, size: 64, offset: 192)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1175, file: !1176, line: 658, baseType: !1188, size: 32, offset: 256)
!1188 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1189, line: 113, baseType: !1190)
!1189 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1189, line: 111, size: 32, elements: !1191)
!1191 = !{!1192}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1190, file: !1189, line: 112, baseType: !707, size: 32)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1175, file: !1176, line: 660, baseType: !7, size: 32, offset: 288)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1175, file: !1176, line: 661, baseType: !7, size: 32, offset: 320)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1175, file: !1176, line: 684, baseType: !221, size: 32, offset: 352)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1175, file: !1176, line: 686, baseType: !221, size: 32, offset: 384)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1175, file: !1176, line: 687, baseType: !221, size: 32, offset: 416)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1175, file: !1176, line: 688, baseType: !221, size: 32, offset: 448)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1175, file: !1176, line: 689, baseType: !7, size: 32, offset: 480)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1175, file: !1176, line: 691, baseType: !1201, size: 64, offset: 512)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1203)
!1203 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1176, line: 691, flags: DIFlagFwdDecl)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1175, file: !1176, line: 692, baseType: !1205, size: 832, offset: 576)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1176, line: 451, size: 832, elements: !1206)
!1206 = !{!1207, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1205, file: !1176, line: 453, baseType: !1208, size: 128)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1176, line: 325, size: 128, elements: !1209)
!1209 = !{!1210, !1211}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1208, file: !1176, line: 326, baseType: !126, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1208, file: !1176, line: 327, baseType: !377, size: 32, offset: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1205, file: !1176, line: 454, baseType: !720, size: 192, align: 64, offset: 128)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1205, file: !1176, line: 455, baseType: !118, size: 128, offset: 320)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1205, file: !1176, line: 456, baseType: !7, size: 32, offset: 448)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1205, file: !1176, line: 458, baseType: !136, size: 64, offset: 512)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1205, file: !1176, line: 459, baseType: !136, size: 64, offset: 576)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1205, file: !1176, line: 460, baseType: !136, size: 64, offset: 640)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1205, file: !1176, line: 461, baseType: !136, size: 64, offset: 704)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1205, file: !1176, line: 463, baseType: !136, size: 64, offset: 768)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1205, file: !1176, line: 465, baseType: !1221, offset: 832)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1176, line: 415, elements: !209)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1175, file: !1176, line: 693, baseType: !1223, size: 384, offset: 1408)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1176, line: 489, size: 384, elements: !1224)
!1224 = !{!1225, !1226, !1227, !1228, !1229, !1230, !1231}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1223, file: !1176, line: 490, baseType: !118, size: 128)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1223, file: !1176, line: 491, baseType: !126, size: 64, offset: 128)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1223, file: !1176, line: 492, baseType: !126, size: 64, offset: 192)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1223, file: !1176, line: 493, baseType: !7, size: 32, offset: 256)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1223, file: !1176, line: 494, baseType: !279, size: 16, offset: 288)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1223, file: !1176, line: 495, baseType: !279, size: 16, offset: 304)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1223, file: !1176, line: 497, baseType: !1232, size: 64, offset: 320)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1175, file: !1176, line: 697, baseType: !1234, size: 1792, offset: 1792)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1176, line: 507, size: 1792, elements: !1235)
!1235 = !{!1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1315, !1316}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1234, file: !1176, line: 508, baseType: !720, size: 192, align: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1234, file: !1176, line: 515, baseType: !136, size: 64, offset: 192)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1234, file: !1176, line: 516, baseType: !136, size: 64, offset: 256)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1234, file: !1176, line: 517, baseType: !136, size: 64, offset: 320)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1234, file: !1176, line: 518, baseType: !136, size: 64, offset: 384)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1234, file: !1176, line: 519, baseType: !136, size: 64, offset: 448)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1234, file: !1176, line: 526, baseType: !737, size: 64, offset: 512)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1234, file: !1176, line: 527, baseType: !136, size: 64, offset: 576)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1234, file: !1176, line: 528, baseType: !7, size: 32, offset: 640)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1234, file: !1176, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1234, file: !1176, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1234, file: !1176, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1234, file: !1176, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1234, file: !1176, line: 563, baseType: !1250, size: 512, offset: 704)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1251)
!1251 = !{!1252, !1260, !1261, !1266, !1309, !1312, !1313, !1314}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1250, file: !20, line: 119, baseType: !1253, size: 256)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1254, line: 9, size: 256, elements: !1255)
!1254 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1255 = !{!1256, !1257}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1253, file: !1254, line: 10, baseType: !720, size: 192, align: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1253, file: !1254, line: 11, baseType: !1258, size: 64, offset: 192)
!1258 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1259, line: 29, baseType: !737)
!1259 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1250, file: !20, line: 120, baseType: !1258, size: 64, offset: 256)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1250, file: !20, line: 121, baseType: !1262, size: 64, offset: 320)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!19, !1265}
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1250, file: !20, line: 122, baseType: !1267, size: 64, offset: 384)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1269)
!1269 = !{!1270, !1290, !1291, !1294, !1299, !1300, !1304, !1308}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1268, file: !20, line: 160, baseType: !1271, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1273)
!1273 = !{!1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1272, file: !20, line: 215, baseType: !740)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1272, file: !20, line: 216, baseType: !7, size: 32)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1272, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1272, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1272, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1272, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1272, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1272, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1272, file: !20, line: 233, baseType: !1258, size: 64, offset: 128)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1272, file: !20, line: 234, baseType: !1265, size: 64, offset: 192)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1272, file: !20, line: 235, baseType: !1258, size: 64, offset: 256)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1272, file: !20, line: 236, baseType: !1265, size: 64, offset: 320)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1272, file: !20, line: 237, baseType: !1287, size: 4096, offset: 512)
!1287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1268, size: 4096, elements: !1288)
!1288 = !{!1289}
!1289 = !DISubrange(count: 8)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1268, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1268, file: !20, line: 162, baseType: !1292, size: 32, offset: 96)
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !119, line: 27, baseType: !1293)
!1293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !270, line: 96, baseType: !221)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1268, file: !20, line: 163, baseType: !1295, size: 32, offset: 128)
!1295 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !350, line: 276, baseType: !1296)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !350, line: 276, size: 32, elements: !1297)
!1297 = !{!1298}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1296, file: !350, line: 276, baseType: !354, size: 32)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1268, file: !20, line: 164, baseType: !1265, size: 64, offset: 192)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1268, file: !20, line: 165, baseType: !1301, size: 128, offset: 256)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1254, line: 14, size: 128, elements: !1302)
!1302 = !{!1303}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1301, file: !1254, line: 15, baseType: !712, size: 128)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1268, file: !20, line: 166, baseType: !1305, size: 64, offset: 384)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!1258}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1268, file: !20, line: 167, baseType: !1258, size: 64, offset: 448)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1250, file: !20, line: 123, baseType: !1310, size: 8, offset: 448)
!1310 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !137, line: 17, baseType: !1311)
!1311 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !139, line: 21, baseType: !145)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1250, file: !20, line: 124, baseType: !1310, size: 8, offset: 456)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1250, file: !20, line: 125, baseType: !1310, size: 8, offset: 464)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1250, file: !20, line: 126, baseType: !1310, size: 8, offset: 472)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1234, file: !1176, line: 572, baseType: !1250, size: 512, offset: 1216)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1234, file: !1176, line: 580, baseType: !1317, size: 64, offset: 1728)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1175, file: !1176, line: 721, baseType: !7, size: 32, offset: 3584)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1175, file: !1176, line: 722, baseType: !221, size: 32, offset: 3616)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1175, file: !1176, line: 723, baseType: !1321, size: 64, offset: 3648)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1323)
!1323 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1324, line: 17, baseType: !1325)
!1324 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1324, line: 17, size: 64, elements: !1326)
!1326 = !{!1327}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1325, file: !1324, line: 17, baseType: !1328, size: 64)
!1328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 64, elements: !1329)
!1329 = !{!1330}
!1330 = !DISubrange(count: 1)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1175, file: !1176, line: 724, baseType: !1323, size: 64, offset: 3712)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1175, file: !1176, line: 749, baseType: !1333, offset: 3776)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1176, line: 290, elements: !209)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1175, file: !1176, line: 751, baseType: !118, size: 128, offset: 3776)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1175, file: !1176, line: 757, baseType: !934, size: 64, offset: 3904)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1175, file: !1176, line: 758, baseType: !934, size: 64, offset: 3968)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1175, file: !1176, line: 761, baseType: !1338, size: 320, offset: 4032)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1111, line: 34, size: 320, elements: !1339)
!1339 = !{!1340, !1341}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1338, file: !1111, line: 35, baseType: !136, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1338, file: !1111, line: 36, baseType: !1342, size: 256, offset: 64)
!1342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !941, size: 256, elements: !155)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1175, file: !1176, line: 766, baseType: !221, size: 32, offset: 4352)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1175, file: !1176, line: 767, baseType: !221, size: 32, offset: 4384)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1175, file: !1176, line: 768, baseType: !221, size: 32, offset: 4416)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1175, file: !1176, line: 770, baseType: !221, size: 32, offset: 4448)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1175, file: !1176, line: 772, baseType: !126, size: 64, offset: 4480)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1175, file: !1176, line: 775, baseType: !7, size: 32, offset: 4544)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1175, file: !1176, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1175, file: !1176, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1175, file: !1176, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1175, file: !1176, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1175, file: !1176, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1175, file: !1176, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1175, file: !1176, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1175, file: !1176, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1175, file: !1176, line: 831, baseType: !126, size: 64, offset: 4672)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1175, file: !1176, line: 833, baseType: !1359, size: 384, offset: 4736)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1360)
!1360 = !{!1361, !1366}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1359, file: !25, line: 26, baseType: !1362, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!272, !1365}
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, scope: !1359, file: !25, line: 27, baseType: !1367, size: 320, offset: 64)
!1367 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1359, file: !25, line: 27, size: 320, elements: !1368)
!1368 = !{!1369, !1379, !1406}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1367, file: !25, line: 36, baseType: !1370, size: 320)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1367, file: !25, line: 29, size: 320, elements: !1371)
!1371 = !{!1372, !1374, !1375, !1376, !1377, !1378}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1370, file: !25, line: 30, baseType: !1373, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1370, file: !25, line: 31, baseType: !377, size: 32, offset: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1370, file: !25, line: 32, baseType: !377, size: 32, offset: 96)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1370, file: !25, line: 33, baseType: !377, size: 32, offset: 128)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1370, file: !25, line: 34, baseType: !136, size: 64, offset: 192)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1370, file: !25, line: 35, baseType: !1373, size: 64, offset: 256)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1367, file: !25, line: 46, baseType: !1380, size: 192)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1367, file: !25, line: 38, size: 192, elements: !1381)
!1381 = !{!1382, !1383, !1384, !1405}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1380, file: !25, line: 39, baseType: !1292, size: 32)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1380, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1384 = !DIDerivedType(tag: DW_TAG_member, scope: !1380, file: !25, line: 41, baseType: !1385, size: 64, offset: 64)
!1385 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1380, file: !25, line: 41, size: 64, elements: !1386)
!1386 = !{!1387, !1395}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1385, file: !25, line: 42, baseType: !1388, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1390, line: 7, size: 128, elements: !1391)
!1390 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1391 = !{!1392, !1394}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1389, file: !1390, line: 8, baseType: !1393, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !270, line: 93, baseType: !489)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1389, file: !1390, line: 9, baseType: !489, size: 64, offset: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1385, file: !25, line: 43, baseType: !1396, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1398, line: 7, size: 64, elements: !1399)
!1398 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1399 = !{!1400, !1404}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1397, file: !1398, line: 8, baseType: !1401, size: 32)
!1401 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1398, line: 5, baseType: !1402)
!1402 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !137, line: 20, baseType: !1403)
!1403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !139, line: 26, baseType: !221)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1397, file: !1398, line: 9, baseType: !1402, size: 32, offset: 32)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1380, file: !25, line: 45, baseType: !136, size: 64, offset: 128)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1367, file: !25, line: 54, baseType: !1407, size: 256)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1367, file: !25, line: 48, size: 256, elements: !1408)
!1408 = !{!1409, !1412, !1413, !1414, !1415}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1407, file: !25, line: 49, baseType: !1410, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1407, file: !25, line: 50, baseType: !221, size: 32, offset: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1407, file: !25, line: 51, baseType: !221, size: 32, offset: 96)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1407, file: !25, line: 52, baseType: !126, size: 64, offset: 128)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1407, file: !25, line: 53, baseType: !126, size: 64, offset: 192)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1175, file: !1176, line: 835, baseType: !1417, size: 32, offset: 5120)
!1417 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !119, line: 22, baseType: !1418)
!1418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !270, line: 28, baseType: !221)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1175, file: !1176, line: 836, baseType: !1417, size: 32, offset: 5152)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1175, file: !1176, line: 840, baseType: !126, size: 64, offset: 5184)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1175, file: !1176, line: 849, baseType: !1174, size: 64, offset: 5248)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1175, file: !1176, line: 852, baseType: !1174, size: 64, offset: 5312)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1175, file: !1176, line: 857, baseType: !118, size: 128, offset: 5376)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1175, file: !1176, line: 858, baseType: !118, size: 128, offset: 5504)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1175, file: !1176, line: 859, baseType: !1174, size: 64, offset: 5632)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1175, file: !1176, line: 867, baseType: !118, size: 128, offset: 5696)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1175, file: !1176, line: 868, baseType: !118, size: 128, offset: 5824)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1175, file: !1176, line: 871, baseType: !1429, size: 64, offset: 5952)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1431)
!1431 = !{!1432, !1433, !1434, !1435, !1437, !1438, !1445, !1446}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1430, file: !53, line: 61, baseType: !1188, size: 32)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1430, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1430, file: !53, line: 63, baseType: !195, offset: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1430, file: !53, line: 65, baseType: !1436, size: 256, offset: 64)
!1436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !594, size: 256, elements: !155)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1430, file: !53, line: 66, baseType: !594, size: 64, offset: 320)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1430, file: !53, line: 68, baseType: !1439, size: 128, offset: 384)
!1439 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1440, line: 40, baseType: !1441)
!1440 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1440, line: 36, size: 128, elements: !1442)
!1442 = !{!1443, !1444}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1441, file: !1440, line: 37, baseType: !195)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1441, file: !1440, line: 38, baseType: !118, size: 128)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1430, file: !53, line: 69, baseType: !327, size: 128, align: 64, offset: 512)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1430, file: !53, line: 70, baseType: !1447, size: 128, offset: 640)
!1447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1448, size: 128, elements: !1329)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1449)
!1449 = !{!1450, !1451}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1448, file: !53, line: 55, baseType: !221, size: 32)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1448, file: !53, line: 56, baseType: !1452, size: 64, offset: 64)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1175, file: !1176, line: 872, baseType: !1455, size: 512, offset: 6016)
!1455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !598, size: 512, elements: !155)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1175, file: !1176, line: 873, baseType: !118, size: 128, offset: 6528)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1175, file: !1176, line: 874, baseType: !118, size: 128, offset: 6656)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1175, file: !1176, line: 876, baseType: !1459, size: 64, offset: 6784)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1461, line: 26, size: 192, elements: !1462)
!1461 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1462 = !{!1463, !1464}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1460, file: !1461, line: 27, baseType: !7, size: 32)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1460, file: !1461, line: 28, baseType: !1465, size: 128, offset: 64)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1466, line: 43, size: 128, elements: !1467)
!1466 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1467 = !{!1468, !1469}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1465, file: !1466, line: 44, baseType: !740)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1465, file: !1466, line: 45, baseType: !118, size: 128)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1175, file: !1176, line: 879, baseType: !664, size: 64, offset: 6848)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1175, file: !1176, line: 882, baseType: !664, size: 64, offset: 6912)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1175, file: !1176, line: 884, baseType: !136, size: 64, offset: 6976)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1175, file: !1176, line: 885, baseType: !136, size: 64, offset: 7040)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1175, file: !1176, line: 890, baseType: !136, size: 64, offset: 7104)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1175, file: !1176, line: 891, baseType: !1476, size: 128, offset: 7168)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1176, line: 242, size: 128, elements: !1477)
!1477 = !{!1478, !1479, !1480}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1476, file: !1176, line: 244, baseType: !136, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1476, file: !1176, line: 245, baseType: !136, size: 64, offset: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1476, file: !1176, line: 246, baseType: !740, offset: 128)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1175, file: !1176, line: 900, baseType: !126, size: 64, offset: 7296)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1175, file: !1176, line: 901, baseType: !126, size: 64, offset: 7360)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1175, file: !1176, line: 904, baseType: !136, size: 64, offset: 7424)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1175, file: !1176, line: 907, baseType: !136, size: 64, offset: 7488)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1175, file: !1176, line: 910, baseType: !126, size: 64, offset: 7552)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1175, file: !1176, line: 911, baseType: !126, size: 64, offset: 7616)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1175, file: !1176, line: 914, baseType: !1488, size: 640, offset: 7680)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1489, line: 123, size: 640, elements: !1490)
!1489 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1490 = !{!1491, !1497, !1498}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1488, file: !1489, line: 124, baseType: !1492, size: 576)
!1492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1493, size: 576, elements: !238)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1489, line: 108, size: 192, elements: !1494)
!1494 = !{!1495, !1496}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1493, file: !1489, line: 109, baseType: !136, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1493, file: !1489, line: 110, baseType: !1301, size: 128, offset: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1488, file: !1489, line: 125, baseType: !7, size: 32, offset: 576)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1488, file: !1489, line: 126, baseType: !7, size: 32, offset: 608)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1175, file: !1176, line: 917, baseType: !1500, size: 192, offset: 8320)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1489, line: 134, size: 192, elements: !1501)
!1501 = !{!1502, !1503}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1500, file: !1489, line: 135, baseType: !327, size: 128, align: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1500, file: !1489, line: 136, baseType: !7, size: 32, offset: 128)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1175, file: !1176, line: 923, baseType: !1505, size: 64, offset: 8512)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1507)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1508, line: 111, size: 1280, elements: !1509)
!1508 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1509 = !{!1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1529, !1530, !1531, !1532, !1533, !1534, !1641, !1642, !1643, !1644, !1670, !1673, !1683}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1507, file: !1508, line: 112, baseType: !707, size: 32)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1507, file: !1508, line: 120, baseType: !391, size: 32, offset: 32)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1507, file: !1508, line: 121, baseType: !399, size: 32, offset: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1507, file: !1508, line: 122, baseType: !391, size: 32, offset: 96)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1507, file: !1508, line: 123, baseType: !399, size: 32, offset: 128)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1507, file: !1508, line: 124, baseType: !391, size: 32, offset: 160)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1507, file: !1508, line: 125, baseType: !399, size: 32, offset: 192)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1507, file: !1508, line: 126, baseType: !391, size: 32, offset: 224)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1507, file: !1508, line: 127, baseType: !399, size: 32, offset: 256)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1507, file: !1508, line: 128, baseType: !7, size: 32, offset: 288)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1507, file: !1508, line: 129, baseType: !1521, size: 64, offset: 320)
!1521 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1522, line: 26, baseType: !1523)
!1522 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1522, line: 24, size: 64, elements: !1524)
!1524 = !{!1525}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1523, file: !1522, line: 25, baseType: !1526, size: 64)
!1526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 64, elements: !1527)
!1527 = !{!1528}
!1528 = !DISubrange(count: 2)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1507, file: !1508, line: 130, baseType: !1521, size: 64, offset: 384)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1507, file: !1508, line: 131, baseType: !1521, size: 64, offset: 448)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1507, file: !1508, line: 132, baseType: !1521, size: 64, offset: 512)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1507, file: !1508, line: 133, baseType: !1521, size: 64, offset: 576)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1507, file: !1508, line: 135, baseType: !145, size: 8, offset: 640)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1507, file: !1508, line: 137, baseType: !1535, size: 64, offset: 704)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1537, line: 189, size: 1664, elements: !1538)
!1537 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1538 = !{!1539, !1540, !1543, !1548, !1549, !1552, !1553, !1558, !1559, !1560, !1561, !1563, !1564, !1565, !1566, !1567, !1605, !1626}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1536, file: !1537, line: 190, baseType: !1188, size: 32)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1536, file: !1537, line: 191, baseType: !1541, size: 32, offset: 32)
!1541 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1537, line: 28, baseType: !1542)
!1542 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !119, line: 98, baseType: !1402)
!1543 = !DIDerivedType(tag: DW_TAG_member, scope: !1536, file: !1537, line: 192, baseType: !1544, size: 192, offset: 64)
!1544 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1536, file: !1537, line: 192, size: 192, elements: !1545)
!1545 = !{!1546, !1547}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1544, file: !1537, line: 193, baseType: !118, size: 128)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1544, file: !1537, line: 194, baseType: !720, size: 192, align: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1536, file: !1537, line: 199, baseType: !727, size: 256, offset: 256)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1536, file: !1537, line: 200, baseType: !1550, size: 64, offset: 512)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1537, line: 200, flags: DIFlagFwdDecl)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1536, file: !1537, line: 201, baseType: !112, size: 64, offset: 576)
!1553 = !DIDerivedType(tag: DW_TAG_member, scope: !1536, file: !1537, line: 202, baseType: !1554, size: 64, offset: 640)
!1554 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1536, file: !1537, line: 202, size: 64, elements: !1555)
!1555 = !{!1556, !1557}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1554, file: !1537, line: 203, baseType: !495, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1554, file: !1537, line: 204, baseType: !495, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1536, file: !1537, line: 206, baseType: !495, size: 64, offset: 704)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1536, file: !1537, line: 207, baseType: !391, size: 32, offset: 768)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1536, file: !1537, line: 208, baseType: !399, size: 32, offset: 800)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1536, file: !1537, line: 209, baseType: !1562, size: 32, offset: 832)
!1562 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1537, line: 31, baseType: !515)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1536, file: !1537, line: 210, baseType: !279, size: 16, offset: 864)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1536, file: !1537, line: 211, baseType: !279, size: 16, offset: 880)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1536, file: !1537, line: 215, baseType: !1163, size: 16, offset: 896)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1536, file: !1537, line: 222, baseType: !126, size: 64, offset: 960)
!1567 = !DIDerivedType(tag: DW_TAG_member, scope: !1536, file: !1537, line: 239, baseType: !1568, size: 320, offset: 1024)
!1568 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1536, file: !1537, line: 239, size: 320, elements: !1569)
!1569 = !{!1570, !1597}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1568, file: !1537, line: 240, baseType: !1571, size: 320)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1537, line: 108, size: 320, elements: !1572)
!1572 = !{!1573, !1574, !1586, !1589, !1596}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1571, file: !1537, line: 110, baseType: !126, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, scope: !1571, file: !1537, line: 111, baseType: !1575, size: 64, offset: 64)
!1575 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1571, file: !1537, line: 111, size: 64, elements: !1576)
!1576 = !{!1577, !1585}
!1577 = !DIDerivedType(tag: DW_TAG_member, scope: !1575, file: !1537, line: 112, baseType: !1578, size: 64)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1575, file: !1537, line: 112, size: 64, elements: !1579)
!1579 = !{!1580, !1581}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1578, file: !1537, line: 114, baseType: !819, size: 16)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1578, file: !1537, line: 115, baseType: !1582, size: 48, offset: 16)
!1582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 48, elements: !1583)
!1583 = !{!1584}
!1584 = !DISubrange(count: 6)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1575, file: !1537, line: 121, baseType: !126, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1571, file: !1537, line: 123, baseType: !1587, size: 64, offset: 128)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1537, line: 96, flags: DIFlagFwdDecl)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1571, file: !1537, line: 124, baseType: !1590, size: 64, offset: 192)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1537, line: 102, size: 192, elements: !1592)
!1592 = !{!1593, !1594, !1595}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1591, file: !1537, line: 103, baseType: !327, size: 128, align: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1591, file: !1537, line: 104, baseType: !1188, size: 32, offset: 128)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1591, file: !1537, line: 105, baseType: !446, size: 8, offset: 160)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1571, file: !1537, line: 125, baseType: !183, size: 64, offset: 256)
!1597 = !DIDerivedType(tag: DW_TAG_member, scope: !1568, file: !1537, line: 241, baseType: !1598, size: 320)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1568, file: !1537, line: 241, size: 320, elements: !1599)
!1599 = !{!1600, !1601, !1602, !1603, !1604}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1598, file: !1537, line: 242, baseType: !126, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1598, file: !1537, line: 243, baseType: !126, size: 64, offset: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1598, file: !1537, line: 244, baseType: !1587, size: 64, offset: 128)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1598, file: !1537, line: 245, baseType: !1590, size: 64, offset: 192)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1598, file: !1537, line: 246, baseType: !237, size: 64, offset: 256)
!1605 = !DIDerivedType(tag: DW_TAG_member, scope: !1536, file: !1537, line: 254, baseType: !1606, size: 256, offset: 1344)
!1606 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1536, file: !1537, line: 254, size: 256, elements: !1607)
!1607 = !{!1608, !1614}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1606, file: !1537, line: 255, baseType: !1609, size: 256)
!1609 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1537, line: 128, size: 256, elements: !1610)
!1610 = !{!1611, !1612}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1609, file: !1537, line: 129, baseType: !112, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1609, file: !1537, line: 130, baseType: !1613, size: 256)
!1613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 256, elements: !155)
!1614 = !DIDerivedType(tag: DW_TAG_member, scope: !1606, file: !1537, line: 256, baseType: !1615, size: 256)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1606, file: !1537, line: 256, size: 256, elements: !1616)
!1616 = !{!1617, !1618}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1615, file: !1537, line: 258, baseType: !118, size: 128)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1615, file: !1537, line: 259, baseType: !1619, size: 128, offset: 128)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1620, line: 22, size: 128, elements: !1621)
!1620 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1621 = !{!1622, !1625}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1619, file: !1620, line: 23, baseType: !1623, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1620, line: 23, flags: DIFlagFwdDecl)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1619, file: !1620, line: 24, baseType: !126, size: 64, offset: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1536, file: !1537, line: 274, baseType: !1627, size: 64, offset: 1600)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1537, line: 170, size: 192, elements: !1629)
!1629 = !{!1630, !1639, !1640}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1628, file: !1537, line: 171, baseType: !1631, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1537, line: 165, baseType: !1632)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{!221, !1535, !1635, !1637, !1535}
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1588)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1609)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1628, file: !1537, line: 172, baseType: !1535, size: 64, offset: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1628, file: !1537, line: 173, baseType: !1587, size: 64, offset: 128)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1507, file: !1508, line: 138, baseType: !1535, size: 64, offset: 768)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1507, file: !1508, line: 139, baseType: !1535, size: 64, offset: 832)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1507, file: !1508, line: 140, baseType: !1535, size: 64, offset: 896)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1507, file: !1508, line: 145, baseType: !1645, size: 64, offset: 960)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1647, line: 13, size: 896, elements: !1648)
!1647 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1648 = !{!1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1646, file: !1647, line: 14, baseType: !1188, size: 32)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1646, file: !1647, line: 15, baseType: !707, size: 32, offset: 32)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1646, file: !1647, line: 16, baseType: !707, size: 32, offset: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1646, file: !1647, line: 21, baseType: !731, size: 64, offset: 128)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1646, file: !1647, line: 27, baseType: !126, size: 64, offset: 192)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1646, file: !1647, line: 28, baseType: !126, size: 64, offset: 256)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1646, file: !1647, line: 29, baseType: !731, size: 64, offset: 320)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1646, file: !1647, line: 32, baseType: !598, size: 128, offset: 384)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1646, file: !1647, line: 33, baseType: !391, size: 32, offset: 512)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1646, file: !1647, line: 37, baseType: !731, size: 64, offset: 576)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1646, file: !1647, line: 44, baseType: !1660, size: 256, offset: 640)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1661, line: 15, size: 256, elements: !1662)
!1661 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1662 = !{!1663, !1664, !1665, !1666, !1667, !1668, !1669}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1660, file: !1661, line: 16, baseType: !740)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1660, file: !1661, line: 18, baseType: !221, size: 32)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1660, file: !1661, line: 19, baseType: !221, size: 32, offset: 32)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1660, file: !1661, line: 20, baseType: !221, size: 32, offset: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1660, file: !1661, line: 21, baseType: !221, size: 32, offset: 96)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1660, file: !1661, line: 22, baseType: !126, size: 64, offset: 128)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1660, file: !1661, line: 23, baseType: !126, size: 64, offset: 192)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1507, file: !1508, line: 146, baseType: !1671, size: 64, offset: 1024)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !392, line: 18, flags: DIFlagFwdDecl)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1507, file: !1508, line: 147, baseType: !1674, size: 64, offset: 1088)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1508, line: 25, size: 64, elements: !1676)
!1676 = !{!1677, !1678, !1679}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1675, file: !1508, line: 26, baseType: !707, size: 32)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1675, file: !1508, line: 27, baseType: !221, size: 32, offset: 32)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1675, file: !1508, line: 28, baseType: !1680, offset: 64)
!1680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, elements: !1681)
!1681 = !{!1682}
!1682 = !DISubrange(count: 0)
!1683 = !DIDerivedType(tag: DW_TAG_member, scope: !1507, file: !1508, line: 149, baseType: !1684, size: 128, offset: 1152)
!1684 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1507, file: !1508, line: 149, size: 128, elements: !1685)
!1685 = !{!1686, !1687}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1684, file: !1508, line: 150, baseType: !221, size: 32)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1684, file: !1508, line: 151, baseType: !327, size: 128, align: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1175, file: !1176, line: 926, baseType: !1505, size: 64, offset: 8576)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1175, file: !1176, line: 929, baseType: !1505, size: 64, offset: 8640)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1175, file: !1176, line: 933, baseType: !1535, size: 64, offset: 8704)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1175, file: !1176, line: 943, baseType: !1692, size: 128, offset: 8768)
!1692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 128, elements: !1693)
!1693 = !{!1694}
!1694 = !DISubrange(count: 16)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1175, file: !1176, line: 945, baseType: !1696, size: 64, offset: 8896)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1176, line: 49, flags: DIFlagFwdDecl)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1175, file: !1176, line: 956, baseType: !1699, size: 64, offset: 8960)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1176, line: 45, flags: DIFlagFwdDecl)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1175, file: !1176, line: 959, baseType: !1702, size: 64, offset: 9024)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1176, line: 959, flags: DIFlagFwdDecl)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1175, file: !1176, line: 962, baseType: !1705, size: 64, offset: 9088)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1176, line: 66, flags: DIFlagFwdDecl)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1175, file: !1176, line: 966, baseType: !1708, size: 64, offset: 9152)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1710, line: 35, flags: DIFlagFwdDecl)
!1710 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1175, file: !1176, line: 969, baseType: !1712, size: 64, offset: 9216)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1714, line: 82, size: 7296, elements: !1715)
!1714 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1715 = !{!1716, !1717, !1718, !1719, !1720, !1721, !1722, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1751, !1760, !1761, !1763, !1764, !1765, !1768, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1798, !1799, !1806, !1807, !1808, !1809, !1810, !1811}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1713, file: !1714, line: 83, baseType: !1188, size: 32)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1713, file: !1714, line: 84, baseType: !707, size: 32, offset: 32)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1713, file: !1714, line: 85, baseType: !221, size: 32, offset: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1713, file: !1714, line: 86, baseType: !118, size: 128, offset: 128)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1713, file: !1714, line: 88, baseType: !1439, size: 128, offset: 256)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1713, file: !1714, line: 91, baseType: !1174, size: 64, offset: 384)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1713, file: !1714, line: 94, baseType: !1723, size: 192, offset: 448)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1724, line: 30, size: 192, elements: !1725)
!1724 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1725 = !{!1726, !1727}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1723, file: !1724, line: 31, baseType: !118, size: 128)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1723, file: !1724, line: 32, baseType: !1728, size: 64, offset: 128)
!1728 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1729, line: 25, baseType: !1730)
!1729 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1729, line: 23, size: 64, elements: !1731)
!1731 = !{!1732}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1730, file: !1729, line: 24, baseType: !1328, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1713, file: !1714, line: 97, baseType: !594, size: 64, offset: 640)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1713, file: !1714, line: 100, baseType: !221, size: 32, offset: 704)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1713, file: !1714, line: 106, baseType: !221, size: 32, offset: 736)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1713, file: !1714, line: 107, baseType: !1174, size: 64, offset: 768)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1713, file: !1714, line: 110, baseType: !221, size: 32, offset: 832)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1713, file: !1714, line: 111, baseType: !7, size: 32, offset: 864)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1713, file: !1714, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1713, file: !1714, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1713, file: !1714, line: 128, baseType: !221, size: 32, offset: 928)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1713, file: !1714, line: 129, baseType: !118, size: 128, offset: 960)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1713, file: !1714, line: 132, baseType: !1250, size: 512, offset: 1088)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1713, file: !1714, line: 133, baseType: !1258, size: 64, offset: 1600)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1713, file: !1714, line: 140, baseType: !1746, size: 256, offset: 1664)
!1746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1747, size: 256, elements: !1527)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1714, line: 38, size: 128, elements: !1748)
!1748 = !{!1749, !1750}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1747, file: !1714, line: 39, baseType: !136, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1747, file: !1714, line: 40, baseType: !136, size: 64, offset: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1713, file: !1714, line: 146, baseType: !1752, size: 192, offset: 1920)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1714, line: 66, size: 192, elements: !1753)
!1753 = !{!1754}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1752, file: !1714, line: 67, baseType: !1755, size: 192)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1714, line: 47, size: 192, elements: !1756)
!1756 = !{!1757, !1758, !1759}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1755, file: !1714, line: 48, baseType: !733, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1755, file: !1714, line: 49, baseType: !733, size: 64, offset: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1755, file: !1714, line: 50, baseType: !733, size: 64, offset: 128)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1713, file: !1714, line: 150, baseType: !1488, size: 640, offset: 2112)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1713, file: !1714, line: 153, baseType: !1762, size: 256, offset: 2752)
!1762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1429, size: 256, elements: !155)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1713, file: !1714, line: 159, baseType: !1429, size: 64, offset: 3008)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1713, file: !1714, line: 162, baseType: !221, size: 32, offset: 3072)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1713, file: !1714, line: 164, baseType: !1766, size: 64, offset: 3136)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1714, line: 164, flags: DIFlagFwdDecl)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1713, file: !1714, line: 175, baseType: !1769, size: 32, offset: 3200)
!1769 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !350, line: 805, baseType: !1770)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !350, line: 798, size: 32, elements: !1771)
!1771 = !{!1772, !1773}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1770, file: !350, line: 803, baseType: !349, size: 32)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1770, file: !350, line: 804, baseType: !195, offset: 32)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1713, file: !1714, line: 176, baseType: !136, size: 64, offset: 3264)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1713, file: !1714, line: 176, baseType: !136, size: 64, offset: 3328)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1713, file: !1714, line: 176, baseType: !136, size: 64, offset: 3392)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1713, file: !1714, line: 176, baseType: !136, size: 64, offset: 3456)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1713, file: !1714, line: 177, baseType: !136, size: 64, offset: 3520)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1713, file: !1714, line: 178, baseType: !136, size: 64, offset: 3584)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1713, file: !1714, line: 179, baseType: !1476, size: 128, offset: 3648)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1713, file: !1714, line: 180, baseType: !126, size: 64, offset: 3776)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1713, file: !1714, line: 180, baseType: !126, size: 64, offset: 3840)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1713, file: !1714, line: 180, baseType: !126, size: 64, offset: 3904)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1713, file: !1714, line: 180, baseType: !126, size: 64, offset: 3968)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1713, file: !1714, line: 181, baseType: !126, size: 64, offset: 4032)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1713, file: !1714, line: 181, baseType: !126, size: 64, offset: 4096)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1713, file: !1714, line: 181, baseType: !126, size: 64, offset: 4160)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1713, file: !1714, line: 181, baseType: !126, size: 64, offset: 4224)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1713, file: !1714, line: 182, baseType: !126, size: 64, offset: 4288)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1713, file: !1714, line: 182, baseType: !126, size: 64, offset: 4352)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1713, file: !1714, line: 182, baseType: !126, size: 64, offset: 4416)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1713, file: !1714, line: 182, baseType: !126, size: 64, offset: 4480)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1713, file: !1714, line: 183, baseType: !126, size: 64, offset: 4544)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1713, file: !1714, line: 183, baseType: !126, size: 64, offset: 4608)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1713, file: !1714, line: 184, baseType: !1796, offset: 4672)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1797, line: 12, elements: !209)
!1797 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1713, file: !1714, line: 192, baseType: !140, size: 64, offset: 4672)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1713, file: !1714, line: 203, baseType: !1800, size: 2048, offset: 4736)
!1800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1801, size: 2048, elements: !1693)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1802, line: 43, size: 128, elements: !1803)
!1802 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1803 = !{!1804, !1805}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1801, file: !1802, line: 44, baseType: !286, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1801, file: !1802, line: 45, baseType: !286, size: 64, offset: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1713, file: !1714, line: 220, baseType: !446, size: 8, offset: 6784)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1713, file: !1714, line: 221, baseType: !1163, size: 16, offset: 6800)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1713, file: !1714, line: 222, baseType: !1163, size: 16, offset: 6816)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1713, file: !1714, line: 224, baseType: !934, size: 64, offset: 6848)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1713, file: !1714, line: 227, baseType: !1131, size: 192, offset: 6912)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1713, file: !1714, line: 233, baseType: !1131, size: 192, offset: 7104)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1175, file: !1176, line: 970, baseType: !1813, size: 64, offset: 9280)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1714, line: 20, size: 16576, elements: !1815)
!1815 = !{!1816, !1817, !1818, !1819}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1814, file: !1714, line: 21, baseType: !195)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1814, file: !1714, line: 22, baseType: !1188, size: 32)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1814, file: !1714, line: 23, baseType: !1439, size: 128, offset: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1814, file: !1714, line: 24, baseType: !1820, size: 16384, offset: 192)
!1820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1821, size: 16384, elements: !242)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1724, line: 49, size: 256, elements: !1822)
!1822 = !{!1823}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1821, file: !1724, line: 50, baseType: !1824, size: 256)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1724, line: 35, size: 256, elements: !1825)
!1825 = !{!1826, !1833, !1834, !1840}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1824, file: !1724, line: 37, baseType: !1827, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1828, line: 19, baseType: !1829)
!1828 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1828, line: 18, baseType: !1831)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{null, !221}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1824, file: !1724, line: 38, baseType: !126, size: 64, offset: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1824, file: !1724, line: 44, baseType: !1835, size: 64, offset: 128)
!1835 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1828, line: 22, baseType: !1836)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1828, line: 21, baseType: !1838)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{null}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1824, file: !1724, line: 46, baseType: !1728, size: 64, offset: 192)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1175, file: !1176, line: 971, baseType: !1728, size: 64, offset: 9344)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1175, file: !1176, line: 972, baseType: !1728, size: 64, offset: 9408)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1175, file: !1176, line: 974, baseType: !1728, size: 64, offset: 9472)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1175, file: !1176, line: 975, baseType: !1723, size: 192, offset: 9536)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1175, file: !1176, line: 976, baseType: !126, size: 64, offset: 9728)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1175, file: !1176, line: 977, baseType: !284, size: 64, offset: 9792)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1175, file: !1176, line: 978, baseType: !7, size: 32, offset: 9856)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1175, file: !1176, line: 980, baseType: !330, size: 64, offset: 9920)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1175, file: !1176, line: 989, baseType: !1850, size: 128, offset: 9984)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1851, line: 35, size: 128, elements: !1852)
!1851 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1852 = !{!1853, !1854, !1855}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1850, file: !1851, line: 36, baseType: !221, size: 32)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1850, file: !1851, line: 37, baseType: !707, size: 32, offset: 32)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1850, file: !1851, line: 38, baseType: !1856, size: 64, offset: 64)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1851, line: 23, flags: DIFlagFwdDecl)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1175, file: !1176, line: 992, baseType: !136, size: 64, offset: 10112)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1175, file: !1176, line: 993, baseType: !136, size: 64, offset: 10176)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1175, file: !1176, line: 996, baseType: !195, offset: 10240)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1175, file: !1176, line: 999, baseType: !740, offset: 10240)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1175, file: !1176, line: 1001, baseType: !1863, size: 64, offset: 10240)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1176, line: 636, size: 64, elements: !1864)
!1864 = !{!1865}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1863, file: !1176, line: 637, baseType: !1866, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1175, file: !1176, line: 1005, baseType: !712, size: 128, offset: 10304)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1175, file: !1176, line: 1007, baseType: !1174, size: 64, offset: 10432)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1175, file: !1176, line: 1009, baseType: !1870, size: 64, offset: 10496)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1176, line: 1009, flags: DIFlagFwdDecl)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1175, file: !1176, line: 1043, baseType: !112, size: 64, offset: 10560)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1175, file: !1176, line: 1046, baseType: !1874, size: 64, offset: 10624)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1176, line: 41, flags: DIFlagFwdDecl)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1175, file: !1176, line: 1050, baseType: !1877, size: 64, offset: 10688)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1176, line: 42, flags: DIFlagFwdDecl)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1175, file: !1176, line: 1054, baseType: !1880, size: 64, offset: 10752)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1176, line: 55, flags: DIFlagFwdDecl)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1175, file: !1176, line: 1056, baseType: !1883, size: 64, offset: 10816)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1176, line: 40, flags: DIFlagFwdDecl)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1175, file: !1176, line: 1058, baseType: !1886, size: 64, offset: 10880)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1888, line: 99, size: 704, elements: !1889)
!1888 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1889 = !{!1890, !1891, !1892, !1893, !1894, !1895, !1896, !1915, !1916}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1887, file: !1888, line: 100, baseType: !731, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1887, file: !1888, line: 101, baseType: !707, size: 32, offset: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1887, file: !1888, line: 102, baseType: !707, size: 32, offset: 96)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1887, file: !1888, line: 105, baseType: !195, offset: 128)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1887, file: !1888, line: 107, baseType: !279, size: 16, offset: 128)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1887, file: !1888, line: 109, baseType: !698, size: 128, offset: 192)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1887, file: !1888, line: 110, baseType: !1897, size: 64, offset: 320)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1888, line: 73, size: 448, elements: !1899)
!1899 = !{!1900, !1903, !1904, !1909, !1914}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1898, file: !1888, line: 74, baseType: !1901, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1888, line: 74, flags: DIFlagFwdDecl)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1898, file: !1888, line: 75, baseType: !1886, size: 64, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, scope: !1898, file: !1888, line: 83, baseType: !1905, size: 128, offset: 128)
!1905 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1898, file: !1888, line: 83, size: 128, elements: !1906)
!1906 = !{!1907, !1908}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1905, file: !1888, line: 84, baseType: !118, size: 128)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1905, file: !1888, line: 85, baseType: !895, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, scope: !1898, file: !1888, line: 87, baseType: !1910, size: 128, offset: 256)
!1910 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1898, file: !1888, line: 87, size: 128, elements: !1911)
!1911 = !{!1912, !1913}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1910, file: !1888, line: 88, baseType: !598, size: 128)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1910, file: !1888, line: 89, baseType: !327, size: 128, align: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1898, file: !1888, line: 92, baseType: !7, size: 32, offset: 384)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1887, file: !1888, line: 111, baseType: !594, size: 64, offset: 384)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1887, file: !1888, line: 113, baseType: !1917, size: 256, offset: 448)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1918, line: 102, size: 256, elements: !1919)
!1918 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1919 = !{!1920, !1921, !1922}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1917, file: !1918, line: 103, baseType: !731, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1917, file: !1918, line: 104, baseType: !118, size: 128, offset: 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1917, file: !1918, line: 105, baseType: !1923, size: 64, offset: 192)
!1923 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1918, line: 21, baseType: !1924)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{null, !1927}
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1175, file: !1176, line: 1061, baseType: !1929, size: 64, offset: 10944)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1176, line: 43, flags: DIFlagFwdDecl)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1175, file: !1176, line: 1064, baseType: !126, size: 64, offset: 11008)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1175, file: !1176, line: 1065, baseType: !1933, size: 64, offset: 11072)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1724, line: 14, baseType: !1935)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1724, line: 12, size: 384, elements: !1936)
!1936 = !{!1937}
!1937 = !DIDerivedType(tag: DW_TAG_member, scope: !1935, file: !1724, line: 13, baseType: !1938, size: 384)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1935, file: !1724, line: 13, size: 384, elements: !1939)
!1939 = !{!1940, !1941, !1942, !1943}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1938, file: !1724, line: 13, baseType: !221, size: 32)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1938, file: !1724, line: 13, baseType: !221, size: 32, offset: 32)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1938, file: !1724, line: 13, baseType: !221, size: 32, offset: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1938, file: !1724, line: 13, baseType: !1944, size: 256, offset: 128)
!1944 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1945, line: 32, size: 256, elements: !1946)
!1945 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1946 = !{!1947, !1952, !1965, !1971, !1980, !2000, !2005}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1944, file: !1945, line: 37, baseType: !1948, size: 64)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1944, file: !1945, line: 34, size: 64, elements: !1949)
!1949 = !{!1950, !1951}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1948, file: !1945, line: 35, baseType: !1418, size: 32)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1948, file: !1945, line: 36, baseType: !397, size: 32, offset: 32)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1944, file: !1945, line: 45, baseType: !1953, size: 192)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1944, file: !1945, line: 40, size: 192, elements: !1954)
!1954 = !{!1955, !1957, !1958, !1964}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1953, file: !1945, line: 41, baseType: !1956, size: 32)
!1956 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !270, line: 95, baseType: !221)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1953, file: !1945, line: 42, baseType: !221, size: 32, offset: 32)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1953, file: !1945, line: 43, baseType: !1959, size: 64, offset: 64)
!1959 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1945, line: 11, baseType: !1960)
!1960 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1945, line: 8, size: 64, elements: !1961)
!1961 = !{!1962, !1963}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1960, file: !1945, line: 9, baseType: !221, size: 32)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1960, file: !1945, line: 10, baseType: !112, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1953, file: !1945, line: 44, baseType: !221, size: 32, offset: 128)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1944, file: !1945, line: 52, baseType: !1966, size: 128)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1944, file: !1945, line: 48, size: 128, elements: !1967)
!1967 = !{!1968, !1969, !1970}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1966, file: !1945, line: 49, baseType: !1418, size: 32)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1966, file: !1945, line: 50, baseType: !397, size: 32, offset: 32)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1966, file: !1945, line: 51, baseType: !1959, size: 64, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1944, file: !1945, line: 61, baseType: !1972, size: 256)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1944, file: !1945, line: 55, size: 256, elements: !1973)
!1973 = !{!1974, !1975, !1976, !1977, !1979}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1972, file: !1945, line: 56, baseType: !1418, size: 32)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1972, file: !1945, line: 57, baseType: !397, size: 32, offset: 32)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1972, file: !1945, line: 58, baseType: !221, size: 32, offset: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1972, file: !1945, line: 59, baseType: !1978, size: 64, offset: 128)
!1978 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !270, line: 94, baseType: !271)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1972, file: !1945, line: 60, baseType: !1978, size: 64, offset: 192)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1944, file: !1945, line: 95, baseType: !1981, size: 256)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1944, file: !1945, line: 64, size: 256, elements: !1982)
!1982 = !{!1983, !1984}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1981, file: !1945, line: 65, baseType: !112, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_member, scope: !1981, file: !1945, line: 77, baseType: !1985, size: 192, offset: 64)
!1985 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1981, file: !1945, line: 77, size: 192, elements: !1986)
!1986 = !{!1987, !1988, !1995}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1985, file: !1945, line: 82, baseType: !1163, size: 16)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1985, file: !1945, line: 88, baseType: !1989, size: 192)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1985, file: !1945, line: 84, size: 192, elements: !1990)
!1990 = !{!1991, !1993, !1994}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1989, file: !1945, line: 85, baseType: !1992, size: 64)
!1992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 64, elements: !1288)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1989, file: !1945, line: 86, baseType: !112, size: 64, offset: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1989, file: !1945, line: 87, baseType: !112, size: 64, offset: 128)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1985, file: !1945, line: 93, baseType: !1996, size: 96)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1985, file: !1945, line: 90, size: 96, elements: !1997)
!1997 = !{!1998, !1999}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1996, file: !1945, line: 91, baseType: !1992, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1996, file: !1945, line: 92, baseType: !378, size: 32, offset: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1944, file: !1945, line: 101, baseType: !2001, size: 128)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1944, file: !1945, line: 98, size: 128, elements: !2002)
!2002 = !{!2003, !2004}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2001, file: !1945, line: 99, baseType: !272, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2001, file: !1945, line: 100, baseType: !221, size: 32, offset: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1944, file: !1945, line: 108, baseType: !2006, size: 128)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1944, file: !1945, line: 104, size: 128, elements: !2007)
!2007 = !{!2008, !2009, !2010}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2006, file: !1945, line: 105, baseType: !112, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2006, file: !1945, line: 106, baseType: !221, size: 32, offset: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2006, file: !1945, line: 107, baseType: !7, size: 32, offset: 96)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1175, file: !1176, line: 1067, baseType: !1796, offset: 11136)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1175, file: !1176, line: 1099, baseType: !2013, size: 64, offset: 11136)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1176, line: 56, flags: DIFlagFwdDecl)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1175, file: !1176, line: 1103, baseType: !118, size: 128, offset: 11200)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1175, file: !1176, line: 1104, baseType: !2017, size: 64, offset: 11328)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1176, line: 46, flags: DIFlagFwdDecl)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1175, file: !1176, line: 1105, baseType: !1131, size: 192, offset: 11392)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1175, file: !1176, line: 1106, baseType: !7, size: 32, offset: 11584)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1175, file: !1176, line: 1109, baseType: !2022, size: 128, offset: 11648)
!2022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2023, size: 128, elements: !1527)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1176, line: 51, flags: DIFlagFwdDecl)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1175, file: !1176, line: 1110, baseType: !1131, size: 192, offset: 11776)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1175, file: !1176, line: 1111, baseType: !118, size: 128, offset: 11968)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1175, file: !1176, line: 1173, baseType: !2028, size: 64, offset: 12096)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2030, line: 62, size: 256, align: 256, elements: !2031)
!2030 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2031 = !{!2032, !2033, !2034, !2039}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2029, file: !2030, line: 75, baseType: !378, size: 32)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2029, file: !2030, line: 90, baseType: !378, size: 32, offset: 32)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2029, file: !2030, line: 124, baseType: !2035, size: 64, offset: 64)
!2035 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2029, file: !2030, line: 109, size: 64, elements: !2036)
!2036 = !{!2037, !2038}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2035, file: !2030, line: 110, baseType: !138, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2035, file: !2030, line: 112, baseType: !138, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2029, file: !2030, line: 144, baseType: !378, size: 32, offset: 128)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1175, file: !1176, line: 1174, baseType: !377, size: 32, offset: 12160)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1175, file: !1176, line: 1179, baseType: !126, size: 64, offset: 12224)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1175, file: !1176, line: 1182, baseType: !2043, size: 128, offset: 12288)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1111, line: 76, size: 128, elements: !2044)
!2044 = !{!2045, !2050, !2051}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2043, file: !1111, line: 85, baseType: !2046, size: 64)
!2046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2047, line: 7, size: 64, elements: !2048)
!2047 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2048 = !{!2049}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2046, file: !2047, line: 12, baseType: !1325, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2043, file: !1111, line: 88, baseType: !446, size: 8, offset: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2043, file: !1111, line: 95, baseType: !446, size: 8, offset: 72)
!2052 = !DIDerivedType(tag: DW_TAG_member, scope: !1175, file: !1176, line: 1184, baseType: !2053, size: 128, offset: 12416)
!2053 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1175, file: !1176, line: 1184, size: 128, elements: !2054)
!2054 = !{!2055, !2056}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2053, file: !1176, line: 1185, baseType: !1188, size: 32)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2053, file: !1176, line: 1186, baseType: !327, size: 128, align: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1175, file: !1176, line: 1190, baseType: !2058, size: 64, offset: 12544)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1176, line: 53, flags: DIFlagFwdDecl)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1175, file: !1176, line: 1192, baseType: !2061, size: 128, offset: 12608)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1111, line: 64, size: 128, elements: !2062)
!2062 = !{!2063, !2064, !2065}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2061, file: !1111, line: 65, baseType: !680, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2061, file: !1111, line: 67, baseType: !378, size: 32, offset: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2061, file: !1111, line: 68, baseType: !378, size: 32, offset: 96)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1175, file: !1176, line: 1206, baseType: !221, size: 32, offset: 12736)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1175, file: !1176, line: 1207, baseType: !221, size: 32, offset: 12768)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1175, file: !1176, line: 1209, baseType: !126, size: 64, offset: 12800)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1175, file: !1176, line: 1219, baseType: !136, size: 64, offset: 12864)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1175, file: !1176, line: 1220, baseType: !136, size: 64, offset: 12928)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1175, file: !1176, line: 1317, baseType: !221, size: 32, offset: 12992)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1175, file: !1176, line: 1319, baseType: !1174, size: 64, offset: 13056)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1175, file: !1176, line: 1322, baseType: !2074, size: 64, offset: 13120)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2076, line: 56, size: 512, elements: !2077)
!2076 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2077 = !{!2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2075, file: !2076, line: 57, baseType: !2074, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2075, file: !2076, line: 58, baseType: !112, size: 64, offset: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2075, file: !2076, line: 59, baseType: !126, size: 64, offset: 128)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2075, file: !2076, line: 60, baseType: !126, size: 64, offset: 192)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2075, file: !2076, line: 61, baseType: !780, size: 64, offset: 256)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2075, file: !2076, line: 62, baseType: !7, size: 32, offset: 320)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2075, file: !2076, line: 63, baseType: !135, size: 64, offset: 384)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2075, file: !2076, line: 64, baseType: !2086, size: 64, offset: 448)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1175, file: !1176, line: 1326, baseType: !1188, size: 32, offset: 13184)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1175, file: !1176, line: 1342, baseType: !112, size: 64, offset: 13248)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1175, file: !1176, line: 1343, baseType: !138, size: 64, offset: 13312)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1175, file: !1176, line: 1344, baseType: !136, size: 64, offset: 13376)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1175, file: !1176, line: 1345, baseType: !138, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1175, file: !1176, line: 1346, baseType: !138, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1175, file: !1176, line: 1347, baseType: !138, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1175, file: !1176, line: 1348, baseType: !327, size: 128, align: 64, offset: 13504)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1175, file: !1176, line: 1358, baseType: !2097, size: 34816, offset: 13824)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2098, line: 485, size: 34816, elements: !2099)
!2098 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2099 = !{!2100, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2129, !2130, !2131, !2132, !2133, !2134, !2137, !2138, !2139}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2097, file: !2098, line: 487, baseType: !2101, size: 192)
!2101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2102, size: 192, elements: !238)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2103, line: 16, size: 64, elements: !2104)
!2103 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2104 = !{!2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2102, file: !2103, line: 17, baseType: !819, size: 16)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2102, file: !2103, line: 18, baseType: !819, size: 16, offset: 16)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2102, file: !2103, line: 19, baseType: !819, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2102, file: !2103, line: 19, baseType: !819, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2102, file: !2103, line: 19, baseType: !819, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2102, file: !2103, line: 19, baseType: !819, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2102, file: !2103, line: 19, baseType: !819, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2102, file: !2103, line: 20, baseType: !819, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2102, file: !2103, line: 20, baseType: !819, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2102, file: !2103, line: 20, baseType: !819, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2102, file: !2103, line: 20, baseType: !819, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2102, file: !2103, line: 20, baseType: !819, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2102, file: !2103, line: 20, baseType: !819, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2097, file: !2098, line: 491, baseType: !126, size: 64, offset: 192)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2097, file: !2098, line: 495, baseType: !279, size: 16, offset: 256)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2097, file: !2098, line: 496, baseType: !279, size: 16, offset: 272)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2097, file: !2098, line: 497, baseType: !279, size: 16, offset: 288)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2097, file: !2098, line: 498, baseType: !279, size: 16, offset: 304)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2097, file: !2098, line: 502, baseType: !126, size: 64, offset: 320)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2097, file: !2098, line: 503, baseType: !126, size: 64, offset: 384)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2097, file: !2098, line: 514, baseType: !2126, size: 256, offset: 448)
!2126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2127, size: 256, elements: !155)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2098, line: 483, flags: DIFlagFwdDecl)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2097, file: !2098, line: 516, baseType: !126, size: 64, offset: 704)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2097, file: !2098, line: 518, baseType: !126, size: 64, offset: 768)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2097, file: !2098, line: 520, baseType: !126, size: 64, offset: 832)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2097, file: !2098, line: 521, baseType: !126, size: 64, offset: 896)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2097, file: !2098, line: 522, baseType: !126, size: 64, offset: 960)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2097, file: !2098, line: 528, baseType: !2135, size: 64, offset: 1024)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2098, line: 10, flags: DIFlagFwdDecl)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2097, file: !2098, line: 535, baseType: !126, size: 64, offset: 1088)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2097, file: !2098, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2097, file: !2098, line: 540, baseType: !2140, size: 33280, offset: 1536)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2141, line: 317, size: 33280, elements: !2142)
!2141 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2142 = !{!2143, !2144, !2145}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2140, file: !2141, line: 330, baseType: !7, size: 32)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2140, file: !2141, line: 337, baseType: !126, size: 64, offset: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2140, file: !2141, line: 348, baseType: !2146, size: 32768, offset: 512)
!2146 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2141, line: 304, size: 32768, elements: !2147)
!2147 = !{!2148, !2163, !2202, !2252, !2265}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2146, file: !2141, line: 305, baseType: !2149, size: 896)
!2149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2141, line: 12, size: 896, elements: !2150)
!2150 = !{!2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2162}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2149, file: !2141, line: 13, baseType: !377, size: 32)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2149, file: !2141, line: 14, baseType: !377, size: 32, offset: 32)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2149, file: !2141, line: 15, baseType: !377, size: 32, offset: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2149, file: !2141, line: 16, baseType: !377, size: 32, offset: 96)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2149, file: !2141, line: 17, baseType: !377, size: 32, offset: 128)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2149, file: !2141, line: 18, baseType: !377, size: 32, offset: 160)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2149, file: !2141, line: 19, baseType: !377, size: 32, offset: 192)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2149, file: !2141, line: 22, baseType: !2159, size: 640, offset: 224)
!2159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 640, elements: !2160)
!2160 = !{!2161}
!2161 = !DISubrange(count: 20)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2149, file: !2141, line: 25, baseType: !377, size: 32, offset: 864)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2146, file: !2141, line: 306, baseType: !2164, size: 4096, align: 128)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2141, line: 34, size: 4096, align: 128, elements: !2165)
!2165 = !{!2166, !2167, !2168, !2169, !2170, !2185, !2186, !2187, !2191, !2193, !2197}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2164, file: !2141, line: 35, baseType: !819, size: 16)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2164, file: !2141, line: 36, baseType: !819, size: 16, offset: 16)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2164, file: !2141, line: 37, baseType: !819, size: 16, offset: 32)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2164, file: !2141, line: 38, baseType: !819, size: 16, offset: 48)
!2170 = !DIDerivedType(tag: DW_TAG_member, scope: !2164, file: !2141, line: 39, baseType: !2171, size: 128, offset: 64)
!2171 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2164, file: !2141, line: 39, size: 128, elements: !2172)
!2172 = !{!2173, !2178}
!2173 = !DIDerivedType(tag: DW_TAG_member, scope: !2171, file: !2141, line: 40, baseType: !2174, size: 128)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2171, file: !2141, line: 40, size: 128, elements: !2175)
!2175 = !{!2176, !2177}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2174, file: !2141, line: 41, baseType: !136, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2174, file: !2141, line: 42, baseType: !136, size: 64, offset: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, scope: !2171, file: !2141, line: 44, baseType: !2179, size: 128)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2171, file: !2141, line: 44, size: 128, elements: !2180)
!2180 = !{!2181, !2182, !2183, !2184}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2179, file: !2141, line: 45, baseType: !377, size: 32)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2179, file: !2141, line: 46, baseType: !377, size: 32, offset: 32)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2179, file: !2141, line: 47, baseType: !377, size: 32, offset: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2179, file: !2141, line: 48, baseType: !377, size: 32, offset: 96)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2164, file: !2141, line: 51, baseType: !377, size: 32, offset: 192)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2164, file: !2141, line: 52, baseType: !377, size: 32, offset: 224)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2164, file: !2141, line: 55, baseType: !2188, size: 1024, offset: 256)
!2188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 1024, elements: !2189)
!2189 = !{!2190}
!2190 = !DISubrange(count: 32)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2164, file: !2141, line: 58, baseType: !2192, size: 2048, offset: 1280)
!2192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 2048, elements: !242)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2164, file: !2141, line: 60, baseType: !2194, size: 384, offset: 3328)
!2194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 384, elements: !2195)
!2195 = !{!2196}
!2196 = !DISubrange(count: 12)
!2197 = !DIDerivedType(tag: DW_TAG_member, scope: !2164, file: !2141, line: 62, baseType: !2198, size: 384, offset: 3712)
!2198 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2164, file: !2141, line: 62, size: 384, elements: !2199)
!2199 = !{!2200, !2201}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2198, file: !2141, line: 63, baseType: !2194, size: 384)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2198, file: !2141, line: 64, baseType: !2194, size: 384)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2146, file: !2141, line: 307, baseType: !2203, size: 1088)
!2203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2141, line: 79, size: 1088, elements: !2204)
!2204 = !{!2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2251}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2203, file: !2141, line: 80, baseType: !377, size: 32)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2203, file: !2141, line: 81, baseType: !377, size: 32, offset: 32)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2203, file: !2141, line: 82, baseType: !377, size: 32, offset: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2203, file: !2141, line: 83, baseType: !377, size: 32, offset: 96)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2203, file: !2141, line: 84, baseType: !377, size: 32, offset: 128)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2203, file: !2141, line: 85, baseType: !377, size: 32, offset: 160)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2203, file: !2141, line: 86, baseType: !377, size: 32, offset: 192)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2203, file: !2141, line: 88, baseType: !2159, size: 640, offset: 224)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2203, file: !2141, line: 89, baseType: !1310, size: 8, offset: 864)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2203, file: !2141, line: 90, baseType: !1310, size: 8, offset: 872)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2203, file: !2141, line: 91, baseType: !1310, size: 8, offset: 880)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2203, file: !2141, line: 92, baseType: !1310, size: 8, offset: 888)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2203, file: !2141, line: 93, baseType: !1310, size: 8, offset: 896)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2203, file: !2141, line: 94, baseType: !1310, size: 8, offset: 904)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2203, file: !2141, line: 95, baseType: !2220, size: 64, offset: 960)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2222, line: 11, size: 128, elements: !2223)
!2222 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2223 = !{!2224, !2225}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2221, file: !2222, line: 12, baseType: !272, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2221, file: !2222, line: 13, baseType: !2226, size: 64, offset: 64)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2228, line: 56, size: 1344, elements: !2229)
!2228 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2229 = !{!2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2227, file: !2228, line: 61, baseType: !126, size: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2227, file: !2228, line: 62, baseType: !126, size: 64, offset: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2227, file: !2228, line: 63, baseType: !126, size: 64, offset: 128)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2227, file: !2228, line: 64, baseType: !126, size: 64, offset: 192)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2227, file: !2228, line: 65, baseType: !126, size: 64, offset: 256)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2227, file: !2228, line: 66, baseType: !126, size: 64, offset: 320)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2227, file: !2228, line: 68, baseType: !126, size: 64, offset: 384)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2227, file: !2228, line: 69, baseType: !126, size: 64, offset: 448)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2227, file: !2228, line: 70, baseType: !126, size: 64, offset: 512)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2227, file: !2228, line: 71, baseType: !126, size: 64, offset: 576)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2227, file: !2228, line: 72, baseType: !126, size: 64, offset: 640)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2227, file: !2228, line: 73, baseType: !126, size: 64, offset: 704)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2227, file: !2228, line: 74, baseType: !126, size: 64, offset: 768)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2227, file: !2228, line: 75, baseType: !126, size: 64, offset: 832)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2227, file: !2228, line: 76, baseType: !126, size: 64, offset: 896)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2227, file: !2228, line: 81, baseType: !126, size: 64, offset: 960)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2227, file: !2228, line: 83, baseType: !126, size: 64, offset: 1024)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2227, file: !2228, line: 84, baseType: !126, size: 64, offset: 1088)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2227, file: !2228, line: 85, baseType: !126, size: 64, offset: 1152)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2227, file: !2228, line: 86, baseType: !126, size: 64, offset: 1216)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2227, file: !2228, line: 87, baseType: !126, size: 64, offset: 1280)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2203, file: !2141, line: 96, baseType: !377, size: 32, offset: 1024)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2146, file: !2141, line: 308, baseType: !2253, size: 4608, align: 512)
!2253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2141, line: 289, size: 4608, align: 512, elements: !2254)
!2254 = !{!2255, !2256, !2263}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2253, file: !2141, line: 290, baseType: !2164, size: 4096, align: 128)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2253, file: !2141, line: 291, baseType: !2257, size: 512, offset: 4096)
!2257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2141, line: 268, size: 512, elements: !2258)
!2258 = !{!2259, !2260, !2261}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2257, file: !2141, line: 269, baseType: !136, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2257, file: !2141, line: 270, baseType: !136, size: 64, offset: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2257, file: !2141, line: 271, baseType: !2262, size: 384, offset: 128)
!2262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 384, elements: !1583)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2253, file: !2141, line: 292, baseType: !2264, offset: 4608)
!2264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1310, elements: !1681)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2146, file: !2141, line: 309, baseType: !2266, size: 32768)
!2266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1310, size: 32768, elements: !2267)
!2267 = !{!2268}
!2268 = !DISubrange(count: 4096)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1171, file: !682, line: 378, baseType: !2270, size: 64, offset: 64)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1167, file: !682, line: 384, baseType: !1460, size: 192, offset: 192)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !938, file: !682, line: 500, baseType: !195, offset: 6656)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !938, file: !682, line: 501, baseType: !2274, size: 64, offset: 6656)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !682, line: 387, flags: DIFlagFwdDecl)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !938, file: !682, line: 516, baseType: !1671, size: 64, offset: 6720)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !938, file: !682, line: 519, baseType: !314, size: 64, offset: 6784)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !938, file: !682, line: 521, baseType: !2279, size: 64, offset: 6848)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !682, line: 521, flags: DIFlagFwdDecl)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !938, file: !682, line: 545, baseType: !707, size: 32, offset: 6912)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !938, file: !682, line: 548, baseType: !446, size: 8, offset: 6944)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !938, file: !682, line: 550, baseType: !2284, offset: 6952)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2285, line: 142, elements: !209)
!2285 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !938, file: !682, line: 554, baseType: !1917, size: 256, offset: 6976)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !938, file: !682, line: 557, baseType: !377, size: 32, offset: 7232)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !935, file: !682, line: 565, baseType: !2289, offset: 7296)
!2289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, elements: !2290)
!2290 = !{!2291}
!2291 = !DISubrange(count: -1)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !931, file: !682, line: 151, baseType: !707, size: 32)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !924, file: !682, line: 156, baseType: !195, offset: 256)
!2294 = !DIDerivedType(tag: DW_TAG_member, scope: !686, file: !682, line: 159, baseType: !2295, size: 128)
!2295 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !686, file: !682, line: 159, size: 128, elements: !2296)
!2296 = !{!2297, !2361}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2295, file: !682, line: 161, baseType: !2298, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2300)
!2300 = !{!2301, !2311, !2332, !2333, !2334, !2335, !2336, !2348, !2349, !2350}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2299, file: !31, line: 111, baseType: !2302, size: 384)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2303)
!2303 = !{!2304, !2306, !2307, !2308, !2309, !2310}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2302, file: !31, line: 20, baseType: !2305, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2302, file: !31, line: 21, baseType: !2305, size: 64, offset: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2302, file: !31, line: 22, baseType: !2305, size: 64, offset: 128)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2302, file: !31, line: 23, baseType: !126, size: 64, offset: 192)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2302, file: !31, line: 24, baseType: !126, size: 64, offset: 256)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2302, file: !31, line: 25, baseType: !126, size: 64, offset: 320)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2299, file: !31, line: 112, baseType: !2312, size: 64, offset: 384)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2314, line: 105, size: 128, elements: !2315)
!2314 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2315 = !{!2316, !2317}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2313, file: !2314, line: 110, baseType: !126, size: 64)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2313, file: !2314, line: 118, baseType: !2318, size: 64, offset: 64)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2314, line: 95, size: 448, elements: !2320)
!2320 = !{!2321, !2322, !2327, !2328, !2329, !2330, !2331}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2319, file: !2314, line: 96, baseType: !731, size: 64)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2319, file: !2314, line: 97, baseType: !2323, size: 64, offset: 64)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2314, line: 60, baseType: !2325)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{null, !2312}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2319, file: !2314, line: 98, baseType: !2323, size: 64, offset: 128)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2319, file: !2314, line: 99, baseType: !446, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2319, file: !2314, line: 100, baseType: !446, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2319, file: !2314, line: 101, baseType: !327, size: 128, align: 64, offset: 256)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2319, file: !2314, line: 102, baseType: !2312, size: 64, offset: 384)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2299, file: !31, line: 113, baseType: !2313, size: 128, offset: 448)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2299, file: !31, line: 114, baseType: !1460, size: 192, offset: 576)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2299, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2299, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2299, file: !31, line: 117, baseType: !2337, size: 64, offset: 832)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2339)
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2340)
!2340 = !{!2341, !2342, !2346, !2347}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2339, file: !31, line: 73, baseType: !800, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2339, file: !31, line: 78, baseType: !2343, size: 64, offset: 64)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = !DISubroutineType(types: !2345)
!2345 = !{null, !2298}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2339, file: !31, line: 83, baseType: !2343, size: 64, offset: 128)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2339, file: !31, line: 89, baseType: !987, size: 64, offset: 192)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2299, file: !31, line: 118, baseType: !112, size: 64, offset: 896)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2299, file: !31, line: 119, baseType: !221, size: 32, offset: 960)
!2350 = !DIDerivedType(tag: DW_TAG_member, scope: !2299, file: !31, line: 120, baseType: !2351, size: 128, offset: 1024)
!2351 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2299, file: !31, line: 120, size: 128, elements: !2352)
!2352 = !{!2353, !2359}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2351, file: !31, line: 121, baseType: !2354, size: 128)
!2354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2355, line: 6, size: 128, elements: !2356)
!2355 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2356 = !{!2357, !2358}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2354, file: !2355, line: 7, baseType: !136, size: 64)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2354, file: !2355, line: 8, baseType: !136, size: 64, offset: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2351, file: !31, line: 122, baseType: !2360)
!2360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2354, elements: !1681)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2295, file: !682, line: 162, baseType: !112, size: 64, offset: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !686, file: !682, line: 176, baseType: !327, size: 128, align: 64)
!2363 = !DIDerivedType(tag: DW_TAG_member, scope: !681, file: !682, line: 179, baseType: !2364, size: 32, offset: 384)
!2364 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !681, file: !682, line: 179, size: 32, elements: !2365)
!2365 = !{!2366, !2367, !2368, !2369}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2364, file: !682, line: 184, baseType: !707, size: 32)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2364, file: !682, line: 192, baseType: !7, size: 32)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2364, file: !682, line: 194, baseType: !7, size: 32)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2364, file: !682, line: 195, baseType: !221, size: 32)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !681, file: !682, line: 199, baseType: !707, size: 32, offset: 416)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !616, file: !44, line: 1964, baseType: !2372, size: 64, offset: 1344)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!272, !555, !2375}
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2377, line: 12, size: 256, elements: !2378)
!2377 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2378 = !{!2379, !2380, !2381, !2382, !2383}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2376, file: !2377, line: 13, baseType: !703, size: 32)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2376, file: !2377, line: 16, baseType: !221, size: 32, offset: 32)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2376, file: !2377, line: 23, baseType: !126, size: 64, offset: 64)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2376, file: !2377, line: 30, baseType: !126, size: 64, offset: 128)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2376, file: !2377, line: 33, baseType: !2384, size: 64, offset: 192)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !682, line: 27, flags: DIFlagFwdDecl)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !616, file: !44, line: 1966, baseType: !2372, size: 64, offset: 1408)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !556, file: !44, line: 1424, baseType: !2388, size: 64, offset: 448)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2390)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2391)
!2391 = !{!2392, !2438, !2442, !2446, !2447, !2448, !2449, !2450, !2455, !2460, !2464}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2390, file: !38, line: 323, baseType: !2393, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{!221, !2396}
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2398)
!2398 = !{!2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2423, !2424, !2425}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2397, file: !38, line: 295, baseType: !598, size: 128)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2397, file: !38, line: 296, baseType: !118, size: 128, offset: 128)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2397, file: !38, line: 297, baseType: !118, size: 128, offset: 256)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2397, file: !38, line: 298, baseType: !118, size: 128, offset: 384)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2397, file: !38, line: 299, baseType: !1131, size: 192, offset: 512)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2397, file: !38, line: 300, baseType: !195, offset: 704)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2397, file: !38, line: 301, baseType: !707, size: 32, offset: 704)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2397, file: !38, line: 302, baseType: !555, size: 64, offset: 768)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2397, file: !38, line: 303, baseType: !2408, size: 64, offset: 832)
!2408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2409)
!2409 = !{!2410, !2422}
!2410 = !DIDerivedType(tag: DW_TAG_member, scope: !2408, file: !38, line: 69, baseType: !2411, size: 32)
!2411 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2408, file: !38, line: 69, size: 32, elements: !2412)
!2412 = !{!2413, !2414, !2415}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2411, file: !38, line: 70, baseType: !391, size: 32)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2411, file: !38, line: 71, baseType: !399, size: 32)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2411, file: !38, line: 72, baseType: !2416, size: 32)
!2416 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2417, line: 24, baseType: !2418)
!2417 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2417, line: 22, size: 32, elements: !2419)
!2419 = !{!2420}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2418, file: !2417, line: 23, baseType: !2421, size: 32)
!2421 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2417, line: 20, baseType: !397)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2408, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2397, file: !38, line: 304, baseType: !487, size: 64, offset: 896)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2397, file: !38, line: 305, baseType: !126, size: 64, offset: 960)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2397, file: !38, line: 306, baseType: !2426, size: 576, offset: 1024)
!2426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2427)
!2427 = !{!2428, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2426, file: !38, line: 206, baseType: !2429, size: 64)
!2429 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !489)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2426, file: !38, line: 207, baseType: !2429, size: 64, offset: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2426, file: !38, line: 208, baseType: !2429, size: 64, offset: 128)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2426, file: !38, line: 209, baseType: !2429, size: 64, offset: 192)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2426, file: !38, line: 210, baseType: !2429, size: 64, offset: 256)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2426, file: !38, line: 211, baseType: !2429, size: 64, offset: 320)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2426, file: !38, line: 212, baseType: !2429, size: 64, offset: 384)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2426, file: !38, line: 213, baseType: !495, size: 64, offset: 448)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2426, file: !38, line: 214, baseType: !495, size: 64, offset: 512)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2390, file: !38, line: 324, baseType: !2439, size: 64, offset: 64)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{!2396, !555, !221}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2390, file: !38, line: 325, baseType: !2443, size: 64, offset: 128)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{null, !2396}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2390, file: !38, line: 326, baseType: !2393, size: 64, offset: 192)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2390, file: !38, line: 327, baseType: !2393, size: 64, offset: 256)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2390, file: !38, line: 328, baseType: !2393, size: 64, offset: 320)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2390, file: !38, line: 329, baseType: !644, size: 64, offset: 384)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2390, file: !38, line: 332, baseType: !2451, size: 64, offset: 448)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!2454, !385}
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2390, file: !38, line: 333, baseType: !2456, size: 64, offset: 512)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{!221, !385, !2459}
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2390, file: !38, line: 335, baseType: !2461, size: 64, offset: 576)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{!221, !385, !2454}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2390, file: !38, line: 337, baseType: !2465, size: 64, offset: 640)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!221, !555, !2468}
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !556, file: !44, line: 1425, baseType: !2470, size: 64, offset: 512)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2472)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2473)
!2473 = !{!2474, !2478, !2479, !2483, !2484, !2485, !2500, !2523, !2527, !2528, !2551}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2472, file: !38, line: 429, baseType: !2475, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!221, !555, !221, !221, !505}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2472, file: !38, line: 430, baseType: !644, size: 64, offset: 64)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2472, file: !38, line: 431, baseType: !2480, size: 64, offset: 128)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!221, !555, !7}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2472, file: !38, line: 432, baseType: !2480, size: 64, offset: 192)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2472, file: !38, line: 433, baseType: !644, size: 64, offset: 256)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2472, file: !38, line: 434, baseType: !2486, size: 64, offset: 320)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!221, !555, !221, !2489}
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2491)
!2491 = !{!2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2490, file: !38, line: 416, baseType: !221, size: 32)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2490, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2490, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2490, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2490, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2490, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2490, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2490, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2472, file: !38, line: 435, baseType: !2501, size: 64, offset: 384)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!221, !555, !2408, !2504}
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2506)
!2506 = !{!2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2505, file: !38, line: 344, baseType: !221, size: 32)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2505, file: !38, line: 345, baseType: !136, size: 64, offset: 64)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2505, file: !38, line: 346, baseType: !136, size: 64, offset: 128)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2505, file: !38, line: 347, baseType: !136, size: 64, offset: 192)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2505, file: !38, line: 348, baseType: !136, size: 64, offset: 256)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2505, file: !38, line: 349, baseType: !136, size: 64, offset: 320)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2505, file: !38, line: 350, baseType: !136, size: 64, offset: 384)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2505, file: !38, line: 351, baseType: !737, size: 64, offset: 448)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2505, file: !38, line: 353, baseType: !737, size: 64, offset: 512)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2505, file: !38, line: 354, baseType: !221, size: 32, offset: 576)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2505, file: !38, line: 355, baseType: !221, size: 32, offset: 608)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2505, file: !38, line: 356, baseType: !136, size: 64, offset: 640)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2505, file: !38, line: 357, baseType: !136, size: 64, offset: 704)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2505, file: !38, line: 358, baseType: !136, size: 64, offset: 768)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2505, file: !38, line: 359, baseType: !737, size: 64, offset: 832)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2505, file: !38, line: 360, baseType: !221, size: 32, offset: 896)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2472, file: !38, line: 436, baseType: !2524, size: 64, offset: 448)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!221, !555, !2468, !2504}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2472, file: !38, line: 438, baseType: !2501, size: 64, offset: 512)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2472, file: !38, line: 439, baseType: !2529, size: 64, offset: 576)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!221, !555, !2532}
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2534)
!2534 = !{!2535, !2536}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2533, file: !38, line: 410, baseType: !7, size: 32)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2533, file: !38, line: 411, baseType: !2537, size: 1344, offset: 64)
!2537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2538, size: 1344, elements: !238)
!2538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2539)
!2539 = !{!2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2550}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2538, file: !38, line: 396, baseType: !7, size: 32)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2538, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2538, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2538, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2538, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2538, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2538, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2538, file: !38, line: 404, baseType: !140, size: 64, offset: 256)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2538, file: !38, line: 405, baseType: !2549, size: 64, offset: 320)
!2549 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !119, line: 126, baseType: !136)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2538, file: !38, line: 406, baseType: !2549, size: 64, offset: 384)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2472, file: !38, line: 440, baseType: !2480, size: 64, offset: 640)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !556, file: !44, line: 1426, baseType: !2553, size: 64, offset: 576)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2555)
!2555 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !556, file: !44, line: 1427, baseType: !126, size: 64, offset: 640)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !556, file: !44, line: 1428, baseType: !126, size: 64, offset: 704)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !556, file: !44, line: 1429, baseType: !126, size: 64, offset: 768)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !556, file: !44, line: 1430, baseType: !344, size: 64, offset: 832)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !556, file: !44, line: 1431, baseType: !727, size: 256, offset: 896)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !556, file: !44, line: 1432, baseType: !221, size: 32, offset: 1152)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !556, file: !44, line: 1433, baseType: !707, size: 32, offset: 1184)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !556, file: !44, line: 1437, baseType: !2564, size: 64, offset: 1216)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2567)
!2567 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !556, file: !44, line: 1449, baseType: !2569, size: 64, offset: 1280)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !360, line: 34, size: 64, elements: !2570)
!2570 = !{!2571}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2569, file: !360, line: 35, baseType: !363, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !556, file: !44, line: 1450, baseType: !118, size: 128, offset: 1344)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !556, file: !44, line: 1451, baseType: !2574, size: 64, offset: 1472)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !556, file: !44, line: 1452, baseType: !1883, size: 64, offset: 1536)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !556, file: !44, line: 1453, baseType: !2578, size: 64, offset: 1600)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !556, file: !44, line: 1454, baseType: !598, size: 128, offset: 1664)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !556, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !556, file: !44, line: 1456, baseType: !2583, size: 2432, offset: 1856)
!2583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2584)
!2584 = !{!2585, !2586, !2587, !2589, !2621}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2583, file: !38, line: 519, baseType: !7, size: 32)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2583, file: !38, line: 520, baseType: !727, size: 256, offset: 64)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2583, file: !38, line: 521, baseType: !2588, size: 192, offset: 320)
!2588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 192, elements: !238)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2583, file: !38, line: 522, baseType: !2590, size: 1728, offset: 512)
!2590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2591, size: 1728, elements: !238)
!2591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2592)
!2592 = !{!2593, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2591, file: !38, line: 223, baseType: !2594, size: 64)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2596)
!2596 = !{!2597, !2598, !2611, !2612}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2595, file: !38, line: 444, baseType: !221, size: 32)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2595, file: !38, line: 445, baseType: !2599, size: 64, offset: 64)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2601)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2602)
!2602 = !{!2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2601, file: !38, line: 311, baseType: !644, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2601, file: !38, line: 312, baseType: !644, size: 64, offset: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2601, file: !38, line: 313, baseType: !644, size: 64, offset: 128)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2601, file: !38, line: 314, baseType: !644, size: 64, offset: 192)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2601, file: !38, line: 315, baseType: !2393, size: 64, offset: 256)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2601, file: !38, line: 316, baseType: !2393, size: 64, offset: 320)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2601, file: !38, line: 317, baseType: !2393, size: 64, offset: 384)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2601, file: !38, line: 318, baseType: !2465, size: 64, offset: 448)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2595, file: !38, line: 446, baseType: !589, size: 64, offset: 128)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2595, file: !38, line: 447, baseType: !2594, size: 64, offset: 192)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2591, file: !38, line: 224, baseType: !221, size: 32, offset: 64)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2591, file: !38, line: 226, baseType: !118, size: 128, offset: 128)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2591, file: !38, line: 227, baseType: !126, size: 64, offset: 256)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2591, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2591, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2591, file: !38, line: 230, baseType: !2429, size: 64, offset: 384)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2591, file: !38, line: 231, baseType: !2429, size: 64, offset: 448)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2591, file: !38, line: 232, baseType: !112, size: 64, offset: 512)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2583, file: !38, line: 523, baseType: !2622, size: 192, offset: 2240)
!2622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2599, size: 192, elements: !238)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !556, file: !44, line: 1458, baseType: !2624, size: 2112, offset: 4288)
!2624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2625)
!2625 = !{!2626, !2627, !2628}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2624, file: !44, line: 1411, baseType: !221, size: 32)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2624, file: !44, line: 1412, baseType: !1439, size: 128, offset: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2624, file: !44, line: 1413, baseType: !2629, size: 1920, offset: 192)
!2629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2630, size: 1920, elements: !238)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2631, line: 12, size: 640, elements: !2632)
!2631 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2632 = !{!2633, !2641, !2643, !2648, !2649}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2630, file: !2631, line: 13, baseType: !2634, size: 320)
!2634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2635, line: 17, size: 320, elements: !2636)
!2635 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2636 = !{!2637, !2638, !2639, !2640}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2634, file: !2635, line: 18, baseType: !221, size: 32)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2634, file: !2635, line: 19, baseType: !221, size: 32, offset: 32)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2634, file: !2635, line: 20, baseType: !1439, size: 128, offset: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2634, file: !2635, line: 22, baseType: !327, size: 128, align: 64, offset: 192)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2630, file: !2631, line: 14, baseType: !2642, size: 64, offset: 320)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2630, file: !2631, line: 15, baseType: !2644, size: 64, offset: 384)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2645, line: 16, size: 64, elements: !2646)
!2645 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2646 = !{!2647}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2644, file: !2645, line: 17, baseType: !1174, size: 64)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2630, file: !2631, line: 16, baseType: !1439, size: 128, offset: 448)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2630, file: !2631, line: 17, baseType: !707, size: 32, offset: 576)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !556, file: !44, line: 1465, baseType: !112, size: 64, offset: 6400)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !556, file: !44, line: 1468, baseType: !377, size: 32, offset: 6464)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !556, file: !44, line: 1470, baseType: !495, size: 64, offset: 6528)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !556, file: !44, line: 1471, baseType: !495, size: 64, offset: 6592)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !556, file: !44, line: 1473, baseType: !378, size: 32, offset: 6656)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !556, file: !44, line: 1474, baseType: !2656, size: 64, offset: 6720)
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !556, file: !44, line: 1477, baseType: !2659, size: 256, offset: 6784)
!2659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 256, elements: !2189)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !556, file: !44, line: 1478, baseType: !2661, size: 128, offset: 7040)
!2661 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2662, line: 18, baseType: !2663)
!2662 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2663 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2662, line: 16, size: 128, elements: !2664)
!2664 = !{!2665}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2663, file: !2662, line: 17, baseType: !2666, size: 128)
!2666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1311, size: 128, elements: !1693)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !556, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !556, file: !44, line: 1481, baseType: !2669, size: 32, offset: 7200)
!2669 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !119, line: 150, baseType: !7)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !556, file: !44, line: 1487, baseType: !1131, size: 192, offset: 7232)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !556, file: !44, line: 1493, baseType: !183, size: 64, offset: 7424)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !556, file: !44, line: 1495, baseType: !2673, size: 64, offset: 7488)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2675)
!2675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !342, line: 135, size: 1024, align: 512, elements: !2676)
!2676 = !{!2677, !2681, !2682, !2689, !2695, !2699, !2703, !2707, !2708, !2712, !2716, !2721, !2725}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2675, file: !342, line: 136, baseType: !2678, size: 64)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!221, !344, !7}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2675, file: !342, line: 137, baseType: !2678, size: 64, offset: 64)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2675, file: !342, line: 138, baseType: !2683, size: 64, offset: 128)
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2684 = !DISubroutineType(types: !2685)
!2685 = !{!221, !2686, !2688}
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !345)
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2675, file: !342, line: 139, baseType: !2690, size: 64, offset: 192)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!221, !2686, !7, !183, !2693}
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !368)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2675, file: !342, line: 141, baseType: !2696, size: 64, offset: 256)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{!221, !2686}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2675, file: !342, line: 142, baseType: !2700, size: 64, offset: 320)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{!221, !344}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2675, file: !342, line: 143, baseType: !2704, size: 64, offset: 384)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DISubroutineType(types: !2706)
!2706 = !{null, !344}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2675, file: !342, line: 144, baseType: !2704, size: 64, offset: 448)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2675, file: !342, line: 145, baseType: !2709, size: 64, offset: 512)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{null, !344, !385}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2675, file: !342, line: 146, baseType: !2713, size: 64, offset: 576)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!237, !344, !237, !221}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2675, file: !342, line: 147, baseType: !2717, size: 64, offset: 640)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!340, !2720}
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2675, file: !342, line: 148, baseType: !2722, size: 64, offset: 704)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{!221, !505, !446}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2675, file: !342, line: 149, baseType: !2726, size: 64, offset: 768)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!344, !344, !2729}
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !386)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !556, file: !44, line: 1500, baseType: !221, size: 32, offset: 7552)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !556, file: !44, line: 1502, baseType: !2733, size: 448, offset: 7616)
!2733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2377, line: 60, size: 448, elements: !2734)
!2734 = !{!2735, !2740, !2741, !2742, !2743, !2744, !2745}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2733, file: !2377, line: 61, baseType: !2736, size: 64)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{!126, !2739, !2375}
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2733, file: !2377, line: 63, baseType: !2736, size: 64, offset: 64)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2733, file: !2377, line: 66, baseType: !272, size: 64, offset: 128)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2733, file: !2377, line: 67, baseType: !221, size: 32, offset: 192)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2733, file: !2377, line: 68, baseType: !7, size: 32, offset: 224)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2733, file: !2377, line: 71, baseType: !118, size: 128, offset: 256)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2733, file: !2377, line: 77, baseType: !2746, size: 64, offset: 384)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !556, file: !44, line: 1505, baseType: !731, size: 64, offset: 8064)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !556, file: !44, line: 1508, baseType: !731, size: 64, offset: 8128)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !556, file: !44, line: 1511, baseType: !221, size: 32, offset: 8192)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !556, file: !44, line: 1514, baseType: !869, size: 32, offset: 8224)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !556, file: !44, line: 1517, baseType: !2752, size: 64, offset: 8256)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1918, line: 18, flags: DIFlagFwdDecl)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !556, file: !44, line: 1518, baseType: !594, size: 64, offset: 8320)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !556, file: !44, line: 1525, baseType: !1671, size: 64, offset: 8384)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !556, file: !44, line: 1532, baseType: !2757, size: 64, offset: 8448)
!2757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2758, line: 52, size: 64, elements: !2759)
!2758 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2759 = !{!2760}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2757, file: !2758, line: 53, baseType: !2761, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2758, line: 40, size: 256, elements: !2763)
!2763 = !{!2764, !2765, !2770}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2762, file: !2758, line: 42, baseType: !195)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2762, file: !2758, line: 44, baseType: !2766, size: 192)
!2766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2758, line: 28, size: 192, elements: !2767)
!2767 = !{!2768, !2769}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2766, file: !2758, line: 29, baseType: !118, size: 128)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2766, file: !2758, line: 31, baseType: !272, size: 64, offset: 128)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2762, file: !2758, line: 49, baseType: !272, size: 64, offset: 192)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !556, file: !44, line: 1533, baseType: !2757, size: 64, offset: 8512)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !556, file: !44, line: 1534, baseType: !327, size: 128, align: 64, offset: 8576)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !556, file: !44, line: 1535, baseType: !1917, size: 256, offset: 8704)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !556, file: !44, line: 1537, baseType: !1131, size: 192, offset: 8960)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !556, file: !44, line: 1542, baseType: !221, size: 32, offset: 9152)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !556, file: !44, line: 1545, baseType: !195, offset: 9184)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !556, file: !44, line: 1546, baseType: !118, size: 128, offset: 9216)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !556, file: !44, line: 1548, baseType: !195, offset: 9344)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !556, file: !44, line: 1549, baseType: !118, size: 128, offset: 9344)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !386, file: !44, line: 624, baseType: !693, size: 64, offset: 256)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !386, file: !44, line: 631, baseType: !126, size: 64, offset: 320)
!2782 = !DIDerivedType(tag: DW_TAG_member, scope: !386, file: !44, line: 639, baseType: !2783, size: 32, offset: 384)
!2783 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !386, file: !44, line: 639, size: 32, elements: !2784)
!2784 = !{!2785, !2787}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2783, file: !44, line: 640, baseType: !2786, size: 32)
!2786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2783, file: !44, line: 641, baseType: !7, size: 32)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !386, file: !44, line: 643, baseType: !469, size: 32, offset: 416)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !386, file: !44, line: 644, baseType: !487, size: 64, offset: 448)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !386, file: !44, line: 645, baseType: !491, size: 128, offset: 512)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !386, file: !44, line: 646, baseType: !491, size: 128, offset: 640)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !386, file: !44, line: 647, baseType: !491, size: 128, offset: 768)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !386, file: !44, line: 648, baseType: !195, offset: 896)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !386, file: !44, line: 649, baseType: !279, size: 16, offset: 896)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !386, file: !44, line: 650, baseType: !1310, size: 8, offset: 912)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !386, file: !44, line: 651, baseType: !1310, size: 8, offset: 920)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !386, file: !44, line: 652, baseType: !2549, size: 64, offset: 960)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !386, file: !44, line: 659, baseType: !126, size: 64, offset: 1024)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !386, file: !44, line: 660, baseType: !727, size: 256, offset: 1088)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !386, file: !44, line: 662, baseType: !126, size: 64, offset: 1344)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !386, file: !44, line: 663, baseType: !126, size: 64, offset: 1408)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !386, file: !44, line: 665, baseType: !598, size: 128, offset: 1472)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !386, file: !44, line: 666, baseType: !118, size: 128, offset: 1600)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !386, file: !44, line: 675, baseType: !118, size: 128, offset: 1728)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !386, file: !44, line: 676, baseType: !118, size: 128, offset: 1856)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !386, file: !44, line: 677, baseType: !118, size: 128, offset: 1984)
!2807 = !DIDerivedType(tag: DW_TAG_member, scope: !386, file: !44, line: 678, baseType: !2808, size: 128, offset: 2112)
!2808 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !386, file: !44, line: 678, size: 128, elements: !2809)
!2809 = !{!2810, !2811}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2808, file: !44, line: 679, baseType: !594, size: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2808, file: !44, line: 680, baseType: !327, size: 128, align: 64)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !386, file: !44, line: 682, baseType: !733, size: 64, offset: 2240)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !386, file: !44, line: 683, baseType: !733, size: 64, offset: 2304)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !386, file: !44, line: 684, baseType: !707, size: 32, offset: 2368)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !386, file: !44, line: 685, baseType: !707, size: 32, offset: 2400)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !386, file: !44, line: 686, baseType: !707, size: 32, offset: 2432)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !386, file: !44, line: 688, baseType: !707, size: 32, offset: 2464)
!2818 = !DIDerivedType(tag: DW_TAG_member, scope: !386, file: !44, line: 690, baseType: !2819, size: 64, offset: 2496)
!2819 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !386, file: !44, line: 690, size: 64, elements: !2820)
!2820 = !{!2821, !3044}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2819, file: !44, line: 691, baseType: !2822, size: 64)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2824)
!2824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2825)
!2825 = !{!2826, !2827, !2831, !2836, !2840, !2841, !2842, !2846, !2859, !2860, !2868, !2872, !2873, !2877, !2878, !2882, !2887, !2888, !2892, !2896, !3004, !3008, !3009, !3013, !3014, !3018, !3022, !3027, !3031, !3035, !3039, !3043}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2824, file: !44, line: 1823, baseType: !589, size: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2824, file: !44, line: 1824, baseType: !2828, size: 64, offset: 64)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = !DISubroutineType(types: !2830)
!2830 = !{!487, !314, !487, !221}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2824, file: !44, line: 1825, baseType: !2832, size: 64, offset: 128)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{!268, !314, !237, !284, !2835}
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2824, file: !44, line: 1826, baseType: !2837, size: 64, offset: 192)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{!268, !314, !183, !284, !2835}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2824, file: !44, line: 1827, baseType: !804, size: 64, offset: 256)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2824, file: !44, line: 1828, baseType: !804, size: 64, offset: 320)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2824, file: !44, line: 1829, baseType: !2843, size: 64, offset: 384)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{!221, !807, !446}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2824, file: !44, line: 1830, baseType: !2847, size: 64, offset: 448)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!221, !314, !2850}
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2852)
!2852 = !{!2853, !2858}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2851, file: !44, line: 1777, baseType: !2854, size: 64)
!2854 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2855)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!221, !2850, !183, !221, !487, !136, !7}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2851, file: !44, line: 1778, baseType: !487, size: 64, offset: 64)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2824, file: !44, line: 1831, baseType: !2847, size: 64, offset: 512)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2824, file: !44, line: 1832, baseType: !2861, size: 64, offset: 576)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!2864, !314, !2866}
!2864 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2865, line: 52, baseType: !7)
!2865 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!2867 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !575, line: 27, flags: DIFlagFwdDecl)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2824, file: !44, line: 1833, baseType: !2869, size: 64, offset: 640)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{!272, !314, !7, !126}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2824, file: !44, line: 1834, baseType: !2869, size: 64, offset: 704)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2824, file: !44, line: 1835, baseType: !2874, size: 64, offset: 768)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{!221, !314, !941}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2824, file: !44, line: 1836, baseType: !126, size: 64, offset: 832)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2824, file: !44, line: 1837, baseType: !2879, size: 64, offset: 896)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!221, !385, !314}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2824, file: !44, line: 1838, baseType: !2883, size: 64, offset: 960)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{!221, !314, !2886}
!2886 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !112)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2824, file: !44, line: 1839, baseType: !2879, size: 64, offset: 1024)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2824, file: !44, line: 1840, baseType: !2889, size: 64, offset: 1088)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!221, !314, !487, !487, !221}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2824, file: !44, line: 1841, baseType: !2893, size: 64, offset: 1152)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = !DISubroutineType(types: !2895)
!2895 = !{!221, !221, !314, !221}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2824, file: !44, line: 1842, baseType: !2897, size: 64, offset: 1216)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{!221, !314, !221, !2900}
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2902)
!2902 = !{!2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2934, !2935, !2936, !2949, !2980}
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2901, file: !44, line: 1063, baseType: !2900, size: 64)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2901, file: !44, line: 1064, baseType: !118, size: 128, offset: 64)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2901, file: !44, line: 1065, baseType: !598, size: 128, offset: 192)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2901, file: !44, line: 1066, baseType: !118, size: 128, offset: 320)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2901, file: !44, line: 1069, baseType: !118, size: 128, offset: 448)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2901, file: !44, line: 1072, baseType: !2886, size: 64, offset: 576)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2901, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2901, file: !44, line: 1074, baseType: !145, size: 8, offset: 672)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2901, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2901, file: !44, line: 1076, baseType: !221, size: 32, offset: 736)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2901, file: !44, line: 1077, baseType: !1439, size: 128, offset: 768)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2901, file: !44, line: 1078, baseType: !314, size: 64, offset: 896)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2901, file: !44, line: 1079, baseType: !487, size: 64, offset: 960)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2901, file: !44, line: 1080, baseType: !487, size: 64, offset: 1024)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2901, file: !44, line: 1082, baseType: !2918, size: 64, offset: 1088)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2920)
!2920 = !{!2921, !2929, !2930, !2931, !2932, !2933}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2919, file: !44, line: 1315, baseType: !2922)
!2922 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2923, line: 20, baseType: !2924)
!2923 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2924 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2923, line: 11, elements: !2925)
!2925 = !{!2926}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2924, file: !2923, line: 12, baseType: !2927)
!2927 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !207, line: 33, baseType: !2928)
!2928 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !207, line: 31, elements: !209)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2919, file: !44, line: 1316, baseType: !221, size: 32)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2919, file: !44, line: 1317, baseType: !221, size: 32, offset: 32)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2919, file: !44, line: 1318, baseType: !2918, size: 64, offset: 64)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2919, file: !44, line: 1319, baseType: !314, size: 64, offset: 128)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2919, file: !44, line: 1320, baseType: !327, size: 128, align: 64, offset: 192)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2901, file: !44, line: 1084, baseType: !126, size: 64, offset: 1152)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2901, file: !44, line: 1085, baseType: !126, size: 64, offset: 1216)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2901, file: !44, line: 1087, baseType: !2937, size: 64, offset: 1280)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2939)
!2939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !2940)
!2940 = !{!2941, !2945}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2939, file: !44, line: 1012, baseType: !2942, size: 64)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{null, !2900, !2900}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2939, file: !44, line: 1013, baseType: !2946, size: 64, offset: 64)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{null, !2900}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2901, file: !44, line: 1088, baseType: !2950, size: 64, offset: 1344)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2952)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !2953)
!2953 = !{!2954, !2958, !2962, !2963, !2967, !2971, !2975, !2979}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2952, file: !44, line: 1017, baseType: !2955, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{!2886, !2886}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2952, file: !44, line: 1018, baseType: !2959, size: 64, offset: 64)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{null, !2886}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2952, file: !44, line: 1019, baseType: !2946, size: 64, offset: 128)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2952, file: !44, line: 1020, baseType: !2964, size: 64, offset: 192)
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{!221, !2900, !221}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2952, file: !44, line: 1021, baseType: !2968, size: 64, offset: 256)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = !DISubroutineType(types: !2970)
!2970 = !{!446, !2900}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2952, file: !44, line: 1022, baseType: !2972, size: 64, offset: 320)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = !DISubroutineType(types: !2974)
!2974 = !{!221, !2900, !221, !122}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2952, file: !44, line: 1023, baseType: !2976, size: 64, offset: 384)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{null, !2900, !781}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2952, file: !44, line: 1024, baseType: !2968, size: 64, offset: 448)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2901, file: !44, line: 1097, baseType: !2981, size: 256, offset: 1408)
!2981 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2901, file: !44, line: 1089, size: 256, elements: !2982)
!2982 = !{!2983, !2992, !2998}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2981, file: !44, line: 1090, baseType: !2984, size: 256)
!2984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2985, line: 10, size: 256, elements: !2986)
!2985 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2986 = !{!2987, !2988, !2991}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2984, file: !2985, line: 11, baseType: !377, size: 32)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2984, file: !2985, line: 12, baseType: !2989, size: 64, offset: 64)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2985, line: 5, flags: DIFlagFwdDecl)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2984, file: !2985, line: 13, baseType: !118, size: 128, offset: 128)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2981, file: !44, line: 1091, baseType: !2993, size: 64)
!2993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2985, line: 17, size: 64, elements: !2994)
!2994 = !{!2995}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2993, file: !2985, line: 18, baseType: !2996, size: 64)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2985, line: 16, flags: DIFlagFwdDecl)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2981, file: !44, line: 1096, baseType: !2999, size: 192)
!2999 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2981, file: !44, line: 1092, size: 192, elements: !3000)
!3000 = !{!3001, !3002, !3003}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2999, file: !44, line: 1093, baseType: !118, size: 128)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2999, file: !44, line: 1094, baseType: !221, size: 32, offset: 128)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2999, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2824, file: !44, line: 1843, baseType: !3005, size: 64, offset: 1280)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!268, !314, !680, !221, !284, !2835, !221}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2824, file: !44, line: 1844, baseType: !1061, size: 64, offset: 1344)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2824, file: !44, line: 1845, baseType: !3010, size: 64, offset: 1408)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{!221, !221}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2824, file: !44, line: 1846, baseType: !2897, size: 64, offset: 1472)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2824, file: !44, line: 1847, baseType: !3015, size: 64, offset: 1536)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{!268, !2058, !314, !2835, !284, !7}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2824, file: !44, line: 1848, baseType: !3019, size: 64, offset: 1600)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!268, !314, !2835, !2058, !284, !7}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2824, file: !44, line: 1849, baseType: !3023, size: 64, offset: 1664)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!221, !314, !272, !3026, !781}
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2824, file: !44, line: 1850, baseType: !3028, size: 64, offset: 1728)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{!272, !314, !221, !487, !487}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2824, file: !44, line: 1852, baseType: !3032, size: 64, offset: 1792)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{null, !670, !314}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2824, file: !44, line: 1856, baseType: !3036, size: 64, offset: 1856)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{!268, !314, !487, !314, !487, !284, !7}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2824, file: !44, line: 1858, baseType: !3040, size: 64, offset: 1920)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{!487, !314, !487, !314, !487, !487, !7}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2824, file: !44, line: 1861, baseType: !2889, size: 64, offset: 1984)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2819, file: !44, line: 692, baseType: !623, size: 64)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !386, file: !44, line: 694, baseType: !3046, size: 64, offset: 2560)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3048)
!3048 = !{!3049, !3050, !3051, !3052}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3047, file: !44, line: 1101, baseType: !195)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3047, file: !44, line: 1102, baseType: !118, size: 128)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3047, file: !44, line: 1103, baseType: !118, size: 128, offset: 128)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3047, file: !44, line: 1104, baseType: !118, size: 128, offset: 256)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !386, file: !44, line: 695, baseType: !694, size: 1216, align: 64, offset: 2624)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !386, file: !44, line: 696, baseType: !118, size: 128, offset: 3840)
!3055 = !DIDerivedType(tag: DW_TAG_member, scope: !386, file: !44, line: 697, baseType: !3056, size: 64, offset: 3968)
!3056 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !386, file: !44, line: 697, size: 64, elements: !3057)
!3057 = !{!3058, !3059, !3060, !3063, !3064}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3056, file: !44, line: 698, baseType: !2058, size: 64)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3056, file: !44, line: 699, baseType: !2574, size: 64)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3056, file: !44, line: 700, baseType: !3061, size: 64)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3056, file: !44, line: 701, baseType: !237, size: 64)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3056, file: !44, line: 702, baseType: !7, size: 32)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !386, file: !44, line: 705, baseType: !378, size: 32, offset: 4032)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !386, file: !44, line: 708, baseType: !378, size: 32, offset: 4064)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !386, file: !44, line: 709, baseType: !2656, size: 64, offset: 4096)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !386, file: !44, line: 720, baseType: !112, size: 64, offset: 4160)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !345, file: !342, line: 98, baseType: !3070, size: 256, offset: 448)
!3070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 256, elements: !2189)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !345, file: !342, line: 101, baseType: !3072, size: 32, offset: 704)
!3072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3073, line: 25, size: 32, elements: !3074)
!3073 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3074 = !{!3075}
!3075 = !DIDerivedType(tag: DW_TAG_member, scope: !3072, file: !3073, line: 26, baseType: !3076, size: 32)
!3076 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3072, file: !3073, line: 26, size: 32, elements: !3077)
!3077 = !{!3078}
!3078 = !DIDerivedType(tag: DW_TAG_member, scope: !3076, file: !3073, line: 30, baseType: !3079, size: 32)
!3079 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3076, file: !3073, line: 30, size: 32, elements: !3080)
!3080 = !{!3081, !3082}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3079, file: !3073, line: 31, baseType: !195)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3079, file: !3073, line: 32, baseType: !221, size: 32)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !345, file: !342, line: 102, baseType: !2673, size: 64, offset: 768)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !345, file: !342, line: 103, baseType: !555, size: 64, offset: 832)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !345, file: !342, line: 104, baseType: !126, size: 64, offset: 896)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !345, file: !342, line: 105, baseType: !112, size: 64, offset: 960)
!3087 = !DIDerivedType(tag: DW_TAG_member, scope: !345, file: !342, line: 107, baseType: !3088, size: 128, offset: 1024)
!3088 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !345, file: !342, line: 107, size: 128, elements: !3089)
!3089 = !{!3090, !3091}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3088, file: !342, line: 108, baseType: !118, size: 128)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3088, file: !342, line: 109, baseType: !3092, size: 64)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !345, file: !342, line: 111, baseType: !118, size: 128, offset: 1152)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !345, file: !342, line: 112, baseType: !118, size: 128, offset: 1280)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !345, file: !342, line: 120, baseType: !3096, size: 128, offset: 1408)
!3096 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !345, file: !342, line: 116, size: 128, elements: !3097)
!3097 = !{!3098, !3099, !3100}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3096, file: !342, line: 117, baseType: !598, size: 128)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3096, file: !342, line: 118, baseType: !359, size: 128)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3096, file: !342, line: 119, baseType: !327, size: 128, align: 64)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !315, file: !44, line: 922, baseType: !385, size: 64, offset: 256)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !315, file: !44, line: 923, baseType: !2822, size: 64, offset: 320)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !315, file: !44, line: 929, baseType: !195, offset: 384)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !315, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !315, file: !44, line: 931, baseType: !731, size: 64, offset: 448)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !315, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !315, file: !44, line: 933, baseType: !2669, size: 32, offset: 544)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !315, file: !44, line: 934, baseType: !1131, size: 192, offset: 576)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !315, file: !44, line: 935, baseType: !487, size: 64, offset: 768)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !315, file: !44, line: 936, baseType: !3111, size: 192, offset: 832)
!3111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3112)
!3112 = !{!3113, !3114, !3115, !3116, !3117, !3118}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3111, file: !44, line: 886, baseType: !2922)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3111, file: !44, line: 887, baseType: !1429, size: 64)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3111, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3111, file: !44, line: 889, baseType: !391, size: 32, offset: 96)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3111, file: !44, line: 889, baseType: !391, size: 32, offset: 128)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3111, file: !44, line: 890, baseType: !221, size: 32, offset: 160)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !315, file: !44, line: 937, baseType: !1505, size: 64, offset: 1024)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !315, file: !44, line: 938, baseType: !3121, size: 256, offset: 1088)
!3121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3122)
!3122 = !{!3123, !3124, !3125, !3126, !3127, !3128}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3121, file: !44, line: 897, baseType: !126, size: 64)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3121, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3121, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3121, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3121, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3121, file: !44, line: 904, baseType: !487, size: 64, offset: 192)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !315, file: !44, line: 940, baseType: !136, size: 64, offset: 1344)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !315, file: !44, line: 945, baseType: !112, size: 64, offset: 1408)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !315, file: !44, line: 949, baseType: !118, size: 128, offset: 1472)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !315, file: !44, line: 950, baseType: !118, size: 128, offset: 1600)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !315, file: !44, line: 952, baseType: !693, size: 64, offset: 1728)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !315, file: !44, line: 953, baseType: !869, size: 32, offset: 1792)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !315, file: !44, line: 954, baseType: !869, size: 32, offset: 1824)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !305, file: !262, line: 174, baseType: !311, size: 64, offset: 320)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !305, file: !262, line: 176, baseType: !3138, size: 64, offset: 384)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{!221, !314, !188, !304, !941}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !293, file: !262, line: 90, baseType: !288, size: 64, offset: 192)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !293, file: !262, line: 91, baseType: !3143, size: 64, offset: 256)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !252, file: !180, line: 143, baseType: !3145, size: 64, offset: 256)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!3148, !188}
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3150)
!3150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3151)
!3151 = !{!3152, !3153, !3157, !3161, !3167, !3171}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3150, file: !61, line: 40, baseType: !60, size: 32)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3150, file: !61, line: 41, baseType: !3154, size: 64, offset: 64)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{!446}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3150, file: !61, line: 42, baseType: !3158, size: 64, offset: 128)
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3159 = !DISubroutineType(types: !3160)
!3160 = !{!112}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3150, file: !61, line: 43, baseType: !3162, size: 64, offset: 192)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{!2086, !3165}
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3150, file: !61, line: 44, baseType: !3168, size: 64, offset: 256)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DISubroutineType(types: !3170)
!3170 = !{!2086}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3150, file: !61, line: 45, baseType: !424, size: 64, offset: 320)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !252, file: !180, line: 144, baseType: !3173, size: 64, offset: 320)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!2086, !188}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !252, file: !180, line: 145, baseType: !3177, size: 64, offset: 384)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{null, !188, !3180, !3181}
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !179, file: !180, line: 70, baseType: !3183, size: 64, offset: 384)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !575, line: 123, size: 1024, elements: !3185)
!3185 = !{!3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3314, !3315, !3316, !3317, !3318}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3184, file: !575, line: 124, baseType: !707, size: 32)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3184, file: !575, line: 125, baseType: !707, size: 32, offset: 32)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3184, file: !575, line: 135, baseType: !3183, size: 64, offset: 64)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3184, file: !575, line: 136, baseType: !183, size: 64, offset: 128)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3184, file: !575, line: 138, baseType: !720, size: 192, align: 64, offset: 192)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3184, file: !575, line: 140, baseType: !2086, size: 64, offset: 384)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3184, file: !575, line: 141, baseType: !7, size: 32, offset: 448)
!3193 = !DIDerivedType(tag: DW_TAG_member, scope: !3184, file: !575, line: 142, baseType: !3194, size: 256, offset: 512)
!3194 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3184, file: !575, line: 142, size: 256, elements: !3195)
!3195 = !{!3196, !3242, !3246}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3194, file: !575, line: 143, baseType: !3197, size: 192)
!3197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !575, line: 91, size: 192, elements: !3198)
!3198 = !{!3199, !3200, !3201}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3197, file: !575, line: 92, baseType: !126, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3197, file: !575, line: 94, baseType: !716, size: 64, offset: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3197, file: !575, line: 100, baseType: !3202, size: 64, offset: 128)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !575, line: 180, size: 704, elements: !3204)
!3204 = !{!3205, !3206, !3207, !3214, !3215, !3216, !3240, !3241}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3203, file: !575, line: 182, baseType: !3183, size: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3203, file: !575, line: 183, baseType: !7, size: 32, offset: 64)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3203, file: !575, line: 186, baseType: !3208, size: 192, offset: 128)
!3208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3209, line: 19, size: 192, elements: !3210)
!3209 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3210 = !{!3211, !3212, !3213}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3208, file: !3209, line: 20, baseType: !698, size: 128)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3208, file: !3209, line: 21, baseType: !7, size: 32, offset: 128)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3208, file: !3209, line: 22, baseType: !7, size: 32, offset: 160)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3203, file: !575, line: 187, baseType: !377, size: 32, offset: 320)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3203, file: !575, line: 188, baseType: !377, size: 32, offset: 352)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3203, file: !575, line: 189, baseType: !3217, size: 64, offset: 384)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !575, line: 168, size: 320, elements: !3219)
!3219 = !{!3220, !3224, !3228, !3232, !3236}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3218, file: !575, line: 169, baseType: !3221, size: 64)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = !DISubroutineType(types: !3223)
!3223 = !{!221, !670, !3202}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3218, file: !575, line: 171, baseType: !3225, size: 64, offset: 64)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DISubroutineType(types: !3227)
!3227 = !{!221, !3183, !183, !278}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3218, file: !575, line: 173, baseType: !3229, size: 64, offset: 128)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = !DISubroutineType(types: !3231)
!3231 = !{!221, !3183}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3218, file: !575, line: 174, baseType: !3233, size: 64, offset: 192)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!221, !3183, !3183, !183}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3218, file: !575, line: 176, baseType: !3237, size: 64, offset: 256)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!221, !670, !3183, !3202}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3203, file: !575, line: 192, baseType: !118, size: 128, offset: 448)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3203, file: !575, line: 194, baseType: !1439, size: 128, offset: 576)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3194, file: !575, line: 144, baseType: !3243, size: 64)
!3243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !575, line: 103, size: 64, elements: !3244)
!3244 = !{!3245}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3243, file: !575, line: 104, baseType: !3183, size: 64)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3194, file: !575, line: 145, baseType: !3247, size: 256)
!3247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !575, line: 107, size: 256, elements: !3248)
!3248 = !{!3249, !3309, !3312, !3313}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3247, file: !575, line: 108, baseType: !3250, size: 64)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3252)
!3252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !575, line: 217, size: 768, elements: !3253)
!3253 = !{!3254, !3274, !3278, !3282, !3286, !3290, !3294, !3298, !3299, !3300, !3301, !3305}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3252, file: !575, line: 222, baseType: !3255, size: 64)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = !DISubroutineType(types: !3257)
!3257 = !{!221, !3258}
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !575, line: 197, size: 1088, elements: !3260)
!3260 = !{!3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3259, file: !575, line: 199, baseType: !3183, size: 64)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3259, file: !575, line: 200, baseType: !314, size: 64, offset: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3259, file: !575, line: 201, baseType: !670, size: 64, offset: 128)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3259, file: !575, line: 202, baseType: !112, size: 64, offset: 192)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3259, file: !575, line: 205, baseType: !1131, size: 192, offset: 256)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3259, file: !575, line: 206, baseType: !1131, size: 192, offset: 448)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3259, file: !575, line: 207, baseType: !221, size: 32, offset: 640)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3259, file: !575, line: 208, baseType: !118, size: 128, offset: 704)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3259, file: !575, line: 209, baseType: !237, size: 64, offset: 832)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3259, file: !575, line: 211, baseType: !284, size: 64, offset: 896)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3259, file: !575, line: 212, baseType: !446, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3259, file: !575, line: 213, baseType: !446, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3259, file: !575, line: 214, baseType: !969, size: 64, offset: 1024)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3252, file: !575, line: 223, baseType: !3275, size: 64, offset: 64)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{null, !3258}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3252, file: !575, line: 236, baseType: !3279, size: 64, offset: 128)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DISubroutineType(types: !3281)
!3281 = !{!221, !670, !112}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3252, file: !575, line: 238, baseType: !3283, size: 64, offset: 192)
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{!112, !670, !2835}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3252, file: !575, line: 239, baseType: !3287, size: 64, offset: 256)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = !DISubroutineType(types: !3289)
!3289 = !{!112, !670, !112, !2835}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3252, file: !575, line: 240, baseType: !3291, size: 64, offset: 320)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{null, !670, !112}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3252, file: !575, line: 242, baseType: !3295, size: 64, offset: 384)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = !DISubroutineType(types: !3297)
!3297 = !{!268, !3258, !237, !284, !487}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3252, file: !575, line: 252, baseType: !284, size: 64, offset: 448)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3252, file: !575, line: 259, baseType: !446, size: 8, offset: 512)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3252, file: !575, line: 260, baseType: !3295, size: 64, offset: 576)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3252, file: !575, line: 263, baseType: !3302, size: 64, offset: 640)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!2864, !3258, !2866}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3252, file: !575, line: 266, baseType: !3306, size: 64, offset: 704)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!221, !3258, !941}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3247, file: !575, line: 109, baseType: !3310, size: 64, offset: 64)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !575, line: 31, flags: DIFlagFwdDecl)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3247, file: !575, line: 110, baseType: !487, size: 64, offset: 128)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3247, file: !575, line: 111, baseType: !3183, size: 64, offset: 192)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3184, file: !575, line: 148, baseType: !112, size: 64, offset: 768)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3184, file: !575, line: 154, baseType: !136, size: 64, offset: 832)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3184, file: !575, line: 156, baseType: !279, size: 16, offset: 896)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3184, file: !575, line: 157, baseType: !278, size: 16, offset: 912)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3184, file: !575, line: 158, baseType: !3319, size: 64, offset: 960)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !575, line: 32, flags: DIFlagFwdDecl)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !179, file: !180, line: 71, baseType: !3322, size: 32, offset: 448)
!3322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3323, line: 19, size: 32, elements: !3324)
!3323 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3324 = !{!3325}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3322, file: !3323, line: 20, baseType: !1188, size: 32)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !179, file: !180, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !179, file: !180, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !179, file: !180, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !179, file: !180, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !179, file: !180, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !176, file: !73, line: 463, baseType: !3332, size: 64, offset: 512)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !176, file: !73, line: 465, baseType: !3334, size: 64, offset: 576)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !176, file: !73, line: 467, baseType: !183, size: 64, offset: 640)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !176, file: !73, line: 468, baseType: !3338, size: 64, offset: 704)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3340)
!3340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3341)
!3341 = !{!3342, !3343, !3344, !3348, !3353, !3357}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3340, file: !73, line: 88, baseType: !183, size: 64)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3340, file: !73, line: 89, baseType: !290, size: 64, offset: 64)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3340, file: !73, line: 90, baseType: !3345, size: 64, offset: 128)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = !DISubroutineType(types: !3347)
!3347 = !{!221, !3332, !232}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3340, file: !73, line: 91, baseType: !3349, size: 64, offset: 192)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!237, !3332, !3352, !3180, !3181}
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3340, file: !73, line: 93, baseType: !3354, size: 64, offset: 256)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{null, !3332}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3340, file: !73, line: 95, baseType: !3358, size: 64, offset: 320)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3360)
!3360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3361)
!3361 = !{!3362, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3360, file: !80, line: 279, baseType: !3363, size: 64)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{!221, !3332}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3360, file: !80, line: 280, baseType: !3354, size: 64, offset: 64)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3360, file: !80, line: 281, baseType: !3363, size: 64, offset: 128)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3360, file: !80, line: 282, baseType: !3363, size: 64, offset: 192)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3360, file: !80, line: 283, baseType: !3363, size: 64, offset: 256)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3360, file: !80, line: 284, baseType: !3363, size: 64, offset: 320)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3360, file: !80, line: 285, baseType: !3363, size: 64, offset: 384)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3360, file: !80, line: 286, baseType: !3363, size: 64, offset: 448)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3360, file: !80, line: 287, baseType: !3363, size: 64, offset: 512)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3360, file: !80, line: 288, baseType: !3363, size: 64, offset: 576)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3360, file: !80, line: 289, baseType: !3363, size: 64, offset: 640)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3360, file: !80, line: 290, baseType: !3363, size: 64, offset: 704)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3360, file: !80, line: 291, baseType: !3363, size: 64, offset: 768)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3360, file: !80, line: 292, baseType: !3363, size: 64, offset: 832)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3360, file: !80, line: 293, baseType: !3363, size: 64, offset: 896)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3360, file: !80, line: 294, baseType: !3363, size: 64, offset: 960)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3360, file: !80, line: 295, baseType: !3363, size: 64, offset: 1024)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3360, file: !80, line: 296, baseType: !3363, size: 64, offset: 1088)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3360, file: !80, line: 297, baseType: !3363, size: 64, offset: 1152)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3360, file: !80, line: 298, baseType: !3363, size: 64, offset: 1216)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3360, file: !80, line: 299, baseType: !3363, size: 64, offset: 1280)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3360, file: !80, line: 300, baseType: !3363, size: 64, offset: 1344)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3360, file: !80, line: 301, baseType: !3363, size: 64, offset: 1408)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !176, file: !73, line: 470, baseType: !3389, size: 64, offset: 768)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3391, line: 82, size: 1408, elements: !3392)
!3391 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3392 = !{!3393, !3394, !3395, !3396, !3397, !3398, !3399, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3474, !3477, !3478}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3390, file: !3391, line: 83, baseType: !183, size: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3390, file: !3391, line: 84, baseType: !183, size: 64, offset: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3390, file: !3391, line: 85, baseType: !3332, size: 64, offset: 128)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3390, file: !3391, line: 86, baseType: !290, size: 64, offset: 192)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3390, file: !3391, line: 87, baseType: !290, size: 64, offset: 256)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3390, file: !3391, line: 88, baseType: !290, size: 64, offset: 320)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3390, file: !3391, line: 90, baseType: !3400, size: 64, offset: 384)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = !DISubroutineType(types: !3402)
!3402 = !{!221, !3332, !3403}
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3405)
!3405 = !{!3406, !3407, !3408, !3409, !3410, !3411, !3412, !3425, !3438, !3439, !3440, !3441, !3442, !3450, !3451, !3452, !3453, !3454, !3455}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3404, file: !67, line: 96, baseType: !183, size: 64)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3404, file: !67, line: 97, baseType: !3389, size: 64, offset: 64)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3404, file: !67, line: 99, baseType: !589, size: 64, offset: 128)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3404, file: !67, line: 100, baseType: !183, size: 64, offset: 192)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3404, file: !67, line: 102, baseType: !446, size: 8, offset: 256)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3404, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3404, file: !67, line: 105, baseType: !3413, size: 64, offset: 320)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3415)
!3415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3416, line: 262, size: 1600, elements: !3417)
!3416 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3417 = !{!3418, !3419, !3420, !3424}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3415, file: !3416, line: 263, baseType: !2659, size: 256)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3415, file: !3416, line: 264, baseType: !2659, size: 256, offset: 256)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3415, file: !3416, line: 265, baseType: !3421, size: 1024, offset: 512)
!3421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 1024, elements: !3422)
!3422 = !{!3423}
!3423 = !DISubrange(count: 128)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3415, file: !3416, line: 266, baseType: !2086, size: 64, offset: 1536)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3404, file: !67, line: 106, baseType: !3426, size: 64, offset: 384)
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3428)
!3428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3416, line: 210, size: 256, elements: !3429)
!3429 = !{!3430, !3434, !3436, !3437}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3428, file: !3416, line: 211, baseType: !3431, size: 72)
!3431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1311, size: 72, elements: !3432)
!3432 = !{!3433}
!3433 = !DISubrange(count: 9)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3428, file: !3416, line: 212, baseType: !3435, size: 64, offset: 128)
!3435 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3416, line: 14, baseType: !126)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3428, file: !3416, line: 213, baseType: !378, size: 32, offset: 192)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3428, file: !3416, line: 214, baseType: !378, size: 32, offset: 224)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3404, file: !67, line: 108, baseType: !3363, size: 64, offset: 448)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3404, file: !67, line: 109, baseType: !3354, size: 64, offset: 512)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3404, file: !67, line: 110, baseType: !3363, size: 64, offset: 576)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3404, file: !67, line: 111, baseType: !3354, size: 64, offset: 640)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3404, file: !67, line: 112, baseType: !3443, size: 64, offset: 704)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DISubroutineType(types: !3445)
!3445 = !{!221, !3332, !3446}
!3446 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3447)
!3447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3448)
!3448 = !{!3449}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3447, file: !80, line: 51, baseType: !221, size: 32)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3404, file: !67, line: 113, baseType: !3363, size: 64, offset: 768)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3404, file: !67, line: 114, baseType: !290, size: 64, offset: 832)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3404, file: !67, line: 115, baseType: !290, size: 64, offset: 896)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3404, file: !67, line: 117, baseType: !3358, size: 64, offset: 960)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3404, file: !67, line: 118, baseType: !3354, size: 64, offset: 1024)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3404, file: !67, line: 120, baseType: !3456, size: 64, offset: 1088)
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3457, size: 64)
!3457 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3390, file: !3391, line: 91, baseType: !3345, size: 64, offset: 448)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3390, file: !3391, line: 92, baseType: !3363, size: 64, offset: 512)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3390, file: !3391, line: 93, baseType: !3354, size: 64, offset: 576)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3390, file: !3391, line: 94, baseType: !3363, size: 64, offset: 640)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3390, file: !3391, line: 95, baseType: !3354, size: 64, offset: 704)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3390, file: !3391, line: 97, baseType: !3363, size: 64, offset: 768)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3390, file: !3391, line: 98, baseType: !3363, size: 64, offset: 832)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3390, file: !3391, line: 100, baseType: !3443, size: 64, offset: 896)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3390, file: !3391, line: 101, baseType: !3363, size: 64, offset: 960)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3390, file: !3391, line: 103, baseType: !3363, size: 64, offset: 1024)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3390, file: !3391, line: 105, baseType: !3363, size: 64, offset: 1088)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3390, file: !3391, line: 107, baseType: !3358, size: 64, offset: 1152)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3390, file: !3391, line: 109, baseType: !3471, size: 64, offset: 1216)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3473)
!3473 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3391, line: 109, flags: DIFlagFwdDecl)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3390, file: !3391, line: 111, baseType: !3475, size: 64, offset: 1280)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3391, line: 111, flags: DIFlagFwdDecl)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3390, file: !3391, line: 112, baseType: !604, offset: 1344)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3390, file: !3391, line: 114, baseType: !446, size: 8, offset: 1344)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !176, file: !73, line: 471, baseType: !3403, size: 64, offset: 832)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !176, file: !73, line: 473, baseType: !112, size: 64, offset: 896)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !176, file: !73, line: 475, baseType: !112, size: 64, offset: 960)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !176, file: !73, line: 480, baseType: !1131, size: 192, offset: 1024)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !176, file: !73, line: 484, baseType: !3484, size: 576, offset: 1216)
!3484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3485)
!3485 = !{!3486, !3487, !3488, !3489, !3490, !3491}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3484, file: !73, line: 362, baseType: !118, size: 128)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3484, file: !73, line: 363, baseType: !118, size: 128, offset: 128)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3484, file: !73, line: 364, baseType: !118, size: 128, offset: 256)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3484, file: !73, line: 365, baseType: !118, size: 128, offset: 384)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3484, file: !73, line: 366, baseType: !446, size: 8, offset: 512)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3484, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !176, file: !73, line: 485, baseType: !3493, size: 2304, offset: 1792)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3494)
!3494 = !{!3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3590, !3594}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3493, file: !80, line: 566, baseType: !3446, size: 32)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3493, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3493, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3493, file: !80, line: 569, baseType: !446, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3493, file: !80, line: 570, baseType: !446, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3493, file: !80, line: 571, baseType: !446, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3493, file: !80, line: 572, baseType: !446, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3493, file: !80, line: 573, baseType: !446, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3493, file: !80, line: 574, baseType: !446, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3493, file: !80, line: 575, baseType: !446, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3493, file: !80, line: 576, baseType: !446, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3493, file: !80, line: 577, baseType: !377, size: 32, offset: 64)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3493, file: !80, line: 578, baseType: !195, offset: 96)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3493, file: !80, line: 580, baseType: !118, size: 128, offset: 128)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3493, file: !80, line: 581, baseType: !1460, size: 192, offset: 256)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3493, file: !80, line: 582, baseType: !3511, size: 64, offset: 448)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3513, line: 43, size: 1472, elements: !3514)
!3513 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3514 = !{!3515, !3516, !3517, !3518, !3519, !3522, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3512, file: !3513, line: 44, baseType: !183, size: 64)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3512, file: !3513, line: 45, baseType: !221, size: 32, offset: 64)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3512, file: !3513, line: 46, baseType: !118, size: 128, offset: 128)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3512, file: !3513, line: 47, baseType: !195, offset: 256)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3512, file: !3513, line: 48, baseType: !3520, size: 64, offset: 256)
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3512, file: !3513, line: 49, baseType: !3523, size: 320, offset: 320)
!3523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3524, line: 11, size: 320, elements: !3525)
!3524 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3525 = !{!3526, !3527, !3528, !3533}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3523, file: !3524, line: 16, baseType: !598, size: 128)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3523, file: !3524, line: 17, baseType: !126, size: 64, offset: 128)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3523, file: !3524, line: 18, baseType: !3529, size: 64, offset: 192)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = !DISubroutineType(types: !3531)
!3531 = !{null, !3532}
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3523, file: !3524, line: 19, baseType: !377, size: 32, offset: 256)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3512, file: !3513, line: 50, baseType: !126, size: 64, offset: 640)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3512, file: !3513, line: 51, baseType: !1258, size: 64, offset: 704)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3512, file: !3513, line: 52, baseType: !1258, size: 64, offset: 768)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3512, file: !3513, line: 53, baseType: !1258, size: 64, offset: 832)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3512, file: !3513, line: 54, baseType: !1258, size: 64, offset: 896)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3512, file: !3513, line: 55, baseType: !1258, size: 64, offset: 960)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3512, file: !3513, line: 56, baseType: !126, size: 64, offset: 1024)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3512, file: !3513, line: 57, baseType: !126, size: 64, offset: 1088)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3512, file: !3513, line: 58, baseType: !126, size: 64, offset: 1152)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3512, file: !3513, line: 59, baseType: !126, size: 64, offset: 1216)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3512, file: !3513, line: 60, baseType: !126, size: 64, offset: 1280)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3512, file: !3513, line: 61, baseType: !3332, size: 64, offset: 1344)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3512, file: !3513, line: 62, baseType: !446, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3512, file: !3513, line: 63, baseType: !446, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3493, file: !80, line: 583, baseType: !446, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3493, file: !80, line: 584, baseType: !446, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3493, file: !80, line: 585, baseType: !446, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3493, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3493, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3493, file: !80, line: 592, baseType: !1250, size: 512, offset: 576)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3493, file: !80, line: 593, baseType: !136, size: 64, offset: 1088)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3493, file: !80, line: 594, baseType: !1917, size: 256, offset: 1152)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3493, file: !80, line: 595, baseType: !1439, size: 128, offset: 1408)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3493, file: !80, line: 596, baseType: !3520, size: 64, offset: 1536)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3493, file: !80, line: 597, baseType: !707, size: 32, offset: 1600)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3493, file: !80, line: 598, baseType: !707, size: 32, offset: 1632)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3493, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3493, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3493, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3493, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3493, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3493, file: !80, line: 604, baseType: !446, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3493, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3493, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3493, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3493, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3493, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3493, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3493, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3493, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3493, file: !80, line: 613, baseType: !221, size: 32, offset: 1792)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3493, file: !80, line: 614, baseType: !221, size: 32, offset: 1824)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3493, file: !80, line: 615, baseType: !136, size: 64, offset: 1856)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3493, file: !80, line: 616, baseType: !136, size: 64, offset: 1920)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3493, file: !80, line: 617, baseType: !136, size: 64, offset: 1984)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3493, file: !80, line: 618, baseType: !136, size: 64, offset: 2048)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3493, file: !80, line: 620, baseType: !3581, size: 64, offset: 2112)
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3583)
!3583 = !{!3584, !3585, !3586, !3587}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3582, file: !80, line: 537, baseType: !195)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3582, file: !80, line: 538, baseType: !7, size: 32)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3582, file: !80, line: 540, baseType: !118, size: 128, offset: 64)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3582, file: !80, line: 543, baseType: !3588, size: 64, offset: 192)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3493, file: !80, line: 621, baseType: !3591, size: 64, offset: 2176)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = !DISubroutineType(types: !3593)
!3593 = !{null, !3332, !1402}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3493, file: !80, line: 622, baseType: !3595, size: 64, offset: 2240)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !176, file: !73, line: 486, baseType: !3598, size: 64, offset: 4096)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3600)
!3600 = !{!3601, !3602, !3603, !3607, !3608, !3609}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3599, file: !80, line: 643, baseType: !3360, size: 1472)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3599, file: !80, line: 644, baseType: !3363, size: 64, offset: 1472)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3599, file: !80, line: 645, baseType: !3604, size: 64, offset: 1536)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = !DISubroutineType(types: !3606)
!3606 = !{null, !3332, !446}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3599, file: !80, line: 646, baseType: !3363, size: 64, offset: 1600)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3599, file: !80, line: 647, baseType: !3354, size: 64, offset: 1664)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3599, file: !80, line: 648, baseType: !3354, size: 64, offset: 1728)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !176, file: !73, line: 493, baseType: !3611, size: 64, offset: 4160)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !73, line: 493, flags: DIFlagFwdDecl)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !176, file: !73, line: 499, baseType: !118, size: 128, offset: 4224)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !176, file: !73, line: 502, baseType: !3615, size: 64, offset: 4352)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3617)
!3617 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !176, file: !73, line: 504, baseType: !3619, size: 64, offset: 4416)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !176, file: !73, line: 505, baseType: !136, size: 64, offset: 4480)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !176, file: !73, line: 510, baseType: !136, size: 64, offset: 4544)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !176, file: !73, line: 511, baseType: !3623, size: 64, offset: 4608)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3625)
!3625 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !176, file: !73, line: 513, baseType: !3627, size: 64, offset: 4672)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3629)
!3629 = !{!3630, !3631}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3628, file: !73, line: 293, baseType: !7, size: 32)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3628, file: !73, line: 294, baseType: !126, size: 64, offset: 64)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !176, file: !73, line: 515, baseType: !118, size: 128, offset: 4736)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !176, file: !73, line: 526, baseType: !3634, offset: 4864)
!3634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3635, line: 5, elements: !209)
!3635 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !176, file: !73, line: 528, baseType: !3637, size: 64, offset: 4864)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3639, line: 14, flags: DIFlagFwdDecl)
!3639 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !176, file: !73, line: 529, baseType: !3641, size: 64, offset: 4928)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3643, line: 17, size: 192, elements: !3644)
!3643 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3644 = !{!3645, !3646, !3729}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3642, file: !3643, line: 18, baseType: !3641, size: 64)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3642, file: !3643, line: 19, baseType: !3647, size: 64, offset: 64)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3649)
!3649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3643, line: 110, size: 1152, elements: !3650)
!3650 = !{!3651, !3655, !3659, !3665, !3671, !3675, !3679, !3684, !3688, !3689, !3693, !3697, !3701, !3712, !3713, !3714, !3715, !3725}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3649, file: !3643, line: 111, baseType: !3652, size: 64)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = !DISubroutineType(types: !3654)
!3654 = !{!3641, !3641}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3649, file: !3643, line: 112, baseType: !3656, size: 64, offset: 64)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = !DISubroutineType(types: !3658)
!3658 = !{null, !3641}
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3649, file: !3643, line: 113, baseType: !3660, size: 64, offset: 128)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{!446, !3663}
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3642)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3649, file: !3643, line: 114, baseType: !3666, size: 64, offset: 192)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = !DISubroutineType(types: !3668)
!3668 = !{!2086, !3663, !3669}
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3649, file: !3643, line: 116, baseType: !3672, size: 64, offset: 256)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!446, !3663, !183}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3649, file: !3643, line: 118, baseType: !3676, size: 64, offset: 320)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!221, !3663, !183, !7, !112, !284}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3649, file: !3643, line: 123, baseType: !3680, size: 64, offset: 384)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{!221, !3663, !183, !3683, !284}
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3649, file: !3643, line: 126, baseType: !3685, size: 64, offset: 448)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{!183, !3663}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3649, file: !3643, line: 127, baseType: !3685, size: 64, offset: 512)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3649, file: !3643, line: 128, baseType: !3690, size: 64, offset: 576)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{!3641, !3663}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3649, file: !3643, line: 130, baseType: !3694, size: 64, offset: 640)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{!3641, !3663, !3641}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3649, file: !3643, line: 133, baseType: !3698, size: 64, offset: 704)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{!3641, !3663, !183}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3649, file: !3643, line: 135, baseType: !3702, size: 64, offset: 768)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{!221, !3663, !183, !183, !7, !7, !3705}
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3643, line: 43, size: 640, elements: !3707)
!3707 = !{!3708, !3709, !3710}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3706, file: !3643, line: 44, baseType: !3641, size: 64)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3706, file: !3643, line: 45, baseType: !7, size: 32, offset: 64)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3706, file: !3643, line: 46, baseType: !3711, size: 512, offset: 128)
!3711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 512, elements: !1288)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3649, file: !3643, line: 140, baseType: !3694, size: 64, offset: 832)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3649, file: !3643, line: 143, baseType: !3690, size: 64, offset: 896)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3649, file: !3643, line: 145, baseType: !3652, size: 64, offset: 960)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3649, file: !3643, line: 146, baseType: !3716, size: 64, offset: 1024)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = !DISubroutineType(types: !3718)
!3718 = !{!221, !3663, !3719}
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3643, line: 29, size: 128, elements: !3721)
!3721 = !{!3722, !3723, !3724}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3720, file: !3643, line: 30, baseType: !7, size: 32)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3720, file: !3643, line: 31, baseType: !7, size: 32, offset: 32)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3720, file: !3643, line: 32, baseType: !3663, size: 64, offset: 64)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3649, file: !3643, line: 148, baseType: !3726, size: 64, offset: 1088)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{!221, !3663, !3332}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3642, file: !3643, line: 20, baseType: !3332, size: 64, offset: 128)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !176, file: !73, line: 534, baseType: !469, size: 32, offset: 4992)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !176, file: !73, line: 535, baseType: !377, size: 32, offset: 5024)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !176, file: !73, line: 537, baseType: !195, offset: 5056)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !176, file: !73, line: 538, baseType: !118, size: 128, offset: 5056)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !176, file: !73, line: 540, baseType: !3735, size: 64, offset: 5184)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3737, line: 54, size: 960, elements: !3738)
!3737 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3738 = !{!3739, !3740, !3741, !3742, !3743, !3744, !3745, !3749, !3753, !3754, !3755, !3756, !3760, !3764, !3765}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3736, file: !3737, line: 55, baseType: !183, size: 64)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3736, file: !3737, line: 56, baseType: !589, size: 64, offset: 64)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3736, file: !3737, line: 58, baseType: !290, size: 64, offset: 128)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3736, file: !3737, line: 59, baseType: !290, size: 64, offset: 192)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3736, file: !3737, line: 60, baseType: !188, size: 64, offset: 256)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3736, file: !3737, line: 62, baseType: !3345, size: 64, offset: 320)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3736, file: !3737, line: 63, baseType: !3746, size: 64, offset: 384)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3747 = !DISubroutineType(types: !3748)
!3748 = !{!237, !3332, !3352}
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3736, file: !3737, line: 65, baseType: !3750, size: 64, offset: 448)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DISubroutineType(types: !3752)
!3752 = !{null, !3735}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3736, file: !3737, line: 66, baseType: !3354, size: 64, offset: 512)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3736, file: !3737, line: 68, baseType: !3363, size: 64, offset: 576)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3736, file: !3737, line: 70, baseType: !3148, size: 64, offset: 640)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3736, file: !3737, line: 71, baseType: !3757, size: 64, offset: 704)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!2086, !3332}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3736, file: !3737, line: 73, baseType: !3761, size: 64, offset: 768)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = !DISubroutineType(types: !3763)
!3763 = !{null, !3332, !3180, !3181}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3736, file: !3737, line: 75, baseType: !3358, size: 64, offset: 832)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3736, file: !3737, line: 77, baseType: !3475, size: 64, offset: 896)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !176, file: !73, line: 541, baseType: !290, size: 64, offset: 5248)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !176, file: !73, line: 543, baseType: !3354, size: 64, offset: 5312)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !176, file: !73, line: 544, baseType: !3769, size: 64, offset: 5376)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !176, file: !73, line: 545, baseType: !3772, size: 64, offset: 5440)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !176, file: !73, line: 547, baseType: !446, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !176, file: !73, line: 548, baseType: !446, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !176, file: !73, line: 549, baseType: !446, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !176, file: !73, line: 550, baseType: !446, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !172, file: !173, line: 245, baseType: !136, size: 64, offset: 5568)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !172, file: !173, line: 246, baseType: !7, size: 32, offset: 5632)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !172, file: !173, line: 247, baseType: !221, size: 32, offset: 5664)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !172, file: !173, line: 249, baseType: !118, size: 128, offset: 5696)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !172, file: !173, line: 250, baseType: !118, size: 128, offset: 5824)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "card_list", scope: !172, file: !173, line: 251, baseType: !118, size: 128, offset: 5952)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "rdev_list", scope: !172, file: !173, line: 252, baseType: !118, size: 128, offset: 6080)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !172, file: !173, line: 254, baseType: !3786, size: 64, offset: 6208)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_protocol", file: !173, line: 411, size: 6464, elements: !3788)
!3788 = !{!3789, !3790, !3791, !3795, !3796, !3797, !3801, !3805, !3806, !3807, !3808, !3809}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !3787, file: !173, line: 412, baseType: !118, size: 128)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3787, file: !173, line: 413, baseType: !237, size: 64, offset: 128)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3787, file: !173, line: 416, baseType: !3792, size: 64, offset: 192)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DISubroutineType(types: !3794)
!3794 = !{!221, !171}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3787, file: !173, line: 417, baseType: !3792, size: 64, offset: 256)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !3787, file: !173, line: 418, baseType: !3792, size: 64, offset: 320)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3787, file: !173, line: 421, baseType: !3798, size: 64, offset: 384)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!446, !171}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3787, file: !173, line: 422, baseType: !3802, size: 64, offset: 448)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{!221, !171, !3446}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3787, file: !173, line: 423, baseType: !3792, size: 64, offset: 512)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !3787, file: !173, line: 426, baseType: !145, size: 8, offset: 576)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3787, file: !173, line: 427, baseType: !176, size: 5568, offset: 640)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "cards", scope: !3787, file: !173, line: 428, baseType: !118, size: 128, offset: 6208)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !3787, file: !173, line: 429, baseType: !118, size: 128, offset: 6336)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !172, file: !173, line: 255, baseType: !3811, size: 64, offset: 6272)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card", file: !173, line: 202, size: 6720, elements: !3813)
!3813 = !{!3814, !3815, !3816, !3817, !3818, !3819, !3820, !3826, !3830, !3831, !3832, !3833, !3834}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3812, file: !173, line: 203, baseType: !176, size: 5568)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !3812, file: !173, line: 204, baseType: !145, size: 8, offset: 5568)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !3812, file: !173, line: 205, baseType: !118, size: 128, offset: 5632)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !3812, file: !173, line: 206, baseType: !118, size: 128, offset: 5760)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !3812, file: !173, line: 207, baseType: !118, size: 128, offset: 5888)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !3812, file: !173, line: 209, baseType: !3786, size: 64, offset: 6016)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3812, file: !173, line: 210, baseType: !3821, size: 64, offset: 6080)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_id", file: !173, line: 369, size: 128, elements: !3823)
!3823 = !{!3824, !3825}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3822, file: !173, line: 370, baseType: !1992, size: 64)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3822, file: !173, line: 371, baseType: !3821, size: 64, offset: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3812, file: !173, line: 212, baseType: !3827, size: 400, offset: 6144)
!3827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 400, elements: !3828)
!3828 = !{!3829}
!3829 = !DISubrange(count: 50)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "pnpver", scope: !3812, file: !173, line: 213, baseType: !145, size: 8, offset: 6544)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "productver", scope: !3812, file: !173, line: 214, baseType: !145, size: 8, offset: 6552)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !3812, file: !173, line: 215, baseType: !7, size: 32, offset: 6560)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !3812, file: !173, line: 216, baseType: !145, size: 8, offset: 6592)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !3812, file: !173, line: 217, baseType: !3835, size: 64, offset: 6656)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !3837, line: 123, flags: DIFlagFwdDecl)
!3837 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !172, file: !173, line: 256, baseType: !3839, size: 64, offset: 6336)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_driver", file: !173, line: 374, size: 1664, elements: !3841)
!3841 = !{!3842, !3843, !3851, !3852, !3856, !3860, !3861, !3862, !3863}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3840, file: !173, line: 375, baseType: !183, size: 64)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3840, file: !173, line: 376, baseType: !3844, size: 64, offset: 64)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3846)
!3846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_device_id", file: !3416, line: 220, size: 128, elements: !3847)
!3847 = !{!3848, !3850}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3846, file: !3416, line: 221, baseType: !3849, size: 64)
!3849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1311, size: 64, elements: !1288)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3846, file: !3416, line: 222, baseType: !3435, size: 64, offset: 64)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3840, file: !173, line: 377, baseType: !7, size: 32, offset: 128)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3840, file: !173, line: 378, baseType: !3853, size: 64, offset: 192)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{!221, !171, !3844}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3840, file: !173, line: 379, baseType: !3857, size: 64, offset: 256)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = !DISubroutineType(types: !3859)
!3859 = !{null, !171}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3840, file: !173, line: 380, baseType: !3857, size: 64, offset: 320)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3840, file: !173, line: 381, baseType: !3802, size: 64, offset: 384)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3840, file: !173, line: 382, baseType: !3792, size: 64, offset: 448)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3840, file: !173, line: 383, baseType: !3404, size: 1152, offset: 512)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "card_link", scope: !172, file: !173, line: 257, baseType: !3865, size: 64, offset: 6400)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_link", file: !173, line: 226, size: 256, elements: !3867)
!3867 = !{!3868, !3869, !3905, !3906}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !3866, file: !173, line: 227, baseType: !3811, size: 64)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3866, file: !173, line: 228, baseType: !3870, size: 64, offset: 64)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_driver", file: !173, line: 388, size: 2240, elements: !3872)
!3872 = !{!3873, !3874, !3875, !3887, !3888, !3892, !3896, !3900, !3904}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !3871, file: !173, line: 389, baseType: !118, size: 128)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3871, file: !173, line: 390, baseType: !237, size: 64, offset: 128)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3871, file: !173, line: 391, baseType: !3876, size: 64, offset: 192)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3878)
!3878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_device_id", file: !3416, line: 225, size: 640, elements: !3879)
!3879 = !{!3880, !3881, !3882}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3878, file: !3416, line: 226, baseType: !3849, size: 64)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3878, file: !3416, line: 227, baseType: !3435, size: 64, offset: 64)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "devs", scope: !3878, file: !3416, line: 230, baseType: !3883, size: 512, offset: 128)
!3883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3884, size: 512, elements: !1288)
!3884 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3878, file: !3416, line: 228, size: 64, elements: !3885)
!3885 = !{!3886}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3884, file: !3416, line: 229, baseType: !3849, size: 64)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3871, file: !173, line: 392, baseType: !7, size: 32, offset: 256)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3871, file: !173, line: 393, baseType: !3889, size: 64, offset: 320)
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = !DISubroutineType(types: !3891)
!3891 = !{!221, !3865, !3876}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3871, file: !173, line: 395, baseType: !3893, size: 64, offset: 384)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DISubroutineType(types: !3895)
!3895 = !{null, !3865}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3871, file: !173, line: 396, baseType: !3897, size: 64, offset: 448)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{!221, !3865, !3446}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3871, file: !173, line: 397, baseType: !3901, size: 64, offset: 512)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{!221, !3865}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3871, file: !173, line: 398, baseType: !3840, size: 1664, offset: 576)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3866, file: !173, line: 229, baseType: !112, size: 64, offset: 128)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "pm_state", scope: !3866, file: !173, line: 230, baseType: !3446, size: 32, offset: 192)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !172, file: !173, line: 259, baseType: !3821, size: 64, offset: 6464)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !172, file: !173, line: 261, baseType: !221, size: 32, offset: 6528)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !172, file: !173, line: 262, baseType: !221, size: 32, offset: 6560)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "num_dependent_sets", scope: !172, file: !173, line: 263, baseType: !7, size: 32, offset: 6592)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !172, file: !173, line: 264, baseType: !118, size: 128, offset: 6656)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !172, file: !173, line: 265, baseType: !118, size: 128, offset: 6784)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !172, file: !173, line: 267, baseType: !3827, size: 400, offset: 6912)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !172, file: !173, line: 268, baseType: !221, size: 32, offset: 7328)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !172, file: !173, line: 269, baseType: !3835, size: 64, offset: 7360)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !172, file: !173, line: 270, baseType: !112, size: 64, offset: 7424)
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3918, size: 64)
!3918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_resource", file: !115, line: 156, size: 640, elements: !3919)
!3919 = !{!3920, !3921}
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3918, file: !115, line: 157, baseType: !118, size: 128)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !3918, file: !115, line: 158, baseType: !3922, size: 512, offset: 128)
!3922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !3923, line: 20, size: 512, elements: !3924)
!3923 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!3924 = !{!3925, !3926, !3927, !3928, !3929, !3930, !3932, !3933}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3922, file: !3923, line: 21, baseType: !134, size: 64)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3922, file: !3923, line: 22, baseType: !134, size: 64, offset: 64)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3922, file: !3923, line: 23, baseType: !183, size: 64, offset: 128)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3922, file: !3923, line: 24, baseType: !126, size: 64, offset: 192)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3922, file: !3923, line: 25, baseType: !126, size: 64, offset: 256)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3922, file: !3923, line: 26, baseType: !3931, size: 64, offset: 320)
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3922, size: 64)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3922, file: !3923, line: 26, baseType: !3931, size: 64, offset: 384)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3922, file: !3923, line: 26, baseType: !3931, size: 64, offset: 448)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !122)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!3937 = !{!3938, !3949, !3951, !3953, !0, !3955, !3958, !3960, !3963, !3968, !3970, !3973}
!3938 = !DIGlobalVariableExpression(var: !3939, expr: !DIExpression())
!3939 = distinct !DIGlobalVariable(name: "__setup_pnp_setup_reserve_irq", scope: !2, file: !3, line: 715, type: !3940, isLocal: true, isDefinition: true, align: 64)
!3940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !3941, line: 241, size: 192, elements: !3942)
!3941 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!3942 = !{!3943, !3944, !3948}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3940, file: !3941, line: 242, baseType: !183, size: 64)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !3940, file: !3941, line: 243, baseType: !3945, size: 64, offset: 64)
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3946, size: 64)
!3946 = !DISubroutineType(types: !3947)
!3947 = !{!221, !237}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !3940, file: !3941, line: 244, baseType: !221, size: 32, offset: 128)
!3949 = !DIGlobalVariableExpression(var: !3950, expr: !DIExpression())
!3950 = distinct !DIGlobalVariable(name: "__setup_pnp_setup_reserve_dma", scope: !2, file: !3, line: 728, type: !3940, isLocal: true, isDefinition: true, align: 64)
!3951 = !DIGlobalVariableExpression(var: !3952, expr: !DIExpression())
!3952 = distinct !DIGlobalVariable(name: "__setup_pnp_setup_reserve_io", scope: !2, file: !3, line: 741, type: !3940, isLocal: true, isDefinition: true, align: 64)
!3953 = !DIGlobalVariableExpression(var: !3954, expr: !DIExpression())
!3954 = distinct !DIGlobalVariable(name: "__setup_pnp_setup_reserve_mem", scope: !2, file: !3, line: 754, type: !3940, isLocal: true, isDefinition: true, align: 64)
!3955 = !DIGlobalVariableExpression(var: !3956, expr: !DIExpression())
!3956 = distinct !DIGlobalVariable(name: "pnp_reserve_mem", scope: !2, file: !3, line: 29, type: !3957, isLocal: true, isDefinition: true)
!3957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 512, elements: !1693)
!3958 = !DIGlobalVariableExpression(var: !3959, expr: !DIExpression())
!3959 = distinct !DIGlobalVariable(name: "pnp_reserve_irq", scope: !2, file: !3, line: 26, type: !3957, isLocal: true, isDefinition: true)
!3960 = !DIGlobalVariableExpression(var: !3961, expr: !DIExpression())
!3961 = distinct !DIGlobalVariable(name: "pnp_reserve_dma", scope: !2, file: !3, line: 27, type: !3962, isLocal: true, isDefinition: true)
!3962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 256, elements: !1288)
!3963 = !DIGlobalVariableExpression(var: !3964, expr: !DIExpression())
!3964 = distinct !DIGlobalVariable(name: "__setup_str_pnp_setup_reserve_irq", scope: !2, file: !3, line: 715, type: !3965, isLocal: true, isDefinition: true, align: 8)
!3965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 136, elements: !3966)
!3966 = !{!3967}
!3967 = !DISubrange(count: 17)
!3968 = !DIGlobalVariableExpression(var: !3969, expr: !DIExpression())
!3969 = distinct !DIGlobalVariable(name: "__setup_str_pnp_setup_reserve_dma", scope: !2, file: !3, line: 728, type: !3965, isLocal: true, isDefinition: true, align: 8)
!3970 = !DIGlobalVariableExpression(var: !3971, expr: !DIExpression())
!3971 = distinct !DIGlobalVariable(name: "__setup_str_pnp_setup_reserve_io", scope: !2, file: !3, line: 741, type: !3972, isLocal: true, isDefinition: true, align: 8)
!3972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 128, elements: !1693)
!3973 = !DIGlobalVariableExpression(var: !3974, expr: !DIExpression())
!3974 = distinct !DIGlobalVariable(name: "__setup_str_pnp_setup_reserve_mem", scope: !2, file: !3, line: 754, type: !3965, isLocal: true, isDefinition: true, align: 8)
!3975 = !{i32 7, !"Dwarf Version", i32 4}
!3976 = !{i32 2, !"Debug Info Version", i32 3}
!3977 = !{i32 1, !"wchar_size", i32 2}
!3978 = !{i32 1, !"Code Model", i32 2}
!3979 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!3980 = distinct !DISubprogram(name: "pnp_register_irq_resource", scope: !3, file: !3, line: 51, type: !3981, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !209)
!3981 = !DISubroutineType(types: !3982)
!3982 = !{!221, !171, !7, !3983, !145}
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!3984 = !DILocalVariable(name: "dev", arg: 1, scope: !3980, file: !3, line: 51, type: !171)
!3985 = !DILocation(line: 51, column: 47, scope: !3980)
!3986 = !DILocalVariable(name: "option_flags", arg: 2, scope: !3980, file: !3, line: 51, type: !7)
!3987 = !DILocation(line: 51, column: 65, scope: !3980)
!3988 = !DILocalVariable(name: "map", arg: 3, scope: !3980, file: !3, line: 52, type: !3983)
!3989 = !DILocation(line: 52, column: 26, scope: !3980)
!3990 = !DILocalVariable(name: "flags", arg: 4, scope: !3980, file: !3, line: 52, type: !145)
!3991 = !DILocation(line: 52, column: 45, scope: !3980)
!3992 = !DILocalVariable(name: "option", scope: !3980, file: !3, line: 54, type: !113)
!3993 = !DILocation(line: 54, column: 21, scope: !3980)
!3994 = !DILocalVariable(name: "irq", scope: !3980, file: !3, line: 55, type: !3995)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!3996 = !DILocation(line: 55, column: 18, scope: !3980)
!3997 = !DILocation(line: 57, column: 28, scope: !3980)
!3998 = !DILocation(line: 57, column: 49, scope: !3980)
!3999 = !DILocation(line: 57, column: 11, scope: !3980)
!4000 = !DILocation(line: 57, column: 9, scope: !3980)
!4001 = !DILocation(line: 58, column: 7, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !3980, file: !3, line: 58, column: 6)
!4003 = !DILocation(line: 58, column: 6, scope: !3980)
!4004 = !DILocation(line: 59, column: 3, scope: !4002)
!4005 = !DILocation(line: 61, column: 9, scope: !3980)
!4006 = !DILocation(line: 61, column: 17, scope: !3980)
!4007 = !DILocation(line: 61, column: 19, scope: !3980)
!4008 = !DILocation(line: 61, column: 6, scope: !3980)
!4009 = !DILocation(line: 62, column: 2, scope: !3980)
!4010 = !DILocation(line: 62, column: 7, scope: !3980)
!4011 = !DILocation(line: 62, column: 14, scope: !3980)
!4012 = !DILocation(line: 62, column: 13, scope: !3980)
!4013 = !DILocation(line: 63, column: 15, scope: !3980)
!4014 = !DILocation(line: 63, column: 2, scope: !3980)
!4015 = !DILocation(line: 63, column: 7, scope: !3980)
!4016 = !DILocation(line: 63, column: 13, scope: !3980)
!4017 = !DILocalVariable(name: "i", scope: !4018, file: !3, line: 67, type: !221)
!4018 = distinct !DILexicalBlock(scope: !3980, file: !3, line: 66, column: 2)
!4019 = !DILocation(line: 67, column: 7, scope: !4018)
!4020 = !DILocation(line: 69, column: 10, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !4018, file: !3, line: 69, column: 3)
!4022 = !DILocation(line: 69, column: 8, scope: !4021)
!4023 = !DILocation(line: 69, column: 15, scope: !4024)
!4024 = distinct !DILexicalBlock(scope: !4021, file: !3, line: 69, column: 3)
!4025 = !DILocation(line: 69, column: 17, scope: !4024)
!4026 = !DILocation(line: 69, column: 3, scope: !4021)
!4027 = !DILocation(line: 70, column: 17, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !4024, file: !3, line: 70, column: 8)
!4029 = !DILocation(line: 70, column: 20, scope: !4028)
!4030 = !DILocation(line: 70, column: 25, scope: !4028)
!4031 = !DILocation(line: 70, column: 29, scope: !4028)
!4032 = !DILocation(line: 70, column: 8, scope: !4028)
!4033 = !DILocation(line: 70, column: 8, scope: !4024)
!4034 = !DILocation(line: 71, column: 30, scope: !4028)
!4035 = !DILocation(line: 71, column: 5, scope: !4028)
!4036 = !DILocation(line: 70, column: 33, scope: !4028)
!4037 = !DILocation(line: 69, column: 24, scope: !4024)
!4038 = !DILocation(line: 69, column: 3, scope: !4024)
!4039 = distinct !{!4039, !4026, !4040}
!4040 = !DILocation(line: 71, column: 34, scope: !4021)
!4041 = !DILocation(line: 75, column: 22, scope: !3980)
!4042 = !DILocation(line: 75, column: 27, scope: !3980)
!4043 = !DILocation(line: 75, column: 2, scope: !3980)
!4044 = !DILocation(line: 76, column: 2, scope: !3980)
!4045 = !DILocation(line: 77, column: 1, scope: !3980)
!4046 = distinct !DISubprogram(name: "pnp_build_option", scope: !3, file: !3, line: 35, type: !4047, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!4047 = !DISubroutineType(types: !4048)
!4048 = !{!113, !171, !126, !7}
!4049 = !DILocalVariable(name: "dev", arg: 1, scope: !4046, file: !3, line: 35, type: !171)
!4050 = !DILocation(line: 35, column: 60, scope: !4046)
!4051 = !DILocalVariable(name: "type", arg: 2, scope: !4046, file: !3, line: 35, type: !126)
!4052 = !DILocation(line: 35, column: 79, scope: !4046)
!4053 = !DILocalVariable(name: "option_flags", arg: 3, scope: !4046, file: !3, line: 36, type: !7)
!4054 = !DILocation(line: 36, column: 22, scope: !4046)
!4055 = !DILocalVariable(name: "option", scope: !4046, file: !3, line: 38, type: !113)
!4056 = !DILocation(line: 38, column: 21, scope: !4046)
!4057 = !DILocation(line: 40, column: 11, scope: !4046)
!4058 = !DILocation(line: 40, column: 9, scope: !4046)
!4059 = !DILocation(line: 41, column: 7, scope: !4060)
!4060 = distinct !DILexicalBlock(scope: !4046, file: !3, line: 41, column: 6)
!4061 = !DILocation(line: 41, column: 6, scope: !4046)
!4062 = !DILocation(line: 42, column: 3, scope: !4060)
!4063 = !DILocation(line: 44, column: 18, scope: !4046)
!4064 = !DILocation(line: 44, column: 2, scope: !4046)
!4065 = !DILocation(line: 44, column: 10, scope: !4046)
!4066 = !DILocation(line: 44, column: 16, scope: !4046)
!4067 = !DILocation(line: 45, column: 17, scope: !4046)
!4068 = !DILocation(line: 45, column: 2, scope: !4046)
!4069 = !DILocation(line: 45, column: 10, scope: !4046)
!4070 = !DILocation(line: 45, column: 15, scope: !4046)
!4071 = !DILocation(line: 47, column: 17, scope: !4046)
!4072 = !DILocation(line: 47, column: 25, scope: !4046)
!4073 = !DILocation(line: 47, column: 32, scope: !4046)
!4074 = !DILocation(line: 47, column: 37, scope: !4046)
!4075 = !DILocation(line: 47, column: 2, scope: !4046)
!4076 = !DILocation(line: 48, column: 9, scope: !4046)
!4077 = !DILocation(line: 48, column: 2, scope: !4046)
!4078 = !DILocation(line: 49, column: 1, scope: !4046)
!4079 = distinct !DISubprogram(name: "test_bit", scope: !4080, file: !4080, line: 132, type: !4081, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!4080 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!4081 = !DISubroutineType(types: !4082)
!4082 = !{!446, !272, !4083}
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4085)
!4085 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !126)
!4086 = !DILocalVariable(name: "nr", arg: 1, scope: !4087, file: !4088, line: 210, type: !272)
!4087 = distinct !DISubprogram(name: "variable_test_bit", scope: !4088, file: !4088, line: 210, type: !4081, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!4088 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4089 = !DILocation(line: 210, column: 52, scope: !4087, inlinedAt: !4090)
!4090 = distinct !DILocation(line: 135, column: 9, scope: !4079)
!4091 = !DILocalVariable(name: "addr", arg: 2, scope: !4087, file: !4088, line: 210, type: !4083)
!4092 = !DILocation(line: 210, column: 86, scope: !4087, inlinedAt: !4090)
!4093 = !DILocalVariable(name: "oldbit", scope: !4087, file: !4088, line: 212, type: !446)
!4094 = !DILocation(line: 212, column: 7, scope: !4087, inlinedAt: !4090)
!4095 = !DILocalVariable(name: "nr", arg: 1, scope: !4096, file: !4088, line: 204, type: !272)
!4096 = distinct !DISubprogram(name: "constant_test_bit", scope: !4088, file: !4088, line: 204, type: !4081, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!4097 = !DILocation(line: 204, column: 52, scope: !4096, inlinedAt: !4098)
!4098 = distinct !DILocation(line: 135, column: 9, scope: !4079)
!4099 = !DILocalVariable(name: "addr", arg: 2, scope: !4096, file: !4088, line: 204, type: !4083)
!4100 = !DILocation(line: 204, column: 86, scope: !4096, inlinedAt: !4098)
!4101 = !DILocalVariable(name: "v", arg: 1, scope: !4102, file: !4103, line: 69, type: !4106)
!4102 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !4103, file: !4103, line: 69, type: !4104, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!4103 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!4104 = !DISubroutineType(types: !4105)
!4105 = !{null, !4106, !284}
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4108)
!4108 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4109 = !DILocation(line: 69, column: 73, scope: !4102, inlinedAt: !4110)
!4110 = distinct !DILocation(line: 134, column: 2, scope: !4079)
!4111 = !DILocalVariable(name: "size", arg: 2, scope: !4102, file: !4103, line: 69, type: !284)
!4112 = !DILocation(line: 69, column: 83, scope: !4102, inlinedAt: !4110)
!4113 = !DILocalVariable(name: "nr", arg: 1, scope: !4079, file: !4080, line: 132, type: !272)
!4114 = !DILocation(line: 132, column: 34, scope: !4079)
!4115 = !DILocalVariable(name: "addr", arg: 2, scope: !4079, file: !4080, line: 132, type: !4083)
!4116 = !DILocation(line: 132, column: 68, scope: !4079)
!4117 = !DILocation(line: 134, column: 25, scope: !4079)
!4118 = !DILocation(line: 134, column: 32, scope: !4079)
!4119 = !DILocation(line: 134, column: 30, scope: !4079)
!4120 = !DILocation(line: 71, column: 19, scope: !4102, inlinedAt: !4110)
!4121 = !DILocation(line: 71, column: 22, scope: !4102, inlinedAt: !4110)
!4122 = !DILocation(line: 71, column: 2, scope: !4102, inlinedAt: !4110)
!4123 = !DILocation(line: 72, column: 2, scope: !4102, inlinedAt: !4110)
!4124 = !DILocation(line: 135, column: 9, scope: !4079)
!4125 = !DILocation(line: 206, column: 19, scope: !4096, inlinedAt: !4098)
!4126 = !DILocation(line: 206, column: 22, scope: !4096, inlinedAt: !4098)
!4127 = !DILocation(line: 206, column: 15, scope: !4096, inlinedAt: !4098)
!4128 = !DILocation(line: 207, column: 4, scope: !4096, inlinedAt: !4098)
!4129 = !DILocation(line: 207, column: 9, scope: !4096, inlinedAt: !4098)
!4130 = !DILocation(line: 207, column: 12, scope: !4096, inlinedAt: !4098)
!4131 = !DILocation(line: 206, column: 44, scope: !4096, inlinedAt: !4098)
!4132 = !DILocation(line: 207, column: 37, scope: !4096, inlinedAt: !4098)
!4133 = !DILocation(line: 217, column: 33, scope: !4087, inlinedAt: !4090)
!4134 = !DILocation(line: 217, column: 46, scope: !4087, inlinedAt: !4090)
!4135 = !DILocation(line: 214, column: 2, scope: !4087, inlinedAt: !4090)
!4136 = !{i32 -2147129277, i32 -2147129217}
!4137 = !DILocation(line: 219, column: 9, scope: !4087, inlinedAt: !4090)
!4138 = !DILocation(line: 135, column: 2, scope: !4079)
!4139 = distinct !DISubprogram(name: "pnp_register_dma_resource", scope: !3, file: !3, line: 79, type: !4140, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !209)
!4140 = !DISubroutineType(types: !4141)
!4141 = !{!221, !171, !7, !145, !145}
!4142 = !DILocalVariable(name: "dev", arg: 1, scope: !4139, file: !3, line: 79, type: !171)
!4143 = !DILocation(line: 79, column: 47, scope: !4139)
!4144 = !DILocalVariable(name: "option_flags", arg: 2, scope: !4139, file: !3, line: 79, type: !7)
!4145 = !DILocation(line: 79, column: 65, scope: !4139)
!4146 = !DILocalVariable(name: "map", arg: 3, scope: !4139, file: !3, line: 80, type: !145)
!4147 = !DILocation(line: 80, column: 24, scope: !4139)
!4148 = !DILocalVariable(name: "flags", arg: 4, scope: !4139, file: !3, line: 80, type: !145)
!4149 = !DILocation(line: 80, column: 43, scope: !4139)
!4150 = !DILocalVariable(name: "option", scope: !4139, file: !3, line: 82, type: !113)
!4151 = !DILocation(line: 82, column: 21, scope: !4139)
!4152 = !DILocalVariable(name: "dma", scope: !4139, file: !3, line: 83, type: !4153)
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!4154 = !DILocation(line: 83, column: 18, scope: !4139)
!4155 = !DILocation(line: 85, column: 28, scope: !4139)
!4156 = !DILocation(line: 85, column: 49, scope: !4139)
!4157 = !DILocation(line: 85, column: 11, scope: !4139)
!4158 = !DILocation(line: 85, column: 9, scope: !4139)
!4159 = !DILocation(line: 86, column: 7, scope: !4160)
!4160 = distinct !DILexicalBlock(scope: !4139, file: !3, line: 86, column: 6)
!4161 = !DILocation(line: 86, column: 6, scope: !4139)
!4162 = !DILocation(line: 87, column: 3, scope: !4160)
!4163 = !DILocation(line: 89, column: 9, scope: !4139)
!4164 = !DILocation(line: 89, column: 17, scope: !4139)
!4165 = !DILocation(line: 89, column: 19, scope: !4139)
!4166 = !DILocation(line: 89, column: 6, scope: !4139)
!4167 = !DILocation(line: 90, column: 13, scope: !4139)
!4168 = !DILocation(line: 90, column: 2, scope: !4139)
!4169 = !DILocation(line: 90, column: 7, scope: !4139)
!4170 = !DILocation(line: 90, column: 11, scope: !4139)
!4171 = !DILocation(line: 91, column: 15, scope: !4139)
!4172 = !DILocation(line: 91, column: 2, scope: !4139)
!4173 = !DILocation(line: 91, column: 7, scope: !4139)
!4174 = !DILocation(line: 91, column: 13, scope: !4139)
!4175 = !DILocation(line: 93, column: 22, scope: !4139)
!4176 = !DILocation(line: 93, column: 27, scope: !4139)
!4177 = !DILocation(line: 93, column: 2, scope: !4139)
!4178 = !DILocation(line: 94, column: 2, scope: !4139)
!4179 = !DILocation(line: 95, column: 1, scope: !4139)
!4180 = distinct !DISubprogram(name: "pnp_register_port_resource", scope: !3, file: !3, line: 97, type: !4181, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !209)
!4181 = !DISubroutineType(types: !4182)
!4182 = !{!221, !171, !7, !134, !134, !134, !134, !145}
!4183 = !DILocalVariable(name: "dev", arg: 1, scope: !4180, file: !3, line: 97, type: !171)
!4184 = !DILocation(line: 97, column: 48, scope: !4180)
!4185 = !DILocalVariable(name: "option_flags", arg: 2, scope: !4180, file: !3, line: 97, type: !7)
!4186 = !DILocation(line: 97, column: 66, scope: !4180)
!4187 = !DILocalVariable(name: "min", arg: 3, scope: !4180, file: !3, line: 98, type: !134)
!4188 = !DILocation(line: 98, column: 27, scope: !4180)
!4189 = !DILocalVariable(name: "max", arg: 4, scope: !4180, file: !3, line: 98, type: !134)
!4190 = !DILocation(line: 98, column: 48, scope: !4180)
!4191 = !DILocalVariable(name: "align", arg: 5, scope: !4180, file: !3, line: 99, type: !134)
!4192 = !DILocation(line: 99, column: 27, scope: !4180)
!4193 = !DILocalVariable(name: "size", arg: 6, scope: !4180, file: !3, line: 99, type: !134)
!4194 = !DILocation(line: 99, column: 50, scope: !4180)
!4195 = !DILocalVariable(name: "flags", arg: 7, scope: !4180, file: !3, line: 100, type: !145)
!4196 = !DILocation(line: 100, column: 25, scope: !4180)
!4197 = !DILocalVariable(name: "option", scope: !4180, file: !3, line: 102, type: !113)
!4198 = !DILocation(line: 102, column: 21, scope: !4180)
!4199 = !DILocalVariable(name: "port", scope: !4180, file: !3, line: 103, type: !4200)
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!4201 = !DILocation(line: 103, column: 19, scope: !4180)
!4202 = !DILocation(line: 105, column: 28, scope: !4180)
!4203 = !DILocation(line: 105, column: 48, scope: !4180)
!4204 = !DILocation(line: 105, column: 11, scope: !4180)
!4205 = !DILocation(line: 105, column: 9, scope: !4180)
!4206 = !DILocation(line: 106, column: 7, scope: !4207)
!4207 = distinct !DILexicalBlock(scope: !4180, file: !3, line: 106, column: 6)
!4208 = !DILocation(line: 106, column: 6, scope: !4180)
!4209 = !DILocation(line: 107, column: 3, scope: !4207)
!4210 = !DILocation(line: 109, column: 10, scope: !4180)
!4211 = !DILocation(line: 109, column: 18, scope: !4180)
!4212 = !DILocation(line: 109, column: 20, scope: !4180)
!4213 = !DILocation(line: 109, column: 7, scope: !4180)
!4214 = !DILocation(line: 110, column: 14, scope: !4180)
!4215 = !DILocation(line: 110, column: 2, scope: !4180)
!4216 = !DILocation(line: 110, column: 8, scope: !4180)
!4217 = !DILocation(line: 110, column: 12, scope: !4180)
!4218 = !DILocation(line: 111, column: 14, scope: !4180)
!4219 = !DILocation(line: 111, column: 2, scope: !4180)
!4220 = !DILocation(line: 111, column: 8, scope: !4180)
!4221 = !DILocation(line: 111, column: 12, scope: !4180)
!4222 = !DILocation(line: 112, column: 16, scope: !4180)
!4223 = !DILocation(line: 112, column: 2, scope: !4180)
!4224 = !DILocation(line: 112, column: 8, scope: !4180)
!4225 = !DILocation(line: 112, column: 14, scope: !4180)
!4226 = !DILocation(line: 113, column: 15, scope: !4180)
!4227 = !DILocation(line: 113, column: 2, scope: !4180)
!4228 = !DILocation(line: 113, column: 8, scope: !4180)
!4229 = !DILocation(line: 113, column: 13, scope: !4180)
!4230 = !DILocation(line: 114, column: 16, scope: !4180)
!4231 = !DILocation(line: 114, column: 2, scope: !4180)
!4232 = !DILocation(line: 114, column: 8, scope: !4180)
!4233 = !DILocation(line: 114, column: 14, scope: !4180)
!4234 = !DILocation(line: 116, column: 22, scope: !4180)
!4235 = !DILocation(line: 116, column: 27, scope: !4180)
!4236 = !DILocation(line: 116, column: 2, scope: !4180)
!4237 = !DILocation(line: 117, column: 2, scope: !4180)
!4238 = !DILocation(line: 118, column: 1, scope: !4180)
!4239 = distinct !DISubprogram(name: "pnp_register_mem_resource", scope: !3, file: !3, line: 120, type: !4181, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !209)
!4240 = !DILocalVariable(name: "dev", arg: 1, scope: !4239, file: !3, line: 120, type: !171)
!4241 = !DILocation(line: 120, column: 47, scope: !4239)
!4242 = !DILocalVariable(name: "option_flags", arg: 2, scope: !4239, file: !3, line: 120, type: !7)
!4243 = !DILocation(line: 120, column: 65, scope: !4239)
!4244 = !DILocalVariable(name: "min", arg: 3, scope: !4239, file: !3, line: 121, type: !134)
!4245 = !DILocation(line: 121, column: 26, scope: !4239)
!4246 = !DILocalVariable(name: "max", arg: 4, scope: !4239, file: !3, line: 121, type: !134)
!4247 = !DILocation(line: 121, column: 47, scope: !4239)
!4248 = !DILocalVariable(name: "align", arg: 5, scope: !4239, file: !3, line: 122, type: !134)
!4249 = !DILocation(line: 122, column: 26, scope: !4239)
!4250 = !DILocalVariable(name: "size", arg: 6, scope: !4239, file: !3, line: 122, type: !134)
!4251 = !DILocation(line: 122, column: 49, scope: !4239)
!4252 = !DILocalVariable(name: "flags", arg: 7, scope: !4239, file: !3, line: 123, type: !145)
!4253 = !DILocation(line: 123, column: 24, scope: !4239)
!4254 = !DILocalVariable(name: "option", scope: !4239, file: !3, line: 125, type: !113)
!4255 = !DILocation(line: 125, column: 21, scope: !4239)
!4256 = !DILocalVariable(name: "mem", scope: !4239, file: !3, line: 126, type: !4257)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!4258 = !DILocation(line: 126, column: 18, scope: !4239)
!4259 = !DILocation(line: 128, column: 28, scope: !4239)
!4260 = !DILocation(line: 128, column: 49, scope: !4239)
!4261 = !DILocation(line: 128, column: 11, scope: !4239)
!4262 = !DILocation(line: 128, column: 9, scope: !4239)
!4263 = !DILocation(line: 129, column: 7, scope: !4264)
!4264 = distinct !DILexicalBlock(scope: !4239, file: !3, line: 129, column: 6)
!4265 = !DILocation(line: 129, column: 6, scope: !4239)
!4266 = !DILocation(line: 130, column: 3, scope: !4264)
!4267 = !DILocation(line: 132, column: 9, scope: !4239)
!4268 = !DILocation(line: 132, column: 17, scope: !4239)
!4269 = !DILocation(line: 132, column: 19, scope: !4239)
!4270 = !DILocation(line: 132, column: 6, scope: !4239)
!4271 = !DILocation(line: 133, column: 13, scope: !4239)
!4272 = !DILocation(line: 133, column: 2, scope: !4239)
!4273 = !DILocation(line: 133, column: 7, scope: !4239)
!4274 = !DILocation(line: 133, column: 11, scope: !4239)
!4275 = !DILocation(line: 134, column: 13, scope: !4239)
!4276 = !DILocation(line: 134, column: 2, scope: !4239)
!4277 = !DILocation(line: 134, column: 7, scope: !4239)
!4278 = !DILocation(line: 134, column: 11, scope: !4239)
!4279 = !DILocation(line: 135, column: 15, scope: !4239)
!4280 = !DILocation(line: 135, column: 2, scope: !4239)
!4281 = !DILocation(line: 135, column: 7, scope: !4239)
!4282 = !DILocation(line: 135, column: 13, scope: !4239)
!4283 = !DILocation(line: 136, column: 14, scope: !4239)
!4284 = !DILocation(line: 136, column: 2, scope: !4239)
!4285 = !DILocation(line: 136, column: 7, scope: !4239)
!4286 = !DILocation(line: 136, column: 12, scope: !4239)
!4287 = !DILocation(line: 137, column: 15, scope: !4239)
!4288 = !DILocation(line: 137, column: 2, scope: !4239)
!4289 = !DILocation(line: 137, column: 7, scope: !4239)
!4290 = !DILocation(line: 137, column: 13, scope: !4239)
!4291 = !DILocation(line: 139, column: 22, scope: !4239)
!4292 = !DILocation(line: 139, column: 27, scope: !4239)
!4293 = !DILocation(line: 139, column: 2, scope: !4239)
!4294 = !DILocation(line: 140, column: 2, scope: !4239)
!4295 = !DILocation(line: 141, column: 1, scope: !4239)
!4296 = distinct !DISubprogram(name: "pnp_free_options", scope: !3, file: !3, line: 143, type: !3858, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !209)
!4297 = !DILocalVariable(name: "dev", arg: 1, scope: !4296, file: !3, line: 143, type: !171)
!4298 = !DILocation(line: 143, column: 39, scope: !4296)
!4299 = !DILocalVariable(name: "option", scope: !4296, file: !3, line: 145, type: !113)
!4300 = !DILocation(line: 145, column: 21, scope: !4296)
!4301 = !DILocalVariable(name: "tmp", scope: !4296, file: !3, line: 145, type: !113)
!4302 = !DILocation(line: 145, column: 30, scope: !4296)
!4303 = !DILocalVariable(name: "__mptr", scope: !4304, file: !3, line: 147, type: !112)
!4304 = distinct !DILexicalBlock(scope: !4305, file: !3, line: 147, column: 2)
!4305 = distinct !DILexicalBlock(scope: !4296, file: !3, line: 147, column: 2)
!4306 = !DILocation(line: 147, column: 2, scope: !4304)
!4307 = !DILocation(line: 147, column: 2, scope: !4308)
!4308 = distinct !DILexicalBlock(scope: !4304, file: !3, line: 147, column: 2)
!4309 = !DILocation(line: 147, column: 2, scope: !4305)
!4310 = !DILocalVariable(name: "__mptr", scope: !4311, file: !3, line: 147, type: !112)
!4311 = distinct !DILexicalBlock(scope: !4305, file: !3, line: 147, column: 2)
!4312 = !DILocation(line: 147, column: 2, scope: !4311)
!4313 = !DILocation(line: 147, column: 2, scope: !4314)
!4314 = distinct !DILexicalBlock(scope: !4311, file: !3, line: 147, column: 2)
!4315 = !DILocation(line: 147, column: 2, scope: !4316)
!4316 = distinct !DILexicalBlock(scope: !4305, file: !3, line: 147, column: 2)
!4317 = !DILocation(line: 148, column: 13, scope: !4318)
!4318 = distinct !DILexicalBlock(scope: !4316, file: !3, line: 147, column: 61)
!4319 = !DILocation(line: 148, column: 21, scope: !4318)
!4320 = !DILocation(line: 148, column: 3, scope: !4318)
!4321 = !DILocation(line: 149, column: 9, scope: !4318)
!4322 = !DILocation(line: 149, column: 3, scope: !4318)
!4323 = !DILocation(line: 150, column: 2, scope: !4318)
!4324 = !DILocalVariable(name: "__mptr", scope: !4325, file: !3, line: 147, type: !112)
!4325 = distinct !DILexicalBlock(scope: !4316, file: !3, line: 147, column: 2)
!4326 = !DILocation(line: 147, column: 2, scope: !4325)
!4327 = !DILocation(line: 147, column: 2, scope: !4328)
!4328 = distinct !DILexicalBlock(scope: !4325, file: !3, line: 147, column: 2)
!4329 = distinct !{!4329, !4309, !4330}
!4330 = !DILocation(line: 150, column: 2, scope: !4305)
!4331 = !DILocation(line: 151, column: 1, scope: !4296)
!4332 = distinct !DISubprogram(name: "list_del", scope: !4333, file: !4333, line: 144, type: !4334, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!4333 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!4334 = !DISubroutineType(types: !4335)
!4335 = !{null, !122}
!4336 = !DILocalVariable(name: "entry", arg: 1, scope: !4332, file: !4333, line: 144, type: !122)
!4337 = !DILocation(line: 144, column: 47, scope: !4332)
!4338 = !DILocation(line: 146, column: 19, scope: !4332)
!4339 = !DILocation(line: 146, column: 2, scope: !4332)
!4340 = !DILocation(line: 147, column: 2, scope: !4332)
!4341 = !DILocation(line: 147, column: 9, scope: !4332)
!4342 = !DILocation(line: 147, column: 14, scope: !4332)
!4343 = !DILocation(line: 148, column: 2, scope: !4332)
!4344 = !DILocation(line: 148, column: 9, scope: !4332)
!4345 = !DILocation(line: 148, column: 14, scope: !4332)
!4346 = !DILocation(line: 149, column: 1, scope: !4332)
!4347 = distinct !DISubprogram(name: "pnp_check_port", scope: !3, file: !3, line: 166, type: !4348, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !209)
!4348 = !DISubroutineType(types: !4349)
!4349 = !{!221, !171, !3931}
!4350 = !DILocalVariable(name: "dev", arg: 1, scope: !4347, file: !3, line: 166, type: !171)
!4351 = !DILocation(line: 166, column: 36, scope: !4347)
!4352 = !DILocalVariable(name: "res", arg: 2, scope: !4347, file: !3, line: 166, type: !3931)
!4353 = !DILocation(line: 166, column: 58, scope: !4347)
!4354 = !DILocalVariable(name: "i", scope: !4347, file: !3, line: 168, type: !221)
!4355 = !DILocation(line: 168, column: 6, scope: !4347)
!4356 = !DILocalVariable(name: "tdev", scope: !4347, file: !3, line: 169, type: !171)
!4357 = !DILocation(line: 169, column: 18, scope: !4347)
!4358 = !DILocalVariable(name: "tres", scope: !4347, file: !3, line: 170, type: !3931)
!4359 = !DILocation(line: 170, column: 19, scope: !4347)
!4360 = !DILocalVariable(name: "port", scope: !4347, file: !3, line: 171, type: !4361)
!4361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!4362 = !DILocation(line: 171, column: 19, scope: !4347)
!4363 = !DILocalVariable(name: "end", scope: !4347, file: !3, line: 171, type: !4361)
!4364 = !DILocation(line: 171, column: 26, scope: !4347)
!4365 = !DILocalVariable(name: "tport", scope: !4347, file: !3, line: 171, type: !4361)
!4366 = !DILocation(line: 171, column: 32, scope: !4347)
!4367 = !DILocalVariable(name: "tend", scope: !4347, file: !3, line: 171, type: !4361)
!4368 = !DILocation(line: 171, column: 40, scope: !4347)
!4369 = !DILocation(line: 173, column: 10, scope: !4347)
!4370 = !DILocation(line: 173, column: 15, scope: !4347)
!4371 = !DILocation(line: 173, column: 7, scope: !4347)
!4372 = !DILocation(line: 174, column: 9, scope: !4347)
!4373 = !DILocation(line: 174, column: 14, scope: !4347)
!4374 = !DILocation(line: 174, column: 6, scope: !4347)
!4375 = !DILocation(line: 177, column: 6, scope: !4376)
!4376 = distinct !DILexicalBlock(scope: !4347, file: !3, line: 177, column: 6)
!4377 = !DILocation(line: 177, column: 6, scope: !4347)
!4378 = !DILocation(line: 178, column: 3, scope: !4376)
!4379 = !DILocation(line: 182, column: 7, scope: !4380)
!4380 = distinct !DILexicalBlock(scope: !4347, file: !3, line: 182, column: 6)
!4381 = !DILocation(line: 182, column: 12, scope: !4380)
!4382 = !DILocation(line: 182, column: 6, scope: !4347)
!4383 = !DILocation(line: 183, column: 8, scope: !4384)
!4384 = distinct !DILexicalBlock(scope: !4385, file: !3, line: 183, column: 7)
!4385 = distinct !DILexicalBlock(scope: !4380, file: !3, line: 182, column: 20)
!4386 = !DILocation(line: 183, column: 7, scope: !4385)
!4387 = !DILocation(line: 184, column: 4, scope: !4384)
!4388 = !DILocation(line: 185, column: 3, scope: !4385)
!4389 = !DILocation(line: 186, column: 2, scope: !4385)
!4390 = !DILocation(line: 189, column: 9, scope: !4391)
!4391 = distinct !DILexicalBlock(scope: !4347, file: !3, line: 189, column: 2)
!4392 = !DILocation(line: 189, column: 7, scope: !4391)
!4393 = !DILocation(line: 189, column: 14, scope: !4394)
!4394 = distinct !DILexicalBlock(scope: !4391, file: !3, line: 189, column: 2)
!4395 = !DILocation(line: 189, column: 16, scope: !4394)
!4396 = !DILocation(line: 189, column: 2, scope: !4391)
!4397 = !DILocalVariable(name: "rport", scope: !4398, file: !3, line: 190, type: !221)
!4398 = distinct !DILexicalBlock(scope: !4394, file: !3, line: 189, column: 26)
!4399 = !DILocation(line: 190, column: 7, scope: !4398)
!4400 = !DILocation(line: 190, column: 30, scope: !4398)
!4401 = !DILocation(line: 190, column: 32, scope: !4398)
!4402 = !DILocation(line: 190, column: 15, scope: !4398)
!4403 = !DILocalVariable(name: "rend", scope: !4398, file: !3, line: 191, type: !221)
!4404 = !DILocation(line: 191, column: 7, scope: !4398)
!4405 = !DILocation(line: 191, column: 30, scope: !4398)
!4406 = !DILocation(line: 191, column: 32, scope: !4398)
!4407 = !DILocation(line: 191, column: 38, scope: !4398)
!4408 = !DILocation(line: 191, column: 14, scope: !4398)
!4409 = !DILocation(line: 191, column: 45, scope: !4398)
!4410 = !DILocation(line: 191, column: 43, scope: !4398)
!4411 = !DILocation(line: 191, column: 51, scope: !4398)
!4412 = !DILocation(line: 192, column: 7, scope: !4413)
!4413 = distinct !DILexicalBlock(scope: !4398, file: !3, line: 192, column: 7)
!4414 = !DILocation(line: 192, column: 7, scope: !4398)
!4415 = !DILocation(line: 193, column: 4, scope: !4413)
!4416 = !DILocation(line: 194, column: 2, scope: !4398)
!4417 = !DILocation(line: 189, column: 22, scope: !4394)
!4418 = !DILocation(line: 189, column: 2, scope: !4394)
!4419 = distinct !{!4419, !4396, !4420}
!4420 = !DILocation(line: 194, column: 2, scope: !4391)
!4421 = !DILocation(line: 197, column: 9, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4347, file: !3, line: 197, column: 2)
!4423 = !DILocation(line: 197, column: 7, scope: !4422)
!4424 = !DILocation(line: 197, column: 39, scope: !4425)
!4425 = distinct !DILexicalBlock(scope: !4422, file: !3, line: 197, column: 2)
!4426 = !DILocation(line: 197, column: 59, scope: !4425)
!4427 = !DILocation(line: 197, column: 22, scope: !4425)
!4428 = !DILocation(line: 197, column: 20, scope: !4425)
!4429 = !DILocation(line: 197, column: 2, scope: !4422)
!4430 = !DILocation(line: 198, column: 7, scope: !4431)
!4431 = distinct !DILexicalBlock(scope: !4432, file: !3, line: 198, column: 7)
!4432 = distinct !DILexicalBlock(scope: !4425, file: !3, line: 197, column: 69)
!4433 = !DILocation(line: 198, column: 15, scope: !4431)
!4434 = !DILocation(line: 198, column: 12, scope: !4431)
!4435 = !DILocation(line: 198, column: 19, scope: !4431)
!4436 = !DILocation(line: 198, column: 22, scope: !4431)
!4437 = !DILocation(line: 198, column: 28, scope: !4431)
!4438 = !DILocation(line: 198, column: 34, scope: !4431)
!4439 = !DILocation(line: 198, column: 7, scope: !4432)
!4440 = !DILocation(line: 199, column: 13, scope: !4441)
!4441 = distinct !DILexicalBlock(scope: !4431, file: !3, line: 198, column: 51)
!4442 = !DILocation(line: 199, column: 19, scope: !4441)
!4443 = !DILocation(line: 199, column: 10, scope: !4441)
!4444 = !DILocation(line: 200, column: 12, scope: !4441)
!4445 = !DILocation(line: 200, column: 18, scope: !4441)
!4446 = !DILocation(line: 200, column: 9, scope: !4441)
!4447 = !DILocation(line: 201, column: 8, scope: !4448)
!4448 = distinct !DILexicalBlock(scope: !4441, file: !3, line: 201, column: 8)
!4449 = !DILocation(line: 201, column: 8, scope: !4441)
!4450 = !DILocation(line: 202, column: 5, scope: !4448)
!4451 = !DILocation(line: 203, column: 3, scope: !4441)
!4452 = !DILocation(line: 204, column: 2, scope: !4432)
!4453 = !DILocation(line: 197, column: 65, scope: !4425)
!4454 = !DILocation(line: 197, column: 2, scope: !4425)
!4455 = distinct !{!4455, !4429, !4456}
!4456 = !DILocation(line: 204, column: 2, scope: !4422)
!4457 = !DILocalVariable(name: "__mptr", scope: !4458, file: !3, line: 207, type: !112)
!4458 = distinct !DILexicalBlock(scope: !4459, file: !3, line: 207, column: 2)
!4459 = distinct !DILexicalBlock(scope: !4347, file: !3, line: 207, column: 2)
!4460 = !DILocation(line: 207, column: 2, scope: !4458)
!4461 = !DILocation(line: 207, column: 2, scope: !4462)
!4462 = distinct !DILexicalBlock(scope: !4458, file: !3, line: 207, column: 2)
!4463 = !DILocation(line: 207, column: 2, scope: !4459)
!4464 = !DILocation(line: 207, column: 2, scope: !4465)
!4465 = distinct !DILexicalBlock(scope: !4459, file: !3, line: 207, column: 2)
!4466 = !DILocation(line: 208, column: 7, scope: !4467)
!4467 = distinct !DILexicalBlock(scope: !4468, file: !3, line: 208, column: 7)
!4468 = distinct !DILexicalBlock(scope: !4465, file: !3, line: 207, column: 25)
!4469 = !DILocation(line: 208, column: 15, scope: !4467)
!4470 = !DILocation(line: 208, column: 12, scope: !4467)
!4471 = !DILocation(line: 208, column: 7, scope: !4468)
!4472 = !DILocation(line: 209, column: 4, scope: !4467)
!4473 = !DILocation(line: 210, column: 10, scope: !4474)
!4474 = distinct !DILexicalBlock(scope: !4468, file: !3, line: 210, column: 3)
!4475 = !DILocation(line: 210, column: 8, scope: !4474)
!4476 = !DILocation(line: 211, column: 33, scope: !4477)
!4477 = distinct !DILexicalBlock(scope: !4474, file: !3, line: 210, column: 3)
!4478 = !DILocation(line: 211, column: 54, scope: !4477)
!4479 = !DILocation(line: 211, column: 16, scope: !4477)
!4480 = !DILocation(line: 211, column: 14, scope: !4477)
!4481 = !DILocation(line: 210, column: 3, scope: !4474)
!4482 = !DILocation(line: 213, column: 8, scope: !4483)
!4483 = distinct !DILexicalBlock(scope: !4484, file: !3, line: 213, column: 8)
!4484 = distinct !DILexicalBlock(scope: !4477, file: !3, line: 212, column: 13)
!4485 = !DILocation(line: 213, column: 14, scope: !4483)
!4486 = !DILocation(line: 213, column: 20, scope: !4483)
!4487 = !DILocation(line: 213, column: 8, scope: !4484)
!4488 = !DILocation(line: 214, column: 9, scope: !4489)
!4489 = distinct !DILexicalBlock(scope: !4490, file: !3, line: 214, column: 9)
!4490 = distinct !DILexicalBlock(scope: !4483, file: !3, line: 213, column: 37)
!4491 = !DILocation(line: 214, column: 9, scope: !4490)
!4492 = !DILocation(line: 215, column: 6, scope: !4489)
!4493 = !DILocation(line: 216, column: 9, scope: !4494)
!4494 = distinct !DILexicalBlock(scope: !4490, file: !3, line: 216, column: 9)
!4495 = !DILocation(line: 216, column: 15, scope: !4494)
!4496 = !DILocation(line: 216, column: 21, scope: !4494)
!4497 = !DILocation(line: 216, column: 9, scope: !4490)
!4498 = !DILocation(line: 217, column: 6, scope: !4494)
!4499 = !DILocation(line: 218, column: 14, scope: !4490)
!4500 = !DILocation(line: 218, column: 20, scope: !4490)
!4501 = !DILocation(line: 218, column: 11, scope: !4490)
!4502 = !DILocation(line: 219, column: 13, scope: !4490)
!4503 = !DILocation(line: 219, column: 19, scope: !4490)
!4504 = !DILocation(line: 219, column: 10, scope: !4490)
!4505 = !DILocation(line: 220, column: 9, scope: !4506)
!4506 = distinct !DILexicalBlock(scope: !4490, file: !3, line: 220, column: 9)
!4507 = !DILocation(line: 220, column: 9, scope: !4490)
!4508 = !DILocation(line: 221, column: 6, scope: !4506)
!4509 = !DILocation(line: 222, column: 4, scope: !4490)
!4510 = !DILocation(line: 223, column: 3, scope: !4484)
!4511 = !DILocation(line: 212, column: 9, scope: !4477)
!4512 = !DILocation(line: 210, column: 3, scope: !4477)
!4513 = distinct !{!4513, !4481, !4514}
!4514 = !DILocation(line: 223, column: 3, scope: !4474)
!4515 = !DILocation(line: 224, column: 2, scope: !4468)
!4516 = !DILocalVariable(name: "__mptr", scope: !4517, file: !3, line: 207, type: !112)
!4517 = distinct !DILexicalBlock(scope: !4465, file: !3, line: 207, column: 2)
!4518 = !DILocation(line: 207, column: 2, scope: !4517)
!4519 = !DILocation(line: 207, column: 2, scope: !4520)
!4520 = distinct !DILexicalBlock(scope: !4517, file: !3, line: 207, column: 2)
!4521 = distinct !{!4521, !4463, !4522}
!4522 = !DILocation(line: 224, column: 2, scope: !4459)
!4523 = !DILocation(line: 226, column: 2, scope: !4347)
!4524 = !DILocation(line: 227, column: 1, scope: !4347)
!4525 = distinct !DISubprogram(name: "pnp_get_resource", scope: !3, file: !3, line: 482, type: !4526, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !209)
!4526 = !DISubroutineType(types: !4527)
!4527 = !{!3931, !171, !126, !7}
!4528 = !DILocalVariable(name: "dev", arg: 1, scope: !4525, file: !3, line: 482, type: !171)
!4529 = !DILocation(line: 482, column: 51, scope: !4525)
!4530 = !DILocalVariable(name: "type", arg: 2, scope: !4525, file: !3, line: 483, type: !126)
!4531 = !DILocation(line: 483, column: 21, scope: !4525)
!4532 = !DILocalVariable(name: "num", arg: 3, scope: !4525, file: !3, line: 483, type: !7)
!4533 = !DILocation(line: 483, column: 40, scope: !4525)
!4534 = !DILocalVariable(name: "pnp_res", scope: !4525, file: !3, line: 485, type: !3917)
!4535 = !DILocation(line: 485, column: 23, scope: !4525)
!4536 = !DILocalVariable(name: "res", scope: !4525, file: !3, line: 486, type: !3931)
!4537 = !DILocation(line: 486, column: 19, scope: !4525)
!4538 = !DILocalVariable(name: "__mptr", scope: !4539, file: !3, line: 488, type: !112)
!4539 = distinct !DILexicalBlock(scope: !4540, file: !3, line: 488, column: 2)
!4540 = distinct !DILexicalBlock(scope: !4525, file: !3, line: 488, column: 2)
!4541 = !DILocation(line: 488, column: 2, scope: !4539)
!4542 = !DILocation(line: 488, column: 2, scope: !4543)
!4543 = distinct !DILexicalBlock(scope: !4539, file: !3, line: 488, column: 2)
!4544 = !DILocation(line: 488, column: 2, scope: !4540)
!4545 = !DILocation(line: 488, column: 2, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !4540, file: !3, line: 488, column: 2)
!4547 = !DILocation(line: 489, column: 10, scope: !4548)
!4548 = distinct !DILexicalBlock(scope: !4546, file: !3, line: 488, column: 54)
!4549 = !DILocation(line: 489, column: 19, scope: !4548)
!4550 = !DILocation(line: 489, column: 7, scope: !4548)
!4551 = !DILocation(line: 490, column: 25, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !4548, file: !3, line: 490, column: 7)
!4553 = !DILocation(line: 490, column: 7, scope: !4552)
!4554 = !DILocation(line: 490, column: 33, scope: !4552)
!4555 = !DILocation(line: 490, column: 30, scope: !4552)
!4556 = !DILocation(line: 490, column: 38, scope: !4552)
!4557 = !DILocation(line: 490, column: 44, scope: !4552)
!4558 = !DILocation(line: 490, column: 47, scope: !4552)
!4559 = !DILocation(line: 490, column: 7, scope: !4548)
!4560 = !DILocation(line: 491, column: 11, scope: !4552)
!4561 = !DILocation(line: 491, column: 4, scope: !4552)
!4562 = !DILocation(line: 492, column: 2, scope: !4548)
!4563 = !DILocalVariable(name: "__mptr", scope: !4564, file: !3, line: 488, type: !112)
!4564 = distinct !DILexicalBlock(scope: !4546, file: !3, line: 488, column: 2)
!4565 = !DILocation(line: 488, column: 2, scope: !4564)
!4566 = !DILocation(line: 488, column: 2, scope: !4567)
!4567 = distinct !DILexicalBlock(scope: !4564, file: !3, line: 488, column: 2)
!4568 = distinct !{!4568, !4544, !4569}
!4569 = !DILocation(line: 492, column: 2, scope: !4540)
!4570 = !DILocation(line: 493, column: 2, scope: !4525)
!4571 = !DILocation(line: 494, column: 1, scope: !4525)
!4572 = distinct !DISubprogram(name: "pnp_check_mem", scope: !3, file: !3, line: 229, type: !4348, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !209)
!4573 = !DILocalVariable(name: "dev", arg: 1, scope: !4572, file: !3, line: 229, type: !171)
!4574 = !DILocation(line: 229, column: 35, scope: !4572)
!4575 = !DILocalVariable(name: "res", arg: 2, scope: !4572, file: !3, line: 229, type: !3931)
!4576 = !DILocation(line: 229, column: 57, scope: !4572)
!4577 = !DILocalVariable(name: "i", scope: !4572, file: !3, line: 231, type: !221)
!4578 = !DILocation(line: 231, column: 6, scope: !4572)
!4579 = !DILocalVariable(name: "tdev", scope: !4572, file: !3, line: 232, type: !171)
!4580 = !DILocation(line: 232, column: 18, scope: !4572)
!4581 = !DILocalVariable(name: "tres", scope: !4572, file: !3, line: 233, type: !3931)
!4582 = !DILocation(line: 233, column: 19, scope: !4572)
!4583 = !DILocalVariable(name: "addr", scope: !4572, file: !3, line: 234, type: !4361)
!4584 = !DILocation(line: 234, column: 19, scope: !4572)
!4585 = !DILocalVariable(name: "end", scope: !4572, file: !3, line: 234, type: !4361)
!4586 = !DILocation(line: 234, column: 26, scope: !4572)
!4587 = !DILocalVariable(name: "taddr", scope: !4572, file: !3, line: 234, type: !4361)
!4588 = !DILocation(line: 234, column: 32, scope: !4572)
!4589 = !DILocalVariable(name: "tend", scope: !4572, file: !3, line: 234, type: !4361)
!4590 = !DILocation(line: 234, column: 40, scope: !4572)
!4591 = !DILocation(line: 236, column: 10, scope: !4572)
!4592 = !DILocation(line: 236, column: 15, scope: !4572)
!4593 = !DILocation(line: 236, column: 7, scope: !4572)
!4594 = !DILocation(line: 237, column: 9, scope: !4572)
!4595 = !DILocation(line: 237, column: 14, scope: !4572)
!4596 = !DILocation(line: 237, column: 6, scope: !4572)
!4597 = !DILocation(line: 240, column: 6, scope: !4598)
!4598 = distinct !DILexicalBlock(scope: !4572, file: !3, line: 240, column: 6)
!4599 = !DILocation(line: 240, column: 6, scope: !4572)
!4600 = !DILocation(line: 241, column: 3, scope: !4598)
!4601 = !DILocation(line: 245, column: 7, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4572, file: !3, line: 245, column: 6)
!4603 = !DILocation(line: 245, column: 12, scope: !4602)
!4604 = !DILocation(line: 245, column: 6, scope: !4572)
!4605 = !DILocation(line: 246, column: 8, scope: !4606)
!4606 = distinct !DILexicalBlock(scope: !4607, file: !3, line: 246, column: 7)
!4607 = distinct !DILexicalBlock(scope: !4602, file: !3, line: 245, column: 20)
!4608 = !DILocation(line: 246, column: 7, scope: !4607)
!4609 = !DILocation(line: 247, column: 4, scope: !4606)
!4610 = !DILocation(line: 248, column: 3, scope: !4607)
!4611 = !DILocation(line: 249, column: 2, scope: !4607)
!4612 = !DILocation(line: 252, column: 9, scope: !4613)
!4613 = distinct !DILexicalBlock(scope: !4572, file: !3, line: 252, column: 2)
!4614 = !DILocation(line: 252, column: 7, scope: !4613)
!4615 = !DILocation(line: 252, column: 14, scope: !4616)
!4616 = distinct !DILexicalBlock(scope: !4613, file: !3, line: 252, column: 2)
!4617 = !DILocation(line: 252, column: 16, scope: !4616)
!4618 = !DILocation(line: 252, column: 2, scope: !4613)
!4619 = !DILocalVariable(name: "raddr", scope: !4620, file: !3, line: 253, type: !221)
!4620 = distinct !DILexicalBlock(scope: !4616, file: !3, line: 252, column: 26)
!4621 = !DILocation(line: 253, column: 7, scope: !4620)
!4622 = !DILocation(line: 253, column: 31, scope: !4620)
!4623 = !DILocation(line: 253, column: 33, scope: !4620)
!4624 = !DILocation(line: 253, column: 15, scope: !4620)
!4625 = !DILocalVariable(name: "rend", scope: !4620, file: !3, line: 254, type: !221)
!4626 = !DILocation(line: 254, column: 7, scope: !4620)
!4627 = !DILocation(line: 254, column: 31, scope: !4620)
!4628 = !DILocation(line: 254, column: 33, scope: !4620)
!4629 = !DILocation(line: 254, column: 39, scope: !4620)
!4630 = !DILocation(line: 254, column: 14, scope: !4620)
!4631 = !DILocation(line: 254, column: 46, scope: !4620)
!4632 = !DILocation(line: 254, column: 44, scope: !4620)
!4633 = !DILocation(line: 254, column: 52, scope: !4620)
!4634 = !DILocation(line: 255, column: 7, scope: !4635)
!4635 = distinct !DILexicalBlock(scope: !4620, file: !3, line: 255, column: 7)
!4636 = !DILocation(line: 255, column: 7, scope: !4620)
!4637 = !DILocation(line: 256, column: 4, scope: !4635)
!4638 = !DILocation(line: 257, column: 2, scope: !4620)
!4639 = !DILocation(line: 252, column: 22, scope: !4616)
!4640 = !DILocation(line: 252, column: 2, scope: !4616)
!4641 = distinct !{!4641, !4618, !4642}
!4642 = !DILocation(line: 257, column: 2, scope: !4613)
!4643 = !DILocation(line: 260, column: 9, scope: !4644)
!4644 = distinct !DILexicalBlock(scope: !4572, file: !3, line: 260, column: 2)
!4645 = !DILocation(line: 260, column: 7, scope: !4644)
!4646 = !DILocation(line: 260, column: 39, scope: !4647)
!4647 = distinct !DILexicalBlock(scope: !4644, file: !3, line: 260, column: 2)
!4648 = !DILocation(line: 260, column: 60, scope: !4647)
!4649 = !DILocation(line: 260, column: 22, scope: !4647)
!4650 = !DILocation(line: 260, column: 20, scope: !4647)
!4651 = !DILocation(line: 260, column: 2, scope: !4644)
!4652 = !DILocation(line: 261, column: 7, scope: !4653)
!4653 = distinct !DILexicalBlock(scope: !4654, file: !3, line: 261, column: 7)
!4654 = distinct !DILexicalBlock(scope: !4647, file: !3, line: 260, column: 70)
!4655 = !DILocation(line: 261, column: 15, scope: !4653)
!4656 = !DILocation(line: 261, column: 12, scope: !4653)
!4657 = !DILocation(line: 261, column: 19, scope: !4653)
!4658 = !DILocation(line: 261, column: 22, scope: !4653)
!4659 = !DILocation(line: 261, column: 28, scope: !4653)
!4660 = !DILocation(line: 261, column: 34, scope: !4653)
!4661 = !DILocation(line: 261, column: 7, scope: !4654)
!4662 = !DILocation(line: 262, column: 13, scope: !4663)
!4663 = distinct !DILexicalBlock(scope: !4653, file: !3, line: 261, column: 52)
!4664 = !DILocation(line: 262, column: 19, scope: !4663)
!4665 = !DILocation(line: 262, column: 10, scope: !4663)
!4666 = !DILocation(line: 263, column: 12, scope: !4663)
!4667 = !DILocation(line: 263, column: 18, scope: !4663)
!4668 = !DILocation(line: 263, column: 9, scope: !4663)
!4669 = !DILocation(line: 264, column: 8, scope: !4670)
!4670 = distinct !DILexicalBlock(scope: !4663, file: !3, line: 264, column: 8)
!4671 = !DILocation(line: 264, column: 8, scope: !4663)
!4672 = !DILocation(line: 265, column: 5, scope: !4670)
!4673 = !DILocation(line: 266, column: 3, scope: !4663)
!4674 = !DILocation(line: 267, column: 2, scope: !4654)
!4675 = !DILocation(line: 260, column: 66, scope: !4647)
!4676 = !DILocation(line: 260, column: 2, scope: !4647)
!4677 = distinct !{!4677, !4651, !4678}
!4678 = !DILocation(line: 267, column: 2, scope: !4644)
!4679 = !DILocalVariable(name: "__mptr", scope: !4680, file: !3, line: 270, type: !112)
!4680 = distinct !DILexicalBlock(scope: !4681, file: !3, line: 270, column: 2)
!4681 = distinct !DILexicalBlock(scope: !4572, file: !3, line: 270, column: 2)
!4682 = !DILocation(line: 270, column: 2, scope: !4680)
!4683 = !DILocation(line: 270, column: 2, scope: !4684)
!4684 = distinct !DILexicalBlock(scope: !4680, file: !3, line: 270, column: 2)
!4685 = !DILocation(line: 270, column: 2, scope: !4681)
!4686 = !DILocation(line: 270, column: 2, scope: !4687)
!4687 = distinct !DILexicalBlock(scope: !4681, file: !3, line: 270, column: 2)
!4688 = !DILocation(line: 271, column: 7, scope: !4689)
!4689 = distinct !DILexicalBlock(scope: !4690, file: !3, line: 271, column: 7)
!4690 = distinct !DILexicalBlock(scope: !4687, file: !3, line: 270, column: 25)
!4691 = !DILocation(line: 271, column: 15, scope: !4689)
!4692 = !DILocation(line: 271, column: 12, scope: !4689)
!4693 = !DILocation(line: 271, column: 7, scope: !4690)
!4694 = !DILocation(line: 272, column: 4, scope: !4689)
!4695 = !DILocation(line: 273, column: 10, scope: !4696)
!4696 = distinct !DILexicalBlock(scope: !4690, file: !3, line: 273, column: 3)
!4697 = !DILocation(line: 273, column: 8, scope: !4696)
!4698 = !DILocation(line: 274, column: 33, scope: !4699)
!4699 = distinct !DILexicalBlock(scope: !4696, file: !3, line: 273, column: 3)
!4700 = !DILocation(line: 274, column: 55, scope: !4699)
!4701 = !DILocation(line: 274, column: 16, scope: !4699)
!4702 = !DILocation(line: 274, column: 14, scope: !4699)
!4703 = !DILocation(line: 273, column: 3, scope: !4696)
!4704 = !DILocation(line: 276, column: 8, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !4706, file: !3, line: 276, column: 8)
!4706 = distinct !DILexicalBlock(scope: !4699, file: !3, line: 275, column: 13)
!4707 = !DILocation(line: 276, column: 14, scope: !4705)
!4708 = !DILocation(line: 276, column: 20, scope: !4705)
!4709 = !DILocation(line: 276, column: 8, scope: !4706)
!4710 = !DILocation(line: 277, column: 9, scope: !4711)
!4711 = distinct !DILexicalBlock(scope: !4712, file: !3, line: 277, column: 9)
!4712 = distinct !DILexicalBlock(scope: !4705, file: !3, line: 276, column: 38)
!4713 = !DILocation(line: 277, column: 9, scope: !4712)
!4714 = !DILocation(line: 278, column: 6, scope: !4711)
!4715 = !DILocation(line: 279, column: 9, scope: !4716)
!4716 = distinct !DILexicalBlock(scope: !4712, file: !3, line: 279, column: 9)
!4717 = !DILocation(line: 279, column: 15, scope: !4716)
!4718 = !DILocation(line: 279, column: 21, scope: !4716)
!4719 = !DILocation(line: 279, column: 9, scope: !4712)
!4720 = !DILocation(line: 280, column: 6, scope: !4716)
!4721 = !DILocation(line: 281, column: 14, scope: !4712)
!4722 = !DILocation(line: 281, column: 20, scope: !4712)
!4723 = !DILocation(line: 281, column: 11, scope: !4712)
!4724 = !DILocation(line: 282, column: 13, scope: !4712)
!4725 = !DILocation(line: 282, column: 19, scope: !4712)
!4726 = !DILocation(line: 282, column: 10, scope: !4712)
!4727 = !DILocation(line: 283, column: 9, scope: !4728)
!4728 = distinct !DILexicalBlock(scope: !4712, file: !3, line: 283, column: 9)
!4729 = !DILocation(line: 283, column: 9, scope: !4712)
!4730 = !DILocation(line: 284, column: 6, scope: !4728)
!4731 = !DILocation(line: 285, column: 4, scope: !4712)
!4732 = !DILocation(line: 286, column: 3, scope: !4706)
!4733 = !DILocation(line: 275, column: 9, scope: !4699)
!4734 = !DILocation(line: 273, column: 3, scope: !4699)
!4735 = distinct !{!4735, !4703, !4736}
!4736 = !DILocation(line: 286, column: 3, scope: !4696)
!4737 = !DILocation(line: 287, column: 2, scope: !4690)
!4738 = !DILocalVariable(name: "__mptr", scope: !4739, file: !3, line: 270, type: !112)
!4739 = distinct !DILexicalBlock(scope: !4687, file: !3, line: 270, column: 2)
!4740 = !DILocation(line: 270, column: 2, scope: !4739)
!4741 = !DILocation(line: 270, column: 2, scope: !4742)
!4742 = distinct !DILexicalBlock(scope: !4739, file: !3, line: 270, column: 2)
!4743 = distinct !{!4743, !4685, !4744}
!4744 = !DILocation(line: 287, column: 2, scope: !4681)
!4745 = !DILocation(line: 289, column: 2, scope: !4572)
!4746 = !DILocation(line: 290, column: 1, scope: !4572)
!4747 = distinct !DISubprogram(name: "pnp_check_irq", scope: !3, file: !3, line: 352, type: !4348, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !209)
!4748 = !DILocalVariable(name: "dev", arg: 1, scope: !4747, file: !3, line: 352, type: !171)
!4749 = !DILocation(line: 352, column: 35, scope: !4747)
!4750 = !DILocalVariable(name: "res", arg: 2, scope: !4747, file: !3, line: 352, type: !3931)
!4751 = !DILocation(line: 352, column: 57, scope: !4747)
!4752 = !DILocalVariable(name: "i", scope: !4747, file: !3, line: 354, type: !221)
!4753 = !DILocation(line: 354, column: 6, scope: !4747)
!4754 = !DILocalVariable(name: "tdev", scope: !4747, file: !3, line: 355, type: !171)
!4755 = !DILocation(line: 355, column: 18, scope: !4747)
!4756 = !DILocalVariable(name: "tres", scope: !4747, file: !3, line: 356, type: !3931)
!4757 = !DILocation(line: 356, column: 19, scope: !4747)
!4758 = !DILocalVariable(name: "irq", scope: !4747, file: !3, line: 357, type: !4361)
!4759 = !DILocation(line: 357, column: 19, scope: !4747)
!4760 = !DILocation(line: 359, column: 9, scope: !4747)
!4761 = !DILocation(line: 359, column: 14, scope: !4747)
!4762 = !DILocation(line: 359, column: 6, scope: !4747)
!4763 = !DILocation(line: 362, column: 6, scope: !4764)
!4764 = distinct !DILexicalBlock(scope: !4747, file: !3, line: 362, column: 6)
!4765 = !DILocation(line: 362, column: 6, scope: !4747)
!4766 = !DILocation(line: 363, column: 3, scope: !4764)
!4767 = !DILocation(line: 366, column: 7, scope: !4768)
!4768 = distinct !DILexicalBlock(scope: !4747, file: !3, line: 366, column: 6)
!4769 = !DILocation(line: 366, column: 6, scope: !4768)
!4770 = !DILocation(line: 366, column: 11, scope: !4768)
!4771 = !DILocation(line: 366, column: 6, scope: !4747)
!4772 = !DILocation(line: 367, column: 3, scope: !4768)
!4773 = !DILocation(line: 370, column: 9, scope: !4774)
!4774 = distinct !DILexicalBlock(scope: !4747, file: !3, line: 370, column: 2)
!4775 = !DILocation(line: 370, column: 7, scope: !4774)
!4776 = !DILocation(line: 370, column: 14, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4774, file: !3, line: 370, column: 2)
!4778 = !DILocation(line: 370, column: 16, scope: !4777)
!4779 = !DILocation(line: 370, column: 2, scope: !4774)
!4780 = !DILocation(line: 371, column: 23, scope: !4781)
!4781 = distinct !DILexicalBlock(scope: !4782, file: !3, line: 371, column: 7)
!4782 = distinct !DILexicalBlock(scope: !4777, file: !3, line: 370, column: 27)
!4783 = !DILocation(line: 371, column: 7, scope: !4781)
!4784 = !DILocation(line: 371, column: 30, scope: !4781)
!4785 = !DILocation(line: 371, column: 29, scope: !4781)
!4786 = !DILocation(line: 371, column: 26, scope: !4781)
!4787 = !DILocation(line: 371, column: 7, scope: !4782)
!4788 = !DILocation(line: 372, column: 4, scope: !4781)
!4789 = !DILocation(line: 373, column: 2, scope: !4782)
!4790 = !DILocation(line: 370, column: 23, scope: !4777)
!4791 = !DILocation(line: 370, column: 2, scope: !4777)
!4792 = distinct !{!4792, !4779, !4793}
!4793 = !DILocation(line: 373, column: 2, scope: !4774)
!4794 = !DILocation(line: 376, column: 9, scope: !4795)
!4795 = distinct !DILexicalBlock(scope: !4747, file: !3, line: 376, column: 2)
!4796 = !DILocation(line: 376, column: 7, scope: !4795)
!4797 = !DILocation(line: 376, column: 39, scope: !4798)
!4798 = distinct !DILexicalBlock(scope: !4795, file: !3, line: 376, column: 2)
!4799 = !DILocation(line: 376, column: 60, scope: !4798)
!4800 = !DILocation(line: 376, column: 22, scope: !4798)
!4801 = !DILocation(line: 376, column: 20, scope: !4798)
!4802 = !DILocation(line: 376, column: 2, scope: !4795)
!4803 = !DILocation(line: 377, column: 7, scope: !4804)
!4804 = distinct !DILexicalBlock(scope: !4805, file: !3, line: 377, column: 7)
!4805 = distinct !DILexicalBlock(scope: !4798, file: !3, line: 376, column: 70)
!4806 = !DILocation(line: 377, column: 15, scope: !4804)
!4807 = !DILocation(line: 377, column: 12, scope: !4804)
!4808 = !DILocation(line: 377, column: 19, scope: !4804)
!4809 = !DILocation(line: 377, column: 22, scope: !4804)
!4810 = !DILocation(line: 377, column: 28, scope: !4804)
!4811 = !DILocation(line: 377, column: 34, scope: !4804)
!4812 = !DILocation(line: 377, column: 7, scope: !4805)
!4813 = !DILocation(line: 378, column: 8, scope: !4814)
!4814 = distinct !DILexicalBlock(scope: !4815, file: !3, line: 378, column: 8)
!4815 = distinct !DILexicalBlock(scope: !4804, file: !3, line: 377, column: 52)
!4816 = !DILocation(line: 378, column: 14, scope: !4814)
!4817 = !DILocation(line: 378, column: 24, scope: !4814)
!4818 = !DILocation(line: 378, column: 23, scope: !4814)
!4819 = !DILocation(line: 378, column: 20, scope: !4814)
!4820 = !DILocation(line: 378, column: 8, scope: !4815)
!4821 = !DILocation(line: 379, column: 5, scope: !4814)
!4822 = !DILocation(line: 380, column: 3, scope: !4815)
!4823 = !DILocation(line: 381, column: 2, scope: !4805)
!4824 = !DILocation(line: 376, column: 66, scope: !4798)
!4825 = !DILocation(line: 376, column: 2, scope: !4798)
!4826 = distinct !{!4826, !4802, !4827}
!4827 = !DILocation(line: 381, column: 2, scope: !4795)
!4828 = !DILocation(line: 384, column: 19, scope: !4829)
!4829 = distinct !DILexicalBlock(scope: !4747, file: !3, line: 384, column: 6)
!4830 = !DILocation(line: 384, column: 25, scope: !4829)
!4831 = !DILocation(line: 384, column: 24, scope: !4829)
!4832 = !DILocation(line: 384, column: 6, scope: !4829)
!4833 = !DILocation(line: 384, column: 6, scope: !4747)
!4834 = !DILocation(line: 385, column: 3, scope: !4829)
!4835 = !DILocation(line: 389, column: 7, scope: !4836)
!4836 = distinct !DILexicalBlock(scope: !4747, file: !3, line: 389, column: 6)
!4837 = !DILocation(line: 389, column: 12, scope: !4836)
!4838 = !DILocation(line: 389, column: 6, scope: !4747)
!4839 = !DILocation(line: 390, column: 20, scope: !4840)
!4840 = distinct !DILexicalBlock(scope: !4841, file: !3, line: 390, column: 7)
!4841 = distinct !DILexicalBlock(scope: !4836, file: !3, line: 389, column: 20)
!4842 = !DILocation(line: 390, column: 19, scope: !4840)
!4843 = !DILocation(line: 390, column: 7, scope: !4840)
!4844 = !DILocation(line: 390, column: 7, scope: !4841)
!4845 = !DILocation(line: 392, column: 4, scope: !4840)
!4846 = !DILocation(line: 393, column: 13, scope: !4841)
!4847 = !DILocation(line: 393, column: 12, scope: !4841)
!4848 = !DILocation(line: 393, column: 3, scope: !4841)
!4849 = !DILocation(line: 394, column: 2, scope: !4841)
!4850 = !DILocalVariable(name: "__mptr", scope: !4851, file: !3, line: 397, type: !112)
!4851 = distinct !DILexicalBlock(scope: !4852, file: !3, line: 397, column: 2)
!4852 = distinct !DILexicalBlock(scope: !4747, file: !3, line: 397, column: 2)
!4853 = !DILocation(line: 397, column: 2, scope: !4851)
!4854 = !DILocation(line: 397, column: 2, scope: !4855)
!4855 = distinct !DILexicalBlock(scope: !4851, file: !3, line: 397, column: 2)
!4856 = !DILocation(line: 397, column: 2, scope: !4852)
!4857 = !DILocation(line: 397, column: 2, scope: !4858)
!4858 = distinct !DILexicalBlock(scope: !4852, file: !3, line: 397, column: 2)
!4859 = !DILocation(line: 398, column: 7, scope: !4860)
!4860 = distinct !DILexicalBlock(scope: !4861, file: !3, line: 398, column: 7)
!4861 = distinct !DILexicalBlock(scope: !4858, file: !3, line: 397, column: 25)
!4862 = !DILocation(line: 398, column: 15, scope: !4860)
!4863 = !DILocation(line: 398, column: 12, scope: !4860)
!4864 = !DILocation(line: 398, column: 7, scope: !4861)
!4865 = !DILocation(line: 399, column: 4, scope: !4860)
!4866 = !DILocation(line: 400, column: 10, scope: !4867)
!4867 = distinct !DILexicalBlock(scope: !4861, file: !3, line: 400, column: 3)
!4868 = !DILocation(line: 400, column: 8, scope: !4867)
!4869 = !DILocation(line: 401, column: 33, scope: !4870)
!4870 = distinct !DILexicalBlock(scope: !4867, file: !3, line: 400, column: 3)
!4871 = !DILocation(line: 401, column: 55, scope: !4870)
!4872 = !DILocation(line: 401, column: 16, scope: !4870)
!4873 = !DILocation(line: 401, column: 14, scope: !4870)
!4874 = !DILocation(line: 400, column: 3, scope: !4867)
!4875 = !DILocation(line: 403, column: 8, scope: !4876)
!4876 = distinct !DILexicalBlock(scope: !4877, file: !3, line: 403, column: 8)
!4877 = distinct !DILexicalBlock(scope: !4870, file: !3, line: 402, column: 13)
!4878 = !DILocation(line: 403, column: 14, scope: !4876)
!4879 = !DILocation(line: 403, column: 20, scope: !4876)
!4880 = !DILocation(line: 403, column: 8, scope: !4877)
!4881 = !DILocation(line: 404, column: 9, scope: !4882)
!4882 = distinct !DILexicalBlock(scope: !4883, file: !3, line: 404, column: 9)
!4883 = distinct !DILexicalBlock(scope: !4876, file: !3, line: 403, column: 38)
!4884 = !DILocation(line: 404, column: 9, scope: !4883)
!4885 = !DILocation(line: 405, column: 6, scope: !4882)
!4886 = !DILocation(line: 406, column: 9, scope: !4887)
!4887 = distinct !DILexicalBlock(scope: !4883, file: !3, line: 406, column: 9)
!4888 = !DILocation(line: 406, column: 15, scope: !4887)
!4889 = !DILocation(line: 406, column: 25, scope: !4887)
!4890 = !DILocation(line: 406, column: 24, scope: !4887)
!4891 = !DILocation(line: 406, column: 21, scope: !4887)
!4892 = !DILocation(line: 406, column: 9, scope: !4883)
!4893 = !DILocation(line: 407, column: 6, scope: !4887)
!4894 = !DILocation(line: 408, column: 4, scope: !4883)
!4895 = !DILocation(line: 409, column: 3, scope: !4877)
!4896 = !DILocation(line: 402, column: 9, scope: !4870)
!4897 = !DILocation(line: 400, column: 3, scope: !4870)
!4898 = distinct !{!4898, !4874, !4899}
!4899 = !DILocation(line: 409, column: 3, scope: !4867)
!4900 = !DILocation(line: 410, column: 2, scope: !4861)
!4901 = !DILocalVariable(name: "__mptr", scope: !4902, file: !3, line: 397, type: !112)
!4902 = distinct !DILexicalBlock(scope: !4858, file: !3, line: 397, column: 2)
!4903 = !DILocation(line: 397, column: 2, scope: !4902)
!4904 = !DILocation(line: 397, column: 2, scope: !4905)
!4905 = distinct !DILexicalBlock(scope: !4902, file: !3, line: 397, column: 2)
!4906 = distinct !{!4906, !4856, !4907}
!4907 = !DILocation(line: 410, column: 2, scope: !4852)
!4908 = !DILocation(line: 412, column: 2, scope: !4747)
!4909 = !DILocation(line: 413, column: 1, scope: !4747)
!4910 = distinct !DISubprogram(name: "pci_uses_irq", scope: !3, file: !3, line: 337, type: !4911, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!4911 = !DISubroutineType(types: !4912)
!4912 = !{!221, !171, !7}
!4913 = !DILocalVariable(name: "pnp", arg: 1, scope: !4910, file: !3, line: 337, type: !171)
!4914 = !DILocation(line: 337, column: 41, scope: !4910)
!4915 = !DILocalVariable(name: "irq", arg: 2, scope: !4910, file: !3, line: 337, type: !7)
!4916 = !DILocation(line: 337, column: 59, scope: !4910)
!4917 = !DILocalVariable(name: "pci", scope: !4910, file: !3, line: 340, type: !4918)
!4918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4919, size: 64)
!4919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !4920, line: 309, size: 19264, elements: !4921)
!4920 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!4921 = !{!4922, !4923, !4982, !4983, !4984, !4985, !4996, !4997, !4998, !4999, !5000, !5001, !5002, !5003, !5004, !5005, !5006, !5007, !5008, !5009, !5010, !5011, !5012, !5077, !5078, !5079, !5081, !5082, !5083, !5084, !5085, !5086, !5087, !5088, !5089, !5090, !5091, !5092, !5093, !5094, !5095, !5096, !5097, !5098, !5099, !5100, !5103, !5104, !5105, !5106, !5107, !5108, !5109, !5110, !5112, !5113, !5114, !5115, !5116, !5117, !5118, !5119, !5120, !5121, !5122, !5123, !5124, !5125, !5126, !5127, !5128, !5129, !5130, !5131, !5132, !5133, !5134, !5135, !5136, !5137, !5138, !5139, !5140, !5141, !5142, !5143, !5144, !5145, !5146, !5147, !5148, !5149, !5151, !5152, !5154, !5155, !5156, !5157, !5159, !5160, !5161, !5164, !5171, !5172, !5173, !5174, !5175, !5176, !5177}
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !4919, file: !4920, line: 310, baseType: !118, size: 128)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4919, file: !4920, line: 311, baseType: !4924, size: 64, offset: 128)
!4924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4925, size: 64)
!4925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !4920, line: 605, size: 8064, elements: !4926)
!4926 = !{!4927, !4928, !4929, !4930, !4931, !4932, !4933, !4935, !4936, !4937, !4961, !4964, !4965, !4966, !4967, !4968, !4969, !4970, !4974, !4975, !4977, !4978, !4979, !4980, !4981}
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4925, file: !4920, line: 606, baseType: !118, size: 128)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4925, file: !4920, line: 607, baseType: !4924, size: 64, offset: 128)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4925, file: !4920, line: 608, baseType: !118, size: 128, offset: 192)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4925, file: !4920, line: 609, baseType: !118, size: 128, offset: 320)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4925, file: !4920, line: 610, baseType: !4918, size: 64, offset: 448)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !4925, file: !4920, line: 611, baseType: !118, size: 128, offset: 512)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4925, file: !4920, line: 613, baseType: !4934, size: 256, offset: 640)
!4934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3931, size: 256, elements: !155)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4925, file: !4920, line: 614, baseType: !118, size: 128, offset: 896)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !4925, file: !4920, line: 615, baseType: !3922, size: 512, offset: 1024)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4925, file: !4920, line: 617, baseType: !4938, size: 64, offset: 1536)
!4938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4939, size: 64)
!4939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !4920, line: 731, size: 320, elements: !4940)
!4940 = !{!4941, !4945, !4949, !4953, !4957}
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !4939, file: !4920, line: 732, baseType: !4942, size: 64)
!4942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4943, size: 64)
!4943 = !DISubroutineType(types: !4944)
!4944 = !{!221, !4924}
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !4939, file: !4920, line: 733, baseType: !4946, size: 64, offset: 64)
!4946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4947, size: 64)
!4947 = !DISubroutineType(types: !4948)
!4948 = !{null, !4924}
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !4939, file: !4920, line: 734, baseType: !4950, size: 64, offset: 128)
!4950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4951, size: 64)
!4951 = !DISubroutineType(types: !4952)
!4952 = !{!112, !4924, !7, !221}
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4939, file: !4920, line: 735, baseType: !4954, size: 64, offset: 192)
!4954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4955, size: 64)
!4955 = !DISubroutineType(types: !4956)
!4956 = !{!221, !4924, !7, !221, !221, !1373}
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4939, file: !4920, line: 736, baseType: !4958, size: 64, offset: 256)
!4958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4959, size: 64)
!4959 = !DISubroutineType(types: !4960)
!4960 = !{!221, !4924, !7, !221, !221, !377}
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4925, file: !4920, line: 618, baseType: !4962, size: 64, offset: 1600)
!4962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4963, size: 64)
!4963 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !4920, line: 537, flags: DIFlagFwdDecl)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4925, file: !4920, line: 619, baseType: !112, size: 64, offset: 1664)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !4925, file: !4920, line: 620, baseType: !3835, size: 64, offset: 1728)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4925, file: !4920, line: 622, baseType: !145, size: 8, offset: 1792)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4925, file: !4920, line: 623, baseType: !145, size: 8, offset: 1800)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !4925, file: !4920, line: 624, baseType: !145, size: 8, offset: 1808)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !4925, file: !4920, line: 625, baseType: !145, size: 8, offset: 1816)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4925, file: !4920, line: 630, baseType: !4971, size: 384, offset: 1824)
!4971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 384, elements: !4972)
!4972 = !{!4973}
!4973 = !DISubrange(count: 48)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !4925, file: !4920, line: 632, baseType: !279, size: 16, offset: 2208)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !4925, file: !4920, line: 633, baseType: !4976, size: 16, offset: 2224)
!4976 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !4920, line: 237, baseType: !279)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !4925, file: !4920, line: 634, baseType: !3332, size: 64, offset: 2240)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4925, file: !4920, line: 635, baseType: !176, size: 5568, offset: 2304)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !4925, file: !4920, line: 636, baseType: !304, size: 64, offset: 7872)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !4925, file: !4920, line: 637, baseType: !304, size: 64, offset: 7936)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !4925, file: !4920, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !4919, file: !4920, line: 312, baseType: !4924, size: 64, offset: 192)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4919, file: !4920, line: 314, baseType: !112, size: 64, offset: 256)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !4919, file: !4920, line: 315, baseType: !3835, size: 64, offset: 320)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4919, file: !4920, line: 316, baseType: !4986, size: 64, offset: 384)
!4986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4987, size: 64)
!4987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !4920, line: 69, size: 832, elements: !4988)
!4988 = !{!4989, !4990, !4991, !4994, !4995}
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4987, file: !4920, line: 70, baseType: !4924, size: 64)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4987, file: !4920, line: 71, baseType: !118, size: 128, offset: 64)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4987, file: !4920, line: 72, baseType: !4992, size: 64, offset: 192)
!4992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4993, size: 64)
!4993 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !4920, line: 72, flags: DIFlagFwdDecl)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4987, file: !4920, line: 73, baseType: !145, size: 8, offset: 256)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4987, file: !4920, line: 74, baseType: !179, size: 512, offset: 320)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !4919, file: !4920, line: 318, baseType: !7, size: 32, offset: 448)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4919, file: !4920, line: 319, baseType: !279, size: 16, offset: 480)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4919, file: !4920, line: 320, baseType: !279, size: 16, offset: 496)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4919, file: !4920, line: 321, baseType: !279, size: 16, offset: 512)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4919, file: !4920, line: 322, baseType: !279, size: 16, offset: 528)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4919, file: !4920, line: 323, baseType: !7, size: 32, offset: 544)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4919, file: !4920, line: 324, baseType: !1310, size: 8, offset: 576)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4919, file: !4920, line: 325, baseType: !1310, size: 8, offset: 584)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !4919, file: !4920, line: 330, baseType: !1310, size: 8, offset: 592)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !4919, file: !4920, line: 331, baseType: !1310, size: 8, offset: 600)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !4919, file: !4920, line: 332, baseType: !1310, size: 8, offset: 608)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !4919, file: !4920, line: 333, baseType: !1310, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !4919, file: !4920, line: 334, baseType: !1310, size: 8, offset: 624)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4919, file: !4920, line: 335, baseType: !1310, size: 8, offset: 632)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !4919, file: !4920, line: 336, baseType: !819, size: 16, offset: 640)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !4919, file: !4920, line: 337, baseType: !3936, size: 64, offset: 704)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4919, file: !4920, line: 339, baseType: !5013, size: 64, offset: 768)
!5013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5014, size: 64)
!5014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !4920, line: 858, size: 2048, elements: !5015)
!5015 = !{!5016, !5017, !5018, !5030, !5034, !5038, !5042, !5046, !5047, !5051, !5070, !5071, !5072}
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5014, file: !4920, line: 859, baseType: !118, size: 128)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5014, file: !4920, line: 860, baseType: !183, size: 64, offset: 128)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !5014, file: !4920, line: 861, baseType: !5019, size: 64, offset: 192)
!5019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5020, size: 64)
!5020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5021)
!5021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3416, line: 38, size: 256, elements: !5022)
!5022 = !{!5023, !5024, !5025, !5026, !5027, !5028, !5029}
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !5021, file: !3416, line: 39, baseType: !378, size: 32)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !5021, file: !3416, line: 39, baseType: !378, size: 32, offset: 32)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !5021, file: !3416, line: 40, baseType: !378, size: 32, offset: 64)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !5021, file: !3416, line: 40, baseType: !378, size: 32, offset: 96)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !5021, file: !3416, line: 41, baseType: !378, size: 32, offset: 128)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !5021, file: !3416, line: 41, baseType: !378, size: 32, offset: 160)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !5021, file: !3416, line: 42, baseType: !3435, size: 64, offset: 192)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !5014, file: !4920, line: 862, baseType: !5031, size: 64, offset: 256)
!5031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5032, size: 64)
!5032 = !DISubroutineType(types: !5033)
!5033 = !{!221, !4918, !5019}
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !5014, file: !4920, line: 863, baseType: !5035, size: 64, offset: 320)
!5035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5036, size: 64)
!5036 = !DISubroutineType(types: !5037)
!5037 = !{null, !4918}
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !5014, file: !4920, line: 864, baseType: !5039, size: 64, offset: 384)
!5039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5040, size: 64)
!5040 = !DISubroutineType(types: !5041)
!5041 = !{!221, !4918, !3446}
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5014, file: !4920, line: 865, baseType: !5043, size: 64, offset: 448)
!5043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5044, size: 64)
!5044 = !DISubroutineType(types: !5045)
!5045 = !{!221, !4918}
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !5014, file: !4920, line: 866, baseType: !5035, size: 64, offset: 512)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !5014, file: !4920, line: 867, baseType: !5048, size: 64, offset: 576)
!5048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5049, size: 64)
!5049 = !DISubroutineType(types: !5050)
!5050 = !{!221, !4918, !221}
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !5014, file: !4920, line: 868, baseType: !5052, size: 64, offset: 640)
!5052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5053, size: 64)
!5053 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5054)
!5054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !4920, line: 795, size: 384, elements: !5055)
!5055 = !{!5056, !5062, !5066, !5067, !5068, !5069}
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !5054, file: !4920, line: 797, baseType: !5057, size: 64)
!5057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5058, size: 64)
!5058 = !DISubroutineType(types: !5059)
!5059 = !{!5060, !4918, !5061}
!5060 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !4920, line: 772, baseType: !7)
!5061 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !4920, line: 180, baseType: !7)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !5054, file: !4920, line: 801, baseType: !5063, size: 64, offset: 64)
!5063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5064, size: 64)
!5064 = !DISubroutineType(types: !5065)
!5065 = !{!5060, !4918}
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !5054, file: !4920, line: 804, baseType: !5063, size: 64, offset: 128)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !5054, file: !4920, line: 807, baseType: !5035, size: 64, offset: 192)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !5054, file: !4920, line: 808, baseType: !5035, size: 64, offset: 256)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5054, file: !4920, line: 811, baseType: !5035, size: 64, offset: 320)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !5014, file: !4920, line: 869, baseType: !290, size: 64, offset: 704)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !5014, file: !4920, line: 870, baseType: !3404, size: 1152, offset: 768)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !5014, file: !4920, line: 871, baseType: !5073, size: 128, offset: 1920)
!5073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !4920, line: 759, size: 128, elements: !5074)
!5074 = !{!5075, !5076}
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5073, file: !4920, line: 760, baseType: !195)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5073, file: !4920, line: 761, baseType: !118, size: 128)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4919, file: !4920, line: 340, baseType: !136, size: 64, offset: 832)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4919, file: !4920, line: 346, baseType: !3628, size: 128, offset: 896)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !4919, file: !4920, line: 348, baseType: !5080, size: 32, offset: 1024)
!5080 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !4920, line: 155, baseType: !221)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !4919, file: !4920, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !4919, file: !4920, line: 352, baseType: !1310, size: 8, offset: 1064)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !4919, file: !4920, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !4919, file: !4920, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !4919, file: !4920, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !4919, file: !4920, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !4919, file: !4920, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !4919, file: !4920, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !4919, file: !4920, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !4919, file: !4920, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !4919, file: !4920, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !4919, file: !4920, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !4919, file: !4920, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !4919, file: !4920, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !4919, file: !4920, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !4919, file: !4920, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !4919, file: !4920, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !4919, file: !4920, line: 376, baseType: !7, size: 32, offset: 1120)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !4919, file: !4920, line: 377, baseType: !7, size: 32, offset: 1152)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !4919, file: !4920, line: 380, baseType: !5101, size: 64, offset: 1216)
!5101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5102, size: 64)
!5102 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !4920, line: 303, flags: DIFlagFwdDecl)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !4919, file: !4920, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !4919, file: !4920, line: 383, baseType: !221, size: 32, offset: 1312)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !4919, file: !4920, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !4919, file: !4920, line: 387, baseType: !5061, size: 32, offset: 1376)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4919, file: !4920, line: 388, baseType: !176, size: 5568, offset: 1408)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !4919, file: !4920, line: 390, baseType: !221, size: 32, offset: 6976)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4919, file: !4920, line: 396, baseType: !7, size: 32, offset: 7008)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4919, file: !4920, line: 397, baseType: !5111, size: 8704, offset: 7040)
!5111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3922, size: 8704, elements: !3966)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4919, file: !4920, line: 399, baseType: !446, size: 8, offset: 15744)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !4919, file: !4920, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !4919, file: !4920, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !4919, file: !4920, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !4919, file: !4920, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !4919, file: !4920, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !4919, file: !4920, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !4919, file: !4920, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !4919, file: !4920, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !4919, file: !4920, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !4919, file: !4920, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !4919, file: !4920, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !4919, file: !4920, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !4919, file: !4920, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !4919, file: !4920, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !4919, file: !4920, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !4919, file: !4920, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !4919, file: !4920, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !4919, file: !4920, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !4919, file: !4920, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !4919, file: !4920, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !4919, file: !4920, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !4919, file: !4920, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !4919, file: !4920, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !4919, file: !4920, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !4919, file: !4920, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !4919, file: !4920, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !4919, file: !4920, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !4919, file: !4920, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !4919, file: !4920, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !4919, file: !4920, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !4919, file: !4920, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !4919, file: !4920, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !4919, file: !4920, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !4919, file: !4920, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !4919, file: !4920, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !4919, file: !4920, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !4919, file: !4920, line: 450, baseType: !5150, size: 16, offset: 15792)
!5150 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !4920, line: 206, baseType: !279)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !4919, file: !4920, line: 451, baseType: !707, size: 32, offset: 15808)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !4919, file: !4920, line: 453, baseType: !5153, size: 512, offset: 15840)
!5153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 512, elements: !1693)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !4919, file: !4920, line: 454, baseType: !594, size: 64, offset: 16384)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !4919, file: !4920, line: 455, baseType: !304, size: 64, offset: 16448)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !4919, file: !4920, line: 456, baseType: !221, size: 32, offset: 16512)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !4919, file: !4920, line: 457, baseType: !5158, size: 1088, offset: 16576)
!5158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 1088, elements: !3966)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !4919, file: !4920, line: 458, baseType: !5158, size: 1088, offset: 17664)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !4919, file: !4920, line: 469, baseType: !290, size: 64, offset: 18752)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !4919, file: !4920, line: 471, baseType: !5162, size: 64, offset: 18816)
!5162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5163, size: 64)
!5163 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !4920, line: 304, flags: DIFlagFwdDecl)
!5164 = !DIDerivedType(tag: DW_TAG_member, scope: !4919, file: !4920, line: 478, baseType: !5165, size: 64, offset: 18880)
!5165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4919, file: !4920, line: 478, size: 64, elements: !5166)
!5166 = !{!5167, !5170}
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !5165, file: !4920, line: 479, baseType: !5168, size: 64)
!5168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5169, size: 64)
!5169 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !4920, line: 305, flags: DIFlagFwdDecl)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !5165, file: !4920, line: 480, baseType: !4918, size: 64)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !4919, file: !4920, line: 482, baseType: !819, size: 16, offset: 18944)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !4919, file: !4920, line: 483, baseType: !1310, size: 8, offset: 18960)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !4919, file: !4920, line: 497, baseType: !819, size: 16, offset: 18976)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !4919, file: !4920, line: 498, baseType: !135, size: 64, offset: 19008)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !4919, file: !4920, line: 499, baseType: !284, size: 64, offset: 19072)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !4919, file: !4920, line: 500, baseType: !237, size: 64, offset: 19136)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !4919, file: !4920, line: 502, baseType: !126, size: 64, offset: 19200)
!5178 = !DILocation(line: 340, column: 18, scope: !4910)
!5179 = !DILocation(line: 342, column: 2, scope: !4910)
!5180 = !DILocation(line: 343, column: 24, scope: !5181)
!5181 = distinct !DILexicalBlock(scope: !5182, file: !3, line: 343, column: 7)
!5182 = distinct !DILexicalBlock(scope: !4910, file: !3, line: 342, column: 24)
!5183 = !DILocation(line: 343, column: 29, scope: !5181)
!5184 = !DILocation(line: 343, column: 34, scope: !5181)
!5185 = !DILocation(line: 343, column: 7, scope: !5181)
!5186 = !DILocation(line: 343, column: 7, scope: !5182)
!5187 = !DILocation(line: 344, column: 16, scope: !5188)
!5188 = distinct !DILexicalBlock(scope: !5181, file: !3, line: 343, column: 40)
!5189 = !DILocation(line: 344, column: 4, scope: !5188)
!5190 = !DILocation(line: 345, column: 4, scope: !5188)
!5191 = distinct !{!5191, !5179, !5192}
!5192 = !DILocation(line: 347, column: 2, scope: !4910)
!5193 = !DILocation(line: 349, column: 2, scope: !4910)
!5194 = !DILocation(line: 350, column: 1, scope: !4910)
!5195 = distinct !DISubprogram(name: "request_irq", scope: !3837, file: !3837, line: 157, type: !5196, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5196 = !DISubroutineType(types: !5197)
!5197 = !{!221, !7, !5198, !126, !183, !112}
!5198 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !3837, line: 92, baseType: !5199)
!5199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5200, size: 64)
!5200 = !DISubroutineType(types: !5201)
!5201 = !{!5202, !221, !112}
!5202 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !106, line: 17, baseType: !105)
!5203 = !DILocalVariable(name: "irq", arg: 1, scope: !5195, file: !3837, line: 157, type: !7)
!5204 = !DILocation(line: 157, column: 26, scope: !5195)
!5205 = !DILocalVariable(name: "handler", arg: 2, scope: !5195, file: !3837, line: 157, type: !5198)
!5206 = !DILocation(line: 157, column: 45, scope: !5195)
!5207 = !DILocalVariable(name: "flags", arg: 3, scope: !5195, file: !3837, line: 157, type: !126)
!5208 = !DILocation(line: 157, column: 68, scope: !5195)
!5209 = !DILocalVariable(name: "name", arg: 4, scope: !5195, file: !3837, line: 158, type: !183)
!5210 = !DILocation(line: 158, column: 18, scope: !5195)
!5211 = !DILocalVariable(name: "dev", arg: 5, scope: !5195, file: !3837, line: 158, type: !112)
!5212 = !DILocation(line: 158, column: 30, scope: !5195)
!5213 = !DILocation(line: 160, column: 30, scope: !5195)
!5214 = !DILocation(line: 160, column: 35, scope: !5195)
!5215 = !DILocation(line: 160, column: 50, scope: !5195)
!5216 = !DILocation(line: 160, column: 57, scope: !5195)
!5217 = !DILocation(line: 160, column: 63, scope: !5195)
!5218 = !DILocation(line: 160, column: 9, scope: !5195)
!5219 = !DILocation(line: 160, column: 2, scope: !5195)
!5220 = distinct !DISubprogram(name: "pnp_test_handler", scope: !3, file: !3, line: 292, type: !5200, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5221 = !DILocalVariable(name: "irq", arg: 1, scope: !5220, file: !3, line: 292, type: !221)
!5222 = !DILocation(line: 292, column: 41, scope: !5220)
!5223 = !DILocalVariable(name: "dev_id", arg: 2, scope: !5220, file: !3, line: 292, type: !112)
!5224 = !DILocation(line: 292, column: 52, scope: !5220)
!5225 = !DILocation(line: 294, column: 2, scope: !5220)
!5226 = distinct !DISubprogram(name: "pnp_check_dma", scope: !3, file: !3, line: 416, type: !4348, scopeLine: 417, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5227 = !DILocalVariable(name: "dev", arg: 1, scope: !5226, file: !3, line: 416, type: !171)
!5228 = !DILocation(line: 416, column: 35, scope: !5226)
!5229 = !DILocalVariable(name: "res", arg: 2, scope: !5226, file: !3, line: 416, type: !3931)
!5230 = !DILocation(line: 416, column: 57, scope: !5226)
!5231 = !DILocalVariable(name: "i", scope: !5226, file: !3, line: 418, type: !221)
!5232 = !DILocation(line: 418, column: 6, scope: !5226)
!5233 = !DILocalVariable(name: "tdev", scope: !5226, file: !3, line: 419, type: !171)
!5234 = !DILocation(line: 419, column: 18, scope: !5226)
!5235 = !DILocalVariable(name: "tres", scope: !5226, file: !3, line: 420, type: !3931)
!5236 = !DILocation(line: 420, column: 19, scope: !5226)
!5237 = !DILocalVariable(name: "dma", scope: !5226, file: !3, line: 421, type: !4361)
!5238 = !DILocation(line: 421, column: 19, scope: !5226)
!5239 = !DILocation(line: 423, column: 9, scope: !5226)
!5240 = !DILocation(line: 423, column: 14, scope: !5226)
!5241 = !DILocation(line: 423, column: 6, scope: !5226)
!5242 = !DILocation(line: 426, column: 6, scope: !5243)
!5243 = distinct !DILexicalBlock(scope: !5226, file: !3, line: 426, column: 6)
!5244 = !DILocation(line: 426, column: 6, scope: !5226)
!5245 = !DILocation(line: 427, column: 3, scope: !5243)
!5246 = !DILocation(line: 430, column: 7, scope: !5247)
!5247 = distinct !DILexicalBlock(scope: !5226, file: !3, line: 430, column: 6)
!5248 = !DILocation(line: 430, column: 6, scope: !5247)
!5249 = !DILocation(line: 430, column: 11, scope: !5247)
!5250 = !DILocation(line: 430, column: 16, scope: !5247)
!5251 = !DILocation(line: 430, column: 20, scope: !5247)
!5252 = !DILocation(line: 430, column: 19, scope: !5247)
!5253 = !DILocation(line: 430, column: 24, scope: !5247)
!5254 = !DILocation(line: 430, column: 6, scope: !5226)
!5255 = !DILocation(line: 431, column: 3, scope: !5247)
!5256 = !DILocation(line: 434, column: 9, scope: !5257)
!5257 = distinct !DILexicalBlock(scope: !5226, file: !3, line: 434, column: 2)
!5258 = !DILocation(line: 434, column: 7, scope: !5257)
!5259 = !DILocation(line: 434, column: 14, scope: !5260)
!5260 = distinct !DILexicalBlock(scope: !5257, file: !3, line: 434, column: 2)
!5261 = !DILocation(line: 434, column: 16, scope: !5260)
!5262 = !DILocation(line: 434, column: 2, scope: !5257)
!5263 = !DILocation(line: 435, column: 23, scope: !5264)
!5264 = distinct !DILexicalBlock(scope: !5265, file: !3, line: 435, column: 7)
!5265 = distinct !DILexicalBlock(scope: !5260, file: !3, line: 434, column: 26)
!5266 = !DILocation(line: 435, column: 7, scope: !5264)
!5267 = !DILocation(line: 435, column: 30, scope: !5264)
!5268 = !DILocation(line: 435, column: 29, scope: !5264)
!5269 = !DILocation(line: 435, column: 26, scope: !5264)
!5270 = !DILocation(line: 435, column: 7, scope: !5265)
!5271 = !DILocation(line: 436, column: 4, scope: !5264)
!5272 = !DILocation(line: 437, column: 2, scope: !5265)
!5273 = !DILocation(line: 434, column: 22, scope: !5260)
!5274 = !DILocation(line: 434, column: 2, scope: !5260)
!5275 = distinct !{!5275, !5262, !5276}
!5276 = !DILocation(line: 437, column: 2, scope: !5257)
!5277 = !DILocation(line: 440, column: 9, scope: !5278)
!5278 = distinct !DILexicalBlock(scope: !5226, file: !3, line: 440, column: 2)
!5279 = !DILocation(line: 440, column: 7, scope: !5278)
!5280 = !DILocation(line: 440, column: 39, scope: !5281)
!5281 = distinct !DILexicalBlock(scope: !5278, file: !3, line: 440, column: 2)
!5282 = !DILocation(line: 440, column: 60, scope: !5281)
!5283 = !DILocation(line: 440, column: 22, scope: !5281)
!5284 = !DILocation(line: 440, column: 20, scope: !5281)
!5285 = !DILocation(line: 440, column: 2, scope: !5278)
!5286 = !DILocation(line: 441, column: 7, scope: !5287)
!5287 = distinct !DILexicalBlock(scope: !5288, file: !3, line: 441, column: 7)
!5288 = distinct !DILexicalBlock(scope: !5281, file: !3, line: 440, column: 70)
!5289 = !DILocation(line: 441, column: 15, scope: !5287)
!5290 = !DILocation(line: 441, column: 12, scope: !5287)
!5291 = !DILocation(line: 441, column: 19, scope: !5287)
!5292 = !DILocation(line: 441, column: 22, scope: !5287)
!5293 = !DILocation(line: 441, column: 28, scope: !5287)
!5294 = !DILocation(line: 441, column: 34, scope: !5287)
!5295 = !DILocation(line: 441, column: 7, scope: !5288)
!5296 = !DILocation(line: 442, column: 8, scope: !5297)
!5297 = distinct !DILexicalBlock(scope: !5298, file: !3, line: 442, column: 8)
!5298 = distinct !DILexicalBlock(scope: !5287, file: !3, line: 441, column: 52)
!5299 = !DILocation(line: 442, column: 14, scope: !5297)
!5300 = !DILocation(line: 442, column: 24, scope: !5297)
!5301 = !DILocation(line: 442, column: 23, scope: !5297)
!5302 = !DILocation(line: 442, column: 20, scope: !5297)
!5303 = !DILocation(line: 442, column: 8, scope: !5298)
!5304 = !DILocation(line: 443, column: 5, scope: !5297)
!5305 = !DILocation(line: 444, column: 3, scope: !5298)
!5306 = !DILocation(line: 445, column: 2, scope: !5288)
!5307 = !DILocation(line: 440, column: 66, scope: !5281)
!5308 = !DILocation(line: 440, column: 2, scope: !5281)
!5309 = distinct !{!5309, !5285, !5310}
!5310 = !DILocation(line: 445, column: 2, scope: !5278)
!5311 = !DILocation(line: 449, column: 7, scope: !5312)
!5312 = distinct !DILexicalBlock(scope: !5226, file: !3, line: 449, column: 6)
!5313 = !DILocation(line: 449, column: 12, scope: !5312)
!5314 = !DILocation(line: 449, column: 6, scope: !5226)
!5315 = !DILocation(line: 450, column: 20, scope: !5316)
!5316 = distinct !DILexicalBlock(scope: !5317, file: !3, line: 450, column: 7)
!5317 = distinct !DILexicalBlock(scope: !5312, file: !3, line: 449, column: 20)
!5318 = !DILocation(line: 450, column: 19, scope: !5316)
!5319 = !DILocation(line: 450, column: 7, scope: !5316)
!5320 = !DILocation(line: 450, column: 7, scope: !5317)
!5321 = !DILocation(line: 451, column: 4, scope: !5316)
!5322 = !DILocation(line: 452, column: 13, scope: !5317)
!5323 = !DILocation(line: 452, column: 12, scope: !5317)
!5324 = !DILocation(line: 452, column: 3, scope: !5317)
!5325 = !DILocation(line: 453, column: 2, scope: !5317)
!5326 = !DILocalVariable(name: "__mptr", scope: !5327, file: !3, line: 456, type: !112)
!5327 = distinct !DILexicalBlock(scope: !5328, file: !3, line: 456, column: 2)
!5328 = distinct !DILexicalBlock(scope: !5226, file: !3, line: 456, column: 2)
!5329 = !DILocation(line: 456, column: 2, scope: !5327)
!5330 = !DILocation(line: 456, column: 2, scope: !5331)
!5331 = distinct !DILexicalBlock(scope: !5327, file: !3, line: 456, column: 2)
!5332 = !DILocation(line: 456, column: 2, scope: !5328)
!5333 = !DILocation(line: 456, column: 2, scope: !5334)
!5334 = distinct !DILexicalBlock(scope: !5328, file: !3, line: 456, column: 2)
!5335 = !DILocation(line: 457, column: 7, scope: !5336)
!5336 = distinct !DILexicalBlock(scope: !5337, file: !3, line: 457, column: 7)
!5337 = distinct !DILexicalBlock(scope: !5334, file: !3, line: 456, column: 25)
!5338 = !DILocation(line: 457, column: 15, scope: !5336)
!5339 = !DILocation(line: 457, column: 12, scope: !5336)
!5340 = !DILocation(line: 457, column: 7, scope: !5337)
!5341 = !DILocation(line: 458, column: 4, scope: !5336)
!5342 = !DILocation(line: 459, column: 10, scope: !5343)
!5343 = distinct !DILexicalBlock(scope: !5337, file: !3, line: 459, column: 3)
!5344 = !DILocation(line: 459, column: 8, scope: !5343)
!5345 = !DILocation(line: 460, column: 33, scope: !5346)
!5346 = distinct !DILexicalBlock(scope: !5343, file: !3, line: 459, column: 3)
!5347 = !DILocation(line: 460, column: 55, scope: !5346)
!5348 = !DILocation(line: 460, column: 16, scope: !5346)
!5349 = !DILocation(line: 460, column: 14, scope: !5346)
!5350 = !DILocation(line: 459, column: 3, scope: !5343)
!5351 = !DILocation(line: 462, column: 8, scope: !5352)
!5352 = distinct !DILexicalBlock(scope: !5353, file: !3, line: 462, column: 8)
!5353 = distinct !DILexicalBlock(scope: !5346, file: !3, line: 461, column: 13)
!5354 = !DILocation(line: 462, column: 14, scope: !5352)
!5355 = !DILocation(line: 462, column: 20, scope: !5352)
!5356 = !DILocation(line: 462, column: 8, scope: !5353)
!5357 = !DILocation(line: 463, column: 9, scope: !5358)
!5358 = distinct !DILexicalBlock(scope: !5359, file: !3, line: 463, column: 9)
!5359 = distinct !DILexicalBlock(scope: !5352, file: !3, line: 462, column: 38)
!5360 = !DILocation(line: 463, column: 9, scope: !5359)
!5361 = !DILocation(line: 464, column: 6, scope: !5358)
!5362 = !DILocation(line: 465, column: 9, scope: !5363)
!5363 = distinct !DILexicalBlock(scope: !5359, file: !3, line: 465, column: 9)
!5364 = !DILocation(line: 465, column: 15, scope: !5363)
!5365 = !DILocation(line: 465, column: 25, scope: !5363)
!5366 = !DILocation(line: 465, column: 24, scope: !5363)
!5367 = !DILocation(line: 465, column: 21, scope: !5363)
!5368 = !DILocation(line: 465, column: 9, scope: !5359)
!5369 = !DILocation(line: 466, column: 6, scope: !5363)
!5370 = !DILocation(line: 467, column: 4, scope: !5359)
!5371 = !DILocation(line: 468, column: 3, scope: !5353)
!5372 = !DILocation(line: 461, column: 9, scope: !5346)
!5373 = !DILocation(line: 459, column: 3, scope: !5346)
!5374 = distinct !{!5374, !5350, !5375}
!5375 = !DILocation(line: 468, column: 3, scope: !5343)
!5376 = !DILocation(line: 469, column: 2, scope: !5337)
!5377 = !DILocalVariable(name: "__mptr", scope: !5378, file: !3, line: 456, type: !112)
!5378 = distinct !DILexicalBlock(scope: !5334, file: !3, line: 456, column: 2)
!5379 = !DILocation(line: 456, column: 2, scope: !5378)
!5380 = !DILocation(line: 456, column: 2, scope: !5381)
!5381 = distinct !DILexicalBlock(scope: !5378, file: !3, line: 456, column: 2)
!5382 = distinct !{!5382, !5332, !5383}
!5383 = !DILocation(line: 469, column: 2, scope: !5328)
!5384 = !DILocation(line: 471, column: 2, scope: !5226)
!5385 = !DILocation(line: 472, column: 1, scope: !5226)
!5386 = distinct !DISubprogram(name: "pnp_resource_type", scope: !3, file: !3, line: 475, type: !5387, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5387 = !DISubroutineType(types: !5388)
!5388 = !{!126, !3931}
!5389 = !DILocalVariable(name: "res", arg: 1, scope: !5386, file: !3, line: 475, type: !3931)
!5390 = !DILocation(line: 475, column: 50, scope: !5386)
!5391 = !DILocation(line: 477, column: 9, scope: !5386)
!5392 = !DILocation(line: 477, column: 14, scope: !5386)
!5393 = !DILocation(line: 477, column: 20, scope: !5386)
!5394 = !DILocation(line: 477, column: 2, scope: !5386)
!5395 = distinct !DISubprogram(name: "pnp_add_resource", scope: !3, file: !3, line: 509, type: !5396, scopeLine: 511, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5396 = !DISubroutineType(types: !5397)
!5397 = !{!3917, !171, !3931}
!5398 = !DILocalVariable(name: "dev", arg: 1, scope: !5395, file: !3, line: 509, type: !171)
!5399 = !DILocation(line: 509, column: 55, scope: !5395)
!5400 = !DILocalVariable(name: "res", arg: 2, scope: !5395, file: !3, line: 510, type: !3931)
!5401 = !DILocation(line: 510, column: 28, scope: !5395)
!5402 = !DILocalVariable(name: "pnp_res", scope: !5395, file: !3, line: 512, type: !3917)
!5403 = !DILocation(line: 512, column: 23, scope: !5395)
!5404 = !DILocation(line: 514, column: 29, scope: !5395)
!5405 = !DILocation(line: 514, column: 12, scope: !5395)
!5406 = !DILocation(line: 514, column: 10, scope: !5395)
!5407 = !DILocation(line: 515, column: 7, scope: !5408)
!5408 = distinct !DILexicalBlock(scope: !5395, file: !3, line: 515, column: 6)
!5409 = !DILocation(line: 515, column: 6, scope: !5395)
!5410 = !DILocation(line: 516, column: 3, scope: !5411)
!5411 = distinct !DILexicalBlock(scope: !5408, file: !3, line: 515, column: 16)
!5412 = !DILocation(line: 517, column: 3, scope: !5411)
!5413 = !DILocation(line: 520, column: 2, scope: !5395)
!5414 = !DILocation(line: 520, column: 11, scope: !5395)
!5415 = !DILocation(line: 520, column: 18, scope: !5395)
!5416 = !DILocation(line: 520, column: 17, scope: !5395)
!5417 = !DILocation(line: 521, column: 22, scope: !5395)
!5418 = !DILocation(line: 521, column: 27, scope: !5395)
!5419 = !DILocation(line: 521, column: 2, scope: !5395)
!5420 = !DILocation(line: 521, column: 11, scope: !5395)
!5421 = !DILocation(line: 521, column: 15, scope: !5395)
!5422 = !DILocation(line: 521, column: 20, scope: !5395)
!5423 = !DILocation(line: 523, column: 9, scope: !5395)
!5424 = !DILocation(line: 523, column: 2, scope: !5395)
!5425 = !DILocation(line: 524, column: 1, scope: !5395)
!5426 = distinct !DISubprogram(name: "pnp_new_resource", scope: !3, file: !3, line: 497, type: !5427, scopeLine: 498, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5427 = !DISubroutineType(types: !5428)
!5428 = !{!3917, !171}
!5429 = !DILocalVariable(name: "dev", arg: 1, scope: !5426, file: !3, line: 497, type: !171)
!5430 = !DILocation(line: 497, column: 62, scope: !5426)
!5431 = !DILocalVariable(name: "pnp_res", scope: !5426, file: !3, line: 499, type: !3917)
!5432 = !DILocation(line: 499, column: 23, scope: !5426)
!5433 = !DILocation(line: 501, column: 12, scope: !5426)
!5434 = !DILocation(line: 501, column: 10, scope: !5426)
!5435 = !DILocation(line: 502, column: 7, scope: !5436)
!5436 = distinct !DILexicalBlock(scope: !5426, file: !3, line: 502, column: 6)
!5437 = !DILocation(line: 502, column: 6, scope: !5426)
!5438 = !DILocation(line: 503, column: 3, scope: !5436)
!5439 = !DILocation(line: 505, column: 17, scope: !5426)
!5440 = !DILocation(line: 505, column: 26, scope: !5426)
!5441 = !DILocation(line: 505, column: 33, scope: !5426)
!5442 = !DILocation(line: 505, column: 38, scope: !5426)
!5443 = !DILocation(line: 505, column: 2, scope: !5426)
!5444 = !DILocation(line: 506, column: 9, scope: !5426)
!5445 = !DILocation(line: 506, column: 2, scope: !5426)
!5446 = !DILocation(line: 507, column: 1, scope: !5426)
!5447 = distinct !DISubprogram(name: "pnp_add_irq_resource", scope: !3, file: !3, line: 526, type: !5448, scopeLine: 528, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5448 = !DISubroutineType(types: !5449)
!5449 = !{!3917, !171, !221, !221}
!5450 = !DILocalVariable(name: "dev", arg: 1, scope: !5447, file: !3, line: 526, type: !171)
!5451 = !DILocation(line: 526, column: 59, scope: !5447)
!5452 = !DILocalVariable(name: "irq", arg: 2, scope: !5447, file: !3, line: 526, type: !221)
!5453 = !DILocation(line: 526, column: 68, scope: !5447)
!5454 = !DILocalVariable(name: "flags", arg: 3, scope: !5447, file: !3, line: 527, type: !221)
!5455 = !DILocation(line: 527, column: 12, scope: !5447)
!5456 = !DILocalVariable(name: "pnp_res", scope: !5447, file: !3, line: 529, type: !3917)
!5457 = !DILocation(line: 529, column: 23, scope: !5447)
!5458 = !DILocalVariable(name: "res", scope: !5447, file: !3, line: 530, type: !3931)
!5459 = !DILocation(line: 530, column: 19, scope: !5447)
!5460 = !DILocation(line: 532, column: 29, scope: !5447)
!5461 = !DILocation(line: 532, column: 12, scope: !5447)
!5462 = !DILocation(line: 532, column: 10, scope: !5447)
!5463 = !DILocation(line: 533, column: 7, scope: !5464)
!5464 = distinct !DILexicalBlock(scope: !5447, file: !3, line: 533, column: 6)
!5465 = !DILocation(line: 533, column: 6, scope: !5447)
!5466 = !DILocation(line: 534, column: 3, scope: !5467)
!5467 = distinct !DILexicalBlock(scope: !5464, file: !3, line: 533, column: 16)
!5468 = !DILocation(line: 535, column: 3, scope: !5467)
!5469 = !DILocation(line: 538, column: 9, scope: !5447)
!5470 = !DILocation(line: 538, column: 18, scope: !5447)
!5471 = !DILocation(line: 538, column: 6, scope: !5447)
!5472 = !DILocation(line: 539, column: 32, scope: !5447)
!5473 = !DILocation(line: 539, column: 30, scope: !5447)
!5474 = !DILocation(line: 539, column: 15, scope: !5447)
!5475 = !DILocation(line: 539, column: 2, scope: !5447)
!5476 = !DILocation(line: 539, column: 7, scope: !5447)
!5477 = !DILocation(line: 539, column: 13, scope: !5447)
!5478 = !DILocation(line: 540, column: 15, scope: !5447)
!5479 = !DILocation(line: 540, column: 2, scope: !5447)
!5480 = !DILocation(line: 540, column: 7, scope: !5447)
!5481 = !DILocation(line: 540, column: 13, scope: !5447)
!5482 = !DILocation(line: 541, column: 13, scope: !5447)
!5483 = !DILocation(line: 541, column: 2, scope: !5447)
!5484 = !DILocation(line: 541, column: 7, scope: !5447)
!5485 = !DILocation(line: 541, column: 11, scope: !5447)
!5486 = !DILocation(line: 543, column: 26, scope: !5447)
!5487 = !DILocation(line: 543, column: 31, scope: !5447)
!5488 = !DILocation(line: 543, column: 45, scope: !5447)
!5489 = !DILocation(line: 543, column: 2, scope: !5447)
!5490 = !DILocation(line: 544, column: 9, scope: !5447)
!5491 = !DILocation(line: 544, column: 2, scope: !5447)
!5492 = !DILocation(line: 545, column: 1, scope: !5447)
!5493 = distinct !DISubprogram(name: "pnp_add_dma_resource", scope: !3, file: !3, line: 547, type: !5448, scopeLine: 549, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5494 = !DILocalVariable(name: "dev", arg: 1, scope: !5493, file: !3, line: 547, type: !171)
!5495 = !DILocation(line: 547, column: 59, scope: !5493)
!5496 = !DILocalVariable(name: "dma", arg: 2, scope: !5493, file: !3, line: 547, type: !221)
!5497 = !DILocation(line: 547, column: 68, scope: !5493)
!5498 = !DILocalVariable(name: "flags", arg: 3, scope: !5493, file: !3, line: 548, type: !221)
!5499 = !DILocation(line: 548, column: 12, scope: !5493)
!5500 = !DILocalVariable(name: "pnp_res", scope: !5493, file: !3, line: 550, type: !3917)
!5501 = !DILocation(line: 550, column: 23, scope: !5493)
!5502 = !DILocalVariable(name: "res", scope: !5493, file: !3, line: 551, type: !3931)
!5503 = !DILocation(line: 551, column: 19, scope: !5493)
!5504 = !DILocation(line: 553, column: 29, scope: !5493)
!5505 = !DILocation(line: 553, column: 12, scope: !5493)
!5506 = !DILocation(line: 553, column: 10, scope: !5493)
!5507 = !DILocation(line: 554, column: 7, scope: !5508)
!5508 = distinct !DILexicalBlock(scope: !5493, file: !3, line: 554, column: 6)
!5509 = !DILocation(line: 554, column: 6, scope: !5493)
!5510 = !DILocation(line: 555, column: 3, scope: !5511)
!5511 = distinct !DILexicalBlock(scope: !5508, file: !3, line: 554, column: 16)
!5512 = !DILocation(line: 556, column: 3, scope: !5511)
!5513 = !DILocation(line: 559, column: 9, scope: !5493)
!5514 = !DILocation(line: 559, column: 18, scope: !5493)
!5515 = !DILocation(line: 559, column: 6, scope: !5493)
!5516 = !DILocation(line: 560, column: 32, scope: !5493)
!5517 = !DILocation(line: 560, column: 30, scope: !5493)
!5518 = !DILocation(line: 560, column: 15, scope: !5493)
!5519 = !DILocation(line: 560, column: 2, scope: !5493)
!5520 = !DILocation(line: 560, column: 7, scope: !5493)
!5521 = !DILocation(line: 560, column: 13, scope: !5493)
!5522 = !DILocation(line: 561, column: 15, scope: !5493)
!5523 = !DILocation(line: 561, column: 2, scope: !5493)
!5524 = !DILocation(line: 561, column: 7, scope: !5493)
!5525 = !DILocation(line: 561, column: 13, scope: !5493)
!5526 = !DILocation(line: 562, column: 13, scope: !5493)
!5527 = !DILocation(line: 562, column: 2, scope: !5493)
!5528 = !DILocation(line: 562, column: 7, scope: !5493)
!5529 = !DILocation(line: 562, column: 11, scope: !5493)
!5530 = !DILocation(line: 564, column: 26, scope: !5493)
!5531 = !DILocation(line: 564, column: 31, scope: !5493)
!5532 = !DILocation(line: 564, column: 45, scope: !5493)
!5533 = !DILocation(line: 564, column: 2, scope: !5493)
!5534 = !DILocation(line: 565, column: 9, scope: !5493)
!5535 = !DILocation(line: 565, column: 2, scope: !5493)
!5536 = !DILocation(line: 566, column: 1, scope: !5493)
!5537 = distinct !DISubprogram(name: "pnp_add_io_resource", scope: !3, file: !3, line: 568, type: !5538, scopeLine: 571, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5538 = !DISubroutineType(types: !5539)
!5539 = !{!3917, !171, !134, !134, !221}
!5540 = !DILocalVariable(name: "dev", arg: 1, scope: !5537, file: !3, line: 568, type: !171)
!5541 = !DILocation(line: 568, column: 58, scope: !5537)
!5542 = !DILocalVariable(name: "start", arg: 2, scope: !5537, file: !3, line: 569, type: !134)
!5543 = !DILocation(line: 569, column: 23, scope: !5537)
!5544 = !DILocalVariable(name: "end", arg: 3, scope: !5537, file: !3, line: 570, type: !134)
!5545 = !DILocation(line: 570, column: 23, scope: !5537)
!5546 = !DILocalVariable(name: "flags", arg: 4, scope: !5537, file: !3, line: 570, type: !221)
!5547 = !DILocation(line: 570, column: 32, scope: !5537)
!5548 = !DILocalVariable(name: "pnp_res", scope: !5537, file: !3, line: 572, type: !3917)
!5549 = !DILocation(line: 572, column: 23, scope: !5537)
!5550 = !DILocalVariable(name: "res", scope: !5537, file: !3, line: 573, type: !3931)
!5551 = !DILocation(line: 573, column: 19, scope: !5537)
!5552 = !DILocation(line: 575, column: 29, scope: !5537)
!5553 = !DILocation(line: 575, column: 12, scope: !5537)
!5554 = !DILocation(line: 575, column: 10, scope: !5537)
!5555 = !DILocation(line: 576, column: 7, scope: !5556)
!5556 = distinct !DILexicalBlock(scope: !5537, file: !3, line: 576, column: 6)
!5557 = !DILocation(line: 576, column: 6, scope: !5537)
!5558 = !DILocation(line: 577, column: 3, scope: !5559)
!5559 = distinct !DILexicalBlock(scope: !5556, file: !3, line: 576, column: 16)
!5560 = !DILocation(line: 580, column: 3, scope: !5559)
!5561 = !DILocation(line: 583, column: 9, scope: !5537)
!5562 = !DILocation(line: 583, column: 18, scope: !5537)
!5563 = !DILocation(line: 583, column: 6, scope: !5537)
!5564 = !DILocation(line: 584, column: 31, scope: !5537)
!5565 = !DILocation(line: 584, column: 29, scope: !5537)
!5566 = !DILocation(line: 584, column: 15, scope: !5537)
!5567 = !DILocation(line: 584, column: 2, scope: !5537)
!5568 = !DILocation(line: 584, column: 7, scope: !5537)
!5569 = !DILocation(line: 584, column: 13, scope: !5537)
!5570 = !DILocation(line: 585, column: 15, scope: !5537)
!5571 = !DILocation(line: 585, column: 2, scope: !5537)
!5572 = !DILocation(line: 585, column: 7, scope: !5537)
!5573 = !DILocation(line: 585, column: 13, scope: !5537)
!5574 = !DILocation(line: 586, column: 13, scope: !5537)
!5575 = !DILocation(line: 586, column: 2, scope: !5537)
!5576 = !DILocation(line: 586, column: 7, scope: !5537)
!5577 = !DILocation(line: 586, column: 11, scope: !5537)
!5578 = !DILocation(line: 588, column: 26, scope: !5537)
!5579 = !DILocation(line: 588, column: 31, scope: !5537)
!5580 = !DILocation(line: 588, column: 45, scope: !5537)
!5581 = !DILocation(line: 588, column: 2, scope: !5537)
!5582 = !DILocation(line: 589, column: 9, scope: !5537)
!5583 = !DILocation(line: 589, column: 2, scope: !5537)
!5584 = !DILocation(line: 590, column: 1, scope: !5537)
!5585 = distinct !DISubprogram(name: "pnp_add_mem_resource", scope: !3, file: !3, line: 592, type: !5538, scopeLine: 595, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5586 = !DILocalVariable(name: "dev", arg: 1, scope: !5585, file: !3, line: 592, type: !171)
!5587 = !DILocation(line: 592, column: 59, scope: !5585)
!5588 = !DILocalVariable(name: "start", arg: 2, scope: !5585, file: !3, line: 593, type: !134)
!5589 = !DILocation(line: 593, column: 24, scope: !5585)
!5590 = !DILocalVariable(name: "end", arg: 3, scope: !5585, file: !3, line: 594, type: !134)
!5591 = !DILocation(line: 594, column: 24, scope: !5585)
!5592 = !DILocalVariable(name: "flags", arg: 4, scope: !5585, file: !3, line: 594, type: !221)
!5593 = !DILocation(line: 594, column: 33, scope: !5585)
!5594 = !DILocalVariable(name: "pnp_res", scope: !5585, file: !3, line: 596, type: !3917)
!5595 = !DILocation(line: 596, column: 23, scope: !5585)
!5596 = !DILocalVariable(name: "res", scope: !5585, file: !3, line: 597, type: !3931)
!5597 = !DILocation(line: 597, column: 19, scope: !5585)
!5598 = !DILocation(line: 599, column: 29, scope: !5585)
!5599 = !DILocation(line: 599, column: 12, scope: !5585)
!5600 = !DILocation(line: 599, column: 10, scope: !5585)
!5601 = !DILocation(line: 600, column: 7, scope: !5602)
!5602 = distinct !DILexicalBlock(scope: !5585, file: !3, line: 600, column: 6)
!5603 = !DILocation(line: 600, column: 6, scope: !5585)
!5604 = !DILocation(line: 601, column: 3, scope: !5605)
!5605 = distinct !DILexicalBlock(scope: !5602, file: !3, line: 600, column: 16)
!5606 = !DILocation(line: 604, column: 3, scope: !5605)
!5607 = !DILocation(line: 607, column: 9, scope: !5585)
!5608 = !DILocation(line: 607, column: 18, scope: !5585)
!5609 = !DILocation(line: 607, column: 6, scope: !5585)
!5610 = !DILocation(line: 608, column: 32, scope: !5585)
!5611 = !DILocation(line: 608, column: 30, scope: !5585)
!5612 = !DILocation(line: 608, column: 15, scope: !5585)
!5613 = !DILocation(line: 608, column: 2, scope: !5585)
!5614 = !DILocation(line: 608, column: 7, scope: !5585)
!5615 = !DILocation(line: 608, column: 13, scope: !5585)
!5616 = !DILocation(line: 609, column: 15, scope: !5585)
!5617 = !DILocation(line: 609, column: 2, scope: !5585)
!5618 = !DILocation(line: 609, column: 7, scope: !5585)
!5619 = !DILocation(line: 609, column: 13, scope: !5585)
!5620 = !DILocation(line: 610, column: 13, scope: !5585)
!5621 = !DILocation(line: 610, column: 2, scope: !5585)
!5622 = !DILocation(line: 610, column: 7, scope: !5585)
!5623 = !DILocation(line: 610, column: 11, scope: !5585)
!5624 = !DILocation(line: 612, column: 26, scope: !5585)
!5625 = !DILocation(line: 612, column: 31, scope: !5585)
!5626 = !DILocation(line: 612, column: 45, scope: !5585)
!5627 = !DILocation(line: 612, column: 2, scope: !5585)
!5628 = !DILocation(line: 613, column: 9, scope: !5585)
!5629 = !DILocation(line: 613, column: 2, scope: !5585)
!5630 = !DILocation(line: 614, column: 1, scope: !5585)
!5631 = distinct !DISubprogram(name: "pnp_add_bus_resource", scope: !3, file: !3, line: 616, type: !5632, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5632 = !DISubroutineType(types: !5633)
!5633 = !{!3917, !171, !134, !134}
!5634 = !DILocalVariable(name: "dev", arg: 1, scope: !5631, file: !3, line: 616, type: !171)
!5635 = !DILocation(line: 616, column: 59, scope: !5631)
!5636 = !DILocalVariable(name: "start", arg: 2, scope: !5631, file: !3, line: 617, type: !134)
!5637 = !DILocation(line: 617, column: 24, scope: !5631)
!5638 = !DILocalVariable(name: "end", arg: 3, scope: !5631, file: !3, line: 618, type: !134)
!5639 = !DILocation(line: 618, column: 24, scope: !5631)
!5640 = !DILocalVariable(name: "pnp_res", scope: !5631, file: !3, line: 620, type: !3917)
!5641 = !DILocation(line: 620, column: 23, scope: !5631)
!5642 = !DILocalVariable(name: "res", scope: !5631, file: !3, line: 621, type: !3931)
!5643 = !DILocation(line: 621, column: 19, scope: !5631)
!5644 = !DILocation(line: 623, column: 29, scope: !5631)
!5645 = !DILocation(line: 623, column: 12, scope: !5631)
!5646 = !DILocation(line: 623, column: 10, scope: !5631)
!5647 = !DILocation(line: 624, column: 7, scope: !5648)
!5648 = distinct !DILexicalBlock(scope: !5631, file: !3, line: 624, column: 6)
!5649 = !DILocation(line: 624, column: 6, scope: !5631)
!5650 = !DILocation(line: 625, column: 3, scope: !5651)
!5651 = distinct !DILexicalBlock(scope: !5648, file: !3, line: 624, column: 16)
!5652 = !DILocation(line: 628, column: 3, scope: !5651)
!5653 = !DILocation(line: 631, column: 9, scope: !5631)
!5654 = !DILocation(line: 631, column: 18, scope: !5631)
!5655 = !DILocation(line: 631, column: 6, scope: !5631)
!5656 = !DILocation(line: 632, column: 2, scope: !5631)
!5657 = !DILocation(line: 632, column: 7, scope: !5631)
!5658 = !DILocation(line: 632, column: 13, scope: !5631)
!5659 = !DILocation(line: 633, column: 15, scope: !5631)
!5660 = !DILocation(line: 633, column: 2, scope: !5631)
!5661 = !DILocation(line: 633, column: 7, scope: !5631)
!5662 = !DILocation(line: 633, column: 13, scope: !5631)
!5663 = !DILocation(line: 634, column: 13, scope: !5631)
!5664 = !DILocation(line: 634, column: 2, scope: !5631)
!5665 = !DILocation(line: 634, column: 7, scope: !5631)
!5666 = !DILocation(line: 634, column: 11, scope: !5631)
!5667 = !DILocation(line: 636, column: 26, scope: !5631)
!5668 = !DILocation(line: 636, column: 31, scope: !5631)
!5669 = !DILocation(line: 636, column: 45, scope: !5631)
!5670 = !DILocation(line: 636, column: 2, scope: !5631)
!5671 = !DILocation(line: 637, column: 9, scope: !5631)
!5672 = !DILocation(line: 637, column: 2, scope: !5631)
!5673 = !DILocation(line: 638, column: 1, scope: !5631)
!5674 = distinct !DISubprogram(name: "pnp_possible_config", scope: !3, file: !3, line: 644, type: !5675, scopeLine: 646, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5675 = !DISubroutineType(types: !5676)
!5676 = !{!221, !171, !221, !134, !134}
!5677 = !DILocalVariable(name: "dev", arg: 1, scope: !5674, file: !3, line: 644, type: !171)
!5678 = !DILocation(line: 644, column: 41, scope: !5674)
!5679 = !DILocalVariable(name: "type", arg: 2, scope: !5674, file: !3, line: 644, type: !221)
!5680 = !DILocation(line: 644, column: 50, scope: !5674)
!5681 = !DILocalVariable(name: "start", arg: 3, scope: !5674, file: !3, line: 644, type: !134)
!5682 = !DILocation(line: 644, column: 72, scope: !5674)
!5683 = !DILocalVariable(name: "size", arg: 4, scope: !5674, file: !3, line: 645, type: !134)
!5684 = !DILocation(line: 645, column: 20, scope: !5674)
!5685 = !DILocalVariable(name: "option", scope: !5674, file: !3, line: 647, type: !113)
!5686 = !DILocation(line: 647, column: 21, scope: !5674)
!5687 = !DILocalVariable(name: "port", scope: !5674, file: !3, line: 648, type: !4200)
!5688 = !DILocation(line: 648, column: 19, scope: !5674)
!5689 = !DILocalVariable(name: "mem", scope: !5674, file: !3, line: 649, type: !4257)
!5690 = !DILocation(line: 649, column: 18, scope: !5674)
!5691 = !DILocalVariable(name: "irq", scope: !5674, file: !3, line: 650, type: !3995)
!5692 = !DILocation(line: 650, column: 18, scope: !5674)
!5693 = !DILocalVariable(name: "dma", scope: !5674, file: !3, line: 651, type: !4153)
!5694 = !DILocation(line: 651, column: 18, scope: !5674)
!5695 = !DILocalVariable(name: "__mptr", scope: !5696, file: !3, line: 653, type: !112)
!5696 = distinct !DILexicalBlock(scope: !5697, file: !3, line: 653, column: 2)
!5697 = distinct !DILexicalBlock(scope: !5674, file: !3, line: 653, column: 2)
!5698 = !DILocation(line: 653, column: 2, scope: !5696)
!5699 = !DILocation(line: 653, column: 2, scope: !5700)
!5700 = distinct !DILexicalBlock(scope: !5696, file: !3, line: 653, column: 2)
!5701 = !DILocation(line: 653, column: 2, scope: !5697)
!5702 = !DILocation(line: 653, column: 2, scope: !5703)
!5703 = distinct !DILexicalBlock(scope: !5697, file: !3, line: 653, column: 2)
!5704 = !DILocation(line: 654, column: 7, scope: !5705)
!5705 = distinct !DILexicalBlock(scope: !5706, file: !3, line: 654, column: 7)
!5706 = distinct !DILexicalBlock(scope: !5703, file: !3, line: 653, column: 51)
!5707 = !DILocation(line: 654, column: 15, scope: !5705)
!5708 = !DILocation(line: 654, column: 23, scope: !5705)
!5709 = !DILocation(line: 654, column: 20, scope: !5705)
!5710 = !DILocation(line: 654, column: 7, scope: !5706)
!5711 = !DILocation(line: 655, column: 4, scope: !5705)
!5712 = !DILocation(line: 657, column: 11, scope: !5706)
!5713 = !DILocation(line: 657, column: 19, scope: !5706)
!5714 = !DILocation(line: 657, column: 3, scope: !5706)
!5715 = !DILocation(line: 659, column: 12, scope: !5716)
!5716 = distinct !DILexicalBlock(scope: !5706, file: !3, line: 657, column: 25)
!5717 = !DILocation(line: 659, column: 20, scope: !5716)
!5718 = !DILocation(line: 659, column: 22, scope: !5716)
!5719 = !DILocation(line: 659, column: 9, scope: !5716)
!5720 = !DILocation(line: 660, column: 8, scope: !5721)
!5721 = distinct !DILexicalBlock(scope: !5716, file: !3, line: 660, column: 8)
!5722 = !DILocation(line: 660, column: 14, scope: !5721)
!5723 = !DILocation(line: 660, column: 21, scope: !5721)
!5724 = !DILocation(line: 660, column: 18, scope: !5721)
!5725 = !DILocation(line: 660, column: 27, scope: !5721)
!5726 = !DILocation(line: 660, column: 30, scope: !5721)
!5727 = !DILocation(line: 660, column: 36, scope: !5721)
!5728 = !DILocation(line: 660, column: 44, scope: !5721)
!5729 = !DILocation(line: 660, column: 41, scope: !5721)
!5730 = !DILocation(line: 660, column: 8, scope: !5716)
!5731 = !DILocation(line: 661, column: 5, scope: !5721)
!5732 = !DILocation(line: 662, column: 4, scope: !5716)
!5733 = !DILocation(line: 664, column: 11, scope: !5716)
!5734 = !DILocation(line: 664, column: 19, scope: !5716)
!5735 = !DILocation(line: 664, column: 21, scope: !5716)
!5736 = !DILocation(line: 664, column: 8, scope: !5716)
!5737 = !DILocation(line: 665, column: 8, scope: !5738)
!5738 = distinct !DILexicalBlock(scope: !5716, file: !3, line: 665, column: 8)
!5739 = !DILocation(line: 665, column: 13, scope: !5738)
!5740 = !DILocation(line: 665, column: 20, scope: !5738)
!5741 = !DILocation(line: 665, column: 17, scope: !5738)
!5742 = !DILocation(line: 665, column: 26, scope: !5738)
!5743 = !DILocation(line: 665, column: 29, scope: !5738)
!5744 = !DILocation(line: 665, column: 34, scope: !5738)
!5745 = !DILocation(line: 665, column: 42, scope: !5738)
!5746 = !DILocation(line: 665, column: 39, scope: !5738)
!5747 = !DILocation(line: 665, column: 8, scope: !5716)
!5748 = !DILocation(line: 666, column: 5, scope: !5738)
!5749 = !DILocation(line: 667, column: 4, scope: !5716)
!5750 = !DILocation(line: 669, column: 11, scope: !5716)
!5751 = !DILocation(line: 669, column: 19, scope: !5716)
!5752 = !DILocation(line: 669, column: 21, scope: !5716)
!5753 = !DILocation(line: 669, column: 8, scope: !5716)
!5754 = !DILocation(line: 670, column: 8, scope: !5755)
!5755 = distinct !DILexicalBlock(scope: !5716, file: !3, line: 670, column: 8)
!5756 = !DILocation(line: 670, column: 14, scope: !5755)
!5757 = !DILocation(line: 670, column: 27, scope: !5755)
!5758 = !DILocation(line: 671, column: 17, scope: !5755)
!5759 = !DILocation(line: 671, column: 24, scope: !5755)
!5760 = !DILocation(line: 671, column: 29, scope: !5755)
!5761 = !DILocation(line: 671, column: 33, scope: !5755)
!5762 = !DILocation(line: 671, column: 8, scope: !5755)
!5763 = !DILocation(line: 670, column: 8, scope: !5716)
!5764 = !DILocation(line: 672, column: 5, scope: !5755)
!5765 = !DILocation(line: 673, column: 4, scope: !5716)
!5766 = !DILocation(line: 675, column: 11, scope: !5716)
!5767 = !DILocation(line: 675, column: 19, scope: !5716)
!5768 = !DILocation(line: 675, column: 21, scope: !5716)
!5769 = !DILocation(line: 675, column: 8, scope: !5716)
!5770 = !DILocation(line: 676, column: 8, scope: !5771)
!5771 = distinct !DILexicalBlock(scope: !5716, file: !3, line: 676, column: 8)
!5772 = !DILocation(line: 676, column: 13, scope: !5771)
!5773 = !DILocation(line: 676, column: 25, scope: !5771)
!5774 = !DILocation(line: 676, column: 22, scope: !5771)
!5775 = !DILocation(line: 676, column: 17, scope: !5771)
!5776 = !DILocation(line: 676, column: 8, scope: !5716)
!5777 = !DILocation(line: 677, column: 5, scope: !5771)
!5778 = !DILocation(line: 678, column: 4, scope: !5716)
!5779 = !DILocation(line: 680, column: 2, scope: !5706)
!5780 = !DILocalVariable(name: "__mptr", scope: !5781, file: !3, line: 653, type: !112)
!5781 = distinct !DILexicalBlock(scope: !5703, file: !3, line: 653, column: 2)
!5782 = !DILocation(line: 653, column: 2, scope: !5781)
!5783 = !DILocation(line: 653, column: 2, scope: !5784)
!5784 = distinct !DILexicalBlock(scope: !5781, file: !3, line: 653, column: 2)
!5785 = distinct !{!5785, !5701, !5786}
!5786 = !DILocation(line: 680, column: 2, scope: !5697)
!5787 = !DILocation(line: 682, column: 2, scope: !5674)
!5788 = !DILocation(line: 683, column: 1, scope: !5674)
!5789 = distinct !DISubprogram(name: "pnp_range_reserved", scope: !3, file: !3, line: 686, type: !5790, scopeLine: 687, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5790 = !DISubroutineType(types: !5791)
!5791 = !{!221, !134, !134}
!5792 = !DILocalVariable(name: "start", arg: 1, scope: !5789, file: !3, line: 686, type: !134)
!5793 = !DILocation(line: 686, column: 40, scope: !5789)
!5794 = !DILocalVariable(name: "end", arg: 2, scope: !5789, file: !3, line: 686, type: !134)
!5795 = !DILocation(line: 686, column: 63, scope: !5789)
!5796 = !DILocalVariable(name: "dev", scope: !5789, file: !3, line: 688, type: !171)
!5797 = !DILocation(line: 688, column: 18, scope: !5789)
!5798 = !DILocalVariable(name: "pnp_res", scope: !5789, file: !3, line: 689, type: !3917)
!5799 = !DILocation(line: 689, column: 23, scope: !5789)
!5800 = !DILocalVariable(name: "dev_start", scope: !5789, file: !3, line: 690, type: !4361)
!5801 = !DILocation(line: 690, column: 19, scope: !5789)
!5802 = !DILocalVariable(name: "dev_end", scope: !5789, file: !3, line: 690, type: !4361)
!5803 = !DILocation(line: 690, column: 31, scope: !5789)
!5804 = !DILocalVariable(name: "__mptr", scope: !5805, file: !3, line: 692, type: !112)
!5805 = distinct !DILexicalBlock(scope: !5806, file: !3, line: 692, column: 2)
!5806 = distinct !DILexicalBlock(scope: !5789, file: !3, line: 692, column: 2)
!5807 = !DILocation(line: 692, column: 2, scope: !5805)
!5808 = !DILocation(line: 692, column: 2, scope: !5809)
!5809 = distinct !DILexicalBlock(scope: !5805, file: !3, line: 692, column: 2)
!5810 = !DILocation(line: 692, column: 2, scope: !5806)
!5811 = !DILocation(line: 692, column: 2, scope: !5812)
!5812 = distinct !DILexicalBlock(scope: !5806, file: !3, line: 692, column: 2)
!5813 = !DILocalVariable(name: "__mptr", scope: !5814, file: !3, line: 693, type: !112)
!5814 = distinct !DILexicalBlock(scope: !5815, file: !3, line: 693, column: 3)
!5815 = distinct !DILexicalBlock(scope: !5816, file: !3, line: 693, column: 3)
!5816 = distinct !DILexicalBlock(scope: !5812, file: !3, line: 692, column: 24)
!5817 = !DILocation(line: 693, column: 3, scope: !5814)
!5818 = !DILocation(line: 693, column: 3, scope: !5819)
!5819 = distinct !DILexicalBlock(scope: !5814, file: !3, line: 693, column: 3)
!5820 = !DILocation(line: 693, column: 3, scope: !5815)
!5821 = !DILocation(line: 693, column: 3, scope: !5822)
!5822 = distinct !DILexicalBlock(scope: !5815, file: !3, line: 693, column: 3)
!5823 = !DILocation(line: 694, column: 17, scope: !5824)
!5824 = distinct !DILexicalBlock(scope: !5822, file: !3, line: 693, column: 55)
!5825 = !DILocation(line: 694, column: 26, scope: !5824)
!5826 = !DILocation(line: 694, column: 30, scope: !5824)
!5827 = !DILocation(line: 694, column: 14, scope: !5824)
!5828 = !DILocation(line: 695, column: 17, scope: !5824)
!5829 = !DILocation(line: 695, column: 26, scope: !5824)
!5830 = !DILocation(line: 695, column: 30, scope: !5824)
!5831 = !DILocation(line: 695, column: 14, scope: !5824)
!5832 = !DILocation(line: 696, column: 8, scope: !5833)
!5833 = distinct !DILexicalBlock(scope: !5824, file: !3, line: 696, column: 8)
!5834 = !DILocation(line: 696, column: 8, scope: !5824)
!5835 = !DILocation(line: 697, column: 5, scope: !5833)
!5836 = !DILocation(line: 698, column: 3, scope: !5824)
!5837 = !DILocalVariable(name: "__mptr", scope: !5838, file: !3, line: 693, type: !112)
!5838 = distinct !DILexicalBlock(scope: !5822, file: !3, line: 693, column: 3)
!5839 = !DILocation(line: 693, column: 3, scope: !5838)
!5840 = !DILocation(line: 693, column: 3, scope: !5841)
!5841 = distinct !DILexicalBlock(scope: !5838, file: !3, line: 693, column: 3)
!5842 = distinct !{!5842, !5820, !5843}
!5843 = !DILocation(line: 698, column: 3, scope: !5815)
!5844 = !DILocation(line: 699, column: 2, scope: !5816)
!5845 = !DILocalVariable(name: "__mptr", scope: !5846, file: !3, line: 692, type: !112)
!5846 = distinct !DILexicalBlock(scope: !5812, file: !3, line: 692, column: 2)
!5847 = !DILocation(line: 692, column: 2, scope: !5846)
!5848 = !DILocation(line: 692, column: 2, scope: !5849)
!5849 = distinct !DILexicalBlock(scope: !5846, file: !3, line: 692, column: 2)
!5850 = distinct !{!5850, !5810, !5851}
!5851 = !DILocation(line: 699, column: 2, scope: !5806)
!5852 = !DILocation(line: 700, column: 2, scope: !5789)
!5853 = !DILocation(line: 701, column: 1, scope: !5789)
!5854 = distinct !DISubprogram(name: "pnp_setup_reserve_irq", scope: !3, file: !3, line: 705, type: !3946, scopeLine: 706, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5855 = !DILocalVariable(name: "str", arg: 1, scope: !5854, file: !3, line: 705, type: !237)
!5856 = !DILocation(line: 705, column: 47, scope: !5854)
!5857 = !DILocalVariable(name: "i", scope: !5854, file: !3, line: 707, type: !221)
!5858 = !DILocation(line: 707, column: 6, scope: !5854)
!5859 = !DILocation(line: 709, column: 9, scope: !5860)
!5860 = distinct !DILexicalBlock(scope: !5854, file: !3, line: 709, column: 2)
!5861 = !DILocation(line: 709, column: 7, scope: !5860)
!5862 = !DILocation(line: 709, column: 14, scope: !5863)
!5863 = distinct !DILexicalBlock(scope: !5860, file: !3, line: 709, column: 2)
!5864 = !DILocation(line: 709, column: 16, scope: !5863)
!5865 = !DILocation(line: 709, column: 2, scope: !5860)
!5866 = !DILocation(line: 710, column: 41, scope: !5867)
!5867 = distinct !DILexicalBlock(scope: !5863, file: !3, line: 710, column: 7)
!5868 = !DILocation(line: 710, column: 25, scope: !5867)
!5869 = !DILocation(line: 710, column: 7, scope: !5867)
!5870 = !DILocation(line: 710, column: 45, scope: !5867)
!5871 = !DILocation(line: 710, column: 7, scope: !5863)
!5872 = !DILocation(line: 711, column: 4, scope: !5867)
!5873 = !DILocation(line: 710, column: 48, scope: !5867)
!5874 = !DILocation(line: 709, column: 23, scope: !5863)
!5875 = !DILocation(line: 709, column: 2, scope: !5863)
!5876 = distinct !{!5876, !5865, !5877}
!5877 = !DILocation(line: 711, column: 4, scope: !5860)
!5878 = !DILocation(line: 712, column: 2, scope: !5854)
!5879 = distinct !DISubprogram(name: "pnp_setup_reserve_dma", scope: !3, file: !3, line: 718, type: !3946, scopeLine: 719, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5880 = !DILocalVariable(name: "str", arg: 1, scope: !5879, file: !3, line: 718, type: !237)
!5881 = !DILocation(line: 718, column: 47, scope: !5879)
!5882 = !DILocalVariable(name: "i", scope: !5879, file: !3, line: 720, type: !221)
!5883 = !DILocation(line: 720, column: 6, scope: !5879)
!5884 = !DILocation(line: 722, column: 9, scope: !5885)
!5885 = distinct !DILexicalBlock(scope: !5879, file: !3, line: 722, column: 2)
!5886 = !DILocation(line: 722, column: 7, scope: !5885)
!5887 = !DILocation(line: 722, column: 14, scope: !5888)
!5888 = distinct !DILexicalBlock(scope: !5885, file: !3, line: 722, column: 2)
!5889 = !DILocation(line: 722, column: 16, scope: !5888)
!5890 = !DILocation(line: 722, column: 2, scope: !5885)
!5891 = !DILocation(line: 723, column: 41, scope: !5892)
!5892 = distinct !DILexicalBlock(scope: !5888, file: !3, line: 723, column: 7)
!5893 = !DILocation(line: 723, column: 25, scope: !5892)
!5894 = !DILocation(line: 723, column: 7, scope: !5892)
!5895 = !DILocation(line: 723, column: 45, scope: !5892)
!5896 = !DILocation(line: 723, column: 7, scope: !5888)
!5897 = !DILocation(line: 724, column: 4, scope: !5892)
!5898 = !DILocation(line: 723, column: 48, scope: !5892)
!5899 = !DILocation(line: 722, column: 22, scope: !5888)
!5900 = !DILocation(line: 722, column: 2, scope: !5888)
!5901 = distinct !{!5901, !5890, !5902}
!5902 = !DILocation(line: 724, column: 4, scope: !5885)
!5903 = !DILocation(line: 725, column: 2, scope: !5879)
!5904 = distinct !DISubprogram(name: "pnp_setup_reserve_io", scope: !3, file: !3, line: 731, type: !3946, scopeLine: 732, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5905 = !DILocalVariable(name: "str", arg: 1, scope: !5904, file: !3, line: 731, type: !237)
!5906 = !DILocation(line: 731, column: 46, scope: !5904)
!5907 = !DILocalVariable(name: "i", scope: !5904, file: !3, line: 733, type: !221)
!5908 = !DILocation(line: 733, column: 6, scope: !5904)
!5909 = !DILocation(line: 735, column: 9, scope: !5910)
!5910 = distinct !DILexicalBlock(scope: !5904, file: !3, line: 735, column: 2)
!5911 = !DILocation(line: 735, column: 7, scope: !5910)
!5912 = !DILocation(line: 735, column: 14, scope: !5913)
!5913 = distinct !DILexicalBlock(scope: !5910, file: !3, line: 735, column: 2)
!5914 = !DILocation(line: 735, column: 16, scope: !5913)
!5915 = !DILocation(line: 735, column: 2, scope: !5910)
!5916 = !DILocation(line: 736, column: 40, scope: !5917)
!5917 = distinct !DILexicalBlock(scope: !5913, file: !3, line: 736, column: 7)
!5918 = !DILocation(line: 736, column: 25, scope: !5917)
!5919 = !DILocation(line: 736, column: 7, scope: !5917)
!5920 = !DILocation(line: 736, column: 44, scope: !5917)
!5921 = !DILocation(line: 736, column: 7, scope: !5913)
!5922 = !DILocation(line: 737, column: 4, scope: !5917)
!5923 = !DILocation(line: 736, column: 47, scope: !5917)
!5924 = !DILocation(line: 735, column: 23, scope: !5913)
!5925 = !DILocation(line: 735, column: 2, scope: !5913)
!5926 = distinct !{!5926, !5915, !5927}
!5927 = !DILocation(line: 737, column: 4, scope: !5910)
!5928 = !DILocation(line: 738, column: 2, scope: !5904)
!5929 = distinct !DISubprogram(name: "pnp_setup_reserve_mem", scope: !3, file: !3, line: 744, type: !3946, scopeLine: 745, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5930 = !DILocalVariable(name: "str", arg: 1, scope: !5929, file: !3, line: 744, type: !237)
!5931 = !DILocation(line: 744, column: 47, scope: !5929)
!5932 = !DILocalVariable(name: "i", scope: !5929, file: !3, line: 746, type: !221)
!5933 = !DILocation(line: 746, column: 6, scope: !5929)
!5934 = !DILocation(line: 748, column: 9, scope: !5935)
!5935 = distinct !DILexicalBlock(scope: !5929, file: !3, line: 748, column: 2)
!5936 = !DILocation(line: 748, column: 7, scope: !5935)
!5937 = !DILocation(line: 748, column: 14, scope: !5938)
!5938 = distinct !DILexicalBlock(scope: !5935, file: !3, line: 748, column: 2)
!5939 = !DILocation(line: 748, column: 16, scope: !5938)
!5940 = !DILocation(line: 748, column: 2, scope: !5935)
!5941 = !DILocation(line: 749, column: 41, scope: !5942)
!5942 = distinct !DILexicalBlock(scope: !5938, file: !3, line: 749, column: 7)
!5943 = !DILocation(line: 749, column: 25, scope: !5942)
!5944 = !DILocation(line: 749, column: 7, scope: !5942)
!5945 = !DILocation(line: 749, column: 45, scope: !5942)
!5946 = !DILocation(line: 749, column: 7, scope: !5938)
!5947 = !DILocation(line: 750, column: 4, scope: !5942)
!5948 = !DILocation(line: 749, column: 48, scope: !5942)
!5949 = !DILocation(line: 748, column: 23, scope: !5938)
!5950 = !DILocation(line: 748, column: 2, scope: !5938)
!5951 = distinct !{!5951, !5940, !5952}
!5952 = !DILocation(line: 750, column: 4, scope: !5935)
!5953 = !DILocation(line: 751, column: 2, scope: !5929)
!5954 = distinct !DISubprogram(name: "kzalloc", scope: !94, file: !94, line: 662, type: !5955, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5955 = !DISubroutineType(types: !5956)
!5956 = !{!112, !284, !703}
!5957 = !DILocalVariable(name: "s", arg: 1, scope: !5958, file: !94, line: 445, type: !895)
!5958 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !94, file: !94, line: 445, type: !5959, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5959 = !DISubroutineType(types: !5960)
!5960 = !{!112, !895, !703, !284}
!5961 = !DILocation(line: 445, column: 72, scope: !5958, inlinedAt: !5962)
!5962 = distinct !DILocation(line: 552, column: 10, scope: !5963, inlinedAt: !5966)
!5963 = distinct !DILexicalBlock(scope: !5964, file: !94, line: 540, column: 34)
!5964 = distinct !DILexicalBlock(scope: !5965, file: !94, line: 540, column: 6)
!5965 = distinct !DISubprogram(name: "kmalloc", scope: !94, file: !94, line: 538, type: !5955, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5966 = distinct !DILocation(line: 664, column: 9, scope: !5954)
!5967 = !DILocalVariable(name: "flags", arg: 2, scope: !5958, file: !94, line: 446, type: !703)
!5968 = !DILocation(line: 446, column: 9, scope: !5958, inlinedAt: !5962)
!5969 = !DILocalVariable(name: "size", arg: 3, scope: !5958, file: !94, line: 446, type: !284)
!5970 = !DILocation(line: 446, column: 23, scope: !5958, inlinedAt: !5962)
!5971 = !DILocalVariable(name: "ret", scope: !5958, file: !94, line: 448, type: !112)
!5972 = !DILocation(line: 448, column: 8, scope: !5958, inlinedAt: !5962)
!5973 = !DILocalVariable(name: "flags", arg: 1, scope: !5974, file: !94, line: 318, type: !703)
!5974 = distinct !DISubprogram(name: "kmalloc_type", scope: !94, file: !94, line: 318, type: !5975, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5975 = !DISubroutineType(types: !5976)
!5976 = !{!93, !703}
!5977 = !DILocation(line: 318, column: 67, scope: !5974, inlinedAt: !5978)
!5978 = distinct !DILocation(line: 553, column: 20, scope: !5963, inlinedAt: !5966)
!5979 = !DILocalVariable(name: "size", arg: 1, scope: !5980, file: !94, line: 346, type: !284)
!5980 = distinct !DISubprogram(name: "kmalloc_index", scope: !94, file: !94, line: 346, type: !5981, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5981 = !DISubroutineType(types: !5982)
!5982 = !{!7, !284}
!5983 = !DILocation(line: 346, column: 58, scope: !5980, inlinedAt: !5984)
!5984 = distinct !DILocation(line: 547, column: 11, scope: !5963, inlinedAt: !5966)
!5985 = !DILocalVariable(name: "size", arg: 1, scope: !5986, file: !94, line: 472, type: !284)
!5986 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !94, file: !94, line: 472, type: !5987, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5987 = !DISubroutineType(types: !5988)
!5988 = !{!112, !284, !703, !7}
!5989 = !DILocation(line: 472, column: 28, scope: !5986, inlinedAt: !5990)
!5990 = distinct !DILocation(line: 481, column: 9, scope: !5991, inlinedAt: !5992)
!5991 = distinct !DISubprogram(name: "kmalloc_large", scope: !94, file: !94, line: 478, type: !5955, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5992 = distinct !DILocation(line: 545, column: 11, scope: !5993, inlinedAt: !5966)
!5993 = distinct !DILexicalBlock(scope: !5963, file: !94, line: 544, column: 7)
!5994 = !DILocalVariable(name: "flags", arg: 2, scope: !5986, file: !94, line: 472, type: !703)
!5995 = !DILocation(line: 472, column: 40, scope: !5986, inlinedAt: !5990)
!5996 = !DILocalVariable(name: "order", arg: 3, scope: !5986, file: !94, line: 472, type: !7)
!5997 = !DILocation(line: 472, column: 60, scope: !5986, inlinedAt: !5990)
!5998 = !DILocalVariable(name: "size", arg: 1, scope: !5991, file: !94, line: 478, type: !284)
!5999 = !DILocation(line: 478, column: 51, scope: !5991, inlinedAt: !5992)
!6000 = !DILocalVariable(name: "flags", arg: 2, scope: !5991, file: !94, line: 478, type: !703)
!6001 = !DILocation(line: 478, column: 63, scope: !5991, inlinedAt: !5992)
!6002 = !DILocalVariable(name: "order", scope: !5991, file: !94, line: 480, type: !7)
!6003 = !DILocation(line: 480, column: 15, scope: !5991, inlinedAt: !5992)
!6004 = !DILocalVariable(name: "size", arg: 1, scope: !5965, file: !94, line: 538, type: !284)
!6005 = !DILocation(line: 538, column: 45, scope: !5965, inlinedAt: !5966)
!6006 = !DILocalVariable(name: "flags", arg: 2, scope: !5965, file: !94, line: 538, type: !703)
!6007 = !DILocation(line: 538, column: 57, scope: !5965, inlinedAt: !5966)
!6008 = !DILocalVariable(name: "index", scope: !5963, file: !94, line: 542, type: !7)
!6009 = !DILocation(line: 542, column: 16, scope: !5963, inlinedAt: !5966)
!6010 = !DILocalVariable(name: "size", arg: 1, scope: !5954, file: !94, line: 662, type: !284)
!6011 = !DILocation(line: 662, column: 36, scope: !5954)
!6012 = !DILocalVariable(name: "flags", arg: 2, scope: !5954, file: !94, line: 662, type: !703)
!6013 = !DILocation(line: 662, column: 48, scope: !5954)
!6014 = !DILocation(line: 664, column: 17, scope: !5954)
!6015 = !DILocation(line: 664, column: 23, scope: !5954)
!6016 = !DILocation(line: 664, column: 29, scope: !5954)
!6017 = !DILocation(line: 540, column: 27, scope: !5964, inlinedAt: !5966)
!6018 = !DILocation(line: 540, column: 6, scope: !5964, inlinedAt: !5966)
!6019 = !DILocation(line: 540, column: 6, scope: !5965, inlinedAt: !5966)
!6020 = !DILocation(line: 544, column: 7, scope: !5993, inlinedAt: !5966)
!6021 = !DILocation(line: 544, column: 12, scope: !5993, inlinedAt: !5966)
!6022 = !DILocation(line: 544, column: 7, scope: !5963, inlinedAt: !5966)
!6023 = !DILocation(line: 545, column: 25, scope: !5993, inlinedAt: !5966)
!6024 = !DILocation(line: 545, column: 31, scope: !5993, inlinedAt: !5966)
!6025 = !DILocation(line: 480, column: 33, scope: !5991, inlinedAt: !5992)
!6026 = !DILocation(line: 480, column: 23, scope: !5991, inlinedAt: !5992)
!6027 = !DILocation(line: 481, column: 29, scope: !5991, inlinedAt: !5992)
!6028 = !DILocation(line: 481, column: 35, scope: !5991, inlinedAt: !5992)
!6029 = !DILocation(line: 481, column: 42, scope: !5991, inlinedAt: !5992)
!6030 = !DILocation(line: 474, column: 23, scope: !5986, inlinedAt: !5990)
!6031 = !DILocation(line: 474, column: 29, scope: !5986, inlinedAt: !5990)
!6032 = !DILocation(line: 474, column: 36, scope: !5986, inlinedAt: !5990)
!6033 = !DILocation(line: 474, column: 9, scope: !5986, inlinedAt: !5990)
!6034 = !DILocation(line: 545, column: 4, scope: !5993, inlinedAt: !5966)
!6035 = !DILocation(line: 547, column: 25, scope: !5963, inlinedAt: !5966)
!6036 = !DILocation(line: 348, column: 7, scope: !6037, inlinedAt: !5984)
!6037 = distinct !DILexicalBlock(scope: !5980, file: !94, line: 348, column: 6)
!6038 = !DILocation(line: 348, column: 6, scope: !5980, inlinedAt: !5984)
!6039 = !DILocation(line: 349, column: 3, scope: !6037, inlinedAt: !5984)
!6040 = !DILocation(line: 351, column: 6, scope: !6041, inlinedAt: !5984)
!6041 = distinct !DILexicalBlock(scope: !5980, file: !94, line: 351, column: 6)
!6042 = !DILocation(line: 351, column: 11, scope: !6041, inlinedAt: !5984)
!6043 = !DILocation(line: 351, column: 6, scope: !5980, inlinedAt: !5984)
!6044 = !DILocation(line: 352, column: 3, scope: !6041, inlinedAt: !5984)
!6045 = !DILocation(line: 354, column: 32, scope: !6046, inlinedAt: !5984)
!6046 = distinct !DILexicalBlock(scope: !5980, file: !94, line: 354, column: 6)
!6047 = !DILocation(line: 354, column: 37, scope: !6046, inlinedAt: !5984)
!6048 = !DILocation(line: 354, column: 42, scope: !6046, inlinedAt: !5984)
!6049 = !DILocation(line: 354, column: 45, scope: !6046, inlinedAt: !5984)
!6050 = !DILocation(line: 354, column: 50, scope: !6046, inlinedAt: !5984)
!6051 = !DILocation(line: 354, column: 6, scope: !5980, inlinedAt: !5984)
!6052 = !DILocation(line: 355, column: 3, scope: !6046, inlinedAt: !5984)
!6053 = !DILocation(line: 356, column: 32, scope: !6054, inlinedAt: !5984)
!6054 = distinct !DILexicalBlock(scope: !5980, file: !94, line: 356, column: 6)
!6055 = !DILocation(line: 356, column: 37, scope: !6054, inlinedAt: !5984)
!6056 = !DILocation(line: 356, column: 43, scope: !6054, inlinedAt: !5984)
!6057 = !DILocation(line: 356, column: 46, scope: !6054, inlinedAt: !5984)
!6058 = !DILocation(line: 356, column: 51, scope: !6054, inlinedAt: !5984)
!6059 = !DILocation(line: 356, column: 6, scope: !5980, inlinedAt: !5984)
!6060 = !DILocation(line: 357, column: 3, scope: !6054, inlinedAt: !5984)
!6061 = !DILocation(line: 358, column: 6, scope: !6062, inlinedAt: !5984)
!6062 = distinct !DILexicalBlock(scope: !5980, file: !94, line: 358, column: 6)
!6063 = !DILocation(line: 358, column: 11, scope: !6062, inlinedAt: !5984)
!6064 = !DILocation(line: 358, column: 6, scope: !5980, inlinedAt: !5984)
!6065 = !DILocation(line: 358, column: 26, scope: !6062, inlinedAt: !5984)
!6066 = !DILocation(line: 359, column: 6, scope: !6067, inlinedAt: !5984)
!6067 = distinct !DILexicalBlock(scope: !5980, file: !94, line: 359, column: 6)
!6068 = !DILocation(line: 359, column: 11, scope: !6067, inlinedAt: !5984)
!6069 = !DILocation(line: 359, column: 6, scope: !5980, inlinedAt: !5984)
!6070 = !DILocation(line: 359, column: 26, scope: !6067, inlinedAt: !5984)
!6071 = !DILocation(line: 360, column: 6, scope: !6072, inlinedAt: !5984)
!6072 = distinct !DILexicalBlock(scope: !5980, file: !94, line: 360, column: 6)
!6073 = !DILocation(line: 360, column: 11, scope: !6072, inlinedAt: !5984)
!6074 = !DILocation(line: 360, column: 6, scope: !5980, inlinedAt: !5984)
!6075 = !DILocation(line: 360, column: 26, scope: !6072, inlinedAt: !5984)
!6076 = !DILocation(line: 361, column: 6, scope: !6077, inlinedAt: !5984)
!6077 = distinct !DILexicalBlock(scope: !5980, file: !94, line: 361, column: 6)
!6078 = !DILocation(line: 361, column: 11, scope: !6077, inlinedAt: !5984)
!6079 = !DILocation(line: 361, column: 6, scope: !5980, inlinedAt: !5984)
!6080 = !DILocation(line: 361, column: 26, scope: !6077, inlinedAt: !5984)
!6081 = !DILocation(line: 362, column: 6, scope: !6082, inlinedAt: !5984)
!6082 = distinct !DILexicalBlock(scope: !5980, file: !94, line: 362, column: 6)
!6083 = !DILocation(line: 362, column: 11, scope: !6082, inlinedAt: !5984)
!6084 = !DILocation(line: 362, column: 6, scope: !5980, inlinedAt: !5984)
!6085 = !DILocation(line: 362, column: 26, scope: !6082, inlinedAt: !5984)
!6086 = !DILocation(line: 363, column: 6, scope: !6087, inlinedAt: !5984)
!6087 = distinct !DILexicalBlock(scope: !5980, file: !94, line: 363, column: 6)
!6088 = !DILocation(line: 363, column: 11, scope: !6087, inlinedAt: !5984)
!6089 = !DILocation(line: 363, column: 6, scope: !5980, inlinedAt: !5984)
!6090 = !DILocation(line: 363, column: 26, scope: !6087, inlinedAt: !5984)
!6091 = !DILocation(line: 364, column: 6, scope: !6092, inlinedAt: !5984)
!6092 = distinct !DILexicalBlock(scope: !5980, file: !94, line: 364, column: 6)
!6093 = !DILocation(line: 364, column: 11, scope: !6092, inlinedAt: !5984)
!6094 = !DILocation(line: 364, column: 6, scope: !5980, inlinedAt: !5984)
!6095 = !DILocation(line: 364, column: 26, scope: !6092, inlinedAt: !5984)
!6096 = !DILocation(line: 365, column: 6, scope: !6097, inlinedAt: !5984)
!6097 = distinct !DILexicalBlock(scope: !5980, file: !94, line: 365, column: 6)
!6098 = !DILocation(line: 365, column: 11, scope: !6097, inlinedAt: !5984)
!6099 = !DILocation(line: 365, column: 6, scope: !5980, inlinedAt: !5984)
!6100 = !DILocation(line: 365, column: 26, scope: !6097, inlinedAt: !5984)
!6101 = !DILocation(line: 366, column: 6, scope: !6102, inlinedAt: !5984)
!6102 = distinct !DILexicalBlock(scope: !5980, file: !94, line: 366, column: 6)
!6103 = !DILocation(line: 366, column: 11, scope: !6102, inlinedAt: !5984)
!6104 = !DILocation(line: 366, column: 6, scope: !5980, inlinedAt: !5984)
!6105 = !DILocation(line: 366, column: 26, scope: !6102, inlinedAt: !5984)
!6106 = !DILocation(line: 367, column: 6, scope: !6107, inlinedAt: !5984)
!6107 = distinct !DILexicalBlock(scope: !5980, file: !94, line: 367, column: 6)
!6108 = !DILocation(line: 367, column: 11, scope: !6107, inlinedAt: !5984)
!6109 = !DILocation(line: 367, column: 6, scope: !5980, inlinedAt: !5984)
!6110 = !DILocation(line: 367, column: 26, scope: !6107, inlinedAt: !5984)
!6111 = !DILocation(line: 368, column: 6, scope: !6112, inlinedAt: !5984)
!6112 = distinct !DILexicalBlock(scope: !5980, file: !94, line: 368, column: 6)
!6113 = !DILocation(line: 368, column: 11, scope: !6112, inlinedAt: !5984)
!6114 = !DILocation(line: 368, column: 6, scope: !5980, inlinedAt: !5984)
!6115 = !DILocation(line: 368, column: 26, scope: !6112, inlinedAt: !5984)
!6116 = !DILocation(line: 369, column: 6, scope: !6117, inlinedAt: !5984)
!6117 = distinct !DILexicalBlock(scope: !5980, file: !94, line: 369, column: 6)
!6118 = !DILocation(line: 369, column: 11, scope: !6117, inlinedAt: !5984)
!6119 = !DILocation(line: 369, column: 6, scope: !5980, inlinedAt: !5984)
!6120 = !DILocation(line: 369, column: 26, scope: !6117, inlinedAt: !5984)
!6121 = !DILocation(line: 370, column: 6, scope: !6122, inlinedAt: !5984)
!6122 = distinct !DILexicalBlock(scope: !5980, file: !94, line: 370, column: 6)
!6123 = !DILocation(line: 370, column: 11, scope: !6122, inlinedAt: !5984)
!6124 = !DILocation(line: 370, column: 6, scope: !5980, inlinedAt: !5984)
!6125 = !DILocation(line: 370, column: 26, scope: !6122, inlinedAt: !5984)
!6126 = !DILocation(line: 371, column: 6, scope: !6127, inlinedAt: !5984)
!6127 = distinct !DILexicalBlock(scope: !5980, file: !94, line: 371, column: 6)
!6128 = !DILocation(line: 371, column: 11, scope: !6127, inlinedAt: !5984)
!6129 = !DILocation(line: 371, column: 6, scope: !5980, inlinedAt: !5984)
!6130 = !DILocation(line: 371, column: 26, scope: !6127, inlinedAt: !5984)
!6131 = !DILocation(line: 372, column: 6, scope: !6132, inlinedAt: !5984)
!6132 = distinct !DILexicalBlock(scope: !5980, file: !94, line: 372, column: 6)
!6133 = !DILocation(line: 372, column: 11, scope: !6132, inlinedAt: !5984)
!6134 = !DILocation(line: 372, column: 6, scope: !5980, inlinedAt: !5984)
!6135 = !DILocation(line: 372, column: 26, scope: !6132, inlinedAt: !5984)
!6136 = !DILocation(line: 373, column: 6, scope: !6137, inlinedAt: !5984)
!6137 = distinct !DILexicalBlock(scope: !5980, file: !94, line: 373, column: 6)
!6138 = !DILocation(line: 373, column: 11, scope: !6137, inlinedAt: !5984)
!6139 = !DILocation(line: 373, column: 6, scope: !5980, inlinedAt: !5984)
!6140 = !DILocation(line: 373, column: 26, scope: !6137, inlinedAt: !5984)
!6141 = !DILocation(line: 374, column: 6, scope: !6142, inlinedAt: !5984)
!6142 = distinct !DILexicalBlock(scope: !5980, file: !94, line: 374, column: 6)
!6143 = !DILocation(line: 374, column: 11, scope: !6142, inlinedAt: !5984)
!6144 = !DILocation(line: 374, column: 6, scope: !5980, inlinedAt: !5984)
!6145 = !DILocation(line: 374, column: 26, scope: !6142, inlinedAt: !5984)
!6146 = !DILocation(line: 375, column: 6, scope: !6147, inlinedAt: !5984)
!6147 = distinct !DILexicalBlock(scope: !5980, file: !94, line: 375, column: 6)
!6148 = !DILocation(line: 375, column: 11, scope: !6147, inlinedAt: !5984)
!6149 = !DILocation(line: 375, column: 6, scope: !5980, inlinedAt: !5984)
!6150 = !DILocation(line: 375, column: 27, scope: !6147, inlinedAt: !5984)
!6151 = !DILocation(line: 376, column: 6, scope: !6152, inlinedAt: !5984)
!6152 = distinct !DILexicalBlock(scope: !5980, file: !94, line: 376, column: 6)
!6153 = !DILocation(line: 376, column: 11, scope: !6152, inlinedAt: !5984)
!6154 = !DILocation(line: 376, column: 6, scope: !5980, inlinedAt: !5984)
!6155 = !DILocation(line: 376, column: 32, scope: !6152, inlinedAt: !5984)
!6156 = !DILocation(line: 377, column: 6, scope: !6157, inlinedAt: !5984)
!6157 = distinct !DILexicalBlock(scope: !5980, file: !94, line: 377, column: 6)
!6158 = !DILocation(line: 377, column: 11, scope: !6157, inlinedAt: !5984)
!6159 = !DILocation(line: 377, column: 6, scope: !5980, inlinedAt: !5984)
!6160 = !DILocation(line: 377, column: 32, scope: !6157, inlinedAt: !5984)
!6161 = !DILocation(line: 378, column: 6, scope: !6162, inlinedAt: !5984)
!6162 = distinct !DILexicalBlock(scope: !5980, file: !94, line: 378, column: 6)
!6163 = !DILocation(line: 378, column: 11, scope: !6162, inlinedAt: !5984)
!6164 = !DILocation(line: 378, column: 6, scope: !5980, inlinedAt: !5984)
!6165 = !DILocation(line: 378, column: 32, scope: !6162, inlinedAt: !5984)
!6166 = !DILocation(line: 379, column: 6, scope: !6167, inlinedAt: !5984)
!6167 = distinct !DILexicalBlock(scope: !5980, file: !94, line: 379, column: 6)
!6168 = !DILocation(line: 379, column: 11, scope: !6167, inlinedAt: !5984)
!6169 = !DILocation(line: 379, column: 6, scope: !5980, inlinedAt: !5984)
!6170 = !DILocation(line: 379, column: 33, scope: !6167, inlinedAt: !5984)
!6171 = !DILocation(line: 380, column: 6, scope: !6172, inlinedAt: !5984)
!6172 = distinct !DILexicalBlock(scope: !5980, file: !94, line: 380, column: 6)
!6173 = !DILocation(line: 380, column: 11, scope: !6172, inlinedAt: !5984)
!6174 = !DILocation(line: 380, column: 6, scope: !5980, inlinedAt: !5984)
!6175 = !DILocation(line: 380, column: 33, scope: !6172, inlinedAt: !5984)
!6176 = !DILocation(line: 381, column: 6, scope: !6177, inlinedAt: !5984)
!6177 = distinct !DILexicalBlock(scope: !5980, file: !94, line: 381, column: 6)
!6178 = !DILocation(line: 381, column: 11, scope: !6177, inlinedAt: !5984)
!6179 = !DILocation(line: 381, column: 6, scope: !5980, inlinedAt: !5984)
!6180 = !DILocation(line: 381, column: 33, scope: !6177, inlinedAt: !5984)
!6181 = !DILocation(line: 382, column: 2, scope: !6182, inlinedAt: !5984)
!6182 = distinct !DILexicalBlock(scope: !6183, file: !94, line: 382, column: 2)
!6183 = distinct !DILexicalBlock(scope: !5980, file: !94, line: 382, column: 2)
!6184 = !{i32 -2144230629, i32 -2144230600, i32 -2144230554, i32 -2144230496, i32 -2144230442, i32 -2144230388, i32 -2144230333, i32 -2144230302}
!6185 = !DILocation(line: 382, column: 2, scope: !6186, inlinedAt: !5984)
!6186 = distinct !DILexicalBlock(scope: !6187, file: !94, line: 382, column: 2)
!6187 = distinct !DILexicalBlock(scope: !6183, file: !94, line: 382, column: 2)
!6188 = !{i32 -2144229859, i32 -2144229852, i32 -2144229798, i32 -2144229767, i32 -2144229737}
!6189 = !DILocation(line: 382, column: 2, scope: !6187, inlinedAt: !5984)
!6190 = !DILocation(line: 386, column: 1, scope: !5980, inlinedAt: !5984)
!6191 = !DILocation(line: 547, column: 9, scope: !5963, inlinedAt: !5966)
!6192 = !DILocation(line: 549, column: 8, scope: !6193, inlinedAt: !5966)
!6193 = distinct !DILexicalBlock(scope: !5963, file: !94, line: 549, column: 7)
!6194 = !DILocation(line: 549, column: 7, scope: !5963, inlinedAt: !5966)
!6195 = !DILocation(line: 550, column: 4, scope: !6193, inlinedAt: !5966)
!6196 = !DILocation(line: 553, column: 33, scope: !5963, inlinedAt: !5966)
!6197 = !DILocation(line: 325, column: 6, scope: !6198, inlinedAt: !5978)
!6198 = distinct !DILexicalBlock(scope: !5974, file: !94, line: 325, column: 6)
!6199 = !DILocation(line: 325, column: 6, scope: !5974, inlinedAt: !5978)
!6200 = !DILocation(line: 326, column: 3, scope: !6198, inlinedAt: !5978)
!6201 = !DILocation(line: 332, column: 9, scope: !5974, inlinedAt: !5978)
!6202 = !DILocation(line: 332, column: 15, scope: !5974, inlinedAt: !5978)
!6203 = !DILocation(line: 332, column: 2, scope: !5974, inlinedAt: !5978)
!6204 = !DILocation(line: 336, column: 1, scope: !5974, inlinedAt: !5978)
!6205 = !DILocation(line: 553, column: 5, scope: !5963, inlinedAt: !5966)
!6206 = !DILocation(line: 553, column: 41, scope: !5963, inlinedAt: !5966)
!6207 = !DILocation(line: 554, column: 5, scope: !5963, inlinedAt: !5966)
!6208 = !DILocation(line: 554, column: 12, scope: !5963, inlinedAt: !5966)
!6209 = !DILocation(line: 448, column: 31, scope: !5958, inlinedAt: !5962)
!6210 = !DILocation(line: 448, column: 34, scope: !5958, inlinedAt: !5962)
!6211 = !DILocation(line: 448, column: 14, scope: !5958, inlinedAt: !5962)
!6212 = !DILocation(line: 450, column: 22, scope: !5958, inlinedAt: !5962)
!6213 = !DILocation(line: 450, column: 25, scope: !5958, inlinedAt: !5962)
!6214 = !DILocation(line: 450, column: 30, scope: !5958, inlinedAt: !5962)
!6215 = !DILocation(line: 450, column: 36, scope: !5958, inlinedAt: !5962)
!6216 = !DILocation(line: 450, column: 8, scope: !5958, inlinedAt: !5962)
!6217 = !DILocation(line: 450, column: 6, scope: !5958, inlinedAt: !5962)
!6218 = !DILocation(line: 451, column: 9, scope: !5958, inlinedAt: !5962)
!6219 = !DILocation(line: 552, column: 3, scope: !5963, inlinedAt: !5966)
!6220 = !DILocation(line: 557, column: 19, scope: !5965, inlinedAt: !5966)
!6221 = !DILocation(line: 557, column: 25, scope: !5965, inlinedAt: !5966)
!6222 = !DILocation(line: 557, column: 9, scope: !5965, inlinedAt: !5966)
!6223 = !DILocation(line: 557, column: 2, scope: !5965, inlinedAt: !5966)
!6224 = !DILocation(line: 558, column: 1, scope: !5965, inlinedAt: !5966)
!6225 = !DILocation(line: 664, column: 2, scope: !5954)
!6226 = distinct !DISubprogram(name: "list_add_tail", scope: !4333, file: !4333, line: 98, type: !6227, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!6227 = !DISubroutineType(types: !6228)
!6228 = !{null, !122, !122}
!6229 = !DILocalVariable(name: "new", arg: 1, scope: !6226, file: !4333, line: 98, type: !122)
!6230 = !DILocation(line: 98, column: 52, scope: !6226)
!6231 = !DILocalVariable(name: "head", arg: 2, scope: !6226, file: !4333, line: 98, type: !122)
!6232 = !DILocation(line: 98, column: 75, scope: !6226)
!6233 = !DILocation(line: 100, column: 13, scope: !6226)
!6234 = !DILocation(line: 100, column: 18, scope: !6226)
!6235 = !DILocation(line: 100, column: 24, scope: !6226)
!6236 = !DILocation(line: 100, column: 30, scope: !6226)
!6237 = !DILocation(line: 100, column: 2, scope: !6226)
!6238 = !DILocation(line: 101, column: 1, scope: !6226)
!6239 = distinct !DISubprogram(name: "get_order", scope: !6240, file: !6240, line: 29, type: !6241, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!6240 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!6241 = !DISubroutineType(types: !6242)
!6242 = !{!221, !126}
!6243 = !DILocalVariable(name: "x", arg: 1, scope: !6244, file: !4088, line: 366, type: !138)
!6244 = distinct !DISubprogram(name: "fls64", scope: !4088, file: !4088, line: 366, type: !6245, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!6245 = !DISubroutineType(types: !6246)
!6246 = !{!221, !138}
!6247 = !DILocation(line: 366, column: 40, scope: !6244, inlinedAt: !6248)
!6248 = distinct !DILocation(line: 46, column: 9, scope: !6239)
!6249 = !DILocalVariable(name: "bitpos", scope: !6244, file: !4088, line: 368, type: !221)
!6250 = !DILocation(line: 368, column: 6, scope: !6244, inlinedAt: !6248)
!6251 = !DILocalVariable(name: "size", arg: 1, scope: !6239, file: !6240, line: 29, type: !126)
!6252 = !DILocation(line: 29, column: 63, scope: !6239)
!6253 = !DILocation(line: 31, column: 27, scope: !6254)
!6254 = distinct !DILexicalBlock(scope: !6239, file: !6240, line: 31, column: 6)
!6255 = !DILocation(line: 31, column: 6, scope: !6254)
!6256 = !DILocation(line: 31, column: 6, scope: !6239)
!6257 = !DILocation(line: 32, column: 8, scope: !6258)
!6258 = distinct !DILexicalBlock(scope: !6259, file: !6240, line: 32, column: 7)
!6259 = distinct !DILexicalBlock(scope: !6254, file: !6240, line: 31, column: 34)
!6260 = !DILocation(line: 32, column: 7, scope: !6259)
!6261 = !DILocation(line: 33, column: 4, scope: !6258)
!6262 = !DILocation(line: 35, column: 7, scope: !6263)
!6263 = distinct !DILexicalBlock(scope: !6259, file: !6240, line: 35, column: 7)
!6264 = !DILocation(line: 35, column: 12, scope: !6263)
!6265 = !DILocation(line: 35, column: 7, scope: !6259)
!6266 = !DILocation(line: 36, column: 4, scope: !6263)
!6267 = !DILocation(line: 38, column: 10, scope: !6259)
!6268 = !DILocation(line: 38, column: 28, scope: !6259)
!6269 = !DILocation(line: 38, column: 41, scope: !6259)
!6270 = !DILocation(line: 38, column: 3, scope: !6259)
!6271 = !DILocation(line: 41, column: 6, scope: !6239)
!6272 = !DILocation(line: 42, column: 7, scope: !6239)
!6273 = !DILocation(line: 46, column: 15, scope: !6239)
!6274 = !DILocation(line: 374, column: 2, scope: !6244, inlinedAt: !6248)
!6275 = !DILocation(line: 376, column: 14, scope: !6244, inlinedAt: !6248)
!6276 = !{i32 313696}
!6277 = !DILocation(line: 377, column: 9, scope: !6244, inlinedAt: !6248)
!6278 = !DILocation(line: 377, column: 16, scope: !6244, inlinedAt: !6248)
!6279 = !DILocation(line: 46, column: 2, scope: !6239)
!6280 = !DILocation(line: 48, column: 1, scope: !6239)
!6281 = distinct !DISubprogram(name: "__ilog2_u64", scope: !6282, file: !6282, line: 30, type: !6283, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!6282 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!6283 = !DISubroutineType(types: !6284)
!6284 = !{!221, !136}
!6285 = !DILocation(line: 366, column: 40, scope: !6244, inlinedAt: !6286)
!6286 = distinct !DILocation(line: 32, column: 9, scope: !6281)
!6287 = !DILocation(line: 368, column: 6, scope: !6244, inlinedAt: !6286)
!6288 = !DILocalVariable(name: "n", arg: 1, scope: !6281, file: !6282, line: 30, type: !136)
!6289 = !DILocation(line: 30, column: 21, scope: !6281)
!6290 = !DILocation(line: 32, column: 15, scope: !6281)
!6291 = !DILocation(line: 374, column: 2, scope: !6244, inlinedAt: !6286)
!6292 = !DILocation(line: 376, column: 14, scope: !6244, inlinedAt: !6286)
!6293 = !DILocation(line: 377, column: 9, scope: !6244, inlinedAt: !6286)
!6294 = !DILocation(line: 377, column: 16, scope: !6244, inlinedAt: !6286)
!6295 = !DILocation(line: 32, column: 18, scope: !6281)
!6296 = !DILocation(line: 32, column: 2, scope: !6281)
!6297 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !6298, file: !6298, line: 137, type: !6299, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!6298 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!6299 = !DISubroutineType(types: !6300)
!6300 = !{!112, !895, !2086, !284, !703}
!6301 = !DILocalVariable(name: "s", arg: 1, scope: !6297, file: !6298, line: 137, type: !895)
!6302 = !DILocation(line: 137, column: 54, scope: !6297)
!6303 = !DILocalVariable(name: "object", arg: 2, scope: !6297, file: !6298, line: 137, type: !2086)
!6304 = !DILocation(line: 137, column: 69, scope: !6297)
!6305 = !DILocalVariable(name: "size", arg: 3, scope: !6297, file: !6298, line: 138, type: !284)
!6306 = !DILocation(line: 138, column: 12, scope: !6297)
!6307 = !DILocalVariable(name: "flags", arg: 4, scope: !6297, file: !6298, line: 138, type: !703)
!6308 = !DILocation(line: 138, column: 24, scope: !6297)
!6309 = !DILocation(line: 140, column: 17, scope: !6297)
!6310 = !DILocation(line: 140, column: 2, scope: !6297)
!6311 = distinct !DISubprogram(name: "__list_add", scope: !4333, file: !4333, line: 63, type: !6312, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!6312 = !DISubroutineType(types: !6313)
!6313 = !{null, !122, !122, !122}
!6314 = !DILocalVariable(name: "new", arg: 1, scope: !6311, file: !4333, line: 63, type: !122)
!6315 = !DILocation(line: 63, column: 49, scope: !6311)
!6316 = !DILocalVariable(name: "prev", arg: 2, scope: !6311, file: !4333, line: 64, type: !122)
!6317 = !DILocation(line: 64, column: 28, scope: !6311)
!6318 = !DILocalVariable(name: "next", arg: 3, scope: !6311, file: !4333, line: 65, type: !122)
!6319 = !DILocation(line: 65, column: 28, scope: !6311)
!6320 = !DILocation(line: 67, column: 24, scope: !6321)
!6321 = distinct !DILexicalBlock(scope: !6311, file: !4333, line: 67, column: 6)
!6322 = !DILocation(line: 67, column: 29, scope: !6321)
!6323 = !DILocation(line: 67, column: 35, scope: !6321)
!6324 = !DILocation(line: 67, column: 7, scope: !6321)
!6325 = !DILocation(line: 67, column: 6, scope: !6311)
!6326 = !DILocation(line: 68, column: 3, scope: !6321)
!6327 = !DILocation(line: 70, column: 15, scope: !6311)
!6328 = !DILocation(line: 70, column: 2, scope: !6311)
!6329 = !DILocation(line: 70, column: 8, scope: !6311)
!6330 = !DILocation(line: 70, column: 13, scope: !6311)
!6331 = !DILocation(line: 71, column: 14, scope: !6311)
!6332 = !DILocation(line: 71, column: 2, scope: !6311)
!6333 = !DILocation(line: 71, column: 7, scope: !6311)
!6334 = !DILocation(line: 71, column: 12, scope: !6311)
!6335 = !DILocation(line: 72, column: 14, scope: !6311)
!6336 = !DILocation(line: 72, column: 2, scope: !6311)
!6337 = !DILocation(line: 72, column: 7, scope: !6311)
!6338 = !DILocation(line: 72, column: 12, scope: !6311)
!6339 = !DILocation(line: 73, column: 2, scope: !6311)
!6340 = !DILocation(line: 73, column: 2, scope: !6341)
!6341 = distinct !DILexicalBlock(scope: !6311, file: !4333, line: 73, column: 2)
!6342 = !DILocation(line: 73, column: 2, scope: !6343)
!6343 = distinct !DILexicalBlock(scope: !6341, file: !4333, line: 73, column: 2)
!6344 = !DILocation(line: 73, column: 2, scope: !6345)
!6345 = distinct !DILexicalBlock(scope: !6341, file: !4333, line: 73, column: 2)
!6346 = !DILocation(line: 74, column: 1, scope: !6311)
!6347 = distinct !DISubprogram(name: "__list_add_valid", scope: !4333, file: !4333, line: 45, type: !6348, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!6348 = !DISubroutineType(types: !6349)
!6349 = !{!446, !122, !122, !122}
!6350 = !DILocalVariable(name: "new", arg: 1, scope: !6347, file: !4333, line: 45, type: !122)
!6351 = !DILocation(line: 45, column: 55, scope: !6347)
!6352 = !DILocalVariable(name: "prev", arg: 2, scope: !6347, file: !4333, line: 46, type: !122)
!6353 = !DILocation(line: 46, column: 23, scope: !6347)
!6354 = !DILocalVariable(name: "next", arg: 3, scope: !6347, file: !4333, line: 47, type: !122)
!6355 = !DILocation(line: 47, column: 23, scope: !6347)
!6356 = !DILocation(line: 49, column: 2, scope: !6347)
!6357 = distinct !DISubprogram(name: "kasan_check_read", scope: !6358, file: !6358, line: 34, type: !6359, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!6358 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!6359 = !DISubroutineType(types: !6360)
!6360 = !{!446, !4106, !7}
!6361 = !DILocalVariable(name: "p", arg: 1, scope: !6357, file: !6358, line: 34, type: !4106)
!6362 = !DILocation(line: 34, column: 58, scope: !6357)
!6363 = !DILocalVariable(name: "size", arg: 2, scope: !6357, file: !6358, line: 34, type: !7)
!6364 = !DILocation(line: 34, column: 74, scope: !6357)
!6365 = !DILocation(line: 36, column: 2, scope: !6357)
!6366 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6367, file: !6367, line: 178, type: !6368, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!6367 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!6368 = !DISubroutineType(types: !6369)
!6369 = !{null, !4106, !284, !221}
!6370 = !DILocalVariable(name: "ptr", arg: 1, scope: !6366, file: !6367, line: 178, type: !4106)
!6371 = !DILocation(line: 178, column: 60, scope: !6366)
!6372 = !DILocalVariable(name: "size", arg: 2, scope: !6366, file: !6367, line: 178, type: !284)
!6373 = !DILocation(line: 178, column: 72, scope: !6366)
!6374 = !DILocalVariable(name: "type", arg: 3, scope: !6366, file: !6367, line: 179, type: !221)
!6375 = !DILocation(line: 179, column: 15, scope: !6366)
!6376 = !DILocation(line: 179, column: 23, scope: !6366)
!6377 = distinct !DISubprogram(name: "__list_del_entry", scope: !4333, file: !4333, line: 130, type: !4334, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!6378 = !DILocalVariable(name: "entry", arg: 1, scope: !6377, file: !4333, line: 130, type: !122)
!6379 = !DILocation(line: 130, column: 55, scope: !6377)
!6380 = !DILocation(line: 132, column: 30, scope: !6381)
!6381 = distinct !DILexicalBlock(scope: !6377, file: !4333, line: 132, column: 6)
!6382 = !DILocation(line: 132, column: 7, scope: !6381)
!6383 = !DILocation(line: 132, column: 6, scope: !6377)
!6384 = !DILocation(line: 133, column: 3, scope: !6381)
!6385 = !DILocation(line: 135, column: 13, scope: !6377)
!6386 = !DILocation(line: 135, column: 20, scope: !6377)
!6387 = !DILocation(line: 135, column: 26, scope: !6377)
!6388 = !DILocation(line: 135, column: 33, scope: !6377)
!6389 = !DILocation(line: 135, column: 2, scope: !6377)
!6390 = !DILocation(line: 136, column: 1, scope: !6377)
!6391 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !4333, file: !4333, line: 51, type: !6392, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!6392 = !DISubroutineType(types: !6393)
!6393 = !{!446, !122}
!6394 = !DILocalVariable(name: "entry", arg: 1, scope: !6391, file: !4333, line: 51, type: !122)
!6395 = !DILocation(line: 51, column: 61, scope: !6391)
!6396 = !DILocation(line: 53, column: 2, scope: !6391)
!6397 = distinct !DISubprogram(name: "__list_del", scope: !4333, file: !4333, line: 110, type: !6227, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!6398 = !DILocalVariable(name: "prev", arg: 1, scope: !6397, file: !4333, line: 110, type: !122)
!6399 = !DILocation(line: 110, column: 50, scope: !6397)
!6400 = !DILocalVariable(name: "next", arg: 2, scope: !6397, file: !4333, line: 110, type: !122)
!6401 = !DILocation(line: 110, column: 75, scope: !6397)
!6402 = !DILocation(line: 112, column: 15, scope: !6397)
!6403 = !DILocation(line: 112, column: 2, scope: !6397)
!6404 = !DILocation(line: 112, column: 8, scope: !6397)
!6405 = !DILocation(line: 112, column: 13, scope: !6397)
!6406 = !DILocation(line: 113, column: 2, scope: !6397)
!6407 = !DILocation(line: 113, column: 2, scope: !6408)
!6408 = distinct !DILexicalBlock(scope: !6397, file: !4333, line: 113, column: 2)
!6409 = !DILocation(line: 113, column: 2, scope: !6410)
!6410 = distinct !DILexicalBlock(scope: !6408, file: !4333, line: 113, column: 2)
!6411 = !DILocation(line: 113, column: 2, scope: !6412)
!6412 = distinct !DILexicalBlock(scope: !6408, file: !4333, line: 113, column: 2)
!6413 = !DILocation(line: 114, column: 1, scope: !6397)
!6414 = distinct !DISubprogram(name: "pci_dev_uses_irq", scope: !3, file: !3, line: 298, type: !6415, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!6415 = !DISubroutineType(types: !6416)
!6416 = !{!221, !171, !4918, !7}
!6417 = !DILocalVariable(name: "pnp", arg: 1, scope: !6414, file: !3, line: 298, type: !171)
!6418 = !DILocation(line: 298, column: 45, scope: !6414)
!6419 = !DILocalVariable(name: "pci", arg: 2, scope: !6414, file: !3, line: 298, type: !4918)
!6420 = !DILocation(line: 298, column: 66, scope: !6414)
!6421 = !DILocalVariable(name: "irq", arg: 3, scope: !6414, file: !3, line: 299, type: !7)
!6422 = !DILocation(line: 299, column: 21, scope: !6414)
!6423 = !DILocalVariable(name: "class", scope: !6414, file: !3, line: 301, type: !377)
!6424 = !DILocation(line: 301, column: 6, scope: !6414)
!6425 = !DILocalVariable(name: "progif", scope: !6414, file: !3, line: 302, type: !1310)
!6426 = !DILocation(line: 302, column: 5, scope: !6414)
!6427 = !DILocation(line: 304, column: 6, scope: !6428)
!6428 = distinct !DILexicalBlock(scope: !6414, file: !3, line: 304, column: 6)
!6429 = !DILocation(line: 304, column: 11, scope: !6428)
!6430 = !DILocation(line: 304, column: 18, scope: !6428)
!6431 = !DILocation(line: 304, column: 15, scope: !6428)
!6432 = !DILocation(line: 304, column: 6, scope: !6414)
!6433 = !DILocation(line: 305, column: 3, scope: !6434)
!6434 = distinct !DILexicalBlock(scope: !6435, file: !3, line: 305, column: 3)
!6435 = distinct !DILexicalBlock(scope: !6436, file: !3, line: 305, column: 3)
!6436 = distinct !DILexicalBlock(scope: !6428, file: !3, line: 304, column: 23)
!6437 = !DILocation(line: 305, column: 3, scope: !6435)
!6438 = !DILocation(line: 307, column: 3, scope: !6436)
!6439 = !DILocation(line: 314, column: 24, scope: !6414)
!6440 = !DILocation(line: 314, column: 2, scope: !6414)
!6441 = !DILocation(line: 315, column: 8, scope: !6414)
!6442 = !DILocation(line: 316, column: 11, scope: !6414)
!6443 = !DILocation(line: 316, column: 17, scope: !6414)
!6444 = !DILocation(line: 316, column: 9, scope: !6414)
!6445 = !DILocation(line: 317, column: 8, scope: !6414)
!6446 = !DILocation(line: 319, column: 6, scope: !6447)
!6447 = distinct !DILexicalBlock(scope: !6414, file: !3, line: 319, column: 6)
!6448 = !DILocation(line: 319, column: 12, scope: !6447)
!6449 = !DILocation(line: 319, column: 6, scope: !6414)
!6450 = !DILocation(line: 324, column: 8, scope: !6451)
!6451 = distinct !DILexicalBlock(scope: !6452, file: !3, line: 324, column: 7)
!6452 = distinct !DILexicalBlock(scope: !6447, file: !3, line: 319, column: 38)
!6453 = !DILocation(line: 324, column: 15, scope: !6451)
!6454 = !DILocation(line: 324, column: 22, scope: !6451)
!6455 = !DILocation(line: 324, column: 7, scope: !6452)
!6456 = !DILocation(line: 325, column: 31, scope: !6457)
!6457 = distinct !DILexicalBlock(scope: !6451, file: !3, line: 325, column: 8)
!6458 = !DILocation(line: 325, column: 8, scope: !6457)
!6459 = !DILocation(line: 325, column: 42, scope: !6457)
!6460 = !DILocation(line: 325, column: 39, scope: !6457)
!6461 = !DILocation(line: 325, column: 46, scope: !6457)
!6462 = !DILocation(line: 326, column: 31, scope: !6457)
!6463 = !DILocation(line: 326, column: 8, scope: !6457)
!6464 = !DILocation(line: 326, column: 42, scope: !6457)
!6465 = !DILocation(line: 326, column: 39, scope: !6457)
!6466 = !DILocation(line: 325, column: 8, scope: !6451)
!6467 = !DILocation(line: 327, column: 5, scope: !6468)
!6468 = distinct !DILexicalBlock(scope: !6469, file: !3, line: 327, column: 5)
!6469 = distinct !DILexicalBlock(scope: !6470, file: !3, line: 327, column: 5)
!6470 = distinct !DILexicalBlock(scope: !6457, file: !3, line: 326, column: 47)
!6471 = !DILocation(line: 327, column: 5, scope: !6469)
!6472 = !DILocation(line: 329, column: 5, scope: !6470)
!6473 = !DILocation(line: 331, column: 2, scope: !6452)
!6474 = !DILocation(line: 333, column: 2, scope: !6414)
!6475 = !DILocation(line: 334, column: 1, scope: !6414)
!6476 = distinct !DISubprogram(name: "pci_name", scope: !4920, file: !4920, line: 1875, type: !6477, scopeLine: 1876, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!6477 = !DISubroutineType(types: !6478)
!6478 = !{!183, !6479}
!6479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6480, size: 64)
!6480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4919)
!6481 = !DILocalVariable(name: "pdev", arg: 1, scope: !6476, file: !4920, line: 1875, type: !6479)
!6482 = !DILocation(line: 1875, column: 58, scope: !6476)
!6483 = !DILocation(line: 1877, column: 19, scope: !6476)
!6484 = !DILocation(line: 1877, column: 25, scope: !6476)
!6485 = !DILocation(line: 1877, column: 9, scope: !6476)
!6486 = !DILocation(line: 1877, column: 2, scope: !6476)
!6487 = distinct !DISubprogram(name: "pci_get_legacy_ide_irq", scope: !6488, file: !6488, line: 11, type: !5049, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!6488 = !DIFile(filename: "./include/asm-generic/pci.h", directory: "/home/lizy2001/genbc/linux")
!6489 = !DILocalVariable(name: "dev", arg: 1, scope: !6487, file: !6488, line: 11, type: !4918)
!6490 = !DILocation(line: 11, column: 58, scope: !6487)
!6491 = !DILocalVariable(name: "channel", arg: 2, scope: !6487, file: !6488, line: 11, type: !221)
!6492 = !DILocation(line: 11, column: 67, scope: !6487)
!6493 = !DILocation(line: 13, column: 9, scope: !6487)
!6494 = !DILocation(line: 13, column: 2, scope: !6487)
!6495 = distinct !DISubprogram(name: "dev_name", scope: !73, file: !73, line: 609, type: !6496, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!6496 = !DISubroutineType(types: !6497)
!6497 = !{!183, !3669}
!6498 = !DILocalVariable(name: "dev", arg: 1, scope: !6495, file: !73, line: 609, type: !3669)
!6499 = !DILocation(line: 609, column: 57, scope: !6495)
!6500 = !DILocation(line: 612, column: 6, scope: !6501)
!6501 = distinct !DILexicalBlock(scope: !6495, file: !73, line: 612, column: 6)
!6502 = !DILocation(line: 612, column: 11, scope: !6501)
!6503 = !DILocation(line: 612, column: 6, scope: !6495)
!6504 = !DILocation(line: 613, column: 10, scope: !6501)
!6505 = !DILocation(line: 613, column: 15, scope: !6501)
!6506 = !DILocation(line: 613, column: 3, scope: !6501)
!6507 = !DILocation(line: 615, column: 23, scope: !6495)
!6508 = !DILocation(line: 615, column: 28, scope: !6495)
!6509 = !DILocation(line: 615, column: 9, scope: !6495)
!6510 = !DILocation(line: 615, column: 2, scope: !6495)
!6511 = !DILocation(line: 616, column: 1, scope: !6495)
!6512 = distinct !DISubprogram(name: "kobject_name", scope: !180, file: !180, line: 88, type: !6513, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!6513 = !DISubroutineType(types: !6514)
!6514 = !{!183, !6515}
!6515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6516, size: 64)
!6516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!6517 = !DILocalVariable(name: "kobj", arg: 1, scope: !6512, file: !180, line: 88, type: !6515)
!6518 = !DILocation(line: 88, column: 62, scope: !6512)
!6519 = !DILocation(line: 90, column: 9, scope: !6512)
!6520 = !DILocation(line: 90, column: 15, scope: !6512)
!6521 = !DILocation(line: 90, column: 2, scope: !6512)
