; ModuleID = '../bcout/drivers/greybus/bundle.llvm.bc'
source_filename = "drivers/greybus/bundle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon = type { %struct.kernfs_elem_attr }
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
%struct.page = type { i64, %union.anon.3, %union.anon.53, %struct.atomic_t, [8 x i8] }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, %struct.address_space*, i64, i64 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, i32*, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { %struct.task_struct* }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.46, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.mm_struct = type { %struct.anon.16, [0 x i64] }
%struct.anon.16 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.17, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.17 = type { %struct.rb_node, i64 }
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
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.23, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.24, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.25, %union.anon.29, %struct.key_restriction* }
%union.anon.23 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.24 = type { i64 }
%union.anon.25 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.26, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.26 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.29 = type { %union.key_payload }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.32, %union.anon.33, i32 }
%struct.request_queue = type opaque
%union.anon.32 = type { %struct.list_head }
%union.anon.33 = type { %struct.hlist_node }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.34 }
%struct.anon.34 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.38 }
%struct.anon.38 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.45, i32, [12 x i8] }
%union.anon.45 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.46 = type { %struct.callback_head }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.47, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.50 }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { i64, i64 }
%union.anon.50 = type { [12 x i32] }
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
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.5 }
%union.anon.5 = type { %struct.wait_page_queue* }
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
%struct.atomic64_t = type { i64 }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.31 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.31 = type { %struct.callback_head }
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
%struct.device_type = type { i8*, %struct.attribute_group**, {}*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, {}*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, {}*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.kmem_cache = type opaque
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.gb_bundle = type { %struct.device, %struct.gb_interface*, i8, i8, i8, i8, i64, %struct.greybus_descriptor_cport*, %struct.list_head, i8*, %struct.list_head }
%struct.gb_interface = type { %struct.device, %struct.gb_control*, %struct.list_head, %struct.list_head, %struct.list_head, i8, i8, i8, i32, i32, i32, i32, i32, i64, %struct.gb_host_device*, %struct.gb_module*, i64, %struct.mutex, i8, i8, i8, i8, i8, i8, i8, %struct.work_struct, %struct.completion }
%struct.gb_control = type { %struct.device, %struct.gb_interface*, %struct.gb_connection*, i8, i8, i8, i8, i8*, i8* }
%struct.gb_connection = type { %struct.gb_host_device*, %struct.gb_interface*, %struct.gb_bundle*, %struct.kref, i16, i16, %struct.list_head, %struct.list_head, i32 (%struct.gb_operation*)*, i64, %struct.mutex, %struct.spinlock, i32, %struct.list_head, [16 x i8], %struct.workqueue_struct*, %struct.atomic_t, i8*, i8 }
%struct.gb_operation = type { %struct.gb_connection*, %struct.gb_message*, %struct.gb_message*, i64, i8, i16, i32, %struct.work_struct, void (%struct.gb_operation*)*, %struct.completion, %struct.timer_list, %struct.kref, %struct.atomic_t, i32, %struct.list_head, i8* }
%struct.gb_message = type { %struct.gb_operation*, %struct.gb_operation_msg_hdr*, i8*, i64, i8*, i8* }
%struct.gb_operation_msg_hdr = type { i16, i16, i8, i8, [2 x i8] }
%struct.gb_host_device = type { %struct.device, i32, %struct.gb_hd_driver*, %struct.list_head, %struct.list_head, %struct.ida, i64, i64, %struct.gb_svc*, [0 x i64] }
%struct.gb_hd_driver = type { i64, i32 (%struct.gb_host_device*, i32, i64)*, void (%struct.gb_host_device*, i16)*, i32 (%struct.gb_host_device*, i16, i64)*, i32 (%struct.gb_host_device*, i16)*, i32 (%struct.gb_host_device*, i16)*, i32 (%struct.gb_host_device*, i16)*, i32 (%struct.gb_host_device*, i16, i8, i32)*, i32 (%struct.gb_host_device*, i16, i64, i32)*, i32 (%struct.gb_host_device*, i16)*, i32 (%struct.gb_host_device*, i16, %struct.gb_message*, i32)*, void (%struct.gb_message*)*, i32 (%struct.gb_host_device*, i16)*, i32 (%struct.gb_host_device*, i16)*, i32 (%struct.gb_host_device*, i8*, i16, i8, i1)* }
%struct.ida = type { %struct.xarray }
%struct.gb_svc = type { %struct.device, %struct.gb_host_device*, %struct.gb_connection*, i32, %struct.ida, %struct.workqueue_struct*, i16, i8, i8, i8, %struct.gb_svc_watchdog*, i32, %struct.dentry*, %struct.svc_debugfs_pwrmon_rail* }
%struct.gb_svc_watchdog = type opaque
%struct.svc_debugfs_pwrmon_rail = type { i8, %struct.gb_svc* }
%struct.gb_module = type { %struct.device, %struct.gb_host_device*, %struct.list_head, i8, i64, i8, [0 x %struct.gb_interface*] }
%struct.greybus_descriptor_cport = type { i16, i8, i8 }

@.str = private unnamed_addr constant [15 x i8] c"greybus_bundle\00", align 1
@gb_bundle_pm_ops = internal constant %struct.dev_pm_ops { i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* @gb_bundle_suspend, i32 (%struct.device*)* @gb_bundle_resume, i32 (%struct.device*)* @gb_bundle_idle }, align 8, !dbg !0
@greybus_bundle_type = dso_local global { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* } { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), %struct.attribute_group** null, i32 (%struct.device*, %struct.kobj_uevent_env*)* null, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)* null, void (%struct.device*)* @gb_bundle_release, %struct.dev_pm_ops* @gb_bundle_pm_ops }, align 8, !dbg !3990
@.str.1 = private unnamed_addr constant [24 x i8] c"can't use bundle id %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"duplicate bundle id %u\0A\00", align 1
@greybus_bus_type = external dso_local global %struct.bus_type, align 8
@bundle_groups = internal global [2 x %struct.attribute_group*] [%struct.attribute_group* @bundle_group, %struct.attribute_group* null], align 16, !dbg !3992
@.str.3 = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"failed to register bundle: %d\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@bundle_group = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([4 x %struct.attribute*], [4 x %struct.attribute*]* @bundle_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !3995
@bundle_attrs = internal global [4 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_bundle_class, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_bundle_id, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_state, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !3997
@dev_attr_bundle_class = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @bundle_class_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !4000
@dev_attr_bundle_id = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @bundle_id_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !4014
@dev_attr_state = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @state_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @state_store }, align 8, !dbg !4016
@.str.6 = private unnamed_addr constant [13 x i8] c"bundle_class\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"0x%02x\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"bundle_id\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gb_bundle_release(%struct.device* %dev) #0 !dbg !4023 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %bundle = alloca %struct.gb_bundle*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.gb_bundle*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4024, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.declare(metadata %struct.gb_bundle** %bundle, metadata !4026, metadata !DIExpression()), !dbg !4027
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4028, metadata !DIExpression()), !dbg !4030
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4030
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4030
  store i8* %1, i8** %__mptr, align 8, !dbg !4030
  br label %do.body, !dbg !4030

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4031

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4030
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !4030
  %3 = bitcast i8* %add.ptr to %struct.gb_bundle*, !dbg !4030
  store %struct.gb_bundle* %3, %struct.gb_bundle** %tmp, align 8, !dbg !4031
  %4 = load %struct.gb_bundle*, %struct.gb_bundle** %tmp, align 8, !dbg !4030
  store %struct.gb_bundle* %4, %struct.gb_bundle** %bundle, align 8, !dbg !4027
  %5 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4033
  call void @trace_gb_bundle_release(%struct.gb_bundle* %5) #7, !dbg !4034
  %6 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4035
  %state = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %6, i32 0, i32 9, !dbg !4036
  %7 = load i8*, i8** %state, align 8, !dbg !4036
  call void @kfree(i8* %7) #7, !dbg !4037
  %8 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4038
  %cport_desc = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %8, i32 0, i32 7, !dbg !4039
  %9 = load %struct.greybus_descriptor_cport*, %struct.greybus_descriptor_cport** %cport_desc, align 8, !dbg !4039
  %10 = bitcast %struct.greybus_descriptor_cport* %9 to i8*, !dbg !4038
  call void @kfree(i8* %10) #7, !dbg !4040
  %11 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4041
  %12 = bitcast %struct.gb_bundle* %11 to i8*, !dbg !4041
  call void @kfree(i8* %12) #7, !dbg !4042
  ret void, !dbg !4043
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.gb_bundle* @gb_bundle_create(%struct.gb_interface* %intf, i8 zeroext %bundle_id, i8 zeroext %class) #0 !dbg !4044 {
entry:
  %retval = alloca %struct.gb_bundle*, align 8
  %intf.addr = alloca %struct.gb_interface*, align 8
  %bundle_id.addr = alloca i8, align 1
  %class.addr = alloca i8, align 1
  %bundle = alloca %struct.gb_bundle*, align 8
  store %struct.gb_interface* %intf, %struct.gb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_interface** %intf.addr, metadata !4047, metadata !DIExpression()), !dbg !4048
  store i8 %bundle_id, i8* %bundle_id.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %bundle_id.addr, metadata !4049, metadata !DIExpression()), !dbg !4050
  store i8 %class, i8* %class.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %class.addr, metadata !4051, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.declare(metadata %struct.gb_bundle** %bundle, metadata !4053, metadata !DIExpression()), !dbg !4054
  %0 = load i8, i8* %bundle_id.addr, align 1, !dbg !4055
  %conv = zext i8 %0 to i32, !dbg !4055
  %cmp = icmp eq i32 %conv, 255, !dbg !4057
  br i1 %cmp, label %if.then, label %if.end, !dbg !4058

if.then:                                          ; preds = %entry
  %1 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4059
  %dev = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %1, i32 0, i32 0, !dbg !4059
  %2 = load i8, i8* %bundle_id.addr, align 1, !dbg !4059
  %conv2 = zext i8 %2 to i32, !dbg !4059
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %conv2) #8, !dbg !4059
  store %struct.gb_bundle* null, %struct.gb_bundle** %retval, align 8, !dbg !4061
  br label %return, !dbg !4061

if.end:                                           ; preds = %entry
  %3 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4062
  %4 = load i8, i8* %bundle_id.addr, align 1, !dbg !4064
  %call = call %struct.gb_bundle* @gb_bundle_find(%struct.gb_interface* %3, i8 zeroext %4) #7, !dbg !4065
  %tobool = icmp ne %struct.gb_bundle* %call, null, !dbg !4065
  br i1 %tobool, label %if.then3, label %if.end6, !dbg !4066

if.then3:                                         ; preds = %if.end
  %5 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4067
  %dev4 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %5, i32 0, i32 0, !dbg !4067
  %6 = load i8, i8* %bundle_id.addr, align 1, !dbg !4067
  %conv5 = zext i8 %6 to i32, !dbg !4067
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %conv5) #8, !dbg !4067
  store %struct.gb_bundle* null, %struct.gb_bundle** %retval, align 8, !dbg !4069
  br label %return, !dbg !4069

if.end6:                                          ; preds = %if.end
  %call7 = call i8* @kzalloc(i64 768, i32 3264) #7, !dbg !4070
  %7 = bitcast i8* %call7 to %struct.gb_bundle*, !dbg !4070
  store %struct.gb_bundle* %7, %struct.gb_bundle** %bundle, align 8, !dbg !4071
  %8 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4072
  %tobool8 = icmp ne %struct.gb_bundle* %8, null, !dbg !4072
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !4074

if.then9:                                         ; preds = %if.end6
  store %struct.gb_bundle* null, %struct.gb_bundle** %retval, align 8, !dbg !4075
  br label %return, !dbg !4075

if.end10:                                         ; preds = %if.end6
  %9 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4076
  %10 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4077
  %intf11 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %10, i32 0, i32 1, !dbg !4078
  store %struct.gb_interface* %9, %struct.gb_interface** %intf11, align 8, !dbg !4079
  %11 = load i8, i8* %bundle_id.addr, align 1, !dbg !4080
  %12 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4081
  %id = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %12, i32 0, i32 2, !dbg !4082
  store i8 %11, i8* %id, align 8, !dbg !4083
  %13 = load i8, i8* %class.addr, align 1, !dbg !4084
  %14 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4085
  %class12 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %14, i32 0, i32 3, !dbg !4086
  store i8 %13, i8* %class12, align 1, !dbg !4087
  %15 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4088
  %connections = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %15, i32 0, i32 8, !dbg !4089
  call void @INIT_LIST_HEAD(%struct.list_head* %connections) #7, !dbg !4090
  %16 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4091
  %dev13 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %16, i32 0, i32 0, !dbg !4092
  %17 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4093
  %dev14 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %17, i32 0, i32 0, !dbg !4094
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev14, i32 0, i32 1, !dbg !4095
  store %struct.device* %dev13, %struct.device** %parent, align 8, !dbg !4096
  %18 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4097
  %dev15 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %18, i32 0, i32 0, !dbg !4098
  %bus = getelementptr inbounds %struct.device, %struct.device* %dev15, i32 0, i32 5, !dbg !4099
  store %struct.bus_type* @greybus_bus_type, %struct.bus_type** %bus, align 8, !dbg !4100
  %19 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4101
  %dev16 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %19, i32 0, i32 0, !dbg !4102
  %type = getelementptr inbounds %struct.device, %struct.device* %dev16, i32 0, i32 4, !dbg !4103
  store %struct.device_type* bitcast ({ i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }* @greybus_bundle_type to %struct.device_type*), %struct.device_type** %type, align 8, !dbg !4104
  %20 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4105
  %dev17 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %20, i32 0, i32 0, !dbg !4106
  %groups = getelementptr inbounds %struct.device, %struct.device* %dev17, i32 0, i32 30, !dbg !4107
  store %struct.attribute_group** getelementptr inbounds ([2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* @bundle_groups, i64 0, i64 0), %struct.attribute_group*** %groups, align 8, !dbg !4108
  %21 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4109
  %dev18 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %21, i32 0, i32 0, !dbg !4110
  %dma_mask = getelementptr inbounds %struct.device, %struct.device* %dev18, i32 0, i32 16, !dbg !4111
  %22 = load i64*, i64** %dma_mask, align 8, !dbg !4111
  %23 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4112
  %dev19 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %23, i32 0, i32 0, !dbg !4113
  %dma_mask20 = getelementptr inbounds %struct.device, %struct.device* %dev19, i32 0, i32 16, !dbg !4114
  store i64* %22, i64** %dma_mask20, align 8, !dbg !4115
  %24 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4116
  %dev21 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %24, i32 0, i32 0, !dbg !4117
  call void @device_initialize(%struct.device* %dev21) #7, !dbg !4118
  %25 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4119
  %dev22 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %25, i32 0, i32 0, !dbg !4120
  %26 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4121
  %dev23 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %26, i32 0, i32 0, !dbg !4122
  %call24 = call i8* @dev_name(%struct.device* %dev23) #7, !dbg !4123
  %27 = load i8, i8* %bundle_id.addr, align 1, !dbg !4124
  %conv25 = zext i8 %27 to i32, !dbg !4124
  %call26 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* %dev22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %call24, i32 %conv25) #7, !dbg !4125
  %28 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4126
  %links = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %28, i32 0, i32 10, !dbg !4127
  %29 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4128
  %bundles = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %29, i32 0, i32 2, !dbg !4129
  call void @list_add(%struct.list_head* %links, %struct.list_head* %bundles) #7, !dbg !4130
  %30 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4131
  call void @trace_gb_bundle_create(%struct.gb_bundle* %30) #7, !dbg !4132
  %31 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4133
  store %struct.gb_bundle* %31, %struct.gb_bundle** %retval, align 8, !dbg !4134
  br label %return, !dbg !4134

return:                                           ; preds = %if.end10, %if.then9, %if.then3, %if.then
  %32 = load %struct.gb_bundle*, %struct.gb_bundle** %retval, align 8, !dbg !4135
  ret %struct.gb_bundle* %32, !dbg !4135
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.gb_bundle* @gb_bundle_find(%struct.gb_interface* %intf, i8 zeroext %bundle_id) #0 !dbg !4136 {
entry:
  %retval = alloca %struct.gb_bundle*, align 8
  %intf.addr = alloca %struct.gb_interface*, align 8
  %bundle_id.addr = alloca i8, align 1
  %bundle = alloca %struct.gb_bundle*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.gb_bundle*, align 8
  %__mptr5 = alloca i8*, align 8
  %tmp10 = alloca %struct.gb_bundle*, align 8
  store %struct.gb_interface* %intf, %struct.gb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_interface** %intf.addr, metadata !4139, metadata !DIExpression()), !dbg !4140
  store i8 %bundle_id, i8* %bundle_id.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %bundle_id.addr, metadata !4141, metadata !DIExpression()), !dbg !4142
  call void @llvm.dbg.declare(metadata %struct.gb_bundle** %bundle, metadata !4143, metadata !DIExpression()), !dbg !4144
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4145, metadata !DIExpression()), !dbg !4148
  %0 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4148
  %bundles = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %0, i32 0, i32 2, !dbg !4148
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %bundles, i32 0, i32 0, !dbg !4148
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4148
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !4148
  store i8* %2, i8** %__mptr, align 8, !dbg !4148
  br label %do.body, !dbg !4148

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4149

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !4148
  %add.ptr = getelementptr i8, i8* %3, i64 -752, !dbg !4148
  %4 = bitcast i8* %add.ptr to %struct.gb_bundle*, !dbg !4148
  store %struct.gb_bundle* %4, %struct.gb_bundle** %tmp, align 8, !dbg !4149
  %5 = load %struct.gb_bundle*, %struct.gb_bundle** %tmp, align 8, !dbg !4148
  store %struct.gb_bundle* %5, %struct.gb_bundle** %bundle, align 8, !dbg !4151
  br label %for.cond, !dbg !4151

for.cond:                                         ; preds = %do.end9, %do.end
  %6 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4152
  %links = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %6, i32 0, i32 10, !dbg !4152
  %7 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4152
  %bundles1 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %7, i32 0, i32 2, !dbg !4152
  %cmp = icmp eq %struct.list_head* %links, %bundles1, !dbg !4152
  %lnot = xor i1 %cmp, true, !dbg !4152
  br i1 %lnot, label %for.body, label %for.end, !dbg !4151

for.body:                                         ; preds = %for.cond
  %8 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4154
  %id = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %8, i32 0, i32 2, !dbg !4157
  %9 = load i8, i8* %id, align 8, !dbg !4157
  %conv = zext i8 %9 to i32, !dbg !4154
  %10 = load i8, i8* %bundle_id.addr, align 1, !dbg !4158
  %conv2 = zext i8 %10 to i32, !dbg !4158
  %cmp3 = icmp eq i32 %conv, %conv2, !dbg !4159
  br i1 %cmp3, label %if.then, label %if.end, !dbg !4160

if.then:                                          ; preds = %for.body
  %11 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4161
  store %struct.gb_bundle* %11, %struct.gb_bundle** %retval, align 8, !dbg !4162
  br label %return, !dbg !4162

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !4163

for.inc:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr5, metadata !4164, metadata !DIExpression()), !dbg !4166
  %12 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4166
  %links6 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %12, i32 0, i32 10, !dbg !4166
  %next7 = getelementptr inbounds %struct.list_head, %struct.list_head* %links6, i32 0, i32 0, !dbg !4166
  %13 = load %struct.list_head*, %struct.list_head** %next7, align 8, !dbg !4166
  %14 = bitcast %struct.list_head* %13 to i8*, !dbg !4166
  store i8* %14, i8** %__mptr5, align 8, !dbg !4166
  br label %do.body8, !dbg !4166

do.body8:                                         ; preds = %for.inc
  br label %do.end9, !dbg !4167

do.end9:                                          ; preds = %do.body8
  %15 = load i8*, i8** %__mptr5, align 8, !dbg !4166
  %add.ptr11 = getelementptr i8, i8* %15, i64 -752, !dbg !4166
  %16 = bitcast i8* %add.ptr11 to %struct.gb_bundle*, !dbg !4166
  store %struct.gb_bundle* %16, %struct.gb_bundle** %tmp10, align 8, !dbg !4167
  %17 = load %struct.gb_bundle*, %struct.gb_bundle** %tmp10, align 8, !dbg !4166
  store %struct.gb_bundle* %17, %struct.gb_bundle** %bundle, align 8, !dbg !4152
  br label %for.cond, !dbg !4152, !llvm.loop !4169

for.end:                                          ; preds = %for.cond
  store %struct.gb_bundle* null, %struct.gb_bundle** %retval, align 8, !dbg !4171
  br label %return, !dbg !4171

return:                                           ; preds = %for.end, %if.then
  %18 = load %struct.gb_bundle*, %struct.gb_bundle** %retval, align 8, !dbg !4172
  ret %struct.gb_bundle* %18, !dbg !4172
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4173 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4176, metadata !DIExpression()), !dbg !4180
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4186, metadata !DIExpression()), !dbg !4187
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4188, metadata !DIExpression()), !dbg !4189
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4190, metadata !DIExpression()), !dbg !4191
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4192, metadata !DIExpression()), !dbg !4196
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4198, metadata !DIExpression()), !dbg !4202
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4204, metadata !DIExpression()), !dbg !4208
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4213, metadata !DIExpression()), !dbg !4214
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4215, metadata !DIExpression()), !dbg !4216
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4217, metadata !DIExpression()), !dbg !4218
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4219, metadata !DIExpression()), !dbg !4220
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4221, metadata !DIExpression()), !dbg !4222
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4223, metadata !DIExpression()), !dbg !4224
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4225, metadata !DIExpression()), !dbg !4226
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4227, metadata !DIExpression()), !dbg !4228
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4229, metadata !DIExpression()), !dbg !4230
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4231, metadata !DIExpression()), !dbg !4232
  %0 = load i64, i64* %size.addr, align 8, !dbg !4233
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4234
  %or = or i32 %1, 256, !dbg !4235
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4236
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !4237
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4238

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4239
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4240
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4241

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4242
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4243
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4244
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !4245
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4222
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4246
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4247
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4248
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4249
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4250
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4251
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !4252
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4252
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4252
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4252
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !4252
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4253
  br label %kmalloc.exit, !dbg !4253

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4254
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4255
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4255
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4257

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4258
  br label %kmalloc_index.exit.i, !dbg !4258

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4259
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4261
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4262

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4263
  br label %kmalloc_index.exit.i, !dbg !4263

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4264
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4266
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4267

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4268
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4269
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4270

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4271
  br label %kmalloc_index.exit.i, !dbg !4271

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4272
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4274
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4275

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4276
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4277
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4278

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4279
  br label %kmalloc_index.exit.i, !dbg !4279

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4280
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4282
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4283

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4284
  br label %kmalloc_index.exit.i, !dbg !4284

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4285
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4287
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4288

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4289
  br label %kmalloc_index.exit.i, !dbg !4289

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4290
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4292
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4293

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4294
  br label %kmalloc_index.exit.i, !dbg !4294

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4295
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4297
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4298

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4299
  br label %kmalloc_index.exit.i, !dbg !4299

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4300
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4302
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4303

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4304
  br label %kmalloc_index.exit.i, !dbg !4304

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4305
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4307
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4308

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4309
  br label %kmalloc_index.exit.i, !dbg !4309

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4310
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4312
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4313

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4314
  br label %kmalloc_index.exit.i, !dbg !4314

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4315
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4317
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4318

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4319
  br label %kmalloc_index.exit.i, !dbg !4319

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4320
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4322
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4323

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4324
  br label %kmalloc_index.exit.i, !dbg !4324

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4325
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4327
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4328

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4329
  br label %kmalloc_index.exit.i, !dbg !4329

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4330
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4332
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4333

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4334
  br label %kmalloc_index.exit.i, !dbg !4334

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4335
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4337
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4338

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4339
  br label %kmalloc_index.exit.i, !dbg !4339

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4340
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4342
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4343

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4344
  br label %kmalloc_index.exit.i, !dbg !4344

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4345
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4347
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4348

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4349
  br label %kmalloc_index.exit.i, !dbg !4349

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4350
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4352
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4353

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4354
  br label %kmalloc_index.exit.i, !dbg !4354

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4355
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4357
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4358

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4359
  br label %kmalloc_index.exit.i, !dbg !4359

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4360
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4362
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4363

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4364
  br label %kmalloc_index.exit.i, !dbg !4364

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4365
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4367
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4368

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4369
  br label %kmalloc_index.exit.i, !dbg !4369

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4370
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4372
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4373

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4374
  br label %kmalloc_index.exit.i, !dbg !4374

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4375
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4377
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4378

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4379
  br label %kmalloc_index.exit.i, !dbg !4379

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4380
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4382
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4383

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4384
  br label %kmalloc_index.exit.i, !dbg !4384

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4385
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4387
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4388

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4389
  br label %kmalloc_index.exit.i, !dbg !4389

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4390
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4392
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4393

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4394
  br label %kmalloc_index.exit.i, !dbg !4394

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4395
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4397
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4398

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4399
  br label %kmalloc_index.exit.i, !dbg !4399

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !4400, !srcloc !4403
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #9, !dbg !4404, !srcloc !4407
  unreachable, !dbg !4408

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4409
  store i32 %45, i32* %index.i, align 4, !dbg !4410
  %46 = load i32, i32* %index.i, align 4, !dbg !4411
  %tobool.i = icmp ne i32 %46, 0, !dbg !4411
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4413

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4414
  br label %kmalloc.exit, !dbg !4414

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4415
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4416
  %and.i.i = and i32 %48, 17, !dbg !4416
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4416
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4416
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4416
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4416
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4418

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4419
  br label %kmalloc_type.exit.i, !dbg !4419

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4420
  %and2.i.i = and i32 %49, 1, !dbg !4421
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4420
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4420
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4420
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4422
  br label %kmalloc_type.exit.i, !dbg !4422

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4423
  %idxprom.i = zext i32 %51 to i64, !dbg !4424
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4424
  %52 = load i32, i32* %index.i, align 4, !dbg !4425
  %idxprom6.i = zext i32 %52 to i64, !dbg !4424
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4424
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4424
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4426
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4427
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4428
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4429
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !4430
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4430
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4430
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4430
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !4430
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4191
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4431
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4432
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4433
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4434
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !4435
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4436
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4437
  store i8* %62, i8** %retval.i, align 8, !dbg !4438
  br label %kmalloc.exit, !dbg !4438

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4439
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4440
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !4441
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4441
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4441
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4441
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !4441
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4442
  br label %kmalloc.exit, !dbg !4442

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4443
  ret i8* %65, !dbg !4444
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !4445 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !4449, metadata !DIExpression()), !dbg !4450
  br label %do.body, !dbg !4451

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4452

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !4454

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !4452

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4456
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4456
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !4456
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !4456
  br label %do.end3, !dbg !4456

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !4452

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4458
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4459
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !4460
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !4461
  ret void, !dbg !4462
}

; Function Attrs: noredzone
declare dso_local void @device_initialize(%struct.device*) #3

; Function Attrs: noredzone
declare dso_local i32 @dev_set_name(%struct.device*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #0 !dbg !4463 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4466, metadata !DIExpression()), !dbg !4467
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4468
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !4470
  %1 = load i8*, i8** %init_name, align 8, !dbg !4470
  %tobool = icmp ne i8* %1, null, !dbg !4468
  br i1 %tobool, label %if.then, label %if.end, !dbg !4471

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4472
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !4473
  %3 = load i8*, i8** %init_name1, align 8, !dbg !4473
  store i8* %3, i8** %retval, align 8, !dbg !4474
  br label %return, !dbg !4474

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4475
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !4476
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #7, !dbg !4477
  store i8* %call, i8** %retval, align 8, !dbg !4478
  br label %return, !dbg !4478

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !4479
  ret i8* %5, !dbg !4479
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !4480 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4483, metadata !DIExpression()), !dbg !4484
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !4485, metadata !DIExpression()), !dbg !4486
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4487
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4488
  %2 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4489
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 0, !dbg !4490
  %3 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4490
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %3) #7, !dbg !4491
  ret void, !dbg !4492
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @trace_gb_bundle_create(%struct.gb_bundle* %bundle) #0 !dbg !4493 {
entry:
  %bundle.addr = alloca %struct.gb_bundle*, align 8
  store %struct.gb_bundle* %bundle, %struct.gb_bundle** %bundle.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_bundle** %bundle.addr, metadata !4497, metadata !DIExpression()), !dbg !4498
  ret void, !dbg !4498
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @gb_bundle_add(%struct.gb_bundle* %bundle) #0 !dbg !4499 {
entry:
  %retval = alloca i32, align 4
  %bundle.addr = alloca %struct.gb_bundle*, align 8
  %ret = alloca i32, align 4
  store %struct.gb_bundle* %bundle, %struct.gb_bundle** %bundle.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_bundle** %bundle.addr, metadata !4502, metadata !DIExpression()), !dbg !4503
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4504, metadata !DIExpression()), !dbg !4505
  %0 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle.addr, align 8, !dbg !4506
  %dev = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %0, i32 0, i32 0, !dbg !4507
  %call = call i32 @device_add(%struct.device* %dev) #7, !dbg !4508
  store i32 %call, i32* %ret, align 4, !dbg !4509
  %1 = load i32, i32* %ret, align 4, !dbg !4510
  %tobool = icmp ne i32 %1, 0, !dbg !4510
  br i1 %tobool, label %if.then, label %if.end, !dbg !4512

if.then:                                          ; preds = %entry
  %2 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle.addr, align 8, !dbg !4513
  %dev1 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %2, i32 0, i32 0, !dbg !4513
  %3 = load i32, i32* %ret, align 4, !dbg !4513
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %3) #8, !dbg !4513
  %4 = load i32, i32* %ret, align 4, !dbg !4515
  store i32 %4, i32* %retval, align 4, !dbg !4516
  br label %return, !dbg !4516

if.end:                                           ; preds = %entry
  %5 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle.addr, align 8, !dbg !4517
  call void @trace_gb_bundle_add(%struct.gb_bundle* %5) #7, !dbg !4518
  store i32 0, i32* %retval, align 4, !dbg !4519
  br label %return, !dbg !4519

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !4520
  ret i32 %6, !dbg !4520
}

; Function Attrs: noredzone
declare dso_local i32 @device_add(%struct.device*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @trace_gb_bundle_add(%struct.gb_bundle* %bundle) #0 !dbg !4521 {
entry:
  %bundle.addr = alloca %struct.gb_bundle*, align 8
  store %struct.gb_bundle* %bundle, %struct.gb_bundle** %bundle.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_bundle** %bundle.addr, metadata !4522, metadata !DIExpression()), !dbg !4523
  ret void, !dbg !4523
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @gb_bundle_destroy(%struct.gb_bundle* %bundle) #0 !dbg !4524 {
entry:
  %bundle.addr = alloca %struct.gb_bundle*, align 8
  store %struct.gb_bundle* %bundle, %struct.gb_bundle** %bundle.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_bundle** %bundle.addr, metadata !4525, metadata !DIExpression()), !dbg !4526
  %0 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle.addr, align 8, !dbg !4527
  call void @trace_gb_bundle_destroy(%struct.gb_bundle* %0) #7, !dbg !4528
  %1 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle.addr, align 8, !dbg !4529
  %dev = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %1, i32 0, i32 0, !dbg !4531
  %call = call i32 @device_is_registered(%struct.device* %dev) #7, !dbg !4532
  %tobool = icmp ne i32 %call, 0, !dbg !4532
  br i1 %tobool, label %if.then, label %if.end, !dbg !4533

if.then:                                          ; preds = %entry
  %2 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle.addr, align 8, !dbg !4534
  %dev1 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %2, i32 0, i32 0, !dbg !4535
  call void @device_del(%struct.device* %dev1) #7, !dbg !4536
  br label %if.end, !dbg !4536

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle.addr, align 8, !dbg !4537
  %links = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %3, i32 0, i32 10, !dbg !4538
  call void @list_del(%struct.list_head* %links) #7, !dbg !4539
  %4 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle.addr, align 8, !dbg !4540
  %dev2 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %4, i32 0, i32 0, !dbg !4541
  call void @put_device(%struct.device* %dev2) #7, !dbg !4542
  ret void, !dbg !4543
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @trace_gb_bundle_destroy(%struct.gb_bundle* %bundle) #0 !dbg !4544 {
entry:
  %bundle.addr = alloca %struct.gb_bundle*, align 8
  store %struct.gb_bundle* %bundle, %struct.gb_bundle** %bundle.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_bundle** %bundle.addr, metadata !4545, metadata !DIExpression()), !dbg !4546
  ret void, !dbg !4546
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @device_is_registered(%struct.device* %dev) #0 !dbg !4547 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4548, metadata !DIExpression()), !dbg !4549
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4550
  %kobj = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 0, !dbg !4551
  %state_in_sysfs = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i32 0, i32 7, !dbg !4552
  %bf.load = load i8, i8* %state_in_sysfs, align 4, !dbg !4552
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !4552
  %bf.clear = and i8 %bf.lshr, 1, !dbg !4552
  %bf.cast = zext i8 %bf.clear to i32, !dbg !4552
  ret i32 %bf.cast, !dbg !4553
}

; Function Attrs: noredzone
declare dso_local void @device_del(%struct.device*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !4554 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !4555, metadata !DIExpression()), !dbg !4556
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4557
  call void @__list_del_entry(%struct.list_head* %0) #7, !dbg !4558
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4559
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !4560
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !4561
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4562
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !4563
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !4564
  ret void, !dbg !4565
}

; Function Attrs: noredzone
declare dso_local void @put_device(%struct.device*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @trace_gb_bundle_release(%struct.gb_bundle* %bundle) #0 !dbg !4566 {
entry:
  %bundle.addr = alloca %struct.gb_bundle*, align 8
  store %struct.gb_bundle* %bundle, %struct.gb_bundle** %bundle.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_bundle** %bundle.addr, metadata !4567, metadata !DIExpression()), !dbg !4568
  ret void, !dbg !4568
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gb_bundle_suspend(%struct.device* %dev) #0 !dbg !4569 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %bundle = alloca %struct.gb_bundle*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.gb_bundle*, align 8
  %pm = alloca %struct.dev_pm_ops*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4570, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.declare(metadata %struct.gb_bundle** %bundle, metadata !4572, metadata !DIExpression()), !dbg !4573
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4574, metadata !DIExpression()), !dbg !4576
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4576
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4576
  store i8* %1, i8** %__mptr, align 8, !dbg !4576
  br label %do.body, !dbg !4576

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4577

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4576
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !4576
  %3 = bitcast i8* %add.ptr to %struct.gb_bundle*, !dbg !4576
  store %struct.gb_bundle* %3, %struct.gb_bundle** %tmp, align 8, !dbg !4577
  %4 = load %struct.gb_bundle*, %struct.gb_bundle** %tmp, align 8, !dbg !4576
  store %struct.gb_bundle* %4, %struct.gb_bundle** %bundle, align 8, !dbg !4573
  call void @llvm.dbg.declare(metadata %struct.dev_pm_ops** %pm, metadata !4579, metadata !DIExpression()), !dbg !4580
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4581
  %driver = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 6, !dbg !4582
  %6 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !4582
  %pm1 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %6, i32 0, i32 16, !dbg !4583
  %7 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm1, align 8, !dbg !4583
  store %struct.dev_pm_ops* %7, %struct.dev_pm_ops** %pm, align 8, !dbg !4580
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4584, metadata !DIExpression()), !dbg !4585
  %8 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !4586
  %tobool = icmp ne %struct.dev_pm_ops* %8, null, !dbg !4586
  br i1 %tobool, label %land.lhs.true, label %if.else, !dbg !4588

land.lhs.true:                                    ; preds = %do.end
  %9 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !4589
  %runtime_suspend = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %9, i32 0, i32 20, !dbg !4590
  %10 = load i32 (%struct.device*)*, i32 (%struct.device*)** %runtime_suspend, align 8, !dbg !4590
  %tobool2 = icmp ne i32 (%struct.device*)* %10, null, !dbg !4589
  br i1 %tobool2, label %if.then, label %if.else, !dbg !4591

if.then:                                          ; preds = %land.lhs.true
  %11 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !4592
  %runtime_suspend3 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %11, i32 0, i32 20, !dbg !4594
  %12 = load i32 (%struct.device*)*, i32 (%struct.device*)** %runtime_suspend3, align 8, !dbg !4594
  %13 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4595
  %dev4 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %13, i32 0, i32 0, !dbg !4596
  %call = call i32 %12(%struct.device* %dev4) #7, !dbg !4592
  store i32 %call, i32* %ret, align 4, !dbg !4597
  %14 = load i32, i32* %ret, align 4, !dbg !4598
  %tobool5 = icmp ne i32 %14, 0, !dbg !4598
  br i1 %tobool5, label %if.then6, label %if.end, !dbg !4600

if.then6:                                         ; preds = %if.then
  %15 = load i32, i32* %ret, align 4, !dbg !4601
  store i32 %15, i32* %retval, align 4, !dbg !4602
  br label %return, !dbg !4602

if.end:                                           ; preds = %if.then
  br label %if.end7, !dbg !4603

if.else:                                          ; preds = %land.lhs.true, %do.end
  %16 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4604
  call void @gb_bundle_disable_all_connections(%struct.gb_bundle* %16) #7, !dbg !4606
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.end
  %17 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4607
  %intf = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %17, i32 0, i32 1, !dbg !4608
  %18 = load %struct.gb_interface*, %struct.gb_interface** %intf, align 8, !dbg !4608
  %control = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %18, i32 0, i32 1, !dbg !4609
  %19 = load %struct.gb_control*, %struct.gb_control** %control, align 8, !dbg !4609
  %20 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4610
  %id = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %20, i32 0, i32 2, !dbg !4611
  %21 = load i8, i8* %id, align 8, !dbg !4611
  %call8 = call i32 @gb_control_bundle_suspend(%struct.gb_control* %19, i8 zeroext %21) #7, !dbg !4612
  store i32 %call8, i32* %ret, align 4, !dbg !4613
  %22 = load i32, i32* %ret, align 4, !dbg !4614
  %tobool9 = icmp ne i32 %22, 0, !dbg !4614
  br i1 %tobool9, label %if.then10, label %if.end19, !dbg !4616

if.then10:                                        ; preds = %if.end7
  %23 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !4617
  %tobool11 = icmp ne %struct.dev_pm_ops* %23, null, !dbg !4617
  br i1 %tobool11, label %land.lhs.true12, label %if.else17, !dbg !4620

land.lhs.true12:                                  ; preds = %if.then10
  %24 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !4621
  %runtime_resume = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %24, i32 0, i32 21, !dbg !4622
  %25 = load i32 (%struct.device*)*, i32 (%struct.device*)** %runtime_resume, align 8, !dbg !4622
  %tobool13 = icmp ne i32 (%struct.device*)* %25, null, !dbg !4621
  br i1 %tobool13, label %if.then14, label %if.else17, !dbg !4623

if.then14:                                        ; preds = %land.lhs.true12
  %26 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !4624
  %runtime_resume15 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %26, i32 0, i32 21, !dbg !4625
  %27 = load i32 (%struct.device*)*, i32 (%struct.device*)** %runtime_resume15, align 8, !dbg !4625
  %28 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4626
  %call16 = call i32 %27(%struct.device* %28) #7, !dbg !4624
  store i32 %call16, i32* %ret, align 4, !dbg !4627
  br label %if.end18, !dbg !4628

if.else17:                                        ; preds = %land.lhs.true12, %if.then10
  %29 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4629
  call void @gb_bundle_enable_all_connections(%struct.gb_bundle* %29) #7, !dbg !4630
  br label %if.end18

if.end18:                                         ; preds = %if.else17, %if.then14
  %30 = load i32, i32* %ret, align 4, !dbg !4631
  store i32 %30, i32* %retval, align 4, !dbg !4632
  br label %return, !dbg !4632

if.end19:                                         ; preds = %if.end7
  store i32 0, i32* %retval, align 4, !dbg !4633
  br label %return, !dbg !4633

return:                                           ; preds = %if.end19, %if.end18, %if.then6
  %31 = load i32, i32* %retval, align 4, !dbg !4634
  ret i32 %31, !dbg !4634
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gb_bundle_resume(%struct.device* %dev) #0 !dbg !4635 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %bundle = alloca %struct.gb_bundle*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.gb_bundle*, align 8
  %pm = alloca %struct.dev_pm_ops*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4636, metadata !DIExpression()), !dbg !4637
  call void @llvm.dbg.declare(metadata %struct.gb_bundle** %bundle, metadata !4638, metadata !DIExpression()), !dbg !4639
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4640, metadata !DIExpression()), !dbg !4642
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4642
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4642
  store i8* %1, i8** %__mptr, align 8, !dbg !4642
  br label %do.body, !dbg !4642

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4643

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4642
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !4642
  %3 = bitcast i8* %add.ptr to %struct.gb_bundle*, !dbg !4642
  store %struct.gb_bundle* %3, %struct.gb_bundle** %tmp, align 8, !dbg !4643
  %4 = load %struct.gb_bundle*, %struct.gb_bundle** %tmp, align 8, !dbg !4642
  store %struct.gb_bundle* %4, %struct.gb_bundle** %bundle, align 8, !dbg !4639
  call void @llvm.dbg.declare(metadata %struct.dev_pm_ops** %pm, metadata !4645, metadata !DIExpression()), !dbg !4646
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4647
  %driver = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 6, !dbg !4648
  %6 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !4648
  %pm1 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %6, i32 0, i32 16, !dbg !4649
  %7 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm1, align 8, !dbg !4649
  store %struct.dev_pm_ops* %7, %struct.dev_pm_ops** %pm, align 8, !dbg !4646
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4650, metadata !DIExpression()), !dbg !4651
  %8 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4652
  %intf = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %8, i32 0, i32 1, !dbg !4653
  %9 = load %struct.gb_interface*, %struct.gb_interface** %intf, align 8, !dbg !4653
  %control = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %9, i32 0, i32 1, !dbg !4654
  %10 = load %struct.gb_control*, %struct.gb_control** %control, align 8, !dbg !4654
  %11 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4655
  %id = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %11, i32 0, i32 2, !dbg !4656
  %12 = load i8, i8* %id, align 8, !dbg !4656
  %call = call i32 @gb_control_bundle_resume(%struct.gb_control* %10, i8 zeroext %12) #7, !dbg !4657
  store i32 %call, i32* %ret, align 4, !dbg !4658
  %13 = load i32, i32* %ret, align 4, !dbg !4659
  %tobool = icmp ne i32 %13, 0, !dbg !4659
  br i1 %tobool, label %if.then, label %if.end, !dbg !4661

if.then:                                          ; preds = %do.end
  %14 = load i32, i32* %ret, align 4, !dbg !4662
  store i32 %14, i32* %retval, align 4, !dbg !4663
  br label %return, !dbg !4663

if.end:                                           ; preds = %do.end
  %15 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !4664
  %tobool2 = icmp ne %struct.dev_pm_ops* %15, null, !dbg !4664
  br i1 %tobool2, label %land.lhs.true, label %if.else, !dbg !4666

land.lhs.true:                                    ; preds = %if.end
  %16 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !4667
  %runtime_resume = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %16, i32 0, i32 21, !dbg !4668
  %17 = load i32 (%struct.device*)*, i32 (%struct.device*)** %runtime_resume, align 8, !dbg !4668
  %tobool3 = icmp ne i32 (%struct.device*)* %17, null, !dbg !4667
  br i1 %tobool3, label %if.then4, label %if.else, !dbg !4669

if.then4:                                         ; preds = %land.lhs.true
  %18 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !4670
  %runtime_resume5 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %18, i32 0, i32 21, !dbg !4672
  %19 = load i32 (%struct.device*)*, i32 (%struct.device*)** %runtime_resume5, align 8, !dbg !4672
  %20 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4673
  %call6 = call i32 %19(%struct.device* %20) #7, !dbg !4670
  store i32 %call6, i32* %ret, align 4, !dbg !4674
  %21 = load i32, i32* %ret, align 4, !dbg !4675
  %tobool7 = icmp ne i32 %21, 0, !dbg !4675
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !4677

if.then8:                                         ; preds = %if.then4
  %22 = load i32, i32* %ret, align 4, !dbg !4678
  store i32 %22, i32* %retval, align 4, !dbg !4679
  br label %return, !dbg !4679

if.end9:                                          ; preds = %if.then4
  br label %if.end10, !dbg !4680

if.else:                                          ; preds = %land.lhs.true, %if.end
  %23 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4681
  call void @gb_bundle_enable_all_connections(%struct.gb_bundle* %23) #7, !dbg !4683
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.end9
  store i32 0, i32* %retval, align 4, !dbg !4684
  br label %return, !dbg !4684

return:                                           ; preds = %if.end10, %if.then8, %if.then
  %24 = load i32, i32* %retval, align 4, !dbg !4685
  ret i32 %24, !dbg !4685
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gb_bundle_idle(%struct.device* %dev) #0 !dbg !4686 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4687, metadata !DIExpression()), !dbg !4688
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4689
  call void @pm_runtime_mark_last_busy(%struct.device* %0) #7, !dbg !4690
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4691
  %call = call i32 @pm_request_autosuspend(%struct.device* %1) #7, !dbg !4692
  ret i32 0, !dbg !4693
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gb_bundle_disable_all_connections(%struct.gb_bundle* %bundle) #0 !dbg !4694 {
entry:
  %bundle.addr = alloca %struct.gb_bundle*, align 8
  %connection = alloca %struct.gb_connection*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.gb_connection*, align 8
  %__mptr2 = alloca i8*, align 8
  %tmp7 = alloca %struct.gb_connection*, align 8
  store %struct.gb_bundle* %bundle, %struct.gb_bundle** %bundle.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_bundle** %bundle.addr, metadata !4695, metadata !DIExpression()), !dbg !4696
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection, metadata !4697, metadata !DIExpression()), !dbg !4698
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4699, metadata !DIExpression()), !dbg !4702
  %0 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle.addr, align 8, !dbg !4702
  %connections = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %0, i32 0, i32 8, !dbg !4702
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %connections, i32 0, i32 0, !dbg !4702
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4702
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !4702
  store i8* %2, i8** %__mptr, align 8, !dbg !4702
  br label %do.body, !dbg !4702

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4703

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !4702
  %add.ptr = getelementptr i8, i8* %3, i64 -48, !dbg !4702
  %4 = bitcast i8* %add.ptr to %struct.gb_connection*, !dbg !4702
  store %struct.gb_connection* %4, %struct.gb_connection** %tmp, align 8, !dbg !4703
  %5 = load %struct.gb_connection*, %struct.gb_connection** %tmp, align 8, !dbg !4702
  store %struct.gb_connection* %5, %struct.gb_connection** %connection, align 8, !dbg !4705
  br label %for.cond, !dbg !4705

for.cond:                                         ; preds = %do.end6, %do.end
  %6 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4706
  %bundle_links = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %6, i32 0, i32 7, !dbg !4706
  %7 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle.addr, align 8, !dbg !4706
  %connections1 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %7, i32 0, i32 8, !dbg !4706
  %cmp = icmp eq %struct.list_head* %bundle_links, %connections1, !dbg !4706
  %lnot = xor i1 %cmp, true, !dbg !4706
  br i1 %lnot, label %for.body, label %for.end, !dbg !4705

for.body:                                         ; preds = %for.cond
  %8 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4708
  call void @gb_connection_disable(%struct.gb_connection* %8) #7, !dbg !4709
  br label %for.inc, !dbg !4709

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.declare(metadata i8** %__mptr2, metadata !4710, metadata !DIExpression()), !dbg !4712
  %9 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4712
  %bundle_links3 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %9, i32 0, i32 7, !dbg !4712
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %bundle_links3, i32 0, i32 0, !dbg !4712
  %10 = load %struct.list_head*, %struct.list_head** %next4, align 8, !dbg !4712
  %11 = bitcast %struct.list_head* %10 to i8*, !dbg !4712
  store i8* %11, i8** %__mptr2, align 8, !dbg !4712
  br label %do.body5, !dbg !4712

do.body5:                                         ; preds = %for.inc
  br label %do.end6, !dbg !4713

do.end6:                                          ; preds = %do.body5
  %12 = load i8*, i8** %__mptr2, align 8, !dbg !4712
  %add.ptr8 = getelementptr i8, i8* %12, i64 -48, !dbg !4712
  %13 = bitcast i8* %add.ptr8 to %struct.gb_connection*, !dbg !4712
  store %struct.gb_connection* %13, %struct.gb_connection** %tmp7, align 8, !dbg !4713
  %14 = load %struct.gb_connection*, %struct.gb_connection** %tmp7, align 8, !dbg !4712
  store %struct.gb_connection* %14, %struct.gb_connection** %connection, align 8, !dbg !4706
  br label %for.cond, !dbg !4706, !llvm.loop !4715

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4717
}

; Function Attrs: noredzone
declare dso_local i32 @gb_control_bundle_suspend(%struct.gb_control*, i8 zeroext) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gb_bundle_enable_all_connections(%struct.gb_bundle* %bundle) #0 !dbg !4718 {
entry:
  %bundle.addr = alloca %struct.gb_bundle*, align 8
  %connection = alloca %struct.gb_connection*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.gb_connection*, align 8
  %__mptr2 = alloca i8*, align 8
  %tmp7 = alloca %struct.gb_connection*, align 8
  store %struct.gb_bundle* %bundle, %struct.gb_bundle** %bundle.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_bundle** %bundle.addr, metadata !4719, metadata !DIExpression()), !dbg !4720
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection, metadata !4721, metadata !DIExpression()), !dbg !4722
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4723, metadata !DIExpression()), !dbg !4726
  %0 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle.addr, align 8, !dbg !4726
  %connections = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %0, i32 0, i32 8, !dbg !4726
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %connections, i32 0, i32 0, !dbg !4726
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4726
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !4726
  store i8* %2, i8** %__mptr, align 8, !dbg !4726
  br label %do.body, !dbg !4726

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4727

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !4726
  %add.ptr = getelementptr i8, i8* %3, i64 -48, !dbg !4726
  %4 = bitcast i8* %add.ptr to %struct.gb_connection*, !dbg !4726
  store %struct.gb_connection* %4, %struct.gb_connection** %tmp, align 8, !dbg !4727
  %5 = load %struct.gb_connection*, %struct.gb_connection** %tmp, align 8, !dbg !4726
  store %struct.gb_connection* %5, %struct.gb_connection** %connection, align 8, !dbg !4729
  br label %for.cond, !dbg !4729

for.cond:                                         ; preds = %do.end6, %do.end
  %6 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4730
  %bundle_links = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %6, i32 0, i32 7, !dbg !4730
  %7 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle.addr, align 8, !dbg !4730
  %connections1 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %7, i32 0, i32 8, !dbg !4730
  %cmp = icmp eq %struct.list_head* %bundle_links, %connections1, !dbg !4730
  %lnot = xor i1 %cmp, true, !dbg !4730
  br i1 %lnot, label %for.body, label %for.end, !dbg !4729

for.body:                                         ; preds = %for.cond
  %8 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4732
  %call = call i32 @gb_connection_enable(%struct.gb_connection* %8) #7, !dbg !4733
  br label %for.inc, !dbg !4733

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.declare(metadata i8** %__mptr2, metadata !4734, metadata !DIExpression()), !dbg !4736
  %9 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4736
  %bundle_links3 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %9, i32 0, i32 7, !dbg !4736
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %bundle_links3, i32 0, i32 0, !dbg !4736
  %10 = load %struct.list_head*, %struct.list_head** %next4, align 8, !dbg !4736
  %11 = bitcast %struct.list_head* %10 to i8*, !dbg !4736
  store i8* %11, i8** %__mptr2, align 8, !dbg !4736
  br label %do.body5, !dbg !4736

do.body5:                                         ; preds = %for.inc
  br label %do.end6, !dbg !4737

do.end6:                                          ; preds = %do.body5
  %12 = load i8*, i8** %__mptr2, align 8, !dbg !4736
  %add.ptr8 = getelementptr i8, i8* %12, i64 -48, !dbg !4736
  %13 = bitcast i8* %add.ptr8 to %struct.gb_connection*, !dbg !4736
  store %struct.gb_connection* %13, %struct.gb_connection** %tmp7, align 8, !dbg !4737
  %14 = load %struct.gb_connection*, %struct.gb_connection** %tmp7, align 8, !dbg !4736
  store %struct.gb_connection* %14, %struct.gb_connection** %connection, align 8, !dbg !4730
  br label %for.cond, !dbg !4730, !llvm.loop !4739

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4741
}

; Function Attrs: noredzone
declare dso_local void @gb_connection_disable(%struct.gb_connection*) #3

; Function Attrs: noredzone
declare dso_local i32 @gb_connection_enable(%struct.gb_connection*) #3

; Function Attrs: noredzone
declare dso_local i32 @gb_control_bundle_resume(%struct.gb_control*, i8 zeroext) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pm_runtime_mark_last_busy(%struct.device* %dev) #0 !dbg !4742 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4744, metadata !DIExpression()), !dbg !4745
  br label %do.body, !dbg !4746

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4747

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !4749

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !4747

do.body2:                                         ; preds = %do.end
  %call = call i64 @ktime_get_mono_fast_ns() #7, !dbg !4751
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4751
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !4751
  %last_busy = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 21, !dbg !4751
  store volatile i64 %call, i64* %last_busy, align 8, !dbg !4751
  br label %do.end3, !dbg !4751

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !4747

do.end4:                                          ; preds = %do.end3
  ret void, !dbg !4753
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_request_autosuspend(%struct.device* %dev) #0 !dbg !4754 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4755, metadata !DIExpression()), !dbg !4756
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4757
  %call = call i32 @__pm_runtime_suspend(%struct.device* %0, i32 9) #7, !dbg !4758
  ret i32 %call, !dbg !4759
}

; Function Attrs: noredzone
declare dso_local i64 @ktime_get_mono_fast_ns() #3

; Function Attrs: noredzone
declare dso_local i32 @__pm_runtime_suspend(%struct.device*, i32) #3

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !4760 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4764, metadata !DIExpression()), !dbg !4769
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4771, metadata !DIExpression()), !dbg !4772
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4773, metadata !DIExpression()), !dbg !4774
  %0 = load i64, i64* %size.addr, align 8, !dbg !4775
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4777
  br i1 %1, label %if.then, label %if.end447, !dbg !4778

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4779
  %tobool = icmp ne i64 %2, 0, !dbg !4779
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4782

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4783
  br label %return, !dbg !4783

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4784
  %cmp = icmp ult i64 %3, 4096, !dbg !4786
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4787

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4788
  br label %return, !dbg !4788

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub = sub i64 %4, 1, !dbg !4789
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4789
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4789

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub4 = sub i64 %6, 1, !dbg !4789
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4789
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4789

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub6 = sub i64 %8, 1, !dbg !4789
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4789
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4789

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4789

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub9 = sub i64 %9, 1, !dbg !4789
  %and = and i64 %sub9, -9223372036854775808, !dbg !4789
  %tobool10 = icmp ne i64 %and, 0, !dbg !4789
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4789

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4789

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub13 = sub i64 %10, 1, !dbg !4789
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4789
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4789
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4789

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4789

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub18 = sub i64 %11, 1, !dbg !4789
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4789
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4789
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4789

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4789

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub23 = sub i64 %12, 1, !dbg !4789
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4789
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4789
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4789

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4789

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub28 = sub i64 %13, 1, !dbg !4789
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4789
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4789
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4789

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4789

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub33 = sub i64 %14, 1, !dbg !4789
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4789
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4789
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4789

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4789

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub38 = sub i64 %15, 1, !dbg !4789
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4789
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4789
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4789

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4789

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub43 = sub i64 %16, 1, !dbg !4789
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4789
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4789
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4789

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4789

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub48 = sub i64 %17, 1, !dbg !4789
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4789
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4789
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4789

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4789

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub53 = sub i64 %18, 1, !dbg !4789
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4789
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4789
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4789

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4789

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub58 = sub i64 %19, 1, !dbg !4789
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4789
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4789
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4789

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4789

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub63 = sub i64 %20, 1, !dbg !4789
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4789
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4789
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4789

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4789

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub68 = sub i64 %21, 1, !dbg !4789
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4789
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4789
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4789

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4789

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub73 = sub i64 %22, 1, !dbg !4789
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4789
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4789
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4789

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4789

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub78 = sub i64 %23, 1, !dbg !4789
  %and79 = and i64 %sub78, 562949953421312, !dbg !4789
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4789
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4789

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4789

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub83 = sub i64 %24, 1, !dbg !4789
  %and84 = and i64 %sub83, 281474976710656, !dbg !4789
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4789
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4789

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4789

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub88 = sub i64 %25, 1, !dbg !4789
  %and89 = and i64 %sub88, 140737488355328, !dbg !4789
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4789
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4789

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4789

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub93 = sub i64 %26, 1, !dbg !4789
  %and94 = and i64 %sub93, 70368744177664, !dbg !4789
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4789
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4789

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4789

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub98 = sub i64 %27, 1, !dbg !4789
  %and99 = and i64 %sub98, 35184372088832, !dbg !4789
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4789
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4789

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4789

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub103 = sub i64 %28, 1, !dbg !4789
  %and104 = and i64 %sub103, 17592186044416, !dbg !4789
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4789
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4789

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4789

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub108 = sub i64 %29, 1, !dbg !4789
  %and109 = and i64 %sub108, 8796093022208, !dbg !4789
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4789
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4789

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4789

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub113 = sub i64 %30, 1, !dbg !4789
  %and114 = and i64 %sub113, 4398046511104, !dbg !4789
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4789
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4789

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4789

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub118 = sub i64 %31, 1, !dbg !4789
  %and119 = and i64 %sub118, 2199023255552, !dbg !4789
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4789
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4789

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4789

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub123 = sub i64 %32, 1, !dbg !4789
  %and124 = and i64 %sub123, 1099511627776, !dbg !4789
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4789
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4789

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4789

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub128 = sub i64 %33, 1, !dbg !4789
  %and129 = and i64 %sub128, 549755813888, !dbg !4789
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4789
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4789

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4789

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub133 = sub i64 %34, 1, !dbg !4789
  %and134 = and i64 %sub133, 274877906944, !dbg !4789
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4789
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4789

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4789

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub138 = sub i64 %35, 1, !dbg !4789
  %and139 = and i64 %sub138, 137438953472, !dbg !4789
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4789
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4789

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4789

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub143 = sub i64 %36, 1, !dbg !4789
  %and144 = and i64 %sub143, 68719476736, !dbg !4789
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4789
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4789

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4789

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub148 = sub i64 %37, 1, !dbg !4789
  %and149 = and i64 %sub148, 34359738368, !dbg !4789
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4789
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4789

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4789

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub153 = sub i64 %38, 1, !dbg !4789
  %and154 = and i64 %sub153, 17179869184, !dbg !4789
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4789
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4789

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4789

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub158 = sub i64 %39, 1, !dbg !4789
  %and159 = and i64 %sub158, 8589934592, !dbg !4789
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4789
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4789

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4789

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub163 = sub i64 %40, 1, !dbg !4789
  %and164 = and i64 %sub163, 4294967296, !dbg !4789
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4789
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4789

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4789

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub168 = sub i64 %41, 1, !dbg !4789
  %and169 = and i64 %sub168, 2147483648, !dbg !4789
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4789
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4789

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4789

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub173 = sub i64 %42, 1, !dbg !4789
  %and174 = and i64 %sub173, 1073741824, !dbg !4789
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4789
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4789

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4789

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub178 = sub i64 %43, 1, !dbg !4789
  %and179 = and i64 %sub178, 536870912, !dbg !4789
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4789
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4789

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4789

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub183 = sub i64 %44, 1, !dbg !4789
  %and184 = and i64 %sub183, 268435456, !dbg !4789
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4789
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4789

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4789

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub188 = sub i64 %45, 1, !dbg !4789
  %and189 = and i64 %sub188, 134217728, !dbg !4789
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4789
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4789

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4789

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub193 = sub i64 %46, 1, !dbg !4789
  %and194 = and i64 %sub193, 67108864, !dbg !4789
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4789
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4789

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4789

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub198 = sub i64 %47, 1, !dbg !4789
  %and199 = and i64 %sub198, 33554432, !dbg !4789
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4789
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4789

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4789

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub203 = sub i64 %48, 1, !dbg !4789
  %and204 = and i64 %sub203, 16777216, !dbg !4789
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4789
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4789

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4789

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub208 = sub i64 %49, 1, !dbg !4789
  %and209 = and i64 %sub208, 8388608, !dbg !4789
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4789
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4789

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4789

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub213 = sub i64 %50, 1, !dbg !4789
  %and214 = and i64 %sub213, 4194304, !dbg !4789
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4789
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4789

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4789

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub218 = sub i64 %51, 1, !dbg !4789
  %and219 = and i64 %sub218, 2097152, !dbg !4789
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4789
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4789

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4789

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub223 = sub i64 %52, 1, !dbg !4789
  %and224 = and i64 %sub223, 1048576, !dbg !4789
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4789
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4789

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4789

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub228 = sub i64 %53, 1, !dbg !4789
  %and229 = and i64 %sub228, 524288, !dbg !4789
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4789
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4789

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4789

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub233 = sub i64 %54, 1, !dbg !4789
  %and234 = and i64 %sub233, 262144, !dbg !4789
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4789
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4789

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4789

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub238 = sub i64 %55, 1, !dbg !4789
  %and239 = and i64 %sub238, 131072, !dbg !4789
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4789
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4789

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4789

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub243 = sub i64 %56, 1, !dbg !4789
  %and244 = and i64 %sub243, 65536, !dbg !4789
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4789
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4789

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4789

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub248 = sub i64 %57, 1, !dbg !4789
  %and249 = and i64 %sub248, 32768, !dbg !4789
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4789
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4789

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4789

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub253 = sub i64 %58, 1, !dbg !4789
  %and254 = and i64 %sub253, 16384, !dbg !4789
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4789
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4789

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4789

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub258 = sub i64 %59, 1, !dbg !4789
  %and259 = and i64 %sub258, 8192, !dbg !4789
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4789
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4789

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4789

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub263 = sub i64 %60, 1, !dbg !4789
  %and264 = and i64 %sub263, 4096, !dbg !4789
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4789
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4789

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4789

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub268 = sub i64 %61, 1, !dbg !4789
  %and269 = and i64 %sub268, 2048, !dbg !4789
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4789
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4789

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4789

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub273 = sub i64 %62, 1, !dbg !4789
  %and274 = and i64 %sub273, 1024, !dbg !4789
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4789
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4789

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4789

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub278 = sub i64 %63, 1, !dbg !4789
  %and279 = and i64 %sub278, 512, !dbg !4789
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4789
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4789

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4789

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub283 = sub i64 %64, 1, !dbg !4789
  %and284 = and i64 %sub283, 256, !dbg !4789
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4789
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4789

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4789

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub288 = sub i64 %65, 1, !dbg !4789
  %and289 = and i64 %sub288, 128, !dbg !4789
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4789
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4789

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4789

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub293 = sub i64 %66, 1, !dbg !4789
  %and294 = and i64 %sub293, 64, !dbg !4789
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4789
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4789

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4789

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub298 = sub i64 %67, 1, !dbg !4789
  %and299 = and i64 %sub298, 32, !dbg !4789
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4789
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4789

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4789

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub303 = sub i64 %68, 1, !dbg !4789
  %and304 = and i64 %sub303, 16, !dbg !4789
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4789
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4789

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4789

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub308 = sub i64 %69, 1, !dbg !4789
  %and309 = and i64 %sub308, 8, !dbg !4789
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4789
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4789

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4789

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub313 = sub i64 %70, 1, !dbg !4789
  %and314 = and i64 %sub313, 4, !dbg !4789
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4789
  %71 = zext i1 %tobool315 to i64, !dbg !4789
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4789
  br label %cond.end, !dbg !4789

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4789
  br label %cond.end317, !dbg !4789

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4789
  br label %cond.end319, !dbg !4789

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4789
  br label %cond.end321, !dbg !4789

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4789
  br label %cond.end323, !dbg !4789

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4789
  br label %cond.end325, !dbg !4789

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4789
  br label %cond.end327, !dbg !4789

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4789
  br label %cond.end329, !dbg !4789

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4789
  br label %cond.end331, !dbg !4789

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4789
  br label %cond.end333, !dbg !4789

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4789
  br label %cond.end335, !dbg !4789

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4789
  br label %cond.end337, !dbg !4789

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4789
  br label %cond.end339, !dbg !4789

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4789
  br label %cond.end341, !dbg !4789

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4789
  br label %cond.end343, !dbg !4789

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4789
  br label %cond.end345, !dbg !4789

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4789
  br label %cond.end347, !dbg !4789

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4789
  br label %cond.end349, !dbg !4789

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4789
  br label %cond.end351, !dbg !4789

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4789
  br label %cond.end353, !dbg !4789

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4789
  br label %cond.end355, !dbg !4789

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4789
  br label %cond.end357, !dbg !4789

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4789
  br label %cond.end359, !dbg !4789

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4789
  br label %cond.end361, !dbg !4789

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4789
  br label %cond.end363, !dbg !4789

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4789
  br label %cond.end365, !dbg !4789

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4789
  br label %cond.end367, !dbg !4789

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4789
  br label %cond.end369, !dbg !4789

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4789
  br label %cond.end371, !dbg !4789

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4789
  br label %cond.end373, !dbg !4789

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4789
  br label %cond.end375, !dbg !4789

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4789
  br label %cond.end377, !dbg !4789

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4789
  br label %cond.end379, !dbg !4789

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4789
  br label %cond.end381, !dbg !4789

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4789
  br label %cond.end383, !dbg !4789

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4789
  br label %cond.end385, !dbg !4789

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4789
  br label %cond.end387, !dbg !4789

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4789
  br label %cond.end389, !dbg !4789

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4789
  br label %cond.end391, !dbg !4789

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4789
  br label %cond.end393, !dbg !4789

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4789
  br label %cond.end395, !dbg !4789

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4789
  br label %cond.end397, !dbg !4789

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4789
  br label %cond.end399, !dbg !4789

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4789
  br label %cond.end401, !dbg !4789

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4789
  br label %cond.end403, !dbg !4789

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4789
  br label %cond.end405, !dbg !4789

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4789
  br label %cond.end407, !dbg !4789

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4789
  br label %cond.end409, !dbg !4789

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4789
  br label %cond.end411, !dbg !4789

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4789
  br label %cond.end413, !dbg !4789

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4789
  br label %cond.end415, !dbg !4789

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4789
  br label %cond.end417, !dbg !4789

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4789
  br label %cond.end419, !dbg !4789

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4789
  br label %cond.end421, !dbg !4789

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4789
  br label %cond.end423, !dbg !4789

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4789
  br label %cond.end425, !dbg !4789

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4789
  br label %cond.end427, !dbg !4789

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4789
  br label %cond.end429, !dbg !4789

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4789
  br label %cond.end431, !dbg !4789

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4789
  br label %cond.end433, !dbg !4789

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4789
  br label %cond.end435, !dbg !4789

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4789
  br label %cond.end437, !dbg !4789

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4789
  br label %cond.end440, !dbg !4789

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4789

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4789
  br label %cond.end444, !dbg !4789

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4789
  %sub443 = sub i64 %72, 1, !dbg !4789
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !4789
  br label %cond.end444, !dbg !4789

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4789
  %sub446 = sub i32 %cond445, 12, !dbg !4790
  %add = add i32 %sub446, 1, !dbg !4791
  store i32 %add, i32* %retval, align 4, !dbg !4792
  br label %return, !dbg !4792

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4793
  %dec = add i64 %73, -1, !dbg !4793
  store i64 %dec, i64* %size.addr, align 8, !dbg !4793
  %74 = load i64, i64* %size.addr, align 8, !dbg !4794
  %shr = lshr i64 %74, 12, !dbg !4794
  store i64 %shr, i64* %size.addr, align 8, !dbg !4794
  %75 = load i64, i64* %size.addr, align 8, !dbg !4795
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4772
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4796
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4797
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #12, !dbg !4796, !srcloc !4798
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4796
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4799
  %add.i = add i32 %79, 1, !dbg !4800
  store i32 %add.i, i32* %retval, align 4, !dbg !4801
  br label %return, !dbg !4801

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4802
  ret i32 %80, !dbg !4802
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !4803 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4764, metadata !DIExpression()), !dbg !4807
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4771, metadata !DIExpression()), !dbg !4809
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4810, metadata !DIExpression()), !dbg !4811
  %0 = load i64, i64* %n.addr, align 8, !dbg !4812
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4809
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4813
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4814
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #12, !dbg !4813, !srcloc !4798
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4813
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4815
  %add.i = add i32 %4, 1, !dbg !4816
  %sub = sub i32 %add.i, 1, !dbg !4817
  ret i32 %sub, !dbg !4818
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4819 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4823, metadata !DIExpression()), !dbg !4824
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4825, metadata !DIExpression()), !dbg !4826
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4827, metadata !DIExpression()), !dbg !4828
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4829, metadata !DIExpression()), !dbg !4830
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4831
  ret i8* %0, !dbg !4832
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @bundle_class_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !4833 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %bundle = alloca %struct.gb_bundle*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.gb_bundle*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4834, metadata !DIExpression()), !dbg !4835
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4836, metadata !DIExpression()), !dbg !4837
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4838, metadata !DIExpression()), !dbg !4839
  call void @llvm.dbg.declare(metadata %struct.gb_bundle** %bundle, metadata !4840, metadata !DIExpression()), !dbg !4841
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4842, metadata !DIExpression()), !dbg !4844
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4844
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4844
  store i8* %1, i8** %__mptr, align 8, !dbg !4844
  br label %do.body, !dbg !4844

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4845

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4844
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !4844
  %3 = bitcast i8* %add.ptr to %struct.gb_bundle*, !dbg !4844
  store %struct.gb_bundle* %3, %struct.gb_bundle** %tmp, align 8, !dbg !4845
  %4 = load %struct.gb_bundle*, %struct.gb_bundle** %tmp, align 8, !dbg !4844
  store %struct.gb_bundle* %4, %struct.gb_bundle** %bundle, align 8, !dbg !4841
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !4847
  %6 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4848
  %class = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %6, i32 0, i32 3, !dbg !4849
  %7 = load i8, i8* %class, align 1, !dbg !4849
  %conv = zext i8 %7 to i32, !dbg !4848
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %conv) #7, !dbg !4850
  %conv1 = sext i32 %call to i64, !dbg !4850
  ret i64 %conv1, !dbg !4851
}

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @bundle_id_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !4852 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %bundle = alloca %struct.gb_bundle*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.gb_bundle*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4853, metadata !DIExpression()), !dbg !4854
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4855, metadata !DIExpression()), !dbg !4856
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4857, metadata !DIExpression()), !dbg !4858
  call void @llvm.dbg.declare(metadata %struct.gb_bundle** %bundle, metadata !4859, metadata !DIExpression()), !dbg !4860
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4861, metadata !DIExpression()), !dbg !4863
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4863
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4863
  store i8* %1, i8** %__mptr, align 8, !dbg !4863
  br label %do.body, !dbg !4863

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4864

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4863
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !4863
  %3 = bitcast i8* %add.ptr to %struct.gb_bundle*, !dbg !4863
  store %struct.gb_bundle* %3, %struct.gb_bundle** %tmp, align 8, !dbg !4864
  %4 = load %struct.gb_bundle*, %struct.gb_bundle** %tmp, align 8, !dbg !4863
  store %struct.gb_bundle* %4, %struct.gb_bundle** %bundle, align 8, !dbg !4860
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !4866
  %6 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4867
  %id = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %6, i32 0, i32 2, !dbg !4868
  %7 = load i8, i8* %id, align 8, !dbg !4868
  %conv = zext i8 %7 to i32, !dbg !4867
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %conv) #7, !dbg !4869
  %conv1 = sext i32 %call to i64, !dbg !4869
  ret i64 %conv1, !dbg !4870
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @state_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !4871 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %bundle = alloca %struct.gb_bundle*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.gb_bundle*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4872, metadata !DIExpression()), !dbg !4873
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4874, metadata !DIExpression()), !dbg !4875
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4876, metadata !DIExpression()), !dbg !4877
  call void @llvm.dbg.declare(metadata %struct.gb_bundle** %bundle, metadata !4878, metadata !DIExpression()), !dbg !4879
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4880, metadata !DIExpression()), !dbg !4882
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4882
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4882
  store i8* %1, i8** %__mptr, align 8, !dbg !4882
  br label %do.body, !dbg !4882

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4883

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4882
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !4882
  %3 = bitcast i8* %add.ptr to %struct.gb_bundle*, !dbg !4882
  store %struct.gb_bundle* %3, %struct.gb_bundle** %tmp, align 8, !dbg !4883
  %4 = load %struct.gb_bundle*, %struct.gb_bundle** %tmp, align 8, !dbg !4882
  store %struct.gb_bundle* %4, %struct.gb_bundle** %bundle, align 8, !dbg !4879
  %5 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4885
  %state = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %5, i32 0, i32 9, !dbg !4887
  %6 = load i8*, i8** %state, align 8, !dbg !4887
  %tobool = icmp ne i8* %6, null, !dbg !4885
  br i1 %tobool, label %if.end, label %if.then, !dbg !4888

if.then:                                          ; preds = %do.end
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !4889
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)) #7, !dbg !4890
  %conv = sext i32 %call to i64, !dbg !4890
  store i64 %conv, i64* %retval, align 8, !dbg !4891
  br label %return, !dbg !4891

if.end:                                           ; preds = %do.end
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !4892
  %9 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4893
  %state1 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %9, i32 0, i32 9, !dbg !4894
  %10 = load i8*, i8** %state1, align 8, !dbg !4894
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* %10) #7, !dbg !4895
  %conv3 = sext i32 %call2 to i64, !dbg !4895
  store i64 %conv3, i64* %retval, align 8, !dbg !4896
  br label %return, !dbg !4896

return:                                           ; preds = %if.end, %if.then
  %11 = load i64, i64* %retval, align 8, !dbg !4897
  ret i64 %11, !dbg !4897
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @state_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %size) #0 !dbg !4898 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %bundle = alloca %struct.gb_bundle*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.gb_bundle*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4899, metadata !DIExpression()), !dbg !4900
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4901, metadata !DIExpression()), !dbg !4902
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4903, metadata !DIExpression()), !dbg !4904
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4905, metadata !DIExpression()), !dbg !4906
  call void @llvm.dbg.declare(metadata %struct.gb_bundle** %bundle, metadata !4907, metadata !DIExpression()), !dbg !4908
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4909, metadata !DIExpression()), !dbg !4911
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4911
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4911
  store i8* %1, i8** %__mptr, align 8, !dbg !4911
  br label %do.body, !dbg !4911

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4912

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4911
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !4911
  %3 = bitcast i8* %add.ptr to %struct.gb_bundle*, !dbg !4911
  store %struct.gb_bundle* %3, %struct.gb_bundle** %tmp, align 8, !dbg !4912
  %4 = load %struct.gb_bundle*, %struct.gb_bundle** %tmp, align 8, !dbg !4911
  store %struct.gb_bundle* %4, %struct.gb_bundle** %bundle, align 8, !dbg !4908
  %5 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4914
  %state = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %5, i32 0, i32 9, !dbg !4915
  %6 = load i8*, i8** %state, align 8, !dbg !4915
  call void @kfree(i8* %6) #7, !dbg !4916
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !4917
  %call = call noalias i8* @kstrdup(i8* %7, i32 3264) #7, !dbg !4918
  %8 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4919
  %state1 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %8, i32 0, i32 9, !dbg !4920
  store i8* %call, i8** %state1, align 8, !dbg !4921
  %9 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4922
  %state2 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %9, i32 0, i32 9, !dbg !4924
  %10 = load i8*, i8** %state2, align 8, !dbg !4924
  %tobool = icmp ne i8* %10, null, !dbg !4922
  br i1 %tobool, label %if.end, label %if.then, !dbg !4925

if.then:                                          ; preds = %do.end
  store i64 -12, i64* %retval, align 8, !dbg !4926
  br label %return, !dbg !4926

if.end:                                           ; preds = %do.end
  %11 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4927
  %dev3 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %11, i32 0, i32 0, !dbg !4928
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev3, i32 0, i32 0, !dbg !4929
  call void @sysfs_notify(%struct.kobject* %kobj, i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0)) #7, !dbg !4930
  %12 = load i64, i64* %size.addr, align 8, !dbg !4931
  store i64 %12, i64* %retval, align 8, !dbg !4932
  br label %return, !dbg !4932

return:                                           ; preds = %if.end, %if.then
  %13 = load i64, i64* %retval, align 8, !dbg !4933
  ret i64 %13, !dbg !4933
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kstrdup(i8*, i32) #3

; Function Attrs: noredzone
declare dso_local void @sysfs_notify(%struct.kobject*, i8*, i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #0 !dbg !4934 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !4939, metadata !DIExpression()), !dbg !4940
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !4941
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !4942
  %1 = load i8*, i8** %name, align 8, !dbg !4942
  ret i8* %1, !dbg !4943
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !4944 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4947, metadata !DIExpression()), !dbg !4948
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !4949, metadata !DIExpression()), !dbg !4950
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !4951, metadata !DIExpression()), !dbg !4952
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4953
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4955
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4956
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #7, !dbg !4957
  br i1 %call, label %if.end, label %if.then, !dbg !4958

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !4959

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4960
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4961
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !4962
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !4963
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4964
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4965
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !4966
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !4967
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4968
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4969
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !4970
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !4971
  br label %do.body, !dbg !4972

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !4973

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !4975

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !4973

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4977
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4977
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !4977
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !4977
  br label %do.end7, !dbg !4977

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !4973

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !4979
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !4980 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4983, metadata !DIExpression()), !dbg !4984
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !4985, metadata !DIExpression()), !dbg !4986
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !4987, metadata !DIExpression()), !dbg !4988
  ret i1 true, !dbg !4989
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !4990 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !4991, metadata !DIExpression()), !dbg !4992
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4993
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #7, !dbg !4995
  br i1 %call, label %if.end, label %if.then, !dbg !4996

if.then:                                          ; preds = %entry
  br label %return, !dbg !4997

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4998
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !4999
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !4999
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5000
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !5001
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5001
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #7, !dbg !5002
  br label %return, !dbg !5003

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5003
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !5004 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5007, metadata !DIExpression()), !dbg !5008
  ret i1 true, !dbg !5009
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5010 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5011, metadata !DIExpression()), !dbg !5012
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5013, metadata !DIExpression()), !dbg !5014
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5015
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5016
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5017
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !5018
  br label %do.body, !dbg !5019

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5020

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !5022

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !5020

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5024
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5024
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !5024
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !5024
  br label %do.end5, !dbg !5024

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !5020

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5026
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!llvm.module.flags = !{!4018, !4019, !4020, !4021}
!llvm.ident = !{!4022}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "gb_bundle_pm_ops", scope: !2, file: !3, line: 165, type: !3335, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !130, globals: !3989, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/greybus/bundle.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !12, !19, !25, !30, !36, !43, !49, !58, !66, !72, !79, !87, !93, !99, !103, !110, !118, !125}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !6, line: 26, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !13, line: 15, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!16 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!17 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!18 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !20, line: 546, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!21 = !{!22, !23, !24}
!22 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!23 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!24 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !26, line: 65, baseType: !7, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!27 = !{!28, !29}
!28 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!29 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !31, line: 16, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!32 = !{!33, !34, !35}
!33 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!34 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!35 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !37, line: 59, baseType: !7, size: 32, elements: !38)
!37 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!38 = !{!39, !40, !41, !42}
!39 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!40 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!41 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!42 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !44, line: 54, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!45 = !{!46, !47, !48}
!46 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!47 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!48 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !50, line: 296, baseType: !7, size: 32, elements: !51)
!50 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!51 = !{!52, !53, !54, !55, !56, !57}
!52 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!53 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!54 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!55 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!56 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!57 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !59, line: 9, baseType: !7, size: 32, elements: !60)
!59 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!60 = !{!61, !62, !63, !64, !65}
!61 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!62 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!63 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!64 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!65 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
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
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gb_svc_state", file: !94, line: 21, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/greybus/svc.h", directory: "/home/lizy2001/genbc/linux")
!95 = !{!96, !97, !98}
!96 = !DIEnumerator(name: "GB_SVC_STATE_RESET", value: 0, isUnsigned: true)
!97 = !DIEnumerator(name: "GB_SVC_STATE_PROTOCOL_VERSION", value: 1, isUnsigned: true)
!98 = !DIEnumerator(name: "GB_SVC_STATE_SVC_HELLO", value: 2, isUnsigned: true)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gb_svc_watchdog_bite", file: !94, line: 27, baseType: !7, size: 32, elements: !100)
!100 = !{!101, !102}
!101 = !DIEnumerator(name: "GB_SVC_WATCHDOG_BITE_RESET_UNIPRO", value: 0, isUnsigned: true)
!102 = !DIEnumerator(name: "GB_SVC_WATCHDOG_BITE_PANIC_KERNEL", value: 1, isUnsigned: true)
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gb_connection_state", file: !104, line: 27, baseType: !7, size: 32, elements: !105)
!104 = !DIFile(filename: "./include/linux/greybus/connection.h", directory: "/home/lizy2001/genbc/linux")
!105 = !{!106, !107, !108, !109}
!106 = !DIEnumerator(name: "GB_CONNECTION_STATE_DISABLED", value: 0, isUnsigned: true)
!107 = !DIEnumerator(name: "GB_CONNECTION_STATE_ENABLED_TX", value: 1, isUnsigned: true)
!108 = !DIEnumerator(name: "GB_CONNECTION_STATE_ENABLED", value: 2, isUnsigned: true)
!109 = !DIEnumerator(name: "GB_CONNECTION_STATE_DISCONNECTING", value: 3, isUnsigned: true)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gb_interface_type", file: !111, line: 15, baseType: !7, size: 32, elements: !112)
!111 = !DIFile(filename: "./include/linux/greybus/interface.h", directory: "/home/lizy2001/genbc/linux")
!112 = !{!113, !114, !115, !116, !117}
!113 = !DIEnumerator(name: "GB_INTERFACE_TYPE_INVALID", value: 0, isUnsigned: true)
!114 = !DIEnumerator(name: "GB_INTERFACE_TYPE_UNKNOWN", value: 1, isUnsigned: true)
!115 = !DIEnumerator(name: "GB_INTERFACE_TYPE_DUMMY", value: 2, isUnsigned: true)
!116 = !DIEnumerator(name: "GB_INTERFACE_TYPE_UNIPRO", value: 3, isUnsigned: true)
!117 = !DIEnumerator(name: "GB_INTERFACE_TYPE_GREYBUS", value: 4, isUnsigned: true)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !119, line: 305, baseType: !7, size: 32, elements: !120)
!119 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!120 = !{!121, !122, !123, !124}
!121 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!122 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!123 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!124 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !126, line: 10, baseType: !7, size: 32, elements: !127)
!126 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!127 = !{!128, !129}
!128 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!129 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!130 = !{!131, !136, !138, !139, !3767, !3985, !3987}
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !132, line: 17, baseType: !133)
!132 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !134, line: 21, baseType: !135)
!134 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!135 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !137, line: 148, baseType: !7)
!137 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_bundle", file: !141, line: 20, size: 6144, elements: !142)
!141 = !DIFile(filename: "./include/linux/greybus/bundle.h", directory: "/home/lizy2001/genbc/linux")
!142 = !{!143, !3754, !3968, !3969, !3970, !3971, !3972, !3973, !3981, !3982, !3984}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !140, file: !141, line: 21, baseType: !144, size: 5568)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !145)
!145 = !{!146, !3307, !3309, !3312, !3313, !3364, !3455, !3456, !3457, !3458, !3459, !3468, !3573, !3586, !3589, !3590, !3594, !3596, !3597, !3598, !3602, !3608, !3609, !3612, !3616, !3706, !3707, !3708, !3709, !3710, !3742, !3743, !3744, !3747, !3750, !3751, !3752, !3753}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !144, file: !73, line: 462, baseType: !147, size: 512)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !148, line: 64, size: 512, elements: !149)
!148 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!149 = !{!150, !154, !160, !162, !223, !3158, !3297, !3302, !3303, !3304, !3305, !3306}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !147, file: !148, line: 65, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!153 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !147, file: !148, line: 66, baseType: !155, size: 128, offset: 64)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !137, line: 178, size: 128, elements: !156)
!156 = !{!157, !159}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !155, file: !137, line: 179, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !155, file: !137, line: 179, baseType: !158, size: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !147, file: !148, line: 67, baseType: !161, size: 64, offset: 192)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !147, file: !148, line: 68, baseType: !163, size: 64, offset: 256)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !148, line: 192, size: 704, elements: !165)
!165 = !{!166, !167, !183, !184}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !164, file: !148, line: 193, baseType: !155, size: 128)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !164, file: !148, line: 194, baseType: !168, offset: 128)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !169, line: 83, baseType: !170)
!169 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !169, line: 71, elements: !171)
!171 = !{!172}
!172 = !DIDerivedType(tag: DW_TAG_member, scope: !170, file: !169, line: 72, baseType: !173)
!173 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !170, file: !169, line: 72, elements: !174)
!174 = !{!175}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !173, file: !169, line: 73, baseType: !176)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !169, line: 20, elements: !177)
!177 = !{!178}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !176, file: !169, line: 21, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !180, line: 25, baseType: !181)
!180 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !180, line: 25, elements: !182)
!182 = !{}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !164, file: !148, line: 195, baseType: !147, size: 512, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !164, file: !148, line: 196, baseType: !185, size: 64, offset: 640)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !187)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !148, line: 156, size: 192, elements: !188)
!188 = !{!189, !195, !200}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !187, file: !148, line: 157, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{!194, !163, !161}
!194 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !187, file: !148, line: 158, baseType: !196, size: 64, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!151, !163, !161}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !187, file: !148, line: 159, baseType: !201, size: 64, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!194, !163, !161, !205}
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !148, line: 148, size: 20736, elements: !207)
!207 = !{!208, !213, !217, !218, !222}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !206, file: !148, line: 149, baseType: !209, size: 192)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 192, elements: !211)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!211 = !{!212}
!212 = !DISubrange(count: 3)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !206, file: !148, line: 150, baseType: !214, size: 4096, offset: 192)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 4096, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !206, file: !148, line: 151, baseType: !194, size: 32, offset: 4288)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !206, file: !148, line: 152, baseType: !219, size: 16384, offset: 4320)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 16384, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 2048)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !206, file: !148, line: 153, baseType: !194, size: 32, offset: 20704)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !147, file: !148, line: 69, baseType: !224, size: 64, offset: 320)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !148, line: 138, size: 448, elements: !226)
!226 = !{!227, !231, !261, !263, !3120, !3148, !3152}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !225, file: !148, line: 139, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{null, !161}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !225, file: !148, line: 140, baseType: !232, size: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !235, line: 230, size: 128, elements: !236)
!235 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!236 = !{!237, !253}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !234, file: !235, line: 231, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!241, !161, !246, !210}
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !137, line: 60, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !243, line: 73, baseType: !244)
!243 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !243, line: 15, baseType: !245)
!245 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !235, line: 30, size: 128, elements: !248)
!248 = !{!249, !250}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !247, file: !235, line: 31, baseType: !151, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !247, file: !235, line: 32, baseType: !251, size: 16, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !137, line: 19, baseType: !252)
!252 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !234, file: !235, line: 232, baseType: !254, size: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{!241, !161, !246, !151, !257}
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !137, line: 55, baseType: !258)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !243, line: 72, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !243, line: 16, baseType: !260)
!260 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !225, file: !148, line: 141, baseType: !262, size: 64, offset: 128)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !225, file: !148, line: 142, baseType: !264, size: 64, offset: 192)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !267)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !235, line: 84, size: 320, elements: !268)
!268 = !{!269, !270, !274, !3117, !3118}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !267, file: !235, line: 85, baseType: !151, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !267, file: !235, line: 86, baseType: !271, size: 64, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!251, !161, !246, !194}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !267, file: !235, line: 88, baseType: !275, size: 64, offset: 128)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!251, !161, !278, !194}
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !235, line: 168, size: 448, elements: !280)
!280 = !{!281, !282, !283, !284, !3112, !3113}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !279, file: !235, line: 169, baseType: !247, size: 128)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !279, file: !235, line: 170, baseType: !257, size: 64, offset: 128)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !279, file: !235, line: 171, baseType: !138, size: 64, offset: 192)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !279, file: !235, line: 172, baseType: !285, size: 64, offset: 256)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!241, !288, !161, !278, !210, !464, !257}
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !50, line: 916, size: 1856, align: 32, elements: !290)
!290 = !{!291, !309, !3077, !3078, !3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3095, !3096, !3105, !3106, !3107, !3108, !3109, !3110, !3111}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !289, file: !50, line: 920, baseType: !292, size: 128)
!292 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !289, file: !50, line: 917, size: 128, elements: !293)
!293 = !{!294, !300}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !292, file: !50, line: 918, baseType: !295, size: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !296, line: 58, size: 64, elements: !297)
!296 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!297 = !{!298}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !295, file: !296, line: 59, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !292, file: !50, line: 919, baseType: !301, size: 128, align: 64)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !137, line: 216, size: 128, align: 64, elements: !302)
!302 = !{!303, !305}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !301, file: !137, line: 217, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !301, file: !137, line: 218, baseType: !306, size: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{null, !304}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !289, file: !50, line: 921, baseType: !310, size: 128, offset: 128)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !311, line: 8, size: 128, elements: !312)
!311 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!312 = !{!313, !317}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !310, file: !311, line: 9, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !316, line: 18, flags: DIFlagFwdDecl)
!316 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!317 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !310, file: !311, line: 10, baseType: !318, size: 64, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !316, line: 89, size: 1536, elements: !320)
!320 = !{!321, !322, !332, !340, !341, !361, !3045, !3047, !3059, !3060, !3061, !3062, !3063, !3069, !3070, !3071}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !319, file: !316, line: 91, baseType: !7, size: 32)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !319, file: !316, line: 92, baseType: !323, size: 32, offset: 32)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !324, line: 277, baseType: !325)
!324 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !324, line: 277, size: 32, elements: !326)
!326 = !{!327}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !325, file: !324, line: 277, baseType: !328, size: 32)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !324, line: 70, baseType: !329)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !324, line: 65, size: 32, elements: !330)
!330 = !{!331}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !329, file: !324, line: 66, baseType: !7, size: 32)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !319, file: !316, line: 93, baseType: !333, size: 128, offset: 64)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !334, line: 38, size: 128, elements: !335)
!334 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!335 = !{!336, !338}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !333, file: !334, line: 39, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !333, file: !334, line: 39, baseType: !339, size: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !319, file: !316, line: 94, baseType: !318, size: 64, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !319, file: !316, line: 95, baseType: !342, size: 128, offset: 256)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !316, line: 47, size: 128, elements: !343)
!343 = !{!344, !358}
!344 = !DIDerivedType(tag: DW_TAG_member, scope: !342, file: !316, line: 48, baseType: !345, size: 64)
!345 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !342, file: !316, line: 48, size: 64, elements: !346)
!346 = !{!347, !354}
!347 = !DIDerivedType(tag: DW_TAG_member, scope: !345, file: !316, line: 49, baseType: !348, size: 64)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !345, file: !316, line: 49, size: 64, elements: !349)
!349 = !{!350, !353}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !348, file: !316, line: 50, baseType: !351, size: 32)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !132, line: 21, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !134, line: 27, baseType: !7)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !348, file: !316, line: 50, baseType: !351, size: 32, offset: 32)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !345, file: !316, line: 52, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !132, line: 23, baseType: !356)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !134, line: 31, baseType: !357)
!357 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !342, file: !316, line: 54, baseType: !359, size: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !319, file: !316, line: 96, baseType: !362, size: 64, offset: 384)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !50, line: 610, size: 4224, elements: !364)
!364 = !{!365, !366, !367, !375, !382, !383, !531, !2756, !2757, !2758, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !3021, !3029, !3030, !3031, !3041, !3042, !3043, !3044}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !363, file: !50, line: 611, baseType: !251, size: 16)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !363, file: !50, line: 612, baseType: !252, size: 16, offset: 16)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !363, file: !50, line: 613, baseType: !368, size: 32, offset: 32)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !369, line: 23, baseType: !370)
!369 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !369, line: 21, size: 32, elements: !371)
!371 = !{!372}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !370, file: !369, line: 22, baseType: !373, size: 32)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !137, line: 32, baseType: !374)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !243, line: 49, baseType: !7)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !363, file: !50, line: 614, baseType: !376, size: 32, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !369, line: 28, baseType: !377)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !369, line: 26, size: 32, elements: !378)
!378 = !{!379}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !377, file: !369, line: 27, baseType: !380, size: 32)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !137, line: 33, baseType: !381)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !243, line: 50, baseType: !7)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !363, file: !50, line: 615, baseType: !7, size: 32, offset: 96)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !363, file: !50, line: 622, baseType: !384, size: 64, offset: 128)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !386)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !50, line: 1864, size: 1536, align: 512, elements: !387)
!387 = !{!388, !392, !405, !409, !415, !419, !425, !429, !433, !437, !441, !442, !448, !452, !478, !507, !511, !517, !522, !526, !527}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !386, file: !50, line: 1865, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DISubroutineType(types: !391)
!391 = !{!318, !362, !318, !7}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !386, file: !50, line: 1866, baseType: !393, size: 64, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DISubroutineType(types: !395)
!395 = !{!151, !318, !362, !396}
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !398, line: 10, size: 128, elements: !399)
!398 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!399 = !{!400, !404}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !397, file: !398, line: 11, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DISubroutineType(types: !403)
!403 = !{null, !138}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !397, file: !398, line: 12, baseType: !138, size: 64, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !386, file: !50, line: 1867, baseType: !406, size: 64, offset: 128)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DISubroutineType(types: !408)
!408 = !{!194, !362, !194}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !386, file: !50, line: 1868, baseType: !410, size: 64, offset: 192)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DISubroutineType(types: !412)
!412 = !{!413, !362, !194}
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !50, line: 581, flags: DIFlagFwdDecl)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !386, file: !50, line: 1870, baseType: !416, size: 64, offset: 256)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{!194, !318, !210, !194}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !386, file: !50, line: 1872, baseType: !420, size: 64, offset: 320)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{!194, !362, !318, !251, !423}
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !137, line: 30, baseType: !424)
!424 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !386, file: !50, line: 1873, baseType: !426, size: 64, offset: 384)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{!194, !318, !362, !318}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !386, file: !50, line: 1874, baseType: !430, size: 64, offset: 448)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{!194, !362, !318}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !386, file: !50, line: 1875, baseType: !434, size: 64, offset: 512)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DISubroutineType(types: !436)
!436 = !{!194, !362, !318, !151}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !386, file: !50, line: 1876, baseType: !438, size: 64, offset: 576)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DISubroutineType(types: !440)
!440 = !{!194, !362, !318, !251}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !386, file: !50, line: 1877, baseType: !430, size: 64, offset: 640)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !386, file: !50, line: 1878, baseType: !443, size: 64, offset: 704)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DISubroutineType(types: !445)
!445 = !{!194, !362, !318, !251, !446}
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !137, line: 16, baseType: !447)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !137, line: 13, baseType: !351)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !386, file: !50, line: 1879, baseType: !449, size: 64, offset: 768)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DISubroutineType(types: !451)
!451 = !{!194, !362, !318, !362, !318, !7}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !386, file: !50, line: 1881, baseType: !453, size: 64, offset: 832)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DISubroutineType(types: !455)
!455 = !{!194, !318, !456}
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !50, line: 219, size: 640, elements: !458)
!458 = !{!459, !460, !461, !462, !463, !467, !475, !476, !477}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !457, file: !50, line: 220, baseType: !7, size: 32)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !457, file: !50, line: 221, baseType: !251, size: 16, offset: 32)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !457, file: !50, line: 222, baseType: !368, size: 32, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !457, file: !50, line: 223, baseType: !376, size: 32, offset: 96)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !457, file: !50, line: 224, baseType: !464, size: 64, offset: 128)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !137, line: 46, baseType: !465)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !243, line: 88, baseType: !466)
!466 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !457, file: !50, line: 225, baseType: !468, size: 128, offset: 192)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !469, line: 13, size: 128, elements: !470)
!469 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!470 = !{!471, !474}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !468, file: !469, line: 14, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !469, line: 8, baseType: !473)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !134, line: 30, baseType: !466)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !468, file: !469, line: 15, baseType: !245, size: 64, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !457, file: !50, line: 226, baseType: !468, size: 128, offset: 320)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !457, file: !50, line: 227, baseType: !468, size: 128, offset: 448)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !457, file: !50, line: 234, baseType: !288, size: 64, offset: 576)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !386, file: !50, line: 1882, baseType: !479, size: 64, offset: 896)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{!194, !482, !484, !351, !7}
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !310)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !486, line: 22, size: 1152, elements: !487)
!486 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!487 = !{!488, !489, !490, !491, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !485, file: !486, line: 23, baseType: !351, size: 32)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !485, file: !486, line: 24, baseType: !251, size: 16, offset: 32)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !485, file: !486, line: 25, baseType: !7, size: 32, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !485, file: !486, line: 26, baseType: !492, size: 32, offset: 96)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !137, line: 104, baseType: !351)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !485, file: !486, line: 27, baseType: !355, size: 64, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !485, file: !486, line: 28, baseType: !355, size: 64, offset: 192)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !485, file: !486, line: 37, baseType: !355, size: 64, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !485, file: !486, line: 38, baseType: !446, size: 32, offset: 320)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !485, file: !486, line: 39, baseType: !446, size: 32, offset: 352)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !485, file: !486, line: 40, baseType: !368, size: 32, offset: 384)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !485, file: !486, line: 41, baseType: !376, size: 32, offset: 416)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !485, file: !486, line: 42, baseType: !464, size: 64, offset: 448)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !485, file: !486, line: 43, baseType: !468, size: 128, offset: 512)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !485, file: !486, line: 44, baseType: !468, size: 128, offset: 640)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !485, file: !486, line: 45, baseType: !468, size: 128, offset: 768)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !485, file: !486, line: 46, baseType: !468, size: 128, offset: 896)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !485, file: !486, line: 47, baseType: !355, size: 64, offset: 1024)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !485, file: !486, line: 48, baseType: !355, size: 64, offset: 1088)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !386, file: !50, line: 1883, baseType: !508, size: 64, offset: 960)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!241, !318, !210, !257}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !386, file: !50, line: 1884, baseType: !512, size: 64, offset: 1024)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!194, !362, !515, !355, !355}
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !50, line: 50, flags: DIFlagFwdDecl)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !386, file: !50, line: 1886, baseType: !518, size: 64, offset: 1088)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!194, !362, !521, !194}
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !386, file: !50, line: 1887, baseType: !523, size: 64, offset: 1152)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{!194, !362, !318, !288, !7, !251}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !386, file: !50, line: 1890, baseType: !438, size: 64, offset: 1216)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !386, file: !50, line: 1891, baseType: !528, size: 64, offset: 1280)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{!194, !362, !413, !194}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !363, file: !50, line: 623, baseType: !532, size: 64, offset: 192)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !50, line: 1416, size: 9472, elements: !534)
!534 = !{!535, !536, !537, !538, !539, !540, !590, !2363, !2445, !2528, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2544, !2548, !2549, !2552, !2553, !2556, !2557, !2558, !2599, !2626, !2627, !2628, !2629, !2630, !2631, !2634, !2636, !2643, !2644, !2646, !2647, !2648, !2707, !2708, !2723, !2724, !2725, !2726, !2727, !2730, !2731, !2732, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !533, file: !50, line: 1417, baseType: !155, size: 128)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !533, file: !50, line: 1418, baseType: !446, size: 32, offset: 128)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !533, file: !50, line: 1419, baseType: !135, size: 8, offset: 160)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !533, file: !50, line: 1420, baseType: !260, size: 64, offset: 192)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !533, file: !50, line: 1421, baseType: !464, size: 64, offset: 256)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !533, file: !50, line: 1422, baseType: !541, size: 64, offset: 320)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !50, line: 2228, size: 576, elements: !543)
!543 = !{!544, !545, !546, !553, !557, !561, !565, !569, !570, !580, !583, !584, !585, !587, !588, !589}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !542, file: !50, line: 2229, baseType: !151, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !542, file: !50, line: 2230, baseType: !194, size: 32, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !542, file: !50, line: 2238, baseType: !547, size: 64, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{!194, !550}
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !552, line: 28, flags: DIFlagFwdDecl)
!552 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!553 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !542, file: !50, line: 2239, baseType: !554, size: 64, offset: 192)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !556)
!556 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !50, line: 70, flags: DIFlagFwdDecl)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !542, file: !50, line: 2240, baseType: !558, size: 64, offset: 256)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{!318, !541, !194, !151, !138}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !542, file: !50, line: 2242, baseType: !562, size: 64, offset: 320)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{null, !532}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !542, file: !50, line: 2243, baseType: !566, size: 64, offset: 384)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !568, line: 76, flags: DIFlagFwdDecl)
!568 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!569 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !542, file: !50, line: 2244, baseType: !541, size: 64, offset: 448)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !542, file: !50, line: 2245, baseType: !571, size: 64, offset: 512)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !137, line: 182, size: 64, elements: !572)
!572 = !{!573}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !571, file: !137, line: 183, baseType: !574, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !137, line: 186, size: 128, elements: !576)
!576 = !{!577, !578}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !575, file: !137, line: 187, baseType: !574, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !575, file: !137, line: 187, baseType: !579, size: 64, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !542, file: !50, line: 2247, baseType: !581, offset: 576)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !582, line: 187, elements: !182)
!582 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!583 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !542, file: !50, line: 2248, baseType: !581, offset: 576)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !542, file: !50, line: 2249, baseType: !581, offset: 576)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !542, file: !50, line: 2250, baseType: !586, offset: 576)
!586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !581, elements: !211)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !542, file: !50, line: 2252, baseType: !581, offset: 576)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !542, file: !50, line: 2253, baseType: !581, offset: 576)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !542, file: !50, line: 2254, baseType: !581, offset: 576)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !533, file: !50, line: 1423, baseType: !591, size: 64, offset: 384)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !593)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !50, line: 1935, size: 1472, elements: !594)
!594 = !{!595, !599, !603, !604, !608, !614, !618, !619, !620, !624, !628, !629, !630, !631, !637, !642, !643, !650, !651, !652, !653, !2347, !2362}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !593, file: !50, line: 1936, baseType: !596, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DISubroutineType(types: !598)
!598 = !{!362, !532}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !593, file: !50, line: 1937, baseType: !600, size: 64, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DISubroutineType(types: !602)
!602 = !{null, !362}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !593, file: !50, line: 1938, baseType: !600, size: 64, offset: 128)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !593, file: !50, line: 1940, baseType: !605, size: 64, offset: 192)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{null, !362, !194}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !593, file: !50, line: 1941, baseType: !609, size: 64, offset: 256)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{!194, !362, !612}
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !20, line: 40, flags: DIFlagFwdDecl)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !593, file: !50, line: 1942, baseType: !615, size: 64, offset: 320)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!194, !362}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !593, file: !50, line: 1943, baseType: !600, size: 64, offset: 384)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !593, file: !50, line: 1944, baseType: !562, size: 64, offset: 448)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !593, file: !50, line: 1945, baseType: !621, size: 64, offset: 512)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{!194, !532, !194}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !593, file: !50, line: 1946, baseType: !625, size: 64, offset: 576)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{!194, !532}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !593, file: !50, line: 1947, baseType: !625, size: 64, offset: 640)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !593, file: !50, line: 1948, baseType: !625, size: 64, offset: 704)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !593, file: !50, line: 1949, baseType: !625, size: 64, offset: 768)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !593, file: !50, line: 1950, baseType: !632, size: 64, offset: 832)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{!194, !318, !635}
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !50, line: 57, flags: DIFlagFwdDecl)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !593, file: !50, line: 1951, baseType: !638, size: 64, offset: 896)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{!194, !532, !641, !210}
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !593, file: !50, line: 1952, baseType: !562, size: 64, offset: 960)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !593, file: !50, line: 1954, baseType: !644, size: 64, offset: 1024)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{!194, !647, !318}
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !649, line: 539, flags: DIFlagFwdDecl)
!649 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!650 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !593, file: !50, line: 1955, baseType: !644, size: 64, offset: 1088)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !593, file: !50, line: 1956, baseType: !644, size: 64, offset: 1152)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !593, file: !50, line: 1957, baseType: !644, size: 64, offset: 1216)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !593, file: !50, line: 1963, baseType: !654, size: 64, offset: 1280)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!194, !532, !657, !136}
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !659, line: 68, size: 512, align: 128, elements: !660)
!659 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!660 = !{!661, !662, !2339, !2346}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !658, file: !659, line: 69, baseType: !260, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, scope: !658, file: !659, line: 77, baseType: !663, size: 320, offset: 64)
!663 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !658, file: !659, line: 77, size: 320, elements: !664)
!664 = !{!665, !852, !857, !885, !893, !899, !2270, !2338}
!665 = !DIDerivedType(tag: DW_TAG_member, scope: !663, file: !659, line: 78, baseType: !666, size: 320)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !663, file: !659, line: 78, size: 320, elements: !667)
!667 = !{!668, !669, !850, !851}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !666, file: !659, line: 84, baseType: !155, size: 128)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !666, file: !659, line: 86, baseType: !670, size: 64, offset: 128)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !50, line: 451, size: 1216, align: 64, elements: !672)
!672 = !{!673, !674, !681, !682, !687, !702, !718, !719, !720, !721, !843, !844, !847, !848, !849}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !671, file: !50, line: 452, baseType: !362, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !671, file: !50, line: 453, baseType: !675, size: 128, offset: 64)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !676, line: 292, size: 128, elements: !677)
!676 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!677 = !{!678, !679, !680}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !675, file: !676, line: 293, baseType: !168)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !675, file: !676, line: 295, baseType: !136, size: 32)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !675, file: !676, line: 296, baseType: !138, size: 64, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !671, file: !50, line: 454, baseType: !136, size: 32, offset: 192)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !671, file: !50, line: 455, baseType: !683, size: 32, offset: 224)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !137, line: 168, baseType: !684)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !137, line: 166, size: 32, elements: !685)
!685 = !{!686}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !684, file: !137, line: 167, baseType: !194, size: 32)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !671, file: !50, line: 460, baseType: !688, size: 128, offset: 256)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !689, line: 125, size: 128, elements: !690)
!689 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!690 = !{!691, !701}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !688, file: !689, line: 126, baseType: !692, size: 64)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !689, line: 31, size: 64, elements: !693)
!693 = !{!694}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !692, file: !689, line: 32, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !689, line: 24, size: 192, align: 64, elements: !697)
!697 = !{!698, !699, !700}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !696, file: !689, line: 25, baseType: !260, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !696, file: !689, line: 26, baseType: !695, size: 64, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !696, file: !689, line: 27, baseType: !695, size: 64, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !688, file: !689, line: 127, baseType: !695, size: 64, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !671, file: !50, line: 461, baseType: !703, size: 256, offset: 384)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !704, line: 35, size: 256, elements: !705)
!704 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!705 = !{!706, !714, !715, !717}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !703, file: !704, line: 36, baseType: !707, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !708, line: 13, baseType: !709)
!708 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !137, line: 175, baseType: !710)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !137, line: 173, size: 64, elements: !711)
!711 = !{!712}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !710, file: !137, line: 174, baseType: !713, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !132, line: 22, baseType: !473)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !703, file: !704, line: 42, baseType: !707, size: 64, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !703, file: !704, line: 46, baseType: !716, offset: 128)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !169, line: 29, baseType: !176)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !703, file: !704, line: 47, baseType: !155, size: 128, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !671, file: !50, line: 462, baseType: !260, size: 64, offset: 640)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !671, file: !50, line: 463, baseType: !260, size: 64, offset: 704)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !671, file: !50, line: 464, baseType: !260, size: 64, offset: 768)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !671, file: !50, line: 465, baseType: !722, size: 64, offset: 832)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !724)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !50, line: 367, size: 1408, elements: !725)
!725 = !{!726, !730, !734, !738, !742, !746, !752, !758, !762, !767, !771, !775, !779, !807, !811, !817, !818, !819, !823, !828, !832, !839}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !724, file: !50, line: 368, baseType: !727, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DISubroutineType(types: !729)
!729 = !{!194, !657, !612}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !724, file: !50, line: 369, baseType: !731, size: 64, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{!194, !288, !657}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !724, file: !50, line: 372, baseType: !735, size: 64, offset: 128)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{!194, !670, !612}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !724, file: !50, line: 375, baseType: !739, size: 64, offset: 192)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!194, !657}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !724, file: !50, line: 381, baseType: !743, size: 64, offset: 256)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!194, !288, !670, !158, !7}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !724, file: !50, line: 383, baseType: !747, size: 64, offset: 320)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{null, !750}
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !50, line: 290, flags: DIFlagFwdDecl)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !724, file: !50, line: 385, baseType: !753, size: 64, offset: 384)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{!194, !288, !670, !464, !7, !7, !756, !757}
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !724, file: !50, line: 388, baseType: !759, size: 64, offset: 448)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{!194, !288, !670, !464, !7, !7, !657, !138}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !724, file: !50, line: 393, baseType: !763, size: 64, offset: 512)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{!766, !670, !766}
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !137, line: 125, baseType: !355)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !724, file: !50, line: 394, baseType: !768, size: 64, offset: 576)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{null, !657, !7, !7}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !724, file: !50, line: 395, baseType: !772, size: 64, offset: 640)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{!194, !657, !136}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !724, file: !50, line: 396, baseType: !776, size: 64, offset: 704)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{null, !657}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !724, file: !50, line: 397, baseType: !780, size: 64, offset: 768)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DISubroutineType(types: !782)
!782 = !{!241, !783, !805}
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !50, line: 320, size: 384, elements: !785)
!785 = !{!786, !787, !788, !792, !793, !794, !797, !798}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !784, file: !50, line: 321, baseType: !288, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !784, file: !50, line: 326, baseType: !464, size: 64, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !784, file: !50, line: 327, baseType: !789, size: 64, offset: 128)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DISubroutineType(types: !791)
!791 = !{null, !783, !245, !245}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !784, file: !50, line: 328, baseType: !138, size: 64, offset: 192)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !784, file: !50, line: 329, baseType: !194, size: 32, offset: 256)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !784, file: !50, line: 330, baseType: !795, size: 16, offset: 288)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !132, line: 19, baseType: !796)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !134, line: 24, baseType: !252)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !784, file: !50, line: 331, baseType: !795, size: 16, offset: 304)
!798 = !DIDerivedType(tag: DW_TAG_member, scope: !784, file: !50, line: 332, baseType: !799, size: 64, offset: 320)
!799 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !784, file: !50, line: 332, size: 64, elements: !800)
!800 = !{!801, !802}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !799, file: !50, line: 333, baseType: !7, size: 32)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !799, file: !50, line: 334, baseType: !803, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !50, line: 334, flags: DIFlagFwdDecl)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !50, line: 64, flags: DIFlagFwdDecl)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !724, file: !50, line: 402, baseType: !808, size: 64, offset: 832)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{!194, !670, !657, !657, !12}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !724, file: !50, line: 404, baseType: !812, size: 64, offset: 896)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{!423, !657, !815}
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !816, line: 305, baseType: !7)
!816 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!817 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !724, file: !50, line: 405, baseType: !776, size: 64, offset: 960)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !724, file: !50, line: 406, baseType: !739, size: 64, offset: 1024)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !724, file: !50, line: 407, baseType: !820, size: 64, offset: 1088)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{!194, !657, !260, !260}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !724, file: !50, line: 409, baseType: !824, size: 64, offset: 1152)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{null, !657, !827, !827}
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !724, file: !50, line: 410, baseType: !829, size: 64, offset: 1216)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!194, !670, !657}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !724, file: !50, line: 413, baseType: !833, size: 64, offset: 1280)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{!194, !836, !288, !838}
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !50, line: 61, flags: DIFlagFwdDecl)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !724, file: !50, line: 415, baseType: !840, size: 64, offset: 1344)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{null, !288}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !671, file: !50, line: 466, baseType: !260, size: 64, offset: 896)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !671, file: !50, line: 467, baseType: !845, size: 32, offset: 960)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !846, line: 8, baseType: !351)
!846 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!847 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !671, file: !50, line: 468, baseType: !168, offset: 992)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !671, file: !50, line: 469, baseType: !155, size: 128, offset: 1024)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !671, file: !50, line: 470, baseType: !138, size: 64, offset: 1152)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !666, file: !659, line: 87, baseType: !260, size: 64, offset: 192)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !666, file: !659, line: 94, baseType: !260, size: 64, offset: 256)
!852 = !DIDerivedType(tag: DW_TAG_member, scope: !663, file: !659, line: 96, baseType: !853, size: 64)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !663, file: !659, line: 96, size: 64, elements: !854)
!854 = !{!855}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !853, file: !659, line: 101, baseType: !856, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !137, line: 143, baseType: !355)
!857 = !DIDerivedType(tag: DW_TAG_member, scope: !663, file: !659, line: 103, baseType: !858, size: 320)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !663, file: !659, line: 103, size: 320, elements: !859)
!859 = !{!860, !870, !873, !874}
!860 = !DIDerivedType(tag: DW_TAG_member, scope: !858, file: !659, line: 104, baseType: !861, size: 128)
!861 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !858, file: !659, line: 104, size: 128, elements: !862)
!862 = !{!863, !864}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !861, file: !659, line: 105, baseType: !155, size: 128)
!864 = !DIDerivedType(tag: DW_TAG_member, scope: !861, file: !659, line: 106, baseType: !865, size: 128)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !861, file: !659, line: 106, size: 128, elements: !866)
!866 = !{!867, !868, !869}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !865, file: !659, line: 107, baseType: !657, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !865, file: !659, line: 109, baseType: !194, size: 32, offset: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !865, file: !659, line: 110, baseType: !194, size: 32, offset: 96)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !858, file: !659, line: 117, baseType: !871, size: 64, offset: 128)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !659, line: 117, flags: DIFlagFwdDecl)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !858, file: !659, line: 119, baseType: !138, size: 64, offset: 192)
!874 = !DIDerivedType(tag: DW_TAG_member, scope: !858, file: !659, line: 120, baseType: !875, size: 64, offset: 256)
!875 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !858, file: !659, line: 120, size: 64, elements: !876)
!876 = !{!877, !878, !879}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !875, file: !659, line: 121, baseType: !138, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !875, file: !659, line: 122, baseType: !260, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, scope: !875, file: !659, line: 123, baseType: !880, size: 32)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !875, file: !659, line: 123, size: 32, elements: !881)
!881 = !{!882, !883, !884}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !880, file: !659, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !880, file: !659, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !880, file: !659, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!885 = !DIDerivedType(tag: DW_TAG_member, scope: !663, file: !659, line: 130, baseType: !886, size: 192)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !663, file: !659, line: 130, size: 192, elements: !887)
!887 = !{!888, !889, !890, !891, !892}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !886, file: !659, line: 131, baseType: !260, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !886, file: !659, line: 134, baseType: !135, size: 8, offset: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !886, file: !659, line: 135, baseType: !135, size: 8, offset: 72)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !886, file: !659, line: 136, baseType: !683, size: 32, offset: 96)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !886, file: !659, line: 137, baseType: !7, size: 32, offset: 128)
!893 = !DIDerivedType(tag: DW_TAG_member, scope: !663, file: !659, line: 139, baseType: !894, size: 256)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !663, file: !659, line: 139, size: 256, elements: !895)
!895 = !{!896, !897, !898}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !894, file: !659, line: 140, baseType: !260, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !894, file: !659, line: 141, baseType: !683, size: 32, offset: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !894, file: !659, line: 143, baseType: !155, size: 128, offset: 128)
!899 = !DIDerivedType(tag: DW_TAG_member, scope: !663, file: !659, line: 145, baseType: !900, size: 256)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !663, file: !659, line: 145, size: 256, elements: !901)
!901 = !{!902, !903, !905, !906, !2269}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !900, file: !659, line: 146, baseType: !260, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !900, file: !659, line: 147, baseType: !904, size: 64, offset: 64)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !649, line: 509, baseType: !657)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !900, file: !659, line: 148, baseType: !260, size: 64, offset: 128)
!906 = !DIDerivedType(tag: DW_TAG_member, scope: !900, file: !659, line: 149, baseType: !907, size: 64, offset: 192)
!907 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !900, file: !659, line: 149, size: 64, elements: !908)
!908 = !{!909, !2268}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !907, file: !659, line: 150, baseType: !910, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !659, line: 388, size: 7296, elements: !912)
!912 = !{!913, !2264}
!913 = !DIDerivedType(tag: DW_TAG_member, scope: !911, file: !659, line: 389, baseType: !914, size: 7296)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !911, file: !659, line: 389, size: 7296, elements: !915)
!915 = !{!916, !1034, !1035, !1036, !1040, !1041, !1042, !1043, !1044, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1085, !1093, !1096, !1142, !1143, !2248, !2249, !2252, !2253, !2254, !2257, !2258, !2259, !2262, !2263}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !914, file: !659, line: 390, baseType: !917, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !659, line: 305, size: 1472, elements: !919)
!919 = !{!920, !921, !922, !923, !924, !925, !926, !927, !934, !935, !940, !941, !944, !1028, !1029, !1030, !1031, !1032}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !918, file: !659, line: 308, baseType: !260, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !918, file: !659, line: 309, baseType: !260, size: 64, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !918, file: !659, line: 313, baseType: !917, size: 64, offset: 128)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !918, file: !659, line: 313, baseType: !917, size: 64, offset: 192)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !918, file: !659, line: 315, baseType: !696, size: 192, align: 64, offset: 256)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !918, file: !659, line: 323, baseType: !260, size: 64, offset: 448)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !918, file: !659, line: 327, baseType: !910, size: 64, offset: 512)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !918, file: !659, line: 333, baseType: !928, size: 64, offset: 576)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !649, line: 284, baseType: !929)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !649, line: 284, size: 64, elements: !930)
!930 = !{!931}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !929, file: !649, line: 284, baseType: !932, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !933, line: 19, baseType: !260)
!933 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!934 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !918, file: !659, line: 334, baseType: !260, size: 64, offset: 640)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !918, file: !659, line: 343, baseType: !936, size: 256, offset: 704)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !918, file: !659, line: 340, size: 256, elements: !937)
!937 = !{!938, !939}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !936, file: !659, line: 341, baseType: !696, size: 192, align: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !936, file: !659, line: 342, baseType: !260, size: 64, offset: 192)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !918, file: !659, line: 351, baseType: !155, size: 128, offset: 960)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !918, file: !659, line: 353, baseType: !942, size: 64, offset: 1088)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !659, line: 353, flags: DIFlagFwdDecl)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !918, file: !659, line: 356, baseType: !945, size: 64, offset: 1152)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !947)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !20, line: 557, size: 832, elements: !948)
!948 = !{!949, !953, !954, !958, !962, !1002, !1006, !1010, !1014, !1015, !1016, !1020, !1024}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !947, file: !20, line: 558, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DISubroutineType(types: !952)
!952 = !{null, !917}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !947, file: !20, line: 559, baseType: !950, size: 64, offset: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !947, file: !20, line: 560, baseType: !955, size: 64, offset: 128)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DISubroutineType(types: !957)
!957 = !{!194, !917, !260}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !947, file: !20, line: 561, baseType: !959, size: 64, offset: 192)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DISubroutineType(types: !961)
!961 = !{!194, !917}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !947, file: !20, line: 562, baseType: !963, size: 64, offset: 256)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DISubroutineType(types: !965)
!965 = !{!966, !967}
!966 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !659, line: 682, baseType: !7)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !20, line: 508, size: 768, elements: !969)
!969 = !{!970, !971, !972, !973, !974, !975, !982, !989, !995, !996, !997, !999, !1001}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !968, file: !20, line: 509, baseType: !917, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !968, file: !20, line: 510, baseType: !7, size: 32, offset: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !968, file: !20, line: 511, baseType: !136, size: 32, offset: 96)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !968, file: !20, line: 512, baseType: !260, size: 64, offset: 128)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !968, file: !20, line: 513, baseType: !260, size: 64, offset: 192)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !968, file: !20, line: 514, baseType: !976, size: 64, offset: 256)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !649, line: 385, baseType: !978)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !649, line: 385, size: 64, elements: !979)
!979 = !{!980}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !978, file: !649, line: 385, baseType: !981, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !933, line: 15, baseType: !260)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !968, file: !20, line: 516, baseType: !983, size: 64, offset: 320)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !649, line: 359, baseType: !985)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !649, line: 359, size: 64, elements: !986)
!986 = !{!987}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !985, file: !649, line: 359, baseType: !988, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !933, line: 16, baseType: !260)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !968, file: !20, line: 519, baseType: !990, size: 64, offset: 384)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !933, line: 21, baseType: !991)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !933, line: 21, size: 64, elements: !992)
!992 = !{!993}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !991, file: !933, line: 21, baseType: !994, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !933, line: 14, baseType: !260)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !968, file: !20, line: 521, baseType: !657, size: 64, offset: 448)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !968, file: !20, line: 522, baseType: !657, size: 64, offset: 512)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !968, file: !20, line: 528, baseType: !998, size: 64, offset: 576)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !968, file: !20, line: 532, baseType: !1000, size: 64, offset: 640)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !968, file: !20, line: 536, baseType: !904, size: 64, offset: 704)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !947, file: !20, line: 563, baseType: !1003, size: 64, offset: 320)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!966, !967, !19}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !947, file: !20, line: 565, baseType: !1007, size: 64, offset: 384)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{null, !967, !260, !260}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !947, file: !20, line: 567, baseType: !1011, size: 64, offset: 448)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!260, !917}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !947, file: !20, line: 571, baseType: !963, size: 64, offset: 512)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !947, file: !20, line: 574, baseType: !963, size: 64, offset: 576)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !947, file: !20, line: 579, baseType: !1017, size: 64, offset: 640)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!194, !917, !260, !138, !194, !194}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !947, file: !20, line: 585, baseType: !1021, size: 64, offset: 704)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!151, !917}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !947, file: !20, line: 615, baseType: !1025, size: 64, offset: 768)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!657, !917, !260}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !918, file: !659, line: 359, baseType: !260, size: 64, offset: 1216)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !918, file: !659, line: 361, baseType: !288, size: 64, offset: 1280)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !918, file: !659, line: 362, baseType: !138, size: 64, offset: 1344)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !918, file: !659, line: 365, baseType: !707, size: 64, offset: 1408)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !918, file: !659, line: 373, baseType: !1033, offset: 1472)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !659, line: 296, elements: !182)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !914, file: !659, line: 391, baseType: !692, size: 64, offset: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !914, file: !659, line: 392, baseType: !355, size: 64, offset: 128)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !914, file: !659, line: 394, baseType: !1037, size: 64, offset: 192)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!260, !288, !260, !260, !260, !260}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !914, file: !659, line: 398, baseType: !260, size: 64, offset: 256)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !914, file: !659, line: 399, baseType: !260, size: 64, offset: 320)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !914, file: !659, line: 405, baseType: !260, size: 64, offset: 384)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !914, file: !659, line: 406, baseType: !260, size: 64, offset: 448)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !914, file: !659, line: 407, baseType: !1045, size: 64, offset: 512)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !649, line: 286, baseType: !1047)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !649, line: 286, size: 64, elements: !1048)
!1048 = !{!1049}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1047, file: !649, line: 286, baseType: !1050, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !933, line: 18, baseType: !260)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !914, file: !659, line: 416, baseType: !683, size: 32, offset: 576)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !914, file: !659, line: 428, baseType: !683, size: 32, offset: 608)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !914, file: !659, line: 437, baseType: !683, size: 32, offset: 640)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !914, file: !659, line: 447, baseType: !683, size: 32, offset: 672)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !914, file: !659, line: 450, baseType: !707, size: 64, offset: 704)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !914, file: !659, line: 452, baseType: !194, size: 32, offset: 768)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !914, file: !659, line: 454, baseType: !168, offset: 800)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !914, file: !659, line: 457, baseType: !703, size: 256, offset: 832)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !914, file: !659, line: 459, baseType: !155, size: 128, offset: 1088)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !914, file: !659, line: 466, baseType: !260, size: 64, offset: 1216)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !914, file: !659, line: 467, baseType: !260, size: 64, offset: 1280)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !914, file: !659, line: 469, baseType: !260, size: 64, offset: 1344)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !914, file: !659, line: 470, baseType: !260, size: 64, offset: 1408)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !914, file: !659, line: 471, baseType: !709, size: 64, offset: 1472)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !914, file: !659, line: 472, baseType: !260, size: 64, offset: 1536)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !914, file: !659, line: 473, baseType: !260, size: 64, offset: 1600)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !914, file: !659, line: 474, baseType: !260, size: 64, offset: 1664)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !914, file: !659, line: 475, baseType: !260, size: 64, offset: 1728)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !914, file: !659, line: 477, baseType: !168, offset: 1792)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !914, file: !659, line: 478, baseType: !260, size: 64, offset: 1792)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !914, file: !659, line: 478, baseType: !260, size: 64, offset: 1856)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !914, file: !659, line: 478, baseType: !260, size: 64, offset: 1920)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !914, file: !659, line: 478, baseType: !260, size: 64, offset: 1984)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !914, file: !659, line: 479, baseType: !260, size: 64, offset: 2048)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !914, file: !659, line: 479, baseType: !260, size: 64, offset: 2112)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !914, file: !659, line: 479, baseType: !260, size: 64, offset: 2176)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !914, file: !659, line: 480, baseType: !260, size: 64, offset: 2240)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !914, file: !659, line: 480, baseType: !260, size: 64, offset: 2304)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !914, file: !659, line: 480, baseType: !260, size: 64, offset: 2368)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !914, file: !659, line: 480, baseType: !260, size: 64, offset: 2432)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !914, file: !659, line: 482, baseType: !1082, size: 2816, offset: 2496)
!1082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 2816, elements: !1083)
!1083 = !{!1084}
!1084 = !DISubrange(count: 44)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !914, file: !659, line: 488, baseType: !1086, size: 256, offset: 5312)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1087, line: 60, size: 256, elements: !1088)
!1087 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1088 = !{!1089}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1086, file: !1087, line: 61, baseType: !1090, size: 256)
!1090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !707, size: 256, elements: !1091)
!1091 = !{!1092}
!1092 = !DISubrange(count: 4)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !914, file: !659, line: 490, baseType: !1094, size: 64, offset: 5568)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !659, line: 490, flags: DIFlagFwdDecl)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !914, file: !659, line: 493, baseType: !1097, size: 896, offset: 5632)
!1097 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1098, line: 53, baseType: !1099)
!1098 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1098, line: 13, size: 896, elements: !1100)
!1100 = !{!1101, !1102, !1103, !1104, !1107, !1108, !1115, !1116, !1136, !1137, !1138}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1099, file: !1098, line: 18, baseType: !355, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1099, file: !1098, line: 28, baseType: !709, size: 64, offset: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1099, file: !1098, line: 31, baseType: !703, size: 256, offset: 128)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1099, file: !1098, line: 32, baseType: !1105, size: 64, offset: 384)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1098, line: 32, flags: DIFlagFwdDecl)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1099, file: !1098, line: 37, baseType: !252, size: 16, offset: 448)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1099, file: !1098, line: 40, baseType: !1109, size: 192, offset: 512)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1110, line: 53, size: 192, elements: !1111)
!1110 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1111 = !{!1112, !1113, !1114}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1109, file: !1110, line: 54, baseType: !707, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1109, file: !1110, line: 55, baseType: !168, offset: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1109, file: !1110, line: 59, baseType: !155, size: 128, offset: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1099, file: !1098, line: 41, baseType: !138, size: 64, offset: 704)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1099, file: !1098, line: 42, baseType: !1117, size: 64, offset: 768)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1119)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1120, line: 13, size: 896, elements: !1121)
!1120 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1121 = !{!1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1119, file: !1120, line: 14, baseType: !138, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1119, file: !1120, line: 15, baseType: !260, size: 64, offset: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1119, file: !1120, line: 17, baseType: !260, size: 64, offset: 128)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1119, file: !1120, line: 17, baseType: !260, size: 64, offset: 192)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1119, file: !1120, line: 19, baseType: !245, size: 64, offset: 256)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1119, file: !1120, line: 21, baseType: !245, size: 64, offset: 320)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1119, file: !1120, line: 22, baseType: !245, size: 64, offset: 384)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1119, file: !1120, line: 23, baseType: !245, size: 64, offset: 448)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1119, file: !1120, line: 24, baseType: !245, size: 64, offset: 512)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1119, file: !1120, line: 25, baseType: !245, size: 64, offset: 576)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1119, file: !1120, line: 26, baseType: !245, size: 64, offset: 640)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1119, file: !1120, line: 27, baseType: !245, size: 64, offset: 704)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1119, file: !1120, line: 28, baseType: !245, size: 64, offset: 768)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1119, file: !1120, line: 29, baseType: !245, size: 64, offset: 832)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1099, file: !1098, line: 44, baseType: !683, size: 32, offset: 832)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1099, file: !1098, line: 50, baseType: !795, size: 16, offset: 864)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1099, file: !1098, line: 51, baseType: !1139, size: 16, offset: 880)
!1139 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !132, line: 18, baseType: !1140)
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !134, line: 23, baseType: !1141)
!1141 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !914, file: !659, line: 495, baseType: !260, size: 64, offset: 6528)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !914, file: !659, line: 497, baseType: !1144, size: 64, offset: 6592)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !659, line: 381, size: 384, elements: !1146)
!1146 = !{!1147, !1148, !2247}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1145, file: !659, line: 382, baseType: !683, size: 32)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1145, file: !659, line: 383, baseType: !1149, size: 128, offset: 64)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !659, line: 376, size: 128, elements: !1150)
!1150 = !{!1151, !2245}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1149, file: !659, line: 377, baseType: !1152, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1154, line: 640, size: 48640, elements: !1155)
!1154 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1155 = !{!1156, !1162, !1164, !1165, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1182, !1200, !1211, !1294, !1295, !1296, !1307, !1308, !1310, !1311, !1312, !1313, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1392, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1430, !1432, !1433, !1434, !1446, !1447, !1448, !1449, !1450, !1451, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1475, !1480, !1664, !1665, !1666, !1667, !1671, !1674, !1677, !1680, !1683, !1686, !1787, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1833, !1834, !1835, !1836, !1837, !1842, !1843, !1844, !1847, !1848, !1851, !1854, !1857, !1860, !1903, !1906, !1907, !1986, !1987, !1990, !1991, !1994, !1995, !1996, !2000, !2001, !2002, !2015, !2016, !2017, !2027, !2032, !2035, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1153, file: !1154, line: 646, baseType: !1157, size: 128)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1158, line: 56, size: 128, elements: !1159)
!1158 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1159 = !{!1160, !1161}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1157, file: !1158, line: 57, baseType: !260, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1157, file: !1158, line: 58, baseType: !351, size: 32, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1153, file: !1154, line: 649, baseType: !1163, size: 64, offset: 128)
!1163 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !245)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1153, file: !1154, line: 657, baseType: !138, size: 64, offset: 192)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1153, file: !1154, line: 658, baseType: !1166, size: 32, offset: 256)
!1166 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1167, line: 113, baseType: !1168)
!1167 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1167, line: 111, size: 32, elements: !1169)
!1169 = !{!1170}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1168, file: !1167, line: 112, baseType: !683, size: 32)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1153, file: !1154, line: 660, baseType: !7, size: 32, offset: 288)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1153, file: !1154, line: 661, baseType: !7, size: 32, offset: 320)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1153, file: !1154, line: 684, baseType: !194, size: 32, offset: 352)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1153, file: !1154, line: 686, baseType: !194, size: 32, offset: 384)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1153, file: !1154, line: 687, baseType: !194, size: 32, offset: 416)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1153, file: !1154, line: 688, baseType: !194, size: 32, offset: 448)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1153, file: !1154, line: 689, baseType: !7, size: 32, offset: 480)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1153, file: !1154, line: 691, baseType: !1179, size: 64, offset: 512)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1181)
!1181 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1154, line: 691, flags: DIFlagFwdDecl)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1153, file: !1154, line: 692, baseType: !1183, size: 832, offset: 576)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1154, line: 451, size: 832, elements: !1184)
!1184 = !{!1185, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1183, file: !1154, line: 453, baseType: !1186, size: 128)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1154, line: 325, size: 128, elements: !1187)
!1187 = !{!1188, !1189}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1186, file: !1154, line: 326, baseType: !260, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1186, file: !1154, line: 327, baseType: !351, size: 32, offset: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1183, file: !1154, line: 454, baseType: !696, size: 192, align: 64, offset: 128)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1183, file: !1154, line: 455, baseType: !155, size: 128, offset: 320)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1183, file: !1154, line: 456, baseType: !7, size: 32, offset: 448)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1183, file: !1154, line: 458, baseType: !355, size: 64, offset: 512)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1183, file: !1154, line: 459, baseType: !355, size: 64, offset: 576)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1183, file: !1154, line: 460, baseType: !355, size: 64, offset: 640)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1183, file: !1154, line: 461, baseType: !355, size: 64, offset: 704)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1183, file: !1154, line: 463, baseType: !355, size: 64, offset: 768)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1183, file: !1154, line: 465, baseType: !1199, offset: 832)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1154, line: 415, elements: !182)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1153, file: !1154, line: 693, baseType: !1201, size: 384, offset: 1408)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1154, line: 489, size: 384, elements: !1202)
!1202 = !{!1203, !1204, !1205, !1206, !1207, !1208, !1209}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1201, file: !1154, line: 490, baseType: !155, size: 128)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1201, file: !1154, line: 491, baseType: !260, size: 64, offset: 128)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1201, file: !1154, line: 492, baseType: !260, size: 64, offset: 192)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1201, file: !1154, line: 493, baseType: !7, size: 32, offset: 256)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1201, file: !1154, line: 494, baseType: !252, size: 16, offset: 288)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1201, file: !1154, line: 495, baseType: !252, size: 16, offset: 304)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1201, file: !1154, line: 497, baseType: !1210, size: 64, offset: 320)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1153, file: !1154, line: 697, baseType: !1212, size: 1792, offset: 1792)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1154, line: 507, size: 1792, elements: !1213)
!1213 = !{!1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1291, !1292}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1212, file: !1154, line: 508, baseType: !696, size: 192, align: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1212, file: !1154, line: 515, baseType: !355, size: 64, offset: 192)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1212, file: !1154, line: 516, baseType: !355, size: 64, offset: 256)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1212, file: !1154, line: 517, baseType: !355, size: 64, offset: 320)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1212, file: !1154, line: 518, baseType: !355, size: 64, offset: 384)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1212, file: !1154, line: 519, baseType: !355, size: 64, offset: 448)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1212, file: !1154, line: 526, baseType: !713, size: 64, offset: 512)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1212, file: !1154, line: 527, baseType: !355, size: 64, offset: 576)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1212, file: !1154, line: 528, baseType: !7, size: 32, offset: 640)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1212, file: !1154, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1212, file: !1154, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1212, file: !1154, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1212, file: !1154, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1212, file: !1154, line: 563, baseType: !1228, size: 512, offset: 704)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !26, line: 118, size: 512, elements: !1229)
!1229 = !{!1230, !1238, !1239, !1244, !1287, !1288, !1289, !1290}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1228, file: !26, line: 119, baseType: !1231, size: 256)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1232, line: 9, size: 256, elements: !1233)
!1232 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1233 = !{!1234, !1235}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1231, file: !1232, line: 10, baseType: !696, size: 192, align: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1231, file: !1232, line: 11, baseType: !1236, size: 64, offset: 192)
!1236 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1237, line: 29, baseType: !713)
!1237 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1228, file: !26, line: 120, baseType: !1236, size: 64, offset: 256)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1228, file: !26, line: 121, baseType: !1240, size: 64, offset: 320)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!25, !1243}
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1228, file: !26, line: 122, baseType: !1245, size: 64, offset: 384)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !26, line: 159, size: 512, align: 512, elements: !1247)
!1247 = !{!1248, !1268, !1269, !1272, !1277, !1278, !1282, !1286}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1246, file: !26, line: 160, baseType: !1249, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !26, line: 214, size: 4608, align: 512, elements: !1251)
!1251 = !{!1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1250, file: !26, line: 215, baseType: !716)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1250, file: !26, line: 216, baseType: !7, size: 32)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1250, file: !26, line: 217, baseType: !7, size: 32, offset: 32)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1250, file: !26, line: 218, baseType: !7, size: 32, offset: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1250, file: !26, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1250, file: !26, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1250, file: !26, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1250, file: !26, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1250, file: !26, line: 233, baseType: !1236, size: 64, offset: 128)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1250, file: !26, line: 234, baseType: !1243, size: 64, offset: 192)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1250, file: !26, line: 235, baseType: !1236, size: 64, offset: 256)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1250, file: !26, line: 236, baseType: !1243, size: 64, offset: 320)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1250, file: !26, line: 237, baseType: !1265, size: 4096, offset: 512)
!1265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1246, size: 4096, elements: !1266)
!1266 = !{!1267}
!1267 = !DISubrange(count: 8)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1246, file: !26, line: 161, baseType: !7, size: 32, offset: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1246, file: !26, line: 162, baseType: !1270, size: 32, offset: 96)
!1270 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !137, line: 27, baseType: !1271)
!1271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !243, line: 96, baseType: !194)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1246, file: !26, line: 163, baseType: !1273, size: 32, offset: 128)
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !324, line: 276, baseType: !1274)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !324, line: 276, size: 32, elements: !1275)
!1275 = !{!1276}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1274, file: !324, line: 276, baseType: !328, size: 32)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1246, file: !26, line: 164, baseType: !1243, size: 64, offset: 192)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1246, file: !26, line: 165, baseType: !1279, size: 128, offset: 256)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1232, line: 14, size: 128, elements: !1280)
!1280 = !{!1281}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1279, file: !1232, line: 15, baseType: !688, size: 128)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1246, file: !26, line: 166, baseType: !1283, size: 64, offset: 384)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!1236}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1246, file: !26, line: 167, baseType: !1236, size: 64, offset: 448)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1228, file: !26, line: 123, baseType: !131, size: 8, offset: 448)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1228, file: !26, line: 124, baseType: !131, size: 8, offset: 456)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1228, file: !26, line: 125, baseType: !131, size: 8, offset: 464)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1228, file: !26, line: 126, baseType: !131, size: 8, offset: 472)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1212, file: !1154, line: 572, baseType: !1228, size: 512, offset: 1216)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1212, file: !1154, line: 580, baseType: !1293, size: 64, offset: 1728)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1153, file: !1154, line: 721, baseType: !7, size: 32, offset: 3584)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1153, file: !1154, line: 722, baseType: !194, size: 32, offset: 3616)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1153, file: !1154, line: 723, baseType: !1297, size: 64, offset: 3648)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1299)
!1299 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1300, line: 17, baseType: !1301)
!1300 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1300, line: 17, size: 64, elements: !1302)
!1302 = !{!1303}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1301, file: !1300, line: 17, baseType: !1304, size: 64)
!1304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 64, elements: !1305)
!1305 = !{!1306}
!1306 = !DISubrange(count: 1)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1153, file: !1154, line: 724, baseType: !1299, size: 64, offset: 3712)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1153, file: !1154, line: 749, baseType: !1309, offset: 3776)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1154, line: 290, elements: !182)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1153, file: !1154, line: 751, baseType: !155, size: 128, offset: 3776)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1153, file: !1154, line: 757, baseType: !910, size: 64, offset: 3904)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1153, file: !1154, line: 758, baseType: !910, size: 64, offset: 3968)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1153, file: !1154, line: 761, baseType: !1314, size: 320, offset: 4032)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1087, line: 34, size: 320, elements: !1315)
!1315 = !{!1316, !1317}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1314, file: !1087, line: 35, baseType: !355, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1314, file: !1087, line: 36, baseType: !1318, size: 256, offset: 64)
!1318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !917, size: 256, elements: !1091)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1153, file: !1154, line: 766, baseType: !194, size: 32, offset: 4352)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1153, file: !1154, line: 767, baseType: !194, size: 32, offset: 4384)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1153, file: !1154, line: 768, baseType: !194, size: 32, offset: 4416)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1153, file: !1154, line: 770, baseType: !194, size: 32, offset: 4448)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1153, file: !1154, line: 772, baseType: !260, size: 64, offset: 4480)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1153, file: !1154, line: 775, baseType: !7, size: 32, offset: 4544)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1153, file: !1154, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1153, file: !1154, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1153, file: !1154, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1153, file: !1154, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1153, file: !1154, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1153, file: !1154, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1153, file: !1154, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1153, file: !1154, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1153, file: !1154, line: 831, baseType: !260, size: 64, offset: 4672)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1153, file: !1154, line: 833, baseType: !1335, size: 384, offset: 4736)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !31, line: 25, size: 384, elements: !1336)
!1336 = !{!1337, !1342}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1335, file: !31, line: 26, baseType: !1338, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!245, !1341}
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, scope: !1335, file: !31, line: 27, baseType: !1343, size: 320, offset: 64)
!1343 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1335, file: !31, line: 27, size: 320, elements: !1344)
!1344 = !{!1345, !1355, !1382}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1343, file: !31, line: 36, baseType: !1346, size: 320)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1343, file: !31, line: 29, size: 320, elements: !1347)
!1347 = !{!1348, !1350, !1351, !1352, !1353, !1354}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1346, file: !31, line: 30, baseType: !1349, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1346, file: !31, line: 31, baseType: !351, size: 32, offset: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1346, file: !31, line: 32, baseType: !351, size: 32, offset: 96)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1346, file: !31, line: 33, baseType: !351, size: 32, offset: 128)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1346, file: !31, line: 34, baseType: !355, size: 64, offset: 192)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1346, file: !31, line: 35, baseType: !1349, size: 64, offset: 256)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1343, file: !31, line: 46, baseType: !1356, size: 192)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1343, file: !31, line: 38, size: 192, elements: !1357)
!1357 = !{!1358, !1359, !1360, !1381}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1356, file: !31, line: 39, baseType: !1270, size: 32)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1356, file: !31, line: 40, baseType: !30, size: 32, offset: 32)
!1360 = !DIDerivedType(tag: DW_TAG_member, scope: !1356, file: !31, line: 41, baseType: !1361, size: 64, offset: 64)
!1361 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1356, file: !31, line: 41, size: 64, elements: !1362)
!1362 = !{!1363, !1371}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1361, file: !31, line: 42, baseType: !1364, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1366, line: 7, size: 128, elements: !1367)
!1366 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1367 = !{!1368, !1370}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1365, file: !1366, line: 8, baseType: !1369, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !243, line: 93, baseType: !466)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1365, file: !1366, line: 9, baseType: !466, size: 64, offset: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1361, file: !31, line: 43, baseType: !1372, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1374, line: 7, size: 64, elements: !1375)
!1374 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1375 = !{!1376, !1380}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1373, file: !1374, line: 8, baseType: !1377, size: 32)
!1377 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1374, line: 5, baseType: !1378)
!1378 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !132, line: 20, baseType: !1379)
!1379 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !134, line: 26, baseType: !194)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1373, file: !1374, line: 9, baseType: !1378, size: 32, offset: 32)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1356, file: !31, line: 45, baseType: !355, size: 64, offset: 128)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1343, file: !31, line: 54, baseType: !1383, size: 256)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1343, file: !31, line: 48, size: 256, elements: !1384)
!1384 = !{!1385, !1388, !1389, !1390, !1391}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1383, file: !31, line: 49, baseType: !1386, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !31, line: 14, flags: DIFlagFwdDecl)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1383, file: !31, line: 50, baseType: !194, size: 32, offset: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1383, file: !31, line: 51, baseType: !194, size: 32, offset: 96)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1383, file: !31, line: 52, baseType: !260, size: 64, offset: 128)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1383, file: !31, line: 53, baseType: !260, size: 64, offset: 192)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1153, file: !1154, line: 835, baseType: !1393, size: 32, offset: 5120)
!1393 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !137, line: 22, baseType: !1394)
!1394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !243, line: 28, baseType: !194)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1153, file: !1154, line: 836, baseType: !1393, size: 32, offset: 5152)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1153, file: !1154, line: 840, baseType: !260, size: 64, offset: 5184)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1153, file: !1154, line: 849, baseType: !1152, size: 64, offset: 5248)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1153, file: !1154, line: 852, baseType: !1152, size: 64, offset: 5312)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1153, file: !1154, line: 857, baseType: !155, size: 128, offset: 5376)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1153, file: !1154, line: 858, baseType: !155, size: 128, offset: 5504)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1153, file: !1154, line: 859, baseType: !1152, size: 64, offset: 5632)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1153, file: !1154, line: 867, baseType: !155, size: 128, offset: 5696)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1153, file: !1154, line: 868, baseType: !155, size: 128, offset: 5824)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1153, file: !1154, line: 871, baseType: !1405, size: 64, offset: 5952)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !59, line: 59, size: 768, elements: !1407)
!1407 = !{!1408, !1409, !1410, !1411, !1413, !1414, !1421, !1422}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1406, file: !59, line: 61, baseType: !1166, size: 32)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1406, file: !59, line: 62, baseType: !7, size: 32, offset: 32)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1406, file: !59, line: 63, baseType: !168, offset: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1406, file: !59, line: 65, baseType: !1412, size: 256, offset: 64)
!1412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, size: 256, elements: !1091)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1406, file: !59, line: 66, baseType: !571, size: 64, offset: 320)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1406, file: !59, line: 68, baseType: !1415, size: 128, offset: 384)
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1416, line: 40, baseType: !1417)
!1416 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1416, line: 36, size: 128, elements: !1418)
!1418 = !{!1419, !1420}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1417, file: !1416, line: 37, baseType: !168)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1417, file: !1416, line: 38, baseType: !155, size: 128)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1406, file: !59, line: 69, baseType: !301, size: 128, align: 64, offset: 512)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1406, file: !59, line: 70, baseType: !1423, size: 128, offset: 640)
!1423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1424, size: 128, elements: !1305)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !59, line: 54, size: 128, elements: !1425)
!1425 = !{!1426, !1427}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1424, file: !59, line: 55, baseType: !194, size: 32)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1424, file: !59, line: 56, baseType: !1428, size: 64, offset: 64)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !59, line: 56, flags: DIFlagFwdDecl)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1153, file: !1154, line: 872, baseType: !1431, size: 512, offset: 6016)
!1431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !575, size: 512, elements: !1091)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1153, file: !1154, line: 873, baseType: !155, size: 128, offset: 6528)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1153, file: !1154, line: 874, baseType: !155, size: 128, offset: 6656)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1153, file: !1154, line: 876, baseType: !1435, size: 64, offset: 6784)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1437, line: 26, size: 192, elements: !1438)
!1437 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1438 = !{!1439, !1440}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1436, file: !1437, line: 27, baseType: !7, size: 32)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1436, file: !1437, line: 28, baseType: !1441, size: 128, offset: 64)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1442, line: 43, size: 128, elements: !1443)
!1442 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1443 = !{!1444, !1445}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1441, file: !1442, line: 44, baseType: !716)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1441, file: !1442, line: 45, baseType: !155, size: 128)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1153, file: !1154, line: 879, baseType: !641, size: 64, offset: 6848)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1153, file: !1154, line: 882, baseType: !641, size: 64, offset: 6912)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1153, file: !1154, line: 884, baseType: !355, size: 64, offset: 6976)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1153, file: !1154, line: 885, baseType: !355, size: 64, offset: 7040)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1153, file: !1154, line: 890, baseType: !355, size: 64, offset: 7104)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1153, file: !1154, line: 891, baseType: !1452, size: 128, offset: 7168)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1154, line: 242, size: 128, elements: !1453)
!1453 = !{!1454, !1455, !1456}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1452, file: !1154, line: 244, baseType: !355, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1452, file: !1154, line: 245, baseType: !355, size: 64, offset: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1452, file: !1154, line: 246, baseType: !716, offset: 128)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1153, file: !1154, line: 900, baseType: !260, size: 64, offset: 7296)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1153, file: !1154, line: 901, baseType: !260, size: 64, offset: 7360)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1153, file: !1154, line: 904, baseType: !355, size: 64, offset: 7424)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1153, file: !1154, line: 907, baseType: !355, size: 64, offset: 7488)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1153, file: !1154, line: 910, baseType: !260, size: 64, offset: 7552)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1153, file: !1154, line: 911, baseType: !260, size: 64, offset: 7616)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1153, file: !1154, line: 914, baseType: !1464, size: 640, offset: 7680)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1465, line: 123, size: 640, elements: !1466)
!1465 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1466 = !{!1467, !1473, !1474}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1464, file: !1465, line: 124, baseType: !1468, size: 576)
!1468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1469, size: 576, elements: !211)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1465, line: 108, size: 192, elements: !1470)
!1470 = !{!1471, !1472}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1469, file: !1465, line: 109, baseType: !355, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1469, file: !1465, line: 110, baseType: !1279, size: 128, offset: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1464, file: !1465, line: 125, baseType: !7, size: 32, offset: 576)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1464, file: !1465, line: 126, baseType: !7, size: 32, offset: 608)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1153, file: !1154, line: 917, baseType: !1476, size: 192, offset: 8320)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1465, line: 134, size: 192, elements: !1477)
!1477 = !{!1478, !1479}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1476, file: !1465, line: 135, baseType: !301, size: 128, align: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1476, file: !1465, line: 136, baseType: !7, size: 32, offset: 128)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1153, file: !1154, line: 923, baseType: !1481, size: 64, offset: 8512)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1483)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1484, line: 111, size: 1280, elements: !1485)
!1484 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1485 = !{!1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1505, !1506, !1507, !1508, !1509, !1510, !1617, !1618, !1619, !1620, !1646, !1649, !1659}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1483, file: !1484, line: 112, baseType: !683, size: 32)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1483, file: !1484, line: 120, baseType: !368, size: 32, offset: 32)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1483, file: !1484, line: 121, baseType: !376, size: 32, offset: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1483, file: !1484, line: 122, baseType: !368, size: 32, offset: 96)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1483, file: !1484, line: 123, baseType: !376, size: 32, offset: 128)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1483, file: !1484, line: 124, baseType: !368, size: 32, offset: 160)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1483, file: !1484, line: 125, baseType: !376, size: 32, offset: 192)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1483, file: !1484, line: 126, baseType: !368, size: 32, offset: 224)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1483, file: !1484, line: 127, baseType: !376, size: 32, offset: 256)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1483, file: !1484, line: 128, baseType: !7, size: 32, offset: 288)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1483, file: !1484, line: 129, baseType: !1497, size: 64, offset: 320)
!1497 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1498, line: 26, baseType: !1499)
!1498 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1498, line: 24, size: 64, elements: !1500)
!1500 = !{!1501}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1499, file: !1498, line: 25, baseType: !1502, size: 64)
!1502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, size: 64, elements: !1503)
!1503 = !{!1504}
!1504 = !DISubrange(count: 2)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1483, file: !1484, line: 130, baseType: !1497, size: 64, offset: 384)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1483, file: !1484, line: 131, baseType: !1497, size: 64, offset: 448)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1483, file: !1484, line: 132, baseType: !1497, size: 64, offset: 512)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1483, file: !1484, line: 133, baseType: !1497, size: 64, offset: 576)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1483, file: !1484, line: 135, baseType: !135, size: 8, offset: 640)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1483, file: !1484, line: 137, baseType: !1511, size: 64, offset: 704)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1513, line: 189, size: 1664, elements: !1514)
!1513 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1514 = !{!1515, !1516, !1519, !1524, !1525, !1528, !1529, !1534, !1535, !1536, !1537, !1539, !1540, !1541, !1542, !1543, !1581, !1602}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1512, file: !1513, line: 190, baseType: !1166, size: 32)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1512, file: !1513, line: 191, baseType: !1517, size: 32, offset: 32)
!1517 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1513, line: 28, baseType: !1518)
!1518 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !137, line: 98, baseType: !1378)
!1519 = !DIDerivedType(tag: DW_TAG_member, scope: !1512, file: !1513, line: 192, baseType: !1520, size: 192, offset: 64)
!1520 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1512, file: !1513, line: 192, size: 192, elements: !1521)
!1521 = !{!1522, !1523}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1520, file: !1513, line: 193, baseType: !155, size: 128)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1520, file: !1513, line: 194, baseType: !696, size: 192, align: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1512, file: !1513, line: 199, baseType: !703, size: 256, offset: 256)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1512, file: !1513, line: 200, baseType: !1526, size: 64, offset: 512)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1513, line: 200, flags: DIFlagFwdDecl)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1512, file: !1513, line: 201, baseType: !138, size: 64, offset: 576)
!1529 = !DIDerivedType(tag: DW_TAG_member, scope: !1512, file: !1513, line: 202, baseType: !1530, size: 64, offset: 640)
!1530 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1512, file: !1513, line: 202, size: 64, elements: !1531)
!1531 = !{!1532, !1533}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1530, file: !1513, line: 203, baseType: !472, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1530, file: !1513, line: 204, baseType: !472, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1512, file: !1513, line: 206, baseType: !472, size: 64, offset: 704)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1512, file: !1513, line: 207, baseType: !368, size: 32, offset: 768)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1512, file: !1513, line: 208, baseType: !376, size: 32, offset: 800)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1512, file: !1513, line: 209, baseType: !1538, size: 32, offset: 832)
!1538 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1513, line: 31, baseType: !492)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1512, file: !1513, line: 210, baseType: !252, size: 16, offset: 864)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1512, file: !1513, line: 211, baseType: !252, size: 16, offset: 880)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1512, file: !1513, line: 215, baseType: !1141, size: 16, offset: 896)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1512, file: !1513, line: 222, baseType: !260, size: 64, offset: 960)
!1543 = !DIDerivedType(tag: DW_TAG_member, scope: !1512, file: !1513, line: 239, baseType: !1544, size: 320, offset: 1024)
!1544 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1512, file: !1513, line: 239, size: 320, elements: !1545)
!1545 = !{!1546, !1573}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1544, file: !1513, line: 240, baseType: !1547, size: 320)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1513, line: 108, size: 320, elements: !1548)
!1548 = !{!1549, !1550, !1562, !1565, !1572}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1547, file: !1513, line: 110, baseType: !260, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, scope: !1547, file: !1513, line: 111, baseType: !1551, size: 64, offset: 64)
!1551 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1547, file: !1513, line: 111, size: 64, elements: !1552)
!1552 = !{!1553, !1561}
!1553 = !DIDerivedType(tag: DW_TAG_member, scope: !1551, file: !1513, line: 112, baseType: !1554, size: 64)
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1551, file: !1513, line: 112, size: 64, elements: !1555)
!1555 = !{!1556, !1557}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1554, file: !1513, line: 114, baseType: !795, size: 16)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1554, file: !1513, line: 115, baseType: !1558, size: 48, offset: 16)
!1558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 48, elements: !1559)
!1559 = !{!1560}
!1560 = !DISubrange(count: 6)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1551, file: !1513, line: 121, baseType: !260, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1547, file: !1513, line: 123, baseType: !1563, size: 64, offset: 128)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1513, line: 96, flags: DIFlagFwdDecl)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1547, file: !1513, line: 124, baseType: !1566, size: 64, offset: 192)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1513, line: 102, size: 192, elements: !1568)
!1568 = !{!1569, !1570, !1571}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1567, file: !1513, line: 103, baseType: !301, size: 128, align: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1567, file: !1513, line: 104, baseType: !1166, size: 32, offset: 128)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1567, file: !1513, line: 105, baseType: !423, size: 8, offset: 160)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1547, file: !1513, line: 125, baseType: !151, size: 64, offset: 256)
!1573 = !DIDerivedType(tag: DW_TAG_member, scope: !1544, file: !1513, line: 241, baseType: !1574, size: 320)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1544, file: !1513, line: 241, size: 320, elements: !1575)
!1575 = !{!1576, !1577, !1578, !1579, !1580}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1574, file: !1513, line: 242, baseType: !260, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1574, file: !1513, line: 243, baseType: !260, size: 64, offset: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1574, file: !1513, line: 244, baseType: !1563, size: 64, offset: 128)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1574, file: !1513, line: 245, baseType: !1566, size: 64, offset: 192)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1574, file: !1513, line: 246, baseType: !210, size: 64, offset: 256)
!1581 = !DIDerivedType(tag: DW_TAG_member, scope: !1512, file: !1513, line: 254, baseType: !1582, size: 256, offset: 1344)
!1582 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1512, file: !1513, line: 254, size: 256, elements: !1583)
!1583 = !{!1584, !1590}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1582, file: !1513, line: 255, baseType: !1585, size: 256)
!1585 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1513, line: 128, size: 256, elements: !1586)
!1586 = !{!1587, !1588}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1585, file: !1513, line: 129, baseType: !138, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1585, file: !1513, line: 130, baseType: !1589, size: 256)
!1589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 256, elements: !1091)
!1590 = !DIDerivedType(tag: DW_TAG_member, scope: !1582, file: !1513, line: 256, baseType: !1591, size: 256)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1582, file: !1513, line: 256, size: 256, elements: !1592)
!1592 = !{!1593, !1594}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1591, file: !1513, line: 258, baseType: !155, size: 128)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1591, file: !1513, line: 259, baseType: !1595, size: 128, offset: 128)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1596, line: 22, size: 128, elements: !1597)
!1596 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1597 = !{!1598, !1601}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1595, file: !1596, line: 23, baseType: !1599, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1596, line: 23, flags: DIFlagFwdDecl)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1595, file: !1596, line: 24, baseType: !260, size: 64, offset: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1512, file: !1513, line: 274, baseType: !1603, size: 64, offset: 1600)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1513, line: 170, size: 192, elements: !1605)
!1605 = !{!1606, !1615, !1616}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1604, file: !1513, line: 171, baseType: !1607, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1513, line: 165, baseType: !1608)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!194, !1511, !1611, !1613, !1511}
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1564)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1585)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1604, file: !1513, line: 172, baseType: !1511, size: 64, offset: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1604, file: !1513, line: 173, baseType: !1563, size: 64, offset: 128)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1483, file: !1484, line: 138, baseType: !1511, size: 64, offset: 768)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1483, file: !1484, line: 139, baseType: !1511, size: 64, offset: 832)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1483, file: !1484, line: 140, baseType: !1511, size: 64, offset: 896)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1483, file: !1484, line: 145, baseType: !1621, size: 64, offset: 960)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1623, line: 13, size: 896, elements: !1624)
!1623 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1624 = !{!1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1622, file: !1623, line: 14, baseType: !1166, size: 32)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1622, file: !1623, line: 15, baseType: !683, size: 32, offset: 32)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1622, file: !1623, line: 16, baseType: !683, size: 32, offset: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1622, file: !1623, line: 21, baseType: !707, size: 64, offset: 128)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1622, file: !1623, line: 27, baseType: !260, size: 64, offset: 192)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1622, file: !1623, line: 28, baseType: !260, size: 64, offset: 256)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1622, file: !1623, line: 29, baseType: !707, size: 64, offset: 320)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1622, file: !1623, line: 32, baseType: !575, size: 128, offset: 384)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1622, file: !1623, line: 33, baseType: !368, size: 32, offset: 512)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1622, file: !1623, line: 37, baseType: !707, size: 64, offset: 576)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1622, file: !1623, line: 44, baseType: !1636, size: 256, offset: 640)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1637, line: 15, size: 256, elements: !1638)
!1637 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1638 = !{!1639, !1640, !1641, !1642, !1643, !1644, !1645}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1636, file: !1637, line: 16, baseType: !716)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1636, file: !1637, line: 18, baseType: !194, size: 32)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1636, file: !1637, line: 19, baseType: !194, size: 32, offset: 32)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1636, file: !1637, line: 20, baseType: !194, size: 32, offset: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1636, file: !1637, line: 21, baseType: !194, size: 32, offset: 96)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1636, file: !1637, line: 22, baseType: !260, size: 64, offset: 128)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1636, file: !1637, line: 23, baseType: !260, size: 64, offset: 192)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1483, file: !1484, line: 146, baseType: !1647, size: 64, offset: 1024)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !659, line: 516, flags: DIFlagFwdDecl)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1483, file: !1484, line: 147, baseType: !1650, size: 64, offset: 1088)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1484, line: 25, size: 64, elements: !1652)
!1652 = !{!1653, !1654, !1655}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1651, file: !1484, line: 26, baseType: !683, size: 32)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1651, file: !1484, line: 27, baseType: !194, size: 32, offset: 32)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1651, file: !1484, line: 28, baseType: !1656, offset: 64)
!1656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, elements: !1657)
!1657 = !{!1658}
!1658 = !DISubrange(count: 0)
!1659 = !DIDerivedType(tag: DW_TAG_member, scope: !1483, file: !1484, line: 149, baseType: !1660, size: 128, offset: 1152)
!1660 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1483, file: !1484, line: 149, size: 128, elements: !1661)
!1661 = !{!1662, !1663}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1660, file: !1484, line: 150, baseType: !194, size: 32)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1660, file: !1484, line: 151, baseType: !301, size: 128, align: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1153, file: !1154, line: 926, baseType: !1481, size: 64, offset: 8576)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1153, file: !1154, line: 929, baseType: !1481, size: 64, offset: 8640)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1153, file: !1154, line: 933, baseType: !1511, size: 64, offset: 8704)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1153, file: !1154, line: 943, baseType: !1668, size: 128, offset: 8768)
!1668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 128, elements: !1669)
!1669 = !{!1670}
!1670 = !DISubrange(count: 16)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1153, file: !1154, line: 945, baseType: !1672, size: 64, offset: 8896)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1154, line: 49, flags: DIFlagFwdDecl)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1153, file: !1154, line: 956, baseType: !1675, size: 64, offset: 8960)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1154, line: 45, flags: DIFlagFwdDecl)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1153, file: !1154, line: 959, baseType: !1678, size: 64, offset: 9024)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1154, line: 959, flags: DIFlagFwdDecl)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1153, file: !1154, line: 962, baseType: !1681, size: 64, offset: 9088)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1154, line: 66, flags: DIFlagFwdDecl)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1153, file: !1154, line: 966, baseType: !1684, size: 64, offset: 9152)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1154, line: 50, flags: DIFlagFwdDecl)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1153, file: !1154, line: 969, baseType: !1687, size: 64, offset: 9216)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1689, line: 82, size: 7296, elements: !1690)
!1689 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1690 = !{!1691, !1692, !1693, !1694, !1695, !1696, !1697, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1726, !1735, !1736, !1738, !1739, !1740, !1743, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1773, !1774, !1781, !1782, !1783, !1784, !1785, !1786}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1688, file: !1689, line: 83, baseType: !1166, size: 32)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1688, file: !1689, line: 84, baseType: !683, size: 32, offset: 32)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1688, file: !1689, line: 85, baseType: !194, size: 32, offset: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1688, file: !1689, line: 86, baseType: !155, size: 128, offset: 128)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1688, file: !1689, line: 88, baseType: !1415, size: 128, offset: 256)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1688, file: !1689, line: 91, baseType: !1152, size: 64, offset: 384)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1688, file: !1689, line: 94, baseType: !1698, size: 192, offset: 448)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1699, line: 30, size: 192, elements: !1700)
!1699 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1700 = !{!1701, !1702}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1698, file: !1699, line: 31, baseType: !155, size: 128)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1698, file: !1699, line: 32, baseType: !1703, size: 64, offset: 128)
!1703 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1704, line: 25, baseType: !1705)
!1704 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1704, line: 23, size: 64, elements: !1706)
!1706 = !{!1707}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1705, file: !1704, line: 24, baseType: !1304, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1688, file: !1689, line: 97, baseType: !571, size: 64, offset: 640)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1688, file: !1689, line: 100, baseType: !194, size: 32, offset: 704)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1688, file: !1689, line: 106, baseType: !194, size: 32, offset: 736)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1688, file: !1689, line: 107, baseType: !1152, size: 64, offset: 768)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1688, file: !1689, line: 110, baseType: !194, size: 32, offset: 832)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1688, file: !1689, line: 111, baseType: !7, size: 32, offset: 864)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1688, file: !1689, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1688, file: !1689, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1688, file: !1689, line: 128, baseType: !194, size: 32, offset: 928)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1688, file: !1689, line: 129, baseType: !155, size: 128, offset: 960)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1688, file: !1689, line: 132, baseType: !1228, size: 512, offset: 1088)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1688, file: !1689, line: 133, baseType: !1236, size: 64, offset: 1600)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1688, file: !1689, line: 140, baseType: !1721, size: 256, offset: 1664)
!1721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1722, size: 256, elements: !1503)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1689, line: 38, size: 128, elements: !1723)
!1723 = !{!1724, !1725}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1722, file: !1689, line: 39, baseType: !355, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1722, file: !1689, line: 40, baseType: !355, size: 64, offset: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1688, file: !1689, line: 146, baseType: !1727, size: 192, offset: 1920)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1689, line: 66, size: 192, elements: !1728)
!1728 = !{!1729}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1727, file: !1689, line: 67, baseType: !1730, size: 192)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1689, line: 47, size: 192, elements: !1731)
!1731 = !{!1732, !1733, !1734}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1730, file: !1689, line: 48, baseType: !709, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1730, file: !1689, line: 49, baseType: !709, size: 64, offset: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1730, file: !1689, line: 50, baseType: !709, size: 64, offset: 128)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1688, file: !1689, line: 150, baseType: !1464, size: 640, offset: 2112)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1688, file: !1689, line: 153, baseType: !1737, size: 256, offset: 2752)
!1737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1405, size: 256, elements: !1091)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1688, file: !1689, line: 159, baseType: !1405, size: 64, offset: 3008)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1688, file: !1689, line: 162, baseType: !194, size: 32, offset: 3072)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1688, file: !1689, line: 164, baseType: !1741, size: 64, offset: 3136)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1689, line: 164, flags: DIFlagFwdDecl)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1688, file: !1689, line: 175, baseType: !1744, size: 32, offset: 3200)
!1744 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !324, line: 805, baseType: !1745)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !324, line: 798, size: 32, elements: !1746)
!1746 = !{!1747, !1748}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1745, file: !324, line: 803, baseType: !323, size: 32)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1745, file: !324, line: 804, baseType: !168, offset: 32)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1688, file: !1689, line: 176, baseType: !355, size: 64, offset: 3264)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1688, file: !1689, line: 176, baseType: !355, size: 64, offset: 3328)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1688, file: !1689, line: 176, baseType: !355, size: 64, offset: 3392)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1688, file: !1689, line: 176, baseType: !355, size: 64, offset: 3456)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1688, file: !1689, line: 177, baseType: !355, size: 64, offset: 3520)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1688, file: !1689, line: 178, baseType: !355, size: 64, offset: 3584)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1688, file: !1689, line: 179, baseType: !1452, size: 128, offset: 3648)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1688, file: !1689, line: 180, baseType: !260, size: 64, offset: 3776)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1688, file: !1689, line: 180, baseType: !260, size: 64, offset: 3840)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1688, file: !1689, line: 180, baseType: !260, size: 64, offset: 3904)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1688, file: !1689, line: 180, baseType: !260, size: 64, offset: 3968)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1688, file: !1689, line: 181, baseType: !260, size: 64, offset: 4032)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1688, file: !1689, line: 181, baseType: !260, size: 64, offset: 4096)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1688, file: !1689, line: 181, baseType: !260, size: 64, offset: 4160)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1688, file: !1689, line: 181, baseType: !260, size: 64, offset: 4224)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1688, file: !1689, line: 182, baseType: !260, size: 64, offset: 4288)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1688, file: !1689, line: 182, baseType: !260, size: 64, offset: 4352)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1688, file: !1689, line: 182, baseType: !260, size: 64, offset: 4416)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1688, file: !1689, line: 182, baseType: !260, size: 64, offset: 4480)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1688, file: !1689, line: 183, baseType: !260, size: 64, offset: 4544)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1688, file: !1689, line: 183, baseType: !260, size: 64, offset: 4608)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1688, file: !1689, line: 184, baseType: !1771, offset: 4672)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1772, line: 12, elements: !182)
!1772 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1688, file: !1689, line: 192, baseType: !357, size: 64, offset: 4672)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1688, file: !1689, line: 203, baseType: !1775, size: 2048, offset: 4736)
!1775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1776, size: 2048, elements: !1669)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1777, line: 43, size: 128, elements: !1778)
!1777 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1778 = !{!1779, !1780}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1776, file: !1777, line: 44, baseType: !259, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1776, file: !1777, line: 45, baseType: !259, size: 64, offset: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1688, file: !1689, line: 220, baseType: !423, size: 8, offset: 6784)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1688, file: !1689, line: 221, baseType: !1141, size: 16, offset: 6800)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1688, file: !1689, line: 222, baseType: !1141, size: 16, offset: 6816)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1688, file: !1689, line: 224, baseType: !910, size: 64, offset: 6848)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1688, file: !1689, line: 227, baseType: !1109, size: 192, offset: 6912)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1688, file: !1689, line: 233, baseType: !1109, size: 192, offset: 7104)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1153, file: !1154, line: 970, baseType: !1788, size: 64, offset: 9280)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1689, line: 20, size: 16576, elements: !1790)
!1790 = !{!1791, !1792, !1793, !1794}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1789, file: !1689, line: 21, baseType: !168)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1789, file: !1689, line: 22, baseType: !1166, size: 32)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1789, file: !1689, line: 23, baseType: !1415, size: 128, offset: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1789, file: !1689, line: 24, baseType: !1795, size: 16384, offset: 192)
!1795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1796, size: 16384, elements: !215)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1699, line: 49, size: 256, elements: !1797)
!1797 = !{!1798}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1796, file: !1699, line: 50, baseType: !1799, size: 256)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1699, line: 35, size: 256, elements: !1800)
!1800 = !{!1801, !1808, !1809, !1815}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1799, file: !1699, line: 37, baseType: !1802, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1803, line: 19, baseType: !1804)
!1803 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1803, line: 18, baseType: !1806)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{null, !194}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1799, file: !1699, line: 38, baseType: !260, size: 64, offset: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1799, file: !1699, line: 44, baseType: !1810, size: 64, offset: 128)
!1810 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1803, line: 22, baseType: !1811)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1803, line: 21, baseType: !1813)
!1813 = !DISubroutineType(types: !1814)
!1814 = !{null}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1799, file: !1699, line: 46, baseType: !1703, size: 64, offset: 192)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1153, file: !1154, line: 971, baseType: !1703, size: 64, offset: 9344)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1153, file: !1154, line: 972, baseType: !1703, size: 64, offset: 9408)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1153, file: !1154, line: 974, baseType: !1703, size: 64, offset: 9472)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1153, file: !1154, line: 975, baseType: !1698, size: 192, offset: 9536)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1153, file: !1154, line: 976, baseType: !260, size: 64, offset: 9728)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1153, file: !1154, line: 977, baseType: !257, size: 64, offset: 9792)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1153, file: !1154, line: 978, baseType: !7, size: 32, offset: 9856)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1153, file: !1154, line: 980, baseType: !304, size: 64, offset: 9920)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1153, file: !1154, line: 989, baseType: !1825, size: 128, offset: 9984)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1826, line: 35, size: 128, elements: !1827)
!1826 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1827 = !{!1828, !1829, !1830}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1825, file: !1826, line: 36, baseType: !194, size: 32)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1825, file: !1826, line: 37, baseType: !683, size: 32, offset: 32)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1825, file: !1826, line: 38, baseType: !1831, size: 64, offset: 64)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1826, line: 23, flags: DIFlagFwdDecl)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1153, file: !1154, line: 992, baseType: !355, size: 64, offset: 10112)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1153, file: !1154, line: 993, baseType: !355, size: 64, offset: 10176)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1153, file: !1154, line: 996, baseType: !168, offset: 10240)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1153, file: !1154, line: 999, baseType: !716, offset: 10240)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1153, file: !1154, line: 1001, baseType: !1838, size: 64, offset: 10240)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1154, line: 636, size: 64, elements: !1839)
!1839 = !{!1840}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1838, file: !1154, line: 637, baseType: !1841, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1153, file: !1154, line: 1005, baseType: !688, size: 128, offset: 10304)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1153, file: !1154, line: 1007, baseType: !1152, size: 64, offset: 10432)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1153, file: !1154, line: 1009, baseType: !1845, size: 64, offset: 10496)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1154, line: 1009, flags: DIFlagFwdDecl)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1153, file: !1154, line: 1043, baseType: !138, size: 64, offset: 10560)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1153, file: !1154, line: 1046, baseType: !1849, size: 64, offset: 10624)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1154, line: 41, flags: DIFlagFwdDecl)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1153, file: !1154, line: 1050, baseType: !1852, size: 64, offset: 10688)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1154, line: 42, flags: DIFlagFwdDecl)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1153, file: !1154, line: 1054, baseType: !1855, size: 64, offset: 10752)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1154, line: 55, flags: DIFlagFwdDecl)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1153, file: !1154, line: 1056, baseType: !1858, size: 64, offset: 10816)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1154, line: 40, flags: DIFlagFwdDecl)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1153, file: !1154, line: 1058, baseType: !1861, size: 64, offset: 10880)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1863, line: 99, size: 704, elements: !1864)
!1863 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1864 = !{!1865, !1866, !1867, !1868, !1869, !1870, !1871, !1890, !1891}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1862, file: !1863, line: 100, baseType: !707, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1862, file: !1863, line: 101, baseType: !683, size: 32, offset: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1862, file: !1863, line: 102, baseType: !683, size: 32, offset: 96)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1862, file: !1863, line: 105, baseType: !168, offset: 128)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1862, file: !1863, line: 107, baseType: !252, size: 16, offset: 128)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1862, file: !1863, line: 109, baseType: !675, size: 128, offset: 192)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1862, file: !1863, line: 110, baseType: !1872, size: 64, offset: 320)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1863, line: 73, size: 448, elements: !1874)
!1874 = !{!1875, !1878, !1879, !1884, !1889}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1873, file: !1863, line: 74, baseType: !1876, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1863, line: 74, flags: DIFlagFwdDecl)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1873, file: !1863, line: 75, baseType: !1861, size: 64, offset: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, scope: !1873, file: !1863, line: 83, baseType: !1880, size: 128, offset: 128)
!1880 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1873, file: !1863, line: 83, size: 128, elements: !1881)
!1881 = !{!1882, !1883}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1880, file: !1863, line: 84, baseType: !155, size: 128)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1880, file: !1863, line: 85, baseType: !871, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, scope: !1873, file: !1863, line: 87, baseType: !1885, size: 128, offset: 256)
!1885 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1873, file: !1863, line: 87, size: 128, elements: !1886)
!1886 = !{!1887, !1888}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1885, file: !1863, line: 88, baseType: !575, size: 128)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1885, file: !1863, line: 89, baseType: !301, size: 128, align: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1873, file: !1863, line: 92, baseType: !7, size: 32, offset: 384)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1862, file: !1863, line: 111, baseType: !571, size: 64, offset: 384)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1862, file: !1863, line: 113, baseType: !1892, size: 256, offset: 448)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1893, line: 102, size: 256, elements: !1894)
!1893 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1894 = !{!1895, !1896, !1897}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1892, file: !1893, line: 103, baseType: !707, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1892, file: !1893, line: 104, baseType: !155, size: 128, offset: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1892, file: !1893, line: 105, baseType: !1898, size: 64, offset: 192)
!1898 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1893, line: 21, baseType: !1899)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{null, !1902}
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1153, file: !1154, line: 1061, baseType: !1904, size: 64, offset: 10944)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1154, line: 43, flags: DIFlagFwdDecl)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1153, file: !1154, line: 1064, baseType: !260, size: 64, offset: 11008)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1153, file: !1154, line: 1065, baseType: !1908, size: 64, offset: 11072)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1699, line: 14, baseType: !1910)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1699, line: 12, size: 384, elements: !1911)
!1911 = !{!1912}
!1912 = !DIDerivedType(tag: DW_TAG_member, scope: !1910, file: !1699, line: 13, baseType: !1913, size: 384)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1910, file: !1699, line: 13, size: 384, elements: !1914)
!1914 = !{!1915, !1916, !1917, !1918}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1913, file: !1699, line: 13, baseType: !194, size: 32)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1913, file: !1699, line: 13, baseType: !194, size: 32, offset: 32)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1913, file: !1699, line: 13, baseType: !194, size: 32, offset: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1913, file: !1699, line: 13, baseType: !1919, size: 256, offset: 128)
!1919 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1920, line: 32, size: 256, elements: !1921)
!1920 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1921 = !{!1922, !1927, !1940, !1946, !1955, !1975, !1980}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1919, file: !1920, line: 37, baseType: !1923, size: 64)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1919, file: !1920, line: 34, size: 64, elements: !1924)
!1924 = !{!1925, !1926}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1923, file: !1920, line: 35, baseType: !1394, size: 32)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1923, file: !1920, line: 36, baseType: !374, size: 32, offset: 32)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1919, file: !1920, line: 45, baseType: !1928, size: 192)
!1928 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1919, file: !1920, line: 40, size: 192, elements: !1929)
!1929 = !{!1930, !1932, !1933, !1939}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1928, file: !1920, line: 41, baseType: !1931, size: 32)
!1931 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !243, line: 95, baseType: !194)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1928, file: !1920, line: 42, baseType: !194, size: 32, offset: 32)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1928, file: !1920, line: 43, baseType: !1934, size: 64, offset: 64)
!1934 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1920, line: 11, baseType: !1935)
!1935 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1920, line: 8, size: 64, elements: !1936)
!1936 = !{!1937, !1938}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1935, file: !1920, line: 9, baseType: !194, size: 32)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1935, file: !1920, line: 10, baseType: !138, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1928, file: !1920, line: 44, baseType: !194, size: 32, offset: 128)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1919, file: !1920, line: 52, baseType: !1941, size: 128)
!1941 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1919, file: !1920, line: 48, size: 128, elements: !1942)
!1942 = !{!1943, !1944, !1945}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1941, file: !1920, line: 49, baseType: !1394, size: 32)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1941, file: !1920, line: 50, baseType: !374, size: 32, offset: 32)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1941, file: !1920, line: 51, baseType: !1934, size: 64, offset: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1919, file: !1920, line: 61, baseType: !1947, size: 256)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1919, file: !1920, line: 55, size: 256, elements: !1948)
!1948 = !{!1949, !1950, !1951, !1952, !1954}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1947, file: !1920, line: 56, baseType: !1394, size: 32)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1947, file: !1920, line: 57, baseType: !374, size: 32, offset: 32)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1947, file: !1920, line: 58, baseType: !194, size: 32, offset: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1947, file: !1920, line: 59, baseType: !1953, size: 64, offset: 128)
!1953 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !243, line: 94, baseType: !244)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1947, file: !1920, line: 60, baseType: !1953, size: 64, offset: 192)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1919, file: !1920, line: 95, baseType: !1956, size: 256)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1919, file: !1920, line: 64, size: 256, elements: !1957)
!1957 = !{!1958, !1959}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1956, file: !1920, line: 65, baseType: !138, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, scope: !1956, file: !1920, line: 77, baseType: !1960, size: 192, offset: 64)
!1960 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1956, file: !1920, line: 77, size: 192, elements: !1961)
!1961 = !{!1962, !1963, !1970}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1960, file: !1920, line: 82, baseType: !1141, size: 16)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1960, file: !1920, line: 88, baseType: !1964, size: 192)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1960, file: !1920, line: 84, size: 192, elements: !1965)
!1965 = !{!1966, !1968, !1969}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1964, file: !1920, line: 85, baseType: !1967, size: 64)
!1967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 64, elements: !1266)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1964, file: !1920, line: 86, baseType: !138, size: 64, offset: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1964, file: !1920, line: 87, baseType: !138, size: 64, offset: 128)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1960, file: !1920, line: 93, baseType: !1971, size: 96)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1960, file: !1920, line: 90, size: 96, elements: !1972)
!1972 = !{!1973, !1974}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1971, file: !1920, line: 91, baseType: !1967, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1971, file: !1920, line: 92, baseType: !352, size: 32, offset: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1919, file: !1920, line: 101, baseType: !1976, size: 128)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1919, file: !1920, line: 98, size: 128, elements: !1977)
!1977 = !{!1978, !1979}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1976, file: !1920, line: 99, baseType: !245, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1976, file: !1920, line: 100, baseType: !194, size: 32, offset: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1919, file: !1920, line: 108, baseType: !1981, size: 128)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1919, file: !1920, line: 104, size: 128, elements: !1982)
!1982 = !{!1983, !1984, !1985}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1981, file: !1920, line: 105, baseType: !138, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1981, file: !1920, line: 106, baseType: !194, size: 32, offset: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1981, file: !1920, line: 107, baseType: !7, size: 32, offset: 96)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1153, file: !1154, line: 1067, baseType: !1771, offset: 11136)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1153, file: !1154, line: 1099, baseType: !1988, size: 64, offset: 11136)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1154, line: 56, flags: DIFlagFwdDecl)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1153, file: !1154, line: 1103, baseType: !155, size: 128, offset: 11200)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1153, file: !1154, line: 1104, baseType: !1992, size: 64, offset: 11328)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1154, line: 46, flags: DIFlagFwdDecl)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1153, file: !1154, line: 1105, baseType: !1109, size: 192, offset: 11392)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1153, file: !1154, line: 1106, baseType: !7, size: 32, offset: 11584)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1153, file: !1154, line: 1109, baseType: !1997, size: 128, offset: 11648)
!1997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1998, size: 128, elements: !1503)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1154, line: 51, flags: DIFlagFwdDecl)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1153, file: !1154, line: 1110, baseType: !1109, size: 192, offset: 11776)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1153, file: !1154, line: 1111, baseType: !155, size: 128, offset: 11968)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1153, file: !1154, line: 1173, baseType: !2003, size: 64, offset: 12096)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2005, line: 62, size: 256, align: 256, elements: !2006)
!2005 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2006 = !{!2007, !2008, !2009, !2014}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2004, file: !2005, line: 75, baseType: !352, size: 32)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2004, file: !2005, line: 90, baseType: !352, size: 32, offset: 32)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2004, file: !2005, line: 124, baseType: !2010, size: 64, offset: 64)
!2010 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2004, file: !2005, line: 109, size: 64, elements: !2011)
!2011 = !{!2012, !2013}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2010, file: !2005, line: 110, baseType: !356, size: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2010, file: !2005, line: 112, baseType: !356, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2004, file: !2005, line: 144, baseType: !352, size: 32, offset: 128)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1153, file: !1154, line: 1174, baseType: !351, size: 32, offset: 12160)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1153, file: !1154, line: 1179, baseType: !260, size: 64, offset: 12224)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1153, file: !1154, line: 1182, baseType: !2018, size: 128, offset: 12288)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1087, line: 76, size: 128, elements: !2019)
!2019 = !{!2020, !2025, !2026}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2018, file: !1087, line: 85, baseType: !2021, size: 64)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2022, line: 7, size: 64, elements: !2023)
!2022 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2023 = !{!2024}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2021, file: !2022, line: 12, baseType: !1301, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2018, file: !1087, line: 88, baseType: !423, size: 8, offset: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2018, file: !1087, line: 95, baseType: !423, size: 8, offset: 72)
!2027 = !DIDerivedType(tag: DW_TAG_member, scope: !1153, file: !1154, line: 1184, baseType: !2028, size: 128, offset: 12416)
!2028 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1153, file: !1154, line: 1184, size: 128, elements: !2029)
!2029 = !{!2030, !2031}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2028, file: !1154, line: 1185, baseType: !1166, size: 32)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2028, file: !1154, line: 1186, baseType: !301, size: 128, align: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1153, file: !1154, line: 1190, baseType: !2033, size: 64, offset: 12544)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1154, line: 53, flags: DIFlagFwdDecl)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1153, file: !1154, line: 1192, baseType: !2036, size: 128, offset: 12608)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1087, line: 64, size: 128, elements: !2037)
!2037 = !{!2038, !2039, !2040}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2036, file: !1087, line: 65, baseType: !657, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2036, file: !1087, line: 67, baseType: !352, size: 32, offset: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2036, file: !1087, line: 68, baseType: !352, size: 32, offset: 96)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1153, file: !1154, line: 1206, baseType: !194, size: 32, offset: 12736)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1153, file: !1154, line: 1207, baseType: !194, size: 32, offset: 12768)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1153, file: !1154, line: 1209, baseType: !260, size: 64, offset: 12800)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1153, file: !1154, line: 1219, baseType: !355, size: 64, offset: 12864)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1153, file: !1154, line: 1220, baseType: !355, size: 64, offset: 12928)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1153, file: !1154, line: 1317, baseType: !194, size: 32, offset: 12992)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1153, file: !1154, line: 1319, baseType: !1152, size: 64, offset: 13056)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1153, file: !1154, line: 1322, baseType: !2049, size: 64, offset: 13120)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2051, line: 56, size: 512, elements: !2052)
!2051 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2052 = !{!2053, !2054, !2055, !2056, !2057, !2058, !2059, !2061}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2050, file: !2051, line: 57, baseType: !2049, size: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2050, file: !2051, line: 58, baseType: !138, size: 64, offset: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2050, file: !2051, line: 59, baseType: !260, size: 64, offset: 128)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2050, file: !2051, line: 60, baseType: !260, size: 64, offset: 192)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2050, file: !2051, line: 61, baseType: !756, size: 64, offset: 256)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2050, file: !2051, line: 62, baseType: !7, size: 32, offset: 320)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2050, file: !2051, line: 63, baseType: !2060, size: 64, offset: 384)
!2060 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !137, line: 153, baseType: !355)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2050, file: !2051, line: 64, baseType: !2062, size: 64, offset: 448)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1153, file: !1154, line: 1326, baseType: !1166, size: 32, offset: 13184)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1153, file: !1154, line: 1342, baseType: !138, size: 64, offset: 13248)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1153, file: !1154, line: 1343, baseType: !356, size: 64, offset: 13312)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1153, file: !1154, line: 1344, baseType: !355, size: 64, offset: 13376)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1153, file: !1154, line: 1345, baseType: !356, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1153, file: !1154, line: 1346, baseType: !356, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1153, file: !1154, line: 1347, baseType: !356, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1153, file: !1154, line: 1348, baseType: !301, size: 128, align: 64, offset: 13504)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1153, file: !1154, line: 1358, baseType: !2073, size: 34816, offset: 13824)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2074, line: 485, size: 34816, elements: !2075)
!2074 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2075 = !{!2076, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2105, !2106, !2107, !2108, !2109, !2110, !2113, !2114, !2115}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2073, file: !2074, line: 487, baseType: !2077, size: 192)
!2077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2078, size: 192, elements: !211)
!2078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2079, line: 16, size: 64, elements: !2080)
!2079 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2080 = !{!2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2078, file: !2079, line: 17, baseType: !795, size: 16)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2078, file: !2079, line: 18, baseType: !795, size: 16, offset: 16)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2078, file: !2079, line: 19, baseType: !795, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2078, file: !2079, line: 19, baseType: !795, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2078, file: !2079, line: 19, baseType: !795, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2078, file: !2079, line: 19, baseType: !795, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2078, file: !2079, line: 19, baseType: !795, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2078, file: !2079, line: 20, baseType: !795, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2078, file: !2079, line: 20, baseType: !795, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2078, file: !2079, line: 20, baseType: !795, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2078, file: !2079, line: 20, baseType: !795, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2078, file: !2079, line: 20, baseType: !795, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2078, file: !2079, line: 20, baseType: !795, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2073, file: !2074, line: 491, baseType: !260, size: 64, offset: 192)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2073, file: !2074, line: 495, baseType: !252, size: 16, offset: 256)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2073, file: !2074, line: 496, baseType: !252, size: 16, offset: 272)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2073, file: !2074, line: 497, baseType: !252, size: 16, offset: 288)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2073, file: !2074, line: 498, baseType: !252, size: 16, offset: 304)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2073, file: !2074, line: 502, baseType: !260, size: 64, offset: 320)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2073, file: !2074, line: 503, baseType: !260, size: 64, offset: 384)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2073, file: !2074, line: 514, baseType: !2102, size: 256, offset: 448)
!2102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2103, size: 256, elements: !1091)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2074, line: 483, flags: DIFlagFwdDecl)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2073, file: !2074, line: 516, baseType: !260, size: 64, offset: 704)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2073, file: !2074, line: 518, baseType: !260, size: 64, offset: 768)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2073, file: !2074, line: 520, baseType: !260, size: 64, offset: 832)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2073, file: !2074, line: 521, baseType: !260, size: 64, offset: 896)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2073, file: !2074, line: 522, baseType: !260, size: 64, offset: 960)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2073, file: !2074, line: 528, baseType: !2111, size: 64, offset: 1024)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2074, line: 10, flags: DIFlagFwdDecl)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2073, file: !2074, line: 535, baseType: !260, size: 64, offset: 1088)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2073, file: !2074, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2073, file: !2074, line: 540, baseType: !2116, size: 33280, offset: 1536)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2117, line: 317, size: 33280, elements: !2118)
!2117 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2118 = !{!2119, !2120, !2121}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2116, file: !2117, line: 330, baseType: !7, size: 32)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2116, file: !2117, line: 337, baseType: !260, size: 64, offset: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2116, file: !2117, line: 348, baseType: !2122, size: 32768, offset: 512)
!2122 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2117, line: 304, size: 32768, elements: !2123)
!2123 = !{!2124, !2139, !2178, !2228, !2241}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2122, file: !2117, line: 305, baseType: !2125, size: 896)
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2117, line: 12, size: 896, elements: !2126)
!2126 = !{!2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2138}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2125, file: !2117, line: 13, baseType: !351, size: 32)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2125, file: !2117, line: 14, baseType: !351, size: 32, offset: 32)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2125, file: !2117, line: 15, baseType: !351, size: 32, offset: 64)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2125, file: !2117, line: 16, baseType: !351, size: 32, offset: 96)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2125, file: !2117, line: 17, baseType: !351, size: 32, offset: 128)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2125, file: !2117, line: 18, baseType: !351, size: 32, offset: 160)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2125, file: !2117, line: 19, baseType: !351, size: 32, offset: 192)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2125, file: !2117, line: 22, baseType: !2135, size: 640, offset: 224)
!2135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 640, elements: !2136)
!2136 = !{!2137}
!2137 = !DISubrange(count: 20)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2125, file: !2117, line: 25, baseType: !351, size: 32, offset: 864)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2122, file: !2117, line: 306, baseType: !2140, size: 4096, align: 128)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2117, line: 34, size: 4096, align: 128, elements: !2141)
!2141 = !{!2142, !2143, !2144, !2145, !2146, !2161, !2162, !2163, !2167, !2169, !2173}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2140, file: !2117, line: 35, baseType: !795, size: 16)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2140, file: !2117, line: 36, baseType: !795, size: 16, offset: 16)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2140, file: !2117, line: 37, baseType: !795, size: 16, offset: 32)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2140, file: !2117, line: 38, baseType: !795, size: 16, offset: 48)
!2146 = !DIDerivedType(tag: DW_TAG_member, scope: !2140, file: !2117, line: 39, baseType: !2147, size: 128, offset: 64)
!2147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2140, file: !2117, line: 39, size: 128, elements: !2148)
!2148 = !{!2149, !2154}
!2149 = !DIDerivedType(tag: DW_TAG_member, scope: !2147, file: !2117, line: 40, baseType: !2150, size: 128)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2147, file: !2117, line: 40, size: 128, elements: !2151)
!2151 = !{!2152, !2153}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2150, file: !2117, line: 41, baseType: !355, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2150, file: !2117, line: 42, baseType: !355, size: 64, offset: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, scope: !2147, file: !2117, line: 44, baseType: !2155, size: 128)
!2155 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2147, file: !2117, line: 44, size: 128, elements: !2156)
!2156 = !{!2157, !2158, !2159, !2160}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2155, file: !2117, line: 45, baseType: !351, size: 32)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2155, file: !2117, line: 46, baseType: !351, size: 32, offset: 32)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2155, file: !2117, line: 47, baseType: !351, size: 32, offset: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2155, file: !2117, line: 48, baseType: !351, size: 32, offset: 96)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2140, file: !2117, line: 51, baseType: !351, size: 32, offset: 192)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2140, file: !2117, line: 52, baseType: !351, size: 32, offset: 224)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2140, file: !2117, line: 55, baseType: !2164, size: 1024, offset: 256)
!2164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 1024, elements: !2165)
!2165 = !{!2166}
!2166 = !DISubrange(count: 32)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2140, file: !2117, line: 58, baseType: !2168, size: 2048, offset: 1280)
!2168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 2048, elements: !215)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2140, file: !2117, line: 60, baseType: !2170, size: 384, offset: 3328)
!2170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 384, elements: !2171)
!2171 = !{!2172}
!2172 = !DISubrange(count: 12)
!2173 = !DIDerivedType(tag: DW_TAG_member, scope: !2140, file: !2117, line: 62, baseType: !2174, size: 384, offset: 3712)
!2174 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2140, file: !2117, line: 62, size: 384, elements: !2175)
!2175 = !{!2176, !2177}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2174, file: !2117, line: 63, baseType: !2170, size: 384)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2174, file: !2117, line: 64, baseType: !2170, size: 384)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2122, file: !2117, line: 307, baseType: !2179, size: 1088)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2117, line: 79, size: 1088, elements: !2180)
!2180 = !{!2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2227}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2179, file: !2117, line: 80, baseType: !351, size: 32)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2179, file: !2117, line: 81, baseType: !351, size: 32, offset: 32)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2179, file: !2117, line: 82, baseType: !351, size: 32, offset: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2179, file: !2117, line: 83, baseType: !351, size: 32, offset: 96)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2179, file: !2117, line: 84, baseType: !351, size: 32, offset: 128)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2179, file: !2117, line: 85, baseType: !351, size: 32, offset: 160)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2179, file: !2117, line: 86, baseType: !351, size: 32, offset: 192)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2179, file: !2117, line: 88, baseType: !2135, size: 640, offset: 224)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2179, file: !2117, line: 89, baseType: !131, size: 8, offset: 864)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2179, file: !2117, line: 90, baseType: !131, size: 8, offset: 872)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2179, file: !2117, line: 91, baseType: !131, size: 8, offset: 880)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2179, file: !2117, line: 92, baseType: !131, size: 8, offset: 888)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2179, file: !2117, line: 93, baseType: !131, size: 8, offset: 896)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2179, file: !2117, line: 94, baseType: !131, size: 8, offset: 904)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2179, file: !2117, line: 95, baseType: !2196, size: 64, offset: 960)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2198, line: 11, size: 128, elements: !2199)
!2198 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2199 = !{!2200, !2201}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2197, file: !2198, line: 12, baseType: !245, size: 64)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2197, file: !2198, line: 13, baseType: !2202, size: 64, offset: 64)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2204, line: 56, size: 1344, elements: !2205)
!2204 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2205 = !{!2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2203, file: !2204, line: 61, baseType: !260, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2203, file: !2204, line: 62, baseType: !260, size: 64, offset: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2203, file: !2204, line: 63, baseType: !260, size: 64, offset: 128)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2203, file: !2204, line: 64, baseType: !260, size: 64, offset: 192)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2203, file: !2204, line: 65, baseType: !260, size: 64, offset: 256)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2203, file: !2204, line: 66, baseType: !260, size: 64, offset: 320)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2203, file: !2204, line: 68, baseType: !260, size: 64, offset: 384)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2203, file: !2204, line: 69, baseType: !260, size: 64, offset: 448)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2203, file: !2204, line: 70, baseType: !260, size: 64, offset: 512)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2203, file: !2204, line: 71, baseType: !260, size: 64, offset: 576)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2203, file: !2204, line: 72, baseType: !260, size: 64, offset: 640)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2203, file: !2204, line: 73, baseType: !260, size: 64, offset: 704)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2203, file: !2204, line: 74, baseType: !260, size: 64, offset: 768)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2203, file: !2204, line: 75, baseType: !260, size: 64, offset: 832)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2203, file: !2204, line: 76, baseType: !260, size: 64, offset: 896)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2203, file: !2204, line: 81, baseType: !260, size: 64, offset: 960)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2203, file: !2204, line: 83, baseType: !260, size: 64, offset: 1024)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2203, file: !2204, line: 84, baseType: !260, size: 64, offset: 1088)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2203, file: !2204, line: 85, baseType: !260, size: 64, offset: 1152)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2203, file: !2204, line: 86, baseType: !260, size: 64, offset: 1216)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2203, file: !2204, line: 87, baseType: !260, size: 64, offset: 1280)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2179, file: !2117, line: 96, baseType: !351, size: 32, offset: 1024)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2122, file: !2117, line: 308, baseType: !2229, size: 4608, align: 512)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2117, line: 289, size: 4608, align: 512, elements: !2230)
!2230 = !{!2231, !2232, !2239}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2229, file: !2117, line: 290, baseType: !2140, size: 4096, align: 128)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2229, file: !2117, line: 291, baseType: !2233, size: 512, offset: 4096)
!2233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2117, line: 268, size: 512, elements: !2234)
!2234 = !{!2235, !2236, !2237}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2233, file: !2117, line: 269, baseType: !355, size: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2233, file: !2117, line: 270, baseType: !355, size: 64, offset: 64)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2233, file: !2117, line: 271, baseType: !2238, size: 384, offset: 128)
!2238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 384, elements: !1559)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2229, file: !2117, line: 292, baseType: !2240, offset: 4608)
!2240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, elements: !1657)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2122, file: !2117, line: 309, baseType: !2242, size: 32768)
!2242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 32768, elements: !2243)
!2243 = !{!2244}
!2244 = !DISubrange(count: 4096)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1149, file: !659, line: 378, baseType: !2246, size: 64, offset: 64)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1145, file: !659, line: 384, baseType: !1436, size: 192, offset: 192)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !914, file: !659, line: 500, baseType: !168, offset: 6656)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !914, file: !659, line: 501, baseType: !2250, size: 64, offset: 6656)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !659, line: 387, flags: DIFlagFwdDecl)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !914, file: !659, line: 516, baseType: !1647, size: 64, offset: 6720)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !914, file: !659, line: 519, baseType: !288, size: 64, offset: 6784)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !914, file: !659, line: 521, baseType: !2255, size: 64, offset: 6848)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !659, line: 521, flags: DIFlagFwdDecl)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !914, file: !659, line: 545, baseType: !683, size: 32, offset: 6912)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !914, file: !659, line: 548, baseType: !423, size: 8, offset: 6944)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !914, file: !659, line: 550, baseType: !2260, offset: 6952)
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2261, line: 142, elements: !182)
!2261 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !914, file: !659, line: 554, baseType: !1892, size: 256, offset: 6976)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !914, file: !659, line: 557, baseType: !351, size: 32, offset: 7232)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !911, file: !659, line: 565, baseType: !2265, offset: 7296)
!2265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, elements: !2266)
!2266 = !{!2267}
!2267 = !DISubrange(count: -1)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !907, file: !659, line: 151, baseType: !683, size: 32)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !900, file: !659, line: 156, baseType: !168, offset: 256)
!2270 = !DIDerivedType(tag: DW_TAG_member, scope: !663, file: !659, line: 159, baseType: !2271, size: 128)
!2271 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !663, file: !659, line: 159, size: 128, elements: !2272)
!2272 = !{!2273, !2337}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2271, file: !659, line: 161, baseType: !2274, size: 64)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !37, line: 110, size: 1152, elements: !2276)
!2276 = !{!2277, !2287, !2308, !2309, !2310, !2311, !2312, !2324, !2325, !2326}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2275, file: !37, line: 111, baseType: !2278, size: 384)
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !37, line: 19, size: 384, elements: !2279)
!2279 = !{!2280, !2282, !2283, !2284, !2285, !2286}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2278, file: !37, line: 20, baseType: !2281, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2278, file: !37, line: 21, baseType: !2281, size: 64, offset: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2278, file: !37, line: 22, baseType: !2281, size: 64, offset: 128)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2278, file: !37, line: 23, baseType: !260, size: 64, offset: 192)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2278, file: !37, line: 24, baseType: !260, size: 64, offset: 256)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2278, file: !37, line: 25, baseType: !260, size: 64, offset: 320)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2275, file: !37, line: 112, baseType: !2288, size: 64, offset: 384)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2290, line: 105, size: 128, elements: !2291)
!2290 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2291 = !{!2292, !2293}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2289, file: !2290, line: 110, baseType: !260, size: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2289, file: !2290, line: 118, baseType: !2294, size: 64, offset: 64)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2290, line: 95, size: 448, elements: !2296)
!2296 = !{!2297, !2298, !2303, !2304, !2305, !2306, !2307}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2295, file: !2290, line: 96, baseType: !707, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2295, file: !2290, line: 97, baseType: !2299, size: 64, offset: 64)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2290, line: 60, baseType: !2301)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{null, !2288}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2295, file: !2290, line: 98, baseType: !2299, size: 64, offset: 128)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2295, file: !2290, line: 99, baseType: !423, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2295, file: !2290, line: 100, baseType: !423, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2295, file: !2290, line: 101, baseType: !301, size: 128, align: 64, offset: 256)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2295, file: !2290, line: 102, baseType: !2288, size: 64, offset: 384)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2275, file: !37, line: 113, baseType: !2289, size: 128, offset: 448)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2275, file: !37, line: 114, baseType: !1436, size: 192, offset: 576)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2275, file: !37, line: 115, baseType: !36, size: 32, offset: 768)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2275, file: !37, line: 116, baseType: !7, size: 32, offset: 800)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2275, file: !37, line: 117, baseType: !2313, size: 64, offset: 832)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2315)
!2315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !37, line: 67, size: 256, elements: !2316)
!2316 = !{!2317, !2318, !2322, !2323}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2315, file: !37, line: 73, baseType: !776, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2315, file: !37, line: 78, baseType: !2319, size: 64, offset: 64)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{null, !2274}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2315, file: !37, line: 83, baseType: !2319, size: 64, offset: 128)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2315, file: !37, line: 89, baseType: !963, size: 64, offset: 192)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2275, file: !37, line: 118, baseType: !138, size: 64, offset: 896)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2275, file: !37, line: 119, baseType: !194, size: 32, offset: 960)
!2326 = !DIDerivedType(tag: DW_TAG_member, scope: !2275, file: !37, line: 120, baseType: !2327, size: 128, offset: 1024)
!2327 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2275, file: !37, line: 120, size: 128, elements: !2328)
!2328 = !{!2329, !2335}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2327, file: !37, line: 121, baseType: !2330, size: 128)
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2331, line: 6, size: 128, elements: !2332)
!2331 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2332 = !{!2333, !2334}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2330, file: !2331, line: 7, baseType: !355, size: 64)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2330, file: !2331, line: 8, baseType: !355, size: 64, offset: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2327, file: !37, line: 122, baseType: !2336)
!2336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2330, elements: !1657)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2271, file: !659, line: 162, baseType: !138, size: 64, offset: 64)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !663, file: !659, line: 176, baseType: !301, size: 128, align: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, scope: !658, file: !659, line: 179, baseType: !2340, size: 32, offset: 384)
!2340 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !658, file: !659, line: 179, size: 32, elements: !2341)
!2341 = !{!2342, !2343, !2344, !2345}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2340, file: !659, line: 184, baseType: !683, size: 32)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2340, file: !659, line: 192, baseType: !7, size: 32)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2340, file: !659, line: 194, baseType: !7, size: 32)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2340, file: !659, line: 195, baseType: !194, size: 32)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !658, file: !659, line: 199, baseType: !683, size: 32, offset: 416)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !593, file: !50, line: 1964, baseType: !2348, size: 64, offset: 1344)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!245, !532, !2351}
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2353, line: 12, size: 256, elements: !2354)
!2353 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2354 = !{!2355, !2356, !2357, !2358, !2359}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2352, file: !2353, line: 13, baseType: !136, size: 32)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2352, file: !2353, line: 16, baseType: !194, size: 32, offset: 32)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2352, file: !2353, line: 23, baseType: !260, size: 64, offset: 64)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2352, file: !2353, line: 30, baseType: !260, size: 64, offset: 128)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2352, file: !2353, line: 33, baseType: !2360, size: 64, offset: 192)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !659, line: 27, flags: DIFlagFwdDecl)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !593, file: !50, line: 1966, baseType: !2348, size: 64, offset: 1408)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !533, file: !50, line: 1424, baseType: !2364, size: 64, offset: 448)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2366)
!2366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !44, line: 322, size: 704, elements: !2367)
!2367 = !{!2368, !2414, !2418, !2422, !2423, !2424, !2425, !2426, !2431, !2436, !2440}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2366, file: !44, line: 323, baseType: !2369, size: 64)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{!194, !2372}
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !44, line: 294, size: 1600, elements: !2374)
!2374 = !{!2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2399, !2400, !2401}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2373, file: !44, line: 295, baseType: !575, size: 128)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2373, file: !44, line: 296, baseType: !155, size: 128, offset: 128)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2373, file: !44, line: 297, baseType: !155, size: 128, offset: 256)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2373, file: !44, line: 298, baseType: !155, size: 128, offset: 384)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2373, file: !44, line: 299, baseType: !1109, size: 192, offset: 512)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2373, file: !44, line: 300, baseType: !168, offset: 704)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2373, file: !44, line: 301, baseType: !683, size: 32, offset: 704)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2373, file: !44, line: 302, baseType: !532, size: 64, offset: 768)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2373, file: !44, line: 303, baseType: !2384, size: 64, offset: 832)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !44, line: 68, size: 64, elements: !2385)
!2385 = !{!2386, !2398}
!2386 = !DIDerivedType(tag: DW_TAG_member, scope: !2384, file: !44, line: 69, baseType: !2387, size: 32)
!2387 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2384, file: !44, line: 69, size: 32, elements: !2388)
!2388 = !{!2389, !2390, !2391}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2387, file: !44, line: 70, baseType: !368, size: 32)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2387, file: !44, line: 71, baseType: !376, size: 32)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2387, file: !44, line: 72, baseType: !2392, size: 32)
!2392 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2393, line: 24, baseType: !2394)
!2393 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2393, line: 22, size: 32, elements: !2395)
!2395 = !{!2396}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2394, file: !2393, line: 23, baseType: !2397, size: 32)
!2397 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2393, line: 20, baseType: !374)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2384, file: !44, line: 74, baseType: !43, size: 32, offset: 32)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2373, file: !44, line: 304, baseType: !464, size: 64, offset: 896)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2373, file: !44, line: 305, baseType: !260, size: 64, offset: 960)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2373, file: !44, line: 306, baseType: !2402, size: 576, offset: 1024)
!2402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !44, line: 205, size: 576, elements: !2403)
!2403 = !{!2404, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2402, file: !44, line: 206, baseType: !2405, size: 64)
!2405 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !44, line: 66, baseType: !466)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2402, file: !44, line: 207, baseType: !2405, size: 64, offset: 64)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2402, file: !44, line: 208, baseType: !2405, size: 64, offset: 128)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2402, file: !44, line: 209, baseType: !2405, size: 64, offset: 192)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2402, file: !44, line: 210, baseType: !2405, size: 64, offset: 256)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2402, file: !44, line: 211, baseType: !2405, size: 64, offset: 320)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2402, file: !44, line: 212, baseType: !2405, size: 64, offset: 384)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2402, file: !44, line: 213, baseType: !472, size: 64, offset: 448)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2402, file: !44, line: 214, baseType: !472, size: 64, offset: 512)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2366, file: !44, line: 324, baseType: !2415, size: 64, offset: 64)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{!2372, !532, !194}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2366, file: !44, line: 325, baseType: !2419, size: 64, offset: 128)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DISubroutineType(types: !2421)
!2421 = !{null, !2372}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2366, file: !44, line: 326, baseType: !2369, size: 64, offset: 192)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2366, file: !44, line: 327, baseType: !2369, size: 64, offset: 256)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2366, file: !44, line: 328, baseType: !2369, size: 64, offset: 320)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2366, file: !44, line: 329, baseType: !621, size: 64, offset: 384)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2366, file: !44, line: 332, baseType: !2427, size: 64, offset: 448)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!2430, !362}
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2366, file: !44, line: 333, baseType: !2432, size: 64, offset: 512)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!194, !362, !2435}
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2366, file: !44, line: 335, baseType: !2437, size: 64, offset: 576)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{!194, !362, !2430}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2366, file: !44, line: 337, baseType: !2441, size: 64, offset: 640)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{!194, !532, !2444}
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !533, file: !50, line: 1425, baseType: !2446, size: 64, offset: 512)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2448)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !44, line: 428, size: 704, elements: !2449)
!2449 = !{!2450, !2454, !2455, !2459, !2460, !2461, !2476, !2499, !2503, !2504, !2527}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2448, file: !44, line: 429, baseType: !2451, size: 64)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!194, !532, !194, !194, !482}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2448, file: !44, line: 430, baseType: !621, size: 64, offset: 64)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2448, file: !44, line: 431, baseType: !2456, size: 64, offset: 128)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{!194, !532, !7}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2448, file: !44, line: 432, baseType: !2456, size: 64, offset: 192)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2448, file: !44, line: 433, baseType: !621, size: 64, offset: 256)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2448, file: !44, line: 434, baseType: !2462, size: 64, offset: 320)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!194, !532, !194, !2465}
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !44, line: 415, size: 256, elements: !2467)
!2467 = !{!2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2466, file: !44, line: 416, baseType: !194, size: 32)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2466, file: !44, line: 417, baseType: !7, size: 32, offset: 32)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2466, file: !44, line: 418, baseType: !7, size: 32, offset: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2466, file: !44, line: 420, baseType: !7, size: 32, offset: 96)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2466, file: !44, line: 421, baseType: !7, size: 32, offset: 128)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2466, file: !44, line: 422, baseType: !7, size: 32, offset: 160)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2466, file: !44, line: 423, baseType: !7, size: 32, offset: 192)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2466, file: !44, line: 424, baseType: !7, size: 32, offset: 224)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2448, file: !44, line: 435, baseType: !2477, size: 64, offset: 384)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!194, !532, !2384, !2480}
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !44, line: 343, size: 960, elements: !2482)
!2482 = !{!2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2481, file: !44, line: 344, baseType: !194, size: 32)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2481, file: !44, line: 345, baseType: !355, size: 64, offset: 64)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2481, file: !44, line: 346, baseType: !355, size: 64, offset: 128)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2481, file: !44, line: 347, baseType: !355, size: 64, offset: 192)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2481, file: !44, line: 348, baseType: !355, size: 64, offset: 256)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2481, file: !44, line: 349, baseType: !355, size: 64, offset: 320)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2481, file: !44, line: 350, baseType: !355, size: 64, offset: 384)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2481, file: !44, line: 351, baseType: !713, size: 64, offset: 448)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2481, file: !44, line: 353, baseType: !713, size: 64, offset: 512)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2481, file: !44, line: 354, baseType: !194, size: 32, offset: 576)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2481, file: !44, line: 355, baseType: !194, size: 32, offset: 608)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2481, file: !44, line: 356, baseType: !355, size: 64, offset: 640)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2481, file: !44, line: 357, baseType: !355, size: 64, offset: 704)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2481, file: !44, line: 358, baseType: !355, size: 64, offset: 768)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2481, file: !44, line: 359, baseType: !713, size: 64, offset: 832)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2481, file: !44, line: 360, baseType: !194, size: 32, offset: 896)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2448, file: !44, line: 436, baseType: !2500, size: 64, offset: 448)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!194, !532, !2444, !2480}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2448, file: !44, line: 438, baseType: !2477, size: 64, offset: 512)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2448, file: !44, line: 439, baseType: !2505, size: 64, offset: 576)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{!194, !532, !2508}
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !44, line: 409, size: 1408, elements: !2510)
!2510 = !{!2511, !2512}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2509, file: !44, line: 410, baseType: !7, size: 32)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2509, file: !44, line: 411, baseType: !2513, size: 1344, offset: 64)
!2513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2514, size: 1344, elements: !211)
!2514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !44, line: 395, size: 448, elements: !2515)
!2515 = !{!2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2526}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2514, file: !44, line: 396, baseType: !7, size: 32)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2514, file: !44, line: 397, baseType: !7, size: 32, offset: 32)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2514, file: !44, line: 399, baseType: !7, size: 32, offset: 64)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2514, file: !44, line: 400, baseType: !7, size: 32, offset: 96)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2514, file: !44, line: 401, baseType: !7, size: 32, offset: 128)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2514, file: !44, line: 402, baseType: !7, size: 32, offset: 160)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2514, file: !44, line: 403, baseType: !7, size: 32, offset: 192)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2514, file: !44, line: 404, baseType: !357, size: 64, offset: 256)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2514, file: !44, line: 405, baseType: !2525, size: 64, offset: 320)
!2525 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !137, line: 126, baseType: !355)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2514, file: !44, line: 406, baseType: !2525, size: 64, offset: 384)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2448, file: !44, line: 440, baseType: !2456, size: 64, offset: 640)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !533, file: !50, line: 1426, baseType: !2529, size: 64, offset: 576)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2531)
!2531 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !50, line: 49, flags: DIFlagFwdDecl)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !533, file: !50, line: 1427, baseType: !260, size: 64, offset: 640)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !533, file: !50, line: 1428, baseType: !260, size: 64, offset: 704)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !533, file: !50, line: 1429, baseType: !260, size: 64, offset: 768)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !533, file: !50, line: 1430, baseType: !318, size: 64, offset: 832)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !533, file: !50, line: 1431, baseType: !703, size: 256, offset: 896)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !533, file: !50, line: 1432, baseType: !194, size: 32, offset: 1152)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !533, file: !50, line: 1433, baseType: !683, size: 32, offset: 1184)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !533, file: !50, line: 1437, baseType: !2540, size: 64, offset: 1216)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2543)
!2543 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !50, line: 1437, flags: DIFlagFwdDecl)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !533, file: !50, line: 1449, baseType: !2545, size: 64, offset: 1280)
!2545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !334, line: 34, size: 64, elements: !2546)
!2546 = !{!2547}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2545, file: !334, line: 35, baseType: !337, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !533, file: !50, line: 1450, baseType: !155, size: 128, offset: 1344)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !533, file: !50, line: 1451, baseType: !2550, size: 64, offset: 1472)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !50, line: 699, flags: DIFlagFwdDecl)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !533, file: !50, line: 1452, baseType: !1858, size: 64, offset: 1536)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !533, file: !50, line: 1453, baseType: !2554, size: 64, offset: 1600)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !50, line: 1453, flags: DIFlagFwdDecl)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !533, file: !50, line: 1454, baseType: !575, size: 128, offset: 1664)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !533, file: !50, line: 1455, baseType: !7, size: 32, offset: 1792)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !533, file: !50, line: 1456, baseType: !2559, size: 2432, offset: 1856)
!2559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !44, line: 518, size: 2432, elements: !2560)
!2560 = !{!2561, !2562, !2563, !2565, !2597}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2559, file: !44, line: 519, baseType: !7, size: 32)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2559, file: !44, line: 520, baseType: !703, size: 256, offset: 64)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2559, file: !44, line: 521, baseType: !2564, size: 192, offset: 320)
!2564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 192, elements: !211)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2559, file: !44, line: 522, baseType: !2566, size: 1728, offset: 512)
!2566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2567, size: 1728, elements: !211)
!2567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !44, line: 222, size: 576, elements: !2568)
!2568 = !{!2569, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2567, file: !44, line: 223, baseType: !2570, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !44, line: 443, size: 256, elements: !2572)
!2572 = !{!2573, !2574, !2587, !2588}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2571, file: !44, line: 444, baseType: !194, size: 32)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2571, file: !44, line: 445, baseType: !2575, size: 64, offset: 64)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2577)
!2577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !44, line: 310, size: 512, elements: !2578)
!2578 = !{!2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2577, file: !44, line: 311, baseType: !621, size: 64)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2577, file: !44, line: 312, baseType: !621, size: 64, offset: 64)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2577, file: !44, line: 313, baseType: !621, size: 64, offset: 128)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2577, file: !44, line: 314, baseType: !621, size: 64, offset: 192)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2577, file: !44, line: 315, baseType: !2369, size: 64, offset: 256)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2577, file: !44, line: 316, baseType: !2369, size: 64, offset: 320)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2577, file: !44, line: 317, baseType: !2369, size: 64, offset: 384)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2577, file: !44, line: 318, baseType: !2441, size: 64, offset: 448)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2571, file: !44, line: 446, baseType: !566, size: 64, offset: 128)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2571, file: !44, line: 447, baseType: !2570, size: 64, offset: 192)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2567, file: !44, line: 224, baseType: !194, size: 32, offset: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2567, file: !44, line: 226, baseType: !155, size: 128, offset: 128)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2567, file: !44, line: 227, baseType: !260, size: 64, offset: 256)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2567, file: !44, line: 228, baseType: !7, size: 32, offset: 320)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2567, file: !44, line: 229, baseType: !7, size: 32, offset: 352)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2567, file: !44, line: 230, baseType: !2405, size: 64, offset: 384)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2567, file: !44, line: 231, baseType: !2405, size: 64, offset: 448)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2567, file: !44, line: 232, baseType: !138, size: 64, offset: 512)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2559, file: !44, line: 523, baseType: !2598, size: 192, offset: 2240)
!2598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2575, size: 192, elements: !211)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !533, file: !50, line: 1458, baseType: !2600, size: 2112, offset: 4288)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !50, line: 1410, size: 2112, elements: !2601)
!2601 = !{!2602, !2603, !2604}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2600, file: !50, line: 1411, baseType: !194, size: 32)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2600, file: !50, line: 1412, baseType: !1415, size: 128, offset: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2600, file: !50, line: 1413, baseType: !2605, size: 1920, offset: 192)
!2605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2606, size: 1920, elements: !211)
!2606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2607, line: 12, size: 640, elements: !2608)
!2607 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2608 = !{!2609, !2617, !2619, !2624, !2625}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2606, file: !2607, line: 13, baseType: !2610, size: 320)
!2610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2611, line: 17, size: 320, elements: !2612)
!2611 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2612 = !{!2613, !2614, !2615, !2616}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2610, file: !2611, line: 18, baseType: !194, size: 32)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2610, file: !2611, line: 19, baseType: !194, size: 32, offset: 32)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2610, file: !2611, line: 20, baseType: !1415, size: 128, offset: 64)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2610, file: !2611, line: 22, baseType: !301, size: 128, align: 64, offset: 192)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2606, file: !2607, line: 14, baseType: !2618, size: 64, offset: 320)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2606, file: !2607, line: 15, baseType: !2620, size: 64, offset: 384)
!2620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2621, line: 16, size: 64, elements: !2622)
!2621 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2622 = !{!2623}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2620, file: !2621, line: 17, baseType: !1152, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2606, file: !2607, line: 16, baseType: !1415, size: 128, offset: 448)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2606, file: !2607, line: 17, baseType: !683, size: 32, offset: 576)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !533, file: !50, line: 1465, baseType: !138, size: 64, offset: 6400)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !533, file: !50, line: 1468, baseType: !351, size: 32, offset: 6464)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !533, file: !50, line: 1470, baseType: !472, size: 64, offset: 6528)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !533, file: !50, line: 1471, baseType: !472, size: 64, offset: 6592)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !533, file: !50, line: 1473, baseType: !352, size: 32, offset: 6656)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !533, file: !50, line: 1474, baseType: !2632, size: 64, offset: 6720)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !50, line: 603, flags: DIFlagFwdDecl)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !533, file: !50, line: 1477, baseType: !2635, size: 256, offset: 6784)
!2635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 256, elements: !2165)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !533, file: !50, line: 1478, baseType: !2637, size: 128, offset: 7040)
!2637 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2638, line: 18, baseType: !2639)
!2638 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2639 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2638, line: 16, size: 128, elements: !2640)
!2640 = !{!2641}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2639, file: !2638, line: 17, baseType: !2642, size: 128)
!2642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 128, elements: !1669)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !533, file: !50, line: 1480, baseType: !7, size: 32, offset: 7168)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !533, file: !50, line: 1481, baseType: !2645, size: 32, offset: 7200)
!2645 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !137, line: 150, baseType: !7)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !533, file: !50, line: 1487, baseType: !1109, size: 192, offset: 7232)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !533, file: !50, line: 1493, baseType: !151, size: 64, offset: 7424)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !533, file: !50, line: 1495, baseType: !2649, size: 64, offset: 7488)
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2651)
!2651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !316, line: 135, size: 1024, align: 512, elements: !2652)
!2652 = !{!2653, !2657, !2658, !2665, !2671, !2675, !2679, !2683, !2684, !2688, !2692, !2697, !2701}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2651, file: !316, line: 136, baseType: !2654, size: 64)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2655 = !DISubroutineType(types: !2656)
!2656 = !{!194, !318, !7}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2651, file: !316, line: 137, baseType: !2654, size: 64, offset: 64)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2651, file: !316, line: 138, baseType: !2659, size: 64, offset: 128)
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{!194, !2662, !2664}
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !319)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2651, file: !316, line: 139, baseType: !2666, size: 64, offset: 192)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{!194, !2662, !7, !151, !2669}
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !342)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2651, file: !316, line: 141, baseType: !2672, size: 64, offset: 256)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DISubroutineType(types: !2674)
!2674 = !{!194, !2662}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2651, file: !316, line: 142, baseType: !2676, size: 64, offset: 320)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{!194, !318}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2651, file: !316, line: 143, baseType: !2680, size: 64, offset: 384)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{null, !318}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2651, file: !316, line: 144, baseType: !2680, size: 64, offset: 448)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2651, file: !316, line: 145, baseType: !2685, size: 64, offset: 512)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{null, !318, !362}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2651, file: !316, line: 146, baseType: !2689, size: 64, offset: 576)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{!210, !318, !210, !194}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2651, file: !316, line: 147, baseType: !2693, size: 64, offset: 640)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{!314, !2696}
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2651, file: !316, line: 148, baseType: !2698, size: 64, offset: 704)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{!194, !482, !423}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2651, file: !316, line: 149, baseType: !2702, size: 64, offset: 768)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!318, !318, !2705}
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !363)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !533, file: !50, line: 1500, baseType: !194, size: 32, offset: 7552)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !533, file: !50, line: 1502, baseType: !2709, size: 448, offset: 7616)
!2709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2353, line: 60, size: 448, elements: !2710)
!2710 = !{!2711, !2716, !2717, !2718, !2719, !2720, !2721}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2709, file: !2353, line: 61, baseType: !2712, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{!260, !2715, !2351}
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2709, file: !2353, line: 63, baseType: !2712, size: 64, offset: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2709, file: !2353, line: 66, baseType: !245, size: 64, offset: 128)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2709, file: !2353, line: 67, baseType: !194, size: 32, offset: 192)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2709, file: !2353, line: 68, baseType: !7, size: 32, offset: 224)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2709, file: !2353, line: 71, baseType: !155, size: 128, offset: 256)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2709, file: !2353, line: 77, baseType: !2722, size: 64, offset: 384)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !533, file: !50, line: 1505, baseType: !707, size: 64, offset: 8064)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !533, file: !50, line: 1508, baseType: !707, size: 64, offset: 8128)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !533, file: !50, line: 1511, baseType: !194, size: 32, offset: 8192)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !533, file: !50, line: 1514, baseType: !845, size: 32, offset: 8224)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !533, file: !50, line: 1517, baseType: !2728, size: 64, offset: 8256)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1893, line: 18, flags: DIFlagFwdDecl)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !533, file: !50, line: 1518, baseType: !571, size: 64, offset: 8320)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !533, file: !50, line: 1525, baseType: !1647, size: 64, offset: 8384)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !533, file: !50, line: 1532, baseType: !2733, size: 64, offset: 8448)
!2733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2734, line: 52, size: 64, elements: !2735)
!2734 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2735 = !{!2736}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2733, file: !2734, line: 53, baseType: !2737, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2734, line: 40, size: 256, elements: !2739)
!2739 = !{!2740, !2741, !2746}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2738, file: !2734, line: 42, baseType: !168)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2738, file: !2734, line: 44, baseType: !2742, size: 192)
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2734, line: 28, size: 192, elements: !2743)
!2743 = !{!2744, !2745}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2742, file: !2734, line: 29, baseType: !155, size: 128)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2742, file: !2734, line: 31, baseType: !245, size: 64, offset: 128)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2738, file: !2734, line: 49, baseType: !245, size: 64, offset: 192)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !533, file: !50, line: 1533, baseType: !2733, size: 64, offset: 8512)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !533, file: !50, line: 1534, baseType: !301, size: 128, align: 64, offset: 8576)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !533, file: !50, line: 1535, baseType: !1892, size: 256, offset: 8704)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !533, file: !50, line: 1537, baseType: !1109, size: 192, offset: 8960)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !533, file: !50, line: 1542, baseType: !194, size: 32, offset: 9152)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !533, file: !50, line: 1545, baseType: !168, offset: 9184)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !533, file: !50, line: 1546, baseType: !155, size: 128, offset: 9216)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !533, file: !50, line: 1548, baseType: !168, offset: 9344)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !533, file: !50, line: 1549, baseType: !155, size: 128, offset: 9344)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !363, file: !50, line: 624, baseType: !670, size: 64, offset: 256)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !363, file: !50, line: 631, baseType: !260, size: 64, offset: 320)
!2758 = !DIDerivedType(tag: DW_TAG_member, scope: !363, file: !50, line: 639, baseType: !2759, size: 32, offset: 384)
!2759 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !363, file: !50, line: 639, size: 32, elements: !2760)
!2760 = !{!2761, !2763}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2759, file: !50, line: 640, baseType: !2762, size: 32)
!2762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2759, file: !50, line: 641, baseType: !7, size: 32)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !363, file: !50, line: 643, baseType: !446, size: 32, offset: 416)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !363, file: !50, line: 644, baseType: !464, size: 64, offset: 448)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !363, file: !50, line: 645, baseType: !468, size: 128, offset: 512)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !363, file: !50, line: 646, baseType: !468, size: 128, offset: 640)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !363, file: !50, line: 647, baseType: !468, size: 128, offset: 768)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !363, file: !50, line: 648, baseType: !168, offset: 896)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !363, file: !50, line: 649, baseType: !252, size: 16, offset: 896)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !363, file: !50, line: 650, baseType: !131, size: 8, offset: 912)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !363, file: !50, line: 651, baseType: !131, size: 8, offset: 920)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !363, file: !50, line: 652, baseType: !2525, size: 64, offset: 960)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !363, file: !50, line: 659, baseType: !260, size: 64, offset: 1024)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !363, file: !50, line: 660, baseType: !703, size: 256, offset: 1088)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !363, file: !50, line: 662, baseType: !260, size: 64, offset: 1344)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !363, file: !50, line: 663, baseType: !260, size: 64, offset: 1408)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !363, file: !50, line: 665, baseType: !575, size: 128, offset: 1472)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !363, file: !50, line: 666, baseType: !155, size: 128, offset: 1600)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !363, file: !50, line: 675, baseType: !155, size: 128, offset: 1728)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !363, file: !50, line: 676, baseType: !155, size: 128, offset: 1856)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !363, file: !50, line: 677, baseType: !155, size: 128, offset: 1984)
!2783 = !DIDerivedType(tag: DW_TAG_member, scope: !363, file: !50, line: 678, baseType: !2784, size: 128, offset: 2112)
!2784 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !363, file: !50, line: 678, size: 128, elements: !2785)
!2785 = !{!2786, !2787}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2784, file: !50, line: 679, baseType: !571, size: 64)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2784, file: !50, line: 680, baseType: !301, size: 128, align: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !363, file: !50, line: 682, baseType: !709, size: 64, offset: 2240)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !363, file: !50, line: 683, baseType: !709, size: 64, offset: 2304)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !363, file: !50, line: 684, baseType: !683, size: 32, offset: 2368)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !363, file: !50, line: 685, baseType: !683, size: 32, offset: 2400)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !363, file: !50, line: 686, baseType: !683, size: 32, offset: 2432)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !363, file: !50, line: 688, baseType: !683, size: 32, offset: 2464)
!2794 = !DIDerivedType(tag: DW_TAG_member, scope: !363, file: !50, line: 690, baseType: !2795, size: 64, offset: 2496)
!2795 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !363, file: !50, line: 690, size: 64, elements: !2796)
!2796 = !{!2797, !3020}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2795, file: !50, line: 691, baseType: !2798, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2800)
!2800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !50, line: 1822, size: 2048, elements: !2801)
!2801 = !{!2802, !2803, !2807, !2812, !2816, !2817, !2818, !2822, !2835, !2836, !2844, !2848, !2849, !2853, !2854, !2858, !2863, !2864, !2868, !2872, !2980, !2984, !2985, !2989, !2990, !2994, !2998, !3003, !3007, !3011, !3015, !3019}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2800, file: !50, line: 1823, baseType: !566, size: 64)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2800, file: !50, line: 1824, baseType: !2804, size: 64, offset: 64)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{!464, !288, !464, !194}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2800, file: !50, line: 1825, baseType: !2808, size: 64, offset: 128)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{!241, !288, !210, !257, !2811}
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2800, file: !50, line: 1826, baseType: !2813, size: 64, offset: 192)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2814 = !DISubroutineType(types: !2815)
!2815 = !{!241, !288, !151, !257, !2811}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2800, file: !50, line: 1827, baseType: !780, size: 64, offset: 256)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2800, file: !50, line: 1828, baseType: !780, size: 64, offset: 320)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2800, file: !50, line: 1829, baseType: !2819, size: 64, offset: 384)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = !DISubroutineType(types: !2821)
!2821 = !{!194, !783, !423}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2800, file: !50, line: 1830, baseType: !2823, size: 64, offset: 448)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!194, !288, !2826}
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !50, line: 1776, size: 128, elements: !2828)
!2828 = !{!2829, !2834}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2827, file: !50, line: 1777, baseType: !2830, size: 64)
!2830 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !50, line: 1773, baseType: !2831)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DISubroutineType(types: !2833)
!2833 = !{!194, !2826, !151, !194, !464, !355, !7}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2827, file: !50, line: 1778, baseType: !464, size: 64, offset: 64)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2800, file: !50, line: 1831, baseType: !2823, size: 64, offset: 512)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2800, file: !50, line: 1832, baseType: !2837, size: 64, offset: 576)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{!2840, !288, !2842}
!2840 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2841, line: 52, baseType: !7)
!2841 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !552, line: 27, flags: DIFlagFwdDecl)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2800, file: !50, line: 1833, baseType: !2845, size: 64, offset: 640)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{!245, !288, !7, !260}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2800, file: !50, line: 1834, baseType: !2845, size: 64, offset: 704)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2800, file: !50, line: 1835, baseType: !2850, size: 64, offset: 768)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!194, !288, !917}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2800, file: !50, line: 1836, baseType: !260, size: 64, offset: 832)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2800, file: !50, line: 1837, baseType: !2855, size: 64, offset: 896)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!194, !362, !288}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2800, file: !50, line: 1838, baseType: !2859, size: 64, offset: 960)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{!194, !288, !2862}
!2862 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !50, line: 1007, baseType: !138)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2800, file: !50, line: 1839, baseType: !2855, size: 64, offset: 1024)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2800, file: !50, line: 1840, baseType: !2865, size: 64, offset: 1088)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{!194, !288, !464, !464, !194}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2800, file: !50, line: 1841, baseType: !2869, size: 64, offset: 1152)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{!194, !194, !288, !194}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2800, file: !50, line: 1842, baseType: !2873, size: 64, offset: 1216)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{!194, !288, !194, !2876}
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !50, line: 1062, size: 1664, elements: !2878)
!2878 = !{!2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2910, !2911, !2912, !2925, !2956}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2877, file: !50, line: 1063, baseType: !2876, size: 64)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2877, file: !50, line: 1064, baseType: !155, size: 128, offset: 64)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2877, file: !50, line: 1065, baseType: !575, size: 128, offset: 192)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2877, file: !50, line: 1066, baseType: !155, size: 128, offset: 320)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2877, file: !50, line: 1069, baseType: !155, size: 128, offset: 448)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2877, file: !50, line: 1072, baseType: !2862, size: 64, offset: 576)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2877, file: !50, line: 1073, baseType: !7, size: 32, offset: 640)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2877, file: !50, line: 1074, baseType: !135, size: 8, offset: 672)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2877, file: !50, line: 1075, baseType: !7, size: 32, offset: 704)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2877, file: !50, line: 1076, baseType: !194, size: 32, offset: 736)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2877, file: !50, line: 1077, baseType: !1415, size: 128, offset: 768)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2877, file: !50, line: 1078, baseType: !288, size: 64, offset: 896)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2877, file: !50, line: 1079, baseType: !464, size: 64, offset: 960)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2877, file: !50, line: 1080, baseType: !464, size: 64, offset: 1024)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2877, file: !50, line: 1082, baseType: !2894, size: 64, offset: 1088)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !50, line: 1314, size: 320, elements: !2896)
!2896 = !{!2897, !2905, !2906, !2907, !2908, !2909}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2895, file: !50, line: 1315, baseType: !2898)
!2898 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2899, line: 20, baseType: !2900)
!2899 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2900 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2899, line: 11, elements: !2901)
!2901 = !{!2902}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2900, file: !2899, line: 12, baseType: !2903)
!2903 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !180, line: 33, baseType: !2904)
!2904 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !180, line: 31, elements: !182)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2895, file: !50, line: 1316, baseType: !194, size: 32)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2895, file: !50, line: 1317, baseType: !194, size: 32, offset: 32)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2895, file: !50, line: 1318, baseType: !2894, size: 64, offset: 64)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2895, file: !50, line: 1319, baseType: !288, size: 64, offset: 128)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2895, file: !50, line: 1320, baseType: !301, size: 128, align: 64, offset: 192)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2877, file: !50, line: 1084, baseType: !260, size: 64, offset: 1152)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2877, file: !50, line: 1085, baseType: !260, size: 64, offset: 1216)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2877, file: !50, line: 1087, baseType: !2913, size: 64, offset: 1280)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2915)
!2915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !50, line: 1011, size: 128, elements: !2916)
!2916 = !{!2917, !2921}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2915, file: !50, line: 1012, baseType: !2918, size: 64)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{null, !2876, !2876}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2915, file: !50, line: 1013, baseType: !2922, size: 64, offset: 64)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{null, !2876}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2877, file: !50, line: 1088, baseType: !2926, size: 64, offset: 1344)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2928)
!2928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !50, line: 1016, size: 512, elements: !2929)
!2929 = !{!2930, !2934, !2938, !2939, !2943, !2947, !2951, !2955}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2928, file: !50, line: 1017, baseType: !2931, size: 64)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{!2862, !2862}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2928, file: !50, line: 1018, baseType: !2935, size: 64, offset: 64)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DISubroutineType(types: !2937)
!2937 = !{null, !2862}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2928, file: !50, line: 1019, baseType: !2922, size: 64, offset: 128)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2928, file: !50, line: 1020, baseType: !2940, size: 64, offset: 192)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!194, !2876, !194}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2928, file: !50, line: 1021, baseType: !2944, size: 64, offset: 256)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{!423, !2876}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2928, file: !50, line: 1022, baseType: !2948, size: 64, offset: 320)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{!194, !2876, !194, !158}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2928, file: !50, line: 1023, baseType: !2952, size: 64, offset: 384)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{null, !2876, !757}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2928, file: !50, line: 1024, baseType: !2944, size: 64, offset: 448)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2877, file: !50, line: 1097, baseType: !2957, size: 256, offset: 1408)
!2957 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2877, file: !50, line: 1089, size: 256, elements: !2958)
!2958 = !{!2959, !2968, !2974}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2957, file: !50, line: 1090, baseType: !2960, size: 256)
!2960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2961, line: 10, size: 256, elements: !2962)
!2961 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2962 = !{!2963, !2964, !2967}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2960, file: !2961, line: 11, baseType: !351, size: 32)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2960, file: !2961, line: 12, baseType: !2965, size: 64, offset: 64)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2961, line: 5, flags: DIFlagFwdDecl)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2960, file: !2961, line: 13, baseType: !155, size: 128, offset: 128)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2957, file: !50, line: 1091, baseType: !2969, size: 64)
!2969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2961, line: 17, size: 64, elements: !2970)
!2970 = !{!2971}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2969, file: !2961, line: 18, baseType: !2972, size: 64)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2961, line: 16, flags: DIFlagFwdDecl)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2957, file: !50, line: 1096, baseType: !2975, size: 192)
!2975 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2957, file: !50, line: 1092, size: 192, elements: !2976)
!2976 = !{!2977, !2978, !2979}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2975, file: !50, line: 1093, baseType: !155, size: 128)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2975, file: !50, line: 1094, baseType: !194, size: 32, offset: 128)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2975, file: !50, line: 1095, baseType: !7, size: 32, offset: 160)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2800, file: !50, line: 1843, baseType: !2981, size: 64, offset: 1280)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!241, !288, !657, !194, !257, !2811, !194}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2800, file: !50, line: 1844, baseType: !1037, size: 64, offset: 1344)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2800, file: !50, line: 1845, baseType: !2986, size: 64, offset: 1408)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!194, !194}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2800, file: !50, line: 1846, baseType: !2873, size: 64, offset: 1472)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2800, file: !50, line: 1847, baseType: !2991, size: 64, offset: 1536)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = !DISubroutineType(types: !2993)
!2993 = !{!241, !2033, !288, !2811, !257, !7}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2800, file: !50, line: 1848, baseType: !2995, size: 64, offset: 1600)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{!241, !288, !2811, !2033, !257, !7}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2800, file: !50, line: 1849, baseType: !2999, size: 64, offset: 1664)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{!194, !288, !245, !3002, !757}
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2800, file: !50, line: 1850, baseType: !3004, size: 64, offset: 1728)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{!245, !288, !194, !464, !464}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2800, file: !50, line: 1852, baseType: !3008, size: 64, offset: 1792)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{null, !647, !288}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2800, file: !50, line: 1856, baseType: !3012, size: 64, offset: 1856)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!241, !288, !464, !288, !464, !257, !7}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2800, file: !50, line: 1858, baseType: !3016, size: 64, offset: 1920)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!464, !288, !464, !288, !464, !464, !7}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2800, file: !50, line: 1861, baseType: !2865, size: 64, offset: 1984)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2795, file: !50, line: 692, baseType: !600, size: 64)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !363, file: !50, line: 694, baseType: !3022, size: 64, offset: 2560)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !50, line: 1100, size: 384, elements: !3024)
!3024 = !{!3025, !3026, !3027, !3028}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3023, file: !50, line: 1101, baseType: !168)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3023, file: !50, line: 1102, baseType: !155, size: 128)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3023, file: !50, line: 1103, baseType: !155, size: 128, offset: 128)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3023, file: !50, line: 1104, baseType: !155, size: 128, offset: 256)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !363, file: !50, line: 695, baseType: !671, size: 1216, align: 64, offset: 2624)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !363, file: !50, line: 696, baseType: !155, size: 128, offset: 3840)
!3031 = !DIDerivedType(tag: DW_TAG_member, scope: !363, file: !50, line: 697, baseType: !3032, size: 64, offset: 3968)
!3032 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !363, file: !50, line: 697, size: 64, elements: !3033)
!3033 = !{!3034, !3035, !3036, !3039, !3040}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3032, file: !50, line: 698, baseType: !2033, size: 64)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3032, file: !50, line: 699, baseType: !2550, size: 64)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3032, file: !50, line: 700, baseType: !3037, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !50, line: 700, flags: DIFlagFwdDecl)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3032, file: !50, line: 701, baseType: !210, size: 64)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3032, file: !50, line: 702, baseType: !7, size: 32)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !363, file: !50, line: 705, baseType: !352, size: 32, offset: 4032)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !363, file: !50, line: 708, baseType: !352, size: 32, offset: 4064)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !363, file: !50, line: 709, baseType: !2632, size: 64, offset: 4096)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !363, file: !50, line: 720, baseType: !138, size: 64, offset: 4160)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !319, file: !316, line: 98, baseType: !3046, size: 256, offset: 448)
!3046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 256, elements: !2165)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !319, file: !316, line: 101, baseType: !3048, size: 32, offset: 704)
!3048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3049, line: 25, size: 32, elements: !3050)
!3049 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3050 = !{!3051}
!3051 = !DIDerivedType(tag: DW_TAG_member, scope: !3048, file: !3049, line: 26, baseType: !3052, size: 32)
!3052 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3048, file: !3049, line: 26, size: 32, elements: !3053)
!3053 = !{!3054}
!3054 = !DIDerivedType(tag: DW_TAG_member, scope: !3052, file: !3049, line: 30, baseType: !3055, size: 32)
!3055 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3052, file: !3049, line: 30, size: 32, elements: !3056)
!3056 = !{!3057, !3058}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3055, file: !3049, line: 31, baseType: !168)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3055, file: !3049, line: 32, baseType: !194, size: 32)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !319, file: !316, line: 102, baseType: !2649, size: 64, offset: 768)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !319, file: !316, line: 103, baseType: !532, size: 64, offset: 832)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !319, file: !316, line: 104, baseType: !260, size: 64, offset: 896)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !319, file: !316, line: 105, baseType: !138, size: 64, offset: 960)
!3063 = !DIDerivedType(tag: DW_TAG_member, scope: !319, file: !316, line: 107, baseType: !3064, size: 128, offset: 1024)
!3064 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !319, file: !316, line: 107, size: 128, elements: !3065)
!3065 = !{!3066, !3067}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3064, file: !316, line: 108, baseType: !155, size: 128)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3064, file: !316, line: 109, baseType: !3068, size: 64)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !319, file: !316, line: 111, baseType: !155, size: 128, offset: 1152)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !319, file: !316, line: 112, baseType: !155, size: 128, offset: 1280)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !319, file: !316, line: 120, baseType: !3072, size: 128, offset: 1408)
!3072 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !319, file: !316, line: 116, size: 128, elements: !3073)
!3073 = !{!3074, !3075, !3076}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3072, file: !316, line: 117, baseType: !575, size: 128)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3072, file: !316, line: 118, baseType: !333, size: 128)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3072, file: !316, line: 119, baseType: !301, size: 128, align: 64)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !289, file: !50, line: 922, baseType: !362, size: 64, offset: 256)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !289, file: !50, line: 923, baseType: !2798, size: 64, offset: 320)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !289, file: !50, line: 929, baseType: !168, offset: 384)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !289, file: !50, line: 930, baseType: !49, size: 32, offset: 384)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !289, file: !50, line: 931, baseType: !707, size: 64, offset: 448)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !289, file: !50, line: 932, baseType: !7, size: 32, offset: 512)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !289, file: !50, line: 933, baseType: !2645, size: 32, offset: 544)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !289, file: !50, line: 934, baseType: !1109, size: 192, offset: 576)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !289, file: !50, line: 935, baseType: !464, size: 64, offset: 768)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !289, file: !50, line: 936, baseType: !3087, size: 192, offset: 832)
!3087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !50, line: 885, size: 192, elements: !3088)
!3088 = !{!3089, !3090, !3091, !3092, !3093, !3094}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3087, file: !50, line: 886, baseType: !2898)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3087, file: !50, line: 887, baseType: !1405, size: 64)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3087, file: !50, line: 888, baseType: !58, size: 32, offset: 64)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3087, file: !50, line: 889, baseType: !368, size: 32, offset: 96)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3087, file: !50, line: 889, baseType: !368, size: 32, offset: 128)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3087, file: !50, line: 890, baseType: !194, size: 32, offset: 160)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !289, file: !50, line: 937, baseType: !1481, size: 64, offset: 1024)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !289, file: !50, line: 938, baseType: !3097, size: 256, offset: 1088)
!3097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !50, line: 896, size: 256, elements: !3098)
!3098 = !{!3099, !3100, !3101, !3102, !3103, !3104}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3097, file: !50, line: 897, baseType: !260, size: 64)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3097, file: !50, line: 898, baseType: !7, size: 32, offset: 64)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3097, file: !50, line: 899, baseType: !7, size: 32, offset: 96)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3097, file: !50, line: 902, baseType: !7, size: 32, offset: 128)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3097, file: !50, line: 903, baseType: !7, size: 32, offset: 160)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3097, file: !50, line: 904, baseType: !464, size: 64, offset: 192)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !289, file: !50, line: 940, baseType: !355, size: 64, offset: 1344)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !289, file: !50, line: 945, baseType: !138, size: 64, offset: 1408)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !289, file: !50, line: 949, baseType: !155, size: 128, offset: 1472)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !289, file: !50, line: 950, baseType: !155, size: 128, offset: 1600)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !289, file: !50, line: 952, baseType: !670, size: 64, offset: 1728)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !289, file: !50, line: 953, baseType: !845, size: 32, offset: 1792)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !289, file: !50, line: 954, baseType: !845, size: 32, offset: 1824)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !279, file: !235, line: 174, baseType: !285, size: 64, offset: 320)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !279, file: !235, line: 176, baseType: !3114, size: 64, offset: 384)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{!194, !288, !161, !278, !917}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !267, file: !235, line: 90, baseType: !262, size: 64, offset: 192)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !267, file: !235, line: 91, baseType: !3119, size: 64, offset: 256)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !225, file: !148, line: 143, baseType: !3121, size: 64, offset: 256)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{!3124, !161}
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3126)
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !3127)
!3127 = !{!3128, !3129, !3133, !3137, !3143, !3147}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3126, file: !6, line: 40, baseType: !5, size: 32)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3126, file: !6, line: 41, baseType: !3130, size: 64, offset: 64)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!423}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3126, file: !6, line: 42, baseType: !3134, size: 64, offset: 128)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{!138}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3126, file: !6, line: 43, baseType: !3138, size: 64, offset: 192)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{!2062, !3141}
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3142 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3126, file: !6, line: 44, baseType: !3144, size: 64, offset: 256)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{!2062}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3126, file: !6, line: 45, baseType: !401, size: 64, offset: 320)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !225, file: !148, line: 144, baseType: !3149, size: 64, offset: 320)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{!2062, !161}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !225, file: !148, line: 145, baseType: !3153, size: 64, offset: 384)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{null, !161, !3156, !3157}
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !147, file: !148, line: 70, baseType: !3159, size: 64, offset: 384)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !552, line: 123, size: 1024, elements: !3161)
!3161 = !{!3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3290, !3291, !3292, !3293, !3294}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3160, file: !552, line: 124, baseType: !683, size: 32)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3160, file: !552, line: 125, baseType: !683, size: 32, offset: 32)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3160, file: !552, line: 135, baseType: !3159, size: 64, offset: 64)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3160, file: !552, line: 136, baseType: !151, size: 64, offset: 128)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3160, file: !552, line: 138, baseType: !696, size: 192, align: 64, offset: 192)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3160, file: !552, line: 140, baseType: !2062, size: 64, offset: 384)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3160, file: !552, line: 141, baseType: !7, size: 32, offset: 448)
!3169 = !DIDerivedType(tag: DW_TAG_member, scope: !3160, file: !552, line: 142, baseType: !3170, size: 256, offset: 512)
!3170 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3160, file: !552, line: 142, size: 256, elements: !3171)
!3171 = !{!3172, !3218, !3222}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3170, file: !552, line: 143, baseType: !3173, size: 192)
!3173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !552, line: 91, size: 192, elements: !3174)
!3174 = !{!3175, !3176, !3177}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3173, file: !552, line: 92, baseType: !260, size: 64)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3173, file: !552, line: 94, baseType: !692, size: 64, offset: 64)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3173, file: !552, line: 100, baseType: !3178, size: 64, offset: 128)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !552, line: 180, size: 704, elements: !3180)
!3180 = !{!3181, !3182, !3183, !3190, !3191, !3192, !3216, !3217}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3179, file: !552, line: 182, baseType: !3159, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3179, file: !552, line: 183, baseType: !7, size: 32, offset: 64)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3179, file: !552, line: 186, baseType: !3184, size: 192, offset: 128)
!3184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3185, line: 19, size: 192, elements: !3186)
!3185 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3186 = !{!3187, !3188, !3189}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3184, file: !3185, line: 20, baseType: !675, size: 128)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3184, file: !3185, line: 21, baseType: !7, size: 32, offset: 128)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3184, file: !3185, line: 22, baseType: !7, size: 32, offset: 160)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3179, file: !552, line: 187, baseType: !351, size: 32, offset: 320)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3179, file: !552, line: 188, baseType: !351, size: 32, offset: 352)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3179, file: !552, line: 189, baseType: !3193, size: 64, offset: 384)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !552, line: 168, size: 320, elements: !3195)
!3195 = !{!3196, !3200, !3204, !3208, !3212}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3194, file: !552, line: 169, baseType: !3197, size: 64)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{!194, !647, !3178}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3194, file: !552, line: 171, baseType: !3201, size: 64, offset: 64)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!194, !3159, !151, !251}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3194, file: !552, line: 173, baseType: !3205, size: 64, offset: 128)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!194, !3159}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3194, file: !552, line: 174, baseType: !3209, size: 64, offset: 192)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!194, !3159, !3159, !151}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3194, file: !552, line: 176, baseType: !3213, size: 64, offset: 256)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!194, !647, !3159, !3178}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3179, file: !552, line: 192, baseType: !155, size: 128, offset: 448)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3179, file: !552, line: 194, baseType: !1415, size: 128, offset: 576)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3170, file: !552, line: 144, baseType: !3219, size: 64)
!3219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !552, line: 103, size: 64, elements: !3220)
!3220 = !{!3221}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3219, file: !552, line: 104, baseType: !3159, size: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3170, file: !552, line: 145, baseType: !3223, size: 256)
!3223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !552, line: 107, size: 256, elements: !3224)
!3224 = !{!3225, !3285, !3288, !3289}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3223, file: !552, line: 108, baseType: !3226, size: 64)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3228)
!3228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !552, line: 217, size: 768, elements: !3229)
!3229 = !{!3230, !3250, !3254, !3258, !3262, !3266, !3270, !3274, !3275, !3276, !3277, !3281}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3228, file: !552, line: 222, baseType: !3231, size: 64)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = !DISubroutineType(types: !3233)
!3233 = !{!194, !3234}
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !552, line: 197, size: 1088, elements: !3236)
!3236 = !{!3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3235, file: !552, line: 199, baseType: !3159, size: 64)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3235, file: !552, line: 200, baseType: !288, size: 64, offset: 64)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3235, file: !552, line: 201, baseType: !647, size: 64, offset: 128)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3235, file: !552, line: 202, baseType: !138, size: 64, offset: 192)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3235, file: !552, line: 205, baseType: !1109, size: 192, offset: 256)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3235, file: !552, line: 206, baseType: !1109, size: 192, offset: 448)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3235, file: !552, line: 207, baseType: !194, size: 32, offset: 640)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3235, file: !552, line: 208, baseType: !155, size: 128, offset: 704)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3235, file: !552, line: 209, baseType: !210, size: 64, offset: 832)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3235, file: !552, line: 211, baseType: !257, size: 64, offset: 896)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3235, file: !552, line: 212, baseType: !423, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3235, file: !552, line: 213, baseType: !423, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3235, file: !552, line: 214, baseType: !945, size: 64, offset: 1024)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3228, file: !552, line: 223, baseType: !3251, size: 64, offset: 64)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = !DISubroutineType(types: !3253)
!3253 = !{null, !3234}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3228, file: !552, line: 236, baseType: !3255, size: 64, offset: 128)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = !DISubroutineType(types: !3257)
!3257 = !{!194, !647, !138}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3228, file: !552, line: 238, baseType: !3259, size: 64, offset: 192)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{!138, !647, !2811}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3228, file: !552, line: 239, baseType: !3263, size: 64, offset: 256)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DISubroutineType(types: !3265)
!3265 = !{!138, !647, !138, !2811}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3228, file: !552, line: 240, baseType: !3267, size: 64, offset: 320)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{null, !647, !138}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3228, file: !552, line: 242, baseType: !3271, size: 64, offset: 384)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DISubroutineType(types: !3273)
!3273 = !{!241, !3234, !210, !257, !464}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3228, file: !552, line: 252, baseType: !257, size: 64, offset: 448)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3228, file: !552, line: 259, baseType: !423, size: 8, offset: 512)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3228, file: !552, line: 260, baseType: !3271, size: 64, offset: 576)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3228, file: !552, line: 263, baseType: !3278, size: 64, offset: 640)
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3279 = !DISubroutineType(types: !3280)
!3280 = !{!2840, !3234, !2842}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3228, file: !552, line: 266, baseType: !3282, size: 64, offset: 704)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = !DISubroutineType(types: !3284)
!3284 = !{!194, !3234, !917}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3223, file: !552, line: 109, baseType: !3286, size: 64, offset: 64)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !552, line: 31, flags: DIFlagFwdDecl)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3223, file: !552, line: 110, baseType: !464, size: 64, offset: 128)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3223, file: !552, line: 111, baseType: !3159, size: 64, offset: 192)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3160, file: !552, line: 148, baseType: !138, size: 64, offset: 768)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3160, file: !552, line: 154, baseType: !355, size: 64, offset: 832)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3160, file: !552, line: 156, baseType: !252, size: 16, offset: 896)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3160, file: !552, line: 157, baseType: !251, size: 16, offset: 912)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3160, file: !552, line: 158, baseType: !3295, size: 64, offset: 960)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !552, line: 32, flags: DIFlagFwdDecl)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !147, file: !148, line: 71, baseType: !3298, size: 32, offset: 448)
!3298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3299, line: 19, size: 32, elements: !3300)
!3299 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3300 = !{!3301}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3298, file: !3299, line: 20, baseType: !1166, size: 32)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !147, file: !148, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !147, file: !148, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !147, file: !148, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !147, file: !148, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !147, file: !148, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !144, file: !73, line: 463, baseType: !3308, size: 64, offset: 512)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !144, file: !73, line: 465, baseType: !3310, size: 64, offset: 576)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !144, file: !73, line: 467, baseType: !151, size: 64, offset: 640)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !144, file: !73, line: 468, baseType: !3314, size: 64, offset: 704)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3316)
!3316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3317)
!3317 = !{!3318, !3319, !3320, !3324, !3329, !3333}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3316, file: !73, line: 88, baseType: !151, size: 64)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3316, file: !73, line: 89, baseType: !264, size: 64, offset: 64)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3316, file: !73, line: 90, baseType: !3321, size: 64, offset: 128)
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = !DISubroutineType(types: !3323)
!3323 = !{!194, !3308, !205}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3316, file: !73, line: 91, baseType: !3325, size: 64, offset: 192)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = !DISubroutineType(types: !3327)
!3327 = !{!210, !3308, !3328, !3156, !3157}
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3316, file: !73, line: 93, baseType: !3330, size: 64, offset: 256)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{null, !3308}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3316, file: !73, line: 95, baseType: !3334, size: 64, offset: 320)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3336)
!3336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3337)
!3337 = !{!3338, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3336, file: !80, line: 279, baseType: !3339, size: 64)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!194, !3308}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3336, file: !80, line: 280, baseType: !3330, size: 64, offset: 64)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3336, file: !80, line: 281, baseType: !3339, size: 64, offset: 128)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3336, file: !80, line: 282, baseType: !3339, size: 64, offset: 192)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3336, file: !80, line: 283, baseType: !3339, size: 64, offset: 256)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3336, file: !80, line: 284, baseType: !3339, size: 64, offset: 320)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3336, file: !80, line: 285, baseType: !3339, size: 64, offset: 384)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3336, file: !80, line: 286, baseType: !3339, size: 64, offset: 448)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3336, file: !80, line: 287, baseType: !3339, size: 64, offset: 512)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3336, file: !80, line: 288, baseType: !3339, size: 64, offset: 576)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3336, file: !80, line: 289, baseType: !3339, size: 64, offset: 640)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3336, file: !80, line: 290, baseType: !3339, size: 64, offset: 704)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3336, file: !80, line: 291, baseType: !3339, size: 64, offset: 768)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3336, file: !80, line: 292, baseType: !3339, size: 64, offset: 832)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3336, file: !80, line: 293, baseType: !3339, size: 64, offset: 896)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3336, file: !80, line: 294, baseType: !3339, size: 64, offset: 960)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3336, file: !80, line: 295, baseType: !3339, size: 64, offset: 1024)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3336, file: !80, line: 296, baseType: !3339, size: 64, offset: 1088)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3336, file: !80, line: 297, baseType: !3339, size: 64, offset: 1152)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3336, file: !80, line: 298, baseType: !3339, size: 64, offset: 1216)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3336, file: !80, line: 299, baseType: !3339, size: 64, offset: 1280)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3336, file: !80, line: 300, baseType: !3339, size: 64, offset: 1344)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3336, file: !80, line: 301, baseType: !3339, size: 64, offset: 1408)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !144, file: !73, line: 470, baseType: !3365, size: 64, offset: 768)
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3367, line: 82, size: 1408, elements: !3368)
!3367 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3368 = !{!3369, !3370, !3371, !3372, !3373, !3374, !3375, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3450, !3453, !3454}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3366, file: !3367, line: 83, baseType: !151, size: 64)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3366, file: !3367, line: 84, baseType: !151, size: 64, offset: 64)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3366, file: !3367, line: 85, baseType: !3308, size: 64, offset: 128)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3366, file: !3367, line: 86, baseType: !264, size: 64, offset: 192)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3366, file: !3367, line: 87, baseType: !264, size: 64, offset: 256)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3366, file: !3367, line: 88, baseType: !264, size: 64, offset: 320)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3366, file: !3367, line: 90, baseType: !3376, size: 64, offset: 384)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{!194, !3308, !3379}
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3381)
!3381 = !{!3382, !3383, !3384, !3385, !3386, !3387, !3388, !3401, !3414, !3415, !3416, !3417, !3418, !3426, !3427, !3428, !3429, !3430, !3431}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3380, file: !67, line: 96, baseType: !151, size: 64)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3380, file: !67, line: 97, baseType: !3365, size: 64, offset: 64)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3380, file: !67, line: 99, baseType: !566, size: 64, offset: 128)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3380, file: !67, line: 100, baseType: !151, size: 64, offset: 192)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3380, file: !67, line: 102, baseType: !423, size: 8, offset: 256)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3380, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3380, file: !67, line: 105, baseType: !3389, size: 64, offset: 320)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3391)
!3391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3392, line: 262, size: 1600, elements: !3393)
!3392 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3393 = !{!3394, !3395, !3396, !3400}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3391, file: !3392, line: 263, baseType: !2635, size: 256)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3391, file: !3392, line: 264, baseType: !2635, size: 256, offset: 256)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3391, file: !3392, line: 265, baseType: !3397, size: 1024, offset: 512)
!3397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 1024, elements: !3398)
!3398 = !{!3399}
!3399 = !DISubrange(count: 128)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3391, file: !3392, line: 266, baseType: !2062, size: 64, offset: 1536)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3380, file: !67, line: 106, baseType: !3402, size: 64, offset: 384)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3404)
!3404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3392, line: 210, size: 256, elements: !3405)
!3405 = !{!3406, !3410, !3412, !3413}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3404, file: !3392, line: 211, baseType: !3407, size: 72)
!3407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 72, elements: !3408)
!3408 = !{!3409}
!3409 = !DISubrange(count: 9)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3404, file: !3392, line: 212, baseType: !3411, size: 64, offset: 128)
!3411 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3392, line: 14, baseType: !260)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3404, file: !3392, line: 213, baseType: !352, size: 32, offset: 192)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3404, file: !3392, line: 214, baseType: !352, size: 32, offset: 224)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3380, file: !67, line: 108, baseType: !3339, size: 64, offset: 448)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3380, file: !67, line: 109, baseType: !3330, size: 64, offset: 512)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3380, file: !67, line: 110, baseType: !3339, size: 64, offset: 576)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3380, file: !67, line: 111, baseType: !3330, size: 64, offset: 640)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3380, file: !67, line: 112, baseType: !3419, size: 64, offset: 704)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DISubroutineType(types: !3421)
!3421 = !{!194, !3308, !3422}
!3422 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3423)
!3423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3424)
!3424 = !{!3425}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3423, file: !80, line: 51, baseType: !194, size: 32)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3380, file: !67, line: 113, baseType: !3339, size: 64, offset: 768)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3380, file: !67, line: 114, baseType: !264, size: 64, offset: 832)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3380, file: !67, line: 115, baseType: !264, size: 64, offset: 896)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3380, file: !67, line: 117, baseType: !3334, size: 64, offset: 960)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3380, file: !67, line: 118, baseType: !3330, size: 64, offset: 1024)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3380, file: !67, line: 120, baseType: !3432, size: 64, offset: 1088)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3366, file: !3367, line: 91, baseType: !3321, size: 64, offset: 448)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3366, file: !3367, line: 92, baseType: !3339, size: 64, offset: 512)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3366, file: !3367, line: 93, baseType: !3330, size: 64, offset: 576)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3366, file: !3367, line: 94, baseType: !3339, size: 64, offset: 640)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3366, file: !3367, line: 95, baseType: !3330, size: 64, offset: 704)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3366, file: !3367, line: 97, baseType: !3339, size: 64, offset: 768)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3366, file: !3367, line: 98, baseType: !3339, size: 64, offset: 832)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3366, file: !3367, line: 100, baseType: !3419, size: 64, offset: 896)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3366, file: !3367, line: 101, baseType: !3339, size: 64, offset: 960)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3366, file: !3367, line: 103, baseType: !3339, size: 64, offset: 1024)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3366, file: !3367, line: 105, baseType: !3339, size: 64, offset: 1088)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3366, file: !3367, line: 107, baseType: !3334, size: 64, offset: 1152)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3366, file: !3367, line: 109, baseType: !3447, size: 64, offset: 1216)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3449)
!3449 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3367, line: 109, flags: DIFlagFwdDecl)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3366, file: !3367, line: 111, baseType: !3451, size: 64, offset: 1280)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3367, line: 111, flags: DIFlagFwdDecl)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3366, file: !3367, line: 112, baseType: !581, offset: 1344)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3366, file: !3367, line: 114, baseType: !423, size: 8, offset: 1344)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !144, file: !73, line: 471, baseType: !3379, size: 64, offset: 832)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !144, file: !73, line: 473, baseType: !138, size: 64, offset: 896)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !144, file: !73, line: 475, baseType: !138, size: 64, offset: 960)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !144, file: !73, line: 480, baseType: !1109, size: 192, offset: 1024)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !144, file: !73, line: 484, baseType: !3460, size: 576, offset: 1216)
!3460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3461)
!3461 = !{!3462, !3463, !3464, !3465, !3466, !3467}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3460, file: !73, line: 362, baseType: !155, size: 128)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3460, file: !73, line: 363, baseType: !155, size: 128, offset: 128)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3460, file: !73, line: 364, baseType: !155, size: 128, offset: 256)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3460, file: !73, line: 365, baseType: !155, size: 128, offset: 384)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3460, file: !73, line: 366, baseType: !423, size: 8, offset: 512)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3460, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !144, file: !73, line: 485, baseType: !3469, size: 2304, offset: 1792)
!3469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3470)
!3470 = !{!3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3566, !3570}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3469, file: !80, line: 566, baseType: !3422, size: 32)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3469, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3469, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3469, file: !80, line: 569, baseType: !423, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3469, file: !80, line: 570, baseType: !423, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3469, file: !80, line: 571, baseType: !423, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3469, file: !80, line: 572, baseType: !423, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3469, file: !80, line: 573, baseType: !423, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3469, file: !80, line: 574, baseType: !423, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3469, file: !80, line: 575, baseType: !423, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3469, file: !80, line: 576, baseType: !423, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3469, file: !80, line: 577, baseType: !351, size: 32, offset: 64)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3469, file: !80, line: 578, baseType: !168, offset: 96)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3469, file: !80, line: 580, baseType: !155, size: 128, offset: 128)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3469, file: !80, line: 581, baseType: !1436, size: 192, offset: 256)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3469, file: !80, line: 582, baseType: !3487, size: 64, offset: 448)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3489, line: 43, size: 1472, elements: !3490)
!3489 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3490 = !{!3491, !3492, !3493, !3494, !3495, !3498, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3488, file: !3489, line: 44, baseType: !151, size: 64)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3488, file: !3489, line: 45, baseType: !194, size: 32, offset: 64)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3488, file: !3489, line: 46, baseType: !155, size: 128, offset: 128)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3488, file: !3489, line: 47, baseType: !168, offset: 256)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3488, file: !3489, line: 48, baseType: !3496, size: 64, offset: 256)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3488, file: !3489, line: 49, baseType: !3499, size: 320, offset: 320)
!3499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3500, line: 11, size: 320, elements: !3501)
!3500 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3501 = !{!3502, !3503, !3504, !3509}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3499, file: !3500, line: 16, baseType: !575, size: 128)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3499, file: !3500, line: 17, baseType: !260, size: 64, offset: 128)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3499, file: !3500, line: 18, baseType: !3505, size: 64, offset: 192)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = !DISubroutineType(types: !3507)
!3507 = !{null, !3508}
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3499, file: !3500, line: 19, baseType: !351, size: 32, offset: 256)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3488, file: !3489, line: 50, baseType: !260, size: 64, offset: 640)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3488, file: !3489, line: 51, baseType: !1236, size: 64, offset: 704)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3488, file: !3489, line: 52, baseType: !1236, size: 64, offset: 768)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3488, file: !3489, line: 53, baseType: !1236, size: 64, offset: 832)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3488, file: !3489, line: 54, baseType: !1236, size: 64, offset: 896)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3488, file: !3489, line: 55, baseType: !1236, size: 64, offset: 960)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3488, file: !3489, line: 56, baseType: !260, size: 64, offset: 1024)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3488, file: !3489, line: 57, baseType: !260, size: 64, offset: 1088)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3488, file: !3489, line: 58, baseType: !260, size: 64, offset: 1152)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3488, file: !3489, line: 59, baseType: !260, size: 64, offset: 1216)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3488, file: !3489, line: 60, baseType: !260, size: 64, offset: 1280)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3488, file: !3489, line: 61, baseType: !3308, size: 64, offset: 1344)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3488, file: !3489, line: 62, baseType: !423, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3488, file: !3489, line: 63, baseType: !423, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3469, file: !80, line: 583, baseType: !423, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3469, file: !80, line: 584, baseType: !423, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3469, file: !80, line: 585, baseType: !423, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3469, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3469, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3469, file: !80, line: 592, baseType: !1228, size: 512, offset: 576)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3469, file: !80, line: 593, baseType: !355, size: 64, offset: 1088)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3469, file: !80, line: 594, baseType: !1892, size: 256, offset: 1152)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3469, file: !80, line: 595, baseType: !1415, size: 128, offset: 1408)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3469, file: !80, line: 596, baseType: !3496, size: 64, offset: 1536)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3469, file: !80, line: 597, baseType: !683, size: 32, offset: 1600)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3469, file: !80, line: 598, baseType: !683, size: 32, offset: 1632)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3469, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3469, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3469, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3469, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3469, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3469, file: !80, line: 604, baseType: !423, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3469, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3469, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3469, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3469, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3469, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3469, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3469, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3469, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3469, file: !80, line: 613, baseType: !194, size: 32, offset: 1792)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3469, file: !80, line: 614, baseType: !194, size: 32, offset: 1824)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3469, file: !80, line: 615, baseType: !355, size: 64, offset: 1856)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3469, file: !80, line: 616, baseType: !355, size: 64, offset: 1920)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3469, file: !80, line: 617, baseType: !355, size: 64, offset: 1984)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3469, file: !80, line: 618, baseType: !355, size: 64, offset: 2048)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3469, file: !80, line: 620, baseType: !3557, size: 64, offset: 2112)
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3559)
!3559 = !{!3560, !3561, !3562, !3563}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3558, file: !80, line: 537, baseType: !168)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3558, file: !80, line: 538, baseType: !7, size: 32)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3558, file: !80, line: 540, baseType: !155, size: 128, offset: 64)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3558, file: !80, line: 543, baseType: !3564, size: 64, offset: 192)
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3565 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3469, file: !80, line: 621, baseType: !3567, size: 64, offset: 2176)
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!3568 = !DISubroutineType(types: !3569)
!3569 = !{null, !3308, !1378}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3469, file: !80, line: 622, baseType: !3571, size: 64, offset: 2240)
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3572 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !144, file: !73, line: 486, baseType: !3574, size: 64, offset: 4096)
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3576)
!3576 = !{!3577, !3578, !3579, !3583, !3584, !3585}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3575, file: !80, line: 643, baseType: !3336, size: 1472)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3575, file: !80, line: 644, baseType: !3339, size: 64, offset: 1472)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3575, file: !80, line: 645, baseType: !3580, size: 64, offset: 1536)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = !DISubroutineType(types: !3582)
!3582 = !{null, !3308, !423}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3575, file: !80, line: 646, baseType: !3339, size: 64, offset: 1600)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3575, file: !80, line: 647, baseType: !3330, size: 64, offset: 1664)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3575, file: !80, line: 648, baseType: !3330, size: 64, offset: 1728)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !144, file: !73, line: 493, baseType: !3587, size: 64, offset: 4160)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !73, line: 493, flags: DIFlagFwdDecl)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !144, file: !73, line: 499, baseType: !155, size: 128, offset: 4224)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !144, file: !73, line: 502, baseType: !3591, size: 64, offset: 4352)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3593)
!3593 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !144, file: !73, line: 504, baseType: !3595, size: 64, offset: 4416)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !144, file: !73, line: 505, baseType: !355, size: 64, offset: 4480)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !144, file: !73, line: 510, baseType: !355, size: 64, offset: 4544)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !144, file: !73, line: 511, baseType: !3599, size: 64, offset: 4608)
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3601)
!3601 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !144, file: !73, line: 513, baseType: !3603, size: 64, offset: 4672)
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!3604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3605)
!3605 = !{!3606, !3607}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3604, file: !73, line: 293, baseType: !7, size: 32)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3604, file: !73, line: 294, baseType: !260, size: 64, offset: 64)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !144, file: !73, line: 515, baseType: !155, size: 128, offset: 4736)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !144, file: !73, line: 526, baseType: !3610, offset: 4864)
!3610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3611, line: 5, elements: !182)
!3611 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !144, file: !73, line: 528, baseType: !3613, size: 64, offset: 4864)
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3614 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3615, line: 14, flags: DIFlagFwdDecl)
!3615 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !144, file: !73, line: 529, baseType: !3617, size: 64, offset: 4928)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3619, line: 17, size: 192, elements: !3620)
!3619 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3620 = !{!3621, !3622, !3705}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3618, file: !3619, line: 18, baseType: !3617, size: 64)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3618, file: !3619, line: 19, baseType: !3623, size: 64, offset: 64)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3625)
!3625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3619, line: 110, size: 1152, elements: !3626)
!3626 = !{!3627, !3631, !3635, !3641, !3647, !3651, !3655, !3660, !3664, !3665, !3669, !3673, !3677, !3688, !3689, !3690, !3691, !3701}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3625, file: !3619, line: 111, baseType: !3628, size: 64)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = !DISubroutineType(types: !3630)
!3630 = !{!3617, !3617}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3625, file: !3619, line: 112, baseType: !3632, size: 64, offset: 64)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = !DISubroutineType(types: !3634)
!3634 = !{null, !3617}
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3625, file: !3619, line: 113, baseType: !3636, size: 64, offset: 128)
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3637 = !DISubroutineType(types: !3638)
!3638 = !{!423, !3639}
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3618)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3625, file: !3619, line: 114, baseType: !3642, size: 64, offset: 192)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!2062, !3639, !3645}
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3625, file: !3619, line: 116, baseType: !3648, size: 64, offset: 256)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = !DISubroutineType(types: !3650)
!3650 = !{!423, !3639, !151}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3625, file: !3619, line: 118, baseType: !3652, size: 64, offset: 320)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = !DISubroutineType(types: !3654)
!3654 = !{!194, !3639, !151, !7, !138, !257}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3625, file: !3619, line: 123, baseType: !3656, size: 64, offset: 384)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = !DISubroutineType(types: !3658)
!3658 = !{!194, !3639, !151, !3659, !257}
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3625, file: !3619, line: 126, baseType: !3661, size: 64, offset: 448)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = !DISubroutineType(types: !3663)
!3663 = !{!151, !3639}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3625, file: !3619, line: 127, baseType: !3661, size: 64, offset: 512)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3625, file: !3619, line: 128, baseType: !3666, size: 64, offset: 576)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = !DISubroutineType(types: !3668)
!3668 = !{!3617, !3639}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3625, file: !3619, line: 130, baseType: !3670, size: 64, offset: 640)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{!3617, !3639, !3617}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3625, file: !3619, line: 133, baseType: !3674, size: 64, offset: 704)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DISubroutineType(types: !3676)
!3676 = !{!3617, !3639, !151}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3625, file: !3619, line: 135, baseType: !3678, size: 64, offset: 768)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DISubroutineType(types: !3680)
!3680 = !{!194, !3639, !151, !151, !7, !7, !3681}
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3619, line: 43, size: 640, elements: !3683)
!3683 = !{!3684, !3685, !3686}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3682, file: !3619, line: 44, baseType: !3617, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3682, file: !3619, line: 45, baseType: !7, size: 32, offset: 64)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3682, file: !3619, line: 46, baseType: !3687, size: 512, offset: 128)
!3687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 512, elements: !1266)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3625, file: !3619, line: 140, baseType: !3670, size: 64, offset: 832)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3625, file: !3619, line: 143, baseType: !3666, size: 64, offset: 896)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3625, file: !3619, line: 145, baseType: !3628, size: 64, offset: 960)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3625, file: !3619, line: 146, baseType: !3692, size: 64, offset: 1024)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{!194, !3639, !3695}
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3619, line: 29, size: 128, elements: !3697)
!3697 = !{!3698, !3699, !3700}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3696, file: !3619, line: 30, baseType: !7, size: 32)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3696, file: !3619, line: 31, baseType: !7, size: 32, offset: 32)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3696, file: !3619, line: 32, baseType: !3639, size: 64, offset: 64)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3625, file: !3619, line: 148, baseType: !3702, size: 64, offset: 1088)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{!194, !3639, !3308}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3618, file: !3619, line: 20, baseType: !3308, size: 64, offset: 128)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !144, file: !73, line: 534, baseType: !446, size: 32, offset: 4992)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !144, file: !73, line: 535, baseType: !351, size: 32, offset: 5024)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !144, file: !73, line: 537, baseType: !168, offset: 5056)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !144, file: !73, line: 538, baseType: !155, size: 128, offset: 5056)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !144, file: !73, line: 540, baseType: !3711, size: 64, offset: 5184)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3713, line: 54, size: 960, elements: !3714)
!3713 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3714 = !{!3715, !3716, !3717, !3718, !3719, !3720, !3721, !3725, !3729, !3730, !3731, !3732, !3736, !3740, !3741}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3712, file: !3713, line: 55, baseType: !151, size: 64)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3712, file: !3713, line: 56, baseType: !566, size: 64, offset: 64)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3712, file: !3713, line: 58, baseType: !264, size: 64, offset: 128)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3712, file: !3713, line: 59, baseType: !264, size: 64, offset: 192)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3712, file: !3713, line: 60, baseType: !161, size: 64, offset: 256)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3712, file: !3713, line: 62, baseType: !3321, size: 64, offset: 320)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3712, file: !3713, line: 63, baseType: !3722, size: 64, offset: 384)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{!210, !3308, !3328}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3712, file: !3713, line: 65, baseType: !3726, size: 64, offset: 448)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{null, !3711}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3712, file: !3713, line: 66, baseType: !3330, size: 64, offset: 512)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3712, file: !3713, line: 68, baseType: !3339, size: 64, offset: 576)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3712, file: !3713, line: 70, baseType: !3124, size: 64, offset: 640)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3712, file: !3713, line: 71, baseType: !3733, size: 64, offset: 704)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!2062, !3308}
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3712, file: !3713, line: 73, baseType: !3737, size: 64, offset: 768)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{null, !3308, !3156, !3157}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3712, file: !3713, line: 75, baseType: !3334, size: 64, offset: 832)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3712, file: !3713, line: 77, baseType: !3451, size: 64, offset: 896)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !144, file: !73, line: 541, baseType: !264, size: 64, offset: 5248)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !144, file: !73, line: 543, baseType: !3330, size: 64, offset: 5312)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !144, file: !73, line: 544, baseType: !3745, size: 64, offset: 5376)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !144, file: !73, line: 545, baseType: !3748, size: 64, offset: 5440)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !144, file: !73, line: 547, baseType: !423, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !144, file: !73, line: 548, baseType: !423, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !144, file: !73, line: 549, baseType: !423, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !144, file: !73, line: 550, baseType: !423, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "intf", scope: !140, file: !141, line: 22, baseType: !3755, size: 64, offset: 5568)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_interface", file: !111, line: 31, size: 7168, elements: !3757)
!3757 = !{!3758, !3759, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3756, file: !111, line: 32, baseType: !144, size: 5568)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !3756, file: !111, line: 33, baseType: !3760, size: 64, offset: 5568)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_control", file: !3762, line: 15, size: 5888, elements: !3763)
!3762 = !DIFile(filename: "./include/linux/greybus/control.h", directory: "/home/lizy2001/genbc/linux")
!3763 = !{!3764, !3765, !3766, !3925, !3926, !3927, !3928, !3929, !3930}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3761, file: !3762, line: 16, baseType: !144, size: 5568)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "intf", scope: !3761, file: !3762, line: 17, baseType: !3755, size: 64, offset: 5568)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !3761, file: !3762, line: 19, baseType: !3767, size: 64, offset: 5632)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_connection", file: !104, line: 38, size: 1408, elements: !3769)
!3769 = !{!3770, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "hd", scope: !3768, file: !104, line: 39, baseType: !3771, size: 64)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_host_device", file: !3773, line: 44, size: 6272, elements: !3774)
!3773 = !DIFile(filename: "./include/linux/greybus/hd.h", directory: "/home/lizy2001/genbc/linux")
!3774 = !{!3775, !3776, !3777, !3868, !3869, !3870, !3874, !3875, !3876, !3901}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3772, file: !3773, line: 45, baseType: !144, size: 5568)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !3772, file: !3773, line: 46, baseType: !194, size: 32, offset: 5568)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3772, file: !3773, line: 47, baseType: !3778, size: 64, offset: 5632)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3780)
!3780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_hd_driver", file: !3773, line: 18, size: 960, elements: !3781)
!3781 = !{!3782, !3783, !3787, !3791, !3795, !3799, !3800, !3801, !3805, !3809, !3810, !3858, !3862, !3863, !3864}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "hd_priv_size", scope: !3780, file: !3773, line: 19, baseType: !257, size: 64)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "cport_allocate", scope: !3780, file: !3773, line: 21, baseType: !3784, size: 64, offset: 64)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{!194, !3771, !194, !260}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "cport_release", scope: !3780, file: !3773, line: 23, baseType: !3788, size: 64, offset: 128)
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = !DISubroutineType(types: !3790)
!3790 = !{null, !3771, !795}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "cport_enable", scope: !3780, file: !3773, line: 24, baseType: !3792, size: 64, offset: 192)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DISubroutineType(types: !3794)
!3794 = !{!194, !3771, !795, !260}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "cport_disable", scope: !3780, file: !3773, line: 26, baseType: !3796, size: 64, offset: 256)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DISubroutineType(types: !3798)
!3798 = !{!194, !3771, !795}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "cport_connected", scope: !3780, file: !3773, line: 27, baseType: !3796, size: 64, offset: 320)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "cport_flush", scope: !3780, file: !3773, line: 28, baseType: !3796, size: 64, offset: 384)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "cport_shutdown", scope: !3780, file: !3773, line: 29, baseType: !3802, size: 64, offset: 448)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{!194, !3771, !795, !131, !7}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "cport_quiesce", scope: !3780, file: !3773, line: 31, baseType: !3806, size: 64, offset: 512)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!194, !3771, !795, !257, !7}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "cport_clear", scope: !3780, file: !3773, line: 33, baseType: !3796, size: 64, offset: 576)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "message_send", scope: !3780, file: !3773, line: 35, baseType: !3811, size: 64, offset: 640)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{!194, !3771, !795, !3814, !136}
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_message", file: !3816, line: 52, size: 384, elements: !3817)
!3816 = !DIFile(filename: "./include/linux/greybus/operation.h", directory: "/home/lizy2001/genbc/linux")
!3817 = !{!3818, !3842, !3854, !3855, !3856, !3857}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "operation", scope: !3815, file: !3816, line: 53, baseType: !3819, size: 64)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_operation", file: !3816, line: 92, size: 1472, elements: !3821)
!3821 = !{!3822, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3835, !3836, !3837, !3838, !3839, !3840, !3841}
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !3820, file: !3816, line: 93, baseType: !3767, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3820, file: !3816, line: 94, baseType: !3814, size: 64, offset: 64)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !3820, file: !3816, line: 95, baseType: !3814, size: 64, offset: 128)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3820, file: !3816, line: 97, baseType: !260, size: 64, offset: 192)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3820, file: !3816, line: 98, baseType: !131, size: 8, offset: 256)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3820, file: !3816, line: 99, baseType: !795, size: 16, offset: 272)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "errno", scope: !3820, file: !3816, line: 100, baseType: !194, size: 32, offset: 288)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3820, file: !3816, line: 102, baseType: !1892, size: 256, offset: 320)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !3820, file: !3816, line: 103, baseType: !3831, size: 64, offset: 576)
!3831 = !DIDerivedType(tag: DW_TAG_typedef, name: "gb_operation_callback", file: !3816, line: 91, baseType: !3832)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{null, !3819}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3820, file: !3816, line: 104, baseType: !1436, size: 192, offset: 640)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3820, file: !3816, line: 105, baseType: !3499, size: 320, offset: 832)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3820, file: !3816, line: 107, baseType: !3298, size: 32, offset: 1152)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3820, file: !3816, line: 108, baseType: !683, size: 32, offset: 1184)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3820, file: !3816, line: 110, baseType: !194, size: 32, offset: 1216)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3820, file: !3816, line: 111, baseType: !155, size: 128, offset: 1280)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3820, file: !3816, line: 113, baseType: !138, size: 64, offset: 1408)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3815, file: !3816, line: 54, baseType: !3843, size: 64, offset: 64)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_operation_msg_hdr", file: !3845, line: 46, size: 64, elements: !3846)
!3845 = !DIFile(filename: "./include/linux/greybus/greybus_protocols.h", directory: "/home/lizy2001/genbc/linux")
!3846 = !{!3847, !3849, !3850, !3851, !3852}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3844, file: !3845, line: 47, baseType: !3848, size: 16)
!3848 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !2841, line: 29, baseType: !796)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "operation_id", scope: !3844, file: !3845, line: 48, baseType: !3848, size: 16, offset: 16)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3844, file: !3845, line: 49, baseType: !133, size: 8, offset: 32)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !3844, file: !3845, line: 50, baseType: !133, size: 8, offset: 40)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !3844, file: !3845, line: 51, baseType: !3853, size: 16, offset: 48)
!3853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 16, elements: !1503)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !3815, file: !3816, line: 56, baseType: !138, size: 64, offset: 128)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "payload_size", scope: !3815, file: !3816, line: 57, baseType: !257, size: 64, offset: 192)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3815, file: !3816, line: 59, baseType: !138, size: 64, offset: 256)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !3815, file: !3816, line: 61, baseType: !138, size: 64, offset: 320)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "message_cancel", scope: !3780, file: !3773, line: 37, baseType: !3859, size: 64, offset: 704)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DISubroutineType(types: !3861)
!3861 = !{null, !3814}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tag_enable", scope: !3780, file: !3773, line: 38, baseType: !3796, size: 64, offset: 768)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tag_disable", scope: !3780, file: !3773, line: 39, baseType: !3796, size: 64, offset: 832)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !3780, file: !3773, line: 40, baseType: !3865, size: 64, offset: 896)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!194, !3771, !138, !795, !131, !423}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !3772, file: !3773, line: 49, baseType: !155, size: 128, offset: 5696)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "connections", scope: !3772, file: !3773, line: 50, baseType: !155, size: 128, offset: 5824)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "cport_id_map", scope: !3772, file: !3773, line: 51, baseType: !3871, size: 128, offset: 5952)
!3871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !3185, line: 244, size: 128, elements: !3872)
!3872 = !{!3873}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3871, file: !3185, line: 245, baseType: !675, size: 128)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "num_cports", scope: !3772, file: !3773, line: 54, baseType: !257, size: 64, offset: 6080)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_size_max", scope: !3772, file: !3773, line: 57, baseType: !257, size: 64, offset: 6144)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "svc", scope: !3772, file: !3773, line: 59, baseType: !3877, size: 64, offset: 6208)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_svc", file: !94, line: 39, size: 6272, elements: !3879)
!3879 = !{!3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3893, !3894, !3895}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3878, file: !94, line: 40, baseType: !144, size: 5568)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "hd", scope: !3878, file: !94, line: 42, baseType: !3771, size: 64, offset: 5568)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !3878, file: !94, line: 43, baseType: !3767, size: 64, offset: 5632)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3878, file: !94, line: 44, baseType: !93, size: 32, offset: 5696)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "device_id_map", scope: !3878, file: !94, line: 45, baseType: !3871, size: 128, offset: 5760)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3878, file: !94, line: 46, baseType: !2728, size: 64, offset: 5888)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "endo_id", scope: !3878, file: !94, line: 48, baseType: !795, size: 16, offset: 5952)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "ap_intf_id", scope: !3878, file: !94, line: 49, baseType: !131, size: 8, offset: 5968)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_major", scope: !3878, file: !94, line: 51, baseType: !131, size: 8, offset: 5976)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_minor", scope: !3878, file: !94, line: 52, baseType: !131, size: 8, offset: 5984)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog", scope: !3878, file: !94, line: 54, baseType: !3891, size: 64, offset: 6016)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DICompositeType(tag: DW_TAG_structure_type, name: "gb_svc_watchdog", file: !94, line: 32, flags: DIFlagFwdDecl)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3878, file: !94, line: 55, baseType: !99, size: 32, offset: 6080)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dentry", scope: !3878, file: !94, line: 57, baseType: !318, size: 64, offset: 6144)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "pwrmon_rails", scope: !3878, file: !94, line: 58, baseType: !3896, size: 64, offset: 6208)
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3897, size: 64)
!3897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "svc_debugfs_pwrmon_rail", file: !94, line: 34, size: 128, elements: !3898)
!3898 = !{!3899, !3900}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3897, file: !94, line: 35, baseType: !131, size: 8)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "svc", scope: !3897, file: !94, line: 36, baseType: !3877, size: 64, offset: 64)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "hd_priv", scope: !3772, file: !3773, line: 61, baseType: !3902, align: 64, offset: 6272)
!3902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, elements: !1657)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "intf", scope: !3768, file: !104, line: 40, baseType: !3755, size: 64, offset: 64)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "bundle", scope: !3768, file: !104, line: 41, baseType: !139, size: 64, offset: 128)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3768, file: !104, line: 42, baseType: !3298, size: 32, offset: 192)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "hd_cport_id", scope: !3768, file: !104, line: 43, baseType: !795, size: 16, offset: 224)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "intf_cport_id", scope: !3768, file: !104, line: 44, baseType: !795, size: 16, offset: 240)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "hd_links", scope: !3768, file: !104, line: 46, baseType: !155, size: 128, offset: 256)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "bundle_links", scope: !3768, file: !104, line: 47, baseType: !155, size: 128, offset: 384)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !3768, file: !104, line: 49, baseType: !3911, size: 64, offset: 512)
!3911 = !DIDerivedType(tag: DW_TAG_typedef, name: "gb_request_handler_t", file: !104, line: 36, baseType: !3912)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DISubroutineType(types: !3914)
!3914 = !{!194, !3819}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3768, file: !104, line: 50, baseType: !260, size: 64, offset: 576)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3768, file: !104, line: 52, baseType: !1109, size: 192, offset: 640)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3768, file: !104, line: 53, baseType: !168, offset: 832)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3768, file: !104, line: 54, baseType: !103, size: 32, offset: 832)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "operations", scope: !3768, file: !104, line: 55, baseType: !155, size: 128, offset: 896)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3768, file: !104, line: 57, baseType: !1668, size: 128, offset: 1024)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3768, file: !104, line: 58, baseType: !2728, size: 64, offset: 1152)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "op_cycle", scope: !3768, file: !104, line: 60, baseType: !683, size: 32, offset: 1216)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3768, file: !104, line: 62, baseType: !138, size: 64, offset: 1280)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "mode_switch", scope: !3768, file: !104, line: 64, baseType: !423, size: 8, offset: 1344)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_major", scope: !3761, file: !3762, line: 21, baseType: !131, size: 8, offset: 5696)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_minor", scope: !3761, file: !3762, line: 22, baseType: !131, size: 8, offset: 5704)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "has_bundle_activate", scope: !3761, file: !3762, line: 24, baseType: !423, size: 8, offset: 5712)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "has_bundle_version", scope: !3761, file: !3762, line: 25, baseType: !423, size: 8, offset: 5720)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_string", scope: !3761, file: !3762, line: 27, baseType: !210, size: 64, offset: 5760)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "product_string", scope: !3761, file: !3762, line: 28, baseType: !210, size: 64, offset: 5824)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "bundles", scope: !3756, file: !111, line: 35, baseType: !155, size: 128, offset: 5632)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "module_node", scope: !3756, file: !111, line: 36, baseType: !155, size: 128, offset: 5760)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "manifest_descs", scope: !3756, file: !111, line: 37, baseType: !155, size: 128, offset: 5888)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "interface_id", scope: !3756, file: !111, line: 38, baseType: !131, size: 8, offset: 6016)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "device_id", scope: !3756, file: !111, line: 39, baseType: !131, size: 8, offset: 6024)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !3756, file: !111, line: 40, baseType: !131, size: 8, offset: 6032)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3756, file: !111, line: 42, baseType: !110, size: 32, offset: 6048)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "ddbl1_manufacturer_id", scope: !3756, file: !111, line: 44, baseType: !351, size: 32, offset: 6080)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "ddbl1_product_id", scope: !3756, file: !111, line: 45, baseType: !351, size: 32, offset: 6112)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_id", scope: !3756, file: !111, line: 46, baseType: !351, size: 32, offset: 6144)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "product_id", scope: !3756, file: !111, line: 47, baseType: !351, size: 32, offset: 6176)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "serial_number", scope: !3756, file: !111, line: 48, baseType: !355, size: 64, offset: 6208)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "hd", scope: !3756, file: !111, line: 50, baseType: !3771, size: 64, offset: 6272)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !3756, file: !111, line: 51, baseType: !3945, size: 64, offset: 6336)
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3946, size: 64)
!3946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_module", file: !3947, line: 15, size: 5952, elements: !3948)
!3947 = !DIFile(filename: "./include/linux/greybus/module.h", directory: "/home/lizy2001/genbc/linux")
!3948 = !{!3949, !3950, !3951, !3952, !3953, !3954, !3955}
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3946, file: !3947, line: 16, baseType: !144, size: 5568)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "hd", scope: !3946, file: !3947, line: 17, baseType: !3771, size: 64, offset: 5568)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "hd_node", scope: !3946, file: !3947, line: 19, baseType: !155, size: 128, offset: 5632)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "module_id", scope: !3946, file: !3947, line: 21, baseType: !131, size: 8, offset: 5760)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "num_interfaces", scope: !3946, file: !3947, line: 22, baseType: !257, size: 64, offset: 5824)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !3946, file: !3947, line: 24, baseType: !423, size: 8, offset: 5888)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "interfaces", scope: !3946, file: !3947, line: 26, baseType: !3956, offset: 5952)
!3956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3755, elements: !1657)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !3756, file: !111, line: 53, baseType: !260, size: 64, offset: 6400)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3756, file: !111, line: 55, baseType: !1109, size: 192, offset: 6464)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !3756, file: !111, line: 57, baseType: !423, size: 8, offset: 6656)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "ejected", scope: !3756, file: !111, line: 59, baseType: !423, size: 8, offset: 6664)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !3756, file: !111, line: 60, baseType: !423, size: 8, offset: 6672)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3756, file: !111, line: 61, baseType: !423, size: 8, offset: 6680)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3756, file: !111, line: 62, baseType: !423, size: 8, offset: 6688)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "mode_switch", scope: !3756, file: !111, line: 63, baseType: !423, size: 8, offset: 6696)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "dme_read", scope: !3756, file: !111, line: 64, baseType: !423, size: 8, offset: 6704)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "mode_switch_work", scope: !3756, file: !111, line: 66, baseType: !1892, size: 256, offset: 6720)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "mode_switch_completion", scope: !3756, file: !111, line: 67, baseType: !1436, size: 192, offset: 6976)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !140, file: !141, line: 24, baseType: !131, size: 8, offset: 5632)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !140, file: !141, line: 25, baseType: !131, size: 8, offset: 5640)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "class_major", scope: !140, file: !141, line: 26, baseType: !131, size: 8, offset: 5648)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "class_minor", scope: !140, file: !141, line: 27, baseType: !131, size: 8, offset: 5656)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "num_cports", scope: !140, file: !141, line: 29, baseType: !257, size: 64, offset: 5696)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "cport_desc", scope: !140, file: !141, line: 30, baseType: !3974, size: 64, offset: 5760)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "greybus_descriptor_cport", file: !3976, line: 148, size: 32, elements: !3977)
!3976 = !DIFile(filename: "./include/linux/greybus/greybus_manifest.h", directory: "/home/lizy2001/genbc/linux")
!3977 = !{!3978, !3979, !3980}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3975, file: !3976, line: 149, baseType: !3848, size: 16)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "bundle", scope: !3975, file: !3976, line: 150, baseType: !133, size: 8, offset: 16)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_id", scope: !3975, file: !3976, line: 151, baseType: !133, size: 8, offset: 24)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "connections", scope: !140, file: !141, line: 32, baseType: !155, size: 128, offset: 5824)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !140, file: !141, line: 33, baseType: !3983, size: 64, offset: 5952)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !140, file: !141, line: 35, baseType: !155, size: 128, offset: 6016)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !355)
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3988, size: 64)
!3988 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !158)
!3989 = !{!3990, !0, !3992, !3995, !3997, !4000, !4014, !4016}
!3990 = !DIGlobalVariableExpression(var: !3991, expr: !DIExpression())
!3991 = distinct !DIGlobalVariable(name: "greybus_bundle_type", scope: !2, file: !3, line: 169, type: !3316, isLocal: false, isDefinition: true)
!3992 = !DIGlobalVariableExpression(var: !3993, expr: !DIExpression())
!3993 = distinct !DIGlobalVariable(name: "bundle_groups", scope: !2, file: !3, line: 65, type: !3994, isLocal: true, isDefinition: true)
!3994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 128, elements: !1503)
!3995 = !DIGlobalVariableExpression(var: !3996, expr: !DIExpression())
!3996 = distinct !DIGlobalVariable(name: "bundle_group", scope: !2, file: !3, line: 65, type: !266, isLocal: true, isDefinition: true)
!3997 = !DIGlobalVariableExpression(var: !3998, expr: !DIExpression())
!3998 = distinct !DIGlobalVariable(name: "bundle_attrs", scope: !2, file: !3, line: 58, type: !3999, isLocal: true, isDefinition: true)
!3999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 256, elements: !1091)
!4000 = !DIGlobalVariableExpression(var: !4001, expr: !DIExpression())
!4001 = distinct !DIGlobalVariable(name: "dev_attr_bundle_class", scope: !2, file: !3, line: 19, type: !4002, isLocal: true, isDefinition: true)
!4002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !73, line: 99, size: 256, elements: !4003)
!4003 = !{!4004, !4005, !4010}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4002, file: !73, line: 100, baseType: !247, size: 128)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4002, file: !73, line: 101, baseType: !4006, size: 64, offset: 128)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DISubroutineType(types: !4008)
!4008 = !{!241, !3308, !4009, !210}
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4002, file: !73, line: 103, baseType: !4011, size: 64, offset: 192)
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4012 = !DISubroutineType(types: !4013)
!4013 = !{!241, !3308, !4009, !151, !257}
!4014 = !DIGlobalVariableExpression(var: !4015, expr: !DIExpression())
!4015 = distinct !DIGlobalVariable(name: "dev_attr_bundle_id", scope: !2, file: !3, line: 28, type: !4002, isLocal: true, isDefinition: true)
!4016 = !DIGlobalVariableExpression(var: !4017, expr: !DIExpression())
!4017 = distinct !DIGlobalVariable(name: "dev_attr_state", scope: !2, file: !3, line: 56, type: !4002, isLocal: true, isDefinition: true)
!4018 = !{i32 7, !"Dwarf Version", i32 4}
!4019 = !{i32 2, !"Debug Info Version", i32 3}
!4020 = !{i32 1, !"wchar_size", i32 2}
!4021 = !{i32 1, !"Code Model", i32 2}
!4022 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4023 = distinct !DISubprogram(name: "gb_bundle_release", scope: !3, file: !3, line: 80, type: !3331, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!4024 = !DILocalVariable(name: "dev", arg: 1, scope: !4023, file: !3, line: 80, type: !3308)
!4025 = !DILocation(line: 80, column: 46, scope: !4023)
!4026 = !DILocalVariable(name: "bundle", scope: !4023, file: !3, line: 82, type: !139)
!4027 = !DILocation(line: 82, column: 20, scope: !4023)
!4028 = !DILocalVariable(name: "__mptr", scope: !4029, file: !3, line: 82, type: !138)
!4029 = distinct !DILexicalBlock(scope: !4023, file: !3, line: 82, column: 29)
!4030 = !DILocation(line: 82, column: 29, scope: !4029)
!4031 = !DILocation(line: 82, column: 29, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !4029, file: !3, line: 82, column: 29)
!4033 = !DILocation(line: 84, column: 26, scope: !4023)
!4034 = !DILocation(line: 84, column: 2, scope: !4023)
!4035 = !DILocation(line: 86, column: 8, scope: !4023)
!4036 = !DILocation(line: 86, column: 16, scope: !4023)
!4037 = !DILocation(line: 86, column: 2, scope: !4023)
!4038 = !DILocation(line: 87, column: 8, scope: !4023)
!4039 = !DILocation(line: 87, column: 16, scope: !4023)
!4040 = !DILocation(line: 87, column: 2, scope: !4023)
!4041 = !DILocation(line: 88, column: 8, scope: !4023)
!4042 = !DILocation(line: 88, column: 2, scope: !4023)
!4043 = !DILocation(line: 89, column: 1, scope: !4023)
!4044 = distinct !DISubprogram(name: "gb_bundle_create", scope: !3, file: !3, line: 180, type: !4045, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !182)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{!139, !3755, !131, !131}
!4047 = !DILocalVariable(name: "intf", arg: 1, scope: !4044, file: !3, line: 180, type: !3755)
!4048 = !DILocation(line: 180, column: 57, scope: !4044)
!4049 = !DILocalVariable(name: "bundle_id", arg: 2, scope: !4044, file: !3, line: 180, type: !131)
!4050 = !DILocation(line: 180, column: 66, scope: !4044)
!4051 = !DILocalVariable(name: "class", arg: 3, scope: !4044, file: !3, line: 181, type: !131)
!4052 = !DILocation(line: 181, column: 11, scope: !4044)
!4053 = !DILocalVariable(name: "bundle", scope: !4044, file: !3, line: 183, type: !139)
!4054 = !DILocation(line: 183, column: 20, scope: !4044)
!4055 = !DILocation(line: 185, column: 6, scope: !4056)
!4056 = distinct !DILexicalBlock(scope: !4044, file: !3, line: 185, column: 6)
!4057 = !DILocation(line: 185, column: 16, scope: !4056)
!4058 = !DILocation(line: 185, column: 6, scope: !4044)
!4059 = !DILocation(line: 186, column: 3, scope: !4060)
!4060 = distinct !DILexicalBlock(scope: !4056, file: !3, line: 185, column: 35)
!4061 = !DILocation(line: 187, column: 3, scope: !4060)
!4062 = !DILocation(line: 195, column: 21, scope: !4063)
!4063 = distinct !DILexicalBlock(scope: !4044, file: !3, line: 195, column: 6)
!4064 = !DILocation(line: 195, column: 27, scope: !4063)
!4065 = !DILocation(line: 195, column: 6, scope: !4063)
!4066 = !DILocation(line: 195, column: 6, scope: !4044)
!4067 = !DILocation(line: 196, column: 3, scope: !4068)
!4068 = distinct !DILexicalBlock(scope: !4063, file: !3, line: 195, column: 39)
!4069 = !DILocation(line: 197, column: 3, scope: !4068)
!4070 = !DILocation(line: 200, column: 11, scope: !4044)
!4071 = !DILocation(line: 200, column: 9, scope: !4044)
!4072 = !DILocation(line: 201, column: 7, scope: !4073)
!4073 = distinct !DILexicalBlock(scope: !4044, file: !3, line: 201, column: 6)
!4074 = !DILocation(line: 201, column: 6, scope: !4044)
!4075 = !DILocation(line: 202, column: 3, scope: !4073)
!4076 = !DILocation(line: 204, column: 17, scope: !4044)
!4077 = !DILocation(line: 204, column: 2, scope: !4044)
!4078 = !DILocation(line: 204, column: 10, scope: !4044)
!4079 = !DILocation(line: 204, column: 15, scope: !4044)
!4080 = !DILocation(line: 205, column: 15, scope: !4044)
!4081 = !DILocation(line: 205, column: 2, scope: !4044)
!4082 = !DILocation(line: 205, column: 10, scope: !4044)
!4083 = !DILocation(line: 205, column: 13, scope: !4044)
!4084 = !DILocation(line: 206, column: 18, scope: !4044)
!4085 = !DILocation(line: 206, column: 2, scope: !4044)
!4086 = !DILocation(line: 206, column: 10, scope: !4044)
!4087 = !DILocation(line: 206, column: 16, scope: !4044)
!4088 = !DILocation(line: 207, column: 18, scope: !4044)
!4089 = !DILocation(line: 207, column: 26, scope: !4044)
!4090 = !DILocation(line: 207, column: 2, scope: !4044)
!4091 = !DILocation(line: 209, column: 24, scope: !4044)
!4092 = !DILocation(line: 209, column: 30, scope: !4044)
!4093 = !DILocation(line: 209, column: 2, scope: !4044)
!4094 = !DILocation(line: 209, column: 10, scope: !4044)
!4095 = !DILocation(line: 209, column: 14, scope: !4044)
!4096 = !DILocation(line: 209, column: 21, scope: !4044)
!4097 = !DILocation(line: 210, column: 2, scope: !4044)
!4098 = !DILocation(line: 210, column: 10, scope: !4044)
!4099 = !DILocation(line: 210, column: 14, scope: !4044)
!4100 = !DILocation(line: 210, column: 18, scope: !4044)
!4101 = !DILocation(line: 211, column: 2, scope: !4044)
!4102 = !DILocation(line: 211, column: 10, scope: !4044)
!4103 = !DILocation(line: 211, column: 14, scope: !4044)
!4104 = !DILocation(line: 211, column: 19, scope: !4044)
!4105 = !DILocation(line: 212, column: 2, scope: !4044)
!4106 = !DILocation(line: 212, column: 10, scope: !4044)
!4107 = !DILocation(line: 212, column: 14, scope: !4044)
!4108 = !DILocation(line: 212, column: 21, scope: !4044)
!4109 = !DILocation(line: 213, column: 25, scope: !4044)
!4110 = !DILocation(line: 213, column: 31, scope: !4044)
!4111 = !DILocation(line: 213, column: 35, scope: !4044)
!4112 = !DILocation(line: 213, column: 2, scope: !4044)
!4113 = !DILocation(line: 213, column: 10, scope: !4044)
!4114 = !DILocation(line: 213, column: 14, scope: !4044)
!4115 = !DILocation(line: 213, column: 23, scope: !4044)
!4116 = !DILocation(line: 214, column: 21, scope: !4044)
!4117 = !DILocation(line: 214, column: 29, scope: !4044)
!4118 = !DILocation(line: 214, column: 2, scope: !4044)
!4119 = !DILocation(line: 215, column: 16, scope: !4044)
!4120 = !DILocation(line: 215, column: 24, scope: !4044)
!4121 = !DILocation(line: 215, column: 48, scope: !4044)
!4122 = !DILocation(line: 215, column: 54, scope: !4044)
!4123 = !DILocation(line: 215, column: 38, scope: !4044)
!4124 = !DILocation(line: 215, column: 60, scope: !4044)
!4125 = !DILocation(line: 215, column: 2, scope: !4044)
!4126 = !DILocation(line: 217, column: 12, scope: !4044)
!4127 = !DILocation(line: 217, column: 20, scope: !4044)
!4128 = !DILocation(line: 217, column: 28, scope: !4044)
!4129 = !DILocation(line: 217, column: 34, scope: !4044)
!4130 = !DILocation(line: 217, column: 2, scope: !4044)
!4131 = !DILocation(line: 219, column: 25, scope: !4044)
!4132 = !DILocation(line: 219, column: 2, scope: !4044)
!4133 = !DILocation(line: 221, column: 9, scope: !4044)
!4134 = !DILocation(line: 221, column: 2, scope: !4044)
!4135 = !DILocation(line: 222, column: 1, scope: !4044)
!4136 = distinct !DISubprogram(name: "gb_bundle_find", scope: !3, file: !3, line: 67, type: !4137, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!4137 = !DISubroutineType(types: !4138)
!4138 = !{!139, !3755, !131}
!4139 = !DILocalVariable(name: "intf", arg: 1, scope: !4136, file: !3, line: 67, type: !3755)
!4140 = !DILocation(line: 67, column: 62, scope: !4136)
!4141 = !DILocalVariable(name: "bundle_id", arg: 2, scope: !4136, file: !3, line: 68, type: !131)
!4142 = !DILocation(line: 68, column: 9, scope: !4136)
!4143 = !DILocalVariable(name: "bundle", scope: !4136, file: !3, line: 70, type: !139)
!4144 = !DILocation(line: 70, column: 20, scope: !4136)
!4145 = !DILocalVariable(name: "__mptr", scope: !4146, file: !3, line: 72, type: !138)
!4146 = distinct !DILexicalBlock(scope: !4147, file: !3, line: 72, column: 2)
!4147 = distinct !DILexicalBlock(scope: !4136, file: !3, line: 72, column: 2)
!4148 = !DILocation(line: 72, column: 2, scope: !4146)
!4149 = !DILocation(line: 72, column: 2, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !4146, file: !3, line: 72, column: 2)
!4151 = !DILocation(line: 72, column: 2, scope: !4147)
!4152 = !DILocation(line: 72, column: 2, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !4147, file: !3, line: 72, column: 2)
!4154 = !DILocation(line: 73, column: 7, scope: !4155)
!4155 = distinct !DILexicalBlock(scope: !4156, file: !3, line: 73, column: 7)
!4156 = distinct !DILexicalBlock(scope: !4153, file: !3, line: 72, column: 53)
!4157 = !DILocation(line: 73, column: 15, scope: !4155)
!4158 = !DILocation(line: 73, column: 21, scope: !4155)
!4159 = !DILocation(line: 73, column: 18, scope: !4155)
!4160 = !DILocation(line: 73, column: 7, scope: !4156)
!4161 = !DILocation(line: 74, column: 11, scope: !4155)
!4162 = !DILocation(line: 74, column: 4, scope: !4155)
!4163 = !DILocation(line: 75, column: 2, scope: !4156)
!4164 = !DILocalVariable(name: "__mptr", scope: !4165, file: !3, line: 72, type: !138)
!4165 = distinct !DILexicalBlock(scope: !4153, file: !3, line: 72, column: 2)
!4166 = !DILocation(line: 72, column: 2, scope: !4165)
!4167 = !DILocation(line: 72, column: 2, scope: !4168)
!4168 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 72, column: 2)
!4169 = distinct !{!4169, !4151, !4170}
!4170 = !DILocation(line: 75, column: 2, scope: !4147)
!4171 = !DILocation(line: 77, column: 2, scope: !4136)
!4172 = !DILocation(line: 78, column: 1, scope: !4136)
!4173 = distinct !DISubprogram(name: "kzalloc", scope: !119, file: !119, line: 662, type: !4174, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!4174 = !DISubroutineType(types: !4175)
!4175 = !{!138, !257, !136}
!4176 = !DILocalVariable(name: "s", arg: 1, scope: !4177, file: !119, line: 445, type: !871)
!4177 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !119, file: !119, line: 445, type: !4178, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!4178 = !DISubroutineType(types: !4179)
!4179 = !{!138, !871, !136, !257}
!4180 = !DILocation(line: 445, column: 72, scope: !4177, inlinedAt: !4181)
!4181 = distinct !DILocation(line: 552, column: 10, scope: !4182, inlinedAt: !4185)
!4182 = distinct !DILexicalBlock(scope: !4183, file: !119, line: 540, column: 34)
!4183 = distinct !DILexicalBlock(scope: !4184, file: !119, line: 540, column: 6)
!4184 = distinct !DISubprogram(name: "kmalloc", scope: !119, file: !119, line: 538, type: !4174, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!4185 = distinct !DILocation(line: 664, column: 9, scope: !4173)
!4186 = !DILocalVariable(name: "flags", arg: 2, scope: !4177, file: !119, line: 446, type: !136)
!4187 = !DILocation(line: 446, column: 9, scope: !4177, inlinedAt: !4181)
!4188 = !DILocalVariable(name: "size", arg: 3, scope: !4177, file: !119, line: 446, type: !257)
!4189 = !DILocation(line: 446, column: 23, scope: !4177, inlinedAt: !4181)
!4190 = !DILocalVariable(name: "ret", scope: !4177, file: !119, line: 448, type: !138)
!4191 = !DILocation(line: 448, column: 8, scope: !4177, inlinedAt: !4181)
!4192 = !DILocalVariable(name: "flags", arg: 1, scope: !4193, file: !119, line: 318, type: !136)
!4193 = distinct !DISubprogram(name: "kmalloc_type", scope: !119, file: !119, line: 318, type: !4194, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!4194 = !DISubroutineType(types: !4195)
!4195 = !{!118, !136}
!4196 = !DILocation(line: 318, column: 67, scope: !4193, inlinedAt: !4197)
!4197 = distinct !DILocation(line: 553, column: 20, scope: !4182, inlinedAt: !4185)
!4198 = !DILocalVariable(name: "size", arg: 1, scope: !4199, file: !119, line: 346, type: !257)
!4199 = distinct !DISubprogram(name: "kmalloc_index", scope: !119, file: !119, line: 346, type: !4200, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!4200 = !DISubroutineType(types: !4201)
!4201 = !{!7, !257}
!4202 = !DILocation(line: 346, column: 58, scope: !4199, inlinedAt: !4203)
!4203 = distinct !DILocation(line: 547, column: 11, scope: !4182, inlinedAt: !4185)
!4204 = !DILocalVariable(name: "size", arg: 1, scope: !4205, file: !119, line: 472, type: !257)
!4205 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !119, file: !119, line: 472, type: !4206, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!4206 = !DISubroutineType(types: !4207)
!4207 = !{!138, !257, !136, !7}
!4208 = !DILocation(line: 472, column: 28, scope: !4205, inlinedAt: !4209)
!4209 = distinct !DILocation(line: 481, column: 9, scope: !4210, inlinedAt: !4211)
!4210 = distinct !DISubprogram(name: "kmalloc_large", scope: !119, file: !119, line: 478, type: !4174, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!4211 = distinct !DILocation(line: 545, column: 11, scope: !4212, inlinedAt: !4185)
!4212 = distinct !DILexicalBlock(scope: !4182, file: !119, line: 544, column: 7)
!4213 = !DILocalVariable(name: "flags", arg: 2, scope: !4205, file: !119, line: 472, type: !136)
!4214 = !DILocation(line: 472, column: 40, scope: !4205, inlinedAt: !4209)
!4215 = !DILocalVariable(name: "order", arg: 3, scope: !4205, file: !119, line: 472, type: !7)
!4216 = !DILocation(line: 472, column: 60, scope: !4205, inlinedAt: !4209)
!4217 = !DILocalVariable(name: "size", arg: 1, scope: !4210, file: !119, line: 478, type: !257)
!4218 = !DILocation(line: 478, column: 51, scope: !4210, inlinedAt: !4211)
!4219 = !DILocalVariable(name: "flags", arg: 2, scope: !4210, file: !119, line: 478, type: !136)
!4220 = !DILocation(line: 478, column: 63, scope: !4210, inlinedAt: !4211)
!4221 = !DILocalVariable(name: "order", scope: !4210, file: !119, line: 480, type: !7)
!4222 = !DILocation(line: 480, column: 15, scope: !4210, inlinedAt: !4211)
!4223 = !DILocalVariable(name: "size", arg: 1, scope: !4184, file: !119, line: 538, type: !257)
!4224 = !DILocation(line: 538, column: 45, scope: !4184, inlinedAt: !4185)
!4225 = !DILocalVariable(name: "flags", arg: 2, scope: !4184, file: !119, line: 538, type: !136)
!4226 = !DILocation(line: 538, column: 57, scope: !4184, inlinedAt: !4185)
!4227 = !DILocalVariable(name: "index", scope: !4182, file: !119, line: 542, type: !7)
!4228 = !DILocation(line: 542, column: 16, scope: !4182, inlinedAt: !4185)
!4229 = !DILocalVariable(name: "size", arg: 1, scope: !4173, file: !119, line: 662, type: !257)
!4230 = !DILocation(line: 662, column: 36, scope: !4173)
!4231 = !DILocalVariable(name: "flags", arg: 2, scope: !4173, file: !119, line: 662, type: !136)
!4232 = !DILocation(line: 662, column: 48, scope: !4173)
!4233 = !DILocation(line: 664, column: 17, scope: !4173)
!4234 = !DILocation(line: 664, column: 23, scope: !4173)
!4235 = !DILocation(line: 664, column: 29, scope: !4173)
!4236 = !DILocation(line: 540, column: 27, scope: !4183, inlinedAt: !4185)
!4237 = !DILocation(line: 540, column: 6, scope: !4183, inlinedAt: !4185)
!4238 = !DILocation(line: 540, column: 6, scope: !4184, inlinedAt: !4185)
!4239 = !DILocation(line: 544, column: 7, scope: !4212, inlinedAt: !4185)
!4240 = !DILocation(line: 544, column: 12, scope: !4212, inlinedAt: !4185)
!4241 = !DILocation(line: 544, column: 7, scope: !4182, inlinedAt: !4185)
!4242 = !DILocation(line: 545, column: 25, scope: !4212, inlinedAt: !4185)
!4243 = !DILocation(line: 545, column: 31, scope: !4212, inlinedAt: !4185)
!4244 = !DILocation(line: 480, column: 33, scope: !4210, inlinedAt: !4211)
!4245 = !DILocation(line: 480, column: 23, scope: !4210, inlinedAt: !4211)
!4246 = !DILocation(line: 481, column: 29, scope: !4210, inlinedAt: !4211)
!4247 = !DILocation(line: 481, column: 35, scope: !4210, inlinedAt: !4211)
!4248 = !DILocation(line: 481, column: 42, scope: !4210, inlinedAt: !4211)
!4249 = !DILocation(line: 474, column: 23, scope: !4205, inlinedAt: !4209)
!4250 = !DILocation(line: 474, column: 29, scope: !4205, inlinedAt: !4209)
!4251 = !DILocation(line: 474, column: 36, scope: !4205, inlinedAt: !4209)
!4252 = !DILocation(line: 474, column: 9, scope: !4205, inlinedAt: !4209)
!4253 = !DILocation(line: 545, column: 4, scope: !4212, inlinedAt: !4185)
!4254 = !DILocation(line: 547, column: 25, scope: !4182, inlinedAt: !4185)
!4255 = !DILocation(line: 348, column: 7, scope: !4256, inlinedAt: !4203)
!4256 = distinct !DILexicalBlock(scope: !4199, file: !119, line: 348, column: 6)
!4257 = !DILocation(line: 348, column: 6, scope: !4199, inlinedAt: !4203)
!4258 = !DILocation(line: 349, column: 3, scope: !4256, inlinedAt: !4203)
!4259 = !DILocation(line: 351, column: 6, scope: !4260, inlinedAt: !4203)
!4260 = distinct !DILexicalBlock(scope: !4199, file: !119, line: 351, column: 6)
!4261 = !DILocation(line: 351, column: 11, scope: !4260, inlinedAt: !4203)
!4262 = !DILocation(line: 351, column: 6, scope: !4199, inlinedAt: !4203)
!4263 = !DILocation(line: 352, column: 3, scope: !4260, inlinedAt: !4203)
!4264 = !DILocation(line: 354, column: 32, scope: !4265, inlinedAt: !4203)
!4265 = distinct !DILexicalBlock(scope: !4199, file: !119, line: 354, column: 6)
!4266 = !DILocation(line: 354, column: 37, scope: !4265, inlinedAt: !4203)
!4267 = !DILocation(line: 354, column: 42, scope: !4265, inlinedAt: !4203)
!4268 = !DILocation(line: 354, column: 45, scope: !4265, inlinedAt: !4203)
!4269 = !DILocation(line: 354, column: 50, scope: !4265, inlinedAt: !4203)
!4270 = !DILocation(line: 354, column: 6, scope: !4199, inlinedAt: !4203)
!4271 = !DILocation(line: 355, column: 3, scope: !4265, inlinedAt: !4203)
!4272 = !DILocation(line: 356, column: 32, scope: !4273, inlinedAt: !4203)
!4273 = distinct !DILexicalBlock(scope: !4199, file: !119, line: 356, column: 6)
!4274 = !DILocation(line: 356, column: 37, scope: !4273, inlinedAt: !4203)
!4275 = !DILocation(line: 356, column: 43, scope: !4273, inlinedAt: !4203)
!4276 = !DILocation(line: 356, column: 46, scope: !4273, inlinedAt: !4203)
!4277 = !DILocation(line: 356, column: 51, scope: !4273, inlinedAt: !4203)
!4278 = !DILocation(line: 356, column: 6, scope: !4199, inlinedAt: !4203)
!4279 = !DILocation(line: 357, column: 3, scope: !4273, inlinedAt: !4203)
!4280 = !DILocation(line: 358, column: 6, scope: !4281, inlinedAt: !4203)
!4281 = distinct !DILexicalBlock(scope: !4199, file: !119, line: 358, column: 6)
!4282 = !DILocation(line: 358, column: 11, scope: !4281, inlinedAt: !4203)
!4283 = !DILocation(line: 358, column: 6, scope: !4199, inlinedAt: !4203)
!4284 = !DILocation(line: 358, column: 26, scope: !4281, inlinedAt: !4203)
!4285 = !DILocation(line: 359, column: 6, scope: !4286, inlinedAt: !4203)
!4286 = distinct !DILexicalBlock(scope: !4199, file: !119, line: 359, column: 6)
!4287 = !DILocation(line: 359, column: 11, scope: !4286, inlinedAt: !4203)
!4288 = !DILocation(line: 359, column: 6, scope: !4199, inlinedAt: !4203)
!4289 = !DILocation(line: 359, column: 26, scope: !4286, inlinedAt: !4203)
!4290 = !DILocation(line: 360, column: 6, scope: !4291, inlinedAt: !4203)
!4291 = distinct !DILexicalBlock(scope: !4199, file: !119, line: 360, column: 6)
!4292 = !DILocation(line: 360, column: 11, scope: !4291, inlinedAt: !4203)
!4293 = !DILocation(line: 360, column: 6, scope: !4199, inlinedAt: !4203)
!4294 = !DILocation(line: 360, column: 26, scope: !4291, inlinedAt: !4203)
!4295 = !DILocation(line: 361, column: 6, scope: !4296, inlinedAt: !4203)
!4296 = distinct !DILexicalBlock(scope: !4199, file: !119, line: 361, column: 6)
!4297 = !DILocation(line: 361, column: 11, scope: !4296, inlinedAt: !4203)
!4298 = !DILocation(line: 361, column: 6, scope: !4199, inlinedAt: !4203)
!4299 = !DILocation(line: 361, column: 26, scope: !4296, inlinedAt: !4203)
!4300 = !DILocation(line: 362, column: 6, scope: !4301, inlinedAt: !4203)
!4301 = distinct !DILexicalBlock(scope: !4199, file: !119, line: 362, column: 6)
!4302 = !DILocation(line: 362, column: 11, scope: !4301, inlinedAt: !4203)
!4303 = !DILocation(line: 362, column: 6, scope: !4199, inlinedAt: !4203)
!4304 = !DILocation(line: 362, column: 26, scope: !4301, inlinedAt: !4203)
!4305 = !DILocation(line: 363, column: 6, scope: !4306, inlinedAt: !4203)
!4306 = distinct !DILexicalBlock(scope: !4199, file: !119, line: 363, column: 6)
!4307 = !DILocation(line: 363, column: 11, scope: !4306, inlinedAt: !4203)
!4308 = !DILocation(line: 363, column: 6, scope: !4199, inlinedAt: !4203)
!4309 = !DILocation(line: 363, column: 26, scope: !4306, inlinedAt: !4203)
!4310 = !DILocation(line: 364, column: 6, scope: !4311, inlinedAt: !4203)
!4311 = distinct !DILexicalBlock(scope: !4199, file: !119, line: 364, column: 6)
!4312 = !DILocation(line: 364, column: 11, scope: !4311, inlinedAt: !4203)
!4313 = !DILocation(line: 364, column: 6, scope: !4199, inlinedAt: !4203)
!4314 = !DILocation(line: 364, column: 26, scope: !4311, inlinedAt: !4203)
!4315 = !DILocation(line: 365, column: 6, scope: !4316, inlinedAt: !4203)
!4316 = distinct !DILexicalBlock(scope: !4199, file: !119, line: 365, column: 6)
!4317 = !DILocation(line: 365, column: 11, scope: !4316, inlinedAt: !4203)
!4318 = !DILocation(line: 365, column: 6, scope: !4199, inlinedAt: !4203)
!4319 = !DILocation(line: 365, column: 26, scope: !4316, inlinedAt: !4203)
!4320 = !DILocation(line: 366, column: 6, scope: !4321, inlinedAt: !4203)
!4321 = distinct !DILexicalBlock(scope: !4199, file: !119, line: 366, column: 6)
!4322 = !DILocation(line: 366, column: 11, scope: !4321, inlinedAt: !4203)
!4323 = !DILocation(line: 366, column: 6, scope: !4199, inlinedAt: !4203)
!4324 = !DILocation(line: 366, column: 26, scope: !4321, inlinedAt: !4203)
!4325 = !DILocation(line: 367, column: 6, scope: !4326, inlinedAt: !4203)
!4326 = distinct !DILexicalBlock(scope: !4199, file: !119, line: 367, column: 6)
!4327 = !DILocation(line: 367, column: 11, scope: !4326, inlinedAt: !4203)
!4328 = !DILocation(line: 367, column: 6, scope: !4199, inlinedAt: !4203)
!4329 = !DILocation(line: 367, column: 26, scope: !4326, inlinedAt: !4203)
!4330 = !DILocation(line: 368, column: 6, scope: !4331, inlinedAt: !4203)
!4331 = distinct !DILexicalBlock(scope: !4199, file: !119, line: 368, column: 6)
!4332 = !DILocation(line: 368, column: 11, scope: !4331, inlinedAt: !4203)
!4333 = !DILocation(line: 368, column: 6, scope: !4199, inlinedAt: !4203)
!4334 = !DILocation(line: 368, column: 26, scope: !4331, inlinedAt: !4203)
!4335 = !DILocation(line: 369, column: 6, scope: !4336, inlinedAt: !4203)
!4336 = distinct !DILexicalBlock(scope: !4199, file: !119, line: 369, column: 6)
!4337 = !DILocation(line: 369, column: 11, scope: !4336, inlinedAt: !4203)
!4338 = !DILocation(line: 369, column: 6, scope: !4199, inlinedAt: !4203)
!4339 = !DILocation(line: 369, column: 26, scope: !4336, inlinedAt: !4203)
!4340 = !DILocation(line: 370, column: 6, scope: !4341, inlinedAt: !4203)
!4341 = distinct !DILexicalBlock(scope: !4199, file: !119, line: 370, column: 6)
!4342 = !DILocation(line: 370, column: 11, scope: !4341, inlinedAt: !4203)
!4343 = !DILocation(line: 370, column: 6, scope: !4199, inlinedAt: !4203)
!4344 = !DILocation(line: 370, column: 26, scope: !4341, inlinedAt: !4203)
!4345 = !DILocation(line: 371, column: 6, scope: !4346, inlinedAt: !4203)
!4346 = distinct !DILexicalBlock(scope: !4199, file: !119, line: 371, column: 6)
!4347 = !DILocation(line: 371, column: 11, scope: !4346, inlinedAt: !4203)
!4348 = !DILocation(line: 371, column: 6, scope: !4199, inlinedAt: !4203)
!4349 = !DILocation(line: 371, column: 26, scope: !4346, inlinedAt: !4203)
!4350 = !DILocation(line: 372, column: 6, scope: !4351, inlinedAt: !4203)
!4351 = distinct !DILexicalBlock(scope: !4199, file: !119, line: 372, column: 6)
!4352 = !DILocation(line: 372, column: 11, scope: !4351, inlinedAt: !4203)
!4353 = !DILocation(line: 372, column: 6, scope: !4199, inlinedAt: !4203)
!4354 = !DILocation(line: 372, column: 26, scope: !4351, inlinedAt: !4203)
!4355 = !DILocation(line: 373, column: 6, scope: !4356, inlinedAt: !4203)
!4356 = distinct !DILexicalBlock(scope: !4199, file: !119, line: 373, column: 6)
!4357 = !DILocation(line: 373, column: 11, scope: !4356, inlinedAt: !4203)
!4358 = !DILocation(line: 373, column: 6, scope: !4199, inlinedAt: !4203)
!4359 = !DILocation(line: 373, column: 26, scope: !4356, inlinedAt: !4203)
!4360 = !DILocation(line: 374, column: 6, scope: !4361, inlinedAt: !4203)
!4361 = distinct !DILexicalBlock(scope: !4199, file: !119, line: 374, column: 6)
!4362 = !DILocation(line: 374, column: 11, scope: !4361, inlinedAt: !4203)
!4363 = !DILocation(line: 374, column: 6, scope: !4199, inlinedAt: !4203)
!4364 = !DILocation(line: 374, column: 26, scope: !4361, inlinedAt: !4203)
!4365 = !DILocation(line: 375, column: 6, scope: !4366, inlinedAt: !4203)
!4366 = distinct !DILexicalBlock(scope: !4199, file: !119, line: 375, column: 6)
!4367 = !DILocation(line: 375, column: 11, scope: !4366, inlinedAt: !4203)
!4368 = !DILocation(line: 375, column: 6, scope: !4199, inlinedAt: !4203)
!4369 = !DILocation(line: 375, column: 27, scope: !4366, inlinedAt: !4203)
!4370 = !DILocation(line: 376, column: 6, scope: !4371, inlinedAt: !4203)
!4371 = distinct !DILexicalBlock(scope: !4199, file: !119, line: 376, column: 6)
!4372 = !DILocation(line: 376, column: 11, scope: !4371, inlinedAt: !4203)
!4373 = !DILocation(line: 376, column: 6, scope: !4199, inlinedAt: !4203)
!4374 = !DILocation(line: 376, column: 32, scope: !4371, inlinedAt: !4203)
!4375 = !DILocation(line: 377, column: 6, scope: !4376, inlinedAt: !4203)
!4376 = distinct !DILexicalBlock(scope: !4199, file: !119, line: 377, column: 6)
!4377 = !DILocation(line: 377, column: 11, scope: !4376, inlinedAt: !4203)
!4378 = !DILocation(line: 377, column: 6, scope: !4199, inlinedAt: !4203)
!4379 = !DILocation(line: 377, column: 32, scope: !4376, inlinedAt: !4203)
!4380 = !DILocation(line: 378, column: 6, scope: !4381, inlinedAt: !4203)
!4381 = distinct !DILexicalBlock(scope: !4199, file: !119, line: 378, column: 6)
!4382 = !DILocation(line: 378, column: 11, scope: !4381, inlinedAt: !4203)
!4383 = !DILocation(line: 378, column: 6, scope: !4199, inlinedAt: !4203)
!4384 = !DILocation(line: 378, column: 32, scope: !4381, inlinedAt: !4203)
!4385 = !DILocation(line: 379, column: 6, scope: !4386, inlinedAt: !4203)
!4386 = distinct !DILexicalBlock(scope: !4199, file: !119, line: 379, column: 6)
!4387 = !DILocation(line: 379, column: 11, scope: !4386, inlinedAt: !4203)
!4388 = !DILocation(line: 379, column: 6, scope: !4199, inlinedAt: !4203)
!4389 = !DILocation(line: 379, column: 33, scope: !4386, inlinedAt: !4203)
!4390 = !DILocation(line: 380, column: 6, scope: !4391, inlinedAt: !4203)
!4391 = distinct !DILexicalBlock(scope: !4199, file: !119, line: 380, column: 6)
!4392 = !DILocation(line: 380, column: 11, scope: !4391, inlinedAt: !4203)
!4393 = !DILocation(line: 380, column: 6, scope: !4199, inlinedAt: !4203)
!4394 = !DILocation(line: 380, column: 33, scope: !4391, inlinedAt: !4203)
!4395 = !DILocation(line: 381, column: 6, scope: !4396, inlinedAt: !4203)
!4396 = distinct !DILexicalBlock(scope: !4199, file: !119, line: 381, column: 6)
!4397 = !DILocation(line: 381, column: 11, scope: !4396, inlinedAt: !4203)
!4398 = !DILocation(line: 381, column: 6, scope: !4199, inlinedAt: !4203)
!4399 = !DILocation(line: 381, column: 33, scope: !4396, inlinedAt: !4203)
!4400 = !DILocation(line: 382, column: 2, scope: !4401, inlinedAt: !4203)
!4401 = distinct !DILexicalBlock(scope: !4402, file: !119, line: 382, column: 2)
!4402 = distinct !DILexicalBlock(scope: !4199, file: !119, line: 382, column: 2)
!4403 = !{i32 -2144645483, i32 -2144645454, i32 -2144645408, i32 -2144645350, i32 -2144645296, i32 -2144645242, i32 -2144645187, i32 -2144645156}
!4404 = !DILocation(line: 382, column: 2, scope: !4405, inlinedAt: !4203)
!4405 = distinct !DILexicalBlock(scope: !4406, file: !119, line: 382, column: 2)
!4406 = distinct !DILexicalBlock(scope: !4402, file: !119, line: 382, column: 2)
!4407 = !{i32 -2144644713, i32 -2144644706, i32 -2144644652, i32 -2144644621, i32 -2144644591}
!4408 = !DILocation(line: 382, column: 2, scope: !4406, inlinedAt: !4203)
!4409 = !DILocation(line: 386, column: 1, scope: !4199, inlinedAt: !4203)
!4410 = !DILocation(line: 547, column: 9, scope: !4182, inlinedAt: !4185)
!4411 = !DILocation(line: 549, column: 8, scope: !4412, inlinedAt: !4185)
!4412 = distinct !DILexicalBlock(scope: !4182, file: !119, line: 549, column: 7)
!4413 = !DILocation(line: 549, column: 7, scope: !4182, inlinedAt: !4185)
!4414 = !DILocation(line: 550, column: 4, scope: !4412, inlinedAt: !4185)
!4415 = !DILocation(line: 553, column: 33, scope: !4182, inlinedAt: !4185)
!4416 = !DILocation(line: 325, column: 6, scope: !4417, inlinedAt: !4197)
!4417 = distinct !DILexicalBlock(scope: !4193, file: !119, line: 325, column: 6)
!4418 = !DILocation(line: 325, column: 6, scope: !4193, inlinedAt: !4197)
!4419 = !DILocation(line: 326, column: 3, scope: !4417, inlinedAt: !4197)
!4420 = !DILocation(line: 332, column: 9, scope: !4193, inlinedAt: !4197)
!4421 = !DILocation(line: 332, column: 15, scope: !4193, inlinedAt: !4197)
!4422 = !DILocation(line: 332, column: 2, scope: !4193, inlinedAt: !4197)
!4423 = !DILocation(line: 336, column: 1, scope: !4193, inlinedAt: !4197)
!4424 = !DILocation(line: 553, column: 5, scope: !4182, inlinedAt: !4185)
!4425 = !DILocation(line: 553, column: 41, scope: !4182, inlinedAt: !4185)
!4426 = !DILocation(line: 554, column: 5, scope: !4182, inlinedAt: !4185)
!4427 = !DILocation(line: 554, column: 12, scope: !4182, inlinedAt: !4185)
!4428 = !DILocation(line: 448, column: 31, scope: !4177, inlinedAt: !4181)
!4429 = !DILocation(line: 448, column: 34, scope: !4177, inlinedAt: !4181)
!4430 = !DILocation(line: 448, column: 14, scope: !4177, inlinedAt: !4181)
!4431 = !DILocation(line: 450, column: 22, scope: !4177, inlinedAt: !4181)
!4432 = !DILocation(line: 450, column: 25, scope: !4177, inlinedAt: !4181)
!4433 = !DILocation(line: 450, column: 30, scope: !4177, inlinedAt: !4181)
!4434 = !DILocation(line: 450, column: 36, scope: !4177, inlinedAt: !4181)
!4435 = !DILocation(line: 450, column: 8, scope: !4177, inlinedAt: !4181)
!4436 = !DILocation(line: 450, column: 6, scope: !4177, inlinedAt: !4181)
!4437 = !DILocation(line: 451, column: 9, scope: !4177, inlinedAt: !4181)
!4438 = !DILocation(line: 552, column: 3, scope: !4182, inlinedAt: !4185)
!4439 = !DILocation(line: 557, column: 19, scope: !4184, inlinedAt: !4185)
!4440 = !DILocation(line: 557, column: 25, scope: !4184, inlinedAt: !4185)
!4441 = !DILocation(line: 557, column: 9, scope: !4184, inlinedAt: !4185)
!4442 = !DILocation(line: 557, column: 2, scope: !4184, inlinedAt: !4185)
!4443 = !DILocation(line: 558, column: 1, scope: !4184, inlinedAt: !4185)
!4444 = !DILocation(line: 664, column: 2, scope: !4173)
!4445 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !4446, file: !4446, line: 33, type: !4447, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!4446 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!4447 = !DISubroutineType(types: !4448)
!4448 = !{null, !158}
!4449 = !DILocalVariable(name: "list", arg: 1, scope: !4445, file: !4446, line: 33, type: !158)
!4450 = !DILocation(line: 33, column: 53, scope: !4445)
!4451 = !DILocation(line: 35, column: 2, scope: !4445)
!4452 = !DILocation(line: 35, column: 2, scope: !4453)
!4453 = distinct !DILexicalBlock(scope: !4445, file: !4446, line: 35, column: 2)
!4454 = !DILocation(line: 35, column: 2, scope: !4455)
!4455 = distinct !DILexicalBlock(scope: !4453, file: !4446, line: 35, column: 2)
!4456 = !DILocation(line: 35, column: 2, scope: !4457)
!4457 = distinct !DILexicalBlock(scope: !4453, file: !4446, line: 35, column: 2)
!4458 = !DILocation(line: 36, column: 15, scope: !4445)
!4459 = !DILocation(line: 36, column: 2, scope: !4445)
!4460 = !DILocation(line: 36, column: 8, scope: !4445)
!4461 = !DILocation(line: 36, column: 13, scope: !4445)
!4462 = !DILocation(line: 37, column: 1, scope: !4445)
!4463 = distinct !DISubprogram(name: "dev_name", scope: !73, file: !73, line: 609, type: !4464, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!4464 = !DISubroutineType(types: !4465)
!4465 = !{!151, !3645}
!4466 = !DILocalVariable(name: "dev", arg: 1, scope: !4463, file: !73, line: 609, type: !3645)
!4467 = !DILocation(line: 609, column: 57, scope: !4463)
!4468 = !DILocation(line: 612, column: 6, scope: !4469)
!4469 = distinct !DILexicalBlock(scope: !4463, file: !73, line: 612, column: 6)
!4470 = !DILocation(line: 612, column: 11, scope: !4469)
!4471 = !DILocation(line: 612, column: 6, scope: !4463)
!4472 = !DILocation(line: 613, column: 10, scope: !4469)
!4473 = !DILocation(line: 613, column: 15, scope: !4469)
!4474 = !DILocation(line: 613, column: 3, scope: !4469)
!4475 = !DILocation(line: 615, column: 23, scope: !4463)
!4476 = !DILocation(line: 615, column: 28, scope: !4463)
!4477 = !DILocation(line: 615, column: 9, scope: !4463)
!4478 = !DILocation(line: 615, column: 2, scope: !4463)
!4479 = !DILocation(line: 616, column: 1, scope: !4463)
!4480 = distinct !DISubprogram(name: "list_add", scope: !4446, file: !4446, line: 84, type: !4481, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!4481 = !DISubroutineType(types: !4482)
!4482 = !{null, !158, !158}
!4483 = !DILocalVariable(name: "new", arg: 1, scope: !4480, file: !4446, line: 84, type: !158)
!4484 = !DILocation(line: 84, column: 47, scope: !4480)
!4485 = !DILocalVariable(name: "head", arg: 2, scope: !4480, file: !4446, line: 84, type: !158)
!4486 = !DILocation(line: 84, column: 70, scope: !4480)
!4487 = !DILocation(line: 86, column: 13, scope: !4480)
!4488 = !DILocation(line: 86, column: 18, scope: !4480)
!4489 = !DILocation(line: 86, column: 24, scope: !4480)
!4490 = !DILocation(line: 86, column: 30, scope: !4480)
!4491 = !DILocation(line: 86, column: 2, scope: !4480)
!4492 = !DILocation(line: 87, column: 1, scope: !4480)
!4493 = distinct !DISubprogram(name: "trace_gb_bundle_create", scope: !4494, file: !4494, line: 270, type: !4495, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!4494 = !DIFile(filename: "drivers/greybus/greybus_trace.h", directory: "/home/lizy2001/genbc/linux")
!4495 = !DISubroutineType(types: !4496)
!4496 = !{null, !139}
!4497 = !DILocalVariable(name: "bundle", arg: 1, scope: !4493, file: !4494, line: 270, type: !139)
!4498 = !DILocation(line: 270, column: 1, scope: !4493)
!4499 = distinct !DISubprogram(name: "gb_bundle_add", scope: !3, file: !3, line: 224, type: !4500, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !182)
!4500 = !DISubroutineType(types: !4501)
!4501 = !{!194, !139}
!4502 = !DILocalVariable(name: "bundle", arg: 1, scope: !4499, file: !3, line: 224, type: !139)
!4503 = !DILocation(line: 224, column: 37, scope: !4499)
!4504 = !DILocalVariable(name: "ret", scope: !4499, file: !3, line: 226, type: !194)
!4505 = !DILocation(line: 226, column: 6, scope: !4499)
!4506 = !DILocation(line: 228, column: 20, scope: !4499)
!4507 = !DILocation(line: 228, column: 28, scope: !4499)
!4508 = !DILocation(line: 228, column: 8, scope: !4499)
!4509 = !DILocation(line: 228, column: 6, scope: !4499)
!4510 = !DILocation(line: 229, column: 6, scope: !4511)
!4511 = distinct !DILexicalBlock(scope: !4499, file: !3, line: 229, column: 6)
!4512 = !DILocation(line: 229, column: 6, scope: !4499)
!4513 = !DILocation(line: 230, column: 3, scope: !4514)
!4514 = distinct !DILexicalBlock(scope: !4511, file: !3, line: 229, column: 11)
!4515 = !DILocation(line: 231, column: 10, scope: !4514)
!4516 = !DILocation(line: 231, column: 3, scope: !4514)
!4517 = !DILocation(line: 234, column: 22, scope: !4499)
!4518 = !DILocation(line: 234, column: 2, scope: !4499)
!4519 = !DILocation(line: 236, column: 2, scope: !4499)
!4520 = !DILocation(line: 237, column: 1, scope: !4499)
!4521 = distinct !DISubprogram(name: "trace_gb_bundle_add", scope: !4494, file: !4494, line: 282, type: !4495, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!4522 = !DILocalVariable(name: "bundle", arg: 1, scope: !4521, file: !4494, line: 282, type: !139)
!4523 = !DILocation(line: 282, column: 1, scope: !4521)
!4524 = distinct !DISubprogram(name: "gb_bundle_destroy", scope: !3, file: !3, line: 242, type: !4495, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !182)
!4525 = !DILocalVariable(name: "bundle", arg: 1, scope: !4524, file: !3, line: 242, type: !139)
!4526 = !DILocation(line: 242, column: 42, scope: !4524)
!4527 = !DILocation(line: 244, column: 26, scope: !4524)
!4528 = !DILocation(line: 244, column: 2, scope: !4524)
!4529 = !DILocation(line: 246, column: 28, scope: !4530)
!4530 = distinct !DILexicalBlock(scope: !4524, file: !3, line: 246, column: 6)
!4531 = !DILocation(line: 246, column: 36, scope: !4530)
!4532 = !DILocation(line: 246, column: 6, scope: !4530)
!4533 = !DILocation(line: 246, column: 6, scope: !4524)
!4534 = !DILocation(line: 247, column: 15, scope: !4530)
!4535 = !DILocation(line: 247, column: 23, scope: !4530)
!4536 = !DILocation(line: 247, column: 3, scope: !4530)
!4537 = !DILocation(line: 249, column: 12, scope: !4524)
!4538 = !DILocation(line: 249, column: 20, scope: !4524)
!4539 = !DILocation(line: 249, column: 2, scope: !4524)
!4540 = !DILocation(line: 251, column: 14, scope: !4524)
!4541 = !DILocation(line: 251, column: 22, scope: !4524)
!4542 = !DILocation(line: 251, column: 2, scope: !4524)
!4543 = !DILocation(line: 252, column: 1, scope: !4524)
!4544 = distinct !DISubprogram(name: "trace_gb_bundle_destroy", scope: !4494, file: !4494, line: 288, type: !4495, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!4545 = !DILocalVariable(name: "bundle", arg: 1, scope: !4544, file: !4494, line: 288, type: !139)
!4546 = !DILocation(line: 288, column: 1, scope: !4544)
!4547 = distinct !DISubprogram(name: "device_is_registered", scope: !73, file: !73, line: 680, type: !3340, scopeLine: 681, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!4548 = !DILocalVariable(name: "dev", arg: 1, scope: !4547, file: !73, line: 680, type: !3308)
!4549 = !DILocation(line: 680, column: 55, scope: !4547)
!4550 = !DILocation(line: 682, column: 9, scope: !4547)
!4551 = !DILocation(line: 682, column: 14, scope: !4547)
!4552 = !DILocation(line: 682, column: 19, scope: !4547)
!4553 = !DILocation(line: 682, column: 2, scope: !4547)
!4554 = distinct !DISubprogram(name: "list_del", scope: !4446, file: !4446, line: 144, type: !4447, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!4555 = !DILocalVariable(name: "entry", arg: 1, scope: !4554, file: !4446, line: 144, type: !158)
!4556 = !DILocation(line: 144, column: 47, scope: !4554)
!4557 = !DILocation(line: 146, column: 19, scope: !4554)
!4558 = !DILocation(line: 146, column: 2, scope: !4554)
!4559 = !DILocation(line: 147, column: 2, scope: !4554)
!4560 = !DILocation(line: 147, column: 9, scope: !4554)
!4561 = !DILocation(line: 147, column: 14, scope: !4554)
!4562 = !DILocation(line: 148, column: 2, scope: !4554)
!4563 = !DILocation(line: 148, column: 9, scope: !4554)
!4564 = !DILocation(line: 148, column: 14, scope: !4554)
!4565 = !DILocation(line: 149, column: 1, scope: !4554)
!4566 = distinct !DISubprogram(name: "trace_gb_bundle_release", scope: !4494, file: !4494, line: 276, type: !4495, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!4567 = !DILocalVariable(name: "bundle", arg: 1, scope: !4566, file: !4494, line: 276, type: !139)
!4568 = !DILocation(line: 276, column: 1, scope: !4566)
!4569 = distinct !DISubprogram(name: "gb_bundle_suspend", scope: !3, file: !3, line: 108, type: !3340, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!4570 = !DILocalVariable(name: "dev", arg: 1, scope: !4569, file: !3, line: 108, type: !3308)
!4571 = !DILocation(line: 108, column: 45, scope: !4569)
!4572 = !DILocalVariable(name: "bundle", scope: !4569, file: !3, line: 110, type: !139)
!4573 = !DILocation(line: 110, column: 20, scope: !4569)
!4574 = !DILocalVariable(name: "__mptr", scope: !4575, file: !3, line: 110, type: !138)
!4575 = distinct !DILexicalBlock(scope: !4569, file: !3, line: 110, column: 29)
!4576 = !DILocation(line: 110, column: 29, scope: !4575)
!4577 = !DILocation(line: 110, column: 29, scope: !4578)
!4578 = distinct !DILexicalBlock(scope: !4575, file: !3, line: 110, column: 29)
!4579 = !DILocalVariable(name: "pm", scope: !4569, file: !3, line: 111, type: !3334)
!4580 = !DILocation(line: 111, column: 27, scope: !4569)
!4581 = !DILocation(line: 111, column: 32, scope: !4569)
!4582 = !DILocation(line: 111, column: 37, scope: !4569)
!4583 = !DILocation(line: 111, column: 45, scope: !4569)
!4584 = !DILocalVariable(name: "ret", scope: !4569, file: !3, line: 112, type: !194)
!4585 = !DILocation(line: 112, column: 6, scope: !4569)
!4586 = !DILocation(line: 114, column: 6, scope: !4587)
!4587 = distinct !DILexicalBlock(scope: !4569, file: !3, line: 114, column: 6)
!4588 = !DILocation(line: 114, column: 9, scope: !4587)
!4589 = !DILocation(line: 114, column: 12, scope: !4587)
!4590 = !DILocation(line: 114, column: 16, scope: !4587)
!4591 = !DILocation(line: 114, column: 6, scope: !4569)
!4592 = !DILocation(line: 115, column: 9, scope: !4593)
!4593 = distinct !DILexicalBlock(scope: !4587, file: !3, line: 114, column: 33)
!4594 = !DILocation(line: 115, column: 13, scope: !4593)
!4595 = !DILocation(line: 115, column: 30, scope: !4593)
!4596 = !DILocation(line: 115, column: 38, scope: !4593)
!4597 = !DILocation(line: 115, column: 7, scope: !4593)
!4598 = !DILocation(line: 116, column: 7, scope: !4599)
!4599 = distinct !DILexicalBlock(scope: !4593, file: !3, line: 116, column: 7)
!4600 = !DILocation(line: 116, column: 7, scope: !4593)
!4601 = !DILocation(line: 117, column: 11, scope: !4599)
!4602 = !DILocation(line: 117, column: 4, scope: !4599)
!4603 = !DILocation(line: 118, column: 2, scope: !4593)
!4604 = !DILocation(line: 119, column: 37, scope: !4605)
!4605 = distinct !DILexicalBlock(scope: !4587, file: !3, line: 118, column: 9)
!4606 = !DILocation(line: 119, column: 3, scope: !4605)
!4607 = !DILocation(line: 122, column: 34, scope: !4569)
!4608 = !DILocation(line: 122, column: 42, scope: !4569)
!4609 = !DILocation(line: 122, column: 48, scope: !4569)
!4610 = !DILocation(line: 122, column: 57, scope: !4569)
!4611 = !DILocation(line: 122, column: 65, scope: !4569)
!4612 = !DILocation(line: 122, column: 8, scope: !4569)
!4613 = !DILocation(line: 122, column: 6, scope: !4569)
!4614 = !DILocation(line: 123, column: 6, scope: !4615)
!4615 = distinct !DILexicalBlock(scope: !4569, file: !3, line: 123, column: 6)
!4616 = !DILocation(line: 123, column: 6, scope: !4569)
!4617 = !DILocation(line: 124, column: 7, scope: !4618)
!4618 = distinct !DILexicalBlock(scope: !4619, file: !3, line: 124, column: 7)
!4619 = distinct !DILexicalBlock(scope: !4615, file: !3, line: 123, column: 11)
!4620 = !DILocation(line: 124, column: 10, scope: !4618)
!4621 = !DILocation(line: 124, column: 13, scope: !4618)
!4622 = !DILocation(line: 124, column: 17, scope: !4618)
!4623 = !DILocation(line: 124, column: 7, scope: !4619)
!4624 = !DILocation(line: 125, column: 10, scope: !4618)
!4625 = !DILocation(line: 125, column: 14, scope: !4618)
!4626 = !DILocation(line: 125, column: 29, scope: !4618)
!4627 = !DILocation(line: 125, column: 8, scope: !4618)
!4628 = !DILocation(line: 125, column: 4, scope: !4618)
!4629 = !DILocation(line: 127, column: 37, scope: !4618)
!4630 = !DILocation(line: 127, column: 4, scope: !4618)
!4631 = !DILocation(line: 129, column: 10, scope: !4619)
!4632 = !DILocation(line: 129, column: 3, scope: !4619)
!4633 = !DILocation(line: 132, column: 2, scope: !4569)
!4634 = !DILocation(line: 133, column: 1, scope: !4569)
!4635 = distinct !DISubprogram(name: "gb_bundle_resume", scope: !3, file: !3, line: 135, type: !3340, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!4636 = !DILocalVariable(name: "dev", arg: 1, scope: !4635, file: !3, line: 135, type: !3308)
!4637 = !DILocation(line: 135, column: 44, scope: !4635)
!4638 = !DILocalVariable(name: "bundle", scope: !4635, file: !3, line: 137, type: !139)
!4639 = !DILocation(line: 137, column: 20, scope: !4635)
!4640 = !DILocalVariable(name: "__mptr", scope: !4641, file: !3, line: 137, type: !138)
!4641 = distinct !DILexicalBlock(scope: !4635, file: !3, line: 137, column: 29)
!4642 = !DILocation(line: 137, column: 29, scope: !4641)
!4643 = !DILocation(line: 137, column: 29, scope: !4644)
!4644 = distinct !DILexicalBlock(scope: !4641, file: !3, line: 137, column: 29)
!4645 = !DILocalVariable(name: "pm", scope: !4635, file: !3, line: 138, type: !3334)
!4646 = !DILocation(line: 138, column: 27, scope: !4635)
!4647 = !DILocation(line: 138, column: 32, scope: !4635)
!4648 = !DILocation(line: 138, column: 37, scope: !4635)
!4649 = !DILocation(line: 138, column: 45, scope: !4635)
!4650 = !DILocalVariable(name: "ret", scope: !4635, file: !3, line: 139, type: !194)
!4651 = !DILocation(line: 139, column: 6, scope: !4635)
!4652 = !DILocation(line: 141, column: 33, scope: !4635)
!4653 = !DILocation(line: 141, column: 41, scope: !4635)
!4654 = !DILocation(line: 141, column: 47, scope: !4635)
!4655 = !DILocation(line: 141, column: 56, scope: !4635)
!4656 = !DILocation(line: 141, column: 64, scope: !4635)
!4657 = !DILocation(line: 141, column: 8, scope: !4635)
!4658 = !DILocation(line: 141, column: 6, scope: !4635)
!4659 = !DILocation(line: 142, column: 6, scope: !4660)
!4660 = distinct !DILexicalBlock(scope: !4635, file: !3, line: 142, column: 6)
!4661 = !DILocation(line: 142, column: 6, scope: !4635)
!4662 = !DILocation(line: 143, column: 10, scope: !4660)
!4663 = !DILocation(line: 143, column: 3, scope: !4660)
!4664 = !DILocation(line: 145, column: 6, scope: !4665)
!4665 = distinct !DILexicalBlock(scope: !4635, file: !3, line: 145, column: 6)
!4666 = !DILocation(line: 145, column: 9, scope: !4665)
!4667 = !DILocation(line: 145, column: 12, scope: !4665)
!4668 = !DILocation(line: 145, column: 16, scope: !4665)
!4669 = !DILocation(line: 145, column: 6, scope: !4635)
!4670 = !DILocation(line: 146, column: 9, scope: !4671)
!4671 = distinct !DILexicalBlock(scope: !4665, file: !3, line: 145, column: 32)
!4672 = !DILocation(line: 146, column: 13, scope: !4671)
!4673 = !DILocation(line: 146, column: 28, scope: !4671)
!4674 = !DILocation(line: 146, column: 7, scope: !4671)
!4675 = !DILocation(line: 147, column: 7, scope: !4676)
!4676 = distinct !DILexicalBlock(scope: !4671, file: !3, line: 147, column: 7)
!4677 = !DILocation(line: 147, column: 7, scope: !4671)
!4678 = !DILocation(line: 148, column: 11, scope: !4676)
!4679 = !DILocation(line: 148, column: 4, scope: !4676)
!4680 = !DILocation(line: 149, column: 2, scope: !4671)
!4681 = !DILocation(line: 150, column: 36, scope: !4682)
!4682 = distinct !DILexicalBlock(scope: !4665, file: !3, line: 149, column: 9)
!4683 = !DILocation(line: 150, column: 3, scope: !4682)
!4684 = !DILocation(line: 153, column: 2, scope: !4635)
!4685 = !DILocation(line: 154, column: 1, scope: !4635)
!4686 = distinct !DISubprogram(name: "gb_bundle_idle", scope: !3, file: !3, line: 156, type: !3340, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!4687 = !DILocalVariable(name: "dev", arg: 1, scope: !4686, file: !3, line: 156, type: !3308)
!4688 = !DILocation(line: 156, column: 42, scope: !4686)
!4689 = !DILocation(line: 158, column: 28, scope: !4686)
!4690 = !DILocation(line: 158, column: 2, scope: !4686)
!4691 = !DILocation(line: 159, column: 25, scope: !4686)
!4692 = !DILocation(line: 159, column: 2, scope: !4686)
!4693 = !DILocation(line: 161, column: 2, scope: !4686)
!4694 = distinct !DISubprogram(name: "gb_bundle_disable_all_connections", scope: !3, file: !3, line: 92, type: !4495, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!4695 = !DILocalVariable(name: "bundle", arg: 1, scope: !4694, file: !3, line: 92, type: !139)
!4696 = !DILocation(line: 92, column: 65, scope: !4694)
!4697 = !DILocalVariable(name: "connection", scope: !4694, file: !3, line: 94, type: !3767)
!4698 = !DILocation(line: 94, column: 24, scope: !4694)
!4699 = !DILocalVariable(name: "__mptr", scope: !4700, file: !3, line: 96, type: !138)
!4700 = distinct !DILexicalBlock(scope: !4701, file: !3, line: 96, column: 2)
!4701 = distinct !DILexicalBlock(scope: !4694, file: !3, line: 96, column: 2)
!4702 = !DILocation(line: 96, column: 2, scope: !4700)
!4703 = !DILocation(line: 96, column: 2, scope: !4704)
!4704 = distinct !DILexicalBlock(scope: !4700, file: !3, line: 96, column: 2)
!4705 = !DILocation(line: 96, column: 2, scope: !4701)
!4706 = !DILocation(line: 96, column: 2, scope: !4707)
!4707 = distinct !DILexicalBlock(scope: !4701, file: !3, line: 96, column: 2)
!4708 = !DILocation(line: 97, column: 25, scope: !4707)
!4709 = !DILocation(line: 97, column: 3, scope: !4707)
!4710 = !DILocalVariable(name: "__mptr", scope: !4711, file: !3, line: 96, type: !138)
!4711 = distinct !DILexicalBlock(scope: !4707, file: !3, line: 96, column: 2)
!4712 = !DILocation(line: 96, column: 2, scope: !4711)
!4713 = !DILocation(line: 96, column: 2, scope: !4714)
!4714 = distinct !DILexicalBlock(scope: !4711, file: !3, line: 96, column: 2)
!4715 = distinct !{!4715, !4705, !4716}
!4716 = !DILocation(line: 97, column: 35, scope: !4701)
!4717 = !DILocation(line: 98, column: 1, scope: !4694)
!4718 = distinct !DISubprogram(name: "gb_bundle_enable_all_connections", scope: !3, file: !3, line: 100, type: !4495, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!4719 = !DILocalVariable(name: "bundle", arg: 1, scope: !4718, file: !3, line: 100, type: !139)
!4720 = !DILocation(line: 100, column: 64, scope: !4718)
!4721 = !DILocalVariable(name: "connection", scope: !4718, file: !3, line: 102, type: !3767)
!4722 = !DILocation(line: 102, column: 24, scope: !4718)
!4723 = !DILocalVariable(name: "__mptr", scope: !4724, file: !3, line: 104, type: !138)
!4724 = distinct !DILexicalBlock(scope: !4725, file: !3, line: 104, column: 2)
!4725 = distinct !DILexicalBlock(scope: !4718, file: !3, line: 104, column: 2)
!4726 = !DILocation(line: 104, column: 2, scope: !4724)
!4727 = !DILocation(line: 104, column: 2, scope: !4728)
!4728 = distinct !DILexicalBlock(scope: !4724, file: !3, line: 104, column: 2)
!4729 = !DILocation(line: 104, column: 2, scope: !4725)
!4730 = !DILocation(line: 104, column: 2, scope: !4731)
!4731 = distinct !DILexicalBlock(scope: !4725, file: !3, line: 104, column: 2)
!4732 = !DILocation(line: 105, column: 24, scope: !4731)
!4733 = !DILocation(line: 105, column: 3, scope: !4731)
!4734 = !DILocalVariable(name: "__mptr", scope: !4735, file: !3, line: 104, type: !138)
!4735 = distinct !DILexicalBlock(scope: !4731, file: !3, line: 104, column: 2)
!4736 = !DILocation(line: 104, column: 2, scope: !4735)
!4737 = !DILocation(line: 104, column: 2, scope: !4738)
!4738 = distinct !DILexicalBlock(scope: !4735, file: !3, line: 104, column: 2)
!4739 = distinct !{!4739, !4729, !4740}
!4740 = !DILocation(line: 105, column: 34, scope: !4725)
!4741 = !DILocation(line: 106, column: 1, scope: !4718)
!4742 = distinct !DISubprogram(name: "pm_runtime_mark_last_busy", scope: !4743, file: !4743, line: 194, type: !3331, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!4743 = !DIFile(filename: "./include/linux/pm_runtime.h", directory: "/home/lizy2001/genbc/linux")
!4744 = !DILocalVariable(name: "dev", arg: 1, scope: !4742, file: !4743, line: 194, type: !3308)
!4745 = !DILocation(line: 194, column: 61, scope: !4742)
!4746 = !DILocation(line: 196, column: 2, scope: !4742)
!4747 = !DILocation(line: 196, column: 2, scope: !4748)
!4748 = distinct !DILexicalBlock(scope: !4742, file: !4743, line: 196, column: 2)
!4749 = !DILocation(line: 196, column: 2, scope: !4750)
!4750 = distinct !DILexicalBlock(scope: !4748, file: !4743, line: 196, column: 2)
!4751 = !DILocation(line: 196, column: 2, scope: !4752)
!4752 = distinct !DILexicalBlock(scope: !4748, file: !4743, line: 196, column: 2)
!4753 = !DILocation(line: 197, column: 1, scope: !4742)
!4754 = distinct !DISubprogram(name: "pm_request_autosuspend", scope: !4743, file: !4743, line: 356, type: !3340, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!4755 = !DILocalVariable(name: "dev", arg: 1, scope: !4754, file: !4743, line: 356, type: !3308)
!4756 = !DILocation(line: 356, column: 57, scope: !4754)
!4757 = !DILocation(line: 358, column: 30, scope: !4754)
!4758 = !DILocation(line: 358, column: 9, scope: !4754)
!4759 = !DILocation(line: 358, column: 2, scope: !4754)
!4760 = distinct !DISubprogram(name: "get_order", scope: !4761, file: !4761, line: 29, type: !4762, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!4761 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4762 = !DISubroutineType(types: !4763)
!4763 = !{!194, !260}
!4764 = !DILocalVariable(name: "x", arg: 1, scope: !4765, file: !4766, line: 366, type: !356)
!4765 = distinct !DISubprogram(name: "fls64", scope: !4766, file: !4766, line: 366, type: !4767, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!4766 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4767 = !DISubroutineType(types: !4768)
!4768 = !{!194, !356}
!4769 = !DILocation(line: 366, column: 40, scope: !4765, inlinedAt: !4770)
!4770 = distinct !DILocation(line: 46, column: 9, scope: !4760)
!4771 = !DILocalVariable(name: "bitpos", scope: !4765, file: !4766, line: 368, type: !194)
!4772 = !DILocation(line: 368, column: 6, scope: !4765, inlinedAt: !4770)
!4773 = !DILocalVariable(name: "size", arg: 1, scope: !4760, file: !4761, line: 29, type: !260)
!4774 = !DILocation(line: 29, column: 63, scope: !4760)
!4775 = !DILocation(line: 31, column: 27, scope: !4776)
!4776 = distinct !DILexicalBlock(scope: !4760, file: !4761, line: 31, column: 6)
!4777 = !DILocation(line: 31, column: 6, scope: !4776)
!4778 = !DILocation(line: 31, column: 6, scope: !4760)
!4779 = !DILocation(line: 32, column: 8, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !4781, file: !4761, line: 32, column: 7)
!4781 = distinct !DILexicalBlock(scope: !4776, file: !4761, line: 31, column: 34)
!4782 = !DILocation(line: 32, column: 7, scope: !4781)
!4783 = !DILocation(line: 33, column: 4, scope: !4780)
!4784 = !DILocation(line: 35, column: 7, scope: !4785)
!4785 = distinct !DILexicalBlock(scope: !4781, file: !4761, line: 35, column: 7)
!4786 = !DILocation(line: 35, column: 12, scope: !4785)
!4787 = !DILocation(line: 35, column: 7, scope: !4781)
!4788 = !DILocation(line: 36, column: 4, scope: !4785)
!4789 = !DILocation(line: 38, column: 10, scope: !4781)
!4790 = !DILocation(line: 38, column: 28, scope: !4781)
!4791 = !DILocation(line: 38, column: 41, scope: !4781)
!4792 = !DILocation(line: 38, column: 3, scope: !4781)
!4793 = !DILocation(line: 41, column: 6, scope: !4760)
!4794 = !DILocation(line: 42, column: 7, scope: !4760)
!4795 = !DILocation(line: 46, column: 15, scope: !4760)
!4796 = !DILocation(line: 374, column: 2, scope: !4765, inlinedAt: !4770)
!4797 = !DILocation(line: 376, column: 14, scope: !4765, inlinedAt: !4770)
!4798 = !{i32 248775}
!4799 = !DILocation(line: 377, column: 9, scope: !4765, inlinedAt: !4770)
!4800 = !DILocation(line: 377, column: 16, scope: !4765, inlinedAt: !4770)
!4801 = !DILocation(line: 46, column: 2, scope: !4760)
!4802 = !DILocation(line: 48, column: 1, scope: !4760)
!4803 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4804, file: !4804, line: 30, type: !4805, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!4804 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4805 = !DISubroutineType(types: !4806)
!4806 = !{!194, !355}
!4807 = !DILocation(line: 366, column: 40, scope: !4765, inlinedAt: !4808)
!4808 = distinct !DILocation(line: 32, column: 9, scope: !4803)
!4809 = !DILocation(line: 368, column: 6, scope: !4765, inlinedAt: !4808)
!4810 = !DILocalVariable(name: "n", arg: 1, scope: !4803, file: !4804, line: 30, type: !355)
!4811 = !DILocation(line: 30, column: 21, scope: !4803)
!4812 = !DILocation(line: 32, column: 15, scope: !4803)
!4813 = !DILocation(line: 374, column: 2, scope: !4765, inlinedAt: !4808)
!4814 = !DILocation(line: 376, column: 14, scope: !4765, inlinedAt: !4808)
!4815 = !DILocation(line: 377, column: 9, scope: !4765, inlinedAt: !4808)
!4816 = !DILocation(line: 377, column: 16, scope: !4765, inlinedAt: !4808)
!4817 = !DILocation(line: 32, column: 18, scope: !4803)
!4818 = !DILocation(line: 32, column: 2, scope: !4803)
!4819 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4820, file: !4820, line: 137, type: !4821, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!4820 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4821 = !DISubroutineType(types: !4822)
!4822 = !{!138, !871, !2062, !257, !136}
!4823 = !DILocalVariable(name: "s", arg: 1, scope: !4819, file: !4820, line: 137, type: !871)
!4824 = !DILocation(line: 137, column: 54, scope: !4819)
!4825 = !DILocalVariable(name: "object", arg: 2, scope: !4819, file: !4820, line: 137, type: !2062)
!4826 = !DILocation(line: 137, column: 69, scope: !4819)
!4827 = !DILocalVariable(name: "size", arg: 3, scope: !4819, file: !4820, line: 138, type: !257)
!4828 = !DILocation(line: 138, column: 12, scope: !4819)
!4829 = !DILocalVariable(name: "flags", arg: 4, scope: !4819, file: !4820, line: 138, type: !136)
!4830 = !DILocation(line: 138, column: 24, scope: !4819)
!4831 = !DILocation(line: 140, column: 17, scope: !4819)
!4832 = !DILocation(line: 140, column: 2, scope: !4819)
!4833 = distinct !DISubprogram(name: "bundle_class_show", scope: !3, file: !3, line: 12, type: !4007, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!4834 = !DILocalVariable(name: "dev", arg: 1, scope: !4833, file: !3, line: 12, type: !3308)
!4835 = !DILocation(line: 12, column: 49, scope: !4833)
!4836 = !DILocalVariable(name: "attr", arg: 2, scope: !4833, file: !3, line: 13, type: !4009)
!4837 = !DILocation(line: 13, column: 31, scope: !4833)
!4838 = !DILocalVariable(name: "buf", arg: 3, scope: !4833, file: !3, line: 13, type: !210)
!4839 = !DILocation(line: 13, column: 43, scope: !4833)
!4840 = !DILocalVariable(name: "bundle", scope: !4833, file: !3, line: 15, type: !139)
!4841 = !DILocation(line: 15, column: 20, scope: !4833)
!4842 = !DILocalVariable(name: "__mptr", scope: !4843, file: !3, line: 15, type: !138)
!4843 = distinct !DILexicalBlock(scope: !4833, file: !3, line: 15, column: 29)
!4844 = !DILocation(line: 15, column: 29, scope: !4843)
!4845 = !DILocation(line: 15, column: 29, scope: !4846)
!4846 = distinct !DILexicalBlock(scope: !4843, file: !3, line: 15, column: 29)
!4847 = !DILocation(line: 17, column: 17, scope: !4833)
!4848 = !DILocation(line: 17, column: 34, scope: !4833)
!4849 = !DILocation(line: 17, column: 42, scope: !4833)
!4850 = !DILocation(line: 17, column: 9, scope: !4833)
!4851 = !DILocation(line: 17, column: 2, scope: !4833)
!4852 = distinct !DISubprogram(name: "bundle_id_show", scope: !3, file: !3, line: 21, type: !4007, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!4853 = !DILocalVariable(name: "dev", arg: 1, scope: !4852, file: !3, line: 21, type: !3308)
!4854 = !DILocation(line: 21, column: 46, scope: !4852)
!4855 = !DILocalVariable(name: "attr", arg: 2, scope: !4852, file: !3, line: 22, type: !4009)
!4856 = !DILocation(line: 22, column: 35, scope: !4852)
!4857 = !DILocalVariable(name: "buf", arg: 3, scope: !4852, file: !3, line: 22, type: !210)
!4858 = !DILocation(line: 22, column: 47, scope: !4852)
!4859 = !DILocalVariable(name: "bundle", scope: !4852, file: !3, line: 24, type: !139)
!4860 = !DILocation(line: 24, column: 20, scope: !4852)
!4861 = !DILocalVariable(name: "__mptr", scope: !4862, file: !3, line: 24, type: !138)
!4862 = distinct !DILexicalBlock(scope: !4852, file: !3, line: 24, column: 29)
!4863 = !DILocation(line: 24, column: 29, scope: !4862)
!4864 = !DILocation(line: 24, column: 29, scope: !4865)
!4865 = distinct !DILexicalBlock(scope: !4862, file: !3, line: 24, column: 29)
!4866 = !DILocation(line: 26, column: 17, scope: !4852)
!4867 = !DILocation(line: 26, column: 30, scope: !4852)
!4868 = !DILocation(line: 26, column: 38, scope: !4852)
!4869 = !DILocation(line: 26, column: 9, scope: !4852)
!4870 = !DILocation(line: 26, column: 2, scope: !4852)
!4871 = distinct !DISubprogram(name: "state_show", scope: !3, file: !3, line: 30, type: !4007, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!4872 = !DILocalVariable(name: "dev", arg: 1, scope: !4871, file: !3, line: 30, type: !3308)
!4873 = !DILocation(line: 30, column: 42, scope: !4871)
!4874 = !DILocalVariable(name: "attr", arg: 2, scope: !4871, file: !3, line: 30, type: !4009)
!4875 = !DILocation(line: 30, column: 72, scope: !4871)
!4876 = !DILocalVariable(name: "buf", arg: 3, scope: !4871, file: !3, line: 31, type: !210)
!4877 = !DILocation(line: 31, column: 12, scope: !4871)
!4878 = !DILocalVariable(name: "bundle", scope: !4871, file: !3, line: 33, type: !139)
!4879 = !DILocation(line: 33, column: 20, scope: !4871)
!4880 = !DILocalVariable(name: "__mptr", scope: !4881, file: !3, line: 33, type: !138)
!4881 = distinct !DILexicalBlock(scope: !4871, file: !3, line: 33, column: 29)
!4882 = !DILocation(line: 33, column: 29, scope: !4881)
!4883 = !DILocation(line: 33, column: 29, scope: !4884)
!4884 = distinct !DILexicalBlock(scope: !4881, file: !3, line: 33, column: 29)
!4885 = !DILocation(line: 35, column: 7, scope: !4886)
!4886 = distinct !DILexicalBlock(scope: !4871, file: !3, line: 35, column: 6)
!4887 = !DILocation(line: 35, column: 15, scope: !4886)
!4888 = !DILocation(line: 35, column: 6, scope: !4871)
!4889 = !DILocation(line: 36, column: 18, scope: !4886)
!4890 = !DILocation(line: 36, column: 10, scope: !4886)
!4891 = !DILocation(line: 36, column: 3, scope: !4886)
!4892 = !DILocation(line: 38, column: 17, scope: !4871)
!4893 = !DILocation(line: 38, column: 30, scope: !4871)
!4894 = !DILocation(line: 38, column: 38, scope: !4871)
!4895 = !DILocation(line: 38, column: 9, scope: !4871)
!4896 = !DILocation(line: 38, column: 2, scope: !4871)
!4897 = !DILocation(line: 39, column: 1, scope: !4871)
!4898 = distinct !DISubprogram(name: "state_store", scope: !3, file: !3, line: 41, type: !4012, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!4899 = !DILocalVariable(name: "dev", arg: 1, scope: !4898, file: !3, line: 41, type: !3308)
!4900 = !DILocation(line: 41, column: 43, scope: !4898)
!4901 = !DILocalVariable(name: "attr", arg: 2, scope: !4898, file: !3, line: 41, type: !4009)
!4902 = !DILocation(line: 41, column: 73, scope: !4898)
!4903 = !DILocalVariable(name: "buf", arg: 3, scope: !4898, file: !3, line: 42, type: !151)
!4904 = !DILocation(line: 42, column: 19, scope: !4898)
!4905 = !DILocalVariable(name: "size", arg: 4, scope: !4898, file: !3, line: 42, type: !257)
!4906 = !DILocation(line: 42, column: 31, scope: !4898)
!4907 = !DILocalVariable(name: "bundle", scope: !4898, file: !3, line: 44, type: !139)
!4908 = !DILocation(line: 44, column: 20, scope: !4898)
!4909 = !DILocalVariable(name: "__mptr", scope: !4910, file: !3, line: 44, type: !138)
!4910 = distinct !DILexicalBlock(scope: !4898, file: !3, line: 44, column: 29)
!4911 = !DILocation(line: 44, column: 29, scope: !4910)
!4912 = !DILocation(line: 44, column: 29, scope: !4913)
!4913 = distinct !DILexicalBlock(scope: !4910, file: !3, line: 44, column: 29)
!4914 = !DILocation(line: 46, column: 8, scope: !4898)
!4915 = !DILocation(line: 46, column: 16, scope: !4898)
!4916 = !DILocation(line: 46, column: 2, scope: !4898)
!4917 = !DILocation(line: 47, column: 26, scope: !4898)
!4918 = !DILocation(line: 47, column: 18, scope: !4898)
!4919 = !DILocation(line: 47, column: 2, scope: !4898)
!4920 = !DILocation(line: 47, column: 10, scope: !4898)
!4921 = !DILocation(line: 47, column: 16, scope: !4898)
!4922 = !DILocation(line: 48, column: 7, scope: !4923)
!4923 = distinct !DILexicalBlock(scope: !4898, file: !3, line: 48, column: 6)
!4924 = !DILocation(line: 48, column: 15, scope: !4923)
!4925 = !DILocation(line: 48, column: 6, scope: !4898)
!4926 = !DILocation(line: 49, column: 3, scope: !4923)
!4927 = !DILocation(line: 52, column: 16, scope: !4898)
!4928 = !DILocation(line: 52, column: 24, scope: !4898)
!4929 = !DILocation(line: 52, column: 28, scope: !4898)
!4930 = !DILocation(line: 52, column: 2, scope: !4898)
!4931 = !DILocation(line: 54, column: 9, scope: !4898)
!4932 = !DILocation(line: 54, column: 2, scope: !4898)
!4933 = !DILocation(line: 55, column: 1, scope: !4898)
!4934 = distinct !DISubprogram(name: "kobject_name", scope: !148, file: !148, line: 88, type: !4935, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!4935 = !DISubroutineType(types: !4936)
!4936 = !{!151, !4937}
!4937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4938, size: 64)
!4938 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!4939 = !DILocalVariable(name: "kobj", arg: 1, scope: !4934, file: !148, line: 88, type: !4937)
!4940 = !DILocation(line: 88, column: 62, scope: !4934)
!4941 = !DILocation(line: 90, column: 9, scope: !4934)
!4942 = !DILocation(line: 90, column: 15, scope: !4934)
!4943 = !DILocation(line: 90, column: 2, scope: !4934)
!4944 = distinct !DISubprogram(name: "__list_add", scope: !4446, file: !4446, line: 63, type: !4945, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!4945 = !DISubroutineType(types: !4946)
!4946 = !{null, !158, !158, !158}
!4947 = !DILocalVariable(name: "new", arg: 1, scope: !4944, file: !4446, line: 63, type: !158)
!4948 = !DILocation(line: 63, column: 49, scope: !4944)
!4949 = !DILocalVariable(name: "prev", arg: 2, scope: !4944, file: !4446, line: 64, type: !158)
!4950 = !DILocation(line: 64, column: 28, scope: !4944)
!4951 = !DILocalVariable(name: "next", arg: 3, scope: !4944, file: !4446, line: 65, type: !158)
!4952 = !DILocation(line: 65, column: 28, scope: !4944)
!4953 = !DILocation(line: 67, column: 24, scope: !4954)
!4954 = distinct !DILexicalBlock(scope: !4944, file: !4446, line: 67, column: 6)
!4955 = !DILocation(line: 67, column: 29, scope: !4954)
!4956 = !DILocation(line: 67, column: 35, scope: !4954)
!4957 = !DILocation(line: 67, column: 7, scope: !4954)
!4958 = !DILocation(line: 67, column: 6, scope: !4944)
!4959 = !DILocation(line: 68, column: 3, scope: !4954)
!4960 = !DILocation(line: 70, column: 15, scope: !4944)
!4961 = !DILocation(line: 70, column: 2, scope: !4944)
!4962 = !DILocation(line: 70, column: 8, scope: !4944)
!4963 = !DILocation(line: 70, column: 13, scope: !4944)
!4964 = !DILocation(line: 71, column: 14, scope: !4944)
!4965 = !DILocation(line: 71, column: 2, scope: !4944)
!4966 = !DILocation(line: 71, column: 7, scope: !4944)
!4967 = !DILocation(line: 71, column: 12, scope: !4944)
!4968 = !DILocation(line: 72, column: 14, scope: !4944)
!4969 = !DILocation(line: 72, column: 2, scope: !4944)
!4970 = !DILocation(line: 72, column: 7, scope: !4944)
!4971 = !DILocation(line: 72, column: 12, scope: !4944)
!4972 = !DILocation(line: 73, column: 2, scope: !4944)
!4973 = !DILocation(line: 73, column: 2, scope: !4974)
!4974 = distinct !DILexicalBlock(scope: !4944, file: !4446, line: 73, column: 2)
!4975 = !DILocation(line: 73, column: 2, scope: !4976)
!4976 = distinct !DILexicalBlock(scope: !4974, file: !4446, line: 73, column: 2)
!4977 = !DILocation(line: 73, column: 2, scope: !4978)
!4978 = distinct !DILexicalBlock(scope: !4974, file: !4446, line: 73, column: 2)
!4979 = !DILocation(line: 74, column: 1, scope: !4944)
!4980 = distinct !DISubprogram(name: "__list_add_valid", scope: !4446, file: !4446, line: 45, type: !4981, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!4981 = !DISubroutineType(types: !4982)
!4982 = !{!423, !158, !158, !158}
!4983 = !DILocalVariable(name: "new", arg: 1, scope: !4980, file: !4446, line: 45, type: !158)
!4984 = !DILocation(line: 45, column: 55, scope: !4980)
!4985 = !DILocalVariable(name: "prev", arg: 2, scope: !4980, file: !4446, line: 46, type: !158)
!4986 = !DILocation(line: 46, column: 23, scope: !4980)
!4987 = !DILocalVariable(name: "next", arg: 3, scope: !4980, file: !4446, line: 47, type: !158)
!4988 = !DILocation(line: 47, column: 23, scope: !4980)
!4989 = !DILocation(line: 49, column: 2, scope: !4980)
!4990 = distinct !DISubprogram(name: "__list_del_entry", scope: !4446, file: !4446, line: 130, type: !4447, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!4991 = !DILocalVariable(name: "entry", arg: 1, scope: !4990, file: !4446, line: 130, type: !158)
!4992 = !DILocation(line: 130, column: 55, scope: !4990)
!4993 = !DILocation(line: 132, column: 30, scope: !4994)
!4994 = distinct !DILexicalBlock(scope: !4990, file: !4446, line: 132, column: 6)
!4995 = !DILocation(line: 132, column: 7, scope: !4994)
!4996 = !DILocation(line: 132, column: 6, scope: !4990)
!4997 = !DILocation(line: 133, column: 3, scope: !4994)
!4998 = !DILocation(line: 135, column: 13, scope: !4990)
!4999 = !DILocation(line: 135, column: 20, scope: !4990)
!5000 = !DILocation(line: 135, column: 26, scope: !4990)
!5001 = !DILocation(line: 135, column: 33, scope: !4990)
!5002 = !DILocation(line: 135, column: 2, scope: !4990)
!5003 = !DILocation(line: 136, column: 1, scope: !4990)
!5004 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !4446, file: !4446, line: 51, type: !5005, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!5005 = !DISubroutineType(types: !5006)
!5006 = !{!423, !158}
!5007 = !DILocalVariable(name: "entry", arg: 1, scope: !5004, file: !4446, line: 51, type: !158)
!5008 = !DILocation(line: 51, column: 61, scope: !5004)
!5009 = !DILocation(line: 53, column: 2, scope: !5004)
!5010 = distinct !DISubprogram(name: "__list_del", scope: !4446, file: !4446, line: 110, type: !4481, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !182)
!5011 = !DILocalVariable(name: "prev", arg: 1, scope: !5010, file: !4446, line: 110, type: !158)
!5012 = !DILocation(line: 110, column: 50, scope: !5010)
!5013 = !DILocalVariable(name: "next", arg: 2, scope: !5010, file: !4446, line: 110, type: !158)
!5014 = !DILocation(line: 110, column: 75, scope: !5010)
!5015 = !DILocation(line: 112, column: 15, scope: !5010)
!5016 = !DILocation(line: 112, column: 2, scope: !5010)
!5017 = !DILocation(line: 112, column: 8, scope: !5010)
!5018 = !DILocation(line: 112, column: 13, scope: !5010)
!5019 = !DILocation(line: 113, column: 2, scope: !5010)
!5020 = !DILocation(line: 113, column: 2, scope: !5021)
!5021 = distinct !DILexicalBlock(scope: !5010, file: !4446, line: 113, column: 2)
!5022 = !DILocation(line: 113, column: 2, scope: !5023)
!5023 = distinct !DILexicalBlock(scope: !5021, file: !4446, line: 113, column: 2)
!5024 = !DILocation(line: 113, column: 2, scope: !5025)
!5025 = distinct !DILexicalBlock(scope: !5021, file: !4446, line: 113, column: 2)
!5026 = !DILocation(line: 114, column: 1, scope: !5010)
