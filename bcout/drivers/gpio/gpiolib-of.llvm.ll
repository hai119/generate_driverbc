; ModuleID = '../bcout/drivers/gpio/gpiolib-of.llvm.bc'
source_filename = "drivers/gpio/gpiolib-of.c"
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.63, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.63 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type { %union.anon, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.61, %struct.list_head, %struct.list_head, %union.anon.62 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.0, i8* }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.59 }
%union.anon.59 = type { %struct.anon.60 }
%struct.anon.60 = type { %struct.spinlock, i32 }
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
%struct.page = type { i64, %union.anon.2, %union.anon.51, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.51 = type { %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.52, i32 }
%union.anon.52 = type { %struct.kuid_t }
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
%union.anon.61 = type { %struct.list_head }
%union.anon.62 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.53, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.54, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.55, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.58, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%union.anon.53 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.54 = type { %struct.callback_head }
%union.anon.55 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.4 }
%union.anon.4 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.58 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.56 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.56 = type { %struct.nfs_lock_info }
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
%struct.msi_desc = type opaque
%struct.irq_chip = type { %struct.device*, i8*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*)*, i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.seq_file*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.msi_msg*)*, void (%struct.irq_data*, %struct.msi_msg*)*, {}*, {}*, i32 (%struct.irq_data*, i8*)*, void (%struct.irq_data*, i32)*, void (%struct.irq_data*, %struct.cpumask*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, i64 }
%struct.msi_msg = type opaque
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32, i32, [0 x %struct.irq_chip_generic*] }
%struct.irq_chip_generic = type { %struct.raw_spinlock, i8*, i32 (i8*)*, void (i32, i8*)*, void (%struct.irq_chip_generic*)*, void (%struct.irq_chip_generic*)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, %struct.irq_domain*, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, void (%struct.irq_desc*)*, i32, i32, i32* }
%struct.irq_chip_regs = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, i32*, {}*, %struct.irqaction*, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, %struct.cpumask*, %struct.cpumask*, i64, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, %struct.proc_dir_entry*, %struct.callback_head, %struct.kobject, %struct.mutex, i32, %struct.module*, i8* }
%struct.irqaction = type opaque
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.gpio_chip = type { i8*, %struct.gpio_device*, %struct.device*, %struct.module*, i32 (%struct.gpio_chip*, i32)*, void (%struct.gpio_chip*, i32)*, i32 (%struct.gpio_chip*, i32)*, i32 (%struct.gpio_chip*, i32)*, i32 (%struct.gpio_chip*, i32, i32)*, i32 (%struct.gpio_chip*, i32)*, i32 (%struct.gpio_chip*, i64*, i64*)*, void (%struct.gpio_chip*, i32, i32)*, void (%struct.gpio_chip*, i64*, i64*)*, i32 (%struct.gpio_chip*, i32, i64)*, i32 (%struct.gpio_chip*, i32)*, void (%struct.seq_file*, %struct.gpio_chip*)*, i32 (%struct.gpio_chip*, i64*, i32)*, i32 (%struct.gpio_chip*)*, i32, i16, i8**, i8, i64 (i8*)*, void (i8*, i64)*, i8, i8*, i8*, i8*, i8*, i8*, i8, i32, %struct.spinlock, i64, i64, %struct.gpio_irq_chip, i64*, %struct.device_node*, i32, i32 (%struct.gpio_chip*, %struct.of_phandle_args*, i32*)* }
%struct.gpio_device = type { i32, %struct.device, %struct.cdev, %struct.device*, %struct.module*, %struct.gpio_chip*, %struct.gpio_desc*, i32, i16, i8*, i8*, %struct.list_head, %struct.blocking_notifier_head }
%struct.cdev = type { %struct.kobject, %struct.module*, %struct.file_operations*, %struct.list_head, i32, i32 }
%struct.gpio_desc = type { %struct.gpio_device*, i64, i8*, i8*, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, %struct.notifier_block* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.gpio_irq_chip = type { %struct.irq_chip*, %struct.irq_domain*, %struct.irq_domain_ops*, %struct.fwnode_handle*, %struct.irq_domain*, i32 (%struct.gpio_chip*, i32, i32, i32*, i32*)*, i8* (%struct.gpio_chip*, i32, i32)*, i32 (%struct.gpio_chip*, i32)*, %struct.irq_domain_ops, void (%struct.irq_desc*)*, i32, %struct.lock_class_key*, %struct.lock_class_key*, void (%struct.irq_desc*)*, i8*, i32, i32*, i32*, i8, i32 (%struct.gpio_chip*)*, void (%struct.gpio_chip*, i64*, i32)*, i64*, i32, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)* }
%struct.of_phandle_args = type { %struct.device_node*, i32, [16 x i32] }
%struct.of_mm_gpio_chip = type { %struct.gpio_chip, void (%struct.of_mm_gpio_chip*)*, i8* }

@.str = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@gpio_suffixes = internal constant [2 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0)], align 16, !dbg !0
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"gpio-reserved-ranges\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%pOF\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"\013%pOF: GPIO chip registration failed with status %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"cs\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"fsl,spi\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"aeroflexgaisler,spictrl\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"ibm,ppc4xx-spi\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"gpios\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"#gpio-cells\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"cs-gpios\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"spi-cs-high\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"\014%s GPIO handle specifies active low - ignored\0A\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"\016%s enforce active low on chipselect handle\0A\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"snps,reset-gpio\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"snps,reset-active-low\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"<no-node>\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"spi-gpio\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"wlf,ldoena\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"wlf,ldo1ena\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"wlf,ldo2ena\00", align 1
@__const.of_find_regulator_gpio.whitelist = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0)], align 16
@.str.24 = private unnamed_addr constant [26 x i8] c"drivers/gpio/gpiolib-of.c\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"gpio-hog\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"output-low\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"output-high\00", align 1
@.str.29 = private unnamed_addr constant [65 x i8] c"\014GPIO line %d (%pOFn): no hogging state specified, bailing out\0A\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"line-name\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @of_gpio_get_count(%struct.device* %dev, i8* %con_id) #0 !dbg !163 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %con_id.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %propname = alloca [32 x i8], align 16
  %i = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3965, metadata !DIExpression()), !dbg !3966
  store i8* %con_id, i8** %con_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %con_id.addr, metadata !3967, metadata !DIExpression()), !dbg !3968
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3969, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.declare(metadata [32 x i8]* %propname, metadata !3971, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3973, metadata !DIExpression()), !dbg !3974
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3975
  %1 = load i8*, i8** %con_id.addr, align 8, !dbg !3976
  %call = call i32 @of_gpio_spi_cs_get_count(%struct.device* %0, i8* %1) #6, !dbg !3977
  store i32 %call, i32* %ret, align 4, !dbg !3978
  %2 = load i32, i32* %ret, align 4, !dbg !3979
  %cmp = icmp sgt i32 %2, 0, !dbg !3981
  br i1 %cmp, label %if.then, label %if.end, !dbg !3982

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %ret, align 4, !dbg !3983
  store i32 %3, i32* %retval, align 4, !dbg !3984
  br label %return, !dbg !3984

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !3985
  br label %for.cond, !dbg !3987

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4, !dbg !3988
  %conv = zext i32 %4 to i64, !dbg !3988
  %cmp1 = icmp ult i64 %conv, 2, !dbg !3990
  br i1 %cmp1, label %for.body, label %for.end, !dbg !3991

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %con_id.addr, align 8, !dbg !3992
  %tobool = icmp ne i8* %5, null, !dbg !3992
  br i1 %tobool, label %if.then3, label %if.else, !dbg !3995

if.then3:                                         ; preds = %for.body
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %propname, i64 0, i64 0, !dbg !3996
  %6 = load i8*, i8** %con_id.addr, align 8, !dbg !3997
  %7 = load i32, i32* %i, align 4, !dbg !3998
  %idxprom = zext i32 %7 to i64, !dbg !3999
  %arrayidx = getelementptr [2 x i8*], [2 x i8*]* @gpio_suffixes, i64 0, i64 %idxprom, !dbg !3999
  %8 = load i8*, i8** %arrayidx, align 8, !dbg !3999
  %call4 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %6, i8* %8) #6, !dbg !4000
  br label %if.end9, !dbg !4000

if.else:                                          ; preds = %for.body
  %arraydecay5 = getelementptr inbounds [32 x i8], [32 x i8]* %propname, i64 0, i64 0, !dbg !4001
  %9 = load i32, i32* %i, align 4, !dbg !4002
  %idxprom6 = zext i32 %9 to i64, !dbg !4003
  %arrayidx7 = getelementptr [2 x i8*], [2 x i8*]* @gpio_suffixes, i64 0, i64 %idxprom6, !dbg !4003
  %10 = load i8*, i8** %arrayidx7, align 8, !dbg !4003
  %call8 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay5, i64 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %10) #6, !dbg !4004
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then3
  %11 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4005
  %of_node = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 23, !dbg !4006
  %12 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !4006
  %arraydecay10 = getelementptr inbounds [32 x i8], [32 x i8]* %propname, i64 0, i64 0, !dbg !4007
  %call11 = call i32 @of_gpio_named_count(%struct.device_node* %12, i8* %arraydecay10) #6, !dbg !4008
  store i32 %call11, i32* %ret, align 4, !dbg !4009
  %13 = load i32, i32* %ret, align 4, !dbg !4010
  %cmp12 = icmp sgt i32 %13, 0, !dbg !4012
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !4013

if.then14:                                        ; preds = %if.end9
  br label %for.end, !dbg !4014

if.end15:                                         ; preds = %if.end9
  br label %for.inc, !dbg !4015

for.inc:                                          ; preds = %if.end15
  %14 = load i32, i32* %i, align 4, !dbg !4016
  %inc = add i32 %14, 1, !dbg !4016
  store i32 %inc, i32* %i, align 4, !dbg !4016
  br label %for.cond, !dbg !4017, !llvm.loop !4018

for.end:                                          ; preds = %if.then14, %for.cond
  %15 = load i32, i32* %ret, align 4, !dbg !4020
  %tobool16 = icmp ne i32 %15, 0, !dbg !4020
  br i1 %tobool16, label %cond.true, label %cond.false, !dbg !4020

cond.true:                                        ; preds = %for.end
  %16 = load i32, i32* %ret, align 4, !dbg !4021
  br label %cond.end, !dbg !4020

cond.false:                                       ; preds = %for.end
  br label %cond.end, !dbg !4020

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %16, %cond.true ], [ -2, %cond.false ], !dbg !4020
  store i32 %cond, i32* %retval, align 4, !dbg !4022
  br label %return, !dbg !4022

return:                                           ; preds = %cond.end, %if.then
  %17 = load i32, i32* %retval, align 4, !dbg !4023
  ret i32 %17, !dbg !4023
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_gpio_spi_cs_get_count(%struct.device* %dev, i8* %con_id) #0 !dbg !4024 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %con_id.addr = alloca i8*, align 8
  %np = alloca %struct.device_node*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4025, metadata !DIExpression()), !dbg !4026
  store i8* %con_id, i8** %con_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %con_id.addr, metadata !4027, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.declare(metadata %struct.device_node** %np, metadata !4029, metadata !DIExpression()), !dbg !4030
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4031
  %of_node = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 23, !dbg !4032
  %1 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !4032
  store %struct.device_node* %1, %struct.device_node** %np, align 8, !dbg !4030
  %2 = load i8*, i8** %con_id.addr, align 8, !dbg !4033
  %tobool = icmp ne i8* %2, null, !dbg !4033
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4035

lor.lhs.false:                                    ; preds = %entry
  %3 = load i8*, i8** %con_id.addr, align 8, !dbg !4036
  %call = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !4037
  %tobool1 = icmp ne i32 %call, 0, !dbg !4037
  br i1 %tobool1, label %if.then, label %if.end, !dbg !4038

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4, !dbg !4039
  br label %return, !dbg !4039

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !4040
  %call2 = call i32 @of_device_is_compatible(%struct.device_node* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !4042
  %tobool3 = icmp ne i32 %call2, 0, !dbg !4042
  br i1 %tobool3, label %if.end10, label %land.lhs.true, !dbg !4043

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !4044
  %call4 = call i32 @of_device_is_compatible(%struct.device_node* %5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !4045
  %tobool5 = icmp ne i32 %call4, 0, !dbg !4045
  br i1 %tobool5, label %if.end10, label %land.lhs.true6, !dbg !4046

land.lhs.true6:                                   ; preds = %land.lhs.true
  %6 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !4047
  %call7 = call i32 @of_device_is_compatible(%struct.device_node* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !4048
  %tobool8 = icmp ne i32 %call7, 0, !dbg !4048
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !4049

if.then9:                                         ; preds = %land.lhs.true6
  store i32 0, i32* %retval, align 4, !dbg !4050
  br label %return, !dbg !4050

if.end10:                                         ; preds = %land.lhs.true6, %land.lhs.true, %if.end
  %7 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !4051
  %call11 = call i32 @of_gpio_named_count(%struct.device_node* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !4052
  store i32 %call11, i32* %retval, align 4, !dbg !4053
  br label %return, !dbg !4053

return:                                           ; preds = %if.end10, %if.then9, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !4054
  ret i32 %8, !dbg !4054
}

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_gpio_named_count(%struct.device_node* %np, i8* %propname) #0 !dbg !4055 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4058, metadata !DIExpression()), !dbg !4059
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !4060, metadata !DIExpression()), !dbg !4061
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4062
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !4063
  %call = call i32 @of_count_phandle_with_args(%struct.device_node* %0, i8* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !4064
  ret i32 %call, !dbg !4065
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @of_gpio_need_valid_mask(%struct.gpio_chip* %gc) #0 !dbg !4066 {
entry:
  %retval = alloca i1, align 1
  %gc.addr = alloca %struct.gpio_chip*, align 8
  %size = alloca i32, align 4
  %np = alloca %struct.device_node*, align 8
  store %struct.gpio_chip* %gc, %struct.gpio_chip** %gc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_chip** %gc.addr, metadata !4244, metadata !DIExpression()), !dbg !4245
  call void @llvm.dbg.declare(metadata i32* %size, metadata !4246, metadata !DIExpression()), !dbg !4247
  call void @llvm.dbg.declare(metadata %struct.device_node** %np, metadata !4248, metadata !DIExpression()), !dbg !4249
  %0 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4250
  %of_node = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %0, i32 0, i32 37, !dbg !4251
  %1 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !4251
  store %struct.device_node* %1, %struct.device_node** %np, align 8, !dbg !4249
  %2 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !4252
  %call = call i32 @of_property_count_u32_elems(%struct.device_node* %2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !4253
  store i32 %call, i32* %size, align 4, !dbg !4254
  %3 = load i32, i32* %size, align 4, !dbg !4255
  %cmp = icmp sgt i32 %3, 0, !dbg !4257
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !4258

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* %size, align 4, !dbg !4259
  %rem = srem i32 %4, 2, !dbg !4260
  %cmp1 = icmp eq i32 %rem, 0, !dbg !4261
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4262

if.then:                                          ; preds = %land.lhs.true
  store i1 true, i1* %retval, align 1, !dbg !4263
  br label %return, !dbg !4263

if.end:                                           ; preds = %land.lhs.true, %entry
  store i1 false, i1* %retval, align 1, !dbg !4264
  br label %return, !dbg !4264

return:                                           ; preds = %if.end, %if.then
  %5 = load i1, i1* %retval, align 1, !dbg !4265
  ret i1 %5, !dbg !4265
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_property_count_u32_elems(%struct.device_node* %np, i8* %propname) #0 !dbg !4266 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4271, metadata !DIExpression()), !dbg !4272
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !4273, metadata !DIExpression()), !dbg !4274
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4275
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !4276
  %call = call i32 @of_property_count_elems_of_size(%struct.device_node* %0, i8* %1, i32 4) #6, !dbg !4277
  ret i32 %call, !dbg !4278
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @of_get_named_gpio_flags(%struct.device_node* %np, i8* %list_name, i32 %index, i32* %flags) #0 !dbg !4279 {
entry:
  %retval = alloca i32, align 4
  %np.addr = alloca %struct.device_node*, align 8
  %list_name.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  %flags.addr = alloca i32*, align 8
  %desc = alloca %struct.gpio_desc*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4283, metadata !DIExpression()), !dbg !4284
  store i8* %list_name, i8** %list_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %list_name.addr, metadata !4285, metadata !DIExpression()), !dbg !4286
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !4287, metadata !DIExpression()), !dbg !4288
  store i32* %flags, i32** %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %flags.addr, metadata !4289, metadata !DIExpression()), !dbg !4290
  call void @llvm.dbg.declare(metadata %struct.gpio_desc** %desc, metadata !4291, metadata !DIExpression()), !dbg !4292
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4293
  %1 = load i8*, i8** %list_name.addr, align 8, !dbg !4294
  %2 = load i32, i32* %index.addr, align 4, !dbg !4295
  %3 = load i32*, i32** %flags.addr, align 8, !dbg !4296
  %call = call %struct.gpio_desc* @of_get_named_gpiod_flags(%struct.device_node* %0, i8* %1, i32 %2, i32* %3) #6, !dbg !4297
  store %struct.gpio_desc* %call, %struct.gpio_desc** %desc, align 8, !dbg !4298
  %4 = load %struct.gpio_desc*, %struct.gpio_desc** %desc, align 8, !dbg !4299
  %5 = bitcast %struct.gpio_desc* %4 to i8*, !dbg !4299
  %call1 = call zeroext i1 @IS_ERR(i8* %5) #6, !dbg !4301
  br i1 %call1, label %if.then, label %if.else, !dbg !4302

if.then:                                          ; preds = %entry
  %6 = load %struct.gpio_desc*, %struct.gpio_desc** %desc, align 8, !dbg !4303
  %7 = bitcast %struct.gpio_desc* %6 to i8*, !dbg !4303
  %call2 = call i64 @PTR_ERR(i8* %7) #6, !dbg !4304
  %conv = trunc i64 %call2 to i32, !dbg !4304
  store i32 %conv, i32* %retval, align 4, !dbg !4305
  br label %return, !dbg !4305

if.else:                                          ; preds = %entry
  %8 = load %struct.gpio_desc*, %struct.gpio_desc** %desc, align 8, !dbg !4306
  %call3 = call i32 @desc_to_gpio(%struct.gpio_desc* %8) #6, !dbg !4307
  store i32 %call3, i32* %retval, align 4, !dbg !4308
  br label %return, !dbg !4308

return:                                           ; preds = %if.else, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !4309
  ret i32 %9, !dbg !4309
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.gpio_desc* @of_get_named_gpiod_flags(%struct.device_node* %np, i8* %propname, i32 %index, i32* %flags) #0 !dbg !4310 {
entry:
  %retval = alloca %struct.gpio_desc*, align 8
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  %flags.addr = alloca i32*, align 8
  %gpiospec = alloca %struct.of_phandle_args, align 8
  %chip = alloca %struct.gpio_chip*, align 8
  %desc = alloca %struct.gpio_desc*, align 8
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp14 = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4313, metadata !DIExpression()), !dbg !4314
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !4315, metadata !DIExpression()), !dbg !4316
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !4317, metadata !DIExpression()), !dbg !4318
  store i32* %flags, i32** %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %flags.addr, metadata !4319, metadata !DIExpression()), !dbg !4320
  call void @llvm.dbg.declare(metadata %struct.of_phandle_args* %gpiospec, metadata !4321, metadata !DIExpression()), !dbg !4322
  call void @llvm.dbg.declare(metadata %struct.gpio_chip** %chip, metadata !4323, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.declare(metadata %struct.gpio_desc** %desc, metadata !4325, metadata !DIExpression()), !dbg !4326
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4327, metadata !DIExpression()), !dbg !4328
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4329
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !4330
  %2 = load i32, i32* %index.addr, align 4, !dbg !4331
  %call = call i32 @of_parse_phandle_with_args_map(%struct.device_node* %0, i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %2, %struct.of_phandle_args* %gpiospec) #6, !dbg !4332
  store i32 %call, i32* %ret, align 4, !dbg !4333
  %3 = load i32, i32* %ret, align 4, !dbg !4334
  %tobool = icmp ne i32 %3, 0, !dbg !4334
  br i1 %tobool, label %if.then, label %if.end, !dbg !4336

if.then:                                          ; preds = %entry
  store i32 0, i32* %tmp, align 4, !dbg !4337
  %4 = load i32, i32* %tmp, align 4, !dbg !4341
  %5 = load i32, i32* %ret, align 4, !dbg !4342
  %conv = sext i32 %5 to i64, !dbg !4342
  %call1 = call i8* @ERR_PTR(i64 %conv) #6, !dbg !4343
  %6 = bitcast i8* %call1 to %struct.gpio_desc*, !dbg !4343
  store %struct.gpio_desc* %6, %struct.gpio_desc** %retval, align 8, !dbg !4344
  br label %return, !dbg !4344

if.end:                                           ; preds = %entry
  %call2 = call %struct.gpio_chip* @of_find_gpiochip_by_xlate(%struct.of_phandle_args* %gpiospec) #6, !dbg !4345
  store %struct.gpio_chip* %call2, %struct.gpio_chip** %chip, align 8, !dbg !4346
  %7 = load %struct.gpio_chip*, %struct.gpio_chip** %chip, align 8, !dbg !4347
  %tobool3 = icmp ne %struct.gpio_chip* %7, null, !dbg !4347
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !4349

if.then4:                                         ; preds = %if.end
  %call5 = call i8* @ERR_PTR(i64 -517) #6, !dbg !4350
  %8 = bitcast i8* %call5 to %struct.gpio_desc*, !dbg !4350
  store %struct.gpio_desc* %8, %struct.gpio_desc** %desc, align 8, !dbg !4352
  br label %out, !dbg !4353

if.end6:                                          ; preds = %if.end
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %chip, align 8, !dbg !4354
  %10 = load i32*, i32** %flags.addr, align 8, !dbg !4355
  %call7 = call %struct.gpio_desc* @of_xlate_and_get_gpiod_flags(%struct.gpio_chip* %9, %struct.of_phandle_args* %gpiospec, i32* %10) #6, !dbg !4356
  store %struct.gpio_desc* %call7, %struct.gpio_desc** %desc, align 8, !dbg !4357
  %11 = load %struct.gpio_desc*, %struct.gpio_desc** %desc, align 8, !dbg !4358
  %12 = bitcast %struct.gpio_desc* %11 to i8*, !dbg !4358
  %call8 = call zeroext i1 @IS_ERR(i8* %12) #6, !dbg !4360
  br i1 %call8, label %if.then9, label %if.end10, !dbg !4361

if.then9:                                         ; preds = %if.end6
  br label %out, !dbg !4362

if.end10:                                         ; preds = %if.end6
  %13 = load i32*, i32** %flags.addr, align 8, !dbg !4363
  %tobool11 = icmp ne i32* %13, null, !dbg !4363
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !4365

if.then12:                                        ; preds = %if.end10
  %14 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4366
  %15 = load i8*, i8** %propname.addr, align 8, !dbg !4367
  %16 = load i32*, i32** %flags.addr, align 8, !dbg !4368
  %17 = load i32, i32* %index.addr, align 4, !dbg !4369
  call void @of_gpio_flags_quirks(%struct.device_node* %14, i8* %15, i32* %16, i32 %17) #6, !dbg !4370
  br label %if.end13, !dbg !4370

if.end13:                                         ; preds = %if.then12, %if.end10
  store i32 0, i32* %tmp14, align 4, !dbg !4371
  %18 = load i32, i32* %tmp14, align 4, !dbg !4374
  br label %out, !dbg !4375

out:                                              ; preds = %if.end13, %if.then9, %if.then4
  call void @llvm.dbg.label(metadata !4376), !dbg !4377
  %np15 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %gpiospec, i32 0, i32 0, !dbg !4378
  %19 = load %struct.device_node*, %struct.device_node** %np15, align 8, !dbg !4378
  call void @of_node_put(%struct.device_node* %19) #6, !dbg !4379
  %20 = load %struct.gpio_desc*, %struct.gpio_desc** %desc, align 8, !dbg !4380
  store %struct.gpio_desc* %20, %struct.gpio_desc** %retval, align 8, !dbg !4381
  br label %return, !dbg !4381

return:                                           ; preds = %out, %if.then
  %21 = load %struct.gpio_desc*, %struct.gpio_desc** %retval, align 8, !dbg !4382
  ret %struct.gpio_desc* %21, !dbg !4382
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !4383 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4387, metadata !DIExpression()), !dbg !4388
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4389
  %1 = ptrtoint i8* %0 to i64, !dbg !4389
  %2 = inttoptr i64 %1 to i8*, !dbg !4389
  %3 = ptrtoint i8* %2 to i64, !dbg !4389
  %cmp = icmp uge i64 %3, -4095, !dbg !4389
  %lnot = xor i1 %cmp, true, !dbg !4389
  %lnot1 = xor i1 %lnot, true, !dbg !4389
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4389
  %conv = sext i32 %lnot.ext to i64, !dbg !4389
  %tobool = icmp ne i64 %conv, 0, !dbg !4389
  ret i1 %tobool, !dbg !4390
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !4391 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4394, metadata !DIExpression()), !dbg !4395
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4396
  %1 = ptrtoint i8* %0 to i64, !dbg !4397
  ret i64 %1, !dbg !4398
}

; Function Attrs: noredzone
declare dso_local i32 @desc_to_gpio(%struct.gpio_desc*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.gpio_desc* @gpiod_get_from_of_node(%struct.device_node* %node, i8* %propname, i32 %index, i32 %dflags, i8* %label) #0 !dbg !4399 {
entry:
  %retval = alloca %struct.gpio_desc*, align 8
  %node.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  %dflags.addr = alloca i32, align 4
  %label.addr = alloca i8*, align 8
  %lflags = alloca i64, align 8
  %desc = alloca %struct.gpio_desc*, align 8
  %flags = alloca i32, align 4
  %active_low = alloca i8, align 1
  %single_ended = alloca i8, align 1
  %open_drain = alloca i8, align 1
  %transitory = alloca i8, align 1
  %ret = alloca i32, align 4
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !4402, metadata !DIExpression()), !dbg !4403
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !4404, metadata !DIExpression()), !dbg !4405
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !4406, metadata !DIExpression()), !dbg !4407
  store i32 %dflags, i32* %dflags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dflags.addr, metadata !4408, metadata !DIExpression()), !dbg !4409
  store i8* %label, i8** %label.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %label.addr, metadata !4410, metadata !DIExpression()), !dbg !4411
  call void @llvm.dbg.declare(metadata i64* %lflags, metadata !4412, metadata !DIExpression()), !dbg !4413
  store i64 0, i64* %lflags, align 8, !dbg !4413
  call void @llvm.dbg.declare(metadata %struct.gpio_desc** %desc, metadata !4414, metadata !DIExpression()), !dbg !4415
  call void @llvm.dbg.declare(metadata i32* %flags, metadata !4416, metadata !DIExpression()), !dbg !4417
  call void @llvm.dbg.declare(metadata i8* %active_low, metadata !4418, metadata !DIExpression()), !dbg !4419
  store i8 0, i8* %active_low, align 1, !dbg !4419
  call void @llvm.dbg.declare(metadata i8* %single_ended, metadata !4420, metadata !DIExpression()), !dbg !4421
  store i8 0, i8* %single_ended, align 1, !dbg !4421
  call void @llvm.dbg.declare(metadata i8* %open_drain, metadata !4422, metadata !DIExpression()), !dbg !4423
  store i8 0, i8* %open_drain, align 1, !dbg !4423
  call void @llvm.dbg.declare(metadata i8* %transitory, metadata !4424, metadata !DIExpression()), !dbg !4425
  store i8 0, i8* %transitory, align 1, !dbg !4425
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4426, metadata !DIExpression()), !dbg !4427
  %0 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !4428
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !4429
  %2 = load i32, i32* %index.addr, align 4, !dbg !4430
  %call = call %struct.gpio_desc* @of_get_named_gpiod_flags(%struct.device_node* %0, i8* %1, i32 %2, i32* %flags) #6, !dbg !4431
  store %struct.gpio_desc* %call, %struct.gpio_desc** %desc, align 8, !dbg !4432
  %3 = load %struct.gpio_desc*, %struct.gpio_desc** %desc, align 8, !dbg !4433
  %tobool = icmp ne %struct.gpio_desc* %3, null, !dbg !4433
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4435

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.gpio_desc*, %struct.gpio_desc** %desc, align 8, !dbg !4436
  %5 = bitcast %struct.gpio_desc* %4 to i8*, !dbg !4436
  %call1 = call zeroext i1 @IS_ERR(i8* %5) #6, !dbg !4437
  br i1 %call1, label %if.then, label %if.end, !dbg !4438

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct.gpio_desc*, %struct.gpio_desc** %desc, align 8, !dbg !4439
  store %struct.gpio_desc* %6, %struct.gpio_desc** %retval, align 8, !dbg !4441
  br label %return, !dbg !4441

if.end:                                           ; preds = %lor.lhs.false
  %7 = load i32, i32* %flags, align 4, !dbg !4442
  %and = and i32 %7, 1, !dbg !4443
  %tobool2 = icmp ne i32 %and, 0, !dbg !4442
  %frombool = zext i1 %tobool2 to i8, !dbg !4444
  store i8 %frombool, i8* %active_low, align 1, !dbg !4444
  %8 = load i32, i32* %flags, align 4, !dbg !4445
  %and3 = and i32 %8, 2, !dbg !4446
  %tobool4 = icmp ne i32 %and3, 0, !dbg !4445
  %frombool5 = zext i1 %tobool4 to i8, !dbg !4447
  store i8 %frombool5, i8* %single_ended, align 1, !dbg !4447
  %9 = load i32, i32* %flags, align 4, !dbg !4448
  %and6 = and i32 %9, 4, !dbg !4449
  %tobool7 = icmp ne i32 %and6, 0, !dbg !4448
  %frombool8 = zext i1 %tobool7 to i8, !dbg !4450
  store i8 %frombool8, i8* %open_drain, align 1, !dbg !4450
  %10 = load i32, i32* %flags, align 4, !dbg !4451
  %and9 = and i32 %10, 8, !dbg !4452
  %tobool10 = icmp ne i32 %and9, 0, !dbg !4451
  %frombool11 = zext i1 %tobool10 to i8, !dbg !4453
  store i8 %frombool11, i8* %transitory, align 1, !dbg !4453
  %11 = load %struct.gpio_desc*, %struct.gpio_desc** %desc, align 8, !dbg !4454
  %12 = load i8*, i8** %label.addr, align 8, !dbg !4455
  %call12 = call i32 @gpiod_request(%struct.gpio_desc* %11, i8* %12) #6, !dbg !4456
  store i32 %call12, i32* %ret, align 4, !dbg !4457
  %13 = load i32, i32* %ret, align 4, !dbg !4458
  %cmp = icmp eq i32 %13, -16, !dbg !4460
  br i1 %cmp, label %land.lhs.true, label %if.end16, !dbg !4461

land.lhs.true:                                    ; preds = %if.end
  %14 = load i32, i32* %dflags.addr, align 4, !dbg !4462
  %conv = zext i32 %14 to i64, !dbg !4462
  %and13 = and i64 %conv, 16, !dbg !4463
  %tobool14 = icmp ne i64 %and13, 0, !dbg !4463
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !4464

if.then15:                                        ; preds = %land.lhs.true
  %15 = load %struct.gpio_desc*, %struct.gpio_desc** %desc, align 8, !dbg !4465
  store %struct.gpio_desc* %15, %struct.gpio_desc** %retval, align 8, !dbg !4466
  br label %return, !dbg !4466

if.end16:                                         ; preds = %land.lhs.true, %if.end
  %16 = load i32, i32* %ret, align 4, !dbg !4467
  %tobool17 = icmp ne i32 %16, 0, !dbg !4467
  br i1 %tobool17, label %if.then18, label %if.end21, !dbg !4469

if.then18:                                        ; preds = %if.end16
  %17 = load i32, i32* %ret, align 4, !dbg !4470
  %conv19 = sext i32 %17 to i64, !dbg !4470
  %call20 = call i8* @ERR_PTR(i64 %conv19) #6, !dbg !4471
  %18 = bitcast i8* %call20 to %struct.gpio_desc*, !dbg !4471
  store %struct.gpio_desc* %18, %struct.gpio_desc** %retval, align 8, !dbg !4472
  br label %return, !dbg !4472

if.end21:                                         ; preds = %if.end16
  %19 = load i8, i8* %active_low, align 1, !dbg !4473
  %tobool22 = trunc i8 %19 to i1, !dbg !4473
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !4475

if.then23:                                        ; preds = %if.end21
  %20 = load i64, i64* %lflags, align 8, !dbg !4476
  %or = or i64 %20, 1, !dbg !4476
  store i64 %or, i64* %lflags, align 8, !dbg !4476
  br label %if.end24, !dbg !4477

if.end24:                                         ; preds = %if.then23, %if.end21
  %21 = load i8, i8* %single_ended, align 1, !dbg !4478
  %tobool25 = trunc i8 %21 to i1, !dbg !4478
  br i1 %tobool25, label %if.then26, label %if.end32, !dbg !4480

if.then26:                                        ; preds = %if.end24
  %22 = load i8, i8* %open_drain, align 1, !dbg !4481
  %tobool27 = trunc i8 %22 to i1, !dbg !4481
  br i1 %tobool27, label %if.then28, label %if.else, !dbg !4484

if.then28:                                        ; preds = %if.then26
  %23 = load i64, i64* %lflags, align 8, !dbg !4485
  %or29 = or i64 %23, 2, !dbg !4485
  store i64 %or29, i64* %lflags, align 8, !dbg !4485
  br label %if.end31, !dbg !4486

if.else:                                          ; preds = %if.then26
  %24 = load i64, i64* %lflags, align 8, !dbg !4487
  %or30 = or i64 %24, 4, !dbg !4487
  store i64 %or30, i64* %lflags, align 8, !dbg !4487
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then28
  br label %if.end32, !dbg !4488

if.end32:                                         ; preds = %if.end31, %if.end24
  %25 = load i8, i8* %transitory, align 1, !dbg !4489
  %tobool33 = trunc i8 %25 to i1, !dbg !4489
  br i1 %tobool33, label %if.then34, label %if.end36, !dbg !4491

if.then34:                                        ; preds = %if.end32
  %26 = load i64, i64* %lflags, align 8, !dbg !4492
  %or35 = or i64 %26, 8, !dbg !4492
  store i64 %or35, i64* %lflags, align 8, !dbg !4492
  br label %if.end36, !dbg !4493

if.end36:                                         ; preds = %if.then34, %if.end32
  %27 = load i32, i32* %flags, align 4, !dbg !4494
  %and37 = and i32 %27, 16, !dbg !4496
  %tobool38 = icmp ne i32 %and37, 0, !dbg !4496
  br i1 %tobool38, label %if.then39, label %if.end41, !dbg !4497

if.then39:                                        ; preds = %if.end36
  %28 = load i64, i64* %lflags, align 8, !dbg !4498
  %or40 = or i64 %28, 16, !dbg !4498
  store i64 %or40, i64* %lflags, align 8, !dbg !4498
  br label %if.end41, !dbg !4499

if.end41:                                         ; preds = %if.then39, %if.end36
  %29 = load i32, i32* %flags, align 4, !dbg !4500
  %and42 = and i32 %29, 32, !dbg !4502
  %tobool43 = icmp ne i32 %and42, 0, !dbg !4502
  br i1 %tobool43, label %if.then44, label %if.end46, !dbg !4503

if.then44:                                        ; preds = %if.end41
  %30 = load i64, i64* %lflags, align 8, !dbg !4504
  %or45 = or i64 %30, 32, !dbg !4504
  store i64 %or45, i64* %lflags, align 8, !dbg !4504
  br label %if.end46, !dbg !4505

if.end46:                                         ; preds = %if.then44, %if.end41
  %31 = load %struct.gpio_desc*, %struct.gpio_desc** %desc, align 8, !dbg !4506
  %32 = load i8*, i8** %propname.addr, align 8, !dbg !4507
  %33 = load i64, i64* %lflags, align 8, !dbg !4508
  %34 = load i32, i32* %dflags.addr, align 4, !dbg !4509
  %call47 = call i32 @gpiod_configure_flags(%struct.gpio_desc* %31, i8* %32, i64 %33, i32 %34) #6, !dbg !4510
  store i32 %call47, i32* %ret, align 4, !dbg !4511
  %35 = load i32, i32* %ret, align 4, !dbg !4512
  %cmp48 = icmp slt i32 %35, 0, !dbg !4514
  br i1 %cmp48, label %if.then50, label %if.end53, !dbg !4515

if.then50:                                        ; preds = %if.end46
  %36 = load %struct.gpio_desc*, %struct.gpio_desc** %desc, align 8, !dbg !4516
  call void @gpiod_put(%struct.gpio_desc* %36) #6, !dbg !4518
  %37 = load i32, i32* %ret, align 4, !dbg !4519
  %conv51 = sext i32 %37 to i64, !dbg !4519
  %call52 = call i8* @ERR_PTR(i64 %conv51) #6, !dbg !4520
  %38 = bitcast i8* %call52 to %struct.gpio_desc*, !dbg !4520
  store %struct.gpio_desc* %38, %struct.gpio_desc** %retval, align 8, !dbg !4521
  br label %return, !dbg !4521

if.end53:                                         ; preds = %if.end46
  %39 = load %struct.gpio_desc*, %struct.gpio_desc** %desc, align 8, !dbg !4522
  store %struct.gpio_desc* %39, %struct.gpio_desc** %retval, align 8, !dbg !4523
  br label %return, !dbg !4523

return:                                           ; preds = %if.end53, %if.then50, %if.then18, %if.then15, %if.then
  %40 = load %struct.gpio_desc*, %struct.gpio_desc** %retval, align 8, !dbg !4524
  ret %struct.gpio_desc* %40, !dbg !4524
}

; Function Attrs: noredzone
declare dso_local i32 @gpiod_request(%struct.gpio_desc*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !4525 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !4528, metadata !DIExpression()), !dbg !4529
  %0 = load i64, i64* %error.addr, align 8, !dbg !4530
  %1 = inttoptr i64 %0 to i8*, !dbg !4531
  ret i8* %1, !dbg !4532
}

; Function Attrs: noredzone
declare dso_local i32 @gpiod_configure_flags(%struct.gpio_desc*, i8*, i64, i32) #2

; Function Attrs: noredzone
declare dso_local void @gpiod_put(%struct.gpio_desc*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.gpio_desc* @of_find_gpio(%struct.device* %dev, i8* %con_id, i32 %idx, i64* %flags) #0 !dbg !4533 {
entry:
  %retval = alloca %struct.gpio_desc*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %con_id.addr = alloca i8*, align 8
  %idx.addr = alloca i32, align 4
  %flags.addr = alloca i64*, align 8
  %prop_name = alloca [32 x i8], align 16
  %of_flags = alloca i32, align 4
  %desc = alloca %struct.gpio_desc*, align 8
  %i = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4536, metadata !DIExpression()), !dbg !4537
  store i8* %con_id, i8** %con_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %con_id.addr, metadata !4538, metadata !DIExpression()), !dbg !4539
  store i32 %idx, i32* %idx.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %idx.addr, metadata !4540, metadata !DIExpression()), !dbg !4541
  store i64* %flags, i64** %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %flags.addr, metadata !4542, metadata !DIExpression()), !dbg !4543
  call void @llvm.dbg.declare(metadata [32 x i8]* %prop_name, metadata !4544, metadata !DIExpression()), !dbg !4545
  call void @llvm.dbg.declare(metadata i32* %of_flags, metadata !4546, metadata !DIExpression()), !dbg !4547
  call void @llvm.dbg.declare(metadata %struct.gpio_desc** %desc, metadata !4548, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4550, metadata !DIExpression()), !dbg !4551
  store i32 0, i32* %i, align 4, !dbg !4552
  br label %for.cond, !dbg !4554

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !4555
  %conv = zext i32 %0 to i64, !dbg !4555
  %cmp = icmp ult i64 %conv, 2, !dbg !4557
  br i1 %cmp, label %for.body, label %for.end, !dbg !4558

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %con_id.addr, align 8, !dbg !4559
  %tobool = icmp ne i8* %1, null, !dbg !4559
  br i1 %tobool, label %if.then, label %if.else, !dbg !4562

if.then:                                          ; preds = %for.body
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %prop_name, i64 0, i64 0, !dbg !4563
  %2 = load i8*, i8** %con_id.addr, align 8, !dbg !4564
  %3 = load i32, i32* %i, align 4, !dbg !4565
  %idxprom = zext i32 %3 to i64, !dbg !4566
  %arrayidx = getelementptr [2 x i8*], [2 x i8*]* @gpio_suffixes, i64 0, i64 %idxprom, !dbg !4566
  %4 = load i8*, i8** %arrayidx, align 8, !dbg !4566
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %2, i8* %4) #6, !dbg !4567
  br label %if.end, !dbg !4567

if.else:                                          ; preds = %for.body
  %arraydecay2 = getelementptr inbounds [32 x i8], [32 x i8]* %prop_name, i64 0, i64 0, !dbg !4568
  %5 = load i32, i32* %i, align 4, !dbg !4569
  %idxprom3 = zext i32 %5 to i64, !dbg !4570
  %arrayidx4 = getelementptr [2 x i8*], [2 x i8*]* @gpio_suffixes, i64 0, i64 %idxprom3, !dbg !4570
  %6 = load i8*, i8** %arrayidx4, align 8, !dbg !4570
  %call5 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay2, i64 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %6) #6, !dbg !4571
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4572
  %of_node = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 23, !dbg !4573
  %8 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !4573
  %arraydecay6 = getelementptr inbounds [32 x i8], [32 x i8]* %prop_name, i64 0, i64 0, !dbg !4574
  %9 = load i32, i32* %idx.addr, align 4, !dbg !4575
  %call7 = call %struct.gpio_desc* @of_get_named_gpiod_flags(%struct.device_node* %8, i8* %arraydecay6, i32 %9, i32* %of_flags) #6, !dbg !4576
  store %struct.gpio_desc* %call7, %struct.gpio_desc** %desc, align 8, !dbg !4577
  %10 = load %struct.gpio_desc*, %struct.gpio_desc** %desc, align 8, !dbg !4578
  %11 = bitcast %struct.gpio_desc* %10 to i8*, !dbg !4578
  %call8 = call zeroext i1 @IS_ERR(i8* %11) #6, !dbg !4580
  br i1 %call8, label %lor.lhs.false, label %if.then12, !dbg !4581

lor.lhs.false:                                    ; preds = %if.end
  %12 = load %struct.gpio_desc*, %struct.gpio_desc** %desc, align 8, !dbg !4582
  %13 = bitcast %struct.gpio_desc* %12 to i8*, !dbg !4582
  %call9 = call i64 @PTR_ERR(i8* %13) #6, !dbg !4583
  %cmp10 = icmp ne i64 %call9, -2, !dbg !4584
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !4585

if.then12:                                        ; preds = %lor.lhs.false, %if.end
  br label %for.end, !dbg !4586

if.end13:                                         ; preds = %lor.lhs.false
  br label %for.inc, !dbg !4587

for.inc:                                          ; preds = %if.end13
  %14 = load i32, i32* %i, align 4, !dbg !4588
  %inc = add i32 %14, 1, !dbg !4588
  store i32 %inc, i32* %i, align 4, !dbg !4588
  br label %for.cond, !dbg !4589, !llvm.loop !4590

for.end:                                          ; preds = %if.then12, %for.cond
  %15 = load %struct.gpio_desc*, %struct.gpio_desc** %desc, align 8, !dbg !4592
  %16 = bitcast %struct.gpio_desc* %15 to i8*, !dbg !4592
  %call14 = call i64 @PTR_ERR(i8* %16) #6, !dbg !4594
  %cmp15 = icmp eq i64 %call14, -2, !dbg !4595
  br i1 %cmp15, label %if.then17, label %if.end19, !dbg !4596

if.then17:                                        ; preds = %for.end
  %17 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4597
  %18 = load i8*, i8** %con_id.addr, align 8, !dbg !4599
  %call18 = call %struct.gpio_desc* @of_find_spi_gpio(%struct.device* %17, i8* %18, i32* %of_flags) #6, !dbg !4600
  store %struct.gpio_desc* %call18, %struct.gpio_desc** %desc, align 8, !dbg !4601
  br label %if.end19, !dbg !4602

if.end19:                                         ; preds = %if.then17, %for.end
  %19 = load %struct.gpio_desc*, %struct.gpio_desc** %desc, align 8, !dbg !4603
  %20 = bitcast %struct.gpio_desc* %19 to i8*, !dbg !4603
  %call20 = call i64 @PTR_ERR(i8* %20) #6, !dbg !4605
  %cmp21 = icmp eq i64 %call20, -2, !dbg !4606
  br i1 %cmp21, label %if.then23, label %if.end28, !dbg !4607

if.then23:                                        ; preds = %if.end19
  %21 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4608
  %22 = load i8*, i8** %con_id.addr, align 8, !dbg !4610
  %23 = load i32, i32* %idx.addr, align 4, !dbg !4611
  %24 = load i64*, i64** %flags.addr, align 8, !dbg !4612
  %call24 = call %struct.gpio_desc* @of_find_spi_cs_gpio(%struct.device* %21, i8* %22, i32 %23, i64* %24) #6, !dbg !4613
  store %struct.gpio_desc* %call24, %struct.gpio_desc** %desc, align 8, !dbg !4614
  %25 = load %struct.gpio_desc*, %struct.gpio_desc** %desc, align 8, !dbg !4615
  %26 = bitcast %struct.gpio_desc* %25 to i8*, !dbg !4615
  %call25 = call zeroext i1 @IS_ERR(i8* %26) #6, !dbg !4617
  br i1 %call25, label %if.end27, label %if.then26, !dbg !4618

if.then26:                                        ; preds = %if.then23
  %27 = load %struct.gpio_desc*, %struct.gpio_desc** %desc, align 8, !dbg !4619
  store %struct.gpio_desc* %27, %struct.gpio_desc** %retval, align 8, !dbg !4620
  br label %return, !dbg !4620

if.end27:                                         ; preds = %if.then23
  br label %if.end28, !dbg !4621

if.end28:                                         ; preds = %if.end27, %if.end19
  %28 = load %struct.gpio_desc*, %struct.gpio_desc** %desc, align 8, !dbg !4622
  %29 = bitcast %struct.gpio_desc* %28 to i8*, !dbg !4622
  %call29 = call i64 @PTR_ERR(i8* %29) #6, !dbg !4624
  %cmp30 = icmp eq i64 %call29, -2, !dbg !4625
  br i1 %cmp30, label %if.then32, label %if.end34, !dbg !4626

if.then32:                                        ; preds = %if.end28
  %30 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4627
  %31 = load i8*, i8** %con_id.addr, align 8, !dbg !4629
  %call33 = call %struct.gpio_desc* @of_find_regulator_gpio(%struct.device* %30, i8* %31, i32* %of_flags) #6, !dbg !4630
  store %struct.gpio_desc* %call33, %struct.gpio_desc** %desc, align 8, !dbg !4631
  br label %if.end34, !dbg !4632

if.end34:                                         ; preds = %if.then32, %if.end28
  %32 = load %struct.gpio_desc*, %struct.gpio_desc** %desc, align 8, !dbg !4633
  %33 = bitcast %struct.gpio_desc* %32 to i8*, !dbg !4633
  %call35 = call i64 @PTR_ERR(i8* %33) #6, !dbg !4635
  %cmp36 = icmp eq i64 %call35, -2, !dbg !4636
  br i1 %cmp36, label %if.then38, label %if.end40, !dbg !4637

if.then38:                                        ; preds = %if.end34
  %34 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4638
  %35 = load i8*, i8** %con_id.addr, align 8, !dbg !4639
  %call39 = call %struct.gpio_desc* @of_find_arizona_gpio(%struct.device* %34, i8* %35, i32* %of_flags) #6, !dbg !4640
  store %struct.gpio_desc* %call39, %struct.gpio_desc** %desc, align 8, !dbg !4641
  br label %if.end40, !dbg !4642

if.end40:                                         ; preds = %if.then38, %if.end34
  %36 = load %struct.gpio_desc*, %struct.gpio_desc** %desc, align 8, !dbg !4643
  %37 = bitcast %struct.gpio_desc* %36 to i8*, !dbg !4643
  %call41 = call i64 @PTR_ERR(i8* %37) #6, !dbg !4645
  %cmp42 = icmp eq i64 %call41, -2, !dbg !4646
  br i1 %cmp42, label %if.then44, label %if.end46, !dbg !4647

if.then44:                                        ; preds = %if.end40
  %38 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4648
  %39 = load i8*, i8** %con_id.addr, align 8, !dbg !4649
  %call45 = call %struct.gpio_desc* @of_find_usb_gpio(%struct.device* %38, i8* %39, i32* %of_flags) #6, !dbg !4650
  store %struct.gpio_desc* %call45, %struct.gpio_desc** %desc, align 8, !dbg !4651
  br label %if.end46, !dbg !4652

if.end46:                                         ; preds = %if.then44, %if.end40
  %40 = load %struct.gpio_desc*, %struct.gpio_desc** %desc, align 8, !dbg !4653
  %41 = bitcast %struct.gpio_desc* %40 to i8*, !dbg !4653
  %call47 = call zeroext i1 @IS_ERR(i8* %41) #6, !dbg !4655
  br i1 %call47, label %if.then48, label %if.end49, !dbg !4656

if.then48:                                        ; preds = %if.end46
  %42 = load %struct.gpio_desc*, %struct.gpio_desc** %desc, align 8, !dbg !4657
  store %struct.gpio_desc* %42, %struct.gpio_desc** %retval, align 8, !dbg !4658
  br label %return, !dbg !4658

if.end49:                                         ; preds = %if.end46
  %43 = load i32, i32* %of_flags, align 4, !dbg !4659
  %and = and i32 %43, 1, !dbg !4661
  %tobool50 = icmp ne i32 %and, 0, !dbg !4661
  br i1 %tobool50, label %if.then51, label %if.end52, !dbg !4662

if.then51:                                        ; preds = %if.end49
  %44 = load i64*, i64** %flags.addr, align 8, !dbg !4663
  %45 = load i64, i64* %44, align 8, !dbg !4664
  %or = or i64 %45, 1, !dbg !4664
  store i64 %or, i64* %44, align 8, !dbg !4664
  br label %if.end52, !dbg !4665

if.end52:                                         ; preds = %if.then51, %if.end49
  %46 = load i32, i32* %of_flags, align 4, !dbg !4666
  %and53 = and i32 %46, 2, !dbg !4668
  %tobool54 = icmp ne i32 %and53, 0, !dbg !4668
  br i1 %tobool54, label %if.then55, label %if.end63, !dbg !4669

if.then55:                                        ; preds = %if.end52
  %47 = load i32, i32* %of_flags, align 4, !dbg !4670
  %and56 = and i32 %47, 4, !dbg !4673
  %tobool57 = icmp ne i32 %and56, 0, !dbg !4673
  br i1 %tobool57, label %if.then58, label %if.else60, !dbg !4674

if.then58:                                        ; preds = %if.then55
  %48 = load i64*, i64** %flags.addr, align 8, !dbg !4675
  %49 = load i64, i64* %48, align 8, !dbg !4676
  %or59 = or i64 %49, 2, !dbg !4676
  store i64 %or59, i64* %48, align 8, !dbg !4676
  br label %if.end62, !dbg !4677

if.else60:                                        ; preds = %if.then55
  %50 = load i64*, i64** %flags.addr, align 8, !dbg !4678
  %51 = load i64, i64* %50, align 8, !dbg !4679
  %or61 = or i64 %51, 4, !dbg !4679
  store i64 %or61, i64* %50, align 8, !dbg !4679
  br label %if.end62

if.end62:                                         ; preds = %if.else60, %if.then58
  br label %if.end63, !dbg !4680

if.end63:                                         ; preds = %if.end62, %if.end52
  %52 = load i32, i32* %of_flags, align 4, !dbg !4681
  %and64 = and i32 %52, 8, !dbg !4683
  %tobool65 = icmp ne i32 %and64, 0, !dbg !4683
  br i1 %tobool65, label %if.then66, label %if.end68, !dbg !4684

if.then66:                                        ; preds = %if.end63
  %53 = load i64*, i64** %flags.addr, align 8, !dbg !4685
  %54 = load i64, i64* %53, align 8, !dbg !4686
  %or67 = or i64 %54, 8, !dbg !4686
  store i64 %or67, i64* %53, align 8, !dbg !4686
  br label %if.end68, !dbg !4687

if.end68:                                         ; preds = %if.then66, %if.end63
  %55 = load i32, i32* %of_flags, align 4, !dbg !4688
  %and69 = and i32 %55, 16, !dbg !4690
  %tobool70 = icmp ne i32 %and69, 0, !dbg !4690
  br i1 %tobool70, label %if.then71, label %if.end73, !dbg !4691

if.then71:                                        ; preds = %if.end68
  %56 = load i64*, i64** %flags.addr, align 8, !dbg !4692
  %57 = load i64, i64* %56, align 8, !dbg !4693
  %or72 = or i64 %57, 16, !dbg !4693
  store i64 %or72, i64* %56, align 8, !dbg !4693
  br label %if.end73, !dbg !4694

if.end73:                                         ; preds = %if.then71, %if.end68
  %58 = load i32, i32* %of_flags, align 4, !dbg !4695
  %and74 = and i32 %58, 32, !dbg !4697
  %tobool75 = icmp ne i32 %and74, 0, !dbg !4697
  br i1 %tobool75, label %if.then76, label %if.end78, !dbg !4698

if.then76:                                        ; preds = %if.end73
  %59 = load i64*, i64** %flags.addr, align 8, !dbg !4699
  %60 = load i64, i64* %59, align 8, !dbg !4700
  %or77 = or i64 %60, 32, !dbg !4700
  store i64 %or77, i64* %59, align 8, !dbg !4700
  br label %if.end78, !dbg !4701

if.end78:                                         ; preds = %if.then76, %if.end73
  %61 = load %struct.gpio_desc*, %struct.gpio_desc** %desc, align 8, !dbg !4702
  store %struct.gpio_desc* %61, %struct.gpio_desc** %retval, align 8, !dbg !4703
  br label %return, !dbg !4703

return:                                           ; preds = %if.end78, %if.then48, %if.then26
  %62 = load %struct.gpio_desc*, %struct.gpio_desc** %retval, align 8, !dbg !4704
  ret %struct.gpio_desc* %62, !dbg !4704
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.gpio_desc* @of_find_spi_gpio(%struct.device* %dev, i8* %con_id, i32* %of_flags) #0 !dbg !4705 {
entry:
  %retval = alloca %struct.gpio_desc*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %con_id.addr = alloca i8*, align 8
  %of_flags.addr = alloca i32*, align 8
  %prop_name = alloca [32 x i8], align 16
  %np = alloca %struct.device_node*, align 8
  %desc = alloca %struct.gpio_desc*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4708, metadata !DIExpression()), !dbg !4709
  store i8* %con_id, i8** %con_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %con_id.addr, metadata !4710, metadata !DIExpression()), !dbg !4711
  store i32* %of_flags, i32** %of_flags.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %of_flags.addr, metadata !4712, metadata !DIExpression()), !dbg !4713
  call void @llvm.dbg.declare(metadata [32 x i8]* %prop_name, metadata !4714, metadata !DIExpression()), !dbg !4715
  call void @llvm.dbg.declare(metadata %struct.device_node** %np, metadata !4716, metadata !DIExpression()), !dbg !4717
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4718
  %of_node = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 23, !dbg !4719
  %1 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !4719
  store %struct.device_node* %1, %struct.device_node** %np, align 8, !dbg !4717
  call void @llvm.dbg.declare(metadata %struct.gpio_desc** %desc, metadata !4720, metadata !DIExpression()), !dbg !4721
  %2 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !4722
  %call = call i32 @of_device_is_compatible(%struct.device_node* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0)) #6, !dbg !4724
  %tobool = icmp ne i32 %call, 0, !dbg !4724
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4725

lor.lhs.false:                                    ; preds = %entry
  %3 = load i8*, i8** %con_id.addr, align 8, !dbg !4726
  %tobool1 = icmp ne i8* %3, null, !dbg !4726
  br i1 %tobool1, label %if.end, label %if.then, !dbg !4727

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call2 = call i8* @ERR_PTR(i64 -2) #6, !dbg !4728
  %4 = bitcast i8* %call2 to %struct.gpio_desc*, !dbg !4728
  store %struct.gpio_desc* %4, %struct.gpio_desc** %retval, align 8, !dbg !4729
  br label %return, !dbg !4729

if.end:                                           ; preds = %lor.lhs.false
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %prop_name, i64 0, i64 0, !dbg !4730
  %5 = load i8*, i8** %con_id.addr, align 8, !dbg !4731
  %call3 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* %5) #6, !dbg !4732
  %6 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !4733
  %arraydecay4 = getelementptr inbounds [32 x i8], [32 x i8]* %prop_name, i64 0, i64 0, !dbg !4734
  %7 = load i32*, i32** %of_flags.addr, align 8, !dbg !4735
  %call5 = call %struct.gpio_desc* @of_get_named_gpiod_flags(%struct.device_node* %6, i8* %arraydecay4, i32 0, i32* %7) #6, !dbg !4736
  store %struct.gpio_desc* %call5, %struct.gpio_desc** %desc, align 8, !dbg !4737
  %8 = load %struct.gpio_desc*, %struct.gpio_desc** %desc, align 8, !dbg !4738
  store %struct.gpio_desc* %8, %struct.gpio_desc** %retval, align 8, !dbg !4739
  br label %return, !dbg !4739

return:                                           ; preds = %if.end, %if.then
  %9 = load %struct.gpio_desc*, %struct.gpio_desc** %retval, align 8, !dbg !4740
  ret %struct.gpio_desc* %9, !dbg !4740
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.gpio_desc* @of_find_spi_cs_gpio(%struct.device* %dev, i8* %con_id, i32 %idx, i64* %flags) #0 !dbg !4741 {
entry:
  %retval = alloca %struct.gpio_desc*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %con_id.addr = alloca i8*, align 8
  %idx.addr = alloca i32, align 4
  %flags.addr = alloca i64*, align 8
  %np = alloca %struct.device_node*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4742, metadata !DIExpression()), !dbg !4743
  store i8* %con_id, i8** %con_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %con_id.addr, metadata !4744, metadata !DIExpression()), !dbg !4745
  store i32 %idx, i32* %idx.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %idx.addr, metadata !4746, metadata !DIExpression()), !dbg !4747
  store i64* %flags, i64** %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %flags.addr, metadata !4748, metadata !DIExpression()), !dbg !4749
  call void @llvm.dbg.declare(metadata %struct.device_node** %np, metadata !4750, metadata !DIExpression()), !dbg !4751
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4752
  %of_node = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 23, !dbg !4753
  %1 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !4753
  store %struct.device_node* %1, %struct.device_node** %np, align 8, !dbg !4751
  %2 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !4754
  %call = call i32 @of_device_is_compatible(%struct.device_node* %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !4756
  %tobool = icmp ne i32 %call, 0, !dbg !4756
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !4757

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !4758
  %call1 = call i32 @of_device_is_compatible(%struct.device_node* %3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !4759
  %tobool2 = icmp ne i32 %call1, 0, !dbg !4759
  br i1 %tobool2, label %if.end, label %land.lhs.true3, !dbg !4760

land.lhs.true3:                                   ; preds = %land.lhs.true
  %4 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !4761
  %call4 = call i32 @of_device_is_compatible(%struct.device_node* %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !4762
  %tobool5 = icmp ne i32 %call4, 0, !dbg !4762
  br i1 %tobool5, label %if.end, label %if.then, !dbg !4763

if.then:                                          ; preds = %land.lhs.true3
  %call6 = call i8* @ERR_PTR(i64 -2) #6, !dbg !4764
  %5 = bitcast i8* %call6 to %struct.gpio_desc*, !dbg !4764
  store %struct.gpio_desc* %5, %struct.gpio_desc** %retval, align 8, !dbg !4765
  br label %return, !dbg !4765

if.end:                                           ; preds = %land.lhs.true3, %land.lhs.true, %entry
  %6 = load i8*, i8** %con_id.addr, align 8, !dbg !4766
  %tobool7 = icmp ne i8* %6, null, !dbg !4766
  br i1 %tobool7, label %lor.lhs.false, label %if.then10, !dbg !4768

lor.lhs.false:                                    ; preds = %if.end
  %7 = load i8*, i8** %con_id.addr, align 8, !dbg !4769
  %call8 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !4770
  %tobool9 = icmp ne i32 %call8, 0, !dbg !4770
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !4771

if.then10:                                        ; preds = %lor.lhs.false, %if.end
  %call11 = call i8* @ERR_PTR(i64 -2) #6, !dbg !4772
  %8 = bitcast i8* %call11 to %struct.gpio_desc*, !dbg !4772
  store %struct.gpio_desc* %8, %struct.gpio_desc** %retval, align 8, !dbg !4773
  br label %return, !dbg !4773

if.end12:                                         ; preds = %lor.lhs.false
  %9 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4774
  %10 = load i32, i32* %idx.addr, align 4, !dbg !4775
  %11 = load i64*, i64** %flags.addr, align 8, !dbg !4776
  %call13 = call %struct.gpio_desc* @of_find_gpio(%struct.device* %9, i8* null, i32 %10, i64* %11) #6, !dbg !4777
  store %struct.gpio_desc* %call13, %struct.gpio_desc** %retval, align 8, !dbg !4778
  br label %return, !dbg !4778

return:                                           ; preds = %if.end12, %if.then10, %if.then
  %12 = load %struct.gpio_desc*, %struct.gpio_desc** %retval, align 8, !dbg !4779
  ret %struct.gpio_desc* %12, !dbg !4779
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.gpio_desc* @of_find_regulator_gpio(%struct.device* %dev, i8* %con_id, i32* %of_flags) #0 !dbg !4780 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %con_id.addr = alloca i8*, align 8
  %of_flags.addr = alloca i32*, align 8
  %whitelist = alloca [3 x i8*], align 16
  %np = alloca %struct.device_node*, align 8
  %desc = alloca %struct.gpio_desc*, align 8
  %i = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4781, metadata !DIExpression()), !dbg !4782
  store i8* %con_id, i8** %con_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %con_id.addr, metadata !4783, metadata !DIExpression()), !dbg !4784
  store i32* %of_flags, i32** %of_flags.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %of_flags.addr, metadata !4785, metadata !DIExpression()), !dbg !4786
  call void @llvm.dbg.declare(metadata [3 x i8*]* %whitelist, metadata !4787, metadata !DIExpression()), !dbg !4789
  %0 = bitcast [3 x i8*]* %whitelist to i8*, !dbg !4789
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([3 x i8*]* @__const.of_find_regulator_gpio.whitelist to i8*), i64 24, i1 false), !dbg !4789
  call void @llvm.dbg.declare(metadata %struct.device_node** %np, metadata !4790, metadata !DIExpression()), !dbg !4791
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4792
  %of_node = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 23, !dbg !4793
  %2 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !4793
  store %struct.device_node* %2, %struct.device_node** %np, align 8, !dbg !4791
  call void @llvm.dbg.declare(metadata %struct.gpio_desc** %desc, metadata !4794, metadata !DIExpression()), !dbg !4795
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4796, metadata !DIExpression()), !dbg !4797
  %call = call i8* @ERR_PTR(i64 -2) #6, !dbg !4798
  %3 = bitcast i8* %call to %struct.gpio_desc*, !dbg !4798
  ret %struct.gpio_desc* %3, !dbg !4800
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.gpio_desc* @of_find_arizona_gpio(%struct.device* %dev, i8* %con_id, i32* %of_flags) #0 !dbg !4801 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %con_id.addr = alloca i8*, align 8
  %of_flags.addr = alloca i32*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4802, metadata !DIExpression()), !dbg !4803
  store i8* %con_id, i8** %con_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %con_id.addr, metadata !4804, metadata !DIExpression()), !dbg !4805
  store i32* %of_flags, i32** %of_flags.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %of_flags.addr, metadata !4806, metadata !DIExpression()), !dbg !4807
  %call = call i8* @ERR_PTR(i64 -2) #6, !dbg !4808
  %0 = bitcast i8* %call to %struct.gpio_desc*, !dbg !4808
  ret %struct.gpio_desc* %0, !dbg !4810
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.gpio_desc* @of_find_usb_gpio(%struct.device* %dev, i8* %con_id, i32* %of_flags) #0 !dbg !4811 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %con_id.addr = alloca i8*, align 8
  %of_flags.addr = alloca i32*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4812, metadata !DIExpression()), !dbg !4813
  store i8* %con_id, i8** %con_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %con_id.addr, metadata !4814, metadata !DIExpression()), !dbg !4815
  store i32* %of_flags, i32** %of_flags.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %of_flags.addr, metadata !4816, metadata !DIExpression()), !dbg !4817
  %call = call i8* @ERR_PTR(i64 -2) #6, !dbg !4818
  %0 = bitcast i8* %call to %struct.gpio_desc*, !dbg !4818
  ret %struct.gpio_desc* %0, !dbg !4820
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @of_mm_gpiochip_add_data(%struct.device_node* %np, %struct.of_mm_gpio_chip* %mm_gc, i8* %data) #0 !dbg !4821 {
entry:
  %retval = alloca i32, align 4
  %np.addr = alloca %struct.device_node*, align 8
  %mm_gc.addr = alloca %struct.of_mm_gpio_chip*, align 8
  %data.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %gc = alloca %struct.gpio_chip*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4833, metadata !DIExpression()), !dbg !4834
  store %struct.of_mm_gpio_chip* %mm_gc, %struct.of_mm_gpio_chip** %mm_gc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.of_mm_gpio_chip** %mm_gc.addr, metadata !4835, metadata !DIExpression()), !dbg !4836
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4837, metadata !DIExpression()), !dbg !4838
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4839, metadata !DIExpression()), !dbg !4840
  store i32 -12, i32* %ret, align 4, !dbg !4840
  call void @llvm.dbg.declare(metadata %struct.gpio_chip** %gc, metadata !4841, metadata !DIExpression()), !dbg !4842
  %0 = load %struct.of_mm_gpio_chip*, %struct.of_mm_gpio_chip** %mm_gc.addr, align 8, !dbg !4843
  %gc1 = getelementptr inbounds %struct.of_mm_gpio_chip, %struct.of_mm_gpio_chip* %0, i32 0, i32 0, !dbg !4844
  store %struct.gpio_chip* %gc1, %struct.gpio_chip** %gc, align 8, !dbg !4842
  %1 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4845
  %call = call noalias i8* (i32, i8*, ...) @kasprintf(i32 3264, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %struct.device_node* %1) #6, !dbg !4846
  %2 = load %struct.gpio_chip*, %struct.gpio_chip** %gc, align 8, !dbg !4847
  %label = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %2, i32 0, i32 0, !dbg !4848
  store i8* %call, i8** %label, align 8, !dbg !4849
  %3 = load %struct.gpio_chip*, %struct.gpio_chip** %gc, align 8, !dbg !4850
  %label2 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %3, i32 0, i32 0, !dbg !4852
  %4 = load i8*, i8** %label2, align 8, !dbg !4852
  %tobool = icmp ne i8* %4, null, !dbg !4850
  br i1 %tobool, label %if.end, label %if.then, !dbg !4853

if.then:                                          ; preds = %entry
  br label %err0, !dbg !4854

if.end:                                           ; preds = %entry
  %5 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4855
  %call3 = call i8* @of_iomap(%struct.device_node* %5, i32 0) #6, !dbg !4856
  %6 = load %struct.of_mm_gpio_chip*, %struct.of_mm_gpio_chip** %mm_gc.addr, align 8, !dbg !4857
  %regs = getelementptr inbounds %struct.of_mm_gpio_chip, %struct.of_mm_gpio_chip* %6, i32 0, i32 2, !dbg !4858
  store i8* %call3, i8** %regs, align 8, !dbg !4859
  %7 = load %struct.of_mm_gpio_chip*, %struct.of_mm_gpio_chip** %mm_gc.addr, align 8, !dbg !4860
  %regs4 = getelementptr inbounds %struct.of_mm_gpio_chip, %struct.of_mm_gpio_chip* %7, i32 0, i32 2, !dbg !4862
  %8 = load i8*, i8** %regs4, align 8, !dbg !4862
  %tobool5 = icmp ne i8* %8, null, !dbg !4860
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !4863

if.then6:                                         ; preds = %if.end
  br label %err1, !dbg !4864

if.end7:                                          ; preds = %if.end
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %gc, align 8, !dbg !4865
  %base = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %9, i32 0, i32 18, !dbg !4866
  store i32 -1, i32* %base, align 8, !dbg !4867
  %10 = load %struct.of_mm_gpio_chip*, %struct.of_mm_gpio_chip** %mm_gc.addr, align 8, !dbg !4868
  %save_regs = getelementptr inbounds %struct.of_mm_gpio_chip, %struct.of_mm_gpio_chip* %10, i32 0, i32 1, !dbg !4870
  %11 = load void (%struct.of_mm_gpio_chip*)*, void (%struct.of_mm_gpio_chip*)** %save_regs, align 8, !dbg !4870
  %tobool8 = icmp ne void (%struct.of_mm_gpio_chip*)* %11, null, !dbg !4868
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !4871

if.then9:                                         ; preds = %if.end7
  %12 = load %struct.of_mm_gpio_chip*, %struct.of_mm_gpio_chip** %mm_gc.addr, align 8, !dbg !4872
  %save_regs10 = getelementptr inbounds %struct.of_mm_gpio_chip, %struct.of_mm_gpio_chip* %12, i32 0, i32 1, !dbg !4873
  %13 = load void (%struct.of_mm_gpio_chip*)*, void (%struct.of_mm_gpio_chip*)** %save_regs10, align 8, !dbg !4873
  %14 = load %struct.of_mm_gpio_chip*, %struct.of_mm_gpio_chip** %mm_gc.addr, align 8, !dbg !4874
  call void %13(%struct.of_mm_gpio_chip* %14) #6, !dbg !4872
  br label %if.end11, !dbg !4872

if.end11:                                         ; preds = %if.then9, %if.end7
  %15 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4875
  %16 = load %struct.of_mm_gpio_chip*, %struct.of_mm_gpio_chip** %mm_gc.addr, align 8, !dbg !4876
  %gc12 = getelementptr inbounds %struct.of_mm_gpio_chip, %struct.of_mm_gpio_chip* %16, i32 0, i32 0, !dbg !4877
  %of_node = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %gc12, i32 0, i32 37, !dbg !4878
  store %struct.device_node* %15, %struct.device_node** %of_node, align 8, !dbg !4879
  %17 = load %struct.gpio_chip*, %struct.gpio_chip** %gc, align 8, !dbg !4880
  %18 = load i8*, i8** %data.addr, align 8, !dbg !4880
  %call13 = call i32 @gpiochip_add_data_with_key(%struct.gpio_chip* %17, i8* %18, %struct.lock_class_key* null, %struct.lock_class_key* null) #6, !dbg !4880
  store i32 %call13, i32* %ret, align 4, !dbg !4881
  %19 = load i32, i32* %ret, align 4, !dbg !4882
  %tobool14 = icmp ne i32 %19, 0, !dbg !4882
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !4884

if.then15:                                        ; preds = %if.end11
  br label %err2, !dbg !4885

if.end16:                                         ; preds = %if.end11
  store i32 0, i32* %retval, align 4, !dbg !4886
  br label %return, !dbg !4886

err2:                                             ; preds = %if.then15
  call void @llvm.dbg.label(metadata !4887), !dbg !4888
  %20 = load %struct.of_mm_gpio_chip*, %struct.of_mm_gpio_chip** %mm_gc.addr, align 8, !dbg !4889
  %regs17 = getelementptr inbounds %struct.of_mm_gpio_chip, %struct.of_mm_gpio_chip* %20, i32 0, i32 2, !dbg !4890
  %21 = load i8*, i8** %regs17, align 8, !dbg !4890
  call void @iounmap(i8* %21) #6, !dbg !4891
  br label %err1, !dbg !4891

err1:                                             ; preds = %err2, %if.then6
  call void @llvm.dbg.label(metadata !4892), !dbg !4893
  %22 = load %struct.gpio_chip*, %struct.gpio_chip** %gc, align 8, !dbg !4894
  %label18 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %22, i32 0, i32 0, !dbg !4895
  %23 = load i8*, i8** %label18, align 8, !dbg !4895
  call void @kfree(i8* %23) #6, !dbg !4896
  br label %err0, !dbg !4896

err0:                                             ; preds = %err1, %if.then
  call void @llvm.dbg.label(metadata !4897), !dbg !4898
  %24 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4899
  %25 = load i32, i32* %ret, align 4, !dbg !4899
  %call19 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), %struct.device_node* %24, i32 %25) #7, !dbg !4899
  %26 = load i32, i32* %ret, align 4, !dbg !4900
  store i32 %26, i32* %retval, align 4, !dbg !4901
  br label %return, !dbg !4901

return:                                           ; preds = %err0, %if.end16
  %27 = load i32, i32* %retval, align 4, !dbg !4902
  ret i32 %27, !dbg !4902
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kasprintf(i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i8* @of_iomap(%struct.device_node*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @gpiochip_add_data_with_key(%struct.gpio_chip*, i8*, %struct.lock_class_key*, %struct.lock_class_key*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @iounmap(i8*) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @of_mm_gpiochip_remove(%struct.of_mm_gpio_chip* %mm_gc) #0 !dbg !4903 {
entry:
  %mm_gc.addr = alloca %struct.of_mm_gpio_chip*, align 8
  %gc = alloca %struct.gpio_chip*, align 8
  store %struct.of_mm_gpio_chip* %mm_gc, %struct.of_mm_gpio_chip** %mm_gc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.of_mm_gpio_chip** %mm_gc.addr, metadata !4904, metadata !DIExpression()), !dbg !4905
  call void @llvm.dbg.declare(metadata %struct.gpio_chip** %gc, metadata !4906, metadata !DIExpression()), !dbg !4907
  %0 = load %struct.of_mm_gpio_chip*, %struct.of_mm_gpio_chip** %mm_gc.addr, align 8, !dbg !4908
  %gc1 = getelementptr inbounds %struct.of_mm_gpio_chip, %struct.of_mm_gpio_chip* %0, i32 0, i32 0, !dbg !4909
  store %struct.gpio_chip* %gc1, %struct.gpio_chip** %gc, align 8, !dbg !4907
  %1 = load %struct.of_mm_gpio_chip*, %struct.of_mm_gpio_chip** %mm_gc.addr, align 8, !dbg !4910
  %tobool = icmp ne %struct.of_mm_gpio_chip* %1, null, !dbg !4910
  br i1 %tobool, label %if.end, label %if.then, !dbg !4912

if.then:                                          ; preds = %entry
  br label %return, !dbg !4913

if.end:                                           ; preds = %entry
  %2 = load %struct.gpio_chip*, %struct.gpio_chip** %gc, align 8, !dbg !4914
  call void @gpiochip_remove(%struct.gpio_chip* %2) #6, !dbg !4915
  %3 = load %struct.of_mm_gpio_chip*, %struct.of_mm_gpio_chip** %mm_gc.addr, align 8, !dbg !4916
  %regs = getelementptr inbounds %struct.of_mm_gpio_chip, %struct.of_mm_gpio_chip* %3, i32 0, i32 2, !dbg !4917
  %4 = load i8*, i8** %regs, align 8, !dbg !4917
  call void @iounmap(i8* %4) #6, !dbg !4918
  %5 = load %struct.gpio_chip*, %struct.gpio_chip** %gc, align 8, !dbg !4919
  %label = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %5, i32 0, i32 0, !dbg !4920
  %6 = load i8*, i8** %label, align 8, !dbg !4920
  call void @kfree(i8* %6) #6, !dbg !4921
  br label %return, !dbg !4922

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4922
}

; Function Attrs: noredzone
declare dso_local void @gpiochip_remove(%struct.gpio_chip*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @of_gpiochip_add(%struct.gpio_chip* %chip) #0 !dbg !4923 {
entry:
  %retval = alloca i32, align 4
  %chip.addr = alloca %struct.gpio_chip*, align 8
  %ret = alloca i32, align 4
  store %struct.gpio_chip* %chip, %struct.gpio_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_chip** %chip.addr, metadata !4924, metadata !DIExpression()), !dbg !4925
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4926, metadata !DIExpression()), !dbg !4927
  %0 = load %struct.gpio_chip*, %struct.gpio_chip** %chip.addr, align 8, !dbg !4928
  %of_node = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %0, i32 0, i32 37, !dbg !4930
  %1 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !4930
  %tobool = icmp ne %struct.device_node* %1, null, !dbg !4928
  br i1 %tobool, label %if.end, label %if.then, !dbg !4931

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4932
  br label %return, !dbg !4932

if.end:                                           ; preds = %entry
  %2 = load %struct.gpio_chip*, %struct.gpio_chip** %chip.addr, align 8, !dbg !4933
  %of_xlate = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %2, i32 0, i32 39, !dbg !4935
  %3 = load i32 (%struct.gpio_chip*, %struct.of_phandle_args*, i32*)*, i32 (%struct.gpio_chip*, %struct.of_phandle_args*, i32*)** %of_xlate, align 8, !dbg !4935
  %tobool1 = icmp ne i32 (%struct.gpio_chip*, %struct.of_phandle_args*, i32*)* %3, null, !dbg !4933
  br i1 %tobool1, label %if.end4, label %if.then2, !dbg !4936

if.then2:                                         ; preds = %if.end
  %4 = load %struct.gpio_chip*, %struct.gpio_chip** %chip.addr, align 8, !dbg !4937
  %of_gpio_n_cells = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %4, i32 0, i32 38, !dbg !4939
  store i32 2, i32* %of_gpio_n_cells, align 8, !dbg !4940
  %5 = load %struct.gpio_chip*, %struct.gpio_chip** %chip.addr, align 8, !dbg !4941
  %of_xlate3 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %5, i32 0, i32 39, !dbg !4942
  store i32 (%struct.gpio_chip*, %struct.of_phandle_args*, i32*)* @of_gpio_simple_xlate, i32 (%struct.gpio_chip*, %struct.of_phandle_args*, i32*)** %of_xlate3, align 8, !dbg !4943
  br label %if.end4, !dbg !4944

if.end4:                                          ; preds = %if.then2, %if.end
  %6 = load %struct.gpio_chip*, %struct.gpio_chip** %chip.addr, align 8, !dbg !4945
  %of_gpio_n_cells5 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %6, i32 0, i32 38, !dbg !4947
  %7 = load i32, i32* %of_gpio_n_cells5, align 8, !dbg !4947
  %cmp = icmp ugt i32 %7, 16, !dbg !4948
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !4949

if.then6:                                         ; preds = %if.end4
  store i32 -22, i32* %retval, align 4, !dbg !4950
  br label %return, !dbg !4950

if.end7:                                          ; preds = %if.end4
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %chip.addr, align 8, !dbg !4951
  call void @of_gpiochip_init_valid_mask(%struct.gpio_chip* %8) #6, !dbg !4952
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %chip.addr, align 8, !dbg !4953
  %call = call i32 @of_gpiochip_add_pin_range(%struct.gpio_chip* %9) #6, !dbg !4954
  store i32 %call, i32* %ret, align 4, !dbg !4955
  %10 = load i32, i32* %ret, align 4, !dbg !4956
  %tobool8 = icmp ne i32 %10, 0, !dbg !4956
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !4958

if.then9:                                         ; preds = %if.end7
  %11 = load i32, i32* %ret, align 4, !dbg !4959
  store i32 %11, i32* %retval, align 4, !dbg !4960
  br label %return, !dbg !4960

if.end10:                                         ; preds = %if.end7
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %chip.addr, align 8, !dbg !4961
  %of_node11 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %12, i32 0, i32 37, !dbg !4962
  %13 = load %struct.device_node*, %struct.device_node** %of_node11, align 8, !dbg !4962
  %call12 = call %struct.device_node* @of_node_get(%struct.device_node* %13) #6, !dbg !4963
  %14 = load %struct.gpio_chip*, %struct.gpio_chip** %chip.addr, align 8, !dbg !4964
  %call13 = call i32 @of_gpiochip_scan_gpios(%struct.gpio_chip* %14) #6, !dbg !4965
  store i32 %call13, i32* %ret, align 4, !dbg !4966
  %15 = load i32, i32* %ret, align 4, !dbg !4967
  %tobool14 = icmp ne i32 %15, 0, !dbg !4967
  br i1 %tobool14, label %if.then15, label %if.end17, !dbg !4969

if.then15:                                        ; preds = %if.end10
  %16 = load %struct.gpio_chip*, %struct.gpio_chip** %chip.addr, align 8, !dbg !4970
  %of_node16 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %16, i32 0, i32 37, !dbg !4971
  %17 = load %struct.device_node*, %struct.device_node** %of_node16, align 8, !dbg !4971
  call void @of_node_put(%struct.device_node* %17) #6, !dbg !4972
  br label %if.end17, !dbg !4972

if.end17:                                         ; preds = %if.then15, %if.end10
  %18 = load i32, i32* %ret, align 4, !dbg !4973
  store i32 %18, i32* %retval, align 4, !dbg !4974
  br label %return, !dbg !4974

return:                                           ; preds = %if.end17, %if.then9, %if.then6, %if.then
  %19 = load i32, i32* %retval, align 4, !dbg !4975
  ret i32 %19, !dbg !4975
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_gpio_simple_xlate(%struct.gpio_chip* %gc, %struct.of_phandle_args* %gpiospec, i32* %flags) #0 !dbg !4976 {
entry:
  %retval = alloca i32, align 4
  %gc.addr = alloca %struct.gpio_chip*, align 8
  %gpiospec.addr = alloca %struct.of_phandle_args*, align 8
  %flags.addr = alloca i32*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on17 = alloca i32, align 4
  %tmp42 = alloca i64, align 8
  store %struct.gpio_chip* %gc, %struct.gpio_chip** %gc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_chip** %gc.addr, metadata !4977, metadata !DIExpression()), !dbg !4978
  store %struct.of_phandle_args* %gpiospec, %struct.of_phandle_args** %gpiospec.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.of_phandle_args** %gpiospec.addr, metadata !4979, metadata !DIExpression()), !dbg !4980
  store i32* %flags, i32** %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %flags.addr, metadata !4981, metadata !DIExpression()), !dbg !4982
  %0 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !4983
  %of_gpio_n_cells = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %0, i32 0, i32 38, !dbg !4985
  %1 = load i32, i32* %of_gpio_n_cells, align 8, !dbg !4985
  %cmp = icmp ult i32 %1, 2, !dbg !4986
  br i1 %cmp, label %if.then, label %if.end16, !dbg !4987

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4988, metadata !DIExpression()), !dbg !4991
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !4991
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !4992
  %tobool = icmp ne i32 %2, 0, !dbg !4992
  %lnot = xor i1 %tobool, true, !dbg !4992
  %lnot1 = xor i1 %lnot, true, !dbg !4992
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4992
  %conv = sext i32 %lnot.ext to i64, !dbg !4992
  %tobool2 = icmp ne i64 %conv, 0, !dbg !4992
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !4991

if.then3:                                         ; preds = %if.then
  br label %do.body, !dbg !4992

do.body:                                          ; preds = %if.then3
  br label %do.body4, !dbg !4994

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !4996

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !4994

do.body5:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i64 0, i64 0), i32 810, i32 2305, i64 12) #8, !dbg !4998, !srcloc !5000
  br label %do.end6, !dbg !4998

do.end6:                                          ; preds = %do.body5
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 209) #8, !dbg !5001, !srcloc !5003
  br label %do.body7, !dbg !4994

do.body7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !5004

do.end8:                                          ; preds = %do.body7
  br label %do.end9, !dbg !4994

do.end9:                                          ; preds = %do.end8
  br label %if.end, !dbg !4994

if.end:                                           ; preds = %do.end9, %if.then
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !4991
  %tobool10 = icmp ne i32 %3, 0, !dbg !4991
  %lnot11 = xor i1 %tobool10, true, !dbg !4991
  %lnot13 = xor i1 %lnot11, true, !dbg !4991
  %lnot.ext14 = zext i1 %lnot13 to i32, !dbg !4991
  %conv15 = sext i32 %lnot.ext14 to i64, !dbg !4991
  store i64 %conv15, i64* %tmp, align 8, !dbg !4992
  %4 = load i64, i64* %tmp, align 8, !dbg !4991
  store i32 -22, i32* %retval, align 4, !dbg !5006
  br label %return, !dbg !5006

if.end16:                                         ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on17, metadata !5007, metadata !DIExpression()), !dbg !5010
  %5 = load %struct.of_phandle_args*, %struct.of_phandle_args** %gpiospec.addr, align 8, !dbg !5010
  %args_count = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %5, i32 0, i32 1, !dbg !5010
  %6 = load i32, i32* %args_count, align 8, !dbg !5010
  %7 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5010
  %of_gpio_n_cells18 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %7, i32 0, i32 38, !dbg !5010
  %8 = load i32, i32* %of_gpio_n_cells18, align 8, !dbg !5010
  %cmp19 = icmp ult i32 %6, %8, !dbg !5010
  %lnot21 = xor i1 %cmp19, true, !dbg !5010
  %lnot23 = xor i1 %lnot21, true, !dbg !5010
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !5010
  store i32 %lnot.ext24, i32* %__ret_warn_on17, align 4, !dbg !5010
  %9 = load i32, i32* %__ret_warn_on17, align 4, !dbg !5011
  %tobool25 = icmp ne i32 %9, 0, !dbg !5011
  %lnot26 = xor i1 %tobool25, true, !dbg !5011
  %lnot28 = xor i1 %lnot26, true, !dbg !5011
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !5011
  %conv30 = sext i32 %lnot.ext29 to i64, !dbg !5011
  %tobool31 = icmp ne i64 %conv30, 0, !dbg !5011
  br i1 %tobool31, label %if.then32, label %if.end41, !dbg !5010

if.then32:                                        ; preds = %if.end16
  br label %do.body33, !dbg !5011

do.body33:                                        ; preds = %if.then32
  br label %do.body34, !dbg !5013

do.body34:                                        ; preds = %do.body33
  br label %do.end35, !dbg !5015

do.end35:                                         ; preds = %do.body34
  br label %do.body36, !dbg !5013

do.body36:                                        ; preds = %do.end35
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i64 0, i64 0), i32 814, i32 2305, i64 12) #8, !dbg !5017, !srcloc !5019
  br label %do.end37, !dbg !5017

do.end37:                                         ; preds = %do.body36
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 210) #8, !dbg !5020, !srcloc !5022
  br label %do.body38, !dbg !5013

do.body38:                                        ; preds = %do.end37
  br label %do.end39, !dbg !5023

do.end39:                                         ; preds = %do.body38
  br label %do.end40, !dbg !5013

do.end40:                                         ; preds = %do.end39
  br label %if.end41, !dbg !5013

if.end41:                                         ; preds = %do.end40, %if.end16
  %10 = load i32, i32* %__ret_warn_on17, align 4, !dbg !5010
  %tobool43 = icmp ne i32 %10, 0, !dbg !5010
  %lnot44 = xor i1 %tobool43, true, !dbg !5010
  %lnot46 = xor i1 %lnot44, true, !dbg !5010
  %lnot.ext47 = zext i1 %lnot46 to i32, !dbg !5010
  %conv48 = sext i32 %lnot.ext47 to i64, !dbg !5010
  store i64 %conv48, i64* %tmp42, align 8, !dbg !5011
  %11 = load i64, i64* %tmp42, align 8, !dbg !5010
  %tobool49 = icmp ne i64 %11, 0, !dbg !5025
  br i1 %tobool49, label %if.then50, label %if.end51, !dbg !5026

if.then50:                                        ; preds = %if.end41
  store i32 -22, i32* %retval, align 4, !dbg !5027
  br label %return, !dbg !5027

if.end51:                                         ; preds = %if.end41
  %12 = load %struct.of_phandle_args*, %struct.of_phandle_args** %gpiospec.addr, align 8, !dbg !5028
  %args = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %12, i32 0, i32 2, !dbg !5030
  %arrayidx = getelementptr [16 x i32], [16 x i32]* %args, i64 0, i64 0, !dbg !5028
  %13 = load i32, i32* %arrayidx, align 4, !dbg !5028
  %14 = load %struct.gpio_chip*, %struct.gpio_chip** %gc.addr, align 8, !dbg !5031
  %ngpio = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %14, i32 0, i32 19, !dbg !5032
  %15 = load i16, i16* %ngpio, align 4, !dbg !5032
  %conv52 = zext i16 %15 to i32, !dbg !5031
  %cmp53 = icmp uge i32 %13, %conv52, !dbg !5033
  br i1 %cmp53, label %if.then55, label %if.end56, !dbg !5034

if.then55:                                        ; preds = %if.end51
  store i32 -22, i32* %retval, align 4, !dbg !5035
  br label %return, !dbg !5035

if.end56:                                         ; preds = %if.end51
  %16 = load i32*, i32** %flags.addr, align 8, !dbg !5036
  %tobool57 = icmp ne i32* %16, null, !dbg !5036
  br i1 %tobool57, label %if.then58, label %if.end61, !dbg !5038

if.then58:                                        ; preds = %if.end56
  %17 = load %struct.of_phandle_args*, %struct.of_phandle_args** %gpiospec.addr, align 8, !dbg !5039
  %args59 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %17, i32 0, i32 2, !dbg !5040
  %arrayidx60 = getelementptr [16 x i32], [16 x i32]* %args59, i64 0, i64 1, !dbg !5039
  %18 = load i32, i32* %arrayidx60, align 4, !dbg !5039
  %19 = load i32*, i32** %flags.addr, align 8, !dbg !5041
  store i32 %18, i32* %19, align 4, !dbg !5042
  br label %if.end61, !dbg !5043

if.end61:                                         ; preds = %if.then58, %if.end56
  %20 = load %struct.of_phandle_args*, %struct.of_phandle_args** %gpiospec.addr, align 8, !dbg !5044
  %args62 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %20, i32 0, i32 2, !dbg !5045
  %arrayidx63 = getelementptr [16 x i32], [16 x i32]* %args62, i64 0, i64 0, !dbg !5044
  %21 = load i32, i32* %arrayidx63, align 4, !dbg !5044
  store i32 %21, i32* %retval, align 4, !dbg !5046
  br label %return, !dbg !5046

return:                                           ; preds = %if.end61, %if.then55, %if.then50, %if.end
  %22 = load i32, i32* %retval, align 4, !dbg !5047
  ret i32 %22, !dbg !5047
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @of_gpiochip_init_valid_mask(%struct.gpio_chip* %chip) #0 !dbg !5048 {
entry:
  %map.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %map.addr.i, metadata !5051, metadata !DIExpression()), !dbg !5056
  %start.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %start.addr.i, metadata !5061, metadata !DIExpression()), !dbg !5062
  %nbits.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %nbits.addr.i, metadata !5063, metadata !DIExpression()), !dbg !5064
  %chip.addr = alloca %struct.gpio_chip*, align 8
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  %start = alloca i32, align 4
  %count = alloca i32, align 4
  %np = alloca %struct.device_node*, align 8
  store %struct.gpio_chip* %chip, %struct.gpio_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_chip** %chip.addr, metadata !5065, metadata !DIExpression()), !dbg !5066
  call void @llvm.dbg.declare(metadata i32* %len, metadata !5067, metadata !DIExpression()), !dbg !5068
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5069, metadata !DIExpression()), !dbg !5070
  call void @llvm.dbg.declare(metadata i32* %start, metadata !5071, metadata !DIExpression()), !dbg !5072
  call void @llvm.dbg.declare(metadata i32* %count, metadata !5073, metadata !DIExpression()), !dbg !5074
  call void @llvm.dbg.declare(metadata %struct.device_node** %np, metadata !5075, metadata !DIExpression()), !dbg !5076
  %0 = load %struct.gpio_chip*, %struct.gpio_chip** %chip.addr, align 8, !dbg !5077
  %of_node = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %0, i32 0, i32 37, !dbg !5078
  %1 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !5078
  store %struct.device_node* %1, %struct.device_node** %np, align 8, !dbg !5076
  %2 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !5079
  %call = call i32 @of_property_count_u32_elems(%struct.device_node* %2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !5080
  store i32 %call, i32* %len, align 4, !dbg !5081
  %3 = load i32, i32* %len, align 4, !dbg !5082
  %cmp = icmp slt i32 %3, 0, !dbg !5084
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5085

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %len, align 4, !dbg !5086
  %rem = srem i32 %4, 2, !dbg !5087
  %cmp1 = icmp ne i32 %rem, 0, !dbg !5088
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5089

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %for.end, !dbg !5090

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4, !dbg !5091
  br label %for.cond, !dbg !5092

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4, !dbg !5093
  %6 = load i32, i32* %len, align 4, !dbg !5094
  %cmp2 = icmp slt i32 %5, %6, !dbg !5095
  br i1 %cmp2, label %for.body, label %for.end, !dbg !5096

for.body:                                         ; preds = %for.cond
  %7 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !5097
  %8 = load i32, i32* %i, align 4, !dbg !5098
  %call3 = call i32 @of_property_read_u32_index(%struct.device_node* %7, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %8, i32* %start) #6, !dbg !5099
  %9 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !5100
  %10 = load i32, i32* %i, align 4, !dbg !5101
  %add = add i32 %10, 1, !dbg !5102
  %call4 = call i32 @of_property_read_u32_index(%struct.device_node* %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %add, i32* %count) #6, !dbg !5103
  %11 = load i32, i32* %start, align 4, !dbg !5104
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %chip.addr, align 8, !dbg !5106
  %ngpio = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %12, i32 0, i32 19, !dbg !5107
  %13 = load i16, i16* %ngpio, align 4, !dbg !5107
  %conv = zext i16 %13 to i32, !dbg !5106
  %cmp5 = icmp uge i32 %11, %conv, !dbg !5108
  br i1 %cmp5, label %if.then13, label %lor.lhs.false7, !dbg !5109

lor.lhs.false7:                                   ; preds = %for.body
  %14 = load i32, i32* %start, align 4, !dbg !5110
  %15 = load i32, i32* %count, align 4, !dbg !5111
  %add8 = add i32 %14, %15, !dbg !5112
  %16 = load %struct.gpio_chip*, %struct.gpio_chip** %chip.addr, align 8, !dbg !5113
  %ngpio9 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %16, i32 0, i32 19, !dbg !5114
  %17 = load i16, i16* %ngpio9, align 4, !dbg !5114
  %conv10 = zext i16 %17 to i32, !dbg !5113
  %cmp11 = icmp uge i32 %add8, %conv10, !dbg !5115
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !5116

if.then13:                                        ; preds = %lor.lhs.false7, %for.body
  br label %for.inc, !dbg !5117

if.end14:                                         ; preds = %lor.lhs.false7
  %18 = load %struct.gpio_chip*, %struct.gpio_chip** %chip.addr, align 8, !dbg !5118
  %valid_mask = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %18, i32 0, i32 36, !dbg !5119
  %19 = load i64*, i64** %valid_mask, align 8, !dbg !5119
  %20 = load i32, i32* %start, align 4, !dbg !5120
  %21 = load i32, i32* %count, align 4, !dbg !5121
  store i64* %19, i64** %map.addr.i, align 8
  store i32 %20, i32* %start.addr.i, align 4
  store i32 %21, i32* %nbits.addr.i, align 4
  %22 = load i32, i32* %nbits.addr.i, align 4, !dbg !5122
  %23 = call i1 @llvm.is.constant.i32(i32 %22) #8, !dbg !5124
  br i1 %23, label %land.lhs.true.i, label %if.else.i, !dbg !5125

land.lhs.true.i:                                  ; preds = %if.end14
  %24 = load i32, i32* %nbits.addr.i, align 4, !dbg !5126
  %cmp.i = icmp eq i32 %24, 1, !dbg !5127
  br i1 %cmp.i, label %if.then.i, label %if.else.i, !dbg !5128

if.then.i:                                        ; preds = %land.lhs.true.i
  %25 = load i32, i32* %start.addr.i, align 4, !dbg !5129
  %conv.i = zext i32 %25 to i64, !dbg !5129
  %26 = load i64*, i64** %map.addr.i, align 8, !dbg !5130
  call void @__clear_bit(i64 %conv.i, i64* %26) #9, !dbg !5131
  br label %bitmap_clear.exit, !dbg !5131

if.else.i:                                        ; preds = %land.lhs.true.i, %if.end14
  %27 = load i32, i32* %start.addr.i, align 4, !dbg !5132
  %and.i = and i32 %27, 7, !dbg !5134
  %28 = call i1 @llvm.is.constant.i32(i32 %and.i) #8, !dbg !5135
  br i1 %28, label %land.lhs.true1.i, label %if.else14.i, !dbg !5136

land.lhs.true1.i:                                 ; preds = %if.else.i
  %29 = load i32, i32* %start.addr.i, align 4, !dbg !5137
  %and2.i = and i32 %29, 7, !dbg !5137
  %cmp3.i = icmp eq i32 %and2.i, 0, !dbg !5137
  br i1 %cmp3.i, label %land.lhs.true5.i, label %if.else14.i, !dbg !5138

land.lhs.true5.i:                                 ; preds = %land.lhs.true1.i
  %30 = load i32, i32* %nbits.addr.i, align 4, !dbg !5139
  %and6.i = and i32 %30, 7, !dbg !5140
  %31 = call i1 @llvm.is.constant.i32(i32 %and6.i) #8, !dbg !5141
  br i1 %31, label %land.lhs.true7.i, label %if.else14.i, !dbg !5142

land.lhs.true7.i:                                 ; preds = %land.lhs.true5.i
  %32 = load i32, i32* %nbits.addr.i, align 4, !dbg !5143
  %and8.i = and i32 %32, 7, !dbg !5143
  %cmp9.i = icmp eq i32 %and8.i, 0, !dbg !5143
  br i1 %cmp9.i, label %if.then11.i, label %if.else14.i, !dbg !5144

if.then11.i:                                      ; preds = %land.lhs.true7.i
  %33 = load i64*, i64** %map.addr.i, align 8, !dbg !5145
  %34 = bitcast i64* %33 to i8*, !dbg !5146
  %35 = load i32, i32* %start.addr.i, align 4, !dbg !5147
  %div.i = udiv i32 %35, 8, !dbg !5148
  %idx.ext.i = zext i32 %div.i to i64, !dbg !5149
  %add.ptr.i = getelementptr i8, i8* %34, i64 %idx.ext.i, !dbg !5149
  %36 = load i32, i32* %nbits.addr.i, align 4, !dbg !5150
  %div12.i = udiv i32 %36, 8, !dbg !5151
  %conv13.i = zext i32 %div12.i to i64, !dbg !5150
  call void @llvm.memset.p0i8.i64(i8* align 1 %add.ptr.i, i8 0, i64 %conv13.i, i1 false) #8, !dbg !5152
  br label %if.end.i, !dbg !5152

if.else14.i:                                      ; preds = %land.lhs.true7.i, %land.lhs.true5.i, %land.lhs.true1.i, %if.else.i
  %37 = load i64*, i64** %map.addr.i, align 8, !dbg !5153
  %38 = load i32, i32* %start.addr.i, align 4, !dbg !5154
  %39 = load i32, i32* %nbits.addr.i, align 4, !dbg !5155
  call void @__bitmap_clear(i64* %37, i32 %38, i32 %39) #9, !dbg !5156
  br label %if.end.i

if.end.i:                                         ; preds = %if.else14.i, %if.then11.i
  br label %bitmap_clear.exit

bitmap_clear.exit:                                ; preds = %if.then.i, %if.end.i
  br label %for.inc, !dbg !5157

for.inc:                                          ; preds = %bitmap_clear.exit, %if.then13
  %40 = load i32, i32* %i, align 4, !dbg !5158
  %add15 = add i32 %40, 2, !dbg !5158
  store i32 %add15, i32* %i, align 4, !dbg !5158
  br label %for.cond, !dbg !5159, !llvm.loop !5160

for.end:                                          ; preds = %if.then, %for.cond
  ret void, !dbg !5162
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_gpiochip_add_pin_range(%struct.gpio_chip* %chip) #0 !dbg !5163 {
entry:
  %chip.addr = alloca %struct.gpio_chip*, align 8
  store %struct.gpio_chip* %chip, %struct.gpio_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_chip** %chip.addr, metadata !5164, metadata !DIExpression()), !dbg !5165
  ret i32 0, !dbg !5166
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @of_node_get(%struct.device_node* %node) #0 !dbg !5167 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !5170, metadata !DIExpression()), !dbg !5171
  %0 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !5172
  ret %struct.device_node* %0, !dbg !5173
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_gpiochip_scan_gpios(%struct.gpio_chip* %chip) #0 !dbg !5174 {
entry:
  %retval = alloca i32, align 4
  %chip.addr = alloca %struct.gpio_chip*, align 8
  %np = alloca %struct.device_node*, align 8
  %ret = alloca i32, align 4
  store %struct.gpio_chip* %chip, %struct.gpio_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_chip** %chip.addr, metadata !5175, metadata !DIExpression()), !dbg !5176
  call void @llvm.dbg.declare(metadata %struct.device_node** %np, metadata !5177, metadata !DIExpression()), !dbg !5178
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5179, metadata !DIExpression()), !dbg !5180
  %0 = load %struct.gpio_chip*, %struct.gpio_chip** %chip.addr, align 8, !dbg !5181
  %of_node = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %0, i32 0, i32 37, !dbg !5181
  %1 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !5181
  %call = call %struct.device_node* @of_get_next_available_child(%struct.device_node* %1, %struct.device_node* null) #6, !dbg !5181
  store %struct.device_node* %call, %struct.device_node** %np, align 8, !dbg !5181
  br label %for.cond, !dbg !5181

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !5183
  %cmp = icmp ne %struct.device_node* %2, null, !dbg !5183
  br i1 %cmp, label %for.body, label %for.end, !dbg !5181

for.body:                                         ; preds = %for.cond
  %3 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !5185
  %call1 = call zeroext i1 @of_property_read_bool(%struct.device_node* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0)) #6, !dbg !5188
  br i1 %call1, label %if.end, label %if.then, !dbg !5189

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !5190

if.end:                                           ; preds = %for.body
  %4 = load %struct.gpio_chip*, %struct.gpio_chip** %chip.addr, align 8, !dbg !5191
  %5 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !5192
  %call2 = call i32 @of_gpiochip_add_hog(%struct.gpio_chip* %4, %struct.device_node* %5) #6, !dbg !5193
  store i32 %call2, i32* %ret, align 4, !dbg !5194
  %6 = load i32, i32* %ret, align 4, !dbg !5195
  %cmp3 = icmp slt i32 %6, 0, !dbg !5197
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !5198

if.then4:                                         ; preds = %if.end
  %7 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !5199
  call void @of_node_put(%struct.device_node* %7) #6, !dbg !5201
  %8 = load i32, i32* %ret, align 4, !dbg !5202
  store i32 %8, i32* %retval, align 4, !dbg !5203
  br label %return, !dbg !5203

if.end5:                                          ; preds = %if.end
  %9 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !5204
  call void @of_node_set_flag(%struct.device_node* %9, i64 3) #6, !dbg !5205
  br label %for.inc, !dbg !5206

for.inc:                                          ; preds = %if.end5, %if.then
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %chip.addr, align 8, !dbg !5183
  %of_node6 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %10, i32 0, i32 37, !dbg !5183
  %11 = load %struct.device_node*, %struct.device_node** %of_node6, align 8, !dbg !5183
  %12 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !5183
  %call7 = call %struct.device_node* @of_get_next_available_child(%struct.device_node* %11, %struct.device_node* %12) #6, !dbg !5183
  store %struct.device_node* %call7, %struct.device_node** %np, align 8, !dbg !5183
  br label %for.cond, !dbg !5183, !llvm.loop !5207

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !5209
  br label %return, !dbg !5209

return:                                           ; preds = %for.end, %if.then4
  %13 = load i32, i32* %retval, align 4, !dbg !5210
  ret i32 %13, !dbg !5210
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @of_node_put(%struct.device_node* %node) #0 !dbg !5211 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !5214, metadata !DIExpression()), !dbg !5215
  ret void, !dbg !5216
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @of_gpiochip_remove(%struct.gpio_chip* %chip) #0 !dbg !5217 {
entry:
  %chip.addr = alloca %struct.gpio_chip*, align 8
  store %struct.gpio_chip* %chip, %struct.gpio_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_chip** %chip.addr, metadata !5218, metadata !DIExpression()), !dbg !5219
  %0 = load %struct.gpio_chip*, %struct.gpio_chip** %chip.addr, align 8, !dbg !5220
  %of_node = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %0, i32 0, i32 37, !dbg !5221
  %1 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !5221
  call void @of_node_put(%struct.device_node* %1) #6, !dbg !5222
  ret void, !dbg !5223
}

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @of_device_is_compatible(%struct.device_node*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @of_count_phandle_with_args(%struct.device_node*, i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @of_property_count_elems_of_size(%struct.device_node*, i8*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @of_parse_phandle_with_args_map(%struct.device_node*, i8*, i8*, i32, %struct.of_phandle_args*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.gpio_chip* @of_find_gpiochip_by_xlate(%struct.of_phandle_args* %gpiospec) #0 !dbg !5224 {
entry:
  %gpiospec.addr = alloca %struct.of_phandle_args*, align 8
  store %struct.of_phandle_args* %gpiospec, %struct.of_phandle_args** %gpiospec.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.of_phandle_args** %gpiospec.addr, metadata !5228, metadata !DIExpression()), !dbg !5229
  %0 = load %struct.of_phandle_args*, %struct.of_phandle_args** %gpiospec.addr, align 8, !dbg !5230
  %1 = bitcast %struct.of_phandle_args* %0 to i8*, !dbg !5230
  %call = call %struct.gpio_chip* @gpiochip_find(i8* %1, i32 (%struct.gpio_chip*, i8*)* @of_gpiochip_match_node_and_xlate) #6, !dbg !5231
  ret %struct.gpio_chip* %call, !dbg !5232
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.gpio_desc* @of_xlate_and_get_gpiod_flags(%struct.gpio_chip* %chip, %struct.of_phandle_args* %gpiospec, i32* %flags) #0 !dbg !5233 {
entry:
  %retval = alloca %struct.gpio_desc*, align 8
  %chip.addr = alloca %struct.gpio_chip*, align 8
  %gpiospec.addr = alloca %struct.of_phandle_args*, align 8
  %flags.addr = alloca i32*, align 8
  %ret = alloca i32, align 4
  store %struct.gpio_chip* %chip, %struct.gpio_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_chip** %chip.addr, metadata !5236, metadata !DIExpression()), !dbg !5237
  store %struct.of_phandle_args* %gpiospec, %struct.of_phandle_args** %gpiospec.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.of_phandle_args** %gpiospec.addr, metadata !5238, metadata !DIExpression()), !dbg !5239
  store i32* %flags, i32** %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %flags.addr, metadata !5240, metadata !DIExpression()), !dbg !5241
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5242, metadata !DIExpression()), !dbg !5243
  %0 = load %struct.gpio_chip*, %struct.gpio_chip** %chip.addr, align 8, !dbg !5244
  %of_gpio_n_cells = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %0, i32 0, i32 38, !dbg !5246
  %1 = load i32, i32* %of_gpio_n_cells, align 8, !dbg !5246
  %2 = load %struct.of_phandle_args*, %struct.of_phandle_args** %gpiospec.addr, align 8, !dbg !5247
  %args_count = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %2, i32 0, i32 1, !dbg !5248
  %3 = load i32, i32* %args_count, align 8, !dbg !5248
  %cmp = icmp ne i32 %1, %3, !dbg !5249
  br i1 %cmp, label %if.then, label %if.end, !dbg !5250

if.then:                                          ; preds = %entry
  %call = call i8* @ERR_PTR(i64 -22) #6, !dbg !5251
  %4 = bitcast i8* %call to %struct.gpio_desc*, !dbg !5251
  store %struct.gpio_desc* %4, %struct.gpio_desc** %retval, align 8, !dbg !5252
  br label %return, !dbg !5252

if.end:                                           ; preds = %entry
  %5 = load %struct.gpio_chip*, %struct.gpio_chip** %chip.addr, align 8, !dbg !5253
  %of_xlate = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %5, i32 0, i32 39, !dbg !5254
  %6 = load i32 (%struct.gpio_chip*, %struct.of_phandle_args*, i32*)*, i32 (%struct.gpio_chip*, %struct.of_phandle_args*, i32*)** %of_xlate, align 8, !dbg !5254
  %7 = load %struct.gpio_chip*, %struct.gpio_chip** %chip.addr, align 8, !dbg !5255
  %8 = load %struct.of_phandle_args*, %struct.of_phandle_args** %gpiospec.addr, align 8, !dbg !5256
  %9 = load i32*, i32** %flags.addr, align 8, !dbg !5257
  %call1 = call i32 %6(%struct.gpio_chip* %7, %struct.of_phandle_args* %8, i32* %9) #6, !dbg !5253
  store i32 %call1, i32* %ret, align 4, !dbg !5258
  %10 = load i32, i32* %ret, align 4, !dbg !5259
  %cmp2 = icmp slt i32 %10, 0, !dbg !5261
  br i1 %cmp2, label %if.then3, label %if.end5, !dbg !5262

if.then3:                                         ; preds = %if.end
  %11 = load i32, i32* %ret, align 4, !dbg !5263
  %conv = sext i32 %11 to i64, !dbg !5263
  %call4 = call i8* @ERR_PTR(i64 %conv) #6, !dbg !5264
  %12 = bitcast i8* %call4 to %struct.gpio_desc*, !dbg !5264
  store %struct.gpio_desc* %12, %struct.gpio_desc** %retval, align 8, !dbg !5265
  br label %return, !dbg !5265

if.end5:                                          ; preds = %if.end
  %13 = load %struct.gpio_chip*, %struct.gpio_chip** %chip.addr, align 8, !dbg !5266
  %14 = load i32, i32* %ret, align 4, !dbg !5267
  %call6 = call %struct.gpio_desc* @gpiochip_get_desc(%struct.gpio_chip* %13, i32 %14) #6, !dbg !5268
  store %struct.gpio_desc* %call6, %struct.gpio_desc** %retval, align 8, !dbg !5269
  br label %return, !dbg !5269

return:                                           ; preds = %if.end5, %if.then3, %if.then
  %15 = load %struct.gpio_desc*, %struct.gpio_desc** %retval, align 8, !dbg !5270
  ret %struct.gpio_desc* %15, !dbg !5270
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @of_gpio_flags_quirks(%struct.device_node* %np, i8* %propname, i32* %flags, i32 %index) #0 !dbg !5271 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %flags.addr = alloca i32*, align 8
  %index.addr = alloca i32, align 4
  %child = alloca %struct.device_node*, align 8
  %cs = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !5274, metadata !DIExpression()), !dbg !5275
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !5276, metadata !DIExpression()), !dbg !5277
  store i32* %flags, i32** %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %flags.addr, metadata !5278, metadata !DIExpression()), !dbg !5279
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !5280, metadata !DIExpression()), !dbg !5281
  %0 = load i8*, i8** %propname.addr, align 8, !dbg !5282
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !5284
  %tobool = icmp ne i32 %call, 0, !dbg !5284
  br i1 %tobool, label %if.end25, label %land.lhs.true, !dbg !5285

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !5286
  %call1 = call zeroext i1 @of_property_read_bool(%struct.device_node* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !5287
  br i1 %call1, label %if.then, label %if.end25, !dbg !5288

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.dbg.declare(metadata %struct.device_node** %child, metadata !5289, metadata !DIExpression()), !dbg !5291
  call void @llvm.dbg.declare(metadata i32* %cs, metadata !5292, metadata !DIExpression()), !dbg !5293
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5294, metadata !DIExpression()), !dbg !5295
  %2 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !5296
  %call2 = call %struct.device_node* @of_get_next_child(%struct.device_node* %2, %struct.device_node* null) #6, !dbg !5296
  store %struct.device_node* %call2, %struct.device_node** %child, align 8, !dbg !5296
  br label %for.cond, !dbg !5296

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !5298
  %cmp = icmp ne %struct.device_node* %3, null, !dbg !5298
  br i1 %cmp, label %for.body, label %for.end, !dbg !5296

for.body:                                         ; preds = %for.cond
  %4 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !5300
  %call3 = call i32 @of_property_read_u32(%struct.device_node* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32* %cs) #6, !dbg !5302
  store i32 %call3, i32* %ret, align 4, !dbg !5303
  %5 = load i32, i32* %ret, align 4, !dbg !5304
  %tobool4 = icmp ne i32 %5, 0, !dbg !5304
  br i1 %tobool4, label %if.then5, label %if.end, !dbg !5306

if.then5:                                         ; preds = %for.body
  br label %for.inc, !dbg !5307

if.end:                                           ; preds = %for.body
  %6 = load i32, i32* %cs, align 4, !dbg !5308
  %7 = load i32, i32* %index.addr, align 4, !dbg !5310
  %cmp6 = icmp eq i32 %6, %7, !dbg !5311
  br i1 %cmp6, label %if.then7, label %if.end23, !dbg !5312

if.then7:                                         ; preds = %if.end
  %8 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !5313
  %call8 = call zeroext i1 @of_property_read_bool(%struct.device_node* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0)) #6, !dbg !5316
  br i1 %call8, label %if.then9, label %if.else, !dbg !5317

if.then9:                                         ; preds = %if.then7
  %9 = load i32*, i32** %flags.addr, align 8, !dbg !5318
  %10 = load i32, i32* %9, align 4, !dbg !5321
  %and = and i32 %10, 1, !dbg !5322
  %tobool10 = icmp ne i32 %and, 0, !dbg !5322
  br i1 %tobool10, label %if.then11, label %if.end15, !dbg !5323

if.then11:                                        ; preds = %if.then9
  %11 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !5324
  %call12 = call i8* @of_node_full_name(%struct.device_node* %11) #6, !dbg !5324
  %call13 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.15, i64 0, i64 0), i8* %call12) #7, !dbg !5324
  %12 = load i32*, i32** %flags.addr, align 8, !dbg !5326
  %13 = load i32, i32* %12, align 4, !dbg !5327
  %and14 = and i32 %13, -2, !dbg !5327
  store i32 %and14, i32* %12, align 4, !dbg !5327
  br label %if.end15, !dbg !5328

if.end15:                                         ; preds = %if.then11, %if.then9
  br label %if.end22, !dbg !5329

if.else:                                          ; preds = %if.then7
  %14 = load i32*, i32** %flags.addr, align 8, !dbg !5330
  %15 = load i32, i32* %14, align 4, !dbg !5333
  %and16 = and i32 %15, 1, !dbg !5334
  %tobool17 = icmp ne i32 %and16, 0, !dbg !5334
  br i1 %tobool17, label %if.end21, label %if.then18, !dbg !5335

if.then18:                                        ; preds = %if.else
  %16 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !5336
  %call19 = call i8* @of_node_full_name(%struct.device_node* %16) #6, !dbg !5336
  %call20 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.16, i64 0, i64 0), i8* %call19) #7, !dbg !5336
  br label %if.end21, !dbg !5336

if.end21:                                         ; preds = %if.then18, %if.else
  %17 = load i32*, i32** %flags.addr, align 8, !dbg !5337
  %18 = load i32, i32* %17, align 4, !dbg !5338
  %or = or i32 %18, 1, !dbg !5338
  store i32 %or, i32* %17, align 4, !dbg !5338
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end15
  %19 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !5339
  call void @of_node_put(%struct.device_node* %19) #6, !dbg !5340
  br label %for.end, !dbg !5341

if.end23:                                         ; preds = %if.end
  br label %for.inc, !dbg !5342

for.inc:                                          ; preds = %if.end23, %if.then5
  %20 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !5298
  %21 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !5298
  %call24 = call %struct.device_node* @of_get_next_child(%struct.device_node* %20, %struct.device_node* %21) #6, !dbg !5298
  store %struct.device_node* %call24, %struct.device_node** %child, align 8, !dbg !5298
  br label %for.cond, !dbg !5298, !llvm.loop !5343

for.end:                                          ; preds = %if.end22, %for.cond
  br label %if.end25, !dbg !5345

if.end25:                                         ; preds = %for.end, %land.lhs.true, %entry
  %22 = load i8*, i8** %propname.addr, align 8, !dbg !5346
  %call26 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !5348
  %tobool27 = icmp ne i32 %call26, 0, !dbg !5348
  br i1 %tobool27, label %if.end32, label %land.lhs.true28, !dbg !5349

land.lhs.true28:                                  ; preds = %if.end25
  %23 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !5350
  %call29 = call zeroext i1 @of_property_read_bool(%struct.device_node* %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0)) #6, !dbg !5351
  br i1 %call29, label %if.then30, label %if.end32, !dbg !5352

if.then30:                                        ; preds = %land.lhs.true28
  %24 = load i32*, i32** %flags.addr, align 8, !dbg !5353
  %25 = load i32, i32* %24, align 4, !dbg !5354
  %or31 = or i32 %25, 1, !dbg !5354
  store i32 %or31, i32* %24, align 4, !dbg !5354
  br label %if.end32, !dbg !5355

if.end32:                                         ; preds = %if.then30, %land.lhs.true28, %if.end25
  ret void, !dbg !5356
}

; Function Attrs: noredzone
declare dso_local %struct.gpio_chip* @gpiochip_find(i8*, i32 (%struct.gpio_chip*, i8*)*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_gpiochip_match_node_and_xlate(%struct.gpio_chip* %chip, i8* %data) #0 !dbg !5357 {
entry:
  %chip.addr = alloca %struct.gpio_chip*, align 8
  %data.addr = alloca i8*, align 8
  %gpiospec = alloca %struct.of_phandle_args*, align 8
  store %struct.gpio_chip* %chip, %struct.gpio_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_chip** %chip.addr, metadata !5360, metadata !DIExpression()), !dbg !5361
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5362, metadata !DIExpression()), !dbg !5363
  call void @llvm.dbg.declare(metadata %struct.of_phandle_args** %gpiospec, metadata !5364, metadata !DIExpression()), !dbg !5365
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5366
  %1 = bitcast i8* %0 to %struct.of_phandle_args*, !dbg !5366
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %gpiospec, align 8, !dbg !5365
  %2 = load %struct.gpio_chip*, %struct.gpio_chip** %chip.addr, align 8, !dbg !5367
  %gpiodev = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %2, i32 0, i32 1, !dbg !5368
  %3 = load %struct.gpio_device*, %struct.gpio_device** %gpiodev, align 8, !dbg !5368
  %dev = getelementptr inbounds %struct.gpio_device, %struct.gpio_device* %3, i32 0, i32 1, !dbg !5369
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 23, !dbg !5370
  %4 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !5370
  %5 = load %struct.of_phandle_args*, %struct.of_phandle_args** %gpiospec, align 8, !dbg !5371
  %np = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %5, i32 0, i32 0, !dbg !5372
  %6 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !5372
  %cmp = icmp eq %struct.device_node* %4, %6, !dbg !5373
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !5374

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct.gpio_chip*, %struct.gpio_chip** %chip.addr, align 8, !dbg !5375
  %of_xlate = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %7, i32 0, i32 39, !dbg !5376
  %8 = load i32 (%struct.gpio_chip*, %struct.of_phandle_args*, i32*)*, i32 (%struct.gpio_chip*, %struct.of_phandle_args*, i32*)** %of_xlate, align 8, !dbg !5376
  %tobool = icmp ne i32 (%struct.gpio_chip*, %struct.of_phandle_args*, i32*)* %8, null, !dbg !5375
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !5377

land.rhs:                                         ; preds = %land.lhs.true
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %chip.addr, align 8, !dbg !5378
  %of_xlate1 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %9, i32 0, i32 39, !dbg !5379
  %10 = load i32 (%struct.gpio_chip*, %struct.of_phandle_args*, i32*)*, i32 (%struct.gpio_chip*, %struct.of_phandle_args*, i32*)** %of_xlate1, align 8, !dbg !5379
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %chip.addr, align 8, !dbg !5380
  %12 = load %struct.of_phandle_args*, %struct.of_phandle_args** %gpiospec, align 8, !dbg !5381
  %call = call i32 %10(%struct.gpio_chip* %11, %struct.of_phandle_args* %12, i32* null) #6, !dbg !5378
  %cmp2 = icmp sge i32 %call, 0, !dbg !5382
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %13 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp2, %land.rhs ], !dbg !5383
  %land.ext = zext i1 %13 to i32, !dbg !5377
  ret i32 %land.ext, !dbg !5384
}

; Function Attrs: noredzone
declare dso_local %struct.gpio_desc* @gpiochip_get_desc(%struct.gpio_chip*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @of_property_read_bool(%struct.device_node* %np, i8* %propname) #0 !dbg !5385 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %prop = alloca %struct.property*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !5388, metadata !DIExpression()), !dbg !5389
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !5390, metadata !DIExpression()), !dbg !5391
  call void @llvm.dbg.declare(metadata %struct.property** %prop, metadata !5392, metadata !DIExpression()), !dbg !5393
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !5394
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !5395
  %call = call %struct.property* @of_find_property(%struct.device_node* %0, i8* %1, i32* null) #6, !dbg !5396
  store %struct.property* %call, %struct.property** %prop, align 8, !dbg !5393
  %2 = load %struct.property*, %struct.property** %prop, align 8, !dbg !5397
  %tobool = icmp ne %struct.property* %2, null, !dbg !5397
  %3 = zext i1 %tobool to i64, !dbg !5397
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !5397
  %tobool1 = icmp ne i32 %cond, 0, !dbg !5397
  ret i1 %tobool1, !dbg !5398
}

; Function Attrs: noredzone
declare dso_local %struct.device_node* @of_get_next_child(%struct.device_node*, %struct.device_node*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_property_read_u32(%struct.device_node* %np, i8* %propname, i32* %out_value) #0 !dbg !5399 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %out_value.addr = alloca i32*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !5402, metadata !DIExpression()), !dbg !5403
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !5404, metadata !DIExpression()), !dbg !5405
  store i32* %out_value, i32** %out_value.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %out_value.addr, metadata !5406, metadata !DIExpression()), !dbg !5407
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !5408
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !5409
  %2 = load i32*, i32** %out_value.addr, align 8, !dbg !5410
  %call = call i32 @of_property_read_u32_array(%struct.device_node* %0, i8* %1, i32* %2, i64 1) #6, !dbg !5411
  ret i32 %call, !dbg !5412
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @of_node_full_name(%struct.device_node* %np) #0 !dbg !5413 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !5416, metadata !DIExpression()), !dbg !5417
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !5418
  %tobool = icmp ne %struct.device_node* %0, null, !dbg !5418
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5418

cond.true:                                        ; preds = %entry
  %1 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !5419
  %full_name = getelementptr inbounds %struct.device_node, %struct.device_node* %1, i32 0, i32 2, !dbg !5420
  %2 = load i8*, i8** %full_name, align 8, !dbg !5420
  br label %cond.end, !dbg !5418

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5418

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %2, %cond.true ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), %cond.false ], !dbg !5418
  ret i8* %cond, !dbg !5421
}

; Function Attrs: noredzone
declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_property_read_u32_array(%struct.device_node* %np, i8* %propname, i32* %out_values, i64 %sz) #0 !dbg !5422 {
entry:
  %retval = alloca i32, align 4
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %out_values.addr = alloca i32*, align 8
  %sz.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !5425, metadata !DIExpression()), !dbg !5426
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !5427, metadata !DIExpression()), !dbg !5428
  store i32* %out_values, i32** %out_values.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %out_values.addr, metadata !5429, metadata !DIExpression()), !dbg !5430
  store i64 %sz, i64* %sz.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sz.addr, metadata !5431, metadata !DIExpression()), !dbg !5432
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5433, metadata !DIExpression()), !dbg !5434
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !5435
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !5436
  %2 = load i32*, i32** %out_values.addr, align 8, !dbg !5437
  %3 = load i64, i64* %sz.addr, align 8, !dbg !5438
  %call = call i32 @of_property_read_variable_u32_array(%struct.device_node* %0, i8* %1, i32* %2, i64 %3, i64 0) #6, !dbg !5439
  store i32 %call, i32* %ret, align 4, !dbg !5434
  %4 = load i32, i32* %ret, align 4, !dbg !5440
  %cmp = icmp sge i32 %4, 0, !dbg !5442
  br i1 %cmp, label %if.then, label %if.else, !dbg !5443

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5444
  br label %return, !dbg !5444

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4, !dbg !5445
  store i32 %5, i32* %retval, align 4, !dbg !5446
  br label %return, !dbg !5446

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !5447
  ret i32 %6, !dbg !5447
}

; Function Attrs: noredzone
declare dso_local i32 @of_property_read_variable_u32_array(%struct.device_node*, i8*, i32*, i64, i64) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noredzone
declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__clear_bit(i64 %nr, i64* %addr) #0 !dbg !5448 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5454, metadata !DIExpression()), !dbg !5457
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5459, metadata !DIExpression()), !dbg !5460
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5461, metadata !DIExpression()), !dbg !5469
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5471, metadata !DIExpression()), !dbg !5472
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5473, metadata !DIExpression()), !dbg !5474
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5475, metadata !DIExpression()), !dbg !5476
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5477
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5478
  %div = sdiv i64 %1, 64, !dbg !5478
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5479
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5477
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5480
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5481
  %conv.i = trunc i64 %4 to i32, !dbg !5481
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #9, !dbg !5482
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5483
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5483
  call void @kcsan_check_access(i8* %5, i64 %6, i32 1) #9, !dbg !5483
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5484
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !5485
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !5486
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !5487
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10) #8, !dbg !5488, !srcloc !5489
  ret void, !dbg !5490
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noredzone
declare dso_local void @__bitmap_clear(i64*, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !5491 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5495, metadata !DIExpression()), !dbg !5496
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5497, metadata !DIExpression()), !dbg !5498
  ret i1 true, !dbg !5499
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !5500 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5504, metadata !DIExpression()), !dbg !5505
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5506, metadata !DIExpression()), !dbg !5507
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5508, metadata !DIExpression()), !dbg !5509
  ret void, !dbg !5510
}

; Function Attrs: noredzone
declare dso_local %struct.device_node* @of_get_next_available_child(%struct.device_node*, %struct.device_node*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_gpiochip_add_hog(%struct.gpio_chip* %chip, %struct.device_node* %hog) #0 !dbg !5511 {
entry:
  %retval = alloca i32, align 4
  %chip.addr = alloca %struct.gpio_chip*, align 8
  %hog.addr = alloca %struct.device_node*, align 8
  %dflags = alloca i32, align 4
  %desc = alloca %struct.gpio_desc*, align 8
  %lflags = alloca i64, align 8
  %name = alloca i8*, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.gpio_chip* %chip, %struct.gpio_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_chip** %chip.addr, metadata !5514, metadata !DIExpression()), !dbg !5515
  store %struct.device_node* %hog, %struct.device_node** %hog.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %hog.addr, metadata !5516, metadata !DIExpression()), !dbg !5517
  call void @llvm.dbg.declare(metadata i32* %dflags, metadata !5518, metadata !DIExpression()), !dbg !5519
  call void @llvm.dbg.declare(metadata %struct.gpio_desc** %desc, metadata !5520, metadata !DIExpression()), !dbg !5521
  call void @llvm.dbg.declare(metadata i64* %lflags, metadata !5522, metadata !DIExpression()), !dbg !5523
  call void @llvm.dbg.declare(metadata i8** %name, metadata !5524, metadata !DIExpression()), !dbg !5525
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5526, metadata !DIExpression()), !dbg !5527
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5528, metadata !DIExpression()), !dbg !5529
  store i32 0, i32* %i, align 4, !dbg !5530
  br label %for.cond, !dbg !5532

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.device_node*, %struct.device_node** %hog.addr, align 8, !dbg !5533
  %1 = load %struct.gpio_chip*, %struct.gpio_chip** %chip.addr, align 8, !dbg !5536
  %2 = load i32, i32* %i, align 4, !dbg !5537
  %call = call %struct.gpio_desc* @of_parse_own_gpio(%struct.device_node* %0, %struct.gpio_chip* %1, i32 %2, i8** %name, i64* %lflags, i32* %dflags) #6, !dbg !5538
  store %struct.gpio_desc* %call, %struct.gpio_desc** %desc, align 8, !dbg !5539
  %3 = load %struct.gpio_desc*, %struct.gpio_desc** %desc, align 8, !dbg !5540
  %4 = bitcast %struct.gpio_desc* %3 to i8*, !dbg !5540
  %call1 = call zeroext i1 @IS_ERR(i8* %4) #6, !dbg !5542
  br i1 %call1, label %if.then, label %if.end, !dbg !5543

if.then:                                          ; preds = %for.cond
  br label %for.end, !dbg !5544

if.end:                                           ; preds = %for.cond
  %5 = load %struct.gpio_desc*, %struct.gpio_desc** %desc, align 8, !dbg !5545
  %6 = load i8*, i8** %name, align 8, !dbg !5546
  %7 = load i64, i64* %lflags, align 8, !dbg !5547
  %8 = load i32, i32* %dflags, align 4, !dbg !5548
  %call2 = call i32 @gpiod_hog(%struct.gpio_desc* %5, i8* %6, i64 %7, i32 %8) #6, !dbg !5549
  store i32 %call2, i32* %ret, align 4, !dbg !5550
  %9 = load i32, i32* %ret, align 4, !dbg !5551
  %cmp = icmp slt i32 %9, 0, !dbg !5553
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !5554

if.then3:                                         ; preds = %if.end
  %10 = load i32, i32* %ret, align 4, !dbg !5555
  store i32 %10, i32* %retval, align 4, !dbg !5556
  br label %return, !dbg !5556

if.end4:                                          ; preds = %if.end
  br label %for.inc, !dbg !5557

for.inc:                                          ; preds = %if.end4
  %11 = load i32, i32* %i, align 4, !dbg !5558
  %inc = add i32 %11, 1, !dbg !5558
  store i32 %inc, i32* %i, align 4, !dbg !5558
  br label %for.cond, !dbg !5559, !llvm.loop !5560

for.end:                                          ; preds = %if.then
  store i32 0, i32* %retval, align 4, !dbg !5563
  br label %return, !dbg !5563

return:                                           ; preds = %for.end, %if.then3
  %12 = load i32, i32* %retval, align 4, !dbg !5564
  ret i32 %12, !dbg !5564
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @of_node_set_flag(%struct.device_node* %n, i64 %flag) #0 !dbg !5565 {
entry:
  %n.addr = alloca %struct.device_node*, align 8
  %flag.addr = alloca i64, align 8
  store %struct.device_node* %n, %struct.device_node** %n.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %n.addr, metadata !5568, metadata !DIExpression()), !dbg !5569
  store i64 %flag, i64* %flag.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flag.addr, metadata !5570, metadata !DIExpression()), !dbg !5571
  %0 = load i64, i64* %flag.addr, align 8, !dbg !5572
  %1 = load %struct.device_node*, %struct.device_node** %n.addr, align 8, !dbg !5573
  %_flags = getelementptr inbounds %struct.device_node, %struct.device_node* %1, i32 0, i32 10, !dbg !5574
  call void @set_bit(i64 %0, i64* %_flags) #6, !dbg !5575
  ret void, !dbg !5576
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.gpio_desc* @of_parse_own_gpio(%struct.device_node* %np, %struct.gpio_chip* %chip, i32 %idx, i8** %name, i64* %lflags, i32* %dflags) #0 !dbg !5577 {
entry:
  %retval = alloca %struct.gpio_desc*, align 8
  %np.addr = alloca %struct.device_node*, align 8
  %chip.addr = alloca %struct.gpio_chip*, align 8
  %idx.addr = alloca i32, align 4
  %name.addr = alloca i8**, align 8
  %lflags.addr = alloca i64*, align 8
  %dflags.addr = alloca i32*, align 8
  %chip_np = alloca %struct.device_node*, align 8
  %xlate_flags = alloca i32, align 4
  %gpiospec = alloca %struct.of_phandle_args, align 8
  %desc = alloca %struct.gpio_desc*, align 8
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !5581, metadata !DIExpression()), !dbg !5582
  store %struct.gpio_chip* %chip, %struct.gpio_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gpio_chip** %chip.addr, metadata !5583, metadata !DIExpression()), !dbg !5584
  store i32 %idx, i32* %idx.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %idx.addr, metadata !5585, metadata !DIExpression()), !dbg !5586
  store i8** %name, i8*** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %name.addr, metadata !5587, metadata !DIExpression()), !dbg !5588
  store i64* %lflags, i64** %lflags.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %lflags.addr, metadata !5589, metadata !DIExpression()), !dbg !5590
  store i32* %dflags, i32** %dflags.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %dflags.addr, metadata !5591, metadata !DIExpression()), !dbg !5592
  call void @llvm.dbg.declare(metadata %struct.device_node** %chip_np, metadata !5593, metadata !DIExpression()), !dbg !5594
  call void @llvm.dbg.declare(metadata i32* %xlate_flags, metadata !5595, metadata !DIExpression()), !dbg !5596
  call void @llvm.dbg.declare(metadata %struct.of_phandle_args* %gpiospec, metadata !5597, metadata !DIExpression()), !dbg !5598
  call void @llvm.dbg.declare(metadata %struct.gpio_desc** %desc, metadata !5599, metadata !DIExpression()), !dbg !5600
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5601, metadata !DIExpression()), !dbg !5602
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !5603, metadata !DIExpression()), !dbg !5604
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5605, metadata !DIExpression()), !dbg !5606
  %0 = load %struct.gpio_chip*, %struct.gpio_chip** %chip.addr, align 8, !dbg !5607
  %of_node = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %0, i32 0, i32 37, !dbg !5608
  %1 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !5608
  store %struct.device_node* %1, %struct.device_node** %chip_np, align 8, !dbg !5609
  %2 = load %struct.device_node*, %struct.device_node** %chip_np, align 8, !dbg !5610
  %tobool = icmp ne %struct.device_node* %2, null, !dbg !5610
  br i1 %tobool, label %if.end, label %if.then, !dbg !5612

if.then:                                          ; preds = %entry
  %call = call i8* @ERR_PTR(i64 -22) #6, !dbg !5613
  %3 = bitcast i8* %call to %struct.gpio_desc*, !dbg !5613
  store %struct.gpio_desc* %3, %struct.gpio_desc** %retval, align 8, !dbg !5614
  br label %return, !dbg !5614

if.end:                                           ; preds = %entry
  store i32 0, i32* %xlate_flags, align 4, !dbg !5615
  %4 = load i64*, i64** %lflags.addr, align 8, !dbg !5616
  store i64 0, i64* %4, align 8, !dbg !5617
  %5 = load i32*, i32** %dflags.addr, align 8, !dbg !5618
  store i32 0, i32* %5, align 4, !dbg !5619
  %6 = load %struct.device_node*, %struct.device_node** %chip_np, align 8, !dbg !5620
  %call1 = call i32 @of_property_read_u32(%struct.device_node* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32* %tmp) #6, !dbg !5621
  store i32 %call1, i32* %ret, align 4, !dbg !5622
  %7 = load i32, i32* %ret, align 4, !dbg !5623
  %tobool2 = icmp ne i32 %7, 0, !dbg !5623
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !5625

if.then3:                                         ; preds = %if.end
  %8 = load i32, i32* %ret, align 4, !dbg !5626
  %conv = sext i32 %8 to i64, !dbg !5626
  %call4 = call i8* @ERR_PTR(i64 %conv) #6, !dbg !5627
  %9 = bitcast i8* %call4 to %struct.gpio_desc*, !dbg !5627
  store %struct.gpio_desc* %9, %struct.gpio_desc** %retval, align 8, !dbg !5628
  br label %return, !dbg !5628

if.end5:                                          ; preds = %if.end
  %10 = load %struct.device_node*, %struct.device_node** %chip_np, align 8, !dbg !5629
  %np6 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %gpiospec, i32 0, i32 0, !dbg !5630
  store %struct.device_node* %10, %struct.device_node** %np6, align 8, !dbg !5631
  %11 = load i32, i32* %tmp, align 4, !dbg !5632
  %args_count = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %gpiospec, i32 0, i32 1, !dbg !5633
  store i32 %11, i32* %args_count, align 8, !dbg !5634
  store i32 0, i32* %i, align 4, !dbg !5635
  br label %for.cond, !dbg !5637

for.cond:                                         ; preds = %for.inc, %if.end5
  %12 = load i32, i32* %i, align 4, !dbg !5638
  %13 = load i32, i32* %tmp, align 4, !dbg !5640
  %cmp = icmp ult i32 %12, %13, !dbg !5641
  br i1 %cmp, label %for.body, label %for.end, !dbg !5642

for.body:                                         ; preds = %for.cond
  %14 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !5643
  %15 = load i32, i32* %idx.addr, align 4, !dbg !5645
  %16 = load i32, i32* %tmp, align 4, !dbg !5646
  %mul = mul i32 %15, %16, !dbg !5647
  %17 = load i32, i32* %i, align 4, !dbg !5648
  %add = add i32 %mul, %17, !dbg !5649
  %args = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %gpiospec, i32 0, i32 2, !dbg !5650
  %18 = load i32, i32* %i, align 4, !dbg !5651
  %idxprom = zext i32 %18 to i64, !dbg !5652
  %arrayidx = getelementptr [16 x i32], [16 x i32]* %args, i64 0, i64 %idxprom, !dbg !5652
  %call8 = call i32 @of_property_read_u32_index(%struct.device_node* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %add, i32* %arrayidx) #6, !dbg !5653
  store i32 %call8, i32* %ret, align 4, !dbg !5654
  %19 = load i32, i32* %ret, align 4, !dbg !5655
  %tobool9 = icmp ne i32 %19, 0, !dbg !5655
  br i1 %tobool9, label %if.then10, label %if.end13, !dbg !5657

if.then10:                                        ; preds = %for.body
  %20 = load i32, i32* %ret, align 4, !dbg !5658
  %conv11 = sext i32 %20 to i64, !dbg !5658
  %call12 = call i8* @ERR_PTR(i64 %conv11) #6, !dbg !5659
  %21 = bitcast i8* %call12 to %struct.gpio_desc*, !dbg !5659
  store %struct.gpio_desc* %21, %struct.gpio_desc** %retval, align 8, !dbg !5660
  br label %return, !dbg !5660

if.end13:                                         ; preds = %for.body
  br label %for.inc, !dbg !5661

for.inc:                                          ; preds = %if.end13
  %22 = load i32, i32* %i, align 4, !dbg !5662
  %inc = add i32 %22, 1, !dbg !5662
  store i32 %inc, i32* %i, align 4, !dbg !5662
  br label %for.cond, !dbg !5663, !llvm.loop !5664

for.end:                                          ; preds = %for.cond
  %23 = load %struct.gpio_chip*, %struct.gpio_chip** %chip.addr, align 8, !dbg !5666
  %call14 = call %struct.gpio_desc* @of_xlate_and_get_gpiod_flags(%struct.gpio_chip* %23, %struct.of_phandle_args* %gpiospec, i32* %xlate_flags) #6, !dbg !5667
  store %struct.gpio_desc* %call14, %struct.gpio_desc** %desc, align 8, !dbg !5668
  %24 = load %struct.gpio_desc*, %struct.gpio_desc** %desc, align 8, !dbg !5669
  %25 = bitcast %struct.gpio_desc* %24 to i8*, !dbg !5669
  %call15 = call zeroext i1 @IS_ERR(i8* %25) #6, !dbg !5671
  br i1 %call15, label %if.then16, label %if.end17, !dbg !5672

if.then16:                                        ; preds = %for.end
  %26 = load %struct.gpio_desc*, %struct.gpio_desc** %desc, align 8, !dbg !5673
  store %struct.gpio_desc* %26, %struct.gpio_desc** %retval, align 8, !dbg !5674
  br label %return, !dbg !5674

if.end17:                                         ; preds = %for.end
  %27 = load i32, i32* %xlate_flags, align 4, !dbg !5675
  %and = and i32 %27, 1, !dbg !5677
  %tobool18 = icmp ne i32 %and, 0, !dbg !5677
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !5678

if.then19:                                        ; preds = %if.end17
  %28 = load i64*, i64** %lflags.addr, align 8, !dbg !5679
  %29 = load i64, i64* %28, align 8, !dbg !5680
  %or = or i64 %29, 1, !dbg !5680
  store i64 %or, i64* %28, align 8, !dbg !5680
  br label %if.end20, !dbg !5681

if.end20:                                         ; preds = %if.then19, %if.end17
  %30 = load i32, i32* %xlate_flags, align 4, !dbg !5682
  %and21 = and i32 %30, 8, !dbg !5684
  %tobool22 = icmp ne i32 %and21, 0, !dbg !5684
  br i1 %tobool22, label %if.then23, label %if.end25, !dbg !5685

if.then23:                                        ; preds = %if.end20
  %31 = load i64*, i64** %lflags.addr, align 8, !dbg !5686
  %32 = load i64, i64* %31, align 8, !dbg !5687
  %or24 = or i64 %32, 8, !dbg !5687
  store i64 %or24, i64* %31, align 8, !dbg !5687
  br label %if.end25, !dbg !5688

if.end25:                                         ; preds = %if.then23, %if.end20
  %33 = load i32, i32* %xlate_flags, align 4, !dbg !5689
  %and26 = and i32 %33, 16, !dbg !5691
  %tobool27 = icmp ne i32 %and26, 0, !dbg !5691
  br i1 %tobool27, label %if.then28, label %if.end30, !dbg !5692

if.then28:                                        ; preds = %if.end25
  %34 = load i64*, i64** %lflags.addr, align 8, !dbg !5693
  %35 = load i64, i64* %34, align 8, !dbg !5694
  %or29 = or i64 %35, 16, !dbg !5694
  store i64 %or29, i64* %34, align 8, !dbg !5694
  br label %if.end30, !dbg !5695

if.end30:                                         ; preds = %if.then28, %if.end25
  %36 = load i32, i32* %xlate_flags, align 4, !dbg !5696
  %and31 = and i32 %36, 32, !dbg !5698
  %tobool32 = icmp ne i32 %and31, 0, !dbg !5698
  br i1 %tobool32, label %if.then33, label %if.end35, !dbg !5699

if.then33:                                        ; preds = %if.end30
  %37 = load i64*, i64** %lflags.addr, align 8, !dbg !5700
  %38 = load i64, i64* %37, align 8, !dbg !5701
  %or34 = or i64 %38, 32, !dbg !5701
  store i64 %or34, i64* %37, align 8, !dbg !5701
  br label %if.end35, !dbg !5702

if.end35:                                         ; preds = %if.then33, %if.end30
  %39 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !5703
  %call36 = call zeroext i1 @of_property_read_bool(%struct.device_node* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0)) #6, !dbg !5705
  br i1 %call36, label %if.then37, label %if.else, !dbg !5706

if.then37:                                        ; preds = %if.end35
  %40 = load i32*, i32** %dflags.addr, align 8, !dbg !5707
  %41 = load i32, i32* %40, align 4, !dbg !5708
  %or38 = or i32 %41, 1, !dbg !5708
  store i32 %or38, i32* %40, align 4, !dbg !5708
  br label %if.end52, !dbg !5709

if.else:                                          ; preds = %if.end35
  %42 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !5710
  %call39 = call zeroext i1 @of_property_read_bool(%struct.device_node* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0)) #6, !dbg !5712
  br i1 %call39, label %if.then40, label %if.else42, !dbg !5713

if.then40:                                        ; preds = %if.else
  %43 = load i32*, i32** %dflags.addr, align 8, !dbg !5714
  %44 = load i32, i32* %43, align 4, !dbg !5715
  %or41 = or i32 %44, 3, !dbg !5715
  store i32 %or41, i32* %43, align 4, !dbg !5715
  br label %if.end51, !dbg !5716

if.else42:                                        ; preds = %if.else
  %45 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !5717
  %call43 = call zeroext i1 @of_property_read_bool(%struct.device_node* %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0)) #6, !dbg !5719
  br i1 %call43, label %if.then44, label %if.else46, !dbg !5720

if.then44:                                        ; preds = %if.else42
  %46 = load i32*, i32** %dflags.addr, align 8, !dbg !5721
  %47 = load i32, i32* %46, align 4, !dbg !5722
  %or45 = or i32 %47, 7, !dbg !5722
  store i32 %or45, i32* %46, align 4, !dbg !5722
  br label %if.end50, !dbg !5723

if.else46:                                        ; preds = %if.else42
  %48 = load %struct.gpio_desc*, %struct.gpio_desc** %desc, align 8, !dbg !5724
  %call47 = call i32 @desc_to_gpio(%struct.gpio_desc* %48) #6, !dbg !5724
  %49 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !5724
  %call48 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.29, i64 0, i64 0), i32 %call47, %struct.device_node* %49) #7, !dbg !5724
  %call49 = call i8* @ERR_PTR(i64 -22) #6, !dbg !5726
  %50 = bitcast i8* %call49 to %struct.gpio_desc*, !dbg !5726
  store %struct.gpio_desc* %50, %struct.gpio_desc** %retval, align 8, !dbg !5727
  br label %return, !dbg !5727

if.end50:                                         ; preds = %if.then44
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.then40
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.then37
  %51 = load i8**, i8*** %name.addr, align 8, !dbg !5728
  %tobool53 = icmp ne i8** %51, null, !dbg !5728
  br i1 %tobool53, label %land.lhs.true, label %if.end58, !dbg !5730

land.lhs.true:                                    ; preds = %if.end52
  %52 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !5731
  %53 = load i8**, i8*** %name.addr, align 8, !dbg !5732
  %call54 = call i32 @of_property_read_string(%struct.device_node* %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0), i8** %53) #6, !dbg !5733
  %tobool55 = icmp ne i32 %call54, 0, !dbg !5733
  br i1 %tobool55, label %if.then56, label %if.end58, !dbg !5734

if.then56:                                        ; preds = %land.lhs.true
  %54 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !5735
  %name57 = getelementptr inbounds %struct.device_node, %struct.device_node* %54, i32 0, i32 0, !dbg !5736
  %55 = load i8*, i8** %name57, align 8, !dbg !5736
  %56 = load i8**, i8*** %name.addr, align 8, !dbg !5737
  store i8* %55, i8** %56, align 8, !dbg !5738
  br label %if.end58, !dbg !5739

if.end58:                                         ; preds = %if.then56, %land.lhs.true, %if.end52
  %57 = load %struct.gpio_desc*, %struct.gpio_desc** %desc, align 8, !dbg !5740
  store %struct.gpio_desc* %57, %struct.gpio_desc** %retval, align 8, !dbg !5741
  br label %return, !dbg !5741

return:                                           ; preds = %if.end58, %if.else46, %if.then16, %if.then10, %if.then3, %if.then
  %58 = load %struct.gpio_desc*, %struct.gpio_desc** %retval, align 8, !dbg !5742
  ret %struct.gpio_desc* %58, !dbg !5742
}

; Function Attrs: noredzone
declare dso_local i32 @gpiod_hog(%struct.gpio_desc*, i8*, i64, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i8**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_bit(i64 %nr, i64* %addr) #0 !dbg !5743 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5745, metadata !DIExpression()), !dbg !5747
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5749, metadata !DIExpression()), !dbg !5750
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5751, metadata !DIExpression()), !dbg !5753
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5755, metadata !DIExpression()), !dbg !5756
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5757, metadata !DIExpression()), !dbg !5758
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5759, metadata !DIExpression()), !dbg !5760
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5761
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5762
  %div = sdiv i64 %1, 64, !dbg !5762
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5763
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5761
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5764
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5765
  %conv.i = trunc i64 %4 to i32, !dbg !5765
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #9, !dbg !5766
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5767
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5767
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #9, !dbg !5767
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5768
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !5769
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !5770
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #8, !dbg !5772
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !5773

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !5774
  %12 = bitcast i64* %11 to i8*, !dbg !5774
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !5774
  %shr.i = ashr i64 %13, 3, !dbg !5774
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !5774
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !5776
  %and.i = and i64 %14, 7, !dbg !5776
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !5776
  %shl.i = shl i32 1, %sh_prom.i, !dbg !5776
  call void asm sideeffect "orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %shl.i, i8* %add.ptr.i) #8, !dbg !5777, !srcloc !5778
  br label %arch_set_bit.exit, !dbg !5779

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !5780
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !5782
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #8, !dbg !5783, !srcloc !5784
  br label %arch_set_bit.exit

arch_set_bit.exit:                                ; preds = %if.then.i, %if.else.i
  ret void, !dbg !5785
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { noredzone }
attributes #7 = { cold noredzone }
attributes #8 = { nounwind }
attributes #9 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!158, !159, !160, !161}
!llvm.ident = !{!162}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "gpio_suffixes", scope: !2, file: !151, line: 73, type: !152, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !137, globals: !150, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/gpio/gpiolib-of.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !18, !24, !30, !39, !47, !53, !59, !66, !74, !80, !94, !102, !107, !116, !125}
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
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !81, line: 76, baseType: !7, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/lizy2001/genbc/linux")
!82 = !{!83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93}
!83 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0, isUnsigned: true)
!84 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1, isUnsigned: true)
!85 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2, isUnsigned: true)
!86 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3, isUnsigned: true)
!87 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4, isUnsigned: true)
!88 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5, isUnsigned: true)
!89 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6, isUnsigned: true)
!90 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7, isUnsigned: true)
!91 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8, isUnsigned: true)
!92 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9, isUnsigned: true)
!93 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10, isUnsigned: true)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_gc_flags", file: !95, line: 1084, baseType: !7, size: 32, elements: !96)
!95 = !DIFile(filename: "./include/linux/irq.h", directory: "/home/lizy2001/genbc/linux")
!96 = !{!97, !98, !99, !100, !101}
!97 = !DIEnumerator(name: "IRQ_GC_INIT_MASK_CACHE", value: 1, isUnsigned: true)
!98 = !DIEnumerator(name: "IRQ_GC_INIT_NESTED_LOCK", value: 2, isUnsigned: true)
!99 = !DIEnumerator(name: "IRQ_GC_MASK_CACHE_PER_TYPE", value: 4, isUnsigned: true)
!100 = !DIEnumerator(name: "IRQ_GC_NO_MASK", value: 8, isUnsigned: true)
!101 = !DIEnumerator(name: "IRQ_GC_BE_IO", value: 16, isUnsigned: true)
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !103, line: 10, baseType: !7, size: 32, elements: !104)
!103 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!104 = !{!105, !106}
!105 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!106 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "of_gpio_flags", file: !108, line: 25, baseType: !7, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/linux/of_gpio.h", directory: "/home/lizy2001/genbc/linux")
!109 = !{!110, !111, !112, !113, !114, !115}
!110 = !DIEnumerator(name: "OF_GPIO_ACTIVE_LOW", value: 1, isUnsigned: true)
!111 = !DIEnumerator(name: "OF_GPIO_SINGLE_ENDED", value: 2, isUnsigned: true)
!112 = !DIEnumerator(name: "OF_GPIO_OPEN_DRAIN", value: 4, isUnsigned: true)
!113 = !DIEnumerator(name: "OF_GPIO_TRANSITORY", value: 8, isUnsigned: true)
!114 = !DIEnumerator(name: "OF_GPIO_PULL_UP", value: 16, isUnsigned: true)
!115 = !DIEnumerator(name: "OF_GPIO_PULL_DOWN", value: 32, isUnsigned: true)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gpiod_flags", file: !117, line: 49, baseType: !7, size: 32, elements: !118)
!117 = !DIFile(filename: "./include/linux/gpio/consumer.h", directory: "/home/lizy2001/genbc/linux")
!118 = !{!119, !120, !121, !122, !123, !124}
!119 = !DIEnumerator(name: "GPIOD_ASIS", value: 0, isUnsigned: true)
!120 = !DIEnumerator(name: "GPIOD_IN", value: 1, isUnsigned: true)
!121 = !DIEnumerator(name: "GPIOD_OUT_LOW", value: 3, isUnsigned: true)
!122 = !DIEnumerator(name: "GPIOD_OUT_HIGH", value: 7, isUnsigned: true)
!123 = !DIEnumerator(name: "GPIOD_OUT_LOW_OPEN_DRAIN", value: 11, isUnsigned: true)
!124 = !DIEnumerator(name: "GPIOD_OUT_HIGH_OPEN_DRAIN", value: 15, isUnsigned: true)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gpio_lookup_flags", file: !126, line: 8, baseType: !7, size: 32, elements: !127)
!126 = !DIFile(filename: "./include/linux/gpio/machine.h", directory: "/home/lizy2001/genbc/linux")
!127 = !{!128, !129, !130, !131, !132, !133, !134, !135, !136}
!128 = !DIEnumerator(name: "GPIO_ACTIVE_HIGH", value: 0, isUnsigned: true)
!129 = !DIEnumerator(name: "GPIO_ACTIVE_LOW", value: 1, isUnsigned: true)
!130 = !DIEnumerator(name: "GPIO_OPEN_DRAIN", value: 2, isUnsigned: true)
!131 = !DIEnumerator(name: "GPIO_OPEN_SOURCE", value: 4, isUnsigned: true)
!132 = !DIEnumerator(name: "GPIO_PERSISTENT", value: 0, isUnsigned: true)
!133 = !DIEnumerator(name: "GPIO_TRANSITORY", value: 8, isUnsigned: true)
!134 = !DIEnumerator(name: "GPIO_PULL_UP", value: 16, isUnsigned: true)
!135 = !DIEnumerator(name: "GPIO_PULL_DOWN", value: 32, isUnsigned: true)
!136 = !DIEnumerator(name: "GPIO_LOOKUP_FLAGS_DEFAULT", value: 0, isUnsigned: true)
!137 = !{!138, !139, !141, !142, !143, !7, !144, !146, !148}
!138 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !140, line: 148, baseType: !7)
!140 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!142 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!143 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !143)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !145)
!150 = !{!0}
!151 = !DIFile(filename: "drivers/gpio/gpiolib.h", directory: "/home/lizy2001/genbc/linux")
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 128, elements: !156)
!153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!156 = !{!157}
!157 = !DISubrange(count: 2)
!158 = !{i32 7, !"Dwarf Version", i32 4}
!159 = !{i32 2, !"Debug Info Version", i32 3}
!160 = !{i32 1, !"wchar_size", i32 2}
!161 = !{i32 1, !"Code Model", i32 2}
!162 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!163 = distinct !DISubprogram(name: "of_gpio_get_count", scope: !3, file: !3, line: 59, type: !164, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !202)
!164 = !DISubroutineType(types: !165)
!165 = !{!138, !166, !154}
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !60, line: 461, size: 5568, elements: !168)
!168 = !{!169, !3216, !3217, !3220, !3221, !3272, !3363, !3364, !3365, !3366, !3367, !3376, !3481, !3494, !3892, !3893, !3897, !3899, !3900, !3901, !3905, !3911, !3912, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3953, !3954, !3955, !3958, !3961, !3962, !3963, !3964}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !167, file: !60, line: 462, baseType: !170, size: 512)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !171, line: 64, size: 512, elements: !172)
!171 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!172 = !{!173, !174, !180, !182, !241, !3079, !3206, !3211, !3212, !3213, !3214, !3215}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !170, file: !171, line: 65, baseType: !154, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !170, file: !171, line: 66, baseType: !175, size: 128, offset: 64)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !140, line: 178, size: 128, elements: !176)
!176 = !{!177, !179}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !175, file: !140, line: 179, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !175, file: !140, line: 179, baseType: !178, size: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !170, file: !171, line: 67, baseType: !181, size: 64, offset: 192)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !170, file: !171, line: 68, baseType: !183, size: 64, offset: 256)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !171, line: 192, size: 704, elements: !185)
!185 = !{!186, !187, !203, !204}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !184, file: !171, line: 193, baseType: !175, size: 128)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !184, file: !171, line: 194, baseType: !188, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !189, line: 83, baseType: !190)
!189 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !189, line: 71, elements: !191)
!191 = !{!192}
!192 = !DIDerivedType(tag: DW_TAG_member, scope: !190, file: !189, line: 72, baseType: !193)
!193 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !190, file: !189, line: 72, elements: !194)
!194 = !{!195}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !193, file: !189, line: 73, baseType: !196)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !189, line: 20, elements: !197)
!197 = !{!198}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !196, file: !189, line: 21, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !200, line: 25, baseType: !201)
!200 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !200, line: 25, elements: !202)
!202 = !{}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !184, file: !171, line: 195, baseType: !170, size: 512, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !184, file: !171, line: 196, baseType: !205, size: 64, offset: 640)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !171, line: 156, size: 192, elements: !208)
!208 = !{!209, !214, !219}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !207, file: !171, line: 157, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{!138, !183, !181}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !207, file: !171, line: 158, baseType: !215, size: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{!154, !183, !181}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !207, file: !171, line: 159, baseType: !220, size: 64, offset: 128)
!220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!138, !183, !181, !224}
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !171, line: 148, size: 20736, elements: !226)
!226 = !{!227, !231, !235, !236, !240}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !225, file: !171, line: 149, baseType: !228, size: 192)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 192, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 3)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !225, file: !171, line: 150, baseType: !232, size: 4096, offset: 192)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 4096, elements: !233)
!233 = !{!234}
!234 = !DISubrange(count: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !225, file: !171, line: 151, baseType: !138, size: 32, offset: 4288)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !225, file: !171, line: 152, baseType: !237, size: 16384, offset: 4320)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 16384, elements: !238)
!238 = !{!239}
!239 = !DISubrange(count: 2048)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !225, file: !171, line: 153, baseType: !138, size: 32, offset: 20704)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !170, file: !171, line: 69, baseType: !242, size: 64, offset: 320)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !171, line: 138, size: 448, elements: !244)
!244 = !{!245, !249, !277, !279, !3041, !3069, !3073}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !243, file: !171, line: 139, baseType: !246, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{null, !181}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !243, file: !171, line: 140, baseType: !250, size: 64, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !252)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !253, line: 230, size: 128, elements: !254)
!253 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!254 = !{!255, !270}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !252, file: !253, line: 231, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{!259, !181, !263, !144}
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !140, line: 60, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !261, line: 73, baseType: !262)
!261 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !261, line: 15, baseType: !143)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !253, line: 30, size: 128, elements: !265)
!265 = !{!266, !267}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !264, file: !253, line: 31, baseType: !154, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !264, file: !253, line: 32, baseType: !268, size: 16, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !140, line: 19, baseType: !269)
!269 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !252, file: !253, line: 232, baseType: !271, size: 64, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!259, !181, !263, !154, !274}
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !140, line: 55, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !261, line: 72, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !261, line: 16, baseType: !142)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !243, file: !171, line: 141, baseType: !278, size: 64, offset: 128)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !243, file: !171, line: 142, baseType: !280, size: 64, offset: 192)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !253, line: 84, size: 320, elements: !284)
!284 = !{!285, !286, !290, !3038, !3039}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !283, file: !253, line: 85, baseType: !154, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !283, file: !253, line: 86, baseType: !287, size: 64, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{!268, !181, !263, !138}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !283, file: !253, line: 88, baseType: !291, size: 64, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!268, !181, !294, !138}
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !253, line: 168, size: 448, elements: !296)
!296 = !{!297, !298, !299, !300, !3033, !3034}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !295, file: !253, line: 169, baseType: !264, size: 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !295, file: !253, line: 170, baseType: !274, size: 64, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !295, file: !253, line: 171, baseType: !141, size: 64, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !295, file: !253, line: 172, baseType: !301, size: 64, offset: 256)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{!259, !304, !181, !294, !144, !483, !274}
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !31, line: 916, size: 1856, align: 32, elements: !306)
!306 = !{!307, !325, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3016, !3017, !3026, !3027, !3028, !3029, !3030, !3031, !3032}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !305, file: !31, line: 920, baseType: !308, size: 128)
!308 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !305, file: !31, line: 917, size: 128, elements: !309)
!309 = !{!310, !316}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !308, file: !31, line: 918, baseType: !311, size: 64)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !312, line: 58, size: 64, elements: !313)
!312 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!313 = !{!314}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !311, file: !312, line: 59, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !308, file: !31, line: 919, baseType: !317, size: 128, align: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !140, line: 216, size: 128, align: 64, elements: !318)
!318 = !{!319, !321}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !317, file: !140, line: 217, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !317, file: !140, line: 218, baseType: !322, size: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{null, !320}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !305, file: !31, line: 921, baseType: !326, size: 128, offset: 128)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !327, line: 8, size: 128, elements: !328)
!327 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!328 = !{!329, !333}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !326, file: !327, line: 9, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !332, line: 18, flags: DIFlagFwdDecl)
!332 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!333 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !326, file: !327, line: 10, baseType: !334, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !332, line: 89, size: 1536, elements: !336)
!336 = !{!337, !338, !348, !356, !357, !380, !2966, !2968, !2980, !2981, !2982, !2983, !2984, !2990, !2991, !2992}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !335, file: !332, line: 91, baseType: !7, size: 32)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !335, file: !332, line: 92, baseType: !339, size: 32, offset: 32)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !340, line: 277, baseType: !341)
!340 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !340, line: 277, size: 32, elements: !342)
!342 = !{!343}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !341, file: !340, line: 277, baseType: !344, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !340, line: 70, baseType: !345)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !340, line: 65, size: 32, elements: !346)
!346 = !{!347}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !345, file: !340, line: 66, baseType: !7, size: 32)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !335, file: !332, line: 93, baseType: !349, size: 128, offset: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !350, line: 38, size: 128, elements: !351)
!350 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!351 = !{!352, !354}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !349, file: !350, line: 39, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !349, file: !350, line: 39, baseType: !355, size: 64, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !335, file: !332, line: 94, baseType: !334, size: 64, offset: 192)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !335, file: !332, line: 95, baseType: !358, size: 128, offset: 256)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !332, line: 47, size: 128, elements: !359)
!359 = !{!360, !376}
!360 = !DIDerivedType(tag: DW_TAG_member, scope: !358, file: !332, line: 48, baseType: !361, size: 64)
!361 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !358, file: !332, line: 48, size: 64, elements: !362)
!362 = !{!363, !372}
!363 = !DIDerivedType(tag: DW_TAG_member, scope: !361, file: !332, line: 49, baseType: !364, size: 64)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !361, file: !332, line: 49, size: 64, elements: !365)
!365 = !{!366, !371}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !364, file: !332, line: 50, baseType: !367, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !368, line: 21, baseType: !369)
!368 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !370, line: 27, baseType: !7)
!370 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!371 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !364, file: !332, line: 50, baseType: !367, size: 32, offset: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !361, file: !332, line: 52, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !368, line: 23, baseType: !374)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !370, line: 31, baseType: !375)
!375 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !358, file: !332, line: 54, baseType: !377, size: 64, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !379)
!379 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !335, file: !332, line: 96, baseType: !381, size: 64, offset: 384)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !31, line: 610, size: 4224, elements: !383)
!383 = !{!384, !385, !386, !394, !401, !402, !550, !2670, !2671, !2672, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2934, !2942, !2943, !2944, !2962, !2963, !2964, !2965}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !382, file: !31, line: 611, baseType: !268, size: 16)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !382, file: !31, line: 612, baseType: !269, size: 16, offset: 16)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !382, file: !31, line: 613, baseType: !387, size: 32, offset: 32)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !388, line: 23, baseType: !389)
!388 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !388, line: 21, size: 32, elements: !390)
!390 = !{!391}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !389, file: !388, line: 22, baseType: !392, size: 32)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !140, line: 32, baseType: !393)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !261, line: 49, baseType: !7)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !382, file: !31, line: 614, baseType: !395, size: 32, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !388, line: 28, baseType: !396)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !388, line: 26, size: 32, elements: !397)
!397 = !{!398}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !396, file: !388, line: 27, baseType: !399, size: 32)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !140, line: 33, baseType: !400)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !261, line: 50, baseType: !7)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !382, file: !31, line: 615, baseType: !7, size: 32, offset: 96)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !382, file: !31, line: 622, baseType: !403, size: 64, offset: 128)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !405)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !31, line: 1864, size: 1536, align: 512, elements: !406)
!406 = !{!407, !411, !424, !428, !434, !438, !444, !448, !452, !456, !460, !461, !467, !471, !497, !526, !530, !536, !541, !545, !546}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !405, file: !31, line: 1865, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DISubroutineType(types: !410)
!410 = !{!334, !381, !334, !7}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !405, file: !31, line: 1866, baseType: !412, size: 64, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{!154, !334, !381, !415}
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !417, line: 10, size: 128, elements: !418)
!417 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!418 = !{!419, !423}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !416, file: !417, line: 11, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !141}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !416, file: !417, line: 12, baseType: !141, size: 64, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !405, file: !31, line: 1867, baseType: !425, size: 64, offset: 128)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{!138, !381, !138}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !405, file: !31, line: 1868, baseType: !429, size: 64, offset: 192)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{!432, !381, !138}
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !31, line: 581, flags: DIFlagFwdDecl)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !405, file: !31, line: 1870, baseType: !435, size: 64, offset: 256)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!138, !334, !144, !138}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !405, file: !31, line: 1872, baseType: !439, size: 64, offset: 320)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{!138, !381, !334, !268, !442}
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !140, line: 30, baseType: !443)
!443 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !405, file: !31, line: 1873, baseType: !445, size: 64, offset: 384)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{!138, !334, !381, !334}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !405, file: !31, line: 1874, baseType: !449, size: 64, offset: 448)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DISubroutineType(types: !451)
!451 = !{!138, !381, !334}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !405, file: !31, line: 1875, baseType: !453, size: 64, offset: 512)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DISubroutineType(types: !455)
!455 = !{!138, !381, !334, !154}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !405, file: !31, line: 1876, baseType: !457, size: 64, offset: 576)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{!138, !381, !334, !268}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !405, file: !31, line: 1877, baseType: !449, size: 64, offset: 640)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !405, file: !31, line: 1878, baseType: !462, size: 64, offset: 704)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!138, !381, !334, !268, !465}
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !140, line: 16, baseType: !466)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !140, line: 13, baseType: !367)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !405, file: !31, line: 1879, baseType: !468, size: 64, offset: 768)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!138, !381, !334, !381, !334, !7}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !405, file: !31, line: 1881, baseType: !472, size: 64, offset: 832)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{!138, !334, !475}
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !31, line: 219, size: 640, elements: !477)
!477 = !{!478, !479, !480, !481, !482, !486, !494, !495, !496}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !476, file: !31, line: 220, baseType: !7, size: 32)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !476, file: !31, line: 221, baseType: !268, size: 16, offset: 32)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !476, file: !31, line: 222, baseType: !387, size: 32, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !476, file: !31, line: 223, baseType: !395, size: 32, offset: 96)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !476, file: !31, line: 224, baseType: !483, size: 64, offset: 128)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !140, line: 46, baseType: !484)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !261, line: 88, baseType: !485)
!485 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !476, file: !31, line: 225, baseType: !487, size: 128, offset: 192)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !488, line: 13, size: 128, elements: !489)
!488 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!489 = !{!490, !493}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !487, file: !488, line: 14, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !488, line: 8, baseType: !492)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !370, line: 30, baseType: !485)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !487, file: !488, line: 15, baseType: !143, size: 64, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !476, file: !31, line: 226, baseType: !487, size: 128, offset: 320)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !476, file: !31, line: 227, baseType: !487, size: 128, offset: 448)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !476, file: !31, line: 234, baseType: !304, size: 64, offset: 576)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !405, file: !31, line: 1882, baseType: !498, size: 64, offset: 896)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!138, !501, !503, !367, !7}
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !326)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !505, line: 22, size: 1152, elements: !506)
!505 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!506 = !{!507, !508, !509, !510, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !504, file: !505, line: 23, baseType: !367, size: 32)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !504, file: !505, line: 24, baseType: !268, size: 16, offset: 32)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !504, file: !505, line: 25, baseType: !7, size: 32, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !504, file: !505, line: 26, baseType: !511, size: 32, offset: 96)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !140, line: 104, baseType: !367)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !504, file: !505, line: 27, baseType: !373, size: 64, offset: 128)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !504, file: !505, line: 28, baseType: !373, size: 64, offset: 192)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !504, file: !505, line: 37, baseType: !373, size: 64, offset: 256)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !504, file: !505, line: 38, baseType: !465, size: 32, offset: 320)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !504, file: !505, line: 39, baseType: !465, size: 32, offset: 352)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !504, file: !505, line: 40, baseType: !387, size: 32, offset: 384)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !504, file: !505, line: 41, baseType: !395, size: 32, offset: 416)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !504, file: !505, line: 42, baseType: !483, size: 64, offset: 448)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !504, file: !505, line: 43, baseType: !487, size: 128, offset: 512)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !504, file: !505, line: 44, baseType: !487, size: 128, offset: 640)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !504, file: !505, line: 45, baseType: !487, size: 128, offset: 768)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !504, file: !505, line: 46, baseType: !487, size: 128, offset: 896)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !504, file: !505, line: 47, baseType: !373, size: 64, offset: 1024)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !504, file: !505, line: 48, baseType: !373, size: 64, offset: 1088)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !405, file: !31, line: 1883, baseType: !527, size: 64, offset: 960)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!259, !334, !144, !274}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !405, file: !31, line: 1884, baseType: !531, size: 64, offset: 1024)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!138, !381, !534, !373, !373}
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !31, line: 50, flags: DIFlagFwdDecl)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !405, file: !31, line: 1886, baseType: !537, size: 64, offset: 1088)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{!138, !381, !540, !138}
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !405, file: !31, line: 1887, baseType: !542, size: 64, offset: 1152)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{!138, !381, !334, !304, !7, !268}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !405, file: !31, line: 1890, baseType: !457, size: 64, offset: 1216)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !405, file: !31, line: 1891, baseType: !547, size: 64, offset: 1280)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{!138, !381, !432, !138}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !382, file: !31, line: 623, baseType: !551, size: 64, offset: 192)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !31, line: 1416, size: 9472, elements: !553)
!553 = !{!554, !555, !556, !557, !558, !559, !609, !2277, !2359, !2442, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2458, !2462, !2463, !2466, !2467, !2470, !2471, !2472, !2513, !2540, !2541, !2542, !2543, !2544, !2545, !2548, !2550, !2557, !2558, !2560, !2561, !2562, !2621, !2622, !2637, !2638, !2639, !2640, !2641, !2644, !2645, !2646, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !552, file: !31, line: 1417, baseType: !175, size: 128)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !552, file: !31, line: 1418, baseType: !465, size: 32, offset: 128)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !552, file: !31, line: 1419, baseType: !379, size: 8, offset: 160)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !552, file: !31, line: 1420, baseType: !142, size: 64, offset: 192)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !552, file: !31, line: 1421, baseType: !483, size: 64, offset: 256)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !552, file: !31, line: 1422, baseType: !560, size: 64, offset: 320)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !31, line: 2228, size: 576, elements: !562)
!562 = !{!563, !564, !565, !572, !576, !580, !584, !588, !589, !599, !602, !603, !604, !606, !607, !608}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !561, file: !31, line: 2229, baseType: !154, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !561, file: !31, line: 2230, baseType: !138, size: 32, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !561, file: !31, line: 2238, baseType: !566, size: 64, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DISubroutineType(types: !568)
!568 = !{!138, !569}
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !571, line: 28, flags: DIFlagFwdDecl)
!571 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!572 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !561, file: !31, line: 2239, baseType: !573, size: 64, offset: 192)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !575)
!575 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !31, line: 70, flags: DIFlagFwdDecl)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !561, file: !31, line: 2240, baseType: !577, size: 64, offset: 256)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!334, !560, !138, !154, !141}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !561, file: !31, line: 2242, baseType: !581, size: 64, offset: 320)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{null, !551}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !561, file: !31, line: 2243, baseType: !585, size: 64, offset: 384)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !587, line: 76, flags: DIFlagFwdDecl)
!587 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!588 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !561, file: !31, line: 2244, baseType: !560, size: 64, offset: 448)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !561, file: !31, line: 2245, baseType: !590, size: 64, offset: 512)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !140, line: 182, size: 64, elements: !591)
!591 = !{!592}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !590, file: !140, line: 183, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !140, line: 186, size: 128, elements: !595)
!595 = !{!596, !597}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !594, file: !140, line: 187, baseType: !593, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !594, file: !140, line: 187, baseType: !598, size: 64, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !561, file: !31, line: 2247, baseType: !600, offset: 576)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !601, line: 187, elements: !202)
!601 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!602 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !561, file: !31, line: 2248, baseType: !600, offset: 576)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !561, file: !31, line: 2249, baseType: !600, offset: 576)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !561, file: !31, line: 2250, baseType: !605, offset: 576)
!605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !600, elements: !229)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !561, file: !31, line: 2252, baseType: !600, offset: 576)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !561, file: !31, line: 2253, baseType: !600, offset: 576)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !561, file: !31, line: 2254, baseType: !600, offset: 576)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !552, file: !31, line: 1423, baseType: !610, size: 64, offset: 384)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !612)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !31, line: 1935, size: 1472, elements: !613)
!613 = !{!614, !618, !622, !623, !627, !633, !637, !638, !639, !643, !647, !648, !649, !650, !656, !661, !662, !718, !719, !720, !721, !2261, !2276}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !612, file: !31, line: 1936, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!381, !551}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !612, file: !31, line: 1937, baseType: !619, size: 64, offset: 64)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{null, !381}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !612, file: !31, line: 1938, baseType: !619, size: 64, offset: 128)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !612, file: !31, line: 1940, baseType: !624, size: 64, offset: 192)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{null, !381, !138}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !612, file: !31, line: 1941, baseType: !628, size: 64, offset: 256)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{!138, !381, !631}
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !31, line: 289, flags: DIFlagFwdDecl)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !612, file: !31, line: 1942, baseType: !634, size: 64, offset: 320)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!138, !381}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !612, file: !31, line: 1943, baseType: !619, size: 64, offset: 384)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !612, file: !31, line: 1944, baseType: !581, size: 64, offset: 448)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !612, file: !31, line: 1945, baseType: !640, size: 64, offset: 512)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{!138, !551, !138}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !612, file: !31, line: 1946, baseType: !644, size: 64, offset: 576)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{!138, !551}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !612, file: !31, line: 1947, baseType: !644, size: 64, offset: 640)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !612, file: !31, line: 1948, baseType: !644, size: 64, offset: 704)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !612, file: !31, line: 1949, baseType: !644, size: 64, offset: 768)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !612, file: !31, line: 1950, baseType: !651, size: 64, offset: 832)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!138, !334, !654}
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !31, line: 57, flags: DIFlagFwdDecl)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !612, file: !31, line: 1951, baseType: !657, size: 64, offset: 896)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DISubroutineType(types: !659)
!659 = !{!138, !551, !660, !144}
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !612, file: !31, line: 1952, baseType: !581, size: 64, offset: 960)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !612, file: !31, line: 1954, baseType: !663, size: 64, offset: 1024)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{!138, !666, !334}
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !668, line: 16, size: 896, elements: !669)
!668 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/lizy2001/genbc/linux")
!669 = !{!670, !671, !672, !673, !674, !675, !676, !677, !691, !713, !714, !717}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !667, file: !668, line: 17, baseType: !144, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !667, file: !668, line: 18, baseType: !274, size: 64, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !667, file: !668, line: 19, baseType: !274, size: 64, offset: 128)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !667, file: !668, line: 20, baseType: !274, size: 64, offset: 192)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !667, file: !668, line: 21, baseType: !274, size: 64, offset: 256)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !667, file: !668, line: 22, baseType: !483, size: 64, offset: 320)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !667, file: !668, line: 23, baseType: !483, size: 64, offset: 384)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !667, file: !668, line: 24, baseType: !678, size: 192, offset: 448)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !679, line: 53, size: 192, elements: !680)
!679 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!680 = !{!681, !689, !690}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !678, file: !679, line: 54, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !683, line: 13, baseType: !684)
!683 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !140, line: 175, baseType: !685)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !140, line: 173, size: 64, elements: !686)
!686 = !{!687}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !685, file: !140, line: 174, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !368, line: 22, baseType: !492)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !678, file: !679, line: 55, baseType: !188, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !678, file: !679, line: 59, baseType: !175, size: 128, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !667, file: !668, line: 25, baseType: !692, size: 64, offset: 640)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !694)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !668, line: 31, size: 256, elements: !695)
!695 = !{!696, !701, !705, !709}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !694, file: !668, line: 32, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DISubroutineType(types: !699)
!699 = !{!141, !666, !700}
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !694, file: !668, line: 33, baseType: !702, size: 64, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DISubroutineType(types: !704)
!704 = !{null, !666, !141}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !694, file: !668, line: 34, baseType: !706, size: 64, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DISubroutineType(types: !708)
!708 = !{!141, !666, !141, !700}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !694, file: !668, line: 35, baseType: !710, size: 64, offset: 192)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{!138, !666, !141}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !667, file: !668, line: 26, baseType: !138, size: 32, offset: 704)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !667, file: !668, line: 27, baseType: !715, size: 64, offset: 768)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !305)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !667, file: !668, line: 28, baseType: !141, size: 64, offset: 832)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !612, file: !31, line: 1955, baseType: !663, size: 64, offset: 1088)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !612, file: !31, line: 1956, baseType: !663, size: 64, offset: 1152)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !612, file: !31, line: 1957, baseType: !663, size: 64, offset: 1216)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !612, file: !31, line: 1963, baseType: !722, size: 64, offset: 1280)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{!138, !551, !725, !139}
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !727, line: 68, size: 512, align: 128, elements: !728)
!727 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!728 = !{!729, !730, !2253, !2260}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !726, file: !727, line: 69, baseType: !142, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, scope: !726, file: !727, line: 77, baseType: !731, size: 320, offset: 64)
!731 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !726, file: !727, line: 77, size: 320, elements: !732)
!732 = !{!733, !913, !918, !946, !954, !960, !2245, !2252}
!733 = !DIDerivedType(tag: DW_TAG_member, scope: !731, file: !727, line: 78, baseType: !734, size: 320)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !731, file: !727, line: 78, size: 320, elements: !735)
!735 = !{!736, !737, !911, !912}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !734, file: !727, line: 84, baseType: !175, size: 128)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !734, file: !727, line: 86, baseType: !738, size: 64, offset: 128)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !31, line: 451, size: 1216, align: 64, elements: !740)
!740 = !{!741, !742, !749, !750, !755, !770, !779, !780, !781, !782, !904, !905, !908, !909, !910}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !739, file: !31, line: 452, baseType: !381, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !739, file: !31, line: 453, baseType: !743, size: 128, offset: 64)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !744, line: 292, size: 128, elements: !745)
!744 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!745 = !{!746, !747, !748}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !743, file: !744, line: 293, baseType: !188)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !743, file: !744, line: 295, baseType: !139, size: 32)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !743, file: !744, line: 296, baseType: !141, size: 64, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !739, file: !31, line: 454, baseType: !139, size: 32, offset: 192)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !739, file: !31, line: 455, baseType: !751, size: 32, offset: 224)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !140, line: 168, baseType: !752)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !140, line: 166, size: 32, elements: !753)
!753 = !{!754}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !752, file: !140, line: 167, baseType: !138, size: 32)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !739, file: !31, line: 460, baseType: !756, size: 128, offset: 256)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !757, line: 125, size: 128, elements: !758)
!757 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!758 = !{!759, !769}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !756, file: !757, line: 126, baseType: !760, size: 64)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !757, line: 31, size: 64, elements: !761)
!761 = !{!762}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !760, file: !757, line: 32, baseType: !763, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !757, line: 24, size: 192, align: 64, elements: !765)
!765 = !{!766, !767, !768}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !764, file: !757, line: 25, baseType: !142, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !764, file: !757, line: 26, baseType: !763, size: 64, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !764, file: !757, line: 27, baseType: !763, size: 64, offset: 128)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !756, file: !757, line: 127, baseType: !763, size: 64, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !739, file: !31, line: 461, baseType: !771, size: 256, offset: 384)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !772, line: 35, size: 256, elements: !773)
!772 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!773 = !{!774, !775, !776, !778}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !771, file: !772, line: 36, baseType: !682, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !771, file: !772, line: 42, baseType: !682, size: 64, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !771, file: !772, line: 46, baseType: !777, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !189, line: 29, baseType: !196)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !771, file: !772, line: 47, baseType: !175, size: 128, offset: 128)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !739, file: !31, line: 462, baseType: !142, size: 64, offset: 640)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !739, file: !31, line: 463, baseType: !142, size: 64, offset: 704)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !739, file: !31, line: 464, baseType: !142, size: 64, offset: 768)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !739, file: !31, line: 465, baseType: !783, size: 64, offset: 832)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !785)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !31, line: 367, size: 1408, elements: !786)
!786 = !{!787, !791, !795, !799, !803, !807, !813, !819, !823, !828, !832, !836, !840, !868, !872, !878, !879, !880, !884, !889, !893, !900}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !785, file: !31, line: 368, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DISubroutineType(types: !790)
!790 = !{!138, !725, !631}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !785, file: !31, line: 369, baseType: !792, size: 64, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{!138, !304, !725}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !785, file: !31, line: 372, baseType: !796, size: 64, offset: 128)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{!138, !738, !631}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !785, file: !31, line: 375, baseType: !800, size: 64, offset: 192)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DISubroutineType(types: !802)
!802 = !{!138, !725}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !785, file: !31, line: 381, baseType: !804, size: 64, offset: 256)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DISubroutineType(types: !806)
!806 = !{!138, !304, !738, !178, !7}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !785, file: !31, line: 383, baseType: !808, size: 64, offset: 320)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{null, !811}
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !31, line: 290, flags: DIFlagFwdDecl)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !785, file: !31, line: 385, baseType: !814, size: 64, offset: 384)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{!138, !304, !738, !483, !7, !7, !817, !818}
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !785, file: !31, line: 388, baseType: !820, size: 64, offset: 448)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{!138, !304, !738, !483, !7, !7, !725, !141}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !785, file: !31, line: 393, baseType: !824, size: 64, offset: 512)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{!827, !738, !827}
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !140, line: 125, baseType: !373)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !785, file: !31, line: 394, baseType: !829, size: 64, offset: 576)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{null, !725, !7, !7}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !785, file: !31, line: 395, baseType: !833, size: 64, offset: 640)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{!138, !725, !139}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !785, file: !31, line: 396, baseType: !837, size: 64, offset: 704)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{null, !725}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !785, file: !31, line: 397, baseType: !841, size: 64, offset: 768)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{!259, !844, !866}
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !31, line: 320, size: 384, elements: !846)
!846 = !{!847, !848, !849, !853, !854, !855, !858, !859}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !845, file: !31, line: 321, baseType: !304, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !845, file: !31, line: 326, baseType: !483, size: 64, offset: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !845, file: !31, line: 327, baseType: !850, size: 64, offset: 128)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{null, !844, !143, !143}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !845, file: !31, line: 328, baseType: !141, size: 64, offset: 192)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !845, file: !31, line: 329, baseType: !138, size: 32, offset: 256)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !845, file: !31, line: 330, baseType: !856, size: 16, offset: 288)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !368, line: 19, baseType: !857)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !370, line: 24, baseType: !269)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !845, file: !31, line: 331, baseType: !856, size: 16, offset: 304)
!859 = !DIDerivedType(tag: DW_TAG_member, scope: !845, file: !31, line: 332, baseType: !860, size: 64, offset: 320)
!860 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !845, file: !31, line: 332, size: 64, elements: !861)
!861 = !{!862, !863}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !860, file: !31, line: 333, baseType: !7, size: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !860, file: !31, line: 334, baseType: !864, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !31, line: 334, flags: DIFlagFwdDecl)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !31, line: 64, flags: DIFlagFwdDecl)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !785, file: !31, line: 402, baseType: !869, size: 64, offset: 832)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{!138, !738, !725, !725, !5}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !785, file: !31, line: 404, baseType: !873, size: 64, offset: 896)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{!442, !725, !876}
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !877, line: 305, baseType: !7)
!877 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!878 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !785, file: !31, line: 405, baseType: !837, size: 64, offset: 960)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !785, file: !31, line: 406, baseType: !800, size: 64, offset: 1024)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !785, file: !31, line: 407, baseType: !881, size: 64, offset: 1088)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DISubroutineType(types: !883)
!883 = !{!138, !725, !142, !142}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !785, file: !31, line: 409, baseType: !885, size: 64, offset: 1152)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DISubroutineType(types: !887)
!887 = !{null, !725, !888, !888}
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !785, file: !31, line: 410, baseType: !890, size: 64, offset: 1216)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DISubroutineType(types: !892)
!892 = !{!138, !738, !725}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !785, file: !31, line: 413, baseType: !894, size: 64, offset: 1280)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DISubroutineType(types: !896)
!896 = !{!138, !897, !304, !899}
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !31, line: 61, flags: DIFlagFwdDecl)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !785, file: !31, line: 415, baseType: !901, size: 64, offset: 1344)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DISubroutineType(types: !903)
!903 = !{null, !304}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !739, file: !31, line: 466, baseType: !142, size: 64, offset: 896)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !739, file: !31, line: 467, baseType: !906, size: 32, offset: 960)
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !907, line: 8, baseType: !367)
!907 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!908 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !739, file: !31, line: 468, baseType: !188, offset: 992)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !739, file: !31, line: 469, baseType: !175, size: 128, offset: 1024)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !739, file: !31, line: 470, baseType: !141, size: 64, offset: 1152)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !734, file: !727, line: 87, baseType: !142, size: 64, offset: 192)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !734, file: !727, line: 94, baseType: !142, size: 64, offset: 256)
!913 = !DIDerivedType(tag: DW_TAG_member, scope: !731, file: !727, line: 96, baseType: !914, size: 64)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !731, file: !727, line: 96, size: 64, elements: !915)
!915 = !{!916}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !914, file: !727, line: 101, baseType: !917, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !140, line: 143, baseType: !373)
!918 = !DIDerivedType(tag: DW_TAG_member, scope: !731, file: !727, line: 103, baseType: !919, size: 320)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !731, file: !727, line: 103, size: 320, elements: !920)
!920 = !{!921, !931, !934, !935}
!921 = !DIDerivedType(tag: DW_TAG_member, scope: !919, file: !727, line: 104, baseType: !922, size: 128)
!922 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !919, file: !727, line: 104, size: 128, elements: !923)
!923 = !{!924, !925}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !922, file: !727, line: 105, baseType: !175, size: 128)
!925 = !DIDerivedType(tag: DW_TAG_member, scope: !922, file: !727, line: 106, baseType: !926, size: 128)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !922, file: !727, line: 106, size: 128, elements: !927)
!927 = !{!928, !929, !930}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !926, file: !727, line: 107, baseType: !725, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !926, file: !727, line: 109, baseType: !138, size: 32, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !926, file: !727, line: 110, baseType: !138, size: 32, offset: 96)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !919, file: !727, line: 117, baseType: !932, size: 64, offset: 128)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !727, line: 117, flags: DIFlagFwdDecl)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !919, file: !727, line: 119, baseType: !141, size: 64, offset: 192)
!935 = !DIDerivedType(tag: DW_TAG_member, scope: !919, file: !727, line: 120, baseType: !936, size: 64, offset: 256)
!936 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !919, file: !727, line: 120, size: 64, elements: !937)
!937 = !{!938, !939, !940}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !936, file: !727, line: 121, baseType: !141, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !936, file: !727, line: 122, baseType: !142, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, scope: !936, file: !727, line: 123, baseType: !941, size: 32)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !936, file: !727, line: 123, size: 32, elements: !942)
!942 = !{!943, !944, !945}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !941, file: !727, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !941, file: !727, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !941, file: !727, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!946 = !DIDerivedType(tag: DW_TAG_member, scope: !731, file: !727, line: 130, baseType: !947, size: 192)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !731, file: !727, line: 130, size: 192, elements: !948)
!948 = !{!949, !950, !951, !952, !953}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !947, file: !727, line: 131, baseType: !142, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !947, file: !727, line: 134, baseType: !379, size: 8, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !947, file: !727, line: 135, baseType: !379, size: 8, offset: 72)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !947, file: !727, line: 136, baseType: !751, size: 32, offset: 96)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !947, file: !727, line: 137, baseType: !7, size: 32, offset: 128)
!954 = !DIDerivedType(tag: DW_TAG_member, scope: !731, file: !727, line: 139, baseType: !955, size: 256)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !731, file: !727, line: 139, size: 256, elements: !956)
!956 = !{!957, !958, !959}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !955, file: !727, line: 140, baseType: !142, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !955, file: !727, line: 141, baseType: !751, size: 32, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !955, file: !727, line: 143, baseType: !175, size: 128, offset: 128)
!960 = !DIDerivedType(tag: DW_TAG_member, scope: !731, file: !727, line: 145, baseType: !961, size: 256)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !731, file: !727, line: 145, size: 256, elements: !962)
!962 = !{!963, !964, !967, !968, !2244}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !961, file: !727, line: 146, baseType: !142, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !961, file: !727, line: 147, baseType: !965, size: 64, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !966, line: 509, baseType: !725)
!966 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!967 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !961, file: !727, line: 148, baseType: !142, size: 64, offset: 128)
!968 = !DIDerivedType(tag: DW_TAG_member, scope: !961, file: !727, line: 149, baseType: !969, size: 64, offset: 192)
!969 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !961, file: !727, line: 149, size: 64, elements: !970)
!970 = !{!971, !2243}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !969, file: !727, line: 150, baseType: !972, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !727, line: 388, size: 7296, elements: !974)
!974 = !{!975, !2239}
!975 = !DIDerivedType(tag: DW_TAG_member, scope: !973, file: !727, line: 389, baseType: !976, size: 7296)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !973, file: !727, line: 389, size: 7296, elements: !977)
!977 = !{!978, !1016, !1017, !1018, !1022, !1023, !1024, !1025, !1026, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1067, !1075, !1078, !1118, !1119, !2223, !2224, !2227, !2228, !2229, !2232, !2233, !2234, !2237, !2238}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !976, file: !727, line: 390, baseType: !979, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !727, line: 305, size: 1472, elements: !981)
!981 = !{!982, !983, !984, !985, !986, !987, !988, !989, !996, !997, !1002, !1003, !1006, !1010, !1011, !1012, !1013, !1014}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !980, file: !727, line: 308, baseType: !142, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !980, file: !727, line: 309, baseType: !142, size: 64, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !980, file: !727, line: 313, baseType: !979, size: 64, offset: 128)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !980, file: !727, line: 313, baseType: !979, size: 64, offset: 192)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !980, file: !727, line: 315, baseType: !764, size: 192, align: 64, offset: 256)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !980, file: !727, line: 323, baseType: !142, size: 64, offset: 448)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !980, file: !727, line: 327, baseType: !972, size: 64, offset: 512)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !980, file: !727, line: 333, baseType: !990, size: 64, offset: 576)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !966, line: 284, baseType: !991)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !966, line: 284, size: 64, elements: !992)
!992 = !{!993}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !991, file: !966, line: 284, baseType: !994, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !995, line: 19, baseType: !142)
!995 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!996 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !980, file: !727, line: 334, baseType: !142, size: 64, offset: 640)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !980, file: !727, line: 343, baseType: !998, size: 256, offset: 704)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !980, file: !727, line: 340, size: 256, elements: !999)
!999 = !{!1000, !1001}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !998, file: !727, line: 341, baseType: !764, size: 192, align: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !998, file: !727, line: 342, baseType: !142, size: 64, offset: 192)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !980, file: !727, line: 351, baseType: !175, size: 128, offset: 960)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !980, file: !727, line: 353, baseType: !1004, size: 64, offset: 1088)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !727, line: 353, flags: DIFlagFwdDecl)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !980, file: !727, line: 356, baseType: !1007, size: 64, offset: 1152)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1009)
!1009 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !727, line: 356, flags: DIFlagFwdDecl)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !980, file: !727, line: 359, baseType: !142, size: 64, offset: 1216)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !980, file: !727, line: 361, baseType: !304, size: 64, offset: 1280)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !980, file: !727, line: 362, baseType: !141, size: 64, offset: 1344)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !980, file: !727, line: 365, baseType: !682, size: 64, offset: 1408)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !980, file: !727, line: 373, baseType: !1015, offset: 1472)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !727, line: 296, elements: !202)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !976, file: !727, line: 391, baseType: !760, size: 64, offset: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !976, file: !727, line: 392, baseType: !373, size: 64, offset: 128)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !976, file: !727, line: 394, baseType: !1019, size: 64, offset: 192)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!142, !304, !142, !142, !142, !142}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !976, file: !727, line: 398, baseType: !142, size: 64, offset: 256)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !976, file: !727, line: 399, baseType: !142, size: 64, offset: 320)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !976, file: !727, line: 405, baseType: !142, size: 64, offset: 384)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !976, file: !727, line: 406, baseType: !142, size: 64, offset: 448)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !976, file: !727, line: 407, baseType: !1027, size: 64, offset: 512)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !966, line: 286, baseType: !1029)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !966, line: 286, size: 64, elements: !1030)
!1030 = !{!1031}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1029, file: !966, line: 286, baseType: !1032, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !995, line: 18, baseType: !142)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !976, file: !727, line: 416, baseType: !751, size: 32, offset: 576)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !976, file: !727, line: 428, baseType: !751, size: 32, offset: 608)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !976, file: !727, line: 437, baseType: !751, size: 32, offset: 640)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !976, file: !727, line: 447, baseType: !751, size: 32, offset: 672)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !976, file: !727, line: 450, baseType: !682, size: 64, offset: 704)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !976, file: !727, line: 452, baseType: !138, size: 32, offset: 768)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !976, file: !727, line: 454, baseType: !188, offset: 800)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !976, file: !727, line: 457, baseType: !771, size: 256, offset: 832)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !976, file: !727, line: 459, baseType: !175, size: 128, offset: 1088)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !976, file: !727, line: 466, baseType: !142, size: 64, offset: 1216)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !976, file: !727, line: 467, baseType: !142, size: 64, offset: 1280)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !976, file: !727, line: 469, baseType: !142, size: 64, offset: 1344)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !976, file: !727, line: 470, baseType: !142, size: 64, offset: 1408)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !976, file: !727, line: 471, baseType: !684, size: 64, offset: 1472)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !976, file: !727, line: 472, baseType: !142, size: 64, offset: 1536)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !976, file: !727, line: 473, baseType: !142, size: 64, offset: 1600)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !976, file: !727, line: 474, baseType: !142, size: 64, offset: 1664)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !976, file: !727, line: 475, baseType: !142, size: 64, offset: 1728)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !976, file: !727, line: 477, baseType: !188, offset: 1792)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !976, file: !727, line: 478, baseType: !142, size: 64, offset: 1792)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !976, file: !727, line: 478, baseType: !142, size: 64, offset: 1856)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !976, file: !727, line: 478, baseType: !142, size: 64, offset: 1920)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !976, file: !727, line: 478, baseType: !142, size: 64, offset: 1984)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !976, file: !727, line: 479, baseType: !142, size: 64, offset: 2048)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !976, file: !727, line: 479, baseType: !142, size: 64, offset: 2112)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !976, file: !727, line: 479, baseType: !142, size: 64, offset: 2176)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !976, file: !727, line: 480, baseType: !142, size: 64, offset: 2240)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !976, file: !727, line: 480, baseType: !142, size: 64, offset: 2304)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !976, file: !727, line: 480, baseType: !142, size: 64, offset: 2368)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !976, file: !727, line: 480, baseType: !142, size: 64, offset: 2432)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !976, file: !727, line: 482, baseType: !1064, size: 2816, offset: 2496)
!1064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 2816, elements: !1065)
!1065 = !{!1066}
!1066 = !DISubrange(count: 44)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !976, file: !727, line: 488, baseType: !1068, size: 256, offset: 5312)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1069, line: 60, size: 256, elements: !1070)
!1069 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1070 = !{!1071}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1068, file: !1069, line: 61, baseType: !1072, size: 256)
!1072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !682, size: 256, elements: !1073)
!1073 = !{!1074}
!1074 = !DISubrange(count: 4)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !976, file: !727, line: 490, baseType: !1076, size: 64, offset: 5568)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !727, line: 490, flags: DIFlagFwdDecl)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !976, file: !727, line: 493, baseType: !1079, size: 896, offset: 5632)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1080, line: 53, baseType: !1081)
!1080 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1080, line: 13, size: 896, elements: !1082)
!1082 = !{!1083, !1084, !1085, !1086, !1089, !1090, !1091, !1092, !1112, !1113, !1114}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1081, file: !1080, line: 18, baseType: !373, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1081, file: !1080, line: 28, baseType: !684, size: 64, offset: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1081, file: !1080, line: 31, baseType: !771, size: 256, offset: 128)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1081, file: !1080, line: 32, baseType: !1087, size: 64, offset: 384)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1080, line: 32, flags: DIFlagFwdDecl)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1081, file: !1080, line: 37, baseType: !269, size: 16, offset: 448)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1081, file: !1080, line: 40, baseType: !678, size: 192, offset: 512)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1081, file: !1080, line: 41, baseType: !141, size: 64, offset: 704)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1081, file: !1080, line: 42, baseType: !1093, size: 64, offset: 768)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1095)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1096, line: 13, size: 896, elements: !1097)
!1096 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1097 = !{!1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1095, file: !1096, line: 14, baseType: !141, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1095, file: !1096, line: 15, baseType: !142, size: 64, offset: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1095, file: !1096, line: 17, baseType: !142, size: 64, offset: 128)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1095, file: !1096, line: 17, baseType: !142, size: 64, offset: 192)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1095, file: !1096, line: 19, baseType: !143, size: 64, offset: 256)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1095, file: !1096, line: 21, baseType: !143, size: 64, offset: 320)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1095, file: !1096, line: 22, baseType: !143, size: 64, offset: 384)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1095, file: !1096, line: 23, baseType: !143, size: 64, offset: 448)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1095, file: !1096, line: 24, baseType: !143, size: 64, offset: 512)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1095, file: !1096, line: 25, baseType: !143, size: 64, offset: 576)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1095, file: !1096, line: 26, baseType: !143, size: 64, offset: 640)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1095, file: !1096, line: 27, baseType: !143, size: 64, offset: 704)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1095, file: !1096, line: 28, baseType: !143, size: 64, offset: 768)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1095, file: !1096, line: 29, baseType: !143, size: 64, offset: 832)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1081, file: !1080, line: 44, baseType: !751, size: 32, offset: 832)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1081, file: !1080, line: 50, baseType: !856, size: 16, offset: 864)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1081, file: !1080, line: 51, baseType: !1115, size: 16, offset: 880)
!1115 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !368, line: 18, baseType: !1116)
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !370, line: 23, baseType: !1117)
!1117 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !976, file: !727, line: 495, baseType: !142, size: 64, offset: 6528)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !976, file: !727, line: 497, baseType: !1120, size: 64, offset: 6592)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !727, line: 381, size: 384, elements: !1122)
!1122 = !{!1123, !1124, !2222}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1121, file: !727, line: 382, baseType: !751, size: 32)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1121, file: !727, line: 383, baseType: !1125, size: 128, offset: 64)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !727, line: 376, size: 128, elements: !1126)
!1126 = !{!1127, !2220}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1125, file: !727, line: 377, baseType: !1128, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1130, line: 640, size: 48640, elements: !1131)
!1130 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1131 = !{!1132, !1138, !1139, !1140, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1157, !1175, !1186, !1271, !1272, !1273, !1284, !1285, !1287, !1288, !1289, !1290, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1369, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1407, !1409, !1410, !1411, !1423, !1424, !1425, !1426, !1427, !1428, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1452, !1457, !1639, !1640, !1641, !1642, !1646, !1649, !1652, !1655, !1658, !1661, !1762, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1808, !1809, !1810, !1811, !1812, !1817, !1818, !1819, !1822, !1823, !1826, !1829, !1832, !1835, !1878, !1881, !1882, !1961, !1962, !1965, !1966, !1969, !1970, !1971, !1975, !1976, !1977, !1990, !1991, !1992, !2002, !2007, !2010, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1129, file: !1130, line: 646, baseType: !1133, size: 128)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1134, line: 56, size: 128, elements: !1135)
!1134 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1135 = !{!1136, !1137}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1133, file: !1134, line: 57, baseType: !142, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1133, file: !1134, line: 58, baseType: !367, size: 32, offset: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1129, file: !1130, line: 649, baseType: !147, size: 64, offset: 128)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1129, file: !1130, line: 657, baseType: !141, size: 64, offset: 192)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1129, file: !1130, line: 658, baseType: !1141, size: 32, offset: 256)
!1141 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1142, line: 113, baseType: !1143)
!1142 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1142, line: 111, size: 32, elements: !1144)
!1144 = !{!1145}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1143, file: !1142, line: 112, baseType: !751, size: 32)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1129, file: !1130, line: 660, baseType: !7, size: 32, offset: 288)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1129, file: !1130, line: 661, baseType: !7, size: 32, offset: 320)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1129, file: !1130, line: 684, baseType: !138, size: 32, offset: 352)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1129, file: !1130, line: 686, baseType: !138, size: 32, offset: 384)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1129, file: !1130, line: 687, baseType: !138, size: 32, offset: 416)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1129, file: !1130, line: 688, baseType: !138, size: 32, offset: 448)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1129, file: !1130, line: 689, baseType: !7, size: 32, offset: 480)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1129, file: !1130, line: 691, baseType: !1154, size: 64, offset: 512)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1156)
!1156 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1130, line: 691, flags: DIFlagFwdDecl)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1129, file: !1130, line: 692, baseType: !1158, size: 832, offset: 576)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1130, line: 451, size: 832, elements: !1159)
!1159 = !{!1160, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1158, file: !1130, line: 453, baseType: !1161, size: 128)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1130, line: 325, size: 128, elements: !1162)
!1162 = !{!1163, !1164}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1161, file: !1130, line: 326, baseType: !142, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1161, file: !1130, line: 327, baseType: !367, size: 32, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1158, file: !1130, line: 454, baseType: !764, size: 192, align: 64, offset: 128)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1158, file: !1130, line: 455, baseType: !175, size: 128, offset: 320)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1158, file: !1130, line: 456, baseType: !7, size: 32, offset: 448)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1158, file: !1130, line: 458, baseType: !373, size: 64, offset: 512)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1158, file: !1130, line: 459, baseType: !373, size: 64, offset: 576)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1158, file: !1130, line: 460, baseType: !373, size: 64, offset: 640)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1158, file: !1130, line: 461, baseType: !373, size: 64, offset: 704)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1158, file: !1130, line: 463, baseType: !373, size: 64, offset: 768)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1158, file: !1130, line: 465, baseType: !1174, offset: 832)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1130, line: 415, elements: !202)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1129, file: !1130, line: 693, baseType: !1176, size: 384, offset: 1408)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1130, line: 489, size: 384, elements: !1177)
!1177 = !{!1178, !1179, !1180, !1181, !1182, !1183, !1184}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1176, file: !1130, line: 490, baseType: !175, size: 128)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1176, file: !1130, line: 491, baseType: !142, size: 64, offset: 128)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1176, file: !1130, line: 492, baseType: !142, size: 64, offset: 192)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1176, file: !1130, line: 493, baseType: !7, size: 32, offset: 256)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1176, file: !1130, line: 494, baseType: !269, size: 16, offset: 288)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1176, file: !1130, line: 495, baseType: !269, size: 16, offset: 304)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1176, file: !1130, line: 497, baseType: !1185, size: 64, offset: 320)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1129, file: !1130, line: 697, baseType: !1187, size: 1792, offset: 1792)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1130, line: 507, size: 1792, elements: !1188)
!1188 = !{!1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1268, !1269}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1187, file: !1130, line: 508, baseType: !764, size: 192, align: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1187, file: !1130, line: 515, baseType: !373, size: 64, offset: 192)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1187, file: !1130, line: 516, baseType: !373, size: 64, offset: 256)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1187, file: !1130, line: 517, baseType: !373, size: 64, offset: 320)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1187, file: !1130, line: 518, baseType: !373, size: 64, offset: 384)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1187, file: !1130, line: 519, baseType: !373, size: 64, offset: 448)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1187, file: !1130, line: 526, baseType: !688, size: 64, offset: 512)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1187, file: !1130, line: 527, baseType: !373, size: 64, offset: 576)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1187, file: !1130, line: 528, baseType: !7, size: 32, offset: 640)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1187, file: !1130, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1187, file: !1130, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1187, file: !1130, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1187, file: !1130, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1187, file: !1130, line: 563, baseType: !1203, size: 512, offset: 704)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !14, line: 118, size: 512, elements: !1204)
!1204 = !{!1205, !1213, !1214, !1219, !1262, !1265, !1266, !1267}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1203, file: !14, line: 119, baseType: !1206, size: 256)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1207, line: 9, size: 256, elements: !1208)
!1207 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1208 = !{!1209, !1210}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1206, file: !1207, line: 10, baseType: !764, size: 192, align: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1206, file: !1207, line: 11, baseType: !1211, size: 64, offset: 192)
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1212, line: 29, baseType: !688)
!1212 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1203, file: !14, line: 120, baseType: !1211, size: 64, offset: 256)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1203, file: !14, line: 121, baseType: !1215, size: 64, offset: 320)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!13, !1218}
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1203, file: !14, line: 122, baseType: !1220, size: 64, offset: 384)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !14, line: 159, size: 512, align: 512, elements: !1222)
!1222 = !{!1223, !1243, !1244, !1247, !1252, !1253, !1257, !1261}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1221, file: !14, line: 160, baseType: !1224, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !14, line: 214, size: 4608, align: 512, elements: !1226)
!1226 = !{!1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1225, file: !14, line: 215, baseType: !777)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1225, file: !14, line: 216, baseType: !7, size: 32)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1225, file: !14, line: 217, baseType: !7, size: 32, offset: 32)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1225, file: !14, line: 218, baseType: !7, size: 32, offset: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1225, file: !14, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1225, file: !14, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1225, file: !14, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1225, file: !14, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1225, file: !14, line: 233, baseType: !1211, size: 64, offset: 128)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1225, file: !14, line: 234, baseType: !1218, size: 64, offset: 192)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1225, file: !14, line: 235, baseType: !1211, size: 64, offset: 256)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1225, file: !14, line: 236, baseType: !1218, size: 64, offset: 320)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1225, file: !14, line: 237, baseType: !1240, size: 4096, offset: 512)
!1240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1221, size: 4096, elements: !1241)
!1241 = !{!1242}
!1242 = !DISubrange(count: 8)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1221, file: !14, line: 161, baseType: !7, size: 32, offset: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1221, file: !14, line: 162, baseType: !1245, size: 32, offset: 96)
!1245 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !140, line: 27, baseType: !1246)
!1246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !261, line: 96, baseType: !138)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1221, file: !14, line: 163, baseType: !1248, size: 32, offset: 128)
!1248 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !340, line: 276, baseType: !1249)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !340, line: 276, size: 32, elements: !1250)
!1250 = !{!1251}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1249, file: !340, line: 276, baseType: !344, size: 32)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1221, file: !14, line: 164, baseType: !1218, size: 64, offset: 192)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1221, file: !14, line: 165, baseType: !1254, size: 128, offset: 256)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1207, line: 14, size: 128, elements: !1255)
!1255 = !{!1256}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1254, file: !1207, line: 15, baseType: !756, size: 128)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1221, file: !14, line: 166, baseType: !1258, size: 64, offset: 384)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!1211}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1221, file: !14, line: 167, baseType: !1211, size: 64, offset: 448)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1203, file: !14, line: 123, baseType: !1263, size: 8, offset: 448)
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !368, line: 17, baseType: !1264)
!1264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !370, line: 21, baseType: !379)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1203, file: !14, line: 124, baseType: !1263, size: 8, offset: 456)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1203, file: !14, line: 125, baseType: !1263, size: 8, offset: 464)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1203, file: !14, line: 126, baseType: !1263, size: 8, offset: 472)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1187, file: !1130, line: 572, baseType: !1203, size: 512, offset: 1216)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1187, file: !1130, line: 580, baseType: !1270, size: 64, offset: 1728)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1129, file: !1130, line: 721, baseType: !7, size: 32, offset: 3584)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1129, file: !1130, line: 722, baseType: !138, size: 32, offset: 3616)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1129, file: !1130, line: 723, baseType: !1274, size: 64, offset: 3648)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1276)
!1276 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1277, line: 17, baseType: !1278)
!1277 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1277, line: 17, size: 64, elements: !1279)
!1279 = !{!1280}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1278, file: !1277, line: 17, baseType: !1281, size: 64)
!1281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 64, elements: !1282)
!1282 = !{!1283}
!1283 = !DISubrange(count: 1)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1129, file: !1130, line: 724, baseType: !1276, size: 64, offset: 3712)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1129, file: !1130, line: 749, baseType: !1286, offset: 3776)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1130, line: 290, elements: !202)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1129, file: !1130, line: 751, baseType: !175, size: 128, offset: 3776)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1129, file: !1130, line: 757, baseType: !972, size: 64, offset: 3904)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1129, file: !1130, line: 758, baseType: !972, size: 64, offset: 3968)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1129, file: !1130, line: 761, baseType: !1291, size: 320, offset: 4032)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1069, line: 34, size: 320, elements: !1292)
!1292 = !{!1293, !1294}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1291, file: !1069, line: 35, baseType: !373, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1291, file: !1069, line: 36, baseType: !1295, size: 256, offset: 64)
!1295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !979, size: 256, elements: !1073)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1129, file: !1130, line: 766, baseType: !138, size: 32, offset: 4352)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1129, file: !1130, line: 767, baseType: !138, size: 32, offset: 4384)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1129, file: !1130, line: 768, baseType: !138, size: 32, offset: 4416)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1129, file: !1130, line: 770, baseType: !138, size: 32, offset: 4448)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1129, file: !1130, line: 772, baseType: !142, size: 64, offset: 4480)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1129, file: !1130, line: 775, baseType: !7, size: 32, offset: 4544)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1129, file: !1130, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1129, file: !1130, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1129, file: !1130, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1129, file: !1130, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1129, file: !1130, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1129, file: !1130, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1129, file: !1130, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1129, file: !1130, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1129, file: !1130, line: 831, baseType: !142, size: 64, offset: 4672)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1129, file: !1130, line: 833, baseType: !1312, size: 384, offset: 4736)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !19, line: 25, size: 384, elements: !1313)
!1313 = !{!1314, !1319}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1312, file: !19, line: 26, baseType: !1315, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!143, !1318}
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, scope: !1312, file: !19, line: 27, baseType: !1320, size: 320, offset: 64)
!1320 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1312, file: !19, line: 27, size: 320, elements: !1321)
!1321 = !{!1322, !1332, !1359}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1320, file: !19, line: 36, baseType: !1323, size: 320)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1320, file: !19, line: 29, size: 320, elements: !1324)
!1324 = !{!1325, !1327, !1328, !1329, !1330, !1331}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1323, file: !19, line: 30, baseType: !1326, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1323, file: !19, line: 31, baseType: !367, size: 32, offset: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1323, file: !19, line: 32, baseType: !367, size: 32, offset: 96)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1323, file: !19, line: 33, baseType: !367, size: 32, offset: 128)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1323, file: !19, line: 34, baseType: !373, size: 64, offset: 192)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1323, file: !19, line: 35, baseType: !1326, size: 64, offset: 256)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1320, file: !19, line: 46, baseType: !1333, size: 192)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1320, file: !19, line: 38, size: 192, elements: !1334)
!1334 = !{!1335, !1336, !1337, !1358}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1333, file: !19, line: 39, baseType: !1245, size: 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1333, file: !19, line: 40, baseType: !18, size: 32, offset: 32)
!1337 = !DIDerivedType(tag: DW_TAG_member, scope: !1333, file: !19, line: 41, baseType: !1338, size: 64, offset: 64)
!1338 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1333, file: !19, line: 41, size: 64, elements: !1339)
!1339 = !{!1340, !1348}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1338, file: !19, line: 42, baseType: !1341, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1343, line: 7, size: 128, elements: !1344)
!1343 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1344 = !{!1345, !1347}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1342, file: !1343, line: 8, baseType: !1346, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !261, line: 93, baseType: !485)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1342, file: !1343, line: 9, baseType: !485, size: 64, offset: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1338, file: !19, line: 43, baseType: !1349, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1351, line: 7, size: 64, elements: !1352)
!1351 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1352 = !{!1353, !1357}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1350, file: !1351, line: 8, baseType: !1354, size: 32)
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1351, line: 5, baseType: !1355)
!1355 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !368, line: 20, baseType: !1356)
!1356 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !370, line: 26, baseType: !138)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1350, file: !1351, line: 9, baseType: !1355, size: 32, offset: 32)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1333, file: !19, line: 45, baseType: !373, size: 64, offset: 128)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1320, file: !19, line: 54, baseType: !1360, size: 256)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1320, file: !19, line: 48, size: 256, elements: !1361)
!1361 = !{!1362, !1365, !1366, !1367, !1368}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1360, file: !19, line: 49, baseType: !1363, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !19, line: 14, flags: DIFlagFwdDecl)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1360, file: !19, line: 50, baseType: !138, size: 32, offset: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1360, file: !19, line: 51, baseType: !138, size: 32, offset: 96)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1360, file: !19, line: 52, baseType: !142, size: 64, offset: 128)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1360, file: !19, line: 53, baseType: !142, size: 64, offset: 192)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1129, file: !1130, line: 835, baseType: !1370, size: 32, offset: 5120)
!1370 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !140, line: 22, baseType: !1371)
!1371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !261, line: 28, baseType: !138)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1129, file: !1130, line: 836, baseType: !1370, size: 32, offset: 5152)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1129, file: !1130, line: 840, baseType: !142, size: 64, offset: 5184)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1129, file: !1130, line: 849, baseType: !1128, size: 64, offset: 5248)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1129, file: !1130, line: 852, baseType: !1128, size: 64, offset: 5312)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1129, file: !1130, line: 857, baseType: !175, size: 128, offset: 5376)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1129, file: !1130, line: 858, baseType: !175, size: 128, offset: 5504)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1129, file: !1130, line: 859, baseType: !1128, size: 64, offset: 5632)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1129, file: !1130, line: 867, baseType: !175, size: 128, offset: 5696)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1129, file: !1130, line: 868, baseType: !175, size: 128, offset: 5824)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1129, file: !1130, line: 871, baseType: !1382, size: 64, offset: 5952)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !40, line: 59, size: 768, elements: !1384)
!1384 = !{!1385, !1386, !1387, !1388, !1390, !1391, !1398, !1399}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1383, file: !40, line: 61, baseType: !1141, size: 32)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1383, file: !40, line: 62, baseType: !7, size: 32, offset: 32)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1383, file: !40, line: 63, baseType: !188, offset: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1383, file: !40, line: 65, baseType: !1389, size: 256, offset: 64)
!1389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !590, size: 256, elements: !1073)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1383, file: !40, line: 66, baseType: !590, size: 64, offset: 320)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1383, file: !40, line: 68, baseType: !1392, size: 128, offset: 384)
!1392 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1393, line: 40, baseType: !1394)
!1393 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1393, line: 36, size: 128, elements: !1395)
!1395 = !{!1396, !1397}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1394, file: !1393, line: 37, baseType: !188)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1394, file: !1393, line: 38, baseType: !175, size: 128)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1383, file: !40, line: 69, baseType: !317, size: 128, align: 64, offset: 512)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1383, file: !40, line: 70, baseType: !1400, size: 128, offset: 640)
!1400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1401, size: 128, elements: !1282)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !40, line: 54, size: 128, elements: !1402)
!1402 = !{!1403, !1404}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1401, file: !40, line: 55, baseType: !138, size: 32)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1401, file: !40, line: 56, baseType: !1405, size: 64, offset: 64)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !40, line: 56, flags: DIFlagFwdDecl)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1129, file: !1130, line: 872, baseType: !1408, size: 512, offset: 6016)
!1408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !594, size: 512, elements: !1073)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1129, file: !1130, line: 873, baseType: !175, size: 128, offset: 6528)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1129, file: !1130, line: 874, baseType: !175, size: 128, offset: 6656)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1129, file: !1130, line: 876, baseType: !1412, size: 64, offset: 6784)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1414, line: 26, size: 192, elements: !1415)
!1414 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1415 = !{!1416, !1417}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1413, file: !1414, line: 27, baseType: !7, size: 32)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1413, file: !1414, line: 28, baseType: !1418, size: 128, offset: 64)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1419, line: 43, size: 128, elements: !1420)
!1419 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1420 = !{!1421, !1422}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1418, file: !1419, line: 44, baseType: !777)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1418, file: !1419, line: 45, baseType: !175, size: 128)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1129, file: !1130, line: 879, baseType: !660, size: 64, offset: 6848)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1129, file: !1130, line: 882, baseType: !660, size: 64, offset: 6912)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1129, file: !1130, line: 884, baseType: !373, size: 64, offset: 6976)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1129, file: !1130, line: 885, baseType: !373, size: 64, offset: 7040)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1129, file: !1130, line: 890, baseType: !373, size: 64, offset: 7104)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1129, file: !1130, line: 891, baseType: !1429, size: 128, offset: 7168)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1130, line: 242, size: 128, elements: !1430)
!1430 = !{!1431, !1432, !1433}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1429, file: !1130, line: 244, baseType: !373, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1429, file: !1130, line: 245, baseType: !373, size: 64, offset: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1429, file: !1130, line: 246, baseType: !777, offset: 128)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1129, file: !1130, line: 900, baseType: !142, size: 64, offset: 7296)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1129, file: !1130, line: 901, baseType: !142, size: 64, offset: 7360)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1129, file: !1130, line: 904, baseType: !373, size: 64, offset: 7424)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1129, file: !1130, line: 907, baseType: !373, size: 64, offset: 7488)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1129, file: !1130, line: 910, baseType: !142, size: 64, offset: 7552)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1129, file: !1130, line: 911, baseType: !142, size: 64, offset: 7616)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1129, file: !1130, line: 914, baseType: !1441, size: 640, offset: 7680)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1442, line: 123, size: 640, elements: !1443)
!1442 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1443 = !{!1444, !1450, !1451}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1441, file: !1442, line: 124, baseType: !1445, size: 576)
!1445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1446, size: 576, elements: !229)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1442, line: 108, size: 192, elements: !1447)
!1447 = !{!1448, !1449}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1446, file: !1442, line: 109, baseType: !373, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1446, file: !1442, line: 110, baseType: !1254, size: 128, offset: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1441, file: !1442, line: 125, baseType: !7, size: 32, offset: 576)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1441, file: !1442, line: 126, baseType: !7, size: 32, offset: 608)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1129, file: !1130, line: 917, baseType: !1453, size: 192, offset: 8320)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1442, line: 134, size: 192, elements: !1454)
!1454 = !{!1455, !1456}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1453, file: !1442, line: 135, baseType: !317, size: 128, align: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1453, file: !1442, line: 136, baseType: !7, size: 32, offset: 128)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1129, file: !1130, line: 923, baseType: !1458, size: 64, offset: 8512)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1460)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1461, line: 111, size: 1280, elements: !1462)
!1461 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1462 = !{!1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1480, !1481, !1482, !1483, !1484, !1485, !1592, !1593, !1594, !1595, !1621, !1624, !1634}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1460, file: !1461, line: 112, baseType: !751, size: 32)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1460, file: !1461, line: 120, baseType: !387, size: 32, offset: 32)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1460, file: !1461, line: 121, baseType: !395, size: 32, offset: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1460, file: !1461, line: 122, baseType: !387, size: 32, offset: 96)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1460, file: !1461, line: 123, baseType: !395, size: 32, offset: 128)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1460, file: !1461, line: 124, baseType: !387, size: 32, offset: 160)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1460, file: !1461, line: 125, baseType: !395, size: 32, offset: 192)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1460, file: !1461, line: 126, baseType: !387, size: 32, offset: 224)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1460, file: !1461, line: 127, baseType: !395, size: 32, offset: 256)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1460, file: !1461, line: 128, baseType: !7, size: 32, offset: 288)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1460, file: !1461, line: 129, baseType: !1474, size: 64, offset: 320)
!1474 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1475, line: 26, baseType: !1476)
!1475 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1475, line: 24, size: 64, elements: !1477)
!1477 = !{!1478}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1476, file: !1475, line: 25, baseType: !1479, size: 64)
!1479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 64, elements: !156)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1460, file: !1461, line: 130, baseType: !1474, size: 64, offset: 384)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1460, file: !1461, line: 131, baseType: !1474, size: 64, offset: 448)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1460, file: !1461, line: 132, baseType: !1474, size: 64, offset: 512)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1460, file: !1461, line: 133, baseType: !1474, size: 64, offset: 576)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1460, file: !1461, line: 135, baseType: !379, size: 8, offset: 640)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1460, file: !1461, line: 137, baseType: !1486, size: 64, offset: 704)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1488, line: 189, size: 1664, elements: !1489)
!1488 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1489 = !{!1490, !1491, !1494, !1499, !1500, !1503, !1504, !1509, !1510, !1511, !1512, !1514, !1515, !1516, !1517, !1518, !1556, !1577}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1487, file: !1488, line: 190, baseType: !1141, size: 32)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1487, file: !1488, line: 191, baseType: !1492, size: 32, offset: 32)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1488, line: 28, baseType: !1493)
!1493 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !140, line: 98, baseType: !1355)
!1494 = !DIDerivedType(tag: DW_TAG_member, scope: !1487, file: !1488, line: 192, baseType: !1495, size: 192, offset: 64)
!1495 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1487, file: !1488, line: 192, size: 192, elements: !1496)
!1496 = !{!1497, !1498}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1495, file: !1488, line: 193, baseType: !175, size: 128)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1495, file: !1488, line: 194, baseType: !764, size: 192, align: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1487, file: !1488, line: 199, baseType: !771, size: 256, offset: 256)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1487, file: !1488, line: 200, baseType: !1501, size: 64, offset: 512)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1488, line: 200, flags: DIFlagFwdDecl)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1487, file: !1488, line: 201, baseType: !141, size: 64, offset: 576)
!1504 = !DIDerivedType(tag: DW_TAG_member, scope: !1487, file: !1488, line: 202, baseType: !1505, size: 64, offset: 640)
!1505 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1487, file: !1488, line: 202, size: 64, elements: !1506)
!1506 = !{!1507, !1508}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1505, file: !1488, line: 203, baseType: !491, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1505, file: !1488, line: 204, baseType: !491, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1487, file: !1488, line: 206, baseType: !491, size: 64, offset: 704)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1487, file: !1488, line: 207, baseType: !387, size: 32, offset: 768)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1487, file: !1488, line: 208, baseType: !395, size: 32, offset: 800)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1487, file: !1488, line: 209, baseType: !1513, size: 32, offset: 832)
!1513 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1488, line: 31, baseType: !511)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1487, file: !1488, line: 210, baseType: !269, size: 16, offset: 864)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1487, file: !1488, line: 211, baseType: !269, size: 16, offset: 880)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1487, file: !1488, line: 215, baseType: !1117, size: 16, offset: 896)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1487, file: !1488, line: 222, baseType: !142, size: 64, offset: 960)
!1518 = !DIDerivedType(tag: DW_TAG_member, scope: !1487, file: !1488, line: 239, baseType: !1519, size: 320, offset: 1024)
!1519 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1487, file: !1488, line: 239, size: 320, elements: !1520)
!1520 = !{!1521, !1548}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1519, file: !1488, line: 240, baseType: !1522, size: 320)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1488, line: 108, size: 320, elements: !1523)
!1523 = !{!1524, !1525, !1537, !1540, !1547}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1522, file: !1488, line: 110, baseType: !142, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, scope: !1522, file: !1488, line: 111, baseType: !1526, size: 64, offset: 64)
!1526 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1522, file: !1488, line: 111, size: 64, elements: !1527)
!1527 = !{!1528, !1536}
!1528 = !DIDerivedType(tag: DW_TAG_member, scope: !1526, file: !1488, line: 112, baseType: !1529, size: 64)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1526, file: !1488, line: 112, size: 64, elements: !1530)
!1530 = !{!1531, !1532}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1529, file: !1488, line: 114, baseType: !856, size: 16)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1529, file: !1488, line: 115, baseType: !1533, size: 48, offset: 16)
!1533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 48, elements: !1534)
!1534 = !{!1535}
!1535 = !DISubrange(count: 6)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1526, file: !1488, line: 121, baseType: !142, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1522, file: !1488, line: 123, baseType: !1538, size: 64, offset: 128)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1488, line: 96, flags: DIFlagFwdDecl)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1522, file: !1488, line: 124, baseType: !1541, size: 64, offset: 192)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1488, line: 102, size: 192, elements: !1543)
!1543 = !{!1544, !1545, !1546}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1542, file: !1488, line: 103, baseType: !317, size: 128, align: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1542, file: !1488, line: 104, baseType: !1141, size: 32, offset: 128)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1542, file: !1488, line: 105, baseType: !442, size: 8, offset: 160)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1522, file: !1488, line: 125, baseType: !154, size: 64, offset: 256)
!1548 = !DIDerivedType(tag: DW_TAG_member, scope: !1519, file: !1488, line: 241, baseType: !1549, size: 320)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1519, file: !1488, line: 241, size: 320, elements: !1550)
!1550 = !{!1551, !1552, !1553, !1554, !1555}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1549, file: !1488, line: 242, baseType: !142, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1549, file: !1488, line: 243, baseType: !142, size: 64, offset: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1549, file: !1488, line: 244, baseType: !1538, size: 64, offset: 128)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1549, file: !1488, line: 245, baseType: !1541, size: 64, offset: 192)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1549, file: !1488, line: 246, baseType: !144, size: 64, offset: 256)
!1556 = !DIDerivedType(tag: DW_TAG_member, scope: !1487, file: !1488, line: 254, baseType: !1557, size: 256, offset: 1344)
!1557 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1487, file: !1488, line: 254, size: 256, elements: !1558)
!1558 = !{!1559, !1565}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1557, file: !1488, line: 255, baseType: !1560, size: 256)
!1560 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1488, line: 128, size: 256, elements: !1561)
!1561 = !{!1562, !1563}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1560, file: !1488, line: 129, baseType: !141, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1560, file: !1488, line: 130, baseType: !1564, size: 256)
!1564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 256, elements: !1073)
!1565 = !DIDerivedType(tag: DW_TAG_member, scope: !1557, file: !1488, line: 256, baseType: !1566, size: 256)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1557, file: !1488, line: 256, size: 256, elements: !1567)
!1567 = !{!1568, !1569}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1566, file: !1488, line: 258, baseType: !175, size: 128)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1566, file: !1488, line: 259, baseType: !1570, size: 128, offset: 128)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1571, line: 22, size: 128, elements: !1572)
!1571 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1572 = !{!1573, !1576}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1570, file: !1571, line: 23, baseType: !1574, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1571, line: 23, flags: DIFlagFwdDecl)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1570, file: !1571, line: 24, baseType: !142, size: 64, offset: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1487, file: !1488, line: 274, baseType: !1578, size: 64, offset: 1600)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1488, line: 170, size: 192, elements: !1580)
!1580 = !{!1581, !1590, !1591}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1579, file: !1488, line: 171, baseType: !1582, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1488, line: 165, baseType: !1583)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!138, !1486, !1586, !1588, !1486}
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1539)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1560)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1579, file: !1488, line: 172, baseType: !1486, size: 64, offset: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1579, file: !1488, line: 173, baseType: !1538, size: 64, offset: 128)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1460, file: !1461, line: 138, baseType: !1486, size: 64, offset: 768)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1460, file: !1461, line: 139, baseType: !1486, size: 64, offset: 832)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1460, file: !1461, line: 140, baseType: !1486, size: 64, offset: 896)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1460, file: !1461, line: 145, baseType: !1596, size: 64, offset: 960)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1598, line: 13, size: 896, elements: !1599)
!1598 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1599 = !{!1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1597, file: !1598, line: 14, baseType: !1141, size: 32)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1597, file: !1598, line: 15, baseType: !751, size: 32, offset: 32)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1597, file: !1598, line: 16, baseType: !751, size: 32, offset: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1597, file: !1598, line: 21, baseType: !682, size: 64, offset: 128)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1597, file: !1598, line: 27, baseType: !142, size: 64, offset: 192)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1597, file: !1598, line: 28, baseType: !142, size: 64, offset: 256)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1597, file: !1598, line: 29, baseType: !682, size: 64, offset: 320)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1597, file: !1598, line: 32, baseType: !594, size: 128, offset: 384)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1597, file: !1598, line: 33, baseType: !387, size: 32, offset: 512)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1597, file: !1598, line: 37, baseType: !682, size: 64, offset: 576)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1597, file: !1598, line: 44, baseType: !1611, size: 256, offset: 640)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1612, line: 15, size: 256, elements: !1613)
!1612 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1613 = !{!1614, !1615, !1616, !1617, !1618, !1619, !1620}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1611, file: !1612, line: 16, baseType: !777)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1611, file: !1612, line: 18, baseType: !138, size: 32)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1611, file: !1612, line: 19, baseType: !138, size: 32, offset: 32)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1611, file: !1612, line: 20, baseType: !138, size: 32, offset: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1611, file: !1612, line: 21, baseType: !138, size: 32, offset: 96)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1611, file: !1612, line: 22, baseType: !142, size: 64, offset: 128)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1611, file: !1612, line: 23, baseType: !142, size: 64, offset: 192)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1460, file: !1461, line: 146, baseType: !1622, size: 64, offset: 1024)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !388, line: 18, flags: DIFlagFwdDecl)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1460, file: !1461, line: 147, baseType: !1625, size: 64, offset: 1088)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1461, line: 25, size: 64, elements: !1627)
!1627 = !{!1628, !1629, !1630}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1626, file: !1461, line: 26, baseType: !751, size: 32)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1626, file: !1461, line: 27, baseType: !138, size: 32, offset: 32)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1626, file: !1461, line: 28, baseType: !1631, offset: 64)
!1631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !395, elements: !1632)
!1632 = !{!1633}
!1633 = !DISubrange(count: 0)
!1634 = !DIDerivedType(tag: DW_TAG_member, scope: !1460, file: !1461, line: 149, baseType: !1635, size: 128, offset: 1152)
!1635 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1460, file: !1461, line: 149, size: 128, elements: !1636)
!1636 = !{!1637, !1638}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1635, file: !1461, line: 150, baseType: !138, size: 32)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1635, file: !1461, line: 151, baseType: !317, size: 128, align: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1129, file: !1130, line: 926, baseType: !1458, size: 64, offset: 8576)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1129, file: !1130, line: 929, baseType: !1458, size: 64, offset: 8640)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1129, file: !1130, line: 933, baseType: !1486, size: 64, offset: 8704)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1129, file: !1130, line: 943, baseType: !1643, size: 128, offset: 8768)
!1643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 128, elements: !1644)
!1644 = !{!1645}
!1645 = !DISubrange(count: 16)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1129, file: !1130, line: 945, baseType: !1647, size: 64, offset: 8896)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1130, line: 49, flags: DIFlagFwdDecl)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1129, file: !1130, line: 956, baseType: !1650, size: 64, offset: 8960)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1130, line: 45, flags: DIFlagFwdDecl)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1129, file: !1130, line: 959, baseType: !1653, size: 64, offset: 9024)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1130, line: 959, flags: DIFlagFwdDecl)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1129, file: !1130, line: 962, baseType: !1656, size: 64, offset: 9088)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1130, line: 66, flags: DIFlagFwdDecl)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1129, file: !1130, line: 966, baseType: !1659, size: 64, offset: 9152)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1130, line: 50, flags: DIFlagFwdDecl)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1129, file: !1130, line: 969, baseType: !1662, size: 64, offset: 9216)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1664, line: 82, size: 7296, elements: !1665)
!1664 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1665 = !{!1666, !1667, !1668, !1669, !1670, !1671, !1672, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1701, !1710, !1711, !1713, !1714, !1715, !1718, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1748, !1749, !1756, !1757, !1758, !1759, !1760, !1761}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1663, file: !1664, line: 83, baseType: !1141, size: 32)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1663, file: !1664, line: 84, baseType: !751, size: 32, offset: 32)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1663, file: !1664, line: 85, baseType: !138, size: 32, offset: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1663, file: !1664, line: 86, baseType: !175, size: 128, offset: 128)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1663, file: !1664, line: 88, baseType: !1392, size: 128, offset: 256)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1663, file: !1664, line: 91, baseType: !1128, size: 64, offset: 384)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1663, file: !1664, line: 94, baseType: !1673, size: 192, offset: 448)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1674, line: 30, size: 192, elements: !1675)
!1674 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1675 = !{!1676, !1677}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1673, file: !1674, line: 31, baseType: !175, size: 128)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1673, file: !1674, line: 32, baseType: !1678, size: 64, offset: 128)
!1678 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1679, line: 25, baseType: !1680)
!1679 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1679, line: 23, size: 64, elements: !1681)
!1681 = !{!1682}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1680, file: !1679, line: 24, baseType: !1281, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1663, file: !1664, line: 97, baseType: !590, size: 64, offset: 640)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1663, file: !1664, line: 100, baseType: !138, size: 32, offset: 704)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1663, file: !1664, line: 106, baseType: !138, size: 32, offset: 736)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1663, file: !1664, line: 107, baseType: !1128, size: 64, offset: 768)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1663, file: !1664, line: 110, baseType: !138, size: 32, offset: 832)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1663, file: !1664, line: 111, baseType: !7, size: 32, offset: 864)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1663, file: !1664, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1663, file: !1664, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1663, file: !1664, line: 128, baseType: !138, size: 32, offset: 928)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1663, file: !1664, line: 129, baseType: !175, size: 128, offset: 960)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1663, file: !1664, line: 132, baseType: !1203, size: 512, offset: 1088)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1663, file: !1664, line: 133, baseType: !1211, size: 64, offset: 1600)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1663, file: !1664, line: 140, baseType: !1696, size: 256, offset: 1664)
!1696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1697, size: 256, elements: !156)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1664, line: 38, size: 128, elements: !1698)
!1698 = !{!1699, !1700}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1697, file: !1664, line: 39, baseType: !373, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1697, file: !1664, line: 40, baseType: !373, size: 64, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1663, file: !1664, line: 146, baseType: !1702, size: 192, offset: 1920)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1664, line: 66, size: 192, elements: !1703)
!1703 = !{!1704}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1702, file: !1664, line: 67, baseType: !1705, size: 192)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1664, line: 47, size: 192, elements: !1706)
!1706 = !{!1707, !1708, !1709}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1705, file: !1664, line: 48, baseType: !684, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1705, file: !1664, line: 49, baseType: !684, size: 64, offset: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1705, file: !1664, line: 50, baseType: !684, size: 64, offset: 128)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1663, file: !1664, line: 150, baseType: !1441, size: 640, offset: 2112)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1663, file: !1664, line: 153, baseType: !1712, size: 256, offset: 2752)
!1712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1382, size: 256, elements: !1073)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1663, file: !1664, line: 159, baseType: !1382, size: 64, offset: 3008)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1663, file: !1664, line: 162, baseType: !138, size: 32, offset: 3072)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1663, file: !1664, line: 164, baseType: !1716, size: 64, offset: 3136)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1664, line: 164, flags: DIFlagFwdDecl)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1663, file: !1664, line: 175, baseType: !1719, size: 32, offset: 3200)
!1719 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !340, line: 805, baseType: !1720)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !340, line: 798, size: 32, elements: !1721)
!1721 = !{!1722, !1723}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1720, file: !340, line: 803, baseType: !339, size: 32)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1720, file: !340, line: 804, baseType: !188, offset: 32)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1663, file: !1664, line: 176, baseType: !373, size: 64, offset: 3264)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1663, file: !1664, line: 176, baseType: !373, size: 64, offset: 3328)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1663, file: !1664, line: 176, baseType: !373, size: 64, offset: 3392)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1663, file: !1664, line: 176, baseType: !373, size: 64, offset: 3456)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1663, file: !1664, line: 177, baseType: !373, size: 64, offset: 3520)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1663, file: !1664, line: 178, baseType: !373, size: 64, offset: 3584)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1663, file: !1664, line: 179, baseType: !1429, size: 128, offset: 3648)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1663, file: !1664, line: 180, baseType: !142, size: 64, offset: 3776)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1663, file: !1664, line: 180, baseType: !142, size: 64, offset: 3840)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1663, file: !1664, line: 180, baseType: !142, size: 64, offset: 3904)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1663, file: !1664, line: 180, baseType: !142, size: 64, offset: 3968)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1663, file: !1664, line: 181, baseType: !142, size: 64, offset: 4032)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1663, file: !1664, line: 181, baseType: !142, size: 64, offset: 4096)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1663, file: !1664, line: 181, baseType: !142, size: 64, offset: 4160)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1663, file: !1664, line: 181, baseType: !142, size: 64, offset: 4224)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1663, file: !1664, line: 182, baseType: !142, size: 64, offset: 4288)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1663, file: !1664, line: 182, baseType: !142, size: 64, offset: 4352)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1663, file: !1664, line: 182, baseType: !142, size: 64, offset: 4416)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1663, file: !1664, line: 182, baseType: !142, size: 64, offset: 4480)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1663, file: !1664, line: 183, baseType: !142, size: 64, offset: 4544)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1663, file: !1664, line: 183, baseType: !142, size: 64, offset: 4608)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1663, file: !1664, line: 184, baseType: !1746, offset: 4672)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1747, line: 12, elements: !202)
!1747 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1663, file: !1664, line: 192, baseType: !375, size: 64, offset: 4672)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1663, file: !1664, line: 203, baseType: !1750, size: 2048, offset: 4736)
!1750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1751, size: 2048, elements: !1644)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1752, line: 43, size: 128, elements: !1753)
!1752 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1753 = !{!1754, !1755}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1751, file: !1752, line: 44, baseType: !276, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1751, file: !1752, line: 45, baseType: !276, size: 64, offset: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1663, file: !1664, line: 220, baseType: !442, size: 8, offset: 6784)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1663, file: !1664, line: 221, baseType: !1117, size: 16, offset: 6800)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1663, file: !1664, line: 222, baseType: !1117, size: 16, offset: 6816)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1663, file: !1664, line: 224, baseType: !972, size: 64, offset: 6848)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1663, file: !1664, line: 227, baseType: !678, size: 192, offset: 6912)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1663, file: !1664, line: 233, baseType: !678, size: 192, offset: 7104)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1129, file: !1130, line: 970, baseType: !1763, size: 64, offset: 9280)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1664, line: 20, size: 16576, elements: !1765)
!1765 = !{!1766, !1767, !1768, !1769}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1764, file: !1664, line: 21, baseType: !188)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1764, file: !1664, line: 22, baseType: !1141, size: 32)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1764, file: !1664, line: 23, baseType: !1392, size: 128, offset: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1764, file: !1664, line: 24, baseType: !1770, size: 16384, offset: 192)
!1770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1771, size: 16384, elements: !233)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1674, line: 49, size: 256, elements: !1772)
!1772 = !{!1773}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1771, file: !1674, line: 50, baseType: !1774, size: 256)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1674, line: 35, size: 256, elements: !1775)
!1775 = !{!1776, !1783, !1784, !1790}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1774, file: !1674, line: 37, baseType: !1777, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1778, line: 19, baseType: !1779)
!1778 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1778, line: 18, baseType: !1781)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{null, !138}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1774, file: !1674, line: 38, baseType: !142, size: 64, offset: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1774, file: !1674, line: 44, baseType: !1785, size: 64, offset: 128)
!1785 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1778, line: 22, baseType: !1786)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1778, line: 21, baseType: !1788)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{null}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1774, file: !1674, line: 46, baseType: !1678, size: 64, offset: 192)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1129, file: !1130, line: 971, baseType: !1678, size: 64, offset: 9344)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1129, file: !1130, line: 972, baseType: !1678, size: 64, offset: 9408)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1129, file: !1130, line: 974, baseType: !1678, size: 64, offset: 9472)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1129, file: !1130, line: 975, baseType: !1673, size: 192, offset: 9536)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1129, file: !1130, line: 976, baseType: !142, size: 64, offset: 9728)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1129, file: !1130, line: 977, baseType: !274, size: 64, offset: 9792)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1129, file: !1130, line: 978, baseType: !7, size: 32, offset: 9856)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1129, file: !1130, line: 980, baseType: !320, size: 64, offset: 9920)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1129, file: !1130, line: 989, baseType: !1800, size: 128, offset: 9984)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1801, line: 35, size: 128, elements: !1802)
!1801 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1802 = !{!1803, !1804, !1805}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1800, file: !1801, line: 36, baseType: !138, size: 32)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1800, file: !1801, line: 37, baseType: !751, size: 32, offset: 32)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1800, file: !1801, line: 38, baseType: !1806, size: 64, offset: 64)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1801, line: 23, flags: DIFlagFwdDecl)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1129, file: !1130, line: 992, baseType: !373, size: 64, offset: 10112)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1129, file: !1130, line: 993, baseType: !373, size: 64, offset: 10176)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1129, file: !1130, line: 996, baseType: !188, offset: 10240)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1129, file: !1130, line: 999, baseType: !777, offset: 10240)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1129, file: !1130, line: 1001, baseType: !1813, size: 64, offset: 10240)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1130, line: 636, size: 64, elements: !1814)
!1814 = !{!1815}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1813, file: !1130, line: 637, baseType: !1816, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1129, file: !1130, line: 1005, baseType: !756, size: 128, offset: 10304)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1129, file: !1130, line: 1007, baseType: !1128, size: 64, offset: 10432)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1129, file: !1130, line: 1009, baseType: !1820, size: 64, offset: 10496)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1130, line: 1009, flags: DIFlagFwdDecl)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1129, file: !1130, line: 1043, baseType: !141, size: 64, offset: 10560)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1129, file: !1130, line: 1046, baseType: !1824, size: 64, offset: 10624)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1130, line: 41, flags: DIFlagFwdDecl)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1129, file: !1130, line: 1050, baseType: !1827, size: 64, offset: 10688)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1130, line: 42, flags: DIFlagFwdDecl)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1129, file: !1130, line: 1054, baseType: !1830, size: 64, offset: 10752)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1130, line: 55, flags: DIFlagFwdDecl)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1129, file: !1130, line: 1056, baseType: !1833, size: 64, offset: 10816)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1130, line: 40, flags: DIFlagFwdDecl)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1129, file: !1130, line: 1058, baseType: !1836, size: 64, offset: 10880)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1838, line: 99, size: 704, elements: !1839)
!1838 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1839 = !{!1840, !1841, !1842, !1843, !1844, !1845, !1846, !1865, !1866}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1837, file: !1838, line: 100, baseType: !682, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1837, file: !1838, line: 101, baseType: !751, size: 32, offset: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1837, file: !1838, line: 102, baseType: !751, size: 32, offset: 96)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1837, file: !1838, line: 105, baseType: !188, offset: 128)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1837, file: !1838, line: 107, baseType: !269, size: 16, offset: 128)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1837, file: !1838, line: 109, baseType: !743, size: 128, offset: 192)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1837, file: !1838, line: 110, baseType: !1847, size: 64, offset: 320)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1838, line: 73, size: 448, elements: !1849)
!1849 = !{!1850, !1853, !1854, !1859, !1864}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1848, file: !1838, line: 74, baseType: !1851, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1838, line: 74, flags: DIFlagFwdDecl)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1848, file: !1838, line: 75, baseType: !1836, size: 64, offset: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, scope: !1848, file: !1838, line: 83, baseType: !1855, size: 128, offset: 128)
!1855 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1848, file: !1838, line: 83, size: 128, elements: !1856)
!1856 = !{!1857, !1858}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1855, file: !1838, line: 84, baseType: !175, size: 128)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1855, file: !1838, line: 85, baseType: !932, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, scope: !1848, file: !1838, line: 87, baseType: !1860, size: 128, offset: 256)
!1860 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1848, file: !1838, line: 87, size: 128, elements: !1861)
!1861 = !{!1862, !1863}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1860, file: !1838, line: 88, baseType: !594, size: 128)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1860, file: !1838, line: 89, baseType: !317, size: 128, align: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1848, file: !1838, line: 92, baseType: !7, size: 32, offset: 384)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1837, file: !1838, line: 111, baseType: !590, size: 64, offset: 384)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1837, file: !1838, line: 113, baseType: !1867, size: 256, offset: 448)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1868, line: 102, size: 256, elements: !1869)
!1868 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1869 = !{!1870, !1871, !1872}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1867, file: !1868, line: 103, baseType: !682, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1867, file: !1868, line: 104, baseType: !175, size: 128, offset: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1867, file: !1868, line: 105, baseType: !1873, size: 64, offset: 192)
!1873 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1868, line: 21, baseType: !1874)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{null, !1877}
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1129, file: !1130, line: 1061, baseType: !1879, size: 64, offset: 10944)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1130, line: 43, flags: DIFlagFwdDecl)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1129, file: !1130, line: 1064, baseType: !142, size: 64, offset: 11008)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1129, file: !1130, line: 1065, baseType: !1883, size: 64, offset: 11072)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1674, line: 14, baseType: !1885)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1674, line: 12, size: 384, elements: !1886)
!1886 = !{!1887}
!1887 = !DIDerivedType(tag: DW_TAG_member, scope: !1885, file: !1674, line: 13, baseType: !1888, size: 384)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1885, file: !1674, line: 13, size: 384, elements: !1889)
!1889 = !{!1890, !1891, !1892, !1893}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1888, file: !1674, line: 13, baseType: !138, size: 32)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1888, file: !1674, line: 13, baseType: !138, size: 32, offset: 32)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1888, file: !1674, line: 13, baseType: !138, size: 32, offset: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1888, file: !1674, line: 13, baseType: !1894, size: 256, offset: 128)
!1894 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1895, line: 32, size: 256, elements: !1896)
!1895 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1896 = !{!1897, !1902, !1915, !1921, !1930, !1950, !1955}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1894, file: !1895, line: 37, baseType: !1898, size: 64)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1894, file: !1895, line: 34, size: 64, elements: !1899)
!1899 = !{!1900, !1901}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1898, file: !1895, line: 35, baseType: !1371, size: 32)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1898, file: !1895, line: 36, baseType: !393, size: 32, offset: 32)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1894, file: !1895, line: 45, baseType: !1903, size: 192)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1894, file: !1895, line: 40, size: 192, elements: !1904)
!1904 = !{!1905, !1907, !1908, !1914}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1903, file: !1895, line: 41, baseType: !1906, size: 32)
!1906 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !261, line: 95, baseType: !138)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1903, file: !1895, line: 42, baseType: !138, size: 32, offset: 32)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1903, file: !1895, line: 43, baseType: !1909, size: 64, offset: 64)
!1909 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1895, line: 11, baseType: !1910)
!1910 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1895, line: 8, size: 64, elements: !1911)
!1911 = !{!1912, !1913}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1910, file: !1895, line: 9, baseType: !138, size: 32)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1910, file: !1895, line: 10, baseType: !141, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1903, file: !1895, line: 44, baseType: !138, size: 32, offset: 128)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1894, file: !1895, line: 52, baseType: !1916, size: 128)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1894, file: !1895, line: 48, size: 128, elements: !1917)
!1917 = !{!1918, !1919, !1920}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1916, file: !1895, line: 49, baseType: !1371, size: 32)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1916, file: !1895, line: 50, baseType: !393, size: 32, offset: 32)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1916, file: !1895, line: 51, baseType: !1909, size: 64, offset: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1894, file: !1895, line: 61, baseType: !1922, size: 256)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1894, file: !1895, line: 55, size: 256, elements: !1923)
!1923 = !{!1924, !1925, !1926, !1927, !1929}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1922, file: !1895, line: 56, baseType: !1371, size: 32)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1922, file: !1895, line: 57, baseType: !393, size: 32, offset: 32)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1922, file: !1895, line: 58, baseType: !138, size: 32, offset: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1922, file: !1895, line: 59, baseType: !1928, size: 64, offset: 128)
!1928 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !261, line: 94, baseType: !262)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1922, file: !1895, line: 60, baseType: !1928, size: 64, offset: 192)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1894, file: !1895, line: 95, baseType: !1931, size: 256)
!1931 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1894, file: !1895, line: 64, size: 256, elements: !1932)
!1932 = !{!1933, !1934}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1931, file: !1895, line: 65, baseType: !141, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, scope: !1931, file: !1895, line: 77, baseType: !1935, size: 192, offset: 64)
!1935 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1931, file: !1895, line: 77, size: 192, elements: !1936)
!1936 = !{!1937, !1938, !1945}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1935, file: !1895, line: 82, baseType: !1117, size: 16)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1935, file: !1895, line: 88, baseType: !1939, size: 192)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1935, file: !1895, line: 84, size: 192, elements: !1940)
!1940 = !{!1941, !1943, !1944}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1939, file: !1895, line: 85, baseType: !1942, size: 64)
!1942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 64, elements: !1241)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1939, file: !1895, line: 86, baseType: !141, size: 64, offset: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1939, file: !1895, line: 87, baseType: !141, size: 64, offset: 128)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1935, file: !1895, line: 93, baseType: !1946, size: 96)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1935, file: !1895, line: 90, size: 96, elements: !1947)
!1947 = !{!1948, !1949}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1946, file: !1895, line: 91, baseType: !1942, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1946, file: !1895, line: 92, baseType: !369, size: 32, offset: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1894, file: !1895, line: 101, baseType: !1951, size: 128)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1894, file: !1895, line: 98, size: 128, elements: !1952)
!1952 = !{!1953, !1954}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1951, file: !1895, line: 99, baseType: !143, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1951, file: !1895, line: 100, baseType: !138, size: 32, offset: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1894, file: !1895, line: 108, baseType: !1956, size: 128)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1894, file: !1895, line: 104, size: 128, elements: !1957)
!1957 = !{!1958, !1959, !1960}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1956, file: !1895, line: 105, baseType: !141, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1956, file: !1895, line: 106, baseType: !138, size: 32, offset: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1956, file: !1895, line: 107, baseType: !7, size: 32, offset: 96)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1129, file: !1130, line: 1067, baseType: !1746, offset: 11136)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1129, file: !1130, line: 1099, baseType: !1963, size: 64, offset: 11136)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1130, line: 56, flags: DIFlagFwdDecl)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1129, file: !1130, line: 1103, baseType: !175, size: 128, offset: 11200)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1129, file: !1130, line: 1104, baseType: !1967, size: 64, offset: 11328)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1130, line: 46, flags: DIFlagFwdDecl)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1129, file: !1130, line: 1105, baseType: !678, size: 192, offset: 11392)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1129, file: !1130, line: 1106, baseType: !7, size: 32, offset: 11584)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1129, file: !1130, line: 1109, baseType: !1972, size: 128, offset: 11648)
!1972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1973, size: 128, elements: !156)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1130, line: 51, flags: DIFlagFwdDecl)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1129, file: !1130, line: 1110, baseType: !678, size: 192, offset: 11776)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1129, file: !1130, line: 1111, baseType: !175, size: 128, offset: 11968)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1129, file: !1130, line: 1173, baseType: !1978, size: 64, offset: 12096)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1980, line: 62, size: 256, align: 256, elements: !1981)
!1980 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1981 = !{!1982, !1983, !1984, !1989}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1979, file: !1980, line: 75, baseType: !369, size: 32)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1979, file: !1980, line: 90, baseType: !369, size: 32, offset: 32)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1979, file: !1980, line: 124, baseType: !1985, size: 64, offset: 64)
!1985 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1979, file: !1980, line: 109, size: 64, elements: !1986)
!1986 = !{!1987, !1988}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1985, file: !1980, line: 110, baseType: !374, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1985, file: !1980, line: 112, baseType: !374, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1979, file: !1980, line: 144, baseType: !369, size: 32, offset: 128)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1129, file: !1130, line: 1174, baseType: !367, size: 32, offset: 12160)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1129, file: !1130, line: 1179, baseType: !142, size: 64, offset: 12224)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1129, file: !1130, line: 1182, baseType: !1993, size: 128, offset: 12288)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1069, line: 76, size: 128, elements: !1994)
!1994 = !{!1995, !2000, !2001}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1993, file: !1069, line: 85, baseType: !1996, size: 64)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1997, line: 7, size: 64, elements: !1998)
!1997 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1998 = !{!1999}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1996, file: !1997, line: 12, baseType: !1278, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1993, file: !1069, line: 88, baseType: !442, size: 8, offset: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1993, file: !1069, line: 95, baseType: !442, size: 8, offset: 72)
!2002 = !DIDerivedType(tag: DW_TAG_member, scope: !1129, file: !1130, line: 1184, baseType: !2003, size: 128, offset: 12416)
!2003 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1129, file: !1130, line: 1184, size: 128, elements: !2004)
!2004 = !{!2005, !2006}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2003, file: !1130, line: 1185, baseType: !1141, size: 32)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2003, file: !1130, line: 1186, baseType: !317, size: 128, align: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1129, file: !1130, line: 1190, baseType: !2008, size: 64, offset: 12544)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1130, line: 53, flags: DIFlagFwdDecl)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1129, file: !1130, line: 1192, baseType: !2011, size: 128, offset: 12608)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1069, line: 64, size: 128, elements: !2012)
!2012 = !{!2013, !2014, !2015}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2011, file: !1069, line: 65, baseType: !725, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2011, file: !1069, line: 67, baseType: !369, size: 32, offset: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2011, file: !1069, line: 68, baseType: !369, size: 32, offset: 96)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1129, file: !1130, line: 1206, baseType: !138, size: 32, offset: 12736)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1129, file: !1130, line: 1207, baseType: !138, size: 32, offset: 12768)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1129, file: !1130, line: 1209, baseType: !142, size: 64, offset: 12800)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1129, file: !1130, line: 1219, baseType: !373, size: 64, offset: 12864)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1129, file: !1130, line: 1220, baseType: !373, size: 64, offset: 12928)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1129, file: !1130, line: 1317, baseType: !138, size: 32, offset: 12992)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1129, file: !1130, line: 1319, baseType: !1128, size: 64, offset: 13056)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1129, file: !1130, line: 1322, baseType: !2024, size: 64, offset: 13120)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2026, line: 56, size: 512, elements: !2027)
!2026 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2027 = !{!2028, !2029, !2030, !2031, !2032, !2033, !2034, !2036}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2025, file: !2026, line: 57, baseType: !2024, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2025, file: !2026, line: 58, baseType: !141, size: 64, offset: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2025, file: !2026, line: 59, baseType: !142, size: 64, offset: 128)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2025, file: !2026, line: 60, baseType: !142, size: 64, offset: 192)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2025, file: !2026, line: 61, baseType: !817, size: 64, offset: 256)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2025, file: !2026, line: 62, baseType: !7, size: 32, offset: 320)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2025, file: !2026, line: 63, baseType: !2035, size: 64, offset: 384)
!2035 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !140, line: 153, baseType: !373)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2025, file: !2026, line: 64, baseType: !2037, size: 64, offset: 448)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1129, file: !1130, line: 1326, baseType: !1141, size: 32, offset: 13184)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1129, file: !1130, line: 1342, baseType: !141, size: 64, offset: 13248)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1129, file: !1130, line: 1343, baseType: !374, size: 64, offset: 13312)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1129, file: !1130, line: 1344, baseType: !373, size: 64, offset: 13376)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1129, file: !1130, line: 1345, baseType: !374, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1129, file: !1130, line: 1346, baseType: !374, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1129, file: !1130, line: 1347, baseType: !374, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1129, file: !1130, line: 1348, baseType: !317, size: 128, align: 64, offset: 13504)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1129, file: !1130, line: 1358, baseType: !2048, size: 34816, offset: 13824)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2049, line: 485, size: 34816, elements: !2050)
!2049 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2050 = !{!2051, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2080, !2081, !2082, !2083, !2084, !2085, !2088, !2089, !2090}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2048, file: !2049, line: 487, baseType: !2052, size: 192)
!2052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2053, size: 192, elements: !229)
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2054, line: 16, size: 64, elements: !2055)
!2054 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2055 = !{!2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2053, file: !2054, line: 17, baseType: !856, size: 16)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2053, file: !2054, line: 18, baseType: !856, size: 16, offset: 16)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2053, file: !2054, line: 19, baseType: !856, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2053, file: !2054, line: 19, baseType: !856, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2053, file: !2054, line: 19, baseType: !856, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2053, file: !2054, line: 19, baseType: !856, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2053, file: !2054, line: 19, baseType: !856, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2053, file: !2054, line: 20, baseType: !856, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2053, file: !2054, line: 20, baseType: !856, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2053, file: !2054, line: 20, baseType: !856, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2053, file: !2054, line: 20, baseType: !856, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2053, file: !2054, line: 20, baseType: !856, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2053, file: !2054, line: 20, baseType: !856, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2048, file: !2049, line: 491, baseType: !142, size: 64, offset: 192)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2048, file: !2049, line: 495, baseType: !269, size: 16, offset: 256)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2048, file: !2049, line: 496, baseType: !269, size: 16, offset: 272)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2048, file: !2049, line: 497, baseType: !269, size: 16, offset: 288)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2048, file: !2049, line: 498, baseType: !269, size: 16, offset: 304)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2048, file: !2049, line: 502, baseType: !142, size: 64, offset: 320)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2048, file: !2049, line: 503, baseType: !142, size: 64, offset: 384)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2048, file: !2049, line: 514, baseType: !2077, size: 256, offset: 448)
!2077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2078, size: 256, elements: !1073)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2049, line: 483, flags: DIFlagFwdDecl)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2048, file: !2049, line: 516, baseType: !142, size: 64, offset: 704)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2048, file: !2049, line: 518, baseType: !142, size: 64, offset: 768)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2048, file: !2049, line: 520, baseType: !142, size: 64, offset: 832)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2048, file: !2049, line: 521, baseType: !142, size: 64, offset: 896)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2048, file: !2049, line: 522, baseType: !142, size: 64, offset: 960)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2048, file: !2049, line: 528, baseType: !2086, size: 64, offset: 1024)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2049, line: 10, flags: DIFlagFwdDecl)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2048, file: !2049, line: 535, baseType: !142, size: 64, offset: 1088)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2048, file: !2049, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2048, file: !2049, line: 540, baseType: !2091, size: 33280, offset: 1536)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2092, line: 317, size: 33280, elements: !2093)
!2092 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2093 = !{!2094, !2095, !2096}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2091, file: !2092, line: 330, baseType: !7, size: 32)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2091, file: !2092, line: 337, baseType: !142, size: 64, offset: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2091, file: !2092, line: 348, baseType: !2097, size: 32768, offset: 512)
!2097 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2092, line: 304, size: 32768, elements: !2098)
!2098 = !{!2099, !2114, !2153, !2203, !2216}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2097, file: !2092, line: 305, baseType: !2100, size: 896)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2092, line: 12, size: 896, elements: !2101)
!2101 = !{!2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2113}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2100, file: !2092, line: 13, baseType: !367, size: 32)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2100, file: !2092, line: 14, baseType: !367, size: 32, offset: 32)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2100, file: !2092, line: 15, baseType: !367, size: 32, offset: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2100, file: !2092, line: 16, baseType: !367, size: 32, offset: 96)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2100, file: !2092, line: 17, baseType: !367, size: 32, offset: 128)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2100, file: !2092, line: 18, baseType: !367, size: 32, offset: 160)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2100, file: !2092, line: 19, baseType: !367, size: 32, offset: 192)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2100, file: !2092, line: 22, baseType: !2110, size: 640, offset: 224)
!2110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !367, size: 640, elements: !2111)
!2111 = !{!2112}
!2112 = !DISubrange(count: 20)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2100, file: !2092, line: 25, baseType: !367, size: 32, offset: 864)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2097, file: !2092, line: 306, baseType: !2115, size: 4096, align: 128)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2092, line: 34, size: 4096, align: 128, elements: !2116)
!2116 = !{!2117, !2118, !2119, !2120, !2121, !2136, !2137, !2138, !2142, !2144, !2148}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2115, file: !2092, line: 35, baseType: !856, size: 16)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2115, file: !2092, line: 36, baseType: !856, size: 16, offset: 16)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2115, file: !2092, line: 37, baseType: !856, size: 16, offset: 32)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2115, file: !2092, line: 38, baseType: !856, size: 16, offset: 48)
!2121 = !DIDerivedType(tag: DW_TAG_member, scope: !2115, file: !2092, line: 39, baseType: !2122, size: 128, offset: 64)
!2122 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2115, file: !2092, line: 39, size: 128, elements: !2123)
!2123 = !{!2124, !2129}
!2124 = !DIDerivedType(tag: DW_TAG_member, scope: !2122, file: !2092, line: 40, baseType: !2125, size: 128)
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2122, file: !2092, line: 40, size: 128, elements: !2126)
!2126 = !{!2127, !2128}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2125, file: !2092, line: 41, baseType: !373, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2125, file: !2092, line: 42, baseType: !373, size: 64, offset: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, scope: !2122, file: !2092, line: 44, baseType: !2130, size: 128)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2122, file: !2092, line: 44, size: 128, elements: !2131)
!2131 = !{!2132, !2133, !2134, !2135}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2130, file: !2092, line: 45, baseType: !367, size: 32)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2130, file: !2092, line: 46, baseType: !367, size: 32, offset: 32)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2130, file: !2092, line: 47, baseType: !367, size: 32, offset: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2130, file: !2092, line: 48, baseType: !367, size: 32, offset: 96)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2115, file: !2092, line: 51, baseType: !367, size: 32, offset: 192)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2115, file: !2092, line: 52, baseType: !367, size: 32, offset: 224)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2115, file: !2092, line: 55, baseType: !2139, size: 1024, offset: 256)
!2139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !367, size: 1024, elements: !2140)
!2140 = !{!2141}
!2141 = !DISubrange(count: 32)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2115, file: !2092, line: 58, baseType: !2143, size: 2048, offset: 1280)
!2143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !367, size: 2048, elements: !233)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2115, file: !2092, line: 60, baseType: !2145, size: 384, offset: 3328)
!2145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !367, size: 384, elements: !2146)
!2146 = !{!2147}
!2147 = !DISubrange(count: 12)
!2148 = !DIDerivedType(tag: DW_TAG_member, scope: !2115, file: !2092, line: 62, baseType: !2149, size: 384, offset: 3712)
!2149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2115, file: !2092, line: 62, size: 384, elements: !2150)
!2150 = !{!2151, !2152}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2149, file: !2092, line: 63, baseType: !2145, size: 384)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2149, file: !2092, line: 64, baseType: !2145, size: 384)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2097, file: !2092, line: 307, baseType: !2154, size: 1088)
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2092, line: 79, size: 1088, elements: !2155)
!2155 = !{!2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2202}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2154, file: !2092, line: 80, baseType: !367, size: 32)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2154, file: !2092, line: 81, baseType: !367, size: 32, offset: 32)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2154, file: !2092, line: 82, baseType: !367, size: 32, offset: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2154, file: !2092, line: 83, baseType: !367, size: 32, offset: 96)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2154, file: !2092, line: 84, baseType: !367, size: 32, offset: 128)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2154, file: !2092, line: 85, baseType: !367, size: 32, offset: 160)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2154, file: !2092, line: 86, baseType: !367, size: 32, offset: 192)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2154, file: !2092, line: 88, baseType: !2110, size: 640, offset: 224)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2154, file: !2092, line: 89, baseType: !1263, size: 8, offset: 864)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2154, file: !2092, line: 90, baseType: !1263, size: 8, offset: 872)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2154, file: !2092, line: 91, baseType: !1263, size: 8, offset: 880)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2154, file: !2092, line: 92, baseType: !1263, size: 8, offset: 888)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2154, file: !2092, line: 93, baseType: !1263, size: 8, offset: 896)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2154, file: !2092, line: 94, baseType: !1263, size: 8, offset: 904)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2154, file: !2092, line: 95, baseType: !2171, size: 64, offset: 960)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2173, line: 11, size: 128, elements: !2174)
!2173 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2174 = !{!2175, !2176}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2172, file: !2173, line: 12, baseType: !143, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2172, file: !2173, line: 13, baseType: !2177, size: 64, offset: 64)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2179, line: 56, size: 1344, elements: !2180)
!2179 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2180 = !{!2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2178, file: !2179, line: 61, baseType: !142, size: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2178, file: !2179, line: 62, baseType: !142, size: 64, offset: 64)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2178, file: !2179, line: 63, baseType: !142, size: 64, offset: 128)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2178, file: !2179, line: 64, baseType: !142, size: 64, offset: 192)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2178, file: !2179, line: 65, baseType: !142, size: 64, offset: 256)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2178, file: !2179, line: 66, baseType: !142, size: 64, offset: 320)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2178, file: !2179, line: 68, baseType: !142, size: 64, offset: 384)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2178, file: !2179, line: 69, baseType: !142, size: 64, offset: 448)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2178, file: !2179, line: 70, baseType: !142, size: 64, offset: 512)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2178, file: !2179, line: 71, baseType: !142, size: 64, offset: 576)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2178, file: !2179, line: 72, baseType: !142, size: 64, offset: 640)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2178, file: !2179, line: 73, baseType: !142, size: 64, offset: 704)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2178, file: !2179, line: 74, baseType: !142, size: 64, offset: 768)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2178, file: !2179, line: 75, baseType: !142, size: 64, offset: 832)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2178, file: !2179, line: 76, baseType: !142, size: 64, offset: 896)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2178, file: !2179, line: 81, baseType: !142, size: 64, offset: 960)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2178, file: !2179, line: 83, baseType: !142, size: 64, offset: 1024)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2178, file: !2179, line: 84, baseType: !142, size: 64, offset: 1088)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2178, file: !2179, line: 85, baseType: !142, size: 64, offset: 1152)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2178, file: !2179, line: 86, baseType: !142, size: 64, offset: 1216)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2178, file: !2179, line: 87, baseType: !142, size: 64, offset: 1280)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2154, file: !2092, line: 96, baseType: !367, size: 32, offset: 1024)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2097, file: !2092, line: 308, baseType: !2204, size: 4608, align: 512)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2092, line: 289, size: 4608, align: 512, elements: !2205)
!2205 = !{!2206, !2207, !2214}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2204, file: !2092, line: 290, baseType: !2115, size: 4096, align: 128)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2204, file: !2092, line: 291, baseType: !2208, size: 512, offset: 4096)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2092, line: 268, size: 512, elements: !2209)
!2209 = !{!2210, !2211, !2212}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2208, file: !2092, line: 269, baseType: !373, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2208, file: !2092, line: 270, baseType: !373, size: 64, offset: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2208, file: !2092, line: 271, baseType: !2213, size: 384, offset: 128)
!2213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !373, size: 384, elements: !1534)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2204, file: !2092, line: 292, baseType: !2215, offset: 4608)
!2215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1263, elements: !1632)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2097, file: !2092, line: 309, baseType: !2217, size: 32768)
!2217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1263, size: 32768, elements: !2218)
!2218 = !{!2219}
!2219 = !DISubrange(count: 4096)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1125, file: !727, line: 378, baseType: !2221, size: 64, offset: 64)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1121, file: !727, line: 384, baseType: !1413, size: 192, offset: 192)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !976, file: !727, line: 500, baseType: !188, offset: 6656)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !976, file: !727, line: 501, baseType: !2225, size: 64, offset: 6656)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !727, line: 387, flags: DIFlagFwdDecl)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !976, file: !727, line: 516, baseType: !1622, size: 64, offset: 6720)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !976, file: !727, line: 519, baseType: !304, size: 64, offset: 6784)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !976, file: !727, line: 521, baseType: !2230, size: 64, offset: 6848)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !727, line: 521, flags: DIFlagFwdDecl)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !976, file: !727, line: 545, baseType: !751, size: 32, offset: 6912)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !976, file: !727, line: 548, baseType: !442, size: 8, offset: 6944)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !976, file: !727, line: 550, baseType: !2235, offset: 6952)
!2235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2236, line: 142, elements: !202)
!2236 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !976, file: !727, line: 554, baseType: !1867, size: 256, offset: 6976)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !976, file: !727, line: 557, baseType: !367, size: 32, offset: 7232)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !973, file: !727, line: 565, baseType: !2240, offset: 7296)
!2240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, elements: !2241)
!2241 = !{!2242}
!2242 = !DISubrange(count: -1)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !969, file: !727, line: 151, baseType: !751, size: 32)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !961, file: !727, line: 156, baseType: !188, offset: 256)
!2245 = !DIDerivedType(tag: DW_TAG_member, scope: !731, file: !727, line: 159, baseType: !2246, size: 128)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !731, file: !727, line: 159, size: 128, elements: !2247)
!2247 = !{!2248, !2251}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2246, file: !727, line: 161, baseType: !2249, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !727, line: 161, flags: DIFlagFwdDecl)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2246, file: !727, line: 162, baseType: !141, size: 64, offset: 64)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !731, file: !727, line: 176, baseType: !317, size: 128, align: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, scope: !726, file: !727, line: 179, baseType: !2254, size: 32, offset: 384)
!2254 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !726, file: !727, line: 179, size: 32, elements: !2255)
!2255 = !{!2256, !2257, !2258, !2259}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2254, file: !727, line: 184, baseType: !751, size: 32)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2254, file: !727, line: 192, baseType: !7, size: 32)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2254, file: !727, line: 194, baseType: !7, size: 32)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2254, file: !727, line: 195, baseType: !138, size: 32)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !726, file: !727, line: 199, baseType: !751, size: 32, offset: 416)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !612, file: !31, line: 1964, baseType: !2262, size: 64, offset: 1344)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{!143, !551, !2265}
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2267, line: 12, size: 256, elements: !2268)
!2267 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2268 = !{!2269, !2270, !2271, !2272, !2273}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2266, file: !2267, line: 13, baseType: !139, size: 32)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2266, file: !2267, line: 16, baseType: !138, size: 32, offset: 32)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2266, file: !2267, line: 23, baseType: !142, size: 64, offset: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2266, file: !2267, line: 30, baseType: !142, size: 64, offset: 128)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2266, file: !2267, line: 33, baseType: !2274, size: 64, offset: 192)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !727, line: 27, flags: DIFlagFwdDecl)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !612, file: !31, line: 1966, baseType: !2262, size: 64, offset: 1408)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !552, file: !31, line: 1424, baseType: !2278, size: 64, offset: 448)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2280)
!2280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !25, line: 322, size: 704, elements: !2281)
!2281 = !{!2282, !2328, !2332, !2336, !2337, !2338, !2339, !2340, !2345, !2350, !2354}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2280, file: !25, line: 323, baseType: !2283, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{!138, !2286}
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !25, line: 294, size: 1600, elements: !2288)
!2288 = !{!2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2313, !2314, !2315}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2287, file: !25, line: 295, baseType: !594, size: 128)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2287, file: !25, line: 296, baseType: !175, size: 128, offset: 128)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2287, file: !25, line: 297, baseType: !175, size: 128, offset: 256)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2287, file: !25, line: 298, baseType: !175, size: 128, offset: 384)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2287, file: !25, line: 299, baseType: !678, size: 192, offset: 512)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2287, file: !25, line: 300, baseType: !188, offset: 704)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2287, file: !25, line: 301, baseType: !751, size: 32, offset: 704)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2287, file: !25, line: 302, baseType: !551, size: 64, offset: 768)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2287, file: !25, line: 303, baseType: !2298, size: 64, offset: 832)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !25, line: 68, size: 64, elements: !2299)
!2299 = !{!2300, !2312}
!2300 = !DIDerivedType(tag: DW_TAG_member, scope: !2298, file: !25, line: 69, baseType: !2301, size: 32)
!2301 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2298, file: !25, line: 69, size: 32, elements: !2302)
!2302 = !{!2303, !2304, !2305}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2301, file: !25, line: 70, baseType: !387, size: 32)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2301, file: !25, line: 71, baseType: !395, size: 32)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2301, file: !25, line: 72, baseType: !2306, size: 32)
!2306 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2307, line: 24, baseType: !2308)
!2307 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2307, line: 22, size: 32, elements: !2309)
!2309 = !{!2310}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2308, file: !2307, line: 23, baseType: !2311, size: 32)
!2311 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2307, line: 20, baseType: !393)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2298, file: !25, line: 74, baseType: !24, size: 32, offset: 32)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2287, file: !25, line: 304, baseType: !483, size: 64, offset: 896)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2287, file: !25, line: 305, baseType: !142, size: 64, offset: 960)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2287, file: !25, line: 306, baseType: !2316, size: 576, offset: 1024)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !25, line: 205, size: 576, elements: !2317)
!2317 = !{!2318, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2316, file: !25, line: 206, baseType: !2319, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !25, line: 66, baseType: !485)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2316, file: !25, line: 207, baseType: !2319, size: 64, offset: 64)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2316, file: !25, line: 208, baseType: !2319, size: 64, offset: 128)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2316, file: !25, line: 209, baseType: !2319, size: 64, offset: 192)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2316, file: !25, line: 210, baseType: !2319, size: 64, offset: 256)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2316, file: !25, line: 211, baseType: !2319, size: 64, offset: 320)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2316, file: !25, line: 212, baseType: !2319, size: 64, offset: 384)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2316, file: !25, line: 213, baseType: !491, size: 64, offset: 448)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2316, file: !25, line: 214, baseType: !491, size: 64, offset: 512)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2280, file: !25, line: 324, baseType: !2329, size: 64, offset: 64)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!2286, !551, !138}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2280, file: !25, line: 325, baseType: !2333, size: 64, offset: 128)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{null, !2286}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2280, file: !25, line: 326, baseType: !2283, size: 64, offset: 192)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2280, file: !25, line: 327, baseType: !2283, size: 64, offset: 256)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2280, file: !25, line: 328, baseType: !2283, size: 64, offset: 320)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2280, file: !25, line: 329, baseType: !640, size: 64, offset: 384)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2280, file: !25, line: 332, baseType: !2341, size: 64, offset: 448)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!2344, !381}
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2280, file: !25, line: 333, baseType: !2346, size: 64, offset: 512)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!138, !381, !2349}
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2280, file: !25, line: 335, baseType: !2351, size: 64, offset: 576)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!138, !381, !2344}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2280, file: !25, line: 337, baseType: !2355, size: 64, offset: 640)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{!138, !551, !2358}
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !552, file: !31, line: 1425, baseType: !2360, size: 64, offset: 512)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2362)
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !25, line: 428, size: 704, elements: !2363)
!2363 = !{!2364, !2368, !2369, !2373, !2374, !2375, !2390, !2413, !2417, !2418, !2441}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2362, file: !25, line: 429, baseType: !2365, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!138, !551, !138, !138, !501}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2362, file: !25, line: 430, baseType: !640, size: 64, offset: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2362, file: !25, line: 431, baseType: !2370, size: 64, offset: 128)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!138, !551, !7}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2362, file: !25, line: 432, baseType: !2370, size: 64, offset: 192)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2362, file: !25, line: 433, baseType: !640, size: 64, offset: 256)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2362, file: !25, line: 434, baseType: !2376, size: 64, offset: 320)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{!138, !551, !138, !2379}
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !25, line: 415, size: 256, elements: !2381)
!2381 = !{!2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2380, file: !25, line: 416, baseType: !138, size: 32)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2380, file: !25, line: 417, baseType: !7, size: 32, offset: 32)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2380, file: !25, line: 418, baseType: !7, size: 32, offset: 64)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2380, file: !25, line: 420, baseType: !7, size: 32, offset: 96)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2380, file: !25, line: 421, baseType: !7, size: 32, offset: 128)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2380, file: !25, line: 422, baseType: !7, size: 32, offset: 160)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2380, file: !25, line: 423, baseType: !7, size: 32, offset: 192)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2380, file: !25, line: 424, baseType: !7, size: 32, offset: 224)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2362, file: !25, line: 435, baseType: !2391, size: 64, offset: 384)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!138, !551, !2298, !2394}
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !25, line: 343, size: 960, elements: !2396)
!2396 = !{!2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2395, file: !25, line: 344, baseType: !138, size: 32)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2395, file: !25, line: 345, baseType: !373, size: 64, offset: 64)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2395, file: !25, line: 346, baseType: !373, size: 64, offset: 128)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2395, file: !25, line: 347, baseType: !373, size: 64, offset: 192)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2395, file: !25, line: 348, baseType: !373, size: 64, offset: 256)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2395, file: !25, line: 349, baseType: !373, size: 64, offset: 320)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2395, file: !25, line: 350, baseType: !373, size: 64, offset: 384)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2395, file: !25, line: 351, baseType: !688, size: 64, offset: 448)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2395, file: !25, line: 353, baseType: !688, size: 64, offset: 512)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2395, file: !25, line: 354, baseType: !138, size: 32, offset: 576)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2395, file: !25, line: 355, baseType: !138, size: 32, offset: 608)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2395, file: !25, line: 356, baseType: !373, size: 64, offset: 640)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2395, file: !25, line: 357, baseType: !373, size: 64, offset: 704)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2395, file: !25, line: 358, baseType: !373, size: 64, offset: 768)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2395, file: !25, line: 359, baseType: !688, size: 64, offset: 832)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2395, file: !25, line: 360, baseType: !138, size: 32, offset: 896)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2362, file: !25, line: 436, baseType: !2414, size: 64, offset: 448)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!138, !551, !2358, !2394}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2362, file: !25, line: 438, baseType: !2391, size: 64, offset: 512)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2362, file: !25, line: 439, baseType: !2419, size: 64, offset: 576)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DISubroutineType(types: !2421)
!2421 = !{!138, !551, !2422}
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !25, line: 409, size: 1408, elements: !2424)
!2424 = !{!2425, !2426}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2423, file: !25, line: 410, baseType: !7, size: 32)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2423, file: !25, line: 411, baseType: !2427, size: 1344, offset: 64)
!2427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2428, size: 1344, elements: !229)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !25, line: 395, size: 448, elements: !2429)
!2429 = !{!2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2440}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2428, file: !25, line: 396, baseType: !7, size: 32)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2428, file: !25, line: 397, baseType: !7, size: 32, offset: 32)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2428, file: !25, line: 399, baseType: !7, size: 32, offset: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2428, file: !25, line: 400, baseType: !7, size: 32, offset: 96)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2428, file: !25, line: 401, baseType: !7, size: 32, offset: 128)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2428, file: !25, line: 402, baseType: !7, size: 32, offset: 160)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2428, file: !25, line: 403, baseType: !7, size: 32, offset: 192)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2428, file: !25, line: 404, baseType: !375, size: 64, offset: 256)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2428, file: !25, line: 405, baseType: !2439, size: 64, offset: 320)
!2439 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !140, line: 126, baseType: !373)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2428, file: !25, line: 406, baseType: !2439, size: 64, offset: 384)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2362, file: !25, line: 440, baseType: !2370, size: 64, offset: 640)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !552, file: !31, line: 1426, baseType: !2443, size: 64, offset: 576)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2445)
!2445 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !31, line: 49, flags: DIFlagFwdDecl)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !552, file: !31, line: 1427, baseType: !142, size: 64, offset: 640)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !552, file: !31, line: 1428, baseType: !142, size: 64, offset: 704)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !552, file: !31, line: 1429, baseType: !142, size: 64, offset: 768)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !552, file: !31, line: 1430, baseType: !334, size: 64, offset: 832)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !552, file: !31, line: 1431, baseType: !771, size: 256, offset: 896)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !552, file: !31, line: 1432, baseType: !138, size: 32, offset: 1152)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !552, file: !31, line: 1433, baseType: !751, size: 32, offset: 1184)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !552, file: !31, line: 1437, baseType: !2454, size: 64, offset: 1216)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2457)
!2457 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !31, line: 1437, flags: DIFlagFwdDecl)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !552, file: !31, line: 1449, baseType: !2459, size: 64, offset: 1280)
!2459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !350, line: 34, size: 64, elements: !2460)
!2460 = !{!2461}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2459, file: !350, line: 35, baseType: !353, size: 64)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !552, file: !31, line: 1450, baseType: !175, size: 128, offset: 1344)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !552, file: !31, line: 1451, baseType: !2464, size: 64, offset: 1472)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !31, line: 699, flags: DIFlagFwdDecl)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !552, file: !31, line: 1452, baseType: !1833, size: 64, offset: 1536)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !552, file: !31, line: 1453, baseType: !2468, size: 64, offset: 1600)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !31, line: 1453, flags: DIFlagFwdDecl)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !552, file: !31, line: 1454, baseType: !594, size: 128, offset: 1664)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !552, file: !31, line: 1455, baseType: !7, size: 32, offset: 1792)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !552, file: !31, line: 1456, baseType: !2473, size: 2432, offset: 1856)
!2473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !25, line: 518, size: 2432, elements: !2474)
!2474 = !{!2475, !2476, !2477, !2479, !2511}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2473, file: !25, line: 519, baseType: !7, size: 32)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2473, file: !25, line: 520, baseType: !771, size: 256, offset: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2473, file: !25, line: 521, baseType: !2478, size: 192, offset: 320)
!2478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 192, elements: !229)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2473, file: !25, line: 522, baseType: !2480, size: 1728, offset: 512)
!2480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2481, size: 1728, elements: !229)
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !25, line: 222, size: 576, elements: !2482)
!2482 = !{!2483, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2481, file: !25, line: 223, baseType: !2484, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !25, line: 443, size: 256, elements: !2486)
!2486 = !{!2487, !2488, !2501, !2502}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2485, file: !25, line: 444, baseType: !138, size: 32)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2485, file: !25, line: 445, baseType: !2489, size: 64, offset: 64)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2491)
!2491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !25, line: 310, size: 512, elements: !2492)
!2492 = !{!2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2491, file: !25, line: 311, baseType: !640, size: 64)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2491, file: !25, line: 312, baseType: !640, size: 64, offset: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2491, file: !25, line: 313, baseType: !640, size: 64, offset: 128)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2491, file: !25, line: 314, baseType: !640, size: 64, offset: 192)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2491, file: !25, line: 315, baseType: !2283, size: 64, offset: 256)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2491, file: !25, line: 316, baseType: !2283, size: 64, offset: 320)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2491, file: !25, line: 317, baseType: !2283, size: 64, offset: 384)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2491, file: !25, line: 318, baseType: !2355, size: 64, offset: 448)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2485, file: !25, line: 446, baseType: !585, size: 64, offset: 128)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2485, file: !25, line: 447, baseType: !2484, size: 64, offset: 192)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2481, file: !25, line: 224, baseType: !138, size: 32, offset: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2481, file: !25, line: 226, baseType: !175, size: 128, offset: 128)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2481, file: !25, line: 227, baseType: !142, size: 64, offset: 256)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2481, file: !25, line: 228, baseType: !7, size: 32, offset: 320)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2481, file: !25, line: 229, baseType: !7, size: 32, offset: 352)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2481, file: !25, line: 230, baseType: !2319, size: 64, offset: 384)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2481, file: !25, line: 231, baseType: !2319, size: 64, offset: 448)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2481, file: !25, line: 232, baseType: !141, size: 64, offset: 512)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2473, file: !25, line: 523, baseType: !2512, size: 192, offset: 2240)
!2512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2489, size: 192, elements: !229)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !552, file: !31, line: 1458, baseType: !2514, size: 2112, offset: 4288)
!2514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !31, line: 1410, size: 2112, elements: !2515)
!2515 = !{!2516, !2517, !2518}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2514, file: !31, line: 1411, baseType: !138, size: 32)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2514, file: !31, line: 1412, baseType: !1392, size: 128, offset: 64)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2514, file: !31, line: 1413, baseType: !2519, size: 1920, offset: 192)
!2519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2520, size: 1920, elements: !229)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2521, line: 12, size: 640, elements: !2522)
!2521 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2522 = !{!2523, !2531, !2533, !2538, !2539}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2520, file: !2521, line: 13, baseType: !2524, size: 320)
!2524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2525, line: 17, size: 320, elements: !2526)
!2525 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2526 = !{!2527, !2528, !2529, !2530}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2524, file: !2525, line: 18, baseType: !138, size: 32)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2524, file: !2525, line: 19, baseType: !138, size: 32, offset: 32)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2524, file: !2525, line: 20, baseType: !1392, size: 128, offset: 64)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2524, file: !2525, line: 22, baseType: !317, size: 128, align: 64, offset: 192)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2520, file: !2521, line: 14, baseType: !2532, size: 64, offset: 320)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2520, file: !2521, line: 15, baseType: !2534, size: 64, offset: 384)
!2534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2535, line: 16, size: 64, elements: !2536)
!2535 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2536 = !{!2537}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2534, file: !2535, line: 17, baseType: !1128, size: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2520, file: !2521, line: 16, baseType: !1392, size: 128, offset: 448)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2520, file: !2521, line: 17, baseType: !751, size: 32, offset: 576)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !552, file: !31, line: 1465, baseType: !141, size: 64, offset: 6400)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !552, file: !31, line: 1468, baseType: !367, size: 32, offset: 6464)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !552, file: !31, line: 1470, baseType: !491, size: 64, offset: 6528)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !552, file: !31, line: 1471, baseType: !491, size: 64, offset: 6592)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !552, file: !31, line: 1473, baseType: !369, size: 32, offset: 6656)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !552, file: !31, line: 1474, baseType: !2546, size: 64, offset: 6720)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !31, line: 603, flags: DIFlagFwdDecl)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !552, file: !31, line: 1477, baseType: !2549, size: 256, offset: 6784)
!2549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 256, elements: !2140)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !552, file: !31, line: 1478, baseType: !2551, size: 128, offset: 7040)
!2551 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2552, line: 18, baseType: !2553)
!2552 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2553 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2552, line: 16, size: 128, elements: !2554)
!2554 = !{!2555}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2553, file: !2552, line: 17, baseType: !2556, size: 128)
!2556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1264, size: 128, elements: !1644)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !552, file: !31, line: 1480, baseType: !7, size: 32, offset: 7168)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !552, file: !31, line: 1481, baseType: !2559, size: 32, offset: 7200)
!2559 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !140, line: 150, baseType: !7)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !552, file: !31, line: 1487, baseType: !678, size: 192, offset: 7232)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !552, file: !31, line: 1493, baseType: !154, size: 64, offset: 7424)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !552, file: !31, line: 1495, baseType: !2563, size: 64, offset: 7488)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2565)
!2565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !332, line: 135, size: 1024, align: 512, elements: !2566)
!2566 = !{!2567, !2571, !2572, !2579, !2585, !2589, !2593, !2597, !2598, !2602, !2606, !2611, !2615}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2565, file: !332, line: 136, baseType: !2568, size: 64)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{!138, !334, !7}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2565, file: !332, line: 137, baseType: !2568, size: 64, offset: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2565, file: !332, line: 138, baseType: !2573, size: 64, offset: 128)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{!138, !2576, !2578}
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !335)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2565, file: !332, line: 139, baseType: !2580, size: 64, offset: 192)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{!138, !2576, !7, !154, !2583}
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !358)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2565, file: !332, line: 141, baseType: !2586, size: 64, offset: 256)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!138, !2576}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2565, file: !332, line: 142, baseType: !2590, size: 64, offset: 320)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DISubroutineType(types: !2592)
!2592 = !{!138, !334}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2565, file: !332, line: 143, baseType: !2594, size: 64, offset: 384)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DISubroutineType(types: !2596)
!2596 = !{null, !334}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2565, file: !332, line: 144, baseType: !2594, size: 64, offset: 448)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2565, file: !332, line: 145, baseType: !2599, size: 64, offset: 512)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{null, !334, !381}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2565, file: !332, line: 146, baseType: !2603, size: 64, offset: 576)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{!144, !334, !144, !138}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2565, file: !332, line: 147, baseType: !2607, size: 64, offset: 640)
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = !DISubroutineType(types: !2609)
!2609 = !{!330, !2610}
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2565, file: !332, line: 148, baseType: !2612, size: 64, offset: 704)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{!138, !501, !442}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2565, file: !332, line: 149, baseType: !2616, size: 64, offset: 768)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DISubroutineType(types: !2618)
!2618 = !{!334, !334, !2619}
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !382)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !552, file: !31, line: 1500, baseType: !138, size: 32, offset: 7552)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !552, file: !31, line: 1502, baseType: !2623, size: 448, offset: 7616)
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2267, line: 60, size: 448, elements: !2624)
!2624 = !{!2625, !2630, !2631, !2632, !2633, !2634, !2635}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2623, file: !2267, line: 61, baseType: !2626, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{!142, !2629, !2265}
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2623, file: !2267, line: 63, baseType: !2626, size: 64, offset: 64)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2623, file: !2267, line: 66, baseType: !143, size: 64, offset: 128)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2623, file: !2267, line: 67, baseType: !138, size: 32, offset: 192)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2623, file: !2267, line: 68, baseType: !7, size: 32, offset: 224)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2623, file: !2267, line: 71, baseType: !175, size: 128, offset: 256)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2623, file: !2267, line: 77, baseType: !2636, size: 64, offset: 384)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !552, file: !31, line: 1505, baseType: !682, size: 64, offset: 8064)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !552, file: !31, line: 1508, baseType: !682, size: 64, offset: 8128)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !552, file: !31, line: 1511, baseType: !138, size: 32, offset: 8192)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !552, file: !31, line: 1514, baseType: !906, size: 32, offset: 8224)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !552, file: !31, line: 1517, baseType: !2642, size: 64, offset: 8256)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1868, line: 18, flags: DIFlagFwdDecl)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !552, file: !31, line: 1518, baseType: !590, size: 64, offset: 8320)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !552, file: !31, line: 1525, baseType: !1622, size: 64, offset: 8384)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !552, file: !31, line: 1532, baseType: !2647, size: 64, offset: 8448)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2648, line: 52, size: 64, elements: !2649)
!2648 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2649 = !{!2650}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2647, file: !2648, line: 53, baseType: !2651, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2648, line: 40, size: 256, elements: !2653)
!2653 = !{!2654, !2655, !2660}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2652, file: !2648, line: 42, baseType: !188)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2652, file: !2648, line: 44, baseType: !2656, size: 192)
!2656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2648, line: 28, size: 192, elements: !2657)
!2657 = !{!2658, !2659}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2656, file: !2648, line: 29, baseType: !175, size: 128)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2656, file: !2648, line: 31, baseType: !143, size: 64, offset: 128)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2652, file: !2648, line: 49, baseType: !143, size: 64, offset: 192)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !552, file: !31, line: 1533, baseType: !2647, size: 64, offset: 8512)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !552, file: !31, line: 1534, baseType: !317, size: 128, align: 64, offset: 8576)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !552, file: !31, line: 1535, baseType: !1867, size: 256, offset: 8704)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !552, file: !31, line: 1537, baseType: !678, size: 192, offset: 8960)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !552, file: !31, line: 1542, baseType: !138, size: 32, offset: 9152)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !552, file: !31, line: 1545, baseType: !188, offset: 9184)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !552, file: !31, line: 1546, baseType: !175, size: 128, offset: 9216)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !552, file: !31, line: 1548, baseType: !188, offset: 9344)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !552, file: !31, line: 1549, baseType: !175, size: 128, offset: 9344)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !382, file: !31, line: 624, baseType: !738, size: 64, offset: 256)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !382, file: !31, line: 631, baseType: !142, size: 64, offset: 320)
!2672 = !DIDerivedType(tag: DW_TAG_member, scope: !382, file: !31, line: 639, baseType: !2673, size: 32, offset: 384)
!2673 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !382, file: !31, line: 639, size: 32, elements: !2674)
!2674 = !{!2675, !2677}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2673, file: !31, line: 640, baseType: !2676, size: 32)
!2676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2673, file: !31, line: 641, baseType: !7, size: 32)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !382, file: !31, line: 643, baseType: !465, size: 32, offset: 416)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !382, file: !31, line: 644, baseType: !483, size: 64, offset: 448)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !382, file: !31, line: 645, baseType: !487, size: 128, offset: 512)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !382, file: !31, line: 646, baseType: !487, size: 128, offset: 640)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !382, file: !31, line: 647, baseType: !487, size: 128, offset: 768)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !382, file: !31, line: 648, baseType: !188, offset: 896)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !382, file: !31, line: 649, baseType: !269, size: 16, offset: 896)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !382, file: !31, line: 650, baseType: !1263, size: 8, offset: 912)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !382, file: !31, line: 651, baseType: !1263, size: 8, offset: 920)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !382, file: !31, line: 652, baseType: !2439, size: 64, offset: 960)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !382, file: !31, line: 659, baseType: !142, size: 64, offset: 1024)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !382, file: !31, line: 660, baseType: !771, size: 256, offset: 1088)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !382, file: !31, line: 662, baseType: !142, size: 64, offset: 1344)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !382, file: !31, line: 663, baseType: !142, size: 64, offset: 1408)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !382, file: !31, line: 665, baseType: !594, size: 128, offset: 1472)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !382, file: !31, line: 666, baseType: !175, size: 128, offset: 1600)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !382, file: !31, line: 675, baseType: !175, size: 128, offset: 1728)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !382, file: !31, line: 676, baseType: !175, size: 128, offset: 1856)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !382, file: !31, line: 677, baseType: !175, size: 128, offset: 1984)
!2697 = !DIDerivedType(tag: DW_TAG_member, scope: !382, file: !31, line: 678, baseType: !2698, size: 128, offset: 2112)
!2698 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !382, file: !31, line: 678, size: 128, elements: !2699)
!2699 = !{!2700, !2701}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2698, file: !31, line: 679, baseType: !590, size: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2698, file: !31, line: 680, baseType: !317, size: 128, align: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !382, file: !31, line: 682, baseType: !684, size: 64, offset: 2240)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !382, file: !31, line: 683, baseType: !684, size: 64, offset: 2304)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !382, file: !31, line: 684, baseType: !751, size: 32, offset: 2368)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !382, file: !31, line: 685, baseType: !751, size: 32, offset: 2400)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !382, file: !31, line: 686, baseType: !751, size: 32, offset: 2432)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !382, file: !31, line: 688, baseType: !751, size: 32, offset: 2464)
!2708 = !DIDerivedType(tag: DW_TAG_member, scope: !382, file: !31, line: 690, baseType: !2709, size: 64, offset: 2496)
!2709 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !382, file: !31, line: 690, size: 64, elements: !2710)
!2710 = !{!2711, !2933}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2709, file: !31, line: 691, baseType: !2712, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2714)
!2714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !31, line: 1822, size: 2048, elements: !2715)
!2715 = !{!2716, !2717, !2721, !2725, !2729, !2730, !2731, !2735, !2748, !2749, !2757, !2761, !2762, !2766, !2767, !2771, !2776, !2777, !2781, !2785, !2893, !2897, !2898, !2902, !2903, !2907, !2911, !2916, !2920, !2924, !2928, !2932}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2714, file: !31, line: 1823, baseType: !585, size: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2714, file: !31, line: 1824, baseType: !2718, size: 64, offset: 64)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{!483, !304, !483, !138}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2714, file: !31, line: 1825, baseType: !2722, size: 64, offset: 128)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{!259, !304, !144, !274, !700}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2714, file: !31, line: 1826, baseType: !2726, size: 64, offset: 192)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!259, !304, !154, !274, !700}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2714, file: !31, line: 1827, baseType: !841, size: 64, offset: 256)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2714, file: !31, line: 1828, baseType: !841, size: 64, offset: 320)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2714, file: !31, line: 1829, baseType: !2732, size: 64, offset: 384)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!138, !844, !442}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2714, file: !31, line: 1830, baseType: !2736, size: 64, offset: 448)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{!138, !304, !2739}
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !31, line: 1776, size: 128, elements: !2741)
!2741 = !{!2742, !2747}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2740, file: !31, line: 1777, baseType: !2743, size: 64)
!2743 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !31, line: 1773, baseType: !2744)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{!138, !2739, !154, !138, !483, !373, !7}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2740, file: !31, line: 1778, baseType: !483, size: 64, offset: 64)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2714, file: !31, line: 1831, baseType: !2736, size: 64, offset: 512)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2714, file: !31, line: 1832, baseType: !2750, size: 64, offset: 576)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{!2753, !304, !2755}
!2753 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2754, line: 52, baseType: !7)
!2754 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !571, line: 27, flags: DIFlagFwdDecl)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2714, file: !31, line: 1833, baseType: !2758, size: 64, offset: 640)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!143, !304, !7, !142}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2714, file: !31, line: 1834, baseType: !2758, size: 64, offset: 704)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2714, file: !31, line: 1835, baseType: !2763, size: 64, offset: 768)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!138, !304, !979}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2714, file: !31, line: 1836, baseType: !142, size: 64, offset: 832)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2714, file: !31, line: 1837, baseType: !2768, size: 64, offset: 896)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = !DISubroutineType(types: !2770)
!2770 = !{!138, !381, !304}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2714, file: !31, line: 1838, baseType: !2772, size: 64, offset: 960)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{!138, !304, !2775}
!2775 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !31, line: 1007, baseType: !141)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2714, file: !31, line: 1839, baseType: !2768, size: 64, offset: 1024)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2714, file: !31, line: 1840, baseType: !2778, size: 64, offset: 1088)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DISubroutineType(types: !2780)
!2780 = !{!138, !304, !483, !483, !138}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2714, file: !31, line: 1841, baseType: !2782, size: 64, offset: 1152)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = !DISubroutineType(types: !2784)
!2784 = !{!138, !138, !304, !138}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2714, file: !31, line: 1842, baseType: !2786, size: 64, offset: 1216)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = !DISubroutineType(types: !2788)
!2788 = !{!138, !304, !138, !2789}
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !31, line: 1062, size: 1664, elements: !2791)
!2791 = !{!2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2823, !2824, !2825, !2838, !2869}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2790, file: !31, line: 1063, baseType: !2789, size: 64)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2790, file: !31, line: 1064, baseType: !175, size: 128, offset: 64)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2790, file: !31, line: 1065, baseType: !594, size: 128, offset: 192)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2790, file: !31, line: 1066, baseType: !175, size: 128, offset: 320)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2790, file: !31, line: 1069, baseType: !175, size: 128, offset: 448)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2790, file: !31, line: 1072, baseType: !2775, size: 64, offset: 576)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2790, file: !31, line: 1073, baseType: !7, size: 32, offset: 640)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2790, file: !31, line: 1074, baseType: !379, size: 8, offset: 672)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2790, file: !31, line: 1075, baseType: !7, size: 32, offset: 704)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2790, file: !31, line: 1076, baseType: !138, size: 32, offset: 736)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2790, file: !31, line: 1077, baseType: !1392, size: 128, offset: 768)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2790, file: !31, line: 1078, baseType: !304, size: 64, offset: 896)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2790, file: !31, line: 1079, baseType: !483, size: 64, offset: 960)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2790, file: !31, line: 1080, baseType: !483, size: 64, offset: 1024)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2790, file: !31, line: 1082, baseType: !2807, size: 64, offset: 1088)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !31, line: 1314, size: 320, elements: !2809)
!2809 = !{!2810, !2818, !2819, !2820, !2821, !2822}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2808, file: !31, line: 1315, baseType: !2811)
!2811 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2812, line: 20, baseType: !2813)
!2812 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2812, line: 11, elements: !2814)
!2814 = !{!2815}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2813, file: !2812, line: 12, baseType: !2816)
!2816 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !200, line: 33, baseType: !2817)
!2817 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !200, line: 31, elements: !202)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2808, file: !31, line: 1316, baseType: !138, size: 32)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2808, file: !31, line: 1317, baseType: !138, size: 32, offset: 32)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2808, file: !31, line: 1318, baseType: !2807, size: 64, offset: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2808, file: !31, line: 1319, baseType: !304, size: 64, offset: 128)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2808, file: !31, line: 1320, baseType: !317, size: 128, align: 64, offset: 192)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2790, file: !31, line: 1084, baseType: !142, size: 64, offset: 1152)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2790, file: !31, line: 1085, baseType: !142, size: 64, offset: 1216)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2790, file: !31, line: 1087, baseType: !2826, size: 64, offset: 1280)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2828)
!2828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !31, line: 1011, size: 128, elements: !2829)
!2829 = !{!2830, !2834}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2828, file: !31, line: 1012, baseType: !2831, size: 64)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DISubroutineType(types: !2833)
!2833 = !{null, !2789, !2789}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2828, file: !31, line: 1013, baseType: !2835, size: 64, offset: 64)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{null, !2789}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2790, file: !31, line: 1088, baseType: !2839, size: 64, offset: 1344)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2841)
!2841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !31, line: 1016, size: 512, elements: !2842)
!2842 = !{!2843, !2847, !2851, !2852, !2856, !2860, !2864, !2868}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2841, file: !31, line: 1017, baseType: !2844, size: 64)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = !DISubroutineType(types: !2846)
!2846 = !{!2775, !2775}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2841, file: !31, line: 1018, baseType: !2848, size: 64, offset: 64)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{null, !2775}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2841, file: !31, line: 1019, baseType: !2835, size: 64, offset: 128)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2841, file: !31, line: 1020, baseType: !2853, size: 64, offset: 192)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = !DISubroutineType(types: !2855)
!2855 = !{!138, !2789, !138}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2841, file: !31, line: 1021, baseType: !2857, size: 64, offset: 256)
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = !DISubroutineType(types: !2859)
!2859 = !{!442, !2789}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2841, file: !31, line: 1022, baseType: !2861, size: 64, offset: 320)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!138, !2789, !138, !178}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2841, file: !31, line: 1023, baseType: !2865, size: 64, offset: 384)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{null, !2789, !818}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2841, file: !31, line: 1024, baseType: !2857, size: 64, offset: 448)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2790, file: !31, line: 1097, baseType: !2870, size: 256, offset: 1408)
!2870 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2790, file: !31, line: 1089, size: 256, elements: !2871)
!2871 = !{!2872, !2881, !2887}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2870, file: !31, line: 1090, baseType: !2873, size: 256)
!2873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2874, line: 10, size: 256, elements: !2875)
!2874 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2875 = !{!2876, !2877, !2880}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2873, file: !2874, line: 11, baseType: !367, size: 32)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2873, file: !2874, line: 12, baseType: !2878, size: 64, offset: 64)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2874, line: 5, flags: DIFlagFwdDecl)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2873, file: !2874, line: 13, baseType: !175, size: 128, offset: 128)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2870, file: !31, line: 1091, baseType: !2882, size: 64)
!2882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2874, line: 17, size: 64, elements: !2883)
!2883 = !{!2884}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2882, file: !2874, line: 18, baseType: !2885, size: 64)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2874, line: 16, flags: DIFlagFwdDecl)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2870, file: !31, line: 1096, baseType: !2888, size: 192)
!2888 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2870, file: !31, line: 1092, size: 192, elements: !2889)
!2889 = !{!2890, !2891, !2892}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2888, file: !31, line: 1093, baseType: !175, size: 128)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2888, file: !31, line: 1094, baseType: !138, size: 32, offset: 128)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2888, file: !31, line: 1095, baseType: !7, size: 32, offset: 160)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2714, file: !31, line: 1843, baseType: !2894, size: 64, offset: 1280)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!259, !304, !725, !138, !274, !700, !138}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2714, file: !31, line: 1844, baseType: !1019, size: 64, offset: 1344)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2714, file: !31, line: 1845, baseType: !2899, size: 64, offset: 1408)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{!138, !138}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2714, file: !31, line: 1846, baseType: !2786, size: 64, offset: 1472)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2714, file: !31, line: 1847, baseType: !2904, size: 64, offset: 1536)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!259, !2008, !304, !700, !274, !7}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2714, file: !31, line: 1848, baseType: !2908, size: 64, offset: 1600)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!259, !304, !700, !2008, !274, !7}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2714, file: !31, line: 1849, baseType: !2912, size: 64, offset: 1664)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!138, !304, !143, !2915, !818}
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2714, file: !31, line: 1850, baseType: !2917, size: 64, offset: 1728)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!143, !304, !138, !483, !483}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2714, file: !31, line: 1852, baseType: !2921, size: 64, offset: 1792)
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2922 = !DISubroutineType(types: !2923)
!2923 = !{null, !666, !304}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2714, file: !31, line: 1856, baseType: !2925, size: 64, offset: 1856)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!259, !304, !483, !304, !483, !274, !7}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2714, file: !31, line: 1858, baseType: !2929, size: 64, offset: 1920)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!483, !304, !483, !304, !483, !483, !7}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2714, file: !31, line: 1861, baseType: !2778, size: 64, offset: 1984)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2709, file: !31, line: 692, baseType: !619, size: 64)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !382, file: !31, line: 694, baseType: !2935, size: 64, offset: 2560)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !31, line: 1100, size: 384, elements: !2937)
!2937 = !{!2938, !2939, !2940, !2941}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2936, file: !31, line: 1101, baseType: !188)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2936, file: !31, line: 1102, baseType: !175, size: 128)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2936, file: !31, line: 1103, baseType: !175, size: 128, offset: 128)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2936, file: !31, line: 1104, baseType: !175, size: 128, offset: 256)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !382, file: !31, line: 695, baseType: !739, size: 1216, align: 64, offset: 2624)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !382, file: !31, line: 696, baseType: !175, size: 128, offset: 3840)
!2944 = !DIDerivedType(tag: DW_TAG_member, scope: !382, file: !31, line: 697, baseType: !2945, size: 64, offset: 3968)
!2945 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !382, file: !31, line: 697, size: 64, elements: !2946)
!2946 = !{!2947, !2948, !2949, !2960, !2961}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2945, file: !31, line: 698, baseType: !2008, size: 64)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2945, file: !31, line: 699, baseType: !2464, size: 64)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2945, file: !31, line: 700, baseType: !2950, size: 64)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !2952, line: 14, size: 832, elements: !2953)
!2952 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!2953 = !{!2954, !2955, !2956, !2957, !2958, !2959}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2951, file: !2952, line: 15, baseType: !170, size: 512)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2951, file: !2952, line: 16, baseType: !585, size: 64, offset: 512)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2951, file: !2952, line: 17, baseType: !2712, size: 64, offset: 576)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2951, file: !2952, line: 18, baseType: !175, size: 128, offset: 640)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2951, file: !2952, line: 19, baseType: !465, size: 32, offset: 768)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2951, file: !2952, line: 20, baseType: !7, size: 32, offset: 800)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2945, file: !31, line: 701, baseType: !144, size: 64)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2945, file: !31, line: 702, baseType: !7, size: 32)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !382, file: !31, line: 705, baseType: !369, size: 32, offset: 4032)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !382, file: !31, line: 708, baseType: !369, size: 32, offset: 4064)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !382, file: !31, line: 709, baseType: !2546, size: 64, offset: 4096)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !382, file: !31, line: 720, baseType: !141, size: 64, offset: 4160)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !335, file: !332, line: 98, baseType: !2967, size: 256, offset: 448)
!2967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 256, elements: !2140)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !335, file: !332, line: 101, baseType: !2969, size: 32, offset: 704)
!2969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2970, line: 25, size: 32, elements: !2971)
!2970 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2971 = !{!2972}
!2972 = !DIDerivedType(tag: DW_TAG_member, scope: !2969, file: !2970, line: 26, baseType: !2973, size: 32)
!2973 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2969, file: !2970, line: 26, size: 32, elements: !2974)
!2974 = !{!2975}
!2975 = !DIDerivedType(tag: DW_TAG_member, scope: !2973, file: !2970, line: 30, baseType: !2976, size: 32)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2973, file: !2970, line: 30, size: 32, elements: !2977)
!2977 = !{!2978, !2979}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2976, file: !2970, line: 31, baseType: !188)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2976, file: !2970, line: 32, baseType: !138, size: 32)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !335, file: !332, line: 102, baseType: !2563, size: 64, offset: 768)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !335, file: !332, line: 103, baseType: !551, size: 64, offset: 832)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !335, file: !332, line: 104, baseType: !142, size: 64, offset: 896)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !335, file: !332, line: 105, baseType: !141, size: 64, offset: 960)
!2984 = !DIDerivedType(tag: DW_TAG_member, scope: !335, file: !332, line: 107, baseType: !2985, size: 128, offset: 1024)
!2985 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !335, file: !332, line: 107, size: 128, elements: !2986)
!2986 = !{!2987, !2988}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2985, file: !332, line: 108, baseType: !175, size: 128)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2985, file: !332, line: 109, baseType: !2989, size: 64)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !335, file: !332, line: 111, baseType: !175, size: 128, offset: 1152)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !335, file: !332, line: 112, baseType: !175, size: 128, offset: 1280)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !335, file: !332, line: 120, baseType: !2993, size: 128, offset: 1408)
!2993 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !335, file: !332, line: 116, size: 128, elements: !2994)
!2994 = !{!2995, !2996, !2997}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2993, file: !332, line: 117, baseType: !594, size: 128)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2993, file: !332, line: 118, baseType: !349, size: 128)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2993, file: !332, line: 119, baseType: !317, size: 128, align: 64)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !305, file: !31, line: 922, baseType: !381, size: 64, offset: 256)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !305, file: !31, line: 923, baseType: !2712, size: 64, offset: 320)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !305, file: !31, line: 929, baseType: !188, offset: 384)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !305, file: !31, line: 930, baseType: !30, size: 32, offset: 384)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !305, file: !31, line: 931, baseType: !682, size: 64, offset: 448)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !305, file: !31, line: 932, baseType: !7, size: 32, offset: 512)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !305, file: !31, line: 933, baseType: !2559, size: 32, offset: 544)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !305, file: !31, line: 934, baseType: !678, size: 192, offset: 576)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !305, file: !31, line: 935, baseType: !483, size: 64, offset: 768)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !305, file: !31, line: 936, baseType: !3008, size: 192, offset: 832)
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !31, line: 885, size: 192, elements: !3009)
!3009 = !{!3010, !3011, !3012, !3013, !3014, !3015}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3008, file: !31, line: 886, baseType: !2811)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3008, file: !31, line: 887, baseType: !1382, size: 64)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3008, file: !31, line: 888, baseType: !39, size: 32, offset: 64)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3008, file: !31, line: 889, baseType: !387, size: 32, offset: 96)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3008, file: !31, line: 889, baseType: !387, size: 32, offset: 128)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3008, file: !31, line: 890, baseType: !138, size: 32, offset: 160)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !305, file: !31, line: 937, baseType: !1458, size: 64, offset: 1024)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !305, file: !31, line: 938, baseType: !3018, size: 256, offset: 1088)
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !31, line: 896, size: 256, elements: !3019)
!3019 = !{!3020, !3021, !3022, !3023, !3024, !3025}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3018, file: !31, line: 897, baseType: !142, size: 64)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3018, file: !31, line: 898, baseType: !7, size: 32, offset: 64)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3018, file: !31, line: 899, baseType: !7, size: 32, offset: 96)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3018, file: !31, line: 902, baseType: !7, size: 32, offset: 128)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3018, file: !31, line: 903, baseType: !7, size: 32, offset: 160)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3018, file: !31, line: 904, baseType: !483, size: 64, offset: 192)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !305, file: !31, line: 940, baseType: !373, size: 64, offset: 1344)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !305, file: !31, line: 945, baseType: !141, size: 64, offset: 1408)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !305, file: !31, line: 949, baseType: !175, size: 128, offset: 1472)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !305, file: !31, line: 950, baseType: !175, size: 128, offset: 1600)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !305, file: !31, line: 952, baseType: !738, size: 64, offset: 1728)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !305, file: !31, line: 953, baseType: !906, size: 32, offset: 1792)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !305, file: !31, line: 954, baseType: !906, size: 32, offset: 1824)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !295, file: !253, line: 174, baseType: !301, size: 64, offset: 320)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !295, file: !253, line: 176, baseType: !3035, size: 64, offset: 384)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!138, !304, !181, !294, !979}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !283, file: !253, line: 90, baseType: !278, size: 64, offset: 192)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !283, file: !253, line: 91, baseType: !3040, size: 64, offset: 256)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !243, file: !171, line: 143, baseType: !3042, size: 64, offset: 256)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3043 = !DISubroutineType(types: !3044)
!3044 = !{!3045, !181}
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3047)
!3047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !48, line: 39, size: 384, elements: !3048)
!3048 = !{!3049, !3050, !3054, !3058, !3064, !3068}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3047, file: !48, line: 40, baseType: !47, size: 32)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3047, file: !48, line: 41, baseType: !3051, size: 64, offset: 64)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{!442}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3047, file: !48, line: 42, baseType: !3055, size: 64, offset: 128)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{!141}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3047, file: !48, line: 43, baseType: !3059, size: 64, offset: 192)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{!2037, !3062}
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !48, line: 19, flags: DIFlagFwdDecl)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3047, file: !48, line: 44, baseType: !3065, size: 64, offset: 256)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{!2037}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3047, file: !48, line: 45, baseType: !420, size: 64, offset: 320)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !243, file: !171, line: 144, baseType: !3070, size: 64, offset: 320)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{!2037, !181}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !243, file: !171, line: 145, baseType: !3074, size: 64, offset: 384)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{null, !181, !3077, !3078}
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !170, file: !171, line: 70, baseType: !3080, size: 64, offset: 384)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !571, line: 123, size: 1024, elements: !3082)
!3082 = !{!3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3199, !3200, !3201, !3202, !3203}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3081, file: !571, line: 124, baseType: !751, size: 32)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3081, file: !571, line: 125, baseType: !751, size: 32, offset: 32)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3081, file: !571, line: 135, baseType: !3080, size: 64, offset: 64)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3081, file: !571, line: 136, baseType: !154, size: 64, offset: 128)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3081, file: !571, line: 138, baseType: !764, size: 192, align: 64, offset: 192)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3081, file: !571, line: 140, baseType: !2037, size: 64, offset: 384)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3081, file: !571, line: 141, baseType: !7, size: 32, offset: 448)
!3090 = !DIDerivedType(tag: DW_TAG_member, scope: !3081, file: !571, line: 142, baseType: !3091, size: 256, offset: 512)
!3091 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3081, file: !571, line: 142, size: 256, elements: !3092)
!3092 = !{!3093, !3139, !3143}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3091, file: !571, line: 143, baseType: !3094, size: 192)
!3094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !571, line: 91, size: 192, elements: !3095)
!3095 = !{!3096, !3097, !3098}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3094, file: !571, line: 92, baseType: !142, size: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3094, file: !571, line: 94, baseType: !760, size: 64, offset: 64)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3094, file: !571, line: 100, baseType: !3099, size: 64, offset: 128)
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3100, size: 64)
!3100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !571, line: 180, size: 704, elements: !3101)
!3101 = !{!3102, !3103, !3104, !3111, !3112, !3113, !3137, !3138}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3100, file: !571, line: 182, baseType: !3080, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3100, file: !571, line: 183, baseType: !7, size: 32, offset: 64)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3100, file: !571, line: 186, baseType: !3105, size: 192, offset: 128)
!3105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3106, line: 19, size: 192, elements: !3107)
!3106 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3107 = !{!3108, !3109, !3110}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3105, file: !3106, line: 20, baseType: !743, size: 128)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3105, file: !3106, line: 21, baseType: !7, size: 32, offset: 128)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3105, file: !3106, line: 22, baseType: !7, size: 32, offset: 160)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3100, file: !571, line: 187, baseType: !367, size: 32, offset: 320)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3100, file: !571, line: 188, baseType: !367, size: 32, offset: 352)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3100, file: !571, line: 189, baseType: !3114, size: 64, offset: 384)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !571, line: 168, size: 320, elements: !3116)
!3116 = !{!3117, !3121, !3125, !3129, !3133}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3115, file: !571, line: 169, baseType: !3118, size: 64)
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3119, size: 64)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{!138, !666, !3099}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3115, file: !571, line: 171, baseType: !3122, size: 64, offset: 64)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{!138, !3080, !154, !268}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3115, file: !571, line: 173, baseType: !3126, size: 64, offset: 128)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = !DISubroutineType(types: !3128)
!3128 = !{!138, !3080}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3115, file: !571, line: 174, baseType: !3130, size: 64, offset: 192)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!138, !3080, !3080, !154}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3115, file: !571, line: 176, baseType: !3134, size: 64, offset: 256)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{!138, !666, !3080, !3099}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3100, file: !571, line: 192, baseType: !175, size: 128, offset: 448)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3100, file: !571, line: 194, baseType: !1392, size: 128, offset: 576)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3091, file: !571, line: 144, baseType: !3140, size: 64)
!3140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !571, line: 103, size: 64, elements: !3141)
!3141 = !{!3142}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3140, file: !571, line: 104, baseType: !3080, size: 64)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3091, file: !571, line: 145, baseType: !3144, size: 256)
!3144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !571, line: 107, size: 256, elements: !3145)
!3145 = !{!3146, !3194, !3197, !3198}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3144, file: !571, line: 108, baseType: !3147, size: 64)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3149)
!3149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !571, line: 217, size: 768, elements: !3150)
!3150 = !{!3151, !3171, !3175, !3176, !3177, !3178, !3179, !3183, !3184, !3185, !3186, !3190}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3149, file: !571, line: 222, baseType: !3152, size: 64)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{!138, !3155}
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !571, line: 197, size: 1088, elements: !3157)
!3157 = !{!3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3156, file: !571, line: 199, baseType: !3080, size: 64)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3156, file: !571, line: 200, baseType: !304, size: 64, offset: 64)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3156, file: !571, line: 201, baseType: !666, size: 64, offset: 128)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3156, file: !571, line: 202, baseType: !141, size: 64, offset: 192)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3156, file: !571, line: 205, baseType: !678, size: 192, offset: 256)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3156, file: !571, line: 206, baseType: !678, size: 192, offset: 448)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3156, file: !571, line: 207, baseType: !138, size: 32, offset: 640)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3156, file: !571, line: 208, baseType: !175, size: 128, offset: 704)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3156, file: !571, line: 209, baseType: !144, size: 64, offset: 832)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3156, file: !571, line: 211, baseType: !274, size: 64, offset: 896)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3156, file: !571, line: 212, baseType: !442, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3156, file: !571, line: 213, baseType: !442, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3156, file: !571, line: 214, baseType: !1007, size: 64, offset: 1024)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3149, file: !571, line: 223, baseType: !3172, size: 64, offset: 64)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = !DISubroutineType(types: !3174)
!3174 = !{null, !3155}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3149, file: !571, line: 236, baseType: !710, size: 64, offset: 128)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3149, file: !571, line: 238, baseType: !697, size: 64, offset: 192)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3149, file: !571, line: 239, baseType: !706, size: 64, offset: 256)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3149, file: !571, line: 240, baseType: !702, size: 64, offset: 320)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3149, file: !571, line: 242, baseType: !3180, size: 64, offset: 384)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{!259, !3155, !144, !274, !483}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3149, file: !571, line: 252, baseType: !274, size: 64, offset: 448)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3149, file: !571, line: 259, baseType: !442, size: 8, offset: 512)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3149, file: !571, line: 260, baseType: !3180, size: 64, offset: 576)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3149, file: !571, line: 263, baseType: !3187, size: 64, offset: 640)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{!2753, !3155, !2755}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3149, file: !571, line: 266, baseType: !3191, size: 64, offset: 704)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!138, !3155, !979}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3144, file: !571, line: 109, baseType: !3195, size: 64, offset: 64)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !571, line: 31, flags: DIFlagFwdDecl)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3144, file: !571, line: 110, baseType: !483, size: 64, offset: 128)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3144, file: !571, line: 111, baseType: !3080, size: 64, offset: 192)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3081, file: !571, line: 148, baseType: !141, size: 64, offset: 768)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3081, file: !571, line: 154, baseType: !373, size: 64, offset: 832)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3081, file: !571, line: 156, baseType: !269, size: 16, offset: 896)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3081, file: !571, line: 157, baseType: !268, size: 16, offset: 912)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3081, file: !571, line: 158, baseType: !3204, size: 64, offset: 960)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !571, line: 32, flags: DIFlagFwdDecl)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !170, file: !171, line: 71, baseType: !3207, size: 32, offset: 448)
!3207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3208, line: 19, size: 32, elements: !3209)
!3208 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3209 = !{!3210}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3207, file: !3208, line: 20, baseType: !1141, size: 32)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !170, file: !171, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !170, file: !171, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !170, file: !171, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !170, file: !171, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !170, file: !171, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !167, file: !60, line: 463, baseType: !166, size: 64, offset: 512)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !167, file: !60, line: 465, baseType: !3218, size: 64, offset: 576)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !60, line: 36, flags: DIFlagFwdDecl)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !167, file: !60, line: 467, baseType: !154, size: 64, offset: 640)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !167, file: !60, line: 468, baseType: !3222, size: 64, offset: 704)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3224)
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !60, line: 87, size: 384, elements: !3225)
!3225 = !{!3226, !3227, !3228, !3232, !3237, !3241}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3224, file: !60, line: 88, baseType: !154, size: 64)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3224, file: !60, line: 89, baseType: !280, size: 64, offset: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3224, file: !60, line: 90, baseType: !3229, size: 64, offset: 128)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = !DISubroutineType(types: !3231)
!3231 = !{!138, !166, !224}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3224, file: !60, line: 91, baseType: !3233, size: 64, offset: 192)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!144, !166, !3236, !3077, !3078}
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3224, file: !60, line: 93, baseType: !3238, size: 64, offset: 256)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{null, !166}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3224, file: !60, line: 95, baseType: !3242, size: 64, offset: 320)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3244)
!3244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !67, line: 278, size: 1472, elements: !3245)
!3245 = !{!3246, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3244, file: !67, line: 279, baseType: !3247, size: 64)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{!138, !166}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3244, file: !67, line: 280, baseType: !3238, size: 64, offset: 64)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3244, file: !67, line: 281, baseType: !3247, size: 64, offset: 128)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3244, file: !67, line: 282, baseType: !3247, size: 64, offset: 192)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3244, file: !67, line: 283, baseType: !3247, size: 64, offset: 256)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3244, file: !67, line: 284, baseType: !3247, size: 64, offset: 320)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3244, file: !67, line: 285, baseType: !3247, size: 64, offset: 384)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3244, file: !67, line: 286, baseType: !3247, size: 64, offset: 448)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3244, file: !67, line: 287, baseType: !3247, size: 64, offset: 512)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3244, file: !67, line: 288, baseType: !3247, size: 64, offset: 576)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3244, file: !67, line: 289, baseType: !3247, size: 64, offset: 640)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3244, file: !67, line: 290, baseType: !3247, size: 64, offset: 704)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3244, file: !67, line: 291, baseType: !3247, size: 64, offset: 768)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3244, file: !67, line: 292, baseType: !3247, size: 64, offset: 832)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3244, file: !67, line: 293, baseType: !3247, size: 64, offset: 896)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3244, file: !67, line: 294, baseType: !3247, size: 64, offset: 960)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3244, file: !67, line: 295, baseType: !3247, size: 64, offset: 1024)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3244, file: !67, line: 296, baseType: !3247, size: 64, offset: 1088)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3244, file: !67, line: 297, baseType: !3247, size: 64, offset: 1152)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3244, file: !67, line: 298, baseType: !3247, size: 64, offset: 1216)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3244, file: !67, line: 299, baseType: !3247, size: 64, offset: 1280)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3244, file: !67, line: 300, baseType: !3247, size: 64, offset: 1344)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3244, file: !67, line: 301, baseType: !3247, size: 64, offset: 1408)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !167, file: !60, line: 470, baseType: !3273, size: 64, offset: 768)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3275, line: 82, size: 1408, elements: !3276)
!3275 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3276 = !{!3277, !3278, !3279, !3280, !3281, !3282, !3283, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3358, !3361, !3362}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3274, file: !3275, line: 83, baseType: !154, size: 64)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3274, file: !3275, line: 84, baseType: !154, size: 64, offset: 64)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3274, file: !3275, line: 85, baseType: !166, size: 64, offset: 128)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3274, file: !3275, line: 86, baseType: !280, size: 64, offset: 192)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3274, file: !3275, line: 87, baseType: !280, size: 64, offset: 256)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3274, file: !3275, line: 88, baseType: !280, size: 64, offset: 320)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3274, file: !3275, line: 90, baseType: !3284, size: 64, offset: 384)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = !DISubroutineType(types: !3286)
!3286 = !{!138, !166, !3287}
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !54, line: 95, size: 1152, elements: !3289)
!3289 = !{!3290, !3291, !3292, !3293, !3294, !3295, !3296, !3309, !3322, !3323, !3324, !3325, !3326, !3334, !3335, !3336, !3337, !3338, !3339}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3288, file: !54, line: 96, baseType: !154, size: 64)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3288, file: !54, line: 97, baseType: !3273, size: 64, offset: 64)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3288, file: !54, line: 99, baseType: !585, size: 64, offset: 128)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3288, file: !54, line: 100, baseType: !154, size: 64, offset: 192)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3288, file: !54, line: 102, baseType: !442, size: 8, offset: 256)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3288, file: !54, line: 103, baseType: !53, size: 32, offset: 288)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3288, file: !54, line: 105, baseType: !3297, size: 64, offset: 320)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3299)
!3299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3300, line: 262, size: 1600, elements: !3301)
!3300 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3301 = !{!3302, !3303, !3304, !3308}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3299, file: !3300, line: 263, baseType: !2549, size: 256)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3299, file: !3300, line: 264, baseType: !2549, size: 256, offset: 256)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3299, file: !3300, line: 265, baseType: !3305, size: 1024, offset: 512)
!3305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 1024, elements: !3306)
!3306 = !{!3307}
!3307 = !DISubrange(count: 128)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3299, file: !3300, line: 266, baseType: !2037, size: 64, offset: 1536)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3288, file: !54, line: 106, baseType: !3310, size: 64, offset: 384)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3312)
!3312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3300, line: 210, size: 256, elements: !3313)
!3313 = !{!3314, !3318, !3320, !3321}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3312, file: !3300, line: 211, baseType: !3315, size: 72)
!3315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1264, size: 72, elements: !3316)
!3316 = !{!3317}
!3317 = !DISubrange(count: 9)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3312, file: !3300, line: 212, baseType: !3319, size: 64, offset: 128)
!3319 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3300, line: 14, baseType: !142)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3312, file: !3300, line: 213, baseType: !369, size: 32, offset: 192)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3312, file: !3300, line: 214, baseType: !369, size: 32, offset: 224)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3288, file: !54, line: 108, baseType: !3247, size: 64, offset: 448)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3288, file: !54, line: 109, baseType: !3238, size: 64, offset: 512)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3288, file: !54, line: 110, baseType: !3247, size: 64, offset: 576)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3288, file: !54, line: 111, baseType: !3238, size: 64, offset: 640)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3288, file: !54, line: 112, baseType: !3327, size: 64, offset: 704)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = !DISubroutineType(types: !3329)
!3329 = !{!138, !166, !3330}
!3330 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !67, line: 52, baseType: !3331)
!3331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !67, line: 50, size: 32, elements: !3332)
!3332 = !{!3333}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3331, file: !67, line: 51, baseType: !138, size: 32)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3288, file: !54, line: 113, baseType: !3247, size: 64, offset: 768)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3288, file: !54, line: 114, baseType: !280, size: 64, offset: 832)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3288, file: !54, line: 115, baseType: !280, size: 64, offset: 896)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3288, file: !54, line: 117, baseType: !3242, size: 64, offset: 960)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3288, file: !54, line: 118, baseType: !3238, size: 64, offset: 1024)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3288, file: !54, line: 120, baseType: !3340, size: 64, offset: 1088)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !54, line: 120, flags: DIFlagFwdDecl)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3274, file: !3275, line: 91, baseType: !3229, size: 64, offset: 448)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3274, file: !3275, line: 92, baseType: !3247, size: 64, offset: 512)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3274, file: !3275, line: 93, baseType: !3238, size: 64, offset: 576)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3274, file: !3275, line: 94, baseType: !3247, size: 64, offset: 640)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3274, file: !3275, line: 95, baseType: !3238, size: 64, offset: 704)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3274, file: !3275, line: 97, baseType: !3247, size: 64, offset: 768)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3274, file: !3275, line: 98, baseType: !3247, size: 64, offset: 832)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3274, file: !3275, line: 100, baseType: !3327, size: 64, offset: 896)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3274, file: !3275, line: 101, baseType: !3247, size: 64, offset: 960)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3274, file: !3275, line: 103, baseType: !3247, size: 64, offset: 1024)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3274, file: !3275, line: 105, baseType: !3247, size: 64, offset: 1088)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3274, file: !3275, line: 107, baseType: !3242, size: 64, offset: 1152)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3274, file: !3275, line: 109, baseType: !3355, size: 64, offset: 1216)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3357)
!3357 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3275, line: 109, flags: DIFlagFwdDecl)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3274, file: !3275, line: 111, baseType: !3359, size: 64, offset: 1280)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3275, line: 111, flags: DIFlagFwdDecl)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3274, file: !3275, line: 112, baseType: !600, offset: 1344)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3274, file: !3275, line: 114, baseType: !442, size: 8, offset: 1344)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !167, file: !60, line: 471, baseType: !3287, size: 64, offset: 832)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !167, file: !60, line: 473, baseType: !141, size: 64, offset: 896)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !167, file: !60, line: 475, baseType: !141, size: 64, offset: 960)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !167, file: !60, line: 480, baseType: !678, size: 192, offset: 1024)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !167, file: !60, line: 484, baseType: !3368, size: 576, offset: 1216)
!3368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !60, line: 361, size: 576, elements: !3369)
!3369 = !{!3370, !3371, !3372, !3373, !3374, !3375}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3368, file: !60, line: 362, baseType: !175, size: 128)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3368, file: !60, line: 363, baseType: !175, size: 128, offset: 128)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3368, file: !60, line: 364, baseType: !175, size: 128, offset: 256)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3368, file: !60, line: 365, baseType: !175, size: 128, offset: 384)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3368, file: !60, line: 366, baseType: !442, size: 8, offset: 512)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3368, file: !60, line: 367, baseType: !59, size: 32, offset: 544)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !167, file: !60, line: 485, baseType: !3377, size: 2304, offset: 1792)
!3377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !67, line: 565, size: 2304, elements: !3378)
!3378 = !{!3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3474, !3478}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3377, file: !67, line: 566, baseType: !3330, size: 32)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3377, file: !67, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3377, file: !67, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3377, file: !67, line: 569, baseType: !442, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3377, file: !67, line: 570, baseType: !442, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3377, file: !67, line: 571, baseType: !442, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3377, file: !67, line: 572, baseType: !442, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3377, file: !67, line: 573, baseType: !442, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3377, file: !67, line: 574, baseType: !442, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3377, file: !67, line: 575, baseType: !442, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3377, file: !67, line: 576, baseType: !442, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3377, file: !67, line: 577, baseType: !367, size: 32, offset: 64)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3377, file: !67, line: 578, baseType: !188, offset: 96)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3377, file: !67, line: 580, baseType: !175, size: 128, offset: 128)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3377, file: !67, line: 581, baseType: !1413, size: 192, offset: 256)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3377, file: !67, line: 582, baseType: !3395, size: 64, offset: 448)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3397, line: 43, size: 1472, elements: !3398)
!3397 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3398 = !{!3399, !3400, !3401, !3402, !3403, !3406, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3396, file: !3397, line: 44, baseType: !154, size: 64)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3396, file: !3397, line: 45, baseType: !138, size: 32, offset: 64)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3396, file: !3397, line: 46, baseType: !175, size: 128, offset: 128)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3396, file: !3397, line: 47, baseType: !188, offset: 256)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3396, file: !3397, line: 48, baseType: !3404, size: 64, offset: 256)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !67, line: 533, flags: DIFlagFwdDecl)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3396, file: !3397, line: 49, baseType: !3407, size: 320, offset: 320)
!3407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3408, line: 11, size: 320, elements: !3409)
!3408 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3409 = !{!3410, !3411, !3412, !3417}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3407, file: !3408, line: 16, baseType: !594, size: 128)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3407, file: !3408, line: 17, baseType: !142, size: 64, offset: 128)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3407, file: !3408, line: 18, baseType: !3413, size: 64, offset: 192)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = !DISubroutineType(types: !3415)
!3415 = !{null, !3416}
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3407, file: !3408, line: 19, baseType: !367, size: 32, offset: 256)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3396, file: !3397, line: 50, baseType: !142, size: 64, offset: 640)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3396, file: !3397, line: 51, baseType: !1211, size: 64, offset: 704)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3396, file: !3397, line: 52, baseType: !1211, size: 64, offset: 768)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3396, file: !3397, line: 53, baseType: !1211, size: 64, offset: 832)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3396, file: !3397, line: 54, baseType: !1211, size: 64, offset: 896)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3396, file: !3397, line: 55, baseType: !1211, size: 64, offset: 960)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3396, file: !3397, line: 56, baseType: !142, size: 64, offset: 1024)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3396, file: !3397, line: 57, baseType: !142, size: 64, offset: 1088)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3396, file: !3397, line: 58, baseType: !142, size: 64, offset: 1152)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3396, file: !3397, line: 59, baseType: !142, size: 64, offset: 1216)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3396, file: !3397, line: 60, baseType: !142, size: 64, offset: 1280)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3396, file: !3397, line: 61, baseType: !166, size: 64, offset: 1344)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3396, file: !3397, line: 62, baseType: !442, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3396, file: !3397, line: 63, baseType: !442, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3377, file: !67, line: 583, baseType: !442, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3377, file: !67, line: 584, baseType: !442, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3377, file: !67, line: 585, baseType: !442, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3377, file: !67, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3377, file: !67, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3377, file: !67, line: 592, baseType: !1203, size: 512, offset: 576)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3377, file: !67, line: 593, baseType: !373, size: 64, offset: 1088)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3377, file: !67, line: 594, baseType: !1867, size: 256, offset: 1152)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3377, file: !67, line: 595, baseType: !1392, size: 128, offset: 1408)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3377, file: !67, line: 596, baseType: !3404, size: 64, offset: 1536)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3377, file: !67, line: 597, baseType: !751, size: 32, offset: 1600)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3377, file: !67, line: 598, baseType: !751, size: 32, offset: 1632)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3377, file: !67, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3377, file: !67, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3377, file: !67, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3377, file: !67, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3377, file: !67, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3377, file: !67, line: 604, baseType: !442, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3377, file: !67, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3377, file: !67, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3377, file: !67, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3377, file: !67, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3377, file: !67, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3377, file: !67, line: 610, baseType: !7, size: 32, offset: 1696)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3377, file: !67, line: 611, baseType: !66, size: 32, offset: 1728)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3377, file: !67, line: 612, baseType: !74, size: 32, offset: 1760)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3377, file: !67, line: 613, baseType: !138, size: 32, offset: 1792)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3377, file: !67, line: 614, baseType: !138, size: 32, offset: 1824)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3377, file: !67, line: 615, baseType: !373, size: 64, offset: 1856)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3377, file: !67, line: 616, baseType: !373, size: 64, offset: 1920)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3377, file: !67, line: 617, baseType: !373, size: 64, offset: 1984)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3377, file: !67, line: 618, baseType: !373, size: 64, offset: 2048)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3377, file: !67, line: 620, baseType: !3465, size: 64, offset: 2112)
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !67, line: 536, size: 256, elements: !3467)
!3467 = !{!3468, !3469, !3470, !3471}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3466, file: !67, line: 537, baseType: !188)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3466, file: !67, line: 538, baseType: !7, size: 32)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3466, file: !67, line: 540, baseType: !175, size: 128, offset: 64)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3466, file: !67, line: 543, baseType: !3472, size: 64, offset: 192)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !67, line: 534, flags: DIFlagFwdDecl)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3377, file: !67, line: 621, baseType: !3475, size: 64, offset: 2176)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = !DISubroutineType(types: !3477)
!3477 = !{null, !166, !1355}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3377, file: !67, line: 622, baseType: !3479, size: 64, offset: 2240)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !67, line: 622, flags: DIFlagFwdDecl)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !167, file: !60, line: 486, baseType: !3482, size: 64, offset: 4096)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !67, line: 642, size: 1792, elements: !3484)
!3484 = !{!3485, !3486, !3487, !3491, !3492, !3493}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3483, file: !67, line: 643, baseType: !3244, size: 1472)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3483, file: !67, line: 644, baseType: !3247, size: 64, offset: 1472)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3483, file: !67, line: 645, baseType: !3488, size: 64, offset: 1536)
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = !DISubroutineType(types: !3490)
!3490 = !{null, !166, !442}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3483, file: !67, line: 646, baseType: !3247, size: 64, offset: 1600)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3483, file: !67, line: 647, baseType: !3238, size: 64, offset: 1664)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3483, file: !67, line: 648, baseType: !3238, size: 64, offset: 1728)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !167, file: !60, line: 493, baseType: !3495, size: 64, offset: 4160)
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !81, line: 162, size: 1088, elements: !3497)
!3497 = !{!3498, !3499, !3500, !3772, !3773, !3774, !3775, !3776, !3777, !3884, !3885, !3886, !3887, !3888, !3889, !3890}
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3496, file: !81, line: 163, baseType: !175, size: 128)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3496, file: !81, line: 164, baseType: !154, size: 64, offset: 128)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3496, file: !81, line: 165, baseType: !3501, size: 64, offset: 192)
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3502, size: 64)
!3502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3503)
!3503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !81, line: 105, size: 640, elements: !3504)
!3504 = !{!3505, !3623, !3634, !3639, !3643, !3650, !3654, !3658, !3764, !3768}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3503, file: !81, line: 106, baseType: !3506, size: 64)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!138, !3495, !3509, !80}
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3511, line: 51, size: 1344, elements: !3512)
!3511 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3512 = !{!3513, !3514, !3516, !3517, !3607, !3616, !3617, !3618, !3619, !3620, !3621, !3622}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3510, file: !3511, line: 52, baseType: !154, size: 64)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3510, file: !3511, line: 53, baseType: !3515, size: 32, offset: 64)
!3515 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3511, line: 28, baseType: !367)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3510, file: !3511, line: 54, baseType: !154, size: 64, offset: 128)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3510, file: !3511, line: 55, baseType: !3518, size: 192, offset: 192)
!3518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3519, line: 17, size: 192, elements: !3520)
!3519 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3520 = !{!3521, !3523, !3606}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3518, file: !3519, line: 18, baseType: !3522, size: 64)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3518, file: !3519, line: 19, baseType: !3524, size: 64, offset: 64)
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3526)
!3526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3519, line: 110, size: 1152, elements: !3527)
!3527 = !{!3528, !3532, !3536, !3542, !3548, !3552, !3556, !3561, !3565, !3566, !3570, !3574, !3578, !3589, !3590, !3591, !3592, !3602}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3526, file: !3519, line: 111, baseType: !3529, size: 64)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = !DISubroutineType(types: !3531)
!3531 = !{!3522, !3522}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3526, file: !3519, line: 112, baseType: !3533, size: 64, offset: 64)
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = !DISubroutineType(types: !3535)
!3535 = !{null, !3522}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3526, file: !3519, line: 113, baseType: !3537, size: 64, offset: 128)
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = !DISubroutineType(types: !3539)
!3539 = !{!442, !3540}
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3518)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3526, file: !3519, line: 114, baseType: !3543, size: 64, offset: 192)
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = !DISubroutineType(types: !3545)
!3545 = !{!2037, !3540, !3546}
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3526, file: !3519, line: 116, baseType: !3549, size: 64, offset: 256)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DISubroutineType(types: !3551)
!3551 = !{!442, !3540, !154}
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3526, file: !3519, line: 118, baseType: !3553, size: 64, offset: 320)
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3554 = !DISubroutineType(types: !3555)
!3555 = !{!138, !3540, !154, !7, !141, !274}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3526, file: !3519, line: 123, baseType: !3557, size: 64, offset: 384)
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = !DISubroutineType(types: !3559)
!3559 = !{!138, !3540, !154, !3560, !274}
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3526, file: !3519, line: 126, baseType: !3562, size: 64, offset: 448)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DISubroutineType(types: !3564)
!3564 = !{!154, !3540}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3526, file: !3519, line: 127, baseType: !3562, size: 64, offset: 512)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3526, file: !3519, line: 128, baseType: !3567, size: 64, offset: 576)
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!3568 = !DISubroutineType(types: !3569)
!3569 = !{!3522, !3540}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3526, file: !3519, line: 130, baseType: !3571, size: 64, offset: 640)
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3572 = !DISubroutineType(types: !3573)
!3573 = !{!3522, !3540, !3522}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3526, file: !3519, line: 133, baseType: !3575, size: 64, offset: 704)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = !DISubroutineType(types: !3577)
!3577 = !{!3522, !3540, !154}
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3526, file: !3519, line: 135, baseType: !3579, size: 64, offset: 768)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3580 = !DISubroutineType(types: !3581)
!3581 = !{!138, !3540, !154, !154, !7, !7, !3582}
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3519, line: 43, size: 640, elements: !3584)
!3584 = !{!3585, !3586, !3587}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3583, file: !3519, line: 44, baseType: !3522, size: 64)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3583, file: !3519, line: 45, baseType: !7, size: 32, offset: 64)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3583, file: !3519, line: 46, baseType: !3588, size: 512, offset: 128)
!3588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !373, size: 512, elements: !1241)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3526, file: !3519, line: 140, baseType: !3571, size: 64, offset: 832)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3526, file: !3519, line: 143, baseType: !3567, size: 64, offset: 896)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3526, file: !3519, line: 145, baseType: !3529, size: 64, offset: 960)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3526, file: !3519, line: 146, baseType: !3593, size: 64, offset: 1024)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = !DISubroutineType(types: !3595)
!3595 = !{!138, !3540, !3596}
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3519, line: 29, size: 128, elements: !3598)
!3598 = !{!3599, !3600, !3601}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3597, file: !3519, line: 30, baseType: !7, size: 32)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3597, file: !3519, line: 31, baseType: !7, size: 32, offset: 32)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3597, file: !3519, line: 32, baseType: !3540, size: 64, offset: 64)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3526, file: !3519, line: 148, baseType: !3603, size: 64, offset: 1088)
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!3604 = !DISubroutineType(types: !3605)
!3605 = !{!138, !3540, !166}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3518, file: !3519, line: 20, baseType: !166, size: 64, offset: 128)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3510, file: !3511, line: 57, baseType: !3608, size: 64, offset: 384)
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3511, line: 31, size: 704, elements: !3610)
!3610 = !{!3611, !3612, !3613, !3614, !3615}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3609, file: !3511, line: 32, baseType: !144, size: 64)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3609, file: !3511, line: 33, baseType: !138, size: 32, offset: 64)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3609, file: !3511, line: 34, baseType: !141, size: 64, offset: 128)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3609, file: !3511, line: 35, baseType: !3608, size: 64, offset: 192)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3609, file: !3511, line: 43, baseType: !295, size: 448, offset: 256)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3510, file: !3511, line: 58, baseType: !3608, size: 64, offset: 448)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3510, file: !3511, line: 59, baseType: !3509, size: 64, offset: 512)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3510, file: !3511, line: 60, baseType: !3509, size: 64, offset: 576)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3510, file: !3511, line: 61, baseType: !3509, size: 64, offset: 640)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3510, file: !3511, line: 63, baseType: !170, size: 512, offset: 704)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3510, file: !3511, line: 65, baseType: !142, size: 64, offset: 1216)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3510, file: !3511, line: 66, baseType: !141, size: 64, offset: 1280)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3503, file: !81, line: 108, baseType: !3624, size: 64, offset: 64)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{!138, !3495, !3627, !80}
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !81, line: 63, size: 640, elements: !3629)
!3629 = !{!3630, !3631, !3632}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3628, file: !81, line: 64, baseType: !3522, size: 64)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3628, file: !81, line: 65, baseType: !138, size: 32, offset: 64)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3628, file: !81, line: 66, baseType: !3633, size: 512, offset: 96)
!3633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !367, size: 512, elements: !1644)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3503, file: !81, line: 110, baseType: !3635, size: 64, offset: 128)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = !DISubroutineType(types: !3637)
!3637 = !{!138, !3495, !7, !3638}
!3638 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !140, line: 164, baseType: !142)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3503, file: !81, line: 111, baseType: !3640, size: 64, offset: 192)
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = !DISubroutineType(types: !3642)
!3642 = !{null, !3495, !7}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3503, file: !81, line: 112, baseType: !3644, size: 64, offset: 256)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = !DISubroutineType(types: !3646)
!3646 = !{!138, !3495, !3509, !3647, !7, !3649, !2532}
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !367)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3503, file: !81, line: 117, baseType: !3651, size: 64, offset: 320)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!138, !3495, !7, !7, !141}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3503, file: !81, line: 119, baseType: !3655, size: 64, offset: 384)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DISubroutineType(types: !3657)
!3657 = !{null, !3495, !7, !7}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3503, file: !81, line: 121, baseType: !3659, size: 64, offset: 448)
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = !DISubroutineType(types: !3661)
!3661 = !{!138, !3495, !3662, !442}
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !95, line: 175, size: 448, elements: !3664)
!3664 = !{!3665, !3666, !3667, !3668, !3680, !3761, !3762, !3763}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3663, file: !95, line: 176, baseType: !367, size: 32)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !3663, file: !95, line: 177, baseType: !7, size: 32, offset: 32)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq", scope: !3663, file: !95, line: 178, baseType: !142, size: 64, offset: 64)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !3663, file: !95, line: 179, baseType: !3669, size: 64, offset: 128)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_common_data", file: !95, line: 145, size: 256, elements: !3671)
!3671 = !{!3672, !3673, !3674, !3677}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "state_use_accessors", scope: !3670, file: !95, line: 146, baseType: !7, size: 32)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "handler_data", scope: !3670, file: !95, line: 150, baseType: !141, size: 64, offset: 64)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "msi_desc", scope: !3670, file: !95, line: 151, baseType: !3675, size: 64, offset: 128)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_desc", file: !95, line: 127, flags: DIFlagFwdDecl)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !3670, file: !95, line: 152, baseType: !3678, size: 64, offset: 192)
!3678 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !1277, line: 756, baseType: !3679)
!3679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1278, size: 64, elements: !1282)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !3663, file: !95, line: 180, baseType: !3681, size: 64, offset: 192)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip", file: !95, line: 503, size: 2304, elements: !3683)
!3683 = !{!3684, !3685, !3686, !3690, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3707, !3711, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3728, !3729, !3730, !3736, !3737, !3742, !3746, !3750, !3754, !3758, !3759, !3760}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "parent_device", scope: !3682, file: !95, line: 504, baseType: !166, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3682, file: !95, line: 505, baseType: !154, size: 64, offset: 64)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "irq_startup", scope: !3682, file: !95, line: 506, baseType: !3687, size: 64, offset: 128)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!7, !3662}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "irq_shutdown", scope: !3682, file: !95, line: 507, baseType: !3691, size: 64, offset: 192)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{null, !3662}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "irq_enable", scope: !3682, file: !95, line: 508, baseType: !3691, size: 64, offset: 256)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "irq_disable", scope: !3682, file: !95, line: 509, baseType: !3691, size: 64, offset: 320)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "irq_ack", scope: !3682, file: !95, line: 511, baseType: !3691, size: 64, offset: 384)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !3682, file: !95, line: 512, baseType: !3691, size: 64, offset: 448)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask_ack", scope: !3682, file: !95, line: 513, baseType: !3691, size: 64, offset: 512)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "irq_unmask", scope: !3682, file: !95, line: 514, baseType: !3691, size: 64, offset: 576)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "irq_eoi", scope: !3682, file: !95, line: 515, baseType: !3691, size: 64, offset: 640)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_affinity", scope: !3682, file: !95, line: 517, baseType: !3702, size: 64, offset: 704)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{!138, !3662, !3705, !442}
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1278)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "irq_retrigger", scope: !3682, file: !95, line: 518, baseType: !3708, size: 64, offset: 768)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DISubroutineType(types: !3710)
!3710 = !{!138, !3662}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_type", scope: !3682, file: !95, line: 519, baseType: !3712, size: 64, offset: 832)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = !DISubroutineType(types: !3714)
!3714 = !{!138, !3662, !7}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_wake", scope: !3682, file: !95, line: 520, baseType: !3712, size: 64, offset: 896)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_lock", scope: !3682, file: !95, line: 522, baseType: !3691, size: 64, offset: 960)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_sync_unlock", scope: !3682, file: !95, line: 523, baseType: !3691, size: 64, offset: 1024)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cpu_online", scope: !3682, file: !95, line: 525, baseType: !3691, size: 64, offset: 1088)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cpu_offline", scope: !3682, file: !95, line: 526, baseType: !3691, size: 64, offset: 1152)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "irq_suspend", scope: !3682, file: !95, line: 528, baseType: !3691, size: 64, offset: 1216)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "irq_resume", scope: !3682, file: !95, line: 529, baseType: !3691, size: 64, offset: 1280)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pm_shutdown", scope: !3682, file: !95, line: 530, baseType: !3691, size: 64, offset: 1344)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "irq_calc_mask", scope: !3682, file: !95, line: 532, baseType: !3691, size: 64, offset: 1408)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "irq_print_chip", scope: !3682, file: !95, line: 534, baseType: !3725, size: 64, offset: 1472)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{null, !3662, !666}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "irq_request_resources", scope: !3682, file: !95, line: 535, baseType: !3708, size: 64, offset: 1536)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "irq_release_resources", scope: !3682, file: !95, line: 536, baseType: !3691, size: 64, offset: 1600)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "irq_compose_msi_msg", scope: !3682, file: !95, line: 538, baseType: !3731, size: 64, offset: 1664)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{null, !3662, !3734}
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_msg", file: !95, line: 29, flags: DIFlagFwdDecl)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "irq_write_msi_msg", scope: !3682, file: !95, line: 539, baseType: !3731, size: 64, offset: 1728)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get_irqchip_state", scope: !3682, file: !95, line: 541, baseType: !3738, size: 64, offset: 1792)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!138, !3662, !3741, !888}
!3741 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqchip_irq_state", file: !95, line: 31, flags: DIFlagFwdDecl)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_irqchip_state", scope: !3682, file: !95, line: 542, baseType: !3743, size: 64, offset: 1856)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{!138, !3662, !3741, !442}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_vcpu_affinity", scope: !3682, file: !95, line: 544, baseType: !3747, size: 64, offset: 1920)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{!138, !3662, !141}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_single", scope: !3682, file: !95, line: 546, baseType: !3751, size: 64, offset: 1984)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{null, !3662, !7}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_mask", scope: !3682, file: !95, line: 547, baseType: !3755, size: 64, offset: 2048)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{null, !3662, !3705}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_setup", scope: !3682, file: !95, line: 549, baseType: !3708, size: 64, offset: 2112)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_teardown", scope: !3682, file: !95, line: 550, baseType: !3691, size: 64, offset: 2176)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3682, file: !95, line: 552, baseType: !142, size: 64, offset: 2240)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3663, file: !95, line: 181, baseType: !3495, size: 64, offset: 256)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "parent_data", scope: !3663, file: !95, line: 183, baseType: !3662, size: 64, offset: 320)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "chip_data", scope: !3663, file: !95, line: 185, baseType: !141, size: 64, offset: 384)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3503, file: !81, line: 122, baseType: !3765, size: 64, offset: 512)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DISubroutineType(types: !3767)
!3767 = !{null, !3495, !3662}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3503, file: !81, line: 123, baseType: !3769, size: 64, offset: 576)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!138, !3495, !3627, !3649, !2532}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3496, file: !81, line: 166, baseType: !141, size: 64, offset: 256)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3496, file: !81, line: 167, baseType: !7, size: 32, offset: 320)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3496, file: !81, line: 168, baseType: !7, size: 32, offset: 352)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3496, file: !81, line: 171, baseType: !3522, size: 64, offset: 384)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3496, file: !81, line: 172, baseType: !80, size: 32, offset: 448)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3496, file: !81, line: 173, baseType: !3778, size: 64, offset: 512)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !95, line: 1101, size: 192, elements: !3780)
!3780 = !{!3781, !3782, !3783, !3784, !3785, !3786}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_per_chip", scope: !3779, file: !95, line: 1102, baseType: !7, size: 32)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "num_chips", scope: !3779, file: !95, line: 1103, baseType: !7, size: 32, offset: 32)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_clear", scope: !3779, file: !95, line: 1104, baseType: !7, size: 32, offset: 64)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_set", scope: !3779, file: !95, line: 1105, baseType: !7, size: 32, offset: 96)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "gc_flags", scope: !3779, file: !95, line: 1106, baseType: !94, size: 32, offset: 128)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3779, file: !95, line: 1107, baseType: !3787, offset: 192)
!3787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3788, elements: !2241)
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_generic", file: !95, line: 1051, size: 960, elements: !3790)
!3790 = !{!3791, !3792, !3793, !3797, !3801, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3789, file: !95, line: 1052, baseType: !777)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "reg_base", scope: !3789, file: !95, line: 1053, baseType: !141, size: 64)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "reg_readl", scope: !3789, file: !95, line: 1054, baseType: !3794, size: 64, offset: 64)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!367, !141}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "reg_writel", scope: !3789, file: !95, line: 1055, baseType: !3798, size: 64, offset: 128)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{null, !367, !141}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3789, file: !95, line: 1056, baseType: !3802, size: 64, offset: 192)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{null, !3788}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3789, file: !95, line: 1057, baseType: !3802, size: 64, offset: 256)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "irq_base", scope: !3789, file: !95, line: 1058, baseType: !7, size: 32, offset: 320)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cnt", scope: !3789, file: !95, line: 1059, baseType: !7, size: 32, offset: 352)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !3789, file: !95, line: 1060, baseType: !367, size: 32, offset: 384)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "type_cache", scope: !3789, file: !95, line: 1061, baseType: !367, size: 32, offset: 416)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "polarity_cache", scope: !3789, file: !95, line: 1062, baseType: !367, size: 32, offset: 448)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "wake_enabled", scope: !3789, file: !95, line: 1063, baseType: !367, size: 32, offset: 480)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "wake_active", scope: !3789, file: !95, line: 1064, baseType: !367, size: 32, offset: 512)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "num_ct", scope: !3789, file: !95, line: 1065, baseType: !7, size: 32, offset: 544)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3789, file: !95, line: 1066, baseType: !141, size: 64, offset: 576)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !3789, file: !95, line: 1067, baseType: !142, size: 64, offset: 640)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !3789, file: !95, line: 1068, baseType: !142, size: 64, offset: 704)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3789, file: !95, line: 1069, baseType: !3495, size: 64, offset: 768)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3789, file: !95, line: 1070, baseType: !175, size: 128, offset: 832)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "chip_types", scope: !3789, file: !95, line: 1071, baseType: !3820, offset: 960)
!3820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3821, elements: !2241)
!3821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_type", file: !95, line: 1009, size: 2944, elements: !3822)
!3822 = !{!3823, !3824, !3834, !3881, !3882, !3883}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !3821, file: !95, line: 1010, baseType: !3682, size: 2304)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3821, file: !95, line: 1011, baseType: !3825, size: 448, offset: 2304)
!3825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_regs", file: !95, line: 986, size: 448, elements: !3826)
!3826 = !{!3827, !3828, !3829, !3830, !3831, !3832, !3833}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !3825, file: !95, line: 987, baseType: !142, size: 64)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !3825, file: !95, line: 988, baseType: !142, size: 64, offset: 64)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3825, file: !95, line: 989, baseType: !142, size: 64, offset: 128)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "ack", scope: !3825, file: !95, line: 990, baseType: !142, size: 64, offset: 192)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "eoi", scope: !3825, file: !95, line: 991, baseType: !142, size: 64, offset: 256)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3825, file: !95, line: 992, baseType: !142, size: 64, offset: 320)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !3825, file: !95, line: 993, baseType: !142, size: 64, offset: 384)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !3821, file: !95, line: 1012, baseType: !3835, size: 64, offset: 2752)
!3835 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_flow_handler_t", file: !3836, line: 12, baseType: !3837)
!3836 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = !DISubroutineType(types: !3839)
!3839 = !{null, !3840}
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_desc", file: !3842, line: 55, size: 2880, elements: !3843)
!3842 = !DIFile(filename: "./include/linux/irqdesc.h", directory: "/home/lizy2001/genbc/linux")
!3843 = !{!3844, !3845, !3846, !3847, !3848, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3875, !3876, !3877, !3878, !3879, !3880}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "irq_common_data", scope: !3841, file: !3842, line: 56, baseType: !3670, size: 256)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "irq_data", scope: !3841, file: !3842, line: 57, baseType: !3663, size: 448, offset: 256)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "kstat_irqs", scope: !3841, file: !3842, line: 58, baseType: !2532, size: 64, offset: 704)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "handle_irq", scope: !3841, file: !3842, line: 59, baseType: !3835, size: 64, offset: 768)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3841, file: !3842, line: 60, baseType: !3849, size: 64, offset: 832)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DICompositeType(tag: DW_TAG_structure_type, name: "irqaction", file: !3842, line: 60, flags: DIFlagFwdDecl)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "status_use_accessors", scope: !3841, file: !3842, line: 61, baseType: !7, size: 32, offset: 896)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "core_internal_state__do_not_mess_with_it", scope: !3841, file: !3842, line: 62, baseType: !7, size: 32, offset: 928)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3841, file: !3842, line: 63, baseType: !7, size: 32, offset: 960)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "wake_depth", scope: !3841, file: !3842, line: 64, baseType: !7, size: 32, offset: 992)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "tot_count", scope: !3841, file: !3842, line: 65, baseType: !7, size: 32, offset: 1024)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !3841, file: !3842, line: 66, baseType: !7, size: 32, offset: 1056)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "last_unhandled", scope: !3841, file: !3842, line: 67, baseType: !142, size: 64, offset: 1088)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_unhandled", scope: !3841, file: !3842, line: 68, baseType: !7, size: 32, offset: 1152)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled", scope: !3841, file: !3842, line: 69, baseType: !751, size: 32, offset: 1184)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled_last", scope: !3841, file: !3842, line: 70, baseType: !138, size: 32, offset: 1216)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3841, file: !3842, line: 71, baseType: !777, offset: 1248)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_enabled", scope: !3841, file: !3842, line: 72, baseType: !3863, size: 64, offset: 1280)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_affinity", scope: !3841, file: !3842, line: 73, baseType: !3705, size: 64, offset: 1344)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "threads_oneshot", scope: !3841, file: !3842, line: 81, baseType: !142, size: 64, offset: 1408)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "threads_active", scope: !3841, file: !3842, line: 82, baseType: !751, size: 32, offset: 1472)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_threads", scope: !3841, file: !3842, line: 83, baseType: !1392, size: 128, offset: 1536)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "nr_actions", scope: !3841, file: !3842, line: 85, baseType: !7, size: 32, offset: 1664)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "no_suspend_depth", scope: !3841, file: !3842, line: 86, baseType: !7, size: 32, offset: 1696)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "cond_suspend_depth", scope: !3841, file: !3842, line: 87, baseType: !7, size: 32, offset: 1728)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "force_resume_depth", scope: !3841, file: !3842, line: 88, baseType: !7, size: 32, offset: 1760)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3841, file: !3842, line: 91, baseType: !3873, size: 64, offset: 1792)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !3842, line: 14, flags: DIFlagFwdDecl)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3841, file: !3842, line: 98, baseType: !317, size: 128, align: 64, offset: 1856)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3841, file: !3842, line: 99, baseType: !170, size: 512, offset: 1984)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "request_mutex", scope: !3841, file: !3842, line: 101, baseType: !678, size: 192, offset: 2496)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "parent_irq", scope: !3841, file: !3842, line: 102, baseType: !138, size: 32, offset: 2688)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3841, file: !3842, line: 103, baseType: !585, size: 64, offset: 2752)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3841, file: !3842, line: 104, baseType: !154, size: 64, offset: 2816)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3821, file: !95, line: 1013, baseType: !367, size: 32, offset: 2816)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache_priv", scope: !3821, file: !95, line: 1014, baseType: !367, size: 32, offset: 2848)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !3821, file: !95, line: 1015, baseType: !1326, size: 64, offset: 2880)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3496, file: !81, line: 175, baseType: !3495, size: 64, offset: 576)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3496, file: !81, line: 182, baseType: !3638, size: 64, offset: 640)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3496, file: !81, line: 183, baseType: !7, size: 32, offset: 704)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3496, file: !81, line: 184, baseType: !7, size: 32, offset: 736)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3496, file: !81, line: 185, baseType: !743, size: 128, offset: 768)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3496, file: !81, line: 186, baseType: !678, size: 192, offset: 896)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3496, file: !81, line: 187, baseType: !3891, offset: 1088)
!3891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2241)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !167, file: !60, line: 499, baseType: !175, size: 128, offset: 4224)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !167, file: !60, line: 502, baseType: !3894, size: 64, offset: 4352)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3896)
!3896 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !60, line: 502, flags: DIFlagFwdDecl)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !167, file: !60, line: 504, baseType: !3898, size: 64, offset: 4416)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !167, file: !60, line: 505, baseType: !373, size: 64, offset: 4480)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !167, file: !60, line: 510, baseType: !373, size: 64, offset: 4544)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !167, file: !60, line: 511, baseType: !3902, size: 64, offset: 4608)
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3904)
!3904 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !60, line: 511, flags: DIFlagFwdDecl)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !167, file: !60, line: 513, baseType: !3906, size: 64, offset: 4672)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !60, line: 288, size: 128, elements: !3908)
!3908 = !{!3909, !3910}
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3907, file: !60, line: 293, baseType: !7, size: 32)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3907, file: !60, line: 294, baseType: !142, size: 64, offset: 64)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !167, file: !60, line: 515, baseType: !175, size: 128, offset: 4736)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !167, file: !60, line: 526, baseType: !3913, offset: 4864)
!3913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3914, line: 5, elements: !202)
!3914 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !167, file: !60, line: 528, baseType: !3509, size: 64, offset: 4864)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !167, file: !60, line: 529, baseType: !3522, size: 64, offset: 4928)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !167, file: !60, line: 534, baseType: !465, size: 32, offset: 4992)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !167, file: !60, line: 535, baseType: !367, size: 32, offset: 5024)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !167, file: !60, line: 537, baseType: !188, offset: 5056)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !167, file: !60, line: 538, baseType: !175, size: 128, offset: 5056)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !167, file: !60, line: 540, baseType: !3922, size: 64, offset: 5184)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3924, line: 54, size: 960, elements: !3925)
!3924 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3925 = !{!3926, !3927, !3928, !3929, !3930, !3931, !3932, !3936, !3940, !3941, !3942, !3943, !3947, !3951, !3952}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3923, file: !3924, line: 55, baseType: !154, size: 64)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3923, file: !3924, line: 56, baseType: !585, size: 64, offset: 64)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3923, file: !3924, line: 58, baseType: !280, size: 64, offset: 128)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3923, file: !3924, line: 59, baseType: !280, size: 64, offset: 192)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3923, file: !3924, line: 60, baseType: !181, size: 64, offset: 256)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3923, file: !3924, line: 62, baseType: !3229, size: 64, offset: 320)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3923, file: !3924, line: 63, baseType: !3933, size: 64, offset: 384)
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3934, size: 64)
!3934 = !DISubroutineType(types: !3935)
!3935 = !{!144, !166, !3236}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3923, file: !3924, line: 65, baseType: !3937, size: 64, offset: 448)
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3938, size: 64)
!3938 = !DISubroutineType(types: !3939)
!3939 = !{null, !3922}
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3923, file: !3924, line: 66, baseType: !3238, size: 64, offset: 512)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3923, file: !3924, line: 68, baseType: !3247, size: 64, offset: 576)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3923, file: !3924, line: 70, baseType: !3045, size: 64, offset: 640)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3923, file: !3924, line: 71, baseType: !3944, size: 64, offset: 704)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{!2037, !166}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3923, file: !3924, line: 73, baseType: !3948, size: 64, offset: 768)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{null, !166, !3077, !3078}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3923, file: !3924, line: 75, baseType: !3242, size: 64, offset: 832)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3923, file: !3924, line: 77, baseType: !3359, size: 64, offset: 896)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !167, file: !60, line: 541, baseType: !280, size: 64, offset: 5248)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !167, file: !60, line: 543, baseType: !3238, size: 64, offset: 5312)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !167, file: !60, line: 544, baseType: !3956, size: 64, offset: 5376)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !60, line: 45, flags: DIFlagFwdDecl)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !167, file: !60, line: 545, baseType: !3959, size: 64, offset: 5440)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !60, line: 47, flags: DIFlagFwdDecl)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !167, file: !60, line: 547, baseType: !442, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !167, file: !60, line: 548, baseType: !442, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !167, file: !60, line: 549, baseType: !442, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !167, file: !60, line: 550, baseType: !442, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3965 = !DILocalVariable(name: "dev", arg: 1, scope: !163, file: !3, line: 59, type: !166)
!3966 = !DILocation(line: 59, column: 38, scope: !163)
!3967 = !DILocalVariable(name: "con_id", arg: 2, scope: !163, file: !3, line: 59, type: !154)
!3968 = !DILocation(line: 59, column: 55, scope: !163)
!3969 = !DILocalVariable(name: "ret", scope: !163, file: !3, line: 61, type: !138)
!3970 = !DILocation(line: 61, column: 6, scope: !163)
!3971 = !DILocalVariable(name: "propname", scope: !163, file: !3, line: 62, type: !2549)
!3972 = !DILocation(line: 62, column: 7, scope: !163)
!3973 = !DILocalVariable(name: "i", scope: !163, file: !3, line: 63, type: !7)
!3974 = !DILocation(line: 63, column: 15, scope: !163)
!3975 = !DILocation(line: 65, column: 33, scope: !163)
!3976 = !DILocation(line: 65, column: 38, scope: !163)
!3977 = !DILocation(line: 65, column: 8, scope: !163)
!3978 = !DILocation(line: 65, column: 6, scope: !163)
!3979 = !DILocation(line: 66, column: 6, scope: !3980)
!3980 = distinct !DILexicalBlock(scope: !163, file: !3, line: 66, column: 6)
!3981 = !DILocation(line: 66, column: 10, scope: !3980)
!3982 = !DILocation(line: 66, column: 6, scope: !163)
!3983 = !DILocation(line: 67, column: 10, scope: !3980)
!3984 = !DILocation(line: 67, column: 3, scope: !3980)
!3985 = !DILocation(line: 69, column: 9, scope: !3986)
!3986 = distinct !DILexicalBlock(scope: !163, file: !3, line: 69, column: 2)
!3987 = !DILocation(line: 69, column: 7, scope: !3986)
!3988 = !DILocation(line: 69, column: 14, scope: !3989)
!3989 = distinct !DILexicalBlock(scope: !3986, file: !3, line: 69, column: 2)
!3990 = !DILocation(line: 69, column: 16, scope: !3989)
!3991 = !DILocation(line: 69, column: 2, scope: !3986)
!3992 = !DILocation(line: 70, column: 7, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3994, file: !3, line: 70, column: 7)
!3994 = distinct !DILexicalBlock(scope: !3989, file: !3, line: 69, column: 50)
!3995 = !DILocation(line: 70, column: 7, scope: !3994)
!3996 = !DILocation(line: 71, column: 13, scope: !3993)
!3997 = !DILocation(line: 72, column: 6, scope: !3993)
!3998 = !DILocation(line: 72, column: 28, scope: !3993)
!3999 = !DILocation(line: 72, column: 14, scope: !3993)
!4000 = !DILocation(line: 71, column: 4, scope: !3993)
!4001 = !DILocation(line: 74, column: 13, scope: !3993)
!4002 = !DILocation(line: 75, column: 20, scope: !3993)
!4003 = !DILocation(line: 75, column: 6, scope: !3993)
!4004 = !DILocation(line: 74, column: 4, scope: !3993)
!4005 = !DILocation(line: 77, column: 29, scope: !3994)
!4006 = !DILocation(line: 77, column: 34, scope: !3994)
!4007 = !DILocation(line: 77, column: 43, scope: !3994)
!4008 = !DILocation(line: 77, column: 9, scope: !3994)
!4009 = !DILocation(line: 77, column: 7, scope: !3994)
!4010 = !DILocation(line: 78, column: 7, scope: !4011)
!4011 = distinct !DILexicalBlock(scope: !3994, file: !3, line: 78, column: 7)
!4012 = !DILocation(line: 78, column: 11, scope: !4011)
!4013 = !DILocation(line: 78, column: 7, scope: !3994)
!4014 = !DILocation(line: 79, column: 4, scope: !4011)
!4015 = !DILocation(line: 80, column: 2, scope: !3994)
!4016 = !DILocation(line: 69, column: 46, scope: !3989)
!4017 = !DILocation(line: 69, column: 2, scope: !3989)
!4018 = distinct !{!4018, !3991, !4019}
!4019 = !DILocation(line: 80, column: 2, scope: !3986)
!4020 = !DILocation(line: 81, column: 9, scope: !163)
!4021 = !DILocation(line: 81, column: 15, scope: !163)
!4022 = !DILocation(line: 81, column: 2, scope: !163)
!4023 = !DILocation(line: 82, column: 1, scope: !163)
!4024 = distinct !DISubprogram(name: "of_gpio_spi_cs_get_count", scope: !3, file: !3, line: 38, type: !164, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!4025 = !DILocalVariable(name: "dev", arg: 1, scope: !4024, file: !3, line: 38, type: !166)
!4026 = !DILocation(line: 38, column: 52, scope: !4024)
!4027 = !DILocalVariable(name: "con_id", arg: 2, scope: !4024, file: !3, line: 38, type: !154)
!4028 = !DILocation(line: 38, column: 69, scope: !4024)
!4029 = !DILocalVariable(name: "np", scope: !4024, file: !3, line: 40, type: !3509)
!4030 = !DILocation(line: 40, column: 22, scope: !4024)
!4031 = !DILocation(line: 40, column: 27, scope: !4024)
!4032 = !DILocation(line: 40, column: 32, scope: !4024)
!4033 = !DILocation(line: 44, column: 7, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !4024, file: !3, line: 44, column: 6)
!4035 = !DILocation(line: 44, column: 14, scope: !4034)
!4036 = !DILocation(line: 44, column: 24, scope: !4034)
!4037 = !DILocation(line: 44, column: 17, scope: !4034)
!4038 = !DILocation(line: 44, column: 6, scope: !4024)
!4039 = !DILocation(line: 45, column: 3, scope: !4034)
!4040 = !DILocation(line: 46, column: 31, scope: !4041)
!4041 = distinct !DILexicalBlock(scope: !4024, file: !3, line: 46, column: 6)
!4042 = !DILocation(line: 46, column: 7, scope: !4041)
!4043 = !DILocation(line: 46, column: 46, scope: !4041)
!4044 = !DILocation(line: 47, column: 31, scope: !4041)
!4045 = !DILocation(line: 47, column: 7, scope: !4041)
!4046 = !DILocation(line: 47, column: 62, scope: !4041)
!4047 = !DILocation(line: 48, column: 31, scope: !4041)
!4048 = !DILocation(line: 48, column: 7, scope: !4041)
!4049 = !DILocation(line: 46, column: 6, scope: !4024)
!4050 = !DILocation(line: 49, column: 3, scope: !4041)
!4051 = !DILocation(line: 50, column: 29, scope: !4024)
!4052 = !DILocation(line: 50, column: 9, scope: !4024)
!4053 = !DILocation(line: 50, column: 2, scope: !4024)
!4054 = !DILocation(line: 51, column: 1, scope: !4024)
!4055 = distinct !DISubprogram(name: "of_gpio_named_count", scope: !108, file: !108, line: 101, type: !4056, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!4056 = !DISubroutineType(types: !4057)
!4057 = !{!138, !3509, !154}
!4058 = !DILocalVariable(name: "np", arg: 1, scope: !4055, file: !108, line: 101, type: !3509)
!4059 = !DILocation(line: 101, column: 59, scope: !4055)
!4060 = !DILocalVariable(name: "propname", arg: 2, scope: !4055, file: !108, line: 101, type: !154)
!4061 = !DILocation(line: 101, column: 75, scope: !4055)
!4062 = !DILocation(line: 103, column: 36, scope: !4055)
!4063 = !DILocation(line: 103, column: 40, scope: !4055)
!4064 = !DILocation(line: 103, column: 9, scope: !4055)
!4065 = !DILocation(line: 103, column: 2, scope: !4055)
!4066 = distinct !DISubprogram(name: "of_gpio_need_valid_mask", scope: !3, file: !3, line: 122, type: !4067, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !202)
!4067 = !DISubroutineType(types: !4068)
!4068 = !{!442, !4069}
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4071)
!4071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_chip", file: !4072, line: 358, size: 4608, elements: !4073)
!4072 = !DIFile(filename: "./include/linux/gpio/driver.h", directory: "/home/lizy2001/genbc/linux")
!4073 = !{!4074, !4075, !4116, !4117, !4118, !4122, !4126, !4127, !4128, !4132, !4133, !4137, !4141, !4145, !4149, !4150, !4154, !4158, !4162, !4163, !4164, !4166, !4167, !4171, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4229, !4230, !4231, !4232}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !4071, file: !4072, line: 359, baseType: !154, size: 64)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "gpiodev", scope: !4071, file: !4072, line: 360, baseType: !4076, size: 64, offset: 64)
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 64)
!4077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_device", file: !151, line: 46, size: 7360, elements: !4078)
!4078 = !{!4079, !4080, !4081, !4082, !4083, !4084, !4086, !4095, !4096, !4097, !4098, !4099, !4100}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4077, file: !151, line: 47, baseType: !138, size: 32)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4077, file: !151, line: 48, baseType: !167, size: 5568, offset: 64)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "chrdev", scope: !4077, file: !151, line: 49, baseType: !2951, size: 832, offset: 5632)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "mockdev", scope: !4077, file: !151, line: 50, baseType: !166, size: 64, offset: 6464)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4077, file: !151, line: 51, baseType: !585, size: 64, offset: 6528)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !4077, file: !151, line: 52, baseType: !4085, size: 64, offset: 6592)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4071, size: 64)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "descs", scope: !4077, file: !151, line: 53, baseType: !4087, size: 64, offset: 6656)
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4088, size: 64)
!4088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !151, line: 99, size: 320, elements: !4089)
!4089 = !{!4090, !4091, !4092, !4093, !4094}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "gdev", scope: !4088, file: !151, line: 100, baseType: !4076, size: 64)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4088, file: !151, line: 101, baseType: !142, size: 64, offset: 64)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !4088, file: !151, line: 121, baseType: !154, size: 64, offset: 128)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4088, file: !151, line: 123, baseType: !154, size: 64, offset: 192)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "debounce_period_us", scope: !4088, file: !151, line: 129, baseType: !7, size: 32, offset: 256)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4077, file: !151, line: 54, baseType: !138, size: 32, offset: 6720)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "ngpio", scope: !4077, file: !151, line: 55, baseType: !856, size: 16, offset: 6752)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !4077, file: !151, line: 56, baseType: !154, size: 64, offset: 6784)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4077, file: !151, line: 57, baseType: !141, size: 64, offset: 6848)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4077, file: !151, line: 58, baseType: !175, size: 128, offset: 6912)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "notifier", scope: !4077, file: !151, line: 59, baseType: !4101, size: 320, offset: 7040)
!4101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !4102, line: 65, size: 320, elements: !4103)
!4102 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!4103 = !{!4104, !4105}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !4101, file: !4102, line: 66, baseType: !771, size: 256)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4101, file: !4102, line: 67, baseType: !4106, size: 64, offset: 256)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !4102, line: 54, size: 192, elements: !4108)
!4108 = !{!4109, !4114, !4115}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !4107, file: !4102, line: 55, baseType: !4110, size: 64)
!4110 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !4102, line: 51, baseType: !4111)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4112 = !DISubroutineType(types: !4113)
!4113 = !{!138, !4106, !142, !141}
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4107, file: !4102, line: 56, baseType: !4106, size: 64, offset: 64)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !4107, file: !4102, line: 57, baseType: !138, size: 32, offset: 128)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4071, file: !4072, line: 361, baseType: !166, size: 64, offset: 128)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4071, file: !4072, line: 362, baseType: !585, size: 64, offset: 192)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4071, file: !4072, line: 364, baseType: !4119, size: 64, offset: 256)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{!138, !4085, !7}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4071, file: !4072, line: 366, baseType: !4123, size: 64, offset: 320)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{null, !4085, !7}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "get_direction", scope: !4071, file: !4072, line: 368, baseType: !4119, size: 64, offset: 384)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "direction_input", scope: !4071, file: !4072, line: 370, baseType: !4119, size: 64, offset: 448)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "direction_output", scope: !4071, file: !4072, line: 372, baseType: !4129, size: 64, offset: 512)
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = !DISubroutineType(types: !4131)
!4131 = !{!138, !4085, !7, !138}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4071, file: !4072, line: 374, baseType: !4119, size: 64, offset: 576)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "get_multiple", scope: !4071, file: !4072, line: 376, baseType: !4134, size: 64, offset: 640)
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = !DISubroutineType(types: !4136)
!4136 = !{!138, !4085, !3649, !3649}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4071, file: !4072, line: 379, baseType: !4138, size: 64, offset: 704)
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4139 = !DISubroutineType(types: !4140)
!4140 = !{null, !4085, !7, !138}
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "set_multiple", scope: !4071, file: !4072, line: 381, baseType: !4142, size: 64, offset: 768)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = !DISubroutineType(types: !4144)
!4144 = !{null, !4085, !3649, !3649}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4071, file: !4072, line: 384, baseType: !4146, size: 64, offset: 832)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = !DISubroutineType(types: !4148)
!4148 = !{!138, !4085, !7, !142}
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "to_irq", scope: !4071, file: !4072, line: 387, baseType: !4119, size: 64, offset: 896)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "dbg_show", scope: !4071, file: !4072, line: 390, baseType: !4151, size: 64, offset: 960)
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4152 = !DISubroutineType(types: !4153)
!4153 = !{null, !666, !4085}
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "init_valid_mask", scope: !4071, file: !4072, line: 393, baseType: !4155, size: 64, offset: 1024)
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4156, size: 64)
!4156 = !DISubroutineType(types: !4157)
!4157 = !{!138, !4085, !3649, !7}
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "add_pin_ranges", scope: !4071, file: !4072, line: 397, baseType: !4159, size: 64, offset: 1088)
!4159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4160, size: 64)
!4160 = !DISubroutineType(types: !4161)
!4161 = !{!138, !4085}
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4071, file: !4072, line: 399, baseType: !138, size: 32, offset: 1152)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "ngpio", scope: !4071, file: !4072, line: 400, baseType: !856, size: 16, offset: 1184)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "names", scope: !4071, file: !4072, line: 401, baseType: !4165, size: 64, offset: 1216)
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "can_sleep", scope: !4071, file: !4072, line: 402, baseType: !442, size: 8, offset: 1280)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "read_reg", scope: !4071, file: !4072, line: 405, baseType: !4168, size: 64, offset: 1344)
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4169, size: 64)
!4169 = !DISubroutineType(types: !4170)
!4170 = !{!142, !141}
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "write_reg", scope: !4071, file: !4072, line: 406, baseType: !4172, size: 64, offset: 1408)
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = !DISubroutineType(types: !4174)
!4174 = !{null, !141, !142}
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "be_bits", scope: !4071, file: !4072, line: 407, baseType: !442, size: 8, offset: 1472)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "reg_dat", scope: !4071, file: !4072, line: 408, baseType: !141, size: 64, offset: 1536)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "reg_set", scope: !4071, file: !4072, line: 409, baseType: !141, size: 64, offset: 1600)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "reg_clr", scope: !4071, file: !4072, line: 410, baseType: !141, size: 64, offset: 1664)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "reg_dir_out", scope: !4071, file: !4072, line: 411, baseType: !141, size: 64, offset: 1728)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "reg_dir_in", scope: !4071, file: !4072, line: 412, baseType: !141, size: 64, offset: 1792)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "bgpio_dir_unreadable", scope: !4071, file: !4072, line: 413, baseType: !442, size: 8, offset: 1856)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "bgpio_bits", scope: !4071, file: !4072, line: 414, baseType: !138, size: 32, offset: 1888)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "bgpio_lock", scope: !4071, file: !4072, line: 415, baseType: !188, offset: 1920)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "bgpio_data", scope: !4071, file: !4072, line: 416, baseType: !142, size: 64, offset: 1920)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "bgpio_dir", scope: !4071, file: !4072, line: 417, baseType: !142, size: 64, offset: 1984)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4071, file: !4072, line: 432, baseType: !4187, size: 2304, offset: 2048)
!4187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_irq_chip", file: !4072, line: 31, size: 2304, elements: !4188)
!4188 = !{!4189, !4190, !4191, !4192, !4193, !4194, !4198, !4202, !4206, !4207, !4208, !4209, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4223, !4224, !4225, !4226, !4227, !4228}
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !4187, file: !4072, line: 37, baseType: !3681, size: 64)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4187, file: !4072, line: 45, baseType: !3495, size: 64, offset: 64)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "domain_ops", scope: !4187, file: !4072, line: 52, baseType: !3501, size: 64, offset: 128)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4187, file: !4072, line: 61, baseType: !3522, size: 64, offset: 192)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "parent_domain", scope: !4187, file: !4072, line: 71, baseType: !3495, size: 64, offset: 256)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "child_to_parent_hwirq", scope: !4187, file: !4072, line: 90, baseType: !4195, size: 64, offset: 320)
!4195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4196, size: 64)
!4196 = !DISubroutineType(types: !4197)
!4197 = !{!138, !4085, !7, !7, !2532, !2532}
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "populate_parent_alloc_arg", scope: !4187, file: !4072, line: 105, baseType: !4199, size: 64, offset: 384)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DISubroutineType(types: !4201)
!4201 = !{!141, !4085, !7, !7}
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "child_offset_to_irq", scope: !4187, file: !4072, line: 117, baseType: !4203, size: 64, offset: 448)
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = !DISubroutineType(types: !4205)
!4205 = !{!7, !4085, !7}
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "child_irq_domain_ops", scope: !4187, file: !4072, line: 128, baseType: !3503, size: 640, offset: 512)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4187, file: !4072, line: 137, baseType: !3835, size: 64, offset: 1152)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "default_type", scope: !4187, file: !4072, line: 145, baseType: !7, size: 32, offset: 1216)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !4187, file: !4072, line: 152, baseType: !4210, size: 64, offset: 1280)
!4210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "request_key", scope: !4187, file: !4072, line: 159, baseType: !4210, size: 64, offset: 1344)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "parent_handler", scope: !4187, file: !4072, line: 167, baseType: !3835, size: 64, offset: 1408)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "parent_handler_data", scope: !4187, file: !4072, line: 175, baseType: !141, size: 64, offset: 1472)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "num_parents", scope: !4187, file: !4072, line: 182, baseType: !7, size: 32, offset: 1536)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "parents", scope: !4187, file: !4072, line: 190, baseType: !2532, size: 64, offset: 1600)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !4187, file: !4072, line: 197, baseType: !2532, size: 64, offset: 1664)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !4187, file: !4072, line: 204, baseType: !442, size: 8, offset: 1728)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "init_hw", scope: !4187, file: !4072, line: 212, baseType: !4159, size: 64, offset: 1792)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "init_valid_mask", scope: !4187, file: !4072, line: 223, baseType: !4220, size: 64, offset: 1856)
!4220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4221, size: 64)
!4221 = !DISubroutineType(types: !4222)
!4222 = !{null, !4085, !3649, !7}
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "valid_mask", scope: !4187, file: !4072, line: 233, baseType: !3649, size: 64, offset: 1920)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4187, file: !4072, line: 241, baseType: !7, size: 32, offset: 1984)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "irq_enable", scope: !4187, file: !4072, line: 248, baseType: !3691, size: 64, offset: 2048)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "irq_disable", scope: !4187, file: !4072, line: 255, baseType: !3691, size: 64, offset: 2112)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "irq_unmask", scope: !4187, file: !4072, line: 261, baseType: !3691, size: 64, offset: 2176)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !4187, file: !4072, line: 268, baseType: !3691, size: 64, offset: 2240)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "valid_mask", scope: !4071, file: !4072, line: 441, baseType: !3649, size: 64, offset: 4352)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4071, file: !4072, line: 454, baseType: !3509, size: 64, offset: 4416)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "of_gpio_n_cells", scope: !4071, file: !4072, line: 461, baseType: !7, size: 32, offset: 4480)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "of_xlate", scope: !4071, file: !4072, line: 469, baseType: !4233, size: 64, offset: 4544)
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!4234 = !DISubroutineType(types: !4235)
!4235 = !{!138, !4085, !4236, !1326}
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4238)
!4238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_phandle_args", file: !3511, line: 74, size: 640, elements: !4239)
!4239 = !{!4240, !4241, !4242}
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !4238, file: !3511, line: 75, baseType: !3509, size: 64)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "args_count", scope: !4238, file: !3511, line: 76, baseType: !138, size: 32, offset: 64)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4238, file: !3511, line: 77, baseType: !4243, size: 512, offset: 96)
!4243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !511, size: 512, elements: !1644)
!4244 = !DILocalVariable(name: "gc", arg: 1, scope: !4066, file: !3, line: 122, type: !4069)
!4245 = !DILocation(line: 122, column: 54, scope: !4066)
!4246 = !DILocalVariable(name: "size", scope: !4066, file: !3, line: 124, type: !138)
!4247 = !DILocation(line: 124, column: 6, scope: !4066)
!4248 = !DILocalVariable(name: "np", scope: !4066, file: !3, line: 125, type: !3509)
!4249 = !DILocation(line: 125, column: 22, scope: !4066)
!4250 = !DILocation(line: 125, column: 27, scope: !4066)
!4251 = !DILocation(line: 125, column: 31, scope: !4066)
!4252 = !DILocation(line: 127, column: 37, scope: !4066)
!4253 = !DILocation(line: 127, column: 9, scope: !4066)
!4254 = !DILocation(line: 127, column: 7, scope: !4066)
!4255 = !DILocation(line: 128, column: 6, scope: !4256)
!4256 = distinct !DILexicalBlock(scope: !4066, file: !3, line: 128, column: 6)
!4257 = !DILocation(line: 128, column: 11, scope: !4256)
!4258 = !DILocation(line: 128, column: 15, scope: !4256)
!4259 = !DILocation(line: 128, column: 18, scope: !4256)
!4260 = !DILocation(line: 128, column: 23, scope: !4256)
!4261 = !DILocation(line: 128, column: 27, scope: !4256)
!4262 = !DILocation(line: 128, column: 6, scope: !4066)
!4263 = !DILocation(line: 129, column: 3, scope: !4256)
!4264 = !DILocation(line: 130, column: 2, scope: !4066)
!4265 = !DILocation(line: 131, column: 1, scope: !4066)
!4266 = distinct !DISubprogram(name: "of_property_count_u32_elems", scope: !3511, file: !3511, line: 1097, type: !4267, scopeLine: 1099, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!4267 = !DISubroutineType(types: !4268)
!4268 = !{!138, !4269, !154}
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3510)
!4271 = !DILocalVariable(name: "np", arg: 1, scope: !4266, file: !3511, line: 1097, type: !4269)
!4272 = !DILocation(line: 1097, column: 73, scope: !4266)
!4273 = !DILocalVariable(name: "propname", arg: 2, scope: !4266, file: !3511, line: 1098, type: !154)
!4274 = !DILocation(line: 1098, column: 17, scope: !4266)
!4275 = !DILocation(line: 1100, column: 41, scope: !4266)
!4276 = !DILocation(line: 1100, column: 45, scope: !4266)
!4277 = !DILocation(line: 1100, column: 9, scope: !4266)
!4278 = !DILocation(line: 1100, column: 2, scope: !4266)
!4279 = distinct !DISubprogram(name: "of_get_named_gpio_flags", scope: !3, file: !3, line: 278, type: !4280, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !202)
!4280 = !DISubroutineType(types: !4281)
!4281 = !{!138, !3509, !154, !138, !4282}
!4282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!4283 = !DILocalVariable(name: "np", arg: 1, scope: !4279, file: !3, line: 278, type: !3509)
!4284 = !DILocation(line: 278, column: 49, scope: !4279)
!4285 = !DILocalVariable(name: "list_name", arg: 2, scope: !4279, file: !3, line: 278, type: !154)
!4286 = !DILocation(line: 278, column: 65, scope: !4279)
!4287 = !DILocalVariable(name: "index", arg: 3, scope: !4279, file: !3, line: 279, type: !138)
!4288 = !DILocation(line: 279, column: 12, scope: !4279)
!4289 = !DILocalVariable(name: "flags", arg: 4, scope: !4279, file: !3, line: 279, type: !4282)
!4290 = !DILocation(line: 279, column: 39, scope: !4279)
!4291 = !DILocalVariable(name: "desc", scope: !4279, file: !3, line: 281, type: !4087)
!4292 = !DILocation(line: 281, column: 20, scope: !4279)
!4293 = !DILocation(line: 283, column: 34, scope: !4279)
!4294 = !DILocation(line: 283, column: 38, scope: !4279)
!4295 = !DILocation(line: 283, column: 49, scope: !4279)
!4296 = !DILocation(line: 283, column: 56, scope: !4279)
!4297 = !DILocation(line: 283, column: 9, scope: !4279)
!4298 = !DILocation(line: 283, column: 7, scope: !4279)
!4299 = !DILocation(line: 285, column: 13, scope: !4300)
!4300 = distinct !DILexicalBlock(scope: !4279, file: !3, line: 285, column: 6)
!4301 = !DILocation(line: 285, column: 6, scope: !4300)
!4302 = !DILocation(line: 285, column: 6, scope: !4279)
!4303 = !DILocation(line: 286, column: 18, scope: !4300)
!4304 = !DILocation(line: 286, column: 10, scope: !4300)
!4305 = !DILocation(line: 286, column: 3, scope: !4300)
!4306 = !DILocation(line: 288, column: 23, scope: !4300)
!4307 = !DILocation(line: 288, column: 10, scope: !4300)
!4308 = !DILocation(line: 288, column: 3, scope: !4300)
!4309 = !DILocation(line: 289, column: 1, scope: !4279)
!4310 = distinct !DISubprogram(name: "of_get_named_gpiod_flags", scope: !3, file: !3, line: 239, type: !4311, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!4311 = !DISubroutineType(types: !4312)
!4312 = !{!4087, !3509, !154, !138, !4282}
!4313 = !DILocalVariable(name: "np", arg: 1, scope: !4310, file: !3, line: 239, type: !3509)
!4314 = !DILocation(line: 239, column: 71, scope: !4310)
!4315 = !DILocalVariable(name: "propname", arg: 2, scope: !4310, file: !3, line: 240, type: !154)
!4316 = !DILocation(line: 240, column: 20, scope: !4310)
!4317 = !DILocalVariable(name: "index", arg: 3, scope: !4310, file: !3, line: 240, type: !138)
!4318 = !DILocation(line: 240, column: 34, scope: !4310)
!4319 = !DILocalVariable(name: "flags", arg: 4, scope: !4310, file: !3, line: 240, type: !4282)
!4320 = !DILocation(line: 240, column: 61, scope: !4310)
!4321 = !DILocalVariable(name: "gpiospec", scope: !4310, file: !3, line: 242, type: !4238)
!4322 = !DILocation(line: 242, column: 25, scope: !4310)
!4323 = !DILocalVariable(name: "chip", scope: !4310, file: !3, line: 243, type: !4085)
!4324 = !DILocation(line: 243, column: 20, scope: !4310)
!4325 = !DILocalVariable(name: "desc", scope: !4310, file: !3, line: 244, type: !4087)
!4326 = !DILocation(line: 244, column: 20, scope: !4310)
!4327 = !DILocalVariable(name: "ret", scope: !4310, file: !3, line: 245, type: !138)
!4328 = !DILocation(line: 245, column: 6, scope: !4310)
!4329 = !DILocation(line: 247, column: 39, scope: !4310)
!4330 = !DILocation(line: 247, column: 43, scope: !4310)
!4331 = !DILocation(line: 247, column: 61, scope: !4310)
!4332 = !DILocation(line: 247, column: 8, scope: !4310)
!4333 = !DILocation(line: 247, column: 6, scope: !4310)
!4334 = !DILocation(line: 249, column: 6, scope: !4335)
!4335 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 249, column: 6)
!4336 = !DILocation(line: 249, column: 6, scope: !4310)
!4337 = !DILocation(line: 250, column: 3, scope: !4338)
!4338 = distinct !DILexicalBlock(scope: !4339, file: !3, line: 250, column: 3)
!4339 = distinct !DILexicalBlock(scope: !4340, file: !3, line: 250, column: 3)
!4340 = distinct !DILexicalBlock(scope: !4335, file: !3, line: 249, column: 11)
!4341 = !DILocation(line: 250, column: 3, scope: !4339)
!4342 = !DILocation(line: 252, column: 18, scope: !4340)
!4343 = !DILocation(line: 252, column: 10, scope: !4340)
!4344 = !DILocation(line: 252, column: 3, scope: !4340)
!4345 = !DILocation(line: 255, column: 9, scope: !4310)
!4346 = !DILocation(line: 255, column: 7, scope: !4310)
!4347 = !DILocation(line: 256, column: 7, scope: !4348)
!4348 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 256, column: 6)
!4349 = !DILocation(line: 256, column: 6, scope: !4310)
!4350 = !DILocation(line: 257, column: 10, scope: !4351)
!4351 = distinct !DILexicalBlock(scope: !4348, file: !3, line: 256, column: 13)
!4352 = !DILocation(line: 257, column: 8, scope: !4351)
!4353 = !DILocation(line: 258, column: 3, scope: !4351)
!4354 = !DILocation(line: 261, column: 38, scope: !4310)
!4355 = !DILocation(line: 261, column: 55, scope: !4310)
!4356 = !DILocation(line: 261, column: 9, scope: !4310)
!4357 = !DILocation(line: 261, column: 7, scope: !4310)
!4358 = !DILocation(line: 262, column: 13, scope: !4359)
!4359 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 262, column: 6)
!4360 = !DILocation(line: 262, column: 6, scope: !4359)
!4361 = !DILocation(line: 262, column: 6, scope: !4310)
!4362 = !DILocation(line: 263, column: 3, scope: !4359)
!4363 = !DILocation(line: 265, column: 6, scope: !4364)
!4364 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 265, column: 6)
!4365 = !DILocation(line: 265, column: 6, scope: !4310)
!4366 = !DILocation(line: 266, column: 24, scope: !4364)
!4367 = !DILocation(line: 266, column: 28, scope: !4364)
!4368 = !DILocation(line: 266, column: 38, scope: !4364)
!4369 = !DILocation(line: 266, column: 45, scope: !4364)
!4370 = !DILocation(line: 266, column: 3, scope: !4364)
!4371 = !DILocation(line: 268, column: 2, scope: !4372)
!4372 = distinct !DILexicalBlock(scope: !4373, file: !3, line: 268, column: 2)
!4373 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 268, column: 2)
!4374 = !DILocation(line: 268, column: 2, scope: !4373)
!4375 = !DILocation(line: 268, column: 2, scope: !4310)
!4376 = !DILabel(scope: !4310, name: "out", file: !3, line: 272)
!4377 = !DILocation(line: 272, column: 1, scope: !4310)
!4378 = !DILocation(line: 273, column: 23, scope: !4310)
!4379 = !DILocation(line: 273, column: 2, scope: !4310)
!4380 = !DILocation(line: 275, column: 9, scope: !4310)
!4381 = !DILocation(line: 275, column: 2, scope: !4310)
!4382 = !DILocation(line: 276, column: 1, scope: !4310)
!4383 = distinct !DISubprogram(name: "IS_ERR", scope: !4384, file: !4384, line: 34, type: !4385, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!4384 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!4385 = !DISubroutineType(types: !4386)
!4386 = !{!442, !2037}
!4387 = !DILocalVariable(name: "ptr", arg: 1, scope: !4383, file: !4384, line: 34, type: !2037)
!4388 = !DILocation(line: 34, column: 60, scope: !4383)
!4389 = !DILocation(line: 36, column: 9, scope: !4383)
!4390 = !DILocation(line: 36, column: 2, scope: !4383)
!4391 = distinct !DISubprogram(name: "PTR_ERR", scope: !4384, file: !4384, line: 29, type: !4392, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!4392 = !DISubroutineType(types: !4393)
!4393 = !{!143, !2037}
!4394 = !DILocalVariable(name: "ptr", arg: 1, scope: !4391, file: !4384, line: 29, type: !2037)
!4395 = !DILocation(line: 29, column: 61, scope: !4391)
!4396 = !DILocation(line: 31, column: 16, scope: !4391)
!4397 = !DILocation(line: 31, column: 9, scope: !4391)
!4398 = !DILocation(line: 31, column: 2, scope: !4391)
!4399 = distinct !DISubprogram(name: "gpiod_get_from_of_node", scope: !3, file: !3, line: 306, type: !4400, scopeLine: 310, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !202)
!4400 = !DISubroutineType(types: !4401)
!4401 = !{!4087, !3509, !154, !138, !116, !154}
!4402 = !DILocalVariable(name: "node", arg: 1, scope: !4399, file: !3, line: 306, type: !3509)
!4403 = !DILocation(line: 306, column: 62, scope: !4399)
!4404 = !DILocalVariable(name: "propname", arg: 2, scope: !4399, file: !3, line: 307, type: !154)
!4405 = !DILocation(line: 307, column: 19, scope: !4399)
!4406 = !DILocalVariable(name: "index", arg: 3, scope: !4399, file: !3, line: 307, type: !138)
!4407 = !DILocation(line: 307, column: 33, scope: !4399)
!4408 = !DILocalVariable(name: "dflags", arg: 4, scope: !4399, file: !3, line: 308, type: !116)
!4409 = !DILocation(line: 308, column: 24, scope: !4399)
!4410 = !DILocalVariable(name: "label", arg: 5, scope: !4399, file: !3, line: 309, type: !154)
!4411 = !DILocation(line: 309, column: 19, scope: !4399)
!4412 = !DILocalVariable(name: "lflags", scope: !4399, file: !3, line: 311, type: !142)
!4413 = !DILocation(line: 311, column: 16, scope: !4399)
!4414 = !DILocalVariable(name: "desc", scope: !4399, file: !3, line: 312, type: !4087)
!4415 = !DILocation(line: 312, column: 20, scope: !4399)
!4416 = !DILocalVariable(name: "flags", scope: !4399, file: !3, line: 313, type: !107)
!4417 = !DILocation(line: 313, column: 21, scope: !4399)
!4418 = !DILocalVariable(name: "active_low", scope: !4399, file: !3, line: 314, type: !442)
!4419 = !DILocation(line: 314, column: 7, scope: !4399)
!4420 = !DILocalVariable(name: "single_ended", scope: !4399, file: !3, line: 315, type: !442)
!4421 = !DILocation(line: 315, column: 7, scope: !4399)
!4422 = !DILocalVariable(name: "open_drain", scope: !4399, file: !3, line: 316, type: !442)
!4423 = !DILocation(line: 316, column: 7, scope: !4399)
!4424 = !DILocalVariable(name: "transitory", scope: !4399, file: !3, line: 317, type: !442)
!4425 = !DILocation(line: 317, column: 7, scope: !4399)
!4426 = !DILocalVariable(name: "ret", scope: !4399, file: !3, line: 318, type: !138)
!4427 = !DILocation(line: 318, column: 6, scope: !4399)
!4428 = !DILocation(line: 320, column: 34, scope: !4399)
!4429 = !DILocation(line: 320, column: 40, scope: !4399)
!4430 = !DILocation(line: 321, column: 6, scope: !4399)
!4431 = !DILocation(line: 320, column: 9, scope: !4399)
!4432 = !DILocation(line: 320, column: 7, scope: !4399)
!4433 = !DILocation(line: 323, column: 7, scope: !4434)
!4434 = distinct !DILexicalBlock(scope: !4399, file: !3, line: 323, column: 6)
!4435 = !DILocation(line: 323, column: 12, scope: !4434)
!4436 = !DILocation(line: 323, column: 22, scope: !4434)
!4437 = !DILocation(line: 323, column: 15, scope: !4434)
!4438 = !DILocation(line: 323, column: 6, scope: !4399)
!4439 = !DILocation(line: 324, column: 10, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4434, file: !3, line: 323, column: 29)
!4441 = !DILocation(line: 324, column: 3, scope: !4440)
!4442 = !DILocation(line: 327, column: 15, scope: !4399)
!4443 = !DILocation(line: 327, column: 21, scope: !4399)
!4444 = !DILocation(line: 327, column: 13, scope: !4399)
!4445 = !DILocation(line: 328, column: 17, scope: !4399)
!4446 = !DILocation(line: 328, column: 23, scope: !4399)
!4447 = !DILocation(line: 328, column: 15, scope: !4399)
!4448 = !DILocation(line: 329, column: 15, scope: !4399)
!4449 = !DILocation(line: 329, column: 21, scope: !4399)
!4450 = !DILocation(line: 329, column: 13, scope: !4399)
!4451 = !DILocation(line: 330, column: 15, scope: !4399)
!4452 = !DILocation(line: 330, column: 21, scope: !4399)
!4453 = !DILocation(line: 330, column: 13, scope: !4399)
!4454 = !DILocation(line: 332, column: 22, scope: !4399)
!4455 = !DILocation(line: 332, column: 28, scope: !4399)
!4456 = !DILocation(line: 332, column: 8, scope: !4399)
!4457 = !DILocation(line: 332, column: 6, scope: !4399)
!4458 = !DILocation(line: 333, column: 6, scope: !4459)
!4459 = distinct !DILexicalBlock(scope: !4399, file: !3, line: 333, column: 6)
!4460 = !DILocation(line: 333, column: 10, scope: !4459)
!4461 = !DILocation(line: 333, column: 20, scope: !4459)
!4462 = !DILocation(line: 333, column: 24, scope: !4459)
!4463 = !DILocation(line: 333, column: 31, scope: !4459)
!4464 = !DILocation(line: 333, column: 6, scope: !4399)
!4465 = !DILocation(line: 334, column: 10, scope: !4459)
!4466 = !DILocation(line: 334, column: 3, scope: !4459)
!4467 = !DILocation(line: 335, column: 6, scope: !4468)
!4468 = distinct !DILexicalBlock(scope: !4399, file: !3, line: 335, column: 6)
!4469 = !DILocation(line: 335, column: 6, scope: !4399)
!4470 = !DILocation(line: 336, column: 18, scope: !4468)
!4471 = !DILocation(line: 336, column: 10, scope: !4468)
!4472 = !DILocation(line: 336, column: 3, scope: !4468)
!4473 = !DILocation(line: 338, column: 6, scope: !4474)
!4474 = distinct !DILexicalBlock(scope: !4399, file: !3, line: 338, column: 6)
!4475 = !DILocation(line: 338, column: 6, scope: !4399)
!4476 = !DILocation(line: 339, column: 10, scope: !4474)
!4477 = !DILocation(line: 339, column: 3, scope: !4474)
!4478 = !DILocation(line: 341, column: 6, scope: !4479)
!4479 = distinct !DILexicalBlock(scope: !4399, file: !3, line: 341, column: 6)
!4480 = !DILocation(line: 341, column: 6, scope: !4399)
!4481 = !DILocation(line: 342, column: 7, scope: !4482)
!4482 = distinct !DILexicalBlock(scope: !4483, file: !3, line: 342, column: 7)
!4483 = distinct !DILexicalBlock(scope: !4479, file: !3, line: 341, column: 20)
!4484 = !DILocation(line: 342, column: 7, scope: !4483)
!4485 = !DILocation(line: 343, column: 11, scope: !4482)
!4486 = !DILocation(line: 343, column: 4, scope: !4482)
!4487 = !DILocation(line: 345, column: 11, scope: !4482)
!4488 = !DILocation(line: 346, column: 2, scope: !4483)
!4489 = !DILocation(line: 348, column: 6, scope: !4490)
!4490 = distinct !DILexicalBlock(scope: !4399, file: !3, line: 348, column: 6)
!4491 = !DILocation(line: 348, column: 6, scope: !4399)
!4492 = !DILocation(line: 349, column: 10, scope: !4490)
!4493 = !DILocation(line: 349, column: 3, scope: !4490)
!4494 = !DILocation(line: 351, column: 6, scope: !4495)
!4495 = distinct !DILexicalBlock(scope: !4399, file: !3, line: 351, column: 6)
!4496 = !DILocation(line: 351, column: 12, scope: !4495)
!4497 = !DILocation(line: 351, column: 6, scope: !4399)
!4498 = !DILocation(line: 352, column: 10, scope: !4495)
!4499 = !DILocation(line: 352, column: 3, scope: !4495)
!4500 = !DILocation(line: 354, column: 6, scope: !4501)
!4501 = distinct !DILexicalBlock(scope: !4399, file: !3, line: 354, column: 6)
!4502 = !DILocation(line: 354, column: 12, scope: !4501)
!4503 = !DILocation(line: 354, column: 6, scope: !4399)
!4504 = !DILocation(line: 355, column: 10, scope: !4501)
!4505 = !DILocation(line: 355, column: 3, scope: !4501)
!4506 = !DILocation(line: 357, column: 30, scope: !4399)
!4507 = !DILocation(line: 357, column: 36, scope: !4399)
!4508 = !DILocation(line: 357, column: 46, scope: !4399)
!4509 = !DILocation(line: 357, column: 54, scope: !4399)
!4510 = !DILocation(line: 357, column: 8, scope: !4399)
!4511 = !DILocation(line: 357, column: 6, scope: !4399)
!4512 = !DILocation(line: 358, column: 6, scope: !4513)
!4513 = distinct !DILexicalBlock(scope: !4399, file: !3, line: 358, column: 6)
!4514 = !DILocation(line: 358, column: 10, scope: !4513)
!4515 = !DILocation(line: 358, column: 6, scope: !4399)
!4516 = !DILocation(line: 359, column: 13, scope: !4517)
!4517 = distinct !DILexicalBlock(scope: !4513, file: !3, line: 358, column: 15)
!4518 = !DILocation(line: 359, column: 3, scope: !4517)
!4519 = !DILocation(line: 360, column: 18, scope: !4517)
!4520 = !DILocation(line: 360, column: 10, scope: !4517)
!4521 = !DILocation(line: 360, column: 3, scope: !4517)
!4522 = !DILocation(line: 363, column: 9, scope: !4399)
!4523 = !DILocation(line: 363, column: 2, scope: !4399)
!4524 = !DILocation(line: 364, column: 1, scope: !4399)
!4525 = distinct !DISubprogram(name: "ERR_PTR", scope: !4384, file: !4384, line: 24, type: !4526, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!4526 = !DISubroutineType(types: !4527)
!4527 = !{!141, !143}
!4528 = !DILocalVariable(name: "error", arg: 1, scope: !4525, file: !4384, line: 24, type: !143)
!4529 = !DILocation(line: 24, column: 48, scope: !4525)
!4530 = !DILocation(line: 26, column: 18, scope: !4525)
!4531 = !DILocation(line: 26, column: 9, scope: !4525)
!4532 = !DILocation(line: 26, column: 2, scope: !4525)
!4533 = distinct !DISubprogram(name: "of_find_gpio", scope: !3, file: !3, line: 492, type: !4534, scopeLine: 494, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !202)
!4534 = !DISubroutineType(types: !4535)
!4535 = !{!4087, !166, !154, !7, !3649}
!4536 = !DILocalVariable(name: "dev", arg: 1, scope: !4533, file: !3, line: 492, type: !166)
!4537 = !DILocation(line: 492, column: 47, scope: !4533)
!4538 = !DILocalVariable(name: "con_id", arg: 2, scope: !4533, file: !3, line: 492, type: !154)
!4539 = !DILocation(line: 492, column: 64, scope: !4533)
!4540 = !DILocalVariable(name: "idx", arg: 3, scope: !4533, file: !3, line: 493, type: !7)
!4541 = !DILocation(line: 493, column: 24, scope: !4533)
!4542 = !DILocalVariable(name: "flags", arg: 4, scope: !4533, file: !3, line: 493, type: !3649)
!4543 = !DILocation(line: 493, column: 44, scope: !4533)
!4544 = !DILocalVariable(name: "prop_name", scope: !4533, file: !3, line: 495, type: !2549)
!4545 = !DILocation(line: 495, column: 7, scope: !4533)
!4546 = !DILocalVariable(name: "of_flags", scope: !4533, file: !3, line: 496, type: !107)
!4547 = !DILocation(line: 496, column: 21, scope: !4533)
!4548 = !DILocalVariable(name: "desc", scope: !4533, file: !3, line: 497, type: !4087)
!4549 = !DILocation(line: 497, column: 20, scope: !4533)
!4550 = !DILocalVariable(name: "i", scope: !4533, file: !3, line: 498, type: !7)
!4551 = !DILocation(line: 498, column: 15, scope: !4533)
!4552 = !DILocation(line: 501, column: 9, scope: !4553)
!4553 = distinct !DILexicalBlock(scope: !4533, file: !3, line: 501, column: 2)
!4554 = !DILocation(line: 501, column: 7, scope: !4553)
!4555 = !DILocation(line: 501, column: 14, scope: !4556)
!4556 = distinct !DILexicalBlock(scope: !4553, file: !3, line: 501, column: 2)
!4557 = !DILocation(line: 501, column: 16, scope: !4556)
!4558 = !DILocation(line: 501, column: 2, scope: !4553)
!4559 = !DILocation(line: 502, column: 7, scope: !4560)
!4560 = distinct !DILexicalBlock(scope: !4561, file: !3, line: 502, column: 7)
!4561 = distinct !DILexicalBlock(scope: !4556, file: !3, line: 501, column: 50)
!4562 = !DILocation(line: 502, column: 7, scope: !4561)
!4563 = !DILocation(line: 503, column: 13, scope: !4560)
!4564 = !DILocation(line: 503, column: 52, scope: !4560)
!4565 = !DILocation(line: 504, column: 20, scope: !4560)
!4566 = !DILocation(line: 504, column: 6, scope: !4560)
!4567 = !DILocation(line: 503, column: 4, scope: !4560)
!4568 = !DILocation(line: 506, column: 13, scope: !4560)
!4569 = !DILocation(line: 507, column: 20, scope: !4560)
!4570 = !DILocation(line: 507, column: 6, scope: !4560)
!4571 = !DILocation(line: 506, column: 4, scope: !4560)
!4572 = !DILocation(line: 509, column: 35, scope: !4561)
!4573 = !DILocation(line: 509, column: 40, scope: !4561)
!4574 = !DILocation(line: 509, column: 49, scope: !4561)
!4575 = !DILocation(line: 509, column: 60, scope: !4561)
!4576 = !DILocation(line: 509, column: 10, scope: !4561)
!4577 = !DILocation(line: 509, column: 8, scope: !4561)
!4578 = !DILocation(line: 512, column: 15, scope: !4579)
!4579 = distinct !DILexicalBlock(scope: !4561, file: !3, line: 512, column: 7)
!4580 = !DILocation(line: 512, column: 8, scope: !4579)
!4581 = !DILocation(line: 512, column: 21, scope: !4579)
!4582 = !DILocation(line: 512, column: 32, scope: !4579)
!4583 = !DILocation(line: 512, column: 24, scope: !4579)
!4584 = !DILocation(line: 512, column: 38, scope: !4579)
!4585 = !DILocation(line: 512, column: 7, scope: !4561)
!4586 = !DILocation(line: 513, column: 4, scope: !4579)
!4587 = !DILocation(line: 514, column: 2, scope: !4561)
!4588 = !DILocation(line: 501, column: 46, scope: !4556)
!4589 = !DILocation(line: 501, column: 2, scope: !4556)
!4590 = distinct !{!4590, !4558, !4591}
!4591 = !DILocation(line: 514, column: 2, scope: !4553)
!4592 = !DILocation(line: 516, column: 14, scope: !4593)
!4593 = distinct !DILexicalBlock(scope: !4533, file: !3, line: 516, column: 6)
!4594 = !DILocation(line: 516, column: 6, scope: !4593)
!4595 = !DILocation(line: 516, column: 20, scope: !4593)
!4596 = !DILocation(line: 516, column: 6, scope: !4533)
!4597 = !DILocation(line: 518, column: 27, scope: !4598)
!4598 = distinct !DILexicalBlock(scope: !4593, file: !3, line: 516, column: 32)
!4599 = !DILocation(line: 518, column: 32, scope: !4598)
!4600 = !DILocation(line: 518, column: 10, scope: !4598)
!4601 = !DILocation(line: 518, column: 8, scope: !4598)
!4602 = !DILocation(line: 519, column: 2, scope: !4598)
!4603 = !DILocation(line: 521, column: 14, scope: !4604)
!4604 = distinct !DILexicalBlock(scope: !4533, file: !3, line: 521, column: 6)
!4605 = !DILocation(line: 521, column: 6, scope: !4604)
!4606 = !DILocation(line: 521, column: 20, scope: !4604)
!4607 = !DILocation(line: 521, column: 6, scope: !4533)
!4608 = !DILocation(line: 523, column: 30, scope: !4609)
!4609 = distinct !DILexicalBlock(scope: !4604, file: !3, line: 521, column: 32)
!4610 = !DILocation(line: 523, column: 35, scope: !4609)
!4611 = !DILocation(line: 523, column: 43, scope: !4609)
!4612 = !DILocation(line: 523, column: 48, scope: !4609)
!4613 = !DILocation(line: 523, column: 10, scope: !4609)
!4614 = !DILocation(line: 523, column: 8, scope: !4609)
!4615 = !DILocation(line: 524, column: 15, scope: !4616)
!4616 = distinct !DILexicalBlock(scope: !4609, file: !3, line: 524, column: 7)
!4617 = !DILocation(line: 524, column: 8, scope: !4616)
!4618 = !DILocation(line: 524, column: 7, scope: !4609)
!4619 = !DILocation(line: 525, column: 11, scope: !4616)
!4620 = !DILocation(line: 525, column: 4, scope: !4616)
!4621 = !DILocation(line: 526, column: 2, scope: !4609)
!4622 = !DILocation(line: 528, column: 14, scope: !4623)
!4623 = distinct !DILexicalBlock(scope: !4533, file: !3, line: 528, column: 6)
!4624 = !DILocation(line: 528, column: 6, scope: !4623)
!4625 = !DILocation(line: 528, column: 20, scope: !4623)
!4626 = !DILocation(line: 528, column: 6, scope: !4533)
!4627 = !DILocation(line: 530, column: 33, scope: !4628)
!4628 = distinct !DILexicalBlock(scope: !4623, file: !3, line: 528, column: 32)
!4629 = !DILocation(line: 530, column: 38, scope: !4628)
!4630 = !DILocation(line: 530, column: 10, scope: !4628)
!4631 = !DILocation(line: 530, column: 8, scope: !4628)
!4632 = !DILocation(line: 531, column: 2, scope: !4628)
!4633 = !DILocation(line: 533, column: 14, scope: !4634)
!4634 = distinct !DILexicalBlock(scope: !4533, file: !3, line: 533, column: 6)
!4635 = !DILocation(line: 533, column: 6, scope: !4634)
!4636 = !DILocation(line: 533, column: 20, scope: !4634)
!4637 = !DILocation(line: 533, column: 6, scope: !4533)
!4638 = !DILocation(line: 534, column: 31, scope: !4634)
!4639 = !DILocation(line: 534, column: 36, scope: !4634)
!4640 = !DILocation(line: 534, column: 10, scope: !4634)
!4641 = !DILocation(line: 534, column: 8, scope: !4634)
!4642 = !DILocation(line: 534, column: 3, scope: !4634)
!4643 = !DILocation(line: 536, column: 14, scope: !4644)
!4644 = distinct !DILexicalBlock(scope: !4533, file: !3, line: 536, column: 6)
!4645 = !DILocation(line: 536, column: 6, scope: !4644)
!4646 = !DILocation(line: 536, column: 20, scope: !4644)
!4647 = !DILocation(line: 536, column: 6, scope: !4533)
!4648 = !DILocation(line: 537, column: 27, scope: !4644)
!4649 = !DILocation(line: 537, column: 32, scope: !4644)
!4650 = !DILocation(line: 537, column: 10, scope: !4644)
!4651 = !DILocation(line: 537, column: 8, scope: !4644)
!4652 = !DILocation(line: 537, column: 3, scope: !4644)
!4653 = !DILocation(line: 539, column: 13, scope: !4654)
!4654 = distinct !DILexicalBlock(scope: !4533, file: !3, line: 539, column: 6)
!4655 = !DILocation(line: 539, column: 6, scope: !4654)
!4656 = !DILocation(line: 539, column: 6, scope: !4533)
!4657 = !DILocation(line: 540, column: 10, scope: !4654)
!4658 = !DILocation(line: 540, column: 3, scope: !4654)
!4659 = !DILocation(line: 542, column: 6, scope: !4660)
!4660 = distinct !DILexicalBlock(scope: !4533, file: !3, line: 542, column: 6)
!4661 = !DILocation(line: 542, column: 15, scope: !4660)
!4662 = !DILocation(line: 542, column: 6, scope: !4533)
!4663 = !DILocation(line: 543, column: 4, scope: !4660)
!4664 = !DILocation(line: 543, column: 10, scope: !4660)
!4665 = !DILocation(line: 543, column: 3, scope: !4660)
!4666 = !DILocation(line: 545, column: 6, scope: !4667)
!4667 = distinct !DILexicalBlock(scope: !4533, file: !3, line: 545, column: 6)
!4668 = !DILocation(line: 545, column: 15, scope: !4667)
!4669 = !DILocation(line: 545, column: 6, scope: !4533)
!4670 = !DILocation(line: 546, column: 7, scope: !4671)
!4671 = distinct !DILexicalBlock(scope: !4672, file: !3, line: 546, column: 7)
!4672 = distinct !DILexicalBlock(scope: !4667, file: !3, line: 545, column: 39)
!4673 = !DILocation(line: 546, column: 16, scope: !4671)
!4674 = !DILocation(line: 546, column: 7, scope: !4672)
!4675 = !DILocation(line: 547, column: 5, scope: !4671)
!4676 = !DILocation(line: 547, column: 11, scope: !4671)
!4677 = !DILocation(line: 547, column: 4, scope: !4671)
!4678 = !DILocation(line: 549, column: 5, scope: !4671)
!4679 = !DILocation(line: 549, column: 11, scope: !4671)
!4680 = !DILocation(line: 550, column: 2, scope: !4672)
!4681 = !DILocation(line: 552, column: 6, scope: !4682)
!4682 = distinct !DILexicalBlock(scope: !4533, file: !3, line: 552, column: 6)
!4683 = !DILocation(line: 552, column: 15, scope: !4682)
!4684 = !DILocation(line: 552, column: 6, scope: !4533)
!4685 = !DILocation(line: 553, column: 4, scope: !4682)
!4686 = !DILocation(line: 553, column: 10, scope: !4682)
!4687 = !DILocation(line: 553, column: 3, scope: !4682)
!4688 = !DILocation(line: 555, column: 6, scope: !4689)
!4689 = distinct !DILexicalBlock(scope: !4533, file: !3, line: 555, column: 6)
!4690 = !DILocation(line: 555, column: 15, scope: !4689)
!4691 = !DILocation(line: 555, column: 6, scope: !4533)
!4692 = !DILocation(line: 556, column: 4, scope: !4689)
!4693 = !DILocation(line: 556, column: 10, scope: !4689)
!4694 = !DILocation(line: 556, column: 3, scope: !4689)
!4695 = !DILocation(line: 557, column: 6, scope: !4696)
!4696 = distinct !DILexicalBlock(scope: !4533, file: !3, line: 557, column: 6)
!4697 = !DILocation(line: 557, column: 15, scope: !4696)
!4698 = !DILocation(line: 557, column: 6, scope: !4533)
!4699 = !DILocation(line: 558, column: 4, scope: !4696)
!4700 = !DILocation(line: 558, column: 10, scope: !4696)
!4701 = !DILocation(line: 558, column: 3, scope: !4696)
!4702 = !DILocation(line: 560, column: 9, scope: !4533)
!4703 = !DILocation(line: 560, column: 2, scope: !4533)
!4704 = !DILocation(line: 561, column: 1, scope: !4533)
!4705 = distinct !DISubprogram(name: "of_find_spi_gpio", scope: !3, file: !3, line: 372, type: !4706, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!4706 = !DISubroutineType(types: !4707)
!4707 = !{!4087, !166, !154, !4282}
!4708 = !DILocalVariable(name: "dev", arg: 1, scope: !4705, file: !3, line: 372, type: !166)
!4709 = !DILocation(line: 372, column: 58, scope: !4705)
!4710 = !DILocalVariable(name: "con_id", arg: 2, scope: !4705, file: !3, line: 372, type: !154)
!4711 = !DILocation(line: 372, column: 75, scope: !4705)
!4712 = !DILocalVariable(name: "of_flags", arg: 3, scope: !4705, file: !3, line: 373, type: !4282)
!4713 = !DILocation(line: 373, column: 28, scope: !4705)
!4714 = !DILocalVariable(name: "prop_name", scope: !4705, file: !3, line: 375, type: !2549)
!4715 = !DILocation(line: 375, column: 7, scope: !4705)
!4716 = !DILocalVariable(name: "np", scope: !4705, file: !3, line: 376, type: !3509)
!4717 = !DILocation(line: 376, column: 22, scope: !4705)
!4718 = !DILocation(line: 376, column: 27, scope: !4705)
!4719 = !DILocation(line: 376, column: 32, scope: !4705)
!4720 = !DILocalVariable(name: "desc", scope: !4705, file: !3, line: 377, type: !4087)
!4721 = !DILocation(line: 377, column: 20, scope: !4705)
!4722 = !DILocation(line: 387, column: 31, scope: !4723)
!4723 = distinct !DILexicalBlock(scope: !4705, file: !3, line: 387, column: 6)
!4724 = !DILocation(line: 387, column: 7, scope: !4723)
!4725 = !DILocation(line: 387, column: 47, scope: !4723)
!4726 = !DILocation(line: 387, column: 51, scope: !4723)
!4727 = !DILocation(line: 387, column: 6, scope: !4705)
!4728 = !DILocation(line: 388, column: 10, scope: !4723)
!4729 = !DILocation(line: 388, column: 3, scope: !4723)
!4730 = !DILocation(line: 391, column: 11, scope: !4705)
!4731 = !DILocation(line: 391, column: 58, scope: !4705)
!4732 = !DILocation(line: 391, column: 2, scope: !4705)
!4733 = !DILocation(line: 393, column: 34, scope: !4705)
!4734 = !DILocation(line: 393, column: 38, scope: !4705)
!4735 = !DILocation(line: 393, column: 52, scope: !4705)
!4736 = !DILocation(line: 393, column: 9, scope: !4705)
!4737 = !DILocation(line: 393, column: 7, scope: !4705)
!4738 = !DILocation(line: 394, column: 9, scope: !4705)
!4739 = !DILocation(line: 394, column: 2, scope: !4705)
!4740 = !DILocation(line: 395, column: 1, scope: !4705)
!4741 = distinct !DISubprogram(name: "of_find_spi_cs_gpio", scope: !3, file: !3, line: 402, type: !4534, scopeLine: 406, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!4742 = !DILocalVariable(name: "dev", arg: 1, scope: !4741, file: !3, line: 402, type: !166)
!4743 = !DILocation(line: 402, column: 61, scope: !4741)
!4744 = !DILocalVariable(name: "con_id", arg: 2, scope: !4741, file: !3, line: 403, type: !154)
!4745 = !DILocation(line: 403, column: 23, scope: !4741)
!4746 = !DILocalVariable(name: "idx", arg: 3, scope: !4741, file: !3, line: 404, type: !7)
!4747 = !DILocation(line: 404, column: 24, scope: !4741)
!4748 = !DILocalVariable(name: "flags", arg: 4, scope: !4741, file: !3, line: 405, type: !3649)
!4749 = !DILocation(line: 405, column: 26, scope: !4741)
!4750 = !DILocalVariable(name: "np", scope: !4741, file: !3, line: 407, type: !3509)
!4751 = !DILocation(line: 407, column: 22, scope: !4741)
!4752 = !DILocation(line: 407, column: 27, scope: !4741)
!4753 = !DILocation(line: 407, column: 32, scope: !4741)
!4754 = !DILocation(line: 413, column: 31, scope: !4755)
!4755 = distinct !DILexicalBlock(scope: !4741, file: !3, line: 413, column: 6)
!4756 = !DILocation(line: 413, column: 7, scope: !4755)
!4757 = !DILocation(line: 413, column: 46, scope: !4755)
!4758 = !DILocation(line: 414, column: 31, scope: !4755)
!4759 = !DILocation(line: 414, column: 7, scope: !4755)
!4760 = !DILocation(line: 414, column: 62, scope: !4755)
!4761 = !DILocation(line: 415, column: 31, scope: !4755)
!4762 = !DILocation(line: 415, column: 7, scope: !4755)
!4763 = !DILocation(line: 413, column: 6, scope: !4741)
!4764 = !DILocation(line: 416, column: 10, scope: !4755)
!4765 = !DILocation(line: 416, column: 3, scope: !4755)
!4766 = !DILocation(line: 418, column: 7, scope: !4767)
!4767 = distinct !DILexicalBlock(scope: !4741, file: !3, line: 418, column: 6)
!4768 = !DILocation(line: 418, column: 14, scope: !4767)
!4769 = !DILocation(line: 418, column: 24, scope: !4767)
!4770 = !DILocation(line: 418, column: 17, scope: !4767)
!4771 = !DILocation(line: 418, column: 6, scope: !4741)
!4772 = !DILocation(line: 419, column: 10, scope: !4767)
!4773 = !DILocation(line: 419, column: 3, scope: !4767)
!4774 = !DILocation(line: 426, column: 22, scope: !4741)
!4775 = !DILocation(line: 426, column: 33, scope: !4741)
!4776 = !DILocation(line: 426, column: 38, scope: !4741)
!4777 = !DILocation(line: 426, column: 9, scope: !4741)
!4778 = !DILocation(line: 426, column: 2, scope: !4741)
!4779 = !DILocation(line: 427, column: 1, scope: !4741)
!4780 = distinct !DISubprogram(name: "of_find_regulator_gpio", scope: !3, file: !3, line: 434, type: !4706, scopeLine: 436, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!4781 = !DILocalVariable(name: "dev", arg: 1, scope: !4780, file: !3, line: 434, type: !166)
!4782 = !DILocation(line: 434, column: 64, scope: !4780)
!4783 = !DILocalVariable(name: "con_id", arg: 2, scope: !4780, file: !3, line: 434, type: !154)
!4784 = !DILocation(line: 434, column: 81, scope: !4780)
!4785 = !DILocalVariable(name: "of_flags", arg: 3, scope: !4780, file: !3, line: 435, type: !4282)
!4786 = !DILocation(line: 435, column: 27, scope: !4780)
!4787 = !DILocalVariable(name: "whitelist", scope: !4780, file: !3, line: 438, type: !4788)
!4788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 192, elements: !229)
!4789 = !DILocation(line: 438, column: 14, scope: !4780)
!4790 = !DILocalVariable(name: "np", scope: !4780, file: !3, line: 443, type: !3509)
!4791 = !DILocation(line: 443, column: 22, scope: !4780)
!4792 = !DILocation(line: 443, column: 27, scope: !4780)
!4793 = !DILocation(line: 443, column: 32, scope: !4780)
!4794 = !DILocalVariable(name: "desc", scope: !4780, file: !3, line: 444, type: !4087)
!4795 = !DILocation(line: 444, column: 20, scope: !4780)
!4796 = !DILocalVariable(name: "i", scope: !4780, file: !3, line: 445, type: !138)
!4797 = !DILocation(line: 445, column: 6, scope: !4780)
!4798 = !DILocation(line: 448, column: 10, scope: !4799)
!4799 = distinct !DILexicalBlock(scope: !4780, file: !3, line: 447, column: 6)
!4800 = !DILocation(line: 448, column: 3, scope: !4799)
!4801 = distinct !DISubprogram(name: "of_find_arizona_gpio", scope: !3, file: !3, line: 461, type: !4706, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!4802 = !DILocalVariable(name: "dev", arg: 1, scope: !4801, file: !3, line: 461, type: !166)
!4803 = !DILocation(line: 461, column: 62, scope: !4801)
!4804 = !DILocalVariable(name: "con_id", arg: 2, scope: !4801, file: !3, line: 462, type: !154)
!4805 = !DILocation(line: 462, column: 24, scope: !4801)
!4806 = !DILocalVariable(name: "of_flags", arg: 3, scope: !4801, file: !3, line: 463, type: !4282)
!4807 = !DILocation(line: 463, column: 32, scope: !4801)
!4808 = !DILocation(line: 466, column: 10, scope: !4809)
!4809 = distinct !DILexicalBlock(scope: !4801, file: !3, line: 465, column: 6)
!4810 = !DILocation(line: 466, column: 3, scope: !4809)
!4811 = distinct !DISubprogram(name: "of_find_usb_gpio", scope: !3, file: !3, line: 474, type: !4706, scopeLine: 477, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!4812 = !DILocalVariable(name: "dev", arg: 1, scope: !4811, file: !3, line: 474, type: !166)
!4813 = !DILocation(line: 474, column: 58, scope: !4811)
!4814 = !DILocalVariable(name: "con_id", arg: 2, scope: !4811, file: !3, line: 475, type: !154)
!4815 = !DILocation(line: 475, column: 20, scope: !4811)
!4816 = !DILocalVariable(name: "of_flags", arg: 3, scope: !4811, file: !3, line: 476, type: !4282)
!4817 = !DILocation(line: 476, column: 28, scope: !4811)
!4818 = !DILocation(line: 484, column: 10, scope: !4819)
!4819 = distinct !DILexicalBlock(scope: !4811, file: !3, line: 483, column: 6)
!4820 = !DILocation(line: 484, column: 3, scope: !4819)
!4821 = distinct !DISubprogram(name: "of_mm_gpiochip_add_data", scope: !3, file: !3, line: 846, type: !4822, scopeLine: 849, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !202)
!4822 = !DISubroutineType(types: !4823)
!4823 = !{!138, !3509, !4824, !141}
!4824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4825, size: 64)
!4825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_mm_gpio_chip", file: !108, line: 41, size: 4736, elements: !4826)
!4826 = !{!4827, !4828, !4832}
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !4825, file: !108, line: 42, baseType: !4071, size: 4608)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "save_regs", scope: !4825, file: !108, line: 43, baseType: !4829, size: 64, offset: 4608)
!4829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4830, size: 64)
!4830 = !DISubroutineType(types: !4831)
!4831 = !{null, !4824}
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4825, file: !108, line: 44, baseType: !141, size: 64, offset: 4672)
!4833 = !DILocalVariable(name: "np", arg: 1, scope: !4821, file: !3, line: 846, type: !3509)
!4834 = !DILocation(line: 846, column: 49, scope: !4821)
!4835 = !DILocalVariable(name: "mm_gc", arg: 2, scope: !4821, file: !3, line: 847, type: !4824)
!4836 = !DILocation(line: 847, column: 32, scope: !4821)
!4837 = !DILocalVariable(name: "data", arg: 3, scope: !4821, file: !3, line: 848, type: !141)
!4838 = !DILocation(line: 848, column: 14, scope: !4821)
!4839 = !DILocalVariable(name: "ret", scope: !4821, file: !3, line: 850, type: !138)
!4840 = !DILocation(line: 850, column: 6, scope: !4821)
!4841 = !DILocalVariable(name: "gc", scope: !4821, file: !3, line: 851, type: !4085)
!4842 = !DILocation(line: 851, column: 20, scope: !4821)
!4843 = !DILocation(line: 851, column: 26, scope: !4821)
!4844 = !DILocation(line: 851, column: 33, scope: !4821)
!4845 = !DILocation(line: 853, column: 44, scope: !4821)
!4846 = !DILocation(line: 853, column: 14, scope: !4821)
!4847 = !DILocation(line: 853, column: 2, scope: !4821)
!4848 = !DILocation(line: 853, column: 6, scope: !4821)
!4849 = !DILocation(line: 853, column: 12, scope: !4821)
!4850 = !DILocation(line: 854, column: 7, scope: !4851)
!4851 = distinct !DILexicalBlock(scope: !4821, file: !3, line: 854, column: 6)
!4852 = !DILocation(line: 854, column: 11, scope: !4851)
!4853 = !DILocation(line: 854, column: 6, scope: !4821)
!4854 = !DILocation(line: 855, column: 3, scope: !4851)
!4855 = !DILocation(line: 857, column: 25, scope: !4821)
!4856 = !DILocation(line: 857, column: 16, scope: !4821)
!4857 = !DILocation(line: 857, column: 2, scope: !4821)
!4858 = !DILocation(line: 857, column: 9, scope: !4821)
!4859 = !DILocation(line: 857, column: 14, scope: !4821)
!4860 = !DILocation(line: 858, column: 7, scope: !4861)
!4861 = distinct !DILexicalBlock(scope: !4821, file: !3, line: 858, column: 6)
!4862 = !DILocation(line: 858, column: 14, scope: !4861)
!4863 = !DILocation(line: 858, column: 6, scope: !4821)
!4864 = !DILocation(line: 859, column: 3, scope: !4861)
!4865 = !DILocation(line: 861, column: 2, scope: !4821)
!4866 = !DILocation(line: 861, column: 6, scope: !4821)
!4867 = !DILocation(line: 861, column: 11, scope: !4821)
!4868 = !DILocation(line: 863, column: 6, scope: !4869)
!4869 = distinct !DILexicalBlock(scope: !4821, file: !3, line: 863, column: 6)
!4870 = !DILocation(line: 863, column: 13, scope: !4869)
!4871 = !DILocation(line: 863, column: 6, scope: !4821)
!4872 = !DILocation(line: 864, column: 3, scope: !4869)
!4873 = !DILocation(line: 864, column: 10, scope: !4869)
!4874 = !DILocation(line: 864, column: 20, scope: !4869)
!4875 = !DILocation(line: 866, column: 22, scope: !4821)
!4876 = !DILocation(line: 866, column: 2, scope: !4821)
!4877 = !DILocation(line: 866, column: 9, scope: !4821)
!4878 = !DILocation(line: 866, column: 12, scope: !4821)
!4879 = !DILocation(line: 866, column: 20, scope: !4821)
!4880 = !DILocation(line: 868, column: 8, scope: !4821)
!4881 = !DILocation(line: 868, column: 6, scope: !4821)
!4882 = !DILocation(line: 869, column: 6, scope: !4883)
!4883 = distinct !DILexicalBlock(scope: !4821, file: !3, line: 869, column: 6)
!4884 = !DILocation(line: 869, column: 6, scope: !4821)
!4885 = !DILocation(line: 870, column: 3, scope: !4883)
!4886 = !DILocation(line: 872, column: 2, scope: !4821)
!4887 = !DILabel(scope: !4821, name: "err2", file: !3, line: 873)
!4888 = !DILocation(line: 873, column: 1, scope: !4821)
!4889 = !DILocation(line: 874, column: 10, scope: !4821)
!4890 = !DILocation(line: 874, column: 17, scope: !4821)
!4891 = !DILocation(line: 874, column: 2, scope: !4821)
!4892 = !DILabel(scope: !4821, name: "err1", file: !3, line: 875)
!4893 = !DILocation(line: 875, column: 1, scope: !4821)
!4894 = !DILocation(line: 876, column: 8, scope: !4821)
!4895 = !DILocation(line: 876, column: 12, scope: !4821)
!4896 = !DILocation(line: 876, column: 2, scope: !4821)
!4897 = !DILabel(scope: !4821, name: "err0", file: !3, line: 877)
!4898 = !DILocation(line: 877, column: 1, scope: !4821)
!4899 = !DILocation(line: 878, column: 2, scope: !4821)
!4900 = !DILocation(line: 879, column: 9, scope: !4821)
!4901 = !DILocation(line: 879, column: 2, scope: !4821)
!4902 = !DILocation(line: 880, column: 1, scope: !4821)
!4903 = distinct !DISubprogram(name: "of_mm_gpiochip_remove", scope: !3, file: !3, line: 887, type: !4830, scopeLine: 888, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !202)
!4904 = !DILocalVariable(name: "mm_gc", arg: 1, scope: !4903, file: !3, line: 887, type: !4824)
!4905 = !DILocation(line: 887, column: 52, scope: !4903)
!4906 = !DILocalVariable(name: "gc", scope: !4903, file: !3, line: 889, type: !4085)
!4907 = !DILocation(line: 889, column: 20, scope: !4903)
!4908 = !DILocation(line: 889, column: 26, scope: !4903)
!4909 = !DILocation(line: 889, column: 33, scope: !4903)
!4910 = !DILocation(line: 891, column: 7, scope: !4911)
!4911 = distinct !DILexicalBlock(scope: !4903, file: !3, line: 891, column: 6)
!4912 = !DILocation(line: 891, column: 6, scope: !4903)
!4913 = !DILocation(line: 892, column: 3, scope: !4911)
!4914 = !DILocation(line: 894, column: 18, scope: !4903)
!4915 = !DILocation(line: 894, column: 2, scope: !4903)
!4916 = !DILocation(line: 895, column: 10, scope: !4903)
!4917 = !DILocation(line: 895, column: 17, scope: !4903)
!4918 = !DILocation(line: 895, column: 2, scope: !4903)
!4919 = !DILocation(line: 896, column: 8, scope: !4903)
!4920 = !DILocation(line: 896, column: 12, scope: !4903)
!4921 = !DILocation(line: 896, column: 2, scope: !4903)
!4922 = !DILocation(line: 897, column: 1, scope: !4903)
!4923 = distinct !DISubprogram(name: "of_gpiochip_add", scope: !3, file: !3, line: 1008, type: !4160, scopeLine: 1009, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !202)
!4924 = !DILocalVariable(name: "chip", arg: 1, scope: !4923, file: !3, line: 1008, type: !4085)
!4925 = !DILocation(line: 1008, column: 39, scope: !4923)
!4926 = !DILocalVariable(name: "ret", scope: !4923, file: !3, line: 1010, type: !138)
!4927 = !DILocation(line: 1010, column: 6, scope: !4923)
!4928 = !DILocation(line: 1012, column: 7, scope: !4929)
!4929 = distinct !DILexicalBlock(scope: !4923, file: !3, line: 1012, column: 6)
!4930 = !DILocation(line: 1012, column: 13, scope: !4929)
!4931 = !DILocation(line: 1012, column: 6, scope: !4923)
!4932 = !DILocation(line: 1013, column: 3, scope: !4929)
!4933 = !DILocation(line: 1015, column: 7, scope: !4934)
!4934 = distinct !DILexicalBlock(scope: !4923, file: !3, line: 1015, column: 6)
!4935 = !DILocation(line: 1015, column: 13, scope: !4934)
!4936 = !DILocation(line: 1015, column: 6, scope: !4923)
!4937 = !DILocation(line: 1016, column: 3, scope: !4938)
!4938 = distinct !DILexicalBlock(scope: !4934, file: !3, line: 1015, column: 23)
!4939 = !DILocation(line: 1016, column: 9, scope: !4938)
!4940 = !DILocation(line: 1016, column: 25, scope: !4938)
!4941 = !DILocation(line: 1017, column: 3, scope: !4938)
!4942 = !DILocation(line: 1017, column: 9, scope: !4938)
!4943 = !DILocation(line: 1017, column: 18, scope: !4938)
!4944 = !DILocation(line: 1018, column: 2, scope: !4938)
!4945 = !DILocation(line: 1020, column: 6, scope: !4946)
!4946 = distinct !DILexicalBlock(scope: !4923, file: !3, line: 1020, column: 6)
!4947 = !DILocation(line: 1020, column: 12, scope: !4946)
!4948 = !DILocation(line: 1020, column: 28, scope: !4946)
!4949 = !DILocation(line: 1020, column: 6, scope: !4923)
!4950 = !DILocation(line: 1021, column: 3, scope: !4946)
!4951 = !DILocation(line: 1023, column: 30, scope: !4923)
!4952 = !DILocation(line: 1023, column: 2, scope: !4923)
!4953 = !DILocation(line: 1025, column: 34, scope: !4923)
!4954 = !DILocation(line: 1025, column: 8, scope: !4923)
!4955 = !DILocation(line: 1025, column: 6, scope: !4923)
!4956 = !DILocation(line: 1026, column: 6, scope: !4957)
!4957 = distinct !DILexicalBlock(scope: !4923, file: !3, line: 1026, column: 6)
!4958 = !DILocation(line: 1026, column: 6, scope: !4923)
!4959 = !DILocation(line: 1027, column: 10, scope: !4957)
!4960 = !DILocation(line: 1027, column: 3, scope: !4957)
!4961 = !DILocation(line: 1029, column: 14, scope: !4923)
!4962 = !DILocation(line: 1029, column: 20, scope: !4923)
!4963 = !DILocation(line: 1029, column: 2, scope: !4923)
!4964 = !DILocation(line: 1031, column: 31, scope: !4923)
!4965 = !DILocation(line: 1031, column: 8, scope: !4923)
!4966 = !DILocation(line: 1031, column: 6, scope: !4923)
!4967 = !DILocation(line: 1032, column: 6, scope: !4968)
!4968 = distinct !DILexicalBlock(scope: !4923, file: !3, line: 1032, column: 6)
!4969 = !DILocation(line: 1032, column: 6, scope: !4923)
!4970 = !DILocation(line: 1033, column: 15, scope: !4968)
!4971 = !DILocation(line: 1033, column: 21, scope: !4968)
!4972 = !DILocation(line: 1033, column: 3, scope: !4968)
!4973 = !DILocation(line: 1035, column: 9, scope: !4923)
!4974 = !DILocation(line: 1035, column: 2, scope: !4923)
!4975 = !DILocation(line: 1036, column: 1, scope: !4923)
!4976 = distinct !DISubprogram(name: "of_gpio_simple_xlate", scope: !3, file: !3, line: 799, type: !4234, scopeLine: 802, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!4977 = !DILocalVariable(name: "gc", arg: 1, scope: !4976, file: !3, line: 799, type: !4085)
!4978 = !DILocation(line: 799, column: 51, scope: !4976)
!4979 = !DILocalVariable(name: "gpiospec", arg: 2, scope: !4976, file: !3, line: 800, type: !4236)
!4980 = !DILocation(line: 800, column: 35, scope: !4976)
!4981 = !DILocalVariable(name: "flags", arg: 3, scope: !4976, file: !3, line: 801, type: !1326)
!4982 = !DILocation(line: 801, column: 10, scope: !4976)
!4983 = !DILocation(line: 809, column: 6, scope: !4984)
!4984 = distinct !DILexicalBlock(scope: !4976, file: !3, line: 809, column: 6)
!4985 = !DILocation(line: 809, column: 10, scope: !4984)
!4986 = !DILocation(line: 809, column: 26, scope: !4984)
!4987 = !DILocation(line: 809, column: 6, scope: !4976)
!4988 = !DILocalVariable(name: "__ret_warn_on", scope: !4989, file: !3, line: 810, type: !138)
!4989 = distinct !DILexicalBlock(scope: !4990, file: !3, line: 810, column: 3)
!4990 = distinct !DILexicalBlock(scope: !4984, file: !3, line: 809, column: 31)
!4991 = !DILocation(line: 810, column: 3, scope: !4989)
!4992 = !DILocation(line: 810, column: 3, scope: !4993)
!4993 = distinct !DILexicalBlock(scope: !4989, file: !3, line: 810, column: 3)
!4994 = !DILocation(line: 810, column: 3, scope: !4995)
!4995 = distinct !DILexicalBlock(scope: !4993, file: !3, line: 810, column: 3)
!4996 = !DILocation(line: 810, column: 3, scope: !4997)
!4997 = distinct !DILexicalBlock(scope: !4995, file: !3, line: 810, column: 3)
!4998 = !DILocation(line: 810, column: 3, scope: !4999)
!4999 = distinct !DILexicalBlock(scope: !4995, file: !3, line: 810, column: 3)
!5000 = !{i32 -2142410679, i32 -2142410650, i32 -2142410604, i32 -2142410546, i32 -2142410492, i32 -2142410438, i32 -2142410383, i32 -2142410352}
!5001 = !DILocation(line: 810, column: 3, scope: !5002)
!5002 = distinct !DILexicalBlock(scope: !4995, file: !3, line: 810, column: 3)
!5003 = !{i32 -2142409945, i32 -2142409938, i32 -2142409886, i32 -2142409855, i32 -2142409825}
!5004 = !DILocation(line: 810, column: 3, scope: !5005)
!5005 = distinct !DILexicalBlock(scope: !4995, file: !3, line: 810, column: 3)
!5006 = !DILocation(line: 811, column: 3, scope: !4990)
!5007 = !DILocalVariable(name: "__ret_warn_on", scope: !5008, file: !3, line: 814, type: !138)
!5008 = distinct !DILexicalBlock(scope: !5009, file: !3, line: 814, column: 6)
!5009 = distinct !DILexicalBlock(scope: !4976, file: !3, line: 814, column: 6)
!5010 = !DILocation(line: 814, column: 6, scope: !5008)
!5011 = !DILocation(line: 814, column: 6, scope: !5012)
!5012 = distinct !DILexicalBlock(scope: !5008, file: !3, line: 814, column: 6)
!5013 = !DILocation(line: 814, column: 6, scope: !5014)
!5014 = distinct !DILexicalBlock(scope: !5012, file: !3, line: 814, column: 6)
!5015 = !DILocation(line: 814, column: 6, scope: !5016)
!5016 = distinct !DILexicalBlock(scope: !5014, file: !3, line: 814, column: 6)
!5017 = !DILocation(line: 814, column: 6, scope: !5018)
!5018 = distinct !DILexicalBlock(scope: !5014, file: !3, line: 814, column: 6)
!5019 = !{i32 -2142409208, i32 -2142409179, i32 -2142409133, i32 -2142409075, i32 -2142409021, i32 -2142408967, i32 -2142408912, i32 -2142408881}
!5020 = !DILocation(line: 814, column: 6, scope: !5021)
!5021 = distinct !DILexicalBlock(scope: !5014, file: !3, line: 814, column: 6)
!5022 = !{i32 -2142408474, i32 -2142408467, i32 -2142408415, i32 -2142408384, i32 -2142408354}
!5023 = !DILocation(line: 814, column: 6, scope: !5024)
!5024 = distinct !DILexicalBlock(scope: !5014, file: !3, line: 814, column: 6)
!5025 = !DILocation(line: 814, column: 6, scope: !5009)
!5026 = !DILocation(line: 814, column: 6, scope: !4976)
!5027 = !DILocation(line: 815, column: 3, scope: !5009)
!5028 = !DILocation(line: 817, column: 6, scope: !5029)
!5029 = distinct !DILexicalBlock(scope: !4976, file: !3, line: 817, column: 6)
!5030 = !DILocation(line: 817, column: 16, scope: !5029)
!5031 = !DILocation(line: 817, column: 27, scope: !5029)
!5032 = !DILocation(line: 817, column: 31, scope: !5029)
!5033 = !DILocation(line: 817, column: 24, scope: !5029)
!5034 = !DILocation(line: 817, column: 6, scope: !4976)
!5035 = !DILocation(line: 818, column: 3, scope: !5029)
!5036 = !DILocation(line: 820, column: 6, scope: !5037)
!5037 = distinct !DILexicalBlock(scope: !4976, file: !3, line: 820, column: 6)
!5038 = !DILocation(line: 820, column: 6, scope: !4976)
!5039 = !DILocation(line: 821, column: 12, scope: !5037)
!5040 = !DILocation(line: 821, column: 22, scope: !5037)
!5041 = !DILocation(line: 821, column: 4, scope: !5037)
!5042 = !DILocation(line: 821, column: 10, scope: !5037)
!5043 = !DILocation(line: 821, column: 3, scope: !5037)
!5044 = !DILocation(line: 823, column: 9, scope: !4976)
!5045 = !DILocation(line: 823, column: 19, scope: !4976)
!5046 = !DILocation(line: 823, column: 2, scope: !4976)
!5047 = !DILocation(line: 824, column: 1, scope: !4976)
!5048 = distinct !DISubprogram(name: "of_gpiochip_init_valid_mask", scope: !3, file: !3, line: 900, type: !5049, scopeLine: 901, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5049 = !DISubroutineType(types: !5050)
!5050 = !{null, !4085}
!5051 = !DILocalVariable(name: "map", arg: 1, scope: !5052, file: !5053, line: 419, type: !3649)
!5052 = distinct !DISubprogram(name: "bitmap_clear", scope: !5053, file: !5053, line: 419, type: !5054, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5053 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/lizy2001/genbc/linux")
!5054 = !DISubroutineType(types: !5055)
!5055 = !{null, !3649, !7, !7}
!5056 = !DILocation(line: 419, column: 57, scope: !5052, inlinedAt: !5057)
!5057 = distinct !DILocation(line: 918, column: 3, scope: !5058)
!5058 = distinct !DILexicalBlock(scope: !5059, file: !3, line: 910, column: 31)
!5059 = distinct !DILexicalBlock(scope: !5060, file: !3, line: 910, column: 2)
!5060 = distinct !DILexicalBlock(scope: !5048, file: !3, line: 910, column: 2)
!5061 = !DILocalVariable(name: "start", arg: 2, scope: !5052, file: !5053, line: 419, type: !7)
!5062 = !DILocation(line: 419, column: 75, scope: !5052, inlinedAt: !5057)
!5063 = !DILocalVariable(name: "nbits", arg: 3, scope: !5052, file: !5053, line: 420, type: !7)
!5064 = !DILocation(line: 420, column: 16, scope: !5052, inlinedAt: !5057)
!5065 = !DILocalVariable(name: "chip", arg: 1, scope: !5048, file: !3, line: 900, type: !4085)
!5066 = !DILocation(line: 900, column: 59, scope: !5048)
!5067 = !DILocalVariable(name: "len", scope: !5048, file: !3, line: 902, type: !138)
!5068 = !DILocation(line: 902, column: 6, scope: !5048)
!5069 = !DILocalVariable(name: "i", scope: !5048, file: !3, line: 902, type: !138)
!5070 = !DILocation(line: 902, column: 11, scope: !5048)
!5071 = !DILocalVariable(name: "start", scope: !5048, file: !3, line: 903, type: !367)
!5072 = !DILocation(line: 903, column: 6, scope: !5048)
!5073 = !DILocalVariable(name: "count", scope: !5048, file: !3, line: 903, type: !367)
!5074 = !DILocation(line: 903, column: 13, scope: !5048)
!5075 = !DILocalVariable(name: "np", scope: !5048, file: !3, line: 904, type: !3509)
!5076 = !DILocation(line: 904, column: 22, scope: !5048)
!5077 = !DILocation(line: 904, column: 27, scope: !5048)
!5078 = !DILocation(line: 904, column: 33, scope: !5048)
!5079 = !DILocation(line: 906, column: 36, scope: !5048)
!5080 = !DILocation(line: 906, column: 8, scope: !5048)
!5081 = !DILocation(line: 906, column: 6, scope: !5048)
!5082 = !DILocation(line: 907, column: 6, scope: !5083)
!5083 = distinct !DILexicalBlock(scope: !5048, file: !3, line: 907, column: 6)
!5084 = !DILocation(line: 907, column: 10, scope: !5083)
!5085 = !DILocation(line: 907, column: 14, scope: !5083)
!5086 = !DILocation(line: 907, column: 17, scope: !5083)
!5087 = !DILocation(line: 907, column: 21, scope: !5083)
!5088 = !DILocation(line: 907, column: 25, scope: !5083)
!5089 = !DILocation(line: 907, column: 6, scope: !5048)
!5090 = !DILocation(line: 908, column: 3, scope: !5083)
!5091 = !DILocation(line: 910, column: 9, scope: !5060)
!5092 = !DILocation(line: 910, column: 7, scope: !5060)
!5093 = !DILocation(line: 910, column: 14, scope: !5059)
!5094 = !DILocation(line: 910, column: 18, scope: !5059)
!5095 = !DILocation(line: 910, column: 16, scope: !5059)
!5096 = !DILocation(line: 910, column: 2, scope: !5060)
!5097 = !DILocation(line: 911, column: 30, scope: !5058)
!5098 = !DILocation(line: 912, column: 9, scope: !5058)
!5099 = !DILocation(line: 911, column: 3, scope: !5058)
!5100 = !DILocation(line: 913, column: 30, scope: !5058)
!5101 = !DILocation(line: 914, column: 9, scope: !5058)
!5102 = !DILocation(line: 914, column: 11, scope: !5058)
!5103 = !DILocation(line: 913, column: 3, scope: !5058)
!5104 = !DILocation(line: 915, column: 7, scope: !5105)
!5105 = distinct !DILexicalBlock(scope: !5058, file: !3, line: 915, column: 7)
!5106 = !DILocation(line: 915, column: 16, scope: !5105)
!5107 = !DILocation(line: 915, column: 22, scope: !5105)
!5108 = !DILocation(line: 915, column: 13, scope: !5105)
!5109 = !DILocation(line: 915, column: 28, scope: !5105)
!5110 = !DILocation(line: 915, column: 31, scope: !5105)
!5111 = !DILocation(line: 915, column: 39, scope: !5105)
!5112 = !DILocation(line: 915, column: 37, scope: !5105)
!5113 = !DILocation(line: 915, column: 48, scope: !5105)
!5114 = !DILocation(line: 915, column: 54, scope: !5105)
!5115 = !DILocation(line: 915, column: 45, scope: !5105)
!5116 = !DILocation(line: 915, column: 7, scope: !5058)
!5117 = !DILocation(line: 916, column: 4, scope: !5105)
!5118 = !DILocation(line: 918, column: 16, scope: !5058)
!5119 = !DILocation(line: 918, column: 22, scope: !5058)
!5120 = !DILocation(line: 918, column: 34, scope: !5058)
!5121 = !DILocation(line: 918, column: 41, scope: !5058)
!5122 = !DILocation(line: 422, column: 27, scope: !5123, inlinedAt: !5057)
!5123 = distinct !DILexicalBlock(scope: !5052, file: !5053, line: 422, column: 6)
!5124 = !DILocation(line: 422, column: 6, scope: !5123, inlinedAt: !5057)
!5125 = !DILocation(line: 422, column: 34, scope: !5123, inlinedAt: !5057)
!5126 = !DILocation(line: 422, column: 37, scope: !5123, inlinedAt: !5057)
!5127 = !DILocation(line: 422, column: 43, scope: !5123, inlinedAt: !5057)
!5128 = !DILocation(line: 422, column: 6, scope: !5052, inlinedAt: !5057)
!5129 = !DILocation(line: 423, column: 15, scope: !5123, inlinedAt: !5057)
!5130 = !DILocation(line: 423, column: 22, scope: !5123, inlinedAt: !5057)
!5131 = !DILocation(line: 423, column: 3, scope: !5123, inlinedAt: !5057)
!5132 = !DILocation(line: 424, column: 32, scope: !5133, inlinedAt: !5057)
!5133 = distinct !DILexicalBlock(scope: !5123, file: !5053, line: 424, column: 11)
!5134 = !DILocation(line: 424, column: 38, scope: !5133, inlinedAt: !5057)
!5135 = !DILocation(line: 424, column: 11, scope: !5133, inlinedAt: !5057)
!5136 = !DILocation(line: 424, column: 57, scope: !5133, inlinedAt: !5057)
!5137 = !DILocation(line: 425, column: 4, scope: !5133, inlinedAt: !5057)
!5138 = !DILocation(line: 425, column: 44, scope: !5133, inlinedAt: !5057)
!5139 = !DILocation(line: 426, column: 25, scope: !5133, inlinedAt: !5057)
!5140 = !DILocation(line: 426, column: 31, scope: !5133, inlinedAt: !5057)
!5141 = !DILocation(line: 426, column: 4, scope: !5133, inlinedAt: !5057)
!5142 = !DILocation(line: 426, column: 50, scope: !5133, inlinedAt: !5057)
!5143 = !DILocation(line: 427, column: 4, scope: !5133, inlinedAt: !5057)
!5144 = !DILocation(line: 424, column: 11, scope: !5123, inlinedAt: !5057)
!5145 = !DILocation(line: 428, column: 18, scope: !5133, inlinedAt: !5057)
!5146 = !DILocation(line: 428, column: 10, scope: !5133, inlinedAt: !5057)
!5147 = !DILocation(line: 428, column: 24, scope: !5133, inlinedAt: !5057)
!5148 = !DILocation(line: 428, column: 30, scope: !5133, inlinedAt: !5057)
!5149 = !DILocation(line: 428, column: 22, scope: !5133, inlinedAt: !5057)
!5150 = !DILocation(line: 428, column: 38, scope: !5133, inlinedAt: !5057)
!5151 = !DILocation(line: 428, column: 44, scope: !5133, inlinedAt: !5057)
!5152 = !DILocation(line: 428, column: 3, scope: !5133, inlinedAt: !5057)
!5153 = !DILocation(line: 430, column: 18, scope: !5133, inlinedAt: !5057)
!5154 = !DILocation(line: 430, column: 23, scope: !5133, inlinedAt: !5057)
!5155 = !DILocation(line: 430, column: 30, scope: !5133, inlinedAt: !5057)
!5156 = !DILocation(line: 430, column: 3, scope: !5133, inlinedAt: !5057)
!5157 = !DILocation(line: 919, column: 2, scope: !5058)
!5158 = !DILocation(line: 910, column: 25, scope: !5059)
!5159 = !DILocation(line: 910, column: 2, scope: !5059)
!5160 = distinct !{!5160, !5096, !5161}
!5161 = !DILocation(line: 919, column: 2, scope: !5060)
!5162 = !DILocation(line: 920, column: 1, scope: !5048)
!5163 = distinct !DISubprogram(name: "of_gpiochip_add_pin_range", scope: !3, file: !3, line: 1005, type: !4160, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5164 = !DILocalVariable(name: "chip", arg: 1, scope: !5163, file: !3, line: 1005, type: !4085)
!5165 = !DILocation(line: 1005, column: 56, scope: !5163)
!5166 = !DILocation(line: 1005, column: 64, scope: !5163)
!5167 = distinct !DISubprogram(name: "of_node_get", scope: !3511, file: !3511, line: 125, type: !5168, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5168 = !DISubroutineType(types: !5169)
!5169 = !{!3509, !3509}
!5170 = !DILocalVariable(name: "node", arg: 1, scope: !5167, file: !3511, line: 125, type: !3509)
!5171 = !DILocation(line: 125, column: 67, scope: !5167)
!5172 = !DILocation(line: 127, column: 9, scope: !5167)
!5173 = !DILocation(line: 127, column: 2, scope: !5167)
!5174 = distinct !DISubprogram(name: "of_gpiochip_scan_gpios", scope: !3, file: !3, line: 684, type: !4160, scopeLine: 685, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5175 = !DILocalVariable(name: "chip", arg: 1, scope: !5174, file: !3, line: 684, type: !4085)
!5176 = !DILocation(line: 684, column: 53, scope: !5174)
!5177 = !DILocalVariable(name: "np", scope: !5174, file: !3, line: 686, type: !3509)
!5178 = !DILocation(line: 686, column: 22, scope: !5174)
!5179 = !DILocalVariable(name: "ret", scope: !5174, file: !3, line: 687, type: !138)
!5180 = !DILocation(line: 687, column: 6, scope: !5174)
!5181 = !DILocation(line: 689, column: 2, scope: !5182)
!5182 = distinct !DILexicalBlock(scope: !5174, file: !3, line: 689, column: 2)
!5183 = !DILocation(line: 689, column: 2, scope: !5184)
!5184 = distinct !DILexicalBlock(scope: !5182, file: !3, line: 689, column: 2)
!5185 = !DILocation(line: 690, column: 30, scope: !5186)
!5186 = distinct !DILexicalBlock(scope: !5187, file: !3, line: 690, column: 7)
!5187 = distinct !DILexicalBlock(scope: !5184, file: !3, line: 689, column: 54)
!5188 = !DILocation(line: 690, column: 8, scope: !5186)
!5189 = !DILocation(line: 690, column: 7, scope: !5187)
!5190 = !DILocation(line: 691, column: 4, scope: !5186)
!5191 = !DILocation(line: 693, column: 29, scope: !5187)
!5192 = !DILocation(line: 693, column: 35, scope: !5187)
!5193 = !DILocation(line: 693, column: 9, scope: !5187)
!5194 = !DILocation(line: 693, column: 7, scope: !5187)
!5195 = !DILocation(line: 694, column: 7, scope: !5196)
!5196 = distinct !DILexicalBlock(scope: !5187, file: !3, line: 694, column: 7)
!5197 = !DILocation(line: 694, column: 11, scope: !5196)
!5198 = !DILocation(line: 694, column: 7, scope: !5187)
!5199 = !DILocation(line: 695, column: 16, scope: !5200)
!5200 = distinct !DILexicalBlock(scope: !5196, file: !3, line: 694, column: 16)
!5201 = !DILocation(line: 695, column: 4, scope: !5200)
!5202 = !DILocation(line: 696, column: 11, scope: !5200)
!5203 = !DILocation(line: 696, column: 4, scope: !5200)
!5204 = !DILocation(line: 699, column: 20, scope: !5187)
!5205 = !DILocation(line: 699, column: 3, scope: !5187)
!5206 = !DILocation(line: 700, column: 2, scope: !5187)
!5207 = distinct !{!5207, !5181, !5208}
!5208 = !DILocation(line: 700, column: 2, scope: !5182)
!5209 = !DILocation(line: 702, column: 2, scope: !5174)
!5210 = !DILocation(line: 703, column: 1, scope: !5174)
!5211 = distinct !DISubprogram(name: "of_node_put", scope: !3511, file: !3511, line: 129, type: !5212, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5212 = !DISubroutineType(types: !5213)
!5213 = !{null, !3509}
!5214 = !DILocalVariable(name: "node", arg: 1, scope: !5211, file: !3511, line: 129, type: !3509)
!5215 = !DILocation(line: 129, column: 52, scope: !5211)
!5216 = !DILocation(line: 129, column: 60, scope: !5211)
!5217 = distinct !DISubprogram(name: "of_gpiochip_remove", scope: !3, file: !3, line: 1038, type: !5049, scopeLine: 1039, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5218 = !DILocalVariable(name: "chip", arg: 1, scope: !5217, file: !3, line: 1038, type: !4085)
!5219 = !DILocation(line: 1038, column: 43, scope: !5217)
!5220 = !DILocation(line: 1040, column: 14, scope: !5217)
!5221 = !DILocation(line: 1040, column: 20, scope: !5217)
!5222 = !DILocation(line: 1040, column: 2, scope: !5217)
!5223 = !DILocation(line: 1041, column: 1, scope: !5217)
!5224 = distinct !DISubprogram(name: "of_find_gpiochip_by_xlate", scope: !3, file: !3, line: 93, type: !5225, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5225 = !DISubroutineType(types: !5226)
!5226 = !{!4085, !5227}
!5227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!5228 = !DILocalVariable(name: "gpiospec", arg: 1, scope: !5224, file: !3, line: 94, type: !5227)
!5229 = !DILocation(line: 94, column: 30, scope: !5224)
!5230 = !DILocation(line: 96, column: 23, scope: !5224)
!5231 = !DILocation(line: 96, column: 9, scope: !5224)
!5232 = !DILocation(line: 96, column: 2, scope: !5224)
!5233 = distinct !DISubprogram(name: "of_xlate_and_get_gpiod_flags", scope: !3, file: !3, line: 99, type: !5234, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5234 = !DISubroutineType(types: !5235)
!5235 = !{!4087, !4085, !5227, !4282}
!5236 = !DILocalVariable(name: "chip", arg: 1, scope: !5233, file: !3, line: 99, type: !4085)
!5237 = !DILocation(line: 99, column: 73, scope: !5233)
!5238 = !DILocalVariable(name: "gpiospec", arg: 2, scope: !5233, file: !3, line: 100, type: !5227)
!5239 = !DILocation(line: 100, column: 30, scope: !5233)
!5240 = !DILocalVariable(name: "flags", arg: 3, scope: !5233, file: !3, line: 101, type: !4282)
!5241 = !DILocation(line: 101, column: 26, scope: !5233)
!5242 = !DILocalVariable(name: "ret", scope: !5233, file: !3, line: 103, type: !138)
!5243 = !DILocation(line: 103, column: 6, scope: !5233)
!5244 = !DILocation(line: 105, column: 6, scope: !5245)
!5245 = distinct !DILexicalBlock(scope: !5233, file: !3, line: 105, column: 6)
!5246 = !DILocation(line: 105, column: 12, scope: !5245)
!5247 = !DILocation(line: 105, column: 31, scope: !5245)
!5248 = !DILocation(line: 105, column: 41, scope: !5245)
!5249 = !DILocation(line: 105, column: 28, scope: !5245)
!5250 = !DILocation(line: 105, column: 6, scope: !5233)
!5251 = !DILocation(line: 106, column: 10, scope: !5245)
!5252 = !DILocation(line: 106, column: 3, scope: !5245)
!5253 = !DILocation(line: 108, column: 8, scope: !5233)
!5254 = !DILocation(line: 108, column: 14, scope: !5233)
!5255 = !DILocation(line: 108, column: 23, scope: !5233)
!5256 = !DILocation(line: 108, column: 29, scope: !5233)
!5257 = !DILocation(line: 108, column: 39, scope: !5233)
!5258 = !DILocation(line: 108, column: 6, scope: !5233)
!5259 = !DILocation(line: 109, column: 6, scope: !5260)
!5260 = distinct !DILexicalBlock(scope: !5233, file: !3, line: 109, column: 6)
!5261 = !DILocation(line: 109, column: 10, scope: !5260)
!5262 = !DILocation(line: 109, column: 6, scope: !5233)
!5263 = !DILocation(line: 110, column: 18, scope: !5260)
!5264 = !DILocation(line: 110, column: 10, scope: !5260)
!5265 = !DILocation(line: 110, column: 3, scope: !5260)
!5266 = !DILocation(line: 112, column: 27, scope: !5233)
!5267 = !DILocation(line: 112, column: 33, scope: !5233)
!5268 = !DILocation(line: 112, column: 9, scope: !5233)
!5269 = !DILocation(line: 112, column: 2, scope: !5233)
!5270 = !DILocation(line: 113, column: 1, scope: !5233)
!5271 = distinct !DISubprogram(name: "of_gpio_flags_quirks", scope: !3, file: !3, line: 133, type: !5272, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5272 = !DISubroutineType(types: !5273)
!5273 = !{null, !3509, !154, !4282, !138}
!5274 = !DILocalVariable(name: "np", arg: 1, scope: !5271, file: !3, line: 133, type: !3509)
!5275 = !DILocation(line: 133, column: 54, scope: !5271)
!5276 = !DILocalVariable(name: "propname", arg: 2, scope: !5271, file: !3, line: 134, type: !154)
!5277 = !DILocation(line: 134, column: 18, scope: !5271)
!5278 = !DILocalVariable(name: "flags", arg: 3, scope: !5271, file: !3, line: 135, type: !4282)
!5279 = !DILocation(line: 135, column: 26, scope: !5271)
!5280 = !DILocalVariable(name: "index", arg: 4, scope: !5271, file: !3, line: 136, type: !138)
!5281 = !DILocation(line: 136, column: 10, scope: !5271)
!5282 = !DILocation(line: 180, column: 47, scope: !5283)
!5283 = distinct !DILexicalBlock(scope: !5271, file: !3, line: 180, column: 6)
!5284 = !DILocation(line: 180, column: 40, scope: !5283)
!5285 = !DILocation(line: 180, column: 69, scope: !5283)
!5286 = !DILocation(line: 181, column: 28, scope: !5283)
!5287 = !DILocation(line: 181, column: 6, scope: !5283)
!5288 = !DILocation(line: 180, column: 6, scope: !5271)
!5289 = !DILocalVariable(name: "child", scope: !5290, file: !3, line: 182, type: !3509)
!5290 = distinct !DILexicalBlock(scope: !5283, file: !3, line: 181, column: 45)
!5291 = !DILocation(line: 182, column: 23, scope: !5290)
!5292 = !DILocalVariable(name: "cs", scope: !5290, file: !3, line: 183, type: !367)
!5293 = !DILocation(line: 183, column: 7, scope: !5290)
!5294 = !DILocalVariable(name: "ret", scope: !5290, file: !3, line: 184, type: !138)
!5295 = !DILocation(line: 184, column: 7, scope: !5290)
!5296 = !DILocation(line: 186, column: 3, scope: !5297)
!5297 = distinct !DILexicalBlock(scope: !5290, file: !3, line: 186, column: 3)
!5298 = !DILocation(line: 186, column: 3, scope: !5299)
!5299 = distinct !DILexicalBlock(scope: !5297, file: !3, line: 186, column: 3)
!5300 = !DILocation(line: 187, column: 31, scope: !5301)
!5301 = distinct !DILexicalBlock(scope: !5299, file: !3, line: 186, column: 37)
!5302 = !DILocation(line: 187, column: 10, scope: !5301)
!5303 = !DILocation(line: 187, column: 8, scope: !5301)
!5304 = !DILocation(line: 188, column: 8, scope: !5305)
!5305 = distinct !DILexicalBlock(scope: !5301, file: !3, line: 188, column: 8)
!5306 = !DILocation(line: 188, column: 8, scope: !5301)
!5307 = !DILocation(line: 189, column: 5, scope: !5305)
!5308 = !DILocation(line: 190, column: 8, scope: !5309)
!5309 = distinct !DILexicalBlock(scope: !5301, file: !3, line: 190, column: 8)
!5310 = !DILocation(line: 190, column: 14, scope: !5309)
!5311 = !DILocation(line: 190, column: 11, scope: !5309)
!5312 = !DILocation(line: 190, column: 8, scope: !5301)
!5313 = !DILocation(line: 203, column: 31, scope: !5314)
!5314 = distinct !DILexicalBlock(scope: !5315, file: !3, line: 203, column: 9)
!5315 = distinct !DILexicalBlock(scope: !5309, file: !3, line: 190, column: 21)
!5316 = !DILocation(line: 203, column: 9, scope: !5314)
!5317 = !DILocation(line: 203, column: 9, scope: !5315)
!5318 = !DILocation(line: 204, column: 11, scope: !5319)
!5319 = distinct !DILexicalBlock(scope: !5320, file: !3, line: 204, column: 10)
!5320 = distinct !DILexicalBlock(scope: !5314, file: !3, line: 203, column: 54)
!5321 = !DILocation(line: 204, column: 10, scope: !5319)
!5322 = !DILocation(line: 204, column: 17, scope: !5319)
!5323 = !DILocation(line: 204, column: 10, scope: !5320)
!5324 = !DILocation(line: 205, column: 7, scope: !5325)
!5325 = distinct !DILexicalBlock(scope: !5319, file: !3, line: 204, column: 39)
!5326 = !DILocation(line: 207, column: 8, scope: !5325)
!5327 = !DILocation(line: 207, column: 14, scope: !5325)
!5328 = !DILocation(line: 208, column: 6, scope: !5325)
!5329 = !DILocation(line: 209, column: 5, scope: !5320)
!5330 = !DILocation(line: 210, column: 13, scope: !5331)
!5331 = distinct !DILexicalBlock(scope: !5332, file: !3, line: 210, column: 10)
!5332 = distinct !DILexicalBlock(scope: !5314, file: !3, line: 209, column: 12)
!5333 = !DILocation(line: 210, column: 12, scope: !5331)
!5334 = !DILocation(line: 210, column: 19, scope: !5331)
!5335 = !DILocation(line: 210, column: 10, scope: !5332)
!5336 = !DILocation(line: 211, column: 7, scope: !5331)
!5337 = !DILocation(line: 213, column: 7, scope: !5332)
!5338 = !DILocation(line: 213, column: 13, scope: !5332)
!5339 = !DILocation(line: 215, column: 17, scope: !5315)
!5340 = !DILocation(line: 215, column: 5, scope: !5315)
!5341 = !DILocation(line: 216, column: 5, scope: !5315)
!5342 = !DILocation(line: 218, column: 3, scope: !5301)
!5343 = distinct !{!5343, !5296, !5344}
!5344 = !DILocation(line: 218, column: 3, scope: !5297)
!5345 = !DILocation(line: 219, column: 2, scope: !5290)
!5346 = !DILocation(line: 223, column: 14, scope: !5347)
!5347 = distinct !DILexicalBlock(scope: !5271, file: !3, line: 222, column: 6)
!5348 = !DILocation(line: 223, column: 7, scope: !5347)
!5349 = !DILocation(line: 223, column: 43, scope: !5347)
!5350 = !DILocation(line: 224, column: 28, scope: !5347)
!5351 = !DILocation(line: 224, column: 6, scope: !5347)
!5352 = !DILocation(line: 222, column: 6, scope: !5271)
!5353 = !DILocation(line: 225, column: 4, scope: !5347)
!5354 = !DILocation(line: 225, column: 10, scope: !5347)
!5355 = !DILocation(line: 225, column: 3, scope: !5347)
!5356 = !DILocation(line: 226, column: 1, scope: !5271)
!5357 = distinct !DISubprogram(name: "of_gpiochip_match_node_and_xlate", scope: !3, file: !3, line: 84, type: !5358, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5358 = !DISubroutineType(types: !5359)
!5359 = !{!138, !4085, !141}
!5360 = !DILocalVariable(name: "chip", arg: 1, scope: !5357, file: !3, line: 84, type: !4085)
!5361 = !DILocation(line: 84, column: 63, scope: !5357)
!5362 = !DILocalVariable(name: "data", arg: 2, scope: !5357, file: !3, line: 84, type: !141)
!5363 = !DILocation(line: 84, column: 75, scope: !5357)
!5364 = !DILocalVariable(name: "gpiospec", scope: !5357, file: !3, line: 86, type: !5227)
!5365 = !DILocation(line: 86, column: 26, scope: !5357)
!5366 = !DILocation(line: 86, column: 37, scope: !5357)
!5367 = !DILocation(line: 88, column: 9, scope: !5357)
!5368 = !DILocation(line: 88, column: 15, scope: !5357)
!5369 = !DILocation(line: 88, column: 24, scope: !5357)
!5370 = !DILocation(line: 88, column: 28, scope: !5357)
!5371 = !DILocation(line: 88, column: 39, scope: !5357)
!5372 = !DILocation(line: 88, column: 49, scope: !5357)
!5373 = !DILocation(line: 88, column: 36, scope: !5357)
!5374 = !DILocation(line: 88, column: 52, scope: !5357)
!5375 = !DILocation(line: 89, column: 5, scope: !5357)
!5376 = !DILocation(line: 89, column: 11, scope: !5357)
!5377 = !DILocation(line: 89, column: 20, scope: !5357)
!5378 = !DILocation(line: 90, column: 5, scope: !5357)
!5379 = !DILocation(line: 90, column: 11, scope: !5357)
!5380 = !DILocation(line: 90, column: 20, scope: !5357)
!5381 = !DILocation(line: 90, column: 26, scope: !5357)
!5382 = !DILocation(line: 90, column: 42, scope: !5357)
!5383 = !DILocation(line: 0, scope: !5357)
!5384 = !DILocation(line: 88, column: 2, scope: !5357)
!5385 = distinct !DISubprogram(name: "of_property_read_bool", scope: !3511, file: !3511, line: 1192, type: !5386, scopeLine: 1194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5386 = !DISubroutineType(types: !5387)
!5387 = !{!442, !4269, !154}
!5388 = !DILocalVariable(name: "np", arg: 1, scope: !5385, file: !3511, line: 1192, type: !4269)
!5389 = !DILocation(line: 1192, column: 68, scope: !5385)
!5390 = !DILocalVariable(name: "propname", arg: 2, scope: !5385, file: !3511, line: 1193, type: !154)
!5391 = !DILocation(line: 1193, column: 19, scope: !5385)
!5392 = !DILocalVariable(name: "prop", scope: !5385, file: !3511, line: 1195, type: !3608)
!5393 = !DILocation(line: 1195, column: 19, scope: !5385)
!5394 = !DILocation(line: 1195, column: 43, scope: !5385)
!5395 = !DILocation(line: 1195, column: 47, scope: !5385)
!5396 = !DILocation(line: 1195, column: 26, scope: !5385)
!5397 = !DILocation(line: 1197, column: 9, scope: !5385)
!5398 = !DILocation(line: 1197, column: 2, scope: !5385)
!5399 = distinct !DISubprogram(name: "of_property_read_u32", scope: !3511, file: !3511, line: 1214, type: !5400, scopeLine: 1217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5400 = !DISubroutineType(types: !5401)
!5401 = !{!138, !4269, !154, !1326}
!5402 = !DILocalVariable(name: "np", arg: 1, scope: !5399, file: !3511, line: 1214, type: !4269)
!5403 = !DILocation(line: 1214, column: 66, scope: !5399)
!5404 = !DILocalVariable(name: "propname", arg: 2, scope: !5399, file: !3511, line: 1215, type: !154)
!5405 = !DILocation(line: 1215, column: 24, scope: !5399)
!5406 = !DILocalVariable(name: "out_value", arg: 3, scope: !5399, file: !3511, line: 1216, type: !1326)
!5407 = !DILocation(line: 1216, column: 17, scope: !5399)
!5408 = !DILocation(line: 1218, column: 36, scope: !5399)
!5409 = !DILocation(line: 1218, column: 40, scope: !5399)
!5410 = !DILocation(line: 1218, column: 50, scope: !5399)
!5411 = !DILocation(line: 1218, column: 9, scope: !5399)
!5412 = !DILocation(line: 1218, column: 2, scope: !5399)
!5413 = distinct !DISubprogram(name: "of_node_full_name", scope: !3511, file: !3511, line: 259, type: !5414, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5414 = !DISubroutineType(types: !5415)
!5415 = !{!154, !4269}
!5416 = !DILocalVariable(name: "np", arg: 1, scope: !5413, file: !3511, line: 259, type: !4269)
!5417 = !DILocation(line: 259, column: 71, scope: !5413)
!5418 = !DILocation(line: 261, column: 9, scope: !5413)
!5419 = !DILocation(line: 261, column: 14, scope: !5413)
!5420 = !DILocation(line: 261, column: 18, scope: !5413)
!5421 = !DILocation(line: 261, column: 2, scope: !5413)
!5422 = distinct !DISubprogram(name: "of_property_read_u32_array", scope: !3511, file: !3511, line: 494, type: !5423, scopeLine: 497, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5423 = !DISubroutineType(types: !5424)
!5424 = !{!138, !4269, !154, !1326, !274}
!5425 = !DILocalVariable(name: "np", arg: 1, scope: !5422, file: !3511, line: 494, type: !4269)
!5426 = !DILocation(line: 494, column: 72, scope: !5422)
!5427 = !DILocalVariable(name: "propname", arg: 2, scope: !5422, file: !3511, line: 495, type: !154)
!5428 = !DILocation(line: 495, column: 23, scope: !5422)
!5429 = !DILocalVariable(name: "out_values", arg: 3, scope: !5422, file: !3511, line: 496, type: !1326)
!5430 = !DILocation(line: 496, column: 16, scope: !5422)
!5431 = !DILocalVariable(name: "sz", arg: 4, scope: !5422, file: !3511, line: 496, type: !274)
!5432 = !DILocation(line: 496, column: 35, scope: !5422)
!5433 = !DILocalVariable(name: "ret", scope: !5422, file: !3511, line: 498, type: !138)
!5434 = !DILocation(line: 498, column: 6, scope: !5422)
!5435 = !DILocation(line: 498, column: 48, scope: !5422)
!5436 = !DILocation(line: 498, column: 52, scope: !5422)
!5437 = !DILocation(line: 498, column: 62, scope: !5422)
!5438 = !DILocation(line: 499, column: 13, scope: !5422)
!5439 = !DILocation(line: 498, column: 12, scope: !5422)
!5440 = !DILocation(line: 500, column: 6, scope: !5441)
!5441 = distinct !DILexicalBlock(scope: !5422, file: !3511, line: 500, column: 6)
!5442 = !DILocation(line: 500, column: 10, scope: !5441)
!5443 = !DILocation(line: 500, column: 6, scope: !5422)
!5444 = !DILocation(line: 501, column: 3, scope: !5441)
!5445 = !DILocation(line: 503, column: 10, scope: !5441)
!5446 = !DILocation(line: 503, column: 3, scope: !5441)
!5447 = !DILocation(line: 504, column: 1, scope: !5422)
!5448 = distinct !DISubprogram(name: "__clear_bit", scope: !5449, file: !5449, line: 40, type: !5450, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5449 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!5450 = !DISubroutineType(types: !5451)
!5451 = !{null, !143, !5452}
!5452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5453, size: 64)
!5453 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !142)
!5454 = !DILocalVariable(name: "nr", arg: 1, scope: !5455, file: !5456, line: 92, type: !143)
!5455 = distinct !DISubprogram(name: "arch___clear_bit", scope: !5456, file: !5456, line: 92, type: !5450, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5456 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5457 = !DILocation(line: 92, column: 23, scope: !5455, inlinedAt: !5458)
!5458 = distinct !DILocation(line: 43, column: 2, scope: !5448)
!5459 = !DILocalVariable(name: "addr", arg: 2, scope: !5455, file: !5456, line: 92, type: !5452)
!5460 = !DILocation(line: 92, column: 51, scope: !5455, inlinedAt: !5458)
!5461 = !DILocalVariable(name: "v", arg: 1, scope: !5462, file: !5463, line: 39, type: !5466)
!5462 = distinct !DISubprogram(name: "instrument_write", scope: !5463, file: !5463, line: 39, type: !5464, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5463 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5464 = !DISubroutineType(types: !5465)
!5465 = !{null, !5466, !274}
!5466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5467, size: 64)
!5467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5468)
!5468 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5469 = !DILocation(line: 39, column: 67, scope: !5462, inlinedAt: !5470)
!5470 = distinct !DILocation(line: 42, column: 2, scope: !5448)
!5471 = !DILocalVariable(name: "size", arg: 2, scope: !5462, file: !5463, line: 39, type: !274)
!5472 = !DILocation(line: 39, column: 77, scope: !5462, inlinedAt: !5470)
!5473 = !DILocalVariable(name: "nr", arg: 1, scope: !5448, file: !5449, line: 40, type: !143)
!5474 = !DILocation(line: 40, column: 37, scope: !5448)
!5475 = !DILocalVariable(name: "addr", arg: 2, scope: !5448, file: !5449, line: 40, type: !5452)
!5476 = !DILocation(line: 40, column: 65, scope: !5448)
!5477 = !DILocation(line: 42, column: 19, scope: !5448)
!5478 = !DILocation(line: 42, column: 26, scope: !5448)
!5479 = !DILocation(line: 42, column: 24, scope: !5448)
!5480 = !DILocation(line: 41, column: 20, scope: !5462, inlinedAt: !5470)
!5481 = !DILocation(line: 41, column: 23, scope: !5462, inlinedAt: !5470)
!5482 = !DILocation(line: 41, column: 2, scope: !5462, inlinedAt: !5470)
!5483 = !DILocation(line: 42, column: 2, scope: !5462, inlinedAt: !5470)
!5484 = !DILocation(line: 43, column: 19, scope: !5448)
!5485 = !DILocation(line: 43, column: 23, scope: !5448)
!5486 = !DILocation(line: 94, column: 44, scope: !5455, inlinedAt: !5458)
!5487 = !DILocation(line: 94, column: 56, scope: !5455, inlinedAt: !5458)
!5488 = !DILocation(line: 94, column: 2, scope: !5455, inlinedAt: !5458)
!5489 = !{i32 -2147048268}
!5490 = !DILocation(line: 44, column: 1, scope: !5448)
!5491 = distinct !DISubprogram(name: "kasan_check_write", scope: !5492, file: !5492, line: 38, type: !5493, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5492 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5493 = !DISubroutineType(types: !5494)
!5494 = !{!442, !5466, !7}
!5495 = !DILocalVariable(name: "p", arg: 1, scope: !5491, file: !5492, line: 38, type: !5466)
!5496 = !DILocation(line: 38, column: 59, scope: !5491)
!5497 = !DILocalVariable(name: "size", arg: 2, scope: !5491, file: !5492, line: 38, type: !7)
!5498 = !DILocation(line: 38, column: 75, scope: !5491)
!5499 = !DILocation(line: 40, column: 2, scope: !5491)
!5500 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5501, file: !5501, line: 178, type: !5502, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5501 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5502 = !DISubroutineType(types: !5503)
!5503 = !{null, !5466, !274, !138}
!5504 = !DILocalVariable(name: "ptr", arg: 1, scope: !5500, file: !5501, line: 178, type: !5466)
!5505 = !DILocation(line: 178, column: 60, scope: !5500)
!5506 = !DILocalVariable(name: "size", arg: 2, scope: !5500, file: !5501, line: 178, type: !274)
!5507 = !DILocation(line: 178, column: 72, scope: !5500)
!5508 = !DILocalVariable(name: "type", arg: 3, scope: !5500, file: !5501, line: 179, type: !138)
!5509 = !DILocation(line: 179, column: 15, scope: !5500)
!5510 = !DILocation(line: 179, column: 23, scope: !5500)
!5511 = distinct !DISubprogram(name: "of_gpiochip_add_hog", scope: !3, file: !3, line: 650, type: !5512, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5512 = !DISubroutineType(types: !5513)
!5513 = !{!138, !4085, !3509}
!5514 = !DILocalVariable(name: "chip", arg: 1, scope: !5511, file: !3, line: 650, type: !4085)
!5515 = !DILocation(line: 650, column: 50, scope: !5511)
!5516 = !DILocalVariable(name: "hog", arg: 2, scope: !5511, file: !3, line: 650, type: !3509)
!5517 = !DILocation(line: 650, column: 76, scope: !5511)
!5518 = !DILocalVariable(name: "dflags", scope: !5511, file: !3, line: 652, type: !116)
!5519 = !DILocation(line: 652, column: 19, scope: !5511)
!5520 = !DILocalVariable(name: "desc", scope: !5511, file: !3, line: 653, type: !4087)
!5521 = !DILocation(line: 653, column: 20, scope: !5511)
!5522 = !DILocalVariable(name: "lflags", scope: !5511, file: !3, line: 654, type: !142)
!5523 = !DILocation(line: 654, column: 16, scope: !5511)
!5524 = !DILocalVariable(name: "name", scope: !5511, file: !3, line: 655, type: !154)
!5525 = !DILocation(line: 655, column: 14, scope: !5511)
!5526 = !DILocalVariable(name: "i", scope: !5511, file: !3, line: 656, type: !7)
!5527 = !DILocation(line: 656, column: 15, scope: !5511)
!5528 = !DILocalVariable(name: "ret", scope: !5511, file: !3, line: 657, type: !138)
!5529 = !DILocation(line: 657, column: 6, scope: !5511)
!5530 = !DILocation(line: 659, column: 9, scope: !5531)
!5531 = distinct !DILexicalBlock(scope: !5511, file: !3, line: 659, column: 2)
!5532 = !DILocation(line: 659, column: 7, scope: !5531)
!5533 = !DILocation(line: 660, column: 28, scope: !5534)
!5534 = distinct !DILexicalBlock(scope: !5535, file: !3, line: 659, column: 20)
!5535 = distinct !DILexicalBlock(scope: !5531, file: !3, line: 659, column: 2)
!5536 = !DILocation(line: 660, column: 33, scope: !5534)
!5537 = !DILocation(line: 660, column: 39, scope: !5534)
!5538 = !DILocation(line: 660, column: 10, scope: !5534)
!5539 = !DILocation(line: 660, column: 8, scope: !5534)
!5540 = !DILocation(line: 661, column: 14, scope: !5541)
!5541 = distinct !DILexicalBlock(scope: !5534, file: !3, line: 661, column: 7)
!5542 = !DILocation(line: 661, column: 7, scope: !5541)
!5543 = !DILocation(line: 661, column: 7, scope: !5534)
!5544 = !DILocation(line: 662, column: 4, scope: !5541)
!5545 = !DILocation(line: 664, column: 19, scope: !5534)
!5546 = !DILocation(line: 664, column: 25, scope: !5534)
!5547 = !DILocation(line: 664, column: 31, scope: !5534)
!5548 = !DILocation(line: 664, column: 39, scope: !5534)
!5549 = !DILocation(line: 664, column: 9, scope: !5534)
!5550 = !DILocation(line: 664, column: 7, scope: !5534)
!5551 = !DILocation(line: 665, column: 7, scope: !5552)
!5552 = distinct !DILexicalBlock(scope: !5534, file: !3, line: 665, column: 7)
!5553 = !DILocation(line: 665, column: 11, scope: !5552)
!5554 = !DILocation(line: 665, column: 7, scope: !5534)
!5555 = !DILocation(line: 666, column: 11, scope: !5552)
!5556 = !DILocation(line: 666, column: 4, scope: !5552)
!5557 = !DILocation(line: 671, column: 2, scope: !5534)
!5558 = !DILocation(line: 659, column: 16, scope: !5535)
!5559 = !DILocation(line: 659, column: 2, scope: !5535)
!5560 = distinct !{!5560, !5561, !5562}
!5561 = !DILocation(line: 659, column: 2, scope: !5531)
!5562 = !DILocation(line: 671, column: 2, scope: !5531)
!5563 = !DILocation(line: 673, column: 2, scope: !5511)
!5564 = !DILocation(line: 674, column: 1, scope: !5511)
!5565 = distinct !DISubprogram(name: "of_node_set_flag", scope: !3511, file: !3511, line: 199, type: !5566, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5566 = !DISubroutineType(types: !5567)
!5567 = !{null, !3509, !142}
!5568 = !DILocalVariable(name: "n", arg: 1, scope: !5565, file: !3511, line: 199, type: !3509)
!5569 = !DILocation(line: 199, column: 57, scope: !5565)
!5570 = !DILocalVariable(name: "flag", arg: 2, scope: !5565, file: !3511, line: 199, type: !142)
!5571 = !DILocation(line: 199, column: 74, scope: !5565)
!5572 = !DILocation(line: 201, column: 10, scope: !5565)
!5573 = !DILocation(line: 201, column: 17, scope: !5565)
!5574 = !DILocation(line: 201, column: 20, scope: !5565)
!5575 = !DILocation(line: 201, column: 2, scope: !5565)
!5576 = !DILocation(line: 202, column: 1, scope: !5565)
!5577 = distinct !DISubprogram(name: "of_parse_own_gpio", scope: !3, file: !3, line: 576, type: !5578, scopeLine: 581, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5578 = !DISubroutineType(types: !5579)
!5579 = !{!4087, !3509, !4085, !7, !3560, !3649, !5580}
!5580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!5581 = !DILocalVariable(name: "np", arg: 1, scope: !5577, file: !3, line: 576, type: !3509)
!5582 = !DILocation(line: 576, column: 64, scope: !5577)
!5583 = !DILocalVariable(name: "chip", arg: 2, scope: !5577, file: !3, line: 577, type: !4085)
!5584 = !DILocation(line: 577, column: 27, scope: !5577)
!5585 = !DILocalVariable(name: "idx", arg: 3, scope: !5577, file: !3, line: 578, type: !7)
!5586 = !DILocation(line: 578, column: 22, scope: !5577)
!5587 = !DILocalVariable(name: "name", arg: 4, scope: !5577, file: !3, line: 578, type: !3560)
!5588 = !DILocation(line: 578, column: 40, scope: !5577)
!5589 = !DILocalVariable(name: "lflags", arg: 5, scope: !5577, file: !3, line: 579, type: !3649)
!5590 = !DILocation(line: 579, column: 24, scope: !5577)
!5591 = !DILocalVariable(name: "dflags", arg: 6, scope: !5577, file: !3, line: 580, type: !5580)
!5592 = !DILocation(line: 580, column: 27, scope: !5577)
!5593 = !DILocalVariable(name: "chip_np", scope: !5577, file: !3, line: 582, type: !3509)
!5594 = !DILocation(line: 582, column: 22, scope: !5577)
!5595 = !DILocalVariable(name: "xlate_flags", scope: !5577, file: !3, line: 583, type: !107)
!5596 = !DILocation(line: 583, column: 21, scope: !5577)
!5597 = !DILocalVariable(name: "gpiospec", scope: !5577, file: !3, line: 584, type: !4238)
!5598 = !DILocation(line: 584, column: 25, scope: !5577)
!5599 = !DILocalVariable(name: "desc", scope: !5577, file: !3, line: 585, type: !4087)
!5600 = !DILocation(line: 585, column: 20, scope: !5577)
!5601 = !DILocalVariable(name: "i", scope: !5577, file: !3, line: 586, type: !7)
!5602 = !DILocation(line: 586, column: 15, scope: !5577)
!5603 = !DILocalVariable(name: "tmp", scope: !5577, file: !3, line: 587, type: !367)
!5604 = !DILocation(line: 587, column: 6, scope: !5577)
!5605 = !DILocalVariable(name: "ret", scope: !5577, file: !3, line: 588, type: !138)
!5606 = !DILocation(line: 588, column: 6, scope: !5577)
!5607 = !DILocation(line: 590, column: 12, scope: !5577)
!5608 = !DILocation(line: 590, column: 18, scope: !5577)
!5609 = !DILocation(line: 590, column: 10, scope: !5577)
!5610 = !DILocation(line: 591, column: 7, scope: !5611)
!5611 = distinct !DILexicalBlock(scope: !5577, file: !3, line: 591, column: 6)
!5612 = !DILocation(line: 591, column: 6, scope: !5577)
!5613 = !DILocation(line: 592, column: 10, scope: !5611)
!5614 = !DILocation(line: 592, column: 3, scope: !5611)
!5615 = !DILocation(line: 594, column: 14, scope: !5577)
!5616 = !DILocation(line: 595, column: 3, scope: !5577)
!5617 = !DILocation(line: 595, column: 10, scope: !5577)
!5618 = !DILocation(line: 596, column: 3, scope: !5577)
!5619 = !DILocation(line: 596, column: 10, scope: !5577)
!5620 = !DILocation(line: 598, column: 29, scope: !5577)
!5621 = !DILocation(line: 598, column: 8, scope: !5577)
!5622 = !DILocation(line: 598, column: 6, scope: !5577)
!5623 = !DILocation(line: 599, column: 6, scope: !5624)
!5624 = distinct !DILexicalBlock(scope: !5577, file: !3, line: 599, column: 6)
!5625 = !DILocation(line: 599, column: 6, scope: !5577)
!5626 = !DILocation(line: 600, column: 18, scope: !5624)
!5627 = !DILocation(line: 600, column: 10, scope: !5624)
!5628 = !DILocation(line: 600, column: 3, scope: !5624)
!5629 = !DILocation(line: 602, column: 16, scope: !5577)
!5630 = !DILocation(line: 602, column: 11, scope: !5577)
!5631 = !DILocation(line: 602, column: 14, scope: !5577)
!5632 = !DILocation(line: 603, column: 24, scope: !5577)
!5633 = !DILocation(line: 603, column: 11, scope: !5577)
!5634 = !DILocation(line: 603, column: 22, scope: !5577)
!5635 = !DILocation(line: 605, column: 9, scope: !5636)
!5636 = distinct !DILexicalBlock(scope: !5577, file: !3, line: 605, column: 2)
!5637 = !DILocation(line: 605, column: 7, scope: !5636)
!5638 = !DILocation(line: 605, column: 14, scope: !5639)
!5639 = distinct !DILexicalBlock(scope: !5636, file: !3, line: 605, column: 2)
!5640 = !DILocation(line: 605, column: 18, scope: !5639)
!5641 = !DILocation(line: 605, column: 16, scope: !5639)
!5642 = !DILocation(line: 605, column: 2, scope: !5636)
!5643 = !DILocation(line: 606, column: 36, scope: !5644)
!5644 = distinct !DILexicalBlock(scope: !5639, file: !3, line: 605, column: 28)
!5645 = !DILocation(line: 606, column: 49, scope: !5644)
!5646 = !DILocation(line: 606, column: 55, scope: !5644)
!5647 = !DILocation(line: 606, column: 53, scope: !5644)
!5648 = !DILocation(line: 606, column: 61, scope: !5644)
!5649 = !DILocation(line: 606, column: 59, scope: !5644)
!5650 = !DILocation(line: 607, column: 18, scope: !5644)
!5651 = !DILocation(line: 607, column: 23, scope: !5644)
!5652 = !DILocation(line: 607, column: 9, scope: !5644)
!5653 = !DILocation(line: 606, column: 9, scope: !5644)
!5654 = !DILocation(line: 606, column: 7, scope: !5644)
!5655 = !DILocation(line: 608, column: 7, scope: !5656)
!5656 = distinct !DILexicalBlock(scope: !5644, file: !3, line: 608, column: 7)
!5657 = !DILocation(line: 608, column: 7, scope: !5644)
!5658 = !DILocation(line: 609, column: 19, scope: !5656)
!5659 = !DILocation(line: 609, column: 11, scope: !5656)
!5660 = !DILocation(line: 609, column: 4, scope: !5656)
!5661 = !DILocation(line: 610, column: 2, scope: !5644)
!5662 = !DILocation(line: 605, column: 24, scope: !5639)
!5663 = !DILocation(line: 605, column: 2, scope: !5639)
!5664 = distinct !{!5664, !5642, !5665}
!5665 = !DILocation(line: 610, column: 2, scope: !5636)
!5666 = !DILocation(line: 612, column: 38, scope: !5577)
!5667 = !DILocation(line: 612, column: 9, scope: !5577)
!5668 = !DILocation(line: 612, column: 7, scope: !5577)
!5669 = !DILocation(line: 613, column: 13, scope: !5670)
!5670 = distinct !DILexicalBlock(scope: !5577, file: !3, line: 613, column: 6)
!5671 = !DILocation(line: 613, column: 6, scope: !5670)
!5672 = !DILocation(line: 613, column: 6, scope: !5577)
!5673 = !DILocation(line: 614, column: 10, scope: !5670)
!5674 = !DILocation(line: 614, column: 3, scope: !5670)
!5675 = !DILocation(line: 616, column: 6, scope: !5676)
!5676 = distinct !DILexicalBlock(scope: !5577, file: !3, line: 616, column: 6)
!5677 = !DILocation(line: 616, column: 18, scope: !5676)
!5678 = !DILocation(line: 616, column: 6, scope: !5577)
!5679 = !DILocation(line: 617, column: 4, scope: !5676)
!5680 = !DILocation(line: 617, column: 11, scope: !5676)
!5681 = !DILocation(line: 617, column: 3, scope: !5676)
!5682 = !DILocation(line: 618, column: 6, scope: !5683)
!5683 = distinct !DILexicalBlock(scope: !5577, file: !3, line: 618, column: 6)
!5684 = !DILocation(line: 618, column: 18, scope: !5683)
!5685 = !DILocation(line: 618, column: 6, scope: !5577)
!5686 = !DILocation(line: 619, column: 4, scope: !5683)
!5687 = !DILocation(line: 619, column: 11, scope: !5683)
!5688 = !DILocation(line: 619, column: 3, scope: !5683)
!5689 = !DILocation(line: 620, column: 6, scope: !5690)
!5690 = distinct !DILexicalBlock(scope: !5577, file: !3, line: 620, column: 6)
!5691 = !DILocation(line: 620, column: 18, scope: !5690)
!5692 = !DILocation(line: 620, column: 6, scope: !5577)
!5693 = !DILocation(line: 621, column: 4, scope: !5690)
!5694 = !DILocation(line: 621, column: 11, scope: !5690)
!5695 = !DILocation(line: 621, column: 3, scope: !5690)
!5696 = !DILocation(line: 622, column: 6, scope: !5697)
!5697 = distinct !DILexicalBlock(scope: !5577, file: !3, line: 622, column: 6)
!5698 = !DILocation(line: 622, column: 18, scope: !5697)
!5699 = !DILocation(line: 622, column: 6, scope: !5577)
!5700 = !DILocation(line: 623, column: 4, scope: !5697)
!5701 = !DILocation(line: 623, column: 11, scope: !5697)
!5702 = !DILocation(line: 623, column: 3, scope: !5697)
!5703 = !DILocation(line: 625, column: 28, scope: !5704)
!5704 = distinct !DILexicalBlock(scope: !5577, file: !3, line: 625, column: 6)
!5705 = !DILocation(line: 625, column: 6, scope: !5704)
!5706 = !DILocation(line: 625, column: 6, scope: !5577)
!5707 = !DILocation(line: 626, column: 4, scope: !5704)
!5708 = !DILocation(line: 626, column: 11, scope: !5704)
!5709 = !DILocation(line: 626, column: 3, scope: !5704)
!5710 = !DILocation(line: 627, column: 33, scope: !5711)
!5711 = distinct !DILexicalBlock(scope: !5704, file: !3, line: 627, column: 11)
!5712 = !DILocation(line: 627, column: 11, scope: !5711)
!5713 = !DILocation(line: 627, column: 11, scope: !5704)
!5714 = !DILocation(line: 628, column: 4, scope: !5711)
!5715 = !DILocation(line: 628, column: 11, scope: !5711)
!5716 = !DILocation(line: 628, column: 3, scope: !5711)
!5717 = !DILocation(line: 629, column: 33, scope: !5718)
!5718 = distinct !DILexicalBlock(scope: !5711, file: !3, line: 629, column: 11)
!5719 = !DILocation(line: 629, column: 11, scope: !5718)
!5720 = !DILocation(line: 629, column: 11, scope: !5711)
!5721 = !DILocation(line: 630, column: 4, scope: !5718)
!5722 = !DILocation(line: 630, column: 11, scope: !5718)
!5723 = !DILocation(line: 630, column: 3, scope: !5718)
!5724 = !DILocation(line: 632, column: 3, scope: !5725)
!5725 = distinct !DILexicalBlock(scope: !5718, file: !3, line: 631, column: 7)
!5726 = !DILocation(line: 634, column: 10, scope: !5725)
!5727 = !DILocation(line: 634, column: 3, scope: !5725)
!5728 = !DILocation(line: 637, column: 6, scope: !5729)
!5729 = distinct !DILexicalBlock(scope: !5577, file: !3, line: 637, column: 6)
!5730 = !DILocation(line: 637, column: 11, scope: !5729)
!5731 = !DILocation(line: 637, column: 38, scope: !5729)
!5732 = !DILocation(line: 637, column: 55, scope: !5729)
!5733 = !DILocation(line: 637, column: 14, scope: !5729)
!5734 = !DILocation(line: 637, column: 6, scope: !5577)
!5735 = !DILocation(line: 638, column: 11, scope: !5729)
!5736 = !DILocation(line: 638, column: 15, scope: !5729)
!5737 = !DILocation(line: 638, column: 4, scope: !5729)
!5738 = !DILocation(line: 638, column: 9, scope: !5729)
!5739 = !DILocation(line: 638, column: 3, scope: !5729)
!5740 = !DILocation(line: 640, column: 9, scope: !5577)
!5741 = !DILocation(line: 640, column: 2, scope: !5577)
!5742 = !DILocation(line: 641, column: 1, scope: !5577)
!5743 = distinct !DISubprogram(name: "set_bit", scope: !5744, file: !5744, line: 26, type: !5450, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5744 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!5745 = !DILocalVariable(name: "nr", arg: 1, scope: !5746, file: !5456, line: 52, type: !143)
!5746 = distinct !DISubprogram(name: "arch_set_bit", scope: !5456, file: !5456, line: 52, type: !5450, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5747 = !DILocation(line: 52, column: 19, scope: !5746, inlinedAt: !5748)
!5748 = distinct !DILocation(line: 29, column: 2, scope: !5743)
!5749 = !DILocalVariable(name: "addr", arg: 2, scope: !5746, file: !5456, line: 52, type: !5452)
!5750 = !DILocation(line: 52, column: 47, scope: !5746, inlinedAt: !5748)
!5751 = !DILocalVariable(name: "v", arg: 1, scope: !5752, file: !5463, line: 84, type: !5466)
!5752 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !5463, file: !5463, line: 84, type: !5464, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !202)
!5753 = !DILocation(line: 84, column: 74, scope: !5752, inlinedAt: !5754)
!5754 = distinct !DILocation(line: 28, column: 2, scope: !5743)
!5755 = !DILocalVariable(name: "size", arg: 2, scope: !5752, file: !5463, line: 84, type: !274)
!5756 = !DILocation(line: 84, column: 84, scope: !5752, inlinedAt: !5754)
!5757 = !DILocalVariable(name: "nr", arg: 1, scope: !5743, file: !5744, line: 26, type: !143)
!5758 = !DILocation(line: 26, column: 33, scope: !5743)
!5759 = !DILocalVariable(name: "addr", arg: 2, scope: !5743, file: !5744, line: 26, type: !5452)
!5760 = !DILocation(line: 26, column: 61, scope: !5743)
!5761 = !DILocation(line: 28, column: 26, scope: !5743)
!5762 = !DILocation(line: 28, column: 33, scope: !5743)
!5763 = !DILocation(line: 28, column: 31, scope: !5743)
!5764 = !DILocation(line: 86, column: 20, scope: !5752, inlinedAt: !5754)
!5765 = !DILocation(line: 86, column: 23, scope: !5752, inlinedAt: !5754)
!5766 = !DILocation(line: 86, column: 2, scope: !5752, inlinedAt: !5754)
!5767 = !DILocation(line: 87, column: 2, scope: !5752, inlinedAt: !5754)
!5768 = !DILocation(line: 29, column: 15, scope: !5743)
!5769 = !DILocation(line: 29, column: 19, scope: !5743)
!5770 = !DILocation(line: 54, column: 27, scope: !5771, inlinedAt: !5748)
!5771 = distinct !DILexicalBlock(scope: !5746, file: !5456, line: 54, column: 6)
!5772 = !DILocation(line: 54, column: 6, scope: !5771, inlinedAt: !5748)
!5773 = !DILocation(line: 54, column: 6, scope: !5746, inlinedAt: !5748)
!5774 = !DILocation(line: 56, column: 6, scope: !5775, inlinedAt: !5748)
!5775 = distinct !DILexicalBlock(scope: !5771, file: !5456, line: 54, column: 32)
!5776 = !DILocation(line: 57, column: 12, scope: !5775, inlinedAt: !5748)
!5777 = !DILocation(line: 55, column: 3, scope: !5775, inlinedAt: !5748)
!5778 = !{i32 -2147050103}
!5779 = !DILocation(line: 59, column: 2, scope: !5775, inlinedAt: !5748)
!5780 = !DILocation(line: 61, column: 8, scope: !5781, inlinedAt: !5748)
!5781 = distinct !DILexicalBlock(scope: !5771, file: !5456, line: 59, column: 9)
!5782 = !DILocation(line: 61, column: 32, scope: !5781, inlinedAt: !5748)
!5783 = !DILocation(line: 60, column: 3, scope: !5781, inlinedAt: !5748)
!5784 = !{i32 -2147049971}
!5785 = !DILocation(line: 30, column: 1, scope: !5743)
