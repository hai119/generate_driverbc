; ModuleID = '../bcout/drivers/input/joystick/iforce/iforce-main.llvm.bc'
source_filename = "drivers/input/joystick/iforce/iforce-main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.lock_class_key = type {}
%struct.iforce_device = type { i16, i16, i8*, i16*, i16*, i16* }
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
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.super_block*, %struct.page*, i32)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.page = type { i64, %union.anon.1, %union.anon.51, %struct.atomic_t, [8 x i8] }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.list_head, %struct.address_space*, i64, i64 }
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
%struct.vm_struct = type opaque
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
%struct.seq_file = type opaque
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
%struct.irq_domain = type opaque
%struct.dma_map_ops = type opaque
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i64 }
%struct.dev_archdata = type {}
%struct.device_node = type opaque
%struct.fwnode_handle = type opaque
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.iforce = type { %struct.input_dev*, %struct.iforce_device*, %struct.iforce_xport_ops*, %struct.spinlock, %struct.circ_buf, [256 x i8], [1 x i64], %struct.wait_queue_head, %struct.resource, [32 x %struct.iforce_core_effect], %struct.mutex }
%struct.input_dev = type { i8*, i8*, i8*, %struct.input_id, [1 x i64], [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], i32, i32, i32, i8*, i32 (%struct.input_dev*, %struct.input_keymap_entry*, i32*)*, i32 (%struct.input_dev*, %struct.input_keymap_entry*)*, %struct.ff_device*, %struct.input_dev_poller*, i32, %struct.timer_list, [2 x i32], %struct.input_mt*, %struct.input_absinfo*, [12 x i64], [1 x i64], [1 x i64], [1 x i64], i32 (%struct.input_dev*)*, void (%struct.input_dev*)*, i32 (%struct.input_dev*, %struct.file*)*, i32 (%struct.input_dev*, i32, i32, i32)*, %struct.input_handle*, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, %struct.input_value*, i8, [3 x i64] }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_keymap_entry = type { i8, i8, i16, i32, [32 x i8] }
%struct.ff_device = type { i32 (%struct.input_dev*, %struct.ff_effect*, %struct.ff_effect*)*, i32 (%struct.input_dev*, i32)*, i32 (%struct.input_dev*, i32, i32)*, void (%struct.input_dev*, i16)*, void (%struct.input_dev*, i16)*, void (%struct.ff_device*)*, i8*, [2 x i64], %struct.mutex, i32, %struct.ff_effect*, [0 x %struct.file*] }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon.64 }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon.64 = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, i16* }
%struct.ff_envelope = type { i16, i16, i16, i16 }
%struct.input_dev_poller = type opaque
%struct.input_mt = type opaque
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.input_handle = type { i8*, i32, i8*, %struct.input_dev*, %struct.input_handler*, %struct.list_head, %struct.list_head }
%struct.input_handler = type { i8*, void (%struct.input_handle*, i32, i32, i32)*, void (%struct.input_handle*, %struct.input_value*, i32)*, i1 (%struct.input_handle*, i32, i32, i32)*, i1 (%struct.input_handler*, %struct.input_dev*)*, i32 (%struct.input_handler*, %struct.input_dev*, %struct.input_device_id*)*, void (%struct.input_handle*)*, void (%struct.input_handle*)*, i8, i32, i8*, %struct.input_device_id*, %struct.list_head, %struct.list_head }
%struct.input_device_id = type { i64, i16, i16, i16, i16, [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], [1 x i64], i64 }
%struct.input_value = type { i16, i16, i32 }
%struct.iforce_xport_ops = type { void (%struct.iforce*)*, i32 (%struct.iforce*, i8, i8*, i64*)*, i32 (%struct.iforce*)*, void (%struct.iforce*)* }
%struct.circ_buf = type { i8*, i32, i32 }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.iforce_core_effect = type { %struct.resource, %struct.resource, [1 x i64] }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }

@__UNIQUE_ID_author204 = internal constant [87 x i8] c"iforce.author=Vojtech Pavlik <vojtech@ucw.cz>, Johann Deneux <johann.deneux@gmail.com>\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_description205 = internal constant [60 x i8] c"iforce.description=Core I-Force joysticks and wheels driver\00", section ".modinfo", align 1, !dbg !102
@__UNIQUE_ID_file206 = internal constant [49 x i8] c"iforce.file=drivers/input/joystick/iforce/iforce\00", section ".modinfo", align 1, !dbg !108
@__UNIQUE_ID_license207 = internal constant [19 x i8] c"iforce.license=GPL\00", section ".modinfo", align 1, !dbg !113
@__const.iforce_init_device.c = private unnamed_addr constant [5 x i8] c"CEOV\00", align 1
@iforce_init_device.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !118
@.str = private unnamed_addr constant [14 x i8] c"&iforce->wait\00", align 1
@iforce_init_device.__key.1 = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !3841
@.str.2 = private unnamed_addr constant [19 x i8] c"&iforce->mem_mutex\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Unknown I-Force device\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"I-Force device effect memory\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"Timeout waiting for response from device.\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Device does not respond to id packet M\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Device does not respond to id packet P\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"Device does not respond to id packet B\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"Device does not respond to id packet N\0A\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"Limiting number of effects to %d (device reports %d)\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@iforce_device = internal global [15 x %struct.iforce_device] [%struct.iforce_device { i16 1103, i16 -24548, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i32 0, i32 0), i16* getelementptr inbounds ([9 x i16], [9 x i16]* @btn_wheel, i32 0, i32 0), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @abs_wheel, i32 0, i32 0), i16* getelementptr inbounds ([12 x i16], [12 x i16]* @ff_iforce, i32 0, i32 0) }, %struct.iforce_device { i16 1133, i16 -15743, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0), i16* getelementptr inbounds ([14 x i16], [14 x i16]* @btn_joystick, i32 0, i32 0), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @abs_joystick, i32 0, i32 0), i16* getelementptr inbounds ([12 x i16], [12 x i16]* @ff_iforce, i32 0, i32 0) }, %struct.iforce_device { i16 1133, i16 -15727, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i32 0, i32 0), i16* getelementptr inbounds ([9 x i16], [9 x i16]* @btn_wheel, i32 0, i32 0), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @abs_wheel, i32 0, i32 0), i16* getelementptr inbounds ([12 x i16], [12 x i16]* @ff_iforce, i32 0, i32 0) }, %struct.iforce_device { i16 1519, i16 522, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0), i16* getelementptr inbounds ([10 x i16], [10 x i16]* @btn_joystick_avb, i32 0, i32 0), i16* getelementptr inbounds ([9 x i16], [9 x i16]* @abs_avb_pegasus, i32 0, i32 0), i16* getelementptr inbounds ([12 x i16], [12 x i16]* @ff_iforce, i32 0, i32 0) }, %struct.iforce_device { i16 1519, i16 -30588, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), i16* getelementptr inbounds ([9 x i16], [9 x i16]* @btn_wheel, i32 0, i32 0), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @abs_wheel, i32 0, i32 0), i16* getelementptr inbounds ([12 x i16], [12 x i16]* @ff_iforce, i32 0, i32 0) }, %struct.iforce_device { i16 1519, i16 -30584, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i32 0, i32 0), i16* getelementptr inbounds ([9 x i16], [9 x i16]* @btn_wheel, i32 0, i32 0), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @abs_wheel, i32 0, i32 0), i16* getelementptr inbounds ([12 x i16], [12 x i16]* @ff_iforce, i32 0, i32 0) }, %struct.iforce_device { i16 1564, i16 -16220, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0), i16* getelementptr inbounds ([9 x i16], [9 x i16]* @btn_wheel, i32 0, i32 0), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @abs_wheel, i32 0, i32 0), i16* getelementptr inbounds ([12 x i16], [12 x i16]* @ff_iforce, i32 0, i32 0) }, %struct.iforce_device { i16 1564, i16 -16252, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0), i16* getelementptr inbounds ([9 x i16], [9 x i16]* @btn_wheel, i32 0, i32 0), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @abs_wheel, i32 0, i32 0), i16* getelementptr inbounds ([12 x i16], [12 x i16]* @ff_iforce, i32 0, i32 0) }, %struct.iforce_device { i16 1699, i16 -252, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i32 0, i32 0), i16* getelementptr inbounds ([9 x i16], [9 x i16]* @btn_wheel, i32 0, i32 0), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @abs_wheel, i32 0, i32 0), i16* getelementptr inbounds ([12 x i16], [12 x i16]* @ff_iforce, i32 0, i32 0) }, %struct.iforce_device { i16 1784, i16 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.23, i32 0, i32 0), i16* getelementptr inbounds ([9 x i16], [9 x i16]* @btn_wheel, i32 0, i32 0), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @abs_wheel, i32 0, i32 0), i16* getelementptr inbounds ([12 x i16], [12 x i16]* @ff_iforce, i32 0, i32 0) }, %struct.iforce_device { i16 1784, i16 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.24, i32 0, i32 0), i16* getelementptr inbounds ([14 x i16], [14 x i16]* @btn_joystick, i32 0, i32 0), i16* getelementptr inbounds ([7 x i16], [7 x i16]* @abs_joystick_rudder, i32 0, i32 0), i16* getelementptr inbounds ([12 x i16], [12 x i16]* @ff_iforce, i32 0, i32 0) }, %struct.iforce_device { i16 1784, i16 4, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.25, i32 0, i32 0), i16* getelementptr inbounds ([9 x i16], [9 x i16]* @btn_wheel, i32 0, i32 0), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @abs_wheel, i32 0, i32 0), i16* getelementptr inbounds ([12 x i16], [12 x i16]* @ff_iforce, i32 0, i32 0) }, %struct.iforce_device { i16 1784, i16 -23806, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i32 0, i32 0), i16* getelementptr inbounds ([14 x i16], [14 x i16]* @btn_joystick, i32 0, i32 0), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @abs_joystick, i32 0, i32 0), i16* getelementptr inbounds ([12 x i16], [12 x i16]* @ff_iforce, i32 0, i32 0) }, %struct.iforce_device { i16 1750, i16 10684, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.27, i32 0, i32 0), i16* getelementptr inbounds ([9 x i16], [9 x i16]* @btn_wheel, i32 0, i32 0), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @abs_wheel, i32 0, i32 0), i16* getelementptr inbounds ([12 x i16], [12 x i16]* @ff_iforce, i32 0, i32 0) }, %struct.iforce_device { i16 0, i16 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.28, i32 0, i32 0), i16* getelementptr inbounds ([14 x i16], [14 x i16]* @btn_joystick, i32 0, i32 0), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @abs_joystick, i32 0, i32 0), i16* getelementptr inbounds ([12 x i16], [12 x i16]* @ff_iforce, i32 0, i32 0) }], align 16, !dbg !3843
@.str.12 = private unnamed_addr constant [2 x i8] c"\04\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"%s: Device still owns effects\0A\00", align 1
@__func__.iforce_close = private unnamed_addr constant [13 x i8] c"iforce_close\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\01\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"Thrustmaster Motor Sport GT\00", align 1
@btn_wheel = internal global [9 x i16] [i16 336, i16 337, i16 294, i16 295, i16 296, i16 297, i16 298, i16 299, i16 -1], align 16, !dbg !3848
@abs_wheel = internal global [6 x i16] [i16 8, i16 9, i16 10, i16 16, i16 17, i16 -1], align 2, !dbg !3851
@ff_iforce = internal global [12 x i16] [i16 81, i16 82, i16 83, i16 85, i16 88, i16 89, i16 90, i16 91, i16 92, i16 96, i16 97, i16 -1], align 16, !dbg !3854
@.str.16 = private unnamed_addr constant [23 x i8] c"Logitech WingMan Force\00", align 1
@btn_joystick = internal global [14 x i16] [i16 288, i16 291, i16 289, i16 292, i16 294, i16 295, i16 296, i16 297, i16 298, i16 304, i16 305, i16 306, i16 303, i16 -1], align 16, !dbg !3857
@abs_joystick = internal global [6 x i16] [i16 0, i16 1, i16 6, i16 16, i16 17, i16 -1], align 2, !dbg !3862
@.str.17 = private unnamed_addr constant [31 x i8] c"Logitech WingMan Formula Force\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"AVB Top Shot Pegasus\00", align 1
@btn_joystick_avb = internal global [10 x i16] [i16 288, i16 289, i16 291, i16 292, i16 294, i16 295, i16 296, i16 297, i16 303, i16 -1], align 16, !dbg !3864
@abs_avb_pegasus = internal global [9 x i16] [i16 0, i16 1, i16 6, i16 7, i16 16, i16 17, i16 18, i16 19, i16 -1], align 16, !dbg !3869
@.str.19 = private unnamed_addr constant [20 x i8] c"AVB Mag Turbo Force\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"AVB Top Shot Force Feedback Racing Wheel\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"ACT LABS Force RS\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"Saitek R440 Force Wheel\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"Guillemot Race Leader Force Feedback\00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c"Guillemot Jet Leader Force Feedback\00", align 1
@abs_joystick_rudder = internal global [7 x i16] [i16 0, i16 1, i16 6, i16 7, i16 16, i16 17, i16 -1], align 2, !dbg !3871
@.str.25 = private unnamed_addr constant [38 x i8] c"Guillemot Force Feedback Racing Wheel\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"Guillemot Jet Leader 3D\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"Trust Force Feedback Race Master\00", align 1
@.str.28 = private unnamed_addr constant [35 x i8] c"Unknown I-Force Device [%04x:%04x]\00", align 1
@llvm.used = appending global [4 x i8*] [i8* getelementptr inbounds ([87 x i8], [87 x i8]* @__UNIQUE_ID_author204, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__UNIQUE_ID_description205, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__UNIQUE_ID_file206, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__UNIQUE_ID_license207, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @iforce_init_device(%struct.device* %parent, i16 zeroext %bustype, %struct.iforce* %iforce) #0 !dbg !120 {
entry:
  %p.addr.i.i210 = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i.i210, metadata !3884, metadata !DIExpression()), !dbg !3891
  %p.addr.i211 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i211, metadata !3899, metadata !DIExpression()), !dbg !3900
  %p.addr.i.i208 = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i.i208, metadata !3884, metadata !DIExpression()), !dbg !3901
  %p.addr.i209 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i209, metadata !3899, metadata !DIExpression()), !dbg !3905
  %p.addr.i.i = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i.i, metadata !3884, metadata !DIExpression()), !dbg !3906
  %p.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i, metadata !3899, metadata !DIExpression()), !dbg !3910
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !3911, metadata !DIExpression()), !dbg !3918
  %retval = alloca i32, align 4
  %parent.addr = alloca %struct.device*, align 8
  %bustype.addr = alloca i16, align 2
  %iforce.addr = alloca %struct.iforce*, align 8
  %input_dev = alloca %struct.input_dev*, align 8
  %ff = alloca %struct.ff_device*, align 8
  %c = alloca [5 x i8], align 1
  %buf = alloca [16 x i8], align 16
  %len = alloca i64, align 8
  %i = alloca i32, align 4
  %error = alloca i32, align 4
  %ff_effects = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 1
  %t = alloca i16, align 2
  store %struct.device* %parent, %struct.device** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %parent.addr, metadata !3921, metadata !DIExpression()), !dbg !3922
  store i16 %bustype, i16* %bustype.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %bustype.addr, metadata !3923, metadata !DIExpression()), !dbg !3924
  store %struct.iforce* %iforce, %struct.iforce** %iforce.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.iforce** %iforce.addr, metadata !3925, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.declare(metadata %struct.input_dev** %input_dev, metadata !3927, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.declare(metadata %struct.ff_device** %ff, metadata !3929, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.declare(metadata [5 x i8]* %c, metadata !3931, metadata !DIExpression()), !dbg !3935
  %0 = bitcast [5 x i8]* %c to i8*, !dbg !3935
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.iforce_init_device.c, i32 0, i32 0), i64 5, i1 false), !dbg !3935
  call void @llvm.dbg.declare(metadata [16 x i8]* %buf, metadata !3936, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.declare(metadata i64* %len, metadata !3939, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3941, metadata !DIExpression()), !dbg !3942
  call void @llvm.dbg.declare(metadata i32* %error, metadata !3943, metadata !DIExpression()), !dbg !3944
  call void @llvm.dbg.declare(metadata i32* %ff_effects, metadata !3945, metadata !DIExpression()), !dbg !3946
  store i32 0, i32* %ff_effects, align 4, !dbg !3946
  %call = call %struct.input_dev* @input_allocate_device() #6, !dbg !3947
  store %struct.input_dev* %call, %struct.input_dev** %input_dev, align 8, !dbg !3948
  %1 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !3949
  %tobool = icmp ne %struct.input_dev* %1, null, !dbg !3949
  br i1 %tobool, label %if.end, label %if.then, !dbg !3951

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !3952
  br label %return, !dbg !3952

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !3953

do.body:                                          ; preds = %if.end
  %2 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !3954
  %wait = getelementptr inbounds %struct.iforce, %struct.iforce* %2, i32 0, i32 7, !dbg !3954
  call void @__init_waitqueue_head(%struct.wait_queue_head* %wait, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.lock_class_key* @iforce_init_device.__key) #6, !dbg !3954
  br label %do.end, !dbg !3954

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !3956

do.body1:                                         ; preds = %do.end
  %3 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !3957
  %xmit_lock = getelementptr inbounds %struct.iforce, %struct.iforce* %3, i32 0, i32 3, !dbg !3957
  store %struct.spinlock* %xmit_lock, %struct.spinlock** %lock.addr.i, align 8
  %4 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !3958
  %5 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %4, i32 0, i32 0, !dbg !3959
  %rlock.i = bitcast %union.anon.3* %5 to %struct.raw_spinlock*, !dbg !3959
  %6 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !3957
  %xmit_lock3 = getelementptr inbounds %struct.iforce, %struct.iforce* %6, i32 0, i32 3, !dbg !3957
  %7 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %.compoundliteral, i32 0, i32 0, !dbg !3957
  %rlock = bitcast %union.anon.3* %7 to %struct.raw_spinlock*, !dbg !3957
  %8 = bitcast %struct.spinlock* %xmit_lock3 to i8*, !dbg !3957
  %9 = bitcast %struct.spinlock* %.compoundliteral to i8*, !dbg !3957
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 1 %9, i64 0, i1 false), !dbg !3957
  br label %do.end4, !dbg !3957

do.end4:                                          ; preds = %do.body1
  br label %do.body5, !dbg !3960

do.body5:                                         ; preds = %do.end4
  %10 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !3961
  %mem_mutex = getelementptr inbounds %struct.iforce, %struct.iforce* %10, i32 0, i32 10, !dbg !3961
  call void @__mutex_init(%struct.mutex* %mem_mutex, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), %struct.lock_class_key* @iforce_init_device.__key.1) #6, !dbg !3961
  br label %do.end6, !dbg !3961

do.end6:                                          ; preds = %do.body5
  %11 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !3963
  %xmit_data = getelementptr inbounds %struct.iforce, %struct.iforce* %11, i32 0, i32 5, !dbg !3964
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %xmit_data, i64 0, i64 0, !dbg !3963
  %12 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !3965
  %xmit = getelementptr inbounds %struct.iforce, %struct.iforce* %12, i32 0, i32 4, !dbg !3966
  %buf7 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %xmit, i32 0, i32 0, !dbg !3967
  store i8* %arraydecay, i8** %buf7, align 8, !dbg !3968
  %13 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !3969
  %14 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !3970
  %dev = getelementptr inbounds %struct.iforce, %struct.iforce* %14, i32 0, i32 0, !dbg !3971
  store %struct.input_dev* %13, %struct.input_dev** %dev, align 8, !dbg !3972
  %15 = load i16, i16* %bustype.addr, align 2, !dbg !3973
  %16 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !3974
  %id = getelementptr inbounds %struct.input_dev, %struct.input_dev* %16, i32 0, i32 3, !dbg !3975
  %bustype8 = getelementptr inbounds %struct.input_id, %struct.input_id* %id, i32 0, i32 0, !dbg !3976
  store i16 %15, i16* %bustype8, align 8, !dbg !3977
  %17 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !3978
  %18 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !3979
  %dev9 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %18, i32 0, i32 40, !dbg !3980
  %parent10 = getelementptr inbounds %struct.device, %struct.device* %dev9, i32 0, i32 1, !dbg !3981
  store %struct.device* %17, %struct.device** %parent10, align 8, !dbg !3982
  %19 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !3983
  %20 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !3984
  %21 = bitcast %struct.iforce* %20 to i8*, !dbg !3984
  call void @input_set_drvdata(%struct.input_dev* %19, i8* %21) #6, !dbg !3985
  %22 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !3986
  %name = getelementptr inbounds %struct.input_dev, %struct.input_dev* %22, i32 0, i32 0, !dbg !3987
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8** %name, align 8, !dbg !3988
  %23 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !3989
  %open = getelementptr inbounds %struct.input_dev, %struct.input_dev* %23, i32 0, i32 31, !dbg !3990
  store i32 (%struct.input_dev*)* @iforce_open, i32 (%struct.input_dev*)** %open, align 8, !dbg !3991
  %24 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !3992
  %close = getelementptr inbounds %struct.input_dev, %struct.input_dev* %24, i32 0, i32 32, !dbg !3993
  store void (%struct.input_dev*)* @iforce_close, void (%struct.input_dev*)** %close, align 8, !dbg !3994
  %25 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !3995
  %device_memory = getelementptr inbounds %struct.iforce, %struct.iforce* %25, i32 0, i32 8, !dbg !3996
  %name11 = getelementptr inbounds %struct.resource, %struct.resource* %device_memory, i32 0, i32 2, !dbg !3997
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8** %name11, align 8, !dbg !3998
  %26 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !3999
  %device_memory12 = getelementptr inbounds %struct.iforce, %struct.iforce* %26, i32 0, i32 8, !dbg !4000
  %start = getelementptr inbounds %struct.resource, %struct.resource* %device_memory12, i32 0, i32 0, !dbg !4001
  store i64 0, i64* %start, align 8, !dbg !4002
  %27 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4003
  %device_memory13 = getelementptr inbounds %struct.iforce, %struct.iforce* %27, i32 0, i32 8, !dbg !4004
  %end = getelementptr inbounds %struct.resource, %struct.resource* %device_memory13, i32 0, i32 1, !dbg !4005
  store i64 200, i64* %end, align 8, !dbg !4006
  %28 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4007
  %device_memory14 = getelementptr inbounds %struct.iforce, %struct.iforce* %28, i32 0, i32 8, !dbg !4008
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %device_memory14, i32 0, i32 3, !dbg !4009
  store i64 512, i64* %flags, align 8, !dbg !4010
  %29 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4011
  %device_memory15 = getelementptr inbounds %struct.iforce, %struct.iforce* %29, i32 0, i32 8, !dbg !4012
  %parent16 = getelementptr inbounds %struct.resource, %struct.resource* %device_memory15, i32 0, i32 5, !dbg !4013
  store %struct.resource* null, %struct.resource** %parent16, align 8, !dbg !4014
  %30 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4015
  %device_memory17 = getelementptr inbounds %struct.iforce, %struct.iforce* %30, i32 0, i32 8, !dbg !4016
  %child = getelementptr inbounds %struct.resource, %struct.resource* %device_memory17, i32 0, i32 7, !dbg !4017
  store %struct.resource* null, %struct.resource** %child, align 8, !dbg !4018
  %31 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4019
  %device_memory18 = getelementptr inbounds %struct.iforce, %struct.iforce* %31, i32 0, i32 8, !dbg !4020
  %sibling = getelementptr inbounds %struct.resource, %struct.resource* %device_memory18, i32 0, i32 6, !dbg !4021
  store %struct.resource* null, %struct.resource** %sibling, align 8, !dbg !4022
  store i32 0, i32* %i, align 4, !dbg !4023
  br label %for.cond, !dbg !4025

for.cond:                                         ; preds = %for.inc, %do.end6
  %32 = load i32, i32* %i, align 4, !dbg !4026
  %cmp = icmp slt i32 %32, 20, !dbg !4028
  br i1 %cmp, label %for.body, label %for.end, !dbg !4029

for.body:                                         ; preds = %for.cond
  %33 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4030
  %arraydecay19 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 0, !dbg !4032
  %call20 = call i32 @iforce_get_id_packet(%struct.iforce* %33, i8 zeroext 79, i8* %arraydecay19, i64* %len) #6, !dbg !4033
  %tobool21 = icmp ne i32 %call20, 0, !dbg !4033
  br i1 %tobool21, label %if.end23, label %if.then22, !dbg !4034

if.then22:                                        ; preds = %for.body
  br label %for.end, !dbg !4035

if.end23:                                         ; preds = %for.body
  br label %for.inc, !dbg !4036

for.inc:                                          ; preds = %if.end23
  %34 = load i32, i32* %i, align 4, !dbg !4037
  %inc = add i32 %34, 1, !dbg !4037
  store i32 %inc, i32* %i, align 4, !dbg !4037
  br label %for.cond, !dbg !4038, !llvm.loop !4039

for.end:                                          ; preds = %if.then22, %for.cond
  %35 = load i32, i32* %i, align 4, !dbg !4041
  %cmp24 = icmp eq i32 %35, 20, !dbg !4043
  br i1 %cmp24, label %if.then25, label %if.end27, !dbg !4044

if.then25:                                        ; preds = %for.end
  %36 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4045
  %dev26 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %36, i32 0, i32 40, !dbg !4045
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev26, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !4045
  store i32 -19, i32* %error, align 4, !dbg !4047
  br label %fail, !dbg !4048

if.end27:                                         ; preds = %for.end
  %37 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4049
  %arraydecay28 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 0, !dbg !4050
  %call29 = call i32 @iforce_get_id_packet(%struct.iforce* %37, i8 zeroext 77, i8* %arraydecay28, i64* %len) #6, !dbg !4051
  %tobool30 = icmp ne i32 %call29, 0, !dbg !4051
  br i1 %tobool30, label %lor.lhs.false, label %if.then32, !dbg !4052

lor.lhs.false:                                    ; preds = %if.end27
  %38 = load i64, i64* %len, align 8, !dbg !4053
  %cmp31 = icmp ult i64 %38, 3, !dbg !4054
  br i1 %cmp31, label %if.then32, label %if.else, !dbg !4055

if.then32:                                        ; preds = %lor.lhs.false, %if.end27
  %arraydecay33 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 0, !dbg !4056
  %add.ptr = getelementptr i8, i8* %arraydecay33, i64 1, !dbg !4057
  store i8* %add.ptr, i8** %p.addr.i, align 8
  %39 = load i8*, i8** %p.addr.i, align 8, !dbg !4058
  %40 = bitcast i8* %39 to i16*, !dbg !4059
  store i16* %40, i16** %p.addr.i.i, align 8
  %41 = load i16*, i16** %p.addr.i.i, align 8, !dbg !4060
  %42 = load i16, i16* %41, align 2, !dbg !4061
  %43 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4062
  %id35 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %43, i32 0, i32 3, !dbg !4063
  %vendor = getelementptr inbounds %struct.input_id, %struct.input_id* %id35, i32 0, i32 1, !dbg !4064
  store i16 %42, i16* %vendor, align 2, !dbg !4065
  br label %if.end38, !dbg !4062

if.else:                                          ; preds = %lor.lhs.false
  %44 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4066
  %dev36 = getelementptr inbounds %struct.iforce, %struct.iforce* %44, i32 0, i32 0, !dbg !4066
  %45 = load %struct.input_dev*, %struct.input_dev** %dev36, align 8, !dbg !4066
  %dev37 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %45, i32 0, i32 40, !dbg !4066
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev37, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0)) #7, !dbg !4066
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then32
  %46 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4067
  %arraydecay39 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 0, !dbg !4068
  %call40 = call i32 @iforce_get_id_packet(%struct.iforce* %46, i8 zeroext 80, i8* %arraydecay39, i64* %len) #6, !dbg !4069
  %tobool41 = icmp ne i32 %call40, 0, !dbg !4069
  br i1 %tobool41, label %lor.lhs.false42, label %if.then44, !dbg !4070

lor.lhs.false42:                                  ; preds = %if.end38
  %47 = load i64, i64* %len, align 8, !dbg !4071
  %cmp43 = icmp ult i64 %47, 3, !dbg !4072
  br i1 %cmp43, label %if.then44, label %if.else49, !dbg !4073

if.then44:                                        ; preds = %lor.lhs.false42, %if.end38
  %arraydecay45 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 0, !dbg !4074
  %add.ptr46 = getelementptr i8, i8* %arraydecay45, i64 1, !dbg !4075
  store i8* %add.ptr46, i8** %p.addr.i209, align 8
  %48 = load i8*, i8** %p.addr.i209, align 8, !dbg !4076
  %49 = bitcast i8* %48 to i16*, !dbg !4077
  store i16* %49, i16** %p.addr.i.i208, align 8
  %50 = load i16*, i16** %p.addr.i.i208, align 8, !dbg !4078
  %51 = load i16, i16* %50, align 2, !dbg !4079
  %52 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4080
  %id48 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %52, i32 0, i32 3, !dbg !4081
  %product = getelementptr inbounds %struct.input_id, %struct.input_id* %id48, i32 0, i32 2, !dbg !4082
  store i16 %51, i16* %product, align 4, !dbg !4083
  br label %if.end52, !dbg !4080

if.else49:                                        ; preds = %lor.lhs.false42
  %53 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4084
  %dev50 = getelementptr inbounds %struct.iforce, %struct.iforce* %53, i32 0, i32 0, !dbg !4084
  %54 = load %struct.input_dev*, %struct.input_dev** %dev50, align 8, !dbg !4084
  %dev51 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %54, i32 0, i32 40, !dbg !4084
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev51, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0)) #7, !dbg !4084
  br label %if.end52

if.end52:                                         ; preds = %if.else49, %if.then44
  %55 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4085
  %arraydecay53 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 0, !dbg !4086
  %call54 = call i32 @iforce_get_id_packet(%struct.iforce* %55, i8 zeroext 66, i8* %arraydecay53, i64* %len) #6, !dbg !4087
  %tobool55 = icmp ne i32 %call54, 0, !dbg !4087
  br i1 %tobool55, label %lor.lhs.false56, label %if.then58, !dbg !4088

lor.lhs.false56:                                  ; preds = %if.end52
  %56 = load i64, i64* %len, align 8, !dbg !4089
  %cmp57 = icmp ult i64 %56, 3, !dbg !4090
  br i1 %cmp57, label %if.then58, label %if.else64, !dbg !4091

if.then58:                                        ; preds = %lor.lhs.false56, %if.end52
  %arraydecay59 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 0, !dbg !4092
  %add.ptr60 = getelementptr i8, i8* %arraydecay59, i64 1, !dbg !4093
  store i8* %add.ptr60, i8** %p.addr.i211, align 8
  %57 = load i8*, i8** %p.addr.i211, align 8, !dbg !4094
  %58 = bitcast i8* %57 to i16*, !dbg !4095
  store i16* %58, i16** %p.addr.i.i210, align 8
  %59 = load i16*, i16** %p.addr.i.i210, align 8, !dbg !4096
  %60 = load i16, i16* %59, align 2, !dbg !4097
  %conv = zext i16 %60 to i64, !dbg !4098
  %61 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4099
  %device_memory62 = getelementptr inbounds %struct.iforce, %struct.iforce* %61, i32 0, i32 8, !dbg !4100
  %end63 = getelementptr inbounds %struct.resource, %struct.resource* %device_memory62, i32 0, i32 1, !dbg !4101
  store i64 %conv, i64* %end63, align 8, !dbg !4102
  br label %if.end67, !dbg !4099

if.else64:                                        ; preds = %lor.lhs.false56
  %62 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4103
  %dev65 = getelementptr inbounds %struct.iforce, %struct.iforce* %62, i32 0, i32 0, !dbg !4103
  %63 = load %struct.input_dev*, %struct.input_dev** %dev65, align 8, !dbg !4103
  %dev66 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %63, i32 0, i32 40, !dbg !4103
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev66, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0)) #7, !dbg !4103
  br label %if.end67

if.end67:                                         ; preds = %if.else64, %if.then58
  %64 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4104
  %arraydecay68 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 0, !dbg !4106
  %call69 = call i32 @iforce_get_id_packet(%struct.iforce* %64, i8 zeroext 78, i8* %arraydecay68, i64* %len) #6, !dbg !4107
  %tobool70 = icmp ne i32 %call69, 0, !dbg !4107
  br i1 %tobool70, label %lor.lhs.false71, label %if.then74, !dbg !4108

lor.lhs.false71:                                  ; preds = %if.end67
  %65 = load i64, i64* %len, align 8, !dbg !4109
  %cmp72 = icmp ult i64 %65, 2, !dbg !4110
  br i1 %cmp72, label %if.then74, label %if.else76, !dbg !4111

if.then74:                                        ; preds = %lor.lhs.false71, %if.end67
  %arrayidx = getelementptr [16 x i8], [16 x i8]* %buf, i64 0, i64 1, !dbg !4112
  %66 = load i8, i8* %arrayidx, align 1, !dbg !4112
  %conv75 = zext i8 %66 to i32, !dbg !4112
  store i32 %conv75, i32* %ff_effects, align 4, !dbg !4113
  br label %if.end79, !dbg !4114

if.else76:                                        ; preds = %lor.lhs.false71
  %67 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4115
  %dev77 = getelementptr inbounds %struct.iforce, %struct.iforce* %67, i32 0, i32 0, !dbg !4115
  %68 = load %struct.input_dev*, %struct.input_dev** %dev77, align 8, !dbg !4115
  %dev78 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %68, i32 0, i32 40, !dbg !4115
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev78, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0)) #7, !dbg !4115
  br label %if.end79

if.end79:                                         ; preds = %if.else76, %if.then74
  %69 = load i32, i32* %ff_effects, align 4, !dbg !4116
  %cmp80 = icmp sgt i32 %69, 32, !dbg !4118
  br i1 %cmp80, label %if.then82, label %if.end85, !dbg !4119

if.then82:                                        ; preds = %if.end79
  %70 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4120
  %dev83 = getelementptr inbounds %struct.iforce, %struct.iforce* %70, i32 0, i32 0, !dbg !4120
  %71 = load %struct.input_dev*, %struct.input_dev** %dev83, align 8, !dbg !4120
  %dev84 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %71, i32 0, i32 40, !dbg !4120
  %72 = load i32, i32* %ff_effects, align 4, !dbg !4120
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev84, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i64 0, i64 0), i32 32, i32 %72) #7, !dbg !4120
  store i32 32, i32* %ff_effects, align 4, !dbg !4122
  br label %if.end85, !dbg !4123

if.end85:                                         ; preds = %if.then82, %if.end79
  store i32 0, i32* %i, align 4, !dbg !4124
  br label %for.cond86, !dbg !4126

for.cond86:                                       ; preds = %for.inc99, %if.end85
  %73 = load i32, i32* %i, align 4, !dbg !4127
  %idxprom = sext i32 %73 to i64, !dbg !4129
  %arrayidx87 = getelementptr [5 x i8], [5 x i8]* %c, i64 0, i64 %idxprom, !dbg !4129
  %74 = load i8, i8* %arrayidx87, align 1, !dbg !4129
  %tobool88 = icmp ne i8 %74, 0, !dbg !4130
  br i1 %tobool88, label %for.body89, label %for.end101, !dbg !4130

for.body89:                                       ; preds = %for.cond86
  %75 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4131
  %76 = load i32, i32* %i, align 4, !dbg !4133
  %idxprom90 = sext i32 %76 to i64, !dbg !4134
  %arrayidx91 = getelementptr [5 x i8], [5 x i8]* %c, i64 0, i64 %idxprom90, !dbg !4134
  %77 = load i8, i8* %arrayidx91, align 1, !dbg !4134
  %arraydecay92 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 0, !dbg !4135
  %call93 = call i32 @iforce_get_id_packet(%struct.iforce* %75, i8 zeroext %77, i8* %arraydecay92, i64* %len) #6, !dbg !4136
  %tobool94 = icmp ne i32 %call93, 0, !dbg !4136
  br i1 %tobool94, label %if.end98, label %if.then95, !dbg !4137

if.then95:                                        ; preds = %for.body89
  %78 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4138
  %79 = load i64, i64* %len, align 8, !dbg !4139
  %or = or i64 65280, %79, !dbg !4140
  %conv96 = trunc i64 %or to i16, !dbg !4141
  %arraydecay97 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 0, !dbg !4142
  call void @iforce_dump_packet(%struct.iforce* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i16 zeroext %conv96, i8* %arraydecay97) #6, !dbg !4143
  br label %if.end98, !dbg !4143

if.end98:                                         ; preds = %if.then95, %for.body89
  br label %for.inc99, !dbg !4144

for.inc99:                                        ; preds = %if.end98
  %80 = load i32, i32* %i, align 4, !dbg !4145
  %inc100 = add i32 %80, 1, !dbg !4145
  store i32 %inc100, i32* %i, align 4, !dbg !4145
  br label %for.cond86, !dbg !4146, !llvm.loop !4147

for.end101:                                       ; preds = %for.cond86
  %81 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4149
  call void @iforce_set_autocenter(%struct.input_dev* %81, i16 zeroext 0) #6, !dbg !4150
  store i32 0, i32* %i, align 4, !dbg !4151
  br label %for.cond102, !dbg !4153

for.cond102:                                      ; preds = %for.inc126, %for.end101
  %82 = load i32, i32* %i, align 4, !dbg !4154
  %idxprom103 = sext i32 %82 to i64, !dbg !4156
  %arrayidx104 = getelementptr [15 x %struct.iforce_device], [15 x %struct.iforce_device]* @iforce_device, i64 0, i64 %idxprom103, !dbg !4156
  %idvendor = getelementptr inbounds %struct.iforce_device, %struct.iforce_device* %arrayidx104, i32 0, i32 0, !dbg !4157
  %83 = load i16, i16* %idvendor, align 8, !dbg !4157
  %tobool105 = icmp ne i16 %83, 0, !dbg !4158
  br i1 %tobool105, label %for.body106, label %for.end128, !dbg !4158

for.body106:                                      ; preds = %for.cond102
  %84 = load i32, i32* %i, align 4, !dbg !4159
  %idxprom107 = sext i32 %84 to i64, !dbg !4161
  %arrayidx108 = getelementptr [15 x %struct.iforce_device], [15 x %struct.iforce_device]* @iforce_device, i64 0, i64 %idxprom107, !dbg !4161
  %idvendor109 = getelementptr inbounds %struct.iforce_device, %struct.iforce_device* %arrayidx108, i32 0, i32 0, !dbg !4162
  %85 = load i16, i16* %idvendor109, align 8, !dbg !4162
  %conv110 = zext i16 %85 to i32, !dbg !4161
  %86 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4163
  %id111 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %86, i32 0, i32 3, !dbg !4164
  %vendor112 = getelementptr inbounds %struct.input_id, %struct.input_id* %id111, i32 0, i32 1, !dbg !4165
  %87 = load i16, i16* %vendor112, align 2, !dbg !4165
  %conv113 = zext i16 %87 to i32, !dbg !4163
  %cmp114 = icmp eq i32 %conv110, %conv113, !dbg !4166
  br i1 %cmp114, label %land.lhs.true, label %if.end125, !dbg !4167

land.lhs.true:                                    ; preds = %for.body106
  %88 = load i32, i32* %i, align 4, !dbg !4168
  %idxprom116 = sext i32 %88 to i64, !dbg !4169
  %arrayidx117 = getelementptr [15 x %struct.iforce_device], [15 x %struct.iforce_device]* @iforce_device, i64 0, i64 %idxprom116, !dbg !4169
  %idproduct = getelementptr inbounds %struct.iforce_device, %struct.iforce_device* %arrayidx117, i32 0, i32 1, !dbg !4170
  %89 = load i16, i16* %idproduct, align 2, !dbg !4170
  %conv118 = zext i16 %89 to i32, !dbg !4169
  %90 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4171
  %id119 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %90, i32 0, i32 3, !dbg !4172
  %product120 = getelementptr inbounds %struct.input_id, %struct.input_id* %id119, i32 0, i32 2, !dbg !4173
  %91 = load i16, i16* %product120, align 4, !dbg !4173
  %conv121 = zext i16 %91 to i32, !dbg !4171
  %cmp122 = icmp eq i32 %conv118, %conv121, !dbg !4174
  br i1 %cmp122, label %if.then124, label %if.end125, !dbg !4175

if.then124:                                       ; preds = %land.lhs.true
  br label %for.end128, !dbg !4176

if.end125:                                        ; preds = %land.lhs.true, %for.body106
  br label %for.inc126, !dbg !4173

for.inc126:                                       ; preds = %if.end125
  %92 = load i32, i32* %i, align 4, !dbg !4177
  %inc127 = add i32 %92, 1, !dbg !4177
  store i32 %inc127, i32* %i, align 4, !dbg !4177
  br label %for.cond102, !dbg !4178, !llvm.loop !4179

for.end128:                                       ; preds = %if.then124, %for.cond102
  %93 = load i32, i32* %i, align 4, !dbg !4181
  %idx.ext = sext i32 %93 to i64, !dbg !4182
  %add.ptr129 = getelementptr %struct.iforce_device, %struct.iforce_device* getelementptr inbounds ([15 x %struct.iforce_device], [15 x %struct.iforce_device]* @iforce_device, i64 0, i64 0), i64 %idx.ext, !dbg !4182
  %94 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4183
  %type = getelementptr inbounds %struct.iforce, %struct.iforce* %94, i32 0, i32 1, !dbg !4184
  store %struct.iforce_device* %add.ptr129, %struct.iforce_device** %type, align 8, !dbg !4185
  %95 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4186
  %type130 = getelementptr inbounds %struct.iforce, %struct.iforce* %95, i32 0, i32 1, !dbg !4187
  %96 = load %struct.iforce_device*, %struct.iforce_device** %type130, align 8, !dbg !4187
  %name131 = getelementptr inbounds %struct.iforce_device, %struct.iforce_device* %96, i32 0, i32 2, !dbg !4188
  %97 = load i8*, i8** %name131, align 8, !dbg !4188
  %98 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4189
  %name132 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %98, i32 0, i32 0, !dbg !4190
  store i8* %97, i8** %name132, align 8, !dbg !4191
  %99 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4192
  %evbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %99, i32 0, i32 5, !dbg !4193
  %arrayidx133 = getelementptr [1 x i64], [1 x i64]* %evbit, i64 0, i64 0, !dbg !4192
  store i64 8388618, i64* %arrayidx133, align 8, !dbg !4194
  store i32 0, i32* %i, align 4, !dbg !4195
  br label %for.cond134, !dbg !4197

for.cond134:                                      ; preds = %for.inc148, %for.end128
  %100 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4198
  %type135 = getelementptr inbounds %struct.iforce, %struct.iforce* %100, i32 0, i32 1, !dbg !4200
  %101 = load %struct.iforce_device*, %struct.iforce_device** %type135, align 8, !dbg !4200
  %btn = getelementptr inbounds %struct.iforce_device, %struct.iforce_device* %101, i32 0, i32 3, !dbg !4201
  %102 = load i16*, i16** %btn, align 8, !dbg !4201
  %103 = load i32, i32* %i, align 4, !dbg !4202
  %idxprom136 = sext i32 %103 to i64, !dbg !4198
  %arrayidx137 = getelementptr i16, i16* %102, i64 %idxprom136, !dbg !4198
  %104 = load i16, i16* %arrayidx137, align 2, !dbg !4198
  %conv138 = sext i16 %104 to i32, !dbg !4198
  %cmp139 = icmp sge i32 %conv138, 0, !dbg !4203
  br i1 %cmp139, label %for.body141, label %for.end150, !dbg !4204

for.body141:                                      ; preds = %for.cond134
  %105 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4205
  %type142 = getelementptr inbounds %struct.iforce, %struct.iforce* %105, i32 0, i32 1, !dbg !4206
  %106 = load %struct.iforce_device*, %struct.iforce_device** %type142, align 8, !dbg !4206
  %btn143 = getelementptr inbounds %struct.iforce_device, %struct.iforce_device* %106, i32 0, i32 3, !dbg !4207
  %107 = load i16*, i16** %btn143, align 8, !dbg !4207
  %108 = load i32, i32* %i, align 4, !dbg !4208
  %idxprom144 = sext i32 %108 to i64, !dbg !4205
  %arrayidx145 = getelementptr i16, i16* %107, i64 %idxprom144, !dbg !4205
  %109 = load i16, i16* %arrayidx145, align 2, !dbg !4205
  %conv146 = sext i16 %109 to i64, !dbg !4205
  %110 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4209
  %keybit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %110, i32 0, i32 6, !dbg !4210
  %arraydecay147 = getelementptr inbounds [12 x i64], [12 x i64]* %keybit, i64 0, i64 0, !dbg !4209
  call void @set_bit(i64 %conv146, i64* %arraydecay147) #6, !dbg !4211
  br label %for.inc148, !dbg !4211

for.inc148:                                       ; preds = %for.body141
  %111 = load i32, i32* %i, align 4, !dbg !4212
  %inc149 = add i32 %111, 1, !dbg !4212
  store i32 %inc149, i32* %i, align 4, !dbg !4212
  br label %for.cond134, !dbg !4213, !llvm.loop !4214

for.end150:                                       ; preds = %for.cond134
  store i32 0, i32* %i, align 4, !dbg !4216
  br label %for.cond151, !dbg !4218

for.cond151:                                      ; preds = %for.inc173, %for.end150
  %112 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4219
  %type152 = getelementptr inbounds %struct.iforce, %struct.iforce* %112, i32 0, i32 1, !dbg !4221
  %113 = load %struct.iforce_device*, %struct.iforce_device** %type152, align 8, !dbg !4221
  %abs = getelementptr inbounds %struct.iforce_device, %struct.iforce_device* %113, i32 0, i32 4, !dbg !4222
  %114 = load i16*, i16** %abs, align 8, !dbg !4222
  %115 = load i32, i32* %i, align 4, !dbg !4223
  %idxprom153 = sext i32 %115 to i64, !dbg !4219
  %arrayidx154 = getelementptr i16, i16* %114, i64 %idxprom153, !dbg !4219
  %116 = load i16, i16* %arrayidx154, align 2, !dbg !4219
  %conv155 = sext i16 %116 to i32, !dbg !4219
  %cmp156 = icmp sge i32 %conv155, 0, !dbg !4224
  br i1 %cmp156, label %for.body158, label %for.end175, !dbg !4225

for.body158:                                      ; preds = %for.cond151
  call void @llvm.dbg.declare(metadata i16* %t, metadata !4226, metadata !DIExpression()), !dbg !4228
  %117 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4229
  %type159 = getelementptr inbounds %struct.iforce, %struct.iforce* %117, i32 0, i32 1, !dbg !4230
  %118 = load %struct.iforce_device*, %struct.iforce_device** %type159, align 8, !dbg !4230
  %abs160 = getelementptr inbounds %struct.iforce_device, %struct.iforce_device* %118, i32 0, i32 4, !dbg !4231
  %119 = load i16*, i16** %abs160, align 8, !dbg !4231
  %120 = load i32, i32* %i, align 4, !dbg !4232
  %idxprom161 = sext i32 %120 to i64, !dbg !4229
  %arrayidx162 = getelementptr i16, i16* %119, i64 %idxprom161, !dbg !4229
  %121 = load i16, i16* %arrayidx162, align 2, !dbg !4229
  store i16 %121, i16* %t, align 2, !dbg !4228
  %122 = load i16, i16* %t, align 2, !dbg !4233
  %conv163 = sext i16 %122 to i32, !dbg !4233
  switch i32 %conv163, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 8, label %sw.bb
    i32 6, label %sw.bb167
    i32 9, label %sw.bb167
    i32 10, label %sw.bb167
    i32 7, label %sw.bb169
    i32 16, label %sw.bb171
    i32 17, label %sw.bb171
    i32 18, label %sw.bb171
    i32 19, label %sw.bb171
  ], !dbg !4234

sw.bb:                                            ; preds = %for.body158, %for.body158, %for.body158
  %123 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4235
  %124 = load i16, i16* %t, align 2, !dbg !4237
  %conv164 = sext i16 %124 to i32, !dbg !4237
  call void @input_set_abs_params(%struct.input_dev* %123, i32 %conv164, i32 -1920, i32 1920, i32 16, i32 128) #6, !dbg !4238
  %125 = load i16, i16* %t, align 2, !dbg !4239
  %conv165 = sext i16 %125 to i64, !dbg !4239
  %126 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4240
  %ffbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %126, i32 0, i32 12, !dbg !4241
  %arraydecay166 = getelementptr inbounds [2 x i64], [2 x i64]* %ffbit, i64 0, i64 0, !dbg !4240
  call void @set_bit(i64 %conv165, i64* %arraydecay166) #6, !dbg !4242
  br label %sw.epilog, !dbg !4243

sw.bb167:                                         ; preds = %for.body158, %for.body158, %for.body158
  %127 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4244
  %128 = load i16, i16* %t, align 2, !dbg !4245
  %conv168 = sext i16 %128 to i32, !dbg !4245
  call void @input_set_abs_params(%struct.input_dev* %127, i32 %conv168, i32 0, i32 255, i32 0, i32 0) #6, !dbg !4246
  br label %sw.epilog, !dbg !4247

sw.bb169:                                         ; preds = %for.body158
  %129 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4248
  %130 = load i16, i16* %t, align 2, !dbg !4249
  %conv170 = sext i16 %130 to i32, !dbg !4249
  call void @input_set_abs_params(%struct.input_dev* %129, i32 %conv170, i32 -128, i32 127, i32 0, i32 0) #6, !dbg !4250
  br label %sw.epilog, !dbg !4251

sw.bb171:                                         ; preds = %for.body158, %for.body158, %for.body158, %for.body158
  %131 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4252
  %132 = load i16, i16* %t, align 2, !dbg !4253
  %conv172 = sext i16 %132 to i32, !dbg !4253
  call void @input_set_abs_params(%struct.input_dev* %131, i32 %conv172, i32 -1, i32 1, i32 0, i32 0) #6, !dbg !4254
  br label %sw.epilog, !dbg !4255

sw.epilog:                                        ; preds = %for.body158, %sw.bb171, %sw.bb169, %sw.bb167, %sw.bb
  br label %for.inc173, !dbg !4256

for.inc173:                                       ; preds = %sw.epilog
  %133 = load i32, i32* %i, align 4, !dbg !4257
  %inc174 = add i32 %133, 1, !dbg !4257
  store i32 %inc174, i32* %i, align 4, !dbg !4257
  br label %for.cond151, !dbg !4258, !llvm.loop !4259

for.end175:                                       ; preds = %for.cond151
  %134 = load i32, i32* %ff_effects, align 4, !dbg !4261
  %tobool176 = icmp ne i32 %134, 0, !dbg !4261
  br i1 %tobool176, label %if.then177, label %if.end202, !dbg !4263

if.then177:                                       ; preds = %for.end175
  store i32 0, i32* %i, align 4, !dbg !4264
  br label %for.cond178, !dbg !4267

for.cond178:                                      ; preds = %for.inc194, %if.then177
  %135 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4268
  %type179 = getelementptr inbounds %struct.iforce, %struct.iforce* %135, i32 0, i32 1, !dbg !4270
  %136 = load %struct.iforce_device*, %struct.iforce_device** %type179, align 8, !dbg !4270
  %ff180 = getelementptr inbounds %struct.iforce_device, %struct.iforce_device* %136, i32 0, i32 5, !dbg !4271
  %137 = load i16*, i16** %ff180, align 8, !dbg !4271
  %138 = load i32, i32* %i, align 4, !dbg !4272
  %idxprom181 = sext i32 %138 to i64, !dbg !4268
  %arrayidx182 = getelementptr i16, i16* %137, i64 %idxprom181, !dbg !4268
  %139 = load i16, i16* %arrayidx182, align 2, !dbg !4268
  %conv183 = sext i16 %139 to i32, !dbg !4268
  %cmp184 = icmp sge i32 %conv183, 0, !dbg !4273
  br i1 %cmp184, label %for.body186, label %for.end196, !dbg !4274

for.body186:                                      ; preds = %for.cond178
  %140 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4275
  %type187 = getelementptr inbounds %struct.iforce, %struct.iforce* %140, i32 0, i32 1, !dbg !4276
  %141 = load %struct.iforce_device*, %struct.iforce_device** %type187, align 8, !dbg !4276
  %ff188 = getelementptr inbounds %struct.iforce_device, %struct.iforce_device* %141, i32 0, i32 5, !dbg !4277
  %142 = load i16*, i16** %ff188, align 8, !dbg !4277
  %143 = load i32, i32* %i, align 4, !dbg !4278
  %idxprom189 = sext i32 %143 to i64, !dbg !4275
  %arrayidx190 = getelementptr i16, i16* %142, i64 %idxprom189, !dbg !4275
  %144 = load i16, i16* %arrayidx190, align 2, !dbg !4275
  %conv191 = sext i16 %144 to i64, !dbg !4275
  %145 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4279
  %ffbit192 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %145, i32 0, i32 12, !dbg !4280
  %arraydecay193 = getelementptr inbounds [2 x i64], [2 x i64]* %ffbit192, i64 0, i64 0, !dbg !4279
  call void @set_bit(i64 %conv191, i64* %arraydecay193) #6, !dbg !4281
  br label %for.inc194, !dbg !4281

for.inc194:                                       ; preds = %for.body186
  %146 = load i32, i32* %i, align 4, !dbg !4282
  %inc195 = add i32 %146, 1, !dbg !4282
  store i32 %inc195, i32* %i, align 4, !dbg !4282
  br label %for.cond178, !dbg !4283, !llvm.loop !4284

for.end196:                                       ; preds = %for.cond178
  %147 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4286
  %148 = load i32, i32* %ff_effects, align 4, !dbg !4287
  %call197 = call i32 @input_ff_create(%struct.input_dev* %147, i32 %148) #6, !dbg !4288
  store i32 %call197, i32* %error, align 4, !dbg !4289
  %149 = load i32, i32* %error, align 4, !dbg !4290
  %tobool198 = icmp ne i32 %149, 0, !dbg !4290
  br i1 %tobool198, label %if.then199, label %if.end200, !dbg !4292

if.then199:                                       ; preds = %for.end196
  br label %fail, !dbg !4293

if.end200:                                        ; preds = %for.end196
  %150 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4294
  %ff201 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %150, i32 0, i32 20, !dbg !4295
  %151 = load %struct.ff_device*, %struct.ff_device** %ff201, align 8, !dbg !4295
  store %struct.ff_device* %151, %struct.ff_device** %ff, align 8, !dbg !4296
  %152 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !4297
  %upload = getelementptr inbounds %struct.ff_device, %struct.ff_device* %152, i32 0, i32 0, !dbg !4298
  store i32 (%struct.input_dev*, %struct.ff_effect*, %struct.ff_effect*)* @iforce_upload_effect, i32 (%struct.input_dev*, %struct.ff_effect*, %struct.ff_effect*)** %upload, align 8, !dbg !4299
  %153 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !4300
  %erase = getelementptr inbounds %struct.ff_device, %struct.ff_device* %153, i32 0, i32 1, !dbg !4301
  store i32 (%struct.input_dev*, i32)* @iforce_erase_effect, i32 (%struct.input_dev*, i32)** %erase, align 8, !dbg !4302
  %154 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !4303
  %set_gain = getelementptr inbounds %struct.ff_device, %struct.ff_device* %154, i32 0, i32 3, !dbg !4304
  store void (%struct.input_dev*, i16)* @iforce_set_gain, void (%struct.input_dev*, i16)** %set_gain, align 8, !dbg !4305
  %155 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !4306
  %set_autocenter = getelementptr inbounds %struct.ff_device, %struct.ff_device* %155, i32 0, i32 4, !dbg !4307
  store void (%struct.input_dev*, i16)* @iforce_set_autocenter, void (%struct.input_dev*, i16)** %set_autocenter, align 8, !dbg !4308
  %156 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !4309
  %playback = getelementptr inbounds %struct.ff_device, %struct.ff_device* %156, i32 0, i32 2, !dbg !4310
  store i32 (%struct.input_dev*, i32, i32)* @iforce_playback, i32 (%struct.input_dev*, i32, i32)** %playback, align 8, !dbg !4311
  br label %if.end202, !dbg !4312

if.end202:                                        ; preds = %if.end200, %for.end175
  %157 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4313
  %dev203 = getelementptr inbounds %struct.iforce, %struct.iforce* %157, i32 0, i32 0, !dbg !4314
  %158 = load %struct.input_dev*, %struct.input_dev** %dev203, align 8, !dbg !4314
  %call204 = call i32 @input_register_device(%struct.input_dev* %158) #6, !dbg !4315
  store i32 %call204, i32* %error, align 4, !dbg !4316
  %159 = load i32, i32* %error, align 4, !dbg !4317
  %tobool205 = icmp ne i32 %159, 0, !dbg !4317
  br i1 %tobool205, label %if.then206, label %if.end207, !dbg !4319

if.then206:                                       ; preds = %if.end202
  br label %fail, !dbg !4320

if.end207:                                        ; preds = %if.end202
  store i32 0, i32* %retval, align 4, !dbg !4321
  br label %return, !dbg !4321

fail:                                             ; preds = %if.then206, %if.then199, %if.then25
  call void @llvm.dbg.label(metadata !4322), !dbg !4323
  %160 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4324
  call void @input_free_device(%struct.input_dev* %160) #6, !dbg !4325
  %161 = load i32, i32* %error, align 4, !dbg !4326
  store i32 %161, i32* %retval, align 4, !dbg !4327
  br label %return, !dbg !4327

return:                                           ; preds = %fail, %if.end207, %if.then
  %162 = load i32, i32* %retval, align 4, !dbg !4328
  ret i32 %162, !dbg !4328
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noredzone
declare dso_local %struct.input_dev* @input_allocate_device() #3

; Function Attrs: noredzone
declare dso_local void @__init_waitqueue_head(%struct.wait_queue_head*, i8*, %struct.lock_class_key*) #3

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_set_drvdata(%struct.input_dev* %dev, i8* %data) #0 !dbg !4329 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !4332, metadata !DIExpression()), !dbg !4333
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4334, metadata !DIExpression()), !dbg !4335
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4336
  %dev1 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i32 0, i32 40, !dbg !4337
  %1 = load i8*, i8** %data.addr, align 8, !dbg !4338
  call void @dev_set_drvdata(%struct.device* %dev1, i8* %1) #6, !dbg !4339
  ret void, !dbg !4340
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @iforce_open(%struct.input_dev* %dev) #0 !dbg !4341 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %iforce = alloca %struct.iforce*, align 8
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !4342, metadata !DIExpression()), !dbg !4343
  call void @llvm.dbg.declare(metadata %struct.iforce** %iforce, metadata !4344, metadata !DIExpression()), !dbg !4345
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4346
  %call = call i8* @input_get_drvdata(%struct.input_dev* %0) #6, !dbg !4347
  %1 = bitcast i8* %call to %struct.iforce*, !dbg !4347
  store %struct.iforce* %1, %struct.iforce** %iforce, align 8, !dbg !4345
  %2 = load %struct.iforce*, %struct.iforce** %iforce, align 8, !dbg !4348
  %xport_ops = getelementptr inbounds %struct.iforce, %struct.iforce* %2, i32 0, i32 2, !dbg !4349
  %3 = load %struct.iforce_xport_ops*, %struct.iforce_xport_ops** %xport_ops, align 8, !dbg !4349
  %start_io = getelementptr inbounds %struct.iforce_xport_ops, %struct.iforce_xport_ops* %3, i32 0, i32 2, !dbg !4350
  %4 = load i32 (%struct.iforce*)*, i32 (%struct.iforce*)** %start_io, align 8, !dbg !4350
  %5 = load %struct.iforce*, %struct.iforce** %iforce, align 8, !dbg !4351
  %call1 = call i32 %4(%struct.iforce* %5) #6, !dbg !4348
  %6 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4352
  %evbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %6, i32 0, i32 5, !dbg !4354
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %evbit, i64 0, i64 0, !dbg !4352
  %call2 = call zeroext i1 @test_bit(i64 21, i64* %arraydecay) #6, !dbg !4355
  br i1 %call2, label %if.then, label %if.end, !dbg !4356

if.then:                                          ; preds = %entry
  %7 = load %struct.iforce*, %struct.iforce** %iforce, align 8, !dbg !4357
  %call3 = call i32 @iforce_send_packet(%struct.iforce* %7, i16 zeroext 16897, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !4359
  br label %if.end, !dbg !4360

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !4361
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @iforce_close(%struct.input_dev* %dev) #0 !dbg !4362 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %iforce = alloca %struct.iforce*, align 8
  %i = alloca i32, align 4
  %__ret = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret12 = alloca i64, align 8
  %__int = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp25 = alloca i32, align 4
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !4363, metadata !DIExpression()), !dbg !4364
  call void @llvm.dbg.declare(metadata %struct.iforce** %iforce, metadata !4365, metadata !DIExpression()), !dbg !4366
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4367
  %call = call i8* @input_get_drvdata(%struct.input_dev* %0) #6, !dbg !4368
  %1 = bitcast i8* %call to %struct.iforce*, !dbg !4368
  store %struct.iforce* %1, %struct.iforce** %iforce, align 8, !dbg !4366
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4369, metadata !DIExpression()), !dbg !4370
  %2 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4371
  %evbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %2, i32 0, i32 5, !dbg !4373
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %evbit, i64 0, i64 0, !dbg !4371
  %call1 = call zeroext i1 @test_bit(i64 21, i64* %arraydecay) #6, !dbg !4374
  br i1 %call1, label %if.then, label %if.end26, !dbg !4375

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !4376
  br label %for.cond, !dbg !4379

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !4380
  %4 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4382
  %ff = getelementptr inbounds %struct.input_dev, %struct.input_dev* %4, i32 0, i32 20, !dbg !4383
  %5 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !4383
  %max_effects = getelementptr inbounds %struct.ff_device, %struct.ff_device* %5, i32 0, i32 9, !dbg !4384
  %6 = load i32, i32* %max_effects, align 8, !dbg !4384
  %cmp = icmp slt i32 %3, %6, !dbg !4385
  br i1 %cmp, label %for.body, label %for.end, !dbg !4386

for.body:                                         ; preds = %for.cond
  %7 = load %struct.iforce*, %struct.iforce** %iforce, align 8, !dbg !4387
  %core_effects = getelementptr inbounds %struct.iforce, %struct.iforce* %7, i32 0, i32 9, !dbg !4390
  %8 = load i32, i32* %i, align 4, !dbg !4391
  %idxprom = sext i32 %8 to i64, !dbg !4387
  %arrayidx = getelementptr [32 x %struct.iforce_core_effect], [32 x %struct.iforce_core_effect]* %core_effects, i64 0, i64 %idxprom, !dbg !4387
  %flags = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %arrayidx, i32 0, i32 2, !dbg !4392
  %arraydecay2 = getelementptr inbounds [1 x i64], [1 x i64]* %flags, i64 0, i64 0, !dbg !4387
  %call3 = call zeroext i1 @test_bit(i64 2, i64* %arraydecay2) #6, !dbg !4393
  br i1 %call3, label %if.then4, label %if.end, !dbg !4394

if.then4:                                         ; preds = %for.body
  %9 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4395
  %dev5 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %9, i32 0, i32 40, !dbg !4395
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev5, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.iforce_close, i64 0, i64 0)) #7, !dbg !4395
  br label %for.end, !dbg !4397

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !4398

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4, !dbg !4399
  %inc = add i32 %10, 1, !dbg !4399
  store i32 %inc, i32* %i, align 4, !dbg !4399
  br label %for.cond, !dbg !4400, !llvm.loop !4401

for.end:                                          ; preds = %if.then4, %for.cond
  %11 = load %struct.iforce*, %struct.iforce** %iforce, align 8, !dbg !4403
  %call6 = call i32 @iforce_send_packet(%struct.iforce* %11, i16 zeroext 16897, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0)) #6, !dbg !4404
  call void @llvm.dbg.declare(metadata i32* %__ret, metadata !4405, metadata !DIExpression()), !dbg !4407
  store i32 0, i32* %__ret, align 4, !dbg !4407
  br label %do.body, !dbg !4407

do.body:                                          ; preds = %for.end
  br label %do.body7, !dbg !4408

do.body7:                                         ; preds = %do.body
  br label %do.end, !dbg !4410

do.end:                                           ; preds = %do.body7
  br label %do.end8, !dbg !4408

do.end8:                                          ; preds = %do.end
  %12 = load %struct.iforce*, %struct.iforce** %iforce, align 8, !dbg !4412
  %xmit_flags = getelementptr inbounds %struct.iforce, %struct.iforce* %12, i32 0, i32 6, !dbg !4412
  %arraydecay9 = getelementptr inbounds [1 x i64], [1 x i64]* %xmit_flags, i64 0, i64 0, !dbg !4412
  %call10 = call zeroext i1 @test_bit(i64 0, i64* %arraydecay9) #6, !dbg !4412
  br i1 %call10, label %if.then11, label %if.end24, !dbg !4407

if.then11:                                        ; preds = %do.end8
  call void @llvm.dbg.declare(metadata %struct.wait_queue_entry* %__wq_entry, metadata !4414, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.declare(metadata i64* %__ret12, metadata !4428, metadata !DIExpression()), !dbg !4427
  store i64 0, i64* %__ret12, align 8, !dbg !4427
  call void @init_wait_entry(%struct.wait_queue_entry* %__wq_entry, i32 0) #6, !dbg !4427
  br label %for.cond13, !dbg !4427

for.cond13:                                       ; preds = %if.end21, %if.then11
  call void @llvm.dbg.declare(metadata i64* %__int, metadata !4429, metadata !DIExpression()), !dbg !4433
  %13 = load %struct.iforce*, %struct.iforce** %iforce, align 8, !dbg !4433
  %wait = getelementptr inbounds %struct.iforce, %struct.iforce* %13, i32 0, i32 7, !dbg !4433
  %call14 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* %wait, %struct.wait_queue_entry* %__wq_entry, i32 1) #6, !dbg !4433
  store i64 %call14, i64* %__int, align 8, !dbg !4433
  %14 = load %struct.iforce*, %struct.iforce** %iforce, align 8, !dbg !4434
  %xmit_flags15 = getelementptr inbounds %struct.iforce, %struct.iforce* %14, i32 0, i32 6, !dbg !4434
  %arraydecay16 = getelementptr inbounds [1 x i64], [1 x i64]* %xmit_flags15, i64 0, i64 0, !dbg !4434
  %call17 = call zeroext i1 @test_bit(i64 0, i64* %arraydecay16) #6, !dbg !4434
  br i1 %call17, label %if.end19, label %if.then18, !dbg !4433

if.then18:                                        ; preds = %for.cond13
  br label %for.end22, !dbg !4434

if.end19:                                         ; preds = %for.cond13
  %15 = load i64, i64* %__int, align 8, !dbg !4436
  %tobool = icmp ne i64 %15, 0, !dbg !4436
  br i1 %tobool, label %if.then20, label %if.end21, !dbg !4433

if.then20:                                        ; preds = %if.end19
  %16 = load i64, i64* %__int, align 8, !dbg !4438
  store i64 %16, i64* %__ret12, align 8, !dbg !4438
  br label %__out, !dbg !4438

if.end21:                                         ; preds = %if.end19
  call void @schedule() #6, !dbg !4433
  br label %for.cond13, !dbg !4440, !llvm.loop !4441

for.end22:                                        ; preds = %if.then18
  %17 = load %struct.iforce*, %struct.iforce** %iforce, align 8, !dbg !4427
  %wait23 = getelementptr inbounds %struct.iforce, %struct.iforce* %17, i32 0, i32 7, !dbg !4427
  call void @finish_wait(%struct.wait_queue_head* %wait23, %struct.wait_queue_entry* %__wq_entry) #6, !dbg !4427
  br label %__out, !dbg !4427

__out:                                            ; preds = %for.end22, %if.then20
  call void @llvm.dbg.label(metadata !4443), !dbg !4427
  %18 = load i64, i64* %__ret12, align 8, !dbg !4427
  store i64 %18, i64* %tmp, align 8, !dbg !4427
  %19 = load i64, i64* %tmp, align 8, !dbg !4427
  %conv = trunc i64 %19 to i32, !dbg !4412
  store i32 %conv, i32* %__ret, align 4, !dbg !4412
  br label %if.end24, !dbg !4412

if.end24:                                         ; preds = %__out, %do.end8
  %20 = load i32, i32* %__ret, align 4, !dbg !4407
  store i32 %20, i32* %tmp25, align 4, !dbg !4412
  %21 = load i32, i32* %tmp25, align 4, !dbg !4407
  br label %if.end26, !dbg !4444

if.end26:                                         ; preds = %if.end24, %entry
  %22 = load %struct.iforce*, %struct.iforce** %iforce, align 8, !dbg !4445
  %xport_ops = getelementptr inbounds %struct.iforce, %struct.iforce* %22, i32 0, i32 2, !dbg !4446
  %23 = load %struct.iforce_xport_ops*, %struct.iforce_xport_ops** %xport_ops, align 8, !dbg !4446
  %stop_io = getelementptr inbounds %struct.iforce_xport_ops, %struct.iforce_xport_ops* %23, i32 0, i32 3, !dbg !4447
  %24 = load void (%struct.iforce*)*, void (%struct.iforce*)** %stop_io, align 8, !dbg !4447
  %25 = load %struct.iforce*, %struct.iforce** %iforce, align 8, !dbg !4448
  call void %24(%struct.iforce* %25) #6, !dbg !4445
  ret void, !dbg !4449
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @iforce_get_id_packet(%struct.iforce* %iforce, i8 zeroext %id, i8* %response_data, i64* %response_len) #0 !dbg !4450 {
entry:
  %iforce.addr = alloca %struct.iforce*, align 8
  %id.addr = alloca i8, align 1
  %response_data.addr = alloca i8*, align 8
  %response_len.addr = alloca i64*, align 8
  store %struct.iforce* %iforce, %struct.iforce** %iforce.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.iforce** %iforce.addr, metadata !4451, metadata !DIExpression()), !dbg !4452
  store i8 %id, i8* %id.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %id.addr, metadata !4453, metadata !DIExpression()), !dbg !4454
  store i8* %response_data, i8** %response_data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %response_data.addr, metadata !4455, metadata !DIExpression()), !dbg !4456
  store i64* %response_len, i64** %response_len.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %response_len.addr, metadata !4457, metadata !DIExpression()), !dbg !4458
  %0 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4459
  %xport_ops = getelementptr inbounds %struct.iforce, %struct.iforce* %0, i32 0, i32 2, !dbg !4460
  %1 = load %struct.iforce_xport_ops*, %struct.iforce_xport_ops** %xport_ops, align 8, !dbg !4460
  %get_id = getelementptr inbounds %struct.iforce_xport_ops, %struct.iforce_xport_ops* %1, i32 0, i32 1, !dbg !4461
  %2 = load i32 (%struct.iforce*, i8, i8*, i64*)*, i32 (%struct.iforce*, i8, i8*, i64*)** %get_id, align 8, !dbg !4461
  %3 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4462
  %4 = load i8, i8* %id.addr, align 1, !dbg !4463
  %5 = load i8*, i8** %response_data.addr, align 8, !dbg !4464
  %6 = load i64*, i64** %response_len.addr, align 8, !dbg !4465
  %call = call i32 %2(%struct.iforce* %3, i8 zeroext %4, i8* %5, i64* %6) #6, !dbg !4459
  ret i32 %call, !dbg !4466
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #4

; Function Attrs: noredzone
declare dso_local void @iforce_dump_packet(%struct.iforce*, i8*, i16 zeroext, i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @iforce_set_autocenter(%struct.input_dev* %dev, i16 zeroext %magnitude) #0 !dbg !4467 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %magnitude.addr = alloca i16, align 2
  %iforce = alloca %struct.iforce*, align 8
  %data = alloca [3 x i8], align 1
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !4468, metadata !DIExpression()), !dbg !4469
  store i16 %magnitude, i16* %magnitude.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %magnitude.addr, metadata !4470, metadata !DIExpression()), !dbg !4471
  call void @llvm.dbg.declare(metadata %struct.iforce** %iforce, metadata !4472, metadata !DIExpression()), !dbg !4473
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4474
  %call = call i8* @input_get_drvdata(%struct.input_dev* %0) #6, !dbg !4475
  %1 = bitcast i8* %call to %struct.iforce*, !dbg !4475
  store %struct.iforce* %1, %struct.iforce** %iforce, align 8, !dbg !4473
  call void @llvm.dbg.declare(metadata [3 x i8]* %data, metadata !4476, metadata !DIExpression()), !dbg !4478
  %arrayidx = getelementptr [3 x i8], [3 x i8]* %data, i64 0, i64 0, !dbg !4479
  store i8 3, i8* %arrayidx, align 1, !dbg !4480
  %2 = load i16, i16* %magnitude.addr, align 2, !dbg !4481
  %conv = zext i16 %2 to i32, !dbg !4481
  %shr = ashr i32 %conv, 9, !dbg !4482
  %conv1 = trunc i32 %shr to i8, !dbg !4481
  %arrayidx2 = getelementptr [3 x i8], [3 x i8]* %data, i64 0, i64 1, !dbg !4483
  store i8 %conv1, i8* %arrayidx2, align 1, !dbg !4484
  %3 = load %struct.iforce*, %struct.iforce** %iforce, align 8, !dbg !4485
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %data, i64 0, i64 0, !dbg !4486
  %call3 = call i32 @iforce_send_packet(%struct.iforce* %3, i16 zeroext 16386, i8* %arraydecay) #6, !dbg !4487
  %arrayidx4 = getelementptr [3 x i8], [3 x i8]* %data, i64 0, i64 0, !dbg !4488
  store i8 4, i8* %arrayidx4, align 1, !dbg !4489
  %arrayidx5 = getelementptr [3 x i8], [3 x i8]* %data, i64 0, i64 1, !dbg !4490
  store i8 1, i8* %arrayidx5, align 1, !dbg !4491
  %4 = load %struct.iforce*, %struct.iforce** %iforce, align 8, !dbg !4492
  %arraydecay6 = getelementptr inbounds [3 x i8], [3 x i8]* %data, i64 0, i64 0, !dbg !4493
  %call7 = call i32 @iforce_send_packet(%struct.iforce* %4, i16 zeroext 16386, i8* %arraydecay6) #6, !dbg !4494
  ret void, !dbg !4495
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_bit(i64 %nr, i64* %addr) #0 !dbg !4496 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !4502, metadata !DIExpression()), !dbg !4505
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !4507, metadata !DIExpression()), !dbg !4508
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !4509, metadata !DIExpression()), !dbg !4517
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4519, metadata !DIExpression()), !dbg !4520
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !4521, metadata !DIExpression()), !dbg !4522
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !4523, metadata !DIExpression()), !dbg !4524
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !4525
  %1 = load i64, i64* %nr.addr, align 8, !dbg !4526
  %div = sdiv i64 %1, 64, !dbg !4526
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !4527
  %2 = bitcast i64* %add.ptr to i8*, !dbg !4525
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !4528
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4529
  %conv.i = trunc i64 %4 to i32, !dbg !4529
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #8, !dbg !4530
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !4531
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !4531
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #8, !dbg !4531
  %7 = load i64, i64* %nr.addr, align 8, !dbg !4532
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !4533
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !4534
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #9, !dbg !4536
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !4537

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !4538
  %12 = bitcast i64* %11 to i8*, !dbg !4538
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !4538
  %shr.i = ashr i64 %13, 3, !dbg !4538
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !4538
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !4540
  %and.i = and i64 %14, 7, !dbg !4540
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !4540
  %shl.i = shl i32 1, %sh_prom.i, !dbg !4540
  call void asm sideeffect "orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %shl.i, i8* %add.ptr.i) #9, !dbg !4541, !srcloc !4542
  br label %arch_set_bit.exit, !dbg !4543

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !4544
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !4546
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #9, !dbg !4547, !srcloc !4548
  br label %arch_set_bit.exit

arch_set_bit.exit:                                ; preds = %if.then.i, %if.else.i
  ret void, !dbg !4549
}

; Function Attrs: noredzone
declare dso_local void @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #3

; Function Attrs: noredzone
declare dso_local i32 @input_ff_create(%struct.input_dev*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @iforce_upload_effect(%struct.input_dev* %dev, %struct.ff_effect* %effect, %struct.ff_effect* %old) #0 !dbg !4550 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.input_dev*, align 8
  %effect.addr = alloca %struct.ff_effect*, align 8
  %old.addr = alloca %struct.ff_effect*, align 8
  %iforce = alloca %struct.iforce*, align 8
  %core_effect = alloca %struct.iforce_core_effect*, align 8
  %ret = alloca i32, align 4
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !4551, metadata !DIExpression()), !dbg !4552
  store %struct.ff_effect* %effect, %struct.ff_effect** %effect.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ff_effect** %effect.addr, metadata !4553, metadata !DIExpression()), !dbg !4554
  store %struct.ff_effect* %old, %struct.ff_effect** %old.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ff_effect** %old.addr, metadata !4555, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.declare(metadata %struct.iforce** %iforce, metadata !4557, metadata !DIExpression()), !dbg !4558
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4559
  %call = call i8* @input_get_drvdata(%struct.input_dev* %0) #6, !dbg !4560
  %1 = bitcast i8* %call to %struct.iforce*, !dbg !4560
  store %struct.iforce* %1, %struct.iforce** %iforce, align 8, !dbg !4558
  call void @llvm.dbg.declare(metadata %struct.iforce_core_effect** %core_effect, metadata !4561, metadata !DIExpression()), !dbg !4563
  %2 = load %struct.iforce*, %struct.iforce** %iforce, align 8, !dbg !4564
  %core_effects = getelementptr inbounds %struct.iforce, %struct.iforce* %2, i32 0, i32 9, !dbg !4565
  %3 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4566
  %id = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %3, i32 0, i32 1, !dbg !4567
  %4 = load i16, i16* %id, align 2, !dbg !4567
  %idxprom = sext i16 %4 to i64, !dbg !4564
  %arrayidx = getelementptr [32 x %struct.iforce_core_effect], [32 x %struct.iforce_core_effect]* %core_effects, i64 0, i64 %idxprom, !dbg !4564
  store %struct.iforce_core_effect* %arrayidx, %struct.iforce_core_effect** %core_effect, align 8, !dbg !4563
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4568, metadata !DIExpression()), !dbg !4569
  %5 = load %struct.iforce_core_effect*, %struct.iforce_core_effect** %core_effect, align 8, !dbg !4570
  %flags = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %5, i32 0, i32 2, !dbg !4572
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %flags, i64 0, i64 0, !dbg !4570
  %call1 = call zeroext i1 @__test_and_set_bit(i64 2, i64* %arraydecay) #6, !dbg !4573
  br i1 %call1, label %if.then, label %if.end6, !dbg !4574

if.then:                                          ; preds = %entry
  %6 = load %struct.iforce_core_effect*, %struct.iforce_core_effect** %core_effect, align 8, !dbg !4575
  %flags2 = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %6, i32 0, i32 2, !dbg !4578
  %arraydecay3 = getelementptr inbounds [1 x i64], [1 x i64]* %flags2, i64 0, i64 0, !dbg !4575
  %call4 = call zeroext i1 @test_bit(i64 5, i64* %arraydecay3) #6, !dbg !4579
  br i1 %call4, label %if.then5, label %if.end, !dbg !4580

if.then5:                                         ; preds = %if.then
  store i32 -11, i32* %retval, align 4, !dbg !4581
  br label %return, !dbg !4581

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !4582

if.end6:                                          ; preds = %if.end, %entry
  %7 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4583
  %type = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %7, i32 0, i32 0, !dbg !4584
  %8 = load i16, i16* %type, align 8, !dbg !4584
  %conv = zext i16 %8 to i32, !dbg !4583
  switch i32 %conv, label %sw.default [
    i32 81, label %sw.bb
    i32 82, label %sw.bb8
    i32 83, label %sw.bb10
    i32 85, label %sw.bb10
  ], !dbg !4585

sw.bb:                                            ; preds = %if.end6
  %9 = load %struct.iforce*, %struct.iforce** %iforce, align 8, !dbg !4586
  %10 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4588
  %11 = load %struct.ff_effect*, %struct.ff_effect** %old.addr, align 8, !dbg !4589
  %call7 = call i32 @iforce_upload_periodic(%struct.iforce* %9, %struct.ff_effect* %10, %struct.ff_effect* %11) #6, !dbg !4590
  store i32 %call7, i32* %ret, align 4, !dbg !4591
  br label %sw.epilog, !dbg !4592

sw.bb8:                                           ; preds = %if.end6
  %12 = load %struct.iforce*, %struct.iforce** %iforce, align 8, !dbg !4593
  %13 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4594
  %14 = load %struct.ff_effect*, %struct.ff_effect** %old.addr, align 8, !dbg !4595
  %call9 = call i32 @iforce_upload_constant(%struct.iforce* %12, %struct.ff_effect* %13, %struct.ff_effect* %14) #6, !dbg !4596
  store i32 %call9, i32* %ret, align 4, !dbg !4597
  br label %sw.epilog, !dbg !4598

sw.bb10:                                          ; preds = %if.end6, %if.end6
  %15 = load %struct.iforce*, %struct.iforce** %iforce, align 8, !dbg !4599
  %16 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4600
  %17 = load %struct.ff_effect*, %struct.ff_effect** %old.addr, align 8, !dbg !4601
  %call11 = call i32 @iforce_upload_condition(%struct.iforce* %15, %struct.ff_effect* %16, %struct.ff_effect* %17) #6, !dbg !4602
  store i32 %call11, i32* %ret, align 4, !dbg !4603
  br label %sw.epilog, !dbg !4604

sw.default:                                       ; preds = %if.end6
  store i32 -22, i32* %retval, align 4, !dbg !4605
  br label %return, !dbg !4605

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb8, %sw.bb
  %18 = load i32, i32* %ret, align 4, !dbg !4606
  %cmp = icmp eq i32 %18, 0, !dbg !4608
  br i1 %cmp, label %if.then13, label %if.end16, !dbg !4609

if.then13:                                        ; preds = %sw.epilog
  %19 = load %struct.iforce_core_effect*, %struct.iforce_core_effect** %core_effect, align 8, !dbg !4610
  %flags14 = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %19, i32 0, i32 2, !dbg !4612
  %arraydecay15 = getelementptr inbounds [1 x i64], [1 x i64]* %flags14, i64 0, i64 0, !dbg !4610
  call void @set_bit(i64 5, i64* %arraydecay15) #6, !dbg !4613
  br label %if.end16, !dbg !4614

if.end16:                                         ; preds = %if.then13, %sw.epilog
  %20 = load i32, i32* %ret, align 4, !dbg !4615
  store i32 %20, i32* %retval, align 4, !dbg !4616
  br label %return, !dbg !4616

return:                                           ; preds = %if.end16, %sw.default, %if.then5
  %21 = load i32, i32* %retval, align 4, !dbg !4617
  ret i32 %21, !dbg !4617
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @iforce_erase_effect(%struct.input_dev* %dev, i32 %effect_id) #0 !dbg !4618 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %effect_id.addr = alloca i32, align 4
  %iforce = alloca %struct.iforce*, align 8
  %core_effect = alloca %struct.iforce_core_effect*, align 8
  %err = alloca i32, align 4
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !4619, metadata !DIExpression()), !dbg !4620
  store i32 %effect_id, i32* %effect_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %effect_id.addr, metadata !4621, metadata !DIExpression()), !dbg !4622
  call void @llvm.dbg.declare(metadata %struct.iforce** %iforce, metadata !4623, metadata !DIExpression()), !dbg !4624
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4625
  %call = call i8* @input_get_drvdata(%struct.input_dev* %0) #6, !dbg !4626
  %1 = bitcast i8* %call to %struct.iforce*, !dbg !4626
  store %struct.iforce* %1, %struct.iforce** %iforce, align 8, !dbg !4624
  call void @llvm.dbg.declare(metadata %struct.iforce_core_effect** %core_effect, metadata !4627, metadata !DIExpression()), !dbg !4628
  %2 = load %struct.iforce*, %struct.iforce** %iforce, align 8, !dbg !4629
  %core_effects = getelementptr inbounds %struct.iforce, %struct.iforce* %2, i32 0, i32 9, !dbg !4630
  %3 = load i32, i32* %effect_id.addr, align 4, !dbg !4631
  %idxprom = sext i32 %3 to i64, !dbg !4629
  %arrayidx = getelementptr [32 x %struct.iforce_core_effect], [32 x %struct.iforce_core_effect]* %core_effects, i64 0, i64 %idxprom, !dbg !4629
  store %struct.iforce_core_effect* %arrayidx, %struct.iforce_core_effect** %core_effect, align 8, !dbg !4628
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4632, metadata !DIExpression()), !dbg !4633
  store i32 0, i32* %err, align 4, !dbg !4633
  %4 = load %struct.iforce_core_effect*, %struct.iforce_core_effect** %core_effect, align 8, !dbg !4634
  %flags = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %4, i32 0, i32 2, !dbg !4636
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %flags, i64 0, i64 0, !dbg !4634
  %call1 = call zeroext i1 @test_bit(i64 0, i64* %arraydecay) #6, !dbg !4637
  br i1 %call1, label %if.then, label %if.end, !dbg !4638

if.then:                                          ; preds = %entry
  %5 = load %struct.iforce_core_effect*, %struct.iforce_core_effect** %core_effect, align 8, !dbg !4639
  %mod1_chunk = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %5, i32 0, i32 0, !dbg !4640
  %call2 = call i32 @release_resource(%struct.resource* %mod1_chunk) #6, !dbg !4641
  store i32 %call2, i32* %err, align 4, !dbg !4642
  br label %if.end, !dbg !4643

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %err, align 4, !dbg !4644
  %tobool = icmp ne i32 %6, 0, !dbg !4644
  br i1 %tobool, label %if.end8, label %land.lhs.true, !dbg !4646

land.lhs.true:                                    ; preds = %if.end
  %7 = load %struct.iforce_core_effect*, %struct.iforce_core_effect** %core_effect, align 8, !dbg !4647
  %flags3 = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %7, i32 0, i32 2, !dbg !4648
  %arraydecay4 = getelementptr inbounds [1 x i64], [1 x i64]* %flags3, i64 0, i64 0, !dbg !4647
  %call5 = call zeroext i1 @test_bit(i64 1, i64* %arraydecay4) #6, !dbg !4649
  br i1 %call5, label %if.then6, label %if.end8, !dbg !4650

if.then6:                                         ; preds = %land.lhs.true
  %8 = load %struct.iforce_core_effect*, %struct.iforce_core_effect** %core_effect, align 8, !dbg !4651
  %mod2_chunk = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %8, i32 0, i32 1, !dbg !4652
  %call7 = call i32 @release_resource(%struct.resource* %mod2_chunk) #6, !dbg !4653
  store i32 %call7, i32* %err, align 4, !dbg !4654
  br label %if.end8, !dbg !4655

if.end8:                                          ; preds = %if.then6, %land.lhs.true, %if.end
  %9 = load %struct.iforce_core_effect*, %struct.iforce_core_effect** %core_effect, align 8, !dbg !4656
  %flags9 = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %9, i32 0, i32 2, !dbg !4657
  %arrayidx10 = getelementptr [1 x i64], [1 x i64]* %flags9, i64 0, i64 0, !dbg !4656
  store i64 0, i64* %arrayidx10, align 8, !dbg !4658
  %10 = load i32, i32* %err, align 4, !dbg !4659
  ret i32 %10, !dbg !4660
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @iforce_set_gain(%struct.input_dev* %dev, i16 zeroext %gain) #0 !dbg !4661 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %gain.addr = alloca i16, align 2
  %iforce = alloca %struct.iforce*, align 8
  %data = alloca [3 x i8], align 1
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !4662, metadata !DIExpression()), !dbg !4663
  store i16 %gain, i16* %gain.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %gain.addr, metadata !4664, metadata !DIExpression()), !dbg !4665
  call void @llvm.dbg.declare(metadata %struct.iforce** %iforce, metadata !4666, metadata !DIExpression()), !dbg !4667
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4668
  %call = call i8* @input_get_drvdata(%struct.input_dev* %0) #6, !dbg !4669
  %1 = bitcast i8* %call to %struct.iforce*, !dbg !4669
  store %struct.iforce* %1, %struct.iforce** %iforce, align 8, !dbg !4667
  call void @llvm.dbg.declare(metadata [3 x i8]* %data, metadata !4670, metadata !DIExpression()), !dbg !4671
  %2 = load i16, i16* %gain.addr, align 2, !dbg !4672
  %conv = zext i16 %2 to i32, !dbg !4672
  %shr = ashr i32 %conv, 9, !dbg !4673
  %conv1 = trunc i32 %shr to i8, !dbg !4672
  %arrayidx = getelementptr [3 x i8], [3 x i8]* %data, i64 0, i64 0, !dbg !4674
  store i8 %conv1, i8* %arrayidx, align 1, !dbg !4675
  %3 = load %struct.iforce*, %struct.iforce** %iforce, align 8, !dbg !4676
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %data, i64 0, i64 0, !dbg !4677
  %call2 = call i32 @iforce_send_packet(%struct.iforce* %3, i16 zeroext 17153, i8* %arraydecay) #6, !dbg !4678
  ret void, !dbg !4679
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @iforce_playback(%struct.input_dev* %dev, i32 %effect_id, i32 %value) #0 !dbg !4680 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %effect_id.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %iforce = alloca %struct.iforce*, align 8
  %core_effect = alloca %struct.iforce_core_effect*, align 8
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !4681, metadata !DIExpression()), !dbg !4682
  store i32 %effect_id, i32* %effect_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %effect_id.addr, metadata !4683, metadata !DIExpression()), !dbg !4684
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !4685, metadata !DIExpression()), !dbg !4686
  call void @llvm.dbg.declare(metadata %struct.iforce** %iforce, metadata !4687, metadata !DIExpression()), !dbg !4688
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4689
  %call = call i8* @input_get_drvdata(%struct.input_dev* %0) #6, !dbg !4690
  %1 = bitcast i8* %call to %struct.iforce*, !dbg !4690
  store %struct.iforce* %1, %struct.iforce** %iforce, align 8, !dbg !4688
  call void @llvm.dbg.declare(metadata %struct.iforce_core_effect** %core_effect, metadata !4691, metadata !DIExpression()), !dbg !4692
  %2 = load %struct.iforce*, %struct.iforce** %iforce, align 8, !dbg !4693
  %core_effects = getelementptr inbounds %struct.iforce, %struct.iforce* %2, i32 0, i32 9, !dbg !4694
  %3 = load i32, i32* %effect_id.addr, align 4, !dbg !4695
  %idxprom = sext i32 %3 to i64, !dbg !4693
  %arrayidx = getelementptr [32 x %struct.iforce_core_effect], [32 x %struct.iforce_core_effect]* %core_effects, i64 0, i64 %idxprom, !dbg !4693
  store %struct.iforce_core_effect* %arrayidx, %struct.iforce_core_effect** %core_effect, align 8, !dbg !4692
  %4 = load i32, i32* %value.addr, align 4, !dbg !4696
  %cmp = icmp sgt i32 %4, 0, !dbg !4698
  br i1 %cmp, label %if.then, label %if.else, !dbg !4699

if.then:                                          ; preds = %entry
  %5 = load %struct.iforce_core_effect*, %struct.iforce_core_effect** %core_effect, align 8, !dbg !4700
  %flags = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %5, i32 0, i32 2, !dbg !4701
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %flags, i64 0, i64 0, !dbg !4700
  call void @set_bit(i64 4, i64* %arraydecay) #6, !dbg !4702
  br label %if.end, !dbg !4702

if.else:                                          ; preds = %entry
  %6 = load %struct.iforce_core_effect*, %struct.iforce_core_effect** %core_effect, align 8, !dbg !4703
  %flags1 = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %6, i32 0, i32 2, !dbg !4704
  %arraydecay2 = getelementptr inbounds [1 x i64], [1 x i64]* %flags1, i64 0, i64 0, !dbg !4703
  call void @clear_bit(i64 4, i64* %arraydecay2) #6, !dbg !4705
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load %struct.iforce*, %struct.iforce** %iforce, align 8, !dbg !4706
  %8 = load i32, i32* %effect_id.addr, align 4, !dbg !4707
  %conv = trunc i32 %8 to i16, !dbg !4707
  %9 = load i32, i32* %value.addr, align 4, !dbg !4708
  %call3 = call i32 @iforce_control_playback(%struct.iforce* %7, i16 zeroext %conv, i32 %9) #6, !dbg !4709
  ret i32 0, !dbg !4710
}

; Function Attrs: noredzone
declare dso_local i32 @input_register_device(%struct.input_dev*) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @input_free_device(%struct.input_dev*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #0 !dbg !4711 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4714, metadata !DIExpression()), !dbg !4715
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4716, metadata !DIExpression()), !dbg !4717
  %0 = load i8*, i8** %data.addr, align 8, !dbg !4718
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4719
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !4720
  store i8* %0, i8** %driver_data, align 8, !dbg !4721
  ret void, !dbg !4722
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @input_get_drvdata(%struct.input_dev* %dev) #0 !dbg !4723 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !4726, metadata !DIExpression()), !dbg !4727
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4728
  %dev1 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i32 0, i32 40, !dbg !4729
  %call = call i8* @dev_get_drvdata(%struct.device* %dev1) #6, !dbg !4730
  ret i8* %call, !dbg !4731
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #0 !dbg !4732 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !4738, metadata !DIExpression()), !dbg !4740
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !4742, metadata !DIExpression()), !dbg !4743
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !4744, metadata !DIExpression()), !dbg !4745
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !4746, metadata !DIExpression()), !dbg !4748
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !4750, metadata !DIExpression()), !dbg !4751
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !4752, metadata !DIExpression()), !dbg !4754
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4756, metadata !DIExpression()), !dbg !4757
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !4758, metadata !DIExpression()), !dbg !4759
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !4760, metadata !DIExpression()), !dbg !4761
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !4762
  %1 = load i64, i64* %nr.addr, align 8, !dbg !4763
  %div = sdiv i64 %1, 64, !dbg !4763
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !4764
  %2 = bitcast i64* %add.ptr to i8*, !dbg !4762
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !4765
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4766
  %conv.i = trunc i64 %4 to i32, !dbg !4766
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #8, !dbg !4767
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !4768
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !4768
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #8, !dbg !4768
  %7 = load i64, i64* %nr.addr, align 8, !dbg !4769
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !4769
  br i1 %8, label %cond.true, label %cond.false, !dbg !4769

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !4769
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !4769
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !4770
  %and.i = and i64 %11, 63, !dbg !4771
  %shl.i = shl i64 1, %and.i, !dbg !4772
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !4773
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !4774
  %shr.i = ashr i64 %13, 6, !dbg !4775
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !4773
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !4773
  %and1.i = and i64 %shl.i, %14, !dbg !4776
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !4777
  %conv = zext i1 %cmp.i to i32, !dbg !4769
  br label %cond.end, !dbg !4769

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !4769
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !4769
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !4778
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !4779
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #9, !dbg !4780, !srcloc !4781
  store i8 %19, i8* %oldbit.i, align 1, !dbg !4780
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !4782
  %tobool.i = trunc i8 %20 to i1, !dbg !4782
  %conv2 = zext i1 %tobool.i to i32, !dbg !4769
  br label %cond.end, !dbg !4769

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !4769
  %tobool = icmp ne i32 %cond, 0, !dbg !4769
  ret i1 %tobool, !dbg !4783
}

; Function Attrs: noredzone
declare dso_local i32 @iforce_send_packet(%struct.iforce*, i16 zeroext, i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #0 !dbg !4784 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4789, metadata !DIExpression()), !dbg !4790
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4791
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !4792
  %1 = load i8*, i8** %driver_data, align 8, !dbg !4792
  ret i8* %1, !dbg !4793
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !4794 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !4798, metadata !DIExpression()), !dbg !4799
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !4800, metadata !DIExpression()), !dbg !4801
  ret i1 true, !dbg !4802
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !4803 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4807, metadata !DIExpression()), !dbg !4808
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4809, metadata !DIExpression()), !dbg !4810
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !4811, metadata !DIExpression()), !dbg !4812
  ret void, !dbg !4813
}

; Function Attrs: noredzone
declare dso_local void @init_wait_entry(%struct.wait_queue_entry*, i32) #3

; Function Attrs: noredzone
declare dso_local i64 @prepare_to_wait_event(%struct.wait_queue_head*, %struct.wait_queue_entry*, i32) #3

; Function Attrs: noredzone
declare dso_local void @schedule() #3

; Function Attrs: noredzone
declare dso_local void @finish_wait(%struct.wait_queue_head*, %struct.wait_queue_entry*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !4814 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !4815, metadata !DIExpression()), !dbg !4816
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !4817, metadata !DIExpression()), !dbg !4818
  ret i1 true, !dbg !4819
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__test_and_set_bit(i64 %nr, i64* %addr) #0 !dbg !4820 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !4823, metadata !DIExpression()), !dbg !4825
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !4827, metadata !DIExpression()), !dbg !4828
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !4829, metadata !DIExpression()), !dbg !4830
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !4831, metadata !DIExpression()), !dbg !4832
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !4833, metadata !DIExpression()), !dbg !4834
  %0 = load i64, i64* %nr.addr, align 8, !dbg !4835
  %1 = load i64*, i64** %addr.addr, align 8, !dbg !4836
  call void @__instrument_read_write_bitop(i64 %0, i64* %1) #6, !dbg !4837
  %2 = load i64, i64* %nr.addr, align 8, !dbg !4838
  %3 = load i64*, i64** %addr.addr, align 8, !dbg !4839
  store i64 %2, i64* %nr.addr.i, align 8
  store i64* %3, i64** %addr.addr.i, align 8
  %4 = load i64*, i64** %addr.addr.i, align 8, !dbg !4840
  %5 = load i64, i64* %nr.addr.i, align 8, !dbg !4841
  %6 = call i8 asm " btsq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %4, i64 %5) #9, !dbg !4842, !srcloc !4843
  store i8 %6, i8* %oldbit.i, align 1, !dbg !4842
  %7 = load i8, i8* %oldbit.i, align 1, !dbg !4844
  %tobool.i = trunc i8 %7 to i1, !dbg !4844
  ret i1 %tobool.i, !dbg !4845
}

; Function Attrs: noredzone
declare dso_local i32 @iforce_upload_periodic(%struct.iforce*, %struct.ff_effect*, %struct.ff_effect*) #3

; Function Attrs: noredzone
declare dso_local i32 @iforce_upload_constant(%struct.iforce*, %struct.ff_effect*, %struct.ff_effect*) #3

; Function Attrs: noredzone
declare dso_local i32 @iforce_upload_condition(%struct.iforce*, %struct.ff_effect*, %struct.ff_effect*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__instrument_read_write_bitop(i64 %nr, i64* %addr) #0 !dbg !4846 {
entry:
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !4847, metadata !DIExpression()), !dbg !4849
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4853, metadata !DIExpression()), !dbg !4854
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !4855, metadata !DIExpression()), !dbg !4856
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !4857, metadata !DIExpression()), !dbg !4858
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !4859
  %1 = load i64, i64* %nr.addr, align 8, !dbg !4860
  %div = sdiv i64 %1, 64, !dbg !4860
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !4861
  %2 = bitcast i64* %add.ptr to i8*, !dbg !4859
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !4862
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4863
  %conv.i = trunc i64 %4 to i32, !dbg !4863
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #8, !dbg !4864
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !4865
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !4865
  call void @kcsan_check_access(i8* %5, i64 %6, i32 3) #8, !dbg !4865
  ret void, !dbg !4866
}

; Function Attrs: noredzone
declare dso_local i32 @release_resource(%struct.resource*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clear_bit(i64 %nr, i64* %addr) #0 !dbg !4867 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !4868, metadata !DIExpression()), !dbg !4870
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !4872, metadata !DIExpression()), !dbg !4873
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !4509, metadata !DIExpression()), !dbg !4874
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4519, metadata !DIExpression()), !dbg !4876
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !4877, metadata !DIExpression()), !dbg !4878
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !4879, metadata !DIExpression()), !dbg !4880
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !4881
  %1 = load i64, i64* %nr.addr, align 8, !dbg !4882
  %div = sdiv i64 %1, 64, !dbg !4882
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !4883
  %2 = bitcast i64* %add.ptr to i8*, !dbg !4881
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !4884
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4885
  %conv.i = trunc i64 %4 to i32, !dbg !4885
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #8, !dbg !4886
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !4887
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !4887
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #8, !dbg !4887
  %7 = load i64, i64* %nr.addr, align 8, !dbg !4888
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !4889
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !4890
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #9, !dbg !4892
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !4893

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !4894
  %12 = bitcast i64* %11 to i8*, !dbg !4894
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !4894
  %shr.i = ashr i64 %13, 3, !dbg !4894
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !4894
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !4896
  %and.i = and i64 %14, 7, !dbg !4896
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !4896
  %shl.i = shl i32 1, %sh_prom.i, !dbg !4896
  %neg.i = xor i32 %shl.i, -1, !dbg !4897
  call void asm sideeffect "andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %neg.i, i8* %add.ptr.i) #9, !dbg !4898, !srcloc !4899
  br label %arch_clear_bit.exit, !dbg !4900

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !4901
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !4903
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #9, !dbg !4904, !srcloc !4905
  br label %arch_clear_bit.exit

arch_clear_bit.exit:                              ; preds = %if.then.i, %if.else.i
  ret void, !dbg !4906
}

; Function Attrs: noredzone
declare dso_local i32 @iforce_control_playback(%struct.iforce*, i16 zeroext, i32) #3

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { noredzone }
attributes #7 = { cold noredzone }
attributes #8 = { noredzone nounwind }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3879, !3880, !3881, !3882}
!llvm.ident = !{!3883}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author204", scope: !2, file: !3, line: 12, type: !3876, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !85, globals: !101, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/input/joystick/iforce/iforce-main.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !18, !24, !30, !39, !47, !53, !59, !66, !74, !80}
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
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !81, line: 10, baseType: !7, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!82 = !{!83, !84}
!83 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!84 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!85 = !{!86, !88, !91, !94, !97, !98}
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !90, line: 29, baseType: !91)
!90 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !92, line: 24, baseType: !93)
!92 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!93 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !96)
!96 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !100)
!100 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!101 = !{!0, !102, !108, !113, !118, !3841, !3843, !3848, !3851, !3854, !3857, !3862, !3864, !3869, !3871}
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description205", scope: !2, file: !3, line: 13, type: !104, isLocal: true, isDefinition: true, align: 8)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 480, elements: !106)
!105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!106 = !{!107}
!107 = !DISubrange(count: 60)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file206", scope: !2, file: !3, line: 14, type: !110, isLocal: true, isDefinition: true, align: 8)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 392, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 49)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license207", scope: !2, file: !3, line: 14, type: !115, isLocal: true, isDefinition: true, align: 8)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 152, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 19)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(name: "__key", scope: !120, file: !3, line: 225, type: !559, isLocal: true, isDefinition: true)
!120 = distinct !DISubprogram(name: "iforce_init_device", scope: !3, file: !3, line: 210, type: !121, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !162)
!121 = !DISubroutineType(types: !122)
!122 = !{!123, !124, !774, !3493}
!123 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !60, line: 461, size: 5568, elements: !126)
!126 = !{!127, !3134, !3135, !3138, !3139, !3190, !3281, !3282, !3283, !3284, !3285, !3294, !3399, !3412, !3415, !3416, !3420, !3422, !3423, !3424, !3428, !3434, !3435, !3438, !3442, !3445, !3446, !3447, !3448, !3449, !3481, !3482, !3483, !3486, !3489, !3490, !3491, !3492}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !125, file: !60, line: 462, baseType: !128, size: 512)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !129, line: 64, size: 512, elements: !130)
!129 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!130 = !{!131, !133, !140, !142, !202, !2985, !3124, !3129, !3130, !3131, !3132, !3133}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !128, file: !129, line: 65, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !128, file: !129, line: 66, baseType: !134, size: 128, offset: 64)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !135, line: 178, size: 128, elements: !136)
!135 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!136 = !{!137, !139}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !134, file: !135, line: 179, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !134, file: !135, line: 179, baseType: !138, size: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !128, file: !129, line: 67, baseType: !141, size: 64, offset: 192)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !128, file: !129, line: 68, baseType: !143, size: 64, offset: 256)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !129, line: 192, size: 704, elements: !145)
!145 = !{!146, !147, !163, !164}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !144, file: !129, line: 193, baseType: !134, size: 128)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !144, file: !129, line: 194, baseType: !148, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !149, line: 83, baseType: !150)
!149 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !149, line: 71, elements: !151)
!151 = !{!152}
!152 = !DIDerivedType(tag: DW_TAG_member, scope: !150, file: !149, line: 72, baseType: !153)
!153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !150, file: !149, line: 72, elements: !154)
!154 = !{!155}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !153, file: !149, line: 73, baseType: !156)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !149, line: 20, elements: !157)
!157 = !{!158}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !156, file: !149, line: 21, baseType: !159)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !160, line: 25, baseType: !161)
!160 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !160, line: 25, elements: !162)
!162 = !{}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !144, file: !129, line: 195, baseType: !128, size: 512, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !144, file: !129, line: 196, baseType: !165, size: 64, offset: 640)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !129, line: 156, size: 192, elements: !168)
!168 = !{!169, !174, !179}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !167, file: !129, line: 157, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DISubroutineType(types: !173)
!173 = !{!123, !143, !141}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !167, file: !129, line: 158, baseType: !175, size: 64, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DISubroutineType(types: !178)
!178 = !{!132, !143, !141}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !167, file: !129, line: 159, baseType: !180, size: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DISubroutineType(types: !183)
!183 = !{!123, !143, !141, !184}
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !129, line: 148, size: 20736, elements: !186)
!186 = !{!187, !192, !196, !197, !201}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !185, file: !129, line: 149, baseType: !188, size: 192)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 192, elements: !190)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!190 = !{!191}
!191 = !DISubrange(count: 3)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !185, file: !129, line: 150, baseType: !193, size: 4096, offset: 192)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 4096, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !185, file: !129, line: 151, baseType: !123, size: 32, offset: 4288)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !185, file: !129, line: 152, baseType: !198, size: 16384, offset: 4320)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 16384, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 2048)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !185, file: !129, line: 153, baseType: !123, size: 32, offset: 20704)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !128, file: !129, line: 69, baseType: !203, size: 64, offset: 320)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !129, line: 138, size: 448, elements: !205)
!205 = !{!206, !210, !237, !239, !2945, !2975, !2979}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !204, file: !129, line: 139, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{null, !141}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !204, file: !129, line: 140, baseType: !211, size: 64, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !213)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !214, line: 230, size: 128, elements: !215)
!214 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!215 = !{!216, !230}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !213, file: !214, line: 231, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!220, !141, !224, !189}
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !135, line: 60, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !222, line: 73, baseType: !223)
!222 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !222, line: 15, baseType: !100)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !214, line: 30, size: 128, elements: !226)
!226 = !{!227, !228}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !225, file: !214, line: 31, baseType: !132, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !225, file: !214, line: 32, baseType: !229, size: 16, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !135, line: 19, baseType: !93)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !213, file: !214, line: 232, baseType: !231, size: 64, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{!220, !141, !224, !132, !234}
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !135, line: 55, baseType: !235)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !222, line: 72, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !222, line: 16, baseType: !87)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !204, file: !129, line: 141, baseType: !238, size: 64, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !204, file: !129, line: 142, baseType: !240, size: 64, offset: 192)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !243)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !214, line: 84, size: 320, elements: !244)
!244 = !{!245, !246, !250, !2942, !2943}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !243, file: !214, line: 85, baseType: !132, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !243, file: !214, line: 86, baseType: !247, size: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{!229, !141, !224, !123}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !243, file: !214, line: 88, baseType: !251, size: 64, offset: 128)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DISubroutineType(types: !253)
!253 = !{!229, !141, !254, !123}
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !214, line: 168, size: 448, elements: !256)
!256 = !{!257, !258, !259, !260, !2937, !2938}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !255, file: !214, line: 169, baseType: !225, size: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !255, file: !214, line: 170, baseType: !234, size: 64, offset: 128)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !255, file: !214, line: 171, baseType: !97, size: 64, offset: 192)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !255, file: !214, line: 172, baseType: !261, size: 64, offset: 256)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{!220, !264, !141, !254, !189, !442, !234}
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !31, line: 916, size: 1856, align: 32, elements: !266)
!266 = !{!267, !285, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2920, !2921, !2930, !2931, !2932, !2933, !2934, !2935, !2936}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !265, file: !31, line: 920, baseType: !268, size: 128)
!268 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !265, file: !31, line: 917, size: 128, elements: !269)
!269 = !{!270, !276}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !268, file: !31, line: 918, baseType: !271, size: 64)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !272, line: 58, size: 64, elements: !273)
!272 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!273 = !{!274}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !271, file: !272, line: 59, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !268, file: !31, line: 919, baseType: !277, size: 128, align: 64)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !135, line: 216, size: 128, align: 64, elements: !278)
!278 = !{!279, !281}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !277, file: !135, line: 217, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !277, file: !135, line: 218, baseType: !282, size: 64, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{null, !280}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !265, file: !31, line: 921, baseType: !286, size: 128, offset: 128)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !287, line: 8, size: 128, elements: !288)
!287 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!288 = !{!289, !293}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !286, file: !287, line: 9, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !292, line: 18, flags: DIFlagFwdDecl)
!292 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!293 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !286, file: !287, line: 10, baseType: !294, size: 64, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !292, line: 89, size: 1536, elements: !296)
!296 = !{!297, !298, !308, !316, !317, !339, !2870, !2872, !2884, !2885, !2886, !2887, !2888, !2894, !2895, !2896}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !295, file: !292, line: 91, baseType: !7, size: 32)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !295, file: !292, line: 92, baseType: !299, size: 32, offset: 32)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !300, line: 277, baseType: !301)
!300 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !300, line: 277, size: 32, elements: !302)
!302 = !{!303}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !301, file: !300, line: 277, baseType: !304, size: 32)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !300, line: 70, baseType: !305)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !300, line: 65, size: 32, elements: !306)
!306 = !{!307}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !305, file: !300, line: 66, baseType: !7, size: 32)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !295, file: !292, line: 93, baseType: !309, size: 128, offset: 64)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !310, line: 38, size: 128, elements: !311)
!310 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!311 = !{!312, !314}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !309, file: !310, line: 39, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !309, file: !310, line: 39, baseType: !315, size: 64, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !295, file: !292, line: 94, baseType: !294, size: 64, offset: 192)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !295, file: !292, line: 95, baseType: !318, size: 128, offset: 256)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !292, line: 47, size: 128, elements: !319)
!319 = !{!320, !335}
!320 = !DIDerivedType(tag: DW_TAG_member, scope: !318, file: !292, line: 48, baseType: !321, size: 64)
!321 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !318, file: !292, line: 48, size: 64, elements: !322)
!322 = !{!323, !331}
!323 = !DIDerivedType(tag: DW_TAG_member, scope: !321, file: !292, line: 49, baseType: !324, size: 64)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !321, file: !292, line: 49, size: 64, elements: !325)
!325 = !{!326, !330}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !324, file: !292, line: 50, baseType: !327, size: 32)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !328, line: 21, baseType: !329)
!328 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !92, line: 27, baseType: !7)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !324, file: !292, line: 50, baseType: !327, size: 32, offset: 32)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !321, file: !292, line: 52, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !328, line: 23, baseType: !333)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !92, line: 31, baseType: !334)
!334 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !318, file: !292, line: 54, baseType: !336, size: 64, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!338 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !295, file: !292, line: 96, baseType: !340, size: 64, offset: 384)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !31, line: 610, size: 4224, elements: !342)
!342 = !{!343, !344, !345, !353, !360, !361, !509, !2582, !2583, !2584, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2846, !2854, !2855, !2856, !2866, !2867, !2868, !2869}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !341, file: !31, line: 611, baseType: !229, size: 16)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !341, file: !31, line: 612, baseType: !93, size: 16, offset: 16)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !341, file: !31, line: 613, baseType: !346, size: 32, offset: 32)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !347, line: 23, baseType: !348)
!347 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !347, line: 21, size: 32, elements: !349)
!349 = !{!350}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !348, file: !347, line: 22, baseType: !351, size: 32)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !135, line: 32, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !222, line: 49, baseType: !7)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !341, file: !31, line: 614, baseType: !354, size: 32, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !347, line: 28, baseType: !355)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !347, line: 26, size: 32, elements: !356)
!356 = !{!357}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !355, file: !347, line: 27, baseType: !358, size: 32)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !135, line: 33, baseType: !359)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !222, line: 50, baseType: !7)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !341, file: !31, line: 615, baseType: !7, size: 32, offset: 96)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !341, file: !31, line: 622, baseType: !362, size: 64, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !364)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !31, line: 1864, size: 1536, align: 512, elements: !365)
!365 = !{!366, !370, !383, !387, !393, !397, !403, !407, !411, !415, !419, !420, !426, !430, !456, !485, !489, !495, !500, !504, !505}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !364, file: !31, line: 1865, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DISubroutineType(types: !369)
!369 = !{!294, !340, !294, !7}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !364, file: !31, line: 1866, baseType: !371, size: 64, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DISubroutineType(types: !373)
!373 = !{!132, !294, !340, !374}
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !376, line: 10, size: 128, elements: !377)
!376 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!377 = !{!378, !382}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !375, file: !376, line: 11, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DISubroutineType(types: !381)
!381 = !{null, !97}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !375, file: !376, line: 12, baseType: !97, size: 64, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !364, file: !31, line: 1867, baseType: !384, size: 64, offset: 128)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{!123, !340, !123}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !364, file: !31, line: 1868, baseType: !388, size: 64, offset: 192)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DISubroutineType(types: !390)
!390 = !{!391, !340, !123}
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !31, line: 581, flags: DIFlagFwdDecl)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !364, file: !31, line: 1870, baseType: !394, size: 64, offset: 256)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{!123, !294, !189, !123}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !364, file: !31, line: 1872, baseType: !398, size: 64, offset: 320)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DISubroutineType(types: !400)
!400 = !{!123, !340, !294, !229, !401}
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !135, line: 30, baseType: !402)
!402 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !364, file: !31, line: 1873, baseType: !404, size: 64, offset: 384)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DISubroutineType(types: !406)
!406 = !{!123, !294, !340, !294}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !364, file: !31, line: 1874, baseType: !408, size: 64, offset: 448)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DISubroutineType(types: !410)
!410 = !{!123, !340, !294}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !364, file: !31, line: 1875, baseType: !412, size: 64, offset: 512)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{!123, !340, !294, !132}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !364, file: !31, line: 1876, baseType: !416, size: 64, offset: 576)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{!123, !340, !294, !229}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !364, file: !31, line: 1877, baseType: !408, size: 64, offset: 640)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !364, file: !31, line: 1878, baseType: !421, size: 64, offset: 704)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DISubroutineType(types: !423)
!423 = !{!123, !340, !294, !229, !424}
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !135, line: 16, baseType: !425)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !135, line: 13, baseType: !327)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !364, file: !31, line: 1879, baseType: !427, size: 64, offset: 768)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{!123, !340, !294, !340, !294, !7}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !364, file: !31, line: 1881, baseType: !431, size: 64, offset: 832)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{!123, !294, !434}
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !31, line: 219, size: 640, elements: !436)
!436 = !{!437, !438, !439, !440, !441, !445, !453, !454, !455}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !435, file: !31, line: 220, baseType: !7, size: 32)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !435, file: !31, line: 221, baseType: !229, size: 16, offset: 32)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !435, file: !31, line: 222, baseType: !346, size: 32, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !435, file: !31, line: 223, baseType: !354, size: 32, offset: 96)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !435, file: !31, line: 224, baseType: !442, size: 64, offset: 128)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !135, line: 46, baseType: !443)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !222, line: 88, baseType: !444)
!444 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !435, file: !31, line: 225, baseType: !446, size: 128, offset: 192)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !447, line: 13, size: 128, elements: !448)
!447 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!448 = !{!449, !452}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !446, file: !447, line: 14, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !447, line: 8, baseType: !451)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !92, line: 30, baseType: !444)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !446, file: !447, line: 15, baseType: !100, size: 64, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !435, file: !31, line: 226, baseType: !446, size: 128, offset: 320)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !435, file: !31, line: 227, baseType: !446, size: 128, offset: 448)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !435, file: !31, line: 234, baseType: !264, size: 64, offset: 576)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !364, file: !31, line: 1882, baseType: !457, size: 64, offset: 896)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{!123, !460, !462, !327, !7}
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !286)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !464, line: 22, size: 1152, elements: !465)
!464 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!465 = !{!466, !467, !468, !469, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !463, file: !464, line: 23, baseType: !327, size: 32)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !463, file: !464, line: 24, baseType: !229, size: 16, offset: 32)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !463, file: !464, line: 25, baseType: !7, size: 32, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !463, file: !464, line: 26, baseType: !470, size: 32, offset: 96)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !135, line: 104, baseType: !327)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !463, file: !464, line: 27, baseType: !332, size: 64, offset: 128)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !463, file: !464, line: 28, baseType: !332, size: 64, offset: 192)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !463, file: !464, line: 37, baseType: !332, size: 64, offset: 256)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !463, file: !464, line: 38, baseType: !424, size: 32, offset: 320)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !463, file: !464, line: 39, baseType: !424, size: 32, offset: 352)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !463, file: !464, line: 40, baseType: !346, size: 32, offset: 384)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !463, file: !464, line: 41, baseType: !354, size: 32, offset: 416)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !463, file: !464, line: 42, baseType: !442, size: 64, offset: 448)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !463, file: !464, line: 43, baseType: !446, size: 128, offset: 512)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !463, file: !464, line: 44, baseType: !446, size: 128, offset: 640)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !463, file: !464, line: 45, baseType: !446, size: 128, offset: 768)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !463, file: !464, line: 46, baseType: !446, size: 128, offset: 896)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !463, file: !464, line: 47, baseType: !332, size: 64, offset: 1024)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !463, file: !464, line: 48, baseType: !332, size: 64, offset: 1088)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !364, file: !31, line: 1883, baseType: !486, size: 64, offset: 960)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!220, !294, !189, !234}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !364, file: !31, line: 1884, baseType: !490, size: 64, offset: 1024)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DISubroutineType(types: !492)
!492 = !{!123, !340, !493, !332, !332}
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !31, line: 50, flags: DIFlagFwdDecl)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !364, file: !31, line: 1886, baseType: !496, size: 64, offset: 1088)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!123, !340, !499, !123}
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !364, file: !31, line: 1887, baseType: !501, size: 64, offset: 1152)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{!123, !340, !294, !264, !7, !229}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !364, file: !31, line: 1890, baseType: !416, size: 64, offset: 1216)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !364, file: !31, line: 1891, baseType: !506, size: 64, offset: 1280)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{!123, !340, !391, !123}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !341, file: !31, line: 623, baseType: !510, size: 64, offset: 192)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !31, line: 1416, size: 9472, elements: !512)
!512 = !{!513, !514, !515, !516, !517, !518, !568, !2189, !2271, !2354, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2370, !2374, !2375, !2378, !2379, !2382, !2383, !2384, !2425, !2452, !2453, !2454, !2455, !2456, !2457, !2460, !2462, !2469, !2470, !2472, !2473, !2474, !2533, !2534, !2549, !2550, !2551, !2552, !2553, !2556, !2557, !2558, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !511, file: !31, line: 1417, baseType: !134, size: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !511, file: !31, line: 1418, baseType: !424, size: 32, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !511, file: !31, line: 1419, baseType: !338, size: 8, offset: 160)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !511, file: !31, line: 1420, baseType: !87, size: 64, offset: 192)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !511, file: !31, line: 1421, baseType: !442, size: 64, offset: 256)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !511, file: !31, line: 1422, baseType: !519, size: 64, offset: 320)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !31, line: 2228, size: 576, elements: !521)
!521 = !{!522, !523, !524, !531, !535, !539, !543, !547, !548, !558, !561, !562, !563, !565, !566, !567}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !520, file: !31, line: 2229, baseType: !132, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !520, file: !31, line: 2230, baseType: !123, size: 32, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !520, file: !31, line: 2238, baseType: !525, size: 64, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!123, !528}
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !530, line: 28, flags: DIFlagFwdDecl)
!530 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!531 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !520, file: !31, line: 2239, baseType: !532, size: 64, offset: 192)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !534)
!534 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !31, line: 70, flags: DIFlagFwdDecl)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !520, file: !31, line: 2240, baseType: !536, size: 64, offset: 256)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!294, !519, !123, !132, !97}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !520, file: !31, line: 2242, baseType: !540, size: 64, offset: 320)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{null, !510}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !520, file: !31, line: 2243, baseType: !544, size: 64, offset: 384)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !546, line: 76, flags: DIFlagFwdDecl)
!546 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!547 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !520, file: !31, line: 2244, baseType: !519, size: 64, offset: 448)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !520, file: !31, line: 2245, baseType: !549, size: 64, offset: 512)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !135, line: 182, size: 64, elements: !550)
!550 = !{!551}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !549, file: !135, line: 183, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !135, line: 186, size: 128, elements: !554)
!554 = !{!555, !556}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !553, file: !135, line: 187, baseType: !552, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !553, file: !135, line: 187, baseType: !557, size: 64, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !520, file: !31, line: 2247, baseType: !559, offset: 576)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !560, line: 187, elements: !162)
!560 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!561 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !520, file: !31, line: 2248, baseType: !559, offset: 576)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !520, file: !31, line: 2249, baseType: !559, offset: 576)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !520, file: !31, line: 2250, baseType: !564, offset: 576)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !559, elements: !190)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !520, file: !31, line: 2252, baseType: !559, offset: 576)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !520, file: !31, line: 2253, baseType: !559, offset: 576)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !520, file: !31, line: 2254, baseType: !559, offset: 576)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !511, file: !31, line: 1423, baseType: !569, size: 64, offset: 384)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !571)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !31, line: 1935, size: 1472, elements: !572)
!572 = !{!573, !577, !581, !582, !586, !592, !596, !597, !598, !602, !606, !607, !608, !609, !615, !620, !621, !628, !629, !630, !631, !2173, !2188}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !571, file: !31, line: 1936, baseType: !574, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{!340, !510}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !571, file: !31, line: 1937, baseType: !578, size: 64, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{null, !340}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !571, file: !31, line: 1938, baseType: !578, size: 64, offset: 128)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !571, file: !31, line: 1940, baseType: !583, size: 64, offset: 192)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DISubroutineType(types: !585)
!585 = !{null, !340, !123}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !571, file: !31, line: 1941, baseType: !587, size: 64, offset: 256)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{!123, !340, !590}
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !31, line: 289, flags: DIFlagFwdDecl)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !571, file: !31, line: 1942, baseType: !593, size: 64, offset: 320)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DISubroutineType(types: !595)
!595 = !{!123, !340}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !571, file: !31, line: 1943, baseType: !578, size: 64, offset: 384)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !571, file: !31, line: 1944, baseType: !540, size: 64, offset: 448)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !571, file: !31, line: 1945, baseType: !599, size: 64, offset: 512)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DISubroutineType(types: !601)
!601 = !{!123, !510, !123}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !571, file: !31, line: 1946, baseType: !603, size: 64, offset: 576)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{!123, !510}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !571, file: !31, line: 1947, baseType: !603, size: 64, offset: 640)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !571, file: !31, line: 1948, baseType: !603, size: 64, offset: 704)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !571, file: !31, line: 1949, baseType: !603, size: 64, offset: 768)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !571, file: !31, line: 1950, baseType: !610, size: 64, offset: 832)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DISubroutineType(types: !612)
!612 = !{!123, !294, !613}
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !31, line: 57, flags: DIFlagFwdDecl)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !571, file: !31, line: 1951, baseType: !616, size: 64, offset: 896)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DISubroutineType(types: !618)
!618 = !{!123, !510, !619, !189}
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !571, file: !31, line: 1952, baseType: !540, size: 64, offset: 960)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !571, file: !31, line: 1954, baseType: !622, size: 64, offset: 1024)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{!123, !625, !294}
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !627, line: 539, flags: DIFlagFwdDecl)
!627 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!628 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !571, file: !31, line: 1955, baseType: !622, size: 64, offset: 1088)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !571, file: !31, line: 1956, baseType: !622, size: 64, offset: 1152)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !571, file: !31, line: 1957, baseType: !622, size: 64, offset: 1216)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !571, file: !31, line: 1963, baseType: !632, size: 64, offset: 1280)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{!123, !510, !635, !658}
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !637, line: 68, size: 512, align: 128, elements: !638)
!637 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!638 = !{!639, !640, !2165, !2172}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !636, file: !637, line: 69, baseType: !87, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, scope: !636, file: !637, line: 77, baseType: !641, size: 320, offset: 64)
!641 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !636, file: !637, line: 77, size: 320, elements: !642)
!642 = !{!643, !830, !835, !863, !871, !877, !2157, !2164}
!643 = !DIDerivedType(tag: DW_TAG_member, scope: !641, file: !637, line: 78, baseType: !644, size: 320)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !641, file: !637, line: 78, size: 320, elements: !645)
!645 = !{!646, !647, !828, !829}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !644, file: !637, line: 84, baseType: !134, size: 128)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !644, file: !637, line: 86, baseType: !648, size: 64, offset: 128)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !31, line: 451, size: 1216, align: 64, elements: !650)
!650 = !{!651, !652, !660, !661, !666, !681, !697, !698, !699, !700, !821, !822, !825, !826, !827}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !649, file: !31, line: 452, baseType: !340, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !649, file: !31, line: 453, baseType: !653, size: 128, offset: 64)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !654, line: 292, size: 128, elements: !655)
!654 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!655 = !{!656, !657, !659}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !653, file: !654, line: 293, baseType: !148)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !653, file: !654, line: 295, baseType: !658, size: 32)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !135, line: 148, baseType: !7)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !653, file: !654, line: 296, baseType: !97, size: 64, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !649, file: !31, line: 454, baseType: !658, size: 32, offset: 192)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !649, file: !31, line: 455, baseType: !662, size: 32, offset: 224)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !135, line: 168, baseType: !663)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 166, size: 32, elements: !664)
!664 = !{!665}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !663, file: !135, line: 167, baseType: !123, size: 32)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !649, file: !31, line: 460, baseType: !667, size: 128, offset: 256)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !668, line: 125, size: 128, elements: !669)
!668 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!669 = !{!670, !680}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !667, file: !668, line: 126, baseType: !671, size: 64)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !668, line: 31, size: 64, elements: !672)
!672 = !{!673}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !671, file: !668, line: 32, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !668, line: 24, size: 192, align: 64, elements: !676)
!676 = !{!677, !678, !679}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !675, file: !668, line: 25, baseType: !87, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !675, file: !668, line: 26, baseType: !674, size: 64, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !675, file: !668, line: 27, baseType: !674, size: 64, offset: 128)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !667, file: !668, line: 127, baseType: !674, size: 64, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !649, file: !31, line: 461, baseType: !682, size: 256, offset: 384)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !683, line: 35, size: 256, elements: !684)
!683 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!684 = !{!685, !693, !694, !696}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !682, file: !683, line: 36, baseType: !686, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !687, line: 13, baseType: !688)
!687 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !135, line: 175, baseType: !689)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 173, size: 64, elements: !690)
!690 = !{!691}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !689, file: !135, line: 174, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !328, line: 22, baseType: !451)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !682, file: !683, line: 42, baseType: !686, size: 64, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !682, file: !683, line: 46, baseType: !695, offset: 128)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !149, line: 29, baseType: !156)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !682, file: !683, line: 47, baseType: !134, size: 128, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !649, file: !31, line: 462, baseType: !87, size: 64, offset: 640)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !649, file: !31, line: 463, baseType: !87, size: 64, offset: 704)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !649, file: !31, line: 464, baseType: !87, size: 64, offset: 768)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !649, file: !31, line: 465, baseType: !701, size: 64, offset: 832)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !703)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !31, line: 367, size: 1408, elements: !704)
!704 = !{!705, !709, !713, !717, !721, !725, !731, !737, !741, !746, !750, !754, !758, !785, !789, !795, !796, !797, !801, !806, !810, !817}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !703, file: !31, line: 368, baseType: !706, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DISubroutineType(types: !708)
!708 = !{!123, !635, !590}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !703, file: !31, line: 369, baseType: !710, size: 64, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{!123, !264, !635}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !703, file: !31, line: 372, baseType: !714, size: 64, offset: 128)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!123, !648, !590}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !703, file: !31, line: 375, baseType: !718, size: 64, offset: 192)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{!123, !635}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !703, file: !31, line: 381, baseType: !722, size: 64, offset: 256)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{!123, !264, !648, !138, !7}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !703, file: !31, line: 383, baseType: !726, size: 64, offset: 320)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{null, !729}
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !31, line: 290, flags: DIFlagFwdDecl)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !703, file: !31, line: 385, baseType: !732, size: 64, offset: 384)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{!123, !264, !648, !442, !7, !7, !735, !736}
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !703, file: !31, line: 388, baseType: !738, size: 64, offset: 448)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{!123, !264, !648, !442, !7, !7, !635, !97}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !703, file: !31, line: 393, baseType: !742, size: 64, offset: 512)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!745, !648, !745}
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !135, line: 125, baseType: !332)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !703, file: !31, line: 394, baseType: !747, size: 64, offset: 576)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{null, !635, !7, !7}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !703, file: !31, line: 395, baseType: !751, size: 64, offset: 640)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{!123, !635, !658}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !703, file: !31, line: 396, baseType: !755, size: 64, offset: 704)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{null, !635}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !703, file: !31, line: 397, baseType: !759, size: 64, offset: 768)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{!220, !762, !783}
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !31, line: 320, size: 384, elements: !764)
!764 = !{!765, !766, !767, !771, !772, !773, !775, !776}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !763, file: !31, line: 321, baseType: !264, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !763, file: !31, line: 326, baseType: !442, size: 64, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !763, file: !31, line: 327, baseType: !768, size: 64, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{null, !762, !100, !100}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !763, file: !31, line: 328, baseType: !97, size: 64, offset: 192)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !763, file: !31, line: 329, baseType: !123, size: 32, offset: 256)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !763, file: !31, line: 330, baseType: !774, size: 16, offset: 288)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !328, line: 19, baseType: !91)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !763, file: !31, line: 331, baseType: !774, size: 16, offset: 304)
!776 = !DIDerivedType(tag: DW_TAG_member, scope: !763, file: !31, line: 332, baseType: !777, size: 64, offset: 320)
!777 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !763, file: !31, line: 332, size: 64, elements: !778)
!778 = !{!779, !780}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !777, file: !31, line: 333, baseType: !7, size: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !777, file: !31, line: 334, baseType: !781, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !31, line: 334, flags: DIFlagFwdDecl)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !31, line: 64, flags: DIFlagFwdDecl)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !703, file: !31, line: 402, baseType: !786, size: 64, offset: 832)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{!123, !648, !635, !635, !5}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !703, file: !31, line: 404, baseType: !790, size: 64, offset: 896)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{!401, !635, !793}
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !794, line: 305, baseType: !7)
!794 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!795 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !703, file: !31, line: 405, baseType: !755, size: 64, offset: 960)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !703, file: !31, line: 406, baseType: !718, size: 64, offset: 1024)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !703, file: !31, line: 407, baseType: !798, size: 64, offset: 1088)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DISubroutineType(types: !800)
!800 = !{!123, !635, !87, !87}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !703, file: !31, line: 409, baseType: !802, size: 64, offset: 1152)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{null, !635, !805, !805}
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !703, file: !31, line: 410, baseType: !807, size: 64, offset: 1216)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DISubroutineType(types: !809)
!809 = !{!123, !648, !635}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !703, file: !31, line: 413, baseType: !811, size: 64, offset: 1280)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DISubroutineType(types: !813)
!813 = !{!123, !814, !264, !816}
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !31, line: 61, flags: DIFlagFwdDecl)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !703, file: !31, line: 415, baseType: !818, size: 64, offset: 1344)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DISubroutineType(types: !820)
!820 = !{null, !264}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !649, file: !31, line: 466, baseType: !87, size: 64, offset: 896)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !649, file: !31, line: 467, baseType: !823, size: 32, offset: 960)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !824, line: 8, baseType: !327)
!824 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!825 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !649, file: !31, line: 468, baseType: !148, offset: 992)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !649, file: !31, line: 469, baseType: !134, size: 128, offset: 1024)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !649, file: !31, line: 470, baseType: !97, size: 64, offset: 1152)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !644, file: !637, line: 87, baseType: !87, size: 64, offset: 192)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !644, file: !637, line: 94, baseType: !87, size: 64, offset: 256)
!830 = !DIDerivedType(tag: DW_TAG_member, scope: !641, file: !637, line: 96, baseType: !831, size: 64)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !641, file: !637, line: 96, size: 64, elements: !832)
!832 = !{!833}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !831, file: !637, line: 101, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !135, line: 143, baseType: !332)
!835 = !DIDerivedType(tag: DW_TAG_member, scope: !641, file: !637, line: 103, baseType: !836, size: 320)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !641, file: !637, line: 103, size: 320, elements: !837)
!837 = !{!838, !848, !851, !852}
!838 = !DIDerivedType(tag: DW_TAG_member, scope: !836, file: !637, line: 104, baseType: !839, size: 128)
!839 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !836, file: !637, line: 104, size: 128, elements: !840)
!840 = !{!841, !842}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !839, file: !637, line: 105, baseType: !134, size: 128)
!842 = !DIDerivedType(tag: DW_TAG_member, scope: !839, file: !637, line: 106, baseType: !843, size: 128)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !839, file: !637, line: 106, size: 128, elements: !844)
!844 = !{!845, !846, !847}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !843, file: !637, line: 107, baseType: !635, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !843, file: !637, line: 109, baseType: !123, size: 32, offset: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !843, file: !637, line: 110, baseType: !123, size: 32, offset: 96)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !836, file: !637, line: 117, baseType: !849, size: 64, offset: 128)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !637, line: 117, flags: DIFlagFwdDecl)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !836, file: !637, line: 119, baseType: !97, size: 64, offset: 192)
!852 = !DIDerivedType(tag: DW_TAG_member, scope: !836, file: !637, line: 120, baseType: !853, size: 64, offset: 256)
!853 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !836, file: !637, line: 120, size: 64, elements: !854)
!854 = !{!855, !856, !857}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !853, file: !637, line: 121, baseType: !97, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !853, file: !637, line: 122, baseType: !87, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, scope: !853, file: !637, line: 123, baseType: !858, size: 32)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !853, file: !637, line: 123, size: 32, elements: !859)
!859 = !{!860, !861, !862}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !858, file: !637, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !858, file: !637, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !858, file: !637, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!863 = !DIDerivedType(tag: DW_TAG_member, scope: !641, file: !637, line: 130, baseType: !864, size: 192)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !641, file: !637, line: 130, size: 192, elements: !865)
!865 = !{!866, !867, !868, !869, !870}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !864, file: !637, line: 131, baseType: !87, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !864, file: !637, line: 134, baseType: !338, size: 8, offset: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !864, file: !637, line: 135, baseType: !338, size: 8, offset: 72)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !864, file: !637, line: 136, baseType: !662, size: 32, offset: 96)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !864, file: !637, line: 137, baseType: !7, size: 32, offset: 128)
!871 = !DIDerivedType(tag: DW_TAG_member, scope: !641, file: !637, line: 139, baseType: !872, size: 256)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !641, file: !637, line: 139, size: 256, elements: !873)
!873 = !{!874, !875, !876}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !872, file: !637, line: 140, baseType: !87, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !872, file: !637, line: 141, baseType: !662, size: 32, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !872, file: !637, line: 143, baseType: !134, size: 128, offset: 128)
!877 = !DIDerivedType(tag: DW_TAG_member, scope: !641, file: !637, line: 145, baseType: !878, size: 256)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !641, file: !637, line: 145, size: 256, elements: !879)
!879 = !{!880, !881, !883, !884, !2156}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !878, file: !637, line: 146, baseType: !87, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !878, file: !637, line: 147, baseType: !882, size: 64, offset: 64)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !627, line: 509, baseType: !635)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !878, file: !637, line: 148, baseType: !87, size: 64, offset: 128)
!884 = !DIDerivedType(tag: DW_TAG_member, scope: !878, file: !637, line: 149, baseType: !885, size: 64, offset: 192)
!885 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !878, file: !637, line: 149, size: 64, elements: !886)
!886 = !{!887, !2155}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !885, file: !637, line: 150, baseType: !888, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !637, line: 388, size: 7296, elements: !890)
!890 = !{!891, !2151}
!891 = !DIDerivedType(tag: DW_TAG_member, scope: !889, file: !637, line: 389, baseType: !892, size: 7296)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !889, file: !637, line: 389, size: 7296, elements: !893)
!893 = !{!894, !932, !933, !934, !938, !939, !940, !941, !942, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !983, !991, !994, !1040, !1041, !2135, !2136, !2139, !2140, !2141, !2144, !2145, !2146, !2149, !2150}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !892, file: !637, line: 390, baseType: !895, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !637, line: 305, size: 1472, elements: !897)
!897 = !{!898, !899, !900, !901, !902, !903, !904, !905, !912, !913, !918, !919, !922, !926, !927, !928, !929, !930}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !896, file: !637, line: 308, baseType: !87, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !896, file: !637, line: 309, baseType: !87, size: 64, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !896, file: !637, line: 313, baseType: !895, size: 64, offset: 128)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !896, file: !637, line: 313, baseType: !895, size: 64, offset: 192)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !896, file: !637, line: 315, baseType: !675, size: 192, align: 64, offset: 256)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !896, file: !637, line: 323, baseType: !87, size: 64, offset: 448)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !896, file: !637, line: 327, baseType: !888, size: 64, offset: 512)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !896, file: !637, line: 333, baseType: !906, size: 64, offset: 576)
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !627, line: 284, baseType: !907)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !627, line: 284, size: 64, elements: !908)
!908 = !{!909}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !907, file: !627, line: 284, baseType: !910, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !911, line: 19, baseType: !87)
!911 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!912 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !896, file: !637, line: 334, baseType: !87, size: 64, offset: 640)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !896, file: !637, line: 343, baseType: !914, size: 256, offset: 704)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !896, file: !637, line: 340, size: 256, elements: !915)
!915 = !{!916, !917}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !914, file: !637, line: 341, baseType: !675, size: 192, align: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !914, file: !637, line: 342, baseType: !87, size: 64, offset: 192)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !896, file: !637, line: 351, baseType: !134, size: 128, offset: 960)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !896, file: !637, line: 353, baseType: !920, size: 64, offset: 1088)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !637, line: 353, flags: DIFlagFwdDecl)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !896, file: !637, line: 356, baseType: !923, size: 64, offset: 1152)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !925)
!925 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !637, line: 356, flags: DIFlagFwdDecl)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !896, file: !637, line: 359, baseType: !87, size: 64, offset: 1216)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !896, file: !637, line: 361, baseType: !264, size: 64, offset: 1280)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !896, file: !637, line: 362, baseType: !97, size: 64, offset: 1344)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !896, file: !637, line: 365, baseType: !686, size: 64, offset: 1408)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !896, file: !637, line: 373, baseType: !931, offset: 1472)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !637, line: 296, elements: !162)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !892, file: !637, line: 391, baseType: !671, size: 64, offset: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !892, file: !637, line: 392, baseType: !332, size: 64, offset: 128)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !892, file: !637, line: 394, baseType: !935, size: 64, offset: 192)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DISubroutineType(types: !937)
!937 = !{!87, !264, !87, !87, !87, !87}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !892, file: !637, line: 398, baseType: !87, size: 64, offset: 256)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !892, file: !637, line: 399, baseType: !87, size: 64, offset: 320)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !892, file: !637, line: 405, baseType: !87, size: 64, offset: 384)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !892, file: !637, line: 406, baseType: !87, size: 64, offset: 448)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !892, file: !637, line: 407, baseType: !943, size: 64, offset: 512)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !627, line: 286, baseType: !945)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !627, line: 286, size: 64, elements: !946)
!946 = !{!947}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !945, file: !627, line: 286, baseType: !948, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !911, line: 18, baseType: !87)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !892, file: !637, line: 416, baseType: !662, size: 32, offset: 576)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !892, file: !637, line: 428, baseType: !662, size: 32, offset: 608)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !892, file: !637, line: 437, baseType: !662, size: 32, offset: 640)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !892, file: !637, line: 447, baseType: !662, size: 32, offset: 672)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !892, file: !637, line: 450, baseType: !686, size: 64, offset: 704)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !892, file: !637, line: 452, baseType: !123, size: 32, offset: 768)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !892, file: !637, line: 454, baseType: !148, offset: 800)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !892, file: !637, line: 457, baseType: !682, size: 256, offset: 832)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !892, file: !637, line: 459, baseType: !134, size: 128, offset: 1088)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !892, file: !637, line: 466, baseType: !87, size: 64, offset: 1216)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !892, file: !637, line: 467, baseType: !87, size: 64, offset: 1280)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !892, file: !637, line: 469, baseType: !87, size: 64, offset: 1344)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !892, file: !637, line: 470, baseType: !87, size: 64, offset: 1408)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !892, file: !637, line: 471, baseType: !688, size: 64, offset: 1472)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !892, file: !637, line: 472, baseType: !87, size: 64, offset: 1536)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !892, file: !637, line: 473, baseType: !87, size: 64, offset: 1600)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !892, file: !637, line: 474, baseType: !87, size: 64, offset: 1664)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !892, file: !637, line: 475, baseType: !87, size: 64, offset: 1728)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !892, file: !637, line: 477, baseType: !148, offset: 1792)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !892, file: !637, line: 478, baseType: !87, size: 64, offset: 1792)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !892, file: !637, line: 478, baseType: !87, size: 64, offset: 1856)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !892, file: !637, line: 478, baseType: !87, size: 64, offset: 1920)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !892, file: !637, line: 478, baseType: !87, size: 64, offset: 1984)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !892, file: !637, line: 479, baseType: !87, size: 64, offset: 2048)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !892, file: !637, line: 479, baseType: !87, size: 64, offset: 2112)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !892, file: !637, line: 479, baseType: !87, size: 64, offset: 2176)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !892, file: !637, line: 480, baseType: !87, size: 64, offset: 2240)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !892, file: !637, line: 480, baseType: !87, size: 64, offset: 2304)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !892, file: !637, line: 480, baseType: !87, size: 64, offset: 2368)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !892, file: !637, line: 480, baseType: !87, size: 64, offset: 2432)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !892, file: !637, line: 482, baseType: !980, size: 2816, offset: 2496)
!980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 2816, elements: !981)
!981 = !{!982}
!982 = !DISubrange(count: 44)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !892, file: !637, line: 488, baseType: !984, size: 256, offset: 5312)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !985, line: 60, size: 256, elements: !986)
!985 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!986 = !{!987}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !984, file: !985, line: 61, baseType: !988, size: 256)
!988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !686, size: 256, elements: !989)
!989 = !{!990}
!990 = !DISubrange(count: 4)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !892, file: !637, line: 490, baseType: !992, size: 64, offset: 5568)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !637, line: 490, flags: DIFlagFwdDecl)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !892, file: !637, line: 493, baseType: !995, size: 896, offset: 5632)
!995 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !996, line: 53, baseType: !997)
!996 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !996, line: 13, size: 896, elements: !998)
!998 = !{!999, !1000, !1001, !1002, !1005, !1006, !1013, !1014, !1034, !1035, !1036}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !997, file: !996, line: 18, baseType: !332, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !997, file: !996, line: 28, baseType: !688, size: 64, offset: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !997, file: !996, line: 31, baseType: !682, size: 256, offset: 128)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !997, file: !996, line: 32, baseType: !1003, size: 64, offset: 384)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !996, line: 32, flags: DIFlagFwdDecl)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !997, file: !996, line: 37, baseType: !93, size: 16, offset: 448)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !997, file: !996, line: 40, baseType: !1007, size: 192, offset: 512)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1008, line: 53, size: 192, elements: !1009)
!1008 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1009 = !{!1010, !1011, !1012}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1007, file: !1008, line: 54, baseType: !686, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1007, file: !1008, line: 55, baseType: !148, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1007, file: !1008, line: 59, baseType: !134, size: 128, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !997, file: !996, line: 41, baseType: !97, size: 64, offset: 704)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !997, file: !996, line: 42, baseType: !1015, size: 64, offset: 768)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1017)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1018, line: 13, size: 896, elements: !1019)
!1018 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1019 = !{!1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1017, file: !1018, line: 14, baseType: !97, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1017, file: !1018, line: 15, baseType: !87, size: 64, offset: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1017, file: !1018, line: 17, baseType: !87, size: 64, offset: 128)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1017, file: !1018, line: 17, baseType: !87, size: 64, offset: 192)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1017, file: !1018, line: 19, baseType: !100, size: 64, offset: 256)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1017, file: !1018, line: 21, baseType: !100, size: 64, offset: 320)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1017, file: !1018, line: 22, baseType: !100, size: 64, offset: 384)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1017, file: !1018, line: 23, baseType: !100, size: 64, offset: 448)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1017, file: !1018, line: 24, baseType: !100, size: 64, offset: 512)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1017, file: !1018, line: 25, baseType: !100, size: 64, offset: 576)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1017, file: !1018, line: 26, baseType: !100, size: 64, offset: 640)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1017, file: !1018, line: 27, baseType: !100, size: 64, offset: 704)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1017, file: !1018, line: 28, baseType: !100, size: 64, offset: 768)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1017, file: !1018, line: 29, baseType: !100, size: 64, offset: 832)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !997, file: !996, line: 44, baseType: !662, size: 32, offset: 832)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !997, file: !996, line: 50, baseType: !774, size: 16, offset: 864)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !997, file: !996, line: 51, baseType: !1037, size: 16, offset: 880)
!1037 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !328, line: 18, baseType: !1038)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !92, line: 23, baseType: !1039)
!1039 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !892, file: !637, line: 495, baseType: !87, size: 64, offset: 6528)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !892, file: !637, line: 497, baseType: !1042, size: 64, offset: 6592)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !637, line: 381, size: 384, elements: !1044)
!1044 = !{!1045, !1046, !2134}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1043, file: !637, line: 382, baseType: !662, size: 32)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1043, file: !637, line: 383, baseType: !1047, size: 128, offset: 64)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !637, line: 376, size: 128, elements: !1048)
!1048 = !{!1049, !2132}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1047, file: !637, line: 377, baseType: !1050, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1052, line: 640, size: 48640, elements: !1053)
!1052 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1053 = !{!1054, !1060, !1061, !1062, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1079, !1097, !1108, !1193, !1194, !1195, !1206, !1207, !1209, !1210, !1211, !1212, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1291, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1329, !1331, !1332, !1333, !1345, !1346, !1347, !1348, !1349, !1350, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1374, !1379, !1563, !1564, !1565, !1566, !1570, !1573, !1576, !1579, !1582, !1585, !1686, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1732, !1733, !1734, !1735, !1736, !1741, !1742, !1743, !1746, !1747, !1750, !1753, !1756, !1759, !1802, !1805, !1806, !1885, !1886, !1889, !1890, !1893, !1894, !1895, !1899, !1900, !1901, !1914, !1915, !1916, !1926, !1931, !1934, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1051, file: !1052, line: 646, baseType: !1055, size: 128)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1056, line: 56, size: 128, elements: !1057)
!1056 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1057 = !{!1058, !1059}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1055, file: !1056, line: 57, baseType: !87, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1055, file: !1056, line: 58, baseType: !327, size: 32, offset: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1051, file: !1052, line: 649, baseType: !99, size: 64, offset: 128)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1051, file: !1052, line: 657, baseType: !97, size: 64, offset: 192)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1051, file: !1052, line: 658, baseType: !1063, size: 32, offset: 256)
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1064, line: 113, baseType: !1065)
!1064 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1064, line: 111, size: 32, elements: !1066)
!1066 = !{!1067}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1065, file: !1064, line: 112, baseType: !662, size: 32)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1051, file: !1052, line: 660, baseType: !7, size: 32, offset: 288)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1051, file: !1052, line: 661, baseType: !7, size: 32, offset: 320)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1051, file: !1052, line: 684, baseType: !123, size: 32, offset: 352)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1051, file: !1052, line: 686, baseType: !123, size: 32, offset: 384)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1051, file: !1052, line: 687, baseType: !123, size: 32, offset: 416)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1051, file: !1052, line: 688, baseType: !123, size: 32, offset: 448)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1051, file: !1052, line: 689, baseType: !7, size: 32, offset: 480)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1051, file: !1052, line: 691, baseType: !1076, size: 64, offset: 512)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1078)
!1078 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1052, line: 691, flags: DIFlagFwdDecl)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1051, file: !1052, line: 692, baseType: !1080, size: 832, offset: 576)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1052, line: 451, size: 832, elements: !1081)
!1081 = !{!1082, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1080, file: !1052, line: 453, baseType: !1083, size: 128)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1052, line: 325, size: 128, elements: !1084)
!1084 = !{!1085, !1086}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1083, file: !1052, line: 326, baseType: !87, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1083, file: !1052, line: 327, baseType: !327, size: 32, offset: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1080, file: !1052, line: 454, baseType: !675, size: 192, align: 64, offset: 128)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1080, file: !1052, line: 455, baseType: !134, size: 128, offset: 320)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1080, file: !1052, line: 456, baseType: !7, size: 32, offset: 448)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1080, file: !1052, line: 458, baseType: !332, size: 64, offset: 512)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1080, file: !1052, line: 459, baseType: !332, size: 64, offset: 576)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1080, file: !1052, line: 460, baseType: !332, size: 64, offset: 640)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1080, file: !1052, line: 461, baseType: !332, size: 64, offset: 704)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1080, file: !1052, line: 463, baseType: !332, size: 64, offset: 768)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1080, file: !1052, line: 465, baseType: !1096, offset: 832)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1052, line: 415, elements: !162)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1051, file: !1052, line: 693, baseType: !1098, size: 384, offset: 1408)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1052, line: 489, size: 384, elements: !1099)
!1099 = !{!1100, !1101, !1102, !1103, !1104, !1105, !1106}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1098, file: !1052, line: 490, baseType: !134, size: 128)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1098, file: !1052, line: 491, baseType: !87, size: 64, offset: 128)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1098, file: !1052, line: 492, baseType: !87, size: 64, offset: 192)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1098, file: !1052, line: 493, baseType: !7, size: 32, offset: 256)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1098, file: !1052, line: 494, baseType: !93, size: 16, offset: 288)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1098, file: !1052, line: 495, baseType: !93, size: 16, offset: 304)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1098, file: !1052, line: 497, baseType: !1107, size: 64, offset: 320)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1051, file: !1052, line: 697, baseType: !1109, size: 1792, offset: 1792)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1052, line: 507, size: 1792, elements: !1110)
!1110 = !{!1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1190, !1191}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1109, file: !1052, line: 508, baseType: !675, size: 192, align: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1109, file: !1052, line: 515, baseType: !332, size: 64, offset: 192)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1109, file: !1052, line: 516, baseType: !332, size: 64, offset: 256)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1109, file: !1052, line: 517, baseType: !332, size: 64, offset: 320)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1109, file: !1052, line: 518, baseType: !332, size: 64, offset: 384)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1109, file: !1052, line: 519, baseType: !332, size: 64, offset: 448)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1109, file: !1052, line: 526, baseType: !692, size: 64, offset: 512)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1109, file: !1052, line: 527, baseType: !332, size: 64, offset: 576)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1109, file: !1052, line: 528, baseType: !7, size: 32, offset: 640)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1109, file: !1052, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1109, file: !1052, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1109, file: !1052, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1109, file: !1052, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1109, file: !1052, line: 563, baseType: !1125, size: 512, offset: 704)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !14, line: 118, size: 512, elements: !1126)
!1126 = !{!1127, !1135, !1136, !1141, !1184, !1187, !1188, !1189}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1125, file: !14, line: 119, baseType: !1128, size: 256)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1129, line: 9, size: 256, elements: !1130)
!1129 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1130 = !{!1131, !1132}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1128, file: !1129, line: 10, baseType: !675, size: 192, align: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1128, file: !1129, line: 11, baseType: !1133, size: 64, offset: 192)
!1133 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1134, line: 29, baseType: !692)
!1134 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1125, file: !14, line: 120, baseType: !1133, size: 64, offset: 256)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1125, file: !14, line: 121, baseType: !1137, size: 64, offset: 320)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!13, !1140}
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1125, file: !14, line: 122, baseType: !1142, size: 64, offset: 384)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !14, line: 159, size: 512, align: 512, elements: !1144)
!1144 = !{!1145, !1165, !1166, !1169, !1174, !1175, !1179, !1183}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1143, file: !14, line: 160, baseType: !1146, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !14, line: 214, size: 4608, align: 512, elements: !1148)
!1148 = !{!1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1147, file: !14, line: 215, baseType: !695)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1147, file: !14, line: 216, baseType: !7, size: 32)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1147, file: !14, line: 217, baseType: !7, size: 32, offset: 32)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1147, file: !14, line: 218, baseType: !7, size: 32, offset: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1147, file: !14, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1147, file: !14, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1147, file: !14, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1147, file: !14, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1147, file: !14, line: 233, baseType: !1133, size: 64, offset: 128)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1147, file: !14, line: 234, baseType: !1140, size: 64, offset: 192)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1147, file: !14, line: 235, baseType: !1133, size: 64, offset: 256)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1147, file: !14, line: 236, baseType: !1140, size: 64, offset: 320)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1147, file: !14, line: 237, baseType: !1162, size: 4096, offset: 512)
!1162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1143, size: 4096, elements: !1163)
!1163 = !{!1164}
!1164 = !DISubrange(count: 8)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1143, file: !14, line: 161, baseType: !7, size: 32, offset: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1143, file: !14, line: 162, baseType: !1167, size: 32, offset: 96)
!1167 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !135, line: 27, baseType: !1168)
!1168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !222, line: 96, baseType: !123)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1143, file: !14, line: 163, baseType: !1170, size: 32, offset: 128)
!1170 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !300, line: 276, baseType: !1171)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !300, line: 276, size: 32, elements: !1172)
!1172 = !{!1173}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1171, file: !300, line: 276, baseType: !304, size: 32)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1143, file: !14, line: 164, baseType: !1140, size: 64, offset: 192)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1143, file: !14, line: 165, baseType: !1176, size: 128, offset: 256)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1129, line: 14, size: 128, elements: !1177)
!1177 = !{!1178}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1176, file: !1129, line: 15, baseType: !667, size: 128)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1143, file: !14, line: 166, baseType: !1180, size: 64, offset: 384)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!1133}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1143, file: !14, line: 167, baseType: !1133, size: 64, offset: 448)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1125, file: !14, line: 123, baseType: !1185, size: 8, offset: 448)
!1185 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !328, line: 17, baseType: !1186)
!1186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !92, line: 21, baseType: !338)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1125, file: !14, line: 124, baseType: !1185, size: 8, offset: 456)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1125, file: !14, line: 125, baseType: !1185, size: 8, offset: 464)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1125, file: !14, line: 126, baseType: !1185, size: 8, offset: 472)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1109, file: !1052, line: 572, baseType: !1125, size: 512, offset: 1216)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1109, file: !1052, line: 580, baseType: !1192, size: 64, offset: 1728)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1051, file: !1052, line: 721, baseType: !7, size: 32, offset: 3584)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1051, file: !1052, line: 722, baseType: !123, size: 32, offset: 3616)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1051, file: !1052, line: 723, baseType: !1196, size: 64, offset: 3648)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1198)
!1198 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1199, line: 17, baseType: !1200)
!1199 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1199, line: 17, size: 64, elements: !1201)
!1201 = !{!1202}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1200, file: !1199, line: 17, baseType: !1203, size: 64)
!1203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 64, elements: !1204)
!1204 = !{!1205}
!1205 = !DISubrange(count: 1)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1051, file: !1052, line: 724, baseType: !1198, size: 64, offset: 3712)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1051, file: !1052, line: 749, baseType: !1208, offset: 3776)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1052, line: 290, elements: !162)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1051, file: !1052, line: 751, baseType: !134, size: 128, offset: 3776)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1051, file: !1052, line: 757, baseType: !888, size: 64, offset: 3904)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1051, file: !1052, line: 758, baseType: !888, size: 64, offset: 3968)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1051, file: !1052, line: 761, baseType: !1213, size: 320, offset: 4032)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !985, line: 34, size: 320, elements: !1214)
!1214 = !{!1215, !1216}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1213, file: !985, line: 35, baseType: !332, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1213, file: !985, line: 36, baseType: !1217, size: 256, offset: 64)
!1217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !895, size: 256, elements: !989)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1051, file: !1052, line: 766, baseType: !123, size: 32, offset: 4352)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1051, file: !1052, line: 767, baseType: !123, size: 32, offset: 4384)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1051, file: !1052, line: 768, baseType: !123, size: 32, offset: 4416)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1051, file: !1052, line: 770, baseType: !123, size: 32, offset: 4448)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1051, file: !1052, line: 772, baseType: !87, size: 64, offset: 4480)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1051, file: !1052, line: 775, baseType: !7, size: 32, offset: 4544)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1051, file: !1052, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1051, file: !1052, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1051, file: !1052, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1051, file: !1052, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1051, file: !1052, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1051, file: !1052, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1051, file: !1052, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1051, file: !1052, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1051, file: !1052, line: 831, baseType: !87, size: 64, offset: 4672)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1051, file: !1052, line: 833, baseType: !1234, size: 384, offset: 4736)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !19, line: 25, size: 384, elements: !1235)
!1235 = !{!1236, !1241}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1234, file: !19, line: 26, baseType: !1237, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!100, !1240}
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, scope: !1234, file: !19, line: 27, baseType: !1242, size: 320, offset: 64)
!1242 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1234, file: !19, line: 27, size: 320, elements: !1243)
!1243 = !{!1244, !1254, !1281}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1242, file: !19, line: 36, baseType: !1245, size: 320)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1242, file: !19, line: 29, size: 320, elements: !1246)
!1246 = !{!1247, !1249, !1250, !1251, !1252, !1253}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1245, file: !19, line: 30, baseType: !1248, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1245, file: !19, line: 31, baseType: !327, size: 32, offset: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1245, file: !19, line: 32, baseType: !327, size: 32, offset: 96)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1245, file: !19, line: 33, baseType: !327, size: 32, offset: 128)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1245, file: !19, line: 34, baseType: !332, size: 64, offset: 192)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1245, file: !19, line: 35, baseType: !1248, size: 64, offset: 256)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1242, file: !19, line: 46, baseType: !1255, size: 192)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1242, file: !19, line: 38, size: 192, elements: !1256)
!1256 = !{!1257, !1258, !1259, !1280}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1255, file: !19, line: 39, baseType: !1167, size: 32)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1255, file: !19, line: 40, baseType: !18, size: 32, offset: 32)
!1259 = !DIDerivedType(tag: DW_TAG_member, scope: !1255, file: !19, line: 41, baseType: !1260, size: 64, offset: 64)
!1260 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1255, file: !19, line: 41, size: 64, elements: !1261)
!1261 = !{!1262, !1270}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1260, file: !19, line: 42, baseType: !1263, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1265, line: 7, size: 128, elements: !1266)
!1265 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1266 = !{!1267, !1269}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1264, file: !1265, line: 8, baseType: !1268, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !222, line: 93, baseType: !444)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1264, file: !1265, line: 9, baseType: !444, size: 64, offset: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1260, file: !19, line: 43, baseType: !1271, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1273, line: 7, size: 64, elements: !1274)
!1273 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1274 = !{!1275, !1279}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1272, file: !1273, line: 8, baseType: !1276, size: 32)
!1276 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1273, line: 5, baseType: !1277)
!1277 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !328, line: 20, baseType: !1278)
!1278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !92, line: 26, baseType: !123)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1272, file: !1273, line: 9, baseType: !1277, size: 32, offset: 32)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1255, file: !19, line: 45, baseType: !332, size: 64, offset: 128)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1242, file: !19, line: 54, baseType: !1282, size: 256)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1242, file: !19, line: 48, size: 256, elements: !1283)
!1283 = !{!1284, !1287, !1288, !1289, !1290}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1282, file: !19, line: 49, baseType: !1285, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !19, line: 14, flags: DIFlagFwdDecl)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1282, file: !19, line: 50, baseType: !123, size: 32, offset: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1282, file: !19, line: 51, baseType: !123, size: 32, offset: 96)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1282, file: !19, line: 52, baseType: !87, size: 64, offset: 128)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1282, file: !19, line: 53, baseType: !87, size: 64, offset: 192)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1051, file: !1052, line: 835, baseType: !1292, size: 32, offset: 5120)
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !135, line: 22, baseType: !1293)
!1293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !222, line: 28, baseType: !123)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1051, file: !1052, line: 836, baseType: !1292, size: 32, offset: 5152)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1051, file: !1052, line: 840, baseType: !87, size: 64, offset: 5184)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1051, file: !1052, line: 849, baseType: !1050, size: 64, offset: 5248)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1051, file: !1052, line: 852, baseType: !1050, size: 64, offset: 5312)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1051, file: !1052, line: 857, baseType: !134, size: 128, offset: 5376)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1051, file: !1052, line: 858, baseType: !134, size: 128, offset: 5504)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1051, file: !1052, line: 859, baseType: !1050, size: 64, offset: 5632)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1051, file: !1052, line: 867, baseType: !134, size: 128, offset: 5696)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1051, file: !1052, line: 868, baseType: !134, size: 128, offset: 5824)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1051, file: !1052, line: 871, baseType: !1304, size: 64, offset: 5952)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !40, line: 59, size: 768, elements: !1306)
!1306 = !{!1307, !1308, !1309, !1310, !1312, !1313, !1320, !1321}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1305, file: !40, line: 61, baseType: !1063, size: 32)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1305, file: !40, line: 62, baseType: !7, size: 32, offset: 32)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1305, file: !40, line: 63, baseType: !148, offset: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1305, file: !40, line: 65, baseType: !1311, size: 256, offset: 64)
!1311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !549, size: 256, elements: !989)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1305, file: !40, line: 66, baseType: !549, size: 64, offset: 320)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1305, file: !40, line: 68, baseType: !1314, size: 128, offset: 384)
!1314 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1315, line: 40, baseType: !1316)
!1315 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1315, line: 36, size: 128, elements: !1317)
!1317 = !{!1318, !1319}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1316, file: !1315, line: 37, baseType: !148)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1316, file: !1315, line: 38, baseType: !134, size: 128)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1305, file: !40, line: 69, baseType: !277, size: 128, align: 64, offset: 512)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1305, file: !40, line: 70, baseType: !1322, size: 128, offset: 640)
!1322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1323, size: 128, elements: !1204)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !40, line: 54, size: 128, elements: !1324)
!1324 = !{!1325, !1326}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1323, file: !40, line: 55, baseType: !123, size: 32)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1323, file: !40, line: 56, baseType: !1327, size: 64, offset: 64)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !40, line: 56, flags: DIFlagFwdDecl)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1051, file: !1052, line: 872, baseType: !1330, size: 512, offset: 6016)
!1330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !553, size: 512, elements: !989)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1051, file: !1052, line: 873, baseType: !134, size: 128, offset: 6528)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1051, file: !1052, line: 874, baseType: !134, size: 128, offset: 6656)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1051, file: !1052, line: 876, baseType: !1334, size: 64, offset: 6784)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1336, line: 26, size: 192, elements: !1337)
!1336 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1337 = !{!1338, !1339}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1335, file: !1336, line: 27, baseType: !7, size: 32)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1335, file: !1336, line: 28, baseType: !1340, size: 128, offset: 64)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1341, line: 43, size: 128, elements: !1342)
!1341 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1342 = !{!1343, !1344}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1340, file: !1341, line: 44, baseType: !695)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1340, file: !1341, line: 45, baseType: !134, size: 128)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1051, file: !1052, line: 879, baseType: !619, size: 64, offset: 6848)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1051, file: !1052, line: 882, baseType: !619, size: 64, offset: 6912)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1051, file: !1052, line: 884, baseType: !332, size: 64, offset: 6976)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1051, file: !1052, line: 885, baseType: !332, size: 64, offset: 7040)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1051, file: !1052, line: 890, baseType: !332, size: 64, offset: 7104)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1051, file: !1052, line: 891, baseType: !1351, size: 128, offset: 7168)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1052, line: 242, size: 128, elements: !1352)
!1352 = !{!1353, !1354, !1355}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1351, file: !1052, line: 244, baseType: !332, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1351, file: !1052, line: 245, baseType: !332, size: 64, offset: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1351, file: !1052, line: 246, baseType: !695, offset: 128)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1051, file: !1052, line: 900, baseType: !87, size: 64, offset: 7296)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1051, file: !1052, line: 901, baseType: !87, size: 64, offset: 7360)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1051, file: !1052, line: 904, baseType: !332, size: 64, offset: 7424)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1051, file: !1052, line: 907, baseType: !332, size: 64, offset: 7488)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1051, file: !1052, line: 910, baseType: !87, size: 64, offset: 7552)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1051, file: !1052, line: 911, baseType: !87, size: 64, offset: 7616)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1051, file: !1052, line: 914, baseType: !1363, size: 640, offset: 7680)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1364, line: 123, size: 640, elements: !1365)
!1364 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1365 = !{!1366, !1372, !1373}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1363, file: !1364, line: 124, baseType: !1367, size: 576)
!1367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1368, size: 576, elements: !190)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1364, line: 108, size: 192, elements: !1369)
!1369 = !{!1370, !1371}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1368, file: !1364, line: 109, baseType: !332, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1368, file: !1364, line: 110, baseType: !1176, size: 128, offset: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1363, file: !1364, line: 125, baseType: !7, size: 32, offset: 576)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1363, file: !1364, line: 126, baseType: !7, size: 32, offset: 608)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1051, file: !1052, line: 917, baseType: !1375, size: 192, offset: 8320)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1364, line: 134, size: 192, elements: !1376)
!1376 = !{!1377, !1378}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1375, file: !1364, line: 135, baseType: !277, size: 128, align: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1375, file: !1364, line: 136, baseType: !7, size: 32, offset: 128)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1051, file: !1052, line: 923, baseType: !1380, size: 64, offset: 8512)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1382)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1383, line: 111, size: 1280, elements: !1384)
!1383 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1384 = !{!1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1404, !1405, !1406, !1407, !1408, !1409, !1516, !1517, !1518, !1519, !1545, !1548, !1558}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1382, file: !1383, line: 112, baseType: !662, size: 32)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1382, file: !1383, line: 120, baseType: !346, size: 32, offset: 32)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1382, file: !1383, line: 121, baseType: !354, size: 32, offset: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1382, file: !1383, line: 122, baseType: !346, size: 32, offset: 96)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1382, file: !1383, line: 123, baseType: !354, size: 32, offset: 128)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1382, file: !1383, line: 124, baseType: !346, size: 32, offset: 160)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1382, file: !1383, line: 125, baseType: !354, size: 32, offset: 192)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1382, file: !1383, line: 126, baseType: !346, size: 32, offset: 224)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1382, file: !1383, line: 127, baseType: !354, size: 32, offset: 256)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1382, file: !1383, line: 128, baseType: !7, size: 32, offset: 288)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1382, file: !1383, line: 129, baseType: !1396, size: 64, offset: 320)
!1396 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1397, line: 26, baseType: !1398)
!1397 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1397, line: 24, size: 64, elements: !1399)
!1399 = !{!1400}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1398, file: !1397, line: 25, baseType: !1401, size: 64)
!1401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 64, elements: !1402)
!1402 = !{!1403}
!1403 = !DISubrange(count: 2)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1382, file: !1383, line: 130, baseType: !1396, size: 64, offset: 384)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1382, file: !1383, line: 131, baseType: !1396, size: 64, offset: 448)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1382, file: !1383, line: 132, baseType: !1396, size: 64, offset: 512)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1382, file: !1383, line: 133, baseType: !1396, size: 64, offset: 576)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1382, file: !1383, line: 135, baseType: !338, size: 8, offset: 640)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1382, file: !1383, line: 137, baseType: !1410, size: 64, offset: 704)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1412, line: 189, size: 1664, elements: !1413)
!1412 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1413 = !{!1414, !1415, !1418, !1423, !1424, !1427, !1428, !1433, !1434, !1435, !1436, !1438, !1439, !1440, !1441, !1442, !1480, !1501}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1411, file: !1412, line: 190, baseType: !1063, size: 32)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1411, file: !1412, line: 191, baseType: !1416, size: 32, offset: 32)
!1416 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1412, line: 28, baseType: !1417)
!1417 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !135, line: 98, baseType: !1277)
!1418 = !DIDerivedType(tag: DW_TAG_member, scope: !1411, file: !1412, line: 192, baseType: !1419, size: 192, offset: 64)
!1419 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1411, file: !1412, line: 192, size: 192, elements: !1420)
!1420 = !{!1421, !1422}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1419, file: !1412, line: 193, baseType: !134, size: 128)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1419, file: !1412, line: 194, baseType: !675, size: 192, align: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1411, file: !1412, line: 199, baseType: !682, size: 256, offset: 256)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1411, file: !1412, line: 200, baseType: !1425, size: 64, offset: 512)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1412, line: 200, flags: DIFlagFwdDecl)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1411, file: !1412, line: 201, baseType: !97, size: 64, offset: 576)
!1428 = !DIDerivedType(tag: DW_TAG_member, scope: !1411, file: !1412, line: 202, baseType: !1429, size: 64, offset: 640)
!1429 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1411, file: !1412, line: 202, size: 64, elements: !1430)
!1430 = !{!1431, !1432}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1429, file: !1412, line: 203, baseType: !450, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1429, file: !1412, line: 204, baseType: !450, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1411, file: !1412, line: 206, baseType: !450, size: 64, offset: 704)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1411, file: !1412, line: 207, baseType: !346, size: 32, offset: 768)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1411, file: !1412, line: 208, baseType: !354, size: 32, offset: 800)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1411, file: !1412, line: 209, baseType: !1437, size: 32, offset: 832)
!1437 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1412, line: 31, baseType: !470)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1411, file: !1412, line: 210, baseType: !93, size: 16, offset: 864)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1411, file: !1412, line: 211, baseType: !93, size: 16, offset: 880)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1411, file: !1412, line: 215, baseType: !1039, size: 16, offset: 896)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1411, file: !1412, line: 222, baseType: !87, size: 64, offset: 960)
!1442 = !DIDerivedType(tag: DW_TAG_member, scope: !1411, file: !1412, line: 239, baseType: !1443, size: 320, offset: 1024)
!1443 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1411, file: !1412, line: 239, size: 320, elements: !1444)
!1444 = !{!1445, !1472}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1443, file: !1412, line: 240, baseType: !1446, size: 320)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1412, line: 108, size: 320, elements: !1447)
!1447 = !{!1448, !1449, !1461, !1464, !1471}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1446, file: !1412, line: 110, baseType: !87, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, scope: !1446, file: !1412, line: 111, baseType: !1450, size: 64, offset: 64)
!1450 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1446, file: !1412, line: 111, size: 64, elements: !1451)
!1451 = !{!1452, !1460}
!1452 = !DIDerivedType(tag: DW_TAG_member, scope: !1450, file: !1412, line: 112, baseType: !1453, size: 64)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1450, file: !1412, line: 112, size: 64, elements: !1454)
!1454 = !{!1455, !1456}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1453, file: !1412, line: 114, baseType: !774, size: 16)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1453, file: !1412, line: 115, baseType: !1457, size: 48, offset: 16)
!1457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 48, elements: !1458)
!1458 = !{!1459}
!1459 = !DISubrange(count: 6)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1450, file: !1412, line: 121, baseType: !87, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1446, file: !1412, line: 123, baseType: !1462, size: 64, offset: 128)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1412, line: 96, flags: DIFlagFwdDecl)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1446, file: !1412, line: 124, baseType: !1465, size: 64, offset: 192)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1412, line: 102, size: 192, elements: !1467)
!1467 = !{!1468, !1469, !1470}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1466, file: !1412, line: 103, baseType: !277, size: 128, align: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1466, file: !1412, line: 104, baseType: !1063, size: 32, offset: 128)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1466, file: !1412, line: 105, baseType: !401, size: 8, offset: 160)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1446, file: !1412, line: 125, baseType: !132, size: 64, offset: 256)
!1472 = !DIDerivedType(tag: DW_TAG_member, scope: !1443, file: !1412, line: 241, baseType: !1473, size: 320)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1443, file: !1412, line: 241, size: 320, elements: !1474)
!1474 = !{!1475, !1476, !1477, !1478, !1479}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1473, file: !1412, line: 242, baseType: !87, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1473, file: !1412, line: 243, baseType: !87, size: 64, offset: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1473, file: !1412, line: 244, baseType: !1462, size: 64, offset: 128)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1473, file: !1412, line: 245, baseType: !1465, size: 64, offset: 192)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1473, file: !1412, line: 246, baseType: !189, size: 64, offset: 256)
!1480 = !DIDerivedType(tag: DW_TAG_member, scope: !1411, file: !1412, line: 254, baseType: !1481, size: 256, offset: 1344)
!1481 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1411, file: !1412, line: 254, size: 256, elements: !1482)
!1482 = !{!1483, !1489}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1481, file: !1412, line: 255, baseType: !1484, size: 256)
!1484 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1412, line: 128, size: 256, elements: !1485)
!1485 = !{!1486, !1487}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1484, file: !1412, line: 129, baseType: !97, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1484, file: !1412, line: 130, baseType: !1488, size: 256)
!1488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 256, elements: !989)
!1489 = !DIDerivedType(tag: DW_TAG_member, scope: !1481, file: !1412, line: 256, baseType: !1490, size: 256)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1481, file: !1412, line: 256, size: 256, elements: !1491)
!1491 = !{!1492, !1493}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1490, file: !1412, line: 258, baseType: !134, size: 128)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1490, file: !1412, line: 259, baseType: !1494, size: 128, offset: 128)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1495, line: 22, size: 128, elements: !1496)
!1495 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1496 = !{!1497, !1500}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1494, file: !1495, line: 23, baseType: !1498, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1495, line: 23, flags: DIFlagFwdDecl)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1494, file: !1495, line: 24, baseType: !87, size: 64, offset: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1411, file: !1412, line: 274, baseType: !1502, size: 64, offset: 1600)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1412, line: 170, size: 192, elements: !1504)
!1504 = !{!1505, !1514, !1515}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1503, file: !1412, line: 171, baseType: !1506, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1412, line: 165, baseType: !1507)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!123, !1410, !1510, !1512, !1410}
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1463)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1484)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1503, file: !1412, line: 172, baseType: !1410, size: 64, offset: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1503, file: !1412, line: 173, baseType: !1462, size: 64, offset: 128)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1382, file: !1383, line: 138, baseType: !1410, size: 64, offset: 768)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1382, file: !1383, line: 139, baseType: !1410, size: 64, offset: 832)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1382, file: !1383, line: 140, baseType: !1410, size: 64, offset: 896)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1382, file: !1383, line: 145, baseType: !1520, size: 64, offset: 960)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1522, line: 13, size: 896, elements: !1523)
!1522 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1523 = !{!1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1521, file: !1522, line: 14, baseType: !1063, size: 32)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1521, file: !1522, line: 15, baseType: !662, size: 32, offset: 32)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1521, file: !1522, line: 16, baseType: !662, size: 32, offset: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1521, file: !1522, line: 21, baseType: !686, size: 64, offset: 128)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1521, file: !1522, line: 27, baseType: !87, size: 64, offset: 192)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1521, file: !1522, line: 28, baseType: !87, size: 64, offset: 256)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1521, file: !1522, line: 29, baseType: !686, size: 64, offset: 320)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1521, file: !1522, line: 32, baseType: !553, size: 128, offset: 384)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1521, file: !1522, line: 33, baseType: !346, size: 32, offset: 512)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1521, file: !1522, line: 37, baseType: !686, size: 64, offset: 576)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1521, file: !1522, line: 44, baseType: !1535, size: 256, offset: 640)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1536, line: 15, size: 256, elements: !1537)
!1536 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1537 = !{!1538, !1539, !1540, !1541, !1542, !1543, !1544}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1535, file: !1536, line: 16, baseType: !695)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1535, file: !1536, line: 18, baseType: !123, size: 32)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1535, file: !1536, line: 19, baseType: !123, size: 32, offset: 32)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1535, file: !1536, line: 20, baseType: !123, size: 32, offset: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1535, file: !1536, line: 21, baseType: !123, size: 32, offset: 96)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1535, file: !1536, line: 22, baseType: !87, size: 64, offset: 128)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1535, file: !1536, line: 23, baseType: !87, size: 64, offset: 192)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1382, file: !1383, line: 146, baseType: !1546, size: 64, offset: 1024)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !637, line: 516, flags: DIFlagFwdDecl)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1382, file: !1383, line: 147, baseType: !1549, size: 64, offset: 1088)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1383, line: 25, size: 64, elements: !1551)
!1551 = !{!1552, !1553, !1554}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1550, file: !1383, line: 26, baseType: !662, size: 32)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1550, file: !1383, line: 27, baseType: !123, size: 32, offset: 32)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1550, file: !1383, line: 28, baseType: !1555, offset: 64)
!1555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, elements: !1556)
!1556 = !{!1557}
!1557 = !DISubrange(count: 0)
!1558 = !DIDerivedType(tag: DW_TAG_member, scope: !1382, file: !1383, line: 149, baseType: !1559, size: 128, offset: 1152)
!1559 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1382, file: !1383, line: 149, size: 128, elements: !1560)
!1560 = !{!1561, !1562}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1559, file: !1383, line: 150, baseType: !123, size: 32)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1559, file: !1383, line: 151, baseType: !277, size: 128, align: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1051, file: !1052, line: 926, baseType: !1380, size: 64, offset: 8576)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1051, file: !1052, line: 929, baseType: !1380, size: 64, offset: 8640)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1051, file: !1052, line: 933, baseType: !1410, size: 64, offset: 8704)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1051, file: !1052, line: 943, baseType: !1567, size: 128, offset: 8768)
!1567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 128, elements: !1568)
!1568 = !{!1569}
!1569 = !DISubrange(count: 16)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1051, file: !1052, line: 945, baseType: !1571, size: 64, offset: 8896)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1052, line: 49, flags: DIFlagFwdDecl)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1051, file: !1052, line: 956, baseType: !1574, size: 64, offset: 8960)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1052, line: 45, flags: DIFlagFwdDecl)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1051, file: !1052, line: 959, baseType: !1577, size: 64, offset: 9024)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1052, line: 959, flags: DIFlagFwdDecl)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1051, file: !1052, line: 962, baseType: !1580, size: 64, offset: 9088)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1052, line: 66, flags: DIFlagFwdDecl)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1051, file: !1052, line: 966, baseType: !1583, size: 64, offset: 9152)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1052, line: 50, flags: DIFlagFwdDecl)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1051, file: !1052, line: 969, baseType: !1586, size: 64, offset: 9216)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1588, line: 82, size: 7296, elements: !1589)
!1588 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1589 = !{!1590, !1591, !1592, !1593, !1594, !1595, !1596, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1625, !1634, !1635, !1637, !1638, !1639, !1642, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1672, !1673, !1680, !1681, !1682, !1683, !1684, !1685}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1587, file: !1588, line: 83, baseType: !1063, size: 32)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1587, file: !1588, line: 84, baseType: !662, size: 32, offset: 32)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1587, file: !1588, line: 85, baseType: !123, size: 32, offset: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1587, file: !1588, line: 86, baseType: !134, size: 128, offset: 128)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1587, file: !1588, line: 88, baseType: !1314, size: 128, offset: 256)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1587, file: !1588, line: 91, baseType: !1050, size: 64, offset: 384)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1587, file: !1588, line: 94, baseType: !1597, size: 192, offset: 448)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1598, line: 30, size: 192, elements: !1599)
!1598 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1599 = !{!1600, !1601}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1597, file: !1598, line: 31, baseType: !134, size: 128)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1597, file: !1598, line: 32, baseType: !1602, size: 64, offset: 128)
!1602 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1603, line: 25, baseType: !1604)
!1603 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1603, line: 23, size: 64, elements: !1605)
!1605 = !{!1606}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1604, file: !1603, line: 24, baseType: !1203, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1587, file: !1588, line: 97, baseType: !549, size: 64, offset: 640)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1587, file: !1588, line: 100, baseType: !123, size: 32, offset: 704)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1587, file: !1588, line: 106, baseType: !123, size: 32, offset: 736)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1587, file: !1588, line: 107, baseType: !1050, size: 64, offset: 768)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1587, file: !1588, line: 110, baseType: !123, size: 32, offset: 832)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1587, file: !1588, line: 111, baseType: !7, size: 32, offset: 864)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1587, file: !1588, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1587, file: !1588, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1587, file: !1588, line: 128, baseType: !123, size: 32, offset: 928)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1587, file: !1588, line: 129, baseType: !134, size: 128, offset: 960)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1587, file: !1588, line: 132, baseType: !1125, size: 512, offset: 1088)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1587, file: !1588, line: 133, baseType: !1133, size: 64, offset: 1600)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1587, file: !1588, line: 140, baseType: !1620, size: 256, offset: 1664)
!1620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1621, size: 256, elements: !1402)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1588, line: 38, size: 128, elements: !1622)
!1622 = !{!1623, !1624}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1621, file: !1588, line: 39, baseType: !332, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1621, file: !1588, line: 40, baseType: !332, size: 64, offset: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1587, file: !1588, line: 146, baseType: !1626, size: 192, offset: 1920)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1588, line: 66, size: 192, elements: !1627)
!1627 = !{!1628}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1626, file: !1588, line: 67, baseType: !1629, size: 192)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1588, line: 47, size: 192, elements: !1630)
!1630 = !{!1631, !1632, !1633}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1629, file: !1588, line: 48, baseType: !688, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1629, file: !1588, line: 49, baseType: !688, size: 64, offset: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1629, file: !1588, line: 50, baseType: !688, size: 64, offset: 128)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1587, file: !1588, line: 150, baseType: !1363, size: 640, offset: 2112)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1587, file: !1588, line: 153, baseType: !1636, size: 256, offset: 2752)
!1636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1304, size: 256, elements: !989)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1587, file: !1588, line: 159, baseType: !1304, size: 64, offset: 3008)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1587, file: !1588, line: 162, baseType: !123, size: 32, offset: 3072)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1587, file: !1588, line: 164, baseType: !1640, size: 64, offset: 3136)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1588, line: 164, flags: DIFlagFwdDecl)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1587, file: !1588, line: 175, baseType: !1643, size: 32, offset: 3200)
!1643 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !300, line: 805, baseType: !1644)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !300, line: 798, size: 32, elements: !1645)
!1645 = !{!1646, !1647}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1644, file: !300, line: 803, baseType: !299, size: 32)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1644, file: !300, line: 804, baseType: !148, offset: 32)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1587, file: !1588, line: 176, baseType: !332, size: 64, offset: 3264)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1587, file: !1588, line: 176, baseType: !332, size: 64, offset: 3328)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1587, file: !1588, line: 176, baseType: !332, size: 64, offset: 3392)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1587, file: !1588, line: 176, baseType: !332, size: 64, offset: 3456)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1587, file: !1588, line: 177, baseType: !332, size: 64, offset: 3520)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1587, file: !1588, line: 178, baseType: !332, size: 64, offset: 3584)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1587, file: !1588, line: 179, baseType: !1351, size: 128, offset: 3648)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1587, file: !1588, line: 180, baseType: !87, size: 64, offset: 3776)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1587, file: !1588, line: 180, baseType: !87, size: 64, offset: 3840)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1587, file: !1588, line: 180, baseType: !87, size: 64, offset: 3904)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1587, file: !1588, line: 180, baseType: !87, size: 64, offset: 3968)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1587, file: !1588, line: 181, baseType: !87, size: 64, offset: 4032)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1587, file: !1588, line: 181, baseType: !87, size: 64, offset: 4096)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1587, file: !1588, line: 181, baseType: !87, size: 64, offset: 4160)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1587, file: !1588, line: 181, baseType: !87, size: 64, offset: 4224)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1587, file: !1588, line: 182, baseType: !87, size: 64, offset: 4288)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1587, file: !1588, line: 182, baseType: !87, size: 64, offset: 4352)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1587, file: !1588, line: 182, baseType: !87, size: 64, offset: 4416)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1587, file: !1588, line: 182, baseType: !87, size: 64, offset: 4480)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1587, file: !1588, line: 183, baseType: !87, size: 64, offset: 4544)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1587, file: !1588, line: 183, baseType: !87, size: 64, offset: 4608)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1587, file: !1588, line: 184, baseType: !1670, offset: 4672)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1671, line: 12, elements: !162)
!1671 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1587, file: !1588, line: 192, baseType: !334, size: 64, offset: 4672)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1587, file: !1588, line: 203, baseType: !1674, size: 2048, offset: 4736)
!1674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1675, size: 2048, elements: !1568)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1676, line: 43, size: 128, elements: !1677)
!1676 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1677 = !{!1678, !1679}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1675, file: !1676, line: 44, baseType: !236, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1675, file: !1676, line: 45, baseType: !236, size: 64, offset: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1587, file: !1588, line: 220, baseType: !401, size: 8, offset: 6784)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1587, file: !1588, line: 221, baseType: !1039, size: 16, offset: 6800)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1587, file: !1588, line: 222, baseType: !1039, size: 16, offset: 6816)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1587, file: !1588, line: 224, baseType: !888, size: 64, offset: 6848)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1587, file: !1588, line: 227, baseType: !1007, size: 192, offset: 6912)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1587, file: !1588, line: 233, baseType: !1007, size: 192, offset: 7104)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1051, file: !1052, line: 970, baseType: !1687, size: 64, offset: 9280)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1588, line: 20, size: 16576, elements: !1689)
!1689 = !{!1690, !1691, !1692, !1693}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1688, file: !1588, line: 21, baseType: !148)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1688, file: !1588, line: 22, baseType: !1063, size: 32)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1688, file: !1588, line: 23, baseType: !1314, size: 128, offset: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1688, file: !1588, line: 24, baseType: !1694, size: 16384, offset: 192)
!1694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1695, size: 16384, elements: !194)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1598, line: 49, size: 256, elements: !1696)
!1696 = !{!1697}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1695, file: !1598, line: 50, baseType: !1698, size: 256)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1598, line: 35, size: 256, elements: !1699)
!1699 = !{!1700, !1707, !1708, !1714}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1698, file: !1598, line: 37, baseType: !1701, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1702, line: 19, baseType: !1703)
!1702 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1702, line: 18, baseType: !1705)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{null, !123}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1698, file: !1598, line: 38, baseType: !87, size: 64, offset: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1698, file: !1598, line: 44, baseType: !1709, size: 64, offset: 128)
!1709 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1702, line: 22, baseType: !1710)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1702, line: 21, baseType: !1712)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{null}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1698, file: !1598, line: 46, baseType: !1602, size: 64, offset: 192)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1051, file: !1052, line: 971, baseType: !1602, size: 64, offset: 9344)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1051, file: !1052, line: 972, baseType: !1602, size: 64, offset: 9408)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1051, file: !1052, line: 974, baseType: !1602, size: 64, offset: 9472)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1051, file: !1052, line: 975, baseType: !1597, size: 192, offset: 9536)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1051, file: !1052, line: 976, baseType: !87, size: 64, offset: 9728)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1051, file: !1052, line: 977, baseType: !234, size: 64, offset: 9792)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1051, file: !1052, line: 978, baseType: !7, size: 32, offset: 9856)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1051, file: !1052, line: 980, baseType: !280, size: 64, offset: 9920)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1051, file: !1052, line: 989, baseType: !1724, size: 128, offset: 9984)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1725, line: 35, size: 128, elements: !1726)
!1725 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1726 = !{!1727, !1728, !1729}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1724, file: !1725, line: 36, baseType: !123, size: 32)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1724, file: !1725, line: 37, baseType: !662, size: 32, offset: 32)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1724, file: !1725, line: 38, baseType: !1730, size: 64, offset: 64)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1725, line: 23, flags: DIFlagFwdDecl)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1051, file: !1052, line: 992, baseType: !332, size: 64, offset: 10112)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1051, file: !1052, line: 993, baseType: !332, size: 64, offset: 10176)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1051, file: !1052, line: 996, baseType: !148, offset: 10240)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1051, file: !1052, line: 999, baseType: !695, offset: 10240)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1051, file: !1052, line: 1001, baseType: !1737, size: 64, offset: 10240)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1052, line: 636, size: 64, elements: !1738)
!1738 = !{!1739}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1737, file: !1052, line: 637, baseType: !1740, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1051, file: !1052, line: 1005, baseType: !667, size: 128, offset: 10304)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1051, file: !1052, line: 1007, baseType: !1050, size: 64, offset: 10432)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1051, file: !1052, line: 1009, baseType: !1744, size: 64, offset: 10496)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1052, line: 1009, flags: DIFlagFwdDecl)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1051, file: !1052, line: 1043, baseType: !97, size: 64, offset: 10560)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1051, file: !1052, line: 1046, baseType: !1748, size: 64, offset: 10624)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1052, line: 41, flags: DIFlagFwdDecl)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1051, file: !1052, line: 1050, baseType: !1751, size: 64, offset: 10688)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1052, line: 42, flags: DIFlagFwdDecl)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1051, file: !1052, line: 1054, baseType: !1754, size: 64, offset: 10752)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1052, line: 55, flags: DIFlagFwdDecl)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1051, file: !1052, line: 1056, baseType: !1757, size: 64, offset: 10816)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1052, line: 40, flags: DIFlagFwdDecl)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1051, file: !1052, line: 1058, baseType: !1760, size: 64, offset: 10880)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1762, line: 99, size: 704, elements: !1763)
!1762 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1763 = !{!1764, !1765, !1766, !1767, !1768, !1769, !1770, !1789, !1790}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1761, file: !1762, line: 100, baseType: !686, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1761, file: !1762, line: 101, baseType: !662, size: 32, offset: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1761, file: !1762, line: 102, baseType: !662, size: 32, offset: 96)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1761, file: !1762, line: 105, baseType: !148, offset: 128)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1761, file: !1762, line: 107, baseType: !93, size: 16, offset: 128)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1761, file: !1762, line: 109, baseType: !653, size: 128, offset: 192)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1761, file: !1762, line: 110, baseType: !1771, size: 64, offset: 320)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1762, line: 73, size: 448, elements: !1773)
!1773 = !{!1774, !1777, !1778, !1783, !1788}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1772, file: !1762, line: 74, baseType: !1775, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1762, line: 74, flags: DIFlagFwdDecl)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1772, file: !1762, line: 75, baseType: !1760, size: 64, offset: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, scope: !1772, file: !1762, line: 83, baseType: !1779, size: 128, offset: 128)
!1779 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1772, file: !1762, line: 83, size: 128, elements: !1780)
!1780 = !{!1781, !1782}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1779, file: !1762, line: 84, baseType: !134, size: 128)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1779, file: !1762, line: 85, baseType: !849, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, scope: !1772, file: !1762, line: 87, baseType: !1784, size: 128, offset: 256)
!1784 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1772, file: !1762, line: 87, size: 128, elements: !1785)
!1785 = !{!1786, !1787}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1784, file: !1762, line: 88, baseType: !553, size: 128)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1784, file: !1762, line: 89, baseType: !277, size: 128, align: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1772, file: !1762, line: 92, baseType: !7, size: 32, offset: 384)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1761, file: !1762, line: 111, baseType: !549, size: 64, offset: 384)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1761, file: !1762, line: 113, baseType: !1791, size: 256, offset: 448)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1792, line: 102, size: 256, elements: !1793)
!1792 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1793 = !{!1794, !1795, !1796}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1791, file: !1792, line: 103, baseType: !686, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1791, file: !1792, line: 104, baseType: !134, size: 128, offset: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1791, file: !1792, line: 105, baseType: !1797, size: 64, offset: 192)
!1797 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1792, line: 21, baseType: !1798)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{null, !1801}
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1051, file: !1052, line: 1061, baseType: !1803, size: 64, offset: 10944)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1052, line: 43, flags: DIFlagFwdDecl)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1051, file: !1052, line: 1064, baseType: !87, size: 64, offset: 11008)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1051, file: !1052, line: 1065, baseType: !1807, size: 64, offset: 11072)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1598, line: 14, baseType: !1809)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1598, line: 12, size: 384, elements: !1810)
!1810 = !{!1811}
!1811 = !DIDerivedType(tag: DW_TAG_member, scope: !1809, file: !1598, line: 13, baseType: !1812, size: 384)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1809, file: !1598, line: 13, size: 384, elements: !1813)
!1813 = !{!1814, !1815, !1816, !1817}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1812, file: !1598, line: 13, baseType: !123, size: 32)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1812, file: !1598, line: 13, baseType: !123, size: 32, offset: 32)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1812, file: !1598, line: 13, baseType: !123, size: 32, offset: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1812, file: !1598, line: 13, baseType: !1818, size: 256, offset: 128)
!1818 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1819, line: 32, size: 256, elements: !1820)
!1819 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1820 = !{!1821, !1826, !1839, !1845, !1854, !1874, !1879}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1818, file: !1819, line: 37, baseType: !1822, size: 64)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1818, file: !1819, line: 34, size: 64, elements: !1823)
!1823 = !{!1824, !1825}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1822, file: !1819, line: 35, baseType: !1293, size: 32)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1822, file: !1819, line: 36, baseType: !352, size: 32, offset: 32)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1818, file: !1819, line: 45, baseType: !1827, size: 192)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1818, file: !1819, line: 40, size: 192, elements: !1828)
!1828 = !{!1829, !1831, !1832, !1838}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1827, file: !1819, line: 41, baseType: !1830, size: 32)
!1830 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !222, line: 95, baseType: !123)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1827, file: !1819, line: 42, baseType: !123, size: 32, offset: 32)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1827, file: !1819, line: 43, baseType: !1833, size: 64, offset: 64)
!1833 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1819, line: 11, baseType: !1834)
!1834 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1819, line: 8, size: 64, elements: !1835)
!1835 = !{!1836, !1837}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1834, file: !1819, line: 9, baseType: !123, size: 32)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1834, file: !1819, line: 10, baseType: !97, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1827, file: !1819, line: 44, baseType: !123, size: 32, offset: 128)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1818, file: !1819, line: 52, baseType: !1840, size: 128)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1818, file: !1819, line: 48, size: 128, elements: !1841)
!1841 = !{!1842, !1843, !1844}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1840, file: !1819, line: 49, baseType: !1293, size: 32)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1840, file: !1819, line: 50, baseType: !352, size: 32, offset: 32)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1840, file: !1819, line: 51, baseType: !1833, size: 64, offset: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1818, file: !1819, line: 61, baseType: !1846, size: 256)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1818, file: !1819, line: 55, size: 256, elements: !1847)
!1847 = !{!1848, !1849, !1850, !1851, !1853}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1846, file: !1819, line: 56, baseType: !1293, size: 32)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1846, file: !1819, line: 57, baseType: !352, size: 32, offset: 32)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1846, file: !1819, line: 58, baseType: !123, size: 32, offset: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1846, file: !1819, line: 59, baseType: !1852, size: 64, offset: 128)
!1852 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !222, line: 94, baseType: !223)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1846, file: !1819, line: 60, baseType: !1852, size: 64, offset: 192)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1818, file: !1819, line: 95, baseType: !1855, size: 256)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1818, file: !1819, line: 64, size: 256, elements: !1856)
!1856 = !{!1857, !1858}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1855, file: !1819, line: 65, baseType: !97, size: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, scope: !1855, file: !1819, line: 77, baseType: !1859, size: 192, offset: 64)
!1859 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1855, file: !1819, line: 77, size: 192, elements: !1860)
!1860 = !{!1861, !1862, !1869}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1859, file: !1819, line: 82, baseType: !1039, size: 16)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1859, file: !1819, line: 88, baseType: !1863, size: 192)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1859, file: !1819, line: 84, size: 192, elements: !1864)
!1864 = !{!1865, !1867, !1868}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1863, file: !1819, line: 85, baseType: !1866, size: 64)
!1866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 64, elements: !1163)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1863, file: !1819, line: 86, baseType: !97, size: 64, offset: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1863, file: !1819, line: 87, baseType: !97, size: 64, offset: 128)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1859, file: !1819, line: 93, baseType: !1870, size: 96)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1859, file: !1819, line: 90, size: 96, elements: !1871)
!1871 = !{!1872, !1873}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1870, file: !1819, line: 91, baseType: !1866, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1870, file: !1819, line: 92, baseType: !329, size: 32, offset: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1818, file: !1819, line: 101, baseType: !1875, size: 128)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1818, file: !1819, line: 98, size: 128, elements: !1876)
!1876 = !{!1877, !1878}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1875, file: !1819, line: 99, baseType: !100, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1875, file: !1819, line: 100, baseType: !123, size: 32, offset: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1818, file: !1819, line: 108, baseType: !1880, size: 128)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1818, file: !1819, line: 104, size: 128, elements: !1881)
!1881 = !{!1882, !1883, !1884}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1880, file: !1819, line: 105, baseType: !97, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1880, file: !1819, line: 106, baseType: !123, size: 32, offset: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1880, file: !1819, line: 107, baseType: !7, size: 32, offset: 96)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1051, file: !1052, line: 1067, baseType: !1670, offset: 11136)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1051, file: !1052, line: 1099, baseType: !1887, size: 64, offset: 11136)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1052, line: 56, flags: DIFlagFwdDecl)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1051, file: !1052, line: 1103, baseType: !134, size: 128, offset: 11200)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1051, file: !1052, line: 1104, baseType: !1891, size: 64, offset: 11328)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1052, line: 46, flags: DIFlagFwdDecl)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1051, file: !1052, line: 1105, baseType: !1007, size: 192, offset: 11392)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1051, file: !1052, line: 1106, baseType: !7, size: 32, offset: 11584)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1051, file: !1052, line: 1109, baseType: !1896, size: 128, offset: 11648)
!1896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1897, size: 128, elements: !1402)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1052, line: 51, flags: DIFlagFwdDecl)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1051, file: !1052, line: 1110, baseType: !1007, size: 192, offset: 11776)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1051, file: !1052, line: 1111, baseType: !134, size: 128, offset: 11968)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1051, file: !1052, line: 1173, baseType: !1902, size: 64, offset: 12096)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1904, line: 62, size: 256, align: 256, elements: !1905)
!1904 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1905 = !{!1906, !1907, !1908, !1913}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1903, file: !1904, line: 75, baseType: !329, size: 32)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1903, file: !1904, line: 90, baseType: !329, size: 32, offset: 32)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1903, file: !1904, line: 124, baseType: !1909, size: 64, offset: 64)
!1909 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1903, file: !1904, line: 109, size: 64, elements: !1910)
!1910 = !{!1911, !1912}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1909, file: !1904, line: 110, baseType: !333, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1909, file: !1904, line: 112, baseType: !333, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1903, file: !1904, line: 144, baseType: !329, size: 32, offset: 128)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1051, file: !1052, line: 1174, baseType: !327, size: 32, offset: 12160)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1051, file: !1052, line: 1179, baseType: !87, size: 64, offset: 12224)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1051, file: !1052, line: 1182, baseType: !1917, size: 128, offset: 12288)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !985, line: 76, size: 128, elements: !1918)
!1918 = !{!1919, !1924, !1925}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1917, file: !985, line: 85, baseType: !1920, size: 64)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1921, line: 7, size: 64, elements: !1922)
!1921 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1922 = !{!1923}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1920, file: !1921, line: 12, baseType: !1200, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1917, file: !985, line: 88, baseType: !401, size: 8, offset: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1917, file: !985, line: 95, baseType: !401, size: 8, offset: 72)
!1926 = !DIDerivedType(tag: DW_TAG_member, scope: !1051, file: !1052, line: 1184, baseType: !1927, size: 128, offset: 12416)
!1927 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1051, file: !1052, line: 1184, size: 128, elements: !1928)
!1928 = !{!1929, !1930}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1927, file: !1052, line: 1185, baseType: !1063, size: 32)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1927, file: !1052, line: 1186, baseType: !277, size: 128, align: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1051, file: !1052, line: 1190, baseType: !1932, size: 64, offset: 12544)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1052, line: 53, flags: DIFlagFwdDecl)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1051, file: !1052, line: 1192, baseType: !1935, size: 128, offset: 12608)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !985, line: 64, size: 128, elements: !1936)
!1936 = !{!1937, !1938, !1939}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1935, file: !985, line: 65, baseType: !635, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1935, file: !985, line: 67, baseType: !329, size: 32, offset: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1935, file: !985, line: 68, baseType: !329, size: 32, offset: 96)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1051, file: !1052, line: 1206, baseType: !123, size: 32, offset: 12736)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1051, file: !1052, line: 1207, baseType: !123, size: 32, offset: 12768)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1051, file: !1052, line: 1209, baseType: !87, size: 64, offset: 12800)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1051, file: !1052, line: 1219, baseType: !332, size: 64, offset: 12864)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1051, file: !1052, line: 1220, baseType: !332, size: 64, offset: 12928)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1051, file: !1052, line: 1317, baseType: !123, size: 32, offset: 12992)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1051, file: !1052, line: 1319, baseType: !1050, size: 64, offset: 13056)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1051, file: !1052, line: 1322, baseType: !1948, size: 64, offset: 13120)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1950, line: 9, flags: DIFlagFwdDecl)
!1950 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1051, file: !1052, line: 1326, baseType: !1063, size: 32, offset: 13184)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1051, file: !1052, line: 1342, baseType: !97, size: 64, offset: 13248)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1051, file: !1052, line: 1343, baseType: !333, size: 64, offset: 13312)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1051, file: !1052, line: 1344, baseType: !332, size: 64, offset: 13376)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1051, file: !1052, line: 1345, baseType: !333, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1051, file: !1052, line: 1346, baseType: !333, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1051, file: !1052, line: 1347, baseType: !333, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1051, file: !1052, line: 1348, baseType: !277, size: 128, align: 64, offset: 13504)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1051, file: !1052, line: 1358, baseType: !1960, size: 34816, offset: 13824)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1961, line: 485, size: 34816, elements: !1962)
!1961 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1962 = !{!1963, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1992, !1993, !1994, !1995, !1996, !1997, !2000, !2001, !2002}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1960, file: !1961, line: 487, baseType: !1964, size: 192)
!1964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1965, size: 192, elements: !190)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1966, line: 16, size: 64, elements: !1967)
!1966 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1967 = !{!1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1965, file: !1966, line: 17, baseType: !774, size: 16)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1965, file: !1966, line: 18, baseType: !774, size: 16, offset: 16)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1965, file: !1966, line: 19, baseType: !774, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1965, file: !1966, line: 19, baseType: !774, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1965, file: !1966, line: 19, baseType: !774, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1965, file: !1966, line: 19, baseType: !774, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1965, file: !1966, line: 19, baseType: !774, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1965, file: !1966, line: 20, baseType: !774, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1965, file: !1966, line: 20, baseType: !774, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1965, file: !1966, line: 20, baseType: !774, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1965, file: !1966, line: 20, baseType: !774, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1965, file: !1966, line: 20, baseType: !774, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1965, file: !1966, line: 20, baseType: !774, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1960, file: !1961, line: 491, baseType: !87, size: 64, offset: 192)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1960, file: !1961, line: 495, baseType: !93, size: 16, offset: 256)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1960, file: !1961, line: 496, baseType: !93, size: 16, offset: 272)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1960, file: !1961, line: 497, baseType: !93, size: 16, offset: 288)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1960, file: !1961, line: 498, baseType: !93, size: 16, offset: 304)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1960, file: !1961, line: 502, baseType: !87, size: 64, offset: 320)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1960, file: !1961, line: 503, baseType: !87, size: 64, offset: 384)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1960, file: !1961, line: 514, baseType: !1989, size: 256, offset: 448)
!1989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1990, size: 256, elements: !989)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1961, line: 483, flags: DIFlagFwdDecl)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1960, file: !1961, line: 516, baseType: !87, size: 64, offset: 704)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1960, file: !1961, line: 518, baseType: !87, size: 64, offset: 768)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1960, file: !1961, line: 520, baseType: !87, size: 64, offset: 832)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1960, file: !1961, line: 521, baseType: !87, size: 64, offset: 896)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1960, file: !1961, line: 522, baseType: !87, size: 64, offset: 960)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1960, file: !1961, line: 528, baseType: !1998, size: 64, offset: 1024)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1961, line: 10, flags: DIFlagFwdDecl)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1960, file: !1961, line: 535, baseType: !87, size: 64, offset: 1088)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1960, file: !1961, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1960, file: !1961, line: 540, baseType: !2003, size: 33280, offset: 1536)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2004, line: 317, size: 33280, elements: !2005)
!2004 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2005 = !{!2006, !2007, !2008}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2003, file: !2004, line: 330, baseType: !7, size: 32)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2003, file: !2004, line: 337, baseType: !87, size: 64, offset: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2003, file: !2004, line: 348, baseType: !2009, size: 32768, offset: 512)
!2009 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2004, line: 304, size: 32768, elements: !2010)
!2010 = !{!2011, !2026, !2065, !2115, !2128}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2009, file: !2004, line: 305, baseType: !2012, size: 896)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2004, line: 12, size: 896, elements: !2013)
!2013 = !{!2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2025}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2012, file: !2004, line: 13, baseType: !327, size: 32)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2012, file: !2004, line: 14, baseType: !327, size: 32, offset: 32)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2012, file: !2004, line: 15, baseType: !327, size: 32, offset: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2012, file: !2004, line: 16, baseType: !327, size: 32, offset: 96)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2012, file: !2004, line: 17, baseType: !327, size: 32, offset: 128)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2012, file: !2004, line: 18, baseType: !327, size: 32, offset: 160)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2012, file: !2004, line: 19, baseType: !327, size: 32, offset: 192)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2012, file: !2004, line: 22, baseType: !2022, size: 640, offset: 224)
!2022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 640, elements: !2023)
!2023 = !{!2024}
!2024 = !DISubrange(count: 20)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2012, file: !2004, line: 25, baseType: !327, size: 32, offset: 864)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2009, file: !2004, line: 306, baseType: !2027, size: 4096, align: 128)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2004, line: 34, size: 4096, align: 128, elements: !2028)
!2028 = !{!2029, !2030, !2031, !2032, !2033, !2048, !2049, !2050, !2054, !2056, !2060}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2027, file: !2004, line: 35, baseType: !774, size: 16)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2027, file: !2004, line: 36, baseType: !774, size: 16, offset: 16)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2027, file: !2004, line: 37, baseType: !774, size: 16, offset: 32)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2027, file: !2004, line: 38, baseType: !774, size: 16, offset: 48)
!2033 = !DIDerivedType(tag: DW_TAG_member, scope: !2027, file: !2004, line: 39, baseType: !2034, size: 128, offset: 64)
!2034 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2027, file: !2004, line: 39, size: 128, elements: !2035)
!2035 = !{!2036, !2041}
!2036 = !DIDerivedType(tag: DW_TAG_member, scope: !2034, file: !2004, line: 40, baseType: !2037, size: 128)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2034, file: !2004, line: 40, size: 128, elements: !2038)
!2038 = !{!2039, !2040}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2037, file: !2004, line: 41, baseType: !332, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2037, file: !2004, line: 42, baseType: !332, size: 64, offset: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, scope: !2034, file: !2004, line: 44, baseType: !2042, size: 128)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2034, file: !2004, line: 44, size: 128, elements: !2043)
!2043 = !{!2044, !2045, !2046, !2047}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2042, file: !2004, line: 45, baseType: !327, size: 32)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2042, file: !2004, line: 46, baseType: !327, size: 32, offset: 32)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2042, file: !2004, line: 47, baseType: !327, size: 32, offset: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2042, file: !2004, line: 48, baseType: !327, size: 32, offset: 96)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2027, file: !2004, line: 51, baseType: !327, size: 32, offset: 192)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2027, file: !2004, line: 52, baseType: !327, size: 32, offset: 224)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2027, file: !2004, line: 55, baseType: !2051, size: 1024, offset: 256)
!2051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 1024, elements: !2052)
!2052 = !{!2053}
!2053 = !DISubrange(count: 32)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2027, file: !2004, line: 58, baseType: !2055, size: 2048, offset: 1280)
!2055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 2048, elements: !194)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2027, file: !2004, line: 60, baseType: !2057, size: 384, offset: 3328)
!2057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 384, elements: !2058)
!2058 = !{!2059}
!2059 = !DISubrange(count: 12)
!2060 = !DIDerivedType(tag: DW_TAG_member, scope: !2027, file: !2004, line: 62, baseType: !2061, size: 384, offset: 3712)
!2061 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2027, file: !2004, line: 62, size: 384, elements: !2062)
!2062 = !{!2063, !2064}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2061, file: !2004, line: 63, baseType: !2057, size: 384)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2061, file: !2004, line: 64, baseType: !2057, size: 384)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2009, file: !2004, line: 307, baseType: !2066, size: 1088)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2004, line: 79, size: 1088, elements: !2067)
!2067 = !{!2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2114}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2066, file: !2004, line: 80, baseType: !327, size: 32)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2066, file: !2004, line: 81, baseType: !327, size: 32, offset: 32)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2066, file: !2004, line: 82, baseType: !327, size: 32, offset: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2066, file: !2004, line: 83, baseType: !327, size: 32, offset: 96)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2066, file: !2004, line: 84, baseType: !327, size: 32, offset: 128)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2066, file: !2004, line: 85, baseType: !327, size: 32, offset: 160)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2066, file: !2004, line: 86, baseType: !327, size: 32, offset: 192)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2066, file: !2004, line: 88, baseType: !2022, size: 640, offset: 224)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2066, file: !2004, line: 89, baseType: !1185, size: 8, offset: 864)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2066, file: !2004, line: 90, baseType: !1185, size: 8, offset: 872)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2066, file: !2004, line: 91, baseType: !1185, size: 8, offset: 880)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2066, file: !2004, line: 92, baseType: !1185, size: 8, offset: 888)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2066, file: !2004, line: 93, baseType: !1185, size: 8, offset: 896)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2066, file: !2004, line: 94, baseType: !1185, size: 8, offset: 904)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2066, file: !2004, line: 95, baseType: !2083, size: 64, offset: 960)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2085, line: 11, size: 128, elements: !2086)
!2085 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2086 = !{!2087, !2088}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2084, file: !2085, line: 12, baseType: !100, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2084, file: !2085, line: 13, baseType: !2089, size: 64, offset: 64)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2091, line: 56, size: 1344, elements: !2092)
!2091 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2092 = !{!2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2090, file: !2091, line: 61, baseType: !87, size: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2090, file: !2091, line: 62, baseType: !87, size: 64, offset: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2090, file: !2091, line: 63, baseType: !87, size: 64, offset: 128)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2090, file: !2091, line: 64, baseType: !87, size: 64, offset: 192)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2090, file: !2091, line: 65, baseType: !87, size: 64, offset: 256)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2090, file: !2091, line: 66, baseType: !87, size: 64, offset: 320)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2090, file: !2091, line: 68, baseType: !87, size: 64, offset: 384)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2090, file: !2091, line: 69, baseType: !87, size: 64, offset: 448)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2090, file: !2091, line: 70, baseType: !87, size: 64, offset: 512)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2090, file: !2091, line: 71, baseType: !87, size: 64, offset: 576)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2090, file: !2091, line: 72, baseType: !87, size: 64, offset: 640)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2090, file: !2091, line: 73, baseType: !87, size: 64, offset: 704)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2090, file: !2091, line: 74, baseType: !87, size: 64, offset: 768)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2090, file: !2091, line: 75, baseType: !87, size: 64, offset: 832)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2090, file: !2091, line: 76, baseType: !87, size: 64, offset: 896)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2090, file: !2091, line: 81, baseType: !87, size: 64, offset: 960)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2090, file: !2091, line: 83, baseType: !87, size: 64, offset: 1024)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2090, file: !2091, line: 84, baseType: !87, size: 64, offset: 1088)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2090, file: !2091, line: 85, baseType: !87, size: 64, offset: 1152)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2090, file: !2091, line: 86, baseType: !87, size: 64, offset: 1216)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2090, file: !2091, line: 87, baseType: !87, size: 64, offset: 1280)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2066, file: !2004, line: 96, baseType: !327, size: 32, offset: 1024)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2009, file: !2004, line: 308, baseType: !2116, size: 4608, align: 512)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2004, line: 289, size: 4608, align: 512, elements: !2117)
!2117 = !{!2118, !2119, !2126}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2116, file: !2004, line: 290, baseType: !2027, size: 4096, align: 128)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2116, file: !2004, line: 291, baseType: !2120, size: 512, offset: 4096)
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2004, line: 268, size: 512, elements: !2121)
!2121 = !{!2122, !2123, !2124}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2120, file: !2004, line: 269, baseType: !332, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2120, file: !2004, line: 270, baseType: !332, size: 64, offset: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2120, file: !2004, line: 271, baseType: !2125, size: 384, offset: 128)
!2125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 384, elements: !1458)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2116, file: !2004, line: 292, baseType: !2127, offset: 4608)
!2127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1185, elements: !1556)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2009, file: !2004, line: 309, baseType: !2129, size: 32768)
!2129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1185, size: 32768, elements: !2130)
!2130 = !{!2131}
!2131 = !DISubrange(count: 4096)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1047, file: !637, line: 378, baseType: !2133, size: 64, offset: 64)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1043, file: !637, line: 384, baseType: !1335, size: 192, offset: 192)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !892, file: !637, line: 500, baseType: !148, offset: 6656)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !892, file: !637, line: 501, baseType: !2137, size: 64, offset: 6656)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !637, line: 387, flags: DIFlagFwdDecl)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !892, file: !637, line: 516, baseType: !1546, size: 64, offset: 6720)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !892, file: !637, line: 519, baseType: !264, size: 64, offset: 6784)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !892, file: !637, line: 521, baseType: !2142, size: 64, offset: 6848)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !637, line: 521, flags: DIFlagFwdDecl)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !892, file: !637, line: 545, baseType: !662, size: 32, offset: 6912)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !892, file: !637, line: 548, baseType: !401, size: 8, offset: 6944)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !892, file: !637, line: 550, baseType: !2147, offset: 6952)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2148, line: 142, elements: !162)
!2148 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !892, file: !637, line: 554, baseType: !1791, size: 256, offset: 6976)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !892, file: !637, line: 557, baseType: !327, size: 32, offset: 7232)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !889, file: !637, line: 565, baseType: !2152, offset: 7296)
!2152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, elements: !2153)
!2153 = !{!2154}
!2154 = !DISubrange(count: -1)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !885, file: !637, line: 151, baseType: !662, size: 32)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !878, file: !637, line: 156, baseType: !148, offset: 256)
!2157 = !DIDerivedType(tag: DW_TAG_member, scope: !641, file: !637, line: 159, baseType: !2158, size: 128)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !641, file: !637, line: 159, size: 128, elements: !2159)
!2159 = !{!2160, !2163}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2158, file: !637, line: 161, baseType: !2161, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !637, line: 161, flags: DIFlagFwdDecl)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2158, file: !637, line: 162, baseType: !97, size: 64, offset: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !641, file: !637, line: 176, baseType: !277, size: 128, align: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, scope: !636, file: !637, line: 179, baseType: !2166, size: 32, offset: 384)
!2166 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !636, file: !637, line: 179, size: 32, elements: !2167)
!2167 = !{!2168, !2169, !2170, !2171}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2166, file: !637, line: 184, baseType: !662, size: 32)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2166, file: !637, line: 192, baseType: !7, size: 32)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2166, file: !637, line: 194, baseType: !7, size: 32)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2166, file: !637, line: 195, baseType: !123, size: 32)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !636, file: !637, line: 199, baseType: !662, size: 32, offset: 416)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !571, file: !31, line: 1964, baseType: !2174, size: 64, offset: 1344)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{!100, !510, !2177}
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2179, line: 12, size: 256, elements: !2180)
!2179 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2180 = !{!2181, !2182, !2183, !2184, !2185}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2178, file: !2179, line: 13, baseType: !658, size: 32)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2178, file: !2179, line: 16, baseType: !123, size: 32, offset: 32)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2178, file: !2179, line: 23, baseType: !87, size: 64, offset: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2178, file: !2179, line: 30, baseType: !87, size: 64, offset: 128)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2178, file: !2179, line: 33, baseType: !2186, size: 64, offset: 192)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !637, line: 27, flags: DIFlagFwdDecl)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !571, file: !31, line: 1966, baseType: !2174, size: 64, offset: 1408)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !511, file: !31, line: 1424, baseType: !2190, size: 64, offset: 448)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2192)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !25, line: 322, size: 704, elements: !2193)
!2193 = !{!2194, !2240, !2244, !2248, !2249, !2250, !2251, !2252, !2257, !2262, !2266}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2192, file: !25, line: 323, baseType: !2195, size: 64)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!123, !2198}
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !25, line: 294, size: 1600, elements: !2200)
!2200 = !{!2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2225, !2226, !2227}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2199, file: !25, line: 295, baseType: !553, size: 128)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2199, file: !25, line: 296, baseType: !134, size: 128, offset: 128)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2199, file: !25, line: 297, baseType: !134, size: 128, offset: 256)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2199, file: !25, line: 298, baseType: !134, size: 128, offset: 384)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2199, file: !25, line: 299, baseType: !1007, size: 192, offset: 512)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2199, file: !25, line: 300, baseType: !148, offset: 704)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2199, file: !25, line: 301, baseType: !662, size: 32, offset: 704)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2199, file: !25, line: 302, baseType: !510, size: 64, offset: 768)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2199, file: !25, line: 303, baseType: !2210, size: 64, offset: 832)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !25, line: 68, size: 64, elements: !2211)
!2211 = !{!2212, !2224}
!2212 = !DIDerivedType(tag: DW_TAG_member, scope: !2210, file: !25, line: 69, baseType: !2213, size: 32)
!2213 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2210, file: !25, line: 69, size: 32, elements: !2214)
!2214 = !{!2215, !2216, !2217}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2213, file: !25, line: 70, baseType: !346, size: 32)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2213, file: !25, line: 71, baseType: !354, size: 32)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2213, file: !25, line: 72, baseType: !2218, size: 32)
!2218 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2219, line: 24, baseType: !2220)
!2219 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2219, line: 22, size: 32, elements: !2221)
!2221 = !{!2222}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2220, file: !2219, line: 23, baseType: !2223, size: 32)
!2223 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2219, line: 20, baseType: !352)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2210, file: !25, line: 74, baseType: !24, size: 32, offset: 32)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2199, file: !25, line: 304, baseType: !442, size: 64, offset: 896)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2199, file: !25, line: 305, baseType: !87, size: 64, offset: 960)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2199, file: !25, line: 306, baseType: !2228, size: 576, offset: 1024)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !25, line: 205, size: 576, elements: !2229)
!2229 = !{!2230, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2228, file: !25, line: 206, baseType: !2231, size: 64)
!2231 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !25, line: 66, baseType: !444)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2228, file: !25, line: 207, baseType: !2231, size: 64, offset: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2228, file: !25, line: 208, baseType: !2231, size: 64, offset: 128)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2228, file: !25, line: 209, baseType: !2231, size: 64, offset: 192)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2228, file: !25, line: 210, baseType: !2231, size: 64, offset: 256)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2228, file: !25, line: 211, baseType: !2231, size: 64, offset: 320)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2228, file: !25, line: 212, baseType: !2231, size: 64, offset: 384)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2228, file: !25, line: 213, baseType: !450, size: 64, offset: 448)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2228, file: !25, line: 214, baseType: !450, size: 64, offset: 512)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2192, file: !25, line: 324, baseType: !2241, size: 64, offset: 64)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!2198, !510, !123}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2192, file: !25, line: 325, baseType: !2245, size: 64, offset: 128)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DISubroutineType(types: !2247)
!2247 = !{null, !2198}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2192, file: !25, line: 326, baseType: !2195, size: 64, offset: 192)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2192, file: !25, line: 327, baseType: !2195, size: 64, offset: 256)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2192, file: !25, line: 328, baseType: !2195, size: 64, offset: 320)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2192, file: !25, line: 329, baseType: !599, size: 64, offset: 384)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2192, file: !25, line: 332, baseType: !2253, size: 64, offset: 448)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = !DISubroutineType(types: !2255)
!2255 = !{!2256, !340}
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2192, file: !25, line: 333, baseType: !2258, size: 64, offset: 512)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DISubroutineType(types: !2260)
!2260 = !{!123, !340, !2261}
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2192, file: !25, line: 335, baseType: !2263, size: 64, offset: 576)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{!123, !340, !2256}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2192, file: !25, line: 337, baseType: !2267, size: 64, offset: 640)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{!123, !510, !2270}
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !511, file: !31, line: 1425, baseType: !2272, size: 64, offset: 512)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2274)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !25, line: 428, size: 704, elements: !2275)
!2275 = !{!2276, !2280, !2281, !2285, !2286, !2287, !2302, !2325, !2329, !2330, !2353}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2274, file: !25, line: 429, baseType: !2277, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{!123, !510, !123, !123, !460}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2274, file: !25, line: 430, baseType: !599, size: 64, offset: 64)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2274, file: !25, line: 431, baseType: !2282, size: 64, offset: 128)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{!123, !510, !7}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2274, file: !25, line: 432, baseType: !2282, size: 64, offset: 192)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2274, file: !25, line: 433, baseType: !599, size: 64, offset: 256)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2274, file: !25, line: 434, baseType: !2288, size: 64, offset: 320)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{!123, !510, !123, !2291}
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !25, line: 415, size: 256, elements: !2293)
!2293 = !{!2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2292, file: !25, line: 416, baseType: !123, size: 32)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2292, file: !25, line: 417, baseType: !7, size: 32, offset: 32)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2292, file: !25, line: 418, baseType: !7, size: 32, offset: 64)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2292, file: !25, line: 420, baseType: !7, size: 32, offset: 96)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2292, file: !25, line: 421, baseType: !7, size: 32, offset: 128)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2292, file: !25, line: 422, baseType: !7, size: 32, offset: 160)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2292, file: !25, line: 423, baseType: !7, size: 32, offset: 192)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2292, file: !25, line: 424, baseType: !7, size: 32, offset: 224)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2274, file: !25, line: 435, baseType: !2303, size: 64, offset: 384)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{!123, !510, !2210, !2306}
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !25, line: 343, size: 960, elements: !2308)
!2308 = !{!2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2307, file: !25, line: 344, baseType: !123, size: 32)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2307, file: !25, line: 345, baseType: !332, size: 64, offset: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2307, file: !25, line: 346, baseType: !332, size: 64, offset: 128)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2307, file: !25, line: 347, baseType: !332, size: 64, offset: 192)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2307, file: !25, line: 348, baseType: !332, size: 64, offset: 256)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2307, file: !25, line: 349, baseType: !332, size: 64, offset: 320)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2307, file: !25, line: 350, baseType: !332, size: 64, offset: 384)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2307, file: !25, line: 351, baseType: !692, size: 64, offset: 448)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2307, file: !25, line: 353, baseType: !692, size: 64, offset: 512)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2307, file: !25, line: 354, baseType: !123, size: 32, offset: 576)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2307, file: !25, line: 355, baseType: !123, size: 32, offset: 608)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2307, file: !25, line: 356, baseType: !332, size: 64, offset: 640)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2307, file: !25, line: 357, baseType: !332, size: 64, offset: 704)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2307, file: !25, line: 358, baseType: !332, size: 64, offset: 768)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2307, file: !25, line: 359, baseType: !692, size: 64, offset: 832)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2307, file: !25, line: 360, baseType: !123, size: 32, offset: 896)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2274, file: !25, line: 436, baseType: !2326, size: 64, offset: 448)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{!123, !510, !2270, !2306}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2274, file: !25, line: 438, baseType: !2303, size: 64, offset: 512)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2274, file: !25, line: 439, baseType: !2331, size: 64, offset: 576)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{!123, !510, !2334}
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !25, line: 409, size: 1408, elements: !2336)
!2336 = !{!2337, !2338}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2335, file: !25, line: 410, baseType: !7, size: 32)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2335, file: !25, line: 411, baseType: !2339, size: 1344, offset: 64)
!2339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2340, size: 1344, elements: !190)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !25, line: 395, size: 448, elements: !2341)
!2341 = !{!2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2352}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2340, file: !25, line: 396, baseType: !7, size: 32)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2340, file: !25, line: 397, baseType: !7, size: 32, offset: 32)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2340, file: !25, line: 399, baseType: !7, size: 32, offset: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2340, file: !25, line: 400, baseType: !7, size: 32, offset: 96)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2340, file: !25, line: 401, baseType: !7, size: 32, offset: 128)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2340, file: !25, line: 402, baseType: !7, size: 32, offset: 160)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2340, file: !25, line: 403, baseType: !7, size: 32, offset: 192)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2340, file: !25, line: 404, baseType: !334, size: 64, offset: 256)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2340, file: !25, line: 405, baseType: !2351, size: 64, offset: 320)
!2351 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !135, line: 126, baseType: !332)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2340, file: !25, line: 406, baseType: !2351, size: 64, offset: 384)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2274, file: !25, line: 440, baseType: !2282, size: 64, offset: 640)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !511, file: !31, line: 1426, baseType: !2355, size: 64, offset: 576)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2357)
!2357 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !31, line: 49, flags: DIFlagFwdDecl)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !511, file: !31, line: 1427, baseType: !87, size: 64, offset: 640)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !511, file: !31, line: 1428, baseType: !87, size: 64, offset: 704)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !511, file: !31, line: 1429, baseType: !87, size: 64, offset: 768)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !511, file: !31, line: 1430, baseType: !294, size: 64, offset: 832)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !511, file: !31, line: 1431, baseType: !682, size: 256, offset: 896)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !511, file: !31, line: 1432, baseType: !123, size: 32, offset: 1152)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !511, file: !31, line: 1433, baseType: !662, size: 32, offset: 1184)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !511, file: !31, line: 1437, baseType: !2366, size: 64, offset: 1216)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2369)
!2369 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !31, line: 1437, flags: DIFlagFwdDecl)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !511, file: !31, line: 1449, baseType: !2371, size: 64, offset: 1280)
!2371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !310, line: 34, size: 64, elements: !2372)
!2372 = !{!2373}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2371, file: !310, line: 35, baseType: !313, size: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !511, file: !31, line: 1450, baseType: !134, size: 128, offset: 1344)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !511, file: !31, line: 1451, baseType: !2376, size: 64, offset: 1472)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !31, line: 699, flags: DIFlagFwdDecl)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !511, file: !31, line: 1452, baseType: !1757, size: 64, offset: 1536)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !511, file: !31, line: 1453, baseType: !2380, size: 64, offset: 1600)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !31, line: 1453, flags: DIFlagFwdDecl)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !511, file: !31, line: 1454, baseType: !553, size: 128, offset: 1664)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !511, file: !31, line: 1455, baseType: !7, size: 32, offset: 1792)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !511, file: !31, line: 1456, baseType: !2385, size: 2432, offset: 1856)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !25, line: 518, size: 2432, elements: !2386)
!2386 = !{!2387, !2388, !2389, !2391, !2423}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2385, file: !25, line: 519, baseType: !7, size: 32)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2385, file: !25, line: 520, baseType: !682, size: 256, offset: 64)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2385, file: !25, line: 521, baseType: !2390, size: 192, offset: 320)
!2390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 192, elements: !190)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2385, file: !25, line: 522, baseType: !2392, size: 1728, offset: 512)
!2392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2393, size: 1728, elements: !190)
!2393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !25, line: 222, size: 576, elements: !2394)
!2394 = !{!2395, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2393, file: !25, line: 223, baseType: !2396, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !25, line: 443, size: 256, elements: !2398)
!2398 = !{!2399, !2400, !2413, !2414}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2397, file: !25, line: 444, baseType: !123, size: 32)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2397, file: !25, line: 445, baseType: !2401, size: 64, offset: 64)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2403)
!2403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !25, line: 310, size: 512, elements: !2404)
!2404 = !{!2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2403, file: !25, line: 311, baseType: !599, size: 64)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2403, file: !25, line: 312, baseType: !599, size: 64, offset: 64)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2403, file: !25, line: 313, baseType: !599, size: 64, offset: 128)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2403, file: !25, line: 314, baseType: !599, size: 64, offset: 192)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2403, file: !25, line: 315, baseType: !2195, size: 64, offset: 256)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2403, file: !25, line: 316, baseType: !2195, size: 64, offset: 320)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2403, file: !25, line: 317, baseType: !2195, size: 64, offset: 384)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2403, file: !25, line: 318, baseType: !2267, size: 64, offset: 448)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2397, file: !25, line: 446, baseType: !544, size: 64, offset: 128)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2397, file: !25, line: 447, baseType: !2396, size: 64, offset: 192)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2393, file: !25, line: 224, baseType: !123, size: 32, offset: 64)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2393, file: !25, line: 226, baseType: !134, size: 128, offset: 128)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2393, file: !25, line: 227, baseType: !87, size: 64, offset: 256)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2393, file: !25, line: 228, baseType: !7, size: 32, offset: 320)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2393, file: !25, line: 229, baseType: !7, size: 32, offset: 352)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2393, file: !25, line: 230, baseType: !2231, size: 64, offset: 384)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2393, file: !25, line: 231, baseType: !2231, size: 64, offset: 448)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2393, file: !25, line: 232, baseType: !97, size: 64, offset: 512)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2385, file: !25, line: 523, baseType: !2424, size: 192, offset: 2240)
!2424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2401, size: 192, elements: !190)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !511, file: !31, line: 1458, baseType: !2426, size: 2112, offset: 4288)
!2426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !31, line: 1410, size: 2112, elements: !2427)
!2427 = !{!2428, !2429, !2430}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2426, file: !31, line: 1411, baseType: !123, size: 32)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2426, file: !31, line: 1412, baseType: !1314, size: 128, offset: 64)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2426, file: !31, line: 1413, baseType: !2431, size: 1920, offset: 192)
!2431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2432, size: 1920, elements: !190)
!2432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2433, line: 12, size: 640, elements: !2434)
!2433 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2434 = !{!2435, !2443, !2445, !2450, !2451}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2432, file: !2433, line: 13, baseType: !2436, size: 320)
!2436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2437, line: 17, size: 320, elements: !2438)
!2437 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2438 = !{!2439, !2440, !2441, !2442}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2436, file: !2437, line: 18, baseType: !123, size: 32)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2436, file: !2437, line: 19, baseType: !123, size: 32, offset: 32)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2436, file: !2437, line: 20, baseType: !1314, size: 128, offset: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2436, file: !2437, line: 22, baseType: !277, size: 128, align: 64, offset: 192)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2432, file: !2433, line: 14, baseType: !2444, size: 64, offset: 320)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2432, file: !2433, line: 15, baseType: !2446, size: 64, offset: 384)
!2446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2447, line: 16, size: 64, elements: !2448)
!2447 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2448 = !{!2449}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2446, file: !2447, line: 17, baseType: !1050, size: 64)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2432, file: !2433, line: 16, baseType: !1314, size: 128, offset: 448)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2432, file: !2433, line: 17, baseType: !662, size: 32, offset: 576)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !511, file: !31, line: 1465, baseType: !97, size: 64, offset: 6400)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !511, file: !31, line: 1468, baseType: !327, size: 32, offset: 6464)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !511, file: !31, line: 1470, baseType: !450, size: 64, offset: 6528)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !511, file: !31, line: 1471, baseType: !450, size: 64, offset: 6592)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !511, file: !31, line: 1473, baseType: !329, size: 32, offset: 6656)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !511, file: !31, line: 1474, baseType: !2458, size: 64, offset: 6720)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !31, line: 603, flags: DIFlagFwdDecl)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !511, file: !31, line: 1477, baseType: !2461, size: 256, offset: 6784)
!2461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 256, elements: !2052)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !511, file: !31, line: 1478, baseType: !2463, size: 128, offset: 7040)
!2463 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2464, line: 18, baseType: !2465)
!2464 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2465 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2464, line: 16, size: 128, elements: !2466)
!2466 = !{!2467}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2465, file: !2464, line: 17, baseType: !2468, size: 128)
!2468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1186, size: 128, elements: !1568)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !511, file: !31, line: 1480, baseType: !7, size: 32, offset: 7168)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !511, file: !31, line: 1481, baseType: !2471, size: 32, offset: 7200)
!2471 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !135, line: 150, baseType: !7)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !511, file: !31, line: 1487, baseType: !1007, size: 192, offset: 7232)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !511, file: !31, line: 1493, baseType: !132, size: 64, offset: 7424)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !511, file: !31, line: 1495, baseType: !2475, size: 64, offset: 7488)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2477)
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !292, line: 135, size: 1024, align: 512, elements: !2478)
!2478 = !{!2479, !2483, !2484, !2491, !2497, !2501, !2505, !2509, !2510, !2514, !2518, !2523, !2527}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2477, file: !292, line: 136, baseType: !2480, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!123, !294, !7}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2477, file: !292, line: 137, baseType: !2480, size: 64, offset: 64)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2477, file: !292, line: 138, baseType: !2485, size: 64, offset: 128)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{!123, !2488, !2490}
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !295)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2477, file: !292, line: 139, baseType: !2492, size: 64, offset: 192)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{!123, !2488, !7, !132, !2495}
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !318)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2477, file: !292, line: 141, baseType: !2498, size: 64, offset: 256)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!123, !2488}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2477, file: !292, line: 142, baseType: !2502, size: 64, offset: 320)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{!123, !294}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2477, file: !292, line: 143, baseType: !2506, size: 64, offset: 384)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{null, !294}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2477, file: !292, line: 144, baseType: !2506, size: 64, offset: 448)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2477, file: !292, line: 145, baseType: !2511, size: 64, offset: 512)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{null, !294, !340}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2477, file: !292, line: 146, baseType: !2515, size: 64, offset: 576)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{!189, !294, !189, !123}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2477, file: !292, line: 147, baseType: !2519, size: 64, offset: 640)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = !DISubroutineType(types: !2521)
!2521 = !{!290, !2522}
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2477, file: !292, line: 148, baseType: !2524, size: 64, offset: 704)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!123, !460, !401}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2477, file: !292, line: 149, baseType: !2528, size: 64, offset: 768)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!294, !294, !2531}
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !341)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !511, file: !31, line: 1500, baseType: !123, size: 32, offset: 7552)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !511, file: !31, line: 1502, baseType: !2535, size: 448, offset: 7616)
!2535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2179, line: 60, size: 448, elements: !2536)
!2536 = !{!2537, !2542, !2543, !2544, !2545, !2546, !2547}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2535, file: !2179, line: 61, baseType: !2538, size: 64)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{!87, !2541, !2177}
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2535, file: !2179, line: 63, baseType: !2538, size: 64, offset: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2535, file: !2179, line: 66, baseType: !100, size: 64, offset: 128)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2535, file: !2179, line: 67, baseType: !123, size: 32, offset: 192)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2535, file: !2179, line: 68, baseType: !7, size: 32, offset: 224)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2535, file: !2179, line: 71, baseType: !134, size: 128, offset: 256)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2535, file: !2179, line: 77, baseType: !2548, size: 64, offset: 384)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !511, file: !31, line: 1505, baseType: !686, size: 64, offset: 8064)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !511, file: !31, line: 1508, baseType: !686, size: 64, offset: 8128)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !511, file: !31, line: 1511, baseType: !123, size: 32, offset: 8192)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !511, file: !31, line: 1514, baseType: !823, size: 32, offset: 8224)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !511, file: !31, line: 1517, baseType: !2554, size: 64, offset: 8256)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1792, line: 18, flags: DIFlagFwdDecl)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !511, file: !31, line: 1518, baseType: !549, size: 64, offset: 8320)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !511, file: !31, line: 1525, baseType: !1546, size: 64, offset: 8384)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !511, file: !31, line: 1532, baseType: !2559, size: 64, offset: 8448)
!2559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2560, line: 52, size: 64, elements: !2561)
!2560 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2561 = !{!2562}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2559, file: !2560, line: 53, baseType: !2563, size: 64)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2560, line: 40, size: 256, elements: !2565)
!2565 = !{!2566, !2567, !2572}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2564, file: !2560, line: 42, baseType: !148)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2564, file: !2560, line: 44, baseType: !2568, size: 192)
!2568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2560, line: 28, size: 192, elements: !2569)
!2569 = !{!2570, !2571}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2568, file: !2560, line: 29, baseType: !134, size: 128)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2568, file: !2560, line: 31, baseType: !100, size: 64, offset: 128)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2564, file: !2560, line: 49, baseType: !100, size: 64, offset: 192)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !511, file: !31, line: 1533, baseType: !2559, size: 64, offset: 8512)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !511, file: !31, line: 1534, baseType: !277, size: 128, align: 64, offset: 8576)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !511, file: !31, line: 1535, baseType: !1791, size: 256, offset: 8704)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !511, file: !31, line: 1537, baseType: !1007, size: 192, offset: 8960)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !511, file: !31, line: 1542, baseType: !123, size: 32, offset: 9152)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !511, file: !31, line: 1545, baseType: !148, offset: 9184)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !511, file: !31, line: 1546, baseType: !134, size: 128, offset: 9216)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !511, file: !31, line: 1548, baseType: !148, offset: 9344)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !511, file: !31, line: 1549, baseType: !134, size: 128, offset: 9344)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !341, file: !31, line: 624, baseType: !648, size: 64, offset: 256)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !341, file: !31, line: 631, baseType: !87, size: 64, offset: 320)
!2584 = !DIDerivedType(tag: DW_TAG_member, scope: !341, file: !31, line: 639, baseType: !2585, size: 32, offset: 384)
!2585 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !341, file: !31, line: 639, size: 32, elements: !2586)
!2586 = !{!2587, !2589}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2585, file: !31, line: 640, baseType: !2588, size: 32)
!2588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2585, file: !31, line: 641, baseType: !7, size: 32)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !341, file: !31, line: 643, baseType: !424, size: 32, offset: 416)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !341, file: !31, line: 644, baseType: !442, size: 64, offset: 448)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !341, file: !31, line: 645, baseType: !446, size: 128, offset: 512)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !341, file: !31, line: 646, baseType: !446, size: 128, offset: 640)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !341, file: !31, line: 647, baseType: !446, size: 128, offset: 768)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !341, file: !31, line: 648, baseType: !148, offset: 896)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !341, file: !31, line: 649, baseType: !93, size: 16, offset: 896)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !341, file: !31, line: 650, baseType: !1185, size: 8, offset: 912)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !341, file: !31, line: 651, baseType: !1185, size: 8, offset: 920)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !341, file: !31, line: 652, baseType: !2351, size: 64, offset: 960)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !341, file: !31, line: 659, baseType: !87, size: 64, offset: 1024)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !341, file: !31, line: 660, baseType: !682, size: 256, offset: 1088)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !341, file: !31, line: 662, baseType: !87, size: 64, offset: 1344)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !341, file: !31, line: 663, baseType: !87, size: 64, offset: 1408)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !341, file: !31, line: 665, baseType: !553, size: 128, offset: 1472)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !341, file: !31, line: 666, baseType: !134, size: 128, offset: 1600)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !341, file: !31, line: 675, baseType: !134, size: 128, offset: 1728)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !341, file: !31, line: 676, baseType: !134, size: 128, offset: 1856)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !341, file: !31, line: 677, baseType: !134, size: 128, offset: 1984)
!2609 = !DIDerivedType(tag: DW_TAG_member, scope: !341, file: !31, line: 678, baseType: !2610, size: 128, offset: 2112)
!2610 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !341, file: !31, line: 678, size: 128, elements: !2611)
!2611 = !{!2612, !2613}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2610, file: !31, line: 679, baseType: !549, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2610, file: !31, line: 680, baseType: !277, size: 128, align: 64)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !341, file: !31, line: 682, baseType: !688, size: 64, offset: 2240)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !341, file: !31, line: 683, baseType: !688, size: 64, offset: 2304)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !341, file: !31, line: 684, baseType: !662, size: 32, offset: 2368)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !341, file: !31, line: 685, baseType: !662, size: 32, offset: 2400)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !341, file: !31, line: 686, baseType: !662, size: 32, offset: 2432)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !341, file: !31, line: 688, baseType: !662, size: 32, offset: 2464)
!2620 = !DIDerivedType(tag: DW_TAG_member, scope: !341, file: !31, line: 690, baseType: !2621, size: 64, offset: 2496)
!2621 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !341, file: !31, line: 690, size: 64, elements: !2622)
!2622 = !{!2623, !2845}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2621, file: !31, line: 691, baseType: !2624, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2626)
!2626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !31, line: 1822, size: 2048, elements: !2627)
!2627 = !{!2628, !2629, !2633, !2638, !2642, !2643, !2644, !2648, !2661, !2662, !2669, !2673, !2674, !2678, !2679, !2683, !2688, !2689, !2693, !2697, !2805, !2809, !2810, !2814, !2815, !2819, !2823, !2828, !2832, !2836, !2840, !2844}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2626, file: !31, line: 1823, baseType: !544, size: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2626, file: !31, line: 1824, baseType: !2630, size: 64, offset: 64)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!442, !264, !442, !123}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2626, file: !31, line: 1825, baseType: !2634, size: 64, offset: 128)
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = !DISubroutineType(types: !2636)
!2636 = !{!220, !264, !189, !234, !2637}
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2626, file: !31, line: 1826, baseType: !2639, size: 64, offset: 192)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{!220, !264, !132, !234, !2637}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2626, file: !31, line: 1827, baseType: !759, size: 64, offset: 256)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2626, file: !31, line: 1828, baseType: !759, size: 64, offset: 320)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2626, file: !31, line: 1829, baseType: !2645, size: 64, offset: 384)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DISubroutineType(types: !2647)
!2647 = !{!123, !762, !401}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2626, file: !31, line: 1830, baseType: !2649, size: 64, offset: 448)
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2650 = !DISubroutineType(types: !2651)
!2651 = !{!123, !264, !2652}
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !31, line: 1776, size: 128, elements: !2654)
!2654 = !{!2655, !2660}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2653, file: !31, line: 1777, baseType: !2656, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !31, line: 1773, baseType: !2657)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{!123, !2652, !132, !123, !442, !332, !7}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2653, file: !31, line: 1778, baseType: !442, size: 64, offset: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2626, file: !31, line: 1831, baseType: !2649, size: 64, offset: 512)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2626, file: !31, line: 1832, baseType: !2663, size: 64, offset: 576)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = !DISubroutineType(types: !2665)
!2665 = !{!2666, !264, !2667}
!2666 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !90, line: 52, baseType: !7)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !530, line: 27, flags: DIFlagFwdDecl)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2626, file: !31, line: 1833, baseType: !2670, size: 64, offset: 640)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = !DISubroutineType(types: !2672)
!2672 = !{!100, !264, !7, !87}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2626, file: !31, line: 1834, baseType: !2670, size: 64, offset: 704)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2626, file: !31, line: 1835, baseType: !2675, size: 64, offset: 768)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{!123, !264, !895}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2626, file: !31, line: 1836, baseType: !87, size: 64, offset: 832)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2626, file: !31, line: 1837, baseType: !2680, size: 64, offset: 896)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{!123, !340, !264}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2626, file: !31, line: 1838, baseType: !2684, size: 64, offset: 960)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!123, !264, !2687}
!2687 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !31, line: 1007, baseType: !97)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2626, file: !31, line: 1839, baseType: !2680, size: 64, offset: 1024)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2626, file: !31, line: 1840, baseType: !2690, size: 64, offset: 1088)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!123, !264, !442, !442, !123}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2626, file: !31, line: 1841, baseType: !2694, size: 64, offset: 1152)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!123, !123, !264, !123}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2626, file: !31, line: 1842, baseType: !2698, size: 64, offset: 1216)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{!123, !264, !123, !2701}
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !31, line: 1062, size: 1664, elements: !2703)
!2703 = !{!2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2735, !2736, !2737, !2750, !2781}
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2702, file: !31, line: 1063, baseType: !2701, size: 64)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2702, file: !31, line: 1064, baseType: !134, size: 128, offset: 64)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2702, file: !31, line: 1065, baseType: !553, size: 128, offset: 192)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2702, file: !31, line: 1066, baseType: !134, size: 128, offset: 320)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2702, file: !31, line: 1069, baseType: !134, size: 128, offset: 448)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2702, file: !31, line: 1072, baseType: !2687, size: 64, offset: 576)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2702, file: !31, line: 1073, baseType: !7, size: 32, offset: 640)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2702, file: !31, line: 1074, baseType: !338, size: 8, offset: 672)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2702, file: !31, line: 1075, baseType: !7, size: 32, offset: 704)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2702, file: !31, line: 1076, baseType: !123, size: 32, offset: 736)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2702, file: !31, line: 1077, baseType: !1314, size: 128, offset: 768)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2702, file: !31, line: 1078, baseType: !264, size: 64, offset: 896)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2702, file: !31, line: 1079, baseType: !442, size: 64, offset: 960)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2702, file: !31, line: 1080, baseType: !442, size: 64, offset: 1024)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2702, file: !31, line: 1082, baseType: !2719, size: 64, offset: 1088)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !31, line: 1314, size: 320, elements: !2721)
!2721 = !{!2722, !2730, !2731, !2732, !2733, !2734}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2720, file: !31, line: 1315, baseType: !2723)
!2723 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2724, line: 20, baseType: !2725)
!2724 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2725 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2724, line: 11, elements: !2726)
!2726 = !{!2727}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2725, file: !2724, line: 12, baseType: !2728)
!2728 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !160, line: 33, baseType: !2729)
!2729 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !160, line: 31, elements: !162)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2720, file: !31, line: 1316, baseType: !123, size: 32)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2720, file: !31, line: 1317, baseType: !123, size: 32, offset: 32)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2720, file: !31, line: 1318, baseType: !2719, size: 64, offset: 64)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2720, file: !31, line: 1319, baseType: !264, size: 64, offset: 128)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2720, file: !31, line: 1320, baseType: !277, size: 128, align: 64, offset: 192)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2702, file: !31, line: 1084, baseType: !87, size: 64, offset: 1152)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2702, file: !31, line: 1085, baseType: !87, size: 64, offset: 1216)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2702, file: !31, line: 1087, baseType: !2738, size: 64, offset: 1280)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2740)
!2740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !31, line: 1011, size: 128, elements: !2741)
!2741 = !{!2742, !2746}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2740, file: !31, line: 1012, baseType: !2743, size: 64)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = !DISubroutineType(types: !2745)
!2745 = !{null, !2701, !2701}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2740, file: !31, line: 1013, baseType: !2747, size: 64, offset: 64)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{null, !2701}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2702, file: !31, line: 1088, baseType: !2751, size: 64, offset: 1344)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2753)
!2753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !31, line: 1016, size: 512, elements: !2754)
!2754 = !{!2755, !2759, !2763, !2764, !2768, !2772, !2776, !2780}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2753, file: !31, line: 1017, baseType: !2756, size: 64)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = !DISubroutineType(types: !2758)
!2758 = !{!2687, !2687}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2753, file: !31, line: 1018, baseType: !2760, size: 64, offset: 64)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{null, !2687}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2753, file: !31, line: 1019, baseType: !2747, size: 64, offset: 128)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2753, file: !31, line: 1020, baseType: !2765, size: 64, offset: 192)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!123, !2701, !123}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2753, file: !31, line: 1021, baseType: !2769, size: 64, offset: 256)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{!401, !2701}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2753, file: !31, line: 1022, baseType: !2773, size: 64, offset: 320)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DISubroutineType(types: !2775)
!2775 = !{!123, !2701, !123, !138}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2753, file: !31, line: 1023, baseType: !2777, size: 64, offset: 384)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{null, !2701, !736}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2753, file: !31, line: 1024, baseType: !2769, size: 64, offset: 448)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2702, file: !31, line: 1097, baseType: !2782, size: 256, offset: 1408)
!2782 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2702, file: !31, line: 1089, size: 256, elements: !2783)
!2783 = !{!2784, !2793, !2799}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2782, file: !31, line: 1090, baseType: !2785, size: 256)
!2785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2786, line: 10, size: 256, elements: !2787)
!2786 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2787 = !{!2788, !2789, !2792}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2785, file: !2786, line: 11, baseType: !327, size: 32)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2785, file: !2786, line: 12, baseType: !2790, size: 64, offset: 64)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2786, line: 5, flags: DIFlagFwdDecl)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2785, file: !2786, line: 13, baseType: !134, size: 128, offset: 128)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2782, file: !31, line: 1091, baseType: !2794, size: 64)
!2794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2786, line: 17, size: 64, elements: !2795)
!2795 = !{!2796}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2794, file: !2786, line: 18, baseType: !2797, size: 64)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2786, line: 16, flags: DIFlagFwdDecl)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2782, file: !31, line: 1096, baseType: !2800, size: 192)
!2800 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2782, file: !31, line: 1092, size: 192, elements: !2801)
!2801 = !{!2802, !2803, !2804}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2800, file: !31, line: 1093, baseType: !134, size: 128)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2800, file: !31, line: 1094, baseType: !123, size: 32, offset: 128)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2800, file: !31, line: 1095, baseType: !7, size: 32, offset: 160)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2626, file: !31, line: 1843, baseType: !2806, size: 64, offset: 1280)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{!220, !264, !635, !123, !234, !2637, !123}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2626, file: !31, line: 1844, baseType: !935, size: 64, offset: 1344)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2626, file: !31, line: 1845, baseType: !2811, size: 64, offset: 1408)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!123, !123}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2626, file: !31, line: 1846, baseType: !2698, size: 64, offset: 1472)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2626, file: !31, line: 1847, baseType: !2816, size: 64, offset: 1536)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{!220, !1932, !264, !2637, !234, !7}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2626, file: !31, line: 1848, baseType: !2820, size: 64, offset: 1600)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{!220, !264, !2637, !1932, !234, !7}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2626, file: !31, line: 1849, baseType: !2824, size: 64, offset: 1664)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{!123, !264, !100, !2827, !736}
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2626, file: !31, line: 1850, baseType: !2829, size: 64, offset: 1728)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = !DISubroutineType(types: !2831)
!2831 = !{!100, !264, !123, !442, !442}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2626, file: !31, line: 1852, baseType: !2833, size: 64, offset: 1792)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{null, !625, !264}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2626, file: !31, line: 1856, baseType: !2837, size: 64, offset: 1856)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{!220, !264, !442, !264, !442, !234, !7}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2626, file: !31, line: 1858, baseType: !2841, size: 64, offset: 1920)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!442, !264, !442, !264, !442, !442, !7}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2626, file: !31, line: 1861, baseType: !2690, size: 64, offset: 1984)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2621, file: !31, line: 692, baseType: !578, size: 64)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !341, file: !31, line: 694, baseType: !2847, size: 64, offset: 2560)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !31, line: 1100, size: 384, elements: !2849)
!2849 = !{!2850, !2851, !2852, !2853}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2848, file: !31, line: 1101, baseType: !148)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2848, file: !31, line: 1102, baseType: !134, size: 128)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2848, file: !31, line: 1103, baseType: !134, size: 128, offset: 128)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2848, file: !31, line: 1104, baseType: !134, size: 128, offset: 256)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !341, file: !31, line: 695, baseType: !649, size: 1216, align: 64, offset: 2624)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !341, file: !31, line: 696, baseType: !134, size: 128, offset: 3840)
!2856 = !DIDerivedType(tag: DW_TAG_member, scope: !341, file: !31, line: 697, baseType: !2857, size: 64, offset: 3968)
!2857 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !341, file: !31, line: 697, size: 64, elements: !2858)
!2858 = !{!2859, !2860, !2861, !2864, !2865}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2857, file: !31, line: 698, baseType: !1932, size: 64)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2857, file: !31, line: 699, baseType: !2376, size: 64)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2857, file: !31, line: 700, baseType: !2862, size: 64)
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !31, line: 700, flags: DIFlagFwdDecl)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2857, file: !31, line: 701, baseType: !189, size: 64)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2857, file: !31, line: 702, baseType: !7, size: 32)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !341, file: !31, line: 705, baseType: !329, size: 32, offset: 4032)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !341, file: !31, line: 708, baseType: !329, size: 32, offset: 4064)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !341, file: !31, line: 709, baseType: !2458, size: 64, offset: 4096)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !341, file: !31, line: 720, baseType: !97, size: 64, offset: 4160)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !295, file: !292, line: 98, baseType: !2871, size: 256, offset: 448)
!2871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 256, elements: !2052)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !295, file: !292, line: 101, baseType: !2873, size: 32, offset: 704)
!2873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2874, line: 25, size: 32, elements: !2875)
!2874 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2875 = !{!2876}
!2876 = !DIDerivedType(tag: DW_TAG_member, scope: !2873, file: !2874, line: 26, baseType: !2877, size: 32)
!2877 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2873, file: !2874, line: 26, size: 32, elements: !2878)
!2878 = !{!2879}
!2879 = !DIDerivedType(tag: DW_TAG_member, scope: !2877, file: !2874, line: 30, baseType: !2880, size: 32)
!2880 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2877, file: !2874, line: 30, size: 32, elements: !2881)
!2881 = !{!2882, !2883}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2880, file: !2874, line: 31, baseType: !148)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2880, file: !2874, line: 32, baseType: !123, size: 32)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !295, file: !292, line: 102, baseType: !2475, size: 64, offset: 768)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !295, file: !292, line: 103, baseType: !510, size: 64, offset: 832)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !295, file: !292, line: 104, baseType: !87, size: 64, offset: 896)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !295, file: !292, line: 105, baseType: !97, size: 64, offset: 960)
!2888 = !DIDerivedType(tag: DW_TAG_member, scope: !295, file: !292, line: 107, baseType: !2889, size: 128, offset: 1024)
!2889 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !295, file: !292, line: 107, size: 128, elements: !2890)
!2890 = !{!2891, !2892}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2889, file: !292, line: 108, baseType: !134, size: 128)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2889, file: !292, line: 109, baseType: !2893, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !295, file: !292, line: 111, baseType: !134, size: 128, offset: 1152)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !295, file: !292, line: 112, baseType: !134, size: 128, offset: 1280)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !295, file: !292, line: 120, baseType: !2897, size: 128, offset: 1408)
!2897 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !295, file: !292, line: 116, size: 128, elements: !2898)
!2898 = !{!2899, !2900, !2901}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2897, file: !292, line: 117, baseType: !553, size: 128)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2897, file: !292, line: 118, baseType: !309, size: 128)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2897, file: !292, line: 119, baseType: !277, size: 128, align: 64)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !265, file: !31, line: 922, baseType: !340, size: 64, offset: 256)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !265, file: !31, line: 923, baseType: !2624, size: 64, offset: 320)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !265, file: !31, line: 929, baseType: !148, offset: 384)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !265, file: !31, line: 930, baseType: !30, size: 32, offset: 384)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !265, file: !31, line: 931, baseType: !686, size: 64, offset: 448)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !265, file: !31, line: 932, baseType: !7, size: 32, offset: 512)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !265, file: !31, line: 933, baseType: !2471, size: 32, offset: 544)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !265, file: !31, line: 934, baseType: !1007, size: 192, offset: 576)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !265, file: !31, line: 935, baseType: !442, size: 64, offset: 768)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !265, file: !31, line: 936, baseType: !2912, size: 192, offset: 832)
!2912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !31, line: 885, size: 192, elements: !2913)
!2913 = !{!2914, !2915, !2916, !2917, !2918, !2919}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2912, file: !31, line: 886, baseType: !2723)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2912, file: !31, line: 887, baseType: !1304, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2912, file: !31, line: 888, baseType: !39, size: 32, offset: 64)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2912, file: !31, line: 889, baseType: !346, size: 32, offset: 96)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2912, file: !31, line: 889, baseType: !346, size: 32, offset: 128)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2912, file: !31, line: 890, baseType: !123, size: 32, offset: 160)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !265, file: !31, line: 937, baseType: !1380, size: 64, offset: 1024)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !265, file: !31, line: 938, baseType: !2922, size: 256, offset: 1088)
!2922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !31, line: 896, size: 256, elements: !2923)
!2923 = !{!2924, !2925, !2926, !2927, !2928, !2929}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2922, file: !31, line: 897, baseType: !87, size: 64)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2922, file: !31, line: 898, baseType: !7, size: 32, offset: 64)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2922, file: !31, line: 899, baseType: !7, size: 32, offset: 96)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2922, file: !31, line: 902, baseType: !7, size: 32, offset: 128)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2922, file: !31, line: 903, baseType: !7, size: 32, offset: 160)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2922, file: !31, line: 904, baseType: !442, size: 64, offset: 192)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !265, file: !31, line: 940, baseType: !332, size: 64, offset: 1344)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !265, file: !31, line: 945, baseType: !97, size: 64, offset: 1408)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !265, file: !31, line: 949, baseType: !134, size: 128, offset: 1472)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !265, file: !31, line: 950, baseType: !134, size: 128, offset: 1600)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !265, file: !31, line: 952, baseType: !648, size: 64, offset: 1728)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !265, file: !31, line: 953, baseType: !823, size: 32, offset: 1792)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !265, file: !31, line: 954, baseType: !823, size: 32, offset: 1824)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !255, file: !214, line: 174, baseType: !261, size: 64, offset: 320)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !255, file: !214, line: 176, baseType: !2939, size: 64, offset: 384)
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!123, !264, !141, !254, !895}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !243, file: !214, line: 90, baseType: !238, size: 64, offset: 192)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !243, file: !214, line: 91, baseType: !2944, size: 64, offset: 256)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !204, file: !129, line: 143, baseType: !2946, size: 64, offset: 256)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{!2949, !141}
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2951)
!2951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !48, line: 39, size: 384, elements: !2952)
!2952 = !{!2953, !2954, !2958, !2962, !2970, !2974}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2951, file: !48, line: 40, baseType: !47, size: 32)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2951, file: !48, line: 41, baseType: !2955, size: 64, offset: 64)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{!401}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2951, file: !48, line: 42, baseType: !2959, size: 64, offset: 128)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{!97}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2951, file: !48, line: 43, baseType: !2963, size: 64, offset: 192)
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{!2966, !2968}
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !48, line: 19, flags: DIFlagFwdDecl)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2951, file: !48, line: 44, baseType: !2971, size: 64, offset: 256)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!2966}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2951, file: !48, line: 45, baseType: !379, size: 64, offset: 320)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !204, file: !129, line: 144, baseType: !2976, size: 64, offset: 320)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{!2966, !141}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !204, file: !129, line: 145, baseType: !2980, size: 64, offset: 384)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{null, !141, !2983, !2984}
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !128, file: !129, line: 70, baseType: !2986, size: 64, offset: 384)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !530, line: 123, size: 1024, elements: !2988)
!2988 = !{!2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !3117, !3118, !3119, !3120, !3121}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2987, file: !530, line: 124, baseType: !662, size: 32)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2987, file: !530, line: 125, baseType: !662, size: 32, offset: 32)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2987, file: !530, line: 135, baseType: !2986, size: 64, offset: 64)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2987, file: !530, line: 136, baseType: !132, size: 64, offset: 128)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2987, file: !530, line: 138, baseType: !675, size: 192, align: 64, offset: 192)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2987, file: !530, line: 140, baseType: !2966, size: 64, offset: 384)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2987, file: !530, line: 141, baseType: !7, size: 32, offset: 448)
!2996 = !DIDerivedType(tag: DW_TAG_member, scope: !2987, file: !530, line: 142, baseType: !2997, size: 256, offset: 512)
!2997 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2987, file: !530, line: 142, size: 256, elements: !2998)
!2998 = !{!2999, !3045, !3049}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2997, file: !530, line: 143, baseType: !3000, size: 192)
!3000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !530, line: 91, size: 192, elements: !3001)
!3001 = !{!3002, !3003, !3004}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3000, file: !530, line: 92, baseType: !87, size: 64)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3000, file: !530, line: 94, baseType: !671, size: 64, offset: 64)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3000, file: !530, line: 100, baseType: !3005, size: 64, offset: 128)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !530, line: 180, size: 704, elements: !3007)
!3007 = !{!3008, !3009, !3010, !3017, !3018, !3019, !3043, !3044}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3006, file: !530, line: 182, baseType: !2986, size: 64)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3006, file: !530, line: 183, baseType: !7, size: 32, offset: 64)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3006, file: !530, line: 186, baseType: !3011, size: 192, offset: 128)
!3011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3012, line: 19, size: 192, elements: !3013)
!3012 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3013 = !{!3014, !3015, !3016}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3011, file: !3012, line: 20, baseType: !653, size: 128)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3011, file: !3012, line: 21, baseType: !7, size: 32, offset: 128)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3011, file: !3012, line: 22, baseType: !7, size: 32, offset: 160)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3006, file: !530, line: 187, baseType: !327, size: 32, offset: 320)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3006, file: !530, line: 188, baseType: !327, size: 32, offset: 352)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3006, file: !530, line: 189, baseType: !3020, size: 64, offset: 384)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !530, line: 168, size: 320, elements: !3022)
!3022 = !{!3023, !3027, !3031, !3035, !3039}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3021, file: !530, line: 169, baseType: !3024, size: 64)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{!123, !625, !3005}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3021, file: !530, line: 171, baseType: !3028, size: 64, offset: 64)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{!123, !2986, !132, !229}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3021, file: !530, line: 173, baseType: !3032, size: 64, offset: 128)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{!123, !2986}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3021, file: !530, line: 174, baseType: !3036, size: 64, offset: 192)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{!123, !2986, !2986, !132}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3021, file: !530, line: 176, baseType: !3040, size: 64, offset: 256)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{!123, !625, !2986, !3005}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3006, file: !530, line: 192, baseType: !134, size: 128, offset: 448)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3006, file: !530, line: 194, baseType: !1314, size: 128, offset: 576)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2997, file: !530, line: 144, baseType: !3046, size: 64)
!3046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !530, line: 103, size: 64, elements: !3047)
!3047 = !{!3048}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3046, file: !530, line: 104, baseType: !2986, size: 64)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2997, file: !530, line: 145, baseType: !3050, size: 256)
!3050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !530, line: 107, size: 256, elements: !3051)
!3051 = !{!3052, !3112, !3115, !3116}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3050, file: !530, line: 108, baseType: !3053, size: 64)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3055)
!3055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !530, line: 217, size: 768, elements: !3056)
!3056 = !{!3057, !3077, !3081, !3085, !3089, !3093, !3097, !3101, !3102, !3103, !3104, !3108}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3055, file: !530, line: 222, baseType: !3058, size: 64)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!123, !3061}
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !530, line: 197, size: 1088, elements: !3063)
!3063 = !{!3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3062, file: !530, line: 199, baseType: !2986, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3062, file: !530, line: 200, baseType: !264, size: 64, offset: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3062, file: !530, line: 201, baseType: !625, size: 64, offset: 128)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3062, file: !530, line: 202, baseType: !97, size: 64, offset: 192)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3062, file: !530, line: 205, baseType: !1007, size: 192, offset: 256)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3062, file: !530, line: 206, baseType: !1007, size: 192, offset: 448)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3062, file: !530, line: 207, baseType: !123, size: 32, offset: 640)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3062, file: !530, line: 208, baseType: !134, size: 128, offset: 704)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3062, file: !530, line: 209, baseType: !189, size: 64, offset: 832)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3062, file: !530, line: 211, baseType: !234, size: 64, offset: 896)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3062, file: !530, line: 212, baseType: !401, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3062, file: !530, line: 213, baseType: !401, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3062, file: !530, line: 214, baseType: !923, size: 64, offset: 1024)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3055, file: !530, line: 223, baseType: !3078, size: 64, offset: 64)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{null, !3061}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3055, file: !530, line: 236, baseType: !3082, size: 64, offset: 128)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{!123, !625, !97}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3055, file: !530, line: 238, baseType: !3086, size: 64, offset: 192)
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3087, size: 64)
!3087 = !DISubroutineType(types: !3088)
!3088 = !{!97, !625, !2637}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3055, file: !530, line: 239, baseType: !3090, size: 64, offset: 256)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{!97, !625, !97, !2637}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3055, file: !530, line: 240, baseType: !3094, size: 64, offset: 320)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = !DISubroutineType(types: !3096)
!3096 = !{null, !625, !97}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3055, file: !530, line: 242, baseType: !3098, size: 64, offset: 384)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!220, !3061, !189, !234, !442}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3055, file: !530, line: 252, baseType: !234, size: 64, offset: 448)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3055, file: !530, line: 259, baseType: !401, size: 8, offset: 512)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3055, file: !530, line: 260, baseType: !3098, size: 64, offset: 576)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3055, file: !530, line: 263, baseType: !3105, size: 64, offset: 640)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!2666, !3061, !2667}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3055, file: !530, line: 266, baseType: !3109, size: 64, offset: 704)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{!123, !3061, !895}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3050, file: !530, line: 109, baseType: !3113, size: 64, offset: 64)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !530, line: 31, flags: DIFlagFwdDecl)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3050, file: !530, line: 110, baseType: !442, size: 64, offset: 128)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3050, file: !530, line: 111, baseType: !2986, size: 64, offset: 192)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2987, file: !530, line: 148, baseType: !97, size: 64, offset: 768)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2987, file: !530, line: 154, baseType: !332, size: 64, offset: 832)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2987, file: !530, line: 156, baseType: !93, size: 16, offset: 896)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2987, file: !530, line: 157, baseType: !229, size: 16, offset: 912)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2987, file: !530, line: 158, baseType: !3122, size: 64, offset: 960)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !530, line: 32, flags: DIFlagFwdDecl)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !128, file: !129, line: 71, baseType: !3125, size: 32, offset: 448)
!3125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3126, line: 19, size: 32, elements: !3127)
!3126 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3127 = !{!3128}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3125, file: !3126, line: 20, baseType: !1063, size: 32)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !128, file: !129, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !128, file: !129, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !128, file: !129, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !128, file: !129, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !128, file: !129, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !125, file: !60, line: 463, baseType: !124, size: 64, offset: 512)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !125, file: !60, line: 465, baseType: !3136, size: 64, offset: 576)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !60, line: 36, flags: DIFlagFwdDecl)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !125, file: !60, line: 467, baseType: !132, size: 64, offset: 640)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !125, file: !60, line: 468, baseType: !3140, size: 64, offset: 704)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3142)
!3142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !60, line: 87, size: 384, elements: !3143)
!3143 = !{!3144, !3145, !3146, !3150, !3155, !3159}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3142, file: !60, line: 88, baseType: !132, size: 64)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3142, file: !60, line: 89, baseType: !240, size: 64, offset: 64)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3142, file: !60, line: 90, baseType: !3147, size: 64, offset: 128)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{!123, !124, !184}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3142, file: !60, line: 91, baseType: !3151, size: 64, offset: 192)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{!189, !124, !3154, !2983, !2984}
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3142, file: !60, line: 93, baseType: !3156, size: 64, offset: 256)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{null, !124}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3142, file: !60, line: 95, baseType: !3160, size: 64, offset: 320)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3162)
!3162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !67, line: 278, size: 1472, elements: !3163)
!3163 = !{!3164, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3162, file: !67, line: 279, baseType: !3165, size: 64)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!123, !124}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3162, file: !67, line: 280, baseType: !3156, size: 64, offset: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3162, file: !67, line: 281, baseType: !3165, size: 64, offset: 128)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3162, file: !67, line: 282, baseType: !3165, size: 64, offset: 192)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3162, file: !67, line: 283, baseType: !3165, size: 64, offset: 256)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3162, file: !67, line: 284, baseType: !3165, size: 64, offset: 320)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3162, file: !67, line: 285, baseType: !3165, size: 64, offset: 384)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3162, file: !67, line: 286, baseType: !3165, size: 64, offset: 448)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3162, file: !67, line: 287, baseType: !3165, size: 64, offset: 512)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3162, file: !67, line: 288, baseType: !3165, size: 64, offset: 576)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3162, file: !67, line: 289, baseType: !3165, size: 64, offset: 640)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3162, file: !67, line: 290, baseType: !3165, size: 64, offset: 704)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3162, file: !67, line: 291, baseType: !3165, size: 64, offset: 768)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3162, file: !67, line: 292, baseType: !3165, size: 64, offset: 832)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3162, file: !67, line: 293, baseType: !3165, size: 64, offset: 896)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3162, file: !67, line: 294, baseType: !3165, size: 64, offset: 960)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3162, file: !67, line: 295, baseType: !3165, size: 64, offset: 1024)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3162, file: !67, line: 296, baseType: !3165, size: 64, offset: 1088)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3162, file: !67, line: 297, baseType: !3165, size: 64, offset: 1152)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3162, file: !67, line: 298, baseType: !3165, size: 64, offset: 1216)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3162, file: !67, line: 299, baseType: !3165, size: 64, offset: 1280)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3162, file: !67, line: 300, baseType: !3165, size: 64, offset: 1344)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3162, file: !67, line: 301, baseType: !3165, size: 64, offset: 1408)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !125, file: !60, line: 470, baseType: !3191, size: 64, offset: 768)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3193, line: 82, size: 1408, elements: !3194)
!3193 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3194 = !{!3195, !3196, !3197, !3198, !3199, !3200, !3201, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3276, !3279, !3280}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3192, file: !3193, line: 83, baseType: !132, size: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3192, file: !3193, line: 84, baseType: !132, size: 64, offset: 64)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3192, file: !3193, line: 85, baseType: !124, size: 64, offset: 128)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3192, file: !3193, line: 86, baseType: !240, size: 64, offset: 192)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3192, file: !3193, line: 87, baseType: !240, size: 64, offset: 256)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3192, file: !3193, line: 88, baseType: !240, size: 64, offset: 320)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3192, file: !3193, line: 90, baseType: !3202, size: 64, offset: 384)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = !DISubroutineType(types: !3204)
!3204 = !{!123, !124, !3205}
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !54, line: 95, size: 1152, elements: !3207)
!3207 = !{!3208, !3209, !3210, !3211, !3212, !3213, !3214, !3227, !3240, !3241, !3242, !3243, !3244, !3252, !3253, !3254, !3255, !3256, !3257}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3206, file: !54, line: 96, baseType: !132, size: 64)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3206, file: !54, line: 97, baseType: !3191, size: 64, offset: 64)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3206, file: !54, line: 99, baseType: !544, size: 64, offset: 128)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3206, file: !54, line: 100, baseType: !132, size: 64, offset: 192)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3206, file: !54, line: 102, baseType: !401, size: 8, offset: 256)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3206, file: !54, line: 103, baseType: !53, size: 32, offset: 288)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3206, file: !54, line: 105, baseType: !3215, size: 64, offset: 320)
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3217)
!3217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3218, line: 262, size: 1600, elements: !3219)
!3218 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3219 = !{!3220, !3221, !3222, !3226}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3217, file: !3218, line: 263, baseType: !2461, size: 256)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3217, file: !3218, line: 264, baseType: !2461, size: 256, offset: 256)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3217, file: !3218, line: 265, baseType: !3223, size: 1024, offset: 512)
!3223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 1024, elements: !3224)
!3224 = !{!3225}
!3225 = !DISubrange(count: 128)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3217, file: !3218, line: 266, baseType: !2966, size: 64, offset: 1536)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3206, file: !54, line: 106, baseType: !3228, size: 64, offset: 384)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3230)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3218, line: 210, size: 256, elements: !3231)
!3231 = !{!3232, !3236, !3238, !3239}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3230, file: !3218, line: 211, baseType: !3233, size: 72)
!3233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1186, size: 72, elements: !3234)
!3234 = !{!3235}
!3235 = !DISubrange(count: 9)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3230, file: !3218, line: 212, baseType: !3237, size: 64, offset: 128)
!3237 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3218, line: 14, baseType: !87)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3230, file: !3218, line: 213, baseType: !329, size: 32, offset: 192)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3230, file: !3218, line: 214, baseType: !329, size: 32, offset: 224)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3206, file: !54, line: 108, baseType: !3165, size: 64, offset: 448)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3206, file: !54, line: 109, baseType: !3156, size: 64, offset: 512)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3206, file: !54, line: 110, baseType: !3165, size: 64, offset: 576)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3206, file: !54, line: 111, baseType: !3156, size: 64, offset: 640)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3206, file: !54, line: 112, baseType: !3245, size: 64, offset: 704)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!123, !124, !3248}
!3248 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !67, line: 52, baseType: !3249)
!3249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !67, line: 50, size: 32, elements: !3250)
!3250 = !{!3251}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3249, file: !67, line: 51, baseType: !123, size: 32)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3206, file: !54, line: 113, baseType: !3165, size: 64, offset: 768)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3206, file: !54, line: 114, baseType: !240, size: 64, offset: 832)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3206, file: !54, line: 115, baseType: !240, size: 64, offset: 896)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3206, file: !54, line: 117, baseType: !3160, size: 64, offset: 960)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3206, file: !54, line: 118, baseType: !3156, size: 64, offset: 1024)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3206, file: !54, line: 120, baseType: !3258, size: 64, offset: 1088)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !54, line: 120, flags: DIFlagFwdDecl)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3192, file: !3193, line: 91, baseType: !3147, size: 64, offset: 448)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3192, file: !3193, line: 92, baseType: !3165, size: 64, offset: 512)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3192, file: !3193, line: 93, baseType: !3156, size: 64, offset: 576)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3192, file: !3193, line: 94, baseType: !3165, size: 64, offset: 640)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3192, file: !3193, line: 95, baseType: !3156, size: 64, offset: 704)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3192, file: !3193, line: 97, baseType: !3165, size: 64, offset: 768)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3192, file: !3193, line: 98, baseType: !3165, size: 64, offset: 832)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3192, file: !3193, line: 100, baseType: !3245, size: 64, offset: 896)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3192, file: !3193, line: 101, baseType: !3165, size: 64, offset: 960)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3192, file: !3193, line: 103, baseType: !3165, size: 64, offset: 1024)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3192, file: !3193, line: 105, baseType: !3165, size: 64, offset: 1088)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3192, file: !3193, line: 107, baseType: !3160, size: 64, offset: 1152)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3192, file: !3193, line: 109, baseType: !3273, size: 64, offset: 1216)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3275)
!3275 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3193, line: 109, flags: DIFlagFwdDecl)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3192, file: !3193, line: 111, baseType: !3277, size: 64, offset: 1280)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3193, line: 111, flags: DIFlagFwdDecl)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3192, file: !3193, line: 112, baseType: !559, offset: 1344)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3192, file: !3193, line: 114, baseType: !401, size: 8, offset: 1344)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !125, file: !60, line: 471, baseType: !3205, size: 64, offset: 832)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !125, file: !60, line: 473, baseType: !97, size: 64, offset: 896)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !125, file: !60, line: 475, baseType: !97, size: 64, offset: 960)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !125, file: !60, line: 480, baseType: !1007, size: 192, offset: 1024)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !125, file: !60, line: 484, baseType: !3286, size: 576, offset: 1216)
!3286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !60, line: 361, size: 576, elements: !3287)
!3287 = !{!3288, !3289, !3290, !3291, !3292, !3293}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3286, file: !60, line: 362, baseType: !134, size: 128)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3286, file: !60, line: 363, baseType: !134, size: 128, offset: 128)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3286, file: !60, line: 364, baseType: !134, size: 128, offset: 256)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3286, file: !60, line: 365, baseType: !134, size: 128, offset: 384)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3286, file: !60, line: 366, baseType: !401, size: 8, offset: 512)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3286, file: !60, line: 367, baseType: !59, size: 32, offset: 544)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !125, file: !60, line: 485, baseType: !3295, size: 2304, offset: 1792)
!3295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !67, line: 565, size: 2304, elements: !3296)
!3296 = !{!3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3392, !3396}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3295, file: !67, line: 566, baseType: !3248, size: 32)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3295, file: !67, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3295, file: !67, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3295, file: !67, line: 569, baseType: !401, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3295, file: !67, line: 570, baseType: !401, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3295, file: !67, line: 571, baseType: !401, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3295, file: !67, line: 572, baseType: !401, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3295, file: !67, line: 573, baseType: !401, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3295, file: !67, line: 574, baseType: !401, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3295, file: !67, line: 575, baseType: !401, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3295, file: !67, line: 576, baseType: !401, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3295, file: !67, line: 577, baseType: !327, size: 32, offset: 64)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3295, file: !67, line: 578, baseType: !148, offset: 96)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3295, file: !67, line: 580, baseType: !134, size: 128, offset: 128)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3295, file: !67, line: 581, baseType: !1335, size: 192, offset: 256)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3295, file: !67, line: 582, baseType: !3313, size: 64, offset: 448)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3315, line: 43, size: 1472, elements: !3316)
!3315 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3316 = !{!3317, !3318, !3319, !3320, !3321, !3324, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3314, file: !3315, line: 44, baseType: !132, size: 64)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3314, file: !3315, line: 45, baseType: !123, size: 32, offset: 64)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3314, file: !3315, line: 46, baseType: !134, size: 128, offset: 128)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3314, file: !3315, line: 47, baseType: !148, offset: 256)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3314, file: !3315, line: 48, baseType: !3322, size: 64, offset: 256)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !67, line: 533, flags: DIFlagFwdDecl)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3314, file: !3315, line: 49, baseType: !3325, size: 320, offset: 320)
!3325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3326, line: 11, size: 320, elements: !3327)
!3326 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3327 = !{!3328, !3329, !3330, !3335}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3325, file: !3326, line: 16, baseType: !553, size: 128)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3325, file: !3326, line: 17, baseType: !87, size: 64, offset: 128)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3325, file: !3326, line: 18, baseType: !3331, size: 64, offset: 192)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{null, !3334}
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3325, file: !3326, line: 19, baseType: !327, size: 32, offset: 256)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3314, file: !3315, line: 50, baseType: !87, size: 64, offset: 640)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3314, file: !3315, line: 51, baseType: !1133, size: 64, offset: 704)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3314, file: !3315, line: 52, baseType: !1133, size: 64, offset: 768)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3314, file: !3315, line: 53, baseType: !1133, size: 64, offset: 832)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3314, file: !3315, line: 54, baseType: !1133, size: 64, offset: 896)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3314, file: !3315, line: 55, baseType: !1133, size: 64, offset: 960)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3314, file: !3315, line: 56, baseType: !87, size: 64, offset: 1024)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3314, file: !3315, line: 57, baseType: !87, size: 64, offset: 1088)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3314, file: !3315, line: 58, baseType: !87, size: 64, offset: 1152)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3314, file: !3315, line: 59, baseType: !87, size: 64, offset: 1216)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3314, file: !3315, line: 60, baseType: !87, size: 64, offset: 1280)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3314, file: !3315, line: 61, baseType: !124, size: 64, offset: 1344)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3314, file: !3315, line: 62, baseType: !401, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3314, file: !3315, line: 63, baseType: !401, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3295, file: !67, line: 583, baseType: !401, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3295, file: !67, line: 584, baseType: !401, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3295, file: !67, line: 585, baseType: !401, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3295, file: !67, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3295, file: !67, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3295, file: !67, line: 592, baseType: !1125, size: 512, offset: 576)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3295, file: !67, line: 593, baseType: !332, size: 64, offset: 1088)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3295, file: !67, line: 594, baseType: !1791, size: 256, offset: 1152)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3295, file: !67, line: 595, baseType: !1314, size: 128, offset: 1408)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3295, file: !67, line: 596, baseType: !3322, size: 64, offset: 1536)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3295, file: !67, line: 597, baseType: !662, size: 32, offset: 1600)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3295, file: !67, line: 598, baseType: !662, size: 32, offset: 1632)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3295, file: !67, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3295, file: !67, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3295, file: !67, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3295, file: !67, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3295, file: !67, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3295, file: !67, line: 604, baseType: !401, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3295, file: !67, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3295, file: !67, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3295, file: !67, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3295, file: !67, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3295, file: !67, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3295, file: !67, line: 610, baseType: !7, size: 32, offset: 1696)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3295, file: !67, line: 611, baseType: !66, size: 32, offset: 1728)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3295, file: !67, line: 612, baseType: !74, size: 32, offset: 1760)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3295, file: !67, line: 613, baseType: !123, size: 32, offset: 1792)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3295, file: !67, line: 614, baseType: !123, size: 32, offset: 1824)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3295, file: !67, line: 615, baseType: !332, size: 64, offset: 1856)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3295, file: !67, line: 616, baseType: !332, size: 64, offset: 1920)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3295, file: !67, line: 617, baseType: !332, size: 64, offset: 1984)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3295, file: !67, line: 618, baseType: !332, size: 64, offset: 2048)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3295, file: !67, line: 620, baseType: !3383, size: 64, offset: 2112)
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3384, size: 64)
!3384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !67, line: 536, size: 256, elements: !3385)
!3385 = !{!3386, !3387, !3388, !3389}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3384, file: !67, line: 537, baseType: !148)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3384, file: !67, line: 538, baseType: !7, size: 32)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3384, file: !67, line: 540, baseType: !134, size: 128, offset: 64)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3384, file: !67, line: 543, baseType: !3390, size: 64, offset: 192)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !67, line: 534, flags: DIFlagFwdDecl)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3295, file: !67, line: 621, baseType: !3393, size: 64, offset: 2176)
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = !DISubroutineType(types: !3395)
!3395 = !{null, !124, !1277}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3295, file: !67, line: 622, baseType: !3397, size: 64, offset: 2240)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !67, line: 622, flags: DIFlagFwdDecl)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !125, file: !60, line: 486, baseType: !3400, size: 64, offset: 4096)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !67, line: 642, size: 1792, elements: !3402)
!3402 = !{!3403, !3404, !3405, !3409, !3410, !3411}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3401, file: !67, line: 643, baseType: !3162, size: 1472)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3401, file: !67, line: 644, baseType: !3165, size: 64, offset: 1472)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3401, file: !67, line: 645, baseType: !3406, size: 64, offset: 1536)
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{null, !124, !401}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3401, file: !67, line: 646, baseType: !3165, size: 64, offset: 1600)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3401, file: !67, line: 647, baseType: !3156, size: 64, offset: 1664)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3401, file: !67, line: 648, baseType: !3156, size: 64, offset: 1728)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !125, file: !60, line: 493, baseType: !3413, size: 64, offset: 4160)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !60, line: 493, flags: DIFlagFwdDecl)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !125, file: !60, line: 499, baseType: !134, size: 128, offset: 4224)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !125, file: !60, line: 502, baseType: !3417, size: 64, offset: 4352)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3419)
!3419 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !60, line: 502, flags: DIFlagFwdDecl)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !125, file: !60, line: 504, baseType: !3421, size: 64, offset: 4416)
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !125, file: !60, line: 505, baseType: !332, size: 64, offset: 4480)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !125, file: !60, line: 510, baseType: !332, size: 64, offset: 4544)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !125, file: !60, line: 511, baseType: !3425, size: 64, offset: 4608)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3427)
!3427 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !60, line: 511, flags: DIFlagFwdDecl)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !125, file: !60, line: 513, baseType: !3429, size: 64, offset: 4672)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !60, line: 288, size: 128, elements: !3431)
!3431 = !{!3432, !3433}
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3430, file: !60, line: 293, baseType: !7, size: 32)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3430, file: !60, line: 294, baseType: !87, size: 64, offset: 64)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !125, file: !60, line: 515, baseType: !134, size: 128, offset: 4736)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !125, file: !60, line: 526, baseType: !3436, offset: 4864)
!3436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3437, line: 5, elements: !162)
!3437 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !125, file: !60, line: 528, baseType: !3439, size: 64, offset: 4864)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3441, line: 14, flags: DIFlagFwdDecl)
!3441 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !125, file: !60, line: 529, baseType: !3443, size: 64, offset: 4928)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3193, line: 22, flags: DIFlagFwdDecl)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !125, file: !60, line: 534, baseType: !424, size: 32, offset: 4992)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !125, file: !60, line: 535, baseType: !327, size: 32, offset: 5024)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !125, file: !60, line: 537, baseType: !148, offset: 5056)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !125, file: !60, line: 538, baseType: !134, size: 128, offset: 5056)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !125, file: !60, line: 540, baseType: !3450, size: 64, offset: 5184)
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3452, line: 54, size: 960, elements: !3453)
!3452 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3453 = !{!3454, !3455, !3456, !3457, !3458, !3459, !3460, !3464, !3468, !3469, !3470, !3471, !3475, !3479, !3480}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3451, file: !3452, line: 55, baseType: !132, size: 64)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3451, file: !3452, line: 56, baseType: !544, size: 64, offset: 64)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3451, file: !3452, line: 58, baseType: !240, size: 64, offset: 128)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3451, file: !3452, line: 59, baseType: !240, size: 64, offset: 192)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3451, file: !3452, line: 60, baseType: !141, size: 64, offset: 256)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3451, file: !3452, line: 62, baseType: !3147, size: 64, offset: 320)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3451, file: !3452, line: 63, baseType: !3461, size: 64, offset: 384)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = !DISubroutineType(types: !3463)
!3463 = !{!189, !124, !3154}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3451, file: !3452, line: 65, baseType: !3465, size: 64, offset: 448)
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3466 = !DISubroutineType(types: !3467)
!3467 = !{null, !3450}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3451, file: !3452, line: 66, baseType: !3156, size: 64, offset: 512)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3451, file: !3452, line: 68, baseType: !3165, size: 64, offset: 576)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3451, file: !3452, line: 70, baseType: !2949, size: 64, offset: 640)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3451, file: !3452, line: 71, baseType: !3472, size: 64, offset: 704)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = !DISubroutineType(types: !3474)
!3474 = !{!2966, !124}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3451, file: !3452, line: 73, baseType: !3476, size: 64, offset: 768)
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3477 = !DISubroutineType(types: !3478)
!3478 = !{null, !124, !2983, !2984}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3451, file: !3452, line: 75, baseType: !3160, size: 64, offset: 832)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3451, file: !3452, line: 77, baseType: !3277, size: 64, offset: 896)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !125, file: !60, line: 541, baseType: !240, size: 64, offset: 5248)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !125, file: !60, line: 543, baseType: !3156, size: 64, offset: 5312)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !125, file: !60, line: 544, baseType: !3484, size: 64, offset: 5376)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !60, line: 45, flags: DIFlagFwdDecl)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !125, file: !60, line: 545, baseType: !3487, size: 64, offset: 5440)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !60, line: 47, flags: DIFlagFwdDecl)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !125, file: !60, line: 547, baseType: !401, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !125, file: !60, line: 548, baseType: !401, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !125, file: !60, line: 549, baseType: !401, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !125, file: !60, line: 550, baseType: !401, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iforce", file: !3495, line: 85, size: 38080, elements: !3496)
!3495 = !DIFile(filename: "drivers/input/joystick/iforce/iforce.h", directory: "/home/lizy2001/genbc/linux")
!3496 = !{!3497, !3773, !3784, !3804, !3805, !3812, !3816, !3817, !3818, !3833, !3840}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3494, file: !3495, line: 86, baseType: !3498, size: 64)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev", file: !3500, line: 131, size: 10432, elements: !3501)
!3500 = !DIFile(filename: "./include/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!3501 = !{!3502, !3503, !3504, !3505, !3513, !3514, !3515, !3517, !3518, !3519, !3520, !3521, !3522, !3524, !3525, !3526, !3527, !3528, !3529, !3543, !3548, !3643, !3646, !3647, !3648, !3650, !3653, !3663, !3664, !3665, !3666, !3667, !3671, !3675, !3679, !3683, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3770, !3771}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3499, file: !3500, line: 132, baseType: !132, size: 64)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !3499, file: !3500, line: 133, baseType: !132, size: 64, offset: 64)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !3499, file: !3500, line: 134, baseType: !132, size: 64, offset: 128)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3499, file: !3500, line: 135, baseType: !3506, size: 64, offset: 192)
!3506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_id", file: !3507, line: 59, size: 64, elements: !3508)
!3507 = !DIFile(filename: "./include/uapi/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!3508 = !{!3509, !3510, !3511, !3512}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !3506, file: !3507, line: 60, baseType: !91, size: 16)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3506, file: !3507, line: 61, baseType: !91, size: 16, offset: 16)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !3506, file: !3507, line: 62, baseType: !91, size: 16, offset: 32)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3506, file: !3507, line: 63, baseType: !91, size: 16, offset: 48)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !3499, file: !3500, line: 137, baseType: !1203, size: 64, offset: 256)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !3499, file: !3500, line: 139, baseType: !1203, size: 64, offset: 320)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !3499, file: !3500, line: 140, baseType: !3516, size: 768, offset: 384)
!3516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 768, elements: !2058)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !3499, file: !3500, line: 141, baseType: !1203, size: 64, offset: 1152)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !3499, file: !3500, line: 142, baseType: !1203, size: 64, offset: 1216)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !3499, file: !3500, line: 143, baseType: !1203, size: 64, offset: 1280)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !3499, file: !3500, line: 144, baseType: !1203, size: 64, offset: 1344)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !3499, file: !3500, line: 145, baseType: !1203, size: 64, offset: 1408)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !3499, file: !3500, line: 146, baseType: !3523, size: 128, offset: 1472)
!3523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 128, elements: !1402)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !3499, file: !3500, line: 147, baseType: !1203, size: 64, offset: 1600)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "hint_events_per_packet", scope: !3499, file: !3500, line: 149, baseType: !7, size: 32, offset: 1664)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "keycodemax", scope: !3499, file: !3500, line: 151, baseType: !7, size: 32, offset: 1696)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "keycodesize", scope: !3499, file: !3500, line: 152, baseType: !7, size: 32, offset: 1728)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !3499, file: !3500, line: 153, baseType: !97, size: 64, offset: 1792)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "setkeycode", scope: !3499, file: !3500, line: 155, baseType: !3530, size: 64, offset: 1856)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = !DISubroutineType(types: !3532)
!3532 = !{!123, !3498, !3533, !2444}
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3535)
!3535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_keymap_entry", file: !3507, line: 114, size: 320, elements: !3536)
!3536 = !{!3537, !3538, !3539, !3540, !3541}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3535, file: !3507, line: 116, baseType: !1186, size: 8)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3535, file: !3507, line: 117, baseType: !1186, size: 8, offset: 8)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3535, file: !3507, line: 118, baseType: !91, size: 16, offset: 16)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !3535, file: !3507, line: 119, baseType: !329, size: 32, offset: 32)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !3535, file: !3507, line: 120, baseType: !3542, size: 256, offset: 64)
!3542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1186, size: 256, elements: !2052)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "getkeycode", scope: !3499, file: !3500, line: 158, baseType: !3544, size: 64, offset: 1920)
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = !DISubroutineType(types: !3546)
!3546 = !{!123, !3498, !3547}
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !3499, file: !3500, line: 161, baseType: !3549, size: 64, offset: 1984)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_device", file: !3500, line: 534, size: 896, elements: !3551)
!3551 = !{!3552, !3619, !3623, !3627, !3631, !3632, !3636, !3637, !3638, !3639, !3640, !3641}
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "upload", scope: !3550, file: !3500, line: 535, baseType: !3553, size: 64)
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3554 = !DISubroutineType(types: !3555)
!3555 = !{!123, !3498, !3556, !3556}
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_effect", file: !3507, line: 450, size: 384, elements: !3558)
!3558 = !{!3559, !3560, !3561, !3562, !3567, !3572}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3557, file: !3507, line: 451, baseType: !91, size: 16)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3557, file: !3507, line: 452, baseType: !1038, size: 16, offset: 16)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !3557, file: !3507, line: 453, baseType: !91, size: 16, offset: 32)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !3557, file: !3507, line: 454, baseType: !3563, size: 32, offset: 48)
!3563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_trigger", file: !3507, line: 316, size: 32, elements: !3564)
!3564 = !{!3565, !3566}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !3563, file: !3507, line: 317, baseType: !91, size: 16)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !3563, file: !3507, line: 318, baseType: !91, size: 16, offset: 16)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "replay", scope: !3557, file: !3507, line: 455, baseType: !3568, size: 32, offset: 80)
!3568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_replay", file: !3507, line: 306, size: 32, elements: !3569)
!3569 = !{!3570, !3571}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3568, file: !3507, line: 307, baseType: !91, size: 16)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !3568, file: !3507, line: 308, baseType: !91, size: 16, offset: 16)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !3557, file: !3507, line: 463, baseType: !3573, size: 256, offset: 128)
!3573 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3557, file: !3507, line: 457, size: 256, elements: !3574)
!3574 = !{!3575, !3586, !3592, !3604, !3614}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !3573, file: !3507, line: 458, baseType: !3576, size: 80)
!3576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_constant_effect", file: !3507, line: 345, size: 80, elements: !3577)
!3577 = !{!3578, !3579}
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3576, file: !3507, line: 346, baseType: !1038, size: 16)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !3576, file: !3507, line: 347, baseType: !3580, size: 64, offset: 16)
!3580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_envelope", file: !3507, line: 333, size: 64, elements: !3581)
!3581 = !{!3582, !3583, !3584, !3585}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "attack_length", scope: !3580, file: !3507, line: 334, baseType: !91, size: 16)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "attack_level", scope: !3580, file: !3507, line: 335, baseType: !91, size: 16, offset: 16)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "fade_length", scope: !3580, file: !3507, line: 336, baseType: !91, size: 16, offset: 32)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "fade_level", scope: !3580, file: !3507, line: 337, baseType: !91, size: 16, offset: 48)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "ramp", scope: !3573, file: !3507, line: 459, baseType: !3587, size: 96)
!3587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_ramp_effect", file: !3507, line: 356, size: 96, elements: !3588)
!3588 = !{!3589, !3590, !3591}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "start_level", scope: !3587, file: !3507, line: 357, baseType: !1038, size: 16)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "end_level", scope: !3587, file: !3507, line: 358, baseType: !1038, size: 16, offset: 16)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !3587, file: !3507, line: 359, baseType: !3580, size: 64, offset: 32)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !3573, file: !3507, line: 460, baseType: !3593, size: 256)
!3593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_periodic_effect", file: !3507, line: 401, size: 256, elements: !3594)
!3594 = !{!3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602}
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "waveform", scope: !3593, file: !3507, line: 402, baseType: !91, size: 16)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3593, file: !3507, line: 403, baseType: !91, size: 16, offset: 16)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !3593, file: !3507, line: 404, baseType: !1038, size: 16, offset: 32)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3593, file: !3507, line: 405, baseType: !1038, size: 16, offset: 48)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !3593, file: !3507, line: 406, baseType: !91, size: 16, offset: 64)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !3593, file: !3507, line: 408, baseType: !3580, size: 64, offset: 80)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "custom_len", scope: !3593, file: !3507, line: 410, baseType: !329, size: 32, offset: 160)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "custom_data", scope: !3593, file: !3507, line: 411, baseType: !3603, size: 64, offset: 192)
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !3573, file: !3507, line: 461, baseType: !3605, size: 192)
!3605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3606, size: 192, elements: !1402)
!3606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_condition_effect", file: !3507, line: 372, size: 96, elements: !3607)
!3607 = !{!3608, !3609, !3610, !3611, !3612, !3613}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "right_saturation", scope: !3606, file: !3507, line: 373, baseType: !91, size: 16)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "left_saturation", scope: !3606, file: !3507, line: 374, baseType: !91, size: 16, offset: 16)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "right_coeff", scope: !3606, file: !3507, line: 376, baseType: !1038, size: 16, offset: 32)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "left_coeff", scope: !3606, file: !3507, line: 377, baseType: !1038, size: 16, offset: 48)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "deadband", scope: !3606, file: !3507, line: 379, baseType: !91, size: 16, offset: 64)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !3606, file: !3507, line: 380, baseType: !1038, size: 16, offset: 80)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "rumble", scope: !3573, file: !3507, line: 462, baseType: !3615, size: 32)
!3615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_rumble_effect", file: !3507, line: 422, size: 32, elements: !3616)
!3616 = !{!3617, !3618}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "strong_magnitude", scope: !3615, file: !3507, line: 423, baseType: !91, size: 16)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "weak_magnitude", scope: !3615, file: !3507, line: 424, baseType: !91, size: 16, offset: 16)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !3550, file: !3500, line: 537, baseType: !3620, size: 64, offset: 64)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 64)
!3621 = !DISubroutineType(types: !3622)
!3622 = !{!123, !3498, !123}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "playback", scope: !3550, file: !3500, line: 539, baseType: !3624, size: 64, offset: 128)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{!123, !3498, !123, !123}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "set_gain", scope: !3550, file: !3500, line: 540, baseType: !3628, size: 64, offset: 192)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = !DISubroutineType(types: !3630)
!3630 = !{null, !3498, !774}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "set_autocenter", scope: !3550, file: !3500, line: 541, baseType: !3628, size: 64, offset: 256)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !3550, file: !3500, line: 543, baseType: !3633, size: 64, offset: 320)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{null, !3549}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3550, file: !3500, line: 545, baseType: !97, size: 64, offset: 384)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !3550, file: !3500, line: 547, baseType: !3523, size: 128, offset: 448)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3550, file: !3500, line: 549, baseType: !1007, size: 192, offset: 576)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "max_effects", scope: !3550, file: !3500, line: 551, baseType: !123, size: 32, offset: 768)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "effects", scope: !3550, file: !3500, line: 552, baseType: !3556, size: 64, offset: 832)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "effect_owners", scope: !3550, file: !3500, line: 553, baseType: !3642, offset: 896)
!3642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, elements: !2153)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !3499, file: !3500, line: 163, baseType: !3644, size: 64, offset: 2048)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev_poller", file: !3500, line: 24, flags: DIFlagFwdDecl)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_key", scope: !3499, file: !3500, line: 165, baseType: !7, size: 32, offset: 2112)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3499, file: !3500, line: 166, baseType: !3325, size: 320, offset: 2176)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !3499, file: !3500, line: 168, baseType: !3649, size: 64, offset: 2496)
!3649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 64, elements: !1402)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !3499, file: !3500, line: 170, baseType: !3651, size: 64, offset: 2560)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt", file: !3500, line: 170, flags: DIFlagFwdDecl)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "absinfo", scope: !3499, file: !3500, line: 172, baseType: !3654, size: 64, offset: 2624)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_absinfo", file: !3507, line: 90, size: 192, elements: !3656)
!3656 = !{!3657, !3658, !3659, !3660, !3661, !3662}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3655, file: !3507, line: 91, baseType: !1278, size: 32)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !3655, file: !3507, line: 92, baseType: !1278, size: 32, offset: 32)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !3655, file: !3507, line: 93, baseType: !1278, size: 32, offset: 64)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !3655, file: !3507, line: 94, baseType: !1278, size: 32, offset: 96)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !3655, file: !3507, line: 95, baseType: !1278, size: 32, offset: 128)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !3655, file: !3507, line: 96, baseType: !1278, size: 32, offset: 160)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3499, file: !3500, line: 174, baseType: !3516, size: 768, offset: 2688)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !3499, file: !3500, line: 175, baseType: !1203, size: 64, offset: 3456)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !3499, file: !3500, line: 176, baseType: !1203, size: 64, offset: 3520)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !3499, file: !3500, line: 177, baseType: !1203, size: 64, offset: 3584)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3499, file: !3500, line: 179, baseType: !3668, size: 64, offset: 3648)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{!123, !3498}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3499, file: !3500, line: 180, baseType: !3672, size: 64, offset: 3712)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{null, !3498}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3499, file: !3500, line: 181, baseType: !3676, size: 64, offset: 3776)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!123, !3498, !264}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3499, file: !3500, line: 182, baseType: !3680, size: 64, offset: 3840)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{!123, !3498, !7, !7, !123}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "grab", scope: !3499, file: !3500, line: 184, baseType: !3684, size: 64, offset: 3904)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handle", file: !3500, line: 337, size: 576, elements: !3686)
!3686 = !{!3687, !3688, !3689, !3690, !3691, !3757, !3758}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3685, file: !3500, line: 339, baseType: !97, size: 64)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3685, file: !3500, line: 341, baseType: !123, size: 32, offset: 64)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3685, file: !3500, line: 342, baseType: !132, size: 64, offset: 128)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3685, file: !3500, line: 344, baseType: !3498, size: 64, offset: 192)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !3685, file: !3500, line: 345, baseType: !3692, size: 64, offset: 256)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handler", file: !3500, line: 302, size: 960, elements: !3694)
!3694 = !{!3695, !3696, !3700, !3711, !3715, !3719, !3746, !3750, !3751, !3752, !3753, !3754, !3755, !3756}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3693, file: !3500, line: 304, baseType: !97, size: 64)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3693, file: !3500, line: 306, baseType: !3697, size: 64, offset: 64)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{null, !3684, !7, !7, !123}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3693, file: !3500, line: 307, baseType: !3701, size: 64, offset: 128)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{null, !3684, !3704, !7}
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3706)
!3706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_value", file: !3500, line: 32, size: 64, elements: !3707)
!3707 = !{!3708, !3709, !3710}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3706, file: !3500, line: 33, baseType: !91, size: 16)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3706, file: !3500, line: 34, baseType: !91, size: 16, offset: 16)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3706, file: !3500, line: 35, baseType: !1278, size: 32, offset: 32)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3693, file: !3500, line: 309, baseType: !3712, size: 64, offset: 192)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = !DISubroutineType(types: !3714)
!3714 = !{!401, !3684, !7, !7, !123}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3693, file: !3500, line: 310, baseType: !3716, size: 64, offset: 256)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = !DISubroutineType(types: !3718)
!3718 = !{!401, !3692, !3498}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !3693, file: !3500, line: 311, baseType: !3720, size: 64, offset: 320)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!123, !3692, !3498, !3723}
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3725)
!3725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_device_id", file: !3218, line: 342, size: 1600, elements: !3726)
!3726 = !{!3727, !3728, !3729, !3730, !3731, !3732, !3734, !3736, !3737, !3738, !3739, !3740, !3741, !3743, !3744, !3745}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3725, file: !3218, line: 344, baseType: !3237, size: 64)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !3725, file: !3218, line: 346, baseType: !91, size: 16, offset: 64)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3725, file: !3218, line: 347, baseType: !91, size: 16, offset: 80)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !3725, file: !3218, line: 348, baseType: !91, size: 16, offset: 96)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3725, file: !3218, line: 349, baseType: !91, size: 16, offset: 112)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !3725, file: !3218, line: 351, baseType: !3733, size: 64, offset: 128)
!3733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3237, size: 64, elements: !1204)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !3725, file: !3218, line: 352, baseType: !3735, size: 768, offset: 192)
!3735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3237, size: 768, elements: !2058)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !3725, file: !3218, line: 353, baseType: !3733, size: 64, offset: 960)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !3725, file: !3218, line: 354, baseType: !3733, size: 64, offset: 1024)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !3725, file: !3218, line: 355, baseType: !3733, size: 64, offset: 1088)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !3725, file: !3218, line: 356, baseType: !3733, size: 64, offset: 1152)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !3725, file: !3218, line: 357, baseType: !3733, size: 64, offset: 1216)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !3725, file: !3218, line: 358, baseType: !3742, size: 128, offset: 1280)
!3742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3237, size: 128, elements: !1402)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !3725, file: !3218, line: 359, baseType: !3733, size: 64, offset: 1408)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !3725, file: !3218, line: 360, baseType: !3733, size: 64, offset: 1472)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !3725, file: !3218, line: 362, baseType: !3237, size: 64, offset: 1536)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !3693, file: !3500, line: 312, baseType: !3747, size: 64, offset: 384)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{null, !3684}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3693, file: !3500, line: 313, baseType: !3747, size: 64, offset: 448)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_minors", scope: !3693, file: !3500, line: 315, baseType: !401, size: 8, offset: 512)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3693, file: !3500, line: 316, baseType: !123, size: 32, offset: 544)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3693, file: !3500, line: 317, baseType: !132, size: 64, offset: 576)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3693, file: !3500, line: 319, baseType: !3723, size: 64, offset: 640)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !3693, file: !3500, line: 321, baseType: !134, size: 128, offset: 704)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3693, file: !3500, line: 322, baseType: !134, size: 128, offset: 832)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "d_node", scope: !3685, file: !3500, line: 347, baseType: !134, size: 128, offset: 320)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "h_node", scope: !3685, file: !3500, line: 348, baseType: !134, size: 128, offset: 448)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !3499, file: !3500, line: 186, baseType: !148, offset: 3968)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3499, file: !3500, line: 187, baseType: !1007, size: 192, offset: 3968)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !3499, file: !3500, line: 189, baseType: !7, size: 32, offset: 4160)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "going_away", scope: !3499, file: !3500, line: 190, baseType: !401, size: 8, offset: 4192)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3499, file: !3500, line: 192, baseType: !125, size: 5568, offset: 4224)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !3499, file: !3500, line: 194, baseType: !134, size: 128, offset: 9792)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3499, file: !3500, line: 195, baseType: !134, size: 128, offset: 9920)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "num_vals", scope: !3499, file: !3500, line: 197, baseType: !7, size: 32, offset: 10048)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "max_vals", scope: !3499, file: !3500, line: 198, baseType: !7, size: 32, offset: 10080)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !3499, file: !3500, line: 199, baseType: !3769, size: 64, offset: 10112)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "devres_managed", scope: !3499, file: !3500, line: 201, baseType: !401, size: 8, offset: 10176)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3499, file: !3500, line: 203, baseType: !3772, size: 192, offset: 10240)
!3772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1133, size: 192, elements: !190)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3494, file: !3495, line: 87, baseType: !3774, size: 64, offset: 64)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iforce_device", file: !3495, line: 66, size: 320, elements: !3776)
!3776 = !{!3777, !3778, !3779, !3780, !3782, !3783}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "idvendor", scope: !3775, file: !3495, line: 67, baseType: !774, size: 16)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "idproduct", scope: !3775, file: !3495, line: 68, baseType: !774, size: 16, offset: 16)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3775, file: !3495, line: 69, baseType: !189, size: 64, offset: 64)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "btn", scope: !3775, file: !3495, line: 70, baseType: !3781, size: 64, offset: 128)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "abs", scope: !3775, file: !3495, line: 71, baseType: !3781, size: 64, offset: 192)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !3775, file: !3495, line: 72, baseType: !3781, size: 64, offset: 256)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "xport_ops", scope: !3494, file: !3495, line: 88, baseType: !3785, size: 64, offset: 128)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3787)
!3787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iforce_xport_ops", file: !3495, line: 77, size: 256, elements: !3788)
!3788 = !{!3789, !3793, !3799, !3803}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "xmit", scope: !3787, file: !3495, line: 78, baseType: !3790, size: 64)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = !DISubroutineType(types: !3792)
!3792 = !{null, !3493}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "get_id", scope: !3787, file: !3495, line: 79, baseType: !3794, size: 64, offset: 64)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!123, !3493, !1185, !3797, !3798}
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "start_io", scope: !3787, file: !3495, line: 81, baseType: !3800, size: 64, offset: 128)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DISubroutineType(types: !3802)
!3802 = !{!123, !3493}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "stop_io", scope: !3787, file: !3495, line: 82, baseType: !3790, size: 64, offset: 192)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_lock", scope: !3494, file: !3495, line: 90, baseType: !148, offset: 192)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "xmit", scope: !3494, file: !3495, line: 92, baseType: !3806, size: 128, offset: 192)
!3806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "circ_buf", file: !3807, line: 9, size: 128, elements: !3808)
!3807 = !DIFile(filename: "./include/linux/circ_buf.h", directory: "/home/lizy2001/genbc/linux")
!3808 = !{!3809, !3810, !3811}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3806, file: !3807, line: 10, baseType: !189, size: 64)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3806, file: !3807, line: 11, baseType: !123, size: 32, offset: 64)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !3806, file: !3807, line: 12, baseType: !123, size: 32, offset: 96)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_data", scope: !3494, file: !3495, line: 93, baseType: !3813, size: 2048, offset: 320)
!3813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 2048, elements: !3814)
!3814 = !{!3815}
!3815 = !DISubrange(count: 256)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_flags", scope: !3494, file: !3495, line: 94, baseType: !1203, size: 64, offset: 2368)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !3494, file: !3495, line: 97, baseType: !1314, size: 128, offset: 2432)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "device_memory", scope: !3494, file: !3495, line: 98, baseType: !3819, size: 512, offset: 2560)
!3819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !3820, line: 20, size: 512, elements: !3821)
!3820 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!3821 = !{!3822, !3825, !3826, !3827, !3828, !3829, !3831, !3832}
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3819, file: !3820, line: 21, baseType: !3823, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !135, line: 158, baseType: !3824)
!3824 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !135, line: 153, baseType: !332)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3819, file: !3820, line: 22, baseType: !3823, size: 64, offset: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3819, file: !3820, line: 23, baseType: !132, size: 64, offset: 128)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3819, file: !3820, line: 24, baseType: !87, size: 64, offset: 192)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3819, file: !3820, line: 25, baseType: !87, size: 64, offset: 256)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3819, file: !3820, line: 26, baseType: !3830, size: 64, offset: 320)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3819, file: !3820, line: 26, baseType: !3830, size: 64, offset: 384)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3819, file: !3820, line: 26, baseType: !3830, size: 64, offset: 448)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "core_effects", scope: !3494, file: !3495, line: 99, baseType: !3834, size: 34816, offset: 3072)
!3834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3835, size: 34816, elements: !2052)
!3835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iforce_core_effect", file: !3495, line: 39, size: 1088, elements: !3836)
!3836 = !{!3837, !3838, !3839}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "mod1_chunk", scope: !3835, file: !3495, line: 41, baseType: !3819, size: 512)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "mod2_chunk", scope: !3835, file: !3495, line: 42, baseType: !3819, size: 512, offset: 512)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3835, file: !3495, line: 43, baseType: !1203, size: 64, offset: 1024)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "mem_mutex", scope: !3494, file: !3495, line: 100, baseType: !1007, size: 192, offset: 37888)
!3841 = !DIGlobalVariableExpression(var: !3842, expr: !DIExpression())
!3842 = distinct !DIGlobalVariable(name: "__key", scope: !120, file: !3, line: 227, type: !559, isLocal: true, isDefinition: true)
!3843 = !DIGlobalVariableExpression(var: !3844, expr: !DIExpression())
!3844 = distinct !DIGlobalVariable(name: "iforce_device", scope: !2, file: !3, line: 47, type: !3845, isLocal: true, isDefinition: true)
!3845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3775, size: 4800, elements: !3846)
!3846 = !{!3847}
!3847 = !DISubrange(count: 15)
!3848 = !DIGlobalVariableExpression(var: !3849, expr: !DIExpression())
!3849 = distinct !DIGlobalVariable(name: "btn_wheel", scope: !2, file: !3, line: 25, type: !3850, isLocal: true, isDefinition: true)
!3850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1039, size: 144, elements: !3234)
!3851 = !DIGlobalVariableExpression(var: !3852, expr: !DIExpression())
!3852 = distinct !DIGlobalVariable(name: "abs_wheel", scope: !2, file: !3, line: 39, type: !3853, isLocal: true, isDefinition: true)
!3853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1039, size: 96, elements: !1458)
!3854 = !DIGlobalVariableExpression(var: !3855, expr: !DIExpression())
!3855 = distinct !DIGlobalVariable(name: "ff_iforce", scope: !2, file: !3, line: 42, type: !3856, isLocal: true, isDefinition: true)
!3856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1039, size: 192, elements: !2058)
!3857 = !DIGlobalVariableExpression(var: !3858, expr: !DIExpression())
!3858 = distinct !DIGlobalVariable(name: "btn_joystick", scope: !2, file: !3, line: 16, type: !3859, isLocal: true, isDefinition: true)
!3859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1039, size: 224, elements: !3860)
!3860 = !{!3861}
!3861 = !DISubrange(count: 14)
!3862 = !DIGlobalVariableExpression(var: !3863, expr: !DIExpression())
!3863 = distinct !DIGlobalVariable(name: "abs_joystick", scope: !2, file: !3, line: 29, type: !3853, isLocal: true, isDefinition: true)
!3864 = !DIGlobalVariableExpression(var: !3865, expr: !DIExpression())
!3865 = distinct !DIGlobalVariable(name: "btn_joystick_avb", scope: !2, file: !3, line: 21, type: !3866, isLocal: true, isDefinition: true)
!3866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1039, size: 160, elements: !3867)
!3867 = !{!3868}
!3868 = !DISubrange(count: 10)
!3869 = !DIGlobalVariableExpression(var: !3870, expr: !DIExpression())
!3870 = distinct !DIGlobalVariable(name: "abs_avb_pegasus", scope: !2, file: !3, line: 35, type: !3850, isLocal: true, isDefinition: true)
!3871 = !DIGlobalVariableExpression(var: !3872, expr: !DIExpression())
!3872 = distinct !DIGlobalVariable(name: "abs_joystick_rudder", scope: !2, file: !3, line: 32, type: !3873, isLocal: true, isDefinition: true)
!3873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1039, size: 112, elements: !3874)
!3874 = !{!3875}
!3875 = !DISubrange(count: 7)
!3876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 696, elements: !3877)
!3877 = !{!3878}
!3878 = !DISubrange(count: 87)
!3879 = !{i32 7, !"Dwarf Version", i32 4}
!3880 = !{i32 2, !"Debug Info Version", i32 3}
!3881 = !{i32 1, !"wchar_size", i32 2}
!3882 = !{i32 1, !"Code Model", i32 2}
!3883 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!3884 = !DILocalVariable(name: "p", arg: 1, scope: !3885, file: !3886, line: 64, type: !3889)
!3885 = distinct !DISubprogram(name: "__le16_to_cpup", scope: !3886, file: !3886, line: 64, type: !3887, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!3886 = !DIFile(filename: "./include/uapi/linux/byteorder/little_endian.h", directory: "/home/lizy2001/genbc/linux")
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!91, !3889}
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!3891 = !DILocation(line: 64, column: 59, scope: !3885, inlinedAt: !3892)
!3892 = distinct !DILocation(line: 10, column: 9, scope: !3893, inlinedAt: !3897)
!3893 = distinct !DISubprogram(name: "get_unaligned_le16", scope: !3894, file: !3894, line: 8, type: !3895, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!3894 = !DIFile(filename: "./include/linux/unaligned/access_ok.h", directory: "/home/lizy2001/genbc/linux")
!3895 = !DISubroutineType(types: !3896)
!3896 = !{!774, !2966}
!3897 = distinct !DILocation(line: 286, column: 31, scope: !3898)
!3898 = distinct !DILexicalBlock(scope: !120, file: !3, line: 285, column: 6)
!3899 = !DILocalVariable(name: "p", arg: 1, scope: !3893, file: !3894, line: 8, type: !2966)
!3900 = !DILocation(line: 8, column: 59, scope: !3893, inlinedAt: !3897)
!3901 = !DILocation(line: 64, column: 59, scope: !3885, inlinedAt: !3902)
!3902 = distinct !DILocation(line: 10, column: 9, scope: !3893, inlinedAt: !3903)
!3903 = distinct !DILocation(line: 281, column: 27, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !120, file: !3, line: 280, column: 6)
!3905 = !DILocation(line: 8, column: 59, scope: !3893, inlinedAt: !3903)
!3906 = !DILocation(line: 64, column: 59, scope: !3885, inlinedAt: !3907)
!3907 = distinct !DILocation(line: 10, column: 9, scope: !3893, inlinedAt: !3908)
!3908 = distinct !DILocation(line: 276, column: 26, scope: !3909)
!3909 = distinct !DILexicalBlock(scope: !120, file: !3, line: 275, column: 6)
!3910 = !DILocation(line: 8, column: 59, scope: !3893, inlinedAt: !3908)
!3911 = !DILocalVariable(name: "lock", arg: 1, scope: !3912, file: !3913, line: 327, type: !3917)
!3912 = distinct !DISubprogram(name: "spinlock_check", scope: !3913, file: !3913, line: 327, type: !3914, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!3913 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!3914 = !DISubroutineType(types: !3915)
!3915 = !{!3916, !3917}
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!3918 = !DILocation(line: 327, column: 67, scope: !3912, inlinedAt: !3919)
!3919 = distinct !DILocation(line: 226, column: 2, scope: !3920)
!3920 = distinct !DILexicalBlock(scope: !120, file: !3, line: 226, column: 2)
!3921 = !DILocalVariable(name: "parent", arg: 1, scope: !120, file: !3, line: 210, type: !124)
!3922 = !DILocation(line: 210, column: 39, scope: !120)
!3923 = !DILocalVariable(name: "bustype", arg: 2, scope: !120, file: !3, line: 210, type: !774)
!3924 = !DILocation(line: 210, column: 51, scope: !120)
!3925 = !DILocalVariable(name: "iforce", arg: 3, scope: !120, file: !3, line: 211, type: !3493)
!3926 = !DILocation(line: 211, column: 25, scope: !120)
!3927 = !DILocalVariable(name: "input_dev", scope: !120, file: !3, line: 213, type: !3498)
!3928 = !DILocation(line: 213, column: 20, scope: !120)
!3929 = !DILocalVariable(name: "ff", scope: !120, file: !3, line: 214, type: !3549)
!3930 = !DILocation(line: 214, column: 20, scope: !120)
!3931 = !DILocalVariable(name: "c", scope: !120, file: !3, line: 215, type: !3932)
!3932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1185, size: 40, elements: !3933)
!3933 = !{!3934}
!3934 = !DISubrange(count: 5)
!3935 = !DILocation(line: 215, column: 5, scope: !120)
!3936 = !DILocalVariable(name: "buf", scope: !120, file: !3, line: 216, type: !3937)
!3937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1185, size: 128, elements: !1568)
!3938 = !DILocation(line: 216, column: 5, scope: !120)
!3939 = !DILocalVariable(name: "len", scope: !120, file: !3, line: 217, type: !234)
!3940 = !DILocation(line: 217, column: 9, scope: !120)
!3941 = !DILocalVariable(name: "i", scope: !120, file: !3, line: 218, type: !123)
!3942 = !DILocation(line: 218, column: 6, scope: !120)
!3943 = !DILocalVariable(name: "error", scope: !120, file: !3, line: 218, type: !123)
!3944 = !DILocation(line: 218, column: 9, scope: !120)
!3945 = !DILocalVariable(name: "ff_effects", scope: !120, file: !3, line: 219, type: !123)
!3946 = !DILocation(line: 219, column: 6, scope: !120)
!3947 = !DILocation(line: 221, column: 14, scope: !120)
!3948 = !DILocation(line: 221, column: 12, scope: !120)
!3949 = !DILocation(line: 222, column: 7, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !120, file: !3, line: 222, column: 6)
!3951 = !DILocation(line: 222, column: 6, scope: !120)
!3952 = !DILocation(line: 223, column: 3, scope: !3950)
!3953 = !DILocation(line: 225, column: 2, scope: !120)
!3954 = !DILocation(line: 225, column: 2, scope: !3955)
!3955 = distinct !DILexicalBlock(scope: !120, file: !3, line: 225, column: 2)
!3956 = !DILocation(line: 226, column: 2, scope: !120)
!3957 = !DILocation(line: 226, column: 2, scope: !3920)
!3958 = !DILocation(line: 329, column: 10, scope: !3912, inlinedAt: !3919)
!3959 = !DILocation(line: 329, column: 16, scope: !3912, inlinedAt: !3919)
!3960 = !DILocation(line: 227, column: 2, scope: !120)
!3961 = !DILocation(line: 227, column: 2, scope: !3962)
!3962 = distinct !DILexicalBlock(scope: !120, file: !3, line: 227, column: 2)
!3963 = !DILocation(line: 228, column: 21, scope: !120)
!3964 = !DILocation(line: 228, column: 29, scope: !120)
!3965 = !DILocation(line: 228, column: 2, scope: !120)
!3966 = !DILocation(line: 228, column: 10, scope: !120)
!3967 = !DILocation(line: 228, column: 15, scope: !120)
!3968 = !DILocation(line: 228, column: 19, scope: !120)
!3969 = !DILocation(line: 229, column: 16, scope: !120)
!3970 = !DILocation(line: 229, column: 2, scope: !120)
!3971 = !DILocation(line: 229, column: 10, scope: !120)
!3972 = !DILocation(line: 229, column: 14, scope: !120)
!3973 = !DILocation(line: 235, column: 26, scope: !120)
!3974 = !DILocation(line: 235, column: 2, scope: !120)
!3975 = !DILocation(line: 235, column: 13, scope: !120)
!3976 = !DILocation(line: 235, column: 16, scope: !120)
!3977 = !DILocation(line: 235, column: 24, scope: !120)
!3978 = !DILocation(line: 236, column: 26, scope: !120)
!3979 = !DILocation(line: 236, column: 2, scope: !120)
!3980 = !DILocation(line: 236, column: 13, scope: !120)
!3981 = !DILocation(line: 236, column: 17, scope: !120)
!3982 = !DILocation(line: 236, column: 24, scope: !120)
!3983 = !DILocation(line: 238, column: 20, scope: !120)
!3984 = !DILocation(line: 238, column: 31, scope: !120)
!3985 = !DILocation(line: 238, column: 2, scope: !120)
!3986 = !DILocation(line: 240, column: 2, scope: !120)
!3987 = !DILocation(line: 240, column: 13, scope: !120)
!3988 = !DILocation(line: 240, column: 18, scope: !120)
!3989 = !DILocation(line: 241, column: 2, scope: !120)
!3990 = !DILocation(line: 241, column: 13, scope: !120)
!3991 = !DILocation(line: 241, column: 18, scope: !120)
!3992 = !DILocation(line: 242, column: 2, scope: !120)
!3993 = !DILocation(line: 242, column: 13, scope: !120)
!3994 = !DILocation(line: 242, column: 19, scope: !120)
!3995 = !DILocation(line: 248, column: 2, scope: !120)
!3996 = !DILocation(line: 248, column: 10, scope: !120)
!3997 = !DILocation(line: 248, column: 24, scope: !120)
!3998 = !DILocation(line: 248, column: 29, scope: !120)
!3999 = !DILocation(line: 249, column: 2, scope: !120)
!4000 = !DILocation(line: 249, column: 10, scope: !120)
!4001 = !DILocation(line: 249, column: 24, scope: !120)
!4002 = !DILocation(line: 249, column: 30, scope: !120)
!4003 = !DILocation(line: 250, column: 2, scope: !120)
!4004 = !DILocation(line: 250, column: 10, scope: !120)
!4005 = !DILocation(line: 250, column: 24, scope: !120)
!4006 = !DILocation(line: 250, column: 28, scope: !120)
!4007 = !DILocation(line: 251, column: 2, scope: !120)
!4008 = !DILocation(line: 251, column: 10, scope: !120)
!4009 = !DILocation(line: 251, column: 24, scope: !120)
!4010 = !DILocation(line: 251, column: 30, scope: !120)
!4011 = !DILocation(line: 252, column: 2, scope: !120)
!4012 = !DILocation(line: 252, column: 10, scope: !120)
!4013 = !DILocation(line: 252, column: 24, scope: !120)
!4014 = !DILocation(line: 252, column: 31, scope: !120)
!4015 = !DILocation(line: 253, column: 2, scope: !120)
!4016 = !DILocation(line: 253, column: 10, scope: !120)
!4017 = !DILocation(line: 253, column: 24, scope: !120)
!4018 = !DILocation(line: 253, column: 30, scope: !120)
!4019 = !DILocation(line: 254, column: 2, scope: !120)
!4020 = !DILocation(line: 254, column: 10, scope: !120)
!4021 = !DILocation(line: 254, column: 24, scope: !120)
!4022 = !DILocation(line: 254, column: 32, scope: !120)
!4023 = !DILocation(line: 260, column: 9, scope: !4024)
!4024 = distinct !DILexicalBlock(scope: !120, file: !3, line: 260, column: 2)
!4025 = !DILocation(line: 260, column: 7, scope: !4024)
!4026 = !DILocation(line: 260, column: 14, scope: !4027)
!4027 = distinct !DILexicalBlock(scope: !4024, file: !3, line: 260, column: 2)
!4028 = !DILocation(line: 260, column: 16, scope: !4027)
!4029 = !DILocation(line: 260, column: 2, scope: !4024)
!4030 = !DILocation(line: 261, column: 29, scope: !4031)
!4031 = distinct !DILexicalBlock(scope: !4027, file: !3, line: 261, column: 7)
!4032 = !DILocation(line: 261, column: 42, scope: !4031)
!4033 = !DILocation(line: 261, column: 8, scope: !4031)
!4034 = !DILocation(line: 261, column: 7, scope: !4027)
!4035 = !DILocation(line: 262, column: 4, scope: !4031)
!4036 = !DILocation(line: 261, column: 51, scope: !4031)
!4037 = !DILocation(line: 260, column: 23, scope: !4027)
!4038 = !DILocation(line: 260, column: 2, scope: !4027)
!4039 = distinct !{!4039, !4029, !4040}
!4040 = !DILocation(line: 262, column: 4, scope: !4024)
!4041 = !DILocation(line: 264, column: 6, scope: !4042)
!4042 = distinct !DILexicalBlock(scope: !120, file: !3, line: 264, column: 6)
!4043 = !DILocation(line: 264, column: 8, scope: !4042)
!4044 = !DILocation(line: 264, column: 6, scope: !120)
!4045 = !DILocation(line: 265, column: 3, scope: !4046)
!4046 = distinct !DILexicalBlock(scope: !4042, file: !3, line: 264, column: 15)
!4047 = !DILocation(line: 267, column: 9, scope: !4046)
!4048 = !DILocation(line: 268, column: 3, scope: !4046)
!4049 = !DILocation(line: 275, column: 28, scope: !3909)
!4050 = !DILocation(line: 275, column: 41, scope: !3909)
!4051 = !DILocation(line: 275, column: 7, scope: !3909)
!4052 = !DILocation(line: 275, column: 52, scope: !3909)
!4053 = !DILocation(line: 275, column: 55, scope: !3909)
!4054 = !DILocation(line: 275, column: 59, scope: !3909)
!4055 = !DILocation(line: 275, column: 6, scope: !120)
!4056 = !DILocation(line: 276, column: 45, scope: !3909)
!4057 = !DILocation(line: 276, column: 49, scope: !3909)
!4058 = !DILocation(line: 10, column: 32, scope: !3893, inlinedAt: !3908)
!4059 = !DILocation(line: 10, column: 22, scope: !3893, inlinedAt: !3908)
!4060 = !DILocation(line: 66, column: 25, scope: !3885, inlinedAt: !3907)
!4061 = !DILocation(line: 66, column: 24, scope: !3885, inlinedAt: !3907)
!4062 = !DILocation(line: 276, column: 3, scope: !3909)
!4063 = !DILocation(line: 276, column: 14, scope: !3909)
!4064 = !DILocation(line: 276, column: 17, scope: !3909)
!4065 = !DILocation(line: 276, column: 24, scope: !3909)
!4066 = !DILocation(line: 278, column: 3, scope: !3909)
!4067 = !DILocation(line: 280, column: 28, scope: !3904)
!4068 = !DILocation(line: 280, column: 41, scope: !3904)
!4069 = !DILocation(line: 280, column: 7, scope: !3904)
!4070 = !DILocation(line: 280, column: 52, scope: !3904)
!4071 = !DILocation(line: 280, column: 55, scope: !3904)
!4072 = !DILocation(line: 280, column: 59, scope: !3904)
!4073 = !DILocation(line: 280, column: 6, scope: !120)
!4074 = !DILocation(line: 281, column: 46, scope: !3904)
!4075 = !DILocation(line: 281, column: 50, scope: !3904)
!4076 = !DILocation(line: 10, column: 32, scope: !3893, inlinedAt: !3903)
!4077 = !DILocation(line: 10, column: 22, scope: !3893, inlinedAt: !3903)
!4078 = !DILocation(line: 66, column: 25, scope: !3885, inlinedAt: !3902)
!4079 = !DILocation(line: 66, column: 24, scope: !3885, inlinedAt: !3902)
!4080 = !DILocation(line: 281, column: 3, scope: !3904)
!4081 = !DILocation(line: 281, column: 14, scope: !3904)
!4082 = !DILocation(line: 281, column: 17, scope: !3904)
!4083 = !DILocation(line: 281, column: 25, scope: !3904)
!4084 = !DILocation(line: 283, column: 3, scope: !3904)
!4085 = !DILocation(line: 285, column: 28, scope: !3898)
!4086 = !DILocation(line: 285, column: 41, scope: !3898)
!4087 = !DILocation(line: 285, column: 7, scope: !3898)
!4088 = !DILocation(line: 285, column: 52, scope: !3898)
!4089 = !DILocation(line: 285, column: 55, scope: !3898)
!4090 = !DILocation(line: 285, column: 59, scope: !3898)
!4091 = !DILocation(line: 285, column: 6, scope: !120)
!4092 = !DILocation(line: 286, column: 50, scope: !3898)
!4093 = !DILocation(line: 286, column: 54, scope: !3898)
!4094 = !DILocation(line: 10, column: 32, scope: !3893, inlinedAt: !3897)
!4095 = !DILocation(line: 10, column: 22, scope: !3893, inlinedAt: !3897)
!4096 = !DILocation(line: 66, column: 25, scope: !3885, inlinedAt: !3892)
!4097 = !DILocation(line: 66, column: 24, scope: !3885, inlinedAt: !3892)
!4098 = !DILocation(line: 286, column: 31, scope: !3898)
!4099 = !DILocation(line: 286, column: 3, scope: !3898)
!4100 = !DILocation(line: 286, column: 11, scope: !3898)
!4101 = !DILocation(line: 286, column: 25, scope: !3898)
!4102 = !DILocation(line: 286, column: 29, scope: !3898)
!4103 = !DILocation(line: 288, column: 3, scope: !3898)
!4104 = !DILocation(line: 290, column: 28, scope: !4105)
!4105 = distinct !DILexicalBlock(scope: !120, file: !3, line: 290, column: 6)
!4106 = !DILocation(line: 290, column: 41, scope: !4105)
!4107 = !DILocation(line: 290, column: 7, scope: !4105)
!4108 = !DILocation(line: 290, column: 52, scope: !4105)
!4109 = !DILocation(line: 290, column: 55, scope: !4105)
!4110 = !DILocation(line: 290, column: 59, scope: !4105)
!4111 = !DILocation(line: 290, column: 6, scope: !120)
!4112 = !DILocation(line: 291, column: 16, scope: !4105)
!4113 = !DILocation(line: 291, column: 14, scope: !4105)
!4114 = !DILocation(line: 291, column: 3, scope: !4105)
!4115 = !DILocation(line: 293, column: 3, scope: !4105)
!4116 = !DILocation(line: 296, column: 6, scope: !4117)
!4117 = distinct !DILexicalBlock(scope: !120, file: !3, line: 296, column: 6)
!4118 = !DILocation(line: 296, column: 17, scope: !4117)
!4119 = !DILocation(line: 296, column: 6, scope: !120)
!4120 = !DILocation(line: 297, column: 3, scope: !4121)
!4121 = distinct !DILexicalBlock(scope: !4117, file: !3, line: 296, column: 39)
!4122 = !DILocation(line: 299, column: 14, scope: !4121)
!4123 = !DILocation(line: 300, column: 2, scope: !4121)
!4124 = !DILocation(line: 306, column: 9, scope: !4125)
!4125 = distinct !DILexicalBlock(scope: !120, file: !3, line: 306, column: 2)
!4126 = !DILocation(line: 306, column: 7, scope: !4125)
!4127 = !DILocation(line: 306, column: 16, scope: !4128)
!4128 = distinct !DILexicalBlock(scope: !4125, file: !3, line: 306, column: 2)
!4129 = !DILocation(line: 306, column: 14, scope: !4128)
!4130 = !DILocation(line: 306, column: 2, scope: !4125)
!4131 = !DILocation(line: 307, column: 29, scope: !4132)
!4132 = distinct !DILexicalBlock(scope: !4128, file: !3, line: 307, column: 7)
!4133 = !DILocation(line: 307, column: 39, scope: !4132)
!4134 = !DILocation(line: 307, column: 37, scope: !4132)
!4135 = !DILocation(line: 307, column: 43, scope: !4132)
!4136 = !DILocation(line: 307, column: 8, scope: !4132)
!4137 = !DILocation(line: 307, column: 7, scope: !4128)
!4138 = !DILocation(line: 308, column: 23, scope: !4132)
!4139 = !DILocation(line: 309, column: 35, scope: !4132)
!4140 = !DILocation(line: 309, column: 33, scope: !4132)
!4141 = !DILocation(line: 309, column: 9, scope: !4132)
!4142 = !DILocation(line: 309, column: 40, scope: !4132)
!4143 = !DILocation(line: 308, column: 4, scope: !4132)
!4144 = !DILocation(line: 307, column: 52, scope: !4132)
!4145 = !DILocation(line: 306, column: 21, scope: !4128)
!4146 = !DILocation(line: 306, column: 2, scope: !4128)
!4147 = distinct !{!4147, !4130, !4148}
!4148 = !DILocation(line: 309, column: 43, scope: !4125)
!4149 = !DILocation(line: 314, column: 24, scope: !120)
!4150 = !DILocation(line: 314, column: 2, scope: !120)
!4151 = !DILocation(line: 320, column: 9, scope: !4152)
!4152 = distinct !DILexicalBlock(scope: !120, file: !3, line: 320, column: 2)
!4153 = !DILocation(line: 320, column: 7, scope: !4152)
!4154 = !DILocation(line: 320, column: 28, scope: !4155)
!4155 = distinct !DILexicalBlock(scope: !4152, file: !3, line: 320, column: 2)
!4156 = !DILocation(line: 320, column: 14, scope: !4155)
!4157 = !DILocation(line: 320, column: 31, scope: !4155)
!4158 = !DILocation(line: 320, column: 2, scope: !4152)
!4159 = !DILocation(line: 321, column: 21, scope: !4160)
!4160 = distinct !DILexicalBlock(scope: !4155, file: !3, line: 321, column: 7)
!4161 = !DILocation(line: 321, column: 7, scope: !4160)
!4162 = !DILocation(line: 321, column: 24, scope: !4160)
!4163 = !DILocation(line: 321, column: 36, scope: !4160)
!4164 = !DILocation(line: 321, column: 47, scope: !4160)
!4165 = !DILocation(line: 321, column: 50, scope: !4160)
!4166 = !DILocation(line: 321, column: 33, scope: !4160)
!4167 = !DILocation(line: 321, column: 57, scope: !4160)
!4168 = !DILocation(line: 322, column: 21, scope: !4160)
!4169 = !DILocation(line: 322, column: 7, scope: !4160)
!4170 = !DILocation(line: 322, column: 24, scope: !4160)
!4171 = !DILocation(line: 322, column: 37, scope: !4160)
!4172 = !DILocation(line: 322, column: 48, scope: !4160)
!4173 = !DILocation(line: 322, column: 51, scope: !4160)
!4174 = !DILocation(line: 322, column: 34, scope: !4160)
!4175 = !DILocation(line: 321, column: 7, scope: !4155)
!4176 = !DILocation(line: 323, column: 4, scope: !4160)
!4177 = !DILocation(line: 320, column: 42, scope: !4155)
!4178 = !DILocation(line: 320, column: 2, scope: !4155)
!4179 = distinct !{!4179, !4158, !4180}
!4180 = !DILocation(line: 323, column: 4, scope: !4152)
!4181 = !DILocation(line: 325, column: 33, scope: !120)
!4182 = !DILocation(line: 325, column: 31, scope: !120)
!4183 = !DILocation(line: 325, column: 2, scope: !120)
!4184 = !DILocation(line: 325, column: 10, scope: !120)
!4185 = !DILocation(line: 325, column: 15, scope: !120)
!4186 = !DILocation(line: 326, column: 20, scope: !120)
!4187 = !DILocation(line: 326, column: 28, scope: !120)
!4188 = !DILocation(line: 326, column: 34, scope: !120)
!4189 = !DILocation(line: 326, column: 2, scope: !120)
!4190 = !DILocation(line: 326, column: 13, scope: !120)
!4191 = !DILocation(line: 326, column: 18, scope: !120)
!4192 = !DILocation(line: 332, column: 2, scope: !120)
!4193 = !DILocation(line: 332, column: 13, scope: !120)
!4194 = !DILocation(line: 332, column: 22, scope: !120)
!4195 = !DILocation(line: 335, column: 9, scope: !4196)
!4196 = distinct !DILexicalBlock(scope: !120, file: !3, line: 335, column: 2)
!4197 = !DILocation(line: 335, column: 7, scope: !4196)
!4198 = !DILocation(line: 335, column: 14, scope: !4199)
!4199 = distinct !DILexicalBlock(scope: !4196, file: !3, line: 335, column: 2)
!4200 = !DILocation(line: 335, column: 22, scope: !4199)
!4201 = !DILocation(line: 335, column: 28, scope: !4199)
!4202 = !DILocation(line: 335, column: 32, scope: !4199)
!4203 = !DILocation(line: 335, column: 35, scope: !4199)
!4204 = !DILocation(line: 335, column: 2, scope: !4196)
!4205 = !DILocation(line: 336, column: 11, scope: !4199)
!4206 = !DILocation(line: 336, column: 19, scope: !4199)
!4207 = !DILocation(line: 336, column: 25, scope: !4199)
!4208 = !DILocation(line: 336, column: 29, scope: !4199)
!4209 = !DILocation(line: 336, column: 33, scope: !4199)
!4210 = !DILocation(line: 336, column: 44, scope: !4199)
!4211 = !DILocation(line: 336, column: 3, scope: !4199)
!4212 = !DILocation(line: 335, column: 42, scope: !4199)
!4213 = !DILocation(line: 335, column: 2, scope: !4199)
!4214 = distinct !{!4214, !4204, !4215}
!4215 = !DILocation(line: 336, column: 50, scope: !4196)
!4216 = !DILocation(line: 338, column: 9, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !120, file: !3, line: 338, column: 2)
!4218 = !DILocation(line: 338, column: 7, scope: !4217)
!4219 = !DILocation(line: 338, column: 14, scope: !4220)
!4220 = distinct !DILexicalBlock(scope: !4217, file: !3, line: 338, column: 2)
!4221 = !DILocation(line: 338, column: 22, scope: !4220)
!4222 = !DILocation(line: 338, column: 28, scope: !4220)
!4223 = !DILocation(line: 338, column: 32, scope: !4220)
!4224 = !DILocation(line: 338, column: 35, scope: !4220)
!4225 = !DILocation(line: 338, column: 2, scope: !4217)
!4226 = !DILocalVariable(name: "t", scope: !4227, file: !3, line: 340, type: !1039)
!4227 = distinct !DILexicalBlock(scope: !4220, file: !3, line: 338, column: 46)
!4228 = !DILocation(line: 340, column: 16, scope: !4227)
!4229 = !DILocation(line: 340, column: 20, scope: !4227)
!4230 = !DILocation(line: 340, column: 28, scope: !4227)
!4231 = !DILocation(line: 340, column: 34, scope: !4227)
!4232 = !DILocation(line: 340, column: 38, scope: !4227)
!4233 = !DILocation(line: 342, column: 11, scope: !4227)
!4234 = !DILocation(line: 342, column: 3, scope: !4227)
!4235 = !DILocation(line: 346, column: 25, scope: !4236)
!4236 = distinct !DILexicalBlock(scope: !4227, file: !3, line: 342, column: 14)
!4237 = !DILocation(line: 346, column: 36, scope: !4236)
!4238 = !DILocation(line: 346, column: 4, scope: !4236)
!4239 = !DILocation(line: 347, column: 12, scope: !4236)
!4240 = !DILocation(line: 347, column: 15, scope: !4236)
!4241 = !DILocation(line: 347, column: 26, scope: !4236)
!4242 = !DILocation(line: 347, column: 4, scope: !4236)
!4243 = !DILocation(line: 348, column: 4, scope: !4236)
!4244 = !DILocation(line: 353, column: 25, scope: !4236)
!4245 = !DILocation(line: 353, column: 36, scope: !4236)
!4246 = !DILocation(line: 353, column: 4, scope: !4236)
!4247 = !DILocation(line: 354, column: 4, scope: !4236)
!4248 = !DILocation(line: 357, column: 25, scope: !4236)
!4249 = !DILocation(line: 357, column: 36, scope: !4236)
!4250 = !DILocation(line: 357, column: 4, scope: !4236)
!4251 = !DILocation(line: 358, column: 4, scope: !4236)
!4252 = !DILocation(line: 364, column: 25, scope: !4236)
!4253 = !DILocation(line: 364, column: 36, scope: !4236)
!4254 = !DILocation(line: 364, column: 4, scope: !4236)
!4255 = !DILocation(line: 365, column: 4, scope: !4236)
!4256 = !DILocation(line: 367, column: 2, scope: !4227)
!4257 = !DILocation(line: 338, column: 42, scope: !4220)
!4258 = !DILocation(line: 338, column: 2, scope: !4220)
!4259 = distinct !{!4259, !4225, !4260}
!4260 = !DILocation(line: 367, column: 2, scope: !4217)
!4261 = !DILocation(line: 369, column: 6, scope: !4262)
!4262 = distinct !DILexicalBlock(scope: !120, file: !3, line: 369, column: 6)
!4263 = !DILocation(line: 369, column: 6, scope: !120)
!4264 = !DILocation(line: 371, column: 10, scope: !4265)
!4265 = distinct !DILexicalBlock(scope: !4266, file: !3, line: 371, column: 3)
!4266 = distinct !DILexicalBlock(scope: !4262, file: !3, line: 369, column: 18)
!4267 = !DILocation(line: 371, column: 8, scope: !4265)
!4268 = !DILocation(line: 371, column: 15, scope: !4269)
!4269 = distinct !DILexicalBlock(scope: !4265, file: !3, line: 371, column: 3)
!4270 = !DILocation(line: 371, column: 23, scope: !4269)
!4271 = !DILocation(line: 371, column: 29, scope: !4269)
!4272 = !DILocation(line: 371, column: 32, scope: !4269)
!4273 = !DILocation(line: 371, column: 35, scope: !4269)
!4274 = !DILocation(line: 371, column: 3, scope: !4265)
!4275 = !DILocation(line: 372, column: 12, scope: !4269)
!4276 = !DILocation(line: 372, column: 20, scope: !4269)
!4277 = !DILocation(line: 372, column: 26, scope: !4269)
!4278 = !DILocation(line: 372, column: 29, scope: !4269)
!4279 = !DILocation(line: 372, column: 33, scope: !4269)
!4280 = !DILocation(line: 372, column: 44, scope: !4269)
!4281 = !DILocation(line: 372, column: 4, scope: !4269)
!4282 = !DILocation(line: 371, column: 42, scope: !4269)
!4283 = !DILocation(line: 371, column: 3, scope: !4269)
!4284 = distinct !{!4284, !4274, !4285}
!4285 = !DILocation(line: 372, column: 49, scope: !4265)
!4286 = !DILocation(line: 374, column: 27, scope: !4266)
!4287 = !DILocation(line: 374, column: 38, scope: !4266)
!4288 = !DILocation(line: 374, column: 11, scope: !4266)
!4289 = !DILocation(line: 374, column: 9, scope: !4266)
!4290 = !DILocation(line: 375, column: 7, scope: !4291)
!4291 = distinct !DILexicalBlock(scope: !4266, file: !3, line: 375, column: 7)
!4292 = !DILocation(line: 375, column: 7, scope: !4266)
!4293 = !DILocation(line: 376, column: 4, scope: !4291)
!4294 = !DILocation(line: 378, column: 8, scope: !4266)
!4295 = !DILocation(line: 378, column: 19, scope: !4266)
!4296 = !DILocation(line: 378, column: 6, scope: !4266)
!4297 = !DILocation(line: 379, column: 3, scope: !4266)
!4298 = !DILocation(line: 379, column: 7, scope: !4266)
!4299 = !DILocation(line: 379, column: 14, scope: !4266)
!4300 = !DILocation(line: 380, column: 3, scope: !4266)
!4301 = !DILocation(line: 380, column: 7, scope: !4266)
!4302 = !DILocation(line: 380, column: 13, scope: !4266)
!4303 = !DILocation(line: 381, column: 3, scope: !4266)
!4304 = !DILocation(line: 381, column: 7, scope: !4266)
!4305 = !DILocation(line: 381, column: 16, scope: !4266)
!4306 = !DILocation(line: 382, column: 3, scope: !4266)
!4307 = !DILocation(line: 382, column: 7, scope: !4266)
!4308 = !DILocation(line: 382, column: 22, scope: !4266)
!4309 = !DILocation(line: 383, column: 3, scope: !4266)
!4310 = !DILocation(line: 383, column: 7, scope: !4266)
!4311 = !DILocation(line: 383, column: 16, scope: !4266)
!4312 = !DILocation(line: 384, column: 2, scope: !4266)
!4313 = !DILocation(line: 389, column: 32, scope: !120)
!4314 = !DILocation(line: 389, column: 40, scope: !120)
!4315 = !DILocation(line: 389, column: 10, scope: !120)
!4316 = !DILocation(line: 389, column: 8, scope: !120)
!4317 = !DILocation(line: 390, column: 6, scope: !4318)
!4318 = distinct !DILexicalBlock(scope: !120, file: !3, line: 390, column: 6)
!4319 = !DILocation(line: 390, column: 6, scope: !120)
!4320 = !DILocation(line: 391, column: 3, scope: !4318)
!4321 = !DILocation(line: 393, column: 2, scope: !120)
!4322 = !DILabel(scope: !120, name: "fail", file: !3, line: 395)
!4323 = !DILocation(line: 395, column: 2, scope: !120)
!4324 = !DILocation(line: 395, column: 26, scope: !120)
!4325 = !DILocation(line: 395, column: 8, scope: !120)
!4326 = !DILocation(line: 396, column: 9, scope: !120)
!4327 = !DILocation(line: 396, column: 2, scope: !120)
!4328 = !DILocation(line: 397, column: 1, scope: !120)
!4329 = distinct !DISubprogram(name: "input_set_drvdata", scope: !3500, file: !3500, line: 371, type: !4330, scopeLine: 372, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4330 = !DISubroutineType(types: !4331)
!4331 = !{null, !3498, !97}
!4332 = !DILocalVariable(name: "dev", arg: 1, scope: !4329, file: !3500, line: 371, type: !3498)
!4333 = !DILocation(line: 371, column: 56, scope: !4329)
!4334 = !DILocalVariable(name: "data", arg: 2, scope: !4329, file: !3500, line: 371, type: !97)
!4335 = !DILocation(line: 371, column: 67, scope: !4329)
!4336 = !DILocation(line: 373, column: 19, scope: !4329)
!4337 = !DILocation(line: 373, column: 24, scope: !4329)
!4338 = !DILocation(line: 373, column: 29, scope: !4329)
!4339 = !DILocation(line: 373, column: 2, scope: !4329)
!4340 = !DILocation(line: 374, column: 1, scope: !4329)
!4341 = distinct !DISubprogram(name: "iforce_open", scope: !3, file: !3, line: 170, type: !3669, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4342 = !DILocalVariable(name: "dev", arg: 1, scope: !4341, file: !3, line: 170, type: !3498)
!4343 = !DILocation(line: 170, column: 42, scope: !4341)
!4344 = !DILocalVariable(name: "iforce", scope: !4341, file: !3, line: 172, type: !3493)
!4345 = !DILocation(line: 172, column: 17, scope: !4341)
!4346 = !DILocation(line: 172, column: 44, scope: !4341)
!4347 = !DILocation(line: 172, column: 26, scope: !4341)
!4348 = !DILocation(line: 174, column: 2, scope: !4341)
!4349 = !DILocation(line: 174, column: 10, scope: !4341)
!4350 = !DILocation(line: 174, column: 21, scope: !4341)
!4351 = !DILocation(line: 174, column: 30, scope: !4341)
!4352 = !DILocation(line: 176, column: 22, scope: !4353)
!4353 = distinct !DILexicalBlock(scope: !4341, file: !3, line: 176, column: 6)
!4354 = !DILocation(line: 176, column: 27, scope: !4353)
!4355 = !DILocation(line: 176, column: 6, scope: !4353)
!4356 = !DILocation(line: 176, column: 6, scope: !4341)
!4357 = !DILocation(line: 178, column: 22, scope: !4358)
!4358 = distinct !DILexicalBlock(scope: !4353, file: !3, line: 176, column: 35)
!4359 = !DILocation(line: 178, column: 3, scope: !4358)
!4360 = !DILocation(line: 179, column: 2, scope: !4358)
!4361 = !DILocation(line: 181, column: 2, scope: !4341)
!4362 = distinct !DISubprogram(name: "iforce_close", scope: !3, file: !3, line: 184, type: !3673, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4363 = !DILocalVariable(name: "dev", arg: 1, scope: !4362, file: !3, line: 184, type: !3498)
!4364 = !DILocation(line: 184, column: 44, scope: !4362)
!4365 = !DILocalVariable(name: "iforce", scope: !4362, file: !3, line: 186, type: !3493)
!4366 = !DILocation(line: 186, column: 17, scope: !4362)
!4367 = !DILocation(line: 186, column: 44, scope: !4362)
!4368 = !DILocation(line: 186, column: 26, scope: !4362)
!4369 = !DILocalVariable(name: "i", scope: !4362, file: !3, line: 187, type: !123)
!4370 = !DILocation(line: 187, column: 6, scope: !4362)
!4371 = !DILocation(line: 189, column: 22, scope: !4372)
!4372 = distinct !DILexicalBlock(scope: !4362, file: !3, line: 189, column: 6)
!4373 = !DILocation(line: 189, column: 27, scope: !4372)
!4374 = !DILocation(line: 189, column: 6, scope: !4372)
!4375 = !DILocation(line: 189, column: 6, scope: !4362)
!4376 = !DILocation(line: 191, column: 10, scope: !4377)
!4377 = distinct !DILexicalBlock(scope: !4378, file: !3, line: 191, column: 3)
!4378 = distinct !DILexicalBlock(scope: !4372, file: !3, line: 189, column: 35)
!4379 = !DILocation(line: 191, column: 8, scope: !4377)
!4380 = !DILocation(line: 191, column: 15, scope: !4381)
!4381 = distinct !DILexicalBlock(scope: !4377, file: !3, line: 191, column: 3)
!4382 = !DILocation(line: 191, column: 19, scope: !4381)
!4383 = !DILocation(line: 191, column: 24, scope: !4381)
!4384 = !DILocation(line: 191, column: 28, scope: !4381)
!4385 = !DILocation(line: 191, column: 17, scope: !4381)
!4386 = !DILocation(line: 191, column: 3, scope: !4377)
!4387 = !DILocation(line: 192, column: 34, scope: !4388)
!4388 = distinct !DILexicalBlock(scope: !4389, file: !3, line: 192, column: 8)
!4389 = distinct !DILexicalBlock(scope: !4381, file: !3, line: 191, column: 46)
!4390 = !DILocation(line: 192, column: 42, scope: !4388)
!4391 = !DILocation(line: 192, column: 55, scope: !4388)
!4392 = !DILocation(line: 192, column: 58, scope: !4388)
!4393 = !DILocation(line: 192, column: 8, scope: !4388)
!4394 = !DILocation(line: 192, column: 8, scope: !4389)
!4395 = !DILocation(line: 193, column: 5, scope: !4396)
!4396 = distinct !DILexicalBlock(scope: !4388, file: !3, line: 192, column: 66)
!4397 = !DILocation(line: 196, column: 5, scope: !4396)
!4398 = !DILocation(line: 198, column: 3, scope: !4389)
!4399 = !DILocation(line: 191, column: 42, scope: !4381)
!4400 = !DILocation(line: 191, column: 3, scope: !4381)
!4401 = distinct !{!4401, !4386, !4402}
!4402 = !DILocation(line: 198, column: 3, scope: !4377)
!4403 = !DILocation(line: 201, column: 22, scope: !4378)
!4404 = !DILocation(line: 201, column: 3, scope: !4378)
!4405 = !DILocalVariable(name: "__ret", scope: !4406, file: !3, line: 203, type: !123)
!4406 = distinct !DILexicalBlock(scope: !4378, file: !3, line: 203, column: 3)
!4407 = !DILocation(line: 203, column: 3, scope: !4406)
!4408 = !DILocation(line: 203, column: 3, scope: !4409)
!4409 = distinct !DILexicalBlock(scope: !4406, file: !3, line: 203, column: 3)
!4410 = !DILocation(line: 203, column: 3, scope: !4411)
!4411 = distinct !DILexicalBlock(scope: !4409, file: !3, line: 203, column: 3)
!4412 = !DILocation(line: 203, column: 3, scope: !4413)
!4413 = distinct !DILexicalBlock(scope: !4406, file: !3, line: 203, column: 3)
!4414 = !DILocalVariable(name: "__wq_entry", scope: !4415, file: !3, line: 203, type: !4416)
!4415 = distinct !DILexicalBlock(scope: !4413, file: !3, line: 203, column: 3)
!4416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !1315, line: 29, size: 320, elements: !4417)
!4417 = !{!4418, !4419, !4420, !4426}
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4416, file: !1315, line: 30, baseType: !7, size: 32)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4416, file: !1315, line: 31, baseType: !97, size: 64, offset: 64)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4416, file: !1315, line: 32, baseType: !4421, size: 64, offset: 128)
!4421 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !1315, line: 16, baseType: !4422)
!4422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4423, size: 64)
!4423 = !DISubroutineType(types: !4424)
!4424 = !{!123, !4425, !7, !123, !97}
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4416, size: 64)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4416, file: !1315, line: 33, baseType: !134, size: 128, offset: 192)
!4427 = !DILocation(line: 203, column: 3, scope: !4415)
!4428 = !DILocalVariable(name: "__ret", scope: !4415, file: !3, line: 203, type: !100)
!4429 = !DILocalVariable(name: "__int", scope: !4430, file: !3, line: 203, type: !100)
!4430 = distinct !DILexicalBlock(scope: !4431, file: !3, line: 203, column: 3)
!4431 = distinct !DILexicalBlock(scope: !4432, file: !3, line: 203, column: 3)
!4432 = distinct !DILexicalBlock(scope: !4415, file: !3, line: 203, column: 3)
!4433 = !DILocation(line: 203, column: 3, scope: !4430)
!4434 = !DILocation(line: 203, column: 3, scope: !4435)
!4435 = distinct !DILexicalBlock(scope: !4430, file: !3, line: 203, column: 3)
!4436 = !DILocation(line: 203, column: 3, scope: !4437)
!4437 = distinct !DILexicalBlock(scope: !4430, file: !3, line: 203, column: 3)
!4438 = !DILocation(line: 203, column: 3, scope: !4439)
!4439 = distinct !DILexicalBlock(scope: !4437, file: !3, line: 203, column: 3)
!4440 = !DILocation(line: 203, column: 3, scope: !4431)
!4441 = distinct !{!4441, !4442, !4442}
!4442 = !DILocation(line: 203, column: 3, scope: !4432)
!4443 = !DILabel(scope: !4415, name: "__out", file: !3, line: 203)
!4444 = !DILocation(line: 205, column: 2, scope: !4378)
!4445 = !DILocation(line: 207, column: 2, scope: !4362)
!4446 = !DILocation(line: 207, column: 10, scope: !4362)
!4447 = !DILocation(line: 207, column: 21, scope: !4362)
!4448 = !DILocation(line: 207, column: 29, scope: !4362)
!4449 = !DILocation(line: 208, column: 1, scope: !4362)
!4450 = distinct !DISubprogram(name: "iforce_get_id_packet", scope: !3495, file: !3495, line: 115, type: !3795, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4451 = !DILocalVariable(name: "iforce", arg: 1, scope: !4450, file: !3495, line: 115, type: !3493)
!4452 = !DILocation(line: 115, column: 55, scope: !4450)
!4453 = !DILocalVariable(name: "id", arg: 2, scope: !4450, file: !3495, line: 115, type: !1185)
!4454 = !DILocation(line: 115, column: 66, scope: !4450)
!4455 = !DILocalVariable(name: "response_data", arg: 3, scope: !4450, file: !3495, line: 116, type: !3797)
!4456 = !DILocation(line: 116, column: 16, scope: !4450)
!4457 = !DILocalVariable(name: "response_len", arg: 4, scope: !4450, file: !3495, line: 116, type: !3798)
!4458 = !DILocation(line: 116, column: 39, scope: !4450)
!4459 = !DILocation(line: 118, column: 9, scope: !4450)
!4460 = !DILocation(line: 118, column: 17, scope: !4450)
!4461 = !DILocation(line: 118, column: 28, scope: !4450)
!4462 = !DILocation(line: 118, column: 35, scope: !4450)
!4463 = !DILocation(line: 118, column: 43, scope: !4450)
!4464 = !DILocation(line: 119, column: 7, scope: !4450)
!4465 = !DILocation(line: 119, column: 22, scope: !4450)
!4466 = !DILocation(line: 118, column: 2, scope: !4450)
!4467 = distinct !DISubprogram(name: "iforce_set_autocenter", scope: !3, file: !3, line: 88, type: !3629, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4468 = !DILocalVariable(name: "dev", arg: 1, scope: !4467, file: !3, line: 88, type: !3498)
!4469 = !DILocation(line: 88, column: 53, scope: !4467)
!4470 = !DILocalVariable(name: "magnitude", arg: 2, scope: !4467, file: !3, line: 88, type: !774)
!4471 = !DILocation(line: 88, column: 62, scope: !4467)
!4472 = !DILocalVariable(name: "iforce", scope: !4467, file: !3, line: 90, type: !3493)
!4473 = !DILocation(line: 90, column: 17, scope: !4467)
!4474 = !DILocation(line: 90, column: 44, scope: !4467)
!4475 = !DILocation(line: 90, column: 26, scope: !4467)
!4476 = !DILocalVariable(name: "data", scope: !4467, file: !3, line: 91, type: !4477)
!4477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 24, elements: !190)
!4478 = !DILocation(line: 91, column: 16, scope: !4467)
!4479 = !DILocation(line: 93, column: 2, scope: !4467)
!4480 = !DILocation(line: 93, column: 10, scope: !4467)
!4481 = !DILocation(line: 94, column: 12, scope: !4467)
!4482 = !DILocation(line: 94, column: 22, scope: !4467)
!4483 = !DILocation(line: 94, column: 2, scope: !4467)
!4484 = !DILocation(line: 94, column: 10, scope: !4467)
!4485 = !DILocation(line: 95, column: 21, scope: !4467)
!4486 = !DILocation(line: 95, column: 48, scope: !4467)
!4487 = !DILocation(line: 95, column: 2, scope: !4467)
!4488 = !DILocation(line: 97, column: 2, scope: !4467)
!4489 = !DILocation(line: 97, column: 10, scope: !4467)
!4490 = !DILocation(line: 98, column: 2, scope: !4467)
!4491 = !DILocation(line: 98, column: 10, scope: !4467)
!4492 = !DILocation(line: 99, column: 21, scope: !4467)
!4493 = !DILocation(line: 99, column: 48, scope: !4467)
!4494 = !DILocation(line: 99, column: 2, scope: !4467)
!4495 = !DILocation(line: 100, column: 1, scope: !4467)
!4496 = distinct !DISubprogram(name: "set_bit", scope: !4497, file: !4497, line: 26, type: !4498, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4497 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!4498 = !DISubroutineType(types: !4499)
!4499 = !{null, !100, !4500}
!4500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4501, size: 64)
!4501 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !87)
!4502 = !DILocalVariable(name: "nr", arg: 1, scope: !4503, file: !4504, line: 52, type: !100)
!4503 = distinct !DISubprogram(name: "arch_set_bit", scope: !4504, file: !4504, line: 52, type: !4498, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4504 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4505 = !DILocation(line: 52, column: 19, scope: !4503, inlinedAt: !4506)
!4506 = distinct !DILocation(line: 29, column: 2, scope: !4496)
!4507 = !DILocalVariable(name: "addr", arg: 2, scope: !4503, file: !4504, line: 52, type: !4500)
!4508 = !DILocation(line: 52, column: 47, scope: !4503, inlinedAt: !4506)
!4509 = !DILocalVariable(name: "v", arg: 1, scope: !4510, file: !4511, line: 84, type: !4514)
!4510 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !4511, file: !4511, line: 84, type: !4512, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4511 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!4512 = !DISubroutineType(types: !4513)
!4513 = !{null, !4514, !234}
!4514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4515, size: 64)
!4515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4516)
!4516 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4517 = !DILocation(line: 84, column: 74, scope: !4510, inlinedAt: !4518)
!4518 = distinct !DILocation(line: 28, column: 2, scope: !4496)
!4519 = !DILocalVariable(name: "size", arg: 2, scope: !4510, file: !4511, line: 84, type: !234)
!4520 = !DILocation(line: 84, column: 84, scope: !4510, inlinedAt: !4518)
!4521 = !DILocalVariable(name: "nr", arg: 1, scope: !4496, file: !4497, line: 26, type: !100)
!4522 = !DILocation(line: 26, column: 33, scope: !4496)
!4523 = !DILocalVariable(name: "addr", arg: 2, scope: !4496, file: !4497, line: 26, type: !4500)
!4524 = !DILocation(line: 26, column: 61, scope: !4496)
!4525 = !DILocation(line: 28, column: 26, scope: !4496)
!4526 = !DILocation(line: 28, column: 33, scope: !4496)
!4527 = !DILocation(line: 28, column: 31, scope: !4496)
!4528 = !DILocation(line: 86, column: 20, scope: !4510, inlinedAt: !4518)
!4529 = !DILocation(line: 86, column: 23, scope: !4510, inlinedAt: !4518)
!4530 = !DILocation(line: 86, column: 2, scope: !4510, inlinedAt: !4518)
!4531 = !DILocation(line: 87, column: 2, scope: !4510, inlinedAt: !4518)
!4532 = !DILocation(line: 29, column: 15, scope: !4496)
!4533 = !DILocation(line: 29, column: 19, scope: !4496)
!4534 = !DILocation(line: 54, column: 27, scope: !4535, inlinedAt: !4506)
!4535 = distinct !DILexicalBlock(scope: !4503, file: !4504, line: 54, column: 6)
!4536 = !DILocation(line: 54, column: 6, scope: !4535, inlinedAt: !4506)
!4537 = !DILocation(line: 54, column: 6, scope: !4503, inlinedAt: !4506)
!4538 = !DILocation(line: 56, column: 6, scope: !4539, inlinedAt: !4506)
!4539 = distinct !DILexicalBlock(scope: !4535, file: !4504, line: 54, column: 32)
!4540 = !DILocation(line: 57, column: 12, scope: !4539, inlinedAt: !4506)
!4541 = !DILocation(line: 55, column: 3, scope: !4539, inlinedAt: !4506)
!4542 = !{i32 -2147200270}
!4543 = !DILocation(line: 59, column: 2, scope: !4539, inlinedAt: !4506)
!4544 = !DILocation(line: 61, column: 8, scope: !4545, inlinedAt: !4506)
!4545 = distinct !DILexicalBlock(scope: !4535, file: !4504, line: 59, column: 9)
!4546 = !DILocation(line: 61, column: 32, scope: !4545, inlinedAt: !4506)
!4547 = !DILocation(line: 60, column: 3, scope: !4545, inlinedAt: !4506)
!4548 = !{i32 -2147200138}
!4549 = !DILocation(line: 30, column: 1, scope: !4496)
!4550 = distinct !DISubprogram(name: "iforce_upload_effect", scope: !3, file: !3, line: 106, type: !3554, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4551 = !DILocalVariable(name: "dev", arg: 1, scope: !4550, file: !3, line: 106, type: !3498)
!4552 = !DILocation(line: 106, column: 51, scope: !4550)
!4553 = !DILocalVariable(name: "effect", arg: 2, scope: !4550, file: !3, line: 106, type: !3556)
!4554 = !DILocation(line: 106, column: 74, scope: !4550)
!4555 = !DILocalVariable(name: "old", arg: 3, scope: !4550, file: !3, line: 106, type: !3556)
!4556 = !DILocation(line: 106, column: 100, scope: !4550)
!4557 = !DILocalVariable(name: "iforce", scope: !4550, file: !3, line: 108, type: !3493)
!4558 = !DILocation(line: 108, column: 17, scope: !4550)
!4559 = !DILocation(line: 108, column: 44, scope: !4550)
!4560 = !DILocation(line: 108, column: 26, scope: !4550)
!4561 = !DILocalVariable(name: "core_effect", scope: !4550, file: !3, line: 109, type: !4562)
!4562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!4563 = !DILocation(line: 109, column: 29, scope: !4550)
!4564 = !DILocation(line: 109, column: 44, scope: !4550)
!4565 = !DILocation(line: 109, column: 52, scope: !4550)
!4566 = !DILocation(line: 109, column: 65, scope: !4550)
!4567 = !DILocation(line: 109, column: 73, scope: !4550)
!4568 = !DILocalVariable(name: "ret", scope: !4550, file: !3, line: 110, type: !123)
!4569 = !DILocation(line: 110, column: 6, scope: !4550)
!4570 = !DILocation(line: 112, column: 42, scope: !4571)
!4571 = distinct !DILexicalBlock(scope: !4550, file: !3, line: 112, column: 6)
!4572 = !DILocation(line: 112, column: 55, scope: !4571)
!4573 = !DILocation(line: 112, column: 6, scope: !4571)
!4574 = !DILocation(line: 112, column: 6, scope: !4550)
!4575 = !DILocation(line: 114, column: 32, scope: !4576)
!4576 = distinct !DILexicalBlock(scope: !4577, file: !3, line: 114, column: 7)
!4577 = distinct !DILexicalBlock(scope: !4571, file: !3, line: 112, column: 63)
!4578 = !DILocation(line: 114, column: 45, scope: !4576)
!4579 = !DILocation(line: 114, column: 7, scope: !4576)
!4580 = !DILocation(line: 114, column: 7, scope: !4577)
!4581 = !DILocation(line: 115, column: 4, scope: !4576)
!4582 = !DILocation(line: 116, column: 2, scope: !4577)
!4583 = !DILocation(line: 121, column: 10, scope: !4550)
!4584 = !DILocation(line: 121, column: 18, scope: !4550)
!4585 = !DILocation(line: 121, column: 2, scope: !4550)
!4586 = !DILocation(line: 123, column: 32, scope: !4587)
!4587 = distinct !DILexicalBlock(scope: !4550, file: !3, line: 121, column: 24)
!4588 = !DILocation(line: 123, column: 40, scope: !4587)
!4589 = !DILocation(line: 123, column: 48, scope: !4587)
!4590 = !DILocation(line: 123, column: 9, scope: !4587)
!4591 = !DILocation(line: 123, column: 7, scope: !4587)
!4592 = !DILocation(line: 124, column: 3, scope: !4587)
!4593 = !DILocation(line: 127, column: 32, scope: !4587)
!4594 = !DILocation(line: 127, column: 40, scope: !4587)
!4595 = !DILocation(line: 127, column: 48, scope: !4587)
!4596 = !DILocation(line: 127, column: 9, scope: !4587)
!4597 = !DILocation(line: 127, column: 7, scope: !4587)
!4598 = !DILocation(line: 128, column: 3, scope: !4587)
!4599 = !DILocation(line: 132, column: 33, scope: !4587)
!4600 = !DILocation(line: 132, column: 41, scope: !4587)
!4601 = !DILocation(line: 132, column: 49, scope: !4587)
!4602 = !DILocation(line: 132, column: 9, scope: !4587)
!4603 = !DILocation(line: 132, column: 7, scope: !4587)
!4604 = !DILocation(line: 133, column: 3, scope: !4587)
!4605 = !DILocation(line: 136, column: 3, scope: !4587)
!4606 = !DILocation(line: 139, column: 6, scope: !4607)
!4607 = distinct !DILexicalBlock(scope: !4550, file: !3, line: 139, column: 6)
!4608 = !DILocation(line: 139, column: 10, scope: !4607)
!4609 = !DILocation(line: 139, column: 6, scope: !4550)
!4610 = !DILocation(line: 143, column: 27, scope: !4611)
!4611 = distinct !DILexicalBlock(scope: !4607, file: !3, line: 139, column: 16)
!4612 = !DILocation(line: 143, column: 40, scope: !4611)
!4613 = !DILocation(line: 143, column: 3, scope: !4611)
!4614 = !DILocation(line: 144, column: 2, scope: !4611)
!4615 = !DILocation(line: 145, column: 9, scope: !4550)
!4616 = !DILocation(line: 145, column: 2, scope: !4550)
!4617 = !DILocation(line: 146, column: 1, scope: !4550)
!4618 = distinct !DISubprogram(name: "iforce_erase_effect", scope: !3, file: !3, line: 152, type: !3621, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4619 = !DILocalVariable(name: "dev", arg: 1, scope: !4618, file: !3, line: 152, type: !3498)
!4620 = !DILocation(line: 152, column: 50, scope: !4618)
!4621 = !DILocalVariable(name: "effect_id", arg: 2, scope: !4618, file: !3, line: 152, type: !123)
!4622 = !DILocation(line: 152, column: 59, scope: !4618)
!4623 = !DILocalVariable(name: "iforce", scope: !4618, file: !3, line: 154, type: !3493)
!4624 = !DILocation(line: 154, column: 17, scope: !4618)
!4625 = !DILocation(line: 154, column: 44, scope: !4618)
!4626 = !DILocation(line: 154, column: 26, scope: !4618)
!4627 = !DILocalVariable(name: "core_effect", scope: !4618, file: !3, line: 155, type: !4562)
!4628 = !DILocation(line: 155, column: 29, scope: !4618)
!4629 = !DILocation(line: 155, column: 44, scope: !4618)
!4630 = !DILocation(line: 155, column: 52, scope: !4618)
!4631 = !DILocation(line: 155, column: 65, scope: !4618)
!4632 = !DILocalVariable(name: "err", scope: !4618, file: !3, line: 156, type: !123)
!4633 = !DILocation(line: 156, column: 6, scope: !4618)
!4634 = !DILocation(line: 158, column: 32, scope: !4635)
!4635 = distinct !DILexicalBlock(scope: !4618, file: !3, line: 158, column: 6)
!4636 = !DILocation(line: 158, column: 45, scope: !4635)
!4637 = !DILocation(line: 158, column: 6, scope: !4635)
!4638 = !DILocation(line: 158, column: 6, scope: !4618)
!4639 = !DILocation(line: 159, column: 27, scope: !4635)
!4640 = !DILocation(line: 159, column: 40, scope: !4635)
!4641 = !DILocation(line: 159, column: 9, scope: !4635)
!4642 = !DILocation(line: 159, column: 7, scope: !4635)
!4643 = !DILocation(line: 159, column: 3, scope: !4635)
!4644 = !DILocation(line: 161, column: 7, scope: !4645)
!4645 = distinct !DILexicalBlock(scope: !4618, file: !3, line: 161, column: 6)
!4646 = !DILocation(line: 161, column: 11, scope: !4645)
!4647 = !DILocation(line: 161, column: 40, scope: !4645)
!4648 = !DILocation(line: 161, column: 53, scope: !4645)
!4649 = !DILocation(line: 161, column: 14, scope: !4645)
!4650 = !DILocation(line: 161, column: 6, scope: !4618)
!4651 = !DILocation(line: 162, column: 27, scope: !4645)
!4652 = !DILocation(line: 162, column: 40, scope: !4645)
!4653 = !DILocation(line: 162, column: 9, scope: !4645)
!4654 = !DILocation(line: 162, column: 7, scope: !4645)
!4655 = !DILocation(line: 162, column: 3, scope: !4645)
!4656 = !DILocation(line: 165, column: 2, scope: !4618)
!4657 = !DILocation(line: 165, column: 15, scope: !4618)
!4658 = !DILocation(line: 165, column: 24, scope: !4618)
!4659 = !DILocation(line: 167, column: 9, scope: !4618)
!4660 = !DILocation(line: 167, column: 2, scope: !4618)
!4661 = distinct !DISubprogram(name: "iforce_set_gain", scope: !3, file: !3, line: 79, type: !3629, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4662 = !DILocalVariable(name: "dev", arg: 1, scope: !4661, file: !3, line: 79, type: !3498)
!4663 = !DILocation(line: 79, column: 47, scope: !4661)
!4664 = !DILocalVariable(name: "gain", arg: 2, scope: !4661, file: !3, line: 79, type: !774)
!4665 = !DILocation(line: 79, column: 56, scope: !4661)
!4666 = !DILocalVariable(name: "iforce", scope: !4661, file: !3, line: 81, type: !3493)
!4667 = !DILocation(line: 81, column: 17, scope: !4661)
!4668 = !DILocation(line: 81, column: 44, scope: !4661)
!4669 = !DILocation(line: 81, column: 26, scope: !4661)
!4670 = !DILocalVariable(name: "data", scope: !4661, file: !3, line: 82, type: !4477)
!4671 = !DILocation(line: 82, column: 16, scope: !4661)
!4672 = !DILocation(line: 84, column: 12, scope: !4661)
!4673 = !DILocation(line: 84, column: 17, scope: !4661)
!4674 = !DILocation(line: 84, column: 2, scope: !4661)
!4675 = !DILocation(line: 84, column: 10, scope: !4661)
!4676 = !DILocation(line: 85, column: 21, scope: !4661)
!4677 = !DILocation(line: 85, column: 42, scope: !4661)
!4678 = !DILocation(line: 85, column: 2, scope: !4661)
!4679 = !DILocation(line: 86, column: 1, scope: !4661)
!4680 = distinct !DISubprogram(name: "iforce_playback", scope: !3, file: !3, line: 65, type: !3625, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4681 = !DILocalVariable(name: "dev", arg: 1, scope: !4680, file: !3, line: 65, type: !3498)
!4682 = !DILocation(line: 65, column: 46, scope: !4680)
!4683 = !DILocalVariable(name: "effect_id", arg: 2, scope: !4680, file: !3, line: 65, type: !123)
!4684 = !DILocation(line: 65, column: 55, scope: !4680)
!4685 = !DILocalVariable(name: "value", arg: 3, scope: !4680, file: !3, line: 65, type: !123)
!4686 = !DILocation(line: 65, column: 70, scope: !4680)
!4687 = !DILocalVariable(name: "iforce", scope: !4680, file: !3, line: 67, type: !3493)
!4688 = !DILocation(line: 67, column: 17, scope: !4680)
!4689 = !DILocation(line: 67, column: 44, scope: !4680)
!4690 = !DILocation(line: 67, column: 26, scope: !4680)
!4691 = !DILocalVariable(name: "core_effect", scope: !4680, file: !3, line: 68, type: !4562)
!4692 = !DILocation(line: 68, column: 29, scope: !4680)
!4693 = !DILocation(line: 68, column: 44, scope: !4680)
!4694 = !DILocation(line: 68, column: 52, scope: !4680)
!4695 = !DILocation(line: 68, column: 65, scope: !4680)
!4696 = !DILocation(line: 70, column: 6, scope: !4697)
!4697 = distinct !DILexicalBlock(scope: !4680, file: !3, line: 70, column: 6)
!4698 = !DILocation(line: 70, column: 12, scope: !4697)
!4699 = !DILocation(line: 70, column: 6, scope: !4680)
!4700 = !DILocation(line: 71, column: 32, scope: !4697)
!4701 = !DILocation(line: 71, column: 45, scope: !4697)
!4702 = !DILocation(line: 71, column: 3, scope: !4697)
!4703 = !DILocation(line: 73, column: 34, scope: !4697)
!4704 = !DILocation(line: 73, column: 47, scope: !4697)
!4705 = !DILocation(line: 73, column: 3, scope: !4697)
!4706 = !DILocation(line: 75, column: 26, scope: !4680)
!4707 = !DILocation(line: 75, column: 34, scope: !4680)
!4708 = !DILocation(line: 75, column: 45, scope: !4680)
!4709 = !DILocation(line: 75, column: 2, scope: !4680)
!4710 = !DILocation(line: 76, column: 2, scope: !4680)
!4711 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !60, file: !60, line: 660, type: !4712, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4712 = !DISubroutineType(types: !4713)
!4713 = !{null, !124, !97}
!4714 = !DILocalVariable(name: "dev", arg: 1, scope: !4711, file: !60, line: 660, type: !124)
!4715 = !DILocation(line: 660, column: 51, scope: !4711)
!4716 = !DILocalVariable(name: "data", arg: 2, scope: !4711, file: !60, line: 660, type: !97)
!4717 = !DILocation(line: 660, column: 62, scope: !4711)
!4718 = !DILocation(line: 662, column: 21, scope: !4711)
!4719 = !DILocation(line: 662, column: 2, scope: !4711)
!4720 = !DILocation(line: 662, column: 7, scope: !4711)
!4721 = !DILocation(line: 662, column: 19, scope: !4711)
!4722 = !DILocation(line: 663, column: 1, scope: !4711)
!4723 = distinct !DISubprogram(name: "input_get_drvdata", scope: !3500, file: !3500, line: 366, type: !4724, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4724 = !DISubroutineType(types: !4725)
!4725 = !{!97, !3498}
!4726 = !DILocalVariable(name: "dev", arg: 1, scope: !4723, file: !3500, line: 366, type: !3498)
!4727 = !DILocation(line: 366, column: 57, scope: !4723)
!4728 = !DILocation(line: 368, column: 26, scope: !4723)
!4729 = !DILocation(line: 368, column: 31, scope: !4723)
!4730 = !DILocation(line: 368, column: 9, scope: !4723)
!4731 = !DILocation(line: 368, column: 2, scope: !4723)
!4732 = distinct !DISubprogram(name: "test_bit", scope: !4733, file: !4733, line: 132, type: !4734, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4733 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!4734 = !DISubroutineType(types: !4735)
!4735 = !{!401, !100, !4736}
!4736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4737, size: 64)
!4737 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4501)
!4738 = !DILocalVariable(name: "nr", arg: 1, scope: !4739, file: !4504, line: 210, type: !100)
!4739 = distinct !DISubprogram(name: "variable_test_bit", scope: !4504, file: !4504, line: 210, type: !4734, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4740 = !DILocation(line: 210, column: 52, scope: !4739, inlinedAt: !4741)
!4741 = distinct !DILocation(line: 135, column: 9, scope: !4732)
!4742 = !DILocalVariable(name: "addr", arg: 2, scope: !4739, file: !4504, line: 210, type: !4736)
!4743 = !DILocation(line: 210, column: 86, scope: !4739, inlinedAt: !4741)
!4744 = !DILocalVariable(name: "oldbit", scope: !4739, file: !4504, line: 212, type: !401)
!4745 = !DILocation(line: 212, column: 7, scope: !4739, inlinedAt: !4741)
!4746 = !DILocalVariable(name: "nr", arg: 1, scope: !4747, file: !4504, line: 204, type: !100)
!4747 = distinct !DISubprogram(name: "constant_test_bit", scope: !4504, file: !4504, line: 204, type: !4734, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4748 = !DILocation(line: 204, column: 52, scope: !4747, inlinedAt: !4749)
!4749 = distinct !DILocation(line: 135, column: 9, scope: !4732)
!4750 = !DILocalVariable(name: "addr", arg: 2, scope: !4747, file: !4504, line: 204, type: !4736)
!4751 = !DILocation(line: 204, column: 86, scope: !4747, inlinedAt: !4749)
!4752 = !DILocalVariable(name: "v", arg: 1, scope: !4753, file: !4511, line: 69, type: !4514)
!4753 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !4511, file: !4511, line: 69, type: !4512, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4754 = !DILocation(line: 69, column: 73, scope: !4753, inlinedAt: !4755)
!4755 = distinct !DILocation(line: 134, column: 2, scope: !4732)
!4756 = !DILocalVariable(name: "size", arg: 2, scope: !4753, file: !4511, line: 69, type: !234)
!4757 = !DILocation(line: 69, column: 83, scope: !4753, inlinedAt: !4755)
!4758 = !DILocalVariable(name: "nr", arg: 1, scope: !4732, file: !4733, line: 132, type: !100)
!4759 = !DILocation(line: 132, column: 34, scope: !4732)
!4760 = !DILocalVariable(name: "addr", arg: 2, scope: !4732, file: !4733, line: 132, type: !4736)
!4761 = !DILocation(line: 132, column: 68, scope: !4732)
!4762 = !DILocation(line: 134, column: 25, scope: !4732)
!4763 = !DILocation(line: 134, column: 32, scope: !4732)
!4764 = !DILocation(line: 134, column: 30, scope: !4732)
!4765 = !DILocation(line: 71, column: 19, scope: !4753, inlinedAt: !4755)
!4766 = !DILocation(line: 71, column: 22, scope: !4753, inlinedAt: !4755)
!4767 = !DILocation(line: 71, column: 2, scope: !4753, inlinedAt: !4755)
!4768 = !DILocation(line: 72, column: 2, scope: !4753, inlinedAt: !4755)
!4769 = !DILocation(line: 135, column: 9, scope: !4732)
!4770 = !DILocation(line: 206, column: 19, scope: !4747, inlinedAt: !4749)
!4771 = !DILocation(line: 206, column: 22, scope: !4747, inlinedAt: !4749)
!4772 = !DILocation(line: 206, column: 15, scope: !4747, inlinedAt: !4749)
!4773 = !DILocation(line: 207, column: 4, scope: !4747, inlinedAt: !4749)
!4774 = !DILocation(line: 207, column: 9, scope: !4747, inlinedAt: !4749)
!4775 = !DILocation(line: 207, column: 12, scope: !4747, inlinedAt: !4749)
!4776 = !DILocation(line: 206, column: 44, scope: !4747, inlinedAt: !4749)
!4777 = !DILocation(line: 207, column: 37, scope: !4747, inlinedAt: !4749)
!4778 = !DILocation(line: 217, column: 33, scope: !4739, inlinedAt: !4741)
!4779 = !DILocation(line: 217, column: 46, scope: !4739, inlinedAt: !4741)
!4780 = !DILocation(line: 214, column: 2, scope: !4739, inlinedAt: !4741)
!4781 = !{i32 -2147191022, i32 -2147190962}
!4782 = !DILocation(line: 219, column: 9, scope: !4739, inlinedAt: !4741)
!4783 = !DILocation(line: 135, column: 2, scope: !4732)
!4784 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !60, file: !60, line: 655, type: !4785, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4785 = !DISubroutineType(types: !4786)
!4786 = !{!97, !4787}
!4787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4788, size: 64)
!4788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!4789 = !DILocalVariable(name: "dev", arg: 1, scope: !4784, file: !60, line: 655, type: !4787)
!4790 = !DILocation(line: 655, column: 58, scope: !4784)
!4791 = !DILocation(line: 657, column: 9, scope: !4784)
!4792 = !DILocation(line: 657, column: 14, scope: !4784)
!4793 = !DILocation(line: 657, column: 2, scope: !4784)
!4794 = distinct !DISubprogram(name: "kasan_check_read", scope: !4795, file: !4795, line: 34, type: !4796, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4795 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!4796 = !DISubroutineType(types: !4797)
!4797 = !{!401, !4514, !7}
!4798 = !DILocalVariable(name: "p", arg: 1, scope: !4794, file: !4795, line: 34, type: !4514)
!4799 = !DILocation(line: 34, column: 58, scope: !4794)
!4800 = !DILocalVariable(name: "size", arg: 2, scope: !4794, file: !4795, line: 34, type: !7)
!4801 = !DILocation(line: 34, column: 74, scope: !4794)
!4802 = !DILocation(line: 36, column: 2, scope: !4794)
!4803 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4804, file: !4804, line: 178, type: !4805, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4804 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!4805 = !DISubroutineType(types: !4806)
!4806 = !{null, !4514, !234, !123}
!4807 = !DILocalVariable(name: "ptr", arg: 1, scope: !4803, file: !4804, line: 178, type: !4514)
!4808 = !DILocation(line: 178, column: 60, scope: !4803)
!4809 = !DILocalVariable(name: "size", arg: 2, scope: !4803, file: !4804, line: 178, type: !234)
!4810 = !DILocation(line: 178, column: 72, scope: !4803)
!4811 = !DILocalVariable(name: "type", arg: 3, scope: !4803, file: !4804, line: 179, type: !123)
!4812 = !DILocation(line: 179, column: 15, scope: !4803)
!4813 = !DILocation(line: 179, column: 23, scope: !4803)
!4814 = distinct !DISubprogram(name: "kasan_check_write", scope: !4795, file: !4795, line: 38, type: !4796, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4815 = !DILocalVariable(name: "p", arg: 1, scope: !4814, file: !4795, line: 38, type: !4514)
!4816 = !DILocation(line: 38, column: 59, scope: !4814)
!4817 = !DILocalVariable(name: "size", arg: 2, scope: !4814, file: !4795, line: 38, type: !7)
!4818 = !DILocation(line: 38, column: 75, scope: !4814)
!4819 = !DILocation(line: 40, column: 2, scope: !4814)
!4820 = distinct !DISubprogram(name: "__test_and_set_bit", scope: !4733, file: !4733, line: 93, type: !4821, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4821 = !DISubroutineType(types: !4822)
!4822 = !{!401, !100, !4500}
!4823 = !DILocalVariable(name: "nr", arg: 1, scope: !4824, file: !4504, line: 148, type: !100)
!4824 = distinct !DISubprogram(name: "arch___test_and_set_bit", scope: !4504, file: !4504, line: 148, type: !4821, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4825 = !DILocation(line: 148, column: 30, scope: !4824, inlinedAt: !4826)
!4826 = distinct !DILocation(line: 96, column: 9, scope: !4820)
!4827 = !DILocalVariable(name: "addr", arg: 2, scope: !4824, file: !4504, line: 148, type: !4500)
!4828 = !DILocation(line: 148, column: 58, scope: !4824, inlinedAt: !4826)
!4829 = !DILocalVariable(name: "oldbit", scope: !4824, file: !4504, line: 150, type: !401)
!4830 = !DILocation(line: 150, column: 7, scope: !4824, inlinedAt: !4826)
!4831 = !DILocalVariable(name: "nr", arg: 1, scope: !4820, file: !4733, line: 93, type: !100)
!4832 = !DILocation(line: 93, column: 44, scope: !4820)
!4833 = !DILocalVariable(name: "addr", arg: 2, scope: !4820, file: !4733, line: 93, type: !4500)
!4834 = !DILocation(line: 93, column: 72, scope: !4820)
!4835 = !DILocation(line: 95, column: 32, scope: !4820)
!4836 = !DILocation(line: 95, column: 36, scope: !4820)
!4837 = !DILocation(line: 95, column: 2, scope: !4820)
!4838 = !DILocation(line: 96, column: 33, scope: !4820)
!4839 = !DILocation(line: 96, column: 37, scope: !4820)
!4840 = !DILocation(line: 155, column: 8, scope: !4824, inlinedAt: !4826)
!4841 = !DILocation(line: 155, column: 20, scope: !4824, inlinedAt: !4826)
!4842 = !DILocation(line: 152, column: 2, scope: !4824, inlinedAt: !4826)
!4843 = !{i32 -2147195117, i32 -2147195054}
!4844 = !DILocation(line: 156, column: 9, scope: !4824, inlinedAt: !4826)
!4845 = !DILocation(line: 96, column: 2, scope: !4820)
!4846 = distinct !DISubprogram(name: "__instrument_read_write_bitop", scope: !4733, file: !4733, line: 61, type: !4498, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4847 = !DILocalVariable(name: "v", arg: 1, scope: !4848, file: !4511, line: 54, type: !4514)
!4848 = distinct !DISubprogram(name: "instrument_read_write", scope: !4511, file: !4511, line: 54, type: !4512, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4849 = !DILocation(line: 54, column: 72, scope: !4848, inlinedAt: !4850)
!4850 = distinct !DILocation(line: 81, column: 3, scope: !4851)
!4851 = distinct !DILexicalBlock(scope: !4852, file: !4733, line: 80, column: 9)
!4852 = distinct !DILexicalBlock(scope: !4846, file: !4733, line: 63, column: 6)
!4853 = !DILocalVariable(name: "size", arg: 2, scope: !4848, file: !4511, line: 54, type: !234)
!4854 = !DILocation(line: 54, column: 82, scope: !4848, inlinedAt: !4850)
!4855 = !DILocalVariable(name: "nr", arg: 1, scope: !4846, file: !4733, line: 61, type: !100)
!4856 = !DILocation(line: 61, column: 55, scope: !4846)
!4857 = !DILocalVariable(name: "addr", arg: 2, scope: !4846, file: !4733, line: 61, type: !4500)
!4858 = !DILocation(line: 61, column: 83, scope: !4846)
!4859 = !DILocation(line: 81, column: 25, scope: !4851)
!4860 = !DILocation(line: 81, column: 32, scope: !4851)
!4861 = !DILocation(line: 81, column: 30, scope: !4851)
!4862 = !DILocation(line: 56, column: 20, scope: !4848, inlinedAt: !4850)
!4863 = !DILocation(line: 56, column: 23, scope: !4848, inlinedAt: !4850)
!4864 = !DILocation(line: 56, column: 2, scope: !4848, inlinedAt: !4850)
!4865 = !DILocation(line: 57, column: 2, scope: !4848, inlinedAt: !4850)
!4866 = !DILocation(line: 83, column: 1, scope: !4846)
!4867 = distinct !DISubprogram(name: "clear_bit", scope: !4497, file: !4497, line: 39, type: !4498, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4868 = !DILocalVariable(name: "nr", arg: 1, scope: !4869, file: !4504, line: 72, type: !100)
!4869 = distinct !DISubprogram(name: "arch_clear_bit", scope: !4504, file: !4504, line: 72, type: !4498, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !162)
!4870 = !DILocation(line: 72, column: 21, scope: !4869, inlinedAt: !4871)
!4871 = distinct !DILocation(line: 42, column: 2, scope: !4867)
!4872 = !DILocalVariable(name: "addr", arg: 2, scope: !4869, file: !4504, line: 72, type: !4500)
!4873 = !DILocation(line: 72, column: 49, scope: !4869, inlinedAt: !4871)
!4874 = !DILocation(line: 84, column: 74, scope: !4510, inlinedAt: !4875)
!4875 = distinct !DILocation(line: 41, column: 2, scope: !4867)
!4876 = !DILocation(line: 84, column: 84, scope: !4510, inlinedAt: !4875)
!4877 = !DILocalVariable(name: "nr", arg: 1, scope: !4867, file: !4497, line: 39, type: !100)
!4878 = !DILocation(line: 39, column: 35, scope: !4867)
!4879 = !DILocalVariable(name: "addr", arg: 2, scope: !4867, file: !4497, line: 39, type: !4500)
!4880 = !DILocation(line: 39, column: 63, scope: !4867)
!4881 = !DILocation(line: 41, column: 26, scope: !4867)
!4882 = !DILocation(line: 41, column: 33, scope: !4867)
!4883 = !DILocation(line: 41, column: 31, scope: !4867)
!4884 = !DILocation(line: 86, column: 20, scope: !4510, inlinedAt: !4875)
!4885 = !DILocation(line: 86, column: 23, scope: !4510, inlinedAt: !4875)
!4886 = !DILocation(line: 86, column: 2, scope: !4510, inlinedAt: !4875)
!4887 = !DILocation(line: 87, column: 2, scope: !4510, inlinedAt: !4875)
!4888 = !DILocation(line: 42, column: 17, scope: !4867)
!4889 = !DILocation(line: 42, column: 21, scope: !4867)
!4890 = !DILocation(line: 74, column: 27, scope: !4891, inlinedAt: !4871)
!4891 = distinct !DILexicalBlock(scope: !4869, file: !4504, line: 74, column: 6)
!4892 = !DILocation(line: 74, column: 6, scope: !4891, inlinedAt: !4871)
!4893 = !DILocation(line: 74, column: 6, scope: !4869, inlinedAt: !4871)
!4894 = !DILocation(line: 76, column: 6, scope: !4895, inlinedAt: !4871)
!4895 = distinct !DILexicalBlock(scope: !4891, file: !4504, line: 74, column: 32)
!4896 = !DILocation(line: 77, column: 13, scope: !4895, inlinedAt: !4871)
!4897 = !DILocation(line: 77, column: 12, scope: !4895, inlinedAt: !4871)
!4898 = !DILocation(line: 75, column: 3, scope: !4895, inlinedAt: !4871)
!4899 = !{i32 -2147199316}
!4900 = !DILocation(line: 78, column: 2, scope: !4895, inlinedAt: !4871)
!4901 = !DILocation(line: 80, column: 8, scope: !4902, inlinedAt: !4871)
!4902 = distinct !DILexicalBlock(scope: !4891, file: !4504, line: 78, column: 9)
!4903 = !DILocation(line: 80, column: 32, scope: !4902, inlinedAt: !4871)
!4904 = !DILocation(line: 79, column: 3, scope: !4902, inlinedAt: !4871)
!4905 = !{i32 -2147199184}
!4906 = !DILocation(line: 43, column: 1, scope: !4867)
