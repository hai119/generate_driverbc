; ModuleID = '../bcout/drivers/pnp/quirks.llvm.bc'
source_filename = "drivers/pnp/quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.pnp_fixup = type { [7 x i8], void (%struct.pnp_dev*)* }
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
%struct.pnp_driver = type { i8*, %struct.pnp_device_id*, i32, i32 (%struct.pnp_dev*, %struct.pnp_device_id*)*, {}*, {}*, i32 (%struct.pnp_dev*, i32)*, i32 (%struct.pnp_dev*)*, %struct.device_driver }
%struct.pnp_device_id = type { [8 x i8], i64 }
%struct.pnp_card_link = type { %struct.pnp_card*, %struct.pnp_card_driver*, i8*, %struct.pm_message }
%struct.pnp_card_driver = type { %struct.list_head, i8*, %struct.pnp_card_device_id*, i32, i32 (%struct.pnp_card_link*, %struct.pnp_card_device_id*)*, void (%struct.pnp_card_link*)*, i32 (%struct.pnp_card_link*, i32)*, i32 (%struct.pnp_card_link*)*, %struct.pnp_driver }
%struct.pnp_card_device_id = type { [8 x i8], i64, [8 x %struct.anon.65] }
%struct.anon.65 = type { [8 x i8] }
%struct.pnp_id = type { [8 x i8], %struct.pnp_id* }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.proc_dir_entry = type opaque
%struct.kmem_cache = type opaque
%struct.pnp_option = type { %struct.list_head, i32, i64, %union.anon.66 }
%union.anon.66 = type { %struct.pnp_port }
%struct.pnp_port = type { i64, i64, i64, i64, i8 }
%struct.pnp_irq = type { %struct.pnp_irq_mask_t, i8 }
%struct.pnp_irq_mask_t = type { [4 x i64] }
%struct.pnp_dma = type { i8, i8 }
%struct.pci_dev = type <{ %struct.list_head, %struct.pci_bus*, %struct.pci_bus*, i8*, %struct.proc_dir_entry*, %struct.pci_slot*, i32, i16, i16, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, [6 x i8], i64*, %struct.pci_driver*, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, [4 x i8], %struct.pcie_link_state*, i8, [3 x i8], i32, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], [4 x i8], %struct.hlist_head, %struct.bin_attribute*, i32, [4 x i8], [17 x %struct.bin_attribute*], [17 x %struct.bin_attribute*], %struct.attribute_group**, %struct.pci_vpd*, %union.anon.67, i16, i8, i8, i16, [2 x i8], i64, i64, i8*, i64 }>
%struct.pci_bus = type { %struct.list_head, %struct.pci_bus*, %struct.list_head, %struct.list_head, %struct.pci_dev*, %struct.list_head, [4 x %struct.resource*], %struct.list_head, %struct.resource, %struct.pci_ops*, %struct.msi_controller*, i8*, %struct.proc_dir_entry*, i8, i8, i8, i8, [48 x i8], i16, i16, %struct.device*, %struct.device, %struct.bin_attribute*, %struct.bin_attribute*, i8 }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
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
%struct.pnp_resource = type { %struct.list_head, %struct.resource }
%struct.pci_bus_region = type { i64, i64 }

@pnp_fixups = internal global [19 x %struct.pnp_fixup] [%struct.pnp_fixup { [7 x i8] c"CTL0021", void (%struct.pnp_dev*)* @quirk_awe32_resources }, %struct.pnp_fixup { [7 x i8] c"CTL0022", void (%struct.pnp_dev*)* @quirk_awe32_resources }, %struct.pnp_fixup { [7 x i8] c"CTL0023", void (%struct.pnp_dev*)* @quirk_awe32_resources }, %struct.pnp_fixup { [7 x i8] c"@X@0001", void (%struct.pnp_dev*)* @quirk_cmi8330_resources }, %struct.pnp_fixup { [7 x i8] c"CTL0001", void (%struct.pnp_dev*)* @quirk_sb16audio_resources }, %struct.pnp_fixup { [7 x i8] c"CTL0031", void (%struct.pnp_dev*)* @quirk_sb16audio_resources }, %struct.pnp_fixup { [7 x i8] c"CTL0041", void (%struct.pnp_dev*)* @quirk_sb16audio_resources }, %struct.pnp_fixup { [7 x i8] c"CTL0042", void (%struct.pnp_dev*)* @quirk_sb16audio_resources }, %struct.pnp_fixup { [7 x i8] c"CTL0043", void (%struct.pnp_dev*)* @quirk_sb16audio_resources }, %struct.pnp_fixup { [7 x i8] c"CTL0044", void (%struct.pnp_dev*)* @quirk_sb16audio_resources }, %struct.pnp_fixup { [7 x i8] c"CTL0045", void (%struct.pnp_dev*)* @quirk_sb16audio_resources }, %struct.pnp_fixup { [7 x i8] c"ADS7151", void (%struct.pnp_dev*)* @quirk_ad1815_mpu_resources }, %struct.pnp_fixup { [7 x i8] c"ADS7181", void (%struct.pnp_dev*)* @quirk_add_irq_optional_dependent_sets }, %struct.pnp_fixup { [7 x i8] c"AZT0002", void (%struct.pnp_dev*)* @quirk_add_irq_optional_dependent_sets }, %struct.pnp_fixup { [7 x i8] c"PNP0c01", void (%struct.pnp_dev*)* @quirk_system_pci_resources }, %struct.pnp_fixup { [7 x i8] c"PNP0c02", void (%struct.pnp_dev*)* @quirk_system_pci_resources }, %struct.pnp_fixup { [7 x i8] c"PNP0c01", void (%struct.pnp_dev*)* @quirk_amd_mmconfig_area }, %struct.pnp_fixup { [7 x i8] c"PNP0c02", void (%struct.pnp_dev*)* @quirk_intel_mch }, %struct.pnp_fixup zeroinitializer], align 16, !dbg !0
@pnp_debug = external dso_local global i32, align 4
@.str = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"%s: calling %pS\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"couldn't add ioport region to option set %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"added ioport region %#llx-%#llx to set %d\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"set possible IRQs in option set %d to 5, 7, 10\0A\00", align 1
@.str.6 = private unnamed_addr constant [79 x i8] c"changing possible DMA channel mask in option set %d from %#02x to 0x0A (1, 3)\0A\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"increased option port range from %#llx-%#llx to %#llx-%#llx\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"made independent IRQ optional\0A\00", align 1
@.str.9 = private unnamed_addr constant [68 x i8] c"added dependent option set %d (same as set %d except IRQ optional)\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"no dependent option sets\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"couldn't clone dependent set %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"invalid dependent option priority %d clipped to %d\00", align 1
@.str.13 = private unnamed_addr constant [49 x i8] c"disabling %pR because it overlaps %s BAR %d %pR\0A\00", align 1
@.str.14 = private unnamed_addr constant [89 x i8] c"[Firmware Bug]: %pR covers only part of AMD MMCONFIG area %pR; adding more reservations\0A\00", align 1
@.str.15 = private unnamed_addr constant [85 x i8] c"[Firmware Bug]: PNP resource %pR covers only part of %s Intel MCH; extending to %pR\0A\00", align 1
@mch_quirk_devices = internal constant [4 x i32] [i32 340, i32 2564, i32 3072, i32 5636], align 16, !dbg !205

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pnp_fixup_device(%struct.pnp_dev* %dev) #0 !dbg !3945 {
entry:
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %f = alloca %struct.pnp_fixup*, align 8
  %tmp = alloca i32, align 4
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !3946, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.declare(metadata %struct.pnp_fixup** %f, metadata !3948, metadata !DIExpression()), !dbg !3950
  store %struct.pnp_fixup* getelementptr inbounds ([19 x %struct.pnp_fixup], [19 x %struct.pnp_fixup]* @pnp_fixups, i64 0, i64 0), %struct.pnp_fixup** %f, align 8, !dbg !3951
  br label %for.cond, !dbg !3953

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.pnp_fixup*, %struct.pnp_fixup** %f, align 8, !dbg !3954
  %id = getelementptr inbounds %struct.pnp_fixup, %struct.pnp_fixup* %0, i32 0, i32 0, !dbg !3956
  %arraydecay = getelementptr inbounds [7 x i8], [7 x i8]* %id, i64 0, i64 0, !dbg !3957
  %1 = load i8, i8* %arraydecay, align 8, !dbg !3957
  %tobool = icmp ne i8 %1, 0, !dbg !3958
  br i1 %tobool, label %for.body, label %for.end, !dbg !3958

for.body:                                         ; preds = %for.cond
  %2 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !3959
  %id1 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %2, i32 0, i32 12, !dbg !3962
  %3 = load %struct.pnp_id*, %struct.pnp_id** %id1, align 8, !dbg !3962
  %4 = load %struct.pnp_fixup*, %struct.pnp_fixup** %f, align 8, !dbg !3963
  %id2 = getelementptr inbounds %struct.pnp_fixup, %struct.pnp_fixup* %4, i32 0, i32 0, !dbg !3964
  %arraydecay3 = getelementptr inbounds [7 x i8], [7 x i8]* %id2, i64 0, i64 0, !dbg !3963
  %call = call i32 @compare_pnp_id(%struct.pnp_id* %3, i8* %arraydecay3) #8, !dbg !3965
  %tobool4 = icmp ne i32 %call, 0, !dbg !3965
  br i1 %tobool4, label %if.end, label %if.then, !dbg !3966

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !3967

if.end:                                           ; preds = %for.body
  %5 = load i32, i32* @pnp_debug, align 4, !dbg !3968
  %tobool5 = icmp ne i32 %5, 0, !dbg !3968
  br i1 %tobool5, label %if.then6, label %if.end10, !dbg !3971

if.then6:                                         ; preds = %if.end
  %6 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !3968
  %dev7 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %6, i32 0, i32 0, !dbg !3968
  %7 = load %struct.pnp_fixup*, %struct.pnp_fixup** %f, align 8, !dbg !3968
  %id8 = getelementptr inbounds %struct.pnp_fixup, %struct.pnp_fixup* %7, i32 0, i32 0, !dbg !3968
  %arraydecay9 = getelementptr inbounds [7 x i8], [7 x i8]* %id8, i64 0, i64 0, !dbg !3968
  %8 = load %struct.pnp_fixup*, %struct.pnp_fixup** %f, align 8, !dbg !3968
  %quirk_function = getelementptr inbounds %struct.pnp_fixup, %struct.pnp_fixup* %8, i32 0, i32 1, !dbg !3968
  %9 = load void (%struct.pnp_dev*)*, void (%struct.pnp_dev*)** %quirk_function, align 8, !dbg !3968
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.device* %dev7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %arraydecay9, void (%struct.pnp_dev*)* %9) #9, !dbg !3968
  br label %if.end10, !dbg !3968

if.end10:                                         ; preds = %if.then6, %if.end
  store i32 0, i32* %tmp, align 4, !dbg !3968
  %10 = load i32, i32* %tmp, align 4, !dbg !3971
  %11 = load %struct.pnp_fixup*, %struct.pnp_fixup** %f, align 8, !dbg !3972
  %quirk_function11 = getelementptr inbounds %struct.pnp_fixup, %struct.pnp_fixup* %11, i32 0, i32 1, !dbg !3973
  %12 = load void (%struct.pnp_dev*)*, void (%struct.pnp_dev*)** %quirk_function11, align 8, !dbg !3973
  %13 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !3974
  call void %12(%struct.pnp_dev* %13) #8, !dbg !3972
  br label %for.inc, !dbg !3975

for.inc:                                          ; preds = %if.end10, %if.then
  %14 = load %struct.pnp_fixup*, %struct.pnp_fixup** %f, align 8, !dbg !3976
  %incdec.ptr = getelementptr %struct.pnp_fixup, %struct.pnp_fixup* %14, i32 1, !dbg !3976
  store %struct.pnp_fixup* %incdec.ptr, %struct.pnp_fixup** %f, align 8, !dbg !3976
  br label %for.cond, !dbg !3977, !llvm.loop !3978

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3980
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @compare_pnp_id(%struct.pnp_id*, i8*) #2

; Function Attrs: cold noredzone
declare dso_local void @dev_printk(i8*, %struct.device*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @quirk_awe32_resources(%struct.pnp_dev* %dev) #0 !dbg !3981 {
entry:
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %option = alloca %struct.pnp_option*, align 8
  %set = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pnp_option*, align 8
  %__mptr5 = alloca i8*, align 8
  %tmp10 = alloca %struct.pnp_option*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !3982, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.declare(metadata %struct.pnp_option** %option, metadata !3984, metadata !DIExpression()), !dbg !3985
  call void @llvm.dbg.declare(metadata i32* %set, metadata !3986, metadata !DIExpression()), !dbg !3987
  store i32 -1, i32* %set, align 4, !dbg !3987
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3988, metadata !DIExpression()), !dbg !3991
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !3991
  %options = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %0, i32 0, i32 17, !dbg !3991
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %options, i32 0, i32 0, !dbg !3991
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3991
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !3991
  store i8* %2, i8** %__mptr, align 8, !dbg !3991
  br label %do.body, !dbg !3991

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3992

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !3991
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !3991
  %4 = bitcast i8* %add.ptr to %struct.pnp_option*, !dbg !3991
  store %struct.pnp_option* %4, %struct.pnp_option** %tmp, align 8, !dbg !3992
  %5 = load %struct.pnp_option*, %struct.pnp_option** %tmp, align 8, !dbg !3991
  store %struct.pnp_option* %5, %struct.pnp_option** %option, align 8, !dbg !3994
  br label %for.cond, !dbg !3994

for.cond:                                         ; preds = %do.end9, %do.end
  %6 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !3995
  %list = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %6, i32 0, i32 0, !dbg !3995
  %7 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !3995
  %options1 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %7, i32 0, i32 17, !dbg !3995
  %cmp = icmp eq %struct.list_head* %list, %options1, !dbg !3995
  %lnot = xor i1 %cmp, true, !dbg !3995
  br i1 %lnot, label %for.body, label %for.end, !dbg !3994

for.body:                                         ; preds = %for.cond
  %8 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !3997
  %call = call i32 @pnp_option_is_dependent(%struct.pnp_option* %8) #8, !dbg !4000
  %tobool = icmp ne i32 %call, 0, !dbg !4000
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4001

land.lhs.true:                                    ; preds = %for.body
  %9 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !4002
  %call2 = call i32 @pnp_option_set(%struct.pnp_option* %9) #8, !dbg !4003
  %10 = load i32, i32* %set, align 4, !dbg !4004
  %cmp3 = icmp ne i32 %call2, %10, !dbg !4005
  br i1 %cmp3, label %if.then, label %if.end, !dbg !4006

if.then:                                          ; preds = %land.lhs.true
  %11 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !4007
  %call4 = call i32 @pnp_option_set(%struct.pnp_option* %11) #8, !dbg !4009
  store i32 %call4, i32* %set, align 4, !dbg !4010
  %12 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4011
  %13 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !4012
  call void @quirk_awe32_add_ports(%struct.pnp_dev* %12, %struct.pnp_option* %13, i32 2048) #8, !dbg !4013
  %14 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4014
  %15 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !4015
  call void @quirk_awe32_add_ports(%struct.pnp_dev* %14, %struct.pnp_option* %15, i32 1024) #8, !dbg !4016
  br label %if.end, !dbg !4017

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc, !dbg !4018

for.inc:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr5, metadata !4019, metadata !DIExpression()), !dbg !4021
  %16 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !4021
  %list6 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %16, i32 0, i32 0, !dbg !4021
  %next7 = getelementptr inbounds %struct.list_head, %struct.list_head* %list6, i32 0, i32 0, !dbg !4021
  %17 = load %struct.list_head*, %struct.list_head** %next7, align 8, !dbg !4021
  %18 = bitcast %struct.list_head* %17 to i8*, !dbg !4021
  store i8* %18, i8** %__mptr5, align 8, !dbg !4021
  br label %do.body8, !dbg !4021

do.body8:                                         ; preds = %for.inc
  br label %do.end9, !dbg !4022

do.end9:                                          ; preds = %do.body8
  %19 = load i8*, i8** %__mptr5, align 8, !dbg !4021
  %add.ptr11 = getelementptr i8, i8* %19, i64 0, !dbg !4021
  %20 = bitcast i8* %add.ptr11 to %struct.pnp_option*, !dbg !4021
  store %struct.pnp_option* %20, %struct.pnp_option** %tmp10, align 8, !dbg !4022
  %21 = load %struct.pnp_option*, %struct.pnp_option** %tmp10, align 8, !dbg !4021
  store %struct.pnp_option* %21, %struct.pnp_option** %option, align 8, !dbg !3995
  br label %for.cond, !dbg !3995, !llvm.loop !4024

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4026
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @quirk_cmi8330_resources(%struct.pnp_dev* %dev) #0 !dbg !4027 {
entry:
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %option = alloca %struct.pnp_option*, align 8
  %irq = alloca %struct.pnp_irq*, align 8
  %dma = alloca %struct.pnp_dma*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pnp_option*, align 8
  %__mptr36 = alloca i8*, align 8
  %tmp41 = alloca %struct.pnp_option*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !4028, metadata !DIExpression()), !dbg !4029
  call void @llvm.dbg.declare(metadata %struct.pnp_option** %option, metadata !4030, metadata !DIExpression()), !dbg !4031
  call void @llvm.dbg.declare(metadata %struct.pnp_irq** %irq, metadata !4032, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.declare(metadata %struct.pnp_dma** %dma, metadata !4035, metadata !DIExpression()), !dbg !4037
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4038, metadata !DIExpression()), !dbg !4041
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4041
  %options = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %0, i32 0, i32 17, !dbg !4041
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %options, i32 0, i32 0, !dbg !4041
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4041
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !4041
  store i8* %2, i8** %__mptr, align 8, !dbg !4041
  br label %do.body, !dbg !4041

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4042

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !4041
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !4041
  %4 = bitcast i8* %add.ptr to %struct.pnp_option*, !dbg !4041
  store %struct.pnp_option* %4, %struct.pnp_option** %tmp, align 8, !dbg !4042
  %5 = load %struct.pnp_option*, %struct.pnp_option** %tmp, align 8, !dbg !4041
  store %struct.pnp_option* %5, %struct.pnp_option** %option, align 8, !dbg !4044
  br label %for.cond, !dbg !4044

for.cond:                                         ; preds = %do.end40, %do.end
  %6 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !4045
  %list = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %6, i32 0, i32 0, !dbg !4045
  %7 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4045
  %options1 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %7, i32 0, i32 17, !dbg !4045
  %cmp = icmp eq %struct.list_head* %list, %options1, !dbg !4045
  %lnot = xor i1 %cmp, true, !dbg !4045
  br i1 %lnot, label %for.body, label %for.end, !dbg !4044

for.body:                                         ; preds = %for.cond
  %8 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !4047
  %call = call i32 @pnp_option_is_dependent(%struct.pnp_option* %8) #8, !dbg !4050
  %tobool = icmp ne i32 %call, 0, !dbg !4050
  br i1 %tobool, label %if.end, label %if.then, !dbg !4051

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !4052

if.end:                                           ; preds = %for.body
  %9 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !4053
  %type = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %9, i32 0, i32 2, !dbg !4055
  %10 = load i64, i64* %type, align 8, !dbg !4055
  %cmp2 = icmp eq i64 %10, 1024, !dbg !4056
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !4057

if.then3:                                         ; preds = %if.end
  %11 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !4058
  %u = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %11, i32 0, i32 3, !dbg !4060
  %irq4 = bitcast %union.anon.66* %u to %struct.pnp_irq*, !dbg !4061
  store %struct.pnp_irq* %irq4, %struct.pnp_irq** %irq, align 8, !dbg !4062
  %12 = load %struct.pnp_irq*, %struct.pnp_irq** %irq, align 8, !dbg !4063
  %map = getelementptr inbounds %struct.pnp_irq, %struct.pnp_irq* %12, i32 0, i32 0, !dbg !4064
  %bits = getelementptr inbounds %struct.pnp_irq_mask_t, %struct.pnp_irq_mask_t* %map, i32 0, i32 0, !dbg !4065
  %arraydecay = getelementptr inbounds [4 x i64], [4 x i64]* %bits, i64 0, i64 0, !dbg !4063
  call void @bitmap_zero(i64* %arraydecay, i32 256) #8, !dbg !4066
  %13 = load %struct.pnp_irq*, %struct.pnp_irq** %irq, align 8, !dbg !4067
  %map5 = getelementptr inbounds %struct.pnp_irq, %struct.pnp_irq* %13, i32 0, i32 0, !dbg !4068
  %bits6 = getelementptr inbounds %struct.pnp_irq_mask_t, %struct.pnp_irq_mask_t* %map5, i32 0, i32 0, !dbg !4069
  %arraydecay7 = getelementptr inbounds [4 x i64], [4 x i64]* %bits6, i64 0, i64 0, !dbg !4067
  call void @__set_bit(i64 5, i64* %arraydecay7) #8, !dbg !4070
  %14 = load %struct.pnp_irq*, %struct.pnp_irq** %irq, align 8, !dbg !4071
  %map8 = getelementptr inbounds %struct.pnp_irq, %struct.pnp_irq* %14, i32 0, i32 0, !dbg !4072
  %bits9 = getelementptr inbounds %struct.pnp_irq_mask_t, %struct.pnp_irq_mask_t* %map8, i32 0, i32 0, !dbg !4073
  %arraydecay10 = getelementptr inbounds [4 x i64], [4 x i64]* %bits9, i64 0, i64 0, !dbg !4071
  call void @__set_bit(i64 7, i64* %arraydecay10) #8, !dbg !4074
  %15 = load %struct.pnp_irq*, %struct.pnp_irq** %irq, align 8, !dbg !4075
  %map11 = getelementptr inbounds %struct.pnp_irq, %struct.pnp_irq* %15, i32 0, i32 0, !dbg !4076
  %bits12 = getelementptr inbounds %struct.pnp_irq_mask_t, %struct.pnp_irq_mask_t* %map11, i32 0, i32 0, !dbg !4077
  %arraydecay13 = getelementptr inbounds [4 x i64], [4 x i64]* %bits12, i64 0, i64 0, !dbg !4075
  call void @__set_bit(i64 10, i64* %arraydecay13) #8, !dbg !4078
  %16 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4079
  %dev14 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %16, i32 0, i32 0, !dbg !4079
  %17 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !4079
  %call15 = call i32 @pnp_option_set(%struct.pnp_option* %17) #8, !dbg !4079
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev14, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %call15) #9, !dbg !4079
  br label %if.end35, !dbg !4080

if.else:                                          ; preds = %if.end
  %18 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !4081
  %type16 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %18, i32 0, i32 2, !dbg !4083
  %19 = load i64, i64* %type16, align 8, !dbg !4083
  %cmp17 = icmp eq i64 %19, 2048, !dbg !4084
  br i1 %cmp17, label %if.then18, label %if.end34, !dbg !4085

if.then18:                                        ; preds = %if.else
  %20 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !4086
  %u19 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %20, i32 0, i32 3, !dbg !4088
  %dma20 = bitcast %union.anon.66* %u19 to %struct.pnp_dma*, !dbg !4089
  store %struct.pnp_dma* %dma20, %struct.pnp_dma** %dma, align 8, !dbg !4090
  %21 = load %struct.pnp_dma*, %struct.pnp_dma** %dma, align 8, !dbg !4091
  %flags = getelementptr inbounds %struct.pnp_dma, %struct.pnp_dma* %21, i32 0, i32 1, !dbg !4093
  %22 = load i8, i8* %flags, align 1, !dbg !4093
  %conv = zext i8 %22 to i32, !dbg !4091
  %and = and i32 %conv, 3, !dbg !4094
  %cmp21 = icmp eq i32 %and, 0, !dbg !4095
  br i1 %cmp21, label %land.lhs.true, label %if.end33, !dbg !4096

land.lhs.true:                                    ; preds = %if.then18
  %23 = load %struct.pnp_dma*, %struct.pnp_dma** %dma, align 8, !dbg !4097
  %map23 = getelementptr inbounds %struct.pnp_dma, %struct.pnp_dma* %23, i32 0, i32 0, !dbg !4098
  %24 = load i8, i8* %map23, align 1, !dbg !4098
  %conv24 = zext i8 %24 to i32, !dbg !4097
  %cmp25 = icmp ne i32 %conv24, 10, !dbg !4099
  br i1 %cmp25, label %if.then27, label %if.end33, !dbg !4100

if.then27:                                        ; preds = %land.lhs.true
  %25 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4101
  %dev28 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %25, i32 0, i32 0, !dbg !4101
  %26 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !4101
  %call29 = call i32 @pnp_option_set(%struct.pnp_option* %26) #8, !dbg !4101
  %27 = load %struct.pnp_dma*, %struct.pnp_dma** %dma, align 8, !dbg !4101
  %map30 = getelementptr inbounds %struct.pnp_dma, %struct.pnp_dma* %27, i32 0, i32 0, !dbg !4101
  %28 = load i8, i8* %map30, align 1, !dbg !4101
  %conv31 = zext i8 %28 to i32, !dbg !4101
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev28, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.6, i64 0, i64 0), i32 %call29, i32 %conv31) #9, !dbg !4101
  %29 = load %struct.pnp_dma*, %struct.pnp_dma** %dma, align 8, !dbg !4103
  %map32 = getelementptr inbounds %struct.pnp_dma, %struct.pnp_dma* %29, i32 0, i32 0, !dbg !4104
  store i8 10, i8* %map32, align 1, !dbg !4105
  br label %if.end33, !dbg !4106

if.end33:                                         ; preds = %if.then27, %land.lhs.true, %if.then18
  br label %if.end34, !dbg !4107

if.end34:                                         ; preds = %if.end33, %if.else
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then3
  br label %for.inc, !dbg !4108

for.inc:                                          ; preds = %if.end35, %if.then
  call void @llvm.dbg.declare(metadata i8** %__mptr36, metadata !4109, metadata !DIExpression()), !dbg !4111
  %30 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !4111
  %list37 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %30, i32 0, i32 0, !dbg !4111
  %next38 = getelementptr inbounds %struct.list_head, %struct.list_head* %list37, i32 0, i32 0, !dbg !4111
  %31 = load %struct.list_head*, %struct.list_head** %next38, align 8, !dbg !4111
  %32 = bitcast %struct.list_head* %31 to i8*, !dbg !4111
  store i8* %32, i8** %__mptr36, align 8, !dbg !4111
  br label %do.body39, !dbg !4111

do.body39:                                        ; preds = %for.inc
  br label %do.end40, !dbg !4112

do.end40:                                         ; preds = %do.body39
  %33 = load i8*, i8** %__mptr36, align 8, !dbg !4111
  %add.ptr42 = getelementptr i8, i8* %33, i64 0, !dbg !4111
  %34 = bitcast i8* %add.ptr42 to %struct.pnp_option*, !dbg !4111
  store %struct.pnp_option* %34, %struct.pnp_option** %tmp41, align 8, !dbg !4112
  %35 = load %struct.pnp_option*, %struct.pnp_option** %tmp41, align 8, !dbg !4111
  store %struct.pnp_option* %35, %struct.pnp_option** %option, align 8, !dbg !4045
  br label %for.cond, !dbg !4045, !llvm.loop !4114

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4116
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @quirk_sb16audio_resources(%struct.pnp_dev* %dev) #0 !dbg !4117 {
entry:
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %option = alloca %struct.pnp_option*, align 8
  %prev_option_flags = alloca i32, align 4
  %n = alloca i32, align 4
  %port = alloca %struct.pnp_port*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pnp_option*, align 8
  %__mptr19 = alloca i8*, align 8
  %tmp24 = alloca %struct.pnp_option*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !4118, metadata !DIExpression()), !dbg !4119
  call void @llvm.dbg.declare(metadata %struct.pnp_option** %option, metadata !4120, metadata !DIExpression()), !dbg !4121
  call void @llvm.dbg.declare(metadata i32* %prev_option_flags, metadata !4122, metadata !DIExpression()), !dbg !4123
  store i32 -1, i32* %prev_option_flags, align 4, !dbg !4123
  call void @llvm.dbg.declare(metadata i32* %n, metadata !4124, metadata !DIExpression()), !dbg !4125
  store i32 0, i32* %n, align 4, !dbg !4125
  call void @llvm.dbg.declare(metadata %struct.pnp_port** %port, metadata !4126, metadata !DIExpression()), !dbg !4128
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4129, metadata !DIExpression()), !dbg !4132
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4132
  %options = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %0, i32 0, i32 17, !dbg !4132
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %options, i32 0, i32 0, !dbg !4132
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4132
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !4132
  store i8* %2, i8** %__mptr, align 8, !dbg !4132
  br label %do.body, !dbg !4132

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4133

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !4132
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !4132
  %4 = bitcast i8* %add.ptr to %struct.pnp_option*, !dbg !4132
  store %struct.pnp_option* %4, %struct.pnp_option** %tmp, align 8, !dbg !4133
  %5 = load %struct.pnp_option*, %struct.pnp_option** %tmp, align 8, !dbg !4132
  store %struct.pnp_option* %5, %struct.pnp_option** %option, align 8, !dbg !4135
  br label %for.cond, !dbg !4135

for.cond:                                         ; preds = %do.end23, %do.end
  %6 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !4136
  %list = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %6, i32 0, i32 0, !dbg !4136
  %7 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4136
  %options1 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %7, i32 0, i32 17, !dbg !4136
  %cmp = icmp eq %struct.list_head* %list, %options1, !dbg !4136
  %lnot = xor i1 %cmp, true, !dbg !4136
  br i1 %lnot, label %for.body, label %for.end, !dbg !4135

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %prev_option_flags, align 4, !dbg !4138
  %9 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !4141
  %flags = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %9, i32 0, i32 1, !dbg !4142
  %10 = load i32, i32* %flags, align 8, !dbg !4142
  %cmp2 = icmp ne i32 %8, %10, !dbg !4143
  br i1 %cmp2, label %if.then, label %if.end, !dbg !4144

if.then:                                          ; preds = %for.body
  %11 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !4145
  %flags3 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %11, i32 0, i32 1, !dbg !4147
  %12 = load i32, i32* %flags3, align 8, !dbg !4147
  store i32 %12, i32* %prev_option_flags, align 4, !dbg !4148
  store i32 0, i32* %n, align 4, !dbg !4149
  br label %if.end, !dbg !4150

if.end:                                           ; preds = %if.then, %for.body
  %13 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !4151
  %call = call i32 @pnp_option_is_dependent(%struct.pnp_option* %13) #8, !dbg !4153
  %tobool = icmp ne i32 %call, 0, !dbg !4153
  br i1 %tobool, label %land.lhs.true, label %if.end18, !dbg !4154

land.lhs.true:                                    ; preds = %if.end
  %14 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !4155
  %type = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %14, i32 0, i32 2, !dbg !4156
  %15 = load i64, i64* %type, align 8, !dbg !4156
  %cmp4 = icmp eq i64 %15, 256, !dbg !4157
  br i1 %cmp4, label %if.then5, label %if.end18, !dbg !4158

if.then5:                                         ; preds = %land.lhs.true
  %16 = load i32, i32* %n, align 4, !dbg !4159
  %inc = add i32 %16, 1, !dbg !4159
  store i32 %inc, i32* %n, align 4, !dbg !4159
  %17 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !4161
  %u = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %17, i32 0, i32 3, !dbg !4162
  %port6 = bitcast %union.anon.66* %u to %struct.pnp_port*, !dbg !4163
  store %struct.pnp_port* %port6, %struct.pnp_port** %port, align 8, !dbg !4164
  %18 = load i32, i32* %n, align 4, !dbg !4165
  %cmp7 = icmp eq i32 %18, 3, !dbg !4167
  br i1 %cmp7, label %land.lhs.true8, label %if.end17, !dbg !4168

land.lhs.true8:                                   ; preds = %if.then5
  %19 = load %struct.pnp_port*, %struct.pnp_port** %port, align 8, !dbg !4169
  %min = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %19, i32 0, i32 0, !dbg !4170
  %20 = load i64, i64* %min, align 8, !dbg !4170
  %21 = load %struct.pnp_port*, %struct.pnp_port** %port, align 8, !dbg !4171
  %max = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %21, i32 0, i32 1, !dbg !4172
  %22 = load i64, i64* %max, align 8, !dbg !4172
  %cmp9 = icmp eq i64 %20, %22, !dbg !4173
  br i1 %cmp9, label %if.then10, label %if.end17, !dbg !4174

if.then10:                                        ; preds = %land.lhs.true8
  %23 = load %struct.pnp_port*, %struct.pnp_port** %port, align 8, !dbg !4175
  %max11 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %23, i32 0, i32 1, !dbg !4177
  %24 = load i64, i64* %max11, align 8, !dbg !4178
  %add = add i64 %24, 112, !dbg !4178
  store i64 %add, i64* %max11, align 8, !dbg !4178
  %25 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4179
  %dev12 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %25, i32 0, i32 0, !dbg !4179
  %26 = load %struct.pnp_port*, %struct.pnp_port** %port, align 8, !dbg !4179
  %min13 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %26, i32 0, i32 0, !dbg !4179
  %27 = load i64, i64* %min13, align 8, !dbg !4179
  %28 = load %struct.pnp_port*, %struct.pnp_port** %port, align 8, !dbg !4179
  %min14 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %28, i32 0, i32 0, !dbg !4179
  %29 = load i64, i64* %min14, align 8, !dbg !4179
  %30 = load %struct.pnp_port*, %struct.pnp_port** %port, align 8, !dbg !4179
  %min15 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %30, i32 0, i32 0, !dbg !4179
  %31 = load i64, i64* %min15, align 8, !dbg !4179
  %32 = load %struct.pnp_port*, %struct.pnp_port** %port, align 8, !dbg !4179
  %max16 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %32, i32 0, i32 1, !dbg !4179
  %33 = load i64, i64* %max16, align 8, !dbg !4179
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev12, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i64 %27, i64 %29, i64 %31, i64 %33) #9, !dbg !4179
  br label %if.end17, !dbg !4180

if.end17:                                         ; preds = %if.then10, %land.lhs.true8, %if.then5
  br label %if.end18, !dbg !4181

if.end18:                                         ; preds = %if.end17, %land.lhs.true, %if.end
  br label %for.inc, !dbg !4182

for.inc:                                          ; preds = %if.end18
  call void @llvm.dbg.declare(metadata i8** %__mptr19, metadata !4183, metadata !DIExpression()), !dbg !4185
  %34 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !4185
  %list20 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %34, i32 0, i32 0, !dbg !4185
  %next21 = getelementptr inbounds %struct.list_head, %struct.list_head* %list20, i32 0, i32 0, !dbg !4185
  %35 = load %struct.list_head*, %struct.list_head** %next21, align 8, !dbg !4185
  %36 = bitcast %struct.list_head* %35 to i8*, !dbg !4185
  store i8* %36, i8** %__mptr19, align 8, !dbg !4185
  br label %do.body22, !dbg !4185

do.body22:                                        ; preds = %for.inc
  br label %do.end23, !dbg !4186

do.end23:                                         ; preds = %do.body22
  %37 = load i8*, i8** %__mptr19, align 8, !dbg !4185
  %add.ptr25 = getelementptr i8, i8* %37, i64 0, !dbg !4185
  %38 = bitcast i8* %add.ptr25 to %struct.pnp_option*, !dbg !4185
  store %struct.pnp_option* %38, %struct.pnp_option** %tmp24, align 8, !dbg !4186
  %39 = load %struct.pnp_option*, %struct.pnp_option** %tmp24, align 8, !dbg !4185
  store %struct.pnp_option* %39, %struct.pnp_option** %option, align 8, !dbg !4136
  br label %for.cond, !dbg !4136, !llvm.loop !4188

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4190
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @quirk_ad1815_mpu_resources(%struct.pnp_dev* %dev) #0 !dbg !4191 {
entry:
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %option = alloca %struct.pnp_option*, align 8
  %irq = alloca %struct.pnp_irq*, align 8
  %independent_irqs = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pnp_option*, align 8
  %__mptr4 = alloca i8*, align 8
  %tmp9 = alloca %struct.pnp_option*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !4192, metadata !DIExpression()), !dbg !4193
  call void @llvm.dbg.declare(metadata %struct.pnp_option** %option, metadata !4194, metadata !DIExpression()), !dbg !4195
  call void @llvm.dbg.declare(metadata %struct.pnp_irq** %irq, metadata !4196, metadata !DIExpression()), !dbg !4197
  store %struct.pnp_irq* null, %struct.pnp_irq** %irq, align 8, !dbg !4197
  call void @llvm.dbg.declare(metadata i32* %independent_irqs, metadata !4198, metadata !DIExpression()), !dbg !4199
  store i32 0, i32* %independent_irqs, align 4, !dbg !4199
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4200, metadata !DIExpression()), !dbg !4203
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4203
  %options = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %0, i32 0, i32 17, !dbg !4203
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %options, i32 0, i32 0, !dbg !4203
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4203
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !4203
  store i8* %2, i8** %__mptr, align 8, !dbg !4203
  br label %do.body, !dbg !4203

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4204

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !4203
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !4203
  %4 = bitcast i8* %add.ptr to %struct.pnp_option*, !dbg !4203
  store %struct.pnp_option* %4, %struct.pnp_option** %tmp, align 8, !dbg !4204
  %5 = load %struct.pnp_option*, %struct.pnp_option** %tmp, align 8, !dbg !4203
  store %struct.pnp_option* %5, %struct.pnp_option** %option, align 8, !dbg !4206
  br label %for.cond, !dbg !4206

for.cond:                                         ; preds = %do.end8, %do.end
  %6 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !4207
  %list = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %6, i32 0, i32 0, !dbg !4207
  %7 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4207
  %options1 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %7, i32 0, i32 17, !dbg !4207
  %cmp = icmp eq %struct.list_head* %list, %options1, !dbg !4207
  %lnot = xor i1 %cmp, true, !dbg !4207
  br i1 %lnot, label %for.body, label %for.end, !dbg !4206

for.body:                                         ; preds = %for.cond
  %8 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !4209
  %type = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %8, i32 0, i32 2, !dbg !4212
  %9 = load i64, i64* %type, align 8, !dbg !4212
  %cmp2 = icmp eq i64 %9, 1024, !dbg !4213
  br i1 %cmp2, label %land.lhs.true, label %if.end, !dbg !4214

land.lhs.true:                                    ; preds = %for.body
  %10 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !4215
  %call = call i32 @pnp_option_is_dependent(%struct.pnp_option* %10) #8, !dbg !4216
  %tobool = icmp ne i32 %call, 0, !dbg !4216
  br i1 %tobool, label %if.end, label %if.then, !dbg !4217

if.then:                                          ; preds = %land.lhs.true
  %11 = load i32, i32* %independent_irqs, align 4, !dbg !4218
  %inc = add i32 %11, 1, !dbg !4218
  store i32 %inc, i32* %independent_irqs, align 4, !dbg !4218
  %12 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !4220
  %u = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %12, i32 0, i32 3, !dbg !4221
  %irq3 = bitcast %union.anon.66* %u to %struct.pnp_irq*, !dbg !4222
  store %struct.pnp_irq* %irq3, %struct.pnp_irq** %irq, align 8, !dbg !4223
  br label %if.end, !dbg !4224

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc, !dbg !4225

for.inc:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr4, metadata !4226, metadata !DIExpression()), !dbg !4228
  %13 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !4228
  %list5 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %13, i32 0, i32 0, !dbg !4228
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %list5, i32 0, i32 0, !dbg !4228
  %14 = load %struct.list_head*, %struct.list_head** %next6, align 8, !dbg !4228
  %15 = bitcast %struct.list_head* %14 to i8*, !dbg !4228
  store i8* %15, i8** %__mptr4, align 8, !dbg !4228
  br label %do.body7, !dbg !4228

do.body7:                                         ; preds = %for.inc
  br label %do.end8, !dbg !4229

do.end8:                                          ; preds = %do.body7
  %16 = load i8*, i8** %__mptr4, align 8, !dbg !4228
  %add.ptr10 = getelementptr i8, i8* %16, i64 0, !dbg !4228
  %17 = bitcast i8* %add.ptr10 to %struct.pnp_option*, !dbg !4228
  store %struct.pnp_option* %17, %struct.pnp_option** %tmp9, align 8, !dbg !4229
  %18 = load %struct.pnp_option*, %struct.pnp_option** %tmp9, align 8, !dbg !4228
  store %struct.pnp_option* %18, %struct.pnp_option** %option, align 8, !dbg !4207
  br label %for.cond, !dbg !4207, !llvm.loop !4231

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %independent_irqs, align 4, !dbg !4233
  %cmp11 = icmp ne i32 %19, 1, !dbg !4235
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !4236

if.then12:                                        ; preds = %for.end
  br label %return, !dbg !4237

if.end13:                                         ; preds = %for.end
  %20 = load %struct.pnp_irq*, %struct.pnp_irq** %irq, align 8, !dbg !4238
  %flags = getelementptr inbounds %struct.pnp_irq, %struct.pnp_irq* %20, i32 0, i32 1, !dbg !4239
  %21 = load i8, i8* %flags, align 8, !dbg !4240
  %conv = zext i8 %21 to i32, !dbg !4240
  %or = or i32 %conv, 32, !dbg !4240
  %conv14 = trunc i32 %or to i8, !dbg !4240
  store i8 %conv14, i8* %flags, align 8, !dbg !4240
  %22 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4241
  %dev15 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %22, i32 0, i32 0, !dbg !4241
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0)) #9, !dbg !4241
  br label %return, !dbg !4242

return:                                           ; preds = %if.end13, %if.then12
  ret void, !dbg !4242
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @quirk_add_irq_optional_dependent_sets(%struct.pnp_dev* %dev) #0 !dbg !4243 {
entry:
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %new_option = alloca %struct.pnp_option*, align 8
  %num_sets = alloca i32, align 4
  %i = alloca i32, align 4
  %set = alloca i32, align 4
  %irq = alloca %struct.pnp_irq*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pnp_option*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !4244, metadata !DIExpression()), !dbg !4245
  call void @llvm.dbg.declare(metadata %struct.pnp_option** %new_option, metadata !4246, metadata !DIExpression()), !dbg !4247
  call void @llvm.dbg.declare(metadata i32* %num_sets, metadata !4248, metadata !DIExpression()), !dbg !4249
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4250, metadata !DIExpression()), !dbg !4251
  call void @llvm.dbg.declare(metadata i32* %set, metadata !4252, metadata !DIExpression()), !dbg !4253
  call void @llvm.dbg.declare(metadata %struct.pnp_irq** %irq, metadata !4254, metadata !DIExpression()), !dbg !4255
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4256
  %num_dependent_sets = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %0, i32 0, i32 15, !dbg !4257
  %1 = load i32, i32* %num_dependent_sets, align 8, !dbg !4257
  store i32 %1, i32* %num_sets, align 4, !dbg !4258
  store i32 0, i32* %i, align 4, !dbg !4259
  br label %for.cond, !dbg !4261

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !4262
  %3 = load i32, i32* %num_sets, align 4, !dbg !4264
  %cmp = icmp ult i32 %2, %3, !dbg !4265
  br i1 %cmp, label %for.body, label %for.end, !dbg !4266

for.body:                                         ; preds = %for.cond
  %4 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4267
  %5 = load i32, i32* %i, align 4, !dbg !4269
  %call = call %struct.pnp_option* @pnp_clone_dependent_set(%struct.pnp_dev* %4, i32 %5) #8, !dbg !4270
  store %struct.pnp_option* %call, %struct.pnp_option** %new_option, align 8, !dbg !4271
  %6 = load %struct.pnp_option*, %struct.pnp_option** %new_option, align 8, !dbg !4272
  %tobool = icmp ne %struct.pnp_option* %6, null, !dbg !4272
  br i1 %tobool, label %if.end, label %if.then, !dbg !4274

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !4275

if.end:                                           ; preds = %for.body
  %7 = load %struct.pnp_option*, %struct.pnp_option** %new_option, align 8, !dbg !4276
  %call1 = call i32 @pnp_option_set(%struct.pnp_option* %7) #8, !dbg !4277
  store i32 %call1, i32* %set, align 4, !dbg !4278
  br label %while.cond, !dbg !4279

while.cond:                                       ; preds = %do.end, %if.end
  %8 = load %struct.pnp_option*, %struct.pnp_option** %new_option, align 8, !dbg !4280
  %tobool2 = icmp ne %struct.pnp_option* %8, null, !dbg !4280
  br i1 %tobool2, label %land.rhs, label %land.end, !dbg !4281

land.rhs:                                         ; preds = %while.cond
  %9 = load %struct.pnp_option*, %struct.pnp_option** %new_option, align 8, !dbg !4282
  %call3 = call i32 @pnp_option_set(%struct.pnp_option* %9) #8, !dbg !4283
  %10 = load i32, i32* %set, align 4, !dbg !4284
  %cmp4 = icmp eq i32 %call3, %10, !dbg !4285
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ], !dbg !4286
  br i1 %11, label %while.body, label %while.end, !dbg !4279

while.body:                                       ; preds = %land.end
  %12 = load %struct.pnp_option*, %struct.pnp_option** %new_option, align 8, !dbg !4287
  %type = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %12, i32 0, i32 2, !dbg !4290
  %13 = load i64, i64* %type, align 8, !dbg !4290
  %cmp5 = icmp eq i64 %13, 1024, !dbg !4291
  br i1 %cmp5, label %if.then6, label %if.end9, !dbg !4292

if.then6:                                         ; preds = %while.body
  %14 = load %struct.pnp_option*, %struct.pnp_option** %new_option, align 8, !dbg !4293
  %u = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %14, i32 0, i32 3, !dbg !4295
  %irq7 = bitcast %union.anon.66* %u to %struct.pnp_irq*, !dbg !4296
  store %struct.pnp_irq* %irq7, %struct.pnp_irq** %irq, align 8, !dbg !4297
  %15 = load %struct.pnp_irq*, %struct.pnp_irq** %irq, align 8, !dbg !4298
  %flags = getelementptr inbounds %struct.pnp_irq, %struct.pnp_irq* %15, i32 0, i32 1, !dbg !4299
  %16 = load i8, i8* %flags, align 8, !dbg !4300
  %conv = zext i8 %16 to i32, !dbg !4300
  %or = or i32 %conv, 32, !dbg !4300
  %conv8 = trunc i32 %or to i8, !dbg !4300
  store i8 %conv8, i8* %flags, align 8, !dbg !4300
  br label %if.end9, !dbg !4301

if.end9:                                          ; preds = %if.then6, %while.body
  %17 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4302
  %18 = load %struct.pnp_option*, %struct.pnp_option** %new_option, align 8, !dbg !4303
  call void @dbg_pnp_show_option(%struct.pnp_dev* %17, %struct.pnp_option* %18) #8, !dbg !4304
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4305, metadata !DIExpression()), !dbg !4307
  %19 = load %struct.pnp_option*, %struct.pnp_option** %new_option, align 8, !dbg !4307
  %list = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %19, i32 0, i32 0, !dbg !4307
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i32 0, i32 0, !dbg !4307
  %20 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4307
  %21 = bitcast %struct.list_head* %20 to i8*, !dbg !4307
  store i8* %21, i8** %__mptr, align 8, !dbg !4307
  br label %do.body, !dbg !4307

do.body:                                          ; preds = %if.end9
  br label %do.end, !dbg !4308

do.end:                                           ; preds = %do.body
  %22 = load i8*, i8** %__mptr, align 8, !dbg !4307
  %add.ptr = getelementptr i8, i8* %22, i64 0, !dbg !4307
  %23 = bitcast i8* %add.ptr to %struct.pnp_option*, !dbg !4307
  store %struct.pnp_option* %23, %struct.pnp_option** %tmp, align 8, !dbg !4308
  %24 = load %struct.pnp_option*, %struct.pnp_option** %tmp, align 8, !dbg !4307
  store %struct.pnp_option* %24, %struct.pnp_option** %new_option, align 8, !dbg !4310
  br label %while.cond, !dbg !4279, !llvm.loop !4311

while.end:                                        ; preds = %land.end
  %25 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4313
  %dev10 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %25, i32 0, i32 0, !dbg !4313
  %26 = load i32, i32* %set, align 4, !dbg !4313
  %27 = load i32, i32* %i, align 4, !dbg !4313
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev10, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.9, i64 0, i64 0), i32 %26, i32 %27) #9, !dbg !4313
  br label %for.inc, !dbg !4314

for.inc:                                          ; preds = %while.end
  %28 = load i32, i32* %i, align 4, !dbg !4315
  %inc = add i32 %28, 1, !dbg !4315
  store i32 %inc, i32* %i, align 4, !dbg !4315
  br label %for.cond, !dbg !4316, !llvm.loop !4317

for.end:                                          ; preds = %if.then, %for.cond
  ret void, !dbg !4319
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @quirk_system_pci_resources(%struct.pnp_dev* %dev) #0 !dbg !4320 {
entry:
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %pdev = alloca %struct.pci_dev*, align 8
  %res = alloca %struct.resource*, align 8
  %pnp_start = alloca i64, align 8
  %pnp_end = alloca i64, align 8
  %pci_start = alloca i64, align 8
  %pci_end = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %flags = alloca i64, align 8
  %type = alloca i64, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !4321, metadata !DIExpression()), !dbg !4322
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev, metadata !4323, metadata !DIExpression()), !dbg !4586
  store %struct.pci_dev* null, %struct.pci_dev** %pdev, align 8, !dbg !4586
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !4587, metadata !DIExpression()), !dbg !4588
  call void @llvm.dbg.declare(metadata i64* %pnp_start, metadata !4589, metadata !DIExpression()), !dbg !4590
  call void @llvm.dbg.declare(metadata i64* %pnp_end, metadata !4591, metadata !DIExpression()), !dbg !4592
  call void @llvm.dbg.declare(metadata i64* %pci_start, metadata !4593, metadata !DIExpression()), !dbg !4594
  call void @llvm.dbg.declare(metadata i64* %pci_end, metadata !4595, metadata !DIExpression()), !dbg !4596
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4597, metadata !DIExpression()), !dbg !4598
  call void @llvm.dbg.declare(metadata i32* %j, metadata !4599, metadata !DIExpression()), !dbg !4600
  br label %while.cond, !dbg !4601

while.cond:                                       ; preds = %for.end67, %entry
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !4601
  %call = call %struct.pci_dev* @pci_get_device(i32 -1, i32 -1, %struct.pci_dev* %0) #8, !dbg !4601
  store %struct.pci_dev* %call, %struct.pci_dev** %pdev, align 8, !dbg !4601
  %cmp = icmp ne %struct.pci_dev* %call, null, !dbg !4601
  br i1 %cmp, label %while.body, label %while.end, !dbg !4601

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %i, align 4, !dbg !4602
  br label %for.cond, !dbg !4605

for.cond:                                         ; preds = %for.inc65, %while.body
  %1 = load i32, i32* %i, align 4, !dbg !4606
  %cmp1 = icmp slt i32 %1, 17, !dbg !4608
  br i1 %cmp1, label %for.body, label %for.end67, !dbg !4609

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4610, metadata !DIExpression()), !dbg !4612
  call void @llvm.dbg.declare(metadata i64* %type, metadata !4613, metadata !DIExpression()), !dbg !4614
  %2 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !4615
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 44, !dbg !4615
  %3 = load i32, i32* %i, align 4, !dbg !4615
  %idxprom = sext i32 %3 to i64, !dbg !4615
  %arrayidx = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 %idxprom, !dbg !4615
  %flags2 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx, i32 0, i32 3, !dbg !4615
  %4 = load i64, i64* %flags2, align 8, !dbg !4615
  store i64 %4, i64* %flags, align 8, !dbg !4616
  %5 = load i64, i64* %flags, align 8, !dbg !4617
  %and = and i64 %5, 768, !dbg !4618
  store i64 %and, i64* %type, align 8, !dbg !4619
  %6 = load i64, i64* %type, align 8, !dbg !4620
  %tobool = icmp ne i64 %6, 0, !dbg !4620
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4622

lor.lhs.false:                                    ; preds = %for.body
  %7 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !4623
  %resource3 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 44, !dbg !4623
  %8 = load i32, i32* %i, align 4, !dbg !4623
  %idxprom4 = sext i32 %8 to i64, !dbg !4623
  %arrayidx5 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource3, i64 0, i64 %idxprom4, !dbg !4623
  %start = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx5, i32 0, i32 0, !dbg !4623
  %9 = load i64, i64* %start, align 8, !dbg !4623
  %cmp6 = icmp eq i64 %9, 0, !dbg !4623
  br i1 %cmp6, label %land.lhs.true, label %cond.false, !dbg !4623

land.lhs.true:                                    ; preds = %lor.lhs.false
  %10 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !4623
  %resource7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 44, !dbg !4623
  %11 = load i32, i32* %i, align 4, !dbg !4623
  %idxprom8 = sext i32 %11 to i64, !dbg !4623
  %arrayidx9 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource7, i64 0, i64 %idxprom8, !dbg !4623
  %end = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx9, i32 0, i32 1, !dbg !4623
  %12 = load i64, i64* %end, align 8, !dbg !4623
  %13 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !4623
  %resource10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 44, !dbg !4623
  %14 = load i32, i32* %i, align 4, !dbg !4623
  %idxprom11 = sext i32 %14 to i64, !dbg !4623
  %arrayidx12 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource10, i64 0, i64 %idxprom11, !dbg !4623
  %start13 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx12, i32 0, i32 0, !dbg !4623
  %15 = load i64, i64* %start13, align 8, !dbg !4623
  %cmp14 = icmp eq i64 %12, %15, !dbg !4623
  br i1 %cmp14, label %cond.true, label %cond.false, !dbg !4623

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end, !dbg !4623

cond.false:                                       ; preds = %land.lhs.true, %lor.lhs.false
  %16 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !4623
  %resource15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 44, !dbg !4623
  %17 = load i32, i32* %i, align 4, !dbg !4623
  %idxprom16 = sext i32 %17 to i64, !dbg !4623
  %arrayidx17 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource15, i64 0, i64 %idxprom16, !dbg !4623
  %end18 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx17, i32 0, i32 1, !dbg !4623
  %18 = load i64, i64* %end18, align 8, !dbg !4623
  %19 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !4623
  %resource19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 44, !dbg !4623
  %20 = load i32, i32* %i, align 4, !dbg !4623
  %idxprom20 = sext i32 %20 to i64, !dbg !4623
  %arrayidx21 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource19, i64 0, i64 %idxprom20, !dbg !4623
  %start22 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx21, i32 0, i32 0, !dbg !4623
  %21 = load i64, i64* %start22, align 8, !dbg !4623
  %sub = sub i64 %18, %21, !dbg !4623
  %add = add i64 %sub, 1, !dbg !4623
  br label %cond.end, !dbg !4623

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %add, %cond.false ], !dbg !4623
  %cmp23 = icmp eq i64 %cond, 0, !dbg !4624
  br i1 %cmp23, label %if.then, label %if.end, !dbg !4625

if.then:                                          ; preds = %cond.end, %for.body
  br label %for.inc65, !dbg !4626

if.end:                                           ; preds = %cond.end
  %22 = load i64, i64* %flags, align 8, !dbg !4627
  %and24 = and i64 %22, 536870912, !dbg !4629
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4629
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !4630

if.then26:                                        ; preds = %if.end
  br label %for.inc65, !dbg !4631

if.end27:                                         ; preds = %if.end
  %23 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !4632
  %resource28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 44, !dbg !4632
  %24 = load i32, i32* %i, align 4, !dbg !4632
  %idxprom29 = sext i32 %24 to i64, !dbg !4632
  %arrayidx30 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource28, i64 0, i64 %idxprom29, !dbg !4632
  %start31 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx30, i32 0, i32 0, !dbg !4632
  %25 = load i64, i64* %start31, align 8, !dbg !4632
  store i64 %25, i64* %pci_start, align 8, !dbg !4633
  %26 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !4634
  %resource32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 44, !dbg !4634
  %27 = load i32, i32* %i, align 4, !dbg !4634
  %idxprom33 = sext i32 %27 to i64, !dbg !4634
  %arrayidx34 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource32, i64 0, i64 %idxprom33, !dbg !4634
  %end35 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx34, i32 0, i32 1, !dbg !4634
  %28 = load i64, i64* %end35, align 8, !dbg !4634
  store i64 %28, i64* %pci_end, align 8, !dbg !4635
  store i32 0, i32* %j, align 4, !dbg !4636
  br label %for.cond36, !dbg !4638

for.cond36:                                       ; preds = %for.inc, %if.end27
  %29 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4639
  %30 = load i64, i64* %type, align 8, !dbg !4641
  %31 = load i32, i32* %j, align 4, !dbg !4642
  %call37 = call %struct.resource* @pnp_get_resource(%struct.pnp_dev* %29, i64 %30, i32 %31) #8, !dbg !4643
  store %struct.resource* %call37, %struct.resource** %res, align 8, !dbg !4644
  %tobool38 = icmp ne %struct.resource* %call37, null, !dbg !4645
  br i1 %tobool38, label %for.body39, label %for.end, !dbg !4645

for.body39:                                       ; preds = %for.cond36
  %32 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4646
  %start40 = getelementptr inbounds %struct.resource, %struct.resource* %32, i32 0, i32 0, !dbg !4649
  %33 = load i64, i64* %start40, align 8, !dbg !4649
  %cmp41 = icmp eq i64 %33, 0, !dbg !4650
  br i1 %cmp41, label %land.lhs.true42, label %if.end46, !dbg !4651

land.lhs.true42:                                  ; preds = %for.body39
  %34 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4652
  %end43 = getelementptr inbounds %struct.resource, %struct.resource* %34, i32 0, i32 1, !dbg !4653
  %35 = load i64, i64* %end43, align 8, !dbg !4653
  %cmp44 = icmp eq i64 %35, 0, !dbg !4654
  br i1 %cmp44, label %if.then45, label %if.end46, !dbg !4655

if.then45:                                        ; preds = %land.lhs.true42
  br label %for.inc, !dbg !4656

if.end46:                                         ; preds = %land.lhs.true42, %for.body39
  %36 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4657
  %start47 = getelementptr inbounds %struct.resource, %struct.resource* %36, i32 0, i32 0, !dbg !4658
  %37 = load i64, i64* %start47, align 8, !dbg !4658
  store i64 %37, i64* %pnp_start, align 8, !dbg !4659
  %38 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4660
  %end48 = getelementptr inbounds %struct.resource, %struct.resource* %38, i32 0, i32 1, !dbg !4661
  %39 = load i64, i64* %end48, align 8, !dbg !4661
  store i64 %39, i64* %pnp_end, align 8, !dbg !4662
  %40 = load i64, i64* %pnp_end, align 8, !dbg !4663
  %41 = load i64, i64* %pci_start, align 8, !dbg !4665
  %cmp49 = icmp ult i64 %40, %41, !dbg !4666
  br i1 %cmp49, label %if.then52, label %lor.lhs.false50, !dbg !4667

lor.lhs.false50:                                  ; preds = %if.end46
  %42 = load i64, i64* %pnp_start, align 8, !dbg !4668
  %43 = load i64, i64* %pci_end, align 8, !dbg !4669
  %cmp51 = icmp ugt i64 %42, %43, !dbg !4670
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !4671

if.then52:                                        ; preds = %lor.lhs.false50, %if.end46
  br label %for.inc, !dbg !4672

if.end53:                                         ; preds = %lor.lhs.false50
  %44 = load i64, i64* %pnp_start, align 8, !dbg !4673
  %45 = load i64, i64* %pci_start, align 8, !dbg !4675
  %cmp54 = icmp ule i64 %44, %45, !dbg !4676
  br i1 %cmp54, label %land.lhs.true55, label %if.end58, !dbg !4677

land.lhs.true55:                                  ; preds = %if.end53
  %46 = load i64, i64* %pnp_end, align 8, !dbg !4678
  %47 = load i64, i64* %pci_end, align 8, !dbg !4679
  %cmp56 = icmp uge i64 %46, %47, !dbg !4680
  br i1 %cmp56, label %if.then57, label %if.end58, !dbg !4681

if.then57:                                        ; preds = %land.lhs.true55
  br label %for.inc, !dbg !4682

if.end58:                                         ; preds = %land.lhs.true55, %if.end53
  %48 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4683
  %dev59 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %48, i32 0, i32 0, !dbg !4683
  %49 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4683
  %50 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !4683
  %call60 = call i8* @pci_name(%struct.pci_dev* %50) #8, !dbg !4683
  %51 = load i32, i32* %i, align 4, !dbg !4683
  %52 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !4683
  %resource61 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %52, i32 0, i32 44, !dbg !4683
  %53 = load i32, i32* %i, align 4, !dbg !4683
  %idxprom62 = sext i32 %53 to i64, !dbg !4683
  %arrayidx63 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource61, i64 0, i64 %idxprom62, !dbg !4683
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev59, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.13, i64 0, i64 0), %struct.resource* %49, i8* %call60, i32 %51, %struct.resource* %arrayidx63) #9, !dbg !4683
  %54 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4684
  %flags64 = getelementptr inbounds %struct.resource, %struct.resource* %54, i32 0, i32 3, !dbg !4685
  %55 = load i64, i64* %flags64, align 8, !dbg !4686
  %or = or i64 %55, 268435456, !dbg !4686
  store i64 %or, i64* %flags64, align 8, !dbg !4686
  br label %for.inc, !dbg !4687

for.inc:                                          ; preds = %if.end58, %if.then57, %if.then52, %if.then45
  %56 = load i32, i32* %j, align 4, !dbg !4688
  %inc = add i32 %56, 1, !dbg !4688
  store i32 %inc, i32* %j, align 4, !dbg !4688
  br label %for.cond36, !dbg !4689, !llvm.loop !4690

for.end:                                          ; preds = %for.cond36
  br label %for.inc65, !dbg !4692

for.inc65:                                        ; preds = %for.end, %if.then26, %if.then
  %57 = load i32, i32* %i, align 4, !dbg !4693
  %inc66 = add i32 %57, 1, !dbg !4693
  store i32 %inc66, i32* %i, align 4, !dbg !4693
  br label %for.cond, !dbg !4694, !llvm.loop !4695

for.end67:                                        ; preds = %for.cond
  br label %while.cond, !dbg !4601, !llvm.loop !4697

while.end:                                        ; preds = %while.cond
  ret void, !dbg !4699
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @quirk_amd_mmconfig_area(%struct.pnp_dev* %dev) #0 !dbg !4700 {
entry:
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %pnp_res = alloca %struct.pnp_resource*, align 8
  %res = alloca %struct.resource*, align 8
  %mmconfig_res = alloca %struct.resource, align 8
  %mmconfig = alloca %struct.resource*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pnp_resource*, align 8
  %__mptr35 = alloca i8*, align 8
  %tmp40 = alloca %struct.pnp_resource*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !4701, metadata !DIExpression()), !dbg !4702
  call void @llvm.dbg.declare(metadata i64* %start, metadata !4703, metadata !DIExpression()), !dbg !4704
  call void @llvm.dbg.declare(metadata i64* %end, metadata !4705, metadata !DIExpression()), !dbg !4706
  call void @llvm.dbg.declare(metadata %struct.pnp_resource** %pnp_res, metadata !4707, metadata !DIExpression()), !dbg !4708
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !4709, metadata !DIExpression()), !dbg !4710
  call void @llvm.dbg.declare(metadata %struct.resource* %mmconfig_res, metadata !4711, metadata !DIExpression()), !dbg !4712
  call void @llvm.dbg.declare(metadata %struct.resource** %mmconfig, metadata !4713, metadata !DIExpression()), !dbg !4714
  %call = call %struct.resource* @amd_get_mmconfig_range(%struct.resource* %mmconfig_res) #8, !dbg !4715
  store %struct.resource* %call, %struct.resource** %mmconfig, align 8, !dbg !4716
  %0 = load %struct.resource*, %struct.resource** %mmconfig, align 8, !dbg !4717
  %tobool = icmp ne %struct.resource* %0, null, !dbg !4717
  br i1 %tobool, label %if.end, label %if.then, !dbg !4719

if.then:                                          ; preds = %entry
  br label %for.end, !dbg !4720

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4721, metadata !DIExpression()), !dbg !4724
  %1 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4724
  %resources = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %1, i32 0, i32 16, !dbg !4724
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %resources, i32 0, i32 0, !dbg !4724
  %2 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4724
  %3 = bitcast %struct.list_head* %2 to i8*, !dbg !4724
  store i8* %3, i8** %__mptr, align 8, !dbg !4724
  br label %do.body, !dbg !4724

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !4725

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !4724
  %add.ptr = getelementptr i8, i8* %4, i64 0, !dbg !4724
  %5 = bitcast i8* %add.ptr to %struct.pnp_resource*, !dbg !4724
  store %struct.pnp_resource* %5, %struct.pnp_resource** %tmp, align 8, !dbg !4725
  %6 = load %struct.pnp_resource*, %struct.pnp_resource** %tmp, align 8, !dbg !4724
  store %struct.pnp_resource* %6, %struct.pnp_resource** %pnp_res, align 8, !dbg !4727
  br label %for.cond, !dbg !4727

for.cond:                                         ; preds = %do.end39, %do.end
  %7 = load %struct.pnp_resource*, %struct.pnp_resource** %pnp_res, align 8, !dbg !4728
  %list = getelementptr inbounds %struct.pnp_resource, %struct.pnp_resource* %7, i32 0, i32 0, !dbg !4728
  %8 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4728
  %resources1 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %8, i32 0, i32 16, !dbg !4728
  %cmp = icmp eq %struct.list_head* %list, %resources1, !dbg !4728
  %lnot = xor i1 %cmp, true, !dbg !4728
  br i1 %lnot, label %for.body, label %for.end, !dbg !4727

for.body:                                         ; preds = %for.cond
  %9 = load %struct.pnp_resource*, %struct.pnp_resource** %pnp_res, align 8, !dbg !4730
  %res2 = getelementptr inbounds %struct.pnp_resource, %struct.pnp_resource* %9, i32 0, i32 1, !dbg !4732
  store %struct.resource* %res2, %struct.resource** %res, align 8, !dbg !4733
  %10 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4734
  %end3 = getelementptr inbounds %struct.resource, %struct.resource* %10, i32 0, i32 1, !dbg !4736
  %11 = load i64, i64* %end3, align 8, !dbg !4736
  %12 = load %struct.resource*, %struct.resource** %mmconfig, align 8, !dbg !4737
  %start4 = getelementptr inbounds %struct.resource, %struct.resource* %12, i32 0, i32 0, !dbg !4738
  %13 = load i64, i64* %start4, align 8, !dbg !4738
  %cmp5 = icmp ult i64 %11, %13, !dbg !4739
  br i1 %cmp5, label %if.then16, label %lor.lhs.false, !dbg !4740

lor.lhs.false:                                    ; preds = %for.body
  %14 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4741
  %start6 = getelementptr inbounds %struct.resource, %struct.resource* %14, i32 0, i32 0, !dbg !4742
  %15 = load i64, i64* %start6, align 8, !dbg !4742
  %16 = load %struct.resource*, %struct.resource** %mmconfig, align 8, !dbg !4743
  %end7 = getelementptr inbounds %struct.resource, %struct.resource* %16, i32 0, i32 1, !dbg !4744
  %17 = load i64, i64* %end7, align 8, !dbg !4744
  %cmp8 = icmp ugt i64 %15, %17, !dbg !4745
  br i1 %cmp8, label %if.then16, label %lor.lhs.false9, !dbg !4746

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %18 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4747
  %start10 = getelementptr inbounds %struct.resource, %struct.resource* %18, i32 0, i32 0, !dbg !4748
  %19 = load i64, i64* %start10, align 8, !dbg !4748
  %20 = load %struct.resource*, %struct.resource** %mmconfig, align 8, !dbg !4749
  %start11 = getelementptr inbounds %struct.resource, %struct.resource* %20, i32 0, i32 0, !dbg !4750
  %21 = load i64, i64* %start11, align 8, !dbg !4750
  %cmp12 = icmp eq i64 %19, %21, !dbg !4751
  br i1 %cmp12, label %land.lhs.true, label %if.end17, !dbg !4752

land.lhs.true:                                    ; preds = %lor.lhs.false9
  %22 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4753
  %end13 = getelementptr inbounds %struct.resource, %struct.resource* %22, i32 0, i32 1, !dbg !4754
  %23 = load i64, i64* %end13, align 8, !dbg !4754
  %24 = load %struct.resource*, %struct.resource** %mmconfig, align 8, !dbg !4755
  %end14 = getelementptr inbounds %struct.resource, %struct.resource* %24, i32 0, i32 1, !dbg !4756
  %25 = load i64, i64* %end14, align 8, !dbg !4756
  %cmp15 = icmp eq i64 %23, %25, !dbg !4757
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !4758

if.then16:                                        ; preds = %land.lhs.true, %lor.lhs.false, %for.body
  br label %for.inc, !dbg !4759

if.end17:                                         ; preds = %land.lhs.true, %lor.lhs.false9
  %26 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4760
  %dev18 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %26, i32 0, i32 0, !dbg !4760
  %27 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4760
  %28 = load %struct.resource*, %struct.resource** %mmconfig, align 8, !dbg !4760
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev18, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.14, i64 0, i64 0), %struct.resource* %27, %struct.resource* %28) #9, !dbg !4760
  %29 = load %struct.resource*, %struct.resource** %mmconfig, align 8, !dbg !4761
  %start19 = getelementptr inbounds %struct.resource, %struct.resource* %29, i32 0, i32 0, !dbg !4763
  %30 = load i64, i64* %start19, align 8, !dbg !4763
  %31 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4764
  %start20 = getelementptr inbounds %struct.resource, %struct.resource* %31, i32 0, i32 0, !dbg !4765
  %32 = load i64, i64* %start20, align 8, !dbg !4765
  %cmp21 = icmp ult i64 %30, %32, !dbg !4766
  br i1 %cmp21, label %if.then22, label %if.end26, !dbg !4767

if.then22:                                        ; preds = %if.end17
  %33 = load %struct.resource*, %struct.resource** %mmconfig, align 8, !dbg !4768
  %start23 = getelementptr inbounds %struct.resource, %struct.resource* %33, i32 0, i32 0, !dbg !4770
  %34 = load i64, i64* %start23, align 8, !dbg !4770
  store i64 %34, i64* %start, align 8, !dbg !4771
  %35 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4772
  %start24 = getelementptr inbounds %struct.resource, %struct.resource* %35, i32 0, i32 0, !dbg !4773
  %36 = load i64, i64* %start24, align 8, !dbg !4773
  %sub = sub i64 %36, 1, !dbg !4774
  store i64 %sub, i64* %end, align 8, !dbg !4775
  %37 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4776
  %38 = load i64, i64* %start, align 8, !dbg !4777
  %39 = load i64, i64* %end, align 8, !dbg !4778
  %call25 = call %struct.pnp_resource* @pnp_add_mem_resource(%struct.pnp_dev* %37, i64 %38, i64 %39, i32 0) #8, !dbg !4779
  br label %if.end26, !dbg !4780

if.end26:                                         ; preds = %if.then22, %if.end17
  %40 = load %struct.resource*, %struct.resource** %mmconfig, align 8, !dbg !4781
  %end27 = getelementptr inbounds %struct.resource, %struct.resource* %40, i32 0, i32 1, !dbg !4783
  %41 = load i64, i64* %end27, align 8, !dbg !4783
  %42 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4784
  %end28 = getelementptr inbounds %struct.resource, %struct.resource* %42, i32 0, i32 1, !dbg !4785
  %43 = load i64, i64* %end28, align 8, !dbg !4785
  %cmp29 = icmp ugt i64 %41, %43, !dbg !4786
  br i1 %cmp29, label %if.then30, label %if.end34, !dbg !4787

if.then30:                                        ; preds = %if.end26
  %44 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4788
  %end31 = getelementptr inbounds %struct.resource, %struct.resource* %44, i32 0, i32 1, !dbg !4790
  %45 = load i64, i64* %end31, align 8, !dbg !4790
  %add = add i64 %45, 1, !dbg !4791
  store i64 %add, i64* %start, align 8, !dbg !4792
  %46 = load %struct.resource*, %struct.resource** %mmconfig, align 8, !dbg !4793
  %end32 = getelementptr inbounds %struct.resource, %struct.resource* %46, i32 0, i32 1, !dbg !4794
  %47 = load i64, i64* %end32, align 8, !dbg !4794
  store i64 %47, i64* %end, align 8, !dbg !4795
  %48 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4796
  %49 = load i64, i64* %start, align 8, !dbg !4797
  %50 = load i64, i64* %end, align 8, !dbg !4798
  %call33 = call %struct.pnp_resource* @pnp_add_mem_resource(%struct.pnp_dev* %48, i64 %49, i64 %50, i32 0) #8, !dbg !4799
  br label %if.end34, !dbg !4800

if.end34:                                         ; preds = %if.then30, %if.end26
  br label %for.end, !dbg !4801

for.inc:                                          ; preds = %if.then16
  call void @llvm.dbg.declare(metadata i8** %__mptr35, metadata !4802, metadata !DIExpression()), !dbg !4804
  %51 = load %struct.pnp_resource*, %struct.pnp_resource** %pnp_res, align 8, !dbg !4804
  %list36 = getelementptr inbounds %struct.pnp_resource, %struct.pnp_resource* %51, i32 0, i32 0, !dbg !4804
  %next37 = getelementptr inbounds %struct.list_head, %struct.list_head* %list36, i32 0, i32 0, !dbg !4804
  %52 = load %struct.list_head*, %struct.list_head** %next37, align 8, !dbg !4804
  %53 = bitcast %struct.list_head* %52 to i8*, !dbg !4804
  store i8* %53, i8** %__mptr35, align 8, !dbg !4804
  br label %do.body38, !dbg !4804

do.body38:                                        ; preds = %for.inc
  br label %do.end39, !dbg !4805

do.end39:                                         ; preds = %do.body38
  %54 = load i8*, i8** %__mptr35, align 8, !dbg !4804
  %add.ptr41 = getelementptr i8, i8* %54, i64 0, !dbg !4804
  %55 = bitcast i8* %add.ptr41 to %struct.pnp_resource*, !dbg !4804
  store %struct.pnp_resource* %55, %struct.pnp_resource** %tmp40, align 8, !dbg !4805
  %56 = load %struct.pnp_resource*, %struct.pnp_resource** %tmp40, align 8, !dbg !4804
  store %struct.pnp_resource* %56, %struct.pnp_resource** %pnp_res, align 8, !dbg !4728
  br label %for.cond, !dbg !4728, !llvm.loop !4807

for.end:                                          ; preds = %if.then, %if.end34, %for.cond
  ret void, !dbg !4809
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @quirk_intel_mch(%struct.pnp_dev* %dev) #0 !dbg !4810 {
entry:
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %host = alloca %struct.pci_dev*, align 8
  %addr_lo = alloca i32, align 4
  %addr_hi = alloca i32, align 4
  %region = alloca %struct.pci_bus_region, align 8
  %mch = alloca %struct.resource, align 8
  %pnp_res = alloca %struct.pnp_resource*, align 8
  %res = alloca %struct.resource*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pnp_resource*, align 8
  %__mptr35 = alloca i8*, align 8
  %tmp40 = alloca %struct.pnp_resource*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !4811, metadata !DIExpression()), !dbg !4812
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %host, metadata !4813, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.declare(metadata i32* %addr_lo, metadata !4815, metadata !DIExpression()), !dbg !4816
  call void @llvm.dbg.declare(metadata i32* %addr_hi, metadata !4817, metadata !DIExpression()), !dbg !4818
  call void @llvm.dbg.declare(metadata %struct.pci_bus_region* %region, metadata !4819, metadata !DIExpression()), !dbg !4825
  call void @llvm.dbg.declare(metadata %struct.resource* %mch, metadata !4826, metadata !DIExpression()), !dbg !4827
  call void @llvm.dbg.declare(metadata %struct.pnp_resource** %pnp_res, metadata !4828, metadata !DIExpression()), !dbg !4829
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !4830, metadata !DIExpression()), !dbg !4831
  %call = call %struct.pci_dev* @get_intel_host() #8, !dbg !4832
  store %struct.pci_dev* %call, %struct.pci_dev** %host, align 8, !dbg !4833
  %0 = load %struct.pci_dev*, %struct.pci_dev** %host, align 8, !dbg !4834
  %tobool = icmp ne %struct.pci_dev* %0, null, !dbg !4834
  br i1 %tobool, label %if.end, label %if.then, !dbg !4836

if.then:                                          ; preds = %entry
  br label %return, !dbg !4837

if.end:                                           ; preds = %entry
  %1 = load %struct.pci_dev*, %struct.pci_dev** %host, align 8, !dbg !4838
  %call1 = call i32 @pci_read_config_dword(%struct.pci_dev* %1, i32 72, i32* %addr_lo) #8, !dbg !4839
  %2 = load i32, i32* %addr_lo, align 4, !dbg !4840
  %and = and i32 %2, -32768, !dbg !4841
  %conv = zext i32 %and to i64, !dbg !4840
  %start = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %region, i32 0, i32 0, !dbg !4842
  store i64 %conv, i64* %start, align 8, !dbg !4843
  %3 = load %struct.pci_dev*, %struct.pci_dev** %host, align 8, !dbg !4844
  %call2 = call i32 @pci_read_config_dword(%struct.pci_dev* %3, i32 76, i32* %addr_hi) #8, !dbg !4845
  %4 = load i32, i32* %addr_hi, align 4, !dbg !4846
  %conv3 = zext i32 %4 to i64, !dbg !4847
  %shl = shl i64 %conv3, 32, !dbg !4848
  %start4 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %region, i32 0, i32 0, !dbg !4849
  %5 = load i64, i64* %start4, align 8, !dbg !4850
  %or = or i64 %5, %shl, !dbg !4850
  store i64 %or, i64* %start4, align 8, !dbg !4850
  %start5 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %region, i32 0, i32 0, !dbg !4851
  %6 = load i64, i64* %start5, align 8, !dbg !4851
  %add = add i64 %6, 32768, !dbg !4852
  %sub = sub i64 %add, 1, !dbg !4853
  %end = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %region, i32 0, i32 1, !dbg !4854
  store i64 %sub, i64* %end, align 8, !dbg !4855
  %7 = bitcast %struct.resource* %mch to i8*, !dbg !4856
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 64, i1 false), !dbg !4856
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %mch, i32 0, i32 3, !dbg !4857
  store i64 512, i64* %flags, align 8, !dbg !4858
  %8 = load %struct.pci_dev*, %struct.pci_dev** %host, align 8, !dbg !4859
  %bus = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 1, !dbg !4860
  %9 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !4860
  call void @pcibios_bus_to_resource(%struct.pci_bus* %9, %struct.resource* %mch, %struct.pci_bus_region* %region) #8, !dbg !4861
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4862, metadata !DIExpression()), !dbg !4865
  %10 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4865
  %resources = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %10, i32 0, i32 16, !dbg !4865
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %resources, i32 0, i32 0, !dbg !4865
  %11 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4865
  %12 = bitcast %struct.list_head* %11 to i8*, !dbg !4865
  store i8* %12, i8** %__mptr, align 8, !dbg !4865
  br label %do.body, !dbg !4865

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !4866

do.end:                                           ; preds = %do.body
  %13 = load i8*, i8** %__mptr, align 8, !dbg !4865
  %add.ptr = getelementptr i8, i8* %13, i64 0, !dbg !4865
  %14 = bitcast i8* %add.ptr to %struct.pnp_resource*, !dbg !4865
  store %struct.pnp_resource* %14, %struct.pnp_resource** %tmp, align 8, !dbg !4866
  %15 = load %struct.pnp_resource*, %struct.pnp_resource** %tmp, align 8, !dbg !4865
  store %struct.pnp_resource* %15, %struct.pnp_resource** %pnp_res, align 8, !dbg !4868
  br label %for.cond, !dbg !4868

for.cond:                                         ; preds = %do.end39, %do.end
  %16 = load %struct.pnp_resource*, %struct.pnp_resource** %pnp_res, align 8, !dbg !4869
  %list = getelementptr inbounds %struct.pnp_resource, %struct.pnp_resource* %16, i32 0, i32 0, !dbg !4869
  %17 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4869
  %resources6 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %17, i32 0, i32 16, !dbg !4869
  %cmp = icmp eq %struct.list_head* %list, %resources6, !dbg !4869
  %lnot = xor i1 %cmp, true, !dbg !4869
  br i1 %lnot, label %for.body, label %for.end, !dbg !4868

for.body:                                         ; preds = %for.cond
  %18 = load %struct.pnp_resource*, %struct.pnp_resource** %pnp_res, align 8, !dbg !4871
  %res8 = getelementptr inbounds %struct.pnp_resource, %struct.pnp_resource* %18, i32 0, i32 1, !dbg !4873
  store %struct.resource* %res8, %struct.resource** %res, align 8, !dbg !4874
  %19 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4875
  %end9 = getelementptr inbounds %struct.resource, %struct.resource* %19, i32 0, i32 1, !dbg !4877
  %20 = load i64, i64* %end9, align 8, !dbg !4877
  %start10 = getelementptr inbounds %struct.resource, %struct.resource* %mch, i32 0, i32 0, !dbg !4878
  %21 = load i64, i64* %start10, align 8, !dbg !4878
  %cmp11 = icmp ult i64 %20, %21, !dbg !4879
  br i1 %cmp11, label %if.then17, label %lor.lhs.false, !dbg !4880

lor.lhs.false:                                    ; preds = %for.body
  %22 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4881
  %start13 = getelementptr inbounds %struct.resource, %struct.resource* %22, i32 0, i32 0, !dbg !4882
  %23 = load i64, i64* %start13, align 8, !dbg !4882
  %end14 = getelementptr inbounds %struct.resource, %struct.resource* %mch, i32 0, i32 1, !dbg !4883
  %24 = load i64, i64* %end14, align 8, !dbg !4883
  %cmp15 = icmp ugt i64 %23, %24, !dbg !4884
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !4885

if.then17:                                        ; preds = %lor.lhs.false, %for.body
  br label %for.inc, !dbg !4886

if.end18:                                         ; preds = %lor.lhs.false
  %25 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4887
  %start19 = getelementptr inbounds %struct.resource, %struct.resource* %25, i32 0, i32 0, !dbg !4889
  %26 = load i64, i64* %start19, align 8, !dbg !4889
  %start20 = getelementptr inbounds %struct.resource, %struct.resource* %mch, i32 0, i32 0, !dbg !4890
  %27 = load i64, i64* %start20, align 8, !dbg !4890
  %cmp21 = icmp eq i64 %26, %27, !dbg !4891
  br i1 %cmp21, label %land.lhs.true, label %if.end28, !dbg !4892

land.lhs.true:                                    ; preds = %if.end18
  %28 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4893
  %end23 = getelementptr inbounds %struct.resource, %struct.resource* %28, i32 0, i32 1, !dbg !4894
  %29 = load i64, i64* %end23, align 8, !dbg !4894
  %end24 = getelementptr inbounds %struct.resource, %struct.resource* %mch, i32 0, i32 1, !dbg !4895
  %30 = load i64, i64* %end24, align 8, !dbg !4895
  %cmp25 = icmp eq i64 %29, %30, !dbg !4896
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !4897

if.then27:                                        ; preds = %land.lhs.true
  br label %for.inc, !dbg !4898

if.end28:                                         ; preds = %land.lhs.true, %if.end18
  %31 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !4899
  %dev29 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %31, i32 0, i32 0, !dbg !4899
  %32 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4899
  %33 = load %struct.pci_dev*, %struct.pci_dev** %host, align 8, !dbg !4899
  %call30 = call i8* @pci_name(%struct.pci_dev* %33) #8, !dbg !4899
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev29, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.15, i64 0, i64 0), %struct.resource* %32, i8* %call30, %struct.resource* %mch) #9, !dbg !4899
  %start31 = getelementptr inbounds %struct.resource, %struct.resource* %mch, i32 0, i32 0, !dbg !4900
  %34 = load i64, i64* %start31, align 8, !dbg !4900
  %35 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4901
  %start32 = getelementptr inbounds %struct.resource, %struct.resource* %35, i32 0, i32 0, !dbg !4902
  store i64 %34, i64* %start32, align 8, !dbg !4903
  %end33 = getelementptr inbounds %struct.resource, %struct.resource* %mch, i32 0, i32 1, !dbg !4904
  %36 = load i64, i64* %end33, align 8, !dbg !4904
  %37 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4905
  %end34 = getelementptr inbounds %struct.resource, %struct.resource* %37, i32 0, i32 1, !dbg !4906
  store i64 %36, i64* %end34, align 8, !dbg !4907
  br label %for.end, !dbg !4908

for.inc:                                          ; preds = %if.then27, %if.then17
  call void @llvm.dbg.declare(metadata i8** %__mptr35, metadata !4909, metadata !DIExpression()), !dbg !4911
  %38 = load %struct.pnp_resource*, %struct.pnp_resource** %pnp_res, align 8, !dbg !4911
  %list36 = getelementptr inbounds %struct.pnp_resource, %struct.pnp_resource* %38, i32 0, i32 0, !dbg !4911
  %next37 = getelementptr inbounds %struct.list_head, %struct.list_head* %list36, i32 0, i32 0, !dbg !4911
  %39 = load %struct.list_head*, %struct.list_head** %next37, align 8, !dbg !4911
  %40 = bitcast %struct.list_head* %39 to i8*, !dbg !4911
  store i8* %40, i8** %__mptr35, align 8, !dbg !4911
  br label %do.body38, !dbg !4911

do.body38:                                        ; preds = %for.inc
  br label %do.end39, !dbg !4912

do.end39:                                         ; preds = %do.body38
  %41 = load i8*, i8** %__mptr35, align 8, !dbg !4911
  %add.ptr41 = getelementptr i8, i8* %41, i64 0, !dbg !4911
  %42 = bitcast i8* %add.ptr41 to %struct.pnp_resource*, !dbg !4911
  store %struct.pnp_resource* %42, %struct.pnp_resource** %tmp40, align 8, !dbg !4912
  %43 = load %struct.pnp_resource*, %struct.pnp_resource** %tmp40, align 8, !dbg !4911
  store %struct.pnp_resource* %43, %struct.pnp_resource** %pnp_res, align 8, !dbg !4869
  br label %for.cond, !dbg !4869, !llvm.loop !4914

for.end:                                          ; preds = %if.end28, %for.cond
  %44 = load %struct.pci_dev*, %struct.pci_dev** %host, align 8, !dbg !4916
  call void @pci_dev_put(%struct.pci_dev* %44) #8, !dbg !4917
  br label %return, !dbg !4918

return:                                           ; preds = %for.end, %if.then
  ret void, !dbg !4918
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pnp_option_is_dependent(%struct.pnp_option* %option) #0 !dbg !4919 {
entry:
  %option.addr = alloca %struct.pnp_option*, align 8
  store %struct.pnp_option* %option, %struct.pnp_option** %option.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_option** %option.addr, metadata !4922, metadata !DIExpression()), !dbg !4923
  %0 = load %struct.pnp_option*, %struct.pnp_option** %option.addr, align 8, !dbg !4924
  %flags = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %0, i32 0, i32 1, !dbg !4925
  %1 = load i32, i32* %flags, align 8, !dbg !4925
  %and = and i32 %1, -2147483648, !dbg !4926
  %tobool = icmp ne i32 %and, 0, !dbg !4924
  %2 = zext i1 %tobool to i64, !dbg !4924
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !4924
  ret i32 %cond, !dbg !4927
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pnp_option_set(%struct.pnp_option* %option) #0 !dbg !4928 {
entry:
  %option.addr = alloca %struct.pnp_option*, align 8
  store %struct.pnp_option* %option, %struct.pnp_option** %option.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_option** %option.addr, metadata !4931, metadata !DIExpression()), !dbg !4932
  %0 = load %struct.pnp_option*, %struct.pnp_option** %option.addr, align 8, !dbg !4933
  %flags = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %0, i32 0, i32 1, !dbg !4934
  %1 = load i32, i32* %flags, align 8, !dbg !4934
  %shr = lshr i32 %1, 12, !dbg !4935
  %and = and i32 %shr, 65535, !dbg !4936
  ret i32 %and, !dbg !4937
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @quirk_awe32_add_ports(%struct.pnp_dev* %dev, %struct.pnp_option* %option, i32 %offset) #0 !dbg !4938 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4941, metadata !DIExpression()), !dbg !4945
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4953, metadata !DIExpression()), !dbg !4954
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4955, metadata !DIExpression()), !dbg !4956
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4957, metadata !DIExpression()), !dbg !4958
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4959, metadata !DIExpression()), !dbg !4963
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4965, metadata !DIExpression()), !dbg !4969
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4971, metadata !DIExpression()), !dbg !4975
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4980, metadata !DIExpression()), !dbg !4981
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4982, metadata !DIExpression()), !dbg !4983
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4984, metadata !DIExpression()), !dbg !4985
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4986, metadata !DIExpression()), !dbg !4987
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4988, metadata !DIExpression()), !dbg !4989
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4990, metadata !DIExpression()), !dbg !4991
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4992, metadata !DIExpression()), !dbg !4993
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4994, metadata !DIExpression()), !dbg !4995
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %option.addr = alloca %struct.pnp_option*, align 8
  %offset.addr = alloca i32, align 4
  %new_option = alloca %struct.pnp_option*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !4996, metadata !DIExpression()), !dbg !4997
  store %struct.pnp_option* %option, %struct.pnp_option** %option.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_option** %option.addr, metadata !4998, metadata !DIExpression()), !dbg !4999
  store i32 %offset, i32* %offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %offset.addr, metadata !5000, metadata !DIExpression()), !dbg !5001
  call void @llvm.dbg.declare(metadata %struct.pnp_option** %new_option, metadata !5002, metadata !DIExpression()), !dbg !5003
  store i64 72, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %0 = load i64, i64* %size.addr.i, align 8, !dbg !5004
  %1 = call i1 @llvm.is.constant.i64(i64 %0) #10, !dbg !5005
  br i1 %1, label %if.then.i, label %if.end9.i, !dbg !5006

if.then.i:                                        ; preds = %entry
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !5007
  %cmp.i = icmp ugt i64 %2, 8192, !dbg !5008
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5009

if.then1.i:                                       ; preds = %if.then.i
  %3 = load i64, i64* %size.addr.i, align 8, !dbg !5010
  %4 = load i32, i32* %flags.addr.i, align 4, !dbg !5011
  store i64 %3, i64* %size.addr.i.i, align 8
  store i32 %4, i32* %flags.addr.i.i, align 4
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !5012
  %call.i.i = call i32 @get_order(i64 %5) #11, !dbg !5013
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4989
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !5014
  %7 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5015
  %8 = load i32, i32* %order.i.i, align 4, !dbg !5016
  store i64 %6, i64* %size.addr.i.i.i, align 8
  store i32 %7, i32* %flags.addr.i.i.i, align 4
  store i32 %8, i32* %order.addr.i.i.i, align 4
  %9 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5017
  %10 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5018
  %11 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5019
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %9, i32 %10, i32 %11) #12, !dbg !5020
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5020
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5020
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5020
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !5020
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5021
  br label %kmalloc.exit, !dbg !5021

if.end.i:                                         ; preds = %if.then.i
  %12 = load i64, i64* %size.addr.i, align 8, !dbg !5022
  store i64 %12, i64* %size.addr.i11.i, align 8
  %13 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5023
  %tobool.i.i = icmp ne i64 %13, 0, !dbg !5023
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5025

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5026
  br label %kmalloc_index.exit.i, !dbg !5026

if.end.i.i:                                       ; preds = %if.end.i
  %14 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5027
  %cmp.i.i = icmp ule i64 %14, 8, !dbg !5029
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5030

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5031
  br label %kmalloc_index.exit.i, !dbg !5031

if.end2.i.i:                                      ; preds = %if.end.i.i
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5032
  %cmp3.i.i = icmp ugt i64 %15, 64, !dbg !5034
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5035

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5036
  %cmp4.i.i = icmp ule i64 %16, 96, !dbg !5037
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5038

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5039
  br label %kmalloc_index.exit.i, !dbg !5039

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5040
  %cmp7.i.i = icmp ugt i64 %17, 128, !dbg !5042
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5043

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5044
  %cmp9.i.i = icmp ule i64 %18, 192, !dbg !5045
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5046

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5047
  br label %kmalloc_index.exit.i, !dbg !5047

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5048
  %cmp12.i.i = icmp ule i64 %19, 8, !dbg !5050
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5051

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5052
  br label %kmalloc_index.exit.i, !dbg !5052

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5053
  %cmp15.i.i = icmp ule i64 %20, 16, !dbg !5055
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5056

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5057
  br label %kmalloc_index.exit.i, !dbg !5057

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5058
  %cmp18.i.i = icmp ule i64 %21, 32, !dbg !5060
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5061

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5062
  br label %kmalloc_index.exit.i, !dbg !5062

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5063
  %cmp21.i.i = icmp ule i64 %22, 64, !dbg !5065
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5066

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5067
  br label %kmalloc_index.exit.i, !dbg !5067

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5068
  %cmp24.i.i = icmp ule i64 %23, 128, !dbg !5070
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5071

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5072
  br label %kmalloc_index.exit.i, !dbg !5072

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5073
  %cmp27.i.i = icmp ule i64 %24, 256, !dbg !5075
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5076

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5077
  br label %kmalloc_index.exit.i, !dbg !5077

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5078
  %cmp30.i.i = icmp ule i64 %25, 512, !dbg !5080
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5081

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5082
  br label %kmalloc_index.exit.i, !dbg !5082

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5083
  %cmp33.i.i = icmp ule i64 %26, 1024, !dbg !5085
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5086

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5087
  br label %kmalloc_index.exit.i, !dbg !5087

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5088
  %cmp36.i.i = icmp ule i64 %27, 2048, !dbg !5090
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5091

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5092
  br label %kmalloc_index.exit.i, !dbg !5092

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5093
  %cmp39.i.i = icmp ule i64 %28, 4096, !dbg !5095
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5096

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5097
  br label %kmalloc_index.exit.i, !dbg !5097

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5098
  %cmp42.i.i = icmp ule i64 %29, 8192, !dbg !5100
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5101

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5102
  br label %kmalloc_index.exit.i, !dbg !5102

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5103
  %cmp45.i.i = icmp ule i64 %30, 16384, !dbg !5105
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5106

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5107
  br label %kmalloc_index.exit.i, !dbg !5107

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5108
  %cmp48.i.i = icmp ule i64 %31, 32768, !dbg !5110
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5111

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5112
  br label %kmalloc_index.exit.i, !dbg !5112

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5113
  %cmp51.i.i = icmp ule i64 %32, 65536, !dbg !5115
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5116

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5117
  br label %kmalloc_index.exit.i, !dbg !5117

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5118
  %cmp54.i.i = icmp ule i64 %33, 131072, !dbg !5120
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5121

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5122
  br label %kmalloc_index.exit.i, !dbg !5122

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5123
  %cmp57.i.i = icmp ule i64 %34, 262144, !dbg !5125
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5126

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5127
  br label %kmalloc_index.exit.i, !dbg !5127

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5128
  %cmp60.i.i = icmp ule i64 %35, 524288, !dbg !5130
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5131

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5132
  br label %kmalloc_index.exit.i, !dbg !5132

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5133
  %cmp63.i.i = icmp ule i64 %36, 1048576, !dbg !5135
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5136

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5137
  br label %kmalloc_index.exit.i, !dbg !5137

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5138
  %cmp66.i.i = icmp ule i64 %37, 2097152, !dbg !5140
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5141

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5142
  br label %kmalloc_index.exit.i, !dbg !5142

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5143
  %cmp69.i.i = icmp ule i64 %38, 4194304, !dbg !5145
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5146

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5147
  br label %kmalloc_index.exit.i, !dbg !5147

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5148
  %cmp72.i.i = icmp ule i64 %39, 8388608, !dbg !5150
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5151

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5152
  br label %kmalloc_index.exit.i, !dbg !5152

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5153
  %cmp75.i.i = icmp ule i64 %40, 16777216, !dbg !5155
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5156

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5157
  br label %kmalloc_index.exit.i, !dbg !5157

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5158
  %cmp78.i.i = icmp ule i64 %41, 33554432, !dbg !5160
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5161

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5162
  br label %kmalloc_index.exit.i, !dbg !5162

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5163
  %cmp81.i.i = icmp ule i64 %42, 67108864, !dbg !5165
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5166

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5167
  br label %kmalloc_index.exit.i, !dbg !5167

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !5168, !srcloc !5171
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 156) #10, !dbg !5172, !srcloc !5175
  unreachable, !dbg !5176

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %43 = load i32, i32* %retval.i.i, align 4, !dbg !5177
  store i32 %43, i32* %index.i, align 4, !dbg !5178
  %44 = load i32, i32* %index.i, align 4, !dbg !5179
  %tobool.i = icmp ne i32 %44, 0, !dbg !5179
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5181

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5182
  br label %kmalloc.exit, !dbg !5182

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %45 = load i32, i32* %flags.addr.i, align 4, !dbg !5183
  store i32 %45, i32* %flags.addr.i13.i, align 4
  %46 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5184
  %and.i.i = and i32 %46, 17, !dbg !5184
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5184
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5184
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5184
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5184
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5186

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5187
  br label %kmalloc_type.exit.i, !dbg !5187

if.end.i16.i:                                     ; preds = %if.end4.i
  %47 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5188
  %and2.i.i = and i32 %47, 1, !dbg !5189
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5188
  %48 = zext i1 %tobool3.i.i to i64, !dbg !5188
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5188
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5190
  br label %kmalloc_type.exit.i, !dbg !5190

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %49 = load i32, i32* %retval.i12.i, align 4, !dbg !5191
  %idxprom.i = zext i32 %49 to i64, !dbg !5192
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5192
  %50 = load i32, i32* %index.i, align 4, !dbg !5193
  %idxprom6.i = zext i32 %50 to i64, !dbg !5192
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5192
  %51 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5192
  %52 = load i32, i32* %flags.addr.i, align 4, !dbg !5194
  %53 = load i64, i64* %size.addr.i, align 8, !dbg !5195
  store %struct.kmem_cache* %51, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %52, i32* %flags.addr.i17.i, align 4
  store i64 %53, i64* %size.addr.i18.i, align 8
  %54 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5196
  %55 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5197
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %54, i32 %55) #12, !dbg !5198
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5198
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5198
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5198
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !5198
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4958
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5199
  %57 = load i8*, i8** %ret.i.i, align 8, !dbg !5200
  %58 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5201
  %59 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5202
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %56, i8* %57, i64 %58, i32 %59) #12, !dbg !5203
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5204
  %60 = load i8*, i8** %ret.i.i, align 8, !dbg !5205
  store i8* %60, i8** %retval.i, align 8, !dbg !5206
  br label %kmalloc.exit, !dbg !5206

if.end9.i:                                        ; preds = %entry
  %61 = load i64, i64* %size.addr.i, align 8, !dbg !5207
  %62 = load i32, i32* %flags.addr.i, align 4, !dbg !5208
  %call10.i = call noalias i8* @__kmalloc(i64 %61, i32 %62) #12, !dbg !5209
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5209
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5209
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5209
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !5209
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5210
  br label %kmalloc.exit, !dbg !5210

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %63 = load i8*, i8** %retval.i, align 8, !dbg !5211
  %64 = bitcast i8* %63 to %struct.pnp_option*, !dbg !5212
  store %struct.pnp_option* %64, %struct.pnp_option** %new_option, align 8, !dbg !5213
  %65 = load %struct.pnp_option*, %struct.pnp_option** %new_option, align 8, !dbg !5214
  %tobool = icmp ne %struct.pnp_option* %65, null, !dbg !5214
  br i1 %tobool, label %if.end, label %if.then, !dbg !5216

if.then:                                          ; preds = %kmalloc.exit
  %66 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !5217
  %dev1 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %66, i32 0, i32 0, !dbg !5217
  %67 = load %struct.pnp_option*, %struct.pnp_option** %option.addr, align 8, !dbg !5217
  %call2 = call i32 @pnp_option_set(%struct.pnp_option* %67) #8, !dbg !5217
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %call2) #9, !dbg !5217
  br label %return, !dbg !5219

if.end:                                           ; preds = %kmalloc.exit
  %68 = load %struct.pnp_option*, %struct.pnp_option** %new_option, align 8, !dbg !5220
  %69 = load %struct.pnp_option*, %struct.pnp_option** %option.addr, align 8, !dbg !5221
  %70 = bitcast %struct.pnp_option* %68 to i8*, !dbg !5222
  %71 = bitcast %struct.pnp_option* %69 to i8*, !dbg !5222
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %70, i8* align 8 %71, i64 72, i1 false), !dbg !5222
  %72 = load i32, i32* %offset.addr, align 4, !dbg !5223
  %conv = zext i32 %72 to i64, !dbg !5223
  %73 = load %struct.pnp_option*, %struct.pnp_option** %new_option, align 8, !dbg !5224
  %u = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %73, i32 0, i32 3, !dbg !5225
  %port = bitcast %union.anon.66* %u to %struct.pnp_port*, !dbg !5226
  %min = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %port, i32 0, i32 0, !dbg !5227
  %74 = load i64, i64* %min, align 8, !dbg !5228
  %add = add i64 %74, %conv, !dbg !5228
  store i64 %add, i64* %min, align 8, !dbg !5228
  %75 = load i32, i32* %offset.addr, align 4, !dbg !5229
  %conv3 = zext i32 %75 to i64, !dbg !5229
  %76 = load %struct.pnp_option*, %struct.pnp_option** %new_option, align 8, !dbg !5230
  %u4 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %76, i32 0, i32 3, !dbg !5231
  %port5 = bitcast %union.anon.66* %u4 to %struct.pnp_port*, !dbg !5232
  %max = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %port5, i32 0, i32 1, !dbg !5233
  %77 = load i64, i64* %max, align 8, !dbg !5234
  %add6 = add i64 %77, %conv3, !dbg !5234
  store i64 %add6, i64* %max, align 8, !dbg !5234
  %78 = load %struct.pnp_option*, %struct.pnp_option** %new_option, align 8, !dbg !5235
  %list = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %78, i32 0, i32 0, !dbg !5236
  %79 = load %struct.pnp_option*, %struct.pnp_option** %option.addr, align 8, !dbg !5237
  %list7 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %79, i32 0, i32 0, !dbg !5238
  call void @list_add(%struct.list_head* %list, %struct.list_head* %list7) #8, !dbg !5239
  %80 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !5240
  %dev8 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %80, i32 0, i32 0, !dbg !5240
  %81 = load %struct.pnp_option*, %struct.pnp_option** %new_option, align 8, !dbg !5240
  %u9 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %81, i32 0, i32 3, !dbg !5240
  %port10 = bitcast %union.anon.66* %u9 to %struct.pnp_port*, !dbg !5240
  %min11 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %port10, i32 0, i32 0, !dbg !5240
  %82 = load i64, i64* %min11, align 8, !dbg !5240
  %83 = load %struct.pnp_option*, %struct.pnp_option** %new_option, align 8, !dbg !5240
  %u12 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %83, i32 0, i32 3, !dbg !5240
  %port13 = bitcast %union.anon.66* %u12 to %struct.pnp_port*, !dbg !5240
  %max14 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %port13, i32 0, i32 1, !dbg !5240
  %84 = load i64, i64* %max14, align 8, !dbg !5240
  %85 = load %struct.pnp_option*, %struct.pnp_option** %option.addr, align 8, !dbg !5240
  %call15 = call i32 @pnp_option_set(%struct.pnp_option* %85) #8, !dbg !5240
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev8, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 %82, i64 %84, i32 %call15) #9, !dbg !5240
  br label %return, !dbg !5241

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5241
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !5242 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5246, metadata !DIExpression()), !dbg !5247
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !5248, metadata !DIExpression()), !dbg !5249
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5250
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5251
  %2 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5252
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 0, !dbg !5253
  %3 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5253
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %3) #8, !dbg !5254
  ret void, !dbg !5255
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #3

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !5256 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5260, metadata !DIExpression()), !dbg !5265
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5267, metadata !DIExpression()), !dbg !5268
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5269, metadata !DIExpression()), !dbg !5270
  %0 = load i64, i64* %size.addr, align 8, !dbg !5271
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5273
  br i1 %1, label %if.then, label %if.end447, !dbg !5274

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5275
  %tobool = icmp ne i64 %2, 0, !dbg !5275
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5278

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5279
  br label %return, !dbg !5279

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5280
  %cmp = icmp ult i64 %3, 4096, !dbg !5282
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5283

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5284
  br label %return, !dbg !5284

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub = sub i64 %4, 1, !dbg !5285
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5285
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5285

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub4 = sub i64 %6, 1, !dbg !5285
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5285
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5285

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub6 = sub i64 %8, 1, !dbg !5285
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5285
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5285

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5285

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub9 = sub i64 %9, 1, !dbg !5285
  %and = and i64 %sub9, -9223372036854775808, !dbg !5285
  %tobool10 = icmp ne i64 %and, 0, !dbg !5285
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5285

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5285

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub13 = sub i64 %10, 1, !dbg !5285
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5285
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5285
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5285

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5285

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub18 = sub i64 %11, 1, !dbg !5285
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5285
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5285
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5285

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5285

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub23 = sub i64 %12, 1, !dbg !5285
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5285
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5285
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5285

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5285

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub28 = sub i64 %13, 1, !dbg !5285
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5285
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5285
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5285

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5285

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub33 = sub i64 %14, 1, !dbg !5285
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5285
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5285
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5285

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5285

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub38 = sub i64 %15, 1, !dbg !5285
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5285
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5285
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5285

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5285

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub43 = sub i64 %16, 1, !dbg !5285
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5285
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5285
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5285

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5285

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub48 = sub i64 %17, 1, !dbg !5285
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5285
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5285
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5285

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5285

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub53 = sub i64 %18, 1, !dbg !5285
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5285
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5285
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5285

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5285

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub58 = sub i64 %19, 1, !dbg !5285
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5285
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5285
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5285

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5285

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub63 = sub i64 %20, 1, !dbg !5285
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5285
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5285
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5285

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5285

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub68 = sub i64 %21, 1, !dbg !5285
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5285
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5285
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5285

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5285

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub73 = sub i64 %22, 1, !dbg !5285
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5285
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5285
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5285

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5285

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub78 = sub i64 %23, 1, !dbg !5285
  %and79 = and i64 %sub78, 562949953421312, !dbg !5285
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5285
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5285

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5285

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub83 = sub i64 %24, 1, !dbg !5285
  %and84 = and i64 %sub83, 281474976710656, !dbg !5285
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5285
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5285

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5285

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub88 = sub i64 %25, 1, !dbg !5285
  %and89 = and i64 %sub88, 140737488355328, !dbg !5285
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5285
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5285

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5285

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub93 = sub i64 %26, 1, !dbg !5285
  %and94 = and i64 %sub93, 70368744177664, !dbg !5285
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5285
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5285

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5285

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub98 = sub i64 %27, 1, !dbg !5285
  %and99 = and i64 %sub98, 35184372088832, !dbg !5285
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5285
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5285

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5285

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub103 = sub i64 %28, 1, !dbg !5285
  %and104 = and i64 %sub103, 17592186044416, !dbg !5285
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5285
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5285

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5285

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub108 = sub i64 %29, 1, !dbg !5285
  %and109 = and i64 %sub108, 8796093022208, !dbg !5285
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5285
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5285

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5285

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub113 = sub i64 %30, 1, !dbg !5285
  %and114 = and i64 %sub113, 4398046511104, !dbg !5285
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5285
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5285

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5285

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub118 = sub i64 %31, 1, !dbg !5285
  %and119 = and i64 %sub118, 2199023255552, !dbg !5285
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5285
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5285

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5285

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub123 = sub i64 %32, 1, !dbg !5285
  %and124 = and i64 %sub123, 1099511627776, !dbg !5285
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5285
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5285

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5285

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub128 = sub i64 %33, 1, !dbg !5285
  %and129 = and i64 %sub128, 549755813888, !dbg !5285
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5285
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5285

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5285

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub133 = sub i64 %34, 1, !dbg !5285
  %and134 = and i64 %sub133, 274877906944, !dbg !5285
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5285
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5285

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5285

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub138 = sub i64 %35, 1, !dbg !5285
  %and139 = and i64 %sub138, 137438953472, !dbg !5285
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5285
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5285

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5285

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub143 = sub i64 %36, 1, !dbg !5285
  %and144 = and i64 %sub143, 68719476736, !dbg !5285
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5285
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5285

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5285

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub148 = sub i64 %37, 1, !dbg !5285
  %and149 = and i64 %sub148, 34359738368, !dbg !5285
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5285
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5285

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5285

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub153 = sub i64 %38, 1, !dbg !5285
  %and154 = and i64 %sub153, 17179869184, !dbg !5285
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5285
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5285

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5285

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub158 = sub i64 %39, 1, !dbg !5285
  %and159 = and i64 %sub158, 8589934592, !dbg !5285
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5285
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5285

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5285

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub163 = sub i64 %40, 1, !dbg !5285
  %and164 = and i64 %sub163, 4294967296, !dbg !5285
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5285
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5285

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5285

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub168 = sub i64 %41, 1, !dbg !5285
  %and169 = and i64 %sub168, 2147483648, !dbg !5285
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5285
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5285

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5285

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub173 = sub i64 %42, 1, !dbg !5285
  %and174 = and i64 %sub173, 1073741824, !dbg !5285
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5285
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5285

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5285

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub178 = sub i64 %43, 1, !dbg !5285
  %and179 = and i64 %sub178, 536870912, !dbg !5285
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5285
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5285

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5285

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub183 = sub i64 %44, 1, !dbg !5285
  %and184 = and i64 %sub183, 268435456, !dbg !5285
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5285
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5285

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5285

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub188 = sub i64 %45, 1, !dbg !5285
  %and189 = and i64 %sub188, 134217728, !dbg !5285
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5285
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5285

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5285

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub193 = sub i64 %46, 1, !dbg !5285
  %and194 = and i64 %sub193, 67108864, !dbg !5285
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5285
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5285

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5285

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub198 = sub i64 %47, 1, !dbg !5285
  %and199 = and i64 %sub198, 33554432, !dbg !5285
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5285
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5285

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5285

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub203 = sub i64 %48, 1, !dbg !5285
  %and204 = and i64 %sub203, 16777216, !dbg !5285
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5285
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5285

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5285

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub208 = sub i64 %49, 1, !dbg !5285
  %and209 = and i64 %sub208, 8388608, !dbg !5285
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5285
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5285

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5285

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub213 = sub i64 %50, 1, !dbg !5285
  %and214 = and i64 %sub213, 4194304, !dbg !5285
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5285
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5285

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5285

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub218 = sub i64 %51, 1, !dbg !5285
  %and219 = and i64 %sub218, 2097152, !dbg !5285
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5285
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5285

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5285

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub223 = sub i64 %52, 1, !dbg !5285
  %and224 = and i64 %sub223, 1048576, !dbg !5285
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5285
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5285

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5285

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub228 = sub i64 %53, 1, !dbg !5285
  %and229 = and i64 %sub228, 524288, !dbg !5285
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5285
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5285

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5285

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub233 = sub i64 %54, 1, !dbg !5285
  %and234 = and i64 %sub233, 262144, !dbg !5285
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5285
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5285

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5285

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub238 = sub i64 %55, 1, !dbg !5285
  %and239 = and i64 %sub238, 131072, !dbg !5285
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5285
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5285

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5285

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub243 = sub i64 %56, 1, !dbg !5285
  %and244 = and i64 %sub243, 65536, !dbg !5285
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5285
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5285

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5285

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub248 = sub i64 %57, 1, !dbg !5285
  %and249 = and i64 %sub248, 32768, !dbg !5285
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5285
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5285

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5285

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub253 = sub i64 %58, 1, !dbg !5285
  %and254 = and i64 %sub253, 16384, !dbg !5285
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5285
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5285

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5285

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub258 = sub i64 %59, 1, !dbg !5285
  %and259 = and i64 %sub258, 8192, !dbg !5285
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5285
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5285

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5285

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub263 = sub i64 %60, 1, !dbg !5285
  %and264 = and i64 %sub263, 4096, !dbg !5285
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5285
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5285

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5285

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub268 = sub i64 %61, 1, !dbg !5285
  %and269 = and i64 %sub268, 2048, !dbg !5285
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5285
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5285

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5285

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub273 = sub i64 %62, 1, !dbg !5285
  %and274 = and i64 %sub273, 1024, !dbg !5285
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5285
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5285

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5285

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub278 = sub i64 %63, 1, !dbg !5285
  %and279 = and i64 %sub278, 512, !dbg !5285
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5285
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5285

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5285

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub283 = sub i64 %64, 1, !dbg !5285
  %and284 = and i64 %sub283, 256, !dbg !5285
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5285
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5285

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5285

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub288 = sub i64 %65, 1, !dbg !5285
  %and289 = and i64 %sub288, 128, !dbg !5285
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5285
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5285

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5285

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub293 = sub i64 %66, 1, !dbg !5285
  %and294 = and i64 %sub293, 64, !dbg !5285
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5285
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5285

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5285

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub298 = sub i64 %67, 1, !dbg !5285
  %and299 = and i64 %sub298, 32, !dbg !5285
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5285
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5285

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5285

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub303 = sub i64 %68, 1, !dbg !5285
  %and304 = and i64 %sub303, 16, !dbg !5285
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5285
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5285

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5285

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub308 = sub i64 %69, 1, !dbg !5285
  %and309 = and i64 %sub308, 8, !dbg !5285
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5285
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5285

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5285

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub313 = sub i64 %70, 1, !dbg !5285
  %and314 = and i64 %sub313, 4, !dbg !5285
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5285
  %71 = zext i1 %tobool315 to i64, !dbg !5285
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5285
  br label %cond.end, !dbg !5285

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5285
  br label %cond.end317, !dbg !5285

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5285
  br label %cond.end319, !dbg !5285

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5285
  br label %cond.end321, !dbg !5285

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5285
  br label %cond.end323, !dbg !5285

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5285
  br label %cond.end325, !dbg !5285

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5285
  br label %cond.end327, !dbg !5285

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5285
  br label %cond.end329, !dbg !5285

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5285
  br label %cond.end331, !dbg !5285

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5285
  br label %cond.end333, !dbg !5285

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5285
  br label %cond.end335, !dbg !5285

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5285
  br label %cond.end337, !dbg !5285

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5285
  br label %cond.end339, !dbg !5285

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5285
  br label %cond.end341, !dbg !5285

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5285
  br label %cond.end343, !dbg !5285

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5285
  br label %cond.end345, !dbg !5285

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5285
  br label %cond.end347, !dbg !5285

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5285
  br label %cond.end349, !dbg !5285

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5285
  br label %cond.end351, !dbg !5285

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5285
  br label %cond.end353, !dbg !5285

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5285
  br label %cond.end355, !dbg !5285

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5285
  br label %cond.end357, !dbg !5285

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5285
  br label %cond.end359, !dbg !5285

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5285
  br label %cond.end361, !dbg !5285

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5285
  br label %cond.end363, !dbg !5285

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5285
  br label %cond.end365, !dbg !5285

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5285
  br label %cond.end367, !dbg !5285

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5285
  br label %cond.end369, !dbg !5285

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5285
  br label %cond.end371, !dbg !5285

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5285
  br label %cond.end373, !dbg !5285

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5285
  br label %cond.end375, !dbg !5285

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5285
  br label %cond.end377, !dbg !5285

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5285
  br label %cond.end379, !dbg !5285

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5285
  br label %cond.end381, !dbg !5285

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5285
  br label %cond.end383, !dbg !5285

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5285
  br label %cond.end385, !dbg !5285

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5285
  br label %cond.end387, !dbg !5285

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5285
  br label %cond.end389, !dbg !5285

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5285
  br label %cond.end391, !dbg !5285

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5285
  br label %cond.end393, !dbg !5285

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5285
  br label %cond.end395, !dbg !5285

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5285
  br label %cond.end397, !dbg !5285

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5285
  br label %cond.end399, !dbg !5285

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5285
  br label %cond.end401, !dbg !5285

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5285
  br label %cond.end403, !dbg !5285

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5285
  br label %cond.end405, !dbg !5285

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5285
  br label %cond.end407, !dbg !5285

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5285
  br label %cond.end409, !dbg !5285

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5285
  br label %cond.end411, !dbg !5285

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5285
  br label %cond.end413, !dbg !5285

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5285
  br label %cond.end415, !dbg !5285

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5285
  br label %cond.end417, !dbg !5285

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5285
  br label %cond.end419, !dbg !5285

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5285
  br label %cond.end421, !dbg !5285

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5285
  br label %cond.end423, !dbg !5285

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5285
  br label %cond.end425, !dbg !5285

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5285
  br label %cond.end427, !dbg !5285

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5285
  br label %cond.end429, !dbg !5285

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5285
  br label %cond.end431, !dbg !5285

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5285
  br label %cond.end433, !dbg !5285

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5285
  br label %cond.end435, !dbg !5285

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5285
  br label %cond.end437, !dbg !5285

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5285
  br label %cond.end440, !dbg !5285

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5285

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5285
  br label %cond.end444, !dbg !5285

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5285
  %sub443 = sub i64 %72, 1, !dbg !5285
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !5285
  br label %cond.end444, !dbg !5285

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5285
  %sub446 = sub i32 %cond445, 12, !dbg !5286
  %add = add i32 %sub446, 1, !dbg !5287
  store i32 %add, i32* %retval, align 4, !dbg !5288
  br label %return, !dbg !5288

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5289
  %dec = add i64 %73, -1, !dbg !5289
  store i64 %dec, i64* %size.addr, align 8, !dbg !5289
  %74 = load i64, i64* %size.addr, align 8, !dbg !5290
  %shr = lshr i64 %74, 12, !dbg !5290
  store i64 %shr, i64* %size.addr, align 8, !dbg !5290
  %75 = load i64, i64* %size.addr, align 8, !dbg !5291
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5268
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5292
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5293
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !5292, !srcloc !5294
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5292
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5295
  %add.i = add i32 %79, 1, !dbg !5296
  store i32 %add.i, i32* %retval, align 4, !dbg !5297
  br label %return, !dbg !5297

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5298
  ret i32 %80, !dbg !5298
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !5299 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5260, metadata !DIExpression()), !dbg !5303
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5267, metadata !DIExpression()), !dbg !5305
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5306, metadata !DIExpression()), !dbg !5307
  %0 = load i64, i64* %n.addr, align 8, !dbg !5308
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5305
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5309
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5310
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !5309, !srcloc !5294
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5309
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5311
  %add.i = add i32 %4, 1, !dbg !5312
  %sub = sub i32 %add.i, 1, !dbg !5313
  ret i32 %sub, !dbg !5314
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5315 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5319, metadata !DIExpression()), !dbg !5320
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5321, metadata !DIExpression()), !dbg !5322
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5323, metadata !DIExpression()), !dbg !5324
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5325, metadata !DIExpression()), !dbg !5326
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5327
  ret i8* %0, !dbg !5328
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5329 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5332, metadata !DIExpression()), !dbg !5333
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5334, metadata !DIExpression()), !dbg !5335
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5336, metadata !DIExpression()), !dbg !5337
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5338
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5340
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5341
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #8, !dbg !5342
  br i1 %call, label %if.end, label %if.then, !dbg !5343

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !5344

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5345
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5346
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !5347
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !5348
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5349
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5350
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !5351
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !5352
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5353
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5354
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !5355
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !5356
  br label %do.body, !dbg !5357

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5358

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !5360

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5358

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5362
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5362
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !5362
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !5362
  br label %do.end7, !dbg !5362

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !5358

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !5364
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5365 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5368, metadata !DIExpression()), !dbg !5369
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5370, metadata !DIExpression()), !dbg !5371
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5372, metadata !DIExpression()), !dbg !5373
  ret i1 true, !dbg !5374
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @bitmap_zero(i64* %dst, i32 %nbits) #0 !dbg !5375 {
entry:
  %dst.addr = alloca i64*, align 8
  %nbits.addr = alloca i32, align 4
  %len = alloca i32, align 4
  store i64* %dst, i64** %dst.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %dst.addr, metadata !5379, metadata !DIExpression()), !dbg !5380
  store i32 %nbits, i32* %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nbits.addr, metadata !5381, metadata !DIExpression()), !dbg !5382
  call void @llvm.dbg.declare(metadata i32* %len, metadata !5383, metadata !DIExpression()), !dbg !5384
  %0 = load i32, i32* %nbits.addr, align 4, !dbg !5385
  %conv = zext i32 %0 to i64, !dbg !5385
  %add = add i64 %conv, 64, !dbg !5385
  %sub = sub i64 %add, 1, !dbg !5385
  %div = udiv i64 %sub, 64, !dbg !5385
  %mul = mul i64 %div, 8, !dbg !5386
  %conv1 = trunc i64 %mul to i32, !dbg !5385
  store i32 %conv1, i32* %len, align 4, !dbg !5384
  %1 = load i64*, i64** %dst.addr, align 8, !dbg !5387
  %2 = bitcast i64* %1 to i8*, !dbg !5388
  %3 = load i32, i32* %len, align 4, !dbg !5389
  %conv2 = zext i32 %3 to i64, !dbg !5389
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 %conv2, i1 false), !dbg !5388
  ret void, !dbg !5390
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__set_bit(i64 %nr, i64* %addr) #0 !dbg !5391 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5397, metadata !DIExpression()), !dbg !5399
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5401, metadata !DIExpression()), !dbg !5402
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5403, metadata !DIExpression()), !dbg !5411
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5413, metadata !DIExpression()), !dbg !5414
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5415, metadata !DIExpression()), !dbg !5416
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5417, metadata !DIExpression()), !dbg !5418
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5419
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5420
  %div = sdiv i64 %1, 64, !dbg !5420
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5421
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5419
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5422
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5423
  %conv.i = trunc i64 %4 to i32, !dbg !5423
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #12, !dbg !5424
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5425
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5425
  call void @kcsan_check_access(i8* %5, i64 %6, i32 1) #12, !dbg !5425
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5426
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !5427
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !5428
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !5429
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10) #10, !dbg !5430, !srcloc !5431
  ret void, !dbg !5432
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !5433 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5437, metadata !DIExpression()), !dbg !5438
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5439, metadata !DIExpression()), !dbg !5440
  ret i1 true, !dbg !5441
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !5442 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5446, metadata !DIExpression()), !dbg !5447
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5448, metadata !DIExpression()), !dbg !5449
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5450, metadata !DIExpression()), !dbg !5451
  ret void, !dbg !5452
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.pnp_option* @pnp_clone_dependent_set(%struct.pnp_dev* %dev, i32 %set) #0 !dbg !5453 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4941, metadata !DIExpression()), !dbg !5456
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4953, metadata !DIExpression()), !dbg !5464
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4955, metadata !DIExpression()), !dbg !5465
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4957, metadata !DIExpression()), !dbg !5466
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4959, metadata !DIExpression()), !dbg !5467
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4965, metadata !DIExpression()), !dbg !5469
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4971, metadata !DIExpression()), !dbg !5471
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4980, metadata !DIExpression()), !dbg !5474
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4982, metadata !DIExpression()), !dbg !5475
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4984, metadata !DIExpression()), !dbg !5476
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4986, metadata !DIExpression()), !dbg !5477
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4988, metadata !DIExpression()), !dbg !5478
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4990, metadata !DIExpression()), !dbg !5479
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4992, metadata !DIExpression()), !dbg !5480
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4994, metadata !DIExpression()), !dbg !5481
  %retval = alloca %struct.pnp_option*, align 8
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %set.addr = alloca i32, align 4
  %tail = alloca %struct.pnp_option*, align 8
  %first_new_option = alloca %struct.pnp_option*, align 8
  %option = alloca %struct.pnp_option*, align 8
  %new_option = alloca %struct.pnp_option*, align 8
  %flags = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pnp_option*, align 8
  %__mptr2 = alloca i8*, align 8
  %tmp7 = alloca %struct.pnp_option*, align 8
  %__mptr14 = alloca i8*, align 8
  %tmp19 = alloca %struct.pnp_option*, align 8
  %__mptr45 = alloca i8*, align 8
  %tmp50 = alloca %struct.pnp_option*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !5482, metadata !DIExpression()), !dbg !5483
  store i32 %set, i32* %set.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %set.addr, metadata !5484, metadata !DIExpression()), !dbg !5485
  call void @llvm.dbg.declare(metadata %struct.pnp_option** %tail, metadata !5486, metadata !DIExpression()), !dbg !5487
  store %struct.pnp_option* null, %struct.pnp_option** %tail, align 8, !dbg !5487
  call void @llvm.dbg.declare(metadata %struct.pnp_option** %first_new_option, metadata !5488, metadata !DIExpression()), !dbg !5489
  store %struct.pnp_option* null, %struct.pnp_option** %first_new_option, align 8, !dbg !5489
  call void @llvm.dbg.declare(metadata %struct.pnp_option** %option, metadata !5490, metadata !DIExpression()), !dbg !5491
  call void @llvm.dbg.declare(metadata %struct.pnp_option** %new_option, metadata !5492, metadata !DIExpression()), !dbg !5493
  call void @llvm.dbg.declare(metadata i32* %flags, metadata !5494, metadata !DIExpression()), !dbg !5495
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5496, metadata !DIExpression()), !dbg !5499
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !5499
  %options = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %0, i32 0, i32 17, !dbg !5499
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %options, i32 0, i32 0, !dbg !5499
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5499
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !5499
  store i8* %2, i8** %__mptr, align 8, !dbg !5499
  br label %do.body, !dbg !5499

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5500

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !5499
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !5499
  %4 = bitcast i8* %add.ptr to %struct.pnp_option*, !dbg !5499
  store %struct.pnp_option* %4, %struct.pnp_option** %tmp, align 8, !dbg !5500
  %5 = load %struct.pnp_option*, %struct.pnp_option** %tmp, align 8, !dbg !5499
  store %struct.pnp_option* %5, %struct.pnp_option** %option, align 8, !dbg !5502
  br label %for.cond, !dbg !5502

for.cond:                                         ; preds = %do.end6, %do.end
  %6 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !5503
  %list = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %6, i32 0, i32 0, !dbg !5503
  %7 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !5503
  %options1 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %7, i32 0, i32 17, !dbg !5503
  %cmp = icmp eq %struct.list_head* %list, %options1, !dbg !5503
  %lnot = xor i1 %cmp, true, !dbg !5503
  br i1 %lnot, label %for.body, label %for.end, !dbg !5502

for.body:                                         ; preds = %for.cond
  %8 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !5505
  %call = call i32 @pnp_option_is_dependent(%struct.pnp_option* %8) #8, !dbg !5508
  %tobool = icmp ne i32 %call, 0, !dbg !5508
  br i1 %tobool, label %if.then, label %if.end, !dbg !5509

if.then:                                          ; preds = %for.body
  %9 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !5510
  store %struct.pnp_option* %9, %struct.pnp_option** %tail, align 8, !dbg !5511
  br label %if.end, !dbg !5512

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !5513

for.inc:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr2, metadata !5514, metadata !DIExpression()), !dbg !5516
  %10 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !5516
  %list3 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %10, i32 0, i32 0, !dbg !5516
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %list3, i32 0, i32 0, !dbg !5516
  %11 = load %struct.list_head*, %struct.list_head** %next4, align 8, !dbg !5516
  %12 = bitcast %struct.list_head* %11 to i8*, !dbg !5516
  store i8* %12, i8** %__mptr2, align 8, !dbg !5516
  br label %do.body5, !dbg !5516

do.body5:                                         ; preds = %for.inc
  br label %do.end6, !dbg !5517

do.end6:                                          ; preds = %do.body5
  %13 = load i8*, i8** %__mptr2, align 8, !dbg !5516
  %add.ptr8 = getelementptr i8, i8* %13, i64 0, !dbg !5516
  %14 = bitcast i8* %add.ptr8 to %struct.pnp_option*, !dbg !5516
  store %struct.pnp_option* %14, %struct.pnp_option** %tmp7, align 8, !dbg !5517
  %15 = load %struct.pnp_option*, %struct.pnp_option** %tmp7, align 8, !dbg !5516
  store %struct.pnp_option* %15, %struct.pnp_option** %option, align 8, !dbg !5503
  br label %for.cond, !dbg !5503, !llvm.loop !5519

for.end:                                          ; preds = %for.cond
  %16 = load %struct.pnp_option*, %struct.pnp_option** %tail, align 8, !dbg !5521
  %tobool9 = icmp ne %struct.pnp_option* %16, null, !dbg !5521
  br i1 %tobool9, label %if.end12, label %if.then10, !dbg !5523

if.then10:                                        ; preds = %for.end
  %17 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !5524
  %dev11 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %17, i32 0, i32 0, !dbg !5524
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0)) #9, !dbg !5524
  store %struct.pnp_option* null, %struct.pnp_option** %retval, align 8, !dbg !5526
  br label %return, !dbg !5526

if.end12:                                         ; preds = %for.end
  %18 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !5527
  %call13 = call i32 @pnp_new_dependent_set(%struct.pnp_dev* %18, i32 2) #8, !dbg !5528
  store i32 %call13, i32* %flags, align 4, !dbg !5529
  call void @llvm.dbg.declare(metadata i8** %__mptr14, metadata !5530, metadata !DIExpression()), !dbg !5532
  %19 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !5532
  %options15 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %19, i32 0, i32 17, !dbg !5532
  %next16 = getelementptr inbounds %struct.list_head, %struct.list_head* %options15, i32 0, i32 0, !dbg !5532
  %20 = load %struct.list_head*, %struct.list_head** %next16, align 8, !dbg !5532
  %21 = bitcast %struct.list_head* %20 to i8*, !dbg !5532
  store i8* %21, i8** %__mptr14, align 8, !dbg !5532
  br label %do.body17, !dbg !5532

do.body17:                                        ; preds = %if.end12
  br label %do.end18, !dbg !5533

do.end18:                                         ; preds = %do.body17
  %22 = load i8*, i8** %__mptr14, align 8, !dbg !5532
  %add.ptr20 = getelementptr i8, i8* %22, i64 0, !dbg !5532
  %23 = bitcast i8* %add.ptr20 to %struct.pnp_option*, !dbg !5532
  store %struct.pnp_option* %23, %struct.pnp_option** %tmp19, align 8, !dbg !5533
  %24 = load %struct.pnp_option*, %struct.pnp_option** %tmp19, align 8, !dbg !5532
  store %struct.pnp_option* %24, %struct.pnp_option** %option, align 8, !dbg !5535
  br label %for.cond21, !dbg !5535

for.cond21:                                       ; preds = %do.end49, %do.end18
  %25 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !5536
  %list22 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %25, i32 0, i32 0, !dbg !5536
  %26 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !5536
  %options23 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %26, i32 0, i32 17, !dbg !5536
  %cmp24 = icmp eq %struct.list_head* %list22, %options23, !dbg !5536
  %lnot25 = xor i1 %cmp24, true, !dbg !5536
  br i1 %lnot25, label %for.body26, label %for.end52, !dbg !5535

for.body26:                                       ; preds = %for.cond21
  %27 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !5537
  %call27 = call i32 @pnp_option_is_dependent(%struct.pnp_option* %27) #8, !dbg !5538
  %tobool28 = icmp ne i32 %call27, 0, !dbg !5538
  br i1 %tobool28, label %land.lhs.true, label %if.end43, !dbg !5539

land.lhs.true:                                    ; preds = %for.body26
  %28 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !5540
  %call29 = call i32 @pnp_option_set(%struct.pnp_option* %28) #8, !dbg !5541
  %29 = load i32, i32* %set.addr, align 4, !dbg !5542
  %cmp30 = icmp eq i32 %call29, %29, !dbg !5543
  br i1 %cmp30, label %if.then31, label %if.end43, !dbg !5544

if.then31:                                        ; preds = %land.lhs.true
  store i64 72, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %30 = load i64, i64* %size.addr.i, align 8, !dbg !5545
  %31 = call i1 @llvm.is.constant.i64(i64 %30) #10, !dbg !5546
  br i1 %31, label %if.then.i, label %if.end9.i, !dbg !5547

if.then.i:                                        ; preds = %if.then31
  %32 = load i64, i64* %size.addr.i, align 8, !dbg !5548
  %cmp.i = icmp ugt i64 %32, 8192, !dbg !5549
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5550

if.then1.i:                                       ; preds = %if.then.i
  %33 = load i64, i64* %size.addr.i, align 8, !dbg !5551
  %34 = load i32, i32* %flags.addr.i, align 4, !dbg !5552
  store i64 %33, i64* %size.addr.i.i, align 8
  store i32 %34, i32* %flags.addr.i.i, align 4
  %35 = load i64, i64* %size.addr.i.i, align 8, !dbg !5553
  %call.i.i = call i32 @get_order(i64 %35) #11, !dbg !5554
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5478
  %36 = load i64, i64* %size.addr.i.i, align 8, !dbg !5555
  %37 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5556
  %38 = load i32, i32* %order.i.i, align 4, !dbg !5557
  store i64 %36, i64* %size.addr.i.i.i, align 8
  store i32 %37, i32* %flags.addr.i.i.i, align 4
  store i32 %38, i32* %order.addr.i.i.i, align 4
  %39 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5558
  %40 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5559
  %41 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5560
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %39, i32 %40, i32 %41) #12, !dbg !5561
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5561
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5561
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5561
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !5561
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5562
  br label %kmalloc.exit, !dbg !5562

if.end.i:                                         ; preds = %if.then.i
  %42 = load i64, i64* %size.addr.i, align 8, !dbg !5563
  store i64 %42, i64* %size.addr.i11.i, align 8
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5564
  %tobool.i.i = icmp ne i64 %43, 0, !dbg !5564
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5565

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5566
  br label %kmalloc_index.exit.i, !dbg !5566

if.end.i.i:                                       ; preds = %if.end.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5567
  %cmp.i.i = icmp ule i64 %44, 8, !dbg !5568
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5569

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5570
  br label %kmalloc_index.exit.i, !dbg !5570

if.end2.i.i:                                      ; preds = %if.end.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5571
  %cmp3.i.i = icmp ugt i64 %45, 64, !dbg !5572
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5573

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5574
  %cmp4.i.i = icmp ule i64 %46, 96, !dbg !5575
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5576

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5577
  br label %kmalloc_index.exit.i, !dbg !5577

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5578
  %cmp7.i.i = icmp ugt i64 %47, 128, !dbg !5579
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5580

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5581
  %cmp9.i.i = icmp ule i64 %48, 192, !dbg !5582
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5583

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5584
  br label %kmalloc_index.exit.i, !dbg !5584

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5585
  %cmp12.i.i = icmp ule i64 %49, 8, !dbg !5586
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5587

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5588
  br label %kmalloc_index.exit.i, !dbg !5588

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5589
  %cmp15.i.i = icmp ule i64 %50, 16, !dbg !5590
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5591

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5592
  br label %kmalloc_index.exit.i, !dbg !5592

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5593
  %cmp18.i.i = icmp ule i64 %51, 32, !dbg !5594
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5595

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5596
  br label %kmalloc_index.exit.i, !dbg !5596

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5597
  %cmp21.i.i = icmp ule i64 %52, 64, !dbg !5598
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5599

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5600
  br label %kmalloc_index.exit.i, !dbg !5600

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5601
  %cmp24.i.i = icmp ule i64 %53, 128, !dbg !5602
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5603

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5604
  br label %kmalloc_index.exit.i, !dbg !5604

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5605
  %cmp27.i.i = icmp ule i64 %54, 256, !dbg !5606
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5607

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5608
  br label %kmalloc_index.exit.i, !dbg !5608

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5609
  %cmp30.i.i = icmp ule i64 %55, 512, !dbg !5610
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5611

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5612
  br label %kmalloc_index.exit.i, !dbg !5612

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5613
  %cmp33.i.i = icmp ule i64 %56, 1024, !dbg !5614
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5615

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5616
  br label %kmalloc_index.exit.i, !dbg !5616

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5617
  %cmp36.i.i = icmp ule i64 %57, 2048, !dbg !5618
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5619

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5620
  br label %kmalloc_index.exit.i, !dbg !5620

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5621
  %cmp39.i.i = icmp ule i64 %58, 4096, !dbg !5622
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5623

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5624
  br label %kmalloc_index.exit.i, !dbg !5624

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %59 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5625
  %cmp42.i.i = icmp ule i64 %59, 8192, !dbg !5626
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5627

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5628
  br label %kmalloc_index.exit.i, !dbg !5628

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %60 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5629
  %cmp45.i.i = icmp ule i64 %60, 16384, !dbg !5630
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5631

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5632
  br label %kmalloc_index.exit.i, !dbg !5632

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %61 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5633
  %cmp48.i.i = icmp ule i64 %61, 32768, !dbg !5634
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5635

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5636
  br label %kmalloc_index.exit.i, !dbg !5636

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %62 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5637
  %cmp51.i.i = icmp ule i64 %62, 65536, !dbg !5638
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5639

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5640
  br label %kmalloc_index.exit.i, !dbg !5640

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %63 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5641
  %cmp54.i.i = icmp ule i64 %63, 131072, !dbg !5642
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5643

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5644
  br label %kmalloc_index.exit.i, !dbg !5644

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %64 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5645
  %cmp57.i.i = icmp ule i64 %64, 262144, !dbg !5646
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5647

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5648
  br label %kmalloc_index.exit.i, !dbg !5648

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %65 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5649
  %cmp60.i.i = icmp ule i64 %65, 524288, !dbg !5650
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5651

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5652
  br label %kmalloc_index.exit.i, !dbg !5652

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %66 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5653
  %cmp63.i.i = icmp ule i64 %66, 1048576, !dbg !5654
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5655

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5656
  br label %kmalloc_index.exit.i, !dbg !5656

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %67 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5657
  %cmp66.i.i = icmp ule i64 %67, 2097152, !dbg !5658
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5659

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5660
  br label %kmalloc_index.exit.i, !dbg !5660

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %68 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5661
  %cmp69.i.i = icmp ule i64 %68, 4194304, !dbg !5662
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5663

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5664
  br label %kmalloc_index.exit.i, !dbg !5664

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %69 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5665
  %cmp72.i.i = icmp ule i64 %69, 8388608, !dbg !5666
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5667

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5668
  br label %kmalloc_index.exit.i, !dbg !5668

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %70 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5669
  %cmp75.i.i = icmp ule i64 %70, 16777216, !dbg !5670
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5671

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5672
  br label %kmalloc_index.exit.i, !dbg !5672

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %71 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5673
  %cmp78.i.i = icmp ule i64 %71, 33554432, !dbg !5674
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5675

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5676
  br label %kmalloc_index.exit.i, !dbg !5676

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %72 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5677
  %cmp81.i.i = icmp ule i64 %72, 67108864, !dbg !5678
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5679

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5680
  br label %kmalloc_index.exit.i, !dbg !5680

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !5681, !srcloc !5171
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 156) #10, !dbg !5682, !srcloc !5175
  unreachable, !dbg !5683

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %73 = load i32, i32* %retval.i.i, align 4, !dbg !5684
  store i32 %73, i32* %index.i, align 4, !dbg !5685
  %74 = load i32, i32* %index.i, align 4, !dbg !5686
  %tobool.i = icmp ne i32 %74, 0, !dbg !5686
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5687

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5688
  br label %kmalloc.exit, !dbg !5688

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %75 = load i32, i32* %flags.addr.i, align 4, !dbg !5689
  store i32 %75, i32* %flags.addr.i13.i, align 4
  %76 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5690
  %and.i.i = and i32 %76, 17, !dbg !5690
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5690
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5690
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5690
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5690
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5691

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5692
  br label %kmalloc_type.exit.i, !dbg !5692

if.end.i16.i:                                     ; preds = %if.end4.i
  %77 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5693
  %and2.i.i = and i32 %77, 1, !dbg !5694
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5693
  %78 = zext i1 %tobool3.i.i to i64, !dbg !5693
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5693
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5695
  br label %kmalloc_type.exit.i, !dbg !5695

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %79 = load i32, i32* %retval.i12.i, align 4, !dbg !5696
  %idxprom.i = zext i32 %79 to i64, !dbg !5697
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5697
  %80 = load i32, i32* %index.i, align 4, !dbg !5698
  %idxprom6.i = zext i32 %80 to i64, !dbg !5697
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5697
  %81 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5697
  %82 = load i32, i32* %flags.addr.i, align 4, !dbg !5699
  %83 = load i64, i64* %size.addr.i, align 8, !dbg !5700
  store %struct.kmem_cache* %81, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %82, i32* %flags.addr.i17.i, align 4
  store i64 %83, i64* %size.addr.i18.i, align 8
  %84 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5701
  %85 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5702
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %84, i32 %85) #12, !dbg !5703
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5703
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5703
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5703
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !5703
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5466
  %86 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5704
  %87 = load i8*, i8** %ret.i.i, align 8, !dbg !5705
  %88 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5706
  %89 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5707
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %86, i8* %87, i64 %88, i32 %89) #12, !dbg !5708
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5709
  %90 = load i8*, i8** %ret.i.i, align 8, !dbg !5710
  store i8* %90, i8** %retval.i, align 8, !dbg !5711
  br label %kmalloc.exit, !dbg !5711

if.end9.i:                                        ; preds = %if.then31
  %91 = load i64, i64* %size.addr.i, align 8, !dbg !5712
  %92 = load i32, i32* %flags.addr.i, align 4, !dbg !5713
  %call10.i = call noalias i8* @__kmalloc(i64 %91, i32 %92) #12, !dbg !5714
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5714
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5714
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5714
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !5714
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5715
  br label %kmalloc.exit, !dbg !5715

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %93 = load i8*, i8** %retval.i, align 8, !dbg !5716
  %94 = bitcast i8* %93 to %struct.pnp_option*, !dbg !5717
  store %struct.pnp_option* %94, %struct.pnp_option** %new_option, align 8, !dbg !5718
  %95 = load %struct.pnp_option*, %struct.pnp_option** %new_option, align 8, !dbg !5719
  %tobool33 = icmp ne %struct.pnp_option* %95, null, !dbg !5719
  br i1 %tobool33, label %if.end36, label %if.then34, !dbg !5721

if.then34:                                        ; preds = %kmalloc.exit
  %96 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !5722
  %dev35 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %96, i32 0, i32 0, !dbg !5722
  %97 = load i32, i32* %set.addr, align 4, !dbg !5722
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i32 %97) #9, !dbg !5722
  store %struct.pnp_option* null, %struct.pnp_option** %retval, align 8, !dbg !5724
  br label %return, !dbg !5724

if.end36:                                         ; preds = %kmalloc.exit
  %98 = load %struct.pnp_option*, %struct.pnp_option** %new_option, align 8, !dbg !5725
  %99 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !5726
  %100 = bitcast %struct.pnp_option* %98 to i8*, !dbg !5727
  %101 = bitcast %struct.pnp_option* %99 to i8*, !dbg !5727
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %100, i8* align 8 %101, i64 72, i1 false), !dbg !5727
  %102 = load i32, i32* %flags, align 4, !dbg !5728
  %103 = load %struct.pnp_option*, %struct.pnp_option** %new_option, align 8, !dbg !5729
  %flags37 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %103, i32 0, i32 1, !dbg !5730
  store i32 %102, i32* %flags37, align 8, !dbg !5731
  %104 = load %struct.pnp_option*, %struct.pnp_option** %first_new_option, align 8, !dbg !5732
  %tobool38 = icmp ne %struct.pnp_option* %104, null, !dbg !5732
  br i1 %tobool38, label %if.end40, label %if.then39, !dbg !5734

if.then39:                                        ; preds = %if.end36
  %105 = load %struct.pnp_option*, %struct.pnp_option** %new_option, align 8, !dbg !5735
  store %struct.pnp_option* %105, %struct.pnp_option** %first_new_option, align 8, !dbg !5736
  br label %if.end40, !dbg !5737

if.end40:                                         ; preds = %if.then39, %if.end36
  %106 = load %struct.pnp_option*, %struct.pnp_option** %new_option, align 8, !dbg !5738
  %list41 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %106, i32 0, i32 0, !dbg !5739
  %107 = load %struct.pnp_option*, %struct.pnp_option** %tail, align 8, !dbg !5740
  %list42 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %107, i32 0, i32 0, !dbg !5741
  call void @list_add(%struct.list_head* %list41, %struct.list_head* %list42) #8, !dbg !5742
  %108 = load %struct.pnp_option*, %struct.pnp_option** %new_option, align 8, !dbg !5743
  store %struct.pnp_option* %108, %struct.pnp_option** %tail, align 8, !dbg !5744
  br label %if.end43, !dbg !5745

if.end43:                                         ; preds = %if.end40, %land.lhs.true, %for.body26
  br label %for.inc44, !dbg !5746

for.inc44:                                        ; preds = %if.end43
  call void @llvm.dbg.declare(metadata i8** %__mptr45, metadata !5747, metadata !DIExpression()), !dbg !5749
  %109 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !5749
  %list46 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %109, i32 0, i32 0, !dbg !5749
  %next47 = getelementptr inbounds %struct.list_head, %struct.list_head* %list46, i32 0, i32 0, !dbg !5749
  %110 = load %struct.list_head*, %struct.list_head** %next47, align 8, !dbg !5749
  %111 = bitcast %struct.list_head* %110 to i8*, !dbg !5749
  store i8* %111, i8** %__mptr45, align 8, !dbg !5749
  br label %do.body48, !dbg !5749

do.body48:                                        ; preds = %for.inc44
  br label %do.end49, !dbg !5750

do.end49:                                         ; preds = %do.body48
  %112 = load i8*, i8** %__mptr45, align 8, !dbg !5749
  %add.ptr51 = getelementptr i8, i8* %112, i64 0, !dbg !5749
  %113 = bitcast i8* %add.ptr51 to %struct.pnp_option*, !dbg !5749
  store %struct.pnp_option* %113, %struct.pnp_option** %tmp50, align 8, !dbg !5750
  %114 = load %struct.pnp_option*, %struct.pnp_option** %tmp50, align 8, !dbg !5749
  store %struct.pnp_option* %114, %struct.pnp_option** %option, align 8, !dbg !5536
  br label %for.cond21, !dbg !5536, !llvm.loop !5752

for.end52:                                        ; preds = %for.cond21
  %115 = load %struct.pnp_option*, %struct.pnp_option** %first_new_option, align 8, !dbg !5754
  store %struct.pnp_option* %115, %struct.pnp_option** %retval, align 8, !dbg !5755
  br label %return, !dbg !5755

return:                                           ; preds = %for.end52, %if.then34, %if.then10
  %116 = load %struct.pnp_option*, %struct.pnp_option** %retval, align 8, !dbg !5756
  ret %struct.pnp_option* %116, !dbg !5756
}

; Function Attrs: noredzone
declare dso_local void @dbg_pnp_show_option(%struct.pnp_dev*, %struct.pnp_option*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pnp_new_dependent_set(%struct.pnp_dev* %dev, i32 %priority) #0 !dbg !5757 {
entry:
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %priority.addr = alloca i32, align 4
  %flags = alloca i32, align 4
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !5760, metadata !DIExpression()), !dbg !5761
  store i32 %priority, i32* %priority.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %priority.addr, metadata !5762, metadata !DIExpression()), !dbg !5763
  call void @llvm.dbg.declare(metadata i32* %flags, metadata !5764, metadata !DIExpression()), !dbg !5765
  %0 = load i32, i32* %priority.addr, align 4, !dbg !5766
  %cmp = icmp sgt i32 %0, 2, !dbg !5768
  br i1 %cmp, label %if.then, label %if.end, !dbg !5769

if.then:                                          ; preds = %entry
  %1 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !5770
  %dev1 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %1, i32 0, i32 0, !dbg !5770
  %2 = load i32, i32* %priority.addr, align 4, !dbg !5770
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.12, i64 0, i64 0), i32 %2, i32 4095) #9, !dbg !5770
  store i32 4095, i32* %priority.addr, align 4, !dbg !5772
  br label %if.end, !dbg !5773

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !5774
  %num_dependent_sets = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %3, i32 0, i32 15, !dbg !5775
  %4 = load i32, i32* %num_dependent_sets, align 8, !dbg !5775
  %and = and i32 %4, 65535, !dbg !5776
  %shl = shl i32 %and, 12, !dbg !5777
  %or = or i32 -2147483648, %shl, !dbg !5778
  %5 = load i32, i32* %priority.addr, align 4, !dbg !5779
  %and2 = and i32 %5, 4095, !dbg !5780
  %shl3 = shl i32 %and2, 0, !dbg !5781
  %or4 = or i32 %or, %shl3, !dbg !5782
  store i32 %or4, i32* %flags, align 4, !dbg !5783
  %6 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !5784
  %num_dependent_sets5 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %6, i32 0, i32 15, !dbg !5785
  %7 = load i32, i32* %num_dependent_sets5, align 8, !dbg !5786
  %inc = add i32 %7, 1, !dbg !5786
  store i32 %inc, i32* %num_dependent_sets5, align 8, !dbg !5786
  %8 = load i32, i32* %flags, align 4, !dbg !5787
  ret i32 %8, !dbg !5788
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #3

; Function Attrs: noredzone
declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, %struct.pci_dev*) #2

; Function Attrs: noredzone
declare dso_local %struct.resource* @pnp_get_resource(%struct.pnp_dev*, i64, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @pci_name(%struct.pci_dev* %pdev) #0 !dbg !5789 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !5794, metadata !DIExpression()), !dbg !5795
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5796
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 41, !dbg !5797
  %call = call i8* @dev_name(%struct.device* %dev) #8, !dbg !5798
  ret i8* %call, !dbg !5799
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #0 !dbg !5800 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5803, metadata !DIExpression()), !dbg !5804
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5805
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !5807
  %1 = load i8*, i8** %init_name, align 8, !dbg !5807
  %tobool = icmp ne i8* %1, null, !dbg !5805
  br i1 %tobool, label %if.then, label %if.end, !dbg !5808

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5809
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !5810
  %3 = load i8*, i8** %init_name1, align 8, !dbg !5810
  store i8* %3, i8** %retval, align 8, !dbg !5811
  br label %return, !dbg !5811

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5812
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !5813
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #8, !dbg !5814
  store i8* %call, i8** %retval, align 8, !dbg !5815
  br label %return, !dbg !5815

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !5816
  ret i8* %5, !dbg !5816
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #0 !dbg !5817 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !5822, metadata !DIExpression()), !dbg !5823
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !5824
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !5825
  %1 = load i8*, i8** %name, align 8, !dbg !5825
  ret i8* %1, !dbg !5826
}

; Function Attrs: noredzone
declare dso_local %struct.resource* @amd_get_mmconfig_range(%struct.resource*) #2

; Function Attrs: noredzone
declare dso_local %struct.pnp_resource* @pnp_add_mem_resource(%struct.pnp_dev*, i64, i64, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.pci_dev* @get_intel_host() #0 !dbg !5827 {
entry:
  %retval = alloca %struct.pci_dev*, align 8
  %i = alloca i32, align 4
  %host = alloca %struct.pci_dev*, align 8
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5830, metadata !DIExpression()), !dbg !5831
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %host, metadata !5832, metadata !DIExpression()), !dbg !5833
  store i32 0, i32* %i, align 4, !dbg !5834
  br label %for.cond, !dbg !5836

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !5837
  %conv = sext i32 %0 to i64, !dbg !5837
  %cmp = icmp ult i64 %conv, 4, !dbg !5839
  br i1 %cmp, label %for.body, label %for.end, !dbg !5840

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !5841
  %idxprom = sext i32 %1 to i64, !dbg !5843
  %arrayidx = getelementptr [4 x i32], [4 x i32]* @mch_quirk_devices, i64 0, i64 %idxprom, !dbg !5843
  %2 = load i32, i32* %arrayidx, align 4, !dbg !5843
  %call = call %struct.pci_dev* @pci_get_device(i32 32902, i32 %2, %struct.pci_dev* null) #8, !dbg !5844
  store %struct.pci_dev* %call, %struct.pci_dev** %host, align 8, !dbg !5845
  %3 = load %struct.pci_dev*, %struct.pci_dev** %host, align 8, !dbg !5846
  %tobool = icmp ne %struct.pci_dev* %3, null, !dbg !5846
  br i1 %tobool, label %if.then, label %if.end, !dbg !5848

if.then:                                          ; preds = %for.body
  %4 = load %struct.pci_dev*, %struct.pci_dev** %host, align 8, !dbg !5849
  store %struct.pci_dev* %4, %struct.pci_dev** %retval, align 8, !dbg !5850
  br label %return, !dbg !5850

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5851

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %i, align 4, !dbg !5852
  %inc = add i32 %5, 1, !dbg !5852
  store i32 %inc, i32* %i, align 4, !dbg !5852
  br label %for.cond, !dbg !5853, !llvm.loop !5854

for.end:                                          ; preds = %for.cond
  store %struct.pci_dev* null, %struct.pci_dev** %retval, align 8, !dbg !5856
  br label %return, !dbg !5856

return:                                           ; preds = %for.end, %if.then
  %6 = load %struct.pci_dev*, %struct.pci_dev** %retval, align 8, !dbg !5857
  ret %struct.pci_dev* %6, !dbg !5857
}

; Function Attrs: noredzone
declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #2

; Function Attrs: noredzone
declare dso_local void @pcibios_bus_to_resource(%struct.pci_bus*, %struct.resource*, %struct.pci_bus_region*) #2

; Function Attrs: noredzone
declare dso_local void @pci_dev_put(%struct.pci_dev*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
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
!llvm.module.flags = !{!3940, !3941, !3942, !3943}
!llvm.ident = !{!3944}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pnp_fixups", scope: !2, file: !3, line: 421, type: !209, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !117, globals: !204, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/pnp/quirks.c", directory: "/home/lizy2001/genbc/linux")
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
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !106, line: 89, baseType: !7, size: 32, elements: !107)
!106 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!107 = !{!108, !109, !110, !111, !112, !113, !114, !115, !116}
!108 = !DIEnumerator(name: "PCI_STD_RESOURCES", value: 0, isUnsigned: true)
!109 = !DIEnumerator(name: "PCI_STD_RESOURCE_END", value: 5, isUnsigned: true)
!110 = !DIEnumerator(name: "PCI_ROM_RESOURCE", value: 6, isUnsigned: true)
!111 = !DIEnumerator(name: "PCI_IOV_RESOURCES", value: 7, isUnsigned: true)
!112 = !DIEnumerator(name: "PCI_IOV_RESOURCE_END", value: 12, isUnsigned: true)
!113 = !DIEnumerator(name: "PCI_BRIDGE_RESOURCES", value: 13, isUnsigned: true)
!114 = !DIEnumerator(name: "PCI_BRIDGE_RESOURCE_END", value: 16, isUnsigned: true)
!115 = !DIEnumerator(name: "PCI_NUM_RESOURCES", value: 17, isUnsigned: true)
!116 = !DIEnumerator(name: "DEVICE_COUNT_RESOURCE", value: 17, isUnsigned: true)
!117 = !{!118, !119, !177, !146, !178, !180, !183, !142, !203}
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_option", file: !121, line: 68, size: 576, elements: !122)
!121 = !DIFile(filename: "drivers/pnp/base.h", directory: "/home/lizy2001/genbc/linux")
!122 = !{!123, !130, !131, !133}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !120, file: !121, line: 69, baseType: !124, size: 128)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !125, line: 178, size: 128, elements: !126)
!125 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!126 = !{!127, !129}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !124, file: !125, line: 179, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !124, file: !125, line: 179, baseType: !128, size: 64, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !120, file: !121, line: 70, baseType: !7, size: 32, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !120, file: !121, line: 72, baseType: !132, size: 64, offset: 192)
!132 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !120, file: !121, line: 78, baseType: !134, size: 320, offset: 256)
!134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !120, file: !121, line: 73, size: 320, elements: !135)
!135 = !{!136, !152, !164, !169}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !134, file: !121, line: 74, baseType: !137, size: 320)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_port", file: !121, line: 28, size: 320, elements: !138)
!138 = !{!139, !147, !148, !149, !150}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !137, file: !121, line: 29, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !125, line: 158, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !125, line: 153, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !143, line: 23, baseType: !144)
!143 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !145, line: 31, baseType: !146)
!145 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!146 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !137, file: !121, line: 30, baseType: !140, size: 64, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !137, file: !121, line: 31, baseType: !140, size: 64, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !137, file: !121, line: 32, baseType: !140, size: 64, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !137, file: !121, line: 33, baseType: !151, size: 8, offset: 256)
!151 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !134, file: !121, line: 75, baseType: !153, size: 320)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_irq", file: !121, line: 39, size: 320, elements: !154)
!154 = !{!155, !163}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !153, file: !121, line: 40, baseType: !156, size: 256)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "pnp_irq_mask_t", file: !121, line: 37, baseType: !157)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !121, line: 37, size: 256, elements: !158)
!158 = !{!159}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !157, file: !121, line: 37, baseType: !160, size: 256)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 256, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 4)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !153, file: !121, line: 41, baseType: !151, size: 8, offset: 256)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !134, file: !121, line: 76, baseType: !165, size: 16)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_dma", file: !121, line: 44, size: 16, elements: !166)
!166 = !{!167, !168}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !165, file: !121, line: 45, baseType: !151, size: 8)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !165, file: !121, line: 46, baseType: !151, size: 8, offset: 8)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !134, file: !121, line: 77, baseType: !170, size: 320)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_mem", file: !121, line: 49, size: 320, elements: !171)
!171 = !{!172, !173, !174, !175, !176}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !170, file: !121, line: 50, baseType: !140, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !170, file: !121, line: 51, baseType: !140, size: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !170, file: !121, line: 52, baseType: !140, size: 64, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !170, file: !121, line: 53, baseType: !140, size: 64, offset: 192)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !170, file: !121, line: 54, baseType: !151, size: 8, offset: 256)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !125, line: 148, baseType: !7)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !128)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !182)
!182 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_resource", file: !121, line: 156, size: 640, elements: !185)
!185 = !{!186, !187}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !184, file: !121, line: 157, baseType: !124, size: 128)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !184, file: !121, line: 158, baseType: !188, size: 512, offset: 128)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !189, line: 20, size: 512, elements: !190)
!189 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!190 = !{!191, !192, !193, !197, !198, !199, !201, !202}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !188, file: !189, line: 21, baseType: !140, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !188, file: !189, line: 22, baseType: !140, size: 64, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !188, file: !189, line: 23, baseType: !194, size: 64, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!196 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !188, file: !189, line: 24, baseType: !132, size: 64, offset: 192)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !188, file: !189, line: 25, baseType: !132, size: 64, offset: 256)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !188, file: !189, line: 26, baseType: !200, size: 64, offset: 320)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !188, file: !189, line: 26, baseType: !200, size: 64, offset: 384)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !188, file: !189, line: 26, baseType: !200, size: 64, offset: 448)
!203 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!204 = !{!0, !205}
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(name: "mch_quirk_devices", scope: !2, file: !3, line: 341, type: !207, isLocal: true, isDefinition: true)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 128, elements: !161)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 2432, elements: !3938)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_fixup", file: !211, line: 292, size: 128, elements: !212)
!211 = !DIFile(filename: "./include/linux/pnp.h", directory: "/home/lizy2001/genbc/linux")
!212 = !{!213, !217}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !210, file: !211, line: 293, baseType: !214, size: 56)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 56, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 7)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_function", scope: !210, file: !211, line: 294, baseType: !218, size: 64, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{null, !221}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_dev", file: !211, line: 243, size: 7488, elements: !223)
!223 = !{!224, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3834, !3862, !3885, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !222, file: !211, line: 244, baseType: !225, size: 5568)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !226)
!226 = !{!227, !3355, !3357, !3360, !3361, !3412, !3503, !3504, !3505, !3506, !3507, !3516, !3621, !3634, !3637, !3638, !3642, !3644, !3645, !3646, !3650, !3656, !3657, !3660, !3664, !3754, !3755, !3756, !3757, !3758, !3790, !3791, !3792, !3795, !3798, !3799, !3800, !3801}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !225, file: !73, line: 462, baseType: !228, size: 512)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !229, line: 64, size: 512, elements: !230)
!229 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!230 = !{!231, !232, !233, !235, !295, !3206, !3345, !3350, !3351, !3352, !3353, !3354}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !228, file: !229, line: 65, baseType: !194, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !228, file: !229, line: 66, baseType: !124, size: 128, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !228, file: !229, line: 67, baseType: !234, size: 64, offset: 192)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !228, file: !229, line: 68, baseType: !236, size: 64, offset: 256)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !229, line: 192, size: 704, elements: !238)
!238 = !{!239, !240, !256, !257}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !237, file: !229, line: 193, baseType: !124, size: 128)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !237, file: !229, line: 194, baseType: !241, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !242, line: 83, baseType: !243)
!242 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !242, line: 71, elements: !244)
!244 = !{!245}
!245 = !DIDerivedType(tag: DW_TAG_member, scope: !243, file: !242, line: 72, baseType: !246)
!246 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !243, file: !242, line: 72, elements: !247)
!247 = !{!248}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !246, file: !242, line: 73, baseType: !249)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !242, line: 20, elements: !250)
!250 = !{!251}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !249, file: !242, line: 21, baseType: !252)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !253, line: 25, baseType: !254)
!253 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !253, line: 25, elements: !255)
!255 = !{}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !237, file: !229, line: 195, baseType: !228, size: 512, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !237, file: !229, line: 196, baseType: !258, size: 64, offset: 640)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !229, line: 156, size: 192, elements: !261)
!261 = !{!262, !267, !272}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !260, file: !229, line: 157, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!203, !236, !234}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !260, file: !229, line: 158, baseType: !268, size: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!194, !236, !234}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !260, file: !229, line: 159, baseType: !273, size: 64, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!203, !236, !234, !277}
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !229, line: 148, size: 20736, elements: !279)
!279 = !{!280, !285, !289, !290, !294}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !278, file: !229, line: 149, baseType: !281, size: 192)
!281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 192, elements: !283)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!283 = !{!284}
!284 = !DISubrange(count: 3)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !278, file: !229, line: 150, baseType: !286, size: 4096, offset: 192)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 4096, elements: !287)
!287 = !{!288}
!288 = !DISubrange(count: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !278, file: !229, line: 151, baseType: !203, size: 32, offset: 4288)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !278, file: !229, line: 152, baseType: !291, size: 16384, offset: 4320)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 16384, elements: !292)
!292 = !{!293}
!293 = !DISubrange(count: 2048)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !278, file: !229, line: 153, baseType: !203, size: 32, offset: 20704)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !228, file: !229, line: 69, baseType: !296, size: 64, offset: 320)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !229, line: 138, size: 448, elements: !298)
!298 = !{!299, !303, !331, !333, !3168, !3196, !3200}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !297, file: !229, line: 139, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{null, !234}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !297, file: !229, line: 140, baseType: !304, size: 64, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !306)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !307, line: 230, size: 128, elements: !308)
!307 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!308 = !{!309, !324}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !306, file: !307, line: 231, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!313, !234, !317, !282}
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !125, line: 60, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !315, line: 73, baseType: !316)
!315 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !315, line: 15, baseType: !182)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !307, line: 30, size: 128, elements: !319)
!319 = !{!320, !321}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !318, file: !307, line: 31, baseType: !194, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !318, file: !307, line: 32, baseType: !322, size: 16, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !125, line: 19, baseType: !323)
!323 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !306, file: !307, line: 232, baseType: !325, size: 64, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!313, !234, !317, !194, !328}
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !125, line: 55, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !315, line: 72, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !315, line: 16, baseType: !132)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !297, file: !229, line: 141, baseType: !332, size: 64, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !297, file: !229, line: 142, baseType: !334, size: 64, offset: 192)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !337)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !307, line: 84, size: 320, elements: !338)
!338 = !{!339, !340, !344, !3165, !3166}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !337, file: !307, line: 85, baseType: !194, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !337, file: !307, line: 86, baseType: !341, size: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{!322, !234, !317, !203}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !337, file: !307, line: 88, baseType: !345, size: 64, offset: 128)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{!322, !234, !348, !203}
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !307, line: 168, size: 448, elements: !350)
!350 = !{!351, !352, !353, !354, !3160, !3161}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !349, file: !307, line: 169, baseType: !318, size: 128)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !349, file: !307, line: 170, baseType: !328, size: 64, offset: 128)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !349, file: !307, line: 171, baseType: !118, size: 64, offset: 192)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !349, file: !307, line: 172, baseType: !355, size: 64, offset: 256)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!313, !358, !234, !348, !282, !531, !328}
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !360)
!360 = !{!361, !379, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3143, !3144, !3153, !3154, !3155, !3156, !3157, !3158, !3159}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !359, file: !44, line: 920, baseType: !362, size: 128)
!362 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !359, file: !44, line: 917, size: 128, elements: !363)
!363 = !{!364, !370}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !362, file: !44, line: 918, baseType: !365, size: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !366, line: 58, size: 64, elements: !367)
!366 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!367 = !{!368}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !365, file: !366, line: 59, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !362, file: !44, line: 919, baseType: !371, size: 128, align: 64)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !125, line: 216, size: 128, align: 64, elements: !372)
!372 = !{!373, !375}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !371, file: !125, line: 217, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !371, file: !125, line: 218, baseType: !376, size: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{null, !374}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !359, file: !44, line: 921, baseType: !380, size: 128, offset: 128)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !381, line: 8, size: 128, elements: !382)
!381 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!382 = !{!383, !387}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !380, file: !381, line: 9, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !386, line: 18, flags: DIFlagFwdDecl)
!386 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!387 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !380, file: !381, line: 10, baseType: !388, size: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !386, line: 89, size: 1536, elements: !390)
!390 = !{!391, !392, !402, !410, !411, !428, !3093, !3095, !3107, !3108, !3109, !3110, !3111, !3117, !3118, !3119}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !389, file: !386, line: 91, baseType: !7, size: 32)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !389, file: !386, line: 92, baseType: !393, size: 32, offset: 32)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !394, line: 277, baseType: !395)
!394 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !394, line: 277, size: 32, elements: !396)
!396 = !{!397}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !395, file: !394, line: 277, baseType: !398, size: 32)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !394, line: 70, baseType: !399)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !394, line: 65, size: 32, elements: !400)
!400 = !{!401}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !399, file: !394, line: 66, baseType: !7, size: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !389, file: !386, line: 93, baseType: !403, size: 128, offset: 64)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !404, line: 38, size: 128, elements: !405)
!404 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!405 = !{!406, !408}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !403, file: !404, line: 39, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !403, file: !404, line: 39, baseType: !409, size: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !389, file: !386, line: 94, baseType: !388, size: 64, offset: 192)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !389, file: !386, line: 95, baseType: !412, size: 128, offset: 256)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !386, line: 47, size: 128, elements: !413)
!413 = !{!414, !425}
!414 = !DIDerivedType(tag: DW_TAG_member, scope: !412, file: !386, line: 48, baseType: !415, size: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !412, file: !386, line: 48, size: 64, elements: !416)
!416 = !{!417, !424}
!417 = !DIDerivedType(tag: DW_TAG_member, scope: !415, file: !386, line: 49, baseType: !418, size: 64)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !415, file: !386, line: 49, size: 64, elements: !419)
!419 = !{!420, !423}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !418, file: !386, line: 50, baseType: !421, size: 32)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !143, line: 21, baseType: !422)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !145, line: 27, baseType: !7)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !418, file: !386, line: 50, baseType: !421, size: 32, offset: 32)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !415, file: !386, line: 52, baseType: !142, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !412, file: !386, line: 54, baseType: !426, size: 64, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !389, file: !386, line: 96, baseType: !429, size: 64, offset: 384)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !431)
!431 = !{!432, !433, !434, !442, !449, !450, !598, !2805, !2806, !2807, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !3069, !3077, !3078, !3079, !3089, !3090, !3091, !3092}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !430, file: !44, line: 611, baseType: !322, size: 16)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !430, file: !44, line: 612, baseType: !323, size: 16, offset: 16)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !430, file: !44, line: 613, baseType: !435, size: 32, offset: 32)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !436, line: 23, baseType: !437)
!436 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !436, line: 21, size: 32, elements: !438)
!438 = !{!439}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !437, file: !436, line: 22, baseType: !440, size: 32)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !125, line: 32, baseType: !441)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !315, line: 49, baseType: !7)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !430, file: !44, line: 614, baseType: !443, size: 32, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !436, line: 28, baseType: !444)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !436, line: 26, size: 32, elements: !445)
!445 = !{!446}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !444, file: !436, line: 27, baseType: !447, size: 32)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !125, line: 33, baseType: !448)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !315, line: 50, baseType: !7)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !430, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !430, file: !44, line: 622, baseType: !451, size: 64, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !453)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !454)
!454 = !{!455, !459, !472, !476, !482, !486, !492, !496, !500, !504, !508, !509, !515, !519, !545, !574, !578, !584, !589, !593, !594}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !453, file: !44, line: 1865, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{!388, !429, !388, !7}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !453, file: !44, line: 1866, baseType: !460, size: 64, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!194, !388, !429, !463}
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !465, line: 10, size: 128, elements: !466)
!465 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!466 = !{!467, !471}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !464, file: !465, line: 11, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{null, !118}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !464, file: !465, line: 12, baseType: !118, size: 64, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !453, file: !44, line: 1867, baseType: !473, size: 64, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!203, !429, !203}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !453, file: !44, line: 1868, baseType: !477, size: 64, offset: 192)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{!480, !429, !203}
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !453, file: !44, line: 1870, baseType: !483, size: 64, offset: 256)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{!203, !388, !282, !203}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !453, file: !44, line: 1872, baseType: !487, size: 64, offset: 320)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!203, !429, !388, !322, !490}
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !125, line: 30, baseType: !491)
!491 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !453, file: !44, line: 1873, baseType: !493, size: 64, offset: 384)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!203, !388, !429, !388}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !453, file: !44, line: 1874, baseType: !497, size: 64, offset: 448)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{!203, !429, !388}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !453, file: !44, line: 1875, baseType: !501, size: 64, offset: 512)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{!203, !429, !388, !194}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !453, file: !44, line: 1876, baseType: !505, size: 64, offset: 576)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{!203, !429, !388, !322}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !453, file: !44, line: 1877, baseType: !497, size: 64, offset: 640)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !453, file: !44, line: 1878, baseType: !510, size: 64, offset: 704)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!203, !429, !388, !322, !513}
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !125, line: 16, baseType: !514)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !125, line: 13, baseType: !421)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !453, file: !44, line: 1879, baseType: !516, size: 64, offset: 768)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{!203, !429, !388, !429, !388, !7}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !453, file: !44, line: 1881, baseType: !520, size: 64, offset: 832)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!203, !388, !523}
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !525)
!525 = !{!526, !527, !528, !529, !530, !534, !542, !543, !544}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !524, file: !44, line: 220, baseType: !7, size: 32)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !524, file: !44, line: 221, baseType: !322, size: 16, offset: 32)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !524, file: !44, line: 222, baseType: !435, size: 32, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !524, file: !44, line: 223, baseType: !443, size: 32, offset: 96)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !524, file: !44, line: 224, baseType: !531, size: 64, offset: 128)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !125, line: 46, baseType: !532)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !315, line: 88, baseType: !533)
!533 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !524, file: !44, line: 225, baseType: !535, size: 128, offset: 192)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !536, line: 13, size: 128, elements: !537)
!536 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!537 = !{!538, !541}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !535, file: !536, line: 14, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !536, line: 8, baseType: !540)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !145, line: 30, baseType: !533)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !535, file: !536, line: 15, baseType: !182, size: 64, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !524, file: !44, line: 226, baseType: !535, size: 128, offset: 320)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !524, file: !44, line: 227, baseType: !535, size: 128, offset: 448)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !524, file: !44, line: 234, baseType: !358, size: 64, offset: 576)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !453, file: !44, line: 1882, baseType: !546, size: 64, offset: 896)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{!203, !549, !551, !421, !7}
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !380)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !553, line: 22, size: 1152, elements: !554)
!553 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!554 = !{!555, !556, !557, !558, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !552, file: !553, line: 23, baseType: !421, size: 32)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !552, file: !553, line: 24, baseType: !322, size: 16, offset: 32)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !552, file: !553, line: 25, baseType: !7, size: 32, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !552, file: !553, line: 26, baseType: !559, size: 32, offset: 96)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !125, line: 104, baseType: !421)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !552, file: !553, line: 27, baseType: !142, size: 64, offset: 128)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !552, file: !553, line: 28, baseType: !142, size: 64, offset: 192)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !552, file: !553, line: 37, baseType: !142, size: 64, offset: 256)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !552, file: !553, line: 38, baseType: !513, size: 32, offset: 320)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !552, file: !553, line: 39, baseType: !513, size: 32, offset: 352)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !552, file: !553, line: 40, baseType: !435, size: 32, offset: 384)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !552, file: !553, line: 41, baseType: !443, size: 32, offset: 416)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !552, file: !553, line: 42, baseType: !531, size: 64, offset: 448)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !552, file: !553, line: 43, baseType: !535, size: 128, offset: 512)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !552, file: !553, line: 44, baseType: !535, size: 128, offset: 640)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !552, file: !553, line: 45, baseType: !535, size: 128, offset: 768)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !552, file: !553, line: 46, baseType: !535, size: 128, offset: 896)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !552, file: !553, line: 47, baseType: !142, size: 64, offset: 1024)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !552, file: !553, line: 48, baseType: !142, size: 64, offset: 1088)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !453, file: !44, line: 1883, baseType: !575, size: 64, offset: 960)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{!313, !388, !282, !328}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !453, file: !44, line: 1884, baseType: !579, size: 64, offset: 1024)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DISubroutineType(types: !581)
!581 = !{!203, !429, !582, !142, !142}
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !453, file: !44, line: 1886, baseType: !585, size: 64, offset: 1088)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{!203, !429, !588, !203}
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !453, file: !44, line: 1887, baseType: !590, size: 64, offset: 1152)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!203, !429, !388, !358, !7, !322}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !453, file: !44, line: 1890, baseType: !505, size: 64, offset: 1216)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !453, file: !44, line: 1891, baseType: !595, size: 64, offset: 1280)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{!203, !429, !480, !203}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !430, file: !44, line: 623, baseType: !599, size: 64, offset: 192)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !601)
!601 = !{!602, !603, !604, !605, !606, !607, !657, !2412, !2494, !2577, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2593, !2597, !2598, !2601, !2602, !2605, !2606, !2607, !2648, !2675, !2676, !2677, !2678, !2679, !2680, !2683, !2685, !2692, !2693, !2695, !2696, !2697, !2756, !2757, !2772, !2773, !2774, !2775, !2776, !2779, !2780, !2781, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !600, file: !44, line: 1417, baseType: !124, size: 128)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !600, file: !44, line: 1418, baseType: !513, size: 32, offset: 128)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !600, file: !44, line: 1419, baseType: !151, size: 8, offset: 160)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !600, file: !44, line: 1420, baseType: !132, size: 64, offset: 192)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !600, file: !44, line: 1421, baseType: !531, size: 64, offset: 256)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !600, file: !44, line: 1422, baseType: !608, size: 64, offset: 320)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !610)
!610 = !{!611, !612, !613, !620, !624, !628, !632, !636, !637, !647, !650, !651, !652, !654, !655, !656}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !609, file: !44, line: 2229, baseType: !194, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !609, file: !44, line: 2230, baseType: !203, size: 32, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !609, file: !44, line: 2238, baseType: !614, size: 64, offset: 128)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{!203, !617}
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !619, line: 28, flags: DIFlagFwdDecl)
!619 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!620 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !609, file: !44, line: 2239, baseType: !621, size: 64, offset: 192)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !623)
!623 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !609, file: !44, line: 2240, baseType: !625, size: 64, offset: 256)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{!388, !608, !203, !194, !118}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !609, file: !44, line: 2242, baseType: !629, size: 64, offset: 320)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{null, !599}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !609, file: !44, line: 2243, baseType: !633, size: 64, offset: 384)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !635, line: 76, flags: DIFlagFwdDecl)
!635 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!636 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !609, file: !44, line: 2244, baseType: !608, size: 64, offset: 448)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !609, file: !44, line: 2245, baseType: !638, size: 64, offset: 512)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !125, line: 182, size: 64, elements: !639)
!639 = !{!640}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !638, file: !125, line: 183, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !125, line: 186, size: 128, elements: !643)
!643 = !{!644, !645}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !642, file: !125, line: 187, baseType: !641, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !642, file: !125, line: 187, baseType: !646, size: 64, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !609, file: !44, line: 2247, baseType: !648, offset: 576)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !649, line: 187, elements: !255)
!649 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!650 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !609, file: !44, line: 2248, baseType: !648, offset: 576)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !609, file: !44, line: 2249, baseType: !648, offset: 576)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !609, file: !44, line: 2250, baseType: !653, offset: 576)
!653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !648, elements: !283)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !609, file: !44, line: 2252, baseType: !648, offset: 576)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !609, file: !44, line: 2253, baseType: !648, offset: 576)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !609, file: !44, line: 2254, baseType: !648, offset: 576)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !600, file: !44, line: 1423, baseType: !658, size: 64, offset: 384)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !660)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !661)
!661 = !{!662, !666, !670, !671, !675, !681, !685, !686, !687, !691, !695, !696, !697, !698, !704, !709, !710, !717, !718, !719, !720, !2396, !2411}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !660, file: !44, line: 1936, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{!429, !599}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !660, file: !44, line: 1937, baseType: !667, size: 64, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{null, !429}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !660, file: !44, line: 1938, baseType: !667, size: 64, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !660, file: !44, line: 1940, baseType: !672, size: 64, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{null, !429, !203}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !660, file: !44, line: 1941, baseType: !676, size: 64, offset: 256)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DISubroutineType(types: !678)
!678 = !{!203, !429, !679}
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !660, file: !44, line: 1942, baseType: !682, size: 64, offset: 320)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{!203, !429}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !660, file: !44, line: 1943, baseType: !667, size: 64, offset: 384)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !660, file: !44, line: 1944, baseType: !629, size: 64, offset: 448)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !660, file: !44, line: 1945, baseType: !688, size: 64, offset: 512)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DISubroutineType(types: !690)
!690 = !{!203, !599, !203}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !660, file: !44, line: 1946, baseType: !692, size: 64, offset: 576)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DISubroutineType(types: !694)
!694 = !{!203, !599}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !660, file: !44, line: 1947, baseType: !692, size: 64, offset: 640)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !660, file: !44, line: 1948, baseType: !692, size: 64, offset: 704)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !660, file: !44, line: 1949, baseType: !692, size: 64, offset: 768)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !660, file: !44, line: 1950, baseType: !699, size: 64, offset: 832)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{!203, !388, !702}
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !660, file: !44, line: 1951, baseType: !705, size: 64, offset: 896)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DISubroutineType(types: !707)
!707 = !{!203, !599, !708, !282}
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !660, file: !44, line: 1952, baseType: !629, size: 64, offset: 960)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !660, file: !44, line: 1954, baseType: !711, size: 64, offset: 1024)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DISubroutineType(types: !713)
!713 = !{!203, !714, !388}
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !716, line: 539, flags: DIFlagFwdDecl)
!716 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!717 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !660, file: !44, line: 1955, baseType: !711, size: 64, offset: 1088)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !660, file: !44, line: 1956, baseType: !711, size: 64, offset: 1152)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !660, file: !44, line: 1957, baseType: !711, size: 64, offset: 1216)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !660, file: !44, line: 1963, baseType: !721, size: 64, offset: 1280)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{!203, !599, !724, !177}
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !726, line: 68, size: 512, align: 128, elements: !727)
!726 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!727 = !{!728, !729, !2388, !2395}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !725, file: !726, line: 69, baseType: !132, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, scope: !725, file: !726, line: 77, baseType: !730, size: 320, offset: 64)
!730 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !725, file: !726, line: 77, size: 320, elements: !731)
!731 = !{!732, !919, !924, !952, !960, !966, !2319, !2387}
!732 = !DIDerivedType(tag: DW_TAG_member, scope: !730, file: !726, line: 78, baseType: !733, size: 320)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !730, file: !726, line: 78, size: 320, elements: !734)
!734 = !{!735, !736, !917, !918}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !733, file: !726, line: 84, baseType: !124, size: 128)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !733, file: !726, line: 86, baseType: !737, size: 64, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !739)
!739 = !{!740, !741, !748, !749, !754, !769, !785, !786, !787, !788, !910, !911, !914, !915, !916}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !738, file: !44, line: 452, baseType: !429, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !738, file: !44, line: 453, baseType: !742, size: 128, offset: 64)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !743, line: 292, size: 128, elements: !744)
!743 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!744 = !{!745, !746, !747}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !742, file: !743, line: 293, baseType: !241)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !742, file: !743, line: 295, baseType: !177, size: 32)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !742, file: !743, line: 296, baseType: !118, size: 64, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !738, file: !44, line: 454, baseType: !177, size: 32, offset: 192)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !738, file: !44, line: 455, baseType: !750, size: 32, offset: 224)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !125, line: 168, baseType: !751)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !125, line: 166, size: 32, elements: !752)
!752 = !{!753}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !751, file: !125, line: 167, baseType: !203, size: 32)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !738, file: !44, line: 460, baseType: !755, size: 128, offset: 256)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !756, line: 125, size: 128, elements: !757)
!756 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!757 = !{!758, !768}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !755, file: !756, line: 126, baseType: !759, size: 64)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !756, line: 31, size: 64, elements: !760)
!760 = !{!761}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !759, file: !756, line: 32, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !756, line: 24, size: 192, align: 64, elements: !764)
!764 = !{!765, !766, !767}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !763, file: !756, line: 25, baseType: !132, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !763, file: !756, line: 26, baseType: !762, size: 64, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !763, file: !756, line: 27, baseType: !762, size: 64, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !755, file: !756, line: 127, baseType: !762, size: 64, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !738, file: !44, line: 461, baseType: !770, size: 256, offset: 384)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !771, line: 35, size: 256, elements: !772)
!771 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!772 = !{!773, !781, !782, !784}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !770, file: !771, line: 36, baseType: !774, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !775, line: 13, baseType: !776)
!775 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !125, line: 175, baseType: !777)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !125, line: 173, size: 64, elements: !778)
!778 = !{!779}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !777, file: !125, line: 174, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !143, line: 22, baseType: !540)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !770, file: !771, line: 42, baseType: !774, size: 64, offset: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !770, file: !771, line: 46, baseType: !783, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !242, line: 29, baseType: !249)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !770, file: !771, line: 47, baseType: !124, size: 128, offset: 128)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !738, file: !44, line: 462, baseType: !132, size: 64, offset: 640)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !738, file: !44, line: 463, baseType: !132, size: 64, offset: 704)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !738, file: !44, line: 464, baseType: !132, size: 64, offset: 768)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !738, file: !44, line: 465, baseType: !789, size: 64, offset: 832)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !791)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !792)
!792 = !{!793, !797, !801, !805, !809, !813, !819, !825, !829, !834, !838, !842, !846, !874, !878, !884, !885, !886, !890, !895, !899, !906}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !791, file: !44, line: 368, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DISubroutineType(types: !796)
!796 = !{!203, !724, !679}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !791, file: !44, line: 369, baseType: !798, size: 64, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DISubroutineType(types: !800)
!800 = !{!203, !358, !724}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !791, file: !44, line: 372, baseType: !802, size: 64, offset: 128)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{!203, !737, !679}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !791, file: !44, line: 375, baseType: !806, size: 64, offset: 192)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{!203, !724}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !791, file: !44, line: 381, baseType: !810, size: 64, offset: 256)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DISubroutineType(types: !812)
!812 = !{!203, !358, !737, !128, !7}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !791, file: !44, line: 383, baseType: !814, size: 64, offset: 320)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{null, !817}
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !791, file: !44, line: 385, baseType: !820, size: 64, offset: 384)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{!203, !358, !737, !531, !7, !7, !823, !824}
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !791, file: !44, line: 388, baseType: !826, size: 64, offset: 448)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DISubroutineType(types: !828)
!828 = !{!203, !358, !737, !531, !7, !7, !724, !118}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !791, file: !44, line: 393, baseType: !830, size: 64, offset: 512)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{!833, !737, !833}
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !125, line: 125, baseType: !142)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !791, file: !44, line: 394, baseType: !835, size: 64, offset: 576)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DISubroutineType(types: !837)
!837 = !{null, !724, !7, !7}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !791, file: !44, line: 395, baseType: !839, size: 64, offset: 640)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!203, !724, !177}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !791, file: !44, line: 396, baseType: !843, size: 64, offset: 704)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{null, !724}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !791, file: !44, line: 397, baseType: !847, size: 64, offset: 768)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{!313, !850, !872}
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !852)
!852 = !{!853, !854, !855, !859, !860, !861, !864, !865}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !851, file: !44, line: 321, baseType: !358, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !851, file: !44, line: 326, baseType: !531, size: 64, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !851, file: !44, line: 327, baseType: !856, size: 64, offset: 128)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DISubroutineType(types: !858)
!858 = !{null, !850, !182, !182}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !851, file: !44, line: 328, baseType: !118, size: 64, offset: 192)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !851, file: !44, line: 329, baseType: !203, size: 32, offset: 256)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !851, file: !44, line: 330, baseType: !862, size: 16, offset: 288)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !143, line: 19, baseType: !863)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !145, line: 24, baseType: !323)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !851, file: !44, line: 331, baseType: !862, size: 16, offset: 304)
!865 = !DIDerivedType(tag: DW_TAG_member, scope: !851, file: !44, line: 332, baseType: !866, size: 64, offset: 320)
!866 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !851, file: !44, line: 332, size: 64, elements: !867)
!867 = !{!868, !869}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !866, file: !44, line: 333, baseType: !7, size: 32)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !866, file: !44, line: 334, baseType: !870, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !791, file: !44, line: 402, baseType: !875, size: 64, offset: 832)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DISubroutineType(types: !877)
!877 = !{!203, !737, !724, !724, !5}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !791, file: !44, line: 404, baseType: !879, size: 64, offset: 896)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DISubroutineType(types: !881)
!881 = !{!490, !724, !882}
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !883, line: 305, baseType: !7)
!883 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!884 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !791, file: !44, line: 405, baseType: !843, size: 64, offset: 960)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !791, file: !44, line: 406, baseType: !806, size: 64, offset: 1024)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !791, file: !44, line: 407, baseType: !887, size: 64, offset: 1088)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DISubroutineType(types: !889)
!889 = !{!203, !724, !132, !132}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !791, file: !44, line: 409, baseType: !891, size: 64, offset: 1152)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{null, !724, !894, !894}
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !791, file: !44, line: 410, baseType: !896, size: 64, offset: 1216)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DISubroutineType(types: !898)
!898 = !{!203, !737, !724}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !791, file: !44, line: 413, baseType: !900, size: 64, offset: 1280)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DISubroutineType(types: !902)
!902 = !{!203, !903, !358, !905}
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !791, file: !44, line: 415, baseType: !907, size: 64, offset: 1344)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DISubroutineType(types: !909)
!909 = !{null, !358}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !738, file: !44, line: 466, baseType: !132, size: 64, offset: 896)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !738, file: !44, line: 467, baseType: !912, size: 32, offset: 960)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !913, line: 8, baseType: !421)
!913 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!914 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !738, file: !44, line: 468, baseType: !241, offset: 992)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !738, file: !44, line: 469, baseType: !124, size: 128, offset: 1024)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !738, file: !44, line: 470, baseType: !118, size: 64, offset: 1152)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !733, file: !726, line: 87, baseType: !132, size: 64, offset: 192)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !733, file: !726, line: 94, baseType: !132, size: 64, offset: 256)
!919 = !DIDerivedType(tag: DW_TAG_member, scope: !730, file: !726, line: 96, baseType: !920, size: 64)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !730, file: !726, line: 96, size: 64, elements: !921)
!921 = !{!922}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !920, file: !726, line: 101, baseType: !923, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !125, line: 143, baseType: !142)
!924 = !DIDerivedType(tag: DW_TAG_member, scope: !730, file: !726, line: 103, baseType: !925, size: 320)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !730, file: !726, line: 103, size: 320, elements: !926)
!926 = !{!927, !937, !940, !941}
!927 = !DIDerivedType(tag: DW_TAG_member, scope: !925, file: !726, line: 104, baseType: !928, size: 128)
!928 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !925, file: !726, line: 104, size: 128, elements: !929)
!929 = !{!930, !931}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !928, file: !726, line: 105, baseType: !124, size: 128)
!931 = !DIDerivedType(tag: DW_TAG_member, scope: !928, file: !726, line: 106, baseType: !932, size: 128)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !928, file: !726, line: 106, size: 128, elements: !933)
!933 = !{!934, !935, !936}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !932, file: !726, line: 107, baseType: !724, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !932, file: !726, line: 109, baseType: !203, size: 32, offset: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !932, file: !726, line: 110, baseType: !203, size: 32, offset: 96)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !925, file: !726, line: 117, baseType: !938, size: 64, offset: 128)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !726, line: 117, flags: DIFlagFwdDecl)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !925, file: !726, line: 119, baseType: !118, size: 64, offset: 192)
!941 = !DIDerivedType(tag: DW_TAG_member, scope: !925, file: !726, line: 120, baseType: !942, size: 64, offset: 256)
!942 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !925, file: !726, line: 120, size: 64, elements: !943)
!943 = !{!944, !945, !946}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !942, file: !726, line: 121, baseType: !118, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !942, file: !726, line: 122, baseType: !132, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, scope: !942, file: !726, line: 123, baseType: !947, size: 32)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !942, file: !726, line: 123, size: 32, elements: !948)
!948 = !{!949, !950, !951}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !947, file: !726, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !947, file: !726, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !947, file: !726, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!952 = !DIDerivedType(tag: DW_TAG_member, scope: !730, file: !726, line: 130, baseType: !953, size: 192)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !730, file: !726, line: 130, size: 192, elements: !954)
!954 = !{!955, !956, !957, !958, !959}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !953, file: !726, line: 131, baseType: !132, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !953, file: !726, line: 134, baseType: !151, size: 8, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !953, file: !726, line: 135, baseType: !151, size: 8, offset: 72)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !953, file: !726, line: 136, baseType: !750, size: 32, offset: 96)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !953, file: !726, line: 137, baseType: !7, size: 32, offset: 128)
!960 = !DIDerivedType(tag: DW_TAG_member, scope: !730, file: !726, line: 139, baseType: !961, size: 256)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !730, file: !726, line: 139, size: 256, elements: !962)
!962 = !{!963, !964, !965}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !961, file: !726, line: 140, baseType: !132, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !961, file: !726, line: 141, baseType: !750, size: 32, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !961, file: !726, line: 143, baseType: !124, size: 128, offset: 128)
!966 = !DIDerivedType(tag: DW_TAG_member, scope: !730, file: !726, line: 145, baseType: !967, size: 256)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !730, file: !726, line: 145, size: 256, elements: !968)
!968 = !{!969, !970, !972, !973, !2318}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !967, file: !726, line: 146, baseType: !132, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !967, file: !726, line: 147, baseType: !971, size: 64, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !716, line: 509, baseType: !724)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !967, file: !726, line: 148, baseType: !132, size: 64, offset: 128)
!973 = !DIDerivedType(tag: DW_TAG_member, scope: !967, file: !726, line: 149, baseType: !974, size: 64, offset: 192)
!974 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !967, file: !726, line: 149, size: 64, elements: !975)
!975 = !{!976, !2317}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !974, file: !726, line: 150, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !726, line: 388, size: 7296, elements: !979)
!979 = !{!980, !2313}
!980 = !DIDerivedType(tag: DW_TAG_member, scope: !978, file: !726, line: 389, baseType: !981, size: 7296)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !978, file: !726, line: 389, size: 7296, elements: !982)
!982 = !{!983, !1101, !1102, !1103, !1107, !1108, !1109, !1110, !1111, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1152, !1158, !1161, !1191, !1192, !2297, !2298, !2301, !2302, !2303, !2306, !2307, !2308, !2311, !2312}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !981, file: !726, line: 390, baseType: !984, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !726, line: 305, size: 1472, elements: !986)
!986 = !{!987, !988, !989, !990, !991, !992, !993, !994, !1001, !1002, !1007, !1008, !1011, !1095, !1096, !1097, !1098, !1099}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !985, file: !726, line: 308, baseType: !132, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !985, file: !726, line: 309, baseType: !132, size: 64, offset: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !985, file: !726, line: 313, baseType: !984, size: 64, offset: 128)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !985, file: !726, line: 313, baseType: !984, size: 64, offset: 192)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !985, file: !726, line: 315, baseType: !763, size: 192, align: 64, offset: 256)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !985, file: !726, line: 323, baseType: !132, size: 64, offset: 448)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !985, file: !726, line: 327, baseType: !977, size: 64, offset: 512)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !985, file: !726, line: 333, baseType: !995, size: 64, offset: 576)
!995 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !716, line: 284, baseType: !996)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !716, line: 284, size: 64, elements: !997)
!997 = !{!998}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !996, file: !716, line: 284, baseType: !999, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1000, line: 19, baseType: !132)
!1000 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !985, file: !726, line: 334, baseType: !132, size: 64, offset: 640)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !985, file: !726, line: 343, baseType: !1003, size: 256, offset: 704)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !985, file: !726, line: 340, size: 256, elements: !1004)
!1004 = !{!1005, !1006}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1003, file: !726, line: 341, baseType: !763, size: 192, align: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1003, file: !726, line: 342, baseType: !132, size: 64, offset: 192)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !985, file: !726, line: 351, baseType: !124, size: 128, offset: 960)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !985, file: !726, line: 353, baseType: !1009, size: 64, offset: 1088)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !726, line: 353, flags: DIFlagFwdDecl)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !985, file: !726, line: 356, baseType: !1012, size: 64, offset: 1152)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1014)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1015)
!1015 = !{!1016, !1020, !1021, !1025, !1029, !1069, !1073, !1077, !1081, !1082, !1083, !1087, !1091}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1014, file: !14, line: 558, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{null, !984}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1014, file: !14, line: 559, baseType: !1017, size: 64, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1014, file: !14, line: 560, baseType: !1022, size: 64, offset: 128)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!203, !984, !132}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1014, file: !14, line: 561, baseType: !1026, size: 64, offset: 192)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!203, !984}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1014, file: !14, line: 562, baseType: !1030, size: 64, offset: 256)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!1033, !1034}
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !726, line: 682, baseType: !7)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1036)
!1036 = !{!1037, !1038, !1039, !1040, !1041, !1042, !1049, !1056, !1062, !1063, !1064, !1066, !1068}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1035, file: !14, line: 509, baseType: !984, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1035, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1035, file: !14, line: 511, baseType: !177, size: 32, offset: 96)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1035, file: !14, line: 512, baseType: !132, size: 64, offset: 128)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1035, file: !14, line: 513, baseType: !132, size: 64, offset: 192)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1035, file: !14, line: 514, baseType: !1043, size: 64, offset: 256)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !716, line: 385, baseType: !1045)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !716, line: 385, size: 64, elements: !1046)
!1046 = !{!1047}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1045, file: !716, line: 385, baseType: !1048, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1000, line: 15, baseType: !132)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1035, file: !14, line: 516, baseType: !1050, size: 64, offset: 320)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !716, line: 359, baseType: !1052)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !716, line: 359, size: 64, elements: !1053)
!1053 = !{!1054}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1052, file: !716, line: 359, baseType: !1055, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1000, line: 16, baseType: !132)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1035, file: !14, line: 519, baseType: !1057, size: 64, offset: 384)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1000, line: 21, baseType: !1058)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1000, line: 21, size: 64, elements: !1059)
!1059 = !{!1060}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1058, file: !1000, line: 21, baseType: !1061, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1000, line: 14, baseType: !132)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1035, file: !14, line: 521, baseType: !724, size: 64, offset: 448)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1035, file: !14, line: 522, baseType: !724, size: 64, offset: 512)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1035, file: !14, line: 528, baseType: !1065, size: 64, offset: 576)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1035, file: !14, line: 532, baseType: !1067, size: 64, offset: 640)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1035, file: !14, line: 536, baseType: !971, size: 64, offset: 704)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1014, file: !14, line: 563, baseType: !1070, size: 64, offset: 320)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!1033, !1034, !13}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1014, file: !14, line: 565, baseType: !1074, size: 64, offset: 384)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{null, !1034, !132, !132}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1014, file: !14, line: 567, baseType: !1078, size: 64, offset: 448)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!132, !984}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1014, file: !14, line: 571, baseType: !1030, size: 64, offset: 512)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1014, file: !14, line: 574, baseType: !1030, size: 64, offset: 576)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1014, file: !14, line: 579, baseType: !1084, size: 64, offset: 640)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!203, !984, !132, !118, !203, !203}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1014, file: !14, line: 585, baseType: !1088, size: 64, offset: 704)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!194, !984}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1014, file: !14, line: 615, baseType: !1092, size: 64, offset: 768)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!724, !984, !132}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !985, file: !726, line: 359, baseType: !132, size: 64, offset: 1216)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !985, file: !726, line: 361, baseType: !358, size: 64, offset: 1280)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !985, file: !726, line: 362, baseType: !118, size: 64, offset: 1344)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !985, file: !726, line: 365, baseType: !774, size: 64, offset: 1408)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !985, file: !726, line: 373, baseType: !1100, offset: 1472)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !726, line: 296, elements: !255)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !981, file: !726, line: 391, baseType: !759, size: 64, offset: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !981, file: !726, line: 392, baseType: !142, size: 64, offset: 128)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !981, file: !726, line: 394, baseType: !1104, size: 64, offset: 192)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!132, !358, !132, !132, !132, !132}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !981, file: !726, line: 398, baseType: !132, size: 64, offset: 256)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !981, file: !726, line: 399, baseType: !132, size: 64, offset: 320)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !981, file: !726, line: 405, baseType: !132, size: 64, offset: 384)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !981, file: !726, line: 406, baseType: !132, size: 64, offset: 448)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !981, file: !726, line: 407, baseType: !1112, size: 64, offset: 512)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !716, line: 286, baseType: !1114)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !716, line: 286, size: 64, elements: !1115)
!1115 = !{!1116}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1114, file: !716, line: 286, baseType: !1117, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1000, line: 18, baseType: !132)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !981, file: !726, line: 416, baseType: !750, size: 32, offset: 576)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !981, file: !726, line: 428, baseType: !750, size: 32, offset: 608)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !981, file: !726, line: 437, baseType: !750, size: 32, offset: 640)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !981, file: !726, line: 447, baseType: !750, size: 32, offset: 672)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !981, file: !726, line: 450, baseType: !774, size: 64, offset: 704)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !981, file: !726, line: 452, baseType: !203, size: 32, offset: 768)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !981, file: !726, line: 454, baseType: !241, offset: 800)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !981, file: !726, line: 457, baseType: !770, size: 256, offset: 832)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !981, file: !726, line: 459, baseType: !124, size: 128, offset: 1088)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !981, file: !726, line: 466, baseType: !132, size: 64, offset: 1216)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !981, file: !726, line: 467, baseType: !132, size: 64, offset: 1280)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !981, file: !726, line: 469, baseType: !132, size: 64, offset: 1344)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !981, file: !726, line: 470, baseType: !132, size: 64, offset: 1408)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !981, file: !726, line: 471, baseType: !776, size: 64, offset: 1472)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !981, file: !726, line: 472, baseType: !132, size: 64, offset: 1536)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !981, file: !726, line: 473, baseType: !132, size: 64, offset: 1600)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !981, file: !726, line: 474, baseType: !132, size: 64, offset: 1664)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !981, file: !726, line: 475, baseType: !132, size: 64, offset: 1728)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !981, file: !726, line: 477, baseType: !241, offset: 1792)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !981, file: !726, line: 478, baseType: !132, size: 64, offset: 1792)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !981, file: !726, line: 478, baseType: !132, size: 64, offset: 1856)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !981, file: !726, line: 478, baseType: !132, size: 64, offset: 1920)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !981, file: !726, line: 478, baseType: !132, size: 64, offset: 1984)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !981, file: !726, line: 479, baseType: !132, size: 64, offset: 2048)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !981, file: !726, line: 479, baseType: !132, size: 64, offset: 2112)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !981, file: !726, line: 479, baseType: !132, size: 64, offset: 2176)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !981, file: !726, line: 480, baseType: !132, size: 64, offset: 2240)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !981, file: !726, line: 480, baseType: !132, size: 64, offset: 2304)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !981, file: !726, line: 480, baseType: !132, size: 64, offset: 2368)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !981, file: !726, line: 480, baseType: !132, size: 64, offset: 2432)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !981, file: !726, line: 482, baseType: !1149, size: 2816, offset: 2496)
!1149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 2816, elements: !1150)
!1150 = !{!1151}
!1151 = !DISubrange(count: 44)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !981, file: !726, line: 488, baseType: !1153, size: 256, offset: 5312)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1154, line: 60, size: 256, elements: !1155)
!1154 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1155 = !{!1156}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1153, file: !1154, line: 61, baseType: !1157, size: 256)
!1157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !774, size: 256, elements: !161)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !981, file: !726, line: 490, baseType: !1159, size: 64, offset: 5568)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !726, line: 490, flags: DIFlagFwdDecl)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !981, file: !726, line: 493, baseType: !1162, size: 896, offset: 5632)
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1163, line: 53, baseType: !1164)
!1163 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1163, line: 13, size: 896, elements: !1165)
!1165 = !{!1166, !1167, !1168, !1169, !1172, !1173, !1180, !1181, !1185, !1186, !1187}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1164, file: !1163, line: 18, baseType: !142, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1164, file: !1163, line: 28, baseType: !776, size: 64, offset: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1164, file: !1163, line: 31, baseType: !770, size: 256, offset: 128)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1164, file: !1163, line: 32, baseType: !1170, size: 64, offset: 384)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1163, line: 32, flags: DIFlagFwdDecl)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1164, file: !1163, line: 37, baseType: !323, size: 16, offset: 448)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1164, file: !1163, line: 40, baseType: !1174, size: 192, offset: 512)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1175, line: 53, size: 192, elements: !1176)
!1175 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1176 = !{!1177, !1178, !1179}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1174, file: !1175, line: 54, baseType: !774, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1174, file: !1175, line: 55, baseType: !241, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1174, file: !1175, line: 59, baseType: !124, size: 128, offset: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1164, file: !1163, line: 41, baseType: !118, size: 64, offset: 704)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1164, file: !1163, line: 42, baseType: !1182, size: 64, offset: 768)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1184)
!1184 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1163, line: 42, flags: DIFlagFwdDecl)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1164, file: !1163, line: 44, baseType: !750, size: 32, offset: 832)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1164, file: !1163, line: 50, baseType: !862, size: 16, offset: 864)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1164, file: !1163, line: 51, baseType: !1188, size: 16, offset: 880)
!1188 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !143, line: 18, baseType: !1189)
!1189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !145, line: 23, baseType: !1190)
!1190 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !981, file: !726, line: 495, baseType: !132, size: 64, offset: 6528)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !981, file: !726, line: 497, baseType: !1193, size: 64, offset: 6592)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !726, line: 381, size: 384, elements: !1195)
!1195 = !{!1196, !1197, !2296}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1194, file: !726, line: 382, baseType: !750, size: 32)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1194, file: !726, line: 383, baseType: !1198, size: 128, offset: 64)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !726, line: 376, size: 128, elements: !1199)
!1199 = !{!1200, !2294}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1198, file: !726, line: 377, baseType: !1201, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1203, line: 640, size: 48640, elements: !1204)
!1203 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1204 = !{!1205, !1211, !1212, !1213, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1230, !1248, !1259, !1344, !1345, !1346, !1357, !1358, !1360, !1361, !1362, !1363, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1442, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1480, !1482, !1483, !1484, !1496, !1497, !1498, !1499, !1500, !1501, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1525, !1530, !1714, !1715, !1716, !1717, !1721, !1724, !1727, !1730, !1733, !1736, !1837, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1883, !1884, !1885, !1886, !1887, !1892, !1893, !1894, !1897, !1898, !1901, !1904, !1907, !1910, !1953, !1956, !1957, !2036, !2037, !2040, !2041, !2044, !2045, !2046, !2050, !2051, !2052, !2065, !2066, !2067, !2077, !2082, !2085, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1202, file: !1203, line: 646, baseType: !1206, size: 128)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1207, line: 56, size: 128, elements: !1208)
!1207 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1208 = !{!1209, !1210}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1206, file: !1207, line: 57, baseType: !132, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1206, file: !1207, line: 58, baseType: !421, size: 32, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1202, file: !1203, line: 649, baseType: !181, size: 64, offset: 128)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1202, file: !1203, line: 657, baseType: !118, size: 64, offset: 192)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1202, file: !1203, line: 658, baseType: !1214, size: 32, offset: 256)
!1214 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1215, line: 113, baseType: !1216)
!1215 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1215, line: 111, size: 32, elements: !1217)
!1217 = !{!1218}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1216, file: !1215, line: 112, baseType: !750, size: 32)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1202, file: !1203, line: 660, baseType: !7, size: 32, offset: 288)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1202, file: !1203, line: 661, baseType: !7, size: 32, offset: 320)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1202, file: !1203, line: 684, baseType: !203, size: 32, offset: 352)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1202, file: !1203, line: 686, baseType: !203, size: 32, offset: 384)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1202, file: !1203, line: 687, baseType: !203, size: 32, offset: 416)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1202, file: !1203, line: 688, baseType: !203, size: 32, offset: 448)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1202, file: !1203, line: 689, baseType: !7, size: 32, offset: 480)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1202, file: !1203, line: 691, baseType: !1227, size: 64, offset: 512)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1229)
!1229 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1203, line: 691, flags: DIFlagFwdDecl)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1202, file: !1203, line: 692, baseType: !1231, size: 832, offset: 576)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1203, line: 451, size: 832, elements: !1232)
!1232 = !{!1233, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1231, file: !1203, line: 453, baseType: !1234, size: 128)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1203, line: 325, size: 128, elements: !1235)
!1235 = !{!1236, !1237}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1234, file: !1203, line: 326, baseType: !132, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1234, file: !1203, line: 327, baseType: !421, size: 32, offset: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1231, file: !1203, line: 454, baseType: !763, size: 192, align: 64, offset: 128)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1231, file: !1203, line: 455, baseType: !124, size: 128, offset: 320)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1231, file: !1203, line: 456, baseType: !7, size: 32, offset: 448)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1231, file: !1203, line: 458, baseType: !142, size: 64, offset: 512)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1231, file: !1203, line: 459, baseType: !142, size: 64, offset: 576)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1231, file: !1203, line: 460, baseType: !142, size: 64, offset: 640)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1231, file: !1203, line: 461, baseType: !142, size: 64, offset: 704)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1231, file: !1203, line: 463, baseType: !142, size: 64, offset: 768)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1231, file: !1203, line: 465, baseType: !1247, offset: 832)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1203, line: 415, elements: !255)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1202, file: !1203, line: 693, baseType: !1249, size: 384, offset: 1408)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1203, line: 489, size: 384, elements: !1250)
!1250 = !{!1251, !1252, !1253, !1254, !1255, !1256, !1257}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1249, file: !1203, line: 490, baseType: !124, size: 128)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1249, file: !1203, line: 491, baseType: !132, size: 64, offset: 128)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1249, file: !1203, line: 492, baseType: !132, size: 64, offset: 192)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1249, file: !1203, line: 493, baseType: !7, size: 32, offset: 256)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1249, file: !1203, line: 494, baseType: !323, size: 16, offset: 288)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1249, file: !1203, line: 495, baseType: !323, size: 16, offset: 304)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1249, file: !1203, line: 497, baseType: !1258, size: 64, offset: 320)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1202, file: !1203, line: 697, baseType: !1260, size: 1792, offset: 1792)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1203, line: 507, size: 1792, elements: !1261)
!1261 = !{!1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1341, !1342}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1260, file: !1203, line: 508, baseType: !763, size: 192, align: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1260, file: !1203, line: 515, baseType: !142, size: 64, offset: 192)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1260, file: !1203, line: 516, baseType: !142, size: 64, offset: 256)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1260, file: !1203, line: 517, baseType: !142, size: 64, offset: 320)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1260, file: !1203, line: 518, baseType: !142, size: 64, offset: 384)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1260, file: !1203, line: 519, baseType: !142, size: 64, offset: 448)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1260, file: !1203, line: 526, baseType: !780, size: 64, offset: 512)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1260, file: !1203, line: 527, baseType: !142, size: 64, offset: 576)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1260, file: !1203, line: 528, baseType: !7, size: 32, offset: 640)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1260, file: !1203, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1260, file: !1203, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1260, file: !1203, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1260, file: !1203, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1260, file: !1203, line: 563, baseType: !1276, size: 512, offset: 704)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1277)
!1277 = !{!1278, !1286, !1287, !1292, !1335, !1338, !1339, !1340}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1276, file: !20, line: 119, baseType: !1279, size: 256)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1280, line: 9, size: 256, elements: !1281)
!1280 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1281 = !{!1282, !1283}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1279, file: !1280, line: 10, baseType: !763, size: 192, align: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1279, file: !1280, line: 11, baseType: !1284, size: 64, offset: 192)
!1284 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1285, line: 29, baseType: !780)
!1285 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1276, file: !20, line: 120, baseType: !1284, size: 64, offset: 256)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1276, file: !20, line: 121, baseType: !1288, size: 64, offset: 320)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{!19, !1291}
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1276, file: !20, line: 122, baseType: !1293, size: 64, offset: 384)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1295)
!1295 = !{!1296, !1316, !1317, !1320, !1325, !1326, !1330, !1334}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1294, file: !20, line: 160, baseType: !1297, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1299)
!1299 = !{!1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1298, file: !20, line: 215, baseType: !783)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1298, file: !20, line: 216, baseType: !7, size: 32)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1298, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1298, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1298, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1298, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1298, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1298, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1298, file: !20, line: 233, baseType: !1284, size: 64, offset: 128)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1298, file: !20, line: 234, baseType: !1291, size: 64, offset: 192)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1298, file: !20, line: 235, baseType: !1284, size: 64, offset: 256)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1298, file: !20, line: 236, baseType: !1291, size: 64, offset: 320)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1298, file: !20, line: 237, baseType: !1313, size: 4096, offset: 512)
!1313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1294, size: 4096, elements: !1314)
!1314 = !{!1315}
!1315 = !DISubrange(count: 8)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1294, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1294, file: !20, line: 162, baseType: !1318, size: 32, offset: 96)
!1318 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !125, line: 27, baseType: !1319)
!1319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !315, line: 96, baseType: !203)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1294, file: !20, line: 163, baseType: !1321, size: 32, offset: 128)
!1321 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !394, line: 276, baseType: !1322)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !394, line: 276, size: 32, elements: !1323)
!1323 = !{!1324}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1322, file: !394, line: 276, baseType: !398, size: 32)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1294, file: !20, line: 164, baseType: !1291, size: 64, offset: 192)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1294, file: !20, line: 165, baseType: !1327, size: 128, offset: 256)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1280, line: 14, size: 128, elements: !1328)
!1328 = !{!1329}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1327, file: !1280, line: 15, baseType: !755, size: 128)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1294, file: !20, line: 166, baseType: !1331, size: 64, offset: 384)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!1284}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1294, file: !20, line: 167, baseType: !1284, size: 64, offset: 448)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1276, file: !20, line: 123, baseType: !1336, size: 8, offset: 448)
!1336 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !143, line: 17, baseType: !1337)
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !145, line: 21, baseType: !151)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1276, file: !20, line: 124, baseType: !1336, size: 8, offset: 456)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1276, file: !20, line: 125, baseType: !1336, size: 8, offset: 464)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1276, file: !20, line: 126, baseType: !1336, size: 8, offset: 472)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1260, file: !1203, line: 572, baseType: !1276, size: 512, offset: 1216)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1260, file: !1203, line: 580, baseType: !1343, size: 64, offset: 1728)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1202, file: !1203, line: 721, baseType: !7, size: 32, offset: 3584)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1202, file: !1203, line: 722, baseType: !203, size: 32, offset: 3616)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1202, file: !1203, line: 723, baseType: !1347, size: 64, offset: 3648)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1349)
!1349 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1350, line: 17, baseType: !1351)
!1350 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1350, line: 17, size: 64, elements: !1352)
!1352 = !{!1353}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1351, file: !1350, line: 17, baseType: !1354, size: 64)
!1354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 64, elements: !1355)
!1355 = !{!1356}
!1356 = !DISubrange(count: 1)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1202, file: !1203, line: 724, baseType: !1349, size: 64, offset: 3712)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1202, file: !1203, line: 749, baseType: !1359, offset: 3776)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1203, line: 290, elements: !255)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1202, file: !1203, line: 751, baseType: !124, size: 128, offset: 3776)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1202, file: !1203, line: 757, baseType: !977, size: 64, offset: 3904)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1202, file: !1203, line: 758, baseType: !977, size: 64, offset: 3968)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1202, file: !1203, line: 761, baseType: !1364, size: 320, offset: 4032)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1154, line: 34, size: 320, elements: !1365)
!1365 = !{!1366, !1367}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1364, file: !1154, line: 35, baseType: !142, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1364, file: !1154, line: 36, baseType: !1368, size: 256, offset: 64)
!1368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !984, size: 256, elements: !161)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1202, file: !1203, line: 766, baseType: !203, size: 32, offset: 4352)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1202, file: !1203, line: 767, baseType: !203, size: 32, offset: 4384)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1202, file: !1203, line: 768, baseType: !203, size: 32, offset: 4416)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1202, file: !1203, line: 770, baseType: !203, size: 32, offset: 4448)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1202, file: !1203, line: 772, baseType: !132, size: 64, offset: 4480)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1202, file: !1203, line: 775, baseType: !7, size: 32, offset: 4544)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1202, file: !1203, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1202, file: !1203, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1202, file: !1203, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1202, file: !1203, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1202, file: !1203, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1202, file: !1203, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1202, file: !1203, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1202, file: !1203, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1202, file: !1203, line: 831, baseType: !132, size: 64, offset: 4672)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1202, file: !1203, line: 833, baseType: !1385, size: 384, offset: 4736)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1386)
!1386 = !{!1387, !1392}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1385, file: !25, line: 26, baseType: !1388, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!182, !1391}
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, scope: !1385, file: !25, line: 27, baseType: !1393, size: 320, offset: 64)
!1393 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1385, file: !25, line: 27, size: 320, elements: !1394)
!1394 = !{!1395, !1405, !1432}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1393, file: !25, line: 36, baseType: !1396, size: 320)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1393, file: !25, line: 29, size: 320, elements: !1397)
!1397 = !{!1398, !1400, !1401, !1402, !1403, !1404}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1396, file: !25, line: 30, baseType: !1399, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1396, file: !25, line: 31, baseType: !421, size: 32, offset: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1396, file: !25, line: 32, baseType: !421, size: 32, offset: 96)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1396, file: !25, line: 33, baseType: !421, size: 32, offset: 128)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1396, file: !25, line: 34, baseType: !142, size: 64, offset: 192)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1396, file: !25, line: 35, baseType: !1399, size: 64, offset: 256)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1393, file: !25, line: 46, baseType: !1406, size: 192)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1393, file: !25, line: 38, size: 192, elements: !1407)
!1407 = !{!1408, !1409, !1410, !1431}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1406, file: !25, line: 39, baseType: !1318, size: 32)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1406, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1410 = !DIDerivedType(tag: DW_TAG_member, scope: !1406, file: !25, line: 41, baseType: !1411, size: 64, offset: 64)
!1411 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1406, file: !25, line: 41, size: 64, elements: !1412)
!1412 = !{!1413, !1421}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1411, file: !25, line: 42, baseType: !1414, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1416, line: 7, size: 128, elements: !1417)
!1416 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1417 = !{!1418, !1420}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1415, file: !1416, line: 8, baseType: !1419, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !315, line: 93, baseType: !533)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1415, file: !1416, line: 9, baseType: !533, size: 64, offset: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1411, file: !25, line: 43, baseType: !1422, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1424, line: 7, size: 64, elements: !1425)
!1424 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1425 = !{!1426, !1430}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1423, file: !1424, line: 8, baseType: !1427, size: 32)
!1427 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1424, line: 5, baseType: !1428)
!1428 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !143, line: 20, baseType: !1429)
!1429 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !145, line: 26, baseType: !203)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1423, file: !1424, line: 9, baseType: !1428, size: 32, offset: 32)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1406, file: !25, line: 45, baseType: !142, size: 64, offset: 128)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1393, file: !25, line: 54, baseType: !1433, size: 256)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1393, file: !25, line: 48, size: 256, elements: !1434)
!1434 = !{!1435, !1438, !1439, !1440, !1441}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1433, file: !25, line: 49, baseType: !1436, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1433, file: !25, line: 50, baseType: !203, size: 32, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1433, file: !25, line: 51, baseType: !203, size: 32, offset: 96)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1433, file: !25, line: 52, baseType: !132, size: 64, offset: 128)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1433, file: !25, line: 53, baseType: !132, size: 64, offset: 192)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1202, file: !1203, line: 835, baseType: !1443, size: 32, offset: 5120)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !125, line: 22, baseType: !1444)
!1444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !315, line: 28, baseType: !203)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1202, file: !1203, line: 836, baseType: !1443, size: 32, offset: 5152)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1202, file: !1203, line: 840, baseType: !132, size: 64, offset: 5184)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1202, file: !1203, line: 849, baseType: !1201, size: 64, offset: 5248)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1202, file: !1203, line: 852, baseType: !1201, size: 64, offset: 5312)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1202, file: !1203, line: 857, baseType: !124, size: 128, offset: 5376)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1202, file: !1203, line: 858, baseType: !124, size: 128, offset: 5504)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1202, file: !1203, line: 859, baseType: !1201, size: 64, offset: 5632)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1202, file: !1203, line: 867, baseType: !124, size: 128, offset: 5696)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1202, file: !1203, line: 868, baseType: !124, size: 128, offset: 5824)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1202, file: !1203, line: 871, baseType: !1455, size: 64, offset: 5952)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1457)
!1457 = !{!1458, !1459, !1460, !1461, !1463, !1464, !1471, !1472}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1456, file: !53, line: 61, baseType: !1214, size: 32)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1456, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1456, file: !53, line: 63, baseType: !241, offset: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1456, file: !53, line: 65, baseType: !1462, size: 256, offset: 64)
!1462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !638, size: 256, elements: !161)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1456, file: !53, line: 66, baseType: !638, size: 64, offset: 320)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1456, file: !53, line: 68, baseType: !1465, size: 128, offset: 384)
!1465 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1466, line: 40, baseType: !1467)
!1466 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1466, line: 36, size: 128, elements: !1468)
!1468 = !{!1469, !1470}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1467, file: !1466, line: 37, baseType: !241)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1467, file: !1466, line: 38, baseType: !124, size: 128)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1456, file: !53, line: 69, baseType: !371, size: 128, align: 64, offset: 512)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1456, file: !53, line: 70, baseType: !1473, size: 128, offset: 640)
!1473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1474, size: 128, elements: !1355)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1475)
!1475 = !{!1476, !1477}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1474, file: !53, line: 55, baseType: !203, size: 32)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1474, file: !53, line: 56, baseType: !1478, size: 64, offset: 64)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1202, file: !1203, line: 872, baseType: !1481, size: 512, offset: 6016)
!1481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !642, size: 512, elements: !161)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1202, file: !1203, line: 873, baseType: !124, size: 128, offset: 6528)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1202, file: !1203, line: 874, baseType: !124, size: 128, offset: 6656)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1202, file: !1203, line: 876, baseType: !1485, size: 64, offset: 6784)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1487, line: 26, size: 192, elements: !1488)
!1487 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1488 = !{!1489, !1490}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1486, file: !1487, line: 27, baseType: !7, size: 32)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1486, file: !1487, line: 28, baseType: !1491, size: 128, offset: 64)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1492, line: 43, size: 128, elements: !1493)
!1492 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1493 = !{!1494, !1495}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1491, file: !1492, line: 44, baseType: !783)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1491, file: !1492, line: 45, baseType: !124, size: 128)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1202, file: !1203, line: 879, baseType: !708, size: 64, offset: 6848)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1202, file: !1203, line: 882, baseType: !708, size: 64, offset: 6912)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1202, file: !1203, line: 884, baseType: !142, size: 64, offset: 6976)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1202, file: !1203, line: 885, baseType: !142, size: 64, offset: 7040)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1202, file: !1203, line: 890, baseType: !142, size: 64, offset: 7104)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1202, file: !1203, line: 891, baseType: !1502, size: 128, offset: 7168)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1203, line: 242, size: 128, elements: !1503)
!1503 = !{!1504, !1505, !1506}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1502, file: !1203, line: 244, baseType: !142, size: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1502, file: !1203, line: 245, baseType: !142, size: 64, offset: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1502, file: !1203, line: 246, baseType: !783, offset: 128)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1202, file: !1203, line: 900, baseType: !132, size: 64, offset: 7296)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1202, file: !1203, line: 901, baseType: !132, size: 64, offset: 7360)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1202, file: !1203, line: 904, baseType: !142, size: 64, offset: 7424)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1202, file: !1203, line: 907, baseType: !142, size: 64, offset: 7488)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1202, file: !1203, line: 910, baseType: !132, size: 64, offset: 7552)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1202, file: !1203, line: 911, baseType: !132, size: 64, offset: 7616)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1202, file: !1203, line: 914, baseType: !1514, size: 640, offset: 7680)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1515, line: 123, size: 640, elements: !1516)
!1515 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1516 = !{!1517, !1523, !1524}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1514, file: !1515, line: 124, baseType: !1518, size: 576)
!1518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1519, size: 576, elements: !283)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1515, line: 108, size: 192, elements: !1520)
!1520 = !{!1521, !1522}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1519, file: !1515, line: 109, baseType: !142, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1519, file: !1515, line: 110, baseType: !1327, size: 128, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1514, file: !1515, line: 125, baseType: !7, size: 32, offset: 576)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1514, file: !1515, line: 126, baseType: !7, size: 32, offset: 608)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1202, file: !1203, line: 917, baseType: !1526, size: 192, offset: 8320)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1515, line: 134, size: 192, elements: !1527)
!1527 = !{!1528, !1529}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1526, file: !1515, line: 135, baseType: !371, size: 128, align: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1526, file: !1515, line: 136, baseType: !7, size: 32, offset: 128)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1202, file: !1203, line: 923, baseType: !1531, size: 64, offset: 8512)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1533)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1534, line: 111, size: 1280, elements: !1535)
!1534 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1535 = !{!1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1555, !1556, !1557, !1558, !1559, !1560, !1667, !1668, !1669, !1670, !1696, !1699, !1709}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1533, file: !1534, line: 112, baseType: !750, size: 32)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1533, file: !1534, line: 120, baseType: !435, size: 32, offset: 32)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1533, file: !1534, line: 121, baseType: !443, size: 32, offset: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1533, file: !1534, line: 122, baseType: !435, size: 32, offset: 96)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1533, file: !1534, line: 123, baseType: !443, size: 32, offset: 128)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1533, file: !1534, line: 124, baseType: !435, size: 32, offset: 160)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1533, file: !1534, line: 125, baseType: !443, size: 32, offset: 192)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1533, file: !1534, line: 126, baseType: !435, size: 32, offset: 224)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1533, file: !1534, line: 127, baseType: !443, size: 32, offset: 256)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1533, file: !1534, line: 128, baseType: !7, size: 32, offset: 288)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1533, file: !1534, line: 129, baseType: !1547, size: 64, offset: 320)
!1547 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1548, line: 26, baseType: !1549)
!1548 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1548, line: 24, size: 64, elements: !1550)
!1550 = !{!1551}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1549, file: !1548, line: 25, baseType: !1552, size: 64)
!1552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !422, size: 64, elements: !1553)
!1553 = !{!1554}
!1554 = !DISubrange(count: 2)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1533, file: !1534, line: 130, baseType: !1547, size: 64, offset: 384)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1533, file: !1534, line: 131, baseType: !1547, size: 64, offset: 448)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1533, file: !1534, line: 132, baseType: !1547, size: 64, offset: 512)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1533, file: !1534, line: 133, baseType: !1547, size: 64, offset: 576)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1533, file: !1534, line: 135, baseType: !151, size: 8, offset: 640)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1533, file: !1534, line: 137, baseType: !1561, size: 64, offset: 704)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1563, line: 189, size: 1664, elements: !1564)
!1563 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1564 = !{!1565, !1566, !1569, !1574, !1575, !1578, !1579, !1584, !1585, !1586, !1587, !1589, !1590, !1591, !1592, !1593, !1631, !1652}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1562, file: !1563, line: 190, baseType: !1214, size: 32)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1562, file: !1563, line: 191, baseType: !1567, size: 32, offset: 32)
!1567 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1563, line: 28, baseType: !1568)
!1568 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !125, line: 98, baseType: !1428)
!1569 = !DIDerivedType(tag: DW_TAG_member, scope: !1562, file: !1563, line: 192, baseType: !1570, size: 192, offset: 64)
!1570 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1562, file: !1563, line: 192, size: 192, elements: !1571)
!1571 = !{!1572, !1573}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1570, file: !1563, line: 193, baseType: !124, size: 128)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1570, file: !1563, line: 194, baseType: !763, size: 192, align: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1562, file: !1563, line: 199, baseType: !770, size: 256, offset: 256)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1562, file: !1563, line: 200, baseType: !1576, size: 64, offset: 512)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1563, line: 200, flags: DIFlagFwdDecl)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1562, file: !1563, line: 201, baseType: !118, size: 64, offset: 576)
!1579 = !DIDerivedType(tag: DW_TAG_member, scope: !1562, file: !1563, line: 202, baseType: !1580, size: 64, offset: 640)
!1580 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1562, file: !1563, line: 202, size: 64, elements: !1581)
!1581 = !{!1582, !1583}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1580, file: !1563, line: 203, baseType: !539, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1580, file: !1563, line: 204, baseType: !539, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1562, file: !1563, line: 206, baseType: !539, size: 64, offset: 704)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1562, file: !1563, line: 207, baseType: !435, size: 32, offset: 768)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1562, file: !1563, line: 208, baseType: !443, size: 32, offset: 800)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1562, file: !1563, line: 209, baseType: !1588, size: 32, offset: 832)
!1588 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1563, line: 31, baseType: !559)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1562, file: !1563, line: 210, baseType: !323, size: 16, offset: 864)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1562, file: !1563, line: 211, baseType: !323, size: 16, offset: 880)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1562, file: !1563, line: 215, baseType: !1190, size: 16, offset: 896)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1562, file: !1563, line: 222, baseType: !132, size: 64, offset: 960)
!1593 = !DIDerivedType(tag: DW_TAG_member, scope: !1562, file: !1563, line: 239, baseType: !1594, size: 320, offset: 1024)
!1594 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1562, file: !1563, line: 239, size: 320, elements: !1595)
!1595 = !{!1596, !1623}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1594, file: !1563, line: 240, baseType: !1597, size: 320)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1563, line: 108, size: 320, elements: !1598)
!1598 = !{!1599, !1600, !1612, !1615, !1622}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1597, file: !1563, line: 110, baseType: !132, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, scope: !1597, file: !1563, line: 111, baseType: !1601, size: 64, offset: 64)
!1601 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1597, file: !1563, line: 111, size: 64, elements: !1602)
!1602 = !{!1603, !1611}
!1603 = !DIDerivedType(tag: DW_TAG_member, scope: !1601, file: !1563, line: 112, baseType: !1604, size: 64)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1601, file: !1563, line: 112, size: 64, elements: !1605)
!1605 = !{!1606, !1607}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1604, file: !1563, line: 114, baseType: !862, size: 16)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1604, file: !1563, line: 115, baseType: !1608, size: 48, offset: 16)
!1608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 48, elements: !1609)
!1609 = !{!1610}
!1610 = !DISubrange(count: 6)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1601, file: !1563, line: 121, baseType: !132, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1597, file: !1563, line: 123, baseType: !1613, size: 64, offset: 128)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1563, line: 96, flags: DIFlagFwdDecl)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1597, file: !1563, line: 124, baseType: !1616, size: 64, offset: 192)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1563, line: 102, size: 192, elements: !1618)
!1618 = !{!1619, !1620, !1621}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1617, file: !1563, line: 103, baseType: !371, size: 128, align: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1617, file: !1563, line: 104, baseType: !1214, size: 32, offset: 128)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1617, file: !1563, line: 105, baseType: !490, size: 8, offset: 160)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1597, file: !1563, line: 125, baseType: !194, size: 64, offset: 256)
!1623 = !DIDerivedType(tag: DW_TAG_member, scope: !1594, file: !1563, line: 241, baseType: !1624, size: 320)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1594, file: !1563, line: 241, size: 320, elements: !1625)
!1625 = !{!1626, !1627, !1628, !1629, !1630}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1624, file: !1563, line: 242, baseType: !132, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1624, file: !1563, line: 243, baseType: !132, size: 64, offset: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1624, file: !1563, line: 244, baseType: !1613, size: 64, offset: 128)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1624, file: !1563, line: 245, baseType: !1616, size: 64, offset: 192)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1624, file: !1563, line: 246, baseType: !282, size: 64, offset: 256)
!1631 = !DIDerivedType(tag: DW_TAG_member, scope: !1562, file: !1563, line: 254, baseType: !1632, size: 256, offset: 1344)
!1632 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1562, file: !1563, line: 254, size: 256, elements: !1633)
!1633 = !{!1634, !1640}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1632, file: !1563, line: 255, baseType: !1635, size: 256)
!1635 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1563, line: 128, size: 256, elements: !1636)
!1636 = !{!1637, !1638}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1635, file: !1563, line: 129, baseType: !118, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1635, file: !1563, line: 130, baseType: !1639, size: 256)
!1639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 256, elements: !161)
!1640 = !DIDerivedType(tag: DW_TAG_member, scope: !1632, file: !1563, line: 256, baseType: !1641, size: 256)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1632, file: !1563, line: 256, size: 256, elements: !1642)
!1642 = !{!1643, !1644}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1641, file: !1563, line: 258, baseType: !124, size: 128)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1641, file: !1563, line: 259, baseType: !1645, size: 128, offset: 128)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1646, line: 22, size: 128, elements: !1647)
!1646 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1647 = !{!1648, !1651}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1645, file: !1646, line: 23, baseType: !1649, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1646, line: 23, flags: DIFlagFwdDecl)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1645, file: !1646, line: 24, baseType: !132, size: 64, offset: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1562, file: !1563, line: 274, baseType: !1653, size: 64, offset: 1600)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1563, line: 170, size: 192, elements: !1655)
!1655 = !{!1656, !1665, !1666}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1654, file: !1563, line: 171, baseType: !1657, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1563, line: 165, baseType: !1658)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!203, !1561, !1661, !1663, !1561}
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1614)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1635)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1654, file: !1563, line: 172, baseType: !1561, size: 64, offset: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1654, file: !1563, line: 173, baseType: !1613, size: 64, offset: 128)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1533, file: !1534, line: 138, baseType: !1561, size: 64, offset: 768)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1533, file: !1534, line: 139, baseType: !1561, size: 64, offset: 832)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1533, file: !1534, line: 140, baseType: !1561, size: 64, offset: 896)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1533, file: !1534, line: 145, baseType: !1671, size: 64, offset: 960)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1673, line: 13, size: 896, elements: !1674)
!1673 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1674 = !{!1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1672, file: !1673, line: 14, baseType: !1214, size: 32)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1672, file: !1673, line: 15, baseType: !750, size: 32, offset: 32)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1672, file: !1673, line: 16, baseType: !750, size: 32, offset: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1672, file: !1673, line: 21, baseType: !774, size: 64, offset: 128)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1672, file: !1673, line: 27, baseType: !132, size: 64, offset: 192)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1672, file: !1673, line: 28, baseType: !132, size: 64, offset: 256)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1672, file: !1673, line: 29, baseType: !774, size: 64, offset: 320)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1672, file: !1673, line: 32, baseType: !642, size: 128, offset: 384)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1672, file: !1673, line: 33, baseType: !435, size: 32, offset: 512)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1672, file: !1673, line: 37, baseType: !774, size: 64, offset: 576)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1672, file: !1673, line: 44, baseType: !1686, size: 256, offset: 640)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1687, line: 15, size: 256, elements: !1688)
!1687 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1688 = !{!1689, !1690, !1691, !1692, !1693, !1694, !1695}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1686, file: !1687, line: 16, baseType: !783)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1686, file: !1687, line: 18, baseType: !203, size: 32)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1686, file: !1687, line: 19, baseType: !203, size: 32, offset: 32)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1686, file: !1687, line: 20, baseType: !203, size: 32, offset: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1686, file: !1687, line: 21, baseType: !203, size: 32, offset: 96)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1686, file: !1687, line: 22, baseType: !132, size: 64, offset: 128)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1686, file: !1687, line: 23, baseType: !132, size: 64, offset: 192)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1533, file: !1534, line: 146, baseType: !1697, size: 64, offset: 1024)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !726, line: 516, flags: DIFlagFwdDecl)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1533, file: !1534, line: 147, baseType: !1700, size: 64, offset: 1088)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1534, line: 25, size: 64, elements: !1702)
!1702 = !{!1703, !1704, !1705}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1701, file: !1534, line: 26, baseType: !750, size: 32)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1701, file: !1534, line: 27, baseType: !203, size: 32, offset: 32)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1701, file: !1534, line: 28, baseType: !1706, offset: 64)
!1706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, elements: !1707)
!1707 = !{!1708}
!1708 = !DISubrange(count: 0)
!1709 = !DIDerivedType(tag: DW_TAG_member, scope: !1533, file: !1534, line: 149, baseType: !1710, size: 128, offset: 1152)
!1710 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1533, file: !1534, line: 149, size: 128, elements: !1711)
!1711 = !{!1712, !1713}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1710, file: !1534, line: 150, baseType: !203, size: 32)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1710, file: !1534, line: 151, baseType: !371, size: 128, align: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1202, file: !1203, line: 926, baseType: !1531, size: 64, offset: 8576)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1202, file: !1203, line: 929, baseType: !1531, size: 64, offset: 8640)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1202, file: !1203, line: 933, baseType: !1561, size: 64, offset: 8704)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1202, file: !1203, line: 943, baseType: !1718, size: 128, offset: 8768)
!1718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 128, elements: !1719)
!1719 = !{!1720}
!1720 = !DISubrange(count: 16)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1202, file: !1203, line: 945, baseType: !1722, size: 64, offset: 8896)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1203, line: 49, flags: DIFlagFwdDecl)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1202, file: !1203, line: 956, baseType: !1725, size: 64, offset: 8960)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1203, line: 45, flags: DIFlagFwdDecl)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1202, file: !1203, line: 959, baseType: !1728, size: 64, offset: 9024)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1203, line: 959, flags: DIFlagFwdDecl)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1202, file: !1203, line: 962, baseType: !1731, size: 64, offset: 9088)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1203, line: 66, flags: DIFlagFwdDecl)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1202, file: !1203, line: 966, baseType: !1734, size: 64, offset: 9152)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1203, line: 50, flags: DIFlagFwdDecl)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1202, file: !1203, line: 969, baseType: !1737, size: 64, offset: 9216)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1739, line: 82, size: 7296, elements: !1740)
!1739 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1740 = !{!1741, !1742, !1743, !1744, !1745, !1746, !1747, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1776, !1785, !1786, !1788, !1789, !1790, !1793, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1823, !1824, !1831, !1832, !1833, !1834, !1835, !1836}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1738, file: !1739, line: 83, baseType: !1214, size: 32)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1738, file: !1739, line: 84, baseType: !750, size: 32, offset: 32)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1738, file: !1739, line: 85, baseType: !203, size: 32, offset: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1738, file: !1739, line: 86, baseType: !124, size: 128, offset: 128)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1738, file: !1739, line: 88, baseType: !1465, size: 128, offset: 256)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1738, file: !1739, line: 91, baseType: !1201, size: 64, offset: 384)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1738, file: !1739, line: 94, baseType: !1748, size: 192, offset: 448)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1749, line: 30, size: 192, elements: !1750)
!1749 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1750 = !{!1751, !1752}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1748, file: !1749, line: 31, baseType: !124, size: 128)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1748, file: !1749, line: 32, baseType: !1753, size: 64, offset: 128)
!1753 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1754, line: 25, baseType: !1755)
!1754 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1754, line: 23, size: 64, elements: !1756)
!1756 = !{!1757}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1755, file: !1754, line: 24, baseType: !1354, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1738, file: !1739, line: 97, baseType: !638, size: 64, offset: 640)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1738, file: !1739, line: 100, baseType: !203, size: 32, offset: 704)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1738, file: !1739, line: 106, baseType: !203, size: 32, offset: 736)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1738, file: !1739, line: 107, baseType: !1201, size: 64, offset: 768)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1738, file: !1739, line: 110, baseType: !203, size: 32, offset: 832)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1738, file: !1739, line: 111, baseType: !7, size: 32, offset: 864)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1738, file: !1739, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1738, file: !1739, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1738, file: !1739, line: 128, baseType: !203, size: 32, offset: 928)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1738, file: !1739, line: 129, baseType: !124, size: 128, offset: 960)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1738, file: !1739, line: 132, baseType: !1276, size: 512, offset: 1088)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1738, file: !1739, line: 133, baseType: !1284, size: 64, offset: 1600)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1738, file: !1739, line: 140, baseType: !1771, size: 256, offset: 1664)
!1771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1772, size: 256, elements: !1553)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1739, line: 38, size: 128, elements: !1773)
!1773 = !{!1774, !1775}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1772, file: !1739, line: 39, baseType: !142, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1772, file: !1739, line: 40, baseType: !142, size: 64, offset: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1738, file: !1739, line: 146, baseType: !1777, size: 192, offset: 1920)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1739, line: 66, size: 192, elements: !1778)
!1778 = !{!1779}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1777, file: !1739, line: 67, baseType: !1780, size: 192)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1739, line: 47, size: 192, elements: !1781)
!1781 = !{!1782, !1783, !1784}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1780, file: !1739, line: 48, baseType: !776, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1780, file: !1739, line: 49, baseType: !776, size: 64, offset: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1780, file: !1739, line: 50, baseType: !776, size: 64, offset: 128)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1738, file: !1739, line: 150, baseType: !1514, size: 640, offset: 2112)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1738, file: !1739, line: 153, baseType: !1787, size: 256, offset: 2752)
!1787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1455, size: 256, elements: !161)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1738, file: !1739, line: 159, baseType: !1455, size: 64, offset: 3008)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1738, file: !1739, line: 162, baseType: !203, size: 32, offset: 3072)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1738, file: !1739, line: 164, baseType: !1791, size: 64, offset: 3136)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1739, line: 164, flags: DIFlagFwdDecl)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1738, file: !1739, line: 175, baseType: !1794, size: 32, offset: 3200)
!1794 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !394, line: 805, baseType: !1795)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !394, line: 798, size: 32, elements: !1796)
!1796 = !{!1797, !1798}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1795, file: !394, line: 803, baseType: !393, size: 32)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1795, file: !394, line: 804, baseType: !241, offset: 32)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1738, file: !1739, line: 176, baseType: !142, size: 64, offset: 3264)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1738, file: !1739, line: 176, baseType: !142, size: 64, offset: 3328)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1738, file: !1739, line: 176, baseType: !142, size: 64, offset: 3392)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1738, file: !1739, line: 176, baseType: !142, size: 64, offset: 3456)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1738, file: !1739, line: 177, baseType: !142, size: 64, offset: 3520)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1738, file: !1739, line: 178, baseType: !142, size: 64, offset: 3584)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1738, file: !1739, line: 179, baseType: !1502, size: 128, offset: 3648)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1738, file: !1739, line: 180, baseType: !132, size: 64, offset: 3776)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1738, file: !1739, line: 180, baseType: !132, size: 64, offset: 3840)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1738, file: !1739, line: 180, baseType: !132, size: 64, offset: 3904)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1738, file: !1739, line: 180, baseType: !132, size: 64, offset: 3968)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1738, file: !1739, line: 181, baseType: !132, size: 64, offset: 4032)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1738, file: !1739, line: 181, baseType: !132, size: 64, offset: 4096)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1738, file: !1739, line: 181, baseType: !132, size: 64, offset: 4160)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1738, file: !1739, line: 181, baseType: !132, size: 64, offset: 4224)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1738, file: !1739, line: 182, baseType: !132, size: 64, offset: 4288)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1738, file: !1739, line: 182, baseType: !132, size: 64, offset: 4352)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1738, file: !1739, line: 182, baseType: !132, size: 64, offset: 4416)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1738, file: !1739, line: 182, baseType: !132, size: 64, offset: 4480)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1738, file: !1739, line: 183, baseType: !132, size: 64, offset: 4544)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1738, file: !1739, line: 183, baseType: !132, size: 64, offset: 4608)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1738, file: !1739, line: 184, baseType: !1821, offset: 4672)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1822, line: 12, elements: !255)
!1822 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1738, file: !1739, line: 192, baseType: !146, size: 64, offset: 4672)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1738, file: !1739, line: 203, baseType: !1825, size: 2048, offset: 4736)
!1825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1826, size: 2048, elements: !1719)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1827, line: 43, size: 128, elements: !1828)
!1827 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1828 = !{!1829, !1830}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1826, file: !1827, line: 44, baseType: !330, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1826, file: !1827, line: 45, baseType: !330, size: 64, offset: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1738, file: !1739, line: 220, baseType: !490, size: 8, offset: 6784)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1738, file: !1739, line: 221, baseType: !1190, size: 16, offset: 6800)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1738, file: !1739, line: 222, baseType: !1190, size: 16, offset: 6816)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1738, file: !1739, line: 224, baseType: !977, size: 64, offset: 6848)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1738, file: !1739, line: 227, baseType: !1174, size: 192, offset: 6912)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1738, file: !1739, line: 233, baseType: !1174, size: 192, offset: 7104)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1202, file: !1203, line: 970, baseType: !1838, size: 64, offset: 9280)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1739, line: 20, size: 16576, elements: !1840)
!1840 = !{!1841, !1842, !1843, !1844}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1839, file: !1739, line: 21, baseType: !241)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1839, file: !1739, line: 22, baseType: !1214, size: 32)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1839, file: !1739, line: 23, baseType: !1465, size: 128, offset: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1839, file: !1739, line: 24, baseType: !1845, size: 16384, offset: 192)
!1845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1846, size: 16384, elements: !287)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1749, line: 49, size: 256, elements: !1847)
!1847 = !{!1848}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1846, file: !1749, line: 50, baseType: !1849, size: 256)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1749, line: 35, size: 256, elements: !1850)
!1850 = !{!1851, !1858, !1859, !1865}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1849, file: !1749, line: 37, baseType: !1852, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1853, line: 19, baseType: !1854)
!1853 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1853, line: 18, baseType: !1856)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{null, !203}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1849, file: !1749, line: 38, baseType: !132, size: 64, offset: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1849, file: !1749, line: 44, baseType: !1860, size: 64, offset: 128)
!1860 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1853, line: 22, baseType: !1861)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1853, line: 21, baseType: !1863)
!1863 = !DISubroutineType(types: !1864)
!1864 = !{null}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1849, file: !1749, line: 46, baseType: !1753, size: 64, offset: 192)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1202, file: !1203, line: 971, baseType: !1753, size: 64, offset: 9344)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1202, file: !1203, line: 972, baseType: !1753, size: 64, offset: 9408)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1202, file: !1203, line: 974, baseType: !1753, size: 64, offset: 9472)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1202, file: !1203, line: 975, baseType: !1748, size: 192, offset: 9536)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1202, file: !1203, line: 976, baseType: !132, size: 64, offset: 9728)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1202, file: !1203, line: 977, baseType: !328, size: 64, offset: 9792)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1202, file: !1203, line: 978, baseType: !7, size: 32, offset: 9856)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1202, file: !1203, line: 980, baseType: !374, size: 64, offset: 9920)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1202, file: !1203, line: 989, baseType: !1875, size: 128, offset: 9984)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1876, line: 35, size: 128, elements: !1877)
!1876 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1877 = !{!1878, !1879, !1880}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1875, file: !1876, line: 36, baseType: !203, size: 32)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1875, file: !1876, line: 37, baseType: !750, size: 32, offset: 32)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1875, file: !1876, line: 38, baseType: !1881, size: 64, offset: 64)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1876, line: 23, flags: DIFlagFwdDecl)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1202, file: !1203, line: 992, baseType: !142, size: 64, offset: 10112)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1202, file: !1203, line: 993, baseType: !142, size: 64, offset: 10176)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1202, file: !1203, line: 996, baseType: !241, offset: 10240)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1202, file: !1203, line: 999, baseType: !783, offset: 10240)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1202, file: !1203, line: 1001, baseType: !1888, size: 64, offset: 10240)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1203, line: 636, size: 64, elements: !1889)
!1889 = !{!1890}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1888, file: !1203, line: 637, baseType: !1891, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1202, file: !1203, line: 1005, baseType: !755, size: 128, offset: 10304)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1202, file: !1203, line: 1007, baseType: !1201, size: 64, offset: 10432)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1202, file: !1203, line: 1009, baseType: !1895, size: 64, offset: 10496)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1203, line: 1009, flags: DIFlagFwdDecl)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1202, file: !1203, line: 1043, baseType: !118, size: 64, offset: 10560)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1202, file: !1203, line: 1046, baseType: !1899, size: 64, offset: 10624)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1203, line: 41, flags: DIFlagFwdDecl)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1202, file: !1203, line: 1050, baseType: !1902, size: 64, offset: 10688)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1203, line: 42, flags: DIFlagFwdDecl)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1202, file: !1203, line: 1054, baseType: !1905, size: 64, offset: 10752)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1203, line: 55, flags: DIFlagFwdDecl)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1202, file: !1203, line: 1056, baseType: !1908, size: 64, offset: 10816)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1203, line: 40, flags: DIFlagFwdDecl)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1202, file: !1203, line: 1058, baseType: !1911, size: 64, offset: 10880)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1913, line: 99, size: 704, elements: !1914)
!1913 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1914 = !{!1915, !1916, !1917, !1918, !1919, !1920, !1921, !1940, !1941}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1912, file: !1913, line: 100, baseType: !774, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1912, file: !1913, line: 101, baseType: !750, size: 32, offset: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1912, file: !1913, line: 102, baseType: !750, size: 32, offset: 96)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1912, file: !1913, line: 105, baseType: !241, offset: 128)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1912, file: !1913, line: 107, baseType: !323, size: 16, offset: 128)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1912, file: !1913, line: 109, baseType: !742, size: 128, offset: 192)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1912, file: !1913, line: 110, baseType: !1922, size: 64, offset: 320)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1913, line: 73, size: 448, elements: !1924)
!1924 = !{!1925, !1928, !1929, !1934, !1939}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1923, file: !1913, line: 74, baseType: !1926, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1913, line: 74, flags: DIFlagFwdDecl)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1923, file: !1913, line: 75, baseType: !1911, size: 64, offset: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, scope: !1923, file: !1913, line: 83, baseType: !1930, size: 128, offset: 128)
!1930 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1923, file: !1913, line: 83, size: 128, elements: !1931)
!1931 = !{!1932, !1933}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1930, file: !1913, line: 84, baseType: !124, size: 128)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1930, file: !1913, line: 85, baseType: !938, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, scope: !1923, file: !1913, line: 87, baseType: !1935, size: 128, offset: 256)
!1935 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1923, file: !1913, line: 87, size: 128, elements: !1936)
!1936 = !{!1937, !1938}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1935, file: !1913, line: 88, baseType: !642, size: 128)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1935, file: !1913, line: 89, baseType: !371, size: 128, align: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1923, file: !1913, line: 92, baseType: !7, size: 32, offset: 384)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1912, file: !1913, line: 111, baseType: !638, size: 64, offset: 384)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1912, file: !1913, line: 113, baseType: !1942, size: 256, offset: 448)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1943, line: 102, size: 256, elements: !1944)
!1943 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1944 = !{!1945, !1946, !1947}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1942, file: !1943, line: 103, baseType: !774, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1942, file: !1943, line: 104, baseType: !124, size: 128, offset: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1942, file: !1943, line: 105, baseType: !1948, size: 64, offset: 192)
!1948 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1943, line: 21, baseType: !1949)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{null, !1952}
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1202, file: !1203, line: 1061, baseType: !1954, size: 64, offset: 10944)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1203, line: 43, flags: DIFlagFwdDecl)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1202, file: !1203, line: 1064, baseType: !132, size: 64, offset: 11008)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1202, file: !1203, line: 1065, baseType: !1958, size: 64, offset: 11072)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1749, line: 14, baseType: !1960)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1749, line: 12, size: 384, elements: !1961)
!1961 = !{!1962}
!1962 = !DIDerivedType(tag: DW_TAG_member, scope: !1960, file: !1749, line: 13, baseType: !1963, size: 384)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1960, file: !1749, line: 13, size: 384, elements: !1964)
!1964 = !{!1965, !1966, !1967, !1968}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1963, file: !1749, line: 13, baseType: !203, size: 32)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1963, file: !1749, line: 13, baseType: !203, size: 32, offset: 32)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1963, file: !1749, line: 13, baseType: !203, size: 32, offset: 64)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1963, file: !1749, line: 13, baseType: !1969, size: 256, offset: 128)
!1969 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1970, line: 32, size: 256, elements: !1971)
!1970 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1971 = !{!1972, !1977, !1990, !1996, !2005, !2025, !2030}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1969, file: !1970, line: 37, baseType: !1973, size: 64)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1969, file: !1970, line: 34, size: 64, elements: !1974)
!1974 = !{!1975, !1976}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1973, file: !1970, line: 35, baseType: !1444, size: 32)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1973, file: !1970, line: 36, baseType: !441, size: 32, offset: 32)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1969, file: !1970, line: 45, baseType: !1978, size: 192)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1969, file: !1970, line: 40, size: 192, elements: !1979)
!1979 = !{!1980, !1982, !1983, !1989}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1978, file: !1970, line: 41, baseType: !1981, size: 32)
!1981 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !315, line: 95, baseType: !203)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1978, file: !1970, line: 42, baseType: !203, size: 32, offset: 32)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1978, file: !1970, line: 43, baseType: !1984, size: 64, offset: 64)
!1984 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1970, line: 11, baseType: !1985)
!1985 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1970, line: 8, size: 64, elements: !1986)
!1986 = !{!1987, !1988}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1985, file: !1970, line: 9, baseType: !203, size: 32)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1985, file: !1970, line: 10, baseType: !118, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1978, file: !1970, line: 44, baseType: !203, size: 32, offset: 128)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1969, file: !1970, line: 52, baseType: !1991, size: 128)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1969, file: !1970, line: 48, size: 128, elements: !1992)
!1992 = !{!1993, !1994, !1995}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1991, file: !1970, line: 49, baseType: !1444, size: 32)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1991, file: !1970, line: 50, baseType: !441, size: 32, offset: 32)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1991, file: !1970, line: 51, baseType: !1984, size: 64, offset: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1969, file: !1970, line: 61, baseType: !1997, size: 256)
!1997 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1969, file: !1970, line: 55, size: 256, elements: !1998)
!1998 = !{!1999, !2000, !2001, !2002, !2004}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1997, file: !1970, line: 56, baseType: !1444, size: 32)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1997, file: !1970, line: 57, baseType: !441, size: 32, offset: 32)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1997, file: !1970, line: 58, baseType: !203, size: 32, offset: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1997, file: !1970, line: 59, baseType: !2003, size: 64, offset: 128)
!2003 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !315, line: 94, baseType: !316)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1997, file: !1970, line: 60, baseType: !2003, size: 64, offset: 192)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1969, file: !1970, line: 95, baseType: !2006, size: 256)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1969, file: !1970, line: 64, size: 256, elements: !2007)
!2007 = !{!2008, !2009}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2006, file: !1970, line: 65, baseType: !118, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, scope: !2006, file: !1970, line: 77, baseType: !2010, size: 192, offset: 64)
!2010 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2006, file: !1970, line: 77, size: 192, elements: !2011)
!2011 = !{!2012, !2013, !2020}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2010, file: !1970, line: 82, baseType: !1190, size: 16)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2010, file: !1970, line: 88, baseType: !2014, size: 192)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2010, file: !1970, line: 84, size: 192, elements: !2015)
!2015 = !{!2016, !2018, !2019}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2014, file: !1970, line: 85, baseType: !2017, size: 64)
!2017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 64, elements: !1314)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2014, file: !1970, line: 86, baseType: !118, size: 64, offset: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2014, file: !1970, line: 87, baseType: !118, size: 64, offset: 128)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2010, file: !1970, line: 93, baseType: !2021, size: 96)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2010, file: !1970, line: 90, size: 96, elements: !2022)
!2022 = !{!2023, !2024}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2021, file: !1970, line: 91, baseType: !2017, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2021, file: !1970, line: 92, baseType: !422, size: 32, offset: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1969, file: !1970, line: 101, baseType: !2026, size: 128)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1969, file: !1970, line: 98, size: 128, elements: !2027)
!2027 = !{!2028, !2029}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2026, file: !1970, line: 99, baseType: !182, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2026, file: !1970, line: 100, baseType: !203, size: 32, offset: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1969, file: !1970, line: 108, baseType: !2031, size: 128)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1969, file: !1970, line: 104, size: 128, elements: !2032)
!2032 = !{!2033, !2034, !2035}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2031, file: !1970, line: 105, baseType: !118, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2031, file: !1970, line: 106, baseType: !203, size: 32, offset: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2031, file: !1970, line: 107, baseType: !7, size: 32, offset: 96)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1202, file: !1203, line: 1067, baseType: !1821, offset: 11136)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1202, file: !1203, line: 1099, baseType: !2038, size: 64, offset: 11136)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1203, line: 56, flags: DIFlagFwdDecl)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1202, file: !1203, line: 1103, baseType: !124, size: 128, offset: 11200)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1202, file: !1203, line: 1104, baseType: !2042, size: 64, offset: 11328)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1203, line: 46, flags: DIFlagFwdDecl)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1202, file: !1203, line: 1105, baseType: !1174, size: 192, offset: 11392)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1202, file: !1203, line: 1106, baseType: !7, size: 32, offset: 11584)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1202, file: !1203, line: 1109, baseType: !2047, size: 128, offset: 11648)
!2047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2048, size: 128, elements: !1553)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1203, line: 51, flags: DIFlagFwdDecl)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1202, file: !1203, line: 1110, baseType: !1174, size: 192, offset: 11776)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1202, file: !1203, line: 1111, baseType: !124, size: 128, offset: 11968)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1202, file: !1203, line: 1173, baseType: !2053, size: 64, offset: 12096)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2055, line: 62, size: 256, align: 256, elements: !2056)
!2055 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2056 = !{!2057, !2058, !2059, !2064}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2054, file: !2055, line: 75, baseType: !422, size: 32)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2054, file: !2055, line: 90, baseType: !422, size: 32, offset: 32)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2054, file: !2055, line: 124, baseType: !2060, size: 64, offset: 64)
!2060 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2054, file: !2055, line: 109, size: 64, elements: !2061)
!2061 = !{!2062, !2063}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2060, file: !2055, line: 110, baseType: !144, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2060, file: !2055, line: 112, baseType: !144, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2054, file: !2055, line: 144, baseType: !422, size: 32, offset: 128)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1202, file: !1203, line: 1174, baseType: !421, size: 32, offset: 12160)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1202, file: !1203, line: 1179, baseType: !132, size: 64, offset: 12224)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1202, file: !1203, line: 1182, baseType: !2068, size: 128, offset: 12288)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1154, line: 76, size: 128, elements: !2069)
!2069 = !{!2070, !2075, !2076}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2068, file: !1154, line: 85, baseType: !2071, size: 64)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2072, line: 7, size: 64, elements: !2073)
!2072 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2073 = !{!2074}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2071, file: !2072, line: 12, baseType: !1351, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2068, file: !1154, line: 88, baseType: !490, size: 8, offset: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2068, file: !1154, line: 95, baseType: !490, size: 8, offset: 72)
!2077 = !DIDerivedType(tag: DW_TAG_member, scope: !1202, file: !1203, line: 1184, baseType: !2078, size: 128, offset: 12416)
!2078 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1202, file: !1203, line: 1184, size: 128, elements: !2079)
!2079 = !{!2080, !2081}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2078, file: !1203, line: 1185, baseType: !1214, size: 32)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2078, file: !1203, line: 1186, baseType: !371, size: 128, align: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1202, file: !1203, line: 1190, baseType: !2083, size: 64, offset: 12544)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1203, line: 53, flags: DIFlagFwdDecl)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1202, file: !1203, line: 1192, baseType: !2086, size: 128, offset: 12608)
!2086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1154, line: 64, size: 128, elements: !2087)
!2087 = !{!2088, !2089, !2090}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2086, file: !1154, line: 65, baseType: !724, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2086, file: !1154, line: 67, baseType: !422, size: 32, offset: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2086, file: !1154, line: 68, baseType: !422, size: 32, offset: 96)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1202, file: !1203, line: 1206, baseType: !203, size: 32, offset: 12736)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1202, file: !1203, line: 1207, baseType: !203, size: 32, offset: 12768)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1202, file: !1203, line: 1209, baseType: !132, size: 64, offset: 12800)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1202, file: !1203, line: 1219, baseType: !142, size: 64, offset: 12864)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1202, file: !1203, line: 1220, baseType: !142, size: 64, offset: 12928)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1202, file: !1203, line: 1317, baseType: !203, size: 32, offset: 12992)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1202, file: !1203, line: 1319, baseType: !1201, size: 64, offset: 13056)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1202, file: !1203, line: 1322, baseType: !2099, size: 64, offset: 13120)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2101, line: 56, size: 512, elements: !2102)
!2101 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2102 = !{!2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2100, file: !2101, line: 57, baseType: !2099, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2100, file: !2101, line: 58, baseType: !118, size: 64, offset: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2100, file: !2101, line: 59, baseType: !132, size: 64, offset: 128)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2100, file: !2101, line: 60, baseType: !132, size: 64, offset: 192)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2100, file: !2101, line: 61, baseType: !823, size: 64, offset: 256)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2100, file: !2101, line: 62, baseType: !7, size: 32, offset: 320)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2100, file: !2101, line: 63, baseType: !141, size: 64, offset: 384)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2100, file: !2101, line: 64, baseType: !2111, size: 64, offset: 448)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1202, file: !1203, line: 1326, baseType: !1214, size: 32, offset: 13184)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1202, file: !1203, line: 1342, baseType: !118, size: 64, offset: 13248)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1202, file: !1203, line: 1343, baseType: !144, size: 64, offset: 13312)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1202, file: !1203, line: 1344, baseType: !142, size: 64, offset: 13376)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1202, file: !1203, line: 1345, baseType: !144, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1202, file: !1203, line: 1346, baseType: !144, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1202, file: !1203, line: 1347, baseType: !144, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1202, file: !1203, line: 1348, baseType: !371, size: 128, align: 64, offset: 13504)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1202, file: !1203, line: 1358, baseType: !2122, size: 34816, offset: 13824)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2123, line: 485, size: 34816, elements: !2124)
!2123 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2124 = !{!2125, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2154, !2155, !2156, !2157, !2158, !2159, !2162, !2163, !2164}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2122, file: !2123, line: 487, baseType: !2126, size: 192)
!2126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2127, size: 192, elements: !283)
!2127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2128, line: 16, size: 64, elements: !2129)
!2128 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2129 = !{!2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2127, file: !2128, line: 17, baseType: !862, size: 16)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2127, file: !2128, line: 18, baseType: !862, size: 16, offset: 16)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2127, file: !2128, line: 19, baseType: !862, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2127, file: !2128, line: 19, baseType: !862, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2127, file: !2128, line: 19, baseType: !862, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2127, file: !2128, line: 19, baseType: !862, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2127, file: !2128, line: 19, baseType: !862, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2127, file: !2128, line: 20, baseType: !862, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2127, file: !2128, line: 20, baseType: !862, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2127, file: !2128, line: 20, baseType: !862, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2127, file: !2128, line: 20, baseType: !862, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2127, file: !2128, line: 20, baseType: !862, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2127, file: !2128, line: 20, baseType: !862, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2122, file: !2123, line: 491, baseType: !132, size: 64, offset: 192)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2122, file: !2123, line: 495, baseType: !323, size: 16, offset: 256)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2122, file: !2123, line: 496, baseType: !323, size: 16, offset: 272)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2122, file: !2123, line: 497, baseType: !323, size: 16, offset: 288)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2122, file: !2123, line: 498, baseType: !323, size: 16, offset: 304)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2122, file: !2123, line: 502, baseType: !132, size: 64, offset: 320)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2122, file: !2123, line: 503, baseType: !132, size: 64, offset: 384)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2122, file: !2123, line: 514, baseType: !2151, size: 256, offset: 448)
!2151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2152, size: 256, elements: !161)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2123, line: 483, flags: DIFlagFwdDecl)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2122, file: !2123, line: 516, baseType: !132, size: 64, offset: 704)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2122, file: !2123, line: 518, baseType: !132, size: 64, offset: 768)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2122, file: !2123, line: 520, baseType: !132, size: 64, offset: 832)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2122, file: !2123, line: 521, baseType: !132, size: 64, offset: 896)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2122, file: !2123, line: 522, baseType: !132, size: 64, offset: 960)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2122, file: !2123, line: 528, baseType: !2160, size: 64, offset: 1024)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2123, line: 10, flags: DIFlagFwdDecl)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2122, file: !2123, line: 535, baseType: !132, size: 64, offset: 1088)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2122, file: !2123, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2122, file: !2123, line: 540, baseType: !2165, size: 33280, offset: 1536)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2166, line: 317, size: 33280, elements: !2167)
!2166 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2167 = !{!2168, !2169, !2170}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2165, file: !2166, line: 330, baseType: !7, size: 32)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2165, file: !2166, line: 337, baseType: !132, size: 64, offset: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2165, file: !2166, line: 348, baseType: !2171, size: 32768, offset: 512)
!2171 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2166, line: 304, size: 32768, elements: !2172)
!2172 = !{!2173, !2188, !2227, !2277, !2290}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2171, file: !2166, line: 305, baseType: !2174, size: 896)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2166, line: 12, size: 896, elements: !2175)
!2175 = !{!2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2187}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2174, file: !2166, line: 13, baseType: !421, size: 32)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2174, file: !2166, line: 14, baseType: !421, size: 32, offset: 32)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2174, file: !2166, line: 15, baseType: !421, size: 32, offset: 64)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2174, file: !2166, line: 16, baseType: !421, size: 32, offset: 96)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2174, file: !2166, line: 17, baseType: !421, size: 32, offset: 128)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2174, file: !2166, line: 18, baseType: !421, size: 32, offset: 160)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2174, file: !2166, line: 19, baseType: !421, size: 32, offset: 192)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2174, file: !2166, line: 22, baseType: !2184, size: 640, offset: 224)
!2184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !421, size: 640, elements: !2185)
!2185 = !{!2186}
!2186 = !DISubrange(count: 20)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2174, file: !2166, line: 25, baseType: !421, size: 32, offset: 864)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2171, file: !2166, line: 306, baseType: !2189, size: 4096, align: 128)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2166, line: 34, size: 4096, align: 128, elements: !2190)
!2190 = !{!2191, !2192, !2193, !2194, !2195, !2210, !2211, !2212, !2216, !2218, !2222}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2189, file: !2166, line: 35, baseType: !862, size: 16)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2189, file: !2166, line: 36, baseType: !862, size: 16, offset: 16)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2189, file: !2166, line: 37, baseType: !862, size: 16, offset: 32)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2189, file: !2166, line: 38, baseType: !862, size: 16, offset: 48)
!2195 = !DIDerivedType(tag: DW_TAG_member, scope: !2189, file: !2166, line: 39, baseType: !2196, size: 128, offset: 64)
!2196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2189, file: !2166, line: 39, size: 128, elements: !2197)
!2197 = !{!2198, !2203}
!2198 = !DIDerivedType(tag: DW_TAG_member, scope: !2196, file: !2166, line: 40, baseType: !2199, size: 128)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2196, file: !2166, line: 40, size: 128, elements: !2200)
!2200 = !{!2201, !2202}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2199, file: !2166, line: 41, baseType: !142, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2199, file: !2166, line: 42, baseType: !142, size: 64, offset: 64)
!2203 = !DIDerivedType(tag: DW_TAG_member, scope: !2196, file: !2166, line: 44, baseType: !2204, size: 128)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2196, file: !2166, line: 44, size: 128, elements: !2205)
!2205 = !{!2206, !2207, !2208, !2209}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2204, file: !2166, line: 45, baseType: !421, size: 32)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2204, file: !2166, line: 46, baseType: !421, size: 32, offset: 32)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2204, file: !2166, line: 47, baseType: !421, size: 32, offset: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2204, file: !2166, line: 48, baseType: !421, size: 32, offset: 96)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2189, file: !2166, line: 51, baseType: !421, size: 32, offset: 192)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2189, file: !2166, line: 52, baseType: !421, size: 32, offset: 224)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2189, file: !2166, line: 55, baseType: !2213, size: 1024, offset: 256)
!2213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !421, size: 1024, elements: !2214)
!2214 = !{!2215}
!2215 = !DISubrange(count: 32)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2189, file: !2166, line: 58, baseType: !2217, size: 2048, offset: 1280)
!2217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !421, size: 2048, elements: !287)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2189, file: !2166, line: 60, baseType: !2219, size: 384, offset: 3328)
!2219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !421, size: 384, elements: !2220)
!2220 = !{!2221}
!2221 = !DISubrange(count: 12)
!2222 = !DIDerivedType(tag: DW_TAG_member, scope: !2189, file: !2166, line: 62, baseType: !2223, size: 384, offset: 3712)
!2223 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2189, file: !2166, line: 62, size: 384, elements: !2224)
!2224 = !{!2225, !2226}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2223, file: !2166, line: 63, baseType: !2219, size: 384)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2223, file: !2166, line: 64, baseType: !2219, size: 384)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2171, file: !2166, line: 307, baseType: !2228, size: 1088)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2166, line: 79, size: 1088, elements: !2229)
!2229 = !{!2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2276}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2228, file: !2166, line: 80, baseType: !421, size: 32)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2228, file: !2166, line: 81, baseType: !421, size: 32, offset: 32)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2228, file: !2166, line: 82, baseType: !421, size: 32, offset: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2228, file: !2166, line: 83, baseType: !421, size: 32, offset: 96)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2228, file: !2166, line: 84, baseType: !421, size: 32, offset: 128)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2228, file: !2166, line: 85, baseType: !421, size: 32, offset: 160)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2228, file: !2166, line: 86, baseType: !421, size: 32, offset: 192)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2228, file: !2166, line: 88, baseType: !2184, size: 640, offset: 224)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2228, file: !2166, line: 89, baseType: !1336, size: 8, offset: 864)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2228, file: !2166, line: 90, baseType: !1336, size: 8, offset: 872)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2228, file: !2166, line: 91, baseType: !1336, size: 8, offset: 880)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2228, file: !2166, line: 92, baseType: !1336, size: 8, offset: 888)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2228, file: !2166, line: 93, baseType: !1336, size: 8, offset: 896)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2228, file: !2166, line: 94, baseType: !1336, size: 8, offset: 904)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2228, file: !2166, line: 95, baseType: !2245, size: 64, offset: 960)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2247, line: 11, size: 128, elements: !2248)
!2247 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2248 = !{!2249, !2250}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2246, file: !2247, line: 12, baseType: !182, size: 64)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2246, file: !2247, line: 13, baseType: !2251, size: 64, offset: 64)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2253, line: 56, size: 1344, elements: !2254)
!2253 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2254 = !{!2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2252, file: !2253, line: 61, baseType: !132, size: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2252, file: !2253, line: 62, baseType: !132, size: 64, offset: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2252, file: !2253, line: 63, baseType: !132, size: 64, offset: 128)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2252, file: !2253, line: 64, baseType: !132, size: 64, offset: 192)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2252, file: !2253, line: 65, baseType: !132, size: 64, offset: 256)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2252, file: !2253, line: 66, baseType: !132, size: 64, offset: 320)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2252, file: !2253, line: 68, baseType: !132, size: 64, offset: 384)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2252, file: !2253, line: 69, baseType: !132, size: 64, offset: 448)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2252, file: !2253, line: 70, baseType: !132, size: 64, offset: 512)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2252, file: !2253, line: 71, baseType: !132, size: 64, offset: 576)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2252, file: !2253, line: 72, baseType: !132, size: 64, offset: 640)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2252, file: !2253, line: 73, baseType: !132, size: 64, offset: 704)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2252, file: !2253, line: 74, baseType: !132, size: 64, offset: 768)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2252, file: !2253, line: 75, baseType: !132, size: 64, offset: 832)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2252, file: !2253, line: 76, baseType: !132, size: 64, offset: 896)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2252, file: !2253, line: 81, baseType: !132, size: 64, offset: 960)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2252, file: !2253, line: 83, baseType: !132, size: 64, offset: 1024)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2252, file: !2253, line: 84, baseType: !132, size: 64, offset: 1088)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2252, file: !2253, line: 85, baseType: !132, size: 64, offset: 1152)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2252, file: !2253, line: 86, baseType: !132, size: 64, offset: 1216)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2252, file: !2253, line: 87, baseType: !132, size: 64, offset: 1280)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2228, file: !2166, line: 96, baseType: !421, size: 32, offset: 1024)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2171, file: !2166, line: 308, baseType: !2278, size: 4608, align: 512)
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2166, line: 289, size: 4608, align: 512, elements: !2279)
!2279 = !{!2280, !2281, !2288}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2278, file: !2166, line: 290, baseType: !2189, size: 4096, align: 128)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2278, file: !2166, line: 291, baseType: !2282, size: 512, offset: 4096)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2166, line: 268, size: 512, elements: !2283)
!2283 = !{!2284, !2285, !2286}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2282, file: !2166, line: 269, baseType: !142, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2282, file: !2166, line: 270, baseType: !142, size: 64, offset: 64)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2282, file: !2166, line: 271, baseType: !2287, size: 384, offset: 128)
!2287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 384, elements: !1609)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2278, file: !2166, line: 292, baseType: !2289, offset: 4608)
!2289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1336, elements: !1707)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2171, file: !2166, line: 309, baseType: !2291, size: 32768)
!2291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1336, size: 32768, elements: !2292)
!2292 = !{!2293}
!2293 = !DISubrange(count: 4096)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1198, file: !726, line: 378, baseType: !2295, size: 64, offset: 64)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1194, file: !726, line: 384, baseType: !1486, size: 192, offset: 192)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !981, file: !726, line: 500, baseType: !241, offset: 6656)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !981, file: !726, line: 501, baseType: !2299, size: 64, offset: 6656)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !726, line: 387, flags: DIFlagFwdDecl)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !981, file: !726, line: 516, baseType: !1697, size: 64, offset: 6720)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !981, file: !726, line: 519, baseType: !358, size: 64, offset: 6784)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !981, file: !726, line: 521, baseType: !2304, size: 64, offset: 6848)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !726, line: 521, flags: DIFlagFwdDecl)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !981, file: !726, line: 545, baseType: !750, size: 32, offset: 6912)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !981, file: !726, line: 548, baseType: !490, size: 8, offset: 6944)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !981, file: !726, line: 550, baseType: !2309, offset: 6952)
!2309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2310, line: 142, elements: !255)
!2310 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !981, file: !726, line: 554, baseType: !1942, size: 256, offset: 6976)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !981, file: !726, line: 557, baseType: !421, size: 32, offset: 7232)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !978, file: !726, line: 565, baseType: !2314, offset: 7296)
!2314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, elements: !2315)
!2315 = !{!2316}
!2316 = !DISubrange(count: -1)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !974, file: !726, line: 151, baseType: !750, size: 32)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !967, file: !726, line: 156, baseType: !241, offset: 256)
!2319 = !DIDerivedType(tag: DW_TAG_member, scope: !730, file: !726, line: 159, baseType: !2320, size: 128)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !730, file: !726, line: 159, size: 128, elements: !2321)
!2321 = !{!2322, !2386}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2320, file: !726, line: 161, baseType: !2323, size: 64)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2325)
!2325 = !{!2326, !2336, !2357, !2358, !2359, !2360, !2361, !2373, !2374, !2375}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2324, file: !31, line: 111, baseType: !2327, size: 384)
!2327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2328)
!2328 = !{!2329, !2331, !2332, !2333, !2334, !2335}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2327, file: !31, line: 20, baseType: !2330, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2327, file: !31, line: 21, baseType: !2330, size: 64, offset: 64)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2327, file: !31, line: 22, baseType: !2330, size: 64, offset: 128)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2327, file: !31, line: 23, baseType: !132, size: 64, offset: 192)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2327, file: !31, line: 24, baseType: !132, size: 64, offset: 256)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2327, file: !31, line: 25, baseType: !132, size: 64, offset: 320)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2324, file: !31, line: 112, baseType: !2337, size: 64, offset: 384)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2339, line: 105, size: 128, elements: !2340)
!2339 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2340 = !{!2341, !2342}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2338, file: !2339, line: 110, baseType: !132, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2338, file: !2339, line: 118, baseType: !2343, size: 64, offset: 64)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2339, line: 95, size: 448, elements: !2345)
!2345 = !{!2346, !2347, !2352, !2353, !2354, !2355, !2356}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2344, file: !2339, line: 96, baseType: !774, size: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2344, file: !2339, line: 97, baseType: !2348, size: 64, offset: 64)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2339, line: 60, baseType: !2350)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{null, !2337}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2344, file: !2339, line: 98, baseType: !2348, size: 64, offset: 128)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2344, file: !2339, line: 99, baseType: !490, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2344, file: !2339, line: 100, baseType: !490, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2344, file: !2339, line: 101, baseType: !371, size: 128, align: 64, offset: 256)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2344, file: !2339, line: 102, baseType: !2337, size: 64, offset: 384)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2324, file: !31, line: 113, baseType: !2338, size: 128, offset: 448)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2324, file: !31, line: 114, baseType: !1486, size: 192, offset: 576)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2324, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2324, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2324, file: !31, line: 117, baseType: !2362, size: 64, offset: 832)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2364)
!2364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2365)
!2365 = !{!2366, !2367, !2371, !2372}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2364, file: !31, line: 73, baseType: !843, size: 64)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2364, file: !31, line: 78, baseType: !2368, size: 64, offset: 64)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{null, !2323}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2364, file: !31, line: 83, baseType: !2368, size: 64, offset: 128)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2364, file: !31, line: 89, baseType: !1030, size: 64, offset: 192)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2324, file: !31, line: 118, baseType: !118, size: 64, offset: 896)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2324, file: !31, line: 119, baseType: !203, size: 32, offset: 960)
!2375 = !DIDerivedType(tag: DW_TAG_member, scope: !2324, file: !31, line: 120, baseType: !2376, size: 128, offset: 1024)
!2376 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2324, file: !31, line: 120, size: 128, elements: !2377)
!2377 = !{!2378, !2384}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2376, file: !31, line: 121, baseType: !2379, size: 128)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2380, line: 6, size: 128, elements: !2381)
!2380 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2381 = !{!2382, !2383}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2379, file: !2380, line: 7, baseType: !142, size: 64)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2379, file: !2380, line: 8, baseType: !142, size: 64, offset: 64)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2376, file: !31, line: 122, baseType: !2385)
!2385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2379, elements: !1707)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2320, file: !726, line: 162, baseType: !118, size: 64, offset: 64)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !730, file: !726, line: 176, baseType: !371, size: 128, align: 64)
!2388 = !DIDerivedType(tag: DW_TAG_member, scope: !725, file: !726, line: 179, baseType: !2389, size: 32, offset: 384)
!2389 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !725, file: !726, line: 179, size: 32, elements: !2390)
!2390 = !{!2391, !2392, !2393, !2394}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2389, file: !726, line: 184, baseType: !750, size: 32)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2389, file: !726, line: 192, baseType: !7, size: 32)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2389, file: !726, line: 194, baseType: !7, size: 32)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2389, file: !726, line: 195, baseType: !203, size: 32)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !725, file: !726, line: 199, baseType: !750, size: 32, offset: 416)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !660, file: !44, line: 1964, baseType: !2397, size: 64, offset: 1344)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!182, !599, !2400}
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2402, line: 12, size: 256, elements: !2403)
!2402 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2403 = !{!2404, !2405, !2406, !2407, !2408}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2401, file: !2402, line: 13, baseType: !177, size: 32)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2401, file: !2402, line: 16, baseType: !203, size: 32, offset: 32)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2401, file: !2402, line: 23, baseType: !132, size: 64, offset: 64)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2401, file: !2402, line: 30, baseType: !132, size: 64, offset: 128)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2401, file: !2402, line: 33, baseType: !2409, size: 64, offset: 192)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !726, line: 27, flags: DIFlagFwdDecl)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !660, file: !44, line: 1966, baseType: !2397, size: 64, offset: 1408)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !600, file: !44, line: 1424, baseType: !2413, size: 64, offset: 448)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2415)
!2415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2416)
!2416 = !{!2417, !2463, !2467, !2471, !2472, !2473, !2474, !2475, !2480, !2485, !2489}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2415, file: !38, line: 323, baseType: !2418, size: 64)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!203, !2421}
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2423)
!2423 = !{!2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2448, !2449, !2450}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2422, file: !38, line: 295, baseType: !642, size: 128)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2422, file: !38, line: 296, baseType: !124, size: 128, offset: 128)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2422, file: !38, line: 297, baseType: !124, size: 128, offset: 256)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2422, file: !38, line: 298, baseType: !124, size: 128, offset: 384)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2422, file: !38, line: 299, baseType: !1174, size: 192, offset: 512)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2422, file: !38, line: 300, baseType: !241, offset: 704)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2422, file: !38, line: 301, baseType: !750, size: 32, offset: 704)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2422, file: !38, line: 302, baseType: !599, size: 64, offset: 768)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2422, file: !38, line: 303, baseType: !2433, size: 64, offset: 832)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2434)
!2434 = !{!2435, !2447}
!2435 = !DIDerivedType(tag: DW_TAG_member, scope: !2433, file: !38, line: 69, baseType: !2436, size: 32)
!2436 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2433, file: !38, line: 69, size: 32, elements: !2437)
!2437 = !{!2438, !2439, !2440}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2436, file: !38, line: 70, baseType: !435, size: 32)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2436, file: !38, line: 71, baseType: !443, size: 32)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2436, file: !38, line: 72, baseType: !2441, size: 32)
!2441 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2442, line: 24, baseType: !2443)
!2442 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2442, line: 22, size: 32, elements: !2444)
!2444 = !{!2445}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2443, file: !2442, line: 23, baseType: !2446, size: 32)
!2446 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2442, line: 20, baseType: !441)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2433, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2422, file: !38, line: 304, baseType: !531, size: 64, offset: 896)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2422, file: !38, line: 305, baseType: !132, size: 64, offset: 960)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2422, file: !38, line: 306, baseType: !2451, size: 576, offset: 1024)
!2451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2452)
!2452 = !{!2453, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2451, file: !38, line: 206, baseType: !2454, size: 64)
!2454 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !533)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2451, file: !38, line: 207, baseType: !2454, size: 64, offset: 64)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2451, file: !38, line: 208, baseType: !2454, size: 64, offset: 128)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2451, file: !38, line: 209, baseType: !2454, size: 64, offset: 192)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2451, file: !38, line: 210, baseType: !2454, size: 64, offset: 256)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2451, file: !38, line: 211, baseType: !2454, size: 64, offset: 320)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2451, file: !38, line: 212, baseType: !2454, size: 64, offset: 384)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2451, file: !38, line: 213, baseType: !539, size: 64, offset: 448)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2451, file: !38, line: 214, baseType: !539, size: 64, offset: 512)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2415, file: !38, line: 324, baseType: !2464, size: 64, offset: 64)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!2421, !599, !203}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2415, file: !38, line: 325, baseType: !2468, size: 64, offset: 128)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{null, !2421}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2415, file: !38, line: 326, baseType: !2418, size: 64, offset: 192)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2415, file: !38, line: 327, baseType: !2418, size: 64, offset: 256)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2415, file: !38, line: 328, baseType: !2418, size: 64, offset: 320)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2415, file: !38, line: 329, baseType: !688, size: 64, offset: 384)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2415, file: !38, line: 332, baseType: !2476, size: 64, offset: 448)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!2479, !429}
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2415, file: !38, line: 333, baseType: !2481, size: 64, offset: 512)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = !DISubroutineType(types: !2483)
!2483 = !{!203, !429, !2484}
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2415, file: !38, line: 335, baseType: !2486, size: 64, offset: 576)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!203, !429, !2479}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2415, file: !38, line: 337, baseType: !2490, size: 64, offset: 640)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{!203, !599, !2493}
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !600, file: !44, line: 1425, baseType: !2495, size: 64, offset: 512)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2497)
!2497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2498)
!2498 = !{!2499, !2503, !2504, !2508, !2509, !2510, !2525, !2548, !2552, !2553, !2576}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2497, file: !38, line: 429, baseType: !2500, size: 64)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!203, !599, !203, !203, !549}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2497, file: !38, line: 430, baseType: !688, size: 64, offset: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2497, file: !38, line: 431, baseType: !2505, size: 64, offset: 128)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{!203, !599, !7}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2497, file: !38, line: 432, baseType: !2505, size: 64, offset: 192)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2497, file: !38, line: 433, baseType: !688, size: 64, offset: 256)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2497, file: !38, line: 434, baseType: !2511, size: 64, offset: 320)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{!203, !599, !203, !2514}
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2516)
!2516 = !{!2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2515, file: !38, line: 416, baseType: !203, size: 32)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2515, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2515, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2515, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2515, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2515, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2515, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2515, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2497, file: !38, line: 435, baseType: !2526, size: 64, offset: 384)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!203, !599, !2433, !2529}
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2531)
!2531 = !{!2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2530, file: !38, line: 344, baseType: !203, size: 32)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2530, file: !38, line: 345, baseType: !142, size: 64, offset: 64)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2530, file: !38, line: 346, baseType: !142, size: 64, offset: 128)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2530, file: !38, line: 347, baseType: !142, size: 64, offset: 192)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2530, file: !38, line: 348, baseType: !142, size: 64, offset: 256)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2530, file: !38, line: 349, baseType: !142, size: 64, offset: 320)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2530, file: !38, line: 350, baseType: !142, size: 64, offset: 384)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2530, file: !38, line: 351, baseType: !780, size: 64, offset: 448)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2530, file: !38, line: 353, baseType: !780, size: 64, offset: 512)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2530, file: !38, line: 354, baseType: !203, size: 32, offset: 576)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2530, file: !38, line: 355, baseType: !203, size: 32, offset: 608)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2530, file: !38, line: 356, baseType: !142, size: 64, offset: 640)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2530, file: !38, line: 357, baseType: !142, size: 64, offset: 704)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2530, file: !38, line: 358, baseType: !142, size: 64, offset: 768)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2530, file: !38, line: 359, baseType: !780, size: 64, offset: 832)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2530, file: !38, line: 360, baseType: !203, size: 32, offset: 896)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2497, file: !38, line: 436, baseType: !2549, size: 64, offset: 448)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{!203, !599, !2493, !2529}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2497, file: !38, line: 438, baseType: !2526, size: 64, offset: 512)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2497, file: !38, line: 439, baseType: !2554, size: 64, offset: 576)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{!203, !599, !2557}
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2559)
!2559 = !{!2560, !2561}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2558, file: !38, line: 410, baseType: !7, size: 32)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2558, file: !38, line: 411, baseType: !2562, size: 1344, offset: 64)
!2562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2563, size: 1344, elements: !283)
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2564)
!2564 = !{!2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2575}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2563, file: !38, line: 396, baseType: !7, size: 32)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2563, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2563, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2563, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2563, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2563, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2563, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2563, file: !38, line: 404, baseType: !146, size: 64, offset: 256)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2563, file: !38, line: 405, baseType: !2574, size: 64, offset: 320)
!2574 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !125, line: 126, baseType: !142)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2563, file: !38, line: 406, baseType: !2574, size: 64, offset: 384)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2497, file: !38, line: 440, baseType: !2505, size: 64, offset: 640)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !600, file: !44, line: 1426, baseType: !2578, size: 64, offset: 576)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2580)
!2580 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !600, file: !44, line: 1427, baseType: !132, size: 64, offset: 640)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !600, file: !44, line: 1428, baseType: !132, size: 64, offset: 704)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !600, file: !44, line: 1429, baseType: !132, size: 64, offset: 768)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !600, file: !44, line: 1430, baseType: !388, size: 64, offset: 832)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !600, file: !44, line: 1431, baseType: !770, size: 256, offset: 896)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !600, file: !44, line: 1432, baseType: !203, size: 32, offset: 1152)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !600, file: !44, line: 1433, baseType: !750, size: 32, offset: 1184)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !600, file: !44, line: 1437, baseType: !2589, size: 64, offset: 1216)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2592)
!2592 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !600, file: !44, line: 1449, baseType: !2594, size: 64, offset: 1280)
!2594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !404, line: 34, size: 64, elements: !2595)
!2595 = !{!2596}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2594, file: !404, line: 35, baseType: !407, size: 64)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !600, file: !44, line: 1450, baseType: !124, size: 128, offset: 1344)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !600, file: !44, line: 1451, baseType: !2599, size: 64, offset: 1472)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !600, file: !44, line: 1452, baseType: !1908, size: 64, offset: 1536)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !600, file: !44, line: 1453, baseType: !2603, size: 64, offset: 1600)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !600, file: !44, line: 1454, baseType: !642, size: 128, offset: 1664)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !600, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !600, file: !44, line: 1456, baseType: !2608, size: 2432, offset: 1856)
!2608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2609)
!2609 = !{!2610, !2611, !2612, !2614, !2646}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2608, file: !38, line: 519, baseType: !7, size: 32)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2608, file: !38, line: 520, baseType: !770, size: 256, offset: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2608, file: !38, line: 521, baseType: !2613, size: 192, offset: 320)
!2613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 192, elements: !283)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2608, file: !38, line: 522, baseType: !2615, size: 1728, offset: 512)
!2615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2616, size: 1728, elements: !283)
!2616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2617)
!2617 = !{!2618, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2616, file: !38, line: 223, baseType: !2619, size: 64)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2621)
!2621 = !{!2622, !2623, !2636, !2637}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2620, file: !38, line: 444, baseType: !203, size: 32)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2620, file: !38, line: 445, baseType: !2624, size: 64, offset: 64)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2626)
!2626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2627)
!2627 = !{!2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2626, file: !38, line: 311, baseType: !688, size: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2626, file: !38, line: 312, baseType: !688, size: 64, offset: 64)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2626, file: !38, line: 313, baseType: !688, size: 64, offset: 128)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2626, file: !38, line: 314, baseType: !688, size: 64, offset: 192)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2626, file: !38, line: 315, baseType: !2418, size: 64, offset: 256)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2626, file: !38, line: 316, baseType: !2418, size: 64, offset: 320)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2626, file: !38, line: 317, baseType: !2418, size: 64, offset: 384)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2626, file: !38, line: 318, baseType: !2490, size: 64, offset: 448)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2620, file: !38, line: 446, baseType: !633, size: 64, offset: 128)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2620, file: !38, line: 447, baseType: !2619, size: 64, offset: 192)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2616, file: !38, line: 224, baseType: !203, size: 32, offset: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2616, file: !38, line: 226, baseType: !124, size: 128, offset: 128)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2616, file: !38, line: 227, baseType: !132, size: 64, offset: 256)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2616, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2616, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2616, file: !38, line: 230, baseType: !2454, size: 64, offset: 384)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2616, file: !38, line: 231, baseType: !2454, size: 64, offset: 448)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2616, file: !38, line: 232, baseType: !118, size: 64, offset: 512)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2608, file: !38, line: 523, baseType: !2647, size: 192, offset: 2240)
!2647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2624, size: 192, elements: !283)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !600, file: !44, line: 1458, baseType: !2649, size: 2112, offset: 4288)
!2649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2650)
!2650 = !{!2651, !2652, !2653}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2649, file: !44, line: 1411, baseType: !203, size: 32)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2649, file: !44, line: 1412, baseType: !1465, size: 128, offset: 64)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2649, file: !44, line: 1413, baseType: !2654, size: 1920, offset: 192)
!2654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2655, size: 1920, elements: !283)
!2655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2656, line: 12, size: 640, elements: !2657)
!2656 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2657 = !{!2658, !2666, !2668, !2673, !2674}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2655, file: !2656, line: 13, baseType: !2659, size: 320)
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2660, line: 17, size: 320, elements: !2661)
!2660 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2661 = !{!2662, !2663, !2664, !2665}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2659, file: !2660, line: 18, baseType: !203, size: 32)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2659, file: !2660, line: 19, baseType: !203, size: 32, offset: 32)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2659, file: !2660, line: 20, baseType: !1465, size: 128, offset: 64)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2659, file: !2660, line: 22, baseType: !371, size: 128, align: 64, offset: 192)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2655, file: !2656, line: 14, baseType: !2667, size: 64, offset: 320)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2655, file: !2656, line: 15, baseType: !2669, size: 64, offset: 384)
!2669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2670, line: 16, size: 64, elements: !2671)
!2670 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2671 = !{!2672}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2669, file: !2670, line: 17, baseType: !1201, size: 64)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2655, file: !2656, line: 16, baseType: !1465, size: 128, offset: 448)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2655, file: !2656, line: 17, baseType: !750, size: 32, offset: 576)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !600, file: !44, line: 1465, baseType: !118, size: 64, offset: 6400)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !600, file: !44, line: 1468, baseType: !421, size: 32, offset: 6464)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !600, file: !44, line: 1470, baseType: !539, size: 64, offset: 6528)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !600, file: !44, line: 1471, baseType: !539, size: 64, offset: 6592)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !600, file: !44, line: 1473, baseType: !422, size: 32, offset: 6656)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !600, file: !44, line: 1474, baseType: !2681, size: 64, offset: 6720)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !600, file: !44, line: 1477, baseType: !2684, size: 256, offset: 6784)
!2684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 256, elements: !2214)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !600, file: !44, line: 1478, baseType: !2686, size: 128, offset: 7040)
!2686 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2687, line: 18, baseType: !2688)
!2687 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2688 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2687, line: 16, size: 128, elements: !2689)
!2689 = !{!2690}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2688, file: !2687, line: 17, baseType: !2691, size: 128)
!2691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1337, size: 128, elements: !1719)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !600, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !600, file: !44, line: 1481, baseType: !2694, size: 32, offset: 7200)
!2694 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !125, line: 150, baseType: !7)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !600, file: !44, line: 1487, baseType: !1174, size: 192, offset: 7232)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !600, file: !44, line: 1493, baseType: !194, size: 64, offset: 7424)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !600, file: !44, line: 1495, baseType: !2698, size: 64, offset: 7488)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2700)
!2700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !386, line: 135, size: 1024, align: 512, elements: !2701)
!2701 = !{!2702, !2706, !2707, !2714, !2720, !2724, !2728, !2732, !2733, !2737, !2741, !2746, !2750}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2700, file: !386, line: 136, baseType: !2703, size: 64)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!203, !388, !7}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2700, file: !386, line: 137, baseType: !2703, size: 64, offset: 64)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2700, file: !386, line: 138, baseType: !2708, size: 64, offset: 128)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{!203, !2711, !2713}
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !389)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2700, file: !386, line: 139, baseType: !2715, size: 64, offset: 192)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!203, !2711, !7, !194, !2718}
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !412)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2700, file: !386, line: 141, baseType: !2721, size: 64, offset: 256)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{!203, !2711}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2700, file: !386, line: 142, baseType: !2725, size: 64, offset: 320)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{!203, !388}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2700, file: !386, line: 143, baseType: !2729, size: 64, offset: 384)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{null, !388}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2700, file: !386, line: 144, baseType: !2729, size: 64, offset: 448)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2700, file: !386, line: 145, baseType: !2734, size: 64, offset: 512)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{null, !388, !429}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2700, file: !386, line: 146, baseType: !2738, size: 64, offset: 576)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!282, !388, !282, !203}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2700, file: !386, line: 147, baseType: !2742, size: 64, offset: 640)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{!384, !2745}
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2700, file: !386, line: 148, baseType: !2747, size: 64, offset: 704)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{!203, !549, !490}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2700, file: !386, line: 149, baseType: !2751, size: 64, offset: 768)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2752 = !DISubroutineType(types: !2753)
!2753 = !{!388, !388, !2754}
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !430)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !600, file: !44, line: 1500, baseType: !203, size: 32, offset: 7552)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !600, file: !44, line: 1502, baseType: !2758, size: 448, offset: 7616)
!2758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2402, line: 60, size: 448, elements: !2759)
!2759 = !{!2760, !2765, !2766, !2767, !2768, !2769, !2770}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2758, file: !2402, line: 61, baseType: !2761, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!132, !2764, !2400}
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2758, file: !2402, line: 63, baseType: !2761, size: 64, offset: 64)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2758, file: !2402, line: 66, baseType: !182, size: 64, offset: 128)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2758, file: !2402, line: 67, baseType: !203, size: 32, offset: 192)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2758, file: !2402, line: 68, baseType: !7, size: 32, offset: 224)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2758, file: !2402, line: 71, baseType: !124, size: 128, offset: 256)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2758, file: !2402, line: 77, baseType: !2771, size: 64, offset: 384)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !600, file: !44, line: 1505, baseType: !774, size: 64, offset: 8064)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !600, file: !44, line: 1508, baseType: !774, size: 64, offset: 8128)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !600, file: !44, line: 1511, baseType: !203, size: 32, offset: 8192)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !600, file: !44, line: 1514, baseType: !912, size: 32, offset: 8224)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !600, file: !44, line: 1517, baseType: !2777, size: 64, offset: 8256)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1943, line: 18, flags: DIFlagFwdDecl)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !600, file: !44, line: 1518, baseType: !638, size: 64, offset: 8320)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !600, file: !44, line: 1525, baseType: !1697, size: 64, offset: 8384)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !600, file: !44, line: 1532, baseType: !2782, size: 64, offset: 8448)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2783, line: 52, size: 64, elements: !2784)
!2783 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2784 = !{!2785}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2782, file: !2783, line: 53, baseType: !2786, size: 64)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2783, line: 40, size: 256, elements: !2788)
!2788 = !{!2789, !2790, !2795}
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2787, file: !2783, line: 42, baseType: !241)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2787, file: !2783, line: 44, baseType: !2791, size: 192)
!2791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2783, line: 28, size: 192, elements: !2792)
!2792 = !{!2793, !2794}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2791, file: !2783, line: 29, baseType: !124, size: 128)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2791, file: !2783, line: 31, baseType: !182, size: 64, offset: 128)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2787, file: !2783, line: 49, baseType: !182, size: 64, offset: 192)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !600, file: !44, line: 1533, baseType: !2782, size: 64, offset: 8512)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !600, file: !44, line: 1534, baseType: !371, size: 128, align: 64, offset: 8576)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !600, file: !44, line: 1535, baseType: !1942, size: 256, offset: 8704)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !600, file: !44, line: 1537, baseType: !1174, size: 192, offset: 8960)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !600, file: !44, line: 1542, baseType: !203, size: 32, offset: 9152)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !600, file: !44, line: 1545, baseType: !241, offset: 9184)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !600, file: !44, line: 1546, baseType: !124, size: 128, offset: 9216)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !600, file: !44, line: 1548, baseType: !241, offset: 9344)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !600, file: !44, line: 1549, baseType: !124, size: 128, offset: 9344)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !430, file: !44, line: 624, baseType: !737, size: 64, offset: 256)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !430, file: !44, line: 631, baseType: !132, size: 64, offset: 320)
!2807 = !DIDerivedType(tag: DW_TAG_member, scope: !430, file: !44, line: 639, baseType: !2808, size: 32, offset: 384)
!2808 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !430, file: !44, line: 639, size: 32, elements: !2809)
!2809 = !{!2810, !2811}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2808, file: !44, line: 640, baseType: !208, size: 32)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2808, file: !44, line: 641, baseType: !7, size: 32)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !430, file: !44, line: 643, baseType: !513, size: 32, offset: 416)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !430, file: !44, line: 644, baseType: !531, size: 64, offset: 448)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !430, file: !44, line: 645, baseType: !535, size: 128, offset: 512)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !430, file: !44, line: 646, baseType: !535, size: 128, offset: 640)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !430, file: !44, line: 647, baseType: !535, size: 128, offset: 768)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !430, file: !44, line: 648, baseType: !241, offset: 896)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !430, file: !44, line: 649, baseType: !323, size: 16, offset: 896)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !430, file: !44, line: 650, baseType: !1336, size: 8, offset: 912)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !430, file: !44, line: 651, baseType: !1336, size: 8, offset: 920)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !430, file: !44, line: 652, baseType: !2574, size: 64, offset: 960)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !430, file: !44, line: 659, baseType: !132, size: 64, offset: 1024)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !430, file: !44, line: 660, baseType: !770, size: 256, offset: 1088)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !430, file: !44, line: 662, baseType: !132, size: 64, offset: 1344)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !430, file: !44, line: 663, baseType: !132, size: 64, offset: 1408)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !430, file: !44, line: 665, baseType: !642, size: 128, offset: 1472)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !430, file: !44, line: 666, baseType: !124, size: 128, offset: 1600)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !430, file: !44, line: 675, baseType: !124, size: 128, offset: 1728)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !430, file: !44, line: 676, baseType: !124, size: 128, offset: 1856)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !430, file: !44, line: 677, baseType: !124, size: 128, offset: 1984)
!2831 = !DIDerivedType(tag: DW_TAG_member, scope: !430, file: !44, line: 678, baseType: !2832, size: 128, offset: 2112)
!2832 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !430, file: !44, line: 678, size: 128, elements: !2833)
!2833 = !{!2834, !2835}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2832, file: !44, line: 679, baseType: !638, size: 64)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2832, file: !44, line: 680, baseType: !371, size: 128, align: 64)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !430, file: !44, line: 682, baseType: !776, size: 64, offset: 2240)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !430, file: !44, line: 683, baseType: !776, size: 64, offset: 2304)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !430, file: !44, line: 684, baseType: !750, size: 32, offset: 2368)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !430, file: !44, line: 685, baseType: !750, size: 32, offset: 2400)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !430, file: !44, line: 686, baseType: !750, size: 32, offset: 2432)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !430, file: !44, line: 688, baseType: !750, size: 32, offset: 2464)
!2842 = !DIDerivedType(tag: DW_TAG_member, scope: !430, file: !44, line: 690, baseType: !2843, size: 64, offset: 2496)
!2843 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !430, file: !44, line: 690, size: 64, elements: !2844)
!2844 = !{!2845, !3068}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2843, file: !44, line: 691, baseType: !2846, size: 64)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2848)
!2848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2849)
!2849 = !{!2850, !2851, !2855, !2860, !2864, !2865, !2866, !2870, !2883, !2884, !2892, !2896, !2897, !2901, !2902, !2906, !2911, !2912, !2916, !2920, !3028, !3032, !3033, !3037, !3038, !3042, !3046, !3051, !3055, !3059, !3063, !3067}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2848, file: !44, line: 1823, baseType: !633, size: 64)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2848, file: !44, line: 1824, baseType: !2852, size: 64, offset: 64)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!531, !358, !531, !203}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2848, file: !44, line: 1825, baseType: !2856, size: 64, offset: 128)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{!313, !358, !282, !328, !2859}
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2848, file: !44, line: 1826, baseType: !2861, size: 64, offset: 192)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!313, !358, !194, !328, !2859}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2848, file: !44, line: 1827, baseType: !847, size: 64, offset: 256)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2848, file: !44, line: 1828, baseType: !847, size: 64, offset: 320)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2848, file: !44, line: 1829, baseType: !2867, size: 64, offset: 384)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!203, !850, !490}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2848, file: !44, line: 1830, baseType: !2871, size: 64, offset: 448)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{!203, !358, !2874}
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2876)
!2876 = !{!2877, !2882}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2875, file: !44, line: 1777, baseType: !2878, size: 64)
!2878 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2879)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!203, !2874, !194, !203, !531, !142, !7}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2875, file: !44, line: 1778, baseType: !531, size: 64, offset: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2848, file: !44, line: 1831, baseType: !2871, size: 64, offset: 512)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2848, file: !44, line: 1832, baseType: !2885, size: 64, offset: 576)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!2888, !358, !2890}
!2888 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2889, line: 52, baseType: !7)
!2889 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !619, line: 27, flags: DIFlagFwdDecl)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2848, file: !44, line: 1833, baseType: !2893, size: 64, offset: 640)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = !DISubroutineType(types: !2895)
!2895 = !{!182, !358, !7, !132}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2848, file: !44, line: 1834, baseType: !2893, size: 64, offset: 704)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2848, file: !44, line: 1835, baseType: !2898, size: 64, offset: 768)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{!203, !358, !984}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2848, file: !44, line: 1836, baseType: !132, size: 64, offset: 832)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2848, file: !44, line: 1837, baseType: !2903, size: 64, offset: 896)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{!203, !429, !358}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2848, file: !44, line: 1838, baseType: !2907, size: 64, offset: 960)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!203, !358, !2910}
!2910 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !118)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2848, file: !44, line: 1839, baseType: !2903, size: 64, offset: 1024)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2848, file: !44, line: 1840, baseType: !2913, size: 64, offset: 1088)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{!203, !358, !531, !531, !203}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2848, file: !44, line: 1841, baseType: !2917, size: 64, offset: 1152)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!203, !203, !358, !203}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2848, file: !44, line: 1842, baseType: !2921, size: 64, offset: 1216)
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2922 = !DISubroutineType(types: !2923)
!2923 = !{!203, !358, !203, !2924}
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2926)
!2926 = !{!2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2958, !2959, !2960, !2973, !3004}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2925, file: !44, line: 1063, baseType: !2924, size: 64)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2925, file: !44, line: 1064, baseType: !124, size: 128, offset: 64)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2925, file: !44, line: 1065, baseType: !642, size: 128, offset: 192)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2925, file: !44, line: 1066, baseType: !124, size: 128, offset: 320)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2925, file: !44, line: 1069, baseType: !124, size: 128, offset: 448)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2925, file: !44, line: 1072, baseType: !2910, size: 64, offset: 576)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2925, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2925, file: !44, line: 1074, baseType: !151, size: 8, offset: 672)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2925, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2925, file: !44, line: 1076, baseType: !203, size: 32, offset: 736)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2925, file: !44, line: 1077, baseType: !1465, size: 128, offset: 768)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2925, file: !44, line: 1078, baseType: !358, size: 64, offset: 896)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2925, file: !44, line: 1079, baseType: !531, size: 64, offset: 960)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2925, file: !44, line: 1080, baseType: !531, size: 64, offset: 1024)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2925, file: !44, line: 1082, baseType: !2942, size: 64, offset: 1088)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2944)
!2944 = !{!2945, !2953, !2954, !2955, !2956, !2957}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2943, file: !44, line: 1315, baseType: !2946)
!2946 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2947, line: 20, baseType: !2948)
!2947 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2947, line: 11, elements: !2949)
!2949 = !{!2950}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2948, file: !2947, line: 12, baseType: !2951)
!2951 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !253, line: 33, baseType: !2952)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !253, line: 31, elements: !255)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2943, file: !44, line: 1316, baseType: !203, size: 32)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2943, file: !44, line: 1317, baseType: !203, size: 32, offset: 32)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2943, file: !44, line: 1318, baseType: !2942, size: 64, offset: 64)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2943, file: !44, line: 1319, baseType: !358, size: 64, offset: 128)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2943, file: !44, line: 1320, baseType: !371, size: 128, align: 64, offset: 192)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2925, file: !44, line: 1084, baseType: !132, size: 64, offset: 1152)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2925, file: !44, line: 1085, baseType: !132, size: 64, offset: 1216)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2925, file: !44, line: 1087, baseType: !2961, size: 64, offset: 1280)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2963)
!2963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !2964)
!2964 = !{!2965, !2969}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2963, file: !44, line: 1012, baseType: !2966, size: 64)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{null, !2924, !2924}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2963, file: !44, line: 1013, baseType: !2970, size: 64, offset: 64)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{null, !2924}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2925, file: !44, line: 1088, baseType: !2974, size: 64, offset: 1344)
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2975 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2976)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !2977)
!2977 = !{!2978, !2982, !2986, !2987, !2991, !2995, !2999, !3003}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2976, file: !44, line: 1017, baseType: !2979, size: 64)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{!2910, !2910}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2976, file: !44, line: 1018, baseType: !2983, size: 64, offset: 64)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{null, !2910}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2976, file: !44, line: 1019, baseType: !2970, size: 64, offset: 128)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2976, file: !44, line: 1020, baseType: !2988, size: 64, offset: 192)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!203, !2924, !203}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2976, file: !44, line: 1021, baseType: !2992, size: 64, offset: 256)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{!490, !2924}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2976, file: !44, line: 1022, baseType: !2996, size: 64, offset: 320)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{!203, !2924, !203, !128}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2976, file: !44, line: 1023, baseType: !3000, size: 64, offset: 384)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{null, !2924, !824}
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2976, file: !44, line: 1024, baseType: !2992, size: 64, offset: 448)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2925, file: !44, line: 1097, baseType: !3005, size: 256, offset: 1408)
!3005 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2925, file: !44, line: 1089, size: 256, elements: !3006)
!3006 = !{!3007, !3016, !3022}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3005, file: !44, line: 1090, baseType: !3008, size: 256)
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3009, line: 10, size: 256, elements: !3010)
!3009 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3010 = !{!3011, !3012, !3015}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3008, file: !3009, line: 11, baseType: !421, size: 32)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3008, file: !3009, line: 12, baseType: !3013, size: 64, offset: 64)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3009, line: 5, flags: DIFlagFwdDecl)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3008, file: !3009, line: 13, baseType: !124, size: 128, offset: 128)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3005, file: !44, line: 1091, baseType: !3017, size: 64)
!3017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3009, line: 17, size: 64, elements: !3018)
!3018 = !{!3019}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3017, file: !3009, line: 18, baseType: !3020, size: 64)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3009, line: 16, flags: DIFlagFwdDecl)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3005, file: !44, line: 1096, baseType: !3023, size: 192)
!3023 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3005, file: !44, line: 1092, size: 192, elements: !3024)
!3024 = !{!3025, !3026, !3027}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3023, file: !44, line: 1093, baseType: !124, size: 128)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3023, file: !44, line: 1094, baseType: !203, size: 32, offset: 128)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3023, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2848, file: !44, line: 1843, baseType: !3029, size: 64, offset: 1280)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{!313, !358, !724, !203, !328, !2859, !203}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2848, file: !44, line: 1844, baseType: !1104, size: 64, offset: 1344)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2848, file: !44, line: 1845, baseType: !3034, size: 64, offset: 1408)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!203, !203}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2848, file: !44, line: 1846, baseType: !2921, size: 64, offset: 1472)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2848, file: !44, line: 1847, baseType: !3039, size: 64, offset: 1536)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!313, !2083, !358, !2859, !328, !7}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2848, file: !44, line: 1848, baseType: !3043, size: 64, offset: 1600)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{!313, !358, !2859, !2083, !328, !7}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2848, file: !44, line: 1849, baseType: !3047, size: 64, offset: 1664)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{!203, !358, !182, !3050, !824}
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2848, file: !44, line: 1850, baseType: !3052, size: 64, offset: 1728)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!182, !358, !203, !531, !531}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2848, file: !44, line: 1852, baseType: !3056, size: 64, offset: 1792)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{null, !714, !358}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2848, file: !44, line: 1856, baseType: !3060, size: 64, offset: 1856)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!313, !358, !531, !358, !531, !328, !7}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2848, file: !44, line: 1858, baseType: !3064, size: 64, offset: 1920)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!531, !358, !531, !358, !531, !531, !7}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2848, file: !44, line: 1861, baseType: !2913, size: 64, offset: 1984)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2843, file: !44, line: 692, baseType: !667, size: 64)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !430, file: !44, line: 694, baseType: !3070, size: 64, offset: 2560)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3072)
!3072 = !{!3073, !3074, !3075, !3076}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3071, file: !44, line: 1101, baseType: !241)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3071, file: !44, line: 1102, baseType: !124, size: 128)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3071, file: !44, line: 1103, baseType: !124, size: 128, offset: 128)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3071, file: !44, line: 1104, baseType: !124, size: 128, offset: 256)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !430, file: !44, line: 695, baseType: !738, size: 1216, align: 64, offset: 2624)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !430, file: !44, line: 696, baseType: !124, size: 128, offset: 3840)
!3079 = !DIDerivedType(tag: DW_TAG_member, scope: !430, file: !44, line: 697, baseType: !3080, size: 64, offset: 3968)
!3080 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !430, file: !44, line: 697, size: 64, elements: !3081)
!3081 = !{!3082, !3083, !3084, !3087, !3088}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3080, file: !44, line: 698, baseType: !2083, size: 64)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3080, file: !44, line: 699, baseType: !2599, size: 64)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3080, file: !44, line: 700, baseType: !3085, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3080, file: !44, line: 701, baseType: !282, size: 64)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3080, file: !44, line: 702, baseType: !7, size: 32)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !430, file: !44, line: 705, baseType: !422, size: 32, offset: 4032)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !430, file: !44, line: 708, baseType: !422, size: 32, offset: 4064)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !430, file: !44, line: 709, baseType: !2681, size: 64, offset: 4096)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !430, file: !44, line: 720, baseType: !118, size: 64, offset: 4160)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !389, file: !386, line: 98, baseType: !3094, size: 256, offset: 448)
!3094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 256, elements: !2214)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !389, file: !386, line: 101, baseType: !3096, size: 32, offset: 704)
!3096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3097, line: 25, size: 32, elements: !3098)
!3097 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3098 = !{!3099}
!3099 = !DIDerivedType(tag: DW_TAG_member, scope: !3096, file: !3097, line: 26, baseType: !3100, size: 32)
!3100 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3096, file: !3097, line: 26, size: 32, elements: !3101)
!3101 = !{!3102}
!3102 = !DIDerivedType(tag: DW_TAG_member, scope: !3100, file: !3097, line: 30, baseType: !3103, size: 32)
!3103 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3100, file: !3097, line: 30, size: 32, elements: !3104)
!3104 = !{!3105, !3106}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3103, file: !3097, line: 31, baseType: !241)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3103, file: !3097, line: 32, baseType: !203, size: 32)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !389, file: !386, line: 102, baseType: !2698, size: 64, offset: 768)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !389, file: !386, line: 103, baseType: !599, size: 64, offset: 832)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !389, file: !386, line: 104, baseType: !132, size: 64, offset: 896)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !389, file: !386, line: 105, baseType: !118, size: 64, offset: 960)
!3111 = !DIDerivedType(tag: DW_TAG_member, scope: !389, file: !386, line: 107, baseType: !3112, size: 128, offset: 1024)
!3112 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !389, file: !386, line: 107, size: 128, elements: !3113)
!3113 = !{!3114, !3115}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3112, file: !386, line: 108, baseType: !124, size: 128)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3112, file: !386, line: 109, baseType: !3116, size: 64)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !389, file: !386, line: 111, baseType: !124, size: 128, offset: 1152)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !389, file: !386, line: 112, baseType: !124, size: 128, offset: 1280)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !389, file: !386, line: 120, baseType: !3120, size: 128, offset: 1408)
!3120 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !389, file: !386, line: 116, size: 128, elements: !3121)
!3121 = !{!3122, !3123, !3124}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3120, file: !386, line: 117, baseType: !642, size: 128)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3120, file: !386, line: 118, baseType: !403, size: 128)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3120, file: !386, line: 119, baseType: !371, size: 128, align: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !359, file: !44, line: 922, baseType: !429, size: 64, offset: 256)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !359, file: !44, line: 923, baseType: !2846, size: 64, offset: 320)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !359, file: !44, line: 929, baseType: !241, offset: 384)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !359, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !359, file: !44, line: 931, baseType: !774, size: 64, offset: 448)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !359, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !359, file: !44, line: 933, baseType: !2694, size: 32, offset: 544)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !359, file: !44, line: 934, baseType: !1174, size: 192, offset: 576)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !359, file: !44, line: 935, baseType: !531, size: 64, offset: 768)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !359, file: !44, line: 936, baseType: !3135, size: 192, offset: 832)
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3136)
!3136 = !{!3137, !3138, !3139, !3140, !3141, !3142}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3135, file: !44, line: 886, baseType: !2946)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3135, file: !44, line: 887, baseType: !1455, size: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3135, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3135, file: !44, line: 889, baseType: !435, size: 32, offset: 96)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3135, file: !44, line: 889, baseType: !435, size: 32, offset: 128)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3135, file: !44, line: 890, baseType: !203, size: 32, offset: 160)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !359, file: !44, line: 937, baseType: !1531, size: 64, offset: 1024)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !359, file: !44, line: 938, baseType: !3145, size: 256, offset: 1088)
!3145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3146)
!3146 = !{!3147, !3148, !3149, !3150, !3151, !3152}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3145, file: !44, line: 897, baseType: !132, size: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3145, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3145, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3145, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3145, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3145, file: !44, line: 904, baseType: !531, size: 64, offset: 192)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !359, file: !44, line: 940, baseType: !142, size: 64, offset: 1344)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !359, file: !44, line: 945, baseType: !118, size: 64, offset: 1408)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !359, file: !44, line: 949, baseType: !124, size: 128, offset: 1472)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !359, file: !44, line: 950, baseType: !124, size: 128, offset: 1600)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !359, file: !44, line: 952, baseType: !737, size: 64, offset: 1728)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !359, file: !44, line: 953, baseType: !912, size: 32, offset: 1792)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !359, file: !44, line: 954, baseType: !912, size: 32, offset: 1824)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !349, file: !307, line: 174, baseType: !355, size: 64, offset: 320)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !349, file: !307, line: 176, baseType: !3162, size: 64, offset: 384)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{!203, !358, !234, !348, !984}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !337, file: !307, line: 90, baseType: !332, size: 64, offset: 192)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !337, file: !307, line: 91, baseType: !3167, size: 64, offset: 256)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !297, file: !229, line: 143, baseType: !3169, size: 64, offset: 256)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{!3172, !234}
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3174)
!3174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3175)
!3175 = !{!3176, !3177, !3181, !3185, !3191, !3195}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3174, file: !61, line: 40, baseType: !60, size: 32)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3174, file: !61, line: 41, baseType: !3178, size: 64, offset: 64)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DISubroutineType(types: !3180)
!3180 = !{!490}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3174, file: !61, line: 42, baseType: !3182, size: 64, offset: 128)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!118}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3174, file: !61, line: 43, baseType: !3186, size: 64, offset: 192)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!2111, !3189}
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3174, file: !61, line: 44, baseType: !3192, size: 64, offset: 256)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{!2111}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3174, file: !61, line: 45, baseType: !468, size: 64, offset: 320)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !297, file: !229, line: 144, baseType: !3197, size: 64, offset: 320)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{!2111, !234}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !297, file: !229, line: 145, baseType: !3201, size: 64, offset: 384)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{null, !234, !3204, !3205}
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !228, file: !229, line: 70, baseType: !3207, size: 64, offset: 384)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !619, line: 123, size: 1024, elements: !3209)
!3209 = !{!3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3338, !3339, !3340, !3341, !3342}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3208, file: !619, line: 124, baseType: !750, size: 32)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3208, file: !619, line: 125, baseType: !750, size: 32, offset: 32)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3208, file: !619, line: 135, baseType: !3207, size: 64, offset: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3208, file: !619, line: 136, baseType: !194, size: 64, offset: 128)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3208, file: !619, line: 138, baseType: !763, size: 192, align: 64, offset: 192)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3208, file: !619, line: 140, baseType: !2111, size: 64, offset: 384)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3208, file: !619, line: 141, baseType: !7, size: 32, offset: 448)
!3217 = !DIDerivedType(tag: DW_TAG_member, scope: !3208, file: !619, line: 142, baseType: !3218, size: 256, offset: 512)
!3218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3208, file: !619, line: 142, size: 256, elements: !3219)
!3219 = !{!3220, !3266, !3270}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3218, file: !619, line: 143, baseType: !3221, size: 192)
!3221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !619, line: 91, size: 192, elements: !3222)
!3222 = !{!3223, !3224, !3225}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3221, file: !619, line: 92, baseType: !132, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3221, file: !619, line: 94, baseType: !759, size: 64, offset: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3221, file: !619, line: 100, baseType: !3226, size: 64, offset: 128)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !619, line: 180, size: 704, elements: !3228)
!3228 = !{!3229, !3230, !3231, !3238, !3239, !3240, !3264, !3265}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3227, file: !619, line: 182, baseType: !3207, size: 64)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3227, file: !619, line: 183, baseType: !7, size: 32, offset: 64)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3227, file: !619, line: 186, baseType: !3232, size: 192, offset: 128)
!3232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3233, line: 19, size: 192, elements: !3234)
!3233 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3234 = !{!3235, !3236, !3237}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3232, file: !3233, line: 20, baseType: !742, size: 128)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3232, file: !3233, line: 21, baseType: !7, size: 32, offset: 128)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3232, file: !3233, line: 22, baseType: !7, size: 32, offset: 160)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3227, file: !619, line: 187, baseType: !421, size: 32, offset: 320)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3227, file: !619, line: 188, baseType: !421, size: 32, offset: 352)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3227, file: !619, line: 189, baseType: !3241, size: 64, offset: 384)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !619, line: 168, size: 320, elements: !3243)
!3243 = !{!3244, !3248, !3252, !3256, !3260}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3242, file: !619, line: 169, baseType: !3245, size: 64)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!203, !714, !3226}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3242, file: !619, line: 171, baseType: !3249, size: 64, offset: 64)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!203, !3207, !194, !322}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3242, file: !619, line: 173, baseType: !3253, size: 64, offset: 128)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{!203, !3207}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3242, file: !619, line: 174, baseType: !3257, size: 64, offset: 192)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!203, !3207, !3207, !194}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3242, file: !619, line: 176, baseType: !3261, size: 64, offset: 256)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!203, !714, !3207, !3226}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3227, file: !619, line: 192, baseType: !124, size: 128, offset: 448)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3227, file: !619, line: 194, baseType: !1465, size: 128, offset: 576)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3218, file: !619, line: 144, baseType: !3267, size: 64)
!3267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !619, line: 103, size: 64, elements: !3268)
!3268 = !{!3269}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3267, file: !619, line: 104, baseType: !3207, size: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3218, file: !619, line: 145, baseType: !3271, size: 256)
!3271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !619, line: 107, size: 256, elements: !3272)
!3272 = !{!3273, !3333, !3336, !3337}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3271, file: !619, line: 108, baseType: !3274, size: 64)
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3276)
!3276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !619, line: 217, size: 768, elements: !3277)
!3277 = !{!3278, !3298, !3302, !3306, !3310, !3314, !3318, !3322, !3323, !3324, !3325, !3329}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3276, file: !619, line: 222, baseType: !3279, size: 64)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DISubroutineType(types: !3281)
!3281 = !{!203, !3282}
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !619, line: 197, size: 1088, elements: !3284)
!3284 = !{!3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3283, file: !619, line: 199, baseType: !3207, size: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3283, file: !619, line: 200, baseType: !358, size: 64, offset: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3283, file: !619, line: 201, baseType: !714, size: 64, offset: 128)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3283, file: !619, line: 202, baseType: !118, size: 64, offset: 192)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3283, file: !619, line: 205, baseType: !1174, size: 192, offset: 256)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3283, file: !619, line: 206, baseType: !1174, size: 192, offset: 448)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3283, file: !619, line: 207, baseType: !203, size: 32, offset: 640)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3283, file: !619, line: 208, baseType: !124, size: 128, offset: 704)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3283, file: !619, line: 209, baseType: !282, size: 64, offset: 832)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3283, file: !619, line: 211, baseType: !328, size: 64, offset: 896)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3283, file: !619, line: 212, baseType: !490, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3283, file: !619, line: 213, baseType: !490, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3283, file: !619, line: 214, baseType: !1012, size: 64, offset: 1024)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3276, file: !619, line: 223, baseType: !3299, size: 64, offset: 64)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = !DISubroutineType(types: !3301)
!3301 = !{null, !3282}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3276, file: !619, line: 236, baseType: !3303, size: 64, offset: 128)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{!203, !714, !118}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3276, file: !619, line: 238, baseType: !3307, size: 64, offset: 192)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{!118, !714, !2859}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3276, file: !619, line: 239, baseType: !3311, size: 64, offset: 256)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!118, !714, !118, !2859}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3276, file: !619, line: 240, baseType: !3315, size: 64, offset: 320)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{null, !714, !118}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3276, file: !619, line: 242, baseType: !3319, size: 64, offset: 384)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{!313, !3282, !282, !328, !531}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3276, file: !619, line: 252, baseType: !328, size: 64, offset: 448)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3276, file: !619, line: 259, baseType: !490, size: 8, offset: 512)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3276, file: !619, line: 260, baseType: !3319, size: 64, offset: 576)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3276, file: !619, line: 263, baseType: !3326, size: 64, offset: 640)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DISubroutineType(types: !3328)
!3328 = !{!2888, !3282, !2890}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3276, file: !619, line: 266, baseType: !3330, size: 64, offset: 704)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!203, !3282, !984}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3271, file: !619, line: 109, baseType: !3334, size: 64, offset: 64)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !619, line: 31, flags: DIFlagFwdDecl)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3271, file: !619, line: 110, baseType: !531, size: 64, offset: 128)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3271, file: !619, line: 111, baseType: !3207, size: 64, offset: 192)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3208, file: !619, line: 148, baseType: !118, size: 64, offset: 768)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3208, file: !619, line: 154, baseType: !142, size: 64, offset: 832)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3208, file: !619, line: 156, baseType: !323, size: 16, offset: 896)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3208, file: !619, line: 157, baseType: !322, size: 16, offset: 912)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3208, file: !619, line: 158, baseType: !3343, size: 64, offset: 960)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !619, line: 32, flags: DIFlagFwdDecl)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !228, file: !229, line: 71, baseType: !3346, size: 32, offset: 448)
!3346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3347, line: 19, size: 32, elements: !3348)
!3347 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3348 = !{!3349}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3346, file: !3347, line: 20, baseType: !1214, size: 32)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !228, file: !229, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !228, file: !229, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !228, file: !229, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !228, file: !229, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !228, file: !229, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !225, file: !73, line: 463, baseType: !3356, size: 64, offset: 512)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !225, file: !73, line: 465, baseType: !3358, size: 64, offset: 576)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !225, file: !73, line: 467, baseType: !194, size: 64, offset: 640)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !225, file: !73, line: 468, baseType: !3362, size: 64, offset: 704)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3364)
!3364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3365)
!3365 = !{!3366, !3367, !3368, !3372, !3377, !3381}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3364, file: !73, line: 88, baseType: !194, size: 64)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3364, file: !73, line: 89, baseType: !334, size: 64, offset: 64)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3364, file: !73, line: 90, baseType: !3369, size: 64, offset: 128)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{!203, !3356, !277}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3364, file: !73, line: 91, baseType: !3373, size: 64, offset: 192)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{!282, !3356, !3376, !3204, !3205}
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3364, file: !73, line: 93, baseType: !3378, size: 64, offset: 256)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DISubroutineType(types: !3380)
!3380 = !{null, !3356}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3364, file: !73, line: 95, baseType: !3382, size: 64, offset: 320)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3384)
!3384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3385)
!3385 = !{!3386, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3384, file: !80, line: 279, baseType: !3387, size: 64)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{!203, !3356}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3384, file: !80, line: 280, baseType: !3378, size: 64, offset: 64)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3384, file: !80, line: 281, baseType: !3387, size: 64, offset: 128)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3384, file: !80, line: 282, baseType: !3387, size: 64, offset: 192)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3384, file: !80, line: 283, baseType: !3387, size: 64, offset: 256)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3384, file: !80, line: 284, baseType: !3387, size: 64, offset: 320)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3384, file: !80, line: 285, baseType: !3387, size: 64, offset: 384)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3384, file: !80, line: 286, baseType: !3387, size: 64, offset: 448)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3384, file: !80, line: 287, baseType: !3387, size: 64, offset: 512)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3384, file: !80, line: 288, baseType: !3387, size: 64, offset: 576)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3384, file: !80, line: 289, baseType: !3387, size: 64, offset: 640)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3384, file: !80, line: 290, baseType: !3387, size: 64, offset: 704)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3384, file: !80, line: 291, baseType: !3387, size: 64, offset: 768)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3384, file: !80, line: 292, baseType: !3387, size: 64, offset: 832)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3384, file: !80, line: 293, baseType: !3387, size: 64, offset: 896)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3384, file: !80, line: 294, baseType: !3387, size: 64, offset: 960)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3384, file: !80, line: 295, baseType: !3387, size: 64, offset: 1024)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3384, file: !80, line: 296, baseType: !3387, size: 64, offset: 1088)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3384, file: !80, line: 297, baseType: !3387, size: 64, offset: 1152)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3384, file: !80, line: 298, baseType: !3387, size: 64, offset: 1216)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3384, file: !80, line: 299, baseType: !3387, size: 64, offset: 1280)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3384, file: !80, line: 300, baseType: !3387, size: 64, offset: 1344)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3384, file: !80, line: 301, baseType: !3387, size: 64, offset: 1408)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !225, file: !73, line: 470, baseType: !3413, size: 64, offset: 768)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3415, line: 82, size: 1408, elements: !3416)
!3415 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3416 = !{!3417, !3418, !3419, !3420, !3421, !3422, !3423, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3498, !3501, !3502}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3414, file: !3415, line: 83, baseType: !194, size: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3414, file: !3415, line: 84, baseType: !194, size: 64, offset: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3414, file: !3415, line: 85, baseType: !3356, size: 64, offset: 128)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3414, file: !3415, line: 86, baseType: !334, size: 64, offset: 192)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3414, file: !3415, line: 87, baseType: !334, size: 64, offset: 256)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3414, file: !3415, line: 88, baseType: !334, size: 64, offset: 320)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3414, file: !3415, line: 90, baseType: !3424, size: 64, offset: 384)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = !DISubroutineType(types: !3426)
!3426 = !{!203, !3356, !3427}
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3429)
!3429 = !{!3430, !3431, !3432, !3433, !3434, !3435, !3436, !3449, !3462, !3463, !3464, !3465, !3466, !3474, !3475, !3476, !3477, !3478, !3479}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3428, file: !67, line: 96, baseType: !194, size: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3428, file: !67, line: 97, baseType: !3413, size: 64, offset: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3428, file: !67, line: 99, baseType: !633, size: 64, offset: 128)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3428, file: !67, line: 100, baseType: !194, size: 64, offset: 192)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3428, file: !67, line: 102, baseType: !490, size: 8, offset: 256)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3428, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3428, file: !67, line: 105, baseType: !3437, size: 64, offset: 320)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3439)
!3439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3440, line: 262, size: 1600, elements: !3441)
!3440 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3441 = !{!3442, !3443, !3444, !3448}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3439, file: !3440, line: 263, baseType: !2684, size: 256)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3439, file: !3440, line: 264, baseType: !2684, size: 256, offset: 256)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3439, file: !3440, line: 265, baseType: !3445, size: 1024, offset: 512)
!3445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 1024, elements: !3446)
!3446 = !{!3447}
!3447 = !DISubrange(count: 128)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3439, file: !3440, line: 266, baseType: !2111, size: 64, offset: 1536)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3428, file: !67, line: 106, baseType: !3450, size: 64, offset: 384)
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3452)
!3452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3440, line: 210, size: 256, elements: !3453)
!3453 = !{!3454, !3458, !3460, !3461}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3452, file: !3440, line: 211, baseType: !3455, size: 72)
!3455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1337, size: 72, elements: !3456)
!3456 = !{!3457}
!3457 = !DISubrange(count: 9)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3452, file: !3440, line: 212, baseType: !3459, size: 64, offset: 128)
!3459 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3440, line: 14, baseType: !132)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3452, file: !3440, line: 213, baseType: !422, size: 32, offset: 192)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3452, file: !3440, line: 214, baseType: !422, size: 32, offset: 224)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3428, file: !67, line: 108, baseType: !3387, size: 64, offset: 448)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3428, file: !67, line: 109, baseType: !3378, size: 64, offset: 512)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3428, file: !67, line: 110, baseType: !3387, size: 64, offset: 576)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3428, file: !67, line: 111, baseType: !3378, size: 64, offset: 640)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3428, file: !67, line: 112, baseType: !3467, size: 64, offset: 704)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = !DISubroutineType(types: !3469)
!3469 = !{!203, !3356, !3470}
!3470 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3471)
!3471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3472)
!3472 = !{!3473}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3471, file: !80, line: 51, baseType: !203, size: 32)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3428, file: !67, line: 113, baseType: !3387, size: 64, offset: 768)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3428, file: !67, line: 114, baseType: !334, size: 64, offset: 832)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3428, file: !67, line: 115, baseType: !334, size: 64, offset: 896)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3428, file: !67, line: 117, baseType: !3382, size: 64, offset: 960)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3428, file: !67, line: 118, baseType: !3378, size: 64, offset: 1024)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3428, file: !67, line: 120, baseType: !3480, size: 64, offset: 1088)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3414, file: !3415, line: 91, baseType: !3369, size: 64, offset: 448)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3414, file: !3415, line: 92, baseType: !3387, size: 64, offset: 512)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3414, file: !3415, line: 93, baseType: !3378, size: 64, offset: 576)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3414, file: !3415, line: 94, baseType: !3387, size: 64, offset: 640)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3414, file: !3415, line: 95, baseType: !3378, size: 64, offset: 704)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3414, file: !3415, line: 97, baseType: !3387, size: 64, offset: 768)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3414, file: !3415, line: 98, baseType: !3387, size: 64, offset: 832)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3414, file: !3415, line: 100, baseType: !3467, size: 64, offset: 896)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3414, file: !3415, line: 101, baseType: !3387, size: 64, offset: 960)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3414, file: !3415, line: 103, baseType: !3387, size: 64, offset: 1024)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3414, file: !3415, line: 105, baseType: !3387, size: 64, offset: 1088)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3414, file: !3415, line: 107, baseType: !3382, size: 64, offset: 1152)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3414, file: !3415, line: 109, baseType: !3495, size: 64, offset: 1216)
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3497)
!3497 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3415, line: 109, flags: DIFlagFwdDecl)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3414, file: !3415, line: 111, baseType: !3499, size: 64, offset: 1280)
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3500 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3415, line: 111, flags: DIFlagFwdDecl)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3414, file: !3415, line: 112, baseType: !648, offset: 1344)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3414, file: !3415, line: 114, baseType: !490, size: 8, offset: 1344)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !225, file: !73, line: 471, baseType: !3427, size: 64, offset: 832)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !225, file: !73, line: 473, baseType: !118, size: 64, offset: 896)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !225, file: !73, line: 475, baseType: !118, size: 64, offset: 960)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !225, file: !73, line: 480, baseType: !1174, size: 192, offset: 1024)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !225, file: !73, line: 484, baseType: !3508, size: 576, offset: 1216)
!3508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3509)
!3509 = !{!3510, !3511, !3512, !3513, !3514, !3515}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3508, file: !73, line: 362, baseType: !124, size: 128)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3508, file: !73, line: 363, baseType: !124, size: 128, offset: 128)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3508, file: !73, line: 364, baseType: !124, size: 128, offset: 256)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3508, file: !73, line: 365, baseType: !124, size: 128, offset: 384)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3508, file: !73, line: 366, baseType: !490, size: 8, offset: 512)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3508, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !225, file: !73, line: 485, baseType: !3517, size: 2304, offset: 1792)
!3517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3518)
!3518 = !{!3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3614, !3618}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3517, file: !80, line: 566, baseType: !3470, size: 32)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3517, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3517, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3517, file: !80, line: 569, baseType: !490, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3517, file: !80, line: 570, baseType: !490, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3517, file: !80, line: 571, baseType: !490, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3517, file: !80, line: 572, baseType: !490, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3517, file: !80, line: 573, baseType: !490, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3517, file: !80, line: 574, baseType: !490, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3517, file: !80, line: 575, baseType: !490, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3517, file: !80, line: 576, baseType: !490, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3517, file: !80, line: 577, baseType: !421, size: 32, offset: 64)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3517, file: !80, line: 578, baseType: !241, offset: 96)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3517, file: !80, line: 580, baseType: !124, size: 128, offset: 128)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3517, file: !80, line: 581, baseType: !1486, size: 192, offset: 256)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3517, file: !80, line: 582, baseType: !3535, size: 64, offset: 448)
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3536, size: 64)
!3536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3537, line: 43, size: 1472, elements: !3538)
!3537 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3538 = !{!3539, !3540, !3541, !3542, !3543, !3546, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571}
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3536, file: !3537, line: 44, baseType: !194, size: 64)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3536, file: !3537, line: 45, baseType: !203, size: 32, offset: 64)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3536, file: !3537, line: 46, baseType: !124, size: 128, offset: 128)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3536, file: !3537, line: 47, baseType: !241, offset: 256)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3536, file: !3537, line: 48, baseType: !3544, size: 64, offset: 256)
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3536, file: !3537, line: 49, baseType: !3547, size: 320, offset: 320)
!3547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3548, line: 11, size: 320, elements: !3549)
!3548 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3549 = !{!3550, !3551, !3552, !3557}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3547, file: !3548, line: 16, baseType: !642, size: 128)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3547, file: !3548, line: 17, baseType: !132, size: 64, offset: 128)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3547, file: !3548, line: 18, baseType: !3553, size: 64, offset: 192)
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3554 = !DISubroutineType(types: !3555)
!3555 = !{null, !3556}
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3547, file: !3548, line: 19, baseType: !421, size: 32, offset: 256)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3536, file: !3537, line: 50, baseType: !132, size: 64, offset: 640)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3536, file: !3537, line: 51, baseType: !1284, size: 64, offset: 704)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3536, file: !3537, line: 52, baseType: !1284, size: 64, offset: 768)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3536, file: !3537, line: 53, baseType: !1284, size: 64, offset: 832)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3536, file: !3537, line: 54, baseType: !1284, size: 64, offset: 896)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3536, file: !3537, line: 55, baseType: !1284, size: 64, offset: 960)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3536, file: !3537, line: 56, baseType: !132, size: 64, offset: 1024)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3536, file: !3537, line: 57, baseType: !132, size: 64, offset: 1088)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3536, file: !3537, line: 58, baseType: !132, size: 64, offset: 1152)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3536, file: !3537, line: 59, baseType: !132, size: 64, offset: 1216)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3536, file: !3537, line: 60, baseType: !132, size: 64, offset: 1280)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3536, file: !3537, line: 61, baseType: !3356, size: 64, offset: 1344)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3536, file: !3537, line: 62, baseType: !490, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3536, file: !3537, line: 63, baseType: !490, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3517, file: !80, line: 583, baseType: !490, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3517, file: !80, line: 584, baseType: !490, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3517, file: !80, line: 585, baseType: !490, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3517, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3517, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3517, file: !80, line: 592, baseType: !1276, size: 512, offset: 576)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3517, file: !80, line: 593, baseType: !142, size: 64, offset: 1088)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3517, file: !80, line: 594, baseType: !1942, size: 256, offset: 1152)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3517, file: !80, line: 595, baseType: !1465, size: 128, offset: 1408)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3517, file: !80, line: 596, baseType: !3544, size: 64, offset: 1536)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3517, file: !80, line: 597, baseType: !750, size: 32, offset: 1600)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3517, file: !80, line: 598, baseType: !750, size: 32, offset: 1632)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3517, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3517, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3517, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3517, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3517, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3517, file: !80, line: 604, baseType: !490, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3517, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3517, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3517, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3517, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3517, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3517, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3517, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3517, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3517, file: !80, line: 613, baseType: !203, size: 32, offset: 1792)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3517, file: !80, line: 614, baseType: !203, size: 32, offset: 1824)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3517, file: !80, line: 615, baseType: !142, size: 64, offset: 1856)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3517, file: !80, line: 616, baseType: !142, size: 64, offset: 1920)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3517, file: !80, line: 617, baseType: !142, size: 64, offset: 1984)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3517, file: !80, line: 618, baseType: !142, size: 64, offset: 2048)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3517, file: !80, line: 620, baseType: !3605, size: 64, offset: 2112)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3607)
!3607 = !{!3608, !3609, !3610, !3611}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3606, file: !80, line: 537, baseType: !241)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3606, file: !80, line: 538, baseType: !7, size: 32)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3606, file: !80, line: 540, baseType: !124, size: 128, offset: 64)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3606, file: !80, line: 543, baseType: !3612, size: 64, offset: 192)
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3613, size: 64)
!3613 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3517, file: !80, line: 621, baseType: !3615, size: 64, offset: 2176)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DISubroutineType(types: !3617)
!3617 = !{null, !3356, !1428}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3517, file: !80, line: 622, baseType: !3619, size: 64, offset: 2240)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !225, file: !73, line: 486, baseType: !3622, size: 64, offset: 4096)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3624)
!3624 = !{!3625, !3626, !3627, !3631, !3632, !3633}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3623, file: !80, line: 643, baseType: !3384, size: 1472)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3623, file: !80, line: 644, baseType: !3387, size: 64, offset: 1472)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3623, file: !80, line: 645, baseType: !3628, size: 64, offset: 1536)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = !DISubroutineType(types: !3630)
!3630 = !{null, !3356, !490}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3623, file: !80, line: 646, baseType: !3387, size: 64, offset: 1600)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3623, file: !80, line: 647, baseType: !3378, size: 64, offset: 1664)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3623, file: !80, line: 648, baseType: !3378, size: 64, offset: 1728)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !225, file: !73, line: 493, baseType: !3635, size: 64, offset: 4160)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !73, line: 493, flags: DIFlagFwdDecl)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !225, file: !73, line: 499, baseType: !124, size: 128, offset: 4224)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !225, file: !73, line: 502, baseType: !3639, size: 64, offset: 4352)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3641)
!3641 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !225, file: !73, line: 504, baseType: !3643, size: 64, offset: 4416)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !225, file: !73, line: 505, baseType: !142, size: 64, offset: 4480)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !225, file: !73, line: 510, baseType: !142, size: 64, offset: 4544)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !225, file: !73, line: 511, baseType: !3647, size: 64, offset: 4608)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3649)
!3649 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !225, file: !73, line: 513, baseType: !3651, size: 64, offset: 4672)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3653)
!3653 = !{!3654, !3655}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3652, file: !73, line: 293, baseType: !7, size: 32)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3652, file: !73, line: 294, baseType: !132, size: 64, offset: 64)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !225, file: !73, line: 515, baseType: !124, size: 128, offset: 4736)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !225, file: !73, line: 526, baseType: !3658, offset: 4864)
!3658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3659, line: 5, elements: !255)
!3659 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !225, file: !73, line: 528, baseType: !3661, size: 64, offset: 4864)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3663, line: 14, flags: DIFlagFwdDecl)
!3663 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !225, file: !73, line: 529, baseType: !3665, size: 64, offset: 4928)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3667, line: 17, size: 192, elements: !3668)
!3667 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3668 = !{!3669, !3670, !3753}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3666, file: !3667, line: 18, baseType: !3665, size: 64)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3666, file: !3667, line: 19, baseType: !3671, size: 64, offset: 64)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3673)
!3673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3667, line: 110, size: 1152, elements: !3674)
!3674 = !{!3675, !3679, !3683, !3689, !3695, !3699, !3703, !3708, !3712, !3713, !3717, !3721, !3725, !3736, !3737, !3738, !3739, !3749}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3673, file: !3667, line: 111, baseType: !3676, size: 64)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!3665, !3665}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3673, file: !3667, line: 112, baseType: !3680, size: 64, offset: 64)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{null, !3665}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3673, file: !3667, line: 113, baseType: !3684, size: 64, offset: 128)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{!490, !3687}
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3666)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3673, file: !3667, line: 114, baseType: !3690, size: 64, offset: 192)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{!2111, !3687, !3693}
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !225)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3673, file: !3667, line: 116, baseType: !3696, size: 64, offset: 256)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!490, !3687, !194}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3673, file: !3667, line: 118, baseType: !3700, size: 64, offset: 320)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!203, !3687, !194, !7, !118, !328}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3673, file: !3667, line: 123, baseType: !3704, size: 64, offset: 384)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = !DISubroutineType(types: !3706)
!3706 = !{!203, !3687, !194, !3707, !328}
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3673, file: !3667, line: 126, baseType: !3709, size: 64, offset: 448)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{!194, !3687}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3673, file: !3667, line: 127, baseType: !3709, size: 64, offset: 512)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3673, file: !3667, line: 128, baseType: !3714, size: 64, offset: 576)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{!3665, !3687}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3673, file: !3667, line: 130, baseType: !3718, size: 64, offset: 640)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{!3665, !3687, !3665}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3673, file: !3667, line: 133, baseType: !3722, size: 64, offset: 704)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{!3665, !3687, !194}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3673, file: !3667, line: 135, baseType: !3726, size: 64, offset: 768)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{!203, !3687, !194, !194, !7, !7, !3729}
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3667, line: 43, size: 640, elements: !3731)
!3731 = !{!3732, !3733, !3734}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3730, file: !3667, line: 44, baseType: !3665, size: 64)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3730, file: !3667, line: 45, baseType: !7, size: 32, offset: 64)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3730, file: !3667, line: 46, baseType: !3735, size: 512, offset: 128)
!3735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 512, elements: !1314)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3673, file: !3667, line: 140, baseType: !3718, size: 64, offset: 832)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3673, file: !3667, line: 143, baseType: !3714, size: 64, offset: 896)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3673, file: !3667, line: 145, baseType: !3676, size: 64, offset: 960)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3673, file: !3667, line: 146, baseType: !3740, size: 64, offset: 1024)
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3741, size: 64)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{!203, !3687, !3743}
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3667, line: 29, size: 128, elements: !3745)
!3745 = !{!3746, !3747, !3748}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3744, file: !3667, line: 30, baseType: !7, size: 32)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3744, file: !3667, line: 31, baseType: !7, size: 32, offset: 32)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3744, file: !3667, line: 32, baseType: !3687, size: 64, offset: 64)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3673, file: !3667, line: 148, baseType: !3750, size: 64, offset: 1088)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DISubroutineType(types: !3752)
!3752 = !{!203, !3687, !3356}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3666, file: !3667, line: 20, baseType: !3356, size: 64, offset: 128)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !225, file: !73, line: 534, baseType: !513, size: 32, offset: 4992)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !225, file: !73, line: 535, baseType: !421, size: 32, offset: 5024)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !225, file: !73, line: 537, baseType: !241, offset: 5056)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !225, file: !73, line: 538, baseType: !124, size: 128, offset: 5056)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !225, file: !73, line: 540, baseType: !3759, size: 64, offset: 5184)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3761, line: 54, size: 960, elements: !3762)
!3761 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3762 = !{!3763, !3764, !3765, !3766, !3767, !3768, !3769, !3773, !3777, !3778, !3779, !3780, !3784, !3788, !3789}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3760, file: !3761, line: 55, baseType: !194, size: 64)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3760, file: !3761, line: 56, baseType: !633, size: 64, offset: 64)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3760, file: !3761, line: 58, baseType: !334, size: 64, offset: 128)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3760, file: !3761, line: 59, baseType: !334, size: 64, offset: 192)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3760, file: !3761, line: 60, baseType: !234, size: 64, offset: 256)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3760, file: !3761, line: 62, baseType: !3369, size: 64, offset: 320)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3760, file: !3761, line: 63, baseType: !3770, size: 64, offset: 384)
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3771 = !DISubroutineType(types: !3772)
!3772 = !{!282, !3356, !3376}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3760, file: !3761, line: 65, baseType: !3774, size: 64, offset: 448)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = !DISubroutineType(types: !3776)
!3776 = !{null, !3759}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3760, file: !3761, line: 66, baseType: !3378, size: 64, offset: 512)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3760, file: !3761, line: 68, baseType: !3387, size: 64, offset: 576)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3760, file: !3761, line: 70, baseType: !3172, size: 64, offset: 640)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3760, file: !3761, line: 71, baseType: !3781, size: 64, offset: 704)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!2111, !3356}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3760, file: !3761, line: 73, baseType: !3785, size: 64, offset: 768)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{null, !3356, !3204, !3205}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3760, file: !3761, line: 75, baseType: !3382, size: 64, offset: 832)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3760, file: !3761, line: 77, baseType: !3499, size: 64, offset: 896)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !225, file: !73, line: 541, baseType: !334, size: 64, offset: 5248)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !225, file: !73, line: 543, baseType: !3378, size: 64, offset: 5312)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !225, file: !73, line: 544, baseType: !3793, size: 64, offset: 5376)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !225, file: !73, line: 545, baseType: !3796, size: 64, offset: 5440)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !225, file: !73, line: 547, baseType: !490, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !225, file: !73, line: 548, baseType: !490, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !225, file: !73, line: 549, baseType: !490, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !225, file: !73, line: 550, baseType: !490, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !222, file: !211, line: 245, baseType: !142, size: 64, offset: 5568)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !222, file: !211, line: 246, baseType: !7, size: 32, offset: 5632)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !222, file: !211, line: 247, baseType: !203, size: 32, offset: 5664)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !222, file: !211, line: 249, baseType: !124, size: 128, offset: 5696)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !222, file: !211, line: 250, baseType: !124, size: 128, offset: 5824)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "card_list", scope: !222, file: !211, line: 251, baseType: !124, size: 128, offset: 5952)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "rdev_list", scope: !222, file: !211, line: 252, baseType: !124, size: 128, offset: 6080)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !222, file: !211, line: 254, baseType: !3810, size: 64, offset: 6208)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_protocol", file: !211, line: 411, size: 6464, elements: !3812)
!3812 = !{!3813, !3814, !3815, !3819, !3820, !3821, !3825, !3829, !3830, !3831, !3832, !3833}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !3811, file: !211, line: 412, baseType: !124, size: 128)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3811, file: !211, line: 413, baseType: !282, size: 64, offset: 128)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3811, file: !211, line: 416, baseType: !3816, size: 64, offset: 192)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DISubroutineType(types: !3818)
!3818 = !{!203, !221}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3811, file: !211, line: 417, baseType: !3816, size: 64, offset: 256)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !3811, file: !211, line: 418, baseType: !3816, size: 64, offset: 320)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3811, file: !211, line: 421, baseType: !3822, size: 64, offset: 384)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{!490, !221}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3811, file: !211, line: 422, baseType: !3826, size: 64, offset: 448)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{!203, !221, !3470}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3811, file: !211, line: 423, baseType: !3816, size: 64, offset: 512)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !3811, file: !211, line: 426, baseType: !151, size: 8, offset: 576)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3811, file: !211, line: 427, baseType: !225, size: 5568, offset: 640)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "cards", scope: !3811, file: !211, line: 428, baseType: !124, size: 128, offset: 6208)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !3811, file: !211, line: 429, baseType: !124, size: 128, offset: 6336)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !222, file: !211, line: 255, baseType: !3835, size: 64, offset: 6272)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card", file: !211, line: 202, size: 6720, elements: !3837)
!3837 = !{!3838, !3839, !3840, !3841, !3842, !3843, !3844, !3850, !3854, !3855, !3856, !3857, !3858}
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3836, file: !211, line: 203, baseType: !225, size: 5568)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !3836, file: !211, line: 204, baseType: !151, size: 8, offset: 5568)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !3836, file: !211, line: 205, baseType: !124, size: 128, offset: 5632)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !3836, file: !211, line: 206, baseType: !124, size: 128, offset: 5760)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !3836, file: !211, line: 207, baseType: !124, size: 128, offset: 5888)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !3836, file: !211, line: 209, baseType: !3810, size: 64, offset: 6016)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3836, file: !211, line: 210, baseType: !3845, size: 64, offset: 6080)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_id", file: !211, line: 369, size: 128, elements: !3847)
!3847 = !{!3848, !3849}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3846, file: !211, line: 370, baseType: !2017, size: 64)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3846, file: !211, line: 371, baseType: !3845, size: 64, offset: 64)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3836, file: !211, line: 212, baseType: !3851, size: 400, offset: 6144)
!3851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 400, elements: !3852)
!3852 = !{!3853}
!3853 = !DISubrange(count: 50)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "pnpver", scope: !3836, file: !211, line: 213, baseType: !151, size: 8, offset: 6544)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "productver", scope: !3836, file: !211, line: 214, baseType: !151, size: 8, offset: 6552)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !3836, file: !211, line: 215, baseType: !7, size: 32, offset: 6560)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !3836, file: !211, line: 216, baseType: !151, size: 8, offset: 6592)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !3836, file: !211, line: 217, baseType: !3859, size: 64, offset: 6656)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !3861, line: 123, flags: DIFlagFwdDecl)
!3861 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !222, file: !211, line: 256, baseType: !3863, size: 64, offset: 6336)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_driver", file: !211, line: 374, size: 1664, elements: !3865)
!3865 = !{!3866, !3867, !3875, !3876, !3880, !3881, !3882, !3883, !3884}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3864, file: !211, line: 375, baseType: !194, size: 64)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3864, file: !211, line: 376, baseType: !3868, size: 64, offset: 64)
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3870)
!3870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_device_id", file: !3440, line: 220, size: 128, elements: !3871)
!3871 = !{!3872, !3874}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3870, file: !3440, line: 221, baseType: !3873, size: 64)
!3873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1337, size: 64, elements: !1314)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3870, file: !3440, line: 222, baseType: !3459, size: 64, offset: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3864, file: !211, line: 377, baseType: !7, size: 32, offset: 128)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3864, file: !211, line: 378, baseType: !3877, size: 64, offset: 192)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = !DISubroutineType(types: !3879)
!3879 = !{!203, !221, !3868}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3864, file: !211, line: 379, baseType: !218, size: 64, offset: 256)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3864, file: !211, line: 380, baseType: !218, size: 64, offset: 320)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3864, file: !211, line: 381, baseType: !3826, size: 64, offset: 384)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3864, file: !211, line: 382, baseType: !3816, size: 64, offset: 448)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3864, file: !211, line: 383, baseType: !3428, size: 1152, offset: 512)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "card_link", scope: !222, file: !211, line: 257, baseType: !3886, size: 64, offset: 6400)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_link", file: !211, line: 226, size: 256, elements: !3888)
!3888 = !{!3889, !3890, !3926, !3927}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !3887, file: !211, line: 227, baseType: !3835, size: 64)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3887, file: !211, line: 228, baseType: !3891, size: 64, offset: 64)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_driver", file: !211, line: 388, size: 2240, elements: !3893)
!3893 = !{!3894, !3895, !3896, !3908, !3909, !3913, !3917, !3921, !3925}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !3892, file: !211, line: 389, baseType: !124, size: 128)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3892, file: !211, line: 390, baseType: !282, size: 64, offset: 128)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3892, file: !211, line: 391, baseType: !3897, size: 64, offset: 192)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3899)
!3899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_device_id", file: !3440, line: 225, size: 640, elements: !3900)
!3900 = !{!3901, !3902, !3903}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3899, file: !3440, line: 226, baseType: !3873, size: 64)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3899, file: !3440, line: 227, baseType: !3459, size: 64, offset: 64)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "devs", scope: !3899, file: !3440, line: 230, baseType: !3904, size: 512, offset: 128)
!3904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3905, size: 512, elements: !1314)
!3905 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3899, file: !3440, line: 228, size: 64, elements: !3906)
!3906 = !{!3907}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3905, file: !3440, line: 229, baseType: !3873, size: 64)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3892, file: !211, line: 392, baseType: !7, size: 32, offset: 256)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3892, file: !211, line: 393, baseType: !3910, size: 64, offset: 320)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{!203, !3886, !3897}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3892, file: !211, line: 395, baseType: !3914, size: 64, offset: 384)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{null, !3886}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3892, file: !211, line: 396, baseType: !3918, size: 64, offset: 448)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{!203, !3886, !3470}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3892, file: !211, line: 397, baseType: !3922, size: 64, offset: 512)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{!203, !3886}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3892, file: !211, line: 398, baseType: !3864, size: 1664, offset: 576)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3887, file: !211, line: 229, baseType: !118, size: 64, offset: 128)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "pm_state", scope: !3887, file: !211, line: 230, baseType: !3470, size: 32, offset: 192)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !222, file: !211, line: 259, baseType: !3845, size: 64, offset: 6464)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !222, file: !211, line: 261, baseType: !203, size: 32, offset: 6528)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !222, file: !211, line: 262, baseType: !203, size: 32, offset: 6560)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "num_dependent_sets", scope: !222, file: !211, line: 263, baseType: !7, size: 32, offset: 6592)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !222, file: !211, line: 264, baseType: !124, size: 128, offset: 6656)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !222, file: !211, line: 265, baseType: !124, size: 128, offset: 6784)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !222, file: !211, line: 267, baseType: !3851, size: 400, offset: 6912)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !222, file: !211, line: 268, baseType: !203, size: 32, offset: 7328)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !222, file: !211, line: 269, baseType: !3859, size: 64, offset: 7360)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !222, file: !211, line: 270, baseType: !118, size: 64, offset: 7424)
!3938 = !{!3939}
!3939 = !DISubrange(count: 19)
!3940 = !{i32 7, !"Dwarf Version", i32 4}
!3941 = !{i32 2, !"Debug Info Version", i32 3}
!3942 = !{i32 1, !"wchar_size", i32 2}
!3943 = !{i32 1, !"Code Model", i32 2}
!3944 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!3945 = distinct !DISubprogram(name: "pnp_fixup_device", scope: !3, file: !3, line: 452, type: !219, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !255)
!3946 = !DILocalVariable(name: "dev", arg: 1, scope: !3945, file: !3, line: 452, type: !221)
!3947 = !DILocation(line: 452, column: 39, scope: !3945)
!3948 = !DILocalVariable(name: "f", scope: !3945, file: !3, line: 454, type: !3949)
!3949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!3950 = !DILocation(line: 454, column: 20, scope: !3945)
!3951 = !DILocation(line: 456, column: 9, scope: !3952)
!3952 = distinct !DILexicalBlock(scope: !3945, file: !3, line: 456, column: 2)
!3953 = !DILocation(line: 456, column: 7, scope: !3952)
!3954 = !DILocation(line: 456, column: 24, scope: !3955)
!3955 = distinct !DILexicalBlock(scope: !3952, file: !3, line: 456, column: 2)
!3956 = !DILocation(line: 456, column: 27, scope: !3955)
!3957 = !DILocation(line: 456, column: 23, scope: !3955)
!3958 = !DILocation(line: 456, column: 2, scope: !3952)
!3959 = !DILocation(line: 457, column: 23, scope: !3960)
!3960 = distinct !DILexicalBlock(scope: !3961, file: !3, line: 457, column: 7)
!3961 = distinct !DILexicalBlock(scope: !3955, file: !3, line: 456, column: 36)
!3962 = !DILocation(line: 457, column: 28, scope: !3960)
!3963 = !DILocation(line: 457, column: 32, scope: !3960)
!3964 = !DILocation(line: 457, column: 35, scope: !3960)
!3965 = !DILocation(line: 457, column: 8, scope: !3960)
!3966 = !DILocation(line: 457, column: 7, scope: !3961)
!3967 = !DILocation(line: 458, column: 4, scope: !3960)
!3968 = !DILocation(line: 459, column: 3, scope: !3969)
!3969 = distinct !DILexicalBlock(scope: !3970, file: !3, line: 459, column: 3)
!3970 = distinct !DILexicalBlock(scope: !3961, file: !3, line: 459, column: 3)
!3971 = !DILocation(line: 459, column: 3, scope: !3970)
!3972 = !DILocation(line: 461, column: 3, scope: !3961)
!3973 = !DILocation(line: 461, column: 6, scope: !3961)
!3974 = !DILocation(line: 461, column: 21, scope: !3961)
!3975 = !DILocation(line: 462, column: 2, scope: !3961)
!3976 = !DILocation(line: 456, column: 32, scope: !3955)
!3977 = !DILocation(line: 456, column: 2, scope: !3955)
!3978 = distinct !{!3978, !3958, !3979}
!3979 = !DILocation(line: 462, column: 2, scope: !3952)
!3980 = !DILocation(line: 463, column: 1, scope: !3945)
!3981 = distinct !DISubprogram(name: "quirk_awe32_resources", scope: !3, file: !3, line: 50, type: !219, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!3982 = !DILocalVariable(name: "dev", arg: 1, scope: !3981, file: !3, line: 50, type: !221)
!3983 = !DILocation(line: 50, column: 51, scope: !3981)
!3984 = !DILocalVariable(name: "option", scope: !3981, file: !3, line: 52, type: !119)
!3985 = !DILocation(line: 52, column: 21, scope: !3981)
!3986 = !DILocalVariable(name: "set", scope: !3981, file: !3, line: 53, type: !7)
!3987 = !DILocation(line: 53, column: 15, scope: !3981)
!3988 = !DILocalVariable(name: "__mptr", scope: !3989, file: !3, line: 59, type: !118)
!3989 = distinct !DILexicalBlock(scope: !3990, file: !3, line: 59, column: 2)
!3990 = distinct !DILexicalBlock(scope: !3981, file: !3, line: 59, column: 2)
!3991 = !DILocation(line: 59, column: 2, scope: !3989)
!3992 = !DILocation(line: 59, column: 2, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3989, file: !3, line: 59, column: 2)
!3994 = !DILocation(line: 59, column: 2, scope: !3990)
!3995 = !DILocation(line: 59, column: 2, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3990, file: !3, line: 59, column: 2)
!3997 = !DILocation(line: 60, column: 31, scope: !3998)
!3998 = distinct !DILexicalBlock(scope: !3999, file: !3, line: 60, column: 7)
!3999 = distinct !DILexicalBlock(scope: !3996, file: !3, line: 59, column: 51)
!4000 = !DILocation(line: 60, column: 7, scope: !3998)
!4001 = !DILocation(line: 60, column: 39, scope: !3998)
!4002 = !DILocation(line: 61, column: 22, scope: !3998)
!4003 = !DILocation(line: 61, column: 7, scope: !3998)
!4004 = !DILocation(line: 61, column: 33, scope: !3998)
!4005 = !DILocation(line: 61, column: 30, scope: !3998)
!4006 = !DILocation(line: 60, column: 7, scope: !3999)
!4007 = !DILocation(line: 62, column: 25, scope: !4008)
!4008 = distinct !DILexicalBlock(scope: !3998, file: !3, line: 61, column: 38)
!4009 = !DILocation(line: 62, column: 10, scope: !4008)
!4010 = !DILocation(line: 62, column: 8, scope: !4008)
!4011 = !DILocation(line: 63, column: 26, scope: !4008)
!4012 = !DILocation(line: 63, column: 31, scope: !4008)
!4013 = !DILocation(line: 63, column: 4, scope: !4008)
!4014 = !DILocation(line: 64, column: 26, scope: !4008)
!4015 = !DILocation(line: 64, column: 31, scope: !4008)
!4016 = !DILocation(line: 64, column: 4, scope: !4008)
!4017 = !DILocation(line: 65, column: 3, scope: !4008)
!4018 = !DILocation(line: 66, column: 2, scope: !3999)
!4019 = !DILocalVariable(name: "__mptr", scope: !4020, file: !3, line: 59, type: !118)
!4020 = distinct !DILexicalBlock(scope: !3996, file: !3, line: 59, column: 2)
!4021 = !DILocation(line: 59, column: 2, scope: !4020)
!4022 = !DILocation(line: 59, column: 2, scope: !4023)
!4023 = distinct !DILexicalBlock(scope: !4020, file: !3, line: 59, column: 2)
!4024 = distinct !{!4024, !3994, !4025}
!4025 = !DILocation(line: 66, column: 2, scope: !3990)
!4026 = !DILocation(line: 67, column: 1, scope: !3981)
!4027 = distinct !DISubprogram(name: "quirk_cmi8330_resources", scope: !3, file: !3, line: 69, type: !219, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!4028 = !DILocalVariable(name: "dev", arg: 1, scope: !4027, file: !3, line: 69, type: !221)
!4029 = !DILocation(line: 69, column: 53, scope: !4027)
!4030 = !DILocalVariable(name: "option", scope: !4027, file: !3, line: 71, type: !119)
!4031 = !DILocation(line: 71, column: 21, scope: !4027)
!4032 = !DILocalVariable(name: "irq", scope: !4027, file: !3, line: 72, type: !4033)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!4034 = !DILocation(line: 72, column: 18, scope: !4027)
!4035 = !DILocalVariable(name: "dma", scope: !4027, file: !3, line: 73, type: !4036)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!4037 = !DILocation(line: 73, column: 18, scope: !4027)
!4038 = !DILocalVariable(name: "__mptr", scope: !4039, file: !3, line: 75, type: !118)
!4039 = distinct !DILexicalBlock(scope: !4040, file: !3, line: 75, column: 2)
!4040 = distinct !DILexicalBlock(scope: !4027, file: !3, line: 75, column: 2)
!4041 = !DILocation(line: 75, column: 2, scope: !4039)
!4042 = !DILocation(line: 75, column: 2, scope: !4043)
!4043 = distinct !DILexicalBlock(scope: !4039, file: !3, line: 75, column: 2)
!4044 = !DILocation(line: 75, column: 2, scope: !4040)
!4045 = !DILocation(line: 75, column: 2, scope: !4046)
!4046 = distinct !DILexicalBlock(scope: !4040, file: !3, line: 75, column: 2)
!4047 = !DILocation(line: 76, column: 32, scope: !4048)
!4048 = distinct !DILexicalBlock(scope: !4049, file: !3, line: 76, column: 7)
!4049 = distinct !DILexicalBlock(scope: !4046, file: !3, line: 75, column: 51)
!4050 = !DILocation(line: 76, column: 8, scope: !4048)
!4051 = !DILocation(line: 76, column: 7, scope: !4049)
!4052 = !DILocation(line: 77, column: 4, scope: !4048)
!4053 = !DILocation(line: 79, column: 7, scope: !4054)
!4054 = distinct !DILexicalBlock(scope: !4049, file: !3, line: 79, column: 7)
!4055 = !DILocation(line: 79, column: 15, scope: !4054)
!4056 = !DILocation(line: 79, column: 20, scope: !4054)
!4057 = !DILocation(line: 79, column: 7, scope: !4049)
!4058 = !DILocation(line: 80, column: 11, scope: !4059)
!4059 = distinct !DILexicalBlock(scope: !4054, file: !3, line: 79, column: 39)
!4060 = !DILocation(line: 80, column: 19, scope: !4059)
!4061 = !DILocation(line: 80, column: 21, scope: !4059)
!4062 = !DILocation(line: 80, column: 8, scope: !4059)
!4063 = !DILocation(line: 81, column: 16, scope: !4059)
!4064 = !DILocation(line: 81, column: 21, scope: !4059)
!4065 = !DILocation(line: 81, column: 25, scope: !4059)
!4066 = !DILocation(line: 81, column: 4, scope: !4059)
!4067 = !DILocation(line: 82, column: 17, scope: !4059)
!4068 = !DILocation(line: 82, column: 22, scope: !4059)
!4069 = !DILocation(line: 82, column: 26, scope: !4059)
!4070 = !DILocation(line: 82, column: 4, scope: !4059)
!4071 = !DILocation(line: 83, column: 17, scope: !4059)
!4072 = !DILocation(line: 83, column: 22, scope: !4059)
!4073 = !DILocation(line: 83, column: 26, scope: !4059)
!4074 = !DILocation(line: 83, column: 4, scope: !4059)
!4075 = !DILocation(line: 84, column: 18, scope: !4059)
!4076 = !DILocation(line: 84, column: 23, scope: !4059)
!4077 = !DILocation(line: 84, column: 27, scope: !4059)
!4078 = !DILocation(line: 84, column: 4, scope: !4059)
!4079 = !DILocation(line: 85, column: 4, scope: !4059)
!4080 = !DILocation(line: 88, column: 3, scope: !4059)
!4081 = !DILocation(line: 88, column: 14, scope: !4082)
!4082 = distinct !DILexicalBlock(scope: !4054, file: !3, line: 88, column: 14)
!4083 = !DILocation(line: 88, column: 22, scope: !4082)
!4084 = !DILocation(line: 88, column: 27, scope: !4082)
!4085 = !DILocation(line: 88, column: 14, scope: !4054)
!4086 = !DILocation(line: 89, column: 11, scope: !4087)
!4087 = distinct !DILexicalBlock(scope: !4082, file: !3, line: 88, column: 46)
!4088 = !DILocation(line: 89, column: 19, scope: !4087)
!4089 = !DILocation(line: 89, column: 21, scope: !4087)
!4090 = !DILocation(line: 89, column: 8, scope: !4087)
!4091 = !DILocation(line: 90, column: 9, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !4087, file: !3, line: 90, column: 8)
!4093 = !DILocation(line: 90, column: 14, scope: !4092)
!4094 = !DILocation(line: 90, column: 20, scope: !4092)
!4095 = !DILocation(line: 90, column: 48, scope: !4092)
!4096 = !DILocation(line: 91, column: 27, scope: !4092)
!4097 = !DILocation(line: 92, column: 8, scope: !4092)
!4098 = !DILocation(line: 92, column: 13, scope: !4092)
!4099 = !DILocation(line: 92, column: 17, scope: !4092)
!4100 = !DILocation(line: 90, column: 8, scope: !4087)
!4101 = !DILocation(line: 93, column: 5, scope: !4102)
!4102 = distinct !DILexicalBlock(scope: !4092, file: !3, line: 92, column: 26)
!4103 = !DILocation(line: 97, column: 5, scope: !4102)
!4104 = !DILocation(line: 97, column: 10, scope: !4102)
!4105 = !DILocation(line: 97, column: 14, scope: !4102)
!4106 = !DILocation(line: 98, column: 4, scope: !4102)
!4107 = !DILocation(line: 99, column: 3, scope: !4087)
!4108 = !DILocation(line: 100, column: 2, scope: !4049)
!4109 = !DILocalVariable(name: "__mptr", scope: !4110, file: !3, line: 75, type: !118)
!4110 = distinct !DILexicalBlock(scope: !4046, file: !3, line: 75, column: 2)
!4111 = !DILocation(line: 75, column: 2, scope: !4110)
!4112 = !DILocation(line: 75, column: 2, scope: !4113)
!4113 = distinct !DILexicalBlock(scope: !4110, file: !3, line: 75, column: 2)
!4114 = distinct !{!4114, !4044, !4115}
!4115 = !DILocation(line: 100, column: 2, scope: !4040)
!4116 = !DILocation(line: 101, column: 1, scope: !4027)
!4117 = distinct !DISubprogram(name: "quirk_sb16audio_resources", scope: !3, file: !3, line: 103, type: !219, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!4118 = !DILocalVariable(name: "dev", arg: 1, scope: !4117, file: !3, line: 103, type: !221)
!4119 = !DILocation(line: 103, column: 55, scope: !4117)
!4120 = !DILocalVariable(name: "option", scope: !4117, file: !3, line: 105, type: !119)
!4121 = !DILocation(line: 105, column: 21, scope: !4117)
!4122 = !DILocalVariable(name: "prev_option_flags", scope: !4117, file: !3, line: 106, type: !7)
!4123 = !DILocation(line: 106, column: 15, scope: !4117)
!4124 = !DILocalVariable(name: "n", scope: !4117, file: !3, line: 106, type: !7)
!4125 = !DILocation(line: 106, column: 39, scope: !4117)
!4126 = !DILocalVariable(name: "port", scope: !4117, file: !3, line: 107, type: !4127)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!4128 = !DILocation(line: 107, column: 19, scope: !4117)
!4129 = !DILocalVariable(name: "__mptr", scope: !4130, file: !3, line: 114, type: !118)
!4130 = distinct !DILexicalBlock(scope: !4131, file: !3, line: 114, column: 2)
!4131 = distinct !DILexicalBlock(scope: !4117, file: !3, line: 114, column: 2)
!4132 = !DILocation(line: 114, column: 2, scope: !4130)
!4133 = !DILocation(line: 114, column: 2, scope: !4134)
!4134 = distinct !DILexicalBlock(scope: !4130, file: !3, line: 114, column: 2)
!4135 = !DILocation(line: 114, column: 2, scope: !4131)
!4136 = !DILocation(line: 114, column: 2, scope: !4137)
!4137 = distinct !DILexicalBlock(scope: !4131, file: !3, line: 114, column: 2)
!4138 = !DILocation(line: 115, column: 7, scope: !4139)
!4139 = distinct !DILexicalBlock(scope: !4140, file: !3, line: 115, column: 7)
!4140 = distinct !DILexicalBlock(scope: !4137, file: !3, line: 114, column: 51)
!4141 = !DILocation(line: 115, column: 28, scope: !4139)
!4142 = !DILocation(line: 115, column: 36, scope: !4139)
!4143 = !DILocation(line: 115, column: 25, scope: !4139)
!4144 = !DILocation(line: 115, column: 7, scope: !4140)
!4145 = !DILocation(line: 116, column: 24, scope: !4146)
!4146 = distinct !DILexicalBlock(scope: !4139, file: !3, line: 115, column: 43)
!4147 = !DILocation(line: 116, column: 32, scope: !4146)
!4148 = !DILocation(line: 116, column: 22, scope: !4146)
!4149 = !DILocation(line: 117, column: 6, scope: !4146)
!4150 = !DILocation(line: 118, column: 3, scope: !4146)
!4151 = !DILocation(line: 120, column: 31, scope: !4152)
!4152 = distinct !DILexicalBlock(scope: !4140, file: !3, line: 120, column: 7)
!4153 = !DILocation(line: 120, column: 7, scope: !4152)
!4154 = !DILocation(line: 120, column: 39, scope: !4152)
!4155 = !DILocation(line: 121, column: 7, scope: !4152)
!4156 = !DILocation(line: 121, column: 15, scope: !4152)
!4157 = !DILocation(line: 121, column: 20, scope: !4152)
!4158 = !DILocation(line: 120, column: 7, scope: !4140)
!4159 = !DILocation(line: 122, column: 5, scope: !4160)
!4160 = distinct !DILexicalBlock(scope: !4152, file: !3, line: 121, column: 38)
!4161 = !DILocation(line: 123, column: 12, scope: !4160)
!4162 = !DILocation(line: 123, column: 20, scope: !4160)
!4163 = !DILocation(line: 123, column: 22, scope: !4160)
!4164 = !DILocation(line: 123, column: 9, scope: !4160)
!4165 = !DILocation(line: 124, column: 8, scope: !4166)
!4166 = distinct !DILexicalBlock(scope: !4160, file: !3, line: 124, column: 8)
!4167 = !DILocation(line: 124, column: 10, scope: !4166)
!4168 = !DILocation(line: 124, column: 15, scope: !4166)
!4169 = !DILocation(line: 124, column: 18, scope: !4166)
!4170 = !DILocation(line: 124, column: 24, scope: !4166)
!4171 = !DILocation(line: 124, column: 31, scope: !4166)
!4172 = !DILocation(line: 124, column: 37, scope: !4166)
!4173 = !DILocation(line: 124, column: 28, scope: !4166)
!4174 = !DILocation(line: 124, column: 8, scope: !4160)
!4175 = !DILocation(line: 125, column: 5, scope: !4176)
!4176 = distinct !DILexicalBlock(scope: !4166, file: !3, line: 124, column: 42)
!4177 = !DILocation(line: 125, column: 11, scope: !4176)
!4178 = !DILocation(line: 125, column: 15, scope: !4176)
!4179 = !DILocation(line: 126, column: 5, scope: !4176)
!4180 = !DILocation(line: 133, column: 4, scope: !4176)
!4181 = !DILocation(line: 134, column: 3, scope: !4160)
!4182 = !DILocation(line: 135, column: 2, scope: !4140)
!4183 = !DILocalVariable(name: "__mptr", scope: !4184, file: !3, line: 114, type: !118)
!4184 = distinct !DILexicalBlock(scope: !4137, file: !3, line: 114, column: 2)
!4185 = !DILocation(line: 114, column: 2, scope: !4184)
!4186 = !DILocation(line: 114, column: 2, scope: !4187)
!4187 = distinct !DILexicalBlock(scope: !4184, file: !3, line: 114, column: 2)
!4188 = distinct !{!4188, !4135, !4189}
!4189 = !DILocation(line: 135, column: 2, scope: !4131)
!4190 = !DILocation(line: 136, column: 1, scope: !4117)
!4191 = distinct !DISubprogram(name: "quirk_ad1815_mpu_resources", scope: !3, file: !3, line: 208, type: !219, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!4192 = !DILocalVariable(name: "dev", arg: 1, scope: !4191, file: !3, line: 208, type: !221)
!4193 = !DILocation(line: 208, column: 56, scope: !4191)
!4194 = !DILocalVariable(name: "option", scope: !4191, file: !3, line: 210, type: !119)
!4195 = !DILocation(line: 210, column: 21, scope: !4191)
!4196 = !DILocalVariable(name: "irq", scope: !4191, file: !3, line: 211, type: !4033)
!4197 = !DILocation(line: 211, column: 18, scope: !4191)
!4198 = !DILocalVariable(name: "independent_irqs", scope: !4191, file: !3, line: 212, type: !7)
!4199 = !DILocation(line: 212, column: 15, scope: !4191)
!4200 = !DILocalVariable(name: "__mptr", scope: !4201, file: !3, line: 214, type: !118)
!4201 = distinct !DILexicalBlock(scope: !4202, file: !3, line: 214, column: 2)
!4202 = distinct !DILexicalBlock(scope: !4191, file: !3, line: 214, column: 2)
!4203 = !DILocation(line: 214, column: 2, scope: !4201)
!4204 = !DILocation(line: 214, column: 2, scope: !4205)
!4205 = distinct !DILexicalBlock(scope: !4201, file: !3, line: 214, column: 2)
!4206 = !DILocation(line: 214, column: 2, scope: !4202)
!4207 = !DILocation(line: 214, column: 2, scope: !4208)
!4208 = distinct !DILexicalBlock(scope: !4202, file: !3, line: 214, column: 2)
!4209 = !DILocation(line: 215, column: 7, scope: !4210)
!4210 = distinct !DILexicalBlock(scope: !4211, file: !3, line: 215, column: 7)
!4211 = distinct !DILexicalBlock(scope: !4208, file: !3, line: 214, column: 51)
!4212 = !DILocation(line: 215, column: 15, scope: !4210)
!4213 = !DILocation(line: 215, column: 20, scope: !4210)
!4214 = !DILocation(line: 215, column: 38, scope: !4210)
!4215 = !DILocation(line: 216, column: 32, scope: !4210)
!4216 = !DILocation(line: 216, column: 8, scope: !4210)
!4217 = !DILocation(line: 215, column: 7, scope: !4211)
!4218 = !DILocation(line: 217, column: 20, scope: !4219)
!4219 = distinct !DILexicalBlock(scope: !4210, file: !3, line: 216, column: 41)
!4220 = !DILocation(line: 218, column: 11, scope: !4219)
!4221 = !DILocation(line: 218, column: 19, scope: !4219)
!4222 = !DILocation(line: 218, column: 21, scope: !4219)
!4223 = !DILocation(line: 218, column: 8, scope: !4219)
!4224 = !DILocation(line: 219, column: 3, scope: !4219)
!4225 = !DILocation(line: 220, column: 2, scope: !4211)
!4226 = !DILocalVariable(name: "__mptr", scope: !4227, file: !3, line: 214, type: !118)
!4227 = distinct !DILexicalBlock(scope: !4208, file: !3, line: 214, column: 2)
!4228 = !DILocation(line: 214, column: 2, scope: !4227)
!4229 = !DILocation(line: 214, column: 2, scope: !4230)
!4230 = distinct !DILexicalBlock(scope: !4227, file: !3, line: 214, column: 2)
!4231 = distinct !{!4231, !4206, !4232}
!4232 = !DILocation(line: 220, column: 2, scope: !4202)
!4233 = !DILocation(line: 222, column: 6, scope: !4234)
!4234 = distinct !DILexicalBlock(scope: !4191, file: !3, line: 222, column: 6)
!4235 = !DILocation(line: 222, column: 23, scope: !4234)
!4236 = !DILocation(line: 222, column: 6, scope: !4191)
!4237 = !DILocation(line: 223, column: 3, scope: !4234)
!4238 = !DILocation(line: 225, column: 2, scope: !4191)
!4239 = !DILocation(line: 225, column: 7, scope: !4191)
!4240 = !DILocation(line: 225, column: 13, scope: !4191)
!4241 = !DILocation(line: 226, column: 2, scope: !4191)
!4242 = !DILocation(line: 227, column: 1, scope: !4191)
!4243 = distinct !DISubprogram(name: "quirk_add_irq_optional_dependent_sets", scope: !3, file: !3, line: 180, type: !219, scopeLine: 181, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!4244 = !DILocalVariable(name: "dev", arg: 1, scope: !4243, file: !3, line: 180, type: !221)
!4245 = !DILocation(line: 180, column: 67, scope: !4243)
!4246 = !DILocalVariable(name: "new_option", scope: !4243, file: !3, line: 182, type: !119)
!4247 = !DILocation(line: 182, column: 21, scope: !4243)
!4248 = !DILocalVariable(name: "num_sets", scope: !4243, file: !3, line: 183, type: !7)
!4249 = !DILocation(line: 183, column: 15, scope: !4243)
!4250 = !DILocalVariable(name: "i", scope: !4243, file: !3, line: 183, type: !7)
!4251 = !DILocation(line: 183, column: 25, scope: !4243)
!4252 = !DILocalVariable(name: "set", scope: !4243, file: !3, line: 183, type: !7)
!4253 = !DILocation(line: 183, column: 28, scope: !4243)
!4254 = !DILocalVariable(name: "irq", scope: !4243, file: !3, line: 184, type: !4033)
!4255 = !DILocation(line: 184, column: 18, scope: !4243)
!4256 = !DILocation(line: 186, column: 13, scope: !4243)
!4257 = !DILocation(line: 186, column: 18, scope: !4243)
!4258 = !DILocation(line: 186, column: 11, scope: !4243)
!4259 = !DILocation(line: 187, column: 9, scope: !4260)
!4260 = distinct !DILexicalBlock(scope: !4243, file: !3, line: 187, column: 2)
!4261 = !DILocation(line: 187, column: 7, scope: !4260)
!4262 = !DILocation(line: 187, column: 14, scope: !4263)
!4263 = distinct !DILexicalBlock(scope: !4260, file: !3, line: 187, column: 2)
!4264 = !DILocation(line: 187, column: 18, scope: !4263)
!4265 = !DILocation(line: 187, column: 16, scope: !4263)
!4266 = !DILocation(line: 187, column: 2, scope: !4260)
!4267 = !DILocation(line: 188, column: 40, scope: !4268)
!4268 = distinct !DILexicalBlock(scope: !4263, file: !3, line: 187, column: 33)
!4269 = !DILocation(line: 188, column: 45, scope: !4268)
!4270 = !DILocation(line: 188, column: 16, scope: !4268)
!4271 = !DILocation(line: 188, column: 14, scope: !4268)
!4272 = !DILocation(line: 189, column: 8, scope: !4273)
!4273 = distinct !DILexicalBlock(scope: !4268, file: !3, line: 189, column: 7)
!4274 = !DILocation(line: 189, column: 7, scope: !4268)
!4275 = !DILocation(line: 190, column: 4, scope: !4273)
!4276 = !DILocation(line: 192, column: 24, scope: !4268)
!4277 = !DILocation(line: 192, column: 9, scope: !4268)
!4278 = !DILocation(line: 192, column: 7, scope: !4268)
!4279 = !DILocation(line: 193, column: 3, scope: !4268)
!4280 = !DILocation(line: 193, column: 10, scope: !4268)
!4281 = !DILocation(line: 193, column: 21, scope: !4268)
!4282 = !DILocation(line: 193, column: 39, scope: !4268)
!4283 = !DILocation(line: 193, column: 24, scope: !4268)
!4284 = !DILocation(line: 193, column: 54, scope: !4268)
!4285 = !DILocation(line: 193, column: 51, scope: !4268)
!4286 = !DILocation(line: 0, scope: !4268)
!4287 = !DILocation(line: 194, column: 8, scope: !4288)
!4288 = distinct !DILexicalBlock(scope: !4289, file: !3, line: 194, column: 8)
!4289 = distinct !DILexicalBlock(scope: !4268, file: !3, line: 193, column: 59)
!4290 = !DILocation(line: 194, column: 20, scope: !4288)
!4291 = !DILocation(line: 194, column: 25, scope: !4288)
!4292 = !DILocation(line: 194, column: 8, scope: !4289)
!4293 = !DILocation(line: 195, column: 12, scope: !4294)
!4294 = distinct !DILexicalBlock(scope: !4288, file: !3, line: 194, column: 44)
!4295 = !DILocation(line: 195, column: 24, scope: !4294)
!4296 = !DILocation(line: 195, column: 26, scope: !4294)
!4297 = !DILocation(line: 195, column: 9, scope: !4294)
!4298 = !DILocation(line: 196, column: 5, scope: !4294)
!4299 = !DILocation(line: 196, column: 10, scope: !4294)
!4300 = !DILocation(line: 196, column: 16, scope: !4294)
!4301 = !DILocation(line: 197, column: 4, scope: !4294)
!4302 = !DILocation(line: 198, column: 24, scope: !4289)
!4303 = !DILocation(line: 198, column: 29, scope: !4289)
!4304 = !DILocation(line: 198, column: 4, scope: !4289)
!4305 = !DILocalVariable(name: "__mptr", scope: !4306, file: !3, line: 199, type: !118)
!4306 = distinct !DILexicalBlock(scope: !4289, file: !3, line: 199, column: 17)
!4307 = !DILocation(line: 199, column: 17, scope: !4306)
!4308 = !DILocation(line: 199, column: 17, scope: !4309)
!4309 = distinct !DILexicalBlock(scope: !4306, file: !3, line: 199, column: 17)
!4310 = !DILocation(line: 199, column: 15, scope: !4289)
!4311 = distinct !{!4311, !4279, !4312}
!4312 = !DILocation(line: 201, column: 3, scope: !4268)
!4313 = !DILocation(line: 203, column: 3, scope: !4268)
!4314 = !DILocation(line: 205, column: 2, scope: !4268)
!4315 = !DILocation(line: 187, column: 29, scope: !4263)
!4316 = !DILocation(line: 187, column: 2, scope: !4263)
!4317 = distinct !{!4317, !4266, !4318}
!4318 = !DILocation(line: 205, column: 2, scope: !4260)
!4319 = !DILocation(line: 206, column: 1, scope: !4243)
!4320 = distinct !DISubprogram(name: "quirk_system_pci_resources", scope: !3, file: !3, line: 229, type: !219, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!4321 = !DILocalVariable(name: "dev", arg: 1, scope: !4320, file: !3, line: 229, type: !221)
!4322 = !DILocation(line: 229, column: 56, scope: !4320)
!4323 = !DILocalVariable(name: "pdev", scope: !4320, file: !3, line: 231, type: !4324)
!4324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4325, size: 64)
!4325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !106, line: 309, size: 19264, elements: !4326)
!4326 = !{!4327, !4328, !4387, !4388, !4389, !4390, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4418, !4483, !4484, !4485, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4509, !4510, !4511, !4512, !4513, !4514, !4515, !4516, !4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4559, !4560, !4562, !4563, !4564, !4565, !4567, !4568, !4569, !4572, !4579, !4580, !4581, !4582, !4583, !4584, !4585}
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !4325, file: !106, line: 310, baseType: !124, size: 128)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4325, file: !106, line: 311, baseType: !4329, size: 64, offset: 128)
!4329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4330, size: 64)
!4330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !106, line: 605, size: 8064, elements: !4331)
!4331 = !{!4332, !4333, !4334, !4335, !4336, !4337, !4338, !4340, !4341, !4342, !4366, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4379, !4380, !4382, !4383, !4384, !4385, !4386}
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4330, file: !106, line: 606, baseType: !124, size: 128)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4330, file: !106, line: 607, baseType: !4329, size: 64, offset: 128)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4330, file: !106, line: 608, baseType: !124, size: 128, offset: 192)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4330, file: !106, line: 609, baseType: !124, size: 128, offset: 320)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4330, file: !106, line: 610, baseType: !4324, size: 64, offset: 448)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !4330, file: !106, line: 611, baseType: !124, size: 128, offset: 512)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4330, file: !106, line: 613, baseType: !4339, size: 256, offset: 640)
!4339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 256, elements: !161)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4330, file: !106, line: 614, baseType: !124, size: 128, offset: 896)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !4330, file: !106, line: 615, baseType: !188, size: 512, offset: 1024)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4330, file: !106, line: 617, baseType: !4343, size: 64, offset: 1536)
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4344, size: 64)
!4344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !106, line: 731, size: 320, elements: !4345)
!4345 = !{!4346, !4350, !4354, !4358, !4362}
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !4344, file: !106, line: 732, baseType: !4347, size: 64)
!4347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4348, size: 64)
!4348 = !DISubroutineType(types: !4349)
!4349 = !{!203, !4329}
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !4344, file: !106, line: 733, baseType: !4351, size: 64, offset: 64)
!4351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4352, size: 64)
!4352 = !DISubroutineType(types: !4353)
!4353 = !{null, !4329}
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !4344, file: !106, line: 734, baseType: !4355, size: 64, offset: 128)
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4356, size: 64)
!4356 = !DISubroutineType(types: !4357)
!4357 = !{!118, !4329, !7, !203}
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4344, file: !106, line: 735, baseType: !4359, size: 64, offset: 192)
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = !DISubroutineType(types: !4361)
!4361 = !{!203, !4329, !7, !203, !203, !1399}
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4344, file: !106, line: 736, baseType: !4363, size: 64, offset: 256)
!4363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4364, size: 64)
!4364 = !DISubroutineType(types: !4365)
!4365 = !{!203, !4329, !7, !203, !203, !421}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4330, file: !106, line: 618, baseType: !4367, size: 64, offset: 1600)
!4367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4368, size: 64)
!4368 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !106, line: 537, flags: DIFlagFwdDecl)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4330, file: !106, line: 619, baseType: !118, size: 64, offset: 1664)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !4330, file: !106, line: 620, baseType: !3859, size: 64, offset: 1728)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4330, file: !106, line: 622, baseType: !151, size: 8, offset: 1792)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4330, file: !106, line: 623, baseType: !151, size: 8, offset: 1800)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !4330, file: !106, line: 624, baseType: !151, size: 8, offset: 1808)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !4330, file: !106, line: 625, baseType: !151, size: 8, offset: 1816)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4330, file: !106, line: 630, baseType: !4376, size: 384, offset: 1824)
!4376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 384, elements: !4377)
!4377 = !{!4378}
!4378 = !DISubrange(count: 48)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !4330, file: !106, line: 632, baseType: !323, size: 16, offset: 2208)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !4330, file: !106, line: 633, baseType: !4381, size: 16, offset: 2224)
!4381 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !106, line: 237, baseType: !323)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !4330, file: !106, line: 634, baseType: !3356, size: 64, offset: 2240)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4330, file: !106, line: 635, baseType: !225, size: 5568, offset: 2304)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !4330, file: !106, line: 636, baseType: !348, size: 64, offset: 7872)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !4330, file: !106, line: 637, baseType: !348, size: 64, offset: 7936)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !4330, file: !106, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !4325, file: !106, line: 312, baseType: !4329, size: 64, offset: 192)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4325, file: !106, line: 314, baseType: !118, size: 64, offset: 256)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !4325, file: !106, line: 315, baseType: !3859, size: 64, offset: 320)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4325, file: !106, line: 316, baseType: !4391, size: 64, offset: 384)
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !106, line: 69, size: 832, elements: !4393)
!4393 = !{!4394, !4395, !4396, !4399, !4400}
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4392, file: !106, line: 70, baseType: !4329, size: 64)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4392, file: !106, line: 71, baseType: !124, size: 128, offset: 64)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4392, file: !106, line: 72, baseType: !4397, size: 64, offset: 192)
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4398, size: 64)
!4398 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !106, line: 72, flags: DIFlagFwdDecl)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4392, file: !106, line: 73, baseType: !151, size: 8, offset: 256)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4392, file: !106, line: 74, baseType: !228, size: 512, offset: 320)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !4325, file: !106, line: 318, baseType: !7, size: 32, offset: 448)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4325, file: !106, line: 319, baseType: !323, size: 16, offset: 480)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4325, file: !106, line: 320, baseType: !323, size: 16, offset: 496)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4325, file: !106, line: 321, baseType: !323, size: 16, offset: 512)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4325, file: !106, line: 322, baseType: !323, size: 16, offset: 528)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4325, file: !106, line: 323, baseType: !7, size: 32, offset: 544)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4325, file: !106, line: 324, baseType: !1336, size: 8, offset: 576)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4325, file: !106, line: 325, baseType: !1336, size: 8, offset: 584)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !4325, file: !106, line: 330, baseType: !1336, size: 8, offset: 592)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !4325, file: !106, line: 331, baseType: !1336, size: 8, offset: 600)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !4325, file: !106, line: 332, baseType: !1336, size: 8, offset: 608)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !4325, file: !106, line: 333, baseType: !1336, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !4325, file: !106, line: 334, baseType: !1336, size: 8, offset: 624)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4325, file: !106, line: 335, baseType: !1336, size: 8, offset: 632)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !4325, file: !106, line: 336, baseType: !862, size: 16, offset: 640)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !4325, file: !106, line: 337, baseType: !4417, size: 64, offset: 704)
!4417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4325, file: !106, line: 339, baseType: !4419, size: 64, offset: 768)
!4419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4420, size: 64)
!4420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !106, line: 858, size: 2048, elements: !4421)
!4421 = !{!4422, !4423, !4424, !4436, !4440, !4444, !4448, !4452, !4453, !4457, !4476, !4477, !4478}
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4420, file: !106, line: 859, baseType: !124, size: 128)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4420, file: !106, line: 860, baseType: !194, size: 64, offset: 128)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4420, file: !106, line: 861, baseType: !4425, size: 64, offset: 192)
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4427)
!4427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3440, line: 38, size: 256, elements: !4428)
!4428 = !{!4429, !4430, !4431, !4432, !4433, !4434, !4435}
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4427, file: !3440, line: 39, baseType: !422, size: 32)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4427, file: !3440, line: 39, baseType: !422, size: 32, offset: 32)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4427, file: !3440, line: 40, baseType: !422, size: 32, offset: 64)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4427, file: !3440, line: 40, baseType: !422, size: 32, offset: 96)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4427, file: !3440, line: 41, baseType: !422, size: 32, offset: 128)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4427, file: !3440, line: 41, baseType: !422, size: 32, offset: 160)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4427, file: !3440, line: 42, baseType: !3459, size: 64, offset: 192)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4420, file: !106, line: 862, baseType: !4437, size: 64, offset: 256)
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4438, size: 64)
!4438 = !DISubroutineType(types: !4439)
!4439 = !{!203, !4324, !4425}
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4420, file: !106, line: 863, baseType: !4441, size: 64, offset: 320)
!4441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4442, size: 64)
!4442 = !DISubroutineType(types: !4443)
!4443 = !{null, !4324}
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4420, file: !106, line: 864, baseType: !4445, size: 64, offset: 384)
!4445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4446, size: 64)
!4446 = !DISubroutineType(types: !4447)
!4447 = !{!203, !4324, !3470}
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4420, file: !106, line: 865, baseType: !4449, size: 64, offset: 448)
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = !DISubroutineType(types: !4451)
!4451 = !{!203, !4324}
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4420, file: !106, line: 866, baseType: !4441, size: 64, offset: 512)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4420, file: !106, line: 867, baseType: !4454, size: 64, offset: 576)
!4454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4455, size: 64)
!4455 = !DISubroutineType(types: !4456)
!4456 = !{!203, !4324, !203}
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4420, file: !106, line: 868, baseType: !4458, size: 64, offset: 640)
!4458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4459, size: 64)
!4459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4460)
!4460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !106, line: 795, size: 384, elements: !4461)
!4461 = !{!4462, !4468, !4472, !4473, !4474, !4475}
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4460, file: !106, line: 797, baseType: !4463, size: 64)
!4463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4464, size: 64)
!4464 = !DISubroutineType(types: !4465)
!4465 = !{!4466, !4324, !4467}
!4466 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !106, line: 772, baseType: !7)
!4467 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !106, line: 180, baseType: !7)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4460, file: !106, line: 801, baseType: !4469, size: 64, offset: 64)
!4469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4470, size: 64)
!4470 = !DISubroutineType(types: !4471)
!4471 = !{!4466, !4324}
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4460, file: !106, line: 804, baseType: !4469, size: 64, offset: 128)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4460, file: !106, line: 807, baseType: !4441, size: 64, offset: 192)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4460, file: !106, line: 808, baseType: !4441, size: 64, offset: 256)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4460, file: !106, line: 811, baseType: !4441, size: 64, offset: 320)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4420, file: !106, line: 869, baseType: !334, size: 64, offset: 704)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4420, file: !106, line: 870, baseType: !3428, size: 1152, offset: 768)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4420, file: !106, line: 871, baseType: !4479, size: 128, offset: 1920)
!4479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !106, line: 759, size: 128, elements: !4480)
!4480 = !{!4481, !4482}
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4479, file: !106, line: 760, baseType: !241)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4479, file: !106, line: 761, baseType: !124, size: 128)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4325, file: !106, line: 340, baseType: !142, size: 64, offset: 832)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4325, file: !106, line: 346, baseType: !3652, size: 128, offset: 896)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !4325, file: !106, line: 348, baseType: !4486, size: 32, offset: 1024)
!4486 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !106, line: 155, baseType: !203)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !4325, file: !106, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !4325, file: !106, line: 352, baseType: !1336, size: 8, offset: 1064)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !4325, file: !106, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !4325, file: !106, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !4325, file: !106, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !4325, file: !106, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !4325, file: !106, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !4325, file: !106, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !4325, file: !106, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !4325, file: !106, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !4325, file: !106, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !4325, file: !106, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !4325, file: !106, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !4325, file: !106, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !4325, file: !106, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !4325, file: !106, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !4325, file: !106, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !4325, file: !106, line: 376, baseType: !7, size: 32, offset: 1120)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !4325, file: !106, line: 377, baseType: !7, size: 32, offset: 1152)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !4325, file: !106, line: 380, baseType: !4507, size: 64, offset: 1216)
!4507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4508, size: 64)
!4508 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !106, line: 303, flags: DIFlagFwdDecl)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !4325, file: !106, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !4325, file: !106, line: 383, baseType: !203, size: 32, offset: 1312)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !4325, file: !106, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !4325, file: !106, line: 387, baseType: !4467, size: 32, offset: 1376)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4325, file: !106, line: 388, baseType: !225, size: 5568, offset: 1408)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !4325, file: !106, line: 390, baseType: !203, size: 32, offset: 6976)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4325, file: !106, line: 396, baseType: !7, size: 32, offset: 7008)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4325, file: !106, line: 397, baseType: !4517, size: 8704, offset: 7040)
!4517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 8704, elements: !4518)
!4518 = !{!4519}
!4519 = !DISubrange(count: 17)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4325, file: !106, line: 399, baseType: !490, size: 8, offset: 15744)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !4325, file: !106, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !4325, file: !106, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !4325, file: !106, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !4325, file: !106, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !4325, file: !106, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !4325, file: !106, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !4325, file: !106, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !4325, file: !106, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !4325, file: !106, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !4325, file: !106, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !4325, file: !106, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !4325, file: !106, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !4325, file: !106, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !4325, file: !106, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !4325, file: !106, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !4325, file: !106, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !4325, file: !106, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !4325, file: !106, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !4325, file: !106, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !4325, file: !106, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !4325, file: !106, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !4325, file: !106, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !4325, file: !106, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !4325, file: !106, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !4325, file: !106, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !4325, file: !106, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !4325, file: !106, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !4325, file: !106, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !4325, file: !106, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !4325, file: !106, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !4325, file: !106, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !4325, file: !106, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !4325, file: !106, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !4325, file: !106, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !4325, file: !106, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !4325, file: !106, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !4325, file: !106, line: 450, baseType: !4558, size: 16, offset: 15792)
!4558 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !106, line: 206, baseType: !323)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !4325, file: !106, line: 451, baseType: !750, size: 32, offset: 15808)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !4325, file: !106, line: 453, baseType: !4561, size: 512, offset: 15840)
!4561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !421, size: 512, elements: !1719)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !4325, file: !106, line: 454, baseType: !638, size: 64, offset: 16384)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !4325, file: !106, line: 455, baseType: !348, size: 64, offset: 16448)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !4325, file: !106, line: 456, baseType: !203, size: 32, offset: 16512)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !4325, file: !106, line: 457, baseType: !4566, size: 1088, offset: 16576)
!4566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 1088, elements: !4518)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !4325, file: !106, line: 458, baseType: !4566, size: 1088, offset: 17664)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !4325, file: !106, line: 469, baseType: !334, size: 64, offset: 18752)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !4325, file: !106, line: 471, baseType: !4570, size: 64, offset: 18816)
!4570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4571, size: 64)
!4571 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !106, line: 304, flags: DIFlagFwdDecl)
!4572 = !DIDerivedType(tag: DW_TAG_member, scope: !4325, file: !106, line: 478, baseType: !4573, size: 64, offset: 18880)
!4573 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4325, file: !106, line: 478, size: 64, elements: !4574)
!4574 = !{!4575, !4578}
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4573, file: !106, line: 479, baseType: !4576, size: 64)
!4576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4577, size: 64)
!4577 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !106, line: 305, flags: DIFlagFwdDecl)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4573, file: !106, line: 480, baseType: !4324, size: 64)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !4325, file: !106, line: 482, baseType: !862, size: 16, offset: 18944)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !4325, file: !106, line: 483, baseType: !1336, size: 8, offset: 18960)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !4325, file: !106, line: 497, baseType: !862, size: 16, offset: 18976)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !4325, file: !106, line: 498, baseType: !141, size: 64, offset: 19008)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !4325, file: !106, line: 499, baseType: !328, size: 64, offset: 19072)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !4325, file: !106, line: 500, baseType: !282, size: 64, offset: 19136)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !4325, file: !106, line: 502, baseType: !132, size: 64, offset: 19200)
!4586 = !DILocation(line: 231, column: 18, scope: !4320)
!4587 = !DILocalVariable(name: "res", scope: !4320, file: !3, line: 232, type: !200)
!4588 = !DILocation(line: 232, column: 19, scope: !4320)
!4589 = !DILocalVariable(name: "pnp_start", scope: !4320, file: !3, line: 233, type: !140)
!4590 = !DILocation(line: 233, column: 18, scope: !4320)
!4591 = !DILocalVariable(name: "pnp_end", scope: !4320, file: !3, line: 233, type: !140)
!4592 = !DILocation(line: 233, column: 29, scope: !4320)
!4593 = !DILocalVariable(name: "pci_start", scope: !4320, file: !3, line: 233, type: !140)
!4594 = !DILocation(line: 233, column: 38, scope: !4320)
!4595 = !DILocalVariable(name: "pci_end", scope: !4320, file: !3, line: 233, type: !140)
!4596 = !DILocation(line: 233, column: 49, scope: !4320)
!4597 = !DILocalVariable(name: "i", scope: !4320, file: !3, line: 234, type: !203)
!4598 = !DILocation(line: 234, column: 6, scope: !4320)
!4599 = !DILocalVariable(name: "j", scope: !4320, file: !3, line: 234, type: !203)
!4600 = !DILocation(line: 234, column: 9, scope: !4320)
!4601 = !DILocation(line: 245, column: 2, scope: !4320)
!4602 = !DILocation(line: 246, column: 10, scope: !4603)
!4603 = distinct !DILexicalBlock(scope: !4604, file: !3, line: 246, column: 3)
!4604 = distinct !DILexicalBlock(scope: !4320, file: !3, line: 245, column: 25)
!4605 = !DILocation(line: 246, column: 8, scope: !4603)
!4606 = !DILocation(line: 246, column: 15, scope: !4607)
!4607 = distinct !DILexicalBlock(scope: !4603, file: !3, line: 246, column: 3)
!4608 = !DILocation(line: 246, column: 17, scope: !4607)
!4609 = !DILocation(line: 246, column: 3, scope: !4603)
!4610 = !DILocalVariable(name: "flags", scope: !4611, file: !3, line: 247, type: !132)
!4611 = distinct !DILexicalBlock(scope: !4607, file: !3, line: 246, column: 47)
!4612 = !DILocation(line: 247, column: 18, scope: !4611)
!4613 = !DILocalVariable(name: "type", scope: !4611, file: !3, line: 247, type: !132)
!4614 = !DILocation(line: 247, column: 25, scope: !4611)
!4615 = !DILocation(line: 249, column: 12, scope: !4611)
!4616 = !DILocation(line: 249, column: 10, scope: !4611)
!4617 = !DILocation(line: 250, column: 11, scope: !4611)
!4618 = !DILocation(line: 250, column: 17, scope: !4611)
!4619 = !DILocation(line: 250, column: 9, scope: !4611)
!4620 = !DILocation(line: 251, column: 9, scope: !4621)
!4621 = distinct !DILexicalBlock(scope: !4611, file: !3, line: 251, column: 8)
!4622 = !DILocation(line: 251, column: 14, scope: !4621)
!4623 = !DILocation(line: 251, column: 17, scope: !4621)
!4624 = !DILocation(line: 251, column: 43, scope: !4621)
!4625 = !DILocation(line: 251, column: 8, scope: !4611)
!4626 = !DILocation(line: 252, column: 5, scope: !4621)
!4627 = !DILocation(line: 254, column: 8, scope: !4628)
!4628 = distinct !DILexicalBlock(scope: !4611, file: !3, line: 254, column: 8)
!4629 = !DILocation(line: 254, column: 14, scope: !4628)
!4630 = !DILocation(line: 254, column: 8, scope: !4611)
!4631 = !DILocation(line: 255, column: 5, scope: !4628)
!4632 = !DILocation(line: 257, column: 16, scope: !4611)
!4633 = !DILocation(line: 257, column: 14, scope: !4611)
!4634 = !DILocation(line: 258, column: 14, scope: !4611)
!4635 = !DILocation(line: 258, column: 12, scope: !4611)
!4636 = !DILocation(line: 259, column: 11, scope: !4637)
!4637 = distinct !DILexicalBlock(scope: !4611, file: !3, line: 259, column: 4)
!4638 = !DILocation(line: 259, column: 9, scope: !4637)
!4639 = !DILocation(line: 260, column: 33, scope: !4640)
!4640 = distinct !DILexicalBlock(scope: !4637, file: !3, line: 259, column: 4)
!4641 = !DILocation(line: 260, column: 38, scope: !4640)
!4642 = !DILocation(line: 260, column: 44, scope: !4640)
!4643 = !DILocation(line: 260, column: 16, scope: !4640)
!4644 = !DILocation(line: 260, column: 14, scope: !4640)
!4645 = !DILocation(line: 259, column: 4, scope: !4637)
!4646 = !DILocation(line: 261, column: 9, scope: !4647)
!4647 = distinct !DILexicalBlock(scope: !4648, file: !3, line: 261, column: 9)
!4648 = distinct !DILexicalBlock(scope: !4640, file: !3, line: 260, column: 54)
!4649 = !DILocation(line: 261, column: 14, scope: !4647)
!4650 = !DILocation(line: 261, column: 20, scope: !4647)
!4651 = !DILocation(line: 261, column: 25, scope: !4647)
!4652 = !DILocation(line: 261, column: 28, scope: !4647)
!4653 = !DILocation(line: 261, column: 33, scope: !4647)
!4654 = !DILocation(line: 261, column: 37, scope: !4647)
!4655 = !DILocation(line: 261, column: 9, scope: !4648)
!4656 = !DILocation(line: 262, column: 6, scope: !4647)
!4657 = !DILocation(line: 264, column: 17, scope: !4648)
!4658 = !DILocation(line: 264, column: 22, scope: !4648)
!4659 = !DILocation(line: 264, column: 15, scope: !4648)
!4660 = !DILocation(line: 265, column: 15, scope: !4648)
!4661 = !DILocation(line: 265, column: 20, scope: !4648)
!4662 = !DILocation(line: 265, column: 13, scope: !4648)
!4663 = !DILocation(line: 271, column: 9, scope: !4664)
!4664 = distinct !DILexicalBlock(scope: !4648, file: !3, line: 271, column: 9)
!4665 = !DILocation(line: 271, column: 19, scope: !4664)
!4666 = !DILocation(line: 271, column: 17, scope: !4664)
!4667 = !DILocation(line: 271, column: 29, scope: !4664)
!4668 = !DILocation(line: 271, column: 32, scope: !4664)
!4669 = !DILocation(line: 271, column: 44, scope: !4664)
!4670 = !DILocation(line: 271, column: 42, scope: !4664)
!4671 = !DILocation(line: 271, column: 9, scope: !4648)
!4672 = !DILocation(line: 272, column: 6, scope: !4664)
!4673 = !DILocation(line: 281, column: 9, scope: !4674)
!4674 = distinct !DILexicalBlock(scope: !4648, file: !3, line: 281, column: 9)
!4675 = !DILocation(line: 281, column: 22, scope: !4674)
!4676 = !DILocation(line: 281, column: 19, scope: !4674)
!4677 = !DILocation(line: 281, column: 32, scope: !4674)
!4678 = !DILocation(line: 282, column: 9, scope: !4674)
!4679 = !DILocation(line: 282, column: 20, scope: !4674)
!4680 = !DILocation(line: 282, column: 17, scope: !4674)
!4681 = !DILocation(line: 281, column: 9, scope: !4648)
!4682 = !DILocation(line: 283, column: 6, scope: !4674)
!4683 = !DILocation(line: 290, column: 5, scope: !4648)
!4684 = !DILocation(line: 294, column: 5, scope: !4648)
!4685 = !DILocation(line: 294, column: 10, scope: !4648)
!4686 = !DILocation(line: 294, column: 16, scope: !4648)
!4687 = !DILocation(line: 295, column: 4, scope: !4648)
!4688 = !DILocation(line: 260, column: 50, scope: !4640)
!4689 = !DILocation(line: 259, column: 4, scope: !4640)
!4690 = distinct !{!4690, !4645, !4691}
!4691 = !DILocation(line: 295, column: 4, scope: !4637)
!4692 = !DILocation(line: 296, column: 3, scope: !4611)
!4693 = !DILocation(line: 246, column: 43, scope: !4607)
!4694 = !DILocation(line: 246, column: 3, scope: !4607)
!4695 = distinct !{!4695, !4609, !4696}
!4696 = !DILocation(line: 296, column: 3, scope: !4603)
!4697 = distinct !{!4697, !4601, !4698}
!4698 = !DILocation(line: 297, column: 2, scope: !4320)
!4699 = !DILocation(line: 298, column: 1, scope: !4320)
!4700 = distinct !DISubprogram(name: "quirk_amd_mmconfig_area", scope: !3, file: !3, line: 304, type: !219, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!4701 = !DILocalVariable(name: "dev", arg: 1, scope: !4700, file: !3, line: 304, type: !221)
!4702 = !DILocation(line: 304, column: 53, scope: !4700)
!4703 = !DILocalVariable(name: "start", scope: !4700, file: !3, line: 306, type: !140)
!4704 = !DILocation(line: 306, column: 18, scope: !4700)
!4705 = !DILocalVariable(name: "end", scope: !4700, file: !3, line: 306, type: !140)
!4706 = !DILocation(line: 306, column: 25, scope: !4700)
!4707 = !DILocalVariable(name: "pnp_res", scope: !4700, file: !3, line: 307, type: !183)
!4708 = !DILocation(line: 307, column: 23, scope: !4700)
!4709 = !DILocalVariable(name: "res", scope: !4700, file: !3, line: 308, type: !200)
!4710 = !DILocation(line: 308, column: 19, scope: !4700)
!4711 = !DILocalVariable(name: "mmconfig_res", scope: !4700, file: !3, line: 309, type: !188)
!4712 = !DILocation(line: 309, column: 18, scope: !4700)
!4713 = !DILocalVariable(name: "mmconfig", scope: !4700, file: !3, line: 309, type: !200)
!4714 = !DILocation(line: 309, column: 33, scope: !4700)
!4715 = !DILocation(line: 311, column: 13, scope: !4700)
!4716 = !DILocation(line: 311, column: 11, scope: !4700)
!4717 = !DILocation(line: 312, column: 7, scope: !4718)
!4718 = distinct !DILexicalBlock(scope: !4700, file: !3, line: 312, column: 6)
!4719 = !DILocation(line: 312, column: 6, scope: !4700)
!4720 = !DILocation(line: 313, column: 3, scope: !4718)
!4721 = !DILocalVariable(name: "__mptr", scope: !4722, file: !3, line: 315, type: !118)
!4722 = distinct !DILexicalBlock(scope: !4723, file: !3, line: 315, column: 2)
!4723 = distinct !DILexicalBlock(scope: !4700, file: !3, line: 315, column: 2)
!4724 = !DILocation(line: 315, column: 2, scope: !4722)
!4725 = !DILocation(line: 315, column: 2, scope: !4726)
!4726 = distinct !DILexicalBlock(scope: !4722, file: !3, line: 315, column: 2)
!4727 = !DILocation(line: 315, column: 2, scope: !4723)
!4728 = !DILocation(line: 315, column: 2, scope: !4729)
!4729 = distinct !DILexicalBlock(scope: !4723, file: !3, line: 315, column: 2)
!4730 = !DILocation(line: 316, column: 10, scope: !4731)
!4731 = distinct !DILexicalBlock(scope: !4729, file: !3, line: 315, column: 54)
!4732 = !DILocation(line: 316, column: 19, scope: !4731)
!4733 = !DILocation(line: 316, column: 7, scope: !4731)
!4734 = !DILocation(line: 317, column: 7, scope: !4735)
!4735 = distinct !DILexicalBlock(scope: !4731, file: !3, line: 317, column: 7)
!4736 = !DILocation(line: 317, column: 12, scope: !4735)
!4737 = !DILocation(line: 317, column: 18, scope: !4735)
!4738 = !DILocation(line: 317, column: 28, scope: !4735)
!4739 = !DILocation(line: 317, column: 16, scope: !4735)
!4740 = !DILocation(line: 317, column: 34, scope: !4735)
!4741 = !DILocation(line: 317, column: 37, scope: !4735)
!4742 = !DILocation(line: 317, column: 42, scope: !4735)
!4743 = !DILocation(line: 317, column: 50, scope: !4735)
!4744 = !DILocation(line: 317, column: 60, scope: !4735)
!4745 = !DILocation(line: 317, column: 48, scope: !4735)
!4746 = !DILocation(line: 317, column: 64, scope: !4735)
!4747 = !DILocation(line: 318, column: 8, scope: !4735)
!4748 = !DILocation(line: 318, column: 13, scope: !4735)
!4749 = !DILocation(line: 318, column: 22, scope: !4735)
!4750 = !DILocation(line: 318, column: 32, scope: !4735)
!4751 = !DILocation(line: 318, column: 19, scope: !4735)
!4752 = !DILocation(line: 318, column: 38, scope: !4735)
!4753 = !DILocation(line: 318, column: 41, scope: !4735)
!4754 = !DILocation(line: 318, column: 46, scope: !4735)
!4755 = !DILocation(line: 318, column: 53, scope: !4735)
!4756 = !DILocation(line: 318, column: 63, scope: !4735)
!4757 = !DILocation(line: 318, column: 50, scope: !4735)
!4758 = !DILocation(line: 317, column: 7, scope: !4731)
!4759 = !DILocation(line: 319, column: 4, scope: !4735)
!4760 = !DILocation(line: 321, column: 3, scope: !4731)
!4761 = !DILocation(line: 324, column: 7, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !4731, file: !3, line: 324, column: 7)
!4763 = !DILocation(line: 324, column: 17, scope: !4762)
!4764 = !DILocation(line: 324, column: 25, scope: !4762)
!4765 = !DILocation(line: 324, column: 30, scope: !4762)
!4766 = !DILocation(line: 324, column: 23, scope: !4762)
!4767 = !DILocation(line: 324, column: 7, scope: !4731)
!4768 = !DILocation(line: 325, column: 12, scope: !4769)
!4769 = distinct !DILexicalBlock(scope: !4762, file: !3, line: 324, column: 37)
!4770 = !DILocation(line: 325, column: 22, scope: !4769)
!4771 = !DILocation(line: 325, column: 10, scope: !4769)
!4772 = !DILocation(line: 326, column: 10, scope: !4769)
!4773 = !DILocation(line: 326, column: 15, scope: !4769)
!4774 = !DILocation(line: 326, column: 21, scope: !4769)
!4775 = !DILocation(line: 326, column: 8, scope: !4769)
!4776 = !DILocation(line: 327, column: 25, scope: !4769)
!4777 = !DILocation(line: 327, column: 30, scope: !4769)
!4778 = !DILocation(line: 327, column: 37, scope: !4769)
!4779 = !DILocation(line: 327, column: 4, scope: !4769)
!4780 = !DILocation(line: 328, column: 3, scope: !4769)
!4781 = !DILocation(line: 329, column: 7, scope: !4782)
!4782 = distinct !DILexicalBlock(scope: !4731, file: !3, line: 329, column: 7)
!4783 = !DILocation(line: 329, column: 17, scope: !4782)
!4784 = !DILocation(line: 329, column: 23, scope: !4782)
!4785 = !DILocation(line: 329, column: 28, scope: !4782)
!4786 = !DILocation(line: 329, column: 21, scope: !4782)
!4787 = !DILocation(line: 329, column: 7, scope: !4731)
!4788 = !DILocation(line: 330, column: 12, scope: !4789)
!4789 = distinct !DILexicalBlock(scope: !4782, file: !3, line: 329, column: 33)
!4790 = !DILocation(line: 330, column: 17, scope: !4789)
!4791 = !DILocation(line: 330, column: 21, scope: !4789)
!4792 = !DILocation(line: 330, column: 10, scope: !4789)
!4793 = !DILocation(line: 331, column: 10, scope: !4789)
!4794 = !DILocation(line: 331, column: 20, scope: !4789)
!4795 = !DILocation(line: 331, column: 8, scope: !4789)
!4796 = !DILocation(line: 332, column: 25, scope: !4789)
!4797 = !DILocation(line: 332, column: 30, scope: !4789)
!4798 = !DILocation(line: 332, column: 37, scope: !4789)
!4799 = !DILocation(line: 332, column: 4, scope: !4789)
!4800 = !DILocation(line: 333, column: 3, scope: !4789)
!4801 = !DILocation(line: 334, column: 3, scope: !4731)
!4802 = !DILocalVariable(name: "__mptr", scope: !4803, file: !3, line: 315, type: !118)
!4803 = distinct !DILexicalBlock(scope: !4729, file: !3, line: 315, column: 2)
!4804 = !DILocation(line: 315, column: 2, scope: !4803)
!4805 = !DILocation(line: 315, column: 2, scope: !4806)
!4806 = distinct !DILexicalBlock(scope: !4803, file: !3, line: 315, column: 2)
!4807 = distinct !{!4807, !4727, !4808}
!4808 = !DILocation(line: 335, column: 2, scope: !4723)
!4809 = !DILocation(line: 336, column: 1, scope: !4700)
!4810 = distinct !DISubprogram(name: "quirk_intel_mch", scope: !3, file: !3, line: 362, type: !219, scopeLine: 363, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!4811 = !DILocalVariable(name: "dev", arg: 1, scope: !4810, file: !3, line: 362, type: !221)
!4812 = !DILocation(line: 362, column: 45, scope: !4810)
!4813 = !DILocalVariable(name: "host", scope: !4810, file: !3, line: 364, type: !4324)
!4814 = !DILocation(line: 364, column: 18, scope: !4810)
!4815 = !DILocalVariable(name: "addr_lo", scope: !4810, file: !3, line: 365, type: !421)
!4816 = !DILocation(line: 365, column: 6, scope: !4810)
!4817 = !DILocalVariable(name: "addr_hi", scope: !4810, file: !3, line: 365, type: !421)
!4818 = !DILocation(line: 365, column: 15, scope: !4810)
!4819 = !DILocalVariable(name: "region", scope: !4810, file: !3, line: 366, type: !4820)
!4820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus_region", file: !106, line: 754, size: 128, elements: !4821)
!4821 = !{!4822, !4824}
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4820, file: !106, line: 755, baseType: !4823, size: 64)
!4823 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_addr_t", file: !106, line: 749, baseType: !142)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4820, file: !106, line: 756, baseType: !4823, size: 64, offset: 64)
!4825 = !DILocation(line: 366, column: 24, scope: !4810)
!4826 = !DILocalVariable(name: "mch", scope: !4810, file: !3, line: 367, type: !188)
!4827 = !DILocation(line: 367, column: 18, scope: !4810)
!4828 = !DILocalVariable(name: "pnp_res", scope: !4810, file: !3, line: 368, type: !183)
!4829 = !DILocation(line: 368, column: 23, scope: !4810)
!4830 = !DILocalVariable(name: "res", scope: !4810, file: !3, line: 369, type: !200)
!4831 = !DILocation(line: 369, column: 19, scope: !4810)
!4832 = !DILocation(line: 371, column: 9, scope: !4810)
!4833 = !DILocation(line: 371, column: 7, scope: !4810)
!4834 = !DILocation(line: 372, column: 7, scope: !4835)
!4835 = distinct !DILexicalBlock(scope: !4810, file: !3, line: 372, column: 6)
!4836 = !DILocation(line: 372, column: 6, scope: !4810)
!4837 = !DILocation(line: 373, column: 3, scope: !4835)
!4838 = !DILocation(line: 388, column: 24, scope: !4810)
!4839 = !DILocation(line: 388, column: 2, scope: !4810)
!4840 = !DILocation(line: 389, column: 17, scope: !4810)
!4841 = !DILocation(line: 389, column: 25, scope: !4810)
!4842 = !DILocation(line: 389, column: 9, scope: !4810)
!4843 = !DILocation(line: 389, column: 15, scope: !4810)
!4844 = !DILocation(line: 390, column: 24, scope: !4810)
!4845 = !DILocation(line: 390, column: 2, scope: !4810)
!4846 = !DILocation(line: 391, column: 24, scope: !4810)
!4847 = !DILocation(line: 391, column: 18, scope: !4810)
!4848 = !DILocation(line: 391, column: 32, scope: !4810)
!4849 = !DILocation(line: 391, column: 9, scope: !4810)
!4850 = !DILocation(line: 391, column: 15, scope: !4810)
!4851 = !DILocation(line: 392, column: 22, scope: !4810)
!4852 = !DILocation(line: 392, column: 28, scope: !4810)
!4853 = !DILocation(line: 392, column: 38, scope: !4810)
!4854 = !DILocation(line: 392, column: 9, scope: !4810)
!4855 = !DILocation(line: 392, column: 13, scope: !4810)
!4856 = !DILocation(line: 394, column: 2, scope: !4810)
!4857 = !DILocation(line: 395, column: 6, scope: !4810)
!4858 = !DILocation(line: 395, column: 12, scope: !4810)
!4859 = !DILocation(line: 396, column: 26, scope: !4810)
!4860 = !DILocation(line: 396, column: 32, scope: !4810)
!4861 = !DILocation(line: 396, column: 2, scope: !4810)
!4862 = !DILocalVariable(name: "__mptr", scope: !4863, file: !3, line: 398, type: !118)
!4863 = distinct !DILexicalBlock(scope: !4864, file: !3, line: 398, column: 2)
!4864 = distinct !DILexicalBlock(scope: !4810, file: !3, line: 398, column: 2)
!4865 = !DILocation(line: 398, column: 2, scope: !4863)
!4866 = !DILocation(line: 398, column: 2, scope: !4867)
!4867 = distinct !DILexicalBlock(scope: !4863, file: !3, line: 398, column: 2)
!4868 = !DILocation(line: 398, column: 2, scope: !4864)
!4869 = !DILocation(line: 398, column: 2, scope: !4870)
!4870 = distinct !DILexicalBlock(scope: !4864, file: !3, line: 398, column: 2)
!4871 = !DILocation(line: 399, column: 10, scope: !4872)
!4872 = distinct !DILexicalBlock(scope: !4870, file: !3, line: 398, column: 54)
!4873 = !DILocation(line: 399, column: 19, scope: !4872)
!4874 = !DILocation(line: 399, column: 7, scope: !4872)
!4875 = !DILocation(line: 400, column: 7, scope: !4876)
!4876 = distinct !DILexicalBlock(scope: !4872, file: !3, line: 400, column: 7)
!4877 = !DILocation(line: 400, column: 12, scope: !4876)
!4878 = !DILocation(line: 400, column: 22, scope: !4876)
!4879 = !DILocation(line: 400, column: 16, scope: !4876)
!4880 = !DILocation(line: 400, column: 28, scope: !4876)
!4881 = !DILocation(line: 400, column: 31, scope: !4876)
!4882 = !DILocation(line: 400, column: 36, scope: !4876)
!4883 = !DILocation(line: 400, column: 48, scope: !4876)
!4884 = !DILocation(line: 400, column: 42, scope: !4876)
!4885 = !DILocation(line: 400, column: 7, scope: !4872)
!4886 = !DILocation(line: 401, column: 4, scope: !4876)
!4887 = !DILocation(line: 402, column: 7, scope: !4888)
!4888 = distinct !DILexicalBlock(scope: !4872, file: !3, line: 402, column: 7)
!4889 = !DILocation(line: 402, column: 12, scope: !4888)
!4890 = !DILocation(line: 402, column: 25, scope: !4888)
!4891 = !DILocation(line: 402, column: 18, scope: !4888)
!4892 = !DILocation(line: 402, column: 31, scope: !4888)
!4893 = !DILocation(line: 402, column: 34, scope: !4888)
!4894 = !DILocation(line: 402, column: 39, scope: !4888)
!4895 = !DILocation(line: 402, column: 50, scope: !4888)
!4896 = !DILocation(line: 402, column: 43, scope: !4888)
!4897 = !DILocation(line: 402, column: 7, scope: !4872)
!4898 = !DILocation(line: 403, column: 4, scope: !4888)
!4899 = !DILocation(line: 405, column: 3, scope: !4872)
!4900 = !DILocation(line: 407, column: 20, scope: !4872)
!4901 = !DILocation(line: 407, column: 3, scope: !4872)
!4902 = !DILocation(line: 407, column: 8, scope: !4872)
!4903 = !DILocation(line: 407, column: 14, scope: !4872)
!4904 = !DILocation(line: 408, column: 18, scope: !4872)
!4905 = !DILocation(line: 408, column: 3, scope: !4872)
!4906 = !DILocation(line: 408, column: 8, scope: !4872)
!4907 = !DILocation(line: 408, column: 12, scope: !4872)
!4908 = !DILocation(line: 409, column: 3, scope: !4872)
!4909 = !DILocalVariable(name: "__mptr", scope: !4910, file: !3, line: 398, type: !118)
!4910 = distinct !DILexicalBlock(scope: !4870, file: !3, line: 398, column: 2)
!4911 = !DILocation(line: 398, column: 2, scope: !4910)
!4912 = !DILocation(line: 398, column: 2, scope: !4913)
!4913 = distinct !DILexicalBlock(scope: !4910, file: !3, line: 398, column: 2)
!4914 = distinct !{!4914, !4868, !4915}
!4915 = !DILocation(line: 410, column: 2, scope: !4864)
!4916 = !DILocation(line: 412, column: 14, scope: !4810)
!4917 = !DILocation(line: 412, column: 2, scope: !4810)
!4918 = !DILocation(line: 413, column: 1, scope: !4810)
!4919 = distinct !DISubprogram(name: "pnp_option_is_dependent", scope: !121, file: !121, line: 94, type: !4920, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!4920 = !DISubroutineType(types: !4921)
!4921 = !{!203, !119}
!4922 = !DILocalVariable(name: "option", arg: 1, scope: !4919, file: !121, line: 94, type: !119)
!4923 = !DILocation(line: 94, column: 62, scope: !4919)
!4924 = !DILocation(line: 96, column: 9, scope: !4919)
!4925 = !DILocation(line: 96, column: 17, scope: !4919)
!4926 = !DILocation(line: 96, column: 23, scope: !4919)
!4927 = !DILocation(line: 96, column: 2, scope: !4919)
!4928 = distinct !DISubprogram(name: "pnp_option_set", scope: !121, file: !121, line: 99, type: !4929, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!4929 = !DISubroutineType(types: !4930)
!4930 = !{!7, !119}
!4931 = !DILocalVariable(name: "option", arg: 1, scope: !4928, file: !121, line: 99, type: !119)
!4932 = !DILocation(line: 99, column: 62, scope: !4928)
!4933 = !DILocation(line: 101, column: 10, scope: !4928)
!4934 = !DILocation(line: 101, column: 18, scope: !4928)
!4935 = !DILocation(line: 101, column: 24, scope: !4928)
!4936 = !DILocation(line: 101, column: 49, scope: !4928)
!4937 = !DILocation(line: 101, column: 2, scope: !4928)
!4938 = distinct !DISubprogram(name: "quirk_awe32_add_ports", scope: !3, file: !3, line: 26, type: !4939, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!4939 = !DISubroutineType(types: !4940)
!4940 = !{null, !221, !119, !7}
!4941 = !DILocalVariable(name: "s", arg: 1, scope: !4942, file: !94, line: 445, type: !938)
!4942 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !94, file: !94, line: 445, type: !4943, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!4943 = !DISubroutineType(types: !4944)
!4944 = !{!118, !938, !177, !328}
!4945 = !DILocation(line: 445, column: 72, scope: !4942, inlinedAt: !4946)
!4946 = distinct !DILocation(line: 552, column: 10, scope: !4947, inlinedAt: !4952)
!4947 = distinct !DILexicalBlock(scope: !4948, file: !94, line: 540, column: 34)
!4948 = distinct !DILexicalBlock(scope: !4949, file: !94, line: 540, column: 6)
!4949 = distinct !DISubprogram(name: "kmalloc", scope: !94, file: !94, line: 538, type: !4950, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!4950 = !DISubroutineType(types: !4951)
!4951 = !{!118, !328, !177}
!4952 = distinct !DILocation(line: 32, column: 15, scope: !4938)
!4953 = !DILocalVariable(name: "flags", arg: 2, scope: !4942, file: !94, line: 446, type: !177)
!4954 = !DILocation(line: 446, column: 9, scope: !4942, inlinedAt: !4946)
!4955 = !DILocalVariable(name: "size", arg: 3, scope: !4942, file: !94, line: 446, type: !328)
!4956 = !DILocation(line: 446, column: 23, scope: !4942, inlinedAt: !4946)
!4957 = !DILocalVariable(name: "ret", scope: !4942, file: !94, line: 448, type: !118)
!4958 = !DILocation(line: 448, column: 8, scope: !4942, inlinedAt: !4946)
!4959 = !DILocalVariable(name: "flags", arg: 1, scope: !4960, file: !94, line: 318, type: !177)
!4960 = distinct !DISubprogram(name: "kmalloc_type", scope: !94, file: !94, line: 318, type: !4961, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!4961 = !DISubroutineType(types: !4962)
!4962 = !{!93, !177}
!4963 = !DILocation(line: 318, column: 67, scope: !4960, inlinedAt: !4964)
!4964 = distinct !DILocation(line: 553, column: 20, scope: !4947, inlinedAt: !4952)
!4965 = !DILocalVariable(name: "size", arg: 1, scope: !4966, file: !94, line: 346, type: !328)
!4966 = distinct !DISubprogram(name: "kmalloc_index", scope: !94, file: !94, line: 346, type: !4967, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!4967 = !DISubroutineType(types: !4968)
!4968 = !{!7, !328}
!4969 = !DILocation(line: 346, column: 58, scope: !4966, inlinedAt: !4970)
!4970 = distinct !DILocation(line: 547, column: 11, scope: !4947, inlinedAt: !4952)
!4971 = !DILocalVariable(name: "size", arg: 1, scope: !4972, file: !94, line: 472, type: !328)
!4972 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !94, file: !94, line: 472, type: !4973, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!4973 = !DISubroutineType(types: !4974)
!4974 = !{!118, !328, !177, !7}
!4975 = !DILocation(line: 472, column: 28, scope: !4972, inlinedAt: !4976)
!4976 = distinct !DILocation(line: 481, column: 9, scope: !4977, inlinedAt: !4978)
!4977 = distinct !DISubprogram(name: "kmalloc_large", scope: !94, file: !94, line: 478, type: !4950, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!4978 = distinct !DILocation(line: 545, column: 11, scope: !4979, inlinedAt: !4952)
!4979 = distinct !DILexicalBlock(scope: !4947, file: !94, line: 544, column: 7)
!4980 = !DILocalVariable(name: "flags", arg: 2, scope: !4972, file: !94, line: 472, type: !177)
!4981 = !DILocation(line: 472, column: 40, scope: !4972, inlinedAt: !4976)
!4982 = !DILocalVariable(name: "order", arg: 3, scope: !4972, file: !94, line: 472, type: !7)
!4983 = !DILocation(line: 472, column: 60, scope: !4972, inlinedAt: !4976)
!4984 = !DILocalVariable(name: "size", arg: 1, scope: !4977, file: !94, line: 478, type: !328)
!4985 = !DILocation(line: 478, column: 51, scope: !4977, inlinedAt: !4978)
!4986 = !DILocalVariable(name: "flags", arg: 2, scope: !4977, file: !94, line: 478, type: !177)
!4987 = !DILocation(line: 478, column: 63, scope: !4977, inlinedAt: !4978)
!4988 = !DILocalVariable(name: "order", scope: !4977, file: !94, line: 480, type: !7)
!4989 = !DILocation(line: 480, column: 15, scope: !4977, inlinedAt: !4978)
!4990 = !DILocalVariable(name: "size", arg: 1, scope: !4949, file: !94, line: 538, type: !328)
!4991 = !DILocation(line: 538, column: 45, scope: !4949, inlinedAt: !4952)
!4992 = !DILocalVariable(name: "flags", arg: 2, scope: !4949, file: !94, line: 538, type: !177)
!4993 = !DILocation(line: 538, column: 57, scope: !4949, inlinedAt: !4952)
!4994 = !DILocalVariable(name: "index", scope: !4947, file: !94, line: 542, type: !7)
!4995 = !DILocation(line: 542, column: 16, scope: !4947, inlinedAt: !4952)
!4996 = !DILocalVariable(name: "dev", arg: 1, scope: !4938, file: !3, line: 26, type: !221)
!4997 = !DILocation(line: 26, column: 51, scope: !4938)
!4998 = !DILocalVariable(name: "option", arg: 2, scope: !4938, file: !3, line: 27, type: !119)
!4999 = !DILocation(line: 27, column: 26, scope: !4938)
!5000 = !DILocalVariable(name: "offset", arg: 3, scope: !4938, file: !3, line: 28, type: !7)
!5001 = !DILocation(line: 28, column: 20, scope: !4938)
!5002 = !DILocalVariable(name: "new_option", scope: !4938, file: !3, line: 30, type: !119)
!5003 = !DILocation(line: 30, column: 21, scope: !4938)
!5004 = !DILocation(line: 540, column: 27, scope: !4948, inlinedAt: !4952)
!5005 = !DILocation(line: 540, column: 6, scope: !4948, inlinedAt: !4952)
!5006 = !DILocation(line: 540, column: 6, scope: !4949, inlinedAt: !4952)
!5007 = !DILocation(line: 544, column: 7, scope: !4979, inlinedAt: !4952)
!5008 = !DILocation(line: 544, column: 12, scope: !4979, inlinedAt: !4952)
!5009 = !DILocation(line: 544, column: 7, scope: !4947, inlinedAt: !4952)
!5010 = !DILocation(line: 545, column: 25, scope: !4979, inlinedAt: !4952)
!5011 = !DILocation(line: 545, column: 31, scope: !4979, inlinedAt: !4952)
!5012 = !DILocation(line: 480, column: 33, scope: !4977, inlinedAt: !4978)
!5013 = !DILocation(line: 480, column: 23, scope: !4977, inlinedAt: !4978)
!5014 = !DILocation(line: 481, column: 29, scope: !4977, inlinedAt: !4978)
!5015 = !DILocation(line: 481, column: 35, scope: !4977, inlinedAt: !4978)
!5016 = !DILocation(line: 481, column: 42, scope: !4977, inlinedAt: !4978)
!5017 = !DILocation(line: 474, column: 23, scope: !4972, inlinedAt: !4976)
!5018 = !DILocation(line: 474, column: 29, scope: !4972, inlinedAt: !4976)
!5019 = !DILocation(line: 474, column: 36, scope: !4972, inlinedAt: !4976)
!5020 = !DILocation(line: 474, column: 9, scope: !4972, inlinedAt: !4976)
!5021 = !DILocation(line: 545, column: 4, scope: !4979, inlinedAt: !4952)
!5022 = !DILocation(line: 547, column: 25, scope: !4947, inlinedAt: !4952)
!5023 = !DILocation(line: 348, column: 7, scope: !5024, inlinedAt: !4970)
!5024 = distinct !DILexicalBlock(scope: !4966, file: !94, line: 348, column: 6)
!5025 = !DILocation(line: 348, column: 6, scope: !4966, inlinedAt: !4970)
!5026 = !DILocation(line: 349, column: 3, scope: !5024, inlinedAt: !4970)
!5027 = !DILocation(line: 351, column: 6, scope: !5028, inlinedAt: !4970)
!5028 = distinct !DILexicalBlock(scope: !4966, file: !94, line: 351, column: 6)
!5029 = !DILocation(line: 351, column: 11, scope: !5028, inlinedAt: !4970)
!5030 = !DILocation(line: 351, column: 6, scope: !4966, inlinedAt: !4970)
!5031 = !DILocation(line: 352, column: 3, scope: !5028, inlinedAt: !4970)
!5032 = !DILocation(line: 354, column: 32, scope: !5033, inlinedAt: !4970)
!5033 = distinct !DILexicalBlock(scope: !4966, file: !94, line: 354, column: 6)
!5034 = !DILocation(line: 354, column: 37, scope: !5033, inlinedAt: !4970)
!5035 = !DILocation(line: 354, column: 42, scope: !5033, inlinedAt: !4970)
!5036 = !DILocation(line: 354, column: 45, scope: !5033, inlinedAt: !4970)
!5037 = !DILocation(line: 354, column: 50, scope: !5033, inlinedAt: !4970)
!5038 = !DILocation(line: 354, column: 6, scope: !4966, inlinedAt: !4970)
!5039 = !DILocation(line: 355, column: 3, scope: !5033, inlinedAt: !4970)
!5040 = !DILocation(line: 356, column: 32, scope: !5041, inlinedAt: !4970)
!5041 = distinct !DILexicalBlock(scope: !4966, file: !94, line: 356, column: 6)
!5042 = !DILocation(line: 356, column: 37, scope: !5041, inlinedAt: !4970)
!5043 = !DILocation(line: 356, column: 43, scope: !5041, inlinedAt: !4970)
!5044 = !DILocation(line: 356, column: 46, scope: !5041, inlinedAt: !4970)
!5045 = !DILocation(line: 356, column: 51, scope: !5041, inlinedAt: !4970)
!5046 = !DILocation(line: 356, column: 6, scope: !4966, inlinedAt: !4970)
!5047 = !DILocation(line: 357, column: 3, scope: !5041, inlinedAt: !4970)
!5048 = !DILocation(line: 358, column: 6, scope: !5049, inlinedAt: !4970)
!5049 = distinct !DILexicalBlock(scope: !4966, file: !94, line: 358, column: 6)
!5050 = !DILocation(line: 358, column: 11, scope: !5049, inlinedAt: !4970)
!5051 = !DILocation(line: 358, column: 6, scope: !4966, inlinedAt: !4970)
!5052 = !DILocation(line: 358, column: 26, scope: !5049, inlinedAt: !4970)
!5053 = !DILocation(line: 359, column: 6, scope: !5054, inlinedAt: !4970)
!5054 = distinct !DILexicalBlock(scope: !4966, file: !94, line: 359, column: 6)
!5055 = !DILocation(line: 359, column: 11, scope: !5054, inlinedAt: !4970)
!5056 = !DILocation(line: 359, column: 6, scope: !4966, inlinedAt: !4970)
!5057 = !DILocation(line: 359, column: 26, scope: !5054, inlinedAt: !4970)
!5058 = !DILocation(line: 360, column: 6, scope: !5059, inlinedAt: !4970)
!5059 = distinct !DILexicalBlock(scope: !4966, file: !94, line: 360, column: 6)
!5060 = !DILocation(line: 360, column: 11, scope: !5059, inlinedAt: !4970)
!5061 = !DILocation(line: 360, column: 6, scope: !4966, inlinedAt: !4970)
!5062 = !DILocation(line: 360, column: 26, scope: !5059, inlinedAt: !4970)
!5063 = !DILocation(line: 361, column: 6, scope: !5064, inlinedAt: !4970)
!5064 = distinct !DILexicalBlock(scope: !4966, file: !94, line: 361, column: 6)
!5065 = !DILocation(line: 361, column: 11, scope: !5064, inlinedAt: !4970)
!5066 = !DILocation(line: 361, column: 6, scope: !4966, inlinedAt: !4970)
!5067 = !DILocation(line: 361, column: 26, scope: !5064, inlinedAt: !4970)
!5068 = !DILocation(line: 362, column: 6, scope: !5069, inlinedAt: !4970)
!5069 = distinct !DILexicalBlock(scope: !4966, file: !94, line: 362, column: 6)
!5070 = !DILocation(line: 362, column: 11, scope: !5069, inlinedAt: !4970)
!5071 = !DILocation(line: 362, column: 6, scope: !4966, inlinedAt: !4970)
!5072 = !DILocation(line: 362, column: 26, scope: !5069, inlinedAt: !4970)
!5073 = !DILocation(line: 363, column: 6, scope: !5074, inlinedAt: !4970)
!5074 = distinct !DILexicalBlock(scope: !4966, file: !94, line: 363, column: 6)
!5075 = !DILocation(line: 363, column: 11, scope: !5074, inlinedAt: !4970)
!5076 = !DILocation(line: 363, column: 6, scope: !4966, inlinedAt: !4970)
!5077 = !DILocation(line: 363, column: 26, scope: !5074, inlinedAt: !4970)
!5078 = !DILocation(line: 364, column: 6, scope: !5079, inlinedAt: !4970)
!5079 = distinct !DILexicalBlock(scope: !4966, file: !94, line: 364, column: 6)
!5080 = !DILocation(line: 364, column: 11, scope: !5079, inlinedAt: !4970)
!5081 = !DILocation(line: 364, column: 6, scope: !4966, inlinedAt: !4970)
!5082 = !DILocation(line: 364, column: 26, scope: !5079, inlinedAt: !4970)
!5083 = !DILocation(line: 365, column: 6, scope: !5084, inlinedAt: !4970)
!5084 = distinct !DILexicalBlock(scope: !4966, file: !94, line: 365, column: 6)
!5085 = !DILocation(line: 365, column: 11, scope: !5084, inlinedAt: !4970)
!5086 = !DILocation(line: 365, column: 6, scope: !4966, inlinedAt: !4970)
!5087 = !DILocation(line: 365, column: 26, scope: !5084, inlinedAt: !4970)
!5088 = !DILocation(line: 366, column: 6, scope: !5089, inlinedAt: !4970)
!5089 = distinct !DILexicalBlock(scope: !4966, file: !94, line: 366, column: 6)
!5090 = !DILocation(line: 366, column: 11, scope: !5089, inlinedAt: !4970)
!5091 = !DILocation(line: 366, column: 6, scope: !4966, inlinedAt: !4970)
!5092 = !DILocation(line: 366, column: 26, scope: !5089, inlinedAt: !4970)
!5093 = !DILocation(line: 367, column: 6, scope: !5094, inlinedAt: !4970)
!5094 = distinct !DILexicalBlock(scope: !4966, file: !94, line: 367, column: 6)
!5095 = !DILocation(line: 367, column: 11, scope: !5094, inlinedAt: !4970)
!5096 = !DILocation(line: 367, column: 6, scope: !4966, inlinedAt: !4970)
!5097 = !DILocation(line: 367, column: 26, scope: !5094, inlinedAt: !4970)
!5098 = !DILocation(line: 368, column: 6, scope: !5099, inlinedAt: !4970)
!5099 = distinct !DILexicalBlock(scope: !4966, file: !94, line: 368, column: 6)
!5100 = !DILocation(line: 368, column: 11, scope: !5099, inlinedAt: !4970)
!5101 = !DILocation(line: 368, column: 6, scope: !4966, inlinedAt: !4970)
!5102 = !DILocation(line: 368, column: 26, scope: !5099, inlinedAt: !4970)
!5103 = !DILocation(line: 369, column: 6, scope: !5104, inlinedAt: !4970)
!5104 = distinct !DILexicalBlock(scope: !4966, file: !94, line: 369, column: 6)
!5105 = !DILocation(line: 369, column: 11, scope: !5104, inlinedAt: !4970)
!5106 = !DILocation(line: 369, column: 6, scope: !4966, inlinedAt: !4970)
!5107 = !DILocation(line: 369, column: 26, scope: !5104, inlinedAt: !4970)
!5108 = !DILocation(line: 370, column: 6, scope: !5109, inlinedAt: !4970)
!5109 = distinct !DILexicalBlock(scope: !4966, file: !94, line: 370, column: 6)
!5110 = !DILocation(line: 370, column: 11, scope: !5109, inlinedAt: !4970)
!5111 = !DILocation(line: 370, column: 6, scope: !4966, inlinedAt: !4970)
!5112 = !DILocation(line: 370, column: 26, scope: !5109, inlinedAt: !4970)
!5113 = !DILocation(line: 371, column: 6, scope: !5114, inlinedAt: !4970)
!5114 = distinct !DILexicalBlock(scope: !4966, file: !94, line: 371, column: 6)
!5115 = !DILocation(line: 371, column: 11, scope: !5114, inlinedAt: !4970)
!5116 = !DILocation(line: 371, column: 6, scope: !4966, inlinedAt: !4970)
!5117 = !DILocation(line: 371, column: 26, scope: !5114, inlinedAt: !4970)
!5118 = !DILocation(line: 372, column: 6, scope: !5119, inlinedAt: !4970)
!5119 = distinct !DILexicalBlock(scope: !4966, file: !94, line: 372, column: 6)
!5120 = !DILocation(line: 372, column: 11, scope: !5119, inlinedAt: !4970)
!5121 = !DILocation(line: 372, column: 6, scope: !4966, inlinedAt: !4970)
!5122 = !DILocation(line: 372, column: 26, scope: !5119, inlinedAt: !4970)
!5123 = !DILocation(line: 373, column: 6, scope: !5124, inlinedAt: !4970)
!5124 = distinct !DILexicalBlock(scope: !4966, file: !94, line: 373, column: 6)
!5125 = !DILocation(line: 373, column: 11, scope: !5124, inlinedAt: !4970)
!5126 = !DILocation(line: 373, column: 6, scope: !4966, inlinedAt: !4970)
!5127 = !DILocation(line: 373, column: 26, scope: !5124, inlinedAt: !4970)
!5128 = !DILocation(line: 374, column: 6, scope: !5129, inlinedAt: !4970)
!5129 = distinct !DILexicalBlock(scope: !4966, file: !94, line: 374, column: 6)
!5130 = !DILocation(line: 374, column: 11, scope: !5129, inlinedAt: !4970)
!5131 = !DILocation(line: 374, column: 6, scope: !4966, inlinedAt: !4970)
!5132 = !DILocation(line: 374, column: 26, scope: !5129, inlinedAt: !4970)
!5133 = !DILocation(line: 375, column: 6, scope: !5134, inlinedAt: !4970)
!5134 = distinct !DILexicalBlock(scope: !4966, file: !94, line: 375, column: 6)
!5135 = !DILocation(line: 375, column: 11, scope: !5134, inlinedAt: !4970)
!5136 = !DILocation(line: 375, column: 6, scope: !4966, inlinedAt: !4970)
!5137 = !DILocation(line: 375, column: 27, scope: !5134, inlinedAt: !4970)
!5138 = !DILocation(line: 376, column: 6, scope: !5139, inlinedAt: !4970)
!5139 = distinct !DILexicalBlock(scope: !4966, file: !94, line: 376, column: 6)
!5140 = !DILocation(line: 376, column: 11, scope: !5139, inlinedAt: !4970)
!5141 = !DILocation(line: 376, column: 6, scope: !4966, inlinedAt: !4970)
!5142 = !DILocation(line: 376, column: 32, scope: !5139, inlinedAt: !4970)
!5143 = !DILocation(line: 377, column: 6, scope: !5144, inlinedAt: !4970)
!5144 = distinct !DILexicalBlock(scope: !4966, file: !94, line: 377, column: 6)
!5145 = !DILocation(line: 377, column: 11, scope: !5144, inlinedAt: !4970)
!5146 = !DILocation(line: 377, column: 6, scope: !4966, inlinedAt: !4970)
!5147 = !DILocation(line: 377, column: 32, scope: !5144, inlinedAt: !4970)
!5148 = !DILocation(line: 378, column: 6, scope: !5149, inlinedAt: !4970)
!5149 = distinct !DILexicalBlock(scope: !4966, file: !94, line: 378, column: 6)
!5150 = !DILocation(line: 378, column: 11, scope: !5149, inlinedAt: !4970)
!5151 = !DILocation(line: 378, column: 6, scope: !4966, inlinedAt: !4970)
!5152 = !DILocation(line: 378, column: 32, scope: !5149, inlinedAt: !4970)
!5153 = !DILocation(line: 379, column: 6, scope: !5154, inlinedAt: !4970)
!5154 = distinct !DILexicalBlock(scope: !4966, file: !94, line: 379, column: 6)
!5155 = !DILocation(line: 379, column: 11, scope: !5154, inlinedAt: !4970)
!5156 = !DILocation(line: 379, column: 6, scope: !4966, inlinedAt: !4970)
!5157 = !DILocation(line: 379, column: 33, scope: !5154, inlinedAt: !4970)
!5158 = !DILocation(line: 380, column: 6, scope: !5159, inlinedAt: !4970)
!5159 = distinct !DILexicalBlock(scope: !4966, file: !94, line: 380, column: 6)
!5160 = !DILocation(line: 380, column: 11, scope: !5159, inlinedAt: !4970)
!5161 = !DILocation(line: 380, column: 6, scope: !4966, inlinedAt: !4970)
!5162 = !DILocation(line: 380, column: 33, scope: !5159, inlinedAt: !4970)
!5163 = !DILocation(line: 381, column: 6, scope: !5164, inlinedAt: !4970)
!5164 = distinct !DILexicalBlock(scope: !4966, file: !94, line: 381, column: 6)
!5165 = !DILocation(line: 381, column: 11, scope: !5164, inlinedAt: !4970)
!5166 = !DILocation(line: 381, column: 6, scope: !4966, inlinedAt: !4970)
!5167 = !DILocation(line: 381, column: 33, scope: !5164, inlinedAt: !4970)
!5168 = !DILocation(line: 382, column: 2, scope: !5169, inlinedAt: !4970)
!5169 = distinct !DILexicalBlock(scope: !5170, file: !94, line: 382, column: 2)
!5170 = distinct !DILexicalBlock(scope: !4966, file: !94, line: 382, column: 2)
!5171 = !{i32 -2143439484, i32 -2143439455, i32 -2143439409, i32 -2143439351, i32 -2143439297, i32 -2143439243, i32 -2143439188, i32 -2143439157}
!5172 = !DILocation(line: 382, column: 2, scope: !5173, inlinedAt: !4970)
!5173 = distinct !DILexicalBlock(scope: !5174, file: !94, line: 382, column: 2)
!5174 = distinct !DILexicalBlock(scope: !5170, file: !94, line: 382, column: 2)
!5175 = !{i32 -2143438714, i32 -2143438707, i32 -2143438653, i32 -2143438622, i32 -2143438592}
!5176 = !DILocation(line: 382, column: 2, scope: !5174, inlinedAt: !4970)
!5177 = !DILocation(line: 386, column: 1, scope: !4966, inlinedAt: !4970)
!5178 = !DILocation(line: 547, column: 9, scope: !4947, inlinedAt: !4952)
!5179 = !DILocation(line: 549, column: 8, scope: !5180, inlinedAt: !4952)
!5180 = distinct !DILexicalBlock(scope: !4947, file: !94, line: 549, column: 7)
!5181 = !DILocation(line: 549, column: 7, scope: !4947, inlinedAt: !4952)
!5182 = !DILocation(line: 550, column: 4, scope: !5180, inlinedAt: !4952)
!5183 = !DILocation(line: 553, column: 33, scope: !4947, inlinedAt: !4952)
!5184 = !DILocation(line: 325, column: 6, scope: !5185, inlinedAt: !4964)
!5185 = distinct !DILexicalBlock(scope: !4960, file: !94, line: 325, column: 6)
!5186 = !DILocation(line: 325, column: 6, scope: !4960, inlinedAt: !4964)
!5187 = !DILocation(line: 326, column: 3, scope: !5185, inlinedAt: !4964)
!5188 = !DILocation(line: 332, column: 9, scope: !4960, inlinedAt: !4964)
!5189 = !DILocation(line: 332, column: 15, scope: !4960, inlinedAt: !4964)
!5190 = !DILocation(line: 332, column: 2, scope: !4960, inlinedAt: !4964)
!5191 = !DILocation(line: 336, column: 1, scope: !4960, inlinedAt: !4964)
!5192 = !DILocation(line: 553, column: 5, scope: !4947, inlinedAt: !4952)
!5193 = !DILocation(line: 553, column: 41, scope: !4947, inlinedAt: !4952)
!5194 = !DILocation(line: 554, column: 5, scope: !4947, inlinedAt: !4952)
!5195 = !DILocation(line: 554, column: 12, scope: !4947, inlinedAt: !4952)
!5196 = !DILocation(line: 448, column: 31, scope: !4942, inlinedAt: !4946)
!5197 = !DILocation(line: 448, column: 34, scope: !4942, inlinedAt: !4946)
!5198 = !DILocation(line: 448, column: 14, scope: !4942, inlinedAt: !4946)
!5199 = !DILocation(line: 450, column: 22, scope: !4942, inlinedAt: !4946)
!5200 = !DILocation(line: 450, column: 25, scope: !4942, inlinedAt: !4946)
!5201 = !DILocation(line: 450, column: 30, scope: !4942, inlinedAt: !4946)
!5202 = !DILocation(line: 450, column: 36, scope: !4942, inlinedAt: !4946)
!5203 = !DILocation(line: 450, column: 8, scope: !4942, inlinedAt: !4946)
!5204 = !DILocation(line: 450, column: 6, scope: !4942, inlinedAt: !4946)
!5205 = !DILocation(line: 451, column: 9, scope: !4942, inlinedAt: !4946)
!5206 = !DILocation(line: 552, column: 3, scope: !4947, inlinedAt: !4952)
!5207 = !DILocation(line: 557, column: 19, scope: !4949, inlinedAt: !4952)
!5208 = !DILocation(line: 557, column: 25, scope: !4949, inlinedAt: !4952)
!5209 = !DILocation(line: 557, column: 9, scope: !4949, inlinedAt: !4952)
!5210 = !DILocation(line: 557, column: 2, scope: !4949, inlinedAt: !4952)
!5211 = !DILocation(line: 558, column: 1, scope: !4949, inlinedAt: !4952)
!5212 = !DILocation(line: 32, column: 15, scope: !4938)
!5213 = !DILocation(line: 32, column: 13, scope: !4938)
!5214 = !DILocation(line: 33, column: 7, scope: !5215)
!5215 = distinct !DILexicalBlock(scope: !4938, file: !3, line: 33, column: 6)
!5216 = !DILocation(line: 33, column: 6, scope: !4938)
!5217 = !DILocation(line: 34, column: 3, scope: !5218)
!5218 = distinct !DILexicalBlock(scope: !5215, file: !3, line: 33, column: 19)
!5219 = !DILocation(line: 36, column: 3, scope: !5218)
!5220 = !DILocation(line: 39, column: 3, scope: !4938)
!5221 = !DILocation(line: 39, column: 17, scope: !4938)
!5222 = !DILocation(line: 39, column: 16, scope: !4938)
!5223 = !DILocation(line: 40, column: 28, scope: !4938)
!5224 = !DILocation(line: 40, column: 2, scope: !4938)
!5225 = !DILocation(line: 40, column: 14, scope: !4938)
!5226 = !DILocation(line: 40, column: 16, scope: !4938)
!5227 = !DILocation(line: 40, column: 21, scope: !4938)
!5228 = !DILocation(line: 40, column: 25, scope: !4938)
!5229 = !DILocation(line: 41, column: 28, scope: !4938)
!5230 = !DILocation(line: 41, column: 2, scope: !4938)
!5231 = !DILocation(line: 41, column: 14, scope: !4938)
!5232 = !DILocation(line: 41, column: 16, scope: !4938)
!5233 = !DILocation(line: 41, column: 21, scope: !4938)
!5234 = !DILocation(line: 41, column: 25, scope: !4938)
!5235 = !DILocation(line: 42, column: 12, scope: !4938)
!5236 = !DILocation(line: 42, column: 24, scope: !4938)
!5237 = !DILocation(line: 42, column: 31, scope: !4938)
!5238 = !DILocation(line: 42, column: 39, scope: !4938)
!5239 = !DILocation(line: 42, column: 2, scope: !4938)
!5240 = !DILocation(line: 44, column: 2, scope: !4938)
!5241 = !DILocation(line: 48, column: 1, scope: !4938)
!5242 = distinct !DISubprogram(name: "list_add", scope: !5243, file: !5243, line: 84, type: !5244, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!5243 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!5244 = !DISubroutineType(types: !5245)
!5245 = !{null, !128, !128}
!5246 = !DILocalVariable(name: "new", arg: 1, scope: !5242, file: !5243, line: 84, type: !128)
!5247 = !DILocation(line: 84, column: 47, scope: !5242)
!5248 = !DILocalVariable(name: "head", arg: 2, scope: !5242, file: !5243, line: 84, type: !128)
!5249 = !DILocation(line: 84, column: 70, scope: !5242)
!5250 = !DILocation(line: 86, column: 13, scope: !5242)
!5251 = !DILocation(line: 86, column: 18, scope: !5242)
!5252 = !DILocation(line: 86, column: 24, scope: !5242)
!5253 = !DILocation(line: 86, column: 30, scope: !5242)
!5254 = !DILocation(line: 86, column: 2, scope: !5242)
!5255 = !DILocation(line: 87, column: 1, scope: !5242)
!5256 = distinct !DISubprogram(name: "get_order", scope: !5257, file: !5257, line: 29, type: !5258, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!5257 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5258 = !DISubroutineType(types: !5259)
!5259 = !{!203, !132}
!5260 = !DILocalVariable(name: "x", arg: 1, scope: !5261, file: !5262, line: 366, type: !144)
!5261 = distinct !DISubprogram(name: "fls64", scope: !5262, file: !5262, line: 366, type: !5263, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!5262 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5263 = !DISubroutineType(types: !5264)
!5264 = !{!203, !144}
!5265 = !DILocation(line: 366, column: 40, scope: !5261, inlinedAt: !5266)
!5266 = distinct !DILocation(line: 46, column: 9, scope: !5256)
!5267 = !DILocalVariable(name: "bitpos", scope: !5261, file: !5262, line: 368, type: !203)
!5268 = !DILocation(line: 368, column: 6, scope: !5261, inlinedAt: !5266)
!5269 = !DILocalVariable(name: "size", arg: 1, scope: !5256, file: !5257, line: 29, type: !132)
!5270 = !DILocation(line: 29, column: 63, scope: !5256)
!5271 = !DILocation(line: 31, column: 27, scope: !5272)
!5272 = distinct !DILexicalBlock(scope: !5256, file: !5257, line: 31, column: 6)
!5273 = !DILocation(line: 31, column: 6, scope: !5272)
!5274 = !DILocation(line: 31, column: 6, scope: !5256)
!5275 = !DILocation(line: 32, column: 8, scope: !5276)
!5276 = distinct !DILexicalBlock(scope: !5277, file: !5257, line: 32, column: 7)
!5277 = distinct !DILexicalBlock(scope: !5272, file: !5257, line: 31, column: 34)
!5278 = !DILocation(line: 32, column: 7, scope: !5277)
!5279 = !DILocation(line: 33, column: 4, scope: !5276)
!5280 = !DILocation(line: 35, column: 7, scope: !5281)
!5281 = distinct !DILexicalBlock(scope: !5277, file: !5257, line: 35, column: 7)
!5282 = !DILocation(line: 35, column: 12, scope: !5281)
!5283 = !DILocation(line: 35, column: 7, scope: !5277)
!5284 = !DILocation(line: 36, column: 4, scope: !5281)
!5285 = !DILocation(line: 38, column: 10, scope: !5277)
!5286 = !DILocation(line: 38, column: 28, scope: !5277)
!5287 = !DILocation(line: 38, column: 41, scope: !5277)
!5288 = !DILocation(line: 38, column: 3, scope: !5277)
!5289 = !DILocation(line: 41, column: 6, scope: !5256)
!5290 = !DILocation(line: 42, column: 7, scope: !5256)
!5291 = !DILocation(line: 46, column: 15, scope: !5256)
!5292 = !DILocation(line: 374, column: 2, scope: !5261, inlinedAt: !5266)
!5293 = !DILocation(line: 376, column: 14, scope: !5261, inlinedAt: !5266)
!5294 = !{i32 251500}
!5295 = !DILocation(line: 377, column: 9, scope: !5261, inlinedAt: !5266)
!5296 = !DILocation(line: 377, column: 16, scope: !5261, inlinedAt: !5266)
!5297 = !DILocation(line: 46, column: 2, scope: !5256)
!5298 = !DILocation(line: 48, column: 1, scope: !5256)
!5299 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5300, file: !5300, line: 30, type: !5301, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!5300 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5301 = !DISubroutineType(types: !5302)
!5302 = !{!203, !142}
!5303 = !DILocation(line: 366, column: 40, scope: !5261, inlinedAt: !5304)
!5304 = distinct !DILocation(line: 32, column: 9, scope: !5299)
!5305 = !DILocation(line: 368, column: 6, scope: !5261, inlinedAt: !5304)
!5306 = !DILocalVariable(name: "n", arg: 1, scope: !5299, file: !5300, line: 30, type: !142)
!5307 = !DILocation(line: 30, column: 21, scope: !5299)
!5308 = !DILocation(line: 32, column: 15, scope: !5299)
!5309 = !DILocation(line: 374, column: 2, scope: !5261, inlinedAt: !5304)
!5310 = !DILocation(line: 376, column: 14, scope: !5261, inlinedAt: !5304)
!5311 = !DILocation(line: 377, column: 9, scope: !5261, inlinedAt: !5304)
!5312 = !DILocation(line: 377, column: 16, scope: !5261, inlinedAt: !5304)
!5313 = !DILocation(line: 32, column: 18, scope: !5299)
!5314 = !DILocation(line: 32, column: 2, scope: !5299)
!5315 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5316, file: !5316, line: 137, type: !5317, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!5316 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5317 = !DISubroutineType(types: !5318)
!5318 = !{!118, !938, !2111, !328, !177}
!5319 = !DILocalVariable(name: "s", arg: 1, scope: !5315, file: !5316, line: 137, type: !938)
!5320 = !DILocation(line: 137, column: 54, scope: !5315)
!5321 = !DILocalVariable(name: "object", arg: 2, scope: !5315, file: !5316, line: 137, type: !2111)
!5322 = !DILocation(line: 137, column: 69, scope: !5315)
!5323 = !DILocalVariable(name: "size", arg: 3, scope: !5315, file: !5316, line: 138, type: !328)
!5324 = !DILocation(line: 138, column: 12, scope: !5315)
!5325 = !DILocalVariable(name: "flags", arg: 4, scope: !5315, file: !5316, line: 138, type: !177)
!5326 = !DILocation(line: 138, column: 24, scope: !5315)
!5327 = !DILocation(line: 140, column: 17, scope: !5315)
!5328 = !DILocation(line: 140, column: 2, scope: !5315)
!5329 = distinct !DISubprogram(name: "__list_add", scope: !5243, file: !5243, line: 63, type: !5330, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!5330 = !DISubroutineType(types: !5331)
!5331 = !{null, !128, !128, !128}
!5332 = !DILocalVariable(name: "new", arg: 1, scope: !5329, file: !5243, line: 63, type: !128)
!5333 = !DILocation(line: 63, column: 49, scope: !5329)
!5334 = !DILocalVariable(name: "prev", arg: 2, scope: !5329, file: !5243, line: 64, type: !128)
!5335 = !DILocation(line: 64, column: 28, scope: !5329)
!5336 = !DILocalVariable(name: "next", arg: 3, scope: !5329, file: !5243, line: 65, type: !128)
!5337 = !DILocation(line: 65, column: 28, scope: !5329)
!5338 = !DILocation(line: 67, column: 24, scope: !5339)
!5339 = distinct !DILexicalBlock(scope: !5329, file: !5243, line: 67, column: 6)
!5340 = !DILocation(line: 67, column: 29, scope: !5339)
!5341 = !DILocation(line: 67, column: 35, scope: !5339)
!5342 = !DILocation(line: 67, column: 7, scope: !5339)
!5343 = !DILocation(line: 67, column: 6, scope: !5329)
!5344 = !DILocation(line: 68, column: 3, scope: !5339)
!5345 = !DILocation(line: 70, column: 15, scope: !5329)
!5346 = !DILocation(line: 70, column: 2, scope: !5329)
!5347 = !DILocation(line: 70, column: 8, scope: !5329)
!5348 = !DILocation(line: 70, column: 13, scope: !5329)
!5349 = !DILocation(line: 71, column: 14, scope: !5329)
!5350 = !DILocation(line: 71, column: 2, scope: !5329)
!5351 = !DILocation(line: 71, column: 7, scope: !5329)
!5352 = !DILocation(line: 71, column: 12, scope: !5329)
!5353 = !DILocation(line: 72, column: 14, scope: !5329)
!5354 = !DILocation(line: 72, column: 2, scope: !5329)
!5355 = !DILocation(line: 72, column: 7, scope: !5329)
!5356 = !DILocation(line: 72, column: 12, scope: !5329)
!5357 = !DILocation(line: 73, column: 2, scope: !5329)
!5358 = !DILocation(line: 73, column: 2, scope: !5359)
!5359 = distinct !DILexicalBlock(scope: !5329, file: !5243, line: 73, column: 2)
!5360 = !DILocation(line: 73, column: 2, scope: !5361)
!5361 = distinct !DILexicalBlock(scope: !5359, file: !5243, line: 73, column: 2)
!5362 = !DILocation(line: 73, column: 2, scope: !5363)
!5363 = distinct !DILexicalBlock(scope: !5359, file: !5243, line: 73, column: 2)
!5364 = !DILocation(line: 74, column: 1, scope: !5329)
!5365 = distinct !DISubprogram(name: "__list_add_valid", scope: !5243, file: !5243, line: 45, type: !5366, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!5366 = !DISubroutineType(types: !5367)
!5367 = !{!490, !128, !128, !128}
!5368 = !DILocalVariable(name: "new", arg: 1, scope: !5365, file: !5243, line: 45, type: !128)
!5369 = !DILocation(line: 45, column: 55, scope: !5365)
!5370 = !DILocalVariable(name: "prev", arg: 2, scope: !5365, file: !5243, line: 46, type: !128)
!5371 = !DILocation(line: 46, column: 23, scope: !5365)
!5372 = !DILocalVariable(name: "next", arg: 3, scope: !5365, file: !5243, line: 47, type: !128)
!5373 = !DILocation(line: 47, column: 23, scope: !5365)
!5374 = !DILocation(line: 49, column: 2, scope: !5365)
!5375 = distinct !DISubprogram(name: "bitmap_zero", scope: !5376, file: !5376, line: 235, type: !5377, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!5376 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/lizy2001/genbc/linux")
!5377 = !DISubroutineType(types: !5378)
!5378 = !{null, !4417, !7}
!5379 = !DILocalVariable(name: "dst", arg: 1, scope: !5375, file: !5376, line: 235, type: !4417)
!5380 = !DILocation(line: 235, column: 47, scope: !5375)
!5381 = !DILocalVariable(name: "nbits", arg: 2, scope: !5375, file: !5376, line: 235, type: !7)
!5382 = !DILocation(line: 235, column: 65, scope: !5375)
!5383 = !DILocalVariable(name: "len", scope: !5375, file: !5376, line: 237, type: !7)
!5384 = !DILocation(line: 237, column: 15, scope: !5375)
!5385 = !DILocation(line: 237, column: 21, scope: !5375)
!5386 = !DILocation(line: 237, column: 42, scope: !5375)
!5387 = !DILocation(line: 238, column: 9, scope: !5375)
!5388 = !DILocation(line: 238, column: 2, scope: !5375)
!5389 = !DILocation(line: 238, column: 17, scope: !5375)
!5390 = !DILocation(line: 239, column: 1, scope: !5375)
!5391 = distinct !DISubprogram(name: "__set_bit", scope: !5392, file: !5392, line: 25, type: !5393, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!5392 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!5393 = !DISubroutineType(types: !5394)
!5394 = !{null, !182, !5395}
!5395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5396, size: 64)
!5396 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !132)
!5397 = !DILocalVariable(name: "nr", arg: 1, scope: !5398, file: !5262, line: 66, type: !182)
!5398 = distinct !DISubprogram(name: "arch___set_bit", scope: !5262, file: !5262, line: 66, type: !5393, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!5399 = !DILocation(line: 66, column: 21, scope: !5398, inlinedAt: !5400)
!5400 = distinct !DILocation(line: 28, column: 2, scope: !5391)
!5401 = !DILocalVariable(name: "addr", arg: 2, scope: !5398, file: !5262, line: 66, type: !5395)
!5402 = !DILocation(line: 66, column: 49, scope: !5398, inlinedAt: !5400)
!5403 = !DILocalVariable(name: "v", arg: 1, scope: !5404, file: !5405, line: 39, type: !5408)
!5404 = distinct !DISubprogram(name: "instrument_write", scope: !5405, file: !5405, line: 39, type: !5406, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!5405 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5406 = !DISubroutineType(types: !5407)
!5407 = !{null, !5408, !328}
!5408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5409, size: 64)
!5409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5410)
!5410 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5411 = !DILocation(line: 39, column: 67, scope: !5404, inlinedAt: !5412)
!5412 = distinct !DILocation(line: 27, column: 2, scope: !5391)
!5413 = !DILocalVariable(name: "size", arg: 2, scope: !5404, file: !5405, line: 39, type: !328)
!5414 = !DILocation(line: 39, column: 77, scope: !5404, inlinedAt: !5412)
!5415 = !DILocalVariable(name: "nr", arg: 1, scope: !5391, file: !5392, line: 25, type: !182)
!5416 = !DILocation(line: 25, column: 35, scope: !5391)
!5417 = !DILocalVariable(name: "addr", arg: 2, scope: !5391, file: !5392, line: 25, type: !5395)
!5418 = !DILocation(line: 25, column: 63, scope: !5391)
!5419 = !DILocation(line: 27, column: 19, scope: !5391)
!5420 = !DILocation(line: 27, column: 26, scope: !5391)
!5421 = !DILocation(line: 27, column: 24, scope: !5391)
!5422 = !DILocation(line: 41, column: 20, scope: !5404, inlinedAt: !5412)
!5423 = !DILocation(line: 41, column: 23, scope: !5404, inlinedAt: !5412)
!5424 = !DILocation(line: 41, column: 2, scope: !5404, inlinedAt: !5412)
!5425 = !DILocation(line: 42, column: 2, scope: !5404, inlinedAt: !5412)
!5426 = !DILocation(line: 28, column: 17, scope: !5391)
!5427 = !DILocation(line: 28, column: 21, scope: !5391)
!5428 = !DILocation(line: 68, column: 44, scope: !5398, inlinedAt: !5400)
!5429 = !DILocation(line: 68, column: 56, scope: !5398, inlinedAt: !5400)
!5430 = !DILocation(line: 68, column: 2, scope: !5398, inlinedAt: !5400)
!5431 = !{i32 -2147200085}
!5432 = !DILocation(line: 29, column: 1, scope: !5391)
!5433 = distinct !DISubprogram(name: "kasan_check_write", scope: !5434, file: !5434, line: 38, type: !5435, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!5434 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5435 = !DISubroutineType(types: !5436)
!5436 = !{!490, !5408, !7}
!5437 = !DILocalVariable(name: "p", arg: 1, scope: !5433, file: !5434, line: 38, type: !5408)
!5438 = !DILocation(line: 38, column: 59, scope: !5433)
!5439 = !DILocalVariable(name: "size", arg: 2, scope: !5433, file: !5434, line: 38, type: !7)
!5440 = !DILocation(line: 38, column: 75, scope: !5433)
!5441 = !DILocation(line: 40, column: 2, scope: !5433)
!5442 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5443, file: !5443, line: 178, type: !5444, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!5443 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5444 = !DISubroutineType(types: !5445)
!5445 = !{null, !5408, !328, !203}
!5446 = !DILocalVariable(name: "ptr", arg: 1, scope: !5442, file: !5443, line: 178, type: !5408)
!5447 = !DILocation(line: 178, column: 60, scope: !5442)
!5448 = !DILocalVariable(name: "size", arg: 2, scope: !5442, file: !5443, line: 178, type: !328)
!5449 = !DILocation(line: 178, column: 72, scope: !5442)
!5450 = !DILocalVariable(name: "type", arg: 3, scope: !5442, file: !5443, line: 179, type: !203)
!5451 = !DILocation(line: 179, column: 15, scope: !5442)
!5452 = !DILocation(line: 179, column: 23, scope: !5442)
!5453 = distinct !DISubprogram(name: "pnp_clone_dependent_set", scope: !3, file: !3, line: 138, type: !5454, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!5454 = !DISubroutineType(types: !5455)
!5455 = !{!119, !221, !7}
!5456 = !DILocation(line: 445, column: 72, scope: !4942, inlinedAt: !5457)
!5457 = distinct !DILocation(line: 552, column: 10, scope: !4947, inlinedAt: !5458)
!5458 = distinct !DILocation(line: 158, column: 17, scope: !5459)
!5459 = distinct !DILexicalBlock(scope: !5460, file: !3, line: 157, column: 38)
!5460 = distinct !DILexicalBlock(scope: !5461, file: !3, line: 156, column: 7)
!5461 = distinct !DILexicalBlock(scope: !5462, file: !3, line: 155, column: 51)
!5462 = distinct !DILexicalBlock(scope: !5463, file: !3, line: 155, column: 2)
!5463 = distinct !DILexicalBlock(scope: !5453, file: !3, line: 155, column: 2)
!5464 = !DILocation(line: 446, column: 9, scope: !4942, inlinedAt: !5457)
!5465 = !DILocation(line: 446, column: 23, scope: !4942, inlinedAt: !5457)
!5466 = !DILocation(line: 448, column: 8, scope: !4942, inlinedAt: !5457)
!5467 = !DILocation(line: 318, column: 67, scope: !4960, inlinedAt: !5468)
!5468 = distinct !DILocation(line: 553, column: 20, scope: !4947, inlinedAt: !5458)
!5469 = !DILocation(line: 346, column: 58, scope: !4966, inlinedAt: !5470)
!5470 = distinct !DILocation(line: 547, column: 11, scope: !4947, inlinedAt: !5458)
!5471 = !DILocation(line: 472, column: 28, scope: !4972, inlinedAt: !5472)
!5472 = distinct !DILocation(line: 481, column: 9, scope: !4977, inlinedAt: !5473)
!5473 = distinct !DILocation(line: 545, column: 11, scope: !4979, inlinedAt: !5458)
!5474 = !DILocation(line: 472, column: 40, scope: !4972, inlinedAt: !5472)
!5475 = !DILocation(line: 472, column: 60, scope: !4972, inlinedAt: !5472)
!5476 = !DILocation(line: 478, column: 51, scope: !4977, inlinedAt: !5473)
!5477 = !DILocation(line: 478, column: 63, scope: !4977, inlinedAt: !5473)
!5478 = !DILocation(line: 480, column: 15, scope: !4977, inlinedAt: !5473)
!5479 = !DILocation(line: 538, column: 45, scope: !4949, inlinedAt: !5458)
!5480 = !DILocation(line: 538, column: 57, scope: !4949, inlinedAt: !5458)
!5481 = !DILocation(line: 542, column: 16, scope: !4947, inlinedAt: !5458)
!5482 = !DILocalVariable(name: "dev", arg: 1, scope: !5453, file: !3, line: 138, type: !221)
!5483 = !DILocation(line: 138, column: 67, scope: !5453)
!5484 = !DILocalVariable(name: "set", arg: 2, scope: !5453, file: !3, line: 139, type: !7)
!5485 = !DILocation(line: 139, column: 22, scope: !5453)
!5486 = !DILocalVariable(name: "tail", scope: !5453, file: !3, line: 141, type: !119)
!5487 = !DILocation(line: 141, column: 21, scope: !5453)
!5488 = !DILocalVariable(name: "first_new_option", scope: !5453, file: !3, line: 141, type: !119)
!5489 = !DILocation(line: 141, column: 35, scope: !5453)
!5490 = !DILocalVariable(name: "option", scope: !5453, file: !3, line: 142, type: !119)
!5491 = !DILocation(line: 142, column: 21, scope: !5453)
!5492 = !DILocalVariable(name: "new_option", scope: !5453, file: !3, line: 142, type: !119)
!5493 = !DILocation(line: 142, column: 30, scope: !5453)
!5494 = !DILocalVariable(name: "flags", scope: !5453, file: !3, line: 143, type: !7)
!5495 = !DILocation(line: 143, column: 15, scope: !5453)
!5496 = !DILocalVariable(name: "__mptr", scope: !5497, file: !3, line: 145, type: !118)
!5497 = distinct !DILexicalBlock(scope: !5498, file: !3, line: 145, column: 2)
!5498 = distinct !DILexicalBlock(scope: !5453, file: !3, line: 145, column: 2)
!5499 = !DILocation(line: 145, column: 2, scope: !5497)
!5500 = !DILocation(line: 145, column: 2, scope: !5501)
!5501 = distinct !DILexicalBlock(scope: !5497, file: !3, line: 145, column: 2)
!5502 = !DILocation(line: 145, column: 2, scope: !5498)
!5503 = !DILocation(line: 145, column: 2, scope: !5504)
!5504 = distinct !DILexicalBlock(scope: !5498, file: !3, line: 145, column: 2)
!5505 = !DILocation(line: 146, column: 31, scope: !5506)
!5506 = distinct !DILexicalBlock(scope: !5507, file: !3, line: 146, column: 7)
!5507 = distinct !DILexicalBlock(scope: !5504, file: !3, line: 145, column: 51)
!5508 = !DILocation(line: 146, column: 7, scope: !5506)
!5509 = !DILocation(line: 146, column: 7, scope: !5507)
!5510 = !DILocation(line: 147, column: 11, scope: !5506)
!5511 = !DILocation(line: 147, column: 9, scope: !5506)
!5512 = !DILocation(line: 147, column: 4, scope: !5506)
!5513 = !DILocation(line: 148, column: 2, scope: !5507)
!5514 = !DILocalVariable(name: "__mptr", scope: !5515, file: !3, line: 145, type: !118)
!5515 = distinct !DILexicalBlock(scope: !5504, file: !3, line: 145, column: 2)
!5516 = !DILocation(line: 145, column: 2, scope: !5515)
!5517 = !DILocation(line: 145, column: 2, scope: !5518)
!5518 = distinct !DILexicalBlock(scope: !5515, file: !3, line: 145, column: 2)
!5519 = distinct !{!5519, !5502, !5520}
!5520 = !DILocation(line: 148, column: 2, scope: !5498)
!5521 = !DILocation(line: 149, column: 7, scope: !5522)
!5522 = distinct !DILexicalBlock(scope: !5453, file: !3, line: 149, column: 6)
!5523 = !DILocation(line: 149, column: 6, scope: !5453)
!5524 = !DILocation(line: 150, column: 3, scope: !5525)
!5525 = distinct !DILexicalBlock(scope: !5522, file: !3, line: 149, column: 13)
!5526 = !DILocation(line: 151, column: 3, scope: !5525)
!5527 = !DILocation(line: 154, column: 32, scope: !5453)
!5528 = !DILocation(line: 154, column: 10, scope: !5453)
!5529 = !DILocation(line: 154, column: 8, scope: !5453)
!5530 = !DILocalVariable(name: "__mptr", scope: !5531, file: !3, line: 155, type: !118)
!5531 = distinct !DILexicalBlock(scope: !5463, file: !3, line: 155, column: 2)
!5532 = !DILocation(line: 155, column: 2, scope: !5531)
!5533 = !DILocation(line: 155, column: 2, scope: !5534)
!5534 = distinct !DILexicalBlock(scope: !5531, file: !3, line: 155, column: 2)
!5535 = !DILocation(line: 155, column: 2, scope: !5463)
!5536 = !DILocation(line: 155, column: 2, scope: !5462)
!5537 = !DILocation(line: 156, column: 31, scope: !5460)
!5538 = !DILocation(line: 156, column: 7, scope: !5460)
!5539 = !DILocation(line: 156, column: 39, scope: !5460)
!5540 = !DILocation(line: 157, column: 22, scope: !5460)
!5541 = !DILocation(line: 157, column: 7, scope: !5460)
!5542 = !DILocation(line: 157, column: 33, scope: !5460)
!5543 = !DILocation(line: 157, column: 30, scope: !5460)
!5544 = !DILocation(line: 156, column: 7, scope: !5461)
!5545 = !DILocation(line: 540, column: 27, scope: !4948, inlinedAt: !5458)
!5546 = !DILocation(line: 540, column: 6, scope: !4948, inlinedAt: !5458)
!5547 = !DILocation(line: 540, column: 6, scope: !4949, inlinedAt: !5458)
!5548 = !DILocation(line: 544, column: 7, scope: !4979, inlinedAt: !5458)
!5549 = !DILocation(line: 544, column: 12, scope: !4979, inlinedAt: !5458)
!5550 = !DILocation(line: 544, column: 7, scope: !4947, inlinedAt: !5458)
!5551 = !DILocation(line: 545, column: 25, scope: !4979, inlinedAt: !5458)
!5552 = !DILocation(line: 545, column: 31, scope: !4979, inlinedAt: !5458)
!5553 = !DILocation(line: 480, column: 33, scope: !4977, inlinedAt: !5473)
!5554 = !DILocation(line: 480, column: 23, scope: !4977, inlinedAt: !5473)
!5555 = !DILocation(line: 481, column: 29, scope: !4977, inlinedAt: !5473)
!5556 = !DILocation(line: 481, column: 35, scope: !4977, inlinedAt: !5473)
!5557 = !DILocation(line: 481, column: 42, scope: !4977, inlinedAt: !5473)
!5558 = !DILocation(line: 474, column: 23, scope: !4972, inlinedAt: !5472)
!5559 = !DILocation(line: 474, column: 29, scope: !4972, inlinedAt: !5472)
!5560 = !DILocation(line: 474, column: 36, scope: !4972, inlinedAt: !5472)
!5561 = !DILocation(line: 474, column: 9, scope: !4972, inlinedAt: !5472)
!5562 = !DILocation(line: 545, column: 4, scope: !4979, inlinedAt: !5458)
!5563 = !DILocation(line: 547, column: 25, scope: !4947, inlinedAt: !5458)
!5564 = !DILocation(line: 348, column: 7, scope: !5024, inlinedAt: !5470)
!5565 = !DILocation(line: 348, column: 6, scope: !4966, inlinedAt: !5470)
!5566 = !DILocation(line: 349, column: 3, scope: !5024, inlinedAt: !5470)
!5567 = !DILocation(line: 351, column: 6, scope: !5028, inlinedAt: !5470)
!5568 = !DILocation(line: 351, column: 11, scope: !5028, inlinedAt: !5470)
!5569 = !DILocation(line: 351, column: 6, scope: !4966, inlinedAt: !5470)
!5570 = !DILocation(line: 352, column: 3, scope: !5028, inlinedAt: !5470)
!5571 = !DILocation(line: 354, column: 32, scope: !5033, inlinedAt: !5470)
!5572 = !DILocation(line: 354, column: 37, scope: !5033, inlinedAt: !5470)
!5573 = !DILocation(line: 354, column: 42, scope: !5033, inlinedAt: !5470)
!5574 = !DILocation(line: 354, column: 45, scope: !5033, inlinedAt: !5470)
!5575 = !DILocation(line: 354, column: 50, scope: !5033, inlinedAt: !5470)
!5576 = !DILocation(line: 354, column: 6, scope: !4966, inlinedAt: !5470)
!5577 = !DILocation(line: 355, column: 3, scope: !5033, inlinedAt: !5470)
!5578 = !DILocation(line: 356, column: 32, scope: !5041, inlinedAt: !5470)
!5579 = !DILocation(line: 356, column: 37, scope: !5041, inlinedAt: !5470)
!5580 = !DILocation(line: 356, column: 43, scope: !5041, inlinedAt: !5470)
!5581 = !DILocation(line: 356, column: 46, scope: !5041, inlinedAt: !5470)
!5582 = !DILocation(line: 356, column: 51, scope: !5041, inlinedAt: !5470)
!5583 = !DILocation(line: 356, column: 6, scope: !4966, inlinedAt: !5470)
!5584 = !DILocation(line: 357, column: 3, scope: !5041, inlinedAt: !5470)
!5585 = !DILocation(line: 358, column: 6, scope: !5049, inlinedAt: !5470)
!5586 = !DILocation(line: 358, column: 11, scope: !5049, inlinedAt: !5470)
!5587 = !DILocation(line: 358, column: 6, scope: !4966, inlinedAt: !5470)
!5588 = !DILocation(line: 358, column: 26, scope: !5049, inlinedAt: !5470)
!5589 = !DILocation(line: 359, column: 6, scope: !5054, inlinedAt: !5470)
!5590 = !DILocation(line: 359, column: 11, scope: !5054, inlinedAt: !5470)
!5591 = !DILocation(line: 359, column: 6, scope: !4966, inlinedAt: !5470)
!5592 = !DILocation(line: 359, column: 26, scope: !5054, inlinedAt: !5470)
!5593 = !DILocation(line: 360, column: 6, scope: !5059, inlinedAt: !5470)
!5594 = !DILocation(line: 360, column: 11, scope: !5059, inlinedAt: !5470)
!5595 = !DILocation(line: 360, column: 6, scope: !4966, inlinedAt: !5470)
!5596 = !DILocation(line: 360, column: 26, scope: !5059, inlinedAt: !5470)
!5597 = !DILocation(line: 361, column: 6, scope: !5064, inlinedAt: !5470)
!5598 = !DILocation(line: 361, column: 11, scope: !5064, inlinedAt: !5470)
!5599 = !DILocation(line: 361, column: 6, scope: !4966, inlinedAt: !5470)
!5600 = !DILocation(line: 361, column: 26, scope: !5064, inlinedAt: !5470)
!5601 = !DILocation(line: 362, column: 6, scope: !5069, inlinedAt: !5470)
!5602 = !DILocation(line: 362, column: 11, scope: !5069, inlinedAt: !5470)
!5603 = !DILocation(line: 362, column: 6, scope: !4966, inlinedAt: !5470)
!5604 = !DILocation(line: 362, column: 26, scope: !5069, inlinedAt: !5470)
!5605 = !DILocation(line: 363, column: 6, scope: !5074, inlinedAt: !5470)
!5606 = !DILocation(line: 363, column: 11, scope: !5074, inlinedAt: !5470)
!5607 = !DILocation(line: 363, column: 6, scope: !4966, inlinedAt: !5470)
!5608 = !DILocation(line: 363, column: 26, scope: !5074, inlinedAt: !5470)
!5609 = !DILocation(line: 364, column: 6, scope: !5079, inlinedAt: !5470)
!5610 = !DILocation(line: 364, column: 11, scope: !5079, inlinedAt: !5470)
!5611 = !DILocation(line: 364, column: 6, scope: !4966, inlinedAt: !5470)
!5612 = !DILocation(line: 364, column: 26, scope: !5079, inlinedAt: !5470)
!5613 = !DILocation(line: 365, column: 6, scope: !5084, inlinedAt: !5470)
!5614 = !DILocation(line: 365, column: 11, scope: !5084, inlinedAt: !5470)
!5615 = !DILocation(line: 365, column: 6, scope: !4966, inlinedAt: !5470)
!5616 = !DILocation(line: 365, column: 26, scope: !5084, inlinedAt: !5470)
!5617 = !DILocation(line: 366, column: 6, scope: !5089, inlinedAt: !5470)
!5618 = !DILocation(line: 366, column: 11, scope: !5089, inlinedAt: !5470)
!5619 = !DILocation(line: 366, column: 6, scope: !4966, inlinedAt: !5470)
!5620 = !DILocation(line: 366, column: 26, scope: !5089, inlinedAt: !5470)
!5621 = !DILocation(line: 367, column: 6, scope: !5094, inlinedAt: !5470)
!5622 = !DILocation(line: 367, column: 11, scope: !5094, inlinedAt: !5470)
!5623 = !DILocation(line: 367, column: 6, scope: !4966, inlinedAt: !5470)
!5624 = !DILocation(line: 367, column: 26, scope: !5094, inlinedAt: !5470)
!5625 = !DILocation(line: 368, column: 6, scope: !5099, inlinedAt: !5470)
!5626 = !DILocation(line: 368, column: 11, scope: !5099, inlinedAt: !5470)
!5627 = !DILocation(line: 368, column: 6, scope: !4966, inlinedAt: !5470)
!5628 = !DILocation(line: 368, column: 26, scope: !5099, inlinedAt: !5470)
!5629 = !DILocation(line: 369, column: 6, scope: !5104, inlinedAt: !5470)
!5630 = !DILocation(line: 369, column: 11, scope: !5104, inlinedAt: !5470)
!5631 = !DILocation(line: 369, column: 6, scope: !4966, inlinedAt: !5470)
!5632 = !DILocation(line: 369, column: 26, scope: !5104, inlinedAt: !5470)
!5633 = !DILocation(line: 370, column: 6, scope: !5109, inlinedAt: !5470)
!5634 = !DILocation(line: 370, column: 11, scope: !5109, inlinedAt: !5470)
!5635 = !DILocation(line: 370, column: 6, scope: !4966, inlinedAt: !5470)
!5636 = !DILocation(line: 370, column: 26, scope: !5109, inlinedAt: !5470)
!5637 = !DILocation(line: 371, column: 6, scope: !5114, inlinedAt: !5470)
!5638 = !DILocation(line: 371, column: 11, scope: !5114, inlinedAt: !5470)
!5639 = !DILocation(line: 371, column: 6, scope: !4966, inlinedAt: !5470)
!5640 = !DILocation(line: 371, column: 26, scope: !5114, inlinedAt: !5470)
!5641 = !DILocation(line: 372, column: 6, scope: !5119, inlinedAt: !5470)
!5642 = !DILocation(line: 372, column: 11, scope: !5119, inlinedAt: !5470)
!5643 = !DILocation(line: 372, column: 6, scope: !4966, inlinedAt: !5470)
!5644 = !DILocation(line: 372, column: 26, scope: !5119, inlinedAt: !5470)
!5645 = !DILocation(line: 373, column: 6, scope: !5124, inlinedAt: !5470)
!5646 = !DILocation(line: 373, column: 11, scope: !5124, inlinedAt: !5470)
!5647 = !DILocation(line: 373, column: 6, scope: !4966, inlinedAt: !5470)
!5648 = !DILocation(line: 373, column: 26, scope: !5124, inlinedAt: !5470)
!5649 = !DILocation(line: 374, column: 6, scope: !5129, inlinedAt: !5470)
!5650 = !DILocation(line: 374, column: 11, scope: !5129, inlinedAt: !5470)
!5651 = !DILocation(line: 374, column: 6, scope: !4966, inlinedAt: !5470)
!5652 = !DILocation(line: 374, column: 26, scope: !5129, inlinedAt: !5470)
!5653 = !DILocation(line: 375, column: 6, scope: !5134, inlinedAt: !5470)
!5654 = !DILocation(line: 375, column: 11, scope: !5134, inlinedAt: !5470)
!5655 = !DILocation(line: 375, column: 6, scope: !4966, inlinedAt: !5470)
!5656 = !DILocation(line: 375, column: 27, scope: !5134, inlinedAt: !5470)
!5657 = !DILocation(line: 376, column: 6, scope: !5139, inlinedAt: !5470)
!5658 = !DILocation(line: 376, column: 11, scope: !5139, inlinedAt: !5470)
!5659 = !DILocation(line: 376, column: 6, scope: !4966, inlinedAt: !5470)
!5660 = !DILocation(line: 376, column: 32, scope: !5139, inlinedAt: !5470)
!5661 = !DILocation(line: 377, column: 6, scope: !5144, inlinedAt: !5470)
!5662 = !DILocation(line: 377, column: 11, scope: !5144, inlinedAt: !5470)
!5663 = !DILocation(line: 377, column: 6, scope: !4966, inlinedAt: !5470)
!5664 = !DILocation(line: 377, column: 32, scope: !5144, inlinedAt: !5470)
!5665 = !DILocation(line: 378, column: 6, scope: !5149, inlinedAt: !5470)
!5666 = !DILocation(line: 378, column: 11, scope: !5149, inlinedAt: !5470)
!5667 = !DILocation(line: 378, column: 6, scope: !4966, inlinedAt: !5470)
!5668 = !DILocation(line: 378, column: 32, scope: !5149, inlinedAt: !5470)
!5669 = !DILocation(line: 379, column: 6, scope: !5154, inlinedAt: !5470)
!5670 = !DILocation(line: 379, column: 11, scope: !5154, inlinedAt: !5470)
!5671 = !DILocation(line: 379, column: 6, scope: !4966, inlinedAt: !5470)
!5672 = !DILocation(line: 379, column: 33, scope: !5154, inlinedAt: !5470)
!5673 = !DILocation(line: 380, column: 6, scope: !5159, inlinedAt: !5470)
!5674 = !DILocation(line: 380, column: 11, scope: !5159, inlinedAt: !5470)
!5675 = !DILocation(line: 380, column: 6, scope: !4966, inlinedAt: !5470)
!5676 = !DILocation(line: 380, column: 33, scope: !5159, inlinedAt: !5470)
!5677 = !DILocation(line: 381, column: 6, scope: !5164, inlinedAt: !5470)
!5678 = !DILocation(line: 381, column: 11, scope: !5164, inlinedAt: !5470)
!5679 = !DILocation(line: 381, column: 6, scope: !4966, inlinedAt: !5470)
!5680 = !DILocation(line: 381, column: 33, scope: !5164, inlinedAt: !5470)
!5681 = !DILocation(line: 382, column: 2, scope: !5169, inlinedAt: !5470)
!5682 = !DILocation(line: 382, column: 2, scope: !5173, inlinedAt: !5470)
!5683 = !DILocation(line: 382, column: 2, scope: !5174, inlinedAt: !5470)
!5684 = !DILocation(line: 386, column: 1, scope: !4966, inlinedAt: !5470)
!5685 = !DILocation(line: 547, column: 9, scope: !4947, inlinedAt: !5458)
!5686 = !DILocation(line: 549, column: 8, scope: !5180, inlinedAt: !5458)
!5687 = !DILocation(line: 549, column: 7, scope: !4947, inlinedAt: !5458)
!5688 = !DILocation(line: 550, column: 4, scope: !5180, inlinedAt: !5458)
!5689 = !DILocation(line: 553, column: 33, scope: !4947, inlinedAt: !5458)
!5690 = !DILocation(line: 325, column: 6, scope: !5185, inlinedAt: !5468)
!5691 = !DILocation(line: 325, column: 6, scope: !4960, inlinedAt: !5468)
!5692 = !DILocation(line: 326, column: 3, scope: !5185, inlinedAt: !5468)
!5693 = !DILocation(line: 332, column: 9, scope: !4960, inlinedAt: !5468)
!5694 = !DILocation(line: 332, column: 15, scope: !4960, inlinedAt: !5468)
!5695 = !DILocation(line: 332, column: 2, scope: !4960, inlinedAt: !5468)
!5696 = !DILocation(line: 336, column: 1, scope: !4960, inlinedAt: !5468)
!5697 = !DILocation(line: 553, column: 5, scope: !4947, inlinedAt: !5458)
!5698 = !DILocation(line: 553, column: 41, scope: !4947, inlinedAt: !5458)
!5699 = !DILocation(line: 554, column: 5, scope: !4947, inlinedAt: !5458)
!5700 = !DILocation(line: 554, column: 12, scope: !4947, inlinedAt: !5458)
!5701 = !DILocation(line: 448, column: 31, scope: !4942, inlinedAt: !5457)
!5702 = !DILocation(line: 448, column: 34, scope: !4942, inlinedAt: !5457)
!5703 = !DILocation(line: 448, column: 14, scope: !4942, inlinedAt: !5457)
!5704 = !DILocation(line: 450, column: 22, scope: !4942, inlinedAt: !5457)
!5705 = !DILocation(line: 450, column: 25, scope: !4942, inlinedAt: !5457)
!5706 = !DILocation(line: 450, column: 30, scope: !4942, inlinedAt: !5457)
!5707 = !DILocation(line: 450, column: 36, scope: !4942, inlinedAt: !5457)
!5708 = !DILocation(line: 450, column: 8, scope: !4942, inlinedAt: !5457)
!5709 = !DILocation(line: 450, column: 6, scope: !4942, inlinedAt: !5457)
!5710 = !DILocation(line: 451, column: 9, scope: !4942, inlinedAt: !5457)
!5711 = !DILocation(line: 552, column: 3, scope: !4947, inlinedAt: !5458)
!5712 = !DILocation(line: 557, column: 19, scope: !4949, inlinedAt: !5458)
!5713 = !DILocation(line: 557, column: 25, scope: !4949, inlinedAt: !5458)
!5714 = !DILocation(line: 557, column: 9, scope: !4949, inlinedAt: !5458)
!5715 = !DILocation(line: 557, column: 2, scope: !4949, inlinedAt: !5458)
!5716 = !DILocation(line: 558, column: 1, scope: !4949, inlinedAt: !5458)
!5717 = !DILocation(line: 158, column: 17, scope: !5459)
!5718 = !DILocation(line: 158, column: 15, scope: !5459)
!5719 = !DILocation(line: 160, column: 9, scope: !5720)
!5720 = distinct !DILexicalBlock(scope: !5459, file: !3, line: 160, column: 8)
!5721 = !DILocation(line: 160, column: 8, scope: !5459)
!5722 = !DILocation(line: 161, column: 5, scope: !5723)
!5723 = distinct !DILexicalBlock(scope: !5720, file: !3, line: 160, column: 21)
!5724 = !DILocation(line: 163, column: 5, scope: !5723)
!5725 = !DILocation(line: 166, column: 5, scope: !5459)
!5726 = !DILocation(line: 166, column: 19, scope: !5459)
!5727 = !DILocation(line: 166, column: 18, scope: !5459)
!5728 = !DILocation(line: 167, column: 24, scope: !5459)
!5729 = !DILocation(line: 167, column: 4, scope: !5459)
!5730 = !DILocation(line: 167, column: 16, scope: !5459)
!5731 = !DILocation(line: 167, column: 22, scope: !5459)
!5732 = !DILocation(line: 168, column: 9, scope: !5733)
!5733 = distinct !DILexicalBlock(scope: !5459, file: !3, line: 168, column: 8)
!5734 = !DILocation(line: 168, column: 8, scope: !5459)
!5735 = !DILocation(line: 169, column: 24, scope: !5733)
!5736 = !DILocation(line: 169, column: 22, scope: !5733)
!5737 = !DILocation(line: 169, column: 5, scope: !5733)
!5738 = !DILocation(line: 171, column: 14, scope: !5459)
!5739 = !DILocation(line: 171, column: 26, scope: !5459)
!5740 = !DILocation(line: 171, column: 33, scope: !5459)
!5741 = !DILocation(line: 171, column: 39, scope: !5459)
!5742 = !DILocation(line: 171, column: 4, scope: !5459)
!5743 = !DILocation(line: 172, column: 11, scope: !5459)
!5744 = !DILocation(line: 172, column: 9, scope: !5459)
!5745 = !DILocation(line: 173, column: 3, scope: !5459)
!5746 = !DILocation(line: 174, column: 2, scope: !5461)
!5747 = !DILocalVariable(name: "__mptr", scope: !5748, file: !3, line: 155, type: !118)
!5748 = distinct !DILexicalBlock(scope: !5462, file: !3, line: 155, column: 2)
!5749 = !DILocation(line: 155, column: 2, scope: !5748)
!5750 = !DILocation(line: 155, column: 2, scope: !5751)
!5751 = distinct !DILexicalBlock(scope: !5748, file: !3, line: 155, column: 2)
!5752 = distinct !{!5752, !5535, !5753}
!5753 = !DILocation(line: 174, column: 2, scope: !5463)
!5754 = !DILocation(line: 176, column: 9, scope: !5453)
!5755 = !DILocation(line: 176, column: 2, scope: !5453)
!5756 = !DILocation(line: 177, column: 1, scope: !5453)
!5757 = distinct !DISubprogram(name: "pnp_new_dependent_set", scope: !121, file: !121, line: 110, type: !5758, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!5758 = !DISubroutineType(types: !5759)
!5759 = !{!7, !221, !203}
!5760 = !DILocalVariable(name: "dev", arg: 1, scope: !5757, file: !121, line: 110, type: !221)
!5761 = !DILocation(line: 110, column: 66, scope: !5757)
!5762 = !DILocalVariable(name: "priority", arg: 2, scope: !5757, file: !121, line: 111, type: !203)
!5763 = !DILocation(line: 111, column: 12, scope: !5757)
!5764 = !DILocalVariable(name: "flags", scope: !5757, file: !121, line: 113, type: !7)
!5765 = !DILocation(line: 113, column: 15, scope: !5757)
!5766 = !DILocation(line: 115, column: 6, scope: !5767)
!5767 = distinct !DILexicalBlock(scope: !5757, file: !121, line: 115, column: 6)
!5768 = !DILocation(line: 115, column: 15, scope: !5767)
!5769 = !DILocation(line: 115, column: 6, scope: !5757)
!5770 = !DILocation(line: 116, column: 3, scope: !5771)
!5771 = distinct !DILexicalBlock(scope: !5767, file: !121, line: 115, column: 46)
!5772 = !DILocation(line: 119, column: 12, scope: !5771)
!5773 = !DILocation(line: 120, column: 2, scope: !5771)
!5774 = !DILocation(line: 123, column: 8, scope: !5757)
!5775 = !DILocation(line: 123, column: 13, scope: !5757)
!5776 = !DILocation(line: 123, column: 32, scope: !5757)
!5777 = !DILocation(line: 123, column: 55, scope: !5757)
!5778 = !DILocation(line: 122, column: 31, scope: !5757)
!5779 = !DILocation(line: 125, column: 8, scope: !5757)
!5780 = !DILocation(line: 125, column: 17, scope: !5757)
!5781 = !DILocation(line: 125, column: 45, scope: !5757)
!5782 = !DILocation(line: 124, column: 25, scope: !5757)
!5783 = !DILocation(line: 122, column: 8, scope: !5757)
!5784 = !DILocation(line: 128, column: 2, scope: !5757)
!5785 = !DILocation(line: 128, column: 7, scope: !5757)
!5786 = !DILocation(line: 128, column: 25, scope: !5757)
!5787 = !DILocation(line: 130, column: 9, scope: !5757)
!5788 = !DILocation(line: 130, column: 2, scope: !5757)
!5789 = distinct !DISubprogram(name: "pci_name", scope: !106, file: !106, line: 1875, type: !5790, scopeLine: 1876, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!5790 = !DISubroutineType(types: !5791)
!5791 = !{!194, !5792}
!5792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5793, size: 64)
!5793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4325)
!5794 = !DILocalVariable(name: "pdev", arg: 1, scope: !5789, file: !106, line: 1875, type: !5792)
!5795 = !DILocation(line: 1875, column: 58, scope: !5789)
!5796 = !DILocation(line: 1877, column: 19, scope: !5789)
!5797 = !DILocation(line: 1877, column: 25, scope: !5789)
!5798 = !DILocation(line: 1877, column: 9, scope: !5789)
!5799 = !DILocation(line: 1877, column: 2, scope: !5789)
!5800 = distinct !DISubprogram(name: "dev_name", scope: !73, file: !73, line: 609, type: !5801, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!5801 = !DISubroutineType(types: !5802)
!5802 = !{!194, !3693}
!5803 = !DILocalVariable(name: "dev", arg: 1, scope: !5800, file: !73, line: 609, type: !3693)
!5804 = !DILocation(line: 609, column: 57, scope: !5800)
!5805 = !DILocation(line: 612, column: 6, scope: !5806)
!5806 = distinct !DILexicalBlock(scope: !5800, file: !73, line: 612, column: 6)
!5807 = !DILocation(line: 612, column: 11, scope: !5806)
!5808 = !DILocation(line: 612, column: 6, scope: !5800)
!5809 = !DILocation(line: 613, column: 10, scope: !5806)
!5810 = !DILocation(line: 613, column: 15, scope: !5806)
!5811 = !DILocation(line: 613, column: 3, scope: !5806)
!5812 = !DILocation(line: 615, column: 23, scope: !5800)
!5813 = !DILocation(line: 615, column: 28, scope: !5800)
!5814 = !DILocation(line: 615, column: 9, scope: !5800)
!5815 = !DILocation(line: 615, column: 2, scope: !5800)
!5816 = !DILocation(line: 616, column: 1, scope: !5800)
!5817 = distinct !DISubprogram(name: "kobject_name", scope: !229, file: !229, line: 88, type: !5818, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!5818 = !DISubroutineType(types: !5819)
!5819 = !{!194, !5820}
!5820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5821, size: 64)
!5821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !228)
!5822 = !DILocalVariable(name: "kobj", arg: 1, scope: !5817, file: !229, line: 88, type: !5820)
!5823 = !DILocation(line: 88, column: 62, scope: !5817)
!5824 = !DILocation(line: 90, column: 9, scope: !5817)
!5825 = !DILocation(line: 90, column: 15, scope: !5817)
!5826 = !DILocation(line: 90, column: 2, scope: !5817)
!5827 = distinct !DISubprogram(name: "get_intel_host", scope: !3, file: !3, line: 348, type: !5828, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !255)
!5828 = !DISubroutineType(types: !5829)
!5829 = !{!4324}
!5830 = !DILocalVariable(name: "i", scope: !5827, file: !3, line: 350, type: !203)
!5831 = !DILocation(line: 350, column: 6, scope: !5827)
!5832 = !DILocalVariable(name: "host", scope: !5827, file: !3, line: 351, type: !4324)
!5833 = !DILocation(line: 351, column: 18, scope: !5827)
!5834 = !DILocation(line: 353, column: 9, scope: !5835)
!5835 = distinct !DILexicalBlock(scope: !5827, file: !3, line: 353, column: 2)
!5836 = !DILocation(line: 353, column: 7, scope: !5835)
!5837 = !DILocation(line: 353, column: 14, scope: !5838)
!5838 = distinct !DILexicalBlock(scope: !5835, file: !3, line: 353, column: 2)
!5839 = !DILocation(line: 353, column: 16, scope: !5838)
!5840 = !DILocation(line: 353, column: 2, scope: !5835)
!5841 = !DILocation(line: 354, column: 64, scope: !5842)
!5842 = distinct !DILexicalBlock(scope: !5838, file: !3, line: 353, column: 54)
!5843 = !DILocation(line: 354, column: 46, scope: !5842)
!5844 = !DILocation(line: 354, column: 10, scope: !5842)
!5845 = !DILocation(line: 354, column: 8, scope: !5842)
!5846 = !DILocation(line: 356, column: 7, scope: !5847)
!5847 = distinct !DILexicalBlock(scope: !5842, file: !3, line: 356, column: 7)
!5848 = !DILocation(line: 356, column: 7, scope: !5842)
!5849 = !DILocation(line: 357, column: 11, scope: !5847)
!5850 = !DILocation(line: 357, column: 4, scope: !5847)
!5851 = !DILocation(line: 358, column: 2, scope: !5842)
!5852 = !DILocation(line: 353, column: 50, scope: !5838)
!5853 = !DILocation(line: 353, column: 2, scope: !5838)
!5854 = distinct !{!5854, !5840, !5855}
!5855 = !DILocation(line: 358, column: 2, scope: !5835)
!5856 = !DILocation(line: 359, column: 2, scope: !5827)
!5857 = !DILocation(line: 360, column: 1, scope: !5827)
